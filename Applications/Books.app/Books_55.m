void sub_1006C29EC(uint64_t a1, unint64_t a2)
{
  v2 = sub_100696E20(a1, a2);
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v2];
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1005672BC(v4, 1, 0, 0);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1006C2AD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1006B9314(a1, v4, v5, v6);
}

uint64_t sub_1006C2B84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1006B90B0(a1, v4, v5, v6);
}

uint64_t sub_1006C2C38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1006B8E80(a1, v4, v5, v6);
}

uint64_t sub_1006C2CEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1006B8B38(a1, v4, v5, v6);
}

uint64_t sub_1006C2DA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1006B8984(a1, v4, v5, v6);
}

void sub_1006C2E54(void (*a1)(char *, uint64_t), uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, _OWORD *a4)
{
  v76 = a4;
  v77 = a1;
  v78 = a2;
  v6 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v6 - 8);
  v75 = &v69 - v7;
  v8 = sub_1001F1160(&unk_100AD5AC0);
  __chkstk_darwin(v8 - 8);
  v72 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v70 = &v69 - v11;
  __chkstk_darwin(v12);
  v73 = &v69 - v13;
  __chkstk_darwin(v14);
  v16 = &v69 - v15;
  __chkstk_darwin(v17);
  v19 = &v69 - v18;
  __chkstk_darwin(v20);
  v22 = &v69 - v21;
  v23 = sub_1007969B4();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v69 - v28;
  __chkstk_darwin(v30);
  v80 = &v69 - v31;
  v32 = sub_10079F7E4();
  v81 = *(v32 - 8);
  v82 = v32;
  __chkstk_darwin(v32);
  v71 = &v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v79 = &v69 - v35;
  v74 = v4;
  sub_1006B6B38(&v69 - v35);
  sub_1000077D8(a3, v16, &unk_100AD5AC0);
  v36 = *(v24 + 48);
  if (v36(v16, 1, v23) == 1)
  {
    sub_100007840(v16, &unk_100AD5AC0);
    v37 = 1;
  }

  else
  {
    sub_1007968E4();
    (*(v24 + 8))(v16, v23);
    v37 = 0;
  }

  v38 = *(v24 + 56);
  v38(v19, v37, 1, v23);
  sub_100796994();
  sub_100007840(v19, &unk_100AD5AC0);
  if (v36(v22, 1, v23) == 1)
  {
    (*(v81 + 8))(v79, v82);
    sub_100007840(v22, &unk_100AD5AC0);
  }

  else
  {
    v78 = v36;
    (*(v24 + 32))(v80, v22, v23);
    sub_1007968E4();
    sub_100796904();
    v39 = *(v24 + 8);
    v39(v29, v23);
    sub_100796944(v40);
    v42 = v41;
    v39(v26, v23);
    v43 = BEURLHandlerAssetInfoPathForBookURL();

    if (v43)
    {
      v44 = v70;
      sub_100796974();

      v45 = 0;
      v46 = v72;
    }

    else
    {
      v45 = 1;
      v46 = v72;
      v44 = v70;
    }

    v38(v44, v45, 1, v23);
    v47 = v73;
    sub_10020B3C8(v44, v73, &unk_100AD5AC0);
    v48 = [objc_allocWithZone(BKARQuicklookViewController) init];
    sub_1000077D8(v47, v46, &unk_100AD5AC0);
    v49 = v78(v46, 1, v23);
    v77 = v39;
    if (v49 == 1)
    {
      v51 = 0;
    }

    else
    {
      sub_100796944(v50);
      v51 = v52;
      v39(v46, v23);
    }

    [v48 setARModelDataURL:v51];

    [v48 setDataSource:v48];
    v54 = v81;
    v53 = v82;
    v55 = v71;
    (*(v81 + 104))(v71, enum case for BookContentUserInterfaceStyle.dark(_:), v82);
    v56 = v48;
    v57 = v79;
    v58 = sub_10079F7D4();
    v59 = *(v54 + 8);
    v59(v55, v53);
    if (v58)
    {
      v60 = 2;
    }

    else
    {
      v60 = 1;
    }

    [v56 setOverrideUserInterfaceStyle:v60];

    sub_100007840(v47, &unk_100AD5AC0);
    v77(v80, v23);
    v59(v57, v53);
    v61 = sub_1007A2744();
    v62 = v75;
    (*(*(v61 - 8) + 56))(v75, 1, 1, v61);
    v63 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1007A26F4();
    v64 = v56;

    v65 = sub_1007A26E4();
    v66 = swift_allocObject();
    *(v66 + 16) = v65;
    *(v66 + 24) = &protocol witness table for MainActor;
    *(v66 + 32) = v63;
    *(v66 + 40) = v64;
    v67 = v76;
    v68 = v76[1];
    *(v66 + 48) = *v76;
    *(v66 + 64) = v68;
    *(v66 + 80) = *(v67 + 32);

    sub_1003457A0(0, 0, v62, &unk_10083DED0, v66);
  }
}

id sub_1006C35F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v61 = a6;
  v59 = a5;
  v63 = a4;
  v9 = sub_10079F7E4();
  v62 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F1160(&unk_100AD5AC0);
  __chkstk_darwin(v12 - 8);
  v14 = &v53 - v13;
  v15 = sub_1007969B4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1006C10D4(&qword_100AF2680, type metadata accessor for BookReaderPresenter);
  sub_1007969A4();
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    v58 = a1;
    (*(v16 + 32))(v18, v14, v15);
    sub_100796944(v19);
    v21 = v20;
    sub_10000E3E8(a7, a7[3]);
    v22 = sub_10079EC14();
    v23 = BEURLHandlerImageDataForiBooksURLUsingCacheItem();

    if (v23)
    {
      v24 = sub_1007969D4();
      v26 = v25;

      v27 = objc_allocWithZone(UIImage);
      sub_1003B1DE4(v24, v26);
      isa = sub_1007969C4().super.isa;
      v29 = [v27 initWithData:isa];

      sub_10000ADCC(v24, v26);
      if (!v29)
      {
        (*(v16 + 8))(v18, v15);
        sub_10000ADCC(v24, v26);
        return 0;
      }

      v57 = [objc_allocWithZone(BKExpandedContentResource) init];
      v54 = v29;
      [v57 setResource:v29];
      v55 = v24;
      v56 = v26;
      if (v61)
      {
        v30 = sub_1007A2214();
      }

      else
      {
        v30 = 0;
      }

      v31 = v57;
      [v57 setTitle:v30];

      v32 = v62;
      (*(v62 + 104))(v11, enum case for BookContentUserInterfaceStyle.dark(_:), v9);
      LODWORD(v63) = sub_10079F7D4();
      (*(v32 + 8))(v11, v9);
      v33 = sub_1007A0CA4();
      v34 = objc_allocWithZone(v33);
      v35 = v58;
      v36 = sub_1007A0C94();
      sub_100009864(a7, v67);
      v65 = v33;
      v66 = &protocol witness table for ExpandedContentRouter;
      v64 = v36;
      v37 = objc_allocWithZone(sub_1007A1334());
      v38 = v36;
      v39 = sub_1007A1324();
      v40 = [objc_allocWithZone(BKExpandedImageContentViewController) initWithResource:v31];
      if (v40)
      {
        if (v63)
        {
          v41 = 5;
        }

        else
        {
          v41 = 2;
        }

        v42 = objc_opt_self();
        v43 = v40;
        v44 = [v42 themeForEPUBTheme:v41];
        [v43 setTheme:v44];

        [v43 setPresenter:v39];
        v45 = v43;
        v46 = v39;
        [v45 setDelegate:v46];
      }

      sub_100796944(v47);
      v49 = v48;
      v50 = BEShouldInvertImageURL();

      if (!v50)
      {
        (*(v16 + 8))(v18, v15);
        sub_10000ADCC(v55, v56);

        return v40;
      }

      v51 = v55;
      if (v40)
      {
        [v40 showInvertedImage];

        sub_10000ADCC(v51, v56);
        (*(v16 + 8))(v18, v15);
        return v40;
      }

      sub_10000ADCC(v55, v56);
    }

    (*(v16 + 8))(v18, v15);
    return 0;
  }

  sub_100007840(v14, &unk_100AD5AC0);
  return 0;
}

void sub_1006C3C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8, double a9)
{
  v61 = a5;
  v62 = a4;
  v57[0] = a3;
  v60 = a2;
  v59 = a1;
  v14 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v14 - 8);
  v58 = v57 - v15;
  v16 = sub_1001F1160(&unk_100AD5AC0);
  __chkstk_darwin(v16 - 8);
  v18 = v57 - v17;
  v65 = sub_10079F7E4();
  v19 = *(v65 - 8);
  __chkstk_darwin(v65);
  v21 = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v57 - v23;
  sub_1006B6B38(v57 - v23);
  v70 = 1;
  sub_1006C10D4(&qword_100AF2680, type metadata accessor for BookReaderPresenter);
  v25 = sub_1007A0CA4();
  v26 = objc_allocWithZone(v25);
  v57[1] = v9;
  v27 = sub_1007A0C94();
  sub_100009864(a6, v69);
  v67 = v25;
  v68 = &protocol witness table for ExpandedContentRouter;
  v66 = v27;
  v28 = objc_allocWithZone(sub_1007A1334());
  v64 = v27;
  v63 = sub_1007A1324();
  v29 = objc_allocWithZone(BKExpandedContentResource);
  v30 = [v29 init];
  sub_10000E3E8(a6, a6[3]);
  v31 = sub_10079EC14();
  [v30 setCacheItem:v31];

  v32 = sub_1007A2214();
  [v30 setResource:v32];

  sub_1000077D8(v61, v18, &unk_100AD5AC0);
  v33 = sub_1007969B4();
  v34 = *(v33 - 8);
  v36 = 0;
  if ((*(v34 + 48))(v18, 1, v33) != 1)
  {
    sub_100796944(v35);
    v36 = v37;
    (*(v34 + 8))(v18, v33);
  }

  [v30 setSourceURL:v36];

  [v30 setContentSize:{a7, a8}];
  [v30 setZoomScale:a9];
  if (v62)
  {
    v38 = sub_1007A2214();
  }

  else
  {
    v38 = 0;
  }

  v39 = v65;
  [v30 setTitle:v38];

  (*(v19 + 104))(v21, enum case for BookContentUserInterfaceStyle.dark(_:), v39);
  v40 = sub_10079F7D4();
  v41 = *(v19 + 8);
  v41(v21, v39);
  v42 = [objc_allocWithZone(BKExpandedWebContentViewController2) initWithResource:v30];
  if (v42)
  {
    if (v40)
    {
      v43 = 5;
    }

    else
    {
      v43 = 2;
    }

    v44 = v42;
    v65 = v24;
    v45 = v63;
    [v42 setPresenter:v63];
    [v44 setDelegate:v45];
    sub_10000E3E8(a6, a6[3]);
    v46 = v39;
    v47 = v44;
    [v47 setAllowsRemoteInspection:sub_10079EC54() & 1];

    v48 = objc_opt_self();
    v49 = v47;
    v50 = [v48 themeForEPUBTheme:v43];
    [v49 setTheme:v50];

    v41(v65, v46);
    v51 = sub_1007A2744();
    v52 = v58;
    (*(*(v51 - 8) + 56))(v58, 1, 1, v51);
    v53 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1007A26F4();
    v54 = v49;

    v55 = sub_1007A26E4();
    v56 = swift_allocObject();
    *(v56 + 16) = v55;
    *(v56 + 24) = &protocol witness table for MainActor;
    *(v56 + 32) = v53;
    *(v56 + 40) = v54;
    *(v56 + 48) = 0u;
    *(v56 + 64) = 0u;
    *(v56 + 80) = v70;

    sub_1003457A0(0, 0, v52, &unk_10083DE40, v56);
  }

  else
  {

    v41(v24, v39);
  }
}

uint64_t sub_1006C42B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v44 = a1;
  v43 = sub_1007A1D04();
  v5 = *(v43 - 8);
  __chkstk_darwin(v43);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1001F1160(&unk_100ADB4D0);
  v9 = *(v8 - 8);
  v46 = *(v9 + 64);
  __chkstk_darwin(v8);
  v47 = &v40 - v10;
  v11 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v11 - 8);
  v45 = &v40 - v12;
  v13 = sub_1001F1160(&qword_100AF2650);
  __chkstk_darwin(v13 - 8);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  v19 = sub_1001F1160(&qword_100ADB1C0);
  __chkstk_darwin(v19 - 8);
  v21 = &v40 - v20;
  if (a2 != 3)
  {
    goto LABEL_8;
  }

  v42 = v15;
  if (!swift_weakLoadStrong())
  {
    v25 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v25 - 8) + 56))(v21, 1, 1, v25);
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v41 = v3;
  sub_10079B9A4();

  v3 = v41;

  v22 = type metadata accessor for OverlayViewModel.Overlay(0);
  if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
  {
LABEL_6:
    sub_100007840(v21, &qword_100ADB1C0);
    v26 = sub_10079FFA4();
    (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
    v27 = OBJC_IVAR____TtC5Books19BookReaderPresenter_searchHighlightID;
    swift_beginAccess();
    v28 = v42;
    sub_1000077D8(v3 + v27, v42, &qword_100AF2650);
    swift_beginAccess();
    sub_1006C4A34(v18, v3 + v27);
    swift_endAccess();
    sub_1006A27B4(v28);
    sub_100007840(v28, &qword_100AF2650);
    v24 = v18;
    v23 = &qword_100AF2650;
    goto LABEL_7;
  }

  v23 = &qword_100ADB1C0;
  v24 = v21;
LABEL_7:
  sub_100007840(v24, v23);
LABEL_8:
  swift_getObjectType();
  if (sub_1007A1364())
  {
    v29 = sub_1007A2744();
    v30 = v45;
    (*(*(v29 - 8) + 56))(v45, 1, 1, v29);
    v31 = v47;
    (*(v9 + 16))(v47, v44, v8);
    sub_1007A26F4();
    v32 = v3;
    v33 = sub_1007A26E4();
    v34 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v35 = swift_allocObject();
    *(v35 + 2) = v33;
    *(v35 + 3) = &protocol witness table for MainActor;
    *(v35 + 4) = v32;
    (*(v9 + 32))(&v35[v34], v31, v8);
    sub_100345AA0(0, 0, v30, &unk_10083DE00, v35);
  }

  else
  {
    *(swift_allocObject() + 16) = v3;
    sub_10000A7C4(0, &qword_100AD1E10);
    v37 = v3;
    *v7 = sub_1007A2D74();
    v38 = v43;
    (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v43);
    v39 = sub_1007A1D34();
    result = (*(v5 + 8))(v7, v38);
    if (v39)
    {

      sub_1006B9A58();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1006C4930(uint64_t a1)
{
  v4 = *(sub_1001F1160(&unk_100ADB4D0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009A34;

  return sub_1006B91DC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1006C4A34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AF2650);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006C4AA4()
{
  v1 = *(sub_1001F1160(&qword_100AF2650) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1006A29EC(v2);
}

uint64_t sub_1006C4BB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100009A34;

  return sub_1006B5A1C(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_1006C4C80()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1006C4CC8(uint64_t a1)
{
  v4 = *(sub_1001F1160(&unk_100AD6170) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100009A34;

  return sub_1006B6078(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1006C4DD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100009A34;

  return sub_1006AF13C();
}

uint64_t sub_1006C4E8C()
{
  v1 = sub_1007969B4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1006C4F54(BOOL *a1@<X8>)
{
  v3 = *(sub_1007969B4() - 8);
  v4 = *(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 64));
  v5 = *(v1 + 16);

  sub_1006B7A9C(v5, v4, a1);
}

uint64_t sub_1006C4FE8(uint64_t a1)
{
  v4 = *(sub_1007A0424() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009A34;

  return sub_1006BD908(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1006C5144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_1006C51AC()
{
  if (*(v0 + OBJC_IVAR____TtC5Books19BookReaderPresenter_expandedContentFrame + 32))
  {
    return 0;
  }

  v2 = v0;
  v3 = sub_1006A96E0();
  sub_1007A1094();

  v4 = OBJC_IVAR____TtC5Books19BookReaderPresenter____lazy_storage___expandedContentAnimator;
  v5 = *(v2 + OBJC_IVAR____TtC5Books19BookReaderPresenter____lazy_storage___expandedContentAnimator);
  sub_1007A10A4();

  v1 = *(v2 + v4);
  v6 = v1;
  return v1;
}

uint64_t sub_1006C5298()
{

  return swift_deallocObject();
}

uint64_t sub_1006C53CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1002AE86C(a1, v4, v5, v6);
}

uint64_t sub_1006C5480(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1002AE6E8(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1006C5540(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002812C;

  return sub_1002AE6E8(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1006C5628()
{
  swift_unknownObjectRelease();

  sub_100471118(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  if (*(v0 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1006C56B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006C571C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1006C57AC(uint64_t *a1)
{
  v2 = sub_1001F1160(a1);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1006C5948(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1006C5A14(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t Separator.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10079E474();
  sub_10079C414();
  *&v9[55] = v13;
  *&v9[71] = v14;
  *&v9[87] = v15;
  *&v9[103] = v16;
  *&v9[7] = v10;
  *&v9[23] = v11;
  *&v9[39] = v12;
  sub_10079E474();
  sub_10079BE54();
  v4 = sub_10079D294();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 73) = *&v9[64];
  *(a2 + 89) = *&v9[80];
  *(a2 + 105) = *&v9[96];
  *(a2 + 120) = *(&v16 + 1);
  *(a2 + 9) = *v9;
  *(a2 + 25) = *&v9[16];
  *(a2 + 41) = *&v9[32];
  *(a2 + 57) = *&v9[48];
  *(a2 + 128) = v6;
  *(a2 + 144) = v7;
  *(a2 + 160) = v8;
  *(a2 + 176) = a1;
  *(a2 + 184) = v4;
}

unint64_t sub_1006C5C60()
{
  result = qword_100AF2988;
  if (!qword_100AF2988)
  {
    sub_1001F1234(&qword_100AF2990);
    sub_1006C5CEC();
    sub_1006C5DFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2988);
  }

  return result;
}

unint64_t sub_1006C5CEC()
{
  result = qword_100AF2998;
  if (!qword_100AF2998)
  {
    sub_1001F1234(&qword_100AF29A0);
    sub_1006C5D78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2998);
  }

  return result;
}

unint64_t sub_1006C5D78()
{
  result = qword_100AF29A8;
  if (!qword_100AF29A8)
  {
    sub_1001F1234(&qword_100AF29B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF29A8);
  }

  return result;
}

unint64_t sub_1006C5DFC()
{
  result = qword_100AF64C0;
  if (!qword_100AF64C0)
  {
    sub_1001F1234(&unk_100AE40B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF64C0);
  }

  return result;
}

uint64_t sub_1006C5E60()
{
  sub_10038DF2C();

  return sub_10079C834();
}

void sub_1006C5F00()
{
  sub_1006C6108();
  if (v0 <= 0x3F)
  {
    sub_100325258(319, &qword_100AF2A30, &qword_100AF2A38, &unk_10083E540, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1006C61BC(319, &qword_100AF2A40, type metadata accessor for BuyButtonView.Style, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1006C61BC(319, &unk_100AF2A48, type metadata accessor for CGSize, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_1006C61BC(319, &qword_100ADB690, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_100325258(319, &qword_100AD6F10, &unk_100ADB6B0, &unk_100816980, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_1006C633C(319, &qword_100AD8BE0, &type metadata for Bool, &type metadata accessor for Environment);
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

void sub_1006C6108()
{
  if (!qword_100AF2A28)
  {
    type metadata accessor for BuyButtonViewModel();
    sub_1006CA91C(&qword_100AD5D78, type metadata accessor for BuyButtonViewModel);
    v0 = sub_10079C054();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF2A28);
    }
  }
}

void sub_1006C61BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1006C6248()
{
  sub_1006C633C(319, &qword_100AF2B00, &type metadata for BuyButtonView.Style.Button, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1006C61BC(319, &unk_100AF2B08, &type metadata accessor for BlendMode, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1006C633C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double sub_1006C63C8@<D0>(uint64_t a1@<X8>)
{
  v41 = sub_10079ED74();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v38 = &v35 - v4;
  v5 = sub_10079EDE4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v42 = sub_10079EDD4();
  v15 = *(v6 + 8);
  v15(v14, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  sub_10079EDC4();
  v17 = v16;
  v15(v11, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  sub_10079EDB4();
  v19 = v18;
  v15(v8, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v37 = sub_10079EDD4();
  v15(v14, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  sub_10079EDC4();
  v21 = v20;
  v15(v11, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  sub_10079EDB4();
  v23 = v22;
  v15(v8, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  v24 = v38;
  sub_10079B9A4();

  v36 = sub_10079ED64();
  v25 = *(v39 + 8);
  v26 = v41;
  v25(v24, v41);
  swift_getKeyPath();
  swift_getKeyPath();
  v27 = v40;
  sub_10079B9A4();

  v39 = sub_10079ED54();
  v25(v27, v26);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v28 = sub_10079ED64();
  v25(v24, v26);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v29 = sub_10079ED54();
  v25(v27, v26);
  v30 = *(type metadata accessor for BuyButtonView.Style(0) + 44);
  v31 = sub_10079E534();
  (*(*(v31 - 8) + 56))(a1 + v30, 1, 1, v31);
  *a1 = v42;
  *(a1 + 8) = v17;
  *(a1 + 16) = v19;
  v32 = v36;
  *(a1 + 24) = v37;
  *(a1 + 32) = v21;
  *(a1 + 40) = v23;
  v33 = v39;
  *(a1 + 48) = v32;
  *(a1 + 56) = v33;
  *(a1 + 64) = v28;
  *(a1 + 72) = v29;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

double sub_1006C6A24()
{
  v0 = type metadata accessor for BuyButtonView.Style(0);
  sub_100009A38(v0, qword_100B23960);
  v1 = sub_100008B98(v0, qword_100B23960);
  v2 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v3 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v4 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v5 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v6 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v7 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v8 = *(v0 + 44);
  v9 = sub_10079E534();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *v1 = v2;
  __asm { FMOV            V0.2D, #1.0 }

  *(v1 + 8) = _Q0;
  *(v1 + 24) = v3;
  *(v1 + 32) = xmmword_100815050;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  result = 0.0;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  return result;
}

uint64_t sub_1006C6B28@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD1AE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for BuyButtonView.Style(0);
  v3 = sub_100008B98(v2, qword_100B23960);
  return sub_1006CA0F8(v3, a1, type metadata accessor for BuyButtonView.Style);
}

uint64_t sub_1006C6BAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&qword_100AD5D70);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for BuyButtonView(0);
  sub_1000077D8(v1 + *(v10 + 24), v9, &qword_100AD5D70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1006CA9A4(v9, a1, type metadata accessor for BuyButtonView.Style);
  }

  sub_1007A29C4();
  v12 = sub_10079D244();
  sub_10079AB44();

  sub_10079C814();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1006C6D98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&unk_100ADB4C0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for BuyButtonView(0);
  sub_1000077D8(v1 + *(v10 + 36), v9, &unk_100ADB4C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10020B3C8(v9, a1, &unk_100ADB6B0);
  }

  sub_1007A29C4();
  v12 = sub_10079D244();
  sub_10079AB44();

  sub_10079C814();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1006C6F80()
{
  v1 = sub_10079C824();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for BuyButtonView(0) + 40);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_1007A29C4();
    v7 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();
    sub_10020B534(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1006C70D8()
{
  v0 = type metadata accessor for BuyButtonView.Style(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v18[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v5 = &v18[-v4];
  __chkstk_darwin(v6);
  v8 = &v18[-v7];
  __chkstk_darwin(v9);
  v11 = &v18[-v10];
  if (sub_1006C6F80())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v12 = v18[14];
  }

  else
  {
    v12 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (v19)
  {
    if (v19 == 1)
    {
      if (v12)
      {
        sub_1006C6BAC(v8);
        v13 = *(v8 + 10);
        sub_1006CA964(v13);
        sub_10038DF80(v8);
        if (!v13)
        {
          v13 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
          v14 = [objc_opt_self() bc_booksOrange];
LABEL_13:
          v15 = v14;
          sub_10079DD24();
        }
      }

      else
      {
        sub_1006C6BAC(v5);
        v13 = *(v5 + 12);
        sub_1006CA964(v13);
        sub_10038DF80(v5);
        if (!v13)
        {
          _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
          v13 = sub_10079DE24();

          v16 = [objc_opt_self() bc_booksOrange];
          sub_10079DD24();
          sub_10079DE24();
        }
      }
    }

    else
    {
      sub_1006C6BAC(v2);
      v13 = *(v2 + 14);
      sub_1006CA964(v13);
      sub_10038DF80(v2);
      if (!v13)
      {
        _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
        v13 = sub_10079DE24();

        v14 = [objc_opt_self() bc_booksOrange];
        goto LABEL_13;
      }
    }
  }

  else
  {
    sub_1006C6BAC(v11);
    if (v12)
    {
      v13 = *(v11 + 6);
    }

    else
    {
      v13 = *(v11 + 8);
    }

    sub_10038DF80(v11);
  }

  return v13;
}

uint64_t sub_1006C73EC()
{
  if (sub_1006C74C4())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    if (v2)
    {
      return v1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    return v1;
  }

  return result;
}

uint64_t sub_1006C74C4()
{
  v1 = sub_10079CEE4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001F1160(&unk_100ADBB30);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v24 - v6;
  v8 = sub_1001F1160(&unk_100ADB6B0);
  __chkstk_darwin(v8 - 8);
  v27 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  v26 = v0;
  sub_1006C6D98(&v24 - v14);
  (*(v2 + 104))(v12, enum case for UserInterfaceSizeClass.compact(_:), v1);
  (*(v2 + 56))(v12, 0, 1, v1);
  v16 = *(v5 + 56);
  sub_1000077D8(v15, v7, &unk_100ADB6B0);
  sub_1000077D8(v12, &v7[v16], &unk_100ADB6B0);
  v17 = *(v2 + 48);
  if (v17(v7, 1, v1) == 1)
  {
    sub_100007840(v12, &unk_100ADB6B0);
    sub_100007840(v15, &unk_100ADB6B0);
    if (v17(&v7[v16], 1, v1) == 1)
    {
      sub_100007840(v7, &unk_100ADB6B0);
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_1000077D8(v7, v27, &unk_100ADB6B0);
  if (v17(&v7[v16], 1, v1) == 1)
  {
    sub_100007840(v12, &unk_100ADB6B0);
    sub_100007840(v15, &unk_100ADB6B0);
    (*(v2 + 8))(v27, v1);
LABEL_6:
    sub_100007840(v7, &unk_100ADBB30);
    return 0;
  }

  v19 = &v7[v16];
  v20 = v25;
  (*(v2 + 32))(v25, v19, v1);
  sub_1006CA91C(&qword_100AE41D0, &type metadata accessor for UserInterfaceSizeClass);
  v21 = v27;
  v22 = sub_1007A2124();
  v23 = *(v2 + 8);
  v23(v20, v1);
  sub_100007840(v12, &unk_100ADB6B0);
  sub_100007840(v15, &unk_100ADB6B0);
  v23(v21, v1);
  sub_100007840(v7, &unk_100ADB6B0);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  result = v28;
  if (v28)
  {

    return 1;
  }

  return result;
}

uint64_t sub_1006C7970@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001F1160(&qword_100AF2A90);
  __chkstk_darwin(v3 - 8);
  v5 = &v24[-v4];
  v6 = type metadata accessor for BuyButtonView.Style(0);
  __chkstk_darwin(v6);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10079E534();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v26 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_1006C6F80())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v12 = v27 ^ 1;
  }

  else
  {
    v12 = 1;
  }

  v25 = v12;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (v29 == 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_10079B9A4(), , , v28 == 2))
  {
    v13 = v26;
    (*(v10 + 104))(v26, enum case for BlendMode.normal(_:), v9);
  }

  else
  {
    sub_1006C6BAC(v8);
    sub_1000077D8(&v8[*(v6 + 44)], v5, &qword_100AF2A90);
    sub_10038DF80(v8);
    v23 = *(v10 + 48);
    if (v23(v5, 1, v9) == 1)
    {
      v13 = v26;
      (*(v10 + 104))(v26, enum case for BlendMode.normal(_:), v9);
      if (v23(v5, 1, v9) != 1)
      {
        sub_100007840(v5, &qword_100AF2A90);
      }
    }

    else
    {
      v13 = v26;
      (*(v10 + 32))(v26, v5, v9);
    }
  }

  v14 = sub_10079E474();
  v16 = v15;
  v17 = sub_1001F1160(&qword_100AF2B50);
  v18 = (a1 + *(v17 + 36));
  *v18 = v14;
  v18[1] = v16;
  v19 = sub_1001F1160(&qword_100AF2B58);
  sub_1006C7E30(v1, v25 & 1, v18 + *(v19 + 44));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v20 = sub_10079CAE4();
  (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
  *(a1 + *(v17 + 40)) = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB4E0);
  swift_storeEnumTagMultiPayload();
  v21 = sub_1001F1160(&qword_100AF2B60);
  return (*(v10 + 32))(a1 + *(v21 + 36), v13, v9);
}

uint64_t sub_1006C7E30@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v175 = a2;
  v180 = a3;
  v162 = sub_1001F1160(&qword_100AF2B68);
  __chkstk_darwin(v162);
  v161 = &v140 - v4;
  v166 = sub_1001F1160(&qword_100AF2B70);
  v167 = *(v166 - 8);
  __chkstk_darwin(v166);
  v163 = &v140 - v5;
  v169 = sub_1001F1160(&qword_100AF2B78);
  __chkstk_darwin(v169);
  v164 = &v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v168 = &v140 - v8;
  __chkstk_darwin(v9);
  v160 = &v140 - v10;
  v170 = sub_1001F1160(&qword_100AF2B80);
  __chkstk_darwin(v170);
  v176 = &v140 - v11;
  v174 = sub_1001F1160(&qword_100AF2B88);
  __chkstk_darwin(v174);
  v173 = &v140 - v12;
  v172 = sub_1001F1160(&qword_100AF2B90);
  __chkstk_darwin(v172);
  v179 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v171 = &v140 - v15;
  __chkstk_darwin(v16);
  v178 = &v140 - v17;
  v157 = sub_1001F1160(&qword_100AF2B98);
  v158 = *(v157 - 8);
  __chkstk_darwin(v157);
  v155 = &v140 - v18;
  v159 = sub_1001F1160(&qword_100AF2BA0);
  __chkstk_darwin(v159);
  v177 = &v140 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v156 = &v140 - v21;
  __chkstk_darwin(v22);
  v186 = &v140 - v23;
  v24 = type metadata accessor for BuyButtonView(0);
  v25 = *(v24 - 8);
  v154 = v24 - 8;
  v152 = v25;
  v184 = *(v25 + 64);
  __chkstk_darwin(v24 - 8);
  v182 = &v140 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_10079D074();
  v187 = *(v183 - 8);
  __chkstk_darwin(v183);
  v181 = &v140 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for BuyButtonView.Style(0);
  __chkstk_darwin(v28 - 8);
  v153 = &v140 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v140 - v31;
  __chkstk_darwin(v33);
  v35 = &v140 - v34;
  v36 = sub_1001F1160(&qword_100AF2BA8);
  v37 = v36 - 8;
  __chkstk_darwin(v36);
  v39 = &v140 - v38;
  v40 = sub_1001F1160(&qword_100AF2BB0);
  __chkstk_darwin(v40);
  v42 = &v140 - v41;
  v143 = sub_1001F1160(&qword_100AF2BB8);
  v149 = *(v143 - 8);
  __chkstk_darwin(v143);
  v44 = &v140 - v43;
  v151 = sub_1001F1160(&qword_100AF2BC0);
  __chkstk_darwin(v151);
  v141 = &v140 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v142 = &v140 - v47;
  v145 = sub_1001F1160(&qword_100AF2BC8) - 8;
  __chkstk_darwin(v145);
  v165 = &v140 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v144 = &v140 - v50;
  __chkstk_darwin(v51);
  v185 = &v140 - v52;
  sub_10079BDC4();
  v147 = v35;
  sub_1006C6BAC(v35);

  sub_10038DF80(v35);
  v140 = a1;
  sub_1006C6BAC(v32);
  v148 = v32;
  sub_10038DF80(v32);
  v53 = sub_10079DE24();

  KeyPath = swift_getKeyPath();
  *&v196 = v53;
  v55 = sub_10079BE64();
  v56 = &v39[*(v37 + 44)];
  *v56 = KeyPath;
  v56[1] = v55;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v57 = 0.0;
  if (v196 == 1)
  {
    v58 = 1.0;
  }

  else
  {
    v58 = 0.0;
  }

  sub_10020B3C8(v39, v42, &qword_100AF2BA8);
  *&v42[*(v40 + 36)] = v58;
  v59 = v181;
  sub_10079D044();
  v60 = sub_1006C9F88();
  sub_10079D9A4();
  v61 = *(v187 + 8);
  v187 += 8;
  v150 = v61;
  v61(v59, v183);
  sub_100007840(v42, &qword_100AF2BB0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *&v196 = v40;
  *(&v196 + 1) = v60;
  v146 = &opaque type descriptor for <<opaque return type of View.accessibilityElement(children:)>>;
  swift_getOpaqueTypeConformance2();
  v62 = v141;
  v63 = v143;
  sub_10079D944();
  (*(v149 + 8))(v44, v63);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v64 = v142;
  sub_10079C184();
  sub_100007840(v62, &qword_100AF2BC0);
  v151 = type metadata accessor for BuyButtonView;
  v65 = v140;
  v66 = v182;
  sub_1006CA0F8(v140, v182, type metadata accessor for BuyButtonView);
  v67 = *(v152 + 80);
  v149 = (v67 + 16) & ~v67;
  v68 = swift_allocObject();
  v152 = type metadata accessor for BuyButtonView;
  sub_1006CA9A4(v66, v68 + ((v67 + 16) & ~v67), type metadata accessor for BuyButtonView);
  v69 = sub_10079E474();
  v71 = v70;
  v72 = v64;
  v73 = v144;
  sub_10020B3C8(v72, v144, &qword_100AF2BC0);
  v74 = (v73 + *(sub_1001F1160(&qword_100AF2BE0) + 36));
  *v74 = sub_100364208;
  v74[1] = 0;
  v74[2] = v69;
  v74[3] = v71;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_1006CA160;
  *(v75 + 24) = v68;
  v76 = (v73 + *(v145 + 44));
  *v76 = sub_1006CA1D8;
  v76[1] = v75;
  sub_10020B3C8(v73, v185, &qword_100AF2BC8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v77 = v196;
  v78 = v147;
  sub_1006C6BAC(v147);
  v79 = *(v78 + 24);

  sub_10038DF80(v78);
  v80 = v148;
  sub_1006C6BAC(v148);
  v81 = *(v80 + 32);
  sub_10038DF80(v80);
  v82 = v153;
  sub_1006C6BAC(v153);
  v83 = *(v82 + 40);
  sub_10038DF80(v82);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (v196 == 2)
  {
    v84 = 1.0;
  }

  else
  {
    v84 = 0.0;
  }

  v85 = (v65 + *(v154 + 36));
  v87 = v85[1];
  v88 = v85[2];
  *&v196 = *v85;
  v86 = v196;
  *(&v196 + 1) = v87;
  *&v197 = v88;
  sub_1001F1160(&qword_100AD5410);
  sub_10079DFF4();
  *&v196 = v86;
  *(&v196 + 1) = v87;
  *&v197 = v88;
  sub_10079DFF4();
  sub_10079E474();
  sub_10079BE54();
  *&v190 = v77;
  *(&v190 + 1) = v79;
  *&v191 = v81;
  *(&v191 + 1) = v83;
  *&v192 = v84;
  v89 = v181;
  sub_10079D044();
  v90 = sub_1001F1160(&qword_100AF2BE8);
  v91 = sub_1006CA204();
  v92 = v155;
  sub_10079D9A4();
  v150(v89, v183);
  v198 = v192;
  v199 = v193;
  v200 = v194;
  v201 = v195;
  v196 = v190;
  v197 = v191;
  sub_100007840(&v196, &qword_100AF2BE8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *&v190 = v90;
  *(&v190 + 1) = v91;
  swift_getOpaqueTypeConformance2();
  v93 = v156;
  v94 = v157;
  sub_10079D944();
  (*(v158 + 8))(v92, v94);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  sub_10079C184();
  sub_100007840(v93, &qword_100AF2BA0);
  v95 = v65;
  v96 = sub_1006C70D8();
  v98 = v97;
  v99 = v182;
  sub_1006CA0F8(v65, v182, v151);
  v100 = v149;
  v101 = swift_allocObject();
  sub_1006CA9A4(v99, v101 + v100, v152);
  v188 = v95;
  sub_1001F1160(&qword_100AF2C10);
  sub_1006CA72C();
  v102 = v161;
  sub_10079E054();
  v103 = swift_getKeyPath();
  v104 = v162;
  v105 = v102 + *(v162 + 36);
  *v105 = v103;
  *(v105 + 8) = 1;
  *(v105 + 16) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v106 = v190;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v107 = v190;
  v187 = v96;
  *&v190 = v96;
  v184 = v98;
  *(&v190 + 1) = v98;
  *&v191 = v106;
  *(&v191 + 1) = v107;
  v108 = sub_1006CA7E4();
  v109 = sub_1006CA8C8();
  v110 = v163;
  sub_10079D6B4();

  sub_100007840(v102, &qword_100AF2B68);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v189 = v190;
  *&v190 = v104;
  *(&v190 + 1) = &type metadata for SampleHeaderButtonStyle;
  *&v191 = v108;
  *(&v191 + 1) = v109;
  swift_getOpaqueTypeConformance2();
  sub_100206ECC();
  v111 = v164;
  v112 = v166;
  sub_10079D8E4();

  (*(v167 + 8))(v110, v112);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v113 = sub_10079D5D4();
  v115 = v114;
  LOBYTE(v106) = v116;
  v117 = v168;
  sub_10079C1D4();
  sub_10020B430(v113, v115, v106 & 1);

  sub_100007840(v111, &qword_100AF2B78);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v118 = v160;
  sub_10079C184();
  v119 = 1;
  sub_100007840(v117, &qword_100AF2B78);
  if ((v175 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v119 = v190 != 0;
  }

  v120 = swift_getKeyPath();
  v121 = swift_allocObject();
  *(v121 + 16) = v119;
  v122 = v118;
  v123 = v176;
  sub_10020B3C8(v122, v176, &qword_100AF2B78);
  v124 = (v123 + *(v170 + 36));
  *v124 = v120;
  v124[1] = sub_100258B0C;
  v124[2] = v121;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (!v190)
  {
    v57 = 1.0;
  }

  v125 = v123;
  v126 = v173;
  sub_10020B3C8(v125, v173, &qword_100AF2B80);
  *(v126 + *(v174 + 36)) = v57;
  v127 = swift_getKeyPath();
  v128 = v126;
  v129 = v171;
  sub_10020B3C8(v128, v171, &qword_100AF2B88);
  v130 = v129 + *(v172 + 36);
  *v130 = v127;
  *(v130 + 8) = 0;
  v131 = v178;
  sub_10020B3C8(v129, v178, &qword_100AF2B90);
  v132 = v185;
  v133 = v165;
  sub_1000077D8(v185, v165, &qword_100AF2BC8);
  v134 = v186;
  v135 = v177;
  sub_1000077D8(v186, v177, &qword_100AF2BA0);
  v136 = v179;
  sub_1000077D8(v131, v179, &qword_100AF2B90);
  v137 = v180;
  sub_1000077D8(v133, v180, &qword_100AF2BC8);
  v138 = sub_1001F1160(&qword_100AF2C40);
  sub_1000077D8(v135, v137 + *(v138 + 48), &qword_100AF2BA0);
  sub_1000077D8(v136, v137 + *(v138 + 64), &qword_100AF2B90);

  sub_100007840(v131, &qword_100AF2B90);
  sub_100007840(v134, &qword_100AF2BA0);
  sub_100007840(v132, &qword_100AF2BC8);
  sub_100007840(v136, &qword_100AF2B90);
  sub_100007840(v135, &qword_100AF2BA0);
  return sub_100007840(v133, &qword_100AF2BC8);
}

uint64_t sub_1006C9728()
{
  type metadata accessor for BuyButtonView(0);
  sub_1001F1160(&qword_100AD5410);
  return sub_10079E004();
}

uint64_t sub_1006C97A8(uint64_t a1)
{
  sub_1000077D8(a1 + 16, v2, &qword_100AE5DB8);
  if (!v3)
  {
    return sub_100007840(v2, &qword_100AE5DB8);
  }

  sub_10000E3E8(v2, v3);
  swift_unknownObjectRetain();
  sub_1005354F4();
  swift_unknownObjectRelease();
  return sub_1000074E0(v2);
}

uint64_t sub_1006C9840@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (v35)
  {

    sub_10079DF24();
    v2 = sub_10079D5E4();
    v4 = v3;
    v6 = v5;
    v7 = sub_10079D584();
    v34 = a1;
    v9 = v8;
    v33 = v10;
    sub_10020B430(v2, v4, v6 & 1);

    sub_1006C73EC();
    sub_100206ECC();
    v11 = sub_10079D5D4();
    v13 = v12;
    LOBYTE(v2) = v14;
    v15 = v7;
    v16 = sub_10079D584();
    v18 = v17;
    v20 = v19;
    v21 = v11;
    v23 = v22;
    sub_10020B430(v21, v13, v2 & 1);

    v24 = v9;
    a1 = v34;
    sub_10020B430(v15, v24, v33 & 1);
  }

  else
  {
    sub_1006C73EC();
    sub_100206ECC();
    v16 = sub_10079D5D4();
    v18 = v25;
    v20 = v26;
    v23 = v27;
  }

  v28 = (a1 + *(sub_1001F1160(&qword_100AF2C10) + 36));
  v29 = *(sub_1001F1160(&qword_100AEE3C0) + 28);
  v30 = enum case for Image.Scale.medium(_:);
  v31 = sub_10079DF84();
  (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
  result = swift_getKeyPath();
  *v28 = result;
  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v20 & 1;
  *(a1 + 24) = v23;
  return result;
}

uint64_t sub_1006C9AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  sub_10079BCF4();
  v33 = v51;
  v9 = v52;
  v10 = v53;
  KeyPath = swift_getKeyPath();
  *v35 = a3;
  sub_1006CAAF0();

  sub_1007A20C4();
  v12 = *&v57[0];
  sub_10079BCF4();
  v13 = swift_getKeyPath();

  sub_10079E634();
  v15 = v14;
  v17 = v16;
  v18 = sub_10079E4F4();
  v54[0] = v51;
  v19 = *(&v51 + 1);
  v54[1] = v52;
  v20 = *(&v52 + 1);
  *&v55 = v53;
  *(&v55 + 1) = a5;
  *&v56 = KeyPath;
  *(&v56 + 1) = a1;
  v36 = v51;
  v37 = v52;
  v38 = v55;
  *&v57[0] = 0;
  *(&v57[0] + 1) = v12;
  v21 = v50;
  *&v58 = v50;
  v22 = v48;
  v23 = v49;
  v57[2] = v49;
  v57[1] = v48;
  *(&v58 + 1) = a4;
  *&v59 = v13;
  *(&v59 + 1) = a1;
  *&v60 = 0x4012D97C7F3321D2;
  *(&v60 + 1) = v15;
  *&v61 = v17;
  *(&v61 + 1) = v18;
  v41 = v48;
  v42 = v49;
  v39 = v56;
  v40 = v57[0];
  v45 = v60;
  v46 = v61;
  v43 = v58;
  v44 = v59;
  v24 = v51;
  v25 = v52;
  v26 = v56;
  v27 = v57[0];
  *(a2 + 32) = v55;
  *(a2 + 48) = v26;
  *a2 = v24;
  *(a2 + 16) = v25;
  v28 = v41;
  v29 = v43;
  v30 = v44;
  *(a2 + 96) = v42;
  *(a2 + 112) = v29;
  *(a2 + 64) = v27;
  *(a2 + 80) = v28;
  v31 = v46;
  *(a2 + 144) = v45;
  *(a2 + 160) = v31;
  v62 = a3;
  v47 = a3;
  *(a2 + 176) = a3;
  *(a2 + 128) = v30;
  v63[0] = 0;
  v63[1] = v12;
  v64 = v22;
  v65 = v23;
  v66 = v21;
  v67 = a4;
  v68 = v13;
  v69 = a1;
  v70 = 0x4012D97C7F3321D2;
  v71 = v15;
  v72 = v17;
  v73 = v18;
  v74 = a3;
  sub_1000077D8(v54, v35, &qword_100AF2C68);
  sub_1000077D8(v57, v35, &qword_100AF2C70);
  sub_100007840(v63, &qword_100AF2C70);
  v35[0] = v33;
  v35[1] = v19;
  v35[2] = v9;
  v35[3] = v20;
  v35[4] = v10;
  *&v35[5] = a5;
  v35[6] = KeyPath;
  v35[7] = a1;
  return sub_100007840(v35, &qword_100AF2C68);
}

double sub_1006C9E2C@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[2];
  v6 = v1[3];
  v7 = sub_10079E474();
  v9 = v8;
  sub_1006C9AD0(v4, &v17, v3, v5, v6);
  v37 = v25;
  v38 = v26;
  v39 = v27;
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v41[8] = v25;
  v41[9] = v26;
  v41[10] = v27;
  v41[4] = v21;
  v41[5] = v22;
  v41[6] = v23;
  v41[7] = v24;
  v41[0] = v17;
  v41[1] = v18;
  v40 = v28;
  v42 = v28;
  v41[2] = v19;
  v41[3] = v20;
  sub_1000077D8(&v29, &v16, &qword_100AF2C58);
  sub_100007840(v41, &qword_100AF2C58);
  *a1 = v7;
  *(a1 + 8) = v9;
  v10 = v38;
  *(a1 + 144) = v37;
  *(a1 + 160) = v10;
  *(a1 + 176) = v39;
  *(a1 + 192) = v40;
  v11 = v34;
  *(a1 + 80) = v33;
  *(a1 + 96) = v11;
  v12 = v36;
  *(a1 + 112) = v35;
  *(a1 + 128) = v12;
  v13 = v30;
  *(a1 + 16) = v29;
  *(a1 + 32) = v13;
  result = *&v31;
  v15 = v32;
  *(a1 + 48) = v31;
  *(a1 + 64) = v15;
  return result;
}

unint64_t sub_1006C9F88()
{
  result = qword_100AF2BD0;
  if (!qword_100AF2BD0)
  {
    sub_1001F1234(&qword_100AF2BB0);
    sub_1006CA014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2BD0);
  }

  return result;
}

unint64_t sub_1006CA014()
{
  result = qword_100AF2BD8;
  if (!qword_100AF2BD8)
  {
    sub_1001F1234(&qword_100AF2BA8);
    sub_100005920(&qword_100ADC4E8, &qword_100AEE330);
    sub_100005920(&qword_100AEA398, &qword_100AEA3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2BD8);
  }

  return result;
}

uint64_t sub_1006CA0F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006CA160()
{
  type metadata accessor for BuyButtonView(0);

  return sub_1006C9728();
}

unint64_t sub_1006CA204()
{
  result = qword_100AF2BF0;
  if (!qword_100AF2BF0)
  {
    sub_1001F1234(&qword_100AF2BE8);
    sub_1006CA290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2BF0);
  }

  return result;
}

unint64_t sub_1006CA290()
{
  result = qword_100AF2BF8;
  if (!qword_100AF2BF8)
  {
    sub_1001F1234(&qword_100AF2C00);
    sub_1006CA31C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2BF8);
  }

  return result;
}

unint64_t sub_1006CA31C()
{
  result = qword_100AF2C08;
  if (!qword_100AF2C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2C08);
  }

  return result;
}

uint64_t sub_1006CA370()
{
  v1 = type metadata accessor for BuyButtonView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 40))
  {
    sub_1000074E0(v2 + 16);
  }

  v3 = (v2 + v1[6]);
  sub_1001F1160(&qword_100AD5D70);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    if (*(v3 + 10))
    {
    }

    if (*(v3 + 12))
    {
    }

    if (*(v3 + 14))
    {
    }

    v5 = *(type metadata accessor for BuyButtonView.Style(0) + 44);
    v6 = sub_10079E534();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(&v3[v5], 1, v6))
    {
      (*(v7 + 8))(&v3[v5], v6);
    }
  }

  v8 = v1[8];
  sub_1001F1160(&unk_100ADB730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10079BC44();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  v10 = v1[9];
  sub_1001F1160(&unk_100ADB4C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079CEE4();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v2 + v10, 1, v11))
    {
      (*(v12 + 8))(v2 + v10, v11);
    }
  }

  else
  {
  }

  sub_10020B534(*(v2 + v1[10]), *(v2 + v1[10] + 8));
  sub_10020B534(*(v2 + v1[11]), *(v2 + v1[11] + 8));

  return swift_deallocObject();
}

uint64_t sub_1006CA6C4()
{
  v1 = *(type metadata accessor for BuyButtonView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1006C97A8(v2);
}

unint64_t sub_1006CA72C()
{
  result = qword_100AF2C18;
  if (!qword_100AF2C18)
  {
    sub_1001F1234(&qword_100AF2C10);
    sub_100005920(&unk_100AD1D00, &qword_100AEE3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2C18);
  }

  return result;
}

unint64_t sub_1006CA7E4()
{
  result = qword_100AF2C20;
  if (!qword_100AF2C20)
  {
    sub_1001F1234(&qword_100AF2B68);
    sub_100005920(&qword_100AF2C28, &qword_100AF2C30);
    sub_100005920(&qword_100ADC1A8, &qword_100ADC1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2C20);
  }

  return result;
}

unint64_t sub_1006CA8C8()
{
  result = qword_100AF2C38;
  if (!qword_100AF2C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2C38);
  }

  return result;
}

uint64_t sub_1006CA91C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006CA964(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1006CA9A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1006CAA1C()
{
  result = qword_100AF2C48;
  if (!qword_100AF2C48)
  {
    sub_1001F1234(&qword_100AF2B60);
    sub_100005920(&qword_100AF2C50, &qword_100AF2B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2C48);
  }

  return result;
}

unint64_t sub_1006CAAF0()
{
  result = qword_100AF2C60;
  if (!qword_100AF2C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2C60);
  }

  return result;
}

__n128 sub_1006CAB44(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1006CAB60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
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

uint64_t sub_1006CABA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1006CAC24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if (!*(a2 + 48))
  {
    sub_1007A07F4();
    goto LABEL_9;
  }

  v6 = sub_1007A07F4();
  v8 = v7;
  v9 = sub_1007A07F4();
  if (!v8)
  {
LABEL_9:
    v12 = 0;
    goto LABEL_11;
  }

  if (v6 == v9 && v8 == v10)
  {

    v12 = 1;
  }

  else
  {
    v12 = sub_1007A3AB4();
  }

LABEL_11:

  sub_1006CB018(a2, v22);
  v13 = swift_allocObject();
  *(v13 + 16) = v5;
  v14 = v22[1];
  *(v13 + 24) = v22[0];
  *(v13 + 40) = v14;
  *(v13 + 56) = v23[0];
  *(v13 + 66) = *(v23 + 10);
  sub_1006CB018(a2, v20);
  v15 = swift_allocObject();
  v16 = v20[1];
  *(v15 + 16) = v20[0];
  *(v15 + 32) = v16;
  *(v15 + 48) = v21[0];
  *(v15 + 58) = *(v21 + 10);
  *(v15 + 80) = v5;
  v17 = *(a2 + 56);
  v18 = *(a2 + 57);
  sub_100009864(a2, a3 + 56);
  *a3 = v12 & 1;
  *(a3 + 8) = sub_1006CB0A4;
  *(a3 + 16) = v13;
  *(a3 + 24) = sub_1006CB0B0;
  *(a3 + 32) = v15;
  *(a3 + 40) = v5;
  *(a3 + 48) = v17;
  *(a3 + 49) = v18;
  type metadata accessor for ThemeFontRow();
  sub_1002582C8();
  swift_retain_n();
  return sub_10079BDE4();
}

uint64_t sub_1006CAE00(uint64_t a1, void *a2)
{
  v3 = sub_1007A0834();
  v5 = v4;
  sub_10000E3E8(a2, a2[3]);
  if ((v5 & 1) != 0 && v3 > 1)
  {
    return sub_1007A1644();
  }

  else
  {
    return sub_1007A1694();
  }
}

uint64_t sub_1006CAE8C()
{
  v6 = *(v0 + 40);
  sub_1006CB018(v0, v4);
  v1 = swift_allocObject();
  v2 = v4[1];
  v1[1] = v4[0];
  v1[2] = v2;
  v1[3] = v5[0];
  *(v1 + 58) = *(v5 + 10);

  sub_1001F1160(&qword_100AF2C88);
  type metadata accessor for ThemeFontRow();
  sub_100005920(&qword_100AF2C90, &qword_100AF2C88);
  sub_1006CD53C(&qword_100AF2C98, type metadata accessor for ThemeFontRow);
  sub_1006CD53C(&qword_100AF2CA0, &type metadata accessor for ThemeFontViewModel);
  return sub_10079E274();
}

uint64_t type metadata accessor for ThemeFontRow()
{
  result = qword_100AF2D00;
  if (!qword_100AF2D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006CB124()
{
  sub_100247D20();
  if (v0 <= 0x3F)
  {
    sub_1007A0844();
    if (v1 <= 0x3F)
    {
      sub_100308CB0();
      if (v2 <= 0x3F)
      {
        sub_100324D54();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1006CB1F0()
{
  result = qword_100AF2D50;
  if (!qword_100AF2D50)
  {
    sub_1001F1234(&qword_100AF2D58);
    sub_1006CD53C(&qword_100AF2C98, type metadata accessor for ThemeFontRow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2D50);
  }

  return result;
}

uint64_t sub_1006CB2C0@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v2 = sub_10079D074();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v79 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1001F1160(&qword_100AF2D60);
  v77 = *(v80 - 8);
  __chkstk_darwin(v80);
  v76 = &v66 - v5;
  v6 = sub_1001F1160(&qword_100AF2D68);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v78 = &v66 - v8;
  v81 = sub_1001F1160(&qword_100AF2D70);
  __chkstk_darwin(v81);
  v10 = &v66 - v9;
  v73 = sub_100796CF4();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v69 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v71 = &v66 - v13;
  v74 = sub_1007A21D4();
  v70 = *(v74 - 8);
  __chkstk_darwin(v74);
  v67 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v68 = &v66 - v16;
  v17 = sub_10079D4D4();
  v66 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v20 - 8);
  v22 = &v66 - v21;
  v88 = v1;
  v23 = *(v1 + 40);
  v24 = sub_1007A0834();
  v85 = v10;
  v86 = v2;
  v83 = v3;
  v84 = v6;
  v82 = v7;
  if ((v25 & 1) != 0 && v24 && (v24 == 1 || (v88[48] & 1) == 0 && v88[49] != 1))
  {
    v26 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  }

  else
  {
    v26 = sub_10079DE34();
  }

  v27 = v26;
  v28 = sub_10079D3A4();
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v30(v22, 1, 1, v28);

  v89 = sub_10079D424();
  sub_100007840(v22, &unk_100AD1FC0);
  v31 = v23;

  v32 = sub_1007A0824();
  if (v32 > 1)
  {
    if (v32 != 2)
    {
      (*(v29 + 104))(v22, enum case for Font.Design.serif (_:), v28);
      v30(v22, 0, 1, v28);
      v34 = sub_10079D424();

      sub_100007840(v22, &unk_100AD1FC0);
      goto LABEL_14;
    }

LABEL_12:

    goto LABEL_15;
  }

  if (!v32)
  {
    goto LABEL_12;
  }

  sub_1007A07F4();
  v33 = v66;
  (*(v66 + 104))(v19, enum case for Font.TextStyle.body(_:), v17);
  v34 = sub_10079D404();

  (*(v33 + 8))(v19, v17);
LABEL_14:
  v89 = v34;
LABEL_15:
  v35 = sub_1007A07F4();
  v37 = v36;

  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = v35 & 0xFFFFFFFFFFFFLL;
  }

  v75 = v31;
  v39 = v27;
  if (v38)
  {
    v40 = sub_1007A0804();
    v42 = v41;
  }

  else
  {
    v43 = v68;
    sub_1007A2154();
    v44 = v71;
    sub_100796C94();
    v45 = v70;
    (*(v70 + 16))(v67, v43, v74);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v47 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v48 = v72;
    v49 = v73;
    (*(v72 + 16))(v69, v44, v73);
    v50 = sub_1007A22D4();
    v42 = v51;
    (*(v48 + 8))(v44, v49);
    (*(v45 + 8))(v43, v74);
    v40 = v50;
  }

  v74 = v40;
  v52 = v88;
  __chkstk_darwin(v40);
  *(&v66 - 6) = v53;
  *(&v66 - 5) = v42;
  *(&v66 - 4) = v89;
  *(&v66 - 3) = v39;
  *(&v66 - 2) = v52;
  *(&v66 - 1) = 0x4039000000000000;

  sub_1001F1160(&qword_100AF2D78);
  sub_100005920(&qword_100AF2D80, &qword_100AF2D78);
  v54 = v76;
  sub_10079E054();

  sub_10079DD94();

  v55 = v79;
  sub_10079D054();
  v56 = sub_100005920(&qword_100AF2D88, &qword_100AF2D60);
  v57 = v78;
  v58 = v80;
  sub_10079D9A4();
  (*(v83 + 8))(v55, v86);
  (*(v77 + 8))(v54, v58);
  v92 = v74;
  v93 = v42;
  v90 = v58;
  v91 = v56;
  swift_getOpaqueTypeConformance2();
  sub_100206ECC();
  v60 = v84;
  v59 = v85;
  sub_10079D8E4();
  (*(v82 + 8))(v57, v60);

  v92 = sub_1007A0814();
  v93 = v61;
  v62 = v87;
  sub_10079C1E4();

  sub_100048E2C(v59);
  LOBYTE(v59) = *v52;
  *(v62 + *(sub_1001F1160(&qword_100AF2D90) + 36)) = v59;
  KeyPath = swift_getKeyPath();
  result = sub_1001F1160(&qword_100AF2D98);
  v65 = v62 + *(result + 36);
  *v65 = KeyPath;
  *(v65 + 8) = 0;
  return result;
}

uint64_t sub_1006CBD58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v57 = a4;
  v62 = a3;
  v58 = sub_1001F1160(&qword_100AF2DA0) - 8;
  __chkstk_darwin(v58);
  v59 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v60 = &v50 - v10;
  *a5 = sub_10079C8F4();
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v69 = a1;
  v70 = a2;
  sub_100206ECC();

  v11 = sub_10079D5D4();
  v13 = v12;
  v15 = v14;
  v16 = sub_10079D5A4();
  v18 = v17;
  v20 = v19;
  sub_10020B430(v11, v13, v15 & 1);

  v61 = sub_10079D564();
  v62 = v21;
  v56 = v22;
  v24 = v23;
  sub_10020B430(v16, v18, v20 & 1);

  v25 = sub_10079D2C4();
  LOBYTE(v11) = v25;
  v26 = v24 & 1;
  v89 = v24 & 1;
  v54 = v24 & 1;
  v55 = v25;
  v86 = 1;
  sub_10079E484();
  v27 = a5 + *(sub_1001F1160(&qword_100AF2DA8) + 44);
  sub_10079C414();
  *(&v90[6] + 7) = *&v90[21];
  *(&v90[8] + 7) = *&v90[23];
  *(&v90[10] + 7) = *&v90[25];
  *(&v90[12] + 7) = *&v90[27];
  *(v90 + 7) = *&v90[15];
  *(&v90[2] + 7) = *&v90[17];
  *(&v90[4] + 7) = *&v90[19];
  sub_10079E474();
  sub_10079BE54();
  v52 = v92;
  v53 = v90[29];
  v50 = v95;
  v51 = v94;
  v65 = 1;
  v64 = v91;
  v63 = v93;
  v28 = v60;
  sub_1006CC2EC(v60);
  sub_10079E474();
  sub_10079BE54();
  v29 = (v28 + *(sub_1001F1160(&qword_100AF2DB0) + 36));
  v30 = v97;
  *v29 = v96;
  v29[1] = v30;
  v29[2] = v98;
  v31 = sub_10079D2E4();
  v32 = v59;
  v33 = v28 + *(v58 + 44);
  *v33 = v31;
  *(v33 + 8) = 0u;
  *(v33 + 24) = 0u;
  *(v33 + 40) = 1;
  v34 = v65;
  LOBYTE(v13) = v64;
  v35 = v63;
  sub_1000077D8(v28, v32, &qword_100AF2DA0);
  v36 = v56;
  *&v66 = v61;
  *(&v66 + 1) = v56;
  LOBYTE(v67) = v26;
  *(&v67 + 1) = *v88;
  DWORD1(v67) = *&v88[3];
  *(&v67 + 1) = v62;
  LOBYTE(v68[0]) = v11;
  *(v68 + 1) = *v87;
  DWORD1(v68[0]) = *&v87[3];
  *(v68 + 8) = 0u;
  *(&v68[1] + 8) = 0u;
  BYTE8(v68[2]) = 1;
  *(&v68[2] + 9) = *v90;
  *(&v68[5] + 9) = *&v90[6];
  *(&v68[4] + 9) = *&v90[4];
  *(&v68[3] + 9) = *&v90[2];
  *(&v68[9] + 1) = *(&v90[13] + 7);
  *(&v68[8] + 9) = *&v90[12];
  *(&v68[7] + 9) = *&v90[10];
  *(&v68[6] + 9) = *&v90[8];
  v37 = v66;
  v38 = v67;
  v39 = v68[1];
  *(v27 + 32) = v68[0];
  *(v27 + 48) = v39;
  *v27 = v37;
  *(v27 + 16) = v38;
  v40 = v68[2];
  v41 = v68[3];
  v42 = v68[5];
  v43 = v68[6];
  *(v27 + 96) = v68[4];
  *(v27 + 112) = v42;
  *(v27 + 64) = v40;
  *(v27 + 80) = v41;
  v44 = v68[7];
  v45 = v68[9];
  *(v27 + 160) = v68[8];
  *(v27 + 176) = v45;
  *(v27 + 128) = v43;
  *(v27 + 144) = v44;
  *(v27 + 192) = 0;
  *(v27 + 200) = v34;
  v46 = v52;
  *(v27 + 208) = v53;
  *(v27 + 216) = v13;
  *(v27 + 224) = v46;
  *(v27 + 232) = v35;
  v47 = v50;
  *(v27 + 240) = v51;
  *(v27 + 248) = v47;
  v48 = sub_1001F1160(&qword_100AF2DB8);
  sub_1000077D8(v32, v27 + *(v48 + 64), &qword_100AF2DA0);
  sub_1000077D8(&v66, &v69, &qword_100AF2DC0);
  sub_100007840(v60, &qword_100AF2DA0);
  sub_100007840(v32, &qword_100AF2DA0);
  v76 = 0u;
  v77 = 0u;
  v83 = *&v90[8];
  v84 = *&v90[10];
  v85[0] = *&v90[12];
  v79 = *v90;
  v80 = *&v90[2];
  v81 = *&v90[4];
  v69 = v61;
  v70 = v36;
  v71 = v54;
  *v72 = *v88;
  *&v72[3] = *&v88[3];
  v73 = v62;
  v74 = v55;
  *v75 = *v87;
  *&v75[3] = *&v87[3];
  v78 = 1;
  *(v85 + 15) = *(&v90[13] + 7);
  v82 = *&v90[6];
  return sub_100007840(&v69, &qword_100AF2DC0);
}

uint64_t sub_1006CC2EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_1001F1160(&qword_100AE74A0);
  __chkstk_darwin(v3);
  v5 = (v32 - v4);
  v34 = sub_1001F1160(&qword_100AF2DC8);
  __chkstk_darwin(v34);
  v35 = v32 - v6;
  v36 = sub_1001F1160(&qword_100AF2DD0);
  v33 = *(v36 - 8);
  __chkstk_darwin(v36);
  v8 = v32 - v7;
  v9 = sub_1001F1160(&qword_100AF2DD8);
  __chkstk_darwin(v9);
  v11 = v32 - v10;
  v12 = sub_1001F1160(&qword_100AF2DE0);
  __chkstk_darwin(v12);
  v14 = v32 - v13;
  v15 = sub_1001F1160(&qword_100ADBD80);
  __chkstk_darwin(v15);
  v17 = v32 - v16;
  if (*v2 == 1)
  {
    sub_1006CC910(v17);
    v18 = &qword_100ADBD80;
    sub_1000077D8(v17, v14, &qword_100ADBD80);
    swift_storeEnumTagMultiPayload();
    sub_10031A818();
    sub_1006CD0D0();
    sub_10079CCA4();
    v19 = v17;
  }

  else
  {
    v32[3] = v3;
    v32[4] = v12;
    v20 = sub_1007A0834();
    if (v21)
    {
      v22 = sub_1007A0834();
      v23 = 1;
      if ((v24 & 1) != 0 && v22 >= 2)
      {
        v38 = sub_1007A07F4();
        v39 = v25;
        sub_1002060B4();
        v26 = sub_1007A28A4();

        if (v26)
        {
          sub_1006CCC00(v5);
          sub_1000077D8(v5, v35, &qword_100AE74A0);
          swift_storeEnumTagMultiPayload();
          sub_100005920(&qword_100AF2E00, &qword_100AF2DD0);
          sub_1006CD20C();
          sub_10079CCA4();
          sub_100007840(v5, &qword_100AE74A0);
          v23 = 0;
        }

        else
        {
          v23 = 1;
        }
      }
    }

    else
    {
      v32[2] = v32;
      v32[1] = *(v2 + 24);
      __chkstk_darwin(v20);
      v32[-2] = v27;

      sub_1001F1160(&qword_100AF2E10);
      sub_100005920(&qword_100AF2E18, &qword_100AF2E10);
      sub_10079E054();
      v28 = v33;
      v29 = v36;
      (*(v33 + 16))(v35, v8, v36);
      swift_storeEnumTagMultiPayload();
      sub_100005920(&qword_100AF2E00, &qword_100AF2DD0);
      sub_1006CD20C();
      sub_10079CCA4();
      (*(v28 + 8))(v8, v29);
      v23 = 0;
    }

    v30 = sub_1001F1160(&qword_100AF2DE8);
    (*(*(v30 - 8) + 56))(v11, v23, 1, v30);
    v18 = &qword_100AF2DD8;
    sub_1000077D8(v11, v14, &qword_100AF2DD8);
    swift_storeEnumTagMultiPayload();
    sub_10031A818();
    sub_1006CD0D0();
    sub_10079CCA4();
    v19 = v11;
  }

  return sub_100007840(v19, v18);
}

uint64_t sub_1006CC910@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_10079DF84();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100ADBD70);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = (&v27 - v7);
  v9 = sub_1001F1160(&qword_100ADBD78);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v13 = sub_10079DF24();
  type metadata accessor for ThemeFontRow();
  sub_1001F1160(qword_100ADC258);
  sub_10079BDF4();
  v14.n128_f64[0] = v28;
  v15 = &enum case for Image.Scale.small(_:);
  if (v28 <= 2.0)
  {
    v15 = &enum case for Image.Scale.large(_:);
  }

  (*(v2 + 104))(v4, *v15, v1, v14);
  KeyPath = swift_getKeyPath();
  v17 = (v8 + *(v6 + 44));
  v18 = sub_1001F1160(&qword_100AEE3C0);
  (*(v2 + 32))(v17 + *(v18 + 28), v4, v1);
  *v17 = KeyPath;
  *v8 = v13;
  v19 = sub_10079DE34();
  v20 = swift_getKeyPath();
  sub_10020B3C8(v8, v12, &qword_100ADBD70);
  v21 = &v12[*(v10 + 44)];
  *v21 = v20;
  v21[1] = v19;
  sub_10079D374();
  sub_10079D3F4();
  v22 = sub_10079D464();

  v23 = swift_getKeyPath();
  v24 = v27;
  sub_10020B3C8(v12, v27, &qword_100ADBD78);
  result = sub_1001F1160(&qword_100ADBD80);
  v26 = (v24 + *(result + 36));
  *v26 = v23;
  v26[1] = v22;
  return result;
}

uint64_t sub_1006CCC00@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10079DF84();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  if ((*(v1 + 48) & 1) != 0 || *(v1 + 49) == 1)
  {
    v10 = sub_10079DF24();
    v11 = sub_10079DE34();
    KeyPath = swift_getKeyPath();
    type metadata accessor for ThemeFontRow();
    sub_1001F1160(qword_100ADC258);
    sub_10079BDF4();
    v13 = v20;
  }

  else
  {
    v10 = sub_10079DF24();
    v11 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
    KeyPath = swift_getKeyPath();
    type metadata accessor for ThemeFontRow();
    sub_1001F1160(qword_100ADC258);
    sub_10079BDF4();
    v13 = v20;
    v9 = v6;
  }

  v14 = &enum case for Image.Scale.small(_:);
  if (v13 <= 2.0)
  {
    v14 = &enum case for Image.Scale.large(_:);
  }

  (*(v4 + 104))(v9, *v14, v3);
  v15 = swift_getKeyPath();
  v16 = (a1 + *(sub_1001F1160(&qword_100AE74A0) + 36));
  v17 = sub_1001F1160(&qword_100AEE3C0);
  result = (*(v4 + 32))(v16 + *(v17 + 28), v9, v3);
  *v16 = v15;
  *a1 = v10;
  a1[1] = KeyPath;
  a1[2] = v11;
  return result;
}

uint64_t sub_1006CCE6C@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  *a1 = sub_10079E474();
  a1[1] = v4;
  v5 = sub_1001F1160(&qword_100AF2E20);
  return sub_1006CCEC4(a1 + *(v5 + 44), a2);
}

uint64_t sub_1006CCEC4@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = sub_1001F1160(&qword_100ADBD70);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v19 - v9);
  v11 = sub_10079DE34();
  v12 = sub_10079DF24();
  v13 = (v10 + *(v5 + 44));
  v14 = *(sub_1001F1160(&qword_100AEE3C0) + 28);
  v15 = enum case for Image.Scale.small(_:);
  v16 = sub_10079DF84();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = swift_getKeyPath();
  *v10 = v12;
  sub_1000077D8(v10, v7, &qword_100ADBD70);
  *a1 = a2;
  *(a1 + 8) = v11;
  *(a1 + 16) = xmmword_10083EDA0;
  v17 = sub_1001F1160(&qword_100AF2E28);
  sub_1000077D8(v7, a1 + *(v17 + 48), &qword_100ADBD70);

  sub_100007840(v10, &qword_100ADBD70);
  sub_100007840(v7, &qword_100ADBD70);
}

unint64_t sub_1006CD0D0()
{
  result = qword_100AF2DF0;
  if (!qword_100AF2DF0)
  {
    sub_1001F1234(&qword_100AF2DD8);
    sub_1006CD154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2DF0);
  }

  return result;
}

unint64_t sub_1006CD154()
{
  result = qword_100AF2DF8;
  if (!qword_100AF2DF8)
  {
    sub_1001F1234(&qword_100AF2DE8);
    sub_100005920(&qword_100AF2E00, &qword_100AF2DD0);
    sub_1006CD20C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2DF8);
  }

  return result;
}

unint64_t sub_1006CD20C()
{
  result = qword_100AF2E08;
  if (!qword_100AF2E08)
  {
    sub_1001F1234(&qword_100AE74A0);
    sub_10024AB60();
    sub_100005920(&unk_100AD1D00, &qword_100AEE3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2E08);
  }

  return result;
}

unint64_t sub_1006CD2CC()
{
  result = qword_100AF2E30;
  if (!qword_100AF2E30)
  {
    sub_1001F1234(&qword_100AF2D98);
    sub_1006CD384();
    sub_100005920(&qword_100AD53F8, &qword_100ADB9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2E30);
  }

  return result;
}

unint64_t sub_1006CD384()
{
  result = qword_100AF2E38;
  if (!qword_100AF2E38)
  {
    sub_1001F1234(&qword_100AF2D90);
    sub_1006CD410();
    sub_100460338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2E38);
  }

  return result;
}

unint64_t sub_1006CD410()
{
  result = qword_100AF2E40;
  if (!qword_100AF2E40)
  {
    sub_1001F1234(&qword_100AF2D70);
    sub_1001F1234(&qword_100AF2D60);
    sub_100005920(&qword_100AF2D88, &qword_100AF2D60);
    swift_getOpaqueTypeConformance2();
    sub_1006CD53C(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2E40);
  }

  return result;
}

uint64_t sub_1006CD53C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1006CD584()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [*(Strong + OBJC_IVAR____TtC5Books27LightLevelControllerWrapper_lightLevelController) isLowLight];
    sub_10079B8F4();
  }
}

uint64_t sub_1006CD608(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a3;
    sub_1000076D4(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v6 = a2;
  swift_unknownObjectRetain();
  v5(a2, v10);

  return sub_1000230BC(v10);
}

id sub_1006CD6B0()
{
  [*&v0[OBJC_IVAR____TtC5Books27LightLevelControllerWrapper_lightLevelController] removeObserver:v0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LightLevelControllerWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006CD81C()
{
  sub_1001F1160(&unk_100AD1E40);
  sub_100437DF0();
  return sub_10079BA14();
}

uint64_t sub_1006CD88C()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, static Logger.finishedStateManager);
  sub_100008B98(v0, static Logger.finishedStateManager);
  return sub_10079ACD4();
}

uint64_t Logger.finishedStateManager.unsafeMutableAddressor()
{
  if (qword_100AD1AF0 != -1)
  {
    swift_once();
  }

  v0 = sub_10079ACE4();

  return sub_100008B98(v0, static Logger.finishedStateManager);
}

uint64_t static Logger.finishedStateManager.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD1AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_10079ACE4();
  v3 = sub_100008B98(v2, static Logger.finishedStateManager);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id DownloadPurchaseMonitor.init()()
{
  v12 = sub_1007A2D64();
  v0 = *(v12 - 8);
  __chkstk_darwin(v12);
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1007A2CF4();
  __chkstk_darwin(v3);
  v4 = sub_1007A1CA4();
  __chkstk_darwin(v4 - 8);
  v11 = OBJC_IVAR___BKDownloadPurchaseMonitor_queue;
  v10[1] = sub_10000A7C4(0, &qword_100AD1E10);
  sub_1007A1C74();
  v15 = _swiftEmptyArrayStorage;
  sub_1006D008C(&qword_100AE8220, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001F1160(&unk_100AD1E20);
  sub_100609AA4(&qword_100AE8230, &unk_100AD1E20);
  sub_1007A3594();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  v5 = sub_1007A2DA4();
  v6 = v13;
  *&v13[v11] = v5;
  *&v6[OBJC_IVAR___BKDownloadPurchaseMonitor_purchaseAttempts] = _swiftEmptyDictionarySingleton;
  v7 = v6;
  v8 = type metadata accessor for DownloadPurchaseMonitor();
  v14.receiver = v7;
  v14.super_class = v8;
  return objc_msgSendSuper2(&v14, "init");
}

void sub_1006CDD28(SEL *a1)
{
  v3 = [objc_opt_self() sharedInstance];
  if (v3)
  {
    v4 = v3;
    [v3 *a1];
  }

  else
  {
    __break(1u);
  }
}

void sub_1006CDDA8(void *a1, uint64_t a2, SEL *a3)
{
  v5 = objc_opt_self();
  v8 = a1;
  v6 = [v5 sharedInstance];
  if (v6)
  {
    v7 = v6;
    [v6 *a3];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1006CDE44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = OBJC_IVAR___BKDownloadPurchaseMonitor_purchaseAttempts;
  swift_beginAccess();
  v11 = *(a1 + v10);
  if (!*(v11 + 16))
  {
    goto LABEL_5;
  }

  v12 = sub_10000E53C(a2, a3);
  if ((v13 & 1) == 0)
  {

LABEL_5:
    v17 = [a5 isAudiobook];
    v18 = a4;

    v15 = a3;
    v16 = a2;
    goto LABEL_6;
  }

  v14 = *(v11 + 56) + 32 * v12;
  v16 = *v14;
  v15 = *(v14 + 8);
  a4 = *(v14 + 16);
  v17 = *(v14 + 24);
  v18 = a4;

LABEL_6:
  swift_beginAccess();

  v19 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(a1 + v10);
  *(a1 + v10) = 0x8000000000000000;
  sub_1002F73DC(v16, v15, a4, v17, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + v10) = v22;
  swift_endAccess();
}

uint64_t sub_1006CE148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  v9 = sub_100798034();
  v8[14] = v9;
  v10 = *(v9 - 8);
  v8[15] = v10;
  v8[16] = *(v10 + 64);
  v8[17] = swift_task_alloc();
  sub_1007A26F4();
  v8[18] = sub_1007A26E4();
  v12 = sub_1007A2694();

  return _swift_task_switch(sub_1006CE24C, v12, v11);
}

uint64_t sub_1006CE24C()
{

  v1 = [objc_opt_self() delegate];
  v2 = [v1 serviceCenter];

  v0[8] = type metadata accessor for ReadingActivityService();
  sub_1001F1160(&qword_100AF2EC0);
  v3 = sub_1007A22E4();
  v5 = sub_10057FAF8(v3, v4);

  if (v5)
  {
    v7 = v0[17];
    v9 = v0[14];
    v8 = v0[15];
    v10 = v0[13];
    v22 = v0[12];
    v11 = v0[11];
    v21 = v0[10];
    v12 = v0[9];

    v23 = [objc_opt_self() defaultManager];
    (*(v8 + 16))(v7, v10, v9);
    v13 = (*(v8 + 80) + 56) & ~*(v8 + 80);
    v14 = swift_allocObject();
    v15 = v12;
    *(v14 + 2) = v12;
    *(v14 + 3) = v21;
    *(v14 + 4) = v11;
    *(v14 + 5) = v5;
    *(v14 + 6) = v22;
    (*(v8 + 32))(&v14[v13], v7, v9);
    v0[6] = sub_1006D0000;
    v0[7] = v14;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100201C54;
    v0[5] = &unk_100A2D118;
    v16 = _Block_copy(v0 + 2);
    v17 = v22;
    v18 = v15;

    v19 = v5;

    [v23 performBlockOnWorkerQueue:v16];
    _Block_release(v16);

    v20 = v0[1];

    return v20();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006CE4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a7;
  v44 = a6;
  v45 = a5;
  v10 = sub_1001F1160(&qword_100AE2578);
  __chkstk_darwin(v10 - 8);
  v12 = v40 - v11;
  v13 = sub_100797D94();
  v42 = *(v13 - 8);
  __chkstk_darwin(v13);
  v41 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100798234();
  v15 = *(v46 - 8);
  __chkstk_darwin(v46);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v18 - 8);
  v20 = v40 - v19;
  v21 = [objc_opt_self() defaultManager];
  v22 = sub_1007A2214();
  v47 = [v21 libraryMutableAssetWithPermanentOrTemporaryAssetID:v22 inManagedObjectContext:a1];

  if (v47)
  {
    if (([v47 isFinished]& 1) != 0)
    {
      [v47 setFinishedStateUserSetsUnfinished];
      v23 = [v47 permanentOrTemporaryAssetID];
      sub_1007A2254();

      v24 = [v47 dateFinished];
      if (v24)
      {
        v25 = v24;
        sub_100796B64();

        v26 = sub_100796BB4();
        (*(*(v26 - 8) + 56))(v20, 0, 1, v26);
      }

      else
      {
        v31 = sub_100796BB4();
        (*(*(v31 - 8) + 56))(v20, 1, 1, v31);
      }

      v40[2] = a3;
      v40[3] = a4;
      if (*(v45 + OBJC_IVAR___BKReadingActivityService_achievementsController))
      {

        sub_10079EAD4();

        sub_100007840(v20, &unk_100ADB5C0);
        sub_100798004();
        v32 = sub_100797FF4();
        v40[1] = sub_1007A2254();
        v33 = v17;
        (*(v15 + 104))(v17, enum case for ContentAcquisitionType.storeBought(_:), v46);
        v35 = v41;
        v34 = v42;
        (*(v42 + 104))(v41, enum case for ContentType.unknown(_:), v13);
        v36 = enum case for SeriesType.unknown(_:);
        v37 = sub_100797D14();
        v38 = *(v37 - 8);
        v45 = v13;
        v39 = v38;
        (*(v38 + 104))(v12, v36, v37);
        (*(v39 + 56))(v12, 0, 1, v37);
        v48 = 1;
        sub_100797EE4();

        sub_100007840(v12, &qword_100AE2578);
        (*(v34 + 8))(v35, v45);
        (*(v15 + 8))(v33, v46);
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  else
  {
    if (qword_100AD1AF0 != -1)
    {
      swift_once();
    }

    v27 = sub_10079ACE4();
    sub_100008B98(v27, static Logger.finishedStateManager);
    v47 = sub_10079ACC4();
    v28 = sub_1007A29B4();
    if (os_log_type_enabled(v47, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v47, v28, "asset lookup failed", v29, 2u);
    }
  }

  v30 = v47;
}

void sub_1006CEAF0(char a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_100AD1AF0 != -1)
    {
      swift_once();
    }

    v2 = sub_10079ACE4();
    sub_100008B98(v2, static Logger.finishedStateManager);
    swift_errorRetain();
    oslog = sub_10079ACC4();
    v3 = sub_1007A29B4();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, oslog, v3, "purchasing book: unable to determine isTrackedAsRecent %@", v4, 0xCu);
      sub_100007840(v5, &unk_100AD9480);
    }
  }

  else if (a1)
  {
    v7 = [objc_opt_self() defaultManager];
    v8 = [v7 collectionController];

    v9 = sub_1007A2214();
    v10 = kBKCollectionDefaultIDWantToRead;
    aBlock[4] = sub_1006CED6C;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002D63C0;
    aBlock[3] = &unk_100A2D0C8;
    v11 = _Block_copy(aBlock);
    v12 = v10;
    [v8 removeAssetID:v9 fromCollectionID:v12 completion:v11];
    _Block_release(v11);
    swift_unknownObjectRelease();
  }
}

void sub_1006CED6C(char a1, uint64_t a2)
{
  if (a2 || (a1 & 1) == 0)
  {
    if (qword_100AD1AF0 != -1)
    {
      swift_once();
    }

    v6 = sub_10079ACE4();
    sub_100008B98(v6, static Logger.finishedStateManager);
    swift_errorRetain();
    oslog = sub_10079ACC4();
    v7 = sub_1007A29B4();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      if (a2)
      {
        swift_errorRetain();
        v10 = _swift_stdlib_bridgeErrorToNSError();
        v11 = v10;
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }

      *(v8 + 4) = v10;
      *v9 = v11;
      _os_log_impl(&_mh_execute_header, oslog, v7, "purchasing book: isTrackedAsRecent, unable to remove from WTR %@", v8, 0xCu);
      sub_100007840(v9, &unk_100AD9480);

      goto LABEL_14;
    }
  }

  else
  {
    if (qword_100AD1AF0 != -1)
    {
      swift_once();
    }

    v3 = sub_10079ACE4();
    sub_100008B98(v3, static Logger.finishedStateManager);
    oslog = sub_10079ACC4();
    v4 = sub_1007A29D4();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "purchasing book: isTrackedAsRecent, removed from WTR", v5, 2u);
LABEL_14:
    }
  }
}

id DownloadPurchaseMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownloadPurchaseMonitor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1006CF000(void *a1)
{
  v2 = v1;
  v4 = sub_1007A1C54();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007A1CA4();
  __chkstk_darwin(v8);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v38 = v10;
    v39 = v9;
    v40 = v5;
    v13 = a1;
    v14 = [v13 storeIdentifier];
    v15 = [v14 stringValue];

    v16 = sub_1007A2254();
    v36 = v17;
    v37 = v16;

    v18 = [v13 analyticsInfo];
    v19 = sub_1007A2044();

    sub_100798454();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = NSStringFromClass(ObjCClassFromMetadata);
    v22 = sub_1007A2254();
    v24 = v23;

    v43[0] = v22;
    v43[1] = v24;
    sub_1007A36B4();
    if (*(v19 + 16) && (v25 = sub_10000E2A4(aBlock), (v26 & 1) != 0))
    {
      sub_100007484(*(v19 + 56) + 32 * v25, v43);
      sub_10002899C(aBlock);

      if (swift_dynamicCast())
      {
        v27 = v41;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {

      sub_10002899C(aBlock);
      v27 = 0;
    }

    v35[1] = *&v2[OBJC_IVAR___BKDownloadPurchaseMonitor_queue];
    v28 = swift_allocObject();
    v29 = v36;
    v30 = v37;
    v28[2] = v2;
    v28[3] = v30;
    v28[4] = v29;
    v28[5] = v27;
    v28[6] = v13;
    aBlock[4] = sub_1006D007C;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A2D168;
    v31 = _Block_copy(aBlock);
    v32 = v27;
    v33 = v13;
    v34 = v2;
    sub_1007A1C74();
    v43[0] = _swiftEmptyArrayStorage;
    sub_1006D008C(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0);
    sub_100609AA4(&qword_100ADA680, &unk_100AD7CA0);
    sub_1007A3594();
    sub_1007A2D94();
    _Block_release(v31);

    (*(v40 + 8))(v7, v4);
    (*(v38 + 8))(v12, v39);
  }
}

void sub_1006CF44C(void *a1)
{
  v2 = v1;
  v4 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v76[-v5];
  v7 = sub_100798034();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  __chkstk_darwin(v7);
  v10 = &v76[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v14 = &v76[-v13];
  if (!a1)
  {
    goto LABEL_22;
  }

  v85 = v12;
  v15 = a1;
  v16 = [v15 storeID];
  if (!v16)
  {

LABEL_22:
    if (qword_100AD1AF0 != -1)
    {
      swift_once();
    }

    v54 = sub_10079ACE4();
    sub_100008B98(v54, static Logger.finishedStateManager);
    v87 = sub_10079ACC4();
    v55 = sub_1007A29B4();
    if (os_log_type_enabled(v87, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v87, v55, "purchase completed with no purchase response", v56, 2u);
    }

    v57 = v87;

    return;
  }

  v84 = v14;
  v87 = v15;
  v17 = v16;
  v18 = [v16 stringValue];

  v19 = v18;
  if (!v18)
  {
    sub_1007A2254();
    v19 = sub_1007A2214();
  }

  v86 = v19;
  v20 = sub_1007A2254();
  v22 = v21;
  v23 = OBJC_IVAR___BKDownloadPurchaseMonitor_purchaseAttempts;
  swift_beginAccess();
  v24 = *&v2[v23];
  v25 = *(v24 + 16);

  if (v25 && (v26 = v2, v27 = sub_10000E53C(v20, v22), (v28 & 1) != 0))
  {
    v81 = v8;
    v29 = *(v24 + 56) + 32 * v27;
    v31 = *(v29 + 8);
    v30 = *(v29 + 16);
    v77 = *(v29 + 24);
    v78 = v30;
    v82 = v30;
    v83 = v31;

    swift_beginAccess();
    v79 = v20;
    v32 = sub_1002EF674(v20, v22);
    v34 = v33;
    v36 = v35;
    swift_endAccess();
    sub_1006CFE8C(v32, v34, v36);
    v37 = v87;
    v38 = [v87 purchaseResponseItems];
    if (!v38)
    {

      return;
    }

    v39 = v38;
    v40 = v82;
    v80 = v22;
    sub_10000A7C4(0, &qword_100ADD580);
    v41 = sub_1007A25E4();

    v42 = v86;
    if (v41 >> 62)
    {
      v43 = sub_1007A38D4();
    }

    else
    {
      v43 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = v26;
    v45 = v81;
    if (!v43)
    {

      return;
    }

    if ((v41 & 0xC000000000000001) != 0)
    {
      v46 = sub_1007A3784();
    }

    else
    {
      if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v46 = *(v41 + 32);
    }

    v47 = v46;

    if ([v47 isPurchaseRedownload])
    {
    }

    else
    {
      v81 = v47;
      if (v77)
      {
        v58 = [v87 hasRacGUID];
        v59 = v80;
        v60 = v84;
        if (v58)
        {
          v61 = &enum case for ProductionType.sgProduction(_:);
        }

        else
        {
          v61 = &enum case for ProductionType.nonSGProduction(_:);
        }

        (*(v45 + 13))(v84, *v61, v85);
      }

      else
      {
        v60 = v84;
        (*(v45 + 13))(v84, enum case for ProductionType.unknown(_:), v85);
        v59 = v80;
      }

      v62 = sub_1007A2744();
      (*(*(v62 - 8) + 56))(v6, 1, 1, v62);
      v63 = v85;
      (*(v45 + 2))(v10, v60, v85);
      sub_1007A26F4();
      v82 = v40;
      v64 = v44;

      v65 = sub_1007A26E4();
      v66 = v45;
      v67 = (v45[80] + 64) & ~v45[80];
      v68 = swift_allocObject();
      *(v68 + 2) = v65;
      *(v68 + 3) = &protocol witness table for MainActor;
      v69 = v78;
      v70 = v79;
      *(v68 + 4) = v64;
      *(v68 + 5) = v70;
      *(v68 + 6) = v59;
      *(v68 + 7) = v69;
      (*(v66 + 4))(&v68[v67], v10, v63);
      sub_1003457A0(0, 0, v6, &unk_10083F0C0, v68);

      v71 = [objc_opt_self() defaultManager];
      v72 = swift_allocObject();
      v72[2] = v64;
      v72[3] = v70;
      v72[4] = v59;
      aBlock[4] = sub_1006CFFEC;
      aBlock[5] = v72;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1002D63C0;
      aBlock[3] = &unk_100A2D0A0;
      v73 = _Block_copy(aBlock);
      v74 = v64;

      v75 = v86;
      [v71 isTrackedAsRecent:v86 completion:v73];

      _Block_release(v73);

      (*(v66 + 1))(v84, v63);
    }
  }

  else
  {

    if (qword_100AD1AF0 != -1)
    {
      swift_once();
    }

    v48 = sub_10079ACE4();
    sub_100008B98(v48, static Logger.finishedStateManager);
    v49 = sub_10079ACC4();
    v50 = sub_1007A29B4();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v87;
    if (v51)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "could not find purchase attempt", v53, 2u);
    }
  }
}

void sub_1006CFCA8(void *a1)
{
  if (a1)
  {
    v12 = a1;
    v1 = [v12 storeID];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 stringValue];

      v4 = sub_1007A2254();
      v6 = v5;

      swift_beginAccess();
      v7 = sub_1002EF674(v4, v6);
      v9 = v8;
      v11 = v10;
      swift_endAccess();
      sub_1006CFE8C(v7, v9, v11);
    }

    else
    {
    }
  }
}

uint64_t sub_1006CFDC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t sub_1006CFE24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1006CFE8C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_1006CFED4(uint64_t a1)
{
  v4 = *(sub_100798034() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10002812C;

  return sub_1006CE148(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

void sub_1006D0000(uint64_t a1)
{
  v3 = *(sub_100798034() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  sub_1006CE4D8(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1006D008C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006D00EC()
{
  sub_10002B130(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1006D0148(uint64_t a1)
{
  v2 = sub_100796594();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_100796564();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1006D023C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v5 = sub_1007A1D04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100796594();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  (*(v10 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v16;
  *(v13 + 24) = a3;
  (*(v10 + 32))(v13 + v12, &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  sub_100017E74();

  *v8 = sub_1007A2D74();
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  LOBYTE(a3) = sub_1007A1D34();
  result = (*(v6 + 8))(v8, v5);
  if (a3)
  {

    (*(v13 + 16))(v13 + v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t PresentationDonationItem.Intent.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1006D04AC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id sub_1006D0664(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1006D06C4()
{
  result = qword_100AF2F88;
  if (!qword_100AF2F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2F88);
  }

  return result;
}

uint64_t sub_1006D07CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t sub_1006D0890()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t sub_1006D0954()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t ReportIssueViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC5Books20ReportIssueViewModel__disableSendButton;
  v2 = sub_1001F1160(&qword_100AD50E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Books20ReportIssueViewModel__items;
  v4 = sub_1001F1160(&qword_100AF3050);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC5Books20ReportIssueViewModel__selectedItemID;
  v6 = sub_1001F1160(&unk_100AD5110);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

uint64_t ReportIssueViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC5Books20ReportIssueViewModel__disableSendButton;
  v2 = sub_1001F1160(&qword_100AD50E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Books20ReportIssueViewModel__items;
  v4 = sub_1001F1160(&qword_100AF3050);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC5Books20ReportIssueViewModel__selectedItemID;
  v6 = sub_1001F1160(&unk_100AD5110);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_1006D0C34()
{
  v18 = sub_1001F1160(&unk_100AD5110);
  v1 = *(v18 - 8);
  __chkstk_darwin(v18);
  v3 = &v17 - v2;
  v4 = sub_1001F1160(&qword_100AF3050);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v8 = sub_1001F1160(&qword_100AD50E0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  v12 = OBJC_IVAR____TtC5Books20ReportIssueViewModel__disableSendButton;
  LOBYTE(v19) = 1;
  sub_10079B964();
  (*(v9 + 32))(v0 + v12, v11, v8);
  v13 = OBJC_IVAR____TtC5Books20ReportIssueViewModel__items;
  v19 = _swiftEmptyArrayStorage;
  sub_1001F1160(&qword_100AF6600);
  sub_10079B964();
  (*(v5 + 32))(v0 + v13, v7, v4);
  v14 = OBJC_IVAR____TtC5Books20ReportIssueViewModel__selectedItemID;
  v19 = 0;
  v20 = 0;
  sub_1001F1160(&qword_100AD4F30);
  sub_10079B964();
  (*(v1 + 32))(v0 + v14, v3, v18);
  v15 = (v0 + OBJC_IVAR____TtC5Books20ReportIssueViewModel_textEntered);
  *v15 = 0;
  v15[1] = 0;
  return v0;
}

uint64_t type metadata accessor for ReportIssueViewModel()
{
  result = qword_100AF3088;
  if (!qword_100AF3088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006D0F40()
{
  sub_1004B6D70();
  if (v0 <= 0x3F)
  {
    sub_100205CB8(319, &unk_100AF3098, &qword_100AF6600);
    if (v1 <= 0x3F)
    {
      sub_100205CB8(319, &qword_100AD4F28, &qword_100AD4F30);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

Swift::Int sub_1006D108C()
{
  v1 = *(v0 + 64);
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  sub_1007A3C24(v1);
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  return sub_1007A3C44();
}

uint64_t sub_1006D1158()
{
  v1 = *(v0 + 64);
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  sub_1007A3C24(v1);

  return _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_1006D1218()
{
  v1 = *(v0 + 64);
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  sub_1007A3C24(v1);
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  return sub_1007A3C44();
}

uint64_t sub_1006D12E0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1007A3AB4();
  }
}

unint64_t sub_1006D1314()
{
  result = qword_100AF3130;
  if (!qword_100AF3130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3130);
  }

  return result;
}

uint64_t sub_1006D1368(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v15 = _swiftEmptyArrayStorage;
  sub_1003BD200(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  v8 = (a3 + 32);
  while (1)
  {
    v9 = *v8++;
    v14 = v9;
    a1(&v14);
    if (v3)
    {
      break;
    }

    v15 = v5;
    v11 = v5[2];
    v10 = v5[3];
    v12 = v11 + 1;
    if (v11 >= v10 >> 1)
    {
      sub_1003BD200((v10 > 1), v11 + 1, 1);
      v5 = v15;
    }

    v5[2] = v12;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

size_t sub_1006D1460(void (*a1)(id *, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v22 = a1;
  v23 = a2;
  v6 = type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
  v21 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1007A38D4())
  {
    v10 = _swiftEmptyArrayStorage;
    if (!i)
    {
      return v10;
    }

    v26 = _swiftEmptyArrayStorage;
    result = sub_1003BD9BC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v12 = 0;
    v10 = v26;
    v19 = i;
    v20 = a3 & 0xC000000000000001;
    v18 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v20)
      {
        v14 = sub_1007A3784();
      }

      else
      {
        if (v12 >= *(v18 + 16))
        {
          goto LABEL_19;
        }

        v14 = *(a3 + 8 * v12 + 32);
      }

      v15 = v14;
      v25 = v14;
      v22(&v25, &v24);
      if (v4)
      {

        return v10;
      }

      v4 = 0;

      v26 = v10;
      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        sub_1003BD9BC(v16 > 1, v17 + 1, 1);
        v10 = v26;
      }

      v10[2] = v17 + 1;
      sub_1005F5308(v8, v10 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v17);
      ++v12;
      if (v13 == v19)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_1006D1688(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;

      v5(&v7);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1006D1720(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v20 = sub_10079A984();
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  v17 = v5 + 16;
  v19 = (v5 + 8);
  v21 = a3;

  v14 = 0;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
      v16 = v20;
LABEL_9:
      (*(v5 + 16))(v7, *(v21 + 48) + *(v5 + 72) * (__clz(__rbit64(v11)) | (v15 << 6)), v16);
      v18(v7);
      if (v3)
      {
        break;
      }

      v11 &= v11 - 1;
      result = (*v19)(v7, v16);
      v14 = v15;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    (*v19)(v7, v16);
  }

  else
  {
LABEL_5:
    v16 = v20;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
      }

      v11 = *(v8 + 8 * v15);
      ++v14;
      if (v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1006D191C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_10079A084();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_100796C04();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_10079A7A4();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v7 = sub_100799B14();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  v8 = type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
  v3[19] = v8;
  v3[20] = *(v8 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v9 = sub_10079A984();
  v3[23] = v9;
  v3[24] = *(v9 - 8);
  v3[25] = swift_task_alloc();
  v10 = sub_10079A4B4();
  v3[26] = v10;
  v3[27] = *(v10 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return _swift_task_switch(sub_1006D1C2C, 0, 0);
}

uint64_t sub_1006D1C2C()
{
  v0[2] = _swiftEmptyDictionarySingleton;
  v1 = _swiftEmptyArrayStorage;
  v0[3] = _swiftEmptyArrayStorage;
  v2 = v0[4];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[27];
    v6 = *(v4 + 16);
    v5 = v4 + 16;
    v15 = v6;
    v16 = (v0 + 3);
    v7 = v2 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v14 = *(v5 + 56);
    do
    {
      v8 = v0[30];
      v9 = v0[26];
      v15(v8, v7, v9);
      v10 = sub_10079A474();
      v11 = swift_task_alloc();
      v11[2] = v0 + 2;
      v11[3] = v8;
      v11[4] = v16;
      sub_1006D1720(sub_1006D3774, v11, v10);

      (*(v5 - 8))(v8, v9);
      v7 += v14;
      --v3;
    }

    while (v3);
    sub_10079A484();
    v1 = *v16;
  }

  v0[31] = v1;
  v12 = swift_task_alloc();
  v0[32] = v12;
  *v12 = v0;
  v12[1] = sub_1006D1DF0;

  return sub_1006D6014(v1);
}

uint64_t sub_1006D1DF0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {
    v4 = sub_1006D2634;
  }

  else
  {
    v4 = sub_1006D1F04;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_1006D1F04()
{
  v1 = v0[31];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[33];
    v5 = v0[24];
    v81 = v0[20];
    v66 = v0[19];
    v85 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v73 = (v0[14] + 8);
    v74 = (v0[17] + 8);
    v75 = v0[27];
    v69 = (v75 + 8);
    v6 = (v5 + 8);
    v67 = v0[8];
    v65 = v0[11];
    v7 = _swiftEmptyDictionarySingleton;
    v71 = *(v1 + 16);
    v72 = v0[31];
    v70 = v4;
    v80 = v5;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return;
      }

      (*(v5 + 16))(v0[25], v85 + *(v5 + 72) * v3, v0[23]);
      v8 = sub_10079A964();
      if (*(v4 + 16))
      {
        v9 = v8;
        v10 = sub_1002F9CDC(v8);
        if (v11)
        {
          break;
        }
      }

      (*v6)(v0[25], v0[23]);
LABEL_4:
      if (++v3 == v2)
      {

        v84 = v7;
        goto LABEL_39;
      }
    }

    v12 = v0[21];
    v13 = v0[22];
    sub_1006D7714(*(v4 + 56) + *(v81 + 72) * v10, v12);
    sub_1005F5308(v12, v13);
    v14 = v0[2];
    if (!*(v14 + 16) || (v15 = sub_1002F9CDC(v9), (v16 & 1) == 0))
    {
      v44 = v0[25];
      v45 = v0[23];
      sub_1006D7778(v0[22]);
      (*v6)(v44, v45);
LABEL_34:
      v5 = v80;
      goto LABEL_4;
    }

    v82 = v7;
    v18 = v0[28];
    v17 = v0[29];
    v19 = v0[26];
    v20 = v0[18];
    v21 = v0[15];
    v76 = v0[16];
    v78 = v0[13];
    (*(v75 + 16))(v18, *(v14 + 56) + *(v75 + 72) * v15, v19);
    (*(v75 + 32))(v17, v18, v19);
    v22 = sub_10079A494();
    sub_10079A064();
    sub_100799AE4();
    (*v74)(v20, v76);
    v23 = sub_10079A5F4();
    (*v73)(v21, v78);
    if (*(v22 + 16))
    {
      v24 = sub_1007A3BF4();
      v25 = -1 << *(v22 + 32);
      v26 = v24 & ~v25;
      if ((*(v22 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
      {
        v27 = ~v25;
        while (*(*(v22 + 48) + 8 * v26) != v23)
        {
          v26 = (v26 + 1) & v27;
          if (((*(v22 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v29 = v0[22];
        goto LABEL_33;
      }
    }

LABEL_15:

    v28 = sub_10079A484();
    v29 = v0[22];
    if (v28 & 1) == 0 && (*(v29 + *(v66 + 20)))
    {
LABEL_33:
      v7 = v82;
      v4 = v70;
      v2 = v71;
      v62 = v0[25];
      v63 = v0[23];
      (*v69)(v0[29], v0[26]);
      sub_1006D7778(v29);
      (*v6)(v62, v63);
      v1 = v72;
      goto LABEL_34;
    }

    v30 = v0[12];
    v31 = v0[9];
    v32 = v0[7];
    sub_10079A4A4();
    (*(v67 + 16))(v31, v29, v32);
    v33 = v82;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = sub_1002EC564(v30);
    v37 = v82[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_46;
    }

    v40 = v35;
    if (v82[3] < v39)
    {
      v41 = v0[12];
      sub_1003D9108(v39, isUniquelyReferenced_nonNull_native);
      v33 = v82;
      v42 = sub_1002EC564(v41);
      if ((v40 & 1) != (v43 & 1))
      {

        sub_1007A3B24();
        return;
      }

      v36 = v42;
      if (v40)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v35 & 1) == 0)
      {
LABEL_25:
        v46 = v0[12];
        v47 = v0[10];
        v33[(v36 >> 6) + 8] |= 1 << v36;
        (*(v65 + 16))(v33[6] + *(v65 + 72) * v36, v46, v47);
        *(v33[7] + 8 * v36) = _swiftEmptyArrayStorage;
        v48 = v33[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_47;
        }

        v33[2] = v50;
      }
    }

    else
    {
      sub_1002F3C08();
      v33 = v82;
      if ((v40 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

LABEL_27:
    v51 = v33[7];
    v52 = *(v51 + 8 * v36);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    *(v51 + 8 * v36) = v52;
    if ((v53 & 1) == 0)
    {
      v52 = sub_10066C9C4(0, v52[2] + 1, 1, v52);
      *(v51 + 8 * v36) = v52;
    }

    v83 = v33;
    v55 = v52[2];
    v54 = v52[3];
    if (v55 >= v54 >> 1)
    {
      *(v51 + 8 * v36) = sub_10066C9C4(v54 > 1, v55 + 1, 1, v52);
    }

    v68 = v51;
    v56 = v0[29];
    v58 = v0[25];
    v57 = v0[26];
    v60 = v0[22];
    v59 = v0[23];
    v79 = v0[9];
    v77 = v0[7];
    (*(v65 + 8))(v0[12], v0[10]);
    (*v69)(v56, v57);
    sub_1006D7778(v60);
    (*v6)(v58, v59);
    v61 = *(v68 + 8 * v36);
    *(v61 + 16) = v55 + 1;
    (*(v67 + 32))(v61 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v55, v79, v77);
    v7 = v83;
    v2 = v71;
    v1 = v72;
    v4 = v70;
    goto LABEL_34;
  }

  v84 = _swiftEmptyDictionarySingleton;
LABEL_39:

  v64 = v0[1];

  v64(v84);
}

uint64_t sub_1006D2634()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006D2730(uint64_t a1, uint64_t a2, uint64_t a3, size_t *a4)
{
  v44 = a4;
  v40 = a3;
  v41 = a2;
  v45 = sub_10079A984();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v46 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F1160(&qword_100AED498);
  __chkstk_darwin(v6 - 8);
  v39 = &v39 - v7;
  v8 = sub_10079A6D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F1160(&qword_100AEE558);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - v13;
  v15 = sub_10079A8B4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v39 - v20;
  v42 = a1;
  sub_10079A974();
  sub_10079A684();
  (*(v9 + 8))(v11, v8);
  v22 = sub_10079A674();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v14, 1, v22) == 1)
  {
    return sub_100007840(v14, &qword_100AEE558);
  }

  sub_10079A634();
  (*(v23 + 8))(v14, v22);
  (*(v16 + 32))(v21, v18, v15);
  if ((sub_10079A8A4() & 1) == 0)
  {
    return (*(v16 + 8))(v21, v15);
  }

  v25 = v42;
  v26 = sub_10079A964();
  v27 = sub_10079A4B4();
  v28 = *(v27 - 8);
  v29 = v39;
  (*(v28 + 16))(v39, v40, v27);
  (*(v28 + 56))(v29, 0, 1, v27);
  sub_1005EA998(v29, v26);
  v30 = v43;
  v31 = v25;
  v32 = v45;
  (*(v43 + 16))(v46, v31, v45);
  v33 = v44;
  v34 = *v44;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v33 = v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v34 = sub_10066C9EC(0, v34[2] + 1, 1, v34);
    *v33 = v34;
  }

  v37 = v34[2];
  v36 = v34[3];
  if (v37 >= v36 >> 1)
  {
    *v33 = sub_10066C9EC(v36 > 1, v37 + 1, 1, v34);
  }

  (*(v16 + 8))(v21, v15);
  v38 = *v33;
  *(v38 + 16) = v37 + 1;
  return (*(v30 + 32))(v38 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v37, v46, v32);
}

uint64_t sub_1006D2C50()
{
  v0 = sub_10079A6D4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079A974();
  sub_10079A6C4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1006D2D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a1;
  v5 = sub_1001F1160(&qword_100AED490);
  __chkstk_darwin(v5 - 8);
  v68 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v70 = &v64 - v8;
  v71 = type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
  v80 = *(v71 - 8);
  __chkstk_darwin(v71);
  v79 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v76 = &v64 - v11;
  __chkstk_darwin(v12);
  v67 = &v64 - v13;
  v14 = sub_1001F1160(&qword_100AEE558);
  __chkstk_darwin(v14 - 8);
  v78 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v64 - v17;
  v19 = sub_10079A6D4();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10079A674();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a2;
  sub_10079A974();
  sub_10079A684();
  v27 = v22;
  v28 = v24;
  (*(v20 + 8))(v27, v19);
  v77 = *(v24 + 48);
  if (v77(v18, 1, v23) == 1)
  {
    return sub_100007840(v18, &qword_100AEE558);
  }

  (*(v24 + 32))(v26, v18, v23);
  v66 = v26;
  v82 = sub_10079A664();
  v30 = sub_1007A3A74();
  if (!*(a3 + 16))
  {

    return (*(v28 + 8))(v66, v23);
  }

  v65 = v24;
  v32 = sub_10000E53C(v30, v31);
  v34 = v33;
  v28 = v65;

  v35 = v81;
  if ((v34 & 1) == 0)
  {
    return (*(v28 + 8))(v66, v23);
  }

  v36 = *(*(a3 + 56) + 8 * v32);
  v37 = sub_1007994B4();
  if (v37)
  {
    v38 = v37;
  }

  else
  {
    v38 = _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(v37);
  *(&v64 - 2) = v72;
  v39 = sub_1006D1460(sub_1006D781C, (&v64 - 4), v38);
  v81 = v35;
  if (v35)
  {

    return (*(v28 + 8))(v66, v23);
  }

  v75 = v23;
  v40 = v39;

  v41 = v40;
  v74 = *(v40 + 16);
  if (v74)
  {
    v42 = 0;
    v43 = _swiftEmptyArrayStorage;
    v44 = v76;
    v73 = v36;
    while (v42 < *(v41 + 16))
    {
      v45 = (*(v80 + 80) + 32) & ~*(v80 + 80);
      v46 = *(v80 + 72);
      v47 = v41;
      sub_1006D7714(v41 + v45 + v46 * v42, v44);
      v48 = v78;
      sub_10079A074();
      v49 = v77(v48, 1, v75);
      sub_100007840(v48, &qword_100AEE558);
      if (v49 == 1)
      {
        sub_1006D7778(v44);
      }

      else
      {
        sub_1005F5308(v44, v79);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1003BD9BC(0, v43[2] + 1, 1);
          v44 = v76;
          v43 = v82;
        }

        v52 = v43[2];
        v51 = v43[3];
        if (v52 >= v51 >> 1)
        {
          sub_1003BD9BC(v51 > 1, v52 + 1, 1);
          v44 = v76;
          v43 = v82;
        }

        v43[2] = v52 + 1;
        sub_1005F5308(v79, v43 + v45 + v52 * v46);
      }

      ++v42;
      v36 = v73;
      v41 = v47;
      if (v74 == v42)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_30:

    __break(1u);
    return result;
  }

  v43 = _swiftEmptyArrayStorage;
LABEL_24:

  v82 = v43;

  v53 = v81;
  sub_1006D43E8(&v82);
  if (v53)
  {
    goto LABEL_30;
  }

  v55 = v82;
  __chkstk_darwin(v54);
  v56 = v66;
  *(&v64 - 2) = v66;
  v57 = v70;
  sub_1006A1008(sub_1006D783C, v55, v70);

  v58 = v80;
  v59 = v71;
  if ((*(v80 + 48))(v57, 1, v71) == 1)
  {

    sub_100007840(v57, &qword_100AED490);
  }

  else
  {
    v60 = v57;
    v61 = v67;
    sub_1005F5308(v60, v67);
    v62 = sub_10079A964();
    v63 = v68;
    sub_1006D7714(v61, v68);
    (*(v58 + 56))(v63, 0, 1, v59);
    sub_1005EABE8(v63, v62);

    sub_1006D7778(v61);
  }

  return (*(v65 + 8))(v56, v75);
}

uint64_t sub_1006D34D8()
{
  v0 = sub_1001F1160(&qword_100AEE558);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  sub_10079A074();
  v3 = sub_10079A674();
  v4 = *(v3 - 8);
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_10079A644();
    (*(v4 + 8))(v2, v3);
    return sub_10079A644() < v6;
  }

  return result;
}

uint64_t sub_1006D3608()
{
  v1 = OBJC_IVAR____TtC5Books57MediaAPINextInOrderedSeriesSeedBasedRecommendationService_catalogService;
  v2 = sub_100798FE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1006D36AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1002104D8;

  return sub_1006D191C(a1, a2);
}

void sub_1006D3794(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a3;
  v21 = a4;
  v7 = sub_10079A984();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10079A084();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  (*(v8 + 16))(v10, a2, v7, v13);
  v17 = v16;
  sub_1006D3974(v17, v10, v15);
  if (v4)
  {
    *v22 = v4;
  }

  else
  {
    v18 = [v17 isExplicit];
    v19 = v21;
    (*(v12 + 32))(v21, v15, v11);
    *(v19 + *(type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0) + 20)) = v18;
  }
}

void sub_1006D3974(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a3;
  v5 = sub_1001F1160(&qword_100AEE558);
  __chkstk_darwin(v5 - 8);
  v7 = &v77 - v6;
  v8 = sub_1001F1160(&qword_100AD6730);
  __chkstk_darwin(v8 - 8);
  v95 = &v77 - v9;
  v10 = sub_1001F1160(&qword_100AD6738);
  __chkstk_darwin(v10 - 8);
  v93 = &v77 - v11;
  v12 = sub_10079A734();
  __chkstk_darwin(v12 - 8);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10079A7A4();
  __chkstk_darwin(v15 - 8);
  v91 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100799B14();
  __chkstk_darwin(v17 - 8);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10079A6D4();
  v92 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v24 = sub_100799574();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  v28 = v24 & 0xFFFFFFFFFFFFLL;
  if ((v26 & 0x2000000000000000) != 0)
  {
    v29 = HIBYTE(v26) & 0xF;
  }

  else
  {
    v29 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

    goto LABEL_66;
  }

  v90 = v19;
  if ((v26 & 0x1000000000000000) != 0)
  {
    v98 = 0;
    sub_10063E4AC(v24, v26, 10);
    v50 = v76;
    goto LABEL_65;
  }

  if ((v26 & 0x2000000000000000) != 0)
  {
    v97[0] = v24;
    v97[1] = v26 & 0xFFFFFFFFFFFFFFLL;
    if (v24 == 43)
    {
      if (v27)
      {
        if (--v27)
        {
          v42 = 0;
          v43 = v97 + 1;
          while (1)
          {
            v44 = *v43 - 48;
            if (v44 > 9)
            {
              break;
            }

            if (!is_mul_ok(v42, 0xAuLL))
            {
              break;
            }

            v35 = __CFADD__(10 * v42, v44);
            v42 = 10 * v42 + v44;
            if (v35)
            {
              break;
            }

            ++v43;
            if (!--v27)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_76:
      __break(1u);
      return;
    }

    if (v24 != 45)
    {
      if (v27)
      {
        v47 = 0;
        v48 = v97;
        while (1)
        {
          v49 = *v48 - 48;
          if (v49 > 9)
          {
            break;
          }

          if (!is_mul_ok(v47, 0xAuLL))
          {
            break;
          }

          v35 = __CFADD__(10 * v47, v49);
          v47 = 10 * v47 + v49;
          if (v35)
          {
            break;
          }

          ++v48;
          if (!--v27)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v27)
    {
      if (--v27)
      {
        v36 = 0;
        v37 = v97 + 1;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          if (!is_mul_ok(v36, 0xAuLL))
          {
            break;
          }

          v35 = 10 * v36 >= v38;
          v36 = 10 * v36 - v38;
          if (!v35)
          {
            break;
          }

          ++v37;
          if (!--v27)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_74;
  }

  if ((v24 & 0x1000000000000000) != 0)
  {
    v30 = ((v26 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v30 = sub_1007A37B4();
  }

  v31 = *v30;
  if (v31 == 43)
  {
    if (v28 < 1)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v27 = v28 - 1;
    if (v28 != 1)
    {
      v39 = 0;
      if (v30)
      {
        v40 = v30 + 1;
        while (1)
        {
          v41 = *v40 - 48;
          if (v41 > 9)
          {
            goto LABEL_63;
          }

          if (!is_mul_ok(v39, 0xAuLL))
          {
            goto LABEL_63;
          }

          v35 = __CFADD__(10 * v39, v41);
          v39 = 10 * v39 + v41;
          if (v35)
          {
            goto LABEL_63;
          }

          ++v40;
          if (!--v27)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_55;
    }

LABEL_63:
    LOBYTE(v27) = 1;
    goto LABEL_64;
  }

  if (v31 != 45)
  {
    if (v28)
    {
      v45 = 0;
      if (v30)
      {
        while (1)
        {
          v46 = *v30 - 48;
          if (v46 > 9)
          {
            goto LABEL_63;
          }

          if (!is_mul_ok(v45, 0xAuLL))
          {
            goto LABEL_63;
          }

          v35 = __CFADD__(10 * v45, v46);
          v45 = 10 * v45 + v46;
          if (v35)
          {
            goto LABEL_63;
          }

          ++v30;
          if (!--v28)
          {
            goto LABEL_55;
          }
        }
      }

      goto LABEL_55;
    }

    goto LABEL_63;
  }

  if (v28 < 1)
  {
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v27 = v28 - 1;
  if (v28 == 1)
  {
    goto LABEL_63;
  }

  v32 = 0;
  if (v30)
  {
    v33 = v30 + 1;
    while (1)
    {
      v34 = *v33 - 48;
      if (v34 > 9)
      {
        goto LABEL_63;
      }

      if (!is_mul_ok(v32, 0xAuLL))
      {
        goto LABEL_63;
      }

      v35 = 10 * v32 >= v34;
      v32 = 10 * v32 - v34;
      if (!v35)
      {
        goto LABEL_63;
      }

      ++v33;
      if (!--v27)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_55:
  LOBYTE(v27) = 0;
LABEL_64:
  v98 = v27;
  v50 = v27;
LABEL_65:

  if (v50)
  {
LABEL_66:
    sub_1006D785C();
    swift_allocError();
    swift_willThrow();

    v51 = sub_10079A984();
    (*(*(v51 - 8) + 8))(a2, v51);
    return;
  }

  v52 = v23;
  v53 = v96;
  sub_100622E9C(v52, v22);
  if (v53)
  {
    v54 = sub_10079A984();
    (*(*(v54 - 8) + 8))(a2, v54);
  }

  else
  {
    v84 = v14;
    v85 = v22;
    v88 = v52;
    sub_10079A6C4();
    sub_1001F1160(&qword_100AF3228);
    v55 = sub_1001F1160(&qword_100AD3620);
    v96 = a2;
    v56 = v55 - 8;
    v57 = (*(*(v55 - 8) + 80) + 32) & ~*(*(v55 - 8) + 80);
    v58 = swift_allocObject();
    v89 = xmmword_10080B690;
    *(v58 + 16) = xmmword_10080B690;
    v59 = v58 + v57;
    v77 = *(v56 + 56);
    v60 = enum case for Methodology.copurchase(_:);
    v99 = enum case for Methodology.copurchase(_:);
    v80 = sub_100799B44();
    v78 = *(v80 - 8);
    v79 = v80 - 8;
    v86 = v7;
    v61 = v78;
    v62 = *(v78 + 104);
    v81 = v78 + 104;
    v82 = v62;
    v62(v58 + v57, v60, v80);
    sub_1001F1160(&qword_100AE0A70);
    v63 = sub_10079A984();
    v83 = v63;
    v64 = *(v63 - 8);
    v87 = v20;
    v65 = v64;
    v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = v89;
    (*(v65 + 16))(v67 + v66, v96, v63);
    *(v59 + v77) = v67;
    sub_1001F04E0(v58);
    swift_setDeallocating();
    sub_100007840(v59, &qword_100AD3620);
    swift_deallocClassInstance();
    v68 = v93;
    sub_10079A754();
    v69 = sub_10079A774();
    (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
    v70 = sub_10079A5B4();
    (*(*(v70 - 8) + 56))(v95, 1, 1, v70);
    sub_10079A5E4();
    sub_100799AD4();
    v71 = v85;
    v95 = sub_10079A6B4();
    v72 = v71;
    v93 = sub_10079A694();
    sub_1001F1160(&qword_100AF3230);
    v73 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v74 = swift_allocObject();
    *(v74 + 16) = v89;
    v75 = v80;
    v82(v74 + v73, v99, v80);
    sub_1001F3390(v74);
    swift_setDeallocating();
    (*(v61 + 8))(v74 + v73, v75);
    swift_deallocClassInstance();
    sub_10079A684();
    sub_10079A054();

    (*(v65 + 8))(v96, v83);
    (*(v92 + 8))(v72, v87);
  }
}

void sub_1006D43E8(void **a1)
{
  v2 = *(type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1007859DC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1006D4490(v5);
  *a1 = v3;
}

void sub_1006D4490(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1007A3A64(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
        v6 = sub_1007A2634();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1006D4934(v8, v9, a1, v4);
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
    sub_1006D45BC(0, v2, 1, a1);
  }
}

void sub_1006D45BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1001F1160(&qword_100AEE558);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  v50 = type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
  __chkstk_darwin(v50);
  v49 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  __chkstk_darwin(v18);
  v21 = &v40 - v20;
  v42 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v19 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v47 = -v23;
    v48 = v22;
    v25 = a1 - a3;
    v41 = v23;
    v26 = v22 + v23 * a3;
    v51 = &v40 - v20;
LABEL_5:
    v45 = v24;
    v46 = a3;
    v43 = v26;
    v44 = v25;
    v27 = v25;
    while (1)
    {
      v55 = v27;
      v28 = v10;
      sub_1006D7714(v26, v21);
      v54 = v24;
      sub_1006D7714(v24, v17);
      sub_10079A074();
      v29 = sub_10079A674();
      v30 = *(v29 - 8);
      v31 = *(v30 + 48);
      if (v31(v13, 1, v29) == 1)
      {
        break;
      }

      v53 = v26;
      v52 = sub_10079A644();
      v32 = *(v30 + 8);
      v32(v13, v29);
      sub_10079A074();
      if (v31(v28, 1, v29) == 1)
      {
        goto LABEL_15;
      }

      v33 = sub_10079A644();
      v32(v28, v29);
      sub_1006D7778(v17);
      v21 = v51;
      sub_1006D7778(v51);
      v34 = v53;
      v35 = v52 < v33;
      v10 = v28;
      v36 = v55;
      v37 = v54;
      if (v35)
      {
        if (!v48)
        {
          goto LABEL_16;
        }

        v38 = v49;
        sub_1005F5308(v53, v49);
        swift_arrayInitWithTakeFrontToBack();
        sub_1005F5308(v38, v37);
        v24 = v37 + v47;
        v26 = v34 + v47;
        v39 = __CFADD__(v36, 1);
        v27 = v36 + 1;
        if (!v39)
        {
          continue;
        }
      }

      a3 = v46 + 1;
      v24 = v45 + v41;
      v25 = v44 - 1;
      v26 = v43 + v41;
      if (v46 + 1 == v42)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }
}

void sub_1006D4934(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v153 = a1;
  v6 = sub_1001F1160(&qword_100AEE558);
  __chkstk_darwin(v6 - 8);
  v172 = &v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v145 - v9;
  __chkstk_darwin(v11);
  v159 = &v145 - v12;
  __chkstk_darwin(v13);
  v163 = &v145 - v14;
  __chkstk_darwin(v15);
  v149 = &v145 - v16;
  __chkstk_darwin(v17);
  v150 = &v145 - v18;
  v171 = type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
  v19 = *(v171 - 8);
  __chkstk_darwin(v171);
  v157 = &v145 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v170 = &v145 - v22;
  __chkstk_darwin(v23);
  v145 = &v145 - v24;
  __chkstk_darwin(v25);
  v177 = &v145 - v26;
  __chkstk_darwin(v27);
  __chkstk_darwin(v28);
  v165 = &v145 - v29;
  __chkstk_darwin(v30);
  v155 = &v145 - v31;
  __chkstk_darwin(v32);
  v151 = &v145 - v34;
  v35 = a3[1];
  if (v35 >= 1)
  {
    v36 = 0;
    v37 = _swiftEmptyArrayStorage;
    v148 = a3;
    v147 = v19;
    v173 = v10;
    v146 = v33;
    v152 = a4;
    while (1)
    {
      v38 = v36;
      v158 = v37;
      if (v36 + 1 >= v35)
      {
        v58 = v36 + 1;
      }

      else
      {
        v166 = v35;
        v39 = *a3;
        v40 = *(v19 + 72);
        v41 = *a3 + v40 * (v36 + 1);
        sub_1006D7714(v41, v151);
        v154 = v36;
        v169 = v40;
        v176 = v39;
        sub_1006D7714(v39 + v40 * v36, v155);
        v42 = v150;
        sub_10079A074();
        v43 = sub_10079A674();
        v44 = *(v43 - 8);
        v46 = v44 + 48;
        v45 = *(v44 + 48);
        if (v45(v42, 1, v43) == 1)
        {
          goto LABEL_146;
        }

        v168 = sub_10079A644();
        v48 = *(v44 + 8);
        v47 = v44 + 8;
        v49 = v48;
        v48(v42, v43);
        v50 = v149;
        sub_10079A074();
        v161 = v46;
        v175 = v45;
        v51 = v45(v50, 1, v43);
        v52 = v163;
        if (v51 == 1)
        {
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        v164 = sub_10079A644();
        v162 = v43;
        v160 = v47;
        v53 = v49;
        v49(v50, v43);
        sub_1006D7778(v155);
        sub_1006D7778(v151);
        v54 = (v154 + 2);
        v55 = v175;
        v56 = v176 + v169 * (v154 + 2);
        v57 = v146;
        while (1)
        {
          v58 = v166;
          if (v166 == v54)
          {
            break;
          }

          v174 = v56;
          v175 = v54;
          sub_1006D7714(v56, v165);
          v176 = v41;
          sub_1006D7714(v41, v57);
          sub_10079A074();
          v59 = v162;
          v60 = v55(v52, 1, v162);
          v61 = v159;
          if (v60 == 1)
          {
            goto LABEL_141;
          }

          v62 = v52;
          v63 = sub_10079A644();
          v53(v62, v59);
          sub_10079A074();
          if (v55(v61, 1, v59) == 1)
          {
            goto LABEL_140;
          }

          v64 = v61;
          v65 = v168 < v164;
          v66 = sub_10079A644();
          v53(v64, v59);
          sub_1006D7778(v57);
          sub_1006D7778(v165);
          v67 = v63 >= v66;
          v54 = v175 + 1;
          v56 = v174 + v169;
          v41 = v176 + v169;
          v52 = v163;
          if (((v65 ^ v67) & 1) == 0)
          {
            v58 = v175;
            break;
          }
        }

        a3 = v148;
        v19 = v147;
        a4 = v152;
        v10 = v173;
        v38 = v154;
        if (v168 < v164)
        {
          if (v58 < v154)
          {
            goto LABEL_133;
          }

          if (v154 < v58)
          {
            v68 = v58;
            v69 = v169 * (v58 - 1);
            v70 = v58 * v169;
            v166 = v58;
            v71 = v154;
            v72 = v154 * v169;
            do
            {
              if (v71 != --v68)
              {
                v73 = *a3;
                if (!*a3)
                {
                  goto LABEL_143;
                }

                sub_1005F5308(v73 + v72, v157);
                if (v72 < v69 || v73 + v72 >= (v73 + v70))
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v72 != v69)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_1005F5308(v157, v73 + v69);
                v10 = v173;
              }

              ++v71;
              v69 -= v169;
              v70 -= v169;
              v72 += v169;
            }

            while (v71 < v68);
            a4 = v152;
            v38 = v154;
            v58 = v166;
          }
        }
      }

      v74 = a3[1];
      if (v58 >= v74)
      {
        goto LABEL_36;
      }

      if (__OFSUB__(v58, v38))
      {
        goto LABEL_132;
      }

      if (v58 - v38 >= a4)
      {
        goto LABEL_36;
      }

      if (__OFADD__(v38, a4))
      {
        goto LABEL_134;
      }

      if ((v38 + a4) >= v74)
      {
        v75 = a3[1];
      }

      else
      {
        v75 = v38 + a4;
      }

      if (v75 < v38)
      {
LABEL_135:
        __break(1u);
LABEL_136:
        v139 = sub_100784A7C(a4);
        goto LABEL_106;
      }

      if (v58 == v75)
      {
LABEL_36:
        v36 = v58;
        if (v58 < v38)
        {
          goto LABEL_131;
        }
      }

      else
      {
        v122 = *a3;
        v123 = *(v19 + 72);
        v124 = *a3 + v123 * (v58 - 1);
        v168 = -v123;
        v154 = v38;
        v125 = v38 - v58;
        v169 = v122;
        v156 = v123;
        v126 = v122 + v58 * v123;
        v127 = v145;
        v160 = v75;
        do
        {
          v166 = v58;
          v161 = v126;
          v162 = v125;
          v128 = v125;
          v164 = v124;
          while (1)
          {
            sub_1006D7714(v126, v177);
            v175 = v124;
            sub_1006D7714(v124, v127);
            sub_10079A074();
            v129 = sub_10079A674();
            v130 = *(v129 - 8);
            v131 = *(v130 + 48);
            if (v131(v10, 1, v129) == 1)
            {
              goto LABEL_138;
            }

            v176 = v128;
            v174 = v126;
            v132 = sub_10079A644();
            v133 = *(v130 + 8);
            v133(v10, v129);
            v134 = v172;
            sub_10079A074();
            if (v131(v134, 1, v129) == 1)
            {
              __break(1u);
LABEL_138:
              __break(1u);
LABEL_139:
              __break(1u);
LABEL_140:
              __break(1u);
LABEL_141:
              __break(1u);
LABEL_142:
              __break(1u);
LABEL_143:
              __break(1u);
LABEL_144:
              __break(1u);
LABEL_145:
              __break(1u);
LABEL_146:
              __break(1u);
              goto LABEL_147;
            }

            a4 = sub_10079A644();
            v133(v134, v129);
            sub_1006D7778(v127);
            sub_1006D7778(v177);
            if (v132 >= a4)
            {
              break;
            }

            v10 = v173;
            v135 = v176;
            if (!v169)
            {
              goto LABEL_139;
            }

            v136 = v174;
            a4 = v170;
            sub_1005F5308(v174, v170);
            v137 = v175;
            swift_arrayInitWithTakeFrontToBack();
            sub_1005F5308(a4, v137);
            v124 = v137 + v168;
            v126 = v136 + v168;
            v138 = __CFADD__(v135, 1);
            v128 = v135 + 1;
            if (v138)
            {
              goto LABEL_90;
            }
          }

          v10 = v173;
LABEL_90:
          v58 = v166 + 1;
          v124 = v164 + v156;
          v125 = v162 - 1;
          v126 = v161 + v156;
          v36 = v160;
        }

        while (v166 + 1 != v160);
        a3 = v148;
        v19 = v147;
        v38 = v154;
        if (v160 < v154)
        {
          goto LABEL_131;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v37 = v158;
      }

      else
      {
        v37 = sub_10066B274(0, *(v158 + 2) + 1, 1, v158);
      }

      v77 = *(v37 + 2);
      v76 = *(v37 + 3);
      a4 = v77 + 1;
      if (v77 >= v76 >> 1)
      {
        v37 = sub_10066B274((v76 > 1), v77 + 1, 1, v37);
      }

      *(v37 + 2) = a4;
      v78 = &v37[16 * v77];
      *(v78 + 4) = v38;
      *(v78 + 5) = v36;
      if (!*v153)
      {
        goto LABEL_145;
      }

      if (v77)
      {
        v79 = *v153;
        while (1)
        {
          v10 = a4 - 1;
          if (a4 >= 4)
          {
            break;
          }

          if (a4 == 3)
          {
            v80 = *(v37 + 4);
            v81 = *(v37 + 5);
            v90 = __OFSUB__(v81, v80);
            v82 = v81 - v80;
            v83 = v90;
LABEL_57:
            if (v83)
            {
              goto LABEL_120;
            }

            v96 = &v37[16 * a4];
            v98 = *v96;
            v97 = *(v96 + 1);
            v99 = __OFSUB__(v97, v98);
            v100 = v97 - v98;
            v101 = v99;
            if (v99)
            {
              goto LABEL_123;
            }

            v102 = &v37[16 * v10 + 32];
            v104 = *v102;
            v103 = *(v102 + 1);
            v90 = __OFSUB__(v103, v104);
            v105 = v103 - v104;
            if (v90)
            {
              goto LABEL_126;
            }

            if (__OFADD__(v100, v105))
            {
              goto LABEL_127;
            }

            if (v100 + v105 >= v82)
            {
              if (v82 < v105)
              {
                v10 = a4 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v106 = &v37[16 * a4];
          v108 = *v106;
          v107 = *(v106 + 1);
          v90 = __OFSUB__(v107, v108);
          v100 = v107 - v108;
          v101 = v90;
LABEL_71:
          if (v101)
          {
            goto LABEL_122;
          }

          v109 = &v37[16 * v10];
          v111 = *(v109 + 4);
          v110 = *(v109 + 5);
          v90 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v90)
          {
            goto LABEL_125;
          }

          if (v112 < v100)
          {
            goto LABEL_3;
          }

LABEL_78:
          v117 = v10 - 1;
          if (v10 - 1 >= a4)
          {
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
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
            goto LABEL_135;
          }

          if (!*a3)
          {
            goto LABEL_142;
          }

          v118 = v37;
          a4 = *&v37[16 * v117 + 32];
          v119 = *&v37[16 * v10 + 40];
          v120 = v167;
          sub_1006D565C(*a3 + *(v19 + 72) * a4, *a3 + *(v19 + 72) * *&v37[16 * v10 + 32], *a3 + *(v19 + 72) * v119, v79);
          v167 = v120;
          if (v120)
          {
            goto LABEL_114;
          }

          if (v119 < a4)
          {
            goto LABEL_116;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v118 = sub_100784A7C(v118);
          }

          if (v117 >= *(v118 + 2))
          {
            goto LABEL_117;
          }

          v121 = &v118[16 * v117];
          *(v121 + 4) = a4;
          *(v121 + 5) = v119;
          v178 = v118;
          sub_1007849F0(v10);
          v37 = v178;
          a4 = *(v178 + 2);
          if (a4 <= 1)
          {
            goto LABEL_3;
          }
        }

        v84 = &v37[16 * a4 + 32];
        v85 = *(v84 - 64);
        v86 = *(v84 - 56);
        v90 = __OFSUB__(v86, v85);
        v87 = v86 - v85;
        if (v90)
        {
          goto LABEL_118;
        }

        v89 = *(v84 - 48);
        v88 = *(v84 - 40);
        v90 = __OFSUB__(v88, v89);
        v82 = v88 - v89;
        v83 = v90;
        if (v90)
        {
          goto LABEL_119;
        }

        v91 = &v37[16 * a4];
        v93 = *v91;
        v92 = *(v91 + 1);
        v90 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v90)
        {
          goto LABEL_121;
        }

        v90 = __OFADD__(v82, v94);
        v95 = v82 + v94;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v95 >= v87)
        {
          v113 = &v37[16 * v10 + 32];
          v115 = *v113;
          v114 = *(v113 + 1);
          v90 = __OFSUB__(v114, v115);
          v116 = v114 - v115;
          if (v90)
          {
            goto LABEL_128;
          }

          if (v82 < v116)
          {
            v10 = a4 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v35 = a3[1];
      v10 = v173;
      a4 = v152;
      if (v36 >= v35)
      {
        goto LABEL_103;
      }
    }
  }

  v37 = _swiftEmptyArrayStorage;
LABEL_103:
  v10 = *v153;
  if (*v153)
  {
    a4 = v37;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_136;
    }

    v139 = a4;
LABEL_106:
    v178 = v139;
    a4 = *(v139 + 2);
    if (a4 >= 2)
    {
      while (*a3)
      {
        v140 = *&v139[16 * a4];
        v141 = v139;
        v142 = *&v139[16 * a4 + 24];
        v143 = v167;
        sub_1006D565C(*a3 + *(v19 + 72) * v140, *a3 + *(v19 + 72) * *&v139[16 * a4 + 16], *a3 + *(v19 + 72) * v142, v10);
        v167 = v143;
        if (v143)
        {
          goto LABEL_114;
        }

        if (v142 < v140)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v141 = sub_100784A7C(v141);
        }

        if (a4 - 2 >= *(v141 + 2))
        {
          goto LABEL_130;
        }

        v144 = &v141[16 * a4];
        *v144 = v140;
        *(v144 + 1) = v142;
        v178 = v141;
        sub_1007849F0(a4 - 1);
        v139 = v178;
        a4 = *(v178 + 2);
        if (a4 <= 1)
        {
          goto LABEL_114;
        }
      }

      goto LABEL_144;
    }

LABEL_114:
  }

  else
  {
LABEL_148:
    __break(1u);
  }
}

void sub_1006D565C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_1001F1160(&qword_100AEE558);
  __chkstk_darwin(v8 - 8);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v67 - v12;
  __chkstk_darwin(v14);
  v16 = &v67 - v15;
  __chkstk_darwin(v17);
  v75 = &v67 - v18;
  v77 = type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
  __chkstk_darwin(v77);
  v81 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v76 = &v67 - v21;
  __chkstk_darwin(v22);
  __chkstk_darwin(v23);
  v78 = &v67 - v25;
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (a2 - a1 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_65;
  }

  v28 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v27 != -1)
  {
    v29 = (a2 - a1) / v27;
    v84 = a1;
    v83 = a4;
    if (v29 >= v28 / v27)
    {
      v71 = v10;
      v32 = v28 / v27 * v27;
      if (a4 < a2 || a2 + v32 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v45 = a4 + v32;
      if (v32 >= 1)
      {
        v46 = -v27;
        v47 = (a4 + v32);
        v48 = v81;
        v79 = a1;
        v80 = a4;
        v69 = v13;
        v78 = -v27;
        do
        {
          v67 = v45;
          v49 = a2;
          a2 += v46;
          v81 = a2;
          v70 = v49;
          while (1)
          {
            if (v49 <= a1)
            {
              v84 = v49;
              v82 = v67;
              goto LABEL_63;
            }

            v74 = a3;
            v75 = v47;
            v68 = v45;
            v72 = &v47[v46];
            sub_1006D7714(&v47[v46], v76);
            sub_1006D7714(a2, v48);
            sub_10079A074();
            v51 = sub_10079A674();
            v52 = v48;
            v53 = *(v51 - 8);
            v54 = *(v53 + 48);
            if (v54(v13, 1, v51) == 1)
            {
              goto LABEL_69;
            }

            v73 = sub_10079A644();
            v55 = *(v53 + 8);
            v55(v13, v51);
            v56 = v71;
            sub_10079A074();
            if (v54(v56, 1, v51) == 1)
            {
              goto LABEL_70;
            }

            v57 = v74;
            v58 = &v74[v78];
            v59 = sub_10079A644();
            v55(v56, v51);
            sub_1006D7778(v52);
            sub_1006D7778(v76);
            a1 = v79;
            a2 = v81;
            v48 = v52;
            if (v73 < v59)
            {
              break;
            }

            v60 = v72;
            v45 = v72;
            v61 = v80;
            v62 = v69;
            if (v57 < v75 || v58 >= v75)
            {
              a3 = v58;
              v50 = v72;
              swift_arrayInitWithTakeFrontToBack();
              v45 = v50;
              v46 = v78;
            }

            else
            {
              a3 = v58;
              v46 = v78;
              if (v57 != v75)
              {
                v63 = v72;
                swift_arrayInitWithTakeBackToFront();
                v45 = v63;
              }
            }

            v47 = v45;
            v49 = v70;
            v13 = v62;
            if (v60 <= v61)
            {
              a2 = v70;
              goto LABEL_62;
            }
          }

          v64 = v69;
          v65 = v80;
          a3 = v58;
          if (v57 < v70 || v58 >= v70)
          {
            swift_arrayInitWithTakeFrontToBack();
            v45 = v68;
            v46 = v78;
          }

          else
          {
            v45 = v68;
            v46 = v78;
            if (v57 != v70)
            {
              v66 = v68;
              swift_arrayInitWithTakeBackToFront();
              v45 = v66;
            }
          }

          v47 = v75;
          v13 = v64;
        }

        while (v75 > v65);
      }

LABEL_62:
      v84 = a2;
      v82 = v45;
    }

    else
    {
      v30 = v29 * v27;
      if (a4 < a1 || a1 + v30 <= a4)
      {
        v31 = v24;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v31 = v24;
        if (a4 != a1)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v76 = a4 + v30;
      v82 = a4 + v30;
      if (v30 >= 1 && a2 < a3)
      {
        v73 = v27;
        v74 = a3;
        do
        {
          v79 = a1;
          v81 = a2;
          sub_1006D7714(a2, v78);
          v80 = a4;
          sub_1006D7714(a4, v31);
          v34 = v75;
          sub_10079A074();
          v35 = sub_10079A674();
          v36 = *(v35 - 8);
          v37 = *(v36 + 48);
          if (v37(v34, 1, v35) == 1)
          {
            goto LABEL_67;
          }

          v38 = sub_10079A644();
          v39 = v34;
          v40 = *(v36 + 8);
          v40(v39, v35);
          sub_10079A074();
          if (v37(v16, 1, v35) == 1)
          {
            goto LABEL_68;
          }

          v41 = sub_10079A644();
          v40(v16, v35);
          sub_1006D7778(v31);
          sub_1006D7778(v78);
          a2 = v81;
          if (v38 >= v41)
          {
            v44 = v79;
            v42 = v73;
            v43 = v74;
            a4 = v80 + v73;
            if (v79 < v80 || v79 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v79 != v80)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v83 = a4;
          }

          else
          {
            v42 = v73;
            v43 = v74;
            v44 = v79;
            a4 = v80;
            if (v79 < v81 || v79 >= &v81[v73])
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v79 != v81)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v42;
          }

          a1 = &v44[v42];
          v84 = a1;
        }

        while (a4 < v76 && a2 < v43);
      }
    }

LABEL_63:
    sub_1006D5F14(&v84, &v83, &v82, type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem);
    return;
  }

LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

uint64_t sub_1006D5E0C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1001F1160(&qword_100AE0C00);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1006D5F14(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1006D6014(uint64_t a1)
{
  v2[35] = a1;
  v2[36] = v1;
  v3 = sub_1007990E4();
  v2[37] = v3;
  v2[38] = *(v3 - 8);
  v2[39] = swift_task_alloc();
  v4 = sub_10079A6D4();
  v2[40] = v4;
  v2[41] = *(v4 - 8);
  v2[42] = swift_task_alloc();
  sub_1001F1160(&qword_100AEE558);
  v2[43] = swift_task_alloc();
  v5 = sub_10079A674();
  v2[44] = v5;
  v2[45] = *(v5 - 8);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v6 = sub_10079A984();
  v2[48] = v6;
  v2[49] = *(v6 - 8);
  v2[50] = swift_task_alloc();
  sub_1001F1160(&qword_100AF31F0);
  v2[51] = swift_task_alloc();
  v7 = sub_1001F1160(&qword_100AF31F8);
  v2[52] = v7;
  v2[53] = *(v7 - 8);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v8 = sub_10079A734();
  v2[56] = v8;
  v2[57] = *(v8 - 8);
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v9 = sub_100798FE4();
  v2[62] = v9;
  v2[63] = *(v9 - 8);
  v2[64] = swift_task_alloc();

  return _swift_task_switch(sub_1006D63B4, 0, 0);
}

uint64_t sub_1006D63B4()
{
  v0[31] = v0[35];
  v1 = v0[57];
  v2 = v0[53];
  v3 = v0[49];
  v4 = v0[45];
  v139 = v0[41];
  sub_1001F1160(&qword_100AEEBE8);
  sub_100005920(&qword_100AF3200, &qword_100AEEBE8);
  sub_1006D77D4(&qword_100ADADA0, &type metadata accessor for Book.MediaType);
  sub_1006D77D4(&qword_100AF3208, &type metadata accessor for SeedBook);
  v5 = sub_1007A24F4();
  sub_1001F1160(&qword_100AF3210);
  v6 = sub_1007A3904();
  v13 = v6;
  v14 = 0;
  v119 = v5 + 64;
  v125 = v5;
  v15 = 1 << *(v5 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v5 + 64);
  v118 = (v15 + 63) >> 6;
  v124 = v1;
  v136 = v3;
  v142 = (v3 + 48);
  v144 = (v3 + 56);
  v140 = (v139 + 8);
  v141 = (v3 + 32);
  v138 = (v3 + 8);
  v137 = (v4 + 48);
  v132 = (v4 + 32);
  v126 = v4;
  v134 = (v4 + 8);
  v123 = v2;
  v120 = (v2 + 8);
  v121 = v6 + 64;
  v122 = v6;
  if (v17)
  {
    while (2)
    {
      v127 = (v17 - 1) & v17;
      v128 = v14;
      v18 = __clz(__rbit64(v17)) | (v14 << 6);
LABEL_10:
      v22 = v0[59];
      v23 = v0[60];
      v25 = v0[55];
      v24 = v0[56];
      v26 = v0[54];
      v27 = v0[52];
      v130 = *(v124 + 72) * v18;
      (*(v124 + 16))(v23, *(v125 + 48) + v130, v24);
      v131 = v18;
      v28 = *(v123 + 16);
      v28(v25, *(v125 + 56) + *(v123 + 72) * v18, v27);
      v129 = *(v124 + 32);
      v129(v22, v23, v24);
      v28(v26, v25, v27);
      sub_100005920(&qword_100AF3218, &qword_100AF31F8);
      v6 = sub_1007A24C4();
      v133 = _swiftEmptyArrayStorage;
      while (1)
      {
        v29 = v0[26];
        v30 = v0[27];
        v31 = v0[28];
        v32 = v0[29];
        v33 = v0[30];
        v34 = v32;
        if (!v33)
        {
          v35 = (v31 + 64) >> 6;
          if (v35 <= v32 + 1)
          {
            v36 = v32 + 1;
          }

          else
          {
            v36 = (v31 + 64) >> 6;
          }

          v37 = v36 - 1;
          v38 = v0[29];
          while (1)
          {
            v34 = v38 + 1;
            if (__OFADD__(v38, 1))
            {
              break;
            }

            if (v34 >= v35)
            {
              v39 = 0;
              v40 = 1;
              goto LABEL_20;
            }

            v33 = *(v30 + 8 * v34);
            ++v38;
            if (v33)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
          goto LABEL_51;
        }

LABEL_19:
        v39 = (v33 - 1) & v33;
        (*(v136 + 16))(v0[51], *(v29 + 48) + *(v136 + 72) * (__clz(__rbit64(v33)) | (v34 << 6)), v0[48]);
        v40 = 0;
        v37 = v34;
LABEL_20:
        v41 = v0[51];
        v42 = v0[48];
        (*v144)(v41, v40, 1, v42);
        v0[26] = v29;
        v0[27] = v30;
        v0[28] = v31;
        v0[29] = v37;
        v0[30] = v39;
        if ((*v142)(v41, 1, v42) == 1)
        {
          break;
        }

        v43 = v0[50];
        v44 = v0[48];
        v46 = v0[43];
        v45 = v0[44];
        v47 = v0[42];
        v48 = v0[40];
        (*v141)(v43, v0[51], v44);
        sub_10079A974();
        sub_10079A684();
        (*v140)(v47, v48);
        (*v138)(v43, v44);
        if ((*v137)(v46, 1, v45) == 1)
        {
          v6 = sub_100007840(v0[43], &qword_100AEE558);
        }

        else
        {
          v49 = *v132;
          (*v132)(v0[47], v0[43], v0[44]);
          v50 = v133;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_10066C99C(0, v133[2] + 1, 1, v133);
          }

          v52 = v50[2];
          v51 = v50[3];
          if (v52 >= v51 >> 1)
          {
            v50 = sub_10066C99C(v51 > 1, v52 + 1, 1, v50);
          }

          v53 = v0[47];
          v54 = v0[44];
          v50[2] = v52 + 1;
          v133 = v50;
          v6 = v49(v50 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v52, v53, v54);
        }
      }

      sub_10004DC54();
      v55 = v133[2];
      if (v55)
      {
        sub_1003BD0CC(0, v55, 0);
        v56 = v133 + ((*(v126 + 80) + 32) & ~*(v126 + 80));
        v135 = *(v126 + 72);
        v57 = *(v126 + 16);
        do
        {
          v58 = v0[46];
          v59 = v0[44];
          v57(v58, v56, v59);
          v0[32] = sub_10079A664();
          v60 = sub_1007A3A74();
          v62 = v61;
          (*v134)(v58, v59);
          v64 = _swiftEmptyArrayStorage[2];
          v63 = _swiftEmptyArrayStorage[3];
          if (v64 >= v63 >> 1)
          {
            sub_1003BD0CC((v63 > 1), v64 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v64 + 1;
          v65 = &_swiftEmptyArrayStorage[2 * v64];
          v65[4] = v60;
          v65[5] = v62;
          v56 += v135;
          --v55;
        }

        while (v55);
        (*v120)(v0[55], v0[52]);
      }

      else
      {
        v66 = v0[55];
        v67 = v0[52];

        (*v120)(v66, v67);
      }

      v68 = v0[59];
      v69 = v0[56];
      v13 = v122;
      *(v121 + ((v131 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v131;
      v6 = (v129)(v122[6] + v130, v68, v69);
      *(v122[7] + 8 * v131) = _swiftEmptyArrayStorage;
      v70 = v122[2];
      v71 = __OFADD__(v70, 1);
      v72 = v70 + 1;
      if (v71)
      {
        goto LABEL_52;
      }

      v122[2] = v72;
      v17 = v127;
      v14 = v128;
      if (v127)
      {
        continue;
      }

      break;
    }
  }

  v19 = v14;
  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v118)
    {
      v74 = v0[63];
      v73 = v0[64];
      v76 = v0[61];
      v75 = v0[62];
      v77 = v0[56];
      v78 = v0[57];
      v79 = v0[36];

      (*(v74 + 16))(v73, v79 + OBJC_IVAR____TtC5Books57MediaAPINextInOrderedSeriesSeedBasedRecommendationService_catalogService, v75);
      v80 = *(v78 + 104);
      v80(v76, enum case for Book.MediaType.ebook(_:), v77);
      if (v13[2] && (v81 = sub_1002ECF04(v0[61]), (v82 & 1) != 0))
      {
        v83 = v0[61];
        v84 = v0[56];
        v85 = *(v13[7] + 8 * v81);
        v86 = *(v0[57] + 8);

        v86(v83, v84);
      }

      else
      {
        v86 = *(v0[57] + 8);
        v86(v0[61], v0[56]);
        v85 = _swiftEmptyArrayStorage;
      }

      v0[65] = v85;
      v80(v0[58], enum case for Book.MediaType.audiobook(_:), v0[56]);
      v145 = v85;
      if (v13[2] && (v87 = sub_1002ECF04(v0[58]), (v88 & 1) != 0))
      {
        v89 = v0[58];
        v90 = v0[56];
        v91 = *(v13[7] + 8 * v87);

        v86(v89, v90);
      }

      else
      {
        v92 = v0[58];
        v93 = v0[56];

        v86(v92, v93);
        v91 = _swiftEmptyArrayStorage;
      }

      v0[66] = v91;
      sub_1001F1160(&qword_100AE0A28);
      v143 = swift_allocObject();
      v0[67] = v143;
      *(v143 + 16) = xmmword_10080EFF0;
      v94 = BFMCatalogRequestRelationshipBooks;
      v95 = BFMCatalogRequestRelationshipAudiobooks;
      *(v143 + 32) = BFMCatalogRequestRelationshipBooks;
      *(v143 + 40) = v95;
      sub_1001F1160(qword_100AEA1F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10081E180;
      *(inited + 32) = 0xD000000000000014;
      *(inited + 40) = 0x80000001008E6F90;
      sub_1001F1160(&unk_100AE0B30);
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_100812CF0;
      *(v97 + 32) = sub_1007A2254();
      *(v97 + 40) = v98;
      *(v97 + 48) = sub_1007A2254();
      *(v97 + 56) = v99;
      *(v97 + 64) = sub_1007A2254();
      *(v97 + 72) = v100;
      v0[33] = v97;
      v101 = v94;
      v102 = v95;
      sub_1001F1160(&unk_100AD61F0);
      sub_100005920(&qword_100AEB190, &unk_100AD61F0);
      v103 = sub_1007A20B4();
      v105 = v104;

      *(inited + 48) = v103;
      *(inited + 56) = v105;
      strcpy((inited + 64), "include[books]");
      *(inited + 79) = -18;
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_100812CF0;
      *(v106 + 32) = sub_1007A2254();
      *(v106 + 40) = v107;
      *(v106 + 48) = sub_1007A2254();
      *(v106 + 56) = v108;
      *(v106 + 64) = sub_1007A2254();
      *(v106 + 72) = v109;
      v0[34] = v106;
      v110 = sub_1007A20B4();
      v112 = v111;

      *(inited + 80) = v110;
      *(inited + 88) = v112;
      *(inited + 96) = 0xD000000000000026;
      *(inited + 104) = 0x80000001008E1FB0;
      *(inited + 112) = sub_1007A2254();
      *(inited + 120) = v113;
      *(inited + 128) = 0xD00000000000001ALL;
      *(inited + 136) = 0x80000001008E1FE0;
      *(inited + 144) = sub_1007A2254();
      *(inited + 152) = v114;
      *(inited + 160) = 0xD000000000000023;
      *(inited + 168) = 0x80000001008E6FB0;
      *(inited + 176) = 0x6E49736569726573;
      *(inited + 184) = 0xEA00000000006F66;
      v115 = sub_1001ED994(inited);
      v0[68] = v115;
      swift_setDeallocating();
      sub_1001F1160(&unk_100AE0920);
      swift_arrayDestroy();
      sub_1007990F4();
      v116 = swift_task_alloc();
      v0[69] = v116;
      *v116 = v0;
      v116[1] = sub_1006D7110;
      v12 = v0[39];
      v8 = v143;
      v6 = v145;
      v7 = v91;
      v9 = 0;
      v10 = v115;
      v11 = 150;

      return MCatalogService.fetch(bookSeries:audiobookSeries:relationships:views:additionalParameters:batchSize:metadata:)(v6, v7, v8, v9, v10, v11, v12);
    }

    v21 = *(v119 + 8 * v20);
    ++v19;
    if (v21)
    {
      v127 = (v21 - 1) & v21;
      v128 = v20;
      v18 = __clz(__rbit64(v21)) | (v20 << 6);
      goto LABEL_10;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return MCatalogService.fetch(bookSeries:audiobookSeries:relationships:views:additionalParameters:batchSize:metadata:)(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1006D7110(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[70] = a1;
  v4[71] = v1;

  v5 = v3[64];
  v6 = v3[63];
  v7 = v3[62];
  v8 = v3[39];
  v9 = v3[38];
  v10 = v3[37];

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  if (v13)
  {
    v11 = sub_1006D75FC;
  }

  else
  {
    v11 = sub_1006D736C;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1006D736C()
{
  v13 = v0;
  v1 = v0[49];
  v2 = v0[35];
  v3 = _swiftEmptyDictionarySingleton;
  v12[0] = _swiftEmptyDictionarySingleton;
  v4 = *(v2 + 16);
  if (!v4)
  {
LABEL_10:

    v11 = v0[1];

    return v11(v3);
  }

  v5 = v0[71];
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  sub_1006D2D2C(v12, v2 + v6, v0[70]);
  if (!v5)
  {
    for (i = 1; v4 != i; i = v8)
    {
      v8 = i + 1;
      sub_1006D2D2C(v12, v0[35] + v6 + *(v0[49] + 72) * i, v0[70]);
    }

    v3 = v12[0];
    goto LABEL_10;
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1006D75FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006D7714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006D7778(uint64_t a1)
{
  v2 = type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006D77D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1006D785C()
{
  result = qword_100AF3220;
  if (!qword_100AF3220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3220);
  }

  return result;
}

uint64_t sub_1006D78E8()
{
  result = sub_10079A084();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1006D7960()
{
  result = qword_100AF32C8;
  if (!qword_100AF32C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF32C8);
  }

  return result;
}

uint64_t sub_1006D79E0@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = sub_10079C824();
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1001F1160(&qword_100AF32D0);
  v4 = *(v37 - 8);
  __chkstk_darwin(v37);
  v6 = &v33 - v5;
  v7 = sub_1001F1160(&qword_100AF32D8);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v38 = sub_1001F1160(&qword_100AF32E0);
  __chkstk_darwin(v38);
  v11 = &v33 - v10;
  v39 = sub_1001F1160(&qword_100AF32E8);
  __chkstk_darwin(v39);
  v13 = &v33 - v12;
  v41 = v1;

  sub_1001F1160(&qword_100AF32F0);
  sub_1006D8254();
  sub_10079E054();
  v14 = *(v1 + 32);
  if (v14 == 1)
  {
    v15 = [objc_opt_self() systemGray3Color];
    v16 = sub_10079DEA4();
  }

  else
  {
    v16 = sub_10079DE34();
  }

  v17 = v16;
  KeyPath = swift_getKeyPath();
  (*(v4 + 32))(v9, v6, v37);
  v19 = &v9[*(v7 + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  v44 = *(v1 + 8);
  v20 = *v1;
  v43 = *v1;
  v21 = v44;

  if ((v21 & 1) == 0)
  {
    sub_1007A29C4();
    v22 = sub_10079D244();
    sub_10079AB44();

    v23 = v34;
    sub_10079C814();
    swift_getAtKeyPath();
    sub_1006D830C(&v43);
    (*(v35 + 8))(v23, v36);
    v20 = v42;
  }

  v24 = sub_10079D294();
  sub_10020B3C8(v9, v11, &qword_100AF32D8);
  v25 = &v11[*(v38 + 36)];
  *v25 = v20;
  v25[8] = v24;
  v26 = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = v14;
  sub_10020B3C8(v11, v13, &qword_100AF32E0);
  v28 = &v13[*(v39 + 36)];
  *v28 = v26;
  v28[1] = sub_100258B0C;
  v28[2] = v27;
  v29 = swift_getKeyPath();
  v30 = v40;
  sub_10020B3C8(v13, v40, &qword_100AF32E8);
  result = sub_1001F1160(&qword_100AF3310);
  v32 = v30 + *(result + 36);
  *v32 = v29;
  *(v32 + 8) = 0;
  return result;
}

__n128 sub_1006D7E84@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1001F1160(&qword_100AF3308);
  __chkstk_darwin(v2 - 8);
  v4 = v10 - v3;
  *v4 = sub_10079C8F4();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = sub_1001F1160(&qword_100AF3318);
  sub_1006D7FE0(&v4[*(v5 + 44)]);
  sub_10079E474();
  sub_10079C414();
  sub_10020B3C8(v4, a1, &qword_100AF3308);
  v6 = a1 + *(sub_1001F1160(&qword_100AF32F0) + 36);
  v7 = v10[5];
  *(v6 + 64) = v10[4];
  *(v6 + 80) = v7;
  *(v6 + 96) = v10[6];
  v8 = v10[1];
  *v6 = v10[0];
  *(v6 + 16) = v8;
  result = v10[3];
  *(v6 + 32) = v10[2];
  *(v6 + 48) = result;
  return result;
}

__n128 sub_1006D7FE0@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1001F1160(&qword_100AF6730);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = (v18 - v4);

  v6 = sub_10079DF24();
  v7 = (v5 + *(sub_1001F1160(&qword_100ADBD70) + 36));
  v8 = *(sub_1001F1160(&qword_100AEE3C0) + 28);
  v9 = enum case for Image.Scale.large(_:);
  v10 = sub_10079DF84();
  (*(*(v10 - 8) + 104))(v7 + v8, v9, v10);
  *v7 = swift_getKeyPath();
  *v5 = v6;
  sub_10079D374();
  sub_10079D3F4();
  v11 = sub_10079D464();

  KeyPath = swift_getKeyPath();
  v13 = (v5 + *(v3 + 44));
  *v13 = KeyPath;
  v13[1] = v11;
  sub_10079E474();
  sub_10079C414();
  sub_10020B3C8(v5, a1, &qword_100AF6730);
  v14 = a1 + *(sub_1001F1160(&qword_100AF3320) + 36);
  v15 = v18[5];
  *(v14 + 64) = v18[4];
  *(v14 + 80) = v15;
  *(v14 + 96) = v18[6];
  v16 = v18[1];
  *v14 = v18[0];
  *(v14 + 16) = v16;
  result = v18[3];
  *(v14 + 32) = v18[2];
  *(v14 + 48) = result;
  return result;
}

unint64_t sub_1006D8254()
{
  result = qword_100AF32F8;
  if (!qword_100AF32F8)
  {
    sub_1001F1234(&qword_100AF32F0);
    sub_100005920(&qword_100AF3300, &qword_100AF3308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF32F8);
  }

  return result;
}

uint64_t sub_1006D830C(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AEA388);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1006D8374()
{
  result = qword_100AF3328;
  if (!qword_100AF3328)
  {
    sub_1001F1234(&qword_100AF3310);
    sub_1006D842C();
    sub_100005920(&qword_100AD53F8, &qword_100ADB9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3328);
  }

  return result;
}

unint64_t sub_1006D842C()
{
  result = qword_100AF3330;
  if (!qword_100AF3330)
  {
    sub_1001F1234(&qword_100AF32E8);
    sub_1006D84E4();
    sub_100005920(&unk_100AF6560, &qword_100ADB8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3330);
  }

  return result;
}

unint64_t sub_1006D84E4()
{
  result = qword_100AF3338;
  if (!qword_100AF3338)
  {
    sub_1001F1234(&qword_100AF32E0);
    sub_1006D859C();
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3338);
  }

  return result;
}

unint64_t sub_1006D859C()
{
  result = qword_100AF3340;
  if (!qword_100AF3340)
  {
    sub_1001F1234(&qword_100AF32D8);
    sub_100005920(&qword_100AF3348, &qword_100AF32D0);
    sub_100005920(&unk_100AD1D10, &qword_100ADB490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3340);
  }

  return result;
}

uint64_t type metadata accessor for MarkAsStillReadingActionItem()
{
  result = qword_100AF33A8;
  if (!qword_100AF33A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1006D86F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_100009864(a1, v28);
  sub_100009864(a2, v27);
  sub_100009864(a4, v26);
  v10 = objc_opt_self();
  v11 = [v10 delegate];
  v12 = [v11 serviceCenter];

  v13 = [objc_opt_self() defaultManager];
  v14 = [v10 delegate];
  v15 = [v14 engagementManager];

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v17 = result;
    v18 = [objc_opt_self() defaultHelper];
    v24 = &type metadata for MenuLibraryOperationProvider;
    v25 = &off_100A266E8;
    v19 = swift_allocObject();
    *&v23 = v19;
    v19[2] = v12;
    v19[3] = v13;
    v19[4] = v15;
    v19[5] = v17;
    v19[6] = v18;
    sub_1000074E0(a4);
    sub_1000074E0(a2);
    sub_1000074E0(a1);
    v20 = *(type metadata accessor for MarkAsStillReadingActionItem() + 36);
    v21 = enum case for ContextActionType.markAsStillReading(_:);
    v22 = sub_100797144();
    (*(*(v22 - 8) + 104))(a5 + v20, v21, v22);
    sub_1000077C0(v28, a5 + 40);
    sub_1000077C0(v27, a5);
    *(a5 + 80) = a3;
    sub_1000077C0(v26, a5 + 88);
    return sub_1000077C0(&v23, a5 + 128);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006D8930()
{
  sub_10000E3E8((v0 + 40), *(v0 + 64));
  if (sub_1007976D4())
  {
    v1 = 0;
  }

  else
  {
    sub_1001FEC24(&v4);
    if (v5)
    {
      sub_1001FF7C8(&v4, &v6);
      sub_10000E3E8(&v6, v7);
      v2 = sub_1007975D4();
      if (v2 == 2)
      {
        sub_1000074E0(&v6);
        v1 = 0;
      }

      else
      {
        v1 = v2;
        sub_10000E3E8(&v6, v7);
        sub_1007976B4();
        if (sub_1007972D4() & 1) != 0 || (sub_10000E3E8(&v6, v7), sub_1007976B4(), (sub_1007972D4()))
        {
          v1 = 0;
        }

        sub_1000074E0(&v6);
      }
    }

    else
    {
      sub_1001FF760(&v4);
      v1 = 0;
    }
  }

  return v1 & 1;
}

uint64_t sub_1006D8A64()
{
  v1[19] = v0;
  v2 = sub_10079ACE4();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = sub_1007A26F4();
  v1[24] = sub_1007A26E4();
  v4 = sub_1007A2694();
  v1[25] = v4;
  v1[26] = v3;

  return _swift_task_switch(sub_1006D8B5C, v4, v3);
}

uint64_t sub_1006D8B5C()
{
  sub_1001FEC24((v0 + 64));
  if (*(v0 + 88))
  {
    v1 = *(v0 + 152);
    sub_1001FF7C8((v0 + 64), (v0 + 16));
    v2 = sub_10000E3E8(v1 + 16, v1[19]);
    *(v0 + 216) = v1[10];
    v4 = *v2;
    v3 = *(v2 + 1);
    *(v0 + 144) = v2[4];
    *(v0 + 112) = v4;
    *(v0 + 128) = v3;
    *(v0 + 224) = sub_1007A26E4();
    *(v0 + 232) = sub_1007A26E4();
    v6 = sub_1007A2694();
    *(v0 + 240) = v6;
    *(v0 + 248) = v5;

    return _swift_task_switch(sub_1006D8D30, v6, v5);
  }

  else
  {

    sub_1001FF760(v0 + 64);
    sub_10079AC44();
    v7 = sub_10079ACC4();
    v8 = sub_1007A29B4();
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 168);
    v10 = *(v0 + 176);
    v12 = *(v0 + 160);
    if (v9)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Action doesn't have sufficient information to handle action.", v13, 2u);
    }

    (*(v11 + 8))(v10, v12);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1006D8D30()
{
  v1 = v0[27];
  v2 = v0[19];
  sub_10000E3E8(v0 + 2, v0[5]);
  v3 = sub_100797674();
  v5 = v4;
  v0[32] = v4;
  v6 = sub_1007A26E4();
  v0[33] = v6;
  v7 = swift_task_alloc();
  v0[34] = v7;
  *(v7 + 16) = v0 + 14;
  *(v7 + 24) = v3;
  *(v7 + 32) = v5;
  *(v7 + 40) = 512;
  *(v7 + 48) = v0 + 2;
  *(v7 + 56) = v1;
  *(v7 + 64) = 1;
  *(v7 + 72) = v2;
  v8 = swift_task_alloc();
  v0[35] = v8;
  *v8 = v0;
  v8[1] = sub_10055D8E8;

  return withCheckedContinuation<A>(isolation:function:_:)(v8, v6, &protocol witness table for MainActor, 0xD000000000000050, 0x80000001008DCA30, sub_10055DC58, v7, &type metadata for () + 8);
}

uint64_t sub_1006D8EAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_1006D8A64();
}

id sub_1006D904C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackdropView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1006D90A4()
{
  result = qword_100AF3418;
  if (!qword_100AF3418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AF3418);
  }

  return result;
}

uint64_t sub_1006D90F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = sub_10079CCC4();
  v4 = *(v3 - 8);
  v40 = v3;
  v41 = v4;
  __chkstk_darwin(v3);
  v39 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10079CDF4();
  v7 = *(v6 - 8);
  v37 = v6;
  v38 = v7;
  __chkstk_darwin(v6);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F1160(&qword_100AF3420);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - v11;
  v13 = sub_1001F1160(&qword_100AF3428);
  v34 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  v16 = sub_1001F1160(&qword_100AF3430);
  v17 = *(v16 - 8);
  v35 = v16;
  v36 = v17;
  __chkstk_darwin(v16);
  v32 = &v31 - v18;
  v43 = v2;

  sub_1001F1160(&qword_100AF3438);
  sub_1006DA620();
  sub_10079E054();
  sub_10079E414();
  v19 = sub_1001F1160(&qword_100AF34C8);
  v20 = sub_100005920(&qword_100AF34D0, &qword_100AF3420);
  v30 = sub_1006DABE8();
  sub_10079DC54();
  (*(v10 + 8))(v12, v9);
  v21 = v33;
  sub_10079CDE4();
  v44 = v9;
  v45 = &type metadata for Solarium;
  v46 = v19;
  v47 = v19;
  v48 = v20;
  v49 = &protocol witness table for Solarium;
  v50 = v30;
  v51 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = sub_1006DACCC(&qword_100AD5388, &type metadata accessor for BorderlessButtonStyle);
  v24 = v32;
  v25 = v37;
  sub_10079D6A4();
  (*(v38 + 8))(v21, v25);
  (*(v34 + 8))(v15, v13);
  v26 = v39;
  sub_10079C454();
  v44 = v13;
  v45 = v25;
  v46 = OpaqueTypeConformance2;
  v47 = v23;
  swift_getOpaqueTypeConformance2();
  sub_1006DACCC(&qword_100AD8DC8, &type metadata accessor for AutomaticHoverEffect);
  v27 = v35;
  v28 = v40;
  sub_10079D6F4();
  (*(v41 + 8))(v26, v28);
  return (*(v36 + 8))(v24, v27);
}

uint64_t sub_1006D9698@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v50 = sub_10079C824();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v51 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1001F1160(&qword_100AF3468);
  __chkstk_darwin(v47);
  v5 = &v44 - v4;
  v45 = sub_10079C8F4();
  v6 = sub_10079DF24();
  v46 = a1;
  v7 = a1[7];
  *&v65[0] = a1[6];
  *(&v65[0] + 1) = v7;
  sub_100206ECC();

  v8 = sub_10079D5D4();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v12 &= 1u;
  sub_1001F1894(v8, v10, v12);
  sub_10020B430(v8, v10, v12);

  v64 = 1;
  v63 = v12;
  v15 = sub_10079D294();
  sub_10079BBA4();
  v60 = 0;
  v54 = v45;
  LOBYTE(v55) = 1;
  *(&v55 + 1) = v6;
  *&v56 = v8;
  *(&v56 + 1) = v10;
  LOBYTE(v57) = v12;
  *(&v57 + 1) = v14;
  LOBYTE(v58) = v15;
  *(&v58 + 1) = v16;
  *&v59[0] = v17;
  *(&v59[0] + 1) = v18;
  *&v59[1] = v19;
  BYTE8(v59[1]) = 0;
  sub_10079D3F4();
  sub_1001F1160(&qword_100AF3488);
  sub_1006DAA0C();
  sub_10079D664();
  v65[4] = v58;
  v66[0] = v59[0];
  *(v66 + 9) = *(v59 + 9);
  v65[0] = v54;
  v65[1] = v55;
  v65[2] = v56;
  v65[3] = v57;
  sub_100007840(v65, &qword_100AF3488);
  v20 = sub_10079DE34();
  KeyPath = swift_getKeyPath();
  v22 = &v5[*(v47 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  sub_10079E414();
  v23 = v46;
  v52 = v46;
  sub_1001F1160(&qword_100AF3470);
  sub_1001F1160(&qword_100AF3478);
  sub_1006DA918();
  sub_1006DAAC4();
  sub_1006DAB70(&qword_100AF34C0, &qword_100AF3478);
  v24 = v48;
  v25 = v49;
  sub_10079DC54();
  v26 = v5;
  v27 = v50;
  sub_100049594(v26);
  BYTE8(v54) = *(v23 + 24);
  v28 = v23[2];
  *&v54 = v28;
  v29 = BYTE8(v54);

  if ((v29 & 1) == 0)
  {
    sub_1007A29C4();
    v30 = sub_10079D244();
    sub_10079AB44();

    v31 = v51;
    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v54, &qword_100AEA388);
    (*(v24 + 8))(v31, v27);
    v28 = v61;
  }

  v32 = sub_10079D294();
  v33 = v25 + *(sub_1001F1160(&qword_100AF3460) + 36);
  *v33 = v28;
  *(v33 + 8) = v32;
  v62 = *(v23 + 8);
  v61 = *v23;
  v34 = v61;
  v35 = v62;

  v36 = v34;
  if ((v35 & 1) == 0)
  {
    sub_1007A29C4();
    v37 = sub_10079D244();
    sub_10079AB44();

    v38 = v51;
    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v61, &qword_100AD8538);
    (*(v24 + 8))(v38, v27);
    v36 = v53;
  }

  v39 = v25 + *(sub_1001F1160(&qword_100AF3450) + 36);
  *v39 = v36;
  *(v39 + 8) = 256;

  if ((v35 & 1) == 0)
  {
    sub_1007A29C4();
    v40 = sub_10079D244();
    sub_10079AB44();

    v41 = v51;
    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v61, &qword_100AD8538);
    (*(v24 + 8))(v41, v27);
    v34 = v53;
  }

  result = sub_1001F1160(&qword_100AF3438);
  v43 = v25 + *(result + 36);
  *v43 = v34;
  *(v43 + 8) = 0;
  return result;
}

__n128 sub_1006D9CC0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10079C824();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&qword_100AF34B8);
  __chkstk_darwin(v10);
  v12 = v23 - v11;
  if (qword_100AD17D0 != -1)
  {
    swift_once();
  }

  sub_10079E474();
  sub_10079BE54();
  sub_1000495FC(a1, v12);
  v13 = &v12[*(v10 + 36)];
  v14 = v23[1];
  *v13 = v23[0];
  *(v13 + 1) = v14;
  *(v13 + 2) = v23[2];
  v15 = *(a2 + 32);
  v31 = v15;
  v32 = *(a2 + 40);
  if (v32 != 1)
  {

    sub_1007A29C4();
    v16 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v31, &qword_100AD55B8);
    (*(v7 + 8))(v9, v6);
    LOBYTE(v15) = v24;
  }

  if (v15)
  {
    v17 = INFINITY;
  }

  else
  {
    v17 = 420.0;
  }

  sub_10079E474();
  if (v17 < 168.0)
  {
    sub_1007A29C4();
    v18 = sub_10079D244();
    sub_10079AB44();
  }

  sub_10079C414();
  sub_10004966C(v12, a3);
  v19 = a3 + *(sub_1001F1160(&qword_100AF3470) + 36);
  v20 = v29;
  *(v19 + 64) = v28;
  *(v19 + 80) = v20;
  *(v19 + 96) = v30;
  v21 = v25;
  *v19 = v24;
  *(v19 + 16) = v21;
  result = v27;
  *(v19 + 32) = v26;
  *(v19 + 48) = result;
  return result;
}

__n128 sub_1006DA014@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10079E474();
  sub_10079C414();
  sub_1000495FC(a1, a2);
  v4 = (a2 + *(sub_1001F1160(&qword_100AF3478) + 36));
  v4[4] = v10;
  v4[5] = v11;
  v4[6] = v12;
  *v4 = v6;
  v4[1] = v7;
  result = v9;
  v4[2] = v8;
  v4[3] = v9;
  return result;
}

uint64_t sub_1006DA0E4@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (a3 + *(sub_1001F1160(&qword_100AF34C8) + 36));
  v7 = *(sub_1001F1160(&unk_100ADB9A0) + 28);
  v8 = *a2;
  v9 = sub_10079BC54();
  (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  *v6 = swift_getKeyPath();
  v10 = sub_1001F1160(&qword_100AF3420);
  v11 = *(*(v10 - 8) + 16);

  return v11(a3, a1, v10);
}

uint64_t sub_1006DA238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a1;
  v31 = a2;
  v4 = sub_100796CF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  KeyPath = swift_getKeyPath();
  v28 = swift_getKeyPath();
  v27 = swift_getKeyPath();
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v5 + 16))(v7, v10, v4);
  v20 = sub_1007A22D4();
  v22 = v21;
  (*(v5 + 8))(v10, v4);
  result = (*(v12 + 8))(v17, v11);
  *a3 = KeyPath;
  *(a3 + 8) = 0;
  *(a3 + 9) = *v34;
  *(a3 + 12) = *&v34[3];
  *(a3 + 16) = v28;
  *(a3 + 24) = 0;
  *(a3 + 25) = *v33;
  *(a3 + 28) = *&v33[3];
  *(a3 + 32) = v27;
  *(a3 + 40) = 0;
  v24 = *v32;
  *(a3 + 44) = *&v32[3];
  *(a3 + 41) = v24;
  *(a3 + 48) = v20;
  *(a3 + 56) = v22;
  v25 = v31;
  *(a3 + 64) = v30;
  *(a3 + 72) = v25;
  return result;
}

uint64_t sub_1006DA550(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1006DA598(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

unint64_t sub_1006DA620()
{
  result = qword_100AF3440;
  if (!qword_100AF3440)
  {
    sub_1001F1234(&qword_100AF3438);
    sub_1006DA6D8();
    sub_100005920(&qword_100AE2D10, &qword_100AE2D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3440);
  }

  return result;
}

unint64_t sub_1006DA6D8()
{
  result = qword_100AF3448;
  if (!qword_100AF3448)
  {
    sub_1001F1234(&qword_100AF3450);
    sub_1006DA790();
    sub_100005920(&qword_100ADC320, &qword_100ADC300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3448);
  }

  return result;
}

unint64_t sub_1006DA790()
{
  result = qword_100AF3458;
  if (!qword_100AF3458)
  {
    sub_1001F1234(&qword_100AF3460);
    sub_1001F1234(&qword_100AF3468);
    sub_1001F1234(&qword_100AF3470);
    sub_1001F1234(&qword_100AF3478);
    sub_1006DA918();
    sub_1006DAAC4();
    sub_1006DAB70(&qword_100AF34C0, &qword_100AF3478);
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3458);
  }

  return result;
}

unint64_t sub_1006DA918()
{
  result = qword_100AF3480;
  if (!qword_100AF3480)
  {
    sub_1001F1234(&qword_100AF3468);
    sub_1001F1234(&qword_100AF3488);
    sub_1006DAA0C();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&unk_100AD1D10, &qword_100ADB490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3480);
  }

  return result;
}

unint64_t sub_1006DAA0C()
{
  result = qword_100AF3490;
  if (!qword_100AF3490)
  {
    sub_1001F1234(&qword_100AF3488);
    sub_100005920(&qword_100AF3498, &qword_100AF34A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3490);
  }

  return result;
}

unint64_t sub_1006DAAC4()
{
  result = qword_100AF34A8;
  if (!qword_100AF34A8)
  {
    sub_1001F1234(&qword_100AF3470);
    sub_1006DAB70(&qword_100AF34B0, &qword_100AF34B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF34A8);
  }

  return result;
}

uint64_t sub_1006DAB70(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2);
    sub_1006DA918();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1006DABE8()
{
  result = qword_100AF34D8;
  if (!qword_100AF34D8)
  {
    sub_1001F1234(&qword_100AF34C8);
    sub_100005920(&qword_100AF34D0, &qword_100AF3420);
    sub_100005920(&qword_100ADB998, &unk_100ADB9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF34D8);
  }

  return result;
}

uint64_t sub_1006DACCC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1006DAD1C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1006DAD40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1006DAD88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1006DAE08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  v3 = *a1;
  if (*a1)
  {
    v6 = *(a1 + 48);
    v5 = *(a1 + 56);
    v7 = *(a1 + 32);
    v8 = *(a1 + 64);

    v9 = v3;
    v10 = ChromeStyle.orientationLockHintForegroundColor(locked:)(v8);

    KeyPath = swift_getKeyPath();
    sub_10079E474();
    result = sub_10079BE54();
    *a2 = v7;
    *(a2 + 8) = v2;
    *(a2 + 16) = v6;
    *(a2 + 24) = v5;
    *(a2 + 32) = v8;
    *(a2 + 40) = KeyPath;
    *(a2 + 48) = v10;
    *(a2 + 56) = v13;
    *(a2 + 72) = v14;
    *(a2 + 88) = v15;
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_1002B3600();

    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1006DAF20@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v12[2] = *(v1 + 32);
  v12[3] = v3;
  v13 = *(v1 + 64);
  v4 = *(v1 + 16);
  v12[0] = *v1;
  v12[1] = v4;
  v5 = v4;
  v6 = sub_10079CFE4();
  v7 = v13;
  *a1 = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB730);
  swift_storeEnumTagMultiPayload();
  v8 = sub_1001F1160(&qword_100AF34E0);
  v9 = (a1 + v8[9]);
  type metadata accessor for ChromeStyle();
  sub_1002B3600();
  *v9 = sub_10079C484();
  v9[1] = v10;
  result = sub_1006DAE08(v12, a1 + v8[10]);
  *(a1 + v8[11]) = v5;
  *(a1 + v8[12]) = *(&v5 + 1);
  *(a1 + v8[13]) = v6 & 1;
  *(a1 + v8[14]) = v7;
  *(a1 + v8[15]) = 0;
  return result;
}

unint64_t sub_1006DB03C()
{
  result = qword_100AF34E8;
  if (!qword_100AF34E8)
  {
    sub_1001F1234(&qword_100AF34E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF34E8);
  }

  return result;
}

uint64_t sub_1006DB0A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_10079C2A4();
  sub_1006DCCFC();
  swift_getWitnessTable();
  v5 = *(*(a1 - 8) + 16);

  return v5(a2, v2, a1);
}

uint64_t View.onAlertPresentationChanged(isPresented:chromeStyle:)(uint64_t a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v3 = a2;
  sub_10079DC34();
}

uint64_t sub_1006DB270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001F1160(&qword_100AF3708);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  v9 = *v2;
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v9 = 0;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = sub_1001F1160(&qword_100AF3710);
  (*(*(v11 - 8) + 16))(v8, a1, v11);
  v12 = &v8[*(v6 + 44)];
  *v12 = sub_10047DA08;
  v12[1] = v10;
  sub_10020B3C8(v8, a2, &qword_100AF3708);
}

double sub_1006DB3B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10079E474();
  sub_10079BE54();
  v4 = sub_1001F1160(&qword_100AF3530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(sub_1001F1160(&unk_100AF3538) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t sub_1006DB4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 24);
  if (*(v2 + 16))
  {
    v5 = 0.0;
  }

  if (*(v2 + 32))
  {
    v6 = 0.0;
  }

  if (*v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (*v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = sub_1001F1160(&qword_100AF3520);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  result = sub_1001F1160(&qword_100AF3528);
  v11 = (a2 + *(result + 36));
  *v11 = v8;
  v11[1] = v7;
  return result;
}

uint64_t sub_1006DB580(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100AF36D0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_1001F1160(&qword_100AEFE48);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v10 = [objc_opt_self() standardUserDefaults];
  v11 = sub_1007A2214();
  v12 = [v10 BOOLForKey:v11];

  if (v12)
  {
    sub_1006578E0(a2, v9);
    sub_1000077D8(v9, v6, &qword_100AEFE48);
    swift_storeEnumTagMultiPayload();
    sub_1001F1160(&qword_100AF36E0);
    sub_1006DD240();
    sub_100005920(&unk_100AF36F0, &qword_100AF36E0);
    sub_10079CCA4();
    return sub_100007840(v9, &qword_100AEFE48);
  }

  else
  {
    v14 = sub_1001F1160(&qword_100AF36E0);
    (*(*(v14 - 8) + 16))(v6, a1, v14);
    swift_storeEnumTagMultiPayload();
    sub_1006DD240();
    sub_100005920(&unk_100AF36F0, &qword_100AF36E0);
    return sub_10079CCA4();
  }
}

uint64_t sub_1006DB858(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1001F1160(&qword_100AF3668);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  v9 = sub_1001F1160(&qword_100AF3670);
  __chkstk_darwin(v9);
  v11 = v17 - v10;
  sub_10079BEB4();
  sub_10079E474();
  sub_10079BE54();
  v12 = sub_1001F1160(&qword_100AF3650);
  (*(*(v12 - 8) + 16))(v8, a2, v12);
  v13 = &v8[*(sub_1001F1160(&qword_100AF3678) + 36)];
  v14 = v17[1];
  *v13 = v17[0];
  *(v13 + 1) = v14;
  *(v13 + 2) = v17[2];
  *&v8[*(v6 + 44)] = 257;
  if (a3)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  sub_10020B3C8(v8, v11, &qword_100AF3668);
  *&v11[*(v9 + 36)] = v15;
  sub_1006DCDFC();
  sub_10079D944();
  return sub_100007840(v11, &qword_100AF3670);
}

uint64_t sub_1006DBA6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10079C824();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&unk_100ADB740);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000077D8(v2, &v14 - v9, &unk_100ADB740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079C104();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1007A29C4();
    v13 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1006DBC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1001F1160(&qword_100AF3650);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = sub_1001F1160(&qword_100AF3658);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  v13 = *v2;
  if (*v2)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 1.0;
  }

  v15 = *(v5 + 16);
  v15(&v23 - v11, a1, v4);
  *&v12[*(v10 + 44)] = v14;
  v23 = sub_10079E474();
  v17 = v16;
  v15(v8, a1, v4);
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v19 = swift_allocObject();
  (*(v5 + 32))(v19 + v18, v8, v4);
  *(v19 + v18 + v6) = v13;
  v20 = v24;
  sub_10020B3C8(v12, v24, &qword_100AF3658);
  result = sub_1001F1160(&qword_100AF3660);
  v22 = (v20 + *(result + 36));
  *v22 = sub_1006DCD50;
  v22[1] = v19;
  v22[2] = v23;
  v22[3] = v17;
  return result;
}

uint64_t sub_1006DBE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a2;
  v41 = a3;
  v4 = sub_1001F1160(&qword_100AF3608);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  v10 = sub_1001F1160(&qword_100AF3610);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v39 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v16 = sub_1001F1160(&qword_100AF3618);
  v17 = *(*(v16 - 8) + 16);
  v17(v15, a1, v16);
  *&v15[*(v11 + 44)] = 257;
  v17(v9, a1, v16);
  v9[*(sub_1001F1160(&unk_100AF3620) + 36)] = 1;
  v18 = sub_10079E484();
  v20 = v19;
  v21 = sub_10079C8F4();
  v42[0] = 0;
  sub_1006DC2C0(&v55);
  v46 = *v57;
  v47 = *&v57[16];
  v48 = *&v57[32];
  v49 = *&v57[48];
  v44 = v55;
  v45 = v56;
  v51 = *&v57[48];
  v50[2] = *v57;
  v50[3] = *&v57[16];
  v50[4] = *&v57[32];
  v50[0] = v55;
  v50[1] = v56;
  sub_1000077D8(&v44, &v52, &qword_100AE7A10);
  sub_100007840(v50, &qword_100AE7A10);
  *(&v43[2] + 7) = v46;
  *(&v43[3] + 7) = v47;
  *(&v43[4] + 7) = v48;
  *(&v43[5] + 7) = v49;
  *(v43 + 7) = v44;
  *(&v43[1] + 7) = v45;
  v22 = v42[0];
  *&v52 = v18;
  *(&v52 + 1) = v20;
  v53 = v21;
  LOBYTE(v54[0]) = v42[0];
  *(&v54[1] + 1) = v43[1];
  v24 = v43[0];
  v23 = v43[1];
  *(v54 + 1) = v43[0];
  v54[5] = *(&v43[4] + 15);
  *(&v54[4] + 1) = v43[4];
  v26 = v43[3];
  v25 = v43[4];
  *(&v54[3] + 1) = v43[3];
  v27 = v43[2];
  *(&v54[2] + 1) = v43[2];
  v28 = &v9[*(v5 + 44)];
  v29 = v54[3];
  *(v28 + 4) = v54[2];
  *(v28 + 5) = v29;
  v30 = v54[5];
  *(v28 + 6) = v54[4];
  *(v28 + 7) = v30;
  v31 = v53;
  *v28 = v52;
  *(v28 + 1) = v31;
  v32 = v54[1];
  *(v28 + 2) = v54[0];
  *(v28 + 3) = v32;
  *&v57[17] = v23;
  *&v55 = v18;
  *(&v55 + 1) = v20;
  v56 = v21;
  v57[0] = v22;
  *&v57[1] = v24;
  *&v58[15] = *(&v43[4] + 15);
  *v58 = v25;
  *&v57[49] = v26;
  *&v57[33] = v27;
  sub_1000077D8(&v52, v42, &qword_100AF3630);
  sub_100007840(&v55, &qword_100AF3630);
  v33 = v39;
  sub_1000077D8(v15, v39, &qword_100AF3610);
  v34 = v40;
  sub_1000077D8(v9, v40, &qword_100AF3608);
  v35 = v41;
  sub_1000077D8(v33, v41, &qword_100AF3610);
  v36 = sub_1001F1160(&unk_100AF3638);
  sub_1000077D8(v34, v35 + *(v36 + 48), &qword_100AF3608);
  sub_100007840(v9, &qword_100AF3608);
  sub_100007840(v15, &qword_100AF3610);
  sub_100007840(v34, &qword_100AF3608);
  return sub_100007840(v33, &qword_100AF3610);
}

uint64_t sub_1006DC2C0@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_10079C104();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v22[-v6];
  sub_1001F1160(&qword_100ADBD40);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10080EFF0;
  *(v8 + 32) = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v9 = sub_10079DE24();

  v24 = v8;
  *(v8 + 40) = v9;
  sub_1006DBA6C(v7);
  v10 = *(v2 + 104);
  v23 = enum case for LayoutDirection.leftToRight(_:);
  v10(v4);
  LOBYTE(v9) = sub_10079C0F4();
  v11 = *(v2 + 8);
  v11(v4, v1);
  v11(v7, v1);
  if (v9)
  {
    sub_10079E644();
  }

  else
  {
    sub_10079E654();
  }

  sub_1006DBA6C(v7);
  (v10)(v4, v23, v1);
  v12 = sub_10079C0F4();
  v11(v4, v1);
  v11(v7, v1);
  if (v12)
  {
    sub_10079E654();
  }

  else
  {
    sub_10079E644();
  }

  sub_10079E364();
  sub_10079BFE4();
  type metadata accessor for ClipHorizontallyWithFadeout();
  sub_10079E474();
  sub_10079BE54();
  *&v33 = v39;
  v13 = v36;
  v28 = v36;
  v14 = v25;
  *(v25 + 80) = v36;
  v15 = v37;
  v16 = v38;
  v31 = v37;
  v32 = v38;
  v18 = v34;
  v17 = v35;
  v19 = v33;
  v27[3] = v34;
  v27[4] = v35;
  v27[0] = v37;
  v27[1] = v38;
  v14[3] = v34;
  v14[4] = v17;
  v27[2] = v33;
  v20 = v33;
  *v14 = v15;
  v14[1] = v16;
  v14[2] = v20;
  v29[0] = v31;
  v29[1] = v32;
  v30 = v13;
  v29[3] = v18;
  v29[4] = v35;
  v29[2] = v19;
  sub_1000077D8(v27, &v26, &qword_100ADBD50);
  return sub_100007840(v29, &qword_100ADBD50);
}

uint64_t sub_1006DC600@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = sub_10079D254();
  v5 = sub_1001F1160(&qword_100AF3600);
  return sub_1006DBE94(a1, v2, &a2[*(v5 + 44)]);
}

void sub_1006DC65C(unsigned __int8 *a1)
{
  v2 = sub_10079BC44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v9 = *a1;
  v10 = objc_opt_self();
  sub_1001F1160(&qword_100AF3500);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10080B690;
  *(v11 + 32) = sub_10000A7C4(0, &qword_100AF3508);
  sub_1001F1160(&unk_100AF3510);
  isa = sub_1007A25D4().super.isa;

  v18 = [v10 appearanceWhenContainedInInstancesOfClasses:isa];

  if (v9 == 1)
  {
    sub_10000A7C4(0, &qword_100AEEF60);
    ChromeStyle.accentColor.getter();
    v13 = sub_1007A3144();
    [v18 setTintColor:v13];

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    (*(v3 + 104))(v5, enum case for ColorScheme.dark(_:), v2);
    LOBYTE(v13) = sub_10079BC34();
    v14 = *(v3 + 8);
    v14(v5, v2);
    v14(v8, v2);
    if (v13)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    [v18 setOverrideUserInterfaceStyle:v15];
  }

  else
  {
    [v18 setTintColor:0];
    [v18 setOverrideUserInterfaceStyle:0];
    v16 = v18;
  }
}

uint64_t sub_1006DC978(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[33])
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

uint64_t sub_1006DC9CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for ClipHorizontallyWithFadeout()
{
  result = qword_100AF35A0;
  if (!qword_100AF35A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006DCAD0()
{
  sub_1001F4FE8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1006DCB54()
{
  result = qword_100AF35E0;
  if (!qword_100AF35E0)
  {
    sub_1001F1234(&qword_100AF3528);
    sub_100005920(&qword_100AF35E8, &qword_100AF3520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF35E0);
  }

  return result;
}

unint64_t sub_1006DCC0C()
{
  result = qword_100AF35F0;
  if (!qword_100AF35F0)
  {
    sub_1001F1234(&unk_100AF3538);
    sub_100005920(&qword_100AF35F8, &qword_100AF3530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF35F0);
  }

  return result;
}

unint64_t sub_1006DCCFC()
{
  result = qword_100AF3648;
  if (!qword_100AF3648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3648);
  }

  return result;
}

uint64_t sub_1006DCD50(uint64_t a1)
{
  v3 = *(sub_1001F1160(&qword_100AF3650) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  return sub_1006DB858(a1, v4, v5);
}

unint64_t sub_1006DCDFC()
{
  result = qword_100AF3680;
  if (!qword_100AF3680)
  {
    sub_1001F1234(&qword_100AF3670);
    sub_1006DCE88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3680);
  }

  return result;
}

unint64_t sub_1006DCE88()
{
  result = qword_100AF3688;
  if (!qword_100AF3688)
  {
    sub_1001F1234(&qword_100AF3668);
    sub_1006DCF14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3688);
  }

  return result;
}

unint64_t sub_1006DCF14()
{
  result = qword_100AF3690;
  if (!qword_100AF3690)
  {
    sub_1001F1234(&qword_100AF3678);
    sub_100005920(&qword_100AF3698, &qword_100AF3650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3690);
  }

  return result;
}

uint64_t sub_1006DCFDC(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1006DD038(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

unint64_t sub_1006DD098()
{
  result = qword_100AF36B0;
  if (!qword_100AF36B0)
  {
    sub_1001F1234(&qword_100AF3660);
    sub_1006DD150();
    sub_100005920(&qword_100AF36C0, &qword_100AF36C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF36B0);
  }

  return result;
}

unint64_t sub_1006DD150()
{
  result = qword_100AF36B8;
  if (!qword_100AF36B8)
  {
    sub_1001F1234(&qword_100AF3658);
    sub_100005920(&qword_100AF3698, &qword_100AF3650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF36B8);
  }

  return result;
}

unint64_t sub_1006DD240()
{
  result = qword_100AF36E8;
  if (!qword_100AF36E8)
  {
    sub_1001F1234(&qword_100AEFE48);
    sub_100005920(&unk_100AF36F0, &qword_100AF36E0);
    sub_100005920(&qword_100AEFE40, &qword_100AF3700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF36E8);
  }

  return result;
}