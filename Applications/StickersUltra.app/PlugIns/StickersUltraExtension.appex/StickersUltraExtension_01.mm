void sub_10001E0C0(unint64_t a1, void (*a2)(void, uint64_t, double, double, double, double), uint64_t a3)
{
  v73 = a2;
  v5 = sub_10007D2F0();
  v72 = *(v5 - 8);
  __chkstk_darwin(v5);
  v70 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_10007D320();
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10007D540();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v67 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100006D40(&qword_1000B29D8);
  __chkstk_darwin(v9 - 8);
  v81 = &v61 - v10;
  v84 = sub_10007C730();
  v11 = *(v84 - 8);
  v12 = __chkstk_darwin(v84);
  v83 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v82 = &v61 - v14;
  if (qword_1000B5360 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v15 = sub_10007C780();
    sub_10000AE78(v15, qword_1000B5368);
    v16 = sub_10007C760();
    v17 = sub_10007D9F0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "_addStickerToStoreWithStickerIDS", v18, 2u);
    }

    v19 = v74;
    v20 = *&v74[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController__isAddingStickerMu];
    [v20 lock];
    v64 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController__isAddingSticker;
    LOBYTE(v19) = v19[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController__isAddingSticker];
    [v20 unlock];
    if (v19)
    {
      break;
    }

    v86 = &_swiftEmptyArrayStorage;
    v61 = v20;
    if (a1 >> 62)
    {
      v26 = sub_10007DDB0();
    }

    else
    {
      v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v62 = v5;
    v63 = a3;
    if (!v26)
    {
LABEL_25:
      (*(v65 + 104))(v67, enum case for Sticker.StickerType.userContent(_:), v66);
      v39 = objc_allocWithZone(sub_10007D720());
      v40 = sub_10007D690();
      v41 = v61;
      [v61 lock];
      v42 = v74;
      v74[v64] = 1;
      [v41 unlock];
      sub_10000B77C(0, &qword_1000B22E0);
      v43 = sub_10007DAC0();
      v44 = swift_allocObject();
      v44[2] = v42;
      v44[3] = v40;
      v45 = v63;
      v44[4] = v73;
      v44[5] = v45;
      aBlock[4] = sub_10002D2F8;
      aBlock[5] = v44;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100008F80;
      aBlock[3] = &unk_1000A3738;
      v46 = _Block_copy(aBlock);
      v47 = v42;
      v48 = v40;

      v49 = v68;
      sub_10007D310();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_100031A88(&qword_1000B2970, &type metadata accessor for DispatchWorkItemFlags);
      sub_100006D40(&unk_1000B22F0);
      sub_10000B894();
      v50 = v70;
      v51 = v62;
      sub_10007DC50();
      sub_10007DAD0();
      _Block_release(v46);

      (*(v72 + 8))(v50, v51);
      (*(v69 + 8))(v49, v71);
      return;
    }

    v5 = 0;
    v79 = a1 & 0xFFFFFFFFFFFFFF8;
    v80 = a1 & 0xC000000000000001;
    v77 = (v11 + 32);
    v78 = (v11 + 48);
    v75 = (v11 + 8);
    v76 = (v11 + 16);
    while (1)
    {
      if (v80)
      {
        v27 = sub_10007DCD0();
      }

      else
      {
        if (v5 >= *(v79 + 16))
        {
          goto LABEL_28;
        }

        v27 = *(a1 + 8 * v5 + 32);
      }

      v11 = v27;
      v28 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v29 = [v27 type];
      sub_10007D7D0();

      v30 = v81;
      v31 = v84;
      sub_10007C740();
      if ((*v78)(v30, 1, v31) == 1)
      {

        sub_10000B348(v30, &qword_1000B29D8);
        y = CGRectNull.origin.y;
        width = CGRectNull.size.width;
        height = CGRectNull.size.height;
        v55 = [v11 type];
        v56 = sub_10007D7D0();
        v58 = v57;

        sub_10002D2A0();
        v59 = swift_allocError();
        *v60 = v56;
        v60[1] = v58;
        v73(0, v59, CGRectNull.origin.x, y, width, height);

        return;
      }

      v32 = v82;
      (*v77)(v82, v30, v31);
      v33 = [v11 data];
      sub_10007C3D0();
      a3 = v34;

      (*v76)(v83, v32, v31);
      [v11 size];
      v35 = [v11 role];
      if (v35)
      {
        v36 = v35;
        sub_10007D7D0();
      }

      else
      {
        sub_10007D5D0();
      }

      v37 = objc_allocWithZone(sub_10007D630());
      v38 = sub_10007D600();
      sub_10007D8B0();
      if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10007D900();
      }

      sub_10007D930();

      (*v75)(v82, v84);
      ++v5;
      if (v28 == v26)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  v21 = CGRectNull.origin.y;
  v22 = CGRectNull.size.width;
  v23 = CGRectNull.size.height;
  sub_10002D2A0();
  v24 = swift_allocError();
  *v25 = 0;
  v25[1] = 0;
  v73(0, v24, CGRectNull.origin.x, v21, v22, v23);
}

void sub_10001EB74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *((swift_isaMask & *a1) + 0x108);
  v9 = v8();
  if (!v9 || (v10 = v9, (*((swift_isaMask & *v9) + 0xA0))(), v10, sub_1000321A0(), (sub_10007D790() & 1) == 0))
  {
    if (qword_1000B5360 != -1)
    {
      swift_once();
    }

    v11 = sub_10007C780();
    sub_10000AE78(v11, qword_1000B5368);
    v12 = sub_10007C760();
    v13 = sub_10007D9F0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Don't have the right userGenerated VC; switching to it", v14, 2u);
    }

    *(a1 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_activeControllerType) = 0;
    sub_100017DBC();
    sub_1000219E8();
  }

  v15 = v8();
  if (v15)
  {
    v16 = v15;
    (*((swift_isaMask & *v15) + 0x1D0))(a2, a3, a4);
  }
}

void sub_10001EE40(objc_class *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  isa = a1;
  if (a1)
  {
    sub_10007C420();
    isa = sub_10007D8C0().super.isa;
  }

  if (a2)
  {
    v14 = sub_10007C350();
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  (*(a3 + 16))(a3, isa, a4, a5, a6, a7);
}

void sub_10001F0A0(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_10007C420();
    isa = sub_10007D8C0().super.isa;
  }

  if (a2)
  {
    v6 = sub_10007C350();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

void sub_10001F2D8(void *a1, void (*a2)(void, uint64_t), uint64_t a3, double a4, double a5, double a6, double a7)
{
  v74 = a3;
  v73 = a2;
  v76 = a1;
  v71 = sub_10007D540();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v75 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100006D40(&qword_1000B29D8);
  __chkstk_darwin(v12 - 8);
  v14 = &v70 - v13;
  v86 = sub_10007C730();
  v15 = *(v86 - 1);
  v16 = __chkstk_darwin(v86);
  v85 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v84 = &v70 - v18;
  if (qword_1000B5360 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v19 = sub_10007C780();
    sub_10000AE78(v19, qword_1000B5368);
    v20 = sub_10007C760();
    v21 = sub_10007D9F0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "_addStickerToStoreWithUISticker:sourceRect:completion", v22, 2u);
    }

    v88 = &_swiftEmptyArrayStorage;
    v23 = [v76 representations];
    sub_10000B77C(0, &unk_1000B22D0);
    v24 = sub_10007D8E0();

    if (v24 >> 62)
    {
      break;
    }

    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v25)
    {
      goto LABEL_25;
    }

LABEL_6:
    v26 = 0;
    v82 = v24 & 0xFFFFFFFFFFFFFF8;
    v83 = v24 & 0xC000000000000001;
    v81 = (v15 + 48);
    v78 = (v15 + 16);
    v79 = (v15 + 32);
    v77 = (v15 + 8);
    v80 = v24;
    while (1)
    {
      if (v83)
      {
        v27 = sub_10007DCD0();
      }

      else
      {
        if (v26 >= *(v82 + 16))
        {
          goto LABEL_22;
        }

        v27 = *(v24 + 8 * v26 + 32);
      }

      v15 = v27;
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      v29 = [v27 type];
      sub_10007D7D0();

      v30 = v86;
      sub_10007C740();
      if ((*v81)(v14, 1, v30) == 1)
      {

        sub_10000B348(v14, &qword_1000B29D8);
        v37 = [v15 type];
        v38 = sub_10007D7D0();
        v40 = v39;

        sub_10002D2A0();
        v41 = swift_allocError();
        *v42 = v38;
        v42[1] = v40;
        v73(0, v41);

        goto LABEL_53;
      }

      v31 = v84;
      (*v79)(v84, v14, v30);
      v32 = [v15 data];
      sub_10007C3D0();

      (*v78)(v85, v31, v30);
      [v15 size];
      v33 = [v15 role];
      if (v33)
      {
        v34 = v33;
        sub_10007D7D0();
      }

      else
      {
        sub_10007D5D0();
      }

      v35 = objc_allocWithZone(sub_10007D630());
      v36 = sub_10007D600();
      sub_10007D8B0();
      if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10007D900();
      }

      sub_10007D930();

      (*v77)(v84, v86);
      ++v26;
      v24 = v80;
      if (v28 == v25)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }

  v25 = sub_10007DDB0();
  if (v25)
  {
    goto LABEL_6;
  }

LABEL_25:

  v43 = [v76 attributionInfo];
  sub_100006D40(&qword_1000B2AB0);
  v44 = sub_10007D740();

  if (!*(v44 + 16))
  {
    v46 = 0;
    goto LABEL_39;
  }

  sub_100016368(0x64692D6D616461, 0xE700000000000000);
  if ((v45 & 1) == 0)
  {
    v46 = 0;
    if (*(v44 + 16))
    {
      goto LABEL_30;
    }

    goto LABEL_39;
  }

  objc_opt_self();
  v46 = swift_dynamicCastObjCClass();
  if (v46)
  {
    swift_unknownObjectRetain();
  }

  if (!*(v44 + 16))
  {
LABEL_39:

    goto LABEL_40;
  }

LABEL_30:
  v47 = sub_100016368(0x692D656C646E7562, 0xE900000000000064);
  if (v48)
  {
    v87 = *(*(v44 + 56) + 8 * v47);
    swift_unknownObjectRetain();
    swift_dynamicCast();
    if (!*(v44 + 16))
    {
      goto LABEL_39;
    }
  }

  else if (!*(v44 + 16))
  {
    goto LABEL_39;
  }

  v49 = sub_100016368(1701667182, 0xE400000000000000);
  if ((v50 & 1) == 0)
  {
    goto LABEL_39;
  }

  v51 = *(*(v44 + 56) + 8 * v49);
  swift_unknownObjectRetain();

  v87 = v51;
  swift_dynamicCast();
LABEL_40:
  v52 = objc_allocWithZone(sub_10007D650());
  v86 = v46;
  v53 = sub_10007D640();
  (*(v70 + 104))(v75, enum case for Sticker.StickerType.userContent(_:), v71);
  v54 = [v76 name];
  if (v54)
  {
    v55 = v54;
    v56 = sub_10007D7D0();
    v84 = v57;
    v85 = v56;
  }

  else
  {
    v84 = 0xE000000000000000;
    v85 = 0;
  }

  v58 = [v76 metadata];
  if (v58)
  {
    v59 = v58;
    v60 = sub_10007C3D0();
    v82 = v61;
    v83 = v60;
  }

  else
  {
    v82 = 0xF000000000000000;
    v83 = 0;
  }

  v62 = v76;
  v63 = [v76 externalURI];
  sub_10007D7D0();

  v64 = [v62 accessibilityLabel];
  if (v64)
  {
    v65 = v64;
    sub_10007D7D0();
  }

  v66 = [v76 searchText];
  if (v66)
  {
    v67 = v66;
    sub_10007D7D0();
  }

  sub_10007D720();
  v68 = v53;
  v15 = sub_10007D680();
  [v76 effectType];
  sub_10007D6D0();
  if ((v69 & 1) == 0)
  {
    sub_10007D700();
  }

  (*((swift_isaMask & *v72) + 0x360))(v15, v73, v74, a4, a5, a6, a7);

LABEL_53:
}

void sub_10001FE34(unint64_t a1, uint64_t a2, int a3, void (*a4)(void, uint64_t), uint64_t a5, double a6, double a7, double a8, double a9)
{
  v52 = a4;
  v53 = a5;
  v50 = a3;
  v46 = a2;
  v48 = sub_10007D540();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v49 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100006D40(&qword_1000B29D8);
  __chkstk_darwin(v15 - 8);
  v61 = &v46 - v16;
  v17 = sub_10007C730();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v63 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v62 = &v46 - v21;
  if (qword_1000B5360 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v22 = sub_10007C780();
    sub_10000AE78(v22, qword_1000B5368);
    v23 = sub_10007C760();
    v24 = sub_10007D9F0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "_addStickerToStoreWithRepresentations:sourceRect:effect:completion", v25, 2u);
    }

    v64 = &_swiftEmptyArrayStorage;
    if (a1 >> 62)
    {
      break;
    }

    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_25;
    }

LABEL_6:
    v27 = 0;
    v59 = a1 & 0xFFFFFFFFFFFFFF8;
    v60 = a1 & 0xC000000000000001;
    v58 = (v18 + 48);
    v55 = (v18 + 16);
    v56 = (v18 + 32);
    v54 = (v18 + 8);
    v57 = a1;
    while (1)
    {
      if (v60)
      {
        v28 = sub_10007DCD0();
      }

      else
      {
        if (v27 >= *(v59 + 16))
        {
          goto LABEL_22;
        }

        v28 = *(a1 + 8 * v27 + 32);
      }

      v18 = v28;
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v30 = [v28 type];
      sub_10007D7D0();

      v31 = v61;
      sub_10007C740();
      if ((*v58)(v31, 1, v17) == 1)
      {

        sub_10000B348(v31, &qword_1000B29D8);
        v38 = [v18 type];
        v39 = sub_10007D7D0();
        v41 = v40;

        sub_10002D2A0();
        v42 = swift_allocError();
        *v43 = v39;
        v43[1] = v41;
        v52(0, v42);

        goto LABEL_29;
      }

      v32 = v62;
      (*v56)(v62, v31, v17);
      v33 = [v18 data];
      sub_10007C3D0();

      (*v55)(v63, v32, v17);
      [v18 size];
      v34 = [v18 role];
      if (v34)
      {
        v35 = v34;
        sub_10007D7D0();
      }

      else
      {
        sub_10007D5D0();
      }

      v36 = objc_allocWithZone(sub_10007D630());
      v37 = sub_10007D600();
      sub_10007D8B0();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10007D900();
      }

      sub_10007D930();

      (*v54)(v62, v17);
      ++v27;
      a1 = v57;
      if (v29 == v26)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }

  v26 = sub_10007DDB0();
  if (v26)
  {
    goto LABEL_6;
  }

LABEL_25:
  (*(v47 + 104))(v49, enum case for Sticker.StickerType.userContent(_:), v48);
  v44 = objc_allocWithZone(sub_10007D720());
  v18 = sub_10007D690();
  if ((v50 & 1) == 0)
  {
    sub_10007D6D0();
    if ((v45 & 1) == 0)
    {
      sub_10007D700();
    }
  }

  (*((swift_isaMask & *v51) + 0x360))(v18, v52, v53, a6, a7, a8, a9);
LABEL_29:
}

uint64_t sub_100020538(void *a1, void (*a2)(void, uint64_t), uint64_t a3, double a4, double a5, double a6, double a7)
{
  v36 = a2;
  v32 = a1;
  v13 = sub_10007D2F0();
  v35 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10007D320();
  v33 = *(v16 - 8);
  v34 = v16;
  __chkstk_darwin(v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *&v7[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController__isAddingStickerMu];
  [v19 lock];
  v20 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController__isAddingSticker;
  v21 = v7[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController__isAddingSticker];
  [v19 unlock];
  if (v21)
  {
    sub_10002D2A0();
    v22 = swift_allocError();
    *v23 = 0;
    v23[1] = 0;
    v36(0, v22);
  }

  else
  {
    [v19 lock];
    v7[v20] = 1;
    [v19 unlock];
    sub_10000B77C(0, &qword_1000B22E0);
    v25 = sub_10007DAC0();
    v26 = swift_allocObject();
    v27 = v32;
    *(v26 + 16) = v7;
    *(v26 + 24) = v27;
    *(v26 + 32) = a4;
    *(v26 + 40) = a5;
    *(v26 + 48) = a6;
    *(v26 + 56) = a7;
    *(v26 + 64) = v36;
    *(v26 + 72) = a3;
    aBlock[4] = sub_10002D34C;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008F80;
    aBlock[3] = &unk_1000A3788;
    v28 = _Block_copy(aBlock);
    v29 = v7;
    v30 = v27;

    sub_10007D310();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100031A88(&qword_1000B2970, &type metadata accessor for DispatchWorkItemFlags);
    sub_100006D40(&unk_1000B22F0);
    sub_10000B894();
    sub_10007DC50();
    sub_10007DAD0();
    _Block_release(v28);

    (*(v35 + 8))(v15, v13);
    return (*(v33 + 8))(v18, v34);
  }
}

uint64_t sub_10002091C()
{
  v0 = sub_10007D2F0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007D320();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B77C(0, &qword_1000B22E0);
  v8 = sub_10007DAC0();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10002D638;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008F80;
  aBlock[3] = &unk_1000A37B0;
  v10 = _Block_copy(aBlock);

  sub_10007D310();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100031A88(&qword_1000B2970, &type metadata accessor for DispatchWorkItemFlags);
  sub_100006D40(&unk_1000B22F0);
  sub_10000B894();
  sub_10007DC50();
  sub_10007DAD0();
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100020C74(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v8 = sub_10007D2F0();
  v23 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10007D320();
  v11 = *(v22 - 8);
  __chkstk_darwin(v22);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B77C(0, &qword_1000B22E0);
  v14 = sub_10007DAC0();
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = v21;
  *(v15 + 48) = a4;
  aBlock[4] = sub_10002D878;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008F80;
  aBlock[3] = &unk_1000A3800;
  v16 = _Block_copy(aBlock);
  v17 = v4;
  v18 = a1;

  sub_10007D310();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100031A88(&qword_1000B2970, &type metadata accessor for DispatchWorkItemFlags);
  sub_100006D40(&unk_1000B22F0);
  sub_10000B894();
  sub_10007DC50();
  sub_10007DAD0();
  _Block_release(v16);

  (*(v23 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v22);
}

uint64_t sub_100020F64(uint64_t a1, uint64_t a2)
{
  v5 = sub_10007D2F0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10007D320();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B77C(0, &qword_1000B22E0);
  v12 = sub_10007DAC0();
  v13 = swift_allocObject();
  v13[2] = v2;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_10002D9B8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008F80;
  aBlock[3] = &unk_1000A3850;
  v14 = _Block_copy(aBlock);
  v15 = v2;

  sub_10007D310();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100031A88(&qword_1000B2970, &type metadata accessor for DispatchWorkItemFlags);
  sub_100006D40(&unk_1000B22F0);
  sub_10000B894();
  sub_10007DC50();
  sub_10007DAD0();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

uint64_t sub_1000212C8()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10007D2F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007D320();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B77C(0, &qword_1000B22E0);
  v10 = sub_10007DAC0();
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  *(v11 + 24) = ObjectType;
  aBlock[4] = sub_10002DB98;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008F80;
  aBlock[3] = &unk_1000A38A0;
  v12 = _Block_copy(aBlock);
  v13 = v0;

  sub_10007D310();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100031A88(&qword_1000B2970, &type metadata accessor for DispatchWorkItemFlags);
  sub_100006D40(&unk_1000B22F0);
  sub_10000B894();
  sub_10007DC50();
  sub_10007DAD0();
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1000215FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController__VKStickerInfoKeyStickerIDs);

  return v1;
}

void sub_100021638()
{
  v1 = (*((swift_isaMask & *v0) + 0x108))();
  if (v1)
  {
    v2 = v1;
    v3 = (*((swift_isaMask & *v1) + 0x150))();

    if (v3)
    {
      v4 = v3;
      sub_10007C5D0();
    }
  }
}

void sub_1000218CC()
{
  if (*(v0 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_activeControllerType) == 7)
  {
    if (qword_1000B5360 != -1)
    {
      swift_once();
    }

    v1 = sub_10007C780();
    sub_10000AE78(v1, qword_1000B5368);
    oslog = sub_10007C760();
    v2 = sub_10007DA00();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "No active controller type yet; not presenting", v3, 2u);
    }
  }

  else
  {

    sub_1000219E8();
  }
}

void sub_1000219E8()
{
  v1 = v0[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_activeControllerType];
  if (v1 == 7)
  {
    if (qword_1000B5360 != -1)
    {
      swift_once();
    }

    v2 = sub_10007C780();
    sub_10000AE78(v2, qword_1000B5368);
    oslog = sub_10007C760();
    v3 = sub_10007DA10();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Missing controller type - nothing to prepare", v4, 2u);
    }

    return;
  }

  if (qword_1000B5360 != -1)
  {
    swift_once();
  }

  v5 = sub_10007C780();
  sub_10000AE78(v5, qword_1000B5368);
  v6 = sub_10007C760();
  v7 = sub_10007D9F0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17[0] = v9;
    *v8 = 136315138;
    if (v1 <= 2)
    {
      if (v1)
      {
        if (v1 == 1)
        {
          v10 = 0xE600000000000000;
          v11 = 0x746E65636572;
        }

        else
        {
          v10 = 0xEE00746E65636552;
          v11 = 0x6472616F6279656BLL;
        }
      }

      else
      {
        v10 = 0xEB00000000746E65;
        v11 = 0x746E6F4372657375;
      }
    }

    else if (v1 > 4)
    {
      if (v1 == 5)
      {
        v10 = 0xEA00000000007974;
        v11 = 0x7261506472696874;
      }

      else
      {
        v10 = 0xEB000000006C6164;
        v11 = 0x6F4D736F746F6870;
      }
    }

    else if (v1 == 3)
    {
      v10 = 0xE600000000000000;
      v11 = 0x696A6F6D656DLL;
    }

    else
    {
      v10 = 0xE500000000000000;
      v11 = 0x696A6F6D65;
    }

    v15 = sub_10000A660(v11, v10, v17);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Preparing %s VC", v8, 0xCu);
    sub_10000B5CC(v9);

    if (v1 <= 2)
    {
      goto LABEL_34;
    }

LABEL_17:
    if (v1 > 4)
    {
      if (v1 != 5)
      {
        swift_beginAccess();
        v13 = qword_1000B7200;
        qword_1000B7200 = v0;

        v14 = v0;
        sub_100021DCC();
        return;
      }

      v12 = 5;
    }

    else if (v1 == 3)
    {
      v12 = 3;
    }

    else
    {
      v12 = 4;
    }

    goto LABEL_39;
  }

  if (v1 > 2)
  {
    goto LABEL_17;
  }

LABEL_34:
  if (v1)
  {
    if (v1 == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_39:

  sub_100022160(v12);
}

void sub_100021DCC()
{
  v1 = v0;
  swift_beginAccess();
  if (qword_1000B7210)
  {
    v2 = *((swift_isaMask & *qword_1000B7210) + 0xA8);
    v3 = qword_1000B7210;
    v4 = v2();
    if (!v4)
    {
LABEL_21:

      return;
    }

    v5 = v4;
    if (*(v0 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_activeControllerType) > 5u)
    {
      if (*(v0 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_activeControllerType) != 6)
      {
LABEL_14:
        v18 = [v0 presentViewController:v5 animated:1 completion:0];
LABEL_15:
        v19 = (*((swift_isaMask & *v1) + 0x108))(v18);
        if (v19)
        {
          v20 = v19;
          v21 = (*((swift_isaMask & *v19) + 0x150))();

          if (v21)
          {
            if ((sub_10007C5A0() & 1) == 0)
            {
              sub_10007C5C0(1);
            }
          }
        }

        goto LABEL_21;
      }
    }

    else
    {
      v6 = sub_10007DE50();

      if ((v6 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v7 = v5;
    v8 = [v7 parentViewController];
    if (!v8)
    {
      goto LABEL_12;
    }

    v9 = v8;
    v10 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_mainController;
    v11 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_mainController);
    sub_10000B77C(0, &qword_1000B3B10);
    v12 = v11;
    v13 = sub_10007DBA0();

    if ((v13 & 1) == 0)
    {
      goto LABEL_12;
    }

    v14 = [*(v1 + v10) view];
    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = v14;
    v16 = [v7 view];
    v17 = [v15 containsView:v16];

    if (!v17)
    {
LABEL_12:
      v7 = v7;
      sub_10002CEE4(v5);

      sub_100023534(v7);
    }

    goto LABEL_15;
  }
}

uint64_t sub_100022160(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100006D40(&unk_1000B2960);
  __chkstk_darwin(v4 - 8);
  v6 = v20 - v5;
  v7 = sub_100022464();
  v22 = a1;
  v21 = 5;
  sub_1000318D4();
  sub_10007D8A0();
  sub_10007D8A0();
  if (v20[3] == v20[1] && v20[4] == v20[2])
  {
  }

  else
  {
    v8 = sub_10007DE50();

    if ((v8 & 1) == 0)
    {
      v12 = *(v1 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_puppetIdentifier);
      v13 = *(v2 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_puppetIdentifier + 8);
      v14 = *((swift_isaMask & *v7) + 0x160);

      v14(a1, v12, v13);
      goto LABEL_7;
    }
  }

  v9 = *(v1 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_thirdPartyAppIdentifier);
  v10 = *(v2 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_thirdPartyAppIdentifier + 8);
  v11 = *((swift_isaMask & *v7) + 0x168);

  v11(v9, v10);
LABEL_7:

  v15 = sub_10007D990();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10007D960();

  v17 = sub_10007D950();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v16;
  v18[5] = 2;

  sub_1000232C8(0, 0, v6, &unk_10008D190, v18);

  return sub_10000B348(v6, &unk_1000B2960);
}

void *sub_100022464()
{
  v1 = v0;
  v2 = (*((swift_isaMask & *v0) + 0x108))();
  if (v2)
  {
    v3 = v2;
    v4 = v2;
    v5 = [v4 parentViewController];
    if (!v5)
    {
      goto LABEL_10;
    }

    v6 = v5;
    v7 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_mainController;
    v8 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_mainController);
    sub_10000B77C(0, &qword_1000B3B10);
    v9 = v8;
    v10 = sub_10007DBA0();

    if ((v10 & 1) == 0)
    {
      goto LABEL_10;
    }

    result = [*(v1 + v7) view];
    if (result)
    {
LABEL_9:
      v24 = result;
      v25 = [v4 view];
      v26 = [v24 containsView:v25];

      if (v26)
      {
LABEL_11:

        return v4;
      }

LABEL_10:
      v4 = v4;
      sub_10002CEE4(v3);

      sub_100023534(v4);
      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    type metadata accessor for StickerProvidingViewController();
    v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v12 = *((swift_isaMask & *v3) + 0x90);
    v13 = swift_unknownObjectRetain();
    v14 = v12(v13);
    v15 = (*((swift_isaMask & *v0) + 0x2A0))(v14);
    (*((swift_isaMask & *v3) + 0x120))(v15 & 1);
    v16 = *((swift_isaMask & *v0) + 0x110);
    v17 = v3;
    v16(v3);
    v4 = v17;
    v18 = [v4 parentViewController];
    if (!v18)
    {
      goto LABEL_10;
    }

    v19 = v18;
    v20 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_mainController;
    v21 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_mainController);
    sub_10000B77C(0, &qword_1000B3B10);
    v22 = v21;
    v23 = sub_10007DBA0();

    if ((v23 & 1) == 0)
    {
      goto LABEL_10;
    }

    result = [*(v1 + v20) view];
    if (result)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000227BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_100006D40(&unk_1000B2960);
  v5[7] = swift_task_alloc();
  v6 = sub_10007DD60();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = sub_10007D960();
  v5[12] = sub_10007D950();
  v8 = sub_10007D940();
  v5[13] = v8;
  v5[14] = v7;

  return _swift_task_switch(sub_1000228EC, v8, v7);
}

void sub_1000228EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (!Strong)
  {

LABEL_14:

    v16 = v0[1];

    v16();
    return;
  }

  v2 = Strong;
  v3 = (*((swift_isaMask & *Strong) + 0x108))();
  v0[16] = v3;
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  if (((*((swift_isaMask & *v3) + 0x130))() & 1) == 0)
  {

LABEL_10:

    v11 = sub_100018990();
    v12 = [v11 view];

    if (v12)
    {
      v13 = *((swift_isaMask & *v2) + 0x318);
      v14 = v13();
      [v12 removeInteraction:v14];

      v15 = v13();
      [v15 _setScrollView:0];
LABEL_12:

      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_30;
  }

  v5 = (*((swift_isaMask & *v4) + 0x140))();
  if (v5)
  {
    v6 = *((swift_isaMask & *v2) + 0x318);
    v7 = v5;
    v8 = v6();
    v9 = [v8 _scrollView];

    if (v9)
    {
      sub_10000B77C(0, &qword_1000B2BA0);
      v10 = sub_10007DBA0();

      if (v10)
      {

LABEL_13:
        goto LABEL_14;
      }
    }

    else
    {
    }

    v24 = sub_100018990();
    v25 = [v24 view];

    if (v25)
    {
      v26 = v6();
      [v25 removeInteraction:v26];

      v27 = [objc_allocWithZone(_UIScrollPocketInteraction) initWithScrollView:v7 edge:1 style:0];
      (*((swift_isaMask & *v2) + 0x320))(v27);
      v28 = [*(v2 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController____lazy_storage___stickerPackStripHost) view];
      if (v28)
      {
        v29 = v28;
        v30 = v6();
        [v29 addInteraction:v30];

        v15 = v2;
        v31 = [v15 view];
        if (v31)
        {
          v32 = v31;
          [v31 setNeedsLayout];

          v2 = [v15 view];
          if (v2)
          {

            [v2 setNeedsDisplay];

            goto LABEL_12;
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v17 = sub_100018990();
  v18 = [v17 view];

  if (!v18)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v19 = v0[6];
  v20 = *((swift_isaMask & *v2) + 0x318);
  v21 = v20();
  [v18 removeInteraction:v21];

  v22 = v20();
  [v22 _setScrollView:0];

  if (v19 <= 0)
  {

    goto LABEL_13;
  }

  sub_10007DEA0();
  v23 = swift_task_alloc();
  v0[17] = v23;
  *v23 = v0;
  v23[1] = sub_100022F0C;

  sub_10002C580(50000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100022F0C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 144) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 112);
  v7 = *(v2 + 104);
  if (v0)
  {
    v8 = sub_100023238;
  }

  else
  {
    v8 = sub_1000230A4;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000230A4()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v4 - 1;
  v6 = sub_10007D990();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v8 = sub_10007D950();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  v9[5] = v5;

  sub_1000232C8(0, 0, v3, &unk_10008D1A0, v9);

  sub_10000B348(v3, &unk_1000B2960);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100023238()
{
  v2 = v0[15];
  v1 = v0[16];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000232C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100006D40(&unk_1000B2960);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10003260C(a3, v22 - v9, &unk_1000B2960);
  v11 = sub_10007D990();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000B348(v10, &unk_1000B2960);
  }

  else
  {
    sub_10007D980();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_10007D940();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_10007D800() + 32;

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

void sub_100023534(void *a1)
{
  v2 = v1;
  if (qword_1000B5360 != -1)
  {
    swift_once();
  }

  v4 = sub_10007C780();
  sub_10000AE78(v4, qword_1000B5368);
  v5 = a1;
  v6 = sub_10007C760();
  v7 = sub_10007D9F0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136315138;
    v10 = [v5 debugDescription];
    v11 = sub_10007D7D0();
    v13 = v12;

    v14 = sub_10000A660(v11, v13, &v27);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Adding child controller %s", v8, 0xCu);
    sub_10000B5CC(v9);
  }

  v15 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_mainController;
  v16 = [*(v2 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_mainController) addChildViewController:v5];
  v17 = (*((swift_isaMask & *v2) + 0x238))(v16);
  v18 = [*(v2 + v15) view];
  v19 = v18;
  if ((v17 & 1) == 0)
  {
    if (!v18)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v24 = [v5 view];
    if (!v24)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v23 = v24;
    [v19 addSubview:v24];
    goto LABEL_13;
  }

  if (!v18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = [v5 view];
  if (!v20)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = v20;
  v22 = sub_100018990();
  v23 = [v22 view];

  if (v23)
  {
    [v19 insertSubview:v21 belowSubview:v23];

    v19 = v21;
LABEL_13:

    v25 = [v5 view];
    if (v25)
    {
      v26 = v25;
      [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

      sub_100023864(v5);
      [v5 didMoveToParentViewController:*(v2 + v15)];
      return;
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

void sub_100023864(void *a1)
{
  sub_100006D40(&qword_1000B2200);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10008C380;
  v4 = [a1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_27;
  }

  v5 = v4;
  v6 = [v4 leadingAnchor];

  v7 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_mainController;
  v8 = [*(v1 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_mainController) view];
  if (!v8)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v9 = v8;
  v10 = [v8 safeAreaLayoutGuide];

  v11 = [v10 leadingAnchor];
  v12 = [v6 constraintEqualToAnchor:v11];

  *(v3 + 32) = v12;
  v13 = [a1 view];
  if (!v13)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v14 = v13;
  v15 = [v13 trailingAnchor];

  v16 = [*(v1 + v7) view];
  if (!v16)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v17 = v16;
  v18 = [v16 safeAreaLayoutGuide];

  v19 = [v18 trailingAnchor];
  v20 = [v15 constraintEqualToAnchor:v19];

  *(v3 + 40) = v20;
  v21 = [a1 view];
  if (!v21)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v22 = v21;
  v23 = [v21 bottomAnchor];

  v24 = [*(v1 + v7) view];
  if (!v24)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v25 = v24;
  v26 = objc_opt_self();
  v27 = [v25 bottomAnchor];

  v28 = [v23 constraintEqualToAnchor:v27];
  *(v3 + 48) = v28;
  sub_10000B77C(0, &qword_1000B2210);
  isa = sub_10007D8C0().super.isa;

  [v26 activateConstraints:isa];

  if (((*((swift_isaMask & *v1) + 0x238))() & 1) == 0)
  {
    if (*(v1 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_activeControllerType) <= 5u)
    {
      v39 = sub_10007DE50();

      if (v39)
      {
        goto LABEL_16;
      }
    }

    else if (*(v1 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_activeControllerType) == 6)
    {

LABEL_16:
      v40 = [a1 view];
      if (!v40)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v41 = v40;
      v42 = [v40 topAnchor];

      v43 = [*(v1 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_mainController) view];
      if (!v43)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v44 = v43;
      v45 = [v43 topAnchor];
LABEL_22:
      v50 = v45;

      v51 = [v42 constraintEqualToAnchor:v50];
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_10008C3A0;
      *(v52 + 32) = v51;
      v53 = v51;
      v54 = sub_10007D8C0().super.isa;

      [v26 activateConstraints:v54];

      goto LABEL_23;
    }

    v46 = [a1 view];
    if (!v46)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v47 = v46;
    v42 = [v46 topAnchor];

    v48 = [*(v1 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_mainController) view];
    if (!v48)
    {
LABEL_38:
      __break(1u);
      return;
    }

    v49 = v48;
    v44 = [v48 safeAreaLayoutGuide];

    v45 = [v44 topAnchor];
    goto LABEL_22;
  }

  v30 = [a1 view];
  if (!v30)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v31 = v30;
  v32 = [v30 topAnchor];

  v33 = [*(v1 + v7) view];
  if (!v33)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v34 = v33;
  v35 = [v33 topAnchor];

  v36 = [v32 constraintEqualToAnchor:v35];
  (*((swift_isaMask & *v1) + 0x260))(v36);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_10008C3A0;
  v38 = (*((swift_isaMask & *v1) + 0x258))();
  if (!v38)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  *(v37 + 32) = v38;
  v54 = sub_10007D8C0().super.isa;

  [v26 activateConstraints:v54];
LABEL_23:
}

void *sub_100024000()
{
  v1 = v0;
  swift_beginAccess();
  v2 = qword_1000B71F0;
  if (qword_1000B71F0)
  {
    v3 = *((swift_isaMask & *v1) + 0x110);
    v4 = qword_1000B71F0;
    v3(v2);
  }

  type metadata accessor for StickerPhotosController();
  v5 = sub_1000068E4();
  v6 = *((swift_isaMask & *v5) + 0x80);
  v7 = swift_unknownObjectRetain();
  v6(v7, &off_1000A3B20);
  return v5;
}

void sub_100024104()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_activeControllerType;
  if (*(v0 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_activeControllerType) == 7)
  {
    swift_beginAccess();
    if (byte_1000B28A0 != 7)
    {
      *(v0 + v1) = byte_1000B28A0;
      sub_100017DBC();
      byte_1000B28A0 = 7;
      return;
    }

    v2 = objc_allocWithZone(NSXPCConnection);
    v3 = sub_10007D7A0();
    v4 = [v2 initWithMachServiceName:v3 options:0];

    v5 = sub_10007D510();
    [v4 setRemoteObjectInterface:v5];

    [v4 resume];
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    v89 = sub_10003221C;
    v90 = v6;
    aBlock = _NSConcreteStackBlock;
    v86 = 1107296256;
    v87 = sub_1000252F0;
    v88 = &unk_1000A43B0;
    v7 = _Block_copy(&aBlock);

    v8 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v7];
    _Block_release(v7);
    sub_10007DC10();
    swift_unknownObjectRelease();
    sub_100006D40(&qword_1000B2AC0);
    if (!swift_dynamicCast())
    {
      if (qword_1000B5360 != -1)
      {
        swift_once();
      }

      v18 = sub_10007C780();
      sub_10000AE78(v18, qword_1000B5368);
      v19 = sub_10007C760();
      v20 = sub_10007DA10();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Could not find a valid launch state manager proxy", v21, 2u);
      }

      goto LABEL_15;
    }

    v9 = v84[6];
    swift_beginAccess();
    if (*(v6 + 16))
    {
      swift_errorRetain();
      if (qword_1000B5360 != -1)
      {
        swift_once();
      }

      v10 = sub_10007C780();
      sub_10000AE78(v10, qword_1000B5368);
      swift_errorRetain();
      v11 = sub_10007C760();
      v12 = sub_10007DA10();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        aBlock = v14;
        *v13 = 136315138;
        swift_getErrorValue();
        v15 = sub_10007DEB0();
        v17 = sub_10000A660(v15, v16, &aBlock);

        *(v13 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v11, v12, "Could not connect to launch state manager proxy %s", v13, 0xCu);
        sub_10000B5CC(v14);

        swift_unknownObjectRelease();
LABEL_26:
        [v4 invalidate];

        return;
      }

      swift_unknownObjectRelease();

LABEL_25:

      goto LABEL_26;
    }

    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    v80 = (v23 + 16);
    *(v23 + 24) = 0;
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *(v24 + 24) = v23;
    v89 = sub_1000322E8;
    v90 = v24;
    aBlock = _NSConcreteStackBlock;
    v86 = 1107296256;
    v87 = sub_100025358;
    v88 = &unk_1000A4428;
    v25 = _Block_copy(&aBlock);

    v83 = v23;

    [v9 launchConfigurationWithReply:v25];
    _Block_release(v25);
    swift_beginAccess();
    v26 = *(v22 + 24);
    v82 = v0;
    if (!v26 || (v27 = *(v22 + 16), , v28 = sub_10002CBD4(v27, v26), v28 == 7))
    {
      if (qword_1000B5360 != -1)
      {
        swift_once();
      }

      v29 = sub_10007C780();
      sub_10000AE78(v29, qword_1000B5368);

      v30 = sub_10007C760();
      v31 = sub_10007D9F0();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v84[0] = v33;
        *v32 = 136315138;
        v34 = *(v22 + 24);
        aBlock = *(v22 + 16);
        v86 = v34;

        sub_100006D40(&unk_1000B2BC0);
        v35 = sub_10007D7F0();
        v37 = v36;

        v38 = sub_10000A660(v35, v37, v84);

        *(v32 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v30, v31, "Was not able to parse the launch destination. %s", v32, 0xCu);
        sub_10000B5CC(v33);
      }

      else
      {
      }

      *(v82 + v1) = 1;
      sub_100017DBC();

      swift_unknownObjectRelease();

      goto LABEL_25;
    }

    v39 = v28;
    if (qword_1000B5360 != -1)
    {
      swift_once();
    }

    v40 = sub_10007C780();
    sub_10000AE78(v40, qword_1000B5368);
    v41 = v83;

    v42 = sub_10007C760();
    v43 = sub_10007D9F0();
    if (!os_log_type_enabled(v42, v43))
    {

LABEL_50:
      if (v39 == 5)
      {
      }

      else
      {
        v53 = sub_10007DE50();

        if ((v53 & 1) == 0)
        {
          v73 = sub_10007D7A0();

          swift_beginAccess();
          if (*(v41 + 24))
          {

            v74 = sub_10007D7A0();
          }

          else
          {
            v74 = 0;
          }

          [v82 requestPresentationWithStickerType:v73 identifier:{v74, v77}];

          swift_unknownObjectRelease();
          goto LABEL_25;
        }
      }

      swift_beginAccess();
      v54 = *(v41 + 24);
      if (v54)
      {
        v79 = v39;
        v55 = *(v41 + 16);
        v56 = *((swift_isaMask & *v82) + 0x3E0);
        swift_bridgeObjectRetain_n();
        v81 = v55;
        v57 = v56(v55, v54);

        if (v57)
        {
          v75 = sub_10007D7A0();

          v76 = sub_10007D7A0();

          [v82 requestPresentationWithStickerType:v75 identifier:v76];

          swift_unknownObjectRelease();

          goto LABEL_26;
        }

        v60 = [objc_opt_self() sharedInstance];
        v61 = [v60 hasLoadedExtensions];

        if (v61)
        {

          v62 = sub_10007C760();
          v63 = sub_10007DA10();

          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            aBlock = v65;
            *v64 = 136315138;
            v66 = sub_10000A660(v81, v54, &aBlock);

            *(v64 + 4) = v66;
            _os_log_impl(&_mh_execute_header, v62, v63, "Tried to launch to plugin that is not available. Falling back to recents. (%s)", v64, 0xCu);
            sub_10000B5CC(v65);
          }

          else
          {
          }

          *(v82 + v1) = 1;
          sub_100017DBC();

          swift_unknownObjectRelease();
        }

        else
        {
          v67 = [objc_opt_self() defaultCenter];
          v68 = CKBrowserSelectionControllerReloadedInstallationsNotification;
          v69 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v70 = swift_allocObject();
          *(v70 + 16) = v69;
          *(v70 + 24) = v79;
          *(v70 + 32) = v55;
          *(v70 + 40) = v54;
          v89 = sub_1000323B8;
          v90 = v70;
          aBlock = _NSConcreteStackBlock;
          v86 = 1107296256;
          v87 = sub_100015C30;
          v88 = &unk_1000A4478;
          v71 = _Block_copy(&aBlock);

          v72 = [v67 addObserverForName:v68 object:0 queue:0 usingBlock:v71];
          swift_unknownObjectRelease();
          _Block_release(v71);

          swift_unknownObjectRelease();
        }

        goto LABEL_25;
      }

      *(v82 + v1) = 1;
      sub_100017DBC();
      v19 = sub_10007C760();
      v58 = sub_10007DA10();
      if (os_log_type_enabled(v19, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&_mh_execute_header, v19, v58, "Was asked to launch to third party app without an identifier. This is unusual.", v59, 2u);
      }

      swift_unknownObjectRelease();
LABEL_15:

      goto LABEL_26;
    }

    v78 = v43;
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock = v45;
    *v44 = 136315394;
    v77 = v45;
    if (v39 <= 2u)
    {
      if (v39)
      {
        if (v39 == 1)
        {
          v46 = 0xE600000000000000;
          v47 = 0x746E65636572;
        }

        else
        {
          v47 = 0x6472616F6279656BLL;
          v46 = 0xEE00746E65636552;
        }

LABEL_46:
        v49 = sub_10000A660(v47, v46, &aBlock);

        *(v44 + 4) = v49;
        *(v44 + 12) = 2080;
        swift_beginAccess();
        v50 = *(v83 + 24);
        if (v50)
        {
          v51 = *v80;
        }

        else
        {
          v50 = 0xED00007265696669;
          v51 = 0x746E656469206F6ELL;
        }

        v52 = sub_10000A660(v51, v50, &aBlock);
        v41 = v83;

        *(v44 + 14) = v52;
        _os_log_impl(&_mh_execute_header, v42, v78, "Preparing to launch to %s with %s", v44, 0x16u);
        swift_arrayDestroy();

        goto LABEL_50;
      }

      v47 = 0x746E6F4372657375;
      v48 = 7630437;
    }

    else
    {
      if (v39 <= 4u)
      {
        if (v39 == 3)
        {
          v46 = 0xE600000000000000;
          v47 = 0x696A6F6D656DLL;
        }

        else
        {
          v46 = 0xE500000000000000;
          v47 = 0x696A6F6D65;
        }

        goto LABEL_46;
      }

      if (v39 == 5)
      {
        v47 = 0x7261506472696874;
        v46 = 0xEA00000000007974;
        goto LABEL_46;
      }

      v47 = 0x6F4D736F746F6870;
      v48 = 7102820;
    }

    v46 = v48 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    goto LABEL_46;
  }
}

void sub_1000252F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100025358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_10007D7D0();
  v7 = v6;
  if (a3)
  {
    v8 = sub_10007D7D0();
    a3 = v9;
  }

  else
  {
    v8 = 0;
  }

  v4(v5, v7, v8, a3);
}

void *sub_1000253FC(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_10007D2F0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007D320();
  v28 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = (*((swift_isaMask & *result) + 0x3E0))(a3, a4);
    v26 = v11;
    v27 = v8;
    if (v16)
    {
    }

    else
    {
      if (qword_1000B5360 != -1)
      {
        swift_once();
      }

      v17 = sub_10007C780();
      sub_10000AE78(v17, qword_1000B5368);

      v18 = sub_10007C760();
      v19 = sub_10007DA10();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        aBlock[0] = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_10000A660(a3, a4, aBlock);
        _os_log_impl(&_mh_execute_header, v18, v19, "Got notified that apps have loaded, but didn't have the one we are looking for. Will launch to recents instead. (%s)", v20, 0xCu);
        sub_10000B5CC(v21);
      }

      a3 = 0;
      a4 = 0;
      a2 = 1;
    }

    sub_10000B77C(0, &qword_1000B22E0);
    v22 = sub_10007DAC0();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = a2;
    *(v24 + 32) = a3;
    *(v24 + 40) = a4;
    aBlock[4] = sub_100032420;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008F80;
    aBlock[3] = &unk_1000A44C8;
    v25 = _Block_copy(aBlock);

    sub_10007D310();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100031A88(&qword_1000B2970, &type metadata accessor for DispatchWorkItemFlags);
    sub_100006D40(&unk_1000B22F0);
    sub_10000B894();
    sub_10007DC50();
    sub_10007DAD0();
    _Block_release(v25);

    (*(v27 + 8))(v10, v7);
    return (*(v28 + 8))(v13, v26);
  }

  return result;
}

uint64_t sub_100025894(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v4 = [objc_opt_self() sharedInstance];
    v5 = [v4 orderedCombinedStickerApps];

    sub_10000B77C(0, &qword_1000B2AB8);
    v6 = sub_10007D8E0();

    if (v6 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10007DDB0())
    {
      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = sub_10007DCD0();
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v12 = [v9 extensionIdentifier];
        if (v12)
        {
          v13 = v12;
          v14 = v2;
          v15 = sub_10007D7D0();
          v17 = v16;

          if (v15 == a1 && v17 == v14)
          {

            return 1;
          }

          v2 = v14;
          v19 = sub_10007DE50();

          if (v19)
          {

            return 1;
          }
        }

        else
        {
        }

        ++v8;
        if (v11 == i)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_24:
  }

  return 0;
}

void sub_100025A90(unsigned __int8 a1, uint64_t a2, NSString a3)
{
  v6 = objc_allocWithZone(NSXPCConnection);
  v7 = sub_10007D7A0();
  v8 = [v6 initWithMachServiceName:v7 options:0];

  v9 = sub_10007D510();
  [v8 setRemoteObjectInterface:v9];

  [v8 resume];
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = (v10 + 16);
  v51 = sub_1000328CC;
  v52 = v10;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_1000252F0;
  v50 = &unk_1000A38F0;
  v12 = _Block_copy(&aBlock);

  v13 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
  _Block_release(v12);
  sub_10007DC10();
  swift_unknownObjectRelease();
  sub_100006D40(&qword_1000B2AC0);
  if (swift_dynamicCast())
  {
    swift_beginAccess();
    if (*v11)
    {
      swift_errorRetain();
      if (qword_1000B5360 != -1)
      {
        swift_once();
      }

      v14 = sub_10007C780();
      sub_10000AE78(v14, qword_1000B5368);
      swift_errorRetain();
      v15 = sub_10007C760();
      v16 = sub_10007DA10();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        aBlock = v18;
        *v17 = 136315138;
        swift_getErrorValue();
        v19 = sub_10007DEB0();
        v21 = sub_10000A660(v19, v20, &aBlock);

        *(v17 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v15, v16, "Could not connect to launch state manager proxy %s", v17, 0xCu);
        sub_10000B5CC(v18);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
      if (qword_1000B5360 != -1)
      {
        swift_once();
      }

      v26 = sub_10007C780();
      sub_10000AE78(v26, qword_1000B5368);

      v27 = sub_10007C760();
      v28 = sub_10007DA00();

      v45 = a2;
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        aBlock = v44;
        v30 = 0x7261506472696874;
        *v29 = 136315394;
        v31 = 0xEA00000000007974;
        if (a1 != 5)
        {
          v30 = 0x6F4D736F746F6870;
          v31 = 0xEB000000006C6164;
        }

        v32 = 0xE600000000000000;
        v33 = 0x696A6F6D656DLL;
        if (a1 != 3)
        {
          v33 = 0x696A6F6D65;
          v32 = 0xE500000000000000;
        }

        if (a1 <= 4u)
        {
          v30 = v33;
          v31 = v32;
        }

        v34 = 0xE600000000000000;
        v35 = 0x746E65636572;
        if (a1 != 1)
        {
          v35 = 0x6472616F6279656BLL;
          v34 = 0xEE00746E65636552;
        }

        if (!a1)
        {
          v35 = 0x746E6F4372657375;
          v34 = 0xEB00000000746E65;
        }

        if (a1 <= 2u)
        {
          v36 = v35;
        }

        else
        {
          v36 = v30;
        }

        if (a1 <= 2u)
        {
          v37 = v34;
        }

        else
        {
          v37 = v31;
        }

        v38 = sub_10000A660(v36, v37, &aBlock);

        *(v29 + 4) = v38;
        *(v29 + 12) = 2080;
        if (a3)
        {
          v39 = v45;
        }

        else
        {
          v39 = 0x746E656469206F6ELL;
        }

        if (a3)
        {
          v40 = a3;
        }

        else
        {
          v40 = 0xED00007265696669;
        }

        v41 = sub_10000A660(v39, v40, &aBlock);

        *(v29 + 14) = v41;
        _os_log_impl(&_mh_execute_header, v27, v28, "Will save launch config of %s with %s", v29, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v42 = sub_10007D7A0();

      if (a3)
      {
        a3 = sub_10007D7A0();
      }

      v51 = sub_100026310;
      v52 = 0;
      aBlock = _NSConcreteStackBlock;
      v48 = 1107296256;
      v49 = sub_1000328C8;
      v50 = &unk_1000A3918;
      v43 = _Block_copy(&aBlock);
      [v46 updateCurrentConfigurationWithSection:v42 identifier:a3 withReply:v43];
      _Block_release(v43);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1000B5360 != -1)
    {
      swift_once();
    }

    v22 = sub_10007C780();
    sub_10000AE78(v22, qword_1000B5368);
    v23 = sub_10007C760();
    v24 = sub_10007DA10();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Could not find a valid launch state manager proxy", v25, 2u);
    }
  }

  [v8 invalidate];
}

void sub_100026310(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1000B5360 != -1)
    {
      swift_once();
    }

    v1 = sub_10007C780();
    sub_10000AE78(v1, qword_1000B5368);
    swift_errorRetain();
    v2 = sub_10007C760();
    v3 = sub_10007DA10();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = sub_10007DEB0();
      v8 = sub_10000A660(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Could not save current stickers state. %s", v4, 0xCu);
      sub_10000B5CC(v5);
    }

    else
    {
    }
  }
}

id sub_1000264C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerProvidingViewController] = 0;
  v7 = &v3[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_photoPickerDidDismissClosure];
  *v7 = 0;
  v7[1] = 0;
  v3[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_activeControllerType] = 7;
  v8 = &v3[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_thirdPartyAppIdentifier];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v3[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_puppetIdentifier];
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerStripViewModel;
  type metadata accessor for StickerPackStripViewModel(0);
  *&v3[v10] = sub_100040060();
  *&v3[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_MSMessagesAppPresentationStyleModal] = 3;
  v11 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController__isAddingStickerMu;
  *&v4[v11] = [objc_allocWithZone(NSLock) init];
  v4[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController__isAddingSticker] = 0;
  v12 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_rootNavigationController;
  *&v4[v12] = [objc_allocWithZone(UINavigationController) init];
  *&v4[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_visualEffectViewBackground] = 0;
  v13 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_mainController;
  *&v4[v13] = [objc_allocWithZone(UIViewController) init];
  *&v4[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerCollectionViewControllerPresentedViewController] = 0;
  *&v4[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerPackStripHostHeightConstraint] = 0;
  *&v4[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_contentControllerTopAnchorConstraint] = 0;
  *&v4[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerPackStripTopConstraint] = 0;
  v4[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_presentedFromMessages] = 1;
  *&v4[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController____lazy_storage___stickerPackStripHost] = 0;
  v14 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController____lazy_storage___stickerPackStrip;
  v15 = type metadata accessor for StickerPackStrip(0);
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  *&v4[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_imageAnalysisInteraction] = 0;
  *&v4[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_traitRegistration] = 0;
  v16 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_interaction;
  *&v4[v16] = [objc_allocWithZone(_UIScrollPocketInteraction) initWithStyle:0];
  v17 = &v4[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController__VKStickerInfoKeyStickerIDs];
  *v17 = 0x4972656B63697473;
  v17[1] = 0xEA00000000007344;
  if (a2)
  {
    v18 = sub_10007D7A0();
  }

  else
  {
    v18 = 0;
  }

  v21.receiver = v4;
  v21.super_class = type metadata accessor for StickersParentViewController();
  v19 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", v18, a3);

  return v19;
}

id sub_1000267B4(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerProvidingViewController] = 0;
  v4 = &v1[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_photoPickerDidDismissClosure];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_activeControllerType] = 7;
  v5 = &v1[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_thirdPartyAppIdentifier];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_puppetIdentifier];
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerStripViewModel;
  type metadata accessor for StickerPackStripViewModel(0);
  *&v1[v7] = sub_100040060();
  *&v1[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_MSMessagesAppPresentationStyleModal] = 3;
  v8 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController__isAddingStickerMu;
  *&v2[v8] = [objc_allocWithZone(NSLock) init];
  v2[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController__isAddingSticker] = 0;
  v9 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_rootNavigationController;
  *&v2[v9] = [objc_allocWithZone(UINavigationController) init];
  *&v2[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_visualEffectViewBackground] = 0;
  v10 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_mainController;
  *&v2[v10] = [objc_allocWithZone(UIViewController) init];
  *&v2[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerCollectionViewControllerPresentedViewController] = 0;
  *&v2[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerPackStripHostHeightConstraint] = 0;
  *&v2[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_contentControllerTopAnchorConstraint] = 0;
  *&v2[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerPackStripTopConstraint] = 0;
  v2[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_presentedFromMessages] = 1;
  *&v2[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController____lazy_storage___stickerPackStripHost] = 0;
  v11 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController____lazy_storage___stickerPackStrip;
  v12 = type metadata accessor for StickerPackStrip(0);
  (*(*(v12 - 8) + 56))(&v2[v11], 1, 1, v12);
  *&v2[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_imageAnalysisInteraction] = 0;
  *&v2[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_traitRegistration] = 0;
  v13 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_interaction;
  *&v2[v13] = [objc_allocWithZone(_UIScrollPocketInteraction) initWithStyle:0];
  v14 = &v2[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController__VKStickerInfoKeyStickerIDs];
  *v14 = 0x4972656B63697473;
  v14[1] = 0xEA00000000007344;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for StickersParentViewController();
  v15 = objc_msgSendSuper2(&v17, "initWithCoder:", a1);

  if (v15)
  {
  }

  return v15;
}

id sub_100026A3C(char a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithShouldBeSheetPresentationControllerDelegate:a1 & 1];
}

id sub_100026A80(char a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerProvidingViewController] = 0;
  v4 = &v1[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_photoPickerDidDismissClosure];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_activeControllerType] = 7;
  v5 = &v1[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_thirdPartyAppIdentifier];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_puppetIdentifier];
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerStripViewModel;
  type metadata accessor for StickerPackStripViewModel(0);
  *&v1[v7] = sub_100040060();
  *&v1[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_MSMessagesAppPresentationStyleModal] = 3;
  v8 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController__isAddingStickerMu;
  *&v2[v8] = [objc_allocWithZone(NSLock) init];
  v2[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController__isAddingSticker] = 0;
  v9 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_rootNavigationController;
  *&v2[v9] = [objc_allocWithZone(UINavigationController) init];
  *&v2[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_visualEffectViewBackground] = 0;
  v10 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_mainController;
  *&v2[v10] = [objc_allocWithZone(UIViewController) init];
  *&v2[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerCollectionViewControllerPresentedViewController] = 0;
  *&v2[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerPackStripHostHeightConstraint] = 0;
  *&v2[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_contentControllerTopAnchorConstraint] = 0;
  *&v2[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerPackStripTopConstraint] = 0;
  v2[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_presentedFromMessages] = 1;
  *&v2[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController____lazy_storage___stickerPackStripHost] = 0;
  v11 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController____lazy_storage___stickerPackStrip;
  v12 = type metadata accessor for StickerPackStrip(0);
  (*(*(v12 - 8) + 56))(&v2[v11], 1, 1, v12);
  *&v2[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_imageAnalysisInteraction] = 0;
  *&v2[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_traitRegistration] = 0;
  v13 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_interaction;
  *&v2[v13] = [objc_allocWithZone(_UIScrollPocketInteraction) initWithStyle:0];
  v14 = &v2[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController__VKStickerInfoKeyStickerIDs];
  *v14 = 0x4972656B63697473;
  v14[1] = 0xEA00000000007344;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for StickersParentViewController();
  return objc_msgSendSuper2(&v16, "initWithShouldBeSheetPresentationControllerDelegate:", a1 & 1);
}

void sub_100026D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_10007C350();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_100026E1C(int a1, int a2, int a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a4;
  a8(a7, v12);
}

void sub_100027194()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (!v2 && [v0 isLandscapeMode])
  {
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 traitCollection];

      v6 = [v5 verticalSizeClass];
      if (v6 == 1)
      {
        v7 = v0;
        v8 = (*((swift_isaMask & *v0) + 0x108))();
        if (v8)
        {
          v9 = v8;
          (*((swift_isaMask & *v8) + 0x188))();
        }

        [v7 dismiss];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100027314(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_10007D2F0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007D320();
  __chkstk_darwin(v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v40 = v13;
    v41 = a1;
    v16 = [a3 activeConversation];
    if (v16)
    {
      v17 = v16;
      sub_10000B77C(0, &qword_1000B22E0);
      v39 = sub_10007DAC0();
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      *(v19 + 24) = v17;
      v20 = *(a4 + 16);
      *(v19 + 32) = *a4;
      *(v19 + 48) = v20;
      *(v19 + 64) = *(a4 + 32);
      *(v19 + 72) = v41;
      aBlock[4] = sub_100031FDC;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100008F80;
      aBlock[3] = &unk_1000A4310;
      v21 = _Block_copy(aBlock);
      v22 = v41;
      v23 = v17;

      sub_10007D310();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_100031A88(&qword_1000B2970, &type metadata accessor for DispatchWorkItemFlags);
      sub_100006D40(&unk_1000B22F0);
      sub_10000B894();
      sub_10007DC50();
      v24 = v39;
      sub_10007DAD0();
      _Block_release(v21);

      (*(v9 + 8))(v11, v8);
      (*(v40 + 8))(v15, v12);
    }

    else
    {
      if (qword_1000B5360 != -1)
      {
        swift_once();
      }

      v33 = sub_10007C780();
      sub_10000AE78(v33, qword_1000B5368);
      v34 = sub_10007C760();
      v35 = sub_10007D9F0();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Sticker was tapped, but there is no active conversation. Nothing more for us to do.", v36, 2u);
      }

      v37 = v41;
    }
  }

  else if (a2)
  {
    swift_errorRetain();
    if (qword_1000B5360 != -1)
    {
      swift_once();
    }

    v25 = sub_10007C780();
    sub_10000AE78(v25, qword_1000B5368);
    swift_errorRetain();
    v26 = sub_10007C760();
    v27 = sub_10007DA10();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v28 = 136315138;
      swift_getErrorValue();
      v30 = sub_10007DEB0();
      v32 = sub_10000A660(v30, v31, aBlock);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "Could not load sticker to send. %s", v28, 0xCu);
      sub_10000B5CC(v29);
    }

    else
    {
    }
  }
}

void sub_1000278D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_10002798C(double a1, double a2, double a3, double a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 56) = 0;
  v10 = v4;
  Sticker.asMSSticker(completionHandler:)(sub_10002FBC8, v9);

  sub_100027194();
}

void sub_100027B24(void *a1, char a2)
{
  v3 = v2;
  v6 = [a1 parentViewController];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for StickerProvidingViewController();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v8;
      swift_beginAccess();
      v10 = qword_1000B71F0;
      qword_1000B71F0 = v9;
      v11 = v7;

      swift_beginAccess();
      v12 = qword_1000B71F8;
      qword_1000B71F8 = v3;

      (*((swift_isaMask & *v9) + 0x1C0))(v28, v3);
      swift_beginAccess();
      xmmword_1000B28B0 = v28[0];
      *&qword_1000B28C0 = v28[1];
      byte_1000B28D0 = v29;

      if ((a2 & 1) == 0)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  if (qword_1000B5360 != -1)
  {
    swift_once();
  }

  v13 = sub_10007C780();
  sub_10000AE78(v13, qword_1000B5368);
  v14 = a1;
  v15 = sub_10007C760();
  v16 = sub_10007DA10();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v28[0] = v18;
    *v17 = 136315138;
    v19 = [v14 debugDescription];
    v20 = sub_10007D7D0();
    v22 = v21;

    v23 = sub_10000A660(v20, v22, v28);

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "Could not store reference to providing controller %s", v17, 0xCu);
    sub_10000B5CC(v18);
  }

  if (a2)
  {
LABEL_11:
    v24 = (*((swift_isaMask & *v3) + 0x3C8))();
    swift_beginAccess();
    v25 = qword_1000B7210;
    qword_1000B7210 = v24;

    v26 = [v3 traitCollection];
    v27 = [v26 _presentationSemanticContext];

    if (v27 == 3)
    {
      swift_beginAccess();
      byte_1000B28A0 = 6;
      if ([v3 respondsToSelector:"_requestFullScreenModalPresentationWithSize:"])
      {
        [v3 _requestFullScreenModalPresentationWithSize:{820.0, 640.0}];
      }

      else
      {
        [v3 requestPresentationStyle:*(v3 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_MSMessagesAppPresentationStyleModal)];
      }
    }

    else
    {
      sub_100021DCC();
    }
  }
}

uint64_t sub_100027F80(uint64_t a1, uint64_t a2)
{
  v6 = *((swift_isaMask & *v2) + 0x128);

  return v6(a1, a2);
}

void sub_1000281F8()
{
  v1 = *&v0[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerCollectionViewControllerPresentedViewController];
  *&v0[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerCollectionViewControllerPresentedViewController] = 0;

  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v6[4] = sub_10002FCD8;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100008F80;
  v6[3] = &unk_1000A3990;
  v4 = _Block_copy(v6);
  v5 = v0;

  [v2 animateWithDuration:v4 animations:0.2];
  _Block_release(v4);
}

void sub_1000282F8(void *a1)
{
  v2 = sub_100018990();
  v3 = [v2 view];

  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  [v3 setAlpha:1.0];

  v4 = (*((swift_isaMask & *a1) + 0x108))();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [v4 view];

  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v6 setAlpha:1.0];
}

void sub_1000285A4()
{
  sub_10000B77C(0, &unk_1000B22D0);
  isa = sub_10007D8C0().super.isa;
  v3[4] = sub_10003283C;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_10001DE24;
  v3[3] = &unk_1000A39B8;
  v2 = _Block_copy(v3);

  [v0 _addStickerToStoreWithRepresentations:isa completionWithStickerIDs:v2];
  _Block_release(v2);
}

void sub_10002868C()
{
  swift_beginAccess();
  v1 = qword_1000B7210;
  if (qword_1000B7210)
  {
    sub_10000B77C(0, &unk_1000B2AD0);
    v2 = v1;
    if (sub_10007DBA0())
    {
      [v0 dismiss];
      swift_beginAccess();
      v3 = qword_1000B7200;
      qword_1000B7200 = 0;

      v2 = v3;
    }
  }
}

void sub_10002875C(void *a1)
{
  v2 = v1;
  v4 = sub_10007C480();
  __chkstk_darwin(v4 - 8);
  swift_beginAccess();
  v5 = qword_1000B7210;
  if (!qword_1000B7210)
  {
    return;
  }

  sub_10000B77C(0, &unk_1000B2AD0);
  v6 = v5;
  if ((sub_10007DBA0() & 1) == 0 || (v7 = (*((swift_isaMask & *v6) + 0xA8))()) == 0)
  {
LABEL_28:

    return;
  }

  v8 = v7;
  v9 = *((swift_isaMask & *v1) + 0x108);
  v10 = v9();
  if (v10)
  {
    v11 = v10;
    v12 = (*((swift_isaMask & *v10) + 0x150))();

    if (v12)
    {
      [v12 setNeedsUpdateContentUnavailableConfiguration];
    }
  }

  v13 = v9();
  if (v13)
  {
    v14 = v13;
    v15 = (*((swift_isaMask & *v13) + 0x150))();

    if (v15)
    {
      if (sub_10007C5A0())
      {
        sub_10007C5C0(0);
      }
    }
  }

  swift_beginAccess();
  v16 = qword_1000B7200;
  if (qword_1000B7200)
  {
    v17 = qword_1000B7210;
    if (qword_1000B7210)
    {
      v18 = qword_1000B7200;
      v19 = v17;
      if (sub_10007DBA0())
      {
        [v18 dismiss];
        v20 = qword_1000B7200;
        qword_1000B7200 = 0;
      }

      else
      {
      }
    }

    else
    {
      v31 = qword_1000B7200;
    }

    v32 = (*((swift_isaMask & *v2) + 0x120))();
    if (v32)
    {
      v33 = v32;
      v32(v2);

      sub_10002CC20(v33);
    }

    else
    {
    }

    return;
  }

  v21 = [v2 presentedViewController];
  if (!v21)
  {

    goto LABEL_28;
  }

  v22 = v21;
  sub_10000B77C(0, &qword_1000B3B10);
  v23 = v8;
  v24 = sub_10007DBA0();

  if (v24)
  {
    v25 = v9();
    if (v25)
    {
      v26 = v25;
      v27 = (*((swift_isaMask & *v25) + 0x150))();

      if (v27)
      {
        sub_10007C620();
        (*((swift_isaMask & *a1) + 0x90))();
        sub_10007C490();
      }
    }

    v28 = swift_allocObject();
    *(v28 + 16) = v2;
    aBlock[4] = sub_10002FEC8;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008F80;
    aBlock[3] = &unk_1000A3A08;
    v29 = _Block_copy(aBlock);
    v30 = v2;

    [v30 dismissViewControllerAnimated:1 completion:v29];

    _Block_release(v29);
  }

  else
  {
  }
}

uint64_t sub_100028C90(uint64_t a1, void *a2)
{
  v6 = *((swift_isaMask & *v2) + 0x2F0);
  v4 = a2;

  return v6(a2);
}

void sub_100028D10()
{
  sub_10000B77C(0, &unk_1000B22D0);
  isa = sub_10007D8C0().super.isa;
  v3[4] = sub_10003283C;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_10001DE24;
  v3[3] = &unk_1000A41F8;
  v2 = _Block_copy(v3);

  [v0 _addStickerToStoreWithRepresentations:isa completionWithStickerIDs:v2];
  _Block_release(v2);
}

void sub_100028DF8(double a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x108))();
  if (v3)
  {
    v4 = v3;
    (*((swift_isaMask & *v3) + 0x1F8))(a1);
  }
}

void sub_100028ED0()
{
  v1 = v0;
  v2 = swift_beginAccess();
  if (qword_1000B7208)
  {
    v3 = *(*qword_1000B7208 + 560);

    v3(v4);
  }

  v5 = (*((swift_isaMask & *v0) + 0x108))(v2);
  if (v5)
  {
    v6 = v5;
    if (qword_1000B7208)
    {
      v7 = *(*qword_1000B7208 + 424);

      v9 = v7(v8);
      v11 = v10;
      v13 = v12;
      v15 = v14;
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v13 = 0;
      v15 = 1;
    }

    (*((swift_isaMask & *v6) + 0x200))(v9, v11, v13, v15 & 1);
  }

  qword_1000B7208 = 0;

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10002FF70;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008F80;
  aBlock[3] = &unk_1000A3A30;
  v17 = _Block_copy(aBlock);

  [v1 _addStickerAnimationDidFinishWithCompletion:v17];
  _Block_release(v17);
}

void sub_100029134(uint64_t a1@<X8>)
{
  v3 = (*((swift_isaMask & *v1) + 0x108))();
  if (v3)
  {
    v4 = v3;
    (*((swift_isaMask & *v3) + 0x1C0))(v10);
    v8 = v10[1];
    v9 = v10[0];
    v5 = v11;

    v7 = v8;
    v6 = v9;
  }

  else
  {
    v6 = 0uLL;
    v5 = 1;
    v7 = 0uLL;
  }

  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v5;
}

uint64_t sub_100029210()
{
  if (*(v0 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_puppetIdentifier + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_puppetIdentifier);
  }

  else
  {
    v2 = sub_100013AF8();
    swift_beginAccess();
    v3 = *(**v2 + 240);

    v1 = v3(v4);
  }

  return v1;
}

uint64_t sub_1000292D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_puppetIdentifier);
  v6 = *(v3 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_puppetIdentifier + 8);
  if (a2 == 0x746E65636572 && a3 == 0xE600000000000000 || (sub_10007DE50() & 1) != 0)
  {

    v8 = 1;
  }

  else if (a2 == 0x746E6F4372657375 && a3 == 0xEB00000000746E65 || (sub_10007DE50() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a2 == 0x696A6F6D65 && a3 == 0xE500000000000000 || (sub_10007DE50() & 1) != 0)
  {

    v8 = 4;
  }

  else if (a2 == 0x696A6F6D656DLL && a3 == 0xE600000000000000)
  {

    v8 = 3;
  }

  else
  {
    v12 = sub_10007DE50();

    if (v12 & 1) != 0 || (v13 = sub_100079CB8(), *v13 == a2) && v13[1] == a3 || (sub_10007DE50())
    {
      v8 = 3;
    }

    else
    {
      v18 = v3;
      if ((*((swift_isaMask & *v3) + 0x3E0))(a2, a3))
      {

        v8 = 5;
        v7 = a2;
        v6 = a3;
      }

      else
      {
        if (qword_1000B5360 != -1)
        {
          swift_once();
        }

        v14 = sub_10007C780();
        sub_10000AE78(v14, qword_1000B5368);
        v15 = sub_10007C760();
        v16 = sub_10007DA10();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v15, v16, "Asked to present a 3rd party app that isn't available. Falling back to recents.", v17, 2u);
        }

        v8 = 1;
        v3 = v18;
      }
    }
  }

  v9 = sub_10007D7A0();

  if (v6)
  {

    v10 = sub_10007D7A0();
  }

  else
  {
    v10 = 0;
  }

  [v3 requestPresentationWithStickerType:v9 identifier:v10];

  sub_1000218CC();
  (*((swift_isaMask & *v3) + 0x3E8))(v8, v7, v6);
}

uint64_t sub_1000296D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_thirdPartyAppIdentifier);
  *v6 = 0;
  v6[1] = 0;

  sub_100017DBC();

  return sub_100029734(a2, a3);
}

uint64_t sub_100029734(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20 = a1;
  v6 = sub_10007D2F0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10007D320();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B77C(0, &qword_1000B22E0);
  v13 = sub_10007DAC0();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v19 = a2;
  v15[4] = a2;
  aBlock[4] = sub_10002FFC4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008F80;
  aBlock[3] = &unk_1000A3A80;
  v16 = _Block_copy(aBlock);

  sub_10007D310();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100031A88(&qword_1000B2970, &type metadata accessor for DispatchWorkItemFlags);
  sub_100006D40(&unk_1000B22F0);
  sub_10000B894();
  sub_10007DC50();
  sub_10007DAD0();
  _Block_release(v16);

  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v21);
  return (*((swift_isaMask & *v3) + 0x3E8))(3, v20, v19);
}

id sub_100029A88(uint64_t a1, id a2)
{
  result = [v2 presentationStyle];
  if (result != a2)
  {

    return [v2 requestPresentationStyle:a2];
  }

  return result;
}

id sub_100029AEC(uint64_t a1, uint64_t a2)
{
  [objc_opt_self() setPendingGlobalPresentation:a2];
  v3 = *&v2[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_MSMessagesAppPresentationStyleModal];

  return [v2 requestPresentationStyle:v3];
}

void sub_100029B58()
{
  if (qword_1000B5360 != -1)
  {
    swift_once();
  }

  v0 = sub_10007C780();
  sub_10000AE78(v0, qword_1000B5368);
  oslog = sub_10007C760();
  v1 = sub_10007D9F0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Got completion for requesting app store", v2, 2u);
  }
}

uint64_t sub_100029C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*v3 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_thirdPartyAppIdentifier);
  *v6 = 0;
  v6[1] = 0;

  sub_100017DBC();
  return sub_100029734(a2, a3);
}

id sub_100029CBC(uint64_t a1, id a2)
{
  v4 = *v2;
  result = [v4 presentationStyle];
  if (result != a2)
  {

    return [v4 requestPresentationStyle:a2];
  }

  return result;
}

id sub_100029D24(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  [objc_opt_self() setPendingGlobalPresentation:a2];
  v4 = *&v3[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_MSMessagesAppPresentationStyleModal];

  return [v3 requestPresentationStyle:v4];
}

uint64_t sub_100029DB0()
{
  v1 = (*v0 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_puppetIdentifier);
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v3 = sub_100013AF8();
    swift_beginAccess();
    v4 = *(**v3 + 240);

    v2 = v4(v5);
  }

  return v2;
}

void sub_100029EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a8;
  v55 = a2;
  v56 = a6;
  v57 = a4;
  v11 = sub_100006D40(&qword_1000B2130);
  __chkstk_darwin(v11 - 8);
  v13 = v53 - v12;
  v14 = sub_10007C3B0();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = v53 - v20;
  __chkstk_darwin(v19);
  v59 = (v53 - v22);
  v58 = [v8 activeConversation];
  if (v58)
  {
    sub_10003260C(a1, v13, &qword_1000B2130);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_10000B348(v13, &qword_1000B2130);
      if (qword_1000B5360 != -1)
      {
        swift_once();
      }

      v23 = sub_10007C780();
      sub_10000AE78(v23, qword_1000B5368);
      v24 = sub_10007C760();
      v25 = sub_10007D9F0();
      v26 = os_log_type_enabled(v24, v25);
      v27 = v58;
      if (v26)
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Expected a file URL to create an MSSticker. Aborting sendSticker.", v28, 2u);
      }
    }

    else
    {
      v53[1] = v8;
      v33 = v59;
      (*(v15 + 32))(v59, v13, v14);
      sub_10000B77C(0, &qword_1000B2AE0);
      v53[0] = v15;
      v34 = *(v15 + 16);
      v34(v21, v33, v14);

      v35 = MSSticker.init(fileURL:externalURI:localizedDescription:extensionIdentifier:)(v21, v56, a7);
      if (v35)
      {
        v36 = v35;
        v37 = v58;
        if ((*(v54 + 32) & 1) != 0 || (v38 = *v54, v39 = *(v54 + 8), v40 = *(v54 + 16), v41 = *(v54 + 24), ![v58 respondsToSelector:"insertSticker:withSourceFrame:completionHandler:"]))
        {
          v64 = sub_10002BB5C;
          v65 = 0;
          aBlock = _NSConcreteStackBlock;
          v61 = 1107296256;
          v62 = sub_1000328C8;
          v63 = &unk_1000A3AA8;
          v42 = _Block_copy(&aBlock);
          [v37 insertSticker:v36 completionHandler:v42];
        }

        else
        {
          v64 = sub_1000327F0;
          v65 = 0;
          aBlock = _NSConcreteStackBlock;
          v61 = 1107296256;
          v62 = sub_1000328C8;
          v63 = &unk_1000A3AD0;
          v42 = _Block_copy(&aBlock);
          [v37 insertSticker:v36 withSourceFrame:v42 completionHandler:{v38, v39, v40, v41}];
        }

        _Block_release(v42);
        v43 = v53[0];
      }

      else
      {
        if (qword_1000B5360 != -1)
        {
          swift_once();
        }

        v44 = sub_10007C780();
        sub_10000AE78(v44, qword_1000B5368);
        v34(v18, v59, v14);
        v45 = sub_10007C760();
        v46 = sub_10007DA10();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          aBlock = v48;
          *v47 = 136315138;
          sub_100031A88(&qword_1000B2AE8, &type metadata accessor for URL);
          v49 = sub_10007DE30();
          v51 = v50;
          v43 = v53[0];
          (*(v53[0] + 8))(v18, v14);
          v52 = sub_10000A660(v49, v51, &aBlock);

          *(v47 + 4) = v52;
          _os_log_impl(&_mh_execute_header, v45, v46, "Could not create MSSticker for url %s", v47, 0xCu);
          sub_10000B5CC(v48);
        }

        else
        {

          v43 = v53[0];
          (*(v53[0] + 8))(v18, v14);
        }

        v37 = v58;
      }

      sub_100027194();

      (*(v43 + 8))(v59, v14);
    }
  }

  else
  {
    if (qword_1000B5360 != -1)
    {
      swift_once();
    }

    v29 = sub_10007C780();
    sub_10000AE78(v29, qword_1000B5368);
    v59 = sub_10007C760();
    v30 = sub_10007D9F0();
    if (os_log_type_enabled(v59, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v59, v30, "Sticker was tapped, but there is no active conversation. Nothing more for us to do.", v31, 2u);
    }

    v32 = v59;
  }
}

void sub_10002A6C0()
{
  v1 = [v0 activeConversation];
  if (v1)
  {
    v3 = v1;
    sub_10007C380(v2);
    v5 = v4;
    aBlock[4] = sub_10002BB70;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000328C8;
    aBlock[3] = &unk_1000A3AF8;
    v6 = _Block_copy(aBlock);
    [v3 insertAttachment:v5 withAlternateFilename:0 completionHandler:v6];
    _Block_release(v6);
  }

  else
  {
    if (qword_1000B5360 != -1)
    {
      swift_once();
    }

    v7 = sub_10007C780();
    sub_10000AE78(v7, qword_1000B5368);
    oslog = sub_10007C760();
    v8 = sub_10007D9F0();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Attachment was tapped, but there is no active conversation. Nothing more for us to do.", v9, 2u);
    }
  }
}

uint64_t sub_10002A920()
{
  sub_10007D960();
  *(v0 + 16) = sub_10007D950();
  v2 = sub_10007D940();

  return _swift_task_switch(sub_1000328D4, v2, v1);
}

uint64_t sub_10002AB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  sub_100006D40(&qword_1000B2130);
  v3[4] = swift_task_alloc();
  v3[5] = sub_10007D960();
  v3[6] = sub_10007D950();
  v5 = sub_10007D940();

  return _swift_task_switch(sub_10002AC18, v5, v4);
}

uint64_t sub_10002AC18()
{
  v1 = v0[2];
  v2 = v0[3];

  v0[7] = _Block_copy(v2);
  if (v1)
  {
    sub_10007C390();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v0[4];
  v5 = sub_10007C3B0();
  (*(*(v5 - 8) + 56))(v4, v3, 1, v5);
  v0[8] = sub_10007D950();
  v7 = sub_10007D940();

  return _swift_task_switch(sub_100032834, v7, v6);
}

uint64_t sub_10002AD20()
{
  sub_10007D960();
  *(v0 + 16) = sub_10007D950();
  v2 = sub_10007D940();

  return _swift_task_switch(sub_10002ADB4, v2, v1);
}

uint64_t sub_10002ADB4()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10002AFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_100006D40(&qword_1000B2130);
  v4[4] = swift_task_alloc();
  v4[5] = sub_10007D960();
  v4[6] = sub_10007D950();
  v6 = sub_10007D940();

  return _swift_task_switch(sub_10002B090, v6, v5);
}

uint64_t sub_10002B090()
{
  v1 = v0[2];
  v2 = v0[3];

  v0[7] = _Block_copy(v2);
  if (v1)
  {
    sub_10007C390();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v0[4];
  v5 = sub_10007C3B0();
  (*(*(v5 - 8) + 56))(v4, v3, 1, v5);
  v0[8] = sub_10007D950();
  v7 = sub_10007D940();

  return _swift_task_switch(sub_10002B198, v7, v6);
}

uint64_t sub_10002B198()
{
  v1 = v0[7];
  v2 = v0[4];

  sub_10000B348(v2, &qword_1000B2130);
  if (v1)
  {
    v3 = v0[7];
    v3[2](v3, 0);
    _Block_release(v3);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_10002B280()
{
  sub_10007D960();
  *(v0 + 16) = sub_10007D950();
  v2 = sub_10007D940();

  return _swift_task_switch(sub_10002B314, v2, v1);
}

uint64_t sub_10002B314()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002B518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_10007D960();
  v4[4] = sub_10007D950();
  v6 = sub_10007D940();

  return _swift_task_switch(sub_10002B5B4, v6, v5);
}

uint64_t sub_10002B5B4()
{
  v1 = v0[2];

  v0[5] = _Block_copy(v1);
  v0[6] = sub_10007D950();
  v3 = sub_10007D940();

  return _swift_task_switch(sub_10002B654, v3, v2);
}

uint64_t sub_10002B654()
{
  v1 = *(v0 + 40);

  if (v1)
  {
    v2 = *(v0 + 40);
    v2[2](v2);
    _Block_release(v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

void sub_10002B6DC(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = sub_100006D40(&qword_1000B2130);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v43[-1] - v13;
  v15 = (*((swift_isaMask & *v5) + 0x108))(v12);
  if (v15)
  {
    v16 = v15;
    v17 = [v5 view];
    if (!v17)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v18 = v17;
    v19 = [v17 window];

    if (v19)
    {
      v20 = [v16 view];
      if (!v20)
      {
LABEL_14:
        __break(1u);
        return;
      }

      v21 = v20;
      v22 = [v20 coordinateSpace];

      [v22 convertRect:objc_msgSend(v19 toCoordinateSpace:{"coordinateSpace"), a2, a3, a4, a5}];
      a2 = v23;
      a3 = v24;
      a4 = v25;
      a5 = v26;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v27 = [a1 fileURL];
  sub_10007C390();

  v28 = sub_10007C3B0();
  (*(*(v28 - 8) + 56))(v14, 0, 1, v28);
  v29 = [a1 accessibilityLabel];
  v30 = sub_10007D7D0();
  v32 = v31;

  v33 = [a1 stickerPackGUID];
  v34 = sub_10007D7D0();
  v36 = v35;

  v37 = [a1 externalURI];
  if (v37)
  {
    v38 = v37;
    v39 = sub_10007D7D0();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  *v43 = a2;
  *&v43[1] = a3;
  *&v43[2] = a4;
  *&v43[3] = a5;
  v44 = 0;
  sub_100029EDC(v14, v30, v32, v34, v36, v39, v41, v43);

  sub_10000B348(v14, &qword_1000B2130);
}

void sub_10002BB84(uint64_t a1, const char *a2, const char *a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1000B5360 != -1)
    {
      swift_once();
    }

    v4 = sub_10007C780();
    sub_10000AE78(v4, qword_1000B5368);
    swift_errorRetain();
    v5 = sub_10007C760();
    v6 = sub_10007DA10();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = sub_10007DEB0();
      v11 = sub_10000A660(v9, v10, &v17);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, a2, v7, 0xCu);
      sub_10000B5CC(v8);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1000B5360 != -1)
    {
      swift_once();
    }

    v13 = sub_10007C780();
    sub_10000AE78(v13, qword_1000B5368);
    oslog = sub_10007C760();
    v14 = sub_10007DA00();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, a3, v15, 2u);
    }
  }
}

id sub_10002BE18(uint64_t a1)
{
  v2 = v1;
  sub_10007C380(__stack_chk_guard);
  v5 = v4;
  v6 = sub_10007D7A0();

  v15 = 0;
  v7 = [v2 initWithContentsOfFileURL:v5 localizedDescription:v6 error:&v15];

  v8 = v15;
  if (v7)
  {
    v9 = sub_10007C3B0();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15;
    sub_10007C360();

    swift_willThrow();
    v13 = sub_10007C3B0();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

void *sub_10002BF8C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10002BFBC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10000B96C;

  return v6();
}

uint64_t sub_10002C0A4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10000B180;

  return v7();
}

uint64_t sub_10002C18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100006D40(&unk_1000B2960);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10003260C(a3, v23 - v10, &unk_1000B2960);
  v12 = sub_10007D990();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000B348(v11, &unk_1000B2960);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_10007D980();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_10007D940();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_10007D800() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_10000B348(a3, &unk_1000B2960);

    return v21;
  }

LABEL_8:
  sub_10000B348(a3, &unk_1000B2960);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_10002C488(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100032824;

  return v6(a1);
}

uint64_t sub_10002C580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_10007DD50();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10002C680, 0, 0);
}

uint64_t sub_10002C680()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_10007DD60();
  v5 = sub_100031A88(&qword_1000B2BA8, &type metadata accessor for ContinuousClock);
  sub_10007DE80();
  sub_100031A88(&qword_1000B2BB0, &type metadata accessor for ContinuousClock.Instant);
  sub_10007DD70();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_10002C810;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_10002C810()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_10002C9CC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10002C9CC()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10002CA38(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007DC60(*(v2 + 40));

  return sub_10002CA7C(a1, v4);
}

unint64_t sub_10002CA7C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000326C8(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10007DC70();
      sub_100032674(v8);
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

uint64_t sub_10002CB48()
{
  result = swift_beginAccess();
  if (qword_1000B7208)
  {
    v1 = *(*qword_1000B7208 + 552);

    v1(v2);
  }

  return result;
}

uint64_t sub_10002CBD4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000A3530;
  v6._object = a2;
  v4 = sub_10007DE00(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10002CC20(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for StickersParentViewController()
{
  result = qword_1000B5590;
  if (!qword_1000B5590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002CC7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002CC94()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10002CCCC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_10007C2F0();
    if (!v2)
    {
LABEL_10:

      return;
    }

    v3 = v2;
    v10[0] = 0x73736572676F7270;
    v10[1] = 0xE800000000000000;
    sub_10007DC80();
    if (*(v3 + 16) && (v4 = sub_10002CA38(v9), (v5 & 1) != 0))
    {
      sub_10000B618(*(v3 + 56) + 32 * v4, v10);
      sub_100032674(v9);
      if (swift_dynamicCast())
      {
        v6 = v8;
LABEL_9:
        isa = sub_10007D730().super.isa;

        [v1 _animatedStickerCreationProgressChanged:isa progress:v6];

        goto LABEL_10;
      }
    }

    else
    {
      sub_100032674(v9);
    }

    v6 = 0.0;
    goto LABEL_9;
  }
}

uint64_t sub_10002CE20()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002CE58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000B180;

  return sub_10001A2C4();
}

void sub_10002CEE4(void *a1)
{
  if (a1)
  {
    v1 = qword_1000B5360;
    v2 = a1;
    if (v1 != -1)
    {
      swift_once();
    }

    v3 = sub_10007C780();
    sub_10000AE78(v3, qword_1000B5368);
    v15 = v2;
    v4 = sub_10007C760();
    v5 = sub_10007DA00();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136315138;
      v8 = [v15 debugDescription];
      v9 = sub_10007D7D0();
      v11 = v10;

      v12 = sub_10000A660(v9, v11, &v16);

      *(v6 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v4, v5, "Removing old %s", v6, 0xCu);
      sub_10000B5CC(v7);
    }

    [v15 willMoveToParentViewController:0];
    v13 = [v15 view];
    if (v13)
    {
      v14 = v13;
      [v13 removeFromSuperview];

      [v15 removeFromParentViewController];
      [v15 didMoveToParentViewController:0];
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_10002D10C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006D40(&qword_1000B3D60);
    v3 = sub_10007DDE0();
    v4 = a1 + 32;

    while (1)
    {
      sub_10003260C(v4, &v13, &qword_1000B29C0);
      v5 = v13;
      v6 = v14;
      result = sub_100016368(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000FE98(&v15, (v3[7] + 32 * result));
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

uint64_t sub_10002D23C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10002D2A0()
{
  result = qword_1000B29E8;
  if (!qword_1000B29E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B29E8);
  }

  return result;
}

uint64_t sub_10002D304()
{

  return _swift_deallocObject(v0, 80, 7);
}

void sub_10002D34C()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v8 = *(v0 + 8);
  v7 = *(v0 + 9);
  v9 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerCollectionViewControllerPresentedViewController;
  v10 = *(v2 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerCollectionViewControllerPresentedViewController);
  if (v10)
  {
    [v10 dismissViewControllerAnimated:1 completion:0];
    v11 = *(v2 + v9);
    *(v2 + v9) = 0;
  }

  v12 = *((swift_isaMask & *v2) + 0x108);
  v13 = v12();
  if (!v13 || (v14 = v13, (*((swift_isaMask & *v13) + 0xA0))(), v14, sub_1000321A0(), (sub_10007D790() & 1) == 0))
  {
    if (qword_1000B5360 != -1)
    {
      swift_once();
    }

    v15 = sub_10007C780();
    sub_10000AE78(v15, qword_1000B5368);
    v16 = sub_10007C760();
    v17 = sub_10007D9F0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Don't have the right userGenerated VC; switching to it", v18, 2u);
    }

    v19 = sub_10007D7A0();
    [v2 requestPresentationWithStickerType:v19 identifier:0];

    sub_1000219E8();
  }

  v20 = v12();
  if (v20)
  {
    v21 = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = v8;
    *(v22 + 24) = v7;
    v23 = *((swift_isaMask & *v21) + 0x1D8);

    v23(v1, sub_1000321F4, v22, v3, v4, v5, v6);
  }
}

void sub_10002D638()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((swift_isaMask & *Strong) + 0x108))();
    if (!v2 || (v3 = v2, (*((swift_isaMask & *v2) + 0xA0))(), v3, sub_1000321A0(), (sub_10007D790() & 1) == 0))
    {
      if (qword_1000B5360 != -1)
      {
        swift_once();
      }

      v4 = sub_10007C780();
      sub_10000AE78(v4, qword_1000B5368);
      v5 = sub_10007C760();
      v6 = sub_10007D9F0();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Don't have the right userGenerated VC; switching to it", v7, 2u);
      }

      v8 = sub_10007D7A0();
      [v1 requestPresentationWithStickerType:v8 identifier:0];

      sub_1000219E8();
    }
  }
}

uint64_t sub_10002D830()
{

  return _swift_deallocObject(v0, 56, 7);
}

void sub_10002D878()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = (*((swift_isaMask & **(v0 + 16)) + 0x108))();
  if (v5)
  {
    v6 = v5;
    (*((swift_isaMask & *v5) + 0x1E0))(v1, v2, v3, v4);
  }
}

uint64_t sub_10002D978()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10002D9B8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  if (qword_1000B5360 != -1)
  {
    swift_once();
  }

  v4 = sub_10007C780();
  sub_10000AE78(v4, qword_1000B5368);
  v5 = sub_10007C760();
  v6 = sub_10007D9F0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "_addStickerAnimationDidFinish", v7, 2u);
  }

  v8 = (*((swift_isaMask & *v2) + 0x108))();
  if (v8)
  {
    v9 = v8;
    (*((swift_isaMask & *v8) + 0x1E8))(v1, v3);
  }
}

uint64_t sub_10002DB60()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10002DB98()
{
  v1 = *(v0 + 16);
  if (qword_1000B5360 != -1)
  {
    swift_once();
  }

  v2 = sub_10007C780();
  sub_10000AE78(v2, qword_1000B5368);
  v3 = sub_10007C760();
  v4 = sub_10007D9F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "_didRemoveStickerPreview", v5, 2u);
  }

  v6 = (*((swift_isaMask & *v1) + 0x108))();
  if (v6)
  {
    v7 = v6;
    (*((swift_isaMask & *v6) + 0x1F0))();
  }

  v8 = *(v1 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController__isAddingStickerMu);
  [v8 lock];
  *(v1 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController__isAddingSticker) = 0;
  [v8 unlock];
  swift_beginAccess();
  v9 = qword_1000B71F0;
  qword_1000B71F0 = 0;

  swift_beginAccess();
  v10 = qword_1000B71F8;
  qword_1000B71F8 = 0;
}

uint64_t sub_10002DD84()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10002DDBC(uint64_t a1)
{
  sub_100006D40(&unk_1000B29B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10008CD50;
  sub_100006D40(&qword_1000B3C30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008CBC0;
  *(inited + 32) = 0x746E65636572;
  v3 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 0x6B636F6C43;
  *(inited + 56) = 0xE500000000000000;
  v4 = sub_10002D10C(inited);
  swift_setDeallocating();
  sub_10000B348(v3, &qword_1000B29C0);
  *(v1 + 32) = v4;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_10008CBC0;
  *(v5 + 32) = 0x746E6F4372657375;
  v6 = v5 + 32;
  *(v5 + 72) = &type metadata for String;
  *(v5 + 40) = 0xEB00000000746E65;
  *(v5 + 48) = 0x72656B63697453;
  *(v5 + 56) = 0xE700000000000000;
  v7 = sub_10002D10C(v5);
  swift_setDeallocating();
  sub_10000B348(v6, &qword_1000B29C0);
  *(v1 + 40) = v7;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_10008CBC0;
  *(v8 + 32) = 0x696A6F6D656DLL;
  *(v8 + 40) = 0xE600000000000000;
  v9 = sub_100013AF8();
  swift_beginAccess();
  v10 = *(**v9 + 232);

  v12 = v10(v11);

  *(v8 + 72) = sub_100006D40(&qword_1000B29C8);
  *(v8 + 48) = v12;
  v13 = sub_10002D10C(v8);
  swift_setDeallocating();
  sub_10000B348(v8 + 32, &qword_1000B29C0);
  *(v1 + 48) = v13;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_10008CBC0;
  *(v14 + 32) = 0x696A6F6D65;
  v15 = v14 + 32;
  *(v14 + 72) = &type metadata for String;
  *(v14 + 40) = 0xE500000000000000;
  *(v14 + 48) = 0xD000000000000013;
  *(v14 + 56) = 0x80000001000882E0;
  v16 = sub_10002D10C(v14);
  swift_setDeallocating();
  sub_10000B348(v15, &qword_1000B29C0);
  *(v1 + 56) = v16;
  if (qword_1000B5360 != -1)
  {
    swift_once();
  }

  v17 = sub_10007C780();
  sub_10000AE78(v17, qword_1000B5368);

  v18 = sub_10007C760();
  v19 = sub_10007DA00();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27 = v21;
    *v20 = 136315138;
    sub_100006D40(&qword_1000B29D0);
    v22 = sub_10007D910();
    v24 = sub_10000A660(v22, v23, &v27);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "requestStickerExtensionMetadataDictionary will call completion with %s", v20, 0xCu);
    sub_10000B5CC(v21);
  }

  sub_100006D40(&qword_1000B29D0);
  isa = sub_10007D8C0().super.isa;
  (*(a1 + 16))(a1, isa);
}

void sub_10002E210(unint64_t a1, char *a2, void (**a3)(const void *, void, void *, CGFloat, double, double, double))
{
  v79 = a2;
  v5 = sub_100006D40(&qword_1000B29D8);
  __chkstk_darwin(v5 - 8);
  v86 = &v66 - v6;
  v87 = sub_10007C730();
  v7 = *(v87 - 8);
  v8 = __chkstk_darwin(v87);
  v89 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v88 = &v66 - v10;
  v11 = sub_10007D2F0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10007D320();
  v77 = *(v15 - 8);
  __chkstk_darwin(v15);
  v76 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_10007D540();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v75 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  v78 = a3;
  _Block_copy(a3);
  if (qword_1000B5360 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v19 = sub_10007C780();
    sub_10000AE78(v19, qword_1000B5368);
    v20 = sub_10007C760();
    v21 = sub_10007D9F0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "_addStickerToStoreWithStickerIDS", v22, 2u);
    }

    v23 = v79;
    v24 = *&v79[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController__isAddingStickerMu];
    [v24 lock];
    v25 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController__isAddingSticker;
    LODWORD(v23) = v23[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController__isAddingSticker];
    [v24 unlock];
    if (v23 == 1)
    {
      break;
    }

    v91 = &_swiftEmptyArrayStorage;
    v67 = v24;
    if (a1 >> 62)
    {
      v31 = sub_10007DDB0();
    }

    else
    {
      v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v66 = v25;
    v68 = v14;
    v69 = v15;
    v70 = v12;
    v71 = v11;
    v72 = v18;
    if (!v31)
    {
LABEL_25:
      (*(v73 + 104))(v75, enum case for Sticker.StickerType.userContent(_:), v74);
      v44 = objc_allocWithZone(sub_10007D720());
      v45 = sub_10007D690();
      v46 = v67;
      [v67 lock];
      v47 = v79;
      v79[v66] = 1;
      [v46 unlock];
      sub_10000B77C(0, &qword_1000B22E0);
      v48 = sub_10007DAC0();
      v49 = swift_allocObject();
      v49[2] = v47;
      v49[3] = v45;
      v50 = v72;
      v49[4] = sub_100031C20;
      v49[5] = v50;
      aBlock[4] = sub_1000328D0;
      aBlock[5] = v49;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100008F80;
      aBlock[3] = &unk_1000A40E0;
      v51 = _Block_copy(aBlock);
      v52 = v47;
      v53 = v45;

      v54 = v76;
      sub_10007D310();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_100031A88(&qword_1000B2970, &type metadata accessor for DispatchWorkItemFlags);
      sub_100006D40(&unk_1000B22F0);
      sub_10000B894();
      v55 = v68;
      v56 = v71;
      sub_10007DC50();
      sub_10007DAD0();
      _Block_release(v51);

      (*(v70 + 8))(v55, v56);
      (*(v77 + 8))(v54, v69);

      return;
    }

    v32 = 0;
    v84 = a1 & 0xFFFFFFFFFFFFFF8;
    v85 = a1 & 0xC000000000000001;
    v82 = (v7 + 32);
    v83 = (v7 + 48);
    v80 = (v7 + 8);
    v81 = (v7 + 16);
    v15 = v87;
    while (1)
    {
      if (v85)
      {
        v33 = sub_10007DCD0();
      }

      else
      {
        if (v32 >= *(v84 + 16))
        {
          goto LABEL_28;
        }

        v33 = *(a1 + 8 * v32 + 32);
      }

      v7 = v33;
      v18 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      v12 = v31;
      v14 = a1;
      v34 = [v33 type];
      sub_10007D7D0();

      v35 = v86;
      sub_10007C740();
      if ((*v83)(v35, 1, v15) == 1)
      {

        sub_10000B348(v35, &qword_1000B29D8);
        y = CGRectNull.origin.y;
        width = CGRectNull.size.width;
        height = CGRectNull.size.height;
        v60 = [v7 type];
        v61 = sub_10007D7D0();
        v63 = v62;

        sub_10002D2A0();
        swift_allocError();
        *v64 = v61;
        v64[1] = v63;
        v65 = sub_10007C350();
        v78[2](v78, 0, v65, CGRectNull.origin.x, y, width, height);

        return;
      }

      v36 = v88;
      (*v82)(v88, v35, v15);
      v37 = [v7 data];
      sub_10007C3D0();

      (*v81)(v89, v36, v15);
      [v7 size];
      v38 = [v7 role];
      if (v38)
      {
        v39 = v38;
        sub_10007D7D0();
        v11 = v40;
      }

      else
      {
        sub_10007D5D0();
        v11 = v41;
      }

      v42 = objc_allocWithZone(sub_10007D630());
      v43 = sub_10007D600();
      sub_10007D8B0();
      if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10007D900();
      }

      sub_10007D930();

      v15 = v87;
      (*v80)(v88, v87);
      ++v32;
      v31 = v12;
      a1 = v14;
      if (v18 == v12)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  v26 = CGRectNull.origin.y;
  v27 = CGRectNull.size.width;
  v28 = CGRectNull.size.height;
  sub_10002D2A0();
  swift_allocError();
  *v29 = 0;
  v29[1] = 0;
  v30 = sub_10007C350();
  v78[2](v78, 0, v30, CGRectNull.origin.x, v26, v27, v28);
}

void sub_10002ED44(void *a1, void *a2, unint64_t a3, double a4, double a5, double a6, double a7)
{
  v74 = a2;
  v13 = sub_100006D40(&qword_1000B29D8);
  __chkstk_darwin(v13 - 8);
  v15 = &v71 - v14;
  v87 = sub_10007C730();
  v16 = *(v87 - 1);
  v17 = __chkstk_darwin(v87);
  v86 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v85 = &v71 - v19;
  v73 = sub_10007D540();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v76 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = swift_allocObject();
  *(v75 + 16) = a3;
  _Block_copy(a3);
  if (qword_1000B5360 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v21 = sub_10007C780();
    sub_10000AE78(v21, qword_1000B5368);
    v22 = sub_10007C760();
    v23 = sub_10007D9F0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "_addStickerToStoreWithUISticker:sourceRect:completion", v24, 2u);
    }

    v89 = &_swiftEmptyArrayStorage;
    v25 = [a1 representations];
    sub_10000B77C(0, &unk_1000B22D0);
    v26 = sub_10007D8E0();

    if (v26 >> 62)
    {
      break;
    }

    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v77 = a1;
    if (!v27)
    {
      goto LABEL_25;
    }

LABEL_6:
    v71 = a3;
    v28 = 0;
    v83 = v26 & 0xFFFFFFFFFFFFFF8;
    v84 = v26 & 0xC000000000000001;
    v82 = (v16 + 48);
    v79 = (v16 + 16);
    v80 = (v16 + 32);
    v78 = (v16 + 8);
    v81 = v26;
    while (1)
    {
      if (v84)
      {
        v29 = sub_10007DCD0();
      }

      else
      {
        if (v28 >= *(v83 + 16))
        {
          goto LABEL_22;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      v16 = v29;
      a1 = (v28 + 1);
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v30 = [v29 type];
      sub_10007D7D0();

      v31 = v87;
      sub_10007C740();
      if ((*v82)(v15, 1, v31) == 1)
      {

        sub_10000B348(v15, &qword_1000B29D8);
        v38 = [v16 type];
        v39 = sub_10007D7D0();
        v41 = v40;

        sub_10002D2A0();
        swift_allocError();
        *v42 = v39;
        v42[1] = v41;
        v43 = sub_10007C350();
        (*(v71 + 16))(v71, 0, v43);

        goto LABEL_53;
      }

      v32 = v85;
      (*v80)(v85, v15, v31);
      v33 = [v16 data];
      sub_10007C3D0();

      (*v79)(v86, v32, v31);
      [v16 size];
      v34 = [v16 role];
      if (v34)
      {
        v35 = v34;
        sub_10007D7D0();
      }

      else
      {
        sub_10007D5D0();
      }

      a3 = v28 == 0;
      v36 = objc_allocWithZone(sub_10007D630());
      v37 = sub_10007D600();
      sub_10007D8B0();
      if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a3 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10007D900();
      }

      sub_10007D930();

      (*v78)(v85, v87);
      ++v28;
      v26 = v81;
      if (a1 == v27)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }

  v27 = sub_10007DDB0();
  v77 = a1;
  if (v27)
  {
    goto LABEL_6;
  }

LABEL_25:

  v44 = v77;
  v45 = [v77 attributionInfo];
  sub_100006D40(&qword_1000B2AB0);
  v46 = sub_10007D740();

  if (!*(v46 + 16))
  {
    v48 = 0;
    goto LABEL_39;
  }

  sub_100016368(0x64692D6D616461, 0xE700000000000000);
  if ((v47 & 1) == 0)
  {
    v48 = 0;
    if (*(v46 + 16))
    {
      goto LABEL_30;
    }

    goto LABEL_39;
  }

  objc_opt_self();
  v48 = swift_dynamicCastObjCClass();
  if (v48)
  {
    swift_unknownObjectRetain();
  }

  if (!*(v46 + 16))
  {
LABEL_39:

    goto LABEL_40;
  }

LABEL_30:
  v49 = sub_100016368(0x692D656C646E7562, 0xE900000000000064);
  if (v50)
  {
    v88 = *(*(v46 + 56) + 8 * v49);
    swift_unknownObjectRetain();
    swift_dynamicCast();
    if (!*(v46 + 16))
    {
      goto LABEL_39;
    }
  }

  else if (!*(v46 + 16))
  {
    goto LABEL_39;
  }

  v51 = sub_100016368(1701667182, 0xE400000000000000);
  if ((v52 & 1) == 0)
  {
    goto LABEL_39;
  }

  v53 = *(*(v46 + 56) + 8 * v51);
  swift_unknownObjectRetain();

  v88 = v53;
  swift_dynamicCast();
LABEL_40:
  v54 = objc_allocWithZone(sub_10007D650());
  v87 = v48;
  v55 = sub_10007D640();
  (*(v72 + 104))(v76, enum case for Sticker.StickerType.userContent(_:), v73);
  v56 = [v44 name];
  if (v56)
  {
    v57 = v56;
    v58 = sub_10007D7D0();
    v85 = v59;
    v86 = v58;
  }

  else
  {
    v85 = 0xE000000000000000;
    v86 = 0;
  }

  v60 = [v44 metadata];
  if (v60)
  {
    v61 = v60;
    v62 = sub_10007C3D0();
    v83 = v63;
    v84 = v62;
  }

  else
  {
    v83 = 0xF000000000000000;
    v84 = 0;
  }

  v64 = [v44 externalURI];
  sub_10007D7D0();

  v65 = [v44 accessibilityLabel];
  if (v65)
  {
    v66 = v65;
    sub_10007D7D0();
  }

  v67 = [v77 searchText];
  if (v67)
  {
    v68 = v67;
    sub_10007D7D0();
  }

  sub_10007D720();
  v69 = v55;
  v16 = sub_10007D680();
  [v77 effectType];
  sub_10007D6D0();
  if ((v70 & 1) == 0)
  {
    sub_10007D700();
  }

  (*((swift_isaMask & *v74) + 0x360))(v16, sub_100031C18, v75, a4, a5, a6, a7);

LABEL_53:
}

id sub_10002F840(uint64_t a1)
{
  v2 = sub_10007C3B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B77C(0, &qword_1000B2AE0);
  if ([swift_getObjCClassFromMetadata() instancesRespondToSelector:"initWithContentsOfURL:externalURI:localizedDescription:error:"])
  {
    v6 = objc_allocWithZone(MSSticker);
    sub_10007C380(v7);
    v9 = v8;
    v10 = sub_10007D7A0();
    v11 = sub_10007D7A0();
    v12 = [v6 initWithContentsOfURL:v9 externalURI:v10 localizedDescription:v11 error:0];

    return v12;
  }

  else
  {
    (*(v3 + 16))(v5, a1, v2);
    v14 = objc_allocWithZone(MSSticker);

    return sub_10002BE18(v5);
  }
}

id sub_10002FA00(void *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  result = swift_beginAccess();
  if (!qword_1000B7208)
  {
    result = swift_beginAccess();
    if ((byte_1000B28D0 & 1) == 0)
    {
      v15 = *&qword_1000B28C0;
      v14 = unk_1000B28C8;
      v16 = xmmword_1000B28B0;
      result = [v6 view];
      if (result)
      {
        v17 = result;
        type metadata accessor for StickerCreateTransitionAnimator();
        v18 = [v17 window];

        qword_1000B7208 = sub_10006B048(a1, v18, a2, 0, 0, 0, 1, 1, a3, a4, a5, a6, *&v16, *(&v16 + 1), v15, v14, v6, &off_1000A3B50);

        if (qword_1000B7208)
        {
          v19 = *(*qword_1000B7208 + 520);

          v19(v20);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_10002FBD4(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerCollectionViewControllerPresentedViewController];
  *&v1[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerCollectionViewControllerPresentedViewController] = a1;
  v3 = a1;

  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v8[4] = sub_100031E74;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100008F80;
  v8[3] = &unk_1000A42C0;
  v6 = _Block_copy(v8);
  v7 = v1;

  [v4 animateWithDuration:v6 animations:0.2];
  _Block_release(v6);
}

id sub_10002FCE0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  result = swift_beginAccess();
  if (!qword_1000B7208)
  {
    result = swift_beginAccess();
    if ((byte_1000B28D0 & 1) == 0)
    {
      v23 = *&qword_1000B28C0;
      v22 = unk_1000B28C8;
      v24 = xmmword_1000B28B0;
      result = [v10 view];
      if (result)
      {
        v25 = result;
        type metadata accessor for StickerCreateTransitionAnimator();
        v26 = [v25 window];

        qword_1000B7208 = sub_10006B048(a1, v26, a2, a3, a4, a5, a6 & 1, 0, a7, a8, a9, a10, *&v24, *(&v24 + 1), v23, v22, v10, &off_1000A3B50);

        if (qword_1000B7208)
        {
          v27 = *(*qword_1000B7208 + 528);

          v27(v28);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void (*sub_10002FEC8())(void *)
{
  v1 = *(v0 + 16);
  result = (*((swift_isaMask & *v1) + 0x120))();
  if (result)
  {
    v3 = result;
    result(v1);

    return sub_10002CC20(v3);
  }

  return result;
}

void sub_10002FF70()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong _didRemoveStickerPreview];
}

void sub_10002FFC4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_10007D7A0();
    v3 = sub_10007D7A0();
    [v1 requestPresentationWithStickerType:v2 identifier:v3];

    sub_1000218CC();
  }
}

id sub_10003006C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10007D2F0();
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007D320();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  v13 = [v12 pendingGlobalPresentation];
  v14 = [v13 modalMessagesController];

  [v14 dismiss];
  result = [v12 setPendingGlobalPresentation:0];
  if (a3)
  {

    v16 = sub_100013AF8();
    swift_beginAccess();
    v17 = *(**v16 + 376);

    v18 = v17(a2, a3, 1);

    if (v18)
    {
      swift_unknownObjectRelease();
      sub_10000B77C(0, &qword_1000B22E0);
      v19 = sub_10007DAC0();
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      v21[2] = v20;
      v21[3] = a2;
      v21[4] = a3;
      aBlock[4] = sub_100031E08;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100008F80;
      aBlock[3] = &unk_1000A4270;
      v22 = _Block_copy(aBlock);

      sub_10007D310();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_100031A88(&qword_1000B2970, &type metadata accessor for DispatchWorkItemFlags);
      sub_100006D40(&unk_1000B22F0);
      sub_10000B894();
      sub_10007DC50();
      sub_10007DAD0();
      _Block_release(v22);

      (*(v24 + 8))(v7, v5);
      return (*(v9 + 8))(v11, v8);
    }

    else
    {
    }
  }

  return result;
}

void sub_100030460(int a1, id a2)
{
  v3 = [a2 identifier];
  if (!v3)
  {
    sub_10007D7D0();
    goto LABEL_10;
  }

  v4 = v3;
  v5 = sub_10007D7D0();
  v7 = v6;

  v8 = sub_10007D7D0();
  if (!v7)
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v5 == v8 && v7 == v9)
  {

    goto LABEL_20;
  }

  v11 = sub_10007DE50();

  if (v11)
  {
LABEL_20:
    v22 = [objc_opt_self() sharedInstance];
    v23 = [a2 identifier];
    if (v23)
    {
      v24 = v23;
      aBlock[4] = sub_100029B58;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000136A4;
      aBlock[3] = &unk_1000A4220;
      v25 = _Block_copy(aBlock);
      [v22 showBrowserForPluginIdentifier:v24 style:2 completion:v25];
      _Block_release(v25);

      return;
    }

    goto LABEL_23;
  }

LABEL_11:
  if (qword_1000B5360 != -1)
  {
    swift_once();
  }

  v12 = sub_10007C780();
  sub_10000AE78(v12, qword_1000B5368);
  v13 = a2;
  oslog = sub_10007C760();
  v14 = sub_10007DA10();
  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    v17 = [v13 identifier];

    if (v17)
    {
      v18 = sub_10007D7D0();
      v20 = v19;

      v21 = sub_10000A660(v18, v20, aBlock);

      *(v15 + 4) = v21;
      _os_log_impl(&_mh_execute_header, oslog, v14, "Not requesting non-app store plugin: %s", v15, 0xCu);
      sub_10000B5CC(v16);

      return;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }
}

id sub_1000307A0(void *a1)
{
  v2 = sub_100006D40(&qword_1000B2130);
  __chkstk_darwin(v2 - 8);
  v4 = v21 - v3;
  v5 = sub_10007C3B0();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v12 = v21 - v11;
  if (a1)
  {
    result = [a1 fileURL];
    if (result)
    {
      v13 = result;
      sub_10007C390();

      (*(v6 + 32))(v12, v9, v5);
      v14 = [a1 pluginBundleID];
      if (v14)
      {
        v15 = v14;
        v16 = sub_10007D7D0();
        v18 = v17;

        (*(v6 + 16))(v4, v12, v5);
        (*(v6 + 56))(v4, 0, 1, v5);
        v19 = sub_10007C370();
        memset(v21, 0, sizeof(v21));
        v22 = 1;
        sub_100029EDC(v4, 0, 0xE000000000000000, v16, v18, v19, v20, v21);

        sub_10000B348(v4, &qword_1000B2130);
      }

      return (*(v6 + 8))(v12, v5);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100030A1C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100006D40(&qword_1000B2130);
  __chkstk_darwin(v6 - 8);
  v8 = v20 - v7;
  v9 = sub_10007C3B0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v16 = v20 - v15;
  if (a1)
  {
    result = [a1 fileURL];
    if (result)
    {
      v17 = result;
      sub_10007C390();

      (*(v10 + 32))(v16, v13, v9);
      if (a3)
      {
        if ([a1 isSticker])
        {
          (*(v10 + 16))(v8, v16, v9);
          (*(v10 + 56))(v8, 0, 1, v9);
          v18 = sub_10007C370();
          memset(v20, 0, sizeof(v20));
          v21 = 1;
          sub_100029EDC(v8, 0, 0xE000000000000000, a2, a3, v18, v19, v20);

          sub_10000B348(v8, &qword_1000B2130);
        }

        else
        {
          sub_10002A6C0();
        }
      }

      return (*(v10 + 8))(v16, v9);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100030C8C(void *a1)
{
  v2 = sub_100006D40(&qword_1000B2130);
  result = __chkstk_darwin(v2 - 8);
  v5 = v21 - v4;
  if (a1)
  {
    v6 = [a1 fileURL];
    sub_10007C390();

    v7 = sub_10007C3B0();
    (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
    v8 = [a1 accessibilityLabel];
    v9 = sub_10007D7D0();
    v11 = v10;

    v12 = [a1 stickerPackGUID];
    v13 = sub_10007D7D0();
    v15 = v14;

    v16 = [a1 externalURI];
    if (v16)
    {
      v17 = v16;
      v18 = sub_10007D7D0();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    memset(v21, 0, sizeof(v21));
    v22 = 1;
    sub_100029EDC(v5, v9, v11, v13, v15, v18, v20, v21);

    return sub_10000B348(v5, &qword_1000B2130);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100030E8C()
{
  result = qword_1000B2AF0;
  if (!qword_1000B2AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2AF0);
  }

  return result;
}

void sub_100030EE8()
{
  sub_100030FF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100030FF4()
{
  if (!qword_1000B2B20)
  {
    type metadata accessor for StickerPackStrip(255);
    v0 = sub_10007DBF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B2B20);
    }
  }
}

uint64_t getEnumTagSinglePayload for StickersParentViewController.StickerChildControllerType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StickersParentViewController.StickerChildControllerType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000311A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1000311F4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100031248(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100031260(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000312A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000B96C;

  return sub_10002B518(v2, v3, v4, v5);
}

uint64_t sub_10003139C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000B96C;

  return sub_10002BFBC(v2, v3, v4);
}

uint64_t sub_10003145C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000B96C;

  return sub_10002C0A4(a1, v4, v5, v6);
}

uint64_t sub_100031528(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000B96C;

  return sub_10002C488(a1, v4);
}

uint64_t sub_1000315E0()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100031638()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000B96C;

  return sub_10002AFBC(v2, v3, v4, v5);
}

uint64_t sub_100031700()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100031750()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000B96C;

  return sub_10002AB44(v2, v3, v4);
}

uint64_t sub_100031810()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031848()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031894()
{

  return _swift_deallocObject(v0, 57, 7);
}

unint64_t sub_1000318D4()
{
  result = qword_1000B2B98;
  if (!qword_1000B2B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2B98);
  }

  return result;
}

uint64_t sub_100031958()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000B96C;

  return sub_1000227BC(v4, v5, v6, v2, v3);
}

uint64_t sub_1000319F0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000B180;

  return sub_1000227BC(v4, v5, v6, v2, v3);
}

uint64_t sub_100031A88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100031AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StickerPackStrip(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006D40(&qword_1000B2958);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031BA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StickerPackStrip(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031C28()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100031C78()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100031CC0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000B96C;

  return sub_10001B918(v2, v3, v4);
}

uint64_t sub_100031DA4(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return _swift_deallocObject(v3, a3, 7);
}

void sub_100031E08()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100029734(v1, v2);
  }
}

void sub_100031E74()
{
  v1 = *(v0 + 16);
  v2 = sub_100018990();
  v3 = [v2 view];

  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  [v3 setAlpha:0.0];

  v4 = (*((swift_isaMask & *v1) + 0x108))();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [v4 view];

  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v6 setAlpha:0.0];
}

uint64_t sub_100031F94()
{

  return _swift_deallocObject(v0, 80, 7);
}

void sub_100031FDC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([v1 respondsToSelector:"insertSticker:withSourceFrame:completionHandler:"] && (*(v0 + 64) & 1) == 0)
    {
      v7 = *(v0 + 48);
      v6 = *(v0 + 56);
      v9 = *(v0 + 32);
      v8 = *(v0 + 40);
      v14 = sub_1000327F0;
      v15 = 0;
      aBlock = _NSConcreteStackBlock;
      v11 = 1107296256;
      v12 = sub_1000328C8;
      v13 = &unk_1000A4360;
      v5 = _Block_copy(&aBlock);
      [v1 insertSticker:v2 withSourceFrame:v5 completionHandler:{v9, v8, v7, v6}];
    }

    else
    {
      v14 = sub_1000327F0;
      v15 = 0;
      aBlock = _NSConcreteStackBlock;
      v11 = 1107296256;
      v12 = sub_1000328C8;
      v13 = &unk_1000A4338;
      v5 = _Block_copy(&aBlock);
      [v1 insertSticker:v2 completionHandler:v5];
    }

    _Block_release(v5);
    [v4 requestPresentationStyleExpanded:0];
  }
}

unint64_t sub_1000321A0()
{
  result = qword_1000B2BB8;
  if (!qword_1000B2BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2BB8);
  }

  return result;
}

uint64_t sub_100032220(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return swift_errorRetain();
}

uint64_t sub_100032270()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000322A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000322E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  swift_beginAccess();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  swift_beginAccess();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
}

uint64_t sub_1000323C8(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 40));

  return _swift_deallocObject(v2, 48, 7);
}

void sub_100032420()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_10007D7A0();

    if (v1)
    {
      v5 = sub_10007D7A0();
    }

    else
    {
      v5 = 0;
    }

    [v3 requestPresentationWithStickerType:v4 identifier:v5];

    sub_1000218CC();
    v6 = [objc_opt_self() defaultCenter];
    [v6 removeObserver:v3 name:CKBrowserSelectionControllerReloadedInstallationsNotification object:0];
  }
}

uint64_t sub_10003260C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100006D40(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000328D8()
{
  v0 = sub_10007C780();
  sub_10000B274(v0, qword_1000B56A8);
  sub_10000AE78(v0, qword_1000B56A8);
  return sub_10007C770();
}

void *sub_10003295C()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_keyline;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1000329A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_keyline;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100032AA8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

double sub_100032B60@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

BOOL sub_100032B74()
{
  v0 = [objc_allocWithZone(UIDevice) init];
  v1 = [v0 userInterfaceIdiom];

  return v1 != 1;
}

uint64_t sub_100032BC8()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_canSupportMagicPocket;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100032C0C(char a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_canSupportMagicPocket;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_100032CBC()
{
  result = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_keyboardViewController);
  if (result)
  {
    result = [result view];
    if (result)
    {
      v2 = result;
      v3 = sub_10007DB70();

      return v3;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100032D18()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_isPresentedWithNavigationTitleBar;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100032D5C(char a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_isPresentedWithNavigationTitleBar;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_100032E0C()
{
  v1 = [v0 view];
  if (!v1)
  {
    goto LABEL_51;
  }

  v2 = v1;
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor:v3];

  v4 = OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_textView;
  v5 = *&v0[OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_textView];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v0[v4];
    if (!v6)
    {
      goto LABEL_10;
    }

LABEL_9:
    [v6 setDelegate:v0];
    goto LABEL_10;
  }

  v7 = [objc_allocWithZone(UITextView) init];
  v8 = *&v0[v4];
  *&v0[v4] = v7;
  v9 = v7;

  if (v9)
  {
    [v9 setHidden:1];
  }

  v10 = *&v0[v4];
  if (v10)
  {
    [v10 setKeyboardType:124];
    v6 = *&v0[v4];
    if (v6)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v11 = [v0 view];
  if (!v11)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (!*&v0[v4])
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v12 = v11;
  [v11 addSubview:?];

  v13 = objc_opt_self();
  v14 = [v13 defaultCenter];
  v15 = UIKeyboardBeganTouchEmojiNotification;
  v16 = [objc_opt_self() mainQueue];
  v17 = swift_allocObject();
  *(v17 + 16) = v0;
  aBlock[4] = sub_1000350B4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015C30;
  aBlock[3] = &unk_1000A4568;
  v18 = _Block_copy(aBlock);
  v19 = v0;

  v20 = [v14 addObserverForName:v15 object:0 queue:v16 usingBlock:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();

  v21 = OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_keyboardViewController;
  v22 = *&v19[OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_keyboardViewController];
  v91 = v13;
  if (v22)
  {
    v23 = [v22 view];
    if (!v23)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v24 = v23;
    v25 = *&v19[v21];
    if (!v25)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v26 = [v25 view];
    if (!v26)
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v27 = v26;
    isa = [v26 constraints];

    if (!isa)
    {
      sub_10000B77C(0, &qword_1000B2210);
      sub_10007D8E0();
      isa = sub_10007D8C0().super.isa;
    }

    [v24 removeConstraints:isa];

    v29 = *&v19[v21];
    if (v29)
    {
      [v29 removeFromParentViewController];
      v30 = *&v19[v21];
      if (v30)
      {
        v31 = [v30 view];
        if (!v31)
        {
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        v32 = v31;
        [v31 removeFromSuperview];
LABEL_32:

        if (*&v19[v21])
        {
          [v19 addChildViewController:?];
          v44 = [v19 view];
          if (v44)
          {
            v45 = v44;
            v46 = *&v19[v21];
            if (v46)
            {
              v47 = [v46 view];
              if (v47)
              {
                v48 = v47;
                [v45 addSubview:v47];

                sub_100006D40(&qword_1000B2200);
                v49 = swift_allocObject();
                *(v49 + 16) = xmmword_10008C950;
                v50 = *&v19[v21];
                if (v50)
                {
                  v51 = [v50 view];
                  if (v51)
                  {
                    v52 = v51;
                    v53 = [v51 leftAnchor];

                    v54 = [v19 view];
                    if (v54)
                    {
                      v55 = v54;
                      v56 = [v54 safeAreaLayoutGuide];

                      v57 = [v56 leftAnchor];
                      v58 = [v53 constraintEqualToAnchor:v57];

                      *(v49 + 32) = v58;
                      v59 = *&v19[v21];
                      if (v59)
                      {
                        v60 = [v59 view];
                        if (v60)
                        {
                          v61 = v60;
                          v62 = [v60 rightAnchor];

                          v63 = [v19 view];
                          if (v63)
                          {
                            v64 = v63;
                            v65 = [v63 safeAreaLayoutGuide];

                            v66 = [v65 rightAnchor];
                            v67 = [v62 constraintEqualToAnchor:v66];

                            *(v49 + 40) = v67;
                            v68 = *&v19[v21];
                            if (v68)
                            {
                              v69 = [v68 view];
                              if (v69)
                              {
                                v70 = v69;
                                v71 = [v69 topAnchor];

                                v72 = [v19 view];
                                if (v72)
                                {
                                  v73 = v72;
                                  v74 = [v72 topAnchor];

                                  v75 = [v71 constraintEqualToAnchor:v74];
                                  *(v49 + 48) = v75;
                                  v76 = *&v19[v21];
                                  if (v76)
                                  {
                                    v77 = [v76 view];
                                    if (v77)
                                    {
                                      v78 = v77;
                                      v79 = [v77 bottomAnchor];

                                      v80 = [v19 view];
                                      if (v80)
                                      {
                                        v81 = v80;
                                        v82 = objc_opt_self();
                                        v83 = [v81 bottomAnchor];

                                        v84 = [v79 constraintEqualToAnchor:v83];
                                        *(v49 + 56) = v84;
                                        sub_10000B77C(0, &qword_1000B2210);
                                        v85 = sub_10007D8C0().super.isa;

                                        [v82 activateConstraints:v85];

                                        (*((swift_isaMask & *v19) + 0x148))();
                                        v86 = [v19 view];
                                        if (v86)
                                        {
                                          v87 = v86;
                                          type metadata accessor for KeylineView();
                                          v88 = sub_100053328(v87);
                                          (*((swift_isaMask & *v19) + 0x98))(v88);
                                          v89 = [v91 defaultCenter];
                                          v90 = sub_10007D7A0();
                                          [v89 addObserver:v19 selector:"keyboardScroll:" name:v90 object:0];

                                          return;
                                        }

                                        goto LABEL_69;
                                      }

LABEL_68:
                                      __break(1u);
LABEL_69:
                                      __break(1u);
                                      goto LABEL_70;
                                    }

LABEL_67:
                                    __break(1u);
                                    goto LABEL_68;
                                  }

LABEL_66:
                                  __break(1u);
                                  goto LABEL_67;
                                }

LABEL_65:
                                __break(1u);
                                goto LABEL_66;
                              }

LABEL_64:
                              __break(1u);
                              goto LABEL_65;
                            }

LABEL_63:
                            __break(1u);
                            goto LABEL_64;
                          }

LABEL_62:
                          __break(1u);
                          goto LABEL_63;
                        }

LABEL_61:
                        __break(1u);
                        goto LABEL_62;
                      }

LABEL_60:
                      __break(1u);
                      goto LABEL_61;
                    }

LABEL_59:
                    __break(1u);
                    goto LABEL_60;
                  }

LABEL_58:
                  __break(1u);
                  goto LABEL_59;
                }

LABEL_57:
                __break(1u);
                goto LABEL_58;
              }

LABEL_56:
              __break(1u);
              goto LABEL_57;
            }

LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

LABEL_54:
          __break(1u);
          goto LABEL_55;
        }
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v33 = [objc_allocWithZone(UIKeyboardViewController) initWithServiceRole:0];
  v34 = *&v19[v21];
  *&v19[v21] = v33;
  v35 = v33;

  if (!v35)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v36 = [v35 respondsToSelector:"setResizable:"];

  if (v36)
  {
    v37 = *&v19[v21];
    if (!v37)
    {
      goto LABEL_50;
    }

    [v37 setResizable:1];
  }

  v38 = *&v19[v21];
  if (!v38)
  {
    goto LABEL_50;
  }

  [v38 setTextInputView:*&v0[v4]];
  v39 = *&v19[v21];
  if (!v39)
  {
    goto LABEL_50;
  }

  v40 = [v39 view];
  if (!v40)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v41 = v40;
  [v40 setTranslatesAutoresizingMaskIntoConstraints:0];

  v42 = *&v19[v21];
  if (!v42)
  {
    goto LABEL_50;
  }

  v43 = [v42 view];
  if (v43)
  {
    v32 = v43;
    [v43 setHidden:(*((swift_isaMask & *v19) + 0x108))() & 1];
    goto LABEL_32;
  }

LABEL_76:
  __break(1u);
}

void sub_100033858()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmojiViewController();
  objc_msgSendSuper2(&v2, "viewWillLayoutSubviews");
  v1 = [objc_opt_self() activeInstance];
  [v1 clearAnimations];
}

void sub_10003394C()
{
  v1 = v0;
  v2 = sub_10007C2F0();
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  strcpy(v14, "contentOffsetY");
  v14[15] = -18;
  sub_10007DC80();
  if (!*(v3 + 16) || (v4 = sub_10002CA38(v13), (v5 & 1) == 0))
  {

    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  sub_10000B618(*(v3 + 56) + 32 * v4, v12);

  sub_100032674(v13);
  sub_10000FE98(v12, v14);
  sub_10000B77C(0, &unk_1000B2C80);
  swift_dynamicCast();
  v6 = [v11 floatValue];
  v8 = v7;
  v9 = (*((swift_isaMask & *v1) + 0x90))(v6);
  if (v9)
  {
    v10 = v9;
    (*((swift_isaMask & *v9) + 0x58))(v8);
  }
}

uint64_t sub_100033BD4()
{
  v1 = sub_100006D40(&unk_1000B2960);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  result = (*((swift_isaMask & *v0) + 0x108))(v2);
  if (result)
  {
    v6 = sub_10007D990();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10007D960();

    v8 = sub_10007D950();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v7;

    sub_10001A39C(0, 0, v4, &unk_10008D228, v9);

    return sub_10000B348(v4, &unk_1000B2960);
  }

  return result;
}

uint64_t sub_100033D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_100006D40(&unk_1000B2960);
  v4[6] = swift_task_alloc();
  v4[7] = sub_10007D960();
  v4[8] = sub_10007D950();
  v6 = sub_10007D940();

  return _swift_task_switch(sub_100033E5C, v6, v5);
}

uint64_t sub_100033E5C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_keyboardViewController);
    if (!v3)
    {
      goto LABEL_11;
    }

    v4 = [v3 view];
    if (!v4)
    {
      goto LABEL_11;
    }

    v5 = v4;
    v6 = (*((swift_isaMask & *v2) + 0x128))();
    v7 = sub_100054F68(v6 & 1);
    v8 = [objc_allocWithZone(UIDevice) init];
    v9 = [v8 userInterfaceIdiom];

    if (v9 == 1)
    {
      v10 = 14.0;
    }

    else
    {
      v10 = -6.0;
    }

    v11 = sub_10007DB70();
    if (!v11)
    {
LABEL_10:
      [v5 setHidden:0];

LABEL_11:
      goto LABEL_12;
    }

    v12 = v11;
    v13 = v7 + v10;
    [v11 contentInset];
    if (v14 == v13)
    {

      goto LABEL_10;
    }

    v17 = *(v0 + 48);
    [v12 setContentInset:{v13, 0.0, 0.0, 0.0}];
    [v12 layoutIfNeeded];
    v18 = sub_10007D990();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    v19 = v12;
    v20 = v5;
    v21 = sub_10007D950();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = &protocol witness table for MainActor;
    *(v22 + 32) = v19;
    *(v22 + 40) = v13;
    *(v22 + 48) = v20;
    sub_10001A39C(0, 0, v17, &unk_10008D310, v22);

    sub_10000B348(v17, &unk_1000B2960);
  }

LABEL_12:

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100034110(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a6;
  *(v6 + 24) = a1;
  *(v6 + 16) = a5;
  sub_10007D960();
  *(v6 + 40) = sub_10007D950();
  v8 = sub_10007D940();

  return _swift_task_switch(sub_1000341B0, v8, v7);
}

uint64_t sub_1000341B0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);

  [v3 setContentOffset:0 animated:{0.0, -v2}];
  [v1 setHidden:0];
  v4 = *(v0 + 8);

  return v4();
}

id sub_100034250(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_keyline] = 0;
  *&v3[OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_textView] = 0;
  *&v3[OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_keyboardViewController] = 0;
  *&v3[OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_delegate] = 0;
  v6 = &v3[OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_mostRecentlySelectedFrame];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  v7 = OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_canSupportMagicPocket;
  v8 = [objc_allocWithZone(UIDevice) init];
  v9 = [v8 userInterfaceIdiom];

  v3[v7] = v9 != 1;
  v3[OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_isPresentedWithNavigationTitleBar] = 0;
  if (a2)
  {
    v10 = sub_10007D7A0();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for EmojiViewController();
  v11 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", v10, a3);

  return v11;
}

id sub_1000343E8(void *a1)
{
  *&v1[OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_keyline] = 0;
  *&v1[OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_textView] = 0;
  *&v1[OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_keyboardViewController] = 0;
  *&v1[OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_delegate] = 0;
  v3 = &v1[OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_mostRecentlySelectedFrame];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  v4 = OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_canSupportMagicPocket;
  v5 = [objc_allocWithZone(UIDevice) init];
  v6 = [v5 userInterfaceIdiom];

  v1[v4] = v6 != 1;
  v1[OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_isPresentedWithNavigationTitleBar] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for EmojiViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_10003451C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmojiViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void (*sub_100034734(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((swift_isaMask & **v1) + 0x138))();
  return sub_1000347E0;
}

void sub_1000347E0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void sub_100034828(void *a1)
{
  v3 = [a1 text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_10007D7D0();
    v7 = v6;

    v8 = sub_100034A38(v5, v7);
    v10 = v9;

    if (v10)
    {
      v11 = [objc_opt_self() sharedInstance];
      sub_100006D40(&qword_1000B2C98);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_10008CBC0;
      *(v12 + 32) = v8;
      *(v12 + 40) = v10;

      sub_100006D40(&qword_1000B2CA0);
      sub_100035370();
      sub_10007D890();
      v13 = sub_10007D7A0();

      v14 = swift_allocObject();
      v14[2] = v1;
      v14[3] = v8;
      v14[4] = v10;
      v18[4] = sub_100035414;
      v18[5] = v14;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 1107296256;
      v18[2] = sub_100034F6C;
      v18[3] = &unk_1000A4608;
      v15 = _Block_copy(v18);
      v16 = v1;

      [v11 generateEmoji:v13 completion:v15];
      _Block_release(v15);

      v17 = sub_10007D7A0();
      [a1 setText:v17];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100034A38(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_10007D830();
  return sub_10007D880();
}

double sub_100034AB8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10007D540();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &qword_1000B4E98[45];
  if (a2)
  {
    v41[1] = a4;
    swift_errorRetain();
    if (qword_1000B56A0 != -1)
    {
      swift_once();
    }

    v15 = sub_10007C780();
    sub_10000AE78(v15, qword_1000B56A8);
    swift_errorRetain();
    v16 = sub_10007C760();
    v17 = sub_10007DA10();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v41[0] = a5;
      v20 = v19;
      *v18 = 138412290;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "Can not generate emoji %@", v18, 0xCu);
      sub_10000B348(v20, &unk_1000B2D40);

      v14 = qword_1000B4E98 + 360;
    }

    else
    {
    }
  }

  sub_10007C500();
  (*(v11 + 104))(v13, enum case for Sticker.StickerType.userContent(_:), v10);
  if (a1)
  {
    v22 = a1;
    v23 = sub_10007C4E0();
  }

  else
  {
    v23 = sub_10007C4F0();
  }

  (*(v11 + 8))(v13, v10);
  if (v14[212] != -1)
  {
    swift_once();
  }

  v24 = sub_10007C780();
  sub_10000AE78(v24, qword_1000B56A8);
  v25 = sub_10007C760();
  v26 = sub_10007DA00();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Made sticker for an emoji", v27, 2u);
  }

  v28 = *((swift_isaMask & *a3) + 0xD8);
  v29 = v28();
  if (v29)
  {
    v30 = [v29 respondsToSelector:"stickerCollectionViewController:didSelectSticker:withFrame:"];
    v31 = swift_unknownObjectRelease();
    if (v30)
    {
      v32 = (a3 + OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_mostRecentlySelectedFrame);
      if ((*(a3 + OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_mostRecentlySelectedFrame + 32) & 1) == 0)
      {
        v35 = v32[2];
        v34 = v32[3];
        v37 = *v32;
        v36 = v32[1];
        v38 = (v28)(v31);
        if (v38)
        {
          [v38 stickerCollectionViewController:a3 didSelectSticker:v23 withFrame:{v37, v36, v35, v34}];
          goto LABEL_19;
        }

LABEL_22:

        goto LABEL_23;
      }
    }
  }

  v33 = v28();
  if (!v33)
  {
    goto LABEL_22;
  }

  [v33 stickerCollectionViewController:a3 didSelectSticker:v23];
LABEL_19:

  swift_unknownObjectRelease();
LABEL_23:
  v39 = a3 + OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_mostRecentlySelectedFrame;
  result = 0.0;
  *v39 = 0u;
  *(v39 + 1) = 0u;
  v39[32] = 1;
  return result;
}

void sub_100034F6C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_10003507C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000350B4()
{
  v1 = *(v0 + 16);
  v2 = sub_10007C2F0();
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  sub_10007D7D0();
  sub_10007DC80();
  if (!*(v3 + 16) || (v4 = sub_10002CA38(v19), (v5 & 1) == 0))
  {

    sub_100032674(v19);
LABEL_8:
    v20 = 0u;
    v21 = 0u;
    goto LABEL_9;
  }

  sub_10000B618(*(v3 + 56) + 32 * v4, &v20);
  sub_100032674(v19);

  if (!*(&v21 + 1))
  {
LABEL_9:
    sub_10000B348(&v20, &qword_1000B2528);
    goto LABEL_10;
  }

  sub_10000B77C(0, &unk_1000B2D50);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v12 = 0uLL;
    v11 = 1;
    v13 = 0uLL;
    goto LABEL_11;
  }

  v6 = v19[0];
  [v19[0] CGRectValue];
  v16 = v7;
  v17 = v8;
  v15 = v9;
  v18 = v10;

  *&v13 = v15;
  *&v12 = v16;
  v11 = 0;
  *(&v12 + 1) = v17;
  *(&v13 + 1) = v18;
LABEL_11:
  v14 = v1 + OBJC_IVAR____TtC22StickersUltraExtension19EmojiViewController_mostRecentlySelectedFrame;
  *v14 = v12;
  *(v14 + 16) = v13;
  *(v14 + 32) = v11;
}

uint64_t sub_100035228(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100035264()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003529C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000352DC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000B180;

  return sub_100033D88(v3, v4, v5, v2);
}

unint64_t sub_100035370()
{
  result = qword_1000B2CA8;
  if (!qword_1000B2CA8)
  {
    sub_10000B8F8(&qword_1000B2CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2CA8);
  }

  return result;
}

uint64_t sub_1000353D4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003542C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100035464()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000354AC()
{
  v2 = *(v0 + 4);
  v3 = v0[5];
  v4 = *(v0 + 6);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000B96C;

  return sub_100034110(v3, v5, v6, v7, v2, v4);
}

uint64_t iMessageApp.extensionIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t iMessageApp.bundleIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t _s22StickersUltraExtension11iMessageAppC11displayNameSSvg_0()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1000355F4()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_100035654()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007C8D0();

  return v1;
}

uint64_t sub_1000356C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_100035714(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 128);

  return v2(v3);
}

uint64_t sub_100035768()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10007C8E0();
}

void (*sub_1000357D8(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_10007C8C0();
  return sub_10003587C;
}

void sub_10003587C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1000358E4()
{
  swift_beginAccess();
  sub_100006D40(&qword_1000B2DD0);
  sub_10007C8A0();
  return swift_endAccess();
}

uint64_t sub_100035958(uint64_t a1)
{
  v2 = sub_100006D40(&qword_1000B2DD8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100006D40(&qword_1000B2DD0);
  sub_10007C8B0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_100035A90(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100006D40(&qword_1000B2DD8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC22StickersUltraExtension20StickerPackStripItem__icon;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100006D40(&qword_1000B2DD0);
  sub_10007C8A0();
  swift_endAccess();
  return sub_100035C00;
}

void sub_100035C00(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_10007C8B0();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_10007C8B0();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

void *sub_100035D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  swift_beginAccess();

  sub_10007C890();
  swift_endAccess();

  v8[6] = 0;
  v8[7] = 0xE000000000000000;
  v8[8] = 0;
  v8[9] = 0xE000000000000000;
  return v8;
}

void *sub_100035E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  swift_beginAccess();

  sub_10007C890();
  swift_endAccess();
  v4[6] = 0;
  v4[7] = 0xE000000000000000;

  v4[8] = 0;
  v4[9] = 0xE000000000000000;
  return v4;
}

void *sub_100035EBC(void *a1)
{
  swift_allocObject();
  v2 = sub_1000361FC(a1);

  return v2;
}

void *sub_100035F08(void *a1)
{
  v1 = sub_1000361FC(a1);

  return v1;
}

uint64_t sub_100035F3C()
{

  v1 = OBJC_IVAR____TtC22StickersUltraExtension20StickerPackStripItem__icon;
  v2 = sub_100006D40(&qword_1000B2DD0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_100035FC8()
{

  v1 = OBJC_IVAR____TtC22StickersUltraExtension20StickerPackStripItem__icon;
  v2 = sub_100006D40(&qword_1000B2DD0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100036090@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StickerPackStripItem();
  result = sub_10007C880();
  *a1 = result;
  return result;
}

uint64_t sub_1000360D0@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t static iMessageApp.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_10007DE50();
  }
}

uint64_t sub_100036110(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_10007DE50();
  }
}

unint64_t sub_10003613C()
{
  sub_10007DCB0(29);

  sub_10007D840(v0[2]);
  v2._countAndFlagsBits = 10272;
  v2._object = 0xE200000000000000;
  sub_10007D840(v2);
  sub_10007D840(v0[1]);
  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  sub_10007D840(v3);
  return 0xD000000000000016;
}

void *sub_1000361FC(void *a1)
{
  v2 = a1[7];
  v1[4] = a1[6];
  v1[5] = v2;
  v3 = a1[2];
  v4 = a1[3];
  v1[6] = v3;
  v1[7] = v4;
  v5 = a1[5];
  v1[8] = a1[4];
  v1[9] = v5;
  v1[2] = v3;
  v1[3] = v4;
  type metadata accessor for iMessageAppBalloonPlugin();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = *(*v6 + 184);
    swift_bridgeObjectRetain_n();

    v7(v8);
  }

  else
  {
    swift_bridgeObjectRetain_n();

    sub_10007D130();
  }

  swift_beginAccess();
  sub_10007C890();
  swift_endAccess();
  return v1;
}

uint64_t type metadata accessor for StickerPackStripItem()
{
  result = qword_1000B5960;
  if (!qword_1000B5960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000363A4()
{
  sub_100036444();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100036444()
{
  if (!qword_1000B2E08)
  {
    v0 = sub_10007C8F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B2E08);
    }
  }
}

uint64_t sub_100036494()
{
  v0 = sub_10007C780();
  sub_10000B274(v0, qword_1000B5978);
  sub_10000AE78(v0, qword_1000B5978);
  return sub_10007C770();
}

uint64_t sub_100036514(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0x736567617373654DLL;
  }

  else
  {
    return 21327;
  }
}

void _s22StickersUltraExtension20iMessageAppsRegistryC08registerE0yyF_0()
{
  sub_100036670();
  v0 = [objc_opt_self() defaultCenter];
  v1 = CKCombinedStickerAppsOrderChangedNotification;
  v2 = swift_allocObject();
  swift_weakInit();
  v5[4] = sub_100037104;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100015C30;
  v5[3] = &unk_1000A46F8;
  v3 = _Block_copy(v5);

  v4 = [v0 addObserverForName:v1 object:0 queue:0 usingBlock:v3];
  _Block_release(v3);
  swift_unknownObjectRelease();
}

void *sub_100036670()
{
  v0 = sub_10007D2F0();
  v68 = *(v0 - 8);
  v69 = v0;
  __chkstk_darwin(v0);
  v66 = &v57 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_10007D320();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 orderedCombinedStickerApps];

  sub_10000B77C(0, &qword_1000B2AB8);
  v5 = sub_10007D8E0();

  aBlock[0] = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    goto LABEL_84;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10007DDB0())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_10007DCD0();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_81;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      type metadata accessor for iMessageAppBalloonPlugin();
      swift_allocObject();
      sub_1000389C4(v9);

      sub_10007D8B0();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10007D900();
      }

      sub_10007D930();
      ++v7;
      if (v10 == i)
      {
        v11 = aBlock[0];
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    ;
  }

  v11 = _swiftEmptyArrayStorage;
LABEL_15:

  aBlock[0] = _swiftEmptyArrayStorage;
  if (v11 >> 62)
  {
    v5 = sub_10007DDB0();
  }

  else
  {
    v5 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
    v16 = _swiftEmptyArrayStorage;
    goto LABEL_35;
  }

  v12 = 0;
  while ((v11 & 0xC000000000000001) != 0)
  {
    v13 = sub_10007DCD0();
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_32;
    }

LABEL_24:
    v15 = *(v13 + 32) == 0xD000000000000025 && 0x8000000100088F30 == *(v13 + 40);
    if (v15 || (sub_10007DE50() & 1) != 0)
    {
    }

    else
    {
      sub_10007DD00();
      sub_10007DD30();
      sub_10007DD40();
      sub_10007DD10();
    }

    ++v12;
    if (v14 == v5)
    {
      goto LABEL_33;
    }
  }

  if (v12 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_82;
  }

  v13 = *(v11 + 8 * v12 + 32);

  v14 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    goto LABEL_24;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  v16 = aBlock[0];
LABEL_35:

  v17 = [objc_opt_self() balloonHostAppIsMessages];
  if (qword_1000B5970 != -1)
  {
    swift_once();
  }

  v18 = sub_10007C780();
  sub_10000AE78(v18, qword_1000B5978);
  v19 = sub_10007C760();
  v20 = sub_10007D9F0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67109120;
    *(v21 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v19, v20, "StickersUltra host is MobileSMS: %{BOOL}d", v21, 8u);
  }

  v72 = sub_10007C470();

  v22 = sub_10007C760();
  v23 = sub_10007D9F0();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    v59 = v24;
    *v24 = 136315138;
    v60 = v23;
    if (v16 < 0 || (v16 & 0x4000000000000000) != 0)
    {
      v25 = sub_10007DDB0();
    }

    else
    {
      v25 = *(v16 + 16);
    }

    v61 = v16 & 0x4000000000000000;
    v62 = v22;
    if (v25)
    {
      v73 = _swiftEmptyArrayStorage;
      result = sub_100037DE0(0, v25 & ~(v25 >> 63), 0);
      if (v25 < 0)
      {
        __break(1u);
        return result;
      }

      v27 = 0;
      v28 = v73;
      v70 = v16 & 0xC000000000000001;
      v71 = v25;
      do
      {
        if (v70)
        {
          v29 = sub_10007DCD0();
        }

        else
        {
          v29 = *(v16 + 8 * v27 + 32);
        }

        v30 = v17;
        v32 = *(v29 + 48);
        v31 = *(v29 + 56);
        v33 = *(v29 + 80);

        if ([v33 respondsToSelector:v72])
        {
          v34 = [*(v29 + 80) stickerSharingLevel];

          if (v34 == 1)
          {
            v35 = 0x736567617373654DLL;
          }

          else
          {
            v35 = 21327;
          }

          if (v34 == 1)
          {
            v36 = 0xE800000000000000;
          }

          else
          {
            v36 = 0xE200000000000000;
          }
        }

        else
        {

          v36 = 0xE200000000000000;
          v35 = 21327;
        }

        v73 = v28;
        v38 = v28[2];
        v37 = v28[3];
        if (v38 >= v37 >> 1)
        {
          sub_100037DE0((v37 > 1), v38 + 1, 1);
          v28 = v73;
        }

        ++v27;
        v28[2] = v38 + 1;
        v39 = &v28[4 * v38];
        v39[4] = v32;
        v39[5] = v31;
        v39[6] = v35;
        v39[7] = v36;
        v17 = v30;
      }

      while (v71 != v27);
    }

    sub_100006D40(&qword_1000B2EE0);
    v41 = sub_10007D8F0();
    v43 = v42;

    v44 = sub_10000A660(v41, v43, aBlock);

    v45 = v59;
    *(v59 + 1) = v44;
    v46 = v62;
    _os_log_impl(&_mh_execute_header, v62, v60, "Got apps: %s", v45, 0xCu);
    sub_10000B5CC(v58);

    v40 = v61;
  }

  else
  {

    v40 = v16 & 0x4000000000000000;
  }

  aBlock[0] = _swiftEmptyArrayStorage;
  if ((v16 & 0x8000000000000000) == 0 && !v40)
  {
    v47 = *(v16 + 16);
    if (v47)
    {
      goto LABEL_66;
    }

LABEL_87:
    v50 = _swiftEmptyArrayStorage;
    goto LABEL_88;
  }

  v47 = sub_10007DDB0();
  if (!v47)
  {
    goto LABEL_87;
  }

LABEL_66:
  v5 = 0;
  while (2)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v48 = sub_10007DCD0();
      v49 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      goto LABEL_72;
    }

    if (v5 >= *(v16 + 16))
    {
      goto LABEL_83;
    }

    v48 = *(v16 + 8 * v5 + 32);

    v49 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
LABEL_72:
      if ((v17 & 1) == 0 && [*(v48 + 80) respondsToSelector:v72] && objc_msgSend(*(v48 + 80), "stickerSharingLevel"))
      {
      }

      else
      {
        sub_10007DD00();
        sub_10007DD30();
        sub_10007DD40();
        sub_10007DD10();
      }

      ++v5;
      if (v49 == v47)
      {
        goto LABEL_79;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_79:
  v50 = aBlock[0];
LABEL_88:

  sub_10000B77C(0, &qword_1000B22E0);
  v51 = sub_10007DAC0();
  v52 = swift_allocObject();
  *(v52 + 16) = v63;
  *(v52 + 24) = v50;
  aBlock[4] = sub_100039140;
  aBlock[5] = v52;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008F80;
  aBlock[3] = &unk_1000A4748;
  v53 = _Block_copy(aBlock);

  v54 = v64;
  sub_10007D310();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100039794(&qword_1000B2970, &type metadata accessor for DispatchWorkItemFlags);
  sub_100006D40(&unk_1000B22F0);
  sub_100039830(&qword_1000B2980, &unk_1000B22F0);
  v55 = v66;
  v56 = v69;
  sub_10007DC50();
  sub_10007DAD0();
  _Block_release(v53);

  (*(v68 + 8))(v55, v56);
  return (*(v65 + 8))(v54, v67);
}

uint64_t sub_1000370CC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037104()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100036670();
  }

  return result;
}

uint64_t sub_100037158(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100037170(void *a1)
{
  swift_allocObject();
  v2 = sub_1000389C4(a1);

  return v2;
}

uint64_t sub_1000371C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007C8D0();

  return v1;
}

uint64_t sub_100037234@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

uint64_t sub_100037280(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 192);

  return v2(v3);
}

uint64_t sub_1000372D4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10007C8E0();
}

void (*sub_100037344(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_10007C8C0();
  return sub_10003587C;
}

uint64_t sub_1000373E8()
{
  swift_beginAccess();
  sub_100006D40(&qword_1000B2DD0);
  sub_10007C8A0();
  return swift_endAccess();
}

uint64_t sub_10003745C(uint64_t a1)
{
  v2 = sub_100006D40(&qword_1000B2DD8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100006D40(&qword_1000B2DD0);
  sub_10007C8B0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_100037594(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100006D40(&qword_1000B2DD8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC22StickersUltraExtension24iMessageAppBalloonPlugin__iconImage;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100006D40(&qword_1000B2DD0);
  sub_10007C8A0();
  swift_endAccess();
  return sub_100035C00;
}

id sub_100037704()
{
  v0 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorMessagesExtensionBadge];
  result = [v0 setDrawBorder:1];
  qword_1000B5998 = v0;
  return result;
}

id sub_10003776C()
{
  result = [objc_allocWithZone(NSCache) init];
  qword_1000B59A8 = result;
  return result;
}

void sub_1000377A0()
{
  v1 = *v0;
  if (qword_1000B5990 != -1)
  {
    swift_once();
  }

  v2 = qword_1000B5998;
  v3 = objc_allocWithZone(ISIcon);
  v4 = v2;
  v5 = sub_10007D7A0();
  v6 = [v3 initWithBundleIdentifier:v5];

  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  *(v7 + 24) = v1;
  v9[4] = sub_1000395F8;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10000E114;
  v9[3] = &unk_1000A4798;
  v8 = _Block_copy(v9);

  [v6 getImageForImageDescriptor:v4 completion:v8];
  _Block_release(v8);
}

id sub_100037934(void *a1)
{
  v2 = sub_1000389C4(a1);

  return v2;
}

uint64_t sub_1000379C4()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension24iMessageAppBalloonPlugin__iconImage;
  v2 = sub_100006D40(&qword_1000B2DD0);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_100037A40()
{
  v0 = iMessageApp.deinit();

  v1 = OBJC_IVAR____TtC22StickersUltraExtension24iMessageAppBalloonPlugin__iconImage;
  v2 = sub_100006D40(&qword_1000B2DD0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_100037ABC()
{
  v0 = iMessageApp.deinit();
  v1 = *(v0 + 80);

  v2 = OBJC_IVAR____TtC22StickersUltraExtension24iMessageAppBalloonPlugin__iconImage;
  v3 = sub_100006D40(&qword_1000B2DD0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t sub_100037B80(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_10007DDB0();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v15 = 0;
    return v15 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v15 = 1;
    return v15 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = type metadata accessor for iMessageApp();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = sub_10007DDB0();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_10007DCD0();
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        if (v11)
        {
LABEL_20:
          sub_10007DCD0();
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

LABEL_25:
      sub_100039794(&qword_1000B3048, type metadata accessor for iMessageApp);
      v15 = sub_10007D790();

      if (v15)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v15 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for iMessageAppBalloonPlugin()
{
  result = qword_1000B59C8;
  if (!qword_1000B59C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_100037DE0(void *a1, int64_t a2, char a3)
{
  result = sub_100037E20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100037E00(void *a1, int64_t a2, char a3)
{
  result = sub_100037F54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100037E20(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100006D40(&qword_1000B3020);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100006D40(&qword_1000B2EE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100037F54(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100006D40(&qword_1000B3038);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100006D40(&qword_1000B3040);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10003809C(void *a1, char a2, void *a3)
{
  v36 = a1[2];
  if (!v36)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_100016368(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1000385A0(v15, v5 & 1);
    v10 = sub_100016368(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_10007DE70();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v10;
  sub_100038430();
  v10 = v19;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_100006D40(&qword_1000B3030);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v21 = (v20[6] + 16 * v10);
  *v21 = v7;
  v21[1] = v6;
  *(v20[7] + 8 * v10) = v8;
  v22 = v20[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_10007DCB0(30);
    v37._object = 0x8000000100089160;
    v37._countAndFlagsBits = 0xD00000000000001BLL;
    sub_10007D840(v37);
    sub_10007DD80();
    v38._countAndFlagsBits = 39;
    v38._object = 0xE100000000000000;
    sub_10007D840(v38);
    result = sub_10007DD90();
    __break(1u);
    return result;
  }

  v20[2] = v23;
  if (v36 != 1)
  {
    v5 = a1 + 9;
    v24 = 1;
    while (v24 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v25 = *a3;

      v26 = sub_100016368(v7, v6);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        sub_1000385A0(v30, 1);
        v26 = sub_100016368(v7, v6);
        if ((v16 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v33 = (v32[6] + 16 * v26);
      *v33 = v7;
      v33[1] = v6;
      *(v32[7] + 8 * v26) = v8;
      v34 = v32[2];
      v14 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v24;
      v32[2] = v35;
      v5 += 3;
      if (v36 == v24)
      {
      }
    }

    goto LABEL_25;
  }
}