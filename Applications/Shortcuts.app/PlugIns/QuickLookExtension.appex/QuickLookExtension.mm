id sub_100001A28()
{
  v1 = OBJC_IVAR____TtC18QuickLookExtension21PreviewViewController____lazy_storage___hostingView;
  v2 = *(v0 + OBJC_IVAR____TtC18QuickLookExtension21PreviewViewController____lazy_storage___hostingView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18QuickLookExtension21PreviewViewController____lazy_storage___hostingView);
  }

  else
  {
    v4 = v0;
    sub_100005110();
    v5 = objc_allocWithZone(sub_1000034F4(&qword_10000C4B8, &qword_1000056D0));
    v6 = sub_100005030();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_100001ACC()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for PreviewViewController();
  objc_msgSendSuper2(&v17, "loadView");
  v1 = sub_100001A28();
  [v0 addChildViewController:v1];

  v2 = OBJC_IVAR____TtC18QuickLookExtension21PreviewViewController____lazy_storage___hostingView;
  result = [*&v0[OBJC_IVAR____TtC18QuickLookExtension21PreviewViewController____lazy_storage___hostingView] view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  result = [v0 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  [result bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v4 setFrame:{v7, v9, v11, v13}];
  result = [*&v0[v2] view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = result;
  [result setAutoresizingMask:18];

  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = result;
  result = [*&v0[v2] view];
  if (result)
  {
    v16 = result;
    [v15 addSubview:result];

    return [*&v0[v2] didMoveToParentViewController:v0];
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_100001CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100004F10();
  v9 = sub_100004DDC(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_100004E00();
  v14 = v13 - v12;
  (*(v15 + 16))(v13 - v12, a1);
  v16 = objc_allocWithZone(WFShortcutExtractor);
  v18 = sub_100003138(v14, 1, 0, 0, v17);
  v19 = swift_allocObject();
  v19[2] = v4;
  v19[3] = a2;
  v19[4] = a3;
  aBlock[4] = sub_100003284;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100001E6C;
  aBlock[3] = &unk_100008788;
  v20 = _Block_copy(aBlock);
  v21 = v4;

  [v18 extractShortcutWithCompletion:v20];
  _Block_release(v20);
}

void sub_100001E6C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_100002018(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_100004ED0();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id sub_10000207C(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC18QuickLookExtension21PreviewViewController____lazy_storage___hostingView] = 0;
  if (a2)
  {
    v5 = sub_100005160();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for PreviewViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id sub_100002168(void *a1)
{
  *&v1[OBJC_IVAR____TtC18QuickLookExtension21PreviewViewController____lazy_storage___hostingView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PreviewViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100002204()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PreviewViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000226C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_100005160();

  v2 = [v0 initWithBundleIdentifier:v1];

  return v2;
}

uint64_t sub_1000022E0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_100005020();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = sub_1000034F4(&qword_10000C570, &qword_100005D28);
  return sub_100002344(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_100002344@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a2;
  v61 = a3;
  v4 = sub_1000034F4(&qword_10000C578, &qword_100005D30);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  sub_100004DF0();
  v60 = v7 - v8;
  sub_100004E58();
  __chkstk_darwin(v9);
  v11 = &v54 - v10;
  v58 = sub_100005130();
  v12 = sub_100004DDC(v58);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_100004DF0();
  v19 = (v17 - v18);
  __chkstk_darwin(v20);
  v22 = &v54 - v21;
  v23 = sub_1000034F4(&qword_10000C580, &qword_100005D38);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  sub_100004DF0();
  v28 = v26 - v27;
  __chkstk_darwin(v29);
  v31 = &v54 - v30;
  *v31 = sub_100005020();
  *(v31 + 1) = 0;
  v31[16] = 1;
  v32 = sub_1000034F4(&qword_10000C588, &qword_100005D40);
  sub_1000026E8(a1, &v31[*(v32 + 44)]);
  v33 = sub_100005050();
  sub_100004FA0();
  v34 = &v31[*(v24 + 44)];
  *v34 = v33;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  v56 = v22;
  sub_100005120();
  v39 = a1;
  v40 = v59;
  sub_100004F20();
  v41 = [objc_opt_self() wf_systemGroupedBackgroundColor];
  v42 = sub_1000050E0();
  v43 = sub_100005050();
  v44 = &v11[*(v5 + 44)];
  v55 = v11;
  *v44 = v42;
  v44[8] = v43;
  v57 = v28;
  sub_1000048F0(v31, v28, &qword_10000C580, &qword_100005D38);
  v45 = *(v14 + 16);
  v46 = v22;
  v47 = v58;
  v45(v19, v46, v58);
  v48 = v60;
  sub_100004750(v11, v60);
  v49 = v28;
  v50 = v61;
  sub_1000048F0(v49, v61, &qword_10000C580, &qword_100005D38);
  v51 = sub_1000034F4(&qword_10000C590, &qword_100005D48);
  v45(v50 + *(v51 + 48), v19, v47);
  sub_100004750(v48, v50 + *(v51 + 64));
  sub_1000047C0(v55);
  v52 = *(v14 + 8);
  v52(v56, v47);
  sub_10000494C(v31, &qword_10000C580, &qword_100005D38);
  sub_1000047C0(v48);
  v52(v19, v47);
  return sub_10000494C(v57, &qword_10000C580, &qword_100005D38);
}

uint64_t sub_1000026E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_1000034F4(&qword_10000C598, &qword_100005D50);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_100004DF0();
  v59 = v5 - v6;
  sub_100004E58();
  __chkstk_darwin(v7);
  v9 = (&v55 - v8);
  *v9 = sub_100005140();
  v9[1] = v10;
  v11 = sub_1000034F4(&qword_10000C5A0, &qword_100005D58);
  sub_100002A20(a1, v9 + *(v11 + 44));
  v12 = sub_100004828(a1, &selRef_name);
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = 0xE000000000000000;
  if (v13)
  {
    v15 = v13;
  }

  v61 = v14;
  v62 = v15;
  sub_100004634();
  v16 = sub_1000050A0();
  v18 = v17;
  v20 = v19;
  sub_100005060();
  v21 = sub_100005090();
  v57 = v22;
  v58 = v21;
  v56 = v23;
  HIDWORD(v55) = v24;

  sub_100004688(v16, v18, v20 & 1);

  v25 = [a1 workflowSubtitle];
  v26 = sub_100005170();
  v28 = v27;

  v61 = v26;
  v62 = v28;
  v29 = sub_1000050A0();
  v31 = v30;
  v33 = v32;
  sub_100005070();
  v34 = sub_100005090();
  v36 = v35;
  v38 = v37;
  v40 = v39;

  sub_100004688(v29, v31, v33 & 1);

  v41 = v59;
  sub_1000048F0(v9, v59, &qword_10000C598, &qword_100005D50);
  LOBYTE(v29) = BYTE4(v55) & 1;
  LOBYTE(v61) = BYTE4(v55) & 1;
  v42 = v60;
  sub_1000048F0(v41, v60, &qword_10000C598, &qword_100005D50);
  v43 = sub_1000034F4(&qword_10000C5A8, &qword_100005D60);
  v44 = v42 + *(v43 + 48);
  v46 = v57;
  v45 = v58;
  v47 = v56;
  *v44 = v58;
  *(v44 + 8) = v47;
  *(v44 + 16) = v29;
  *(v44 + 24) = v46;
  v48 = v42 + *(v43 + 64);
  *v48 = v34;
  *(v48 + 8) = v36;
  LOBYTE(v42) = v38 & 1;
  *(v48 + 16) = v38 & 1;
  *(v48 + 24) = v40;
  v49 = v45;
  sub_100004884(v45, v47, v29);

  v50 = sub_100004E64();
  sub_100004884(v50, v51, v42);

  sub_10000494C(v9, &qword_10000C598, &qword_100005D50);
  v52 = sub_100004E64();
  sub_100004688(v52, v53, v42);

  sub_100004688(v49, v47, v61);

  return sub_10000494C(v41, &qword_10000C598, &qword_100005D50);
}

uint64_t sub_100002A20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = sub_100004F70();
  v4 = sub_100004DDC(v3);
  v81 = v5;
  v82 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_100004E00();
  v10 = v9 - v8;
  v11 = sub_100004F60();
  v12 = sub_100004DDC(v11);
  v75 = v13;
  v76 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_100004E00();
  v74 = (v17 - v16);
  v18 = sub_100004F80();
  v19 = sub_100004DDC(v18);
  v77 = v20;
  v78 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  sub_100004DF0();
  v80 = (v23 - v24);
  sub_100004E58();
  __chkstk_darwin(v25);
  v79 = &v74 - v26;
  v27 = sub_100004FC0();
  v28 = sub_100004E10(v27);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  sub_100004E00();
  v33 = (v32 - v31);
  v34 = sub_1000034F4(&qword_10000C5B0, &qword_100005D68);
  v35 = v34 - 8;
  v36 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  sub_100004DF0();
  v39 = v37 - v38;
  sub_100004E58();
  __chkstk_darwin(v40);
  v42 = &v74 - v41;
  v43 = *(v27 + 20);
  v44 = enum case for RoundedCornerStyle.continuous(_:);
  v45 = sub_100005010();
  sub_100004E10(v45);
  (*(v46 + 104))(&v33[v43], v44);
  __asm { FMOV            V0.2D, #16.0 }

  *v33 = _Q0;
  v52 = [a1 icon];
  v53 = [v52 backgroundColor];

  v54 = [v53 paletteGradient];
  sub_100004164(&qword_10000C5B8, &type metadata accessor for RoundedRectangle);
  sub_100005100();

  sub_100004894(v33);
  sub_100005140();
  sub_100004FB0();
  v55 = &v42[*(v35 + 44)];
  v56 = v85;
  *v55 = v84;
  *(v55 + 1) = v56;
  *(v55 + 2) = v86;
  v57 = [a1 reference];
  if (v57)
  {
    v58 = v57;
    v59 = [v57 attributionIcon];
  }

  else
  {
    sub_100004828(a1, &selRef_associatedAppBundleIdentifier);
    if (v61)
    {
      sub_1000049A4();
      sub_10000226C();
      goto LABEL_6;
    }

    v58 = [a1 icon];
    v59 = [v58 icon];
  }

  v60 = v59;

LABEL_6:
  v62 = v74;
  v63 = v75;
  *v74 = 0x4046000000000000;
  (*(v63 + 104))(v62, enum case for IconSize.customHeight(_:), v76);
  *v10 = [objc_opt_self() whiteColor];
  *(v10 + 8) = 0;
  (*(v81 + 104))(v10, enum case for IconView.DisplayMode.customColor(_:), v82);
  v64 = v79;
  sub_100004F90();
  v65 = v42;
  sub_1000048F0(v42, v39, &qword_10000C5B0, &qword_100005D68);
  v66 = v77;
  v67 = v78;
  v68 = *(v77 + 16);
  v69 = v80;
  v68(v80, v64, v78);
  v70 = v83;
  sub_1000048F0(v39, v83, &qword_10000C5B0, &qword_100005D68);
  v71 = sub_1000034F4(&qword_10000C5C0, &qword_100005D70);
  v68(v70 + *(v71 + 48), v69, v67);
  v72 = *(v66 + 8);
  v72(v64, v67);
  sub_10000494C(v65, &qword_10000C5B0, &qword_100005D68);
  v72(v69, v67);
  return sub_10000494C(v39, &qword_10000C5B0, &qword_100005D68);
}

double sub_100002FF0@<D0>(uint64_t a1@<X8>)
{
  swift_getErrorValue();
  sub_1000051B0();
  sub_100004634();
  v2 = sub_1000050A0();
  v4 = v3;
  v6 = v5;
  sub_1000050F0();
  v7 = sub_100005080();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_100004688(v2, v4, v6 & 1);

  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  v16 = sub_100005050();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = v15;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 65) = 256;
  *(a1 + 72) = v16;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1;
  return result;
}

id sub_100003138@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X5>, NSURL *a5@<X8>)
{
  v6 = v5;
  sub_100004EF0(a5);
  v12 = v11;
  if (!a3)
  {
    v13 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_100005160();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_100005160();

LABEL_6:
  v15 = [v6 initWithURL:v12 allowsOldFormatFile:a2 & 1 suggestedName:v13 sourceApplication:v14];

  v16 = sub_100004F10();
  (*(*(v16 - 8) + 8))(a1, v16);
  return v15;
}

uint64_t sub_100003244()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100003284(void *a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  if (a1)
  {
    v6 = a1;
    v7 = [v6 record];
    v8 = objc_allocWithZone(WFWorkflow);
    v27 = sub_1000035B8(v7, 0, 0);
    sub_100004F50();
    v28 = sub_100004F40();
    sub_100004F30();
    v29 = sub_100001A28();
    sub_1000036A4();
    v30 = v27;
    v31 = v28;
    sub_100005110();
    sub_100005040();

    v4(0);
  }

  else if (a2)
  {
    swift_errorRetain();
    swift_errorRetain();
    sub_1000034F4(&qword_10000C4A0, &qword_1000056C8);
    type metadata accessor for WFWorkflowError(0);
    if ((sub_100004E28(v10, v11, v12, v13, v14, v15, v16, v17, a2, v33, v35, v37) & 1) != 0 || (swift_errorRetain(), type metadata accessor for WFShortcutSharingError(0), sub_100004E28(v18, v19, v20, v21, v22, v23, v24, v25, a2, v34, v36, v38)))
    {

      v26 = sub_100001A28();
      swift_errorRetain();
      sub_100003564();
      sub_100005110();
      sub_100005040();

      v4(0);
    }

    else
    {

      v4(a2);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000034DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000034F4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003564()
{
  result = qword_10000C4A8;
  if (!qword_10000C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C4A8);
  }

  return result;
}

id sub_1000035B8(void *a1, void *a2, uint64_t a3)
{
  v10 = 0;
  v6 = [v3 initWithRecord:a1 reference:a2 storageProvider:a3 error:&v10];
  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_100004EE0();

    swift_willThrow();
  }

  swift_unknownObjectRelease();
  return v6;
}

unint64_t sub_1000036A4()
{
  result = qword_10000C4B0;
  if (!qword_10000C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C4B0);
  }

  return result;
}

uint64_t sub_1000036F8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003768(uint64_t a1)
{
  v2 = sub_100004164(&qword_10000C560, type metadata accessor for WFShortcutSharingError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000037D4(uint64_t a1)
{
  v2 = sub_100004164(&qword_10000C560, type metadata accessor for WFShortcutSharingError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100003840(void *a1, uint64_t a2)
{
  v4 = sub_100004164(&qword_10000C560, type metadata accessor for WFShortcutSharingError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000038F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004164(&qword_10000C560, type metadata accessor for WFShortcutSharingError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100003970@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1000039B4(uint64_t a1)
{
  v2 = sub_100004164(&qword_10000C518, type metadata accessor for WFWorkflowError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100003A20(uint64_t a1)
{
  v2 = sub_100004164(&qword_10000C518, type metadata accessor for WFWorkflowError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100003A8C(void *a1, uint64_t a2)
{
  v4 = sub_100004164(&qword_10000C518, type metadata accessor for WFWorkflowError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100003B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004164(&qword_10000C518, type metadata accessor for WFWorkflowError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100003BA4()
{
  v2 = *v0;
  sub_1000051D0();
  sub_100005150();
  return sub_1000051E0();
}

void sub_100003C04(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_100003C38();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

__n128 sub_100003C40(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003C4C(uint64_t *a1, int a2)
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

void *sub_100003C8C(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
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

      return sub_100004E4C(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return sub_100004E4C(result, a2);
    }
  }

  return result;
}

uint64_t sub_100003CDC(uint64_t *a1, int a2)
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

void *sub_100003D1C(void *result, int a2, int a3)
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

      return sub_100004E4C(result, a2);
    }

    *(result + 8) = 0;
    if (a2)
    {
      return sub_100004E4C(result, a2);
    }
  }

  return result;
}

uint64_t sub_100003D60(uint64_t a1)
{
  v2 = sub_100004164(&qword_10000C530, type metadata accessor for WFShortcutSharingError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100003DCC(uint64_t a1)
{
  v2 = sub_100004164(&qword_10000C530, type metadata accessor for WFShortcutSharingError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100003E38(uint64_t a1)
{
  v2 = sub_100004164(&qword_10000C560, type metadata accessor for WFShortcutSharingError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100003EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004164(&qword_10000C560, type metadata accessor for WFShortcutSharingError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100003F28(uint64_t a1)
{
  v2 = sub_100004164(&qword_10000C4E0, type metadata accessor for WFWorkflowError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100003F94(uint64_t a1)
{
  v2 = sub_100004164(&qword_10000C4E0, type metadata accessor for WFWorkflowError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100004004(uint64_t a1)
{
  v2 = sub_100004164(&qword_10000C518, type metadata accessor for WFWorkflowError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100004070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004164(&qword_10000C518, type metadata accessor for WFWorkflowError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100004164(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000042DC()
{
  result = qword_10000C508;
  if (!qword_10000C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C508);
  }

  return result;
}

void sub_100004510(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_100004634()
{
  result = qword_10000C568;
  if (!qword_10000C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C568);
  }

  return result;
}

uint64_t sub_100004688(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100004698@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100004FD0();
  *a1 = result;
  return result;
}

uint64_t sub_1000046EC@<X0>(uint64_t a1@<X8>)
{
  result = sub_100004FF0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100004720(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_100005000();
}

uint64_t sub_100004750(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000034F4(&qword_10000C578, &qword_100005D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000047C0(uint64_t a1)
{
  v2 = sub_1000034F4(&qword_10000C578, &qword_100005D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004828(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_100005170();
  }

  return sub_100004E64();
}

uint64_t sub_100004884(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100004894(uint64_t a1)
{
  v2 = sub_100004FC0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000048F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1000034F4(a3, a4);
  sub_100004E10(v5);
  v7 = *(v6 + 16);
  v8 = sub_100004E64();
  v9(v8);
  return a2;
}

uint64_t sub_10000494C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000034F4(a2, a3);
  sub_100004E10(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_1000049A4()
{
  result = qword_10000C5C8;
  if (!qword_10000C5C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C5C8);
  }

  return result;
}

unint64_t sub_1000049EC()
{
  result = qword_10000C5E0;
  if (!qword_10000C5E0)
  {
    sub_100004A78(&qword_10000C5E8, &qword_100005DC8);
    sub_100004AC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C5E0);
  }

  return result;
}

uint64_t sub_100004A78(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100004AC0()
{
  result = qword_10000C5F0;
  if (!qword_10000C5F0)
  {
    sub_100004A78(&qword_10000C5F8, &qword_100005DD0);
    sub_100004B4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C5F0);
  }

  return result;
}

unint64_t sub_100004B4C()
{
  result = qword_10000C600;
  if (!qword_10000C600)
  {
    sub_100004A78(&qword_10000C608, &qword_100005DD8);
    sub_100004C04();
    sub_100004D00(&qword_10000C630, &qword_10000C638, &qword_100005DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C600);
  }

  return result;
}

unint64_t sub_100004C04()
{
  result = qword_10000C610;
  if (!qword_10000C610)
  {
    sub_100004A78(&qword_10000C618, &qword_100005DE0);
    sub_100004D00(&qword_10000C620, &qword_10000C628, &qword_100005DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C610);
  }

  return result;
}

uint64_t sub_100004D00(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004A78(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{

  return _swift_dynamicCast(&a12, &a9, v12, a1, 6);
}