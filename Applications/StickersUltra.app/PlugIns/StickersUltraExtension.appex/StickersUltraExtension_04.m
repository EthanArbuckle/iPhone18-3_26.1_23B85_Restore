uint64_t sub_10006A7A8(double a1, double a2, double a3, double a4)
{
  result = swift_beginAccess();
  v4[11] = a1;
  v4[12] = a2;
  v4[13] = a3;
  v4[14] = a4;
  return result;
}

uint64_t sub_10006A88C(double a1)
{
  result = swift_beginAccess();
  *(v1 + 120) = a1;
  return result;
}

uint64_t sub_10006A950(char a1)
{
  result = swift_beginAccess();
  *(v1 + 128) = a1;
  return result;
}

void sub_10006A9E0()
{
  if (*(v0 + 152))
  {
    v1 = (*v0 + 280);
    v2 = *v1;
    v5.origin.x = (*v1)();
    MidX = CGRectGetMidX(v5);
    v6.origin.x = v2();
    MidY = CGRectGetMidY(v6);
    *(v0 + 136) = MidX;
    *(v0 + 144) = MidY;
    *(v0 + 152) = 0;
  }
}

void *sub_10006AA70()
{
  swift_beginAccess();
  v1 = *(v0 + 160);
  v2 = v1;
  return v1;
}

void sub_10006AAB4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 160);
  *(v1 + 160) = a1;
}

uint64_t sub_10006AB8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = swift_beginAccess();
  *(v4 + 176) = a1;
  *(v4 + 184) = a2;
  *(v4 + 192) = a3;
  *(v4 + 200) = a4 & 1;
  return result;
}

void *sub_10006AC44()
{
  swift_beginAccess();
  v1 = *(v0 + 208);
  v2 = v1;
  return v1;
}

void sub_10006AC88(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 208);
  *(v1 + 208) = a1;
}

uint64_t sub_10006AD54(char a1)
{
  result = swift_beginAccess();
  *(v1 + 216) = a1;
  return result;
}

uint64_t sub_10006ADE4()
{
  v0 = sub_10007C780();
  sub_10000B274(v0, qword_1000B6D58);
  sub_10000AE78(v0, qword_1000B6D58);
  return sub_10007C770();
}

uint64_t sub_10006AE68@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000B6D50 != -1)
  {
    swift_once();
  }

  v2 = sub_10007C780();
  v3 = sub_10000AE78(v2, qword_1000B6D58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_10006AF10()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  dispatch_group_create();
  sub_10007DD90();
  __break(1u);
}

void sub_10006AF90()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + 80) = 0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 120) = 0x3FF0000000000000;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  *(v0 + 152) = 1;
  *(v0 + 160) = 0;
  *(v0 + 168) = dispatch_group_create();
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 200) = 1;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  sub_10007DD90();
  __break(1u);
}

uint64_t sub_10006B048(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, CGFloat a13, CGFloat a14, CGFloat a15, CGFloat a16, uint64_t a17, uint64_t a18)
{
  v29 = swift_allocObject();
  *(v29 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v29 + 120) = 0x3FF0000000000000;
  *(v29 + 80) = 0;
  *(v29 + 64) = 0u;
  *(v29 + 48) = 0u;
  *(v29 + 128) = 0;
  *(v29 + 136) = 0;
  *(v29 + 144) = 0;
  *(v29 + 152) = 1;
  *(v29 + 160) = 0;
  *(v29 + 168) = dispatch_group_create();
  *(v29 + 184) = 0;
  *(v29 + 192) = 0;
  *(v29 + 176) = 0;
  *(v29 + 200) = 1;
  *(v29 + 208) = 0;
  *(v29 + 216) = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  rect_16 = a2;
  swift_unknownObjectWeakAssign();
  v55 = a1;
  v30 = a1;
  v73.origin.x = 0.0;
  v73.origin.y = 0.0;
  v73.size.width = 0.0;
  v73.size.height = 0.0;
  v66.origin.x = a9;
  v66.origin.y = a10;
  v66.size.width = a11;
  v66.size.height = a12;
  LODWORD(a2) = CGRectEqualToRect(v66, v73);
  swift_beginAccess();
  *(v29 + 216) = a2;
  if (a2)
  {
    a9 = a13;
    a10 = a14;
    a11 = a15;
    a12 = a16;
  }

  v60 = a3;
  sub_10000D954(v60, v65, a9, a10, a11, a12);
  v32 = v65[0];
  v31 = *&v65[1];
  v34 = *&v65[2];
  v33 = *&v65[3];
  v35 = *&v65[4];
  swift_beginAccess();
  *(v29 + 48) = v32;
  *(v29 + 56) = v31;
  *(v29 + 64) = v34;
  *(v29 + 72) = v33;
  *(v29 + 80) = v35;
  v36 = v32;
  [v30 convertRect:0 toView:{v31, v34, v33, v35}];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  rect = a13;
  *(v29 + 88) = a13;
  *(v29 + 96) = a14;
  v45 = a14;
  v46 = a15;
  *(v29 + 104) = a15;
  *(v29 + 112) = a16;
  v47 = a16;
  swift_beginAccess();
  *(v29 + 176) = a4;
  *(v29 + 184) = a5;
  *(v29 + 192) = a6;
  *(v29 + 200) = a7 & 1;
  swift_beginAccess();
  *(v29 + 24) = a18;
  swift_unknownObjectWeakAssign();
  v48 = [objc_allocWithZone(UIImageView) init];
  [v48 setImage:v36];
  sub_10006B9D8(v65);
  v49 = v48;
  [v49 setContentMode:1];
  [v49 setFrame:{v38, v40, v42, v44}];
  [v49 setAlpha:0.0];
  v64[0] = 0x3FF0000000000000;
  v64[1] = 0;
  v64[2] = 0;
  v64[3] = 0x3FF0000000000000;
  v64[4] = 0;
  v64[5] = 0;
  [v49 setTransform:v64];
  [v49 setAnchorPoint:{0.5, 0.5}];
  swift_beginAccess();
  *(v29 + 160) = v49;
  v67.origin.x = v38;
  v67.origin.y = v40;
  v67.size.width = v42;
  v67.size.height = v44;
  Height = CGRectGetHeight(v67);
  v68.origin.x = v38;
  v68.origin.y = v40;
  v68.size.width = v42;
  v68.size.height = v44;
  if (CGRectGetWidth(v68) >= Height)
  {
    v71.origin.x = rect;
    v71.origin.y = v45;
    v71.size.width = v46;
    v71.size.height = v47;
    Width = CGRectGetWidth(v71);
    v72.origin.x = v38;
    v72.origin.y = v40;
    v72.size.width = v42;
    v72.size.height = v44;
    v52 = CGRectGetWidth(v72);
  }

  else
  {
    v69.origin.x = rect;
    v69.origin.y = v45;
    v69.size.width = v46;
    v69.size.height = v47;
    Width = CGRectGetHeight(v69);
    v70.origin.x = v38;
    v70.origin.y = v40;
    v70.size.width = v42;
    v70.size.height = v44;
    v52 = CGRectGetHeight(v70);
  }

  v53 = v52;

  swift_unknownObjectRelease();
  swift_beginAccess();
  *(v29 + 120) = Width / v53;
  if (a8)
  {
    swift_beginAccess();
    *(v29 + 208) = v55;
  }

  else
  {
  }

  return v29;
}

void sub_10006B52C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, CGFloat a13, CGFloat a14, CGFloat a15, CGFloat a16, uint64_t a17, uint64_t a18)
{
  v19 = v18;
  *(v19 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v19 + 120) = 0x3FF0000000000000;
  *(v19 + 80) = 0;
  *(v19 + 64) = 0u;
  *(v19 + 48) = 0u;
  v31 = (v19 + 48);
  *(v19 + 128) = 0;
  *(v19 + 136) = 0;
  *(v19 + 144) = 0;
  *(v19 + 152) = 1;
  *(v19 + 160) = 0;
  v32 = (v19 + 160);
  v33 = dispatch_group_create();
  *(v19 + 208) = 0;
  v34 = (v19 + 208);
  *(v19 + 168) = v33;
  *(v19 + 176) = 0;
  *(v19 + 184) = 0;
  *(v19 + 192) = 0;
  *(v19 + 200) = 1;
  *(v19 + 216) = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v57 = a1;
  v35 = a1;
  v72.origin.x = 0.0;
  v72.origin.y = 0.0;
  v72.size.width = 0.0;
  v72.size.height = 0.0;
  v67.origin.x = a9;
  v67.origin.y = a10;
  v67.size.width = a11;
  v67.size.height = a12;
  v36 = CGRectEqualToRect(v67, v72);
  swift_beginAccess();
  *(v19 + 216) = v36;
  if (v36)
  {
    a9 = a13;
    a10 = a14;
    a11 = a15;
    a12 = a16;
  }

  v37 = a3;
  sub_10000D954(v37, &v64, a9, a10, a11, a12);
  v38 = v64;
  swift_beginAccess();
  v39 = *v31;
  *v31 = v38;
  v40 = v65;
  *(v19 + 72) = v66;
  *(v19 + 56) = v40;

  if (!*v31)
  {
    __break(1u);
    goto LABEL_12;
  }

  [v35 convertRect:0 toView:{*(v19 + 56), *(v19 + 64), *(v19 + 72), *(v19 + 80)}];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  *(v19 + 88) = a13;
  *(v19 + 96) = a14;
  *(v19 + 104) = a15;
  *(v19 + 112) = a16;
  swift_beginAccess();
  *(v19 + 176) = a4;
  *(v19 + 184) = a5;
  *(v19 + 192) = a6;
  *(v19 + 200) = a7 & 1;
  swift_beginAccess();
  *(v19 + 24) = a18;
  swift_unknownObjectWeakAssign();
  v49 = [objc_allocWithZone(UIImageView) init];
  if (!*(v19 + 48))
  {
LABEL_12:
    __break(1u);
    return;
  }

  v50 = v49;
  [v49 setImage:?];
  v51 = v50;
  [v51 setContentMode:1];
  [v51 setFrame:{v42, v44, v46, v48}];
  [v51 setAlpha:0.0];
  v63[0] = 0x3FF0000000000000;
  v63[1] = 0;
  v63[2] = 0;
  v63[3] = 0x3FF0000000000000;
  v63[4] = 0;
  v63[5] = 0;
  [v51 setTransform:v63];
  [v51 setAnchorPoint:{0.5, 0.5}];
  swift_beginAccess();
  v52 = *v32;
  *v32 = v51;

  v68.origin.x = v42;
  v68.origin.y = v44;
  v68.size.width = v46;
  v68.size.height = v48;
  Height = CGRectGetHeight(v68);
  v69.origin.x = v42;
  v69.origin.y = v44;
  v69.size.width = v46;
  v69.size.height = v48;
  if (CGRectGetWidth(v69) >= Height)
  {
    swift_beginAccess();
    Width = CGRectGetWidth(*(v19 + 88));
    v71.origin.x = v42;
    v71.origin.y = v44;
    v71.size.width = v46;
    v71.size.height = v48;
    v55 = CGRectGetWidth(v71);
  }

  else
  {
    swift_beginAccess();
    Width = CGRectGetHeight(*(v19 + 88));
    v70.origin.x = v42;
    v70.origin.y = v44;
    v70.size.width = v46;
    v70.size.height = v48;
    v55 = CGRectGetHeight(v70);
  }

  v56 = v55;

  swift_unknownObjectRelease();
  swift_beginAccess();
  *(v19 + 120) = Width / v56;
  if (a8)
  {
    swift_beginAccess();
    v35 = *v34;
    *v34 = v57;
  }
}

id *sub_10006BA2C()
{
  (*(*v0 + 70))();
  sub_10000ADF4((v0 + 2));
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t sub_10006BAA8()
{
  (*(*v0 + 70))();
  sub_10000ADF4((v0 + 2));
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_10006BB3C()
{
  (*(*v0 + 336))(1);
  v1 = *(*v0 + 528);

  return v1();
}

void sub_10006BBB8()
{
  v7 = (*(*v0 + 376))();
  if (v7)
  {
    v1 = (*(*v0 + 232))();
    if (v1)
    {
      v2 = v1;
      [v1 addSubview:v7];
    }

    v3 = (*(*v0 + 448))();
    [v3 removeFromSuperview];

    v4 = (*(*v0 + 456))(0);
    v5 = (*(*v0 + 472))(v4);
    v6 = *v0;
    if (v5)
    {
      (*(v6 + 536))();
    }

    else
    {
      (*(v6 + 544))();
    }
  }
}

uint64_t sub_10006BD7C()
{
  v1 = sub_10007D2F0();
  v27 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007D320();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007D340();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v22 - v13;
  result = (*(*v0 + 376))(v12);
  if (result)
  {
    v16 = result;
    sub_10004DCB8();
    v23 = sub_10007DAC0();
    sub_10007D330();
    sub_10007D350();
    v24 = *(v8 + 8);
    v24(v11, v7);
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v16;
    aBlock[4] = sub_10006C1C8;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008F80;
    aBlock[3] = &unk_1000A5ED8;
    v19 = _Block_copy(aBlock);
    v20 = v16;

    sub_10007D310();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10006C57C();
    sub_100006D40(&unk_1000B22F0);
    sub_10000B894();
    sub_10007DC50();
    v21 = v23;
    sub_10007DAB0();
    _Block_release(v19);

    (*(v27 + 8))(v3, v1);
    (*(v25 + 8))(v6, v26);
    return (v24)(v14, v7);
  }

  return result;
}

uint64_t sub_10006C150()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006C188()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006C1C8()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    *&v25 = (*(*result + 280))();
    *(&v25 + 1) = v4;
    *&v26 = v5;
    *(&v26 + 1) = v6;
    result = (*(*v3 + 184))();
    if (result)
    {
      v8 = v7;
      ObjectType = swift_getObjectType();
      (*(v8 + 24))(v27, ObjectType, v8);
      swift_unknownObjectRelease();
      if ((v28 & 1) == 0)
      {
        v25 = v27[0];
        v26 = v27[1];
      }

      v10 = objc_opt_self();
      v11 = swift_allocObject();
      *(v11 + 16) = v1;
      *(v11 + 24) = &v25;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_10006D7CC;
      *(v12 + 24) = v11;
      v23 = sub_10006D868;
      v24 = v12;
      v19 = _NSConcreteStackBlock;
      v20 = 1107296256;
      v21 = sub_10006C53C;
      v22 = &unk_1000A6180;
      v13 = _Block_copy(&v19);
      v14 = v1;

      [v10 performWithoutAnimation:v13];
      _Block_release(v13);
      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if ((v13 & 1) == 0)
      {
        v15 = swift_allocObject();
        *(v15 + 16) = v14;
        *(v15 + 24) = v3;
        v23 = sub_10006D8D0;
        v24 = v15;
        v19 = _NSConcreteStackBlock;
        v20 = 1107296256;
        v21 = sub_100008F80;
        v22 = &unk_1000A61D0;
        v16 = _Block_copy(&v19);
        v17 = v14;

        v23 = sub_10006D994;
        v24 = v3;
        v19 = _NSConcreteStackBlock;
        v20 = 1107296256;
        v21 = sub_1000136CC;
        v22 = &unk_1000A61F8;
        v18 = _Block_copy(&v19);

        [v10 animateWithDuration:v16 animations:v18 completion:0.2];

        _Block_release(v18);
        _Block_release(v16);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10006C564(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10006C57C()
{
  result = qword_1000B2970;
  if (!qword_1000B2970)
  {
    sub_10007D2F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2970);
  }

  return result;
}

void *sub_10006C5D4()
{
  v1 = v0;
  v2 = sub_10007D2F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007D320();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v46 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v0 + 376))(v8);
  if (result)
  {
    v45 = v3;
    v11 = result;
    [result setAlpha:1.0];
    v43 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:322.2728 damping:29.91993 initialVelocity:{0.0, 0.0}];
    v12 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v43 timingParameters:0.5232];
    v13 = swift_allocObject();
    v42 = v5;
    v14 = v13;
    swift_weakInit();
    v51 = sub_10006DA34;
    v52 = v14;
    v41 = v2;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v44 = v6;
    v49 = sub_10006CE28;
    v50 = &unk_1000A5F00;
    v15 = _Block_copy(&aBlock);

    v38 = v12;
    [v12 addCompletion:v15];
    _Block_release(v15);
    v16 = swift_allocObject();
    *(v16 + 16) = v11;
    *(v16 + 24) = v0;
    v51 = sub_10006CE80;
    v52 = v16;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v49 = sub_100008F80;
    v50 = &unk_1000A5F50;
    v17 = _Block_copy(&aBlock);
    v40 = v7;
    v18 = v11;

    [v12 addAnimations:v17];
    _Block_release(v17);
    v39 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:3.0 stiffness:300.0 damping:50.0 initialVelocity:{2.0, 2.0}];
    v19 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v39 timingParameters:0.9205];
    v20 = swift_allocObject();
    swift_weakInit();
    v51 = sub_10006CEE0;
    v52 = v20;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v49 = sub_10006CE28;
    v50 = &unk_1000A5F78;
    v21 = _Block_copy(&aBlock);

    [v19 addCompletion:v21];
    _Block_release(v21);
    v22 = swift_allocObject();
    *(v22 + 16) = v18;
    *(v22 + 24) = v0;
    v51 = sub_10006CF4C;
    v52 = v22;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v49 = sub_100008F80;
    v50 = &unk_1000A5FC8;
    v23 = _Block_copy(&aBlock);
    v24 = v18;

    [v19 addAnimations:v23];
    _Block_release(v23);
    v37 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:118.6 damping:13.379 initialVelocity:{0.0, 0.0}];
    v25 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v37 timingParameters:0.9975];
    v26 = swift_allocObject();
    swift_weakInit();
    v51 = sub_10006CFAC;
    v52 = v26;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v49 = sub_10006CE28;
    v50 = &unk_1000A5FF0;
    v27 = _Block_copy(&aBlock);

    [v25 addCompletion:v27];
    _Block_release(v27);
    v28 = swift_allocObject();
    *(v28 + 16) = v24;
    *(v28 + 24) = v1;
    v51 = sub_10006D060;
    v52 = v28;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v49 = sub_100008F80;
    v50 = &unk_1000A6040;
    v29 = _Block_copy(&aBlock);
    v36 = v24;

    [v25 addAnimations:v29];
    _Block_release(v29);
    dispatch_group_enter(*(v1 + 168));
    v30 = v38;
    [v38 startAnimation];
    dispatch_group_enter(*(v1 + 168));
    [v19 startAnimation];
    dispatch_group_enter(*(v1 + 168));
    [v25 startAnimationAfterDelay:0.12];
    sub_10004DCB8();
    v31 = sub_10007DAC0();
    v51 = sub_10006D108;
    v52 = v1;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v49 = sub_100008F80;
    v50 = &unk_1000A6068;
    v32 = _Block_copy(&aBlock);

    v33 = v46;
    sub_10007D310();
    aBlock = _swiftEmptyArrayStorage;
    sub_10006C57C();
    sub_100006D40(&unk_1000B22F0);
    sub_10000B894();
    v35 = v41;
    v34 = v42;
    sub_10007DC50();
    sub_10007DAD0();
    _Block_release(v32);

    (*(v45 + 8))(v34, v35);
    return (*(v40 + 8))(v33, v44);
  }

  return result;
}

uint64_t sub_10006CE28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_10006CE80()
{
  v1 = *(v0 + 16);
  sub_10006A9E0();
  v3 = v2;
  [v1 center];

  return [v1 setCenter:v3];
}

void sub_10006CEE4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 168);

    dispatch_group_leave(v1);
  }
}

id sub_10006CF4C()
{
  v1 = *(v0 + 16);
  sub_10006A9E0();
  [v1 center];

  return [v1 setCenter:?];
}

uint64_t sub_10006CFAC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if ((*(*result + 328))(result))
    {
      ((*v1)[69].isa)();
    }

    dispatch_group_leave(v1[21]);
  }

  return result;
}

id sub_10006D060()
{
  v1 = *(v0 + 16);
  v2 = (**(v0 + 24) + 304);
  v3 = *v2;
  v4 = (*v2)();
  v5 = v3();
  CGAffineTransformMakeScale(&v7, v4, v5);
  return [v1 setTransform:&v7];
}

uint64_t sub_10006D108()
{
  result = (*(*v0 + 184))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(ObjectType, v3, 0.43);

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006D190()
{
  v1 = sub_10007D2F0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = sub_10007D320();
  v5 = *(v13[0] - 8);
  __chkstk_darwin(v13[0]);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 168);
  sub_10004DCB8();
  v9 = v8;
  v10 = sub_10007DAC0();
  aBlock[4] = sub_10006D40C;
  v15 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008F80;
  aBlock[3] = &unk_1000A6090;
  v11 = _Block_copy(aBlock);

  sub_10007D310();
  v13[1] = _swiftEmptyArrayStorage;
  sub_10006C57C();
  sub_100006D40(&unk_1000B22F0);
  sub_10000B894();
  sub_10007DC50();
  sub_10007DAA0();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13[0]);
}

uint64_t sub_10006D40C()
{
  result = (*(*v0 + 184))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10006D48C()
{
  v1 = (*(*v0 + 376))();
  if (v1)
  {
    v2 = v1;
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    v13 = sub_10006D690;
    v14 = v4;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_100008F80;
    v12 = &unk_1000A60E0;
    v5 = _Block_copy(&v9);
    v6 = v2;

    v7 = swift_allocObject();
    swift_weakInit();
    v13 = sub_10006D6A4;
    v14 = v7;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_1000136CC;
    v12 = &unk_1000A6108;
    v8 = _Block_copy(&v9);

    [v3 animateWithDuration:v5 animations:v8 completion:0.1];
    _Block_release(v8);
    _Block_release(v5);
  }
}

uint64_t sub_10006D658()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006D6A4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = (*(*result + 376))(result);
    [v2 removeFromSuperview];

    (*(*v1 + 384))(0);
  }

  return result;
}

uint64_t sub_10006D794()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10006D7CC()
{
  v1 = *(v0 + 16);
  [v1 setFrame:{**(v0 + 24), *(*(v0 + 24) + 8), *(*(v0 + 24) + 16), *(*(v0 + 24) + 24)}];
  [v1 setAlpha:0.0];
  CGAffineTransformMakeScale(&v3, 0.1, 0.1);
  return [v1 setTransform:&v3];
}

uint64_t sub_10006D890()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006D8D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [v1 setAlpha:1.0];
  v7[0] = 0x3FF0000000000000;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = 0x3FF0000000000000;
  v7[4] = 0;
  v7[5] = 0;
  result = (*(*v2 + 184))([v1 setTransform:v7]);
  if (result)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(ObjectType, v5, 0.15);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10006DA38(uint64_t a1, uint64_t a2)
{
  v28[0] = a2;
  v3 = type metadata accessor for PhotoConfirmationMiniTipView(0);
  v4 = (v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v28 - v9;
  __chkstk_darwin(v8);
  v12 = (v28 - v11);
  v13 = sub_10007D7E0();
  v15 = v14;
  v16 = sub_10007D7E0();
  v18 = v17;
  *v12 = swift_getKeyPath();
  sub_100006D40(&unk_1000B4450);
  swift_storeEnumTagMultiPayload();
  v19 = (v12 + v4[7]);
  v28[1] = 0;
  sub_10007D170();
  v20 = v28[3];
  *v19 = v28[2];
  v19[1] = v20;
  *(v12 + v4[8]) = 0x4046800000000000;
  v21 = (v12 + v4[9]);
  *v21 = v13;
  v21[1] = v15;
  v22 = (v12 + v4[10]);
  *v22 = v16;
  v22[1] = v18;
  sub_10006E728(v12, v10);
  objc_allocWithZone(type metadata accessor for PhotoConfirmationTipHostingController(0));
  sub_10006E728(v10, v7);
  v23 = sub_10007CCC0();
  sub_10006E7AC(v10);
  v24 = v23;
  [v24 setModalPresentationStyle:{7, v28[0]}];
  v25 = [v24 popoverPresentationController];

  if (v25)
  {
    [v25 setPermittedArrowDirections:2];
    [v25 setSourceView:a1];
    sub_10007119C();
    isa = sub_10007D8C0().super.isa;
    [v25 setPassthroughViews:isa];

    [v25 setDelegate:v24];
    sub_10006E7AC(v12);
  }

  else
  {
    sub_10006E7AC(v12);

    return 0;
  }

  return v24;
}

double sub_10006DD14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_10004EAF4(a1, a6, &qword_1000B4460);
  v11 = type metadata accessor for PhotoConfirmationMiniTipView(0);
  v12 = (a6 + v11[5]);
  sub_10007D170();
  result = v16;
  *v12 = v16;
  *(v12 + 1) = v17;
  *(a6 + v11[6]) = 0x4046800000000000;
  v14 = (a6 + v11[7]);
  *v14 = a2;
  v14[1] = a3;
  v15 = (a6 + v11[8]);
  *v15 = a4;
  v15[1] = a5;
  return result;
}

uint64_t sub_10006DDEC(uint64_t a1)
{
  v3 = type metadata accessor for PhotoConfirmationMiniTipView(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v1);
  sub_10006E728(a1, v5);
  v7 = sub_10007CCC0();
  sub_10006E7AC(a1);
  return v7;
}

id sub_10006DE8C(uint64_t a1)
{
  v2 = type metadata accessor for PhotoConfirmationMiniTipView(0);
  v3 = (v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v26 - v8;
  __chkstk_darwin(v7);
  v11 = (v26 - v10);
  v12 = sub_10007D7E0();
  v14 = v13;
  v15 = sub_10007D7E0();
  v17 = v16;
  *v11 = swift_getKeyPath();
  sub_100006D40(&unk_1000B4450);
  swift_storeEnumTagMultiPayload();
  v18 = (v11 + v3[7]);
  v26[1] = 0;
  sub_10007D170();
  v19 = v26[3];
  *v18 = v26[2];
  v18[1] = v19;
  *(v11 + v3[8]) = 0x4046800000000000;
  v20 = (v11 + v3[9]);
  *v20 = v12;
  v20[1] = v14;
  v21 = (v11 + v3[10]);
  *v21 = v15;
  v21[1] = v17;
  sub_10006E728(v11, v9);
  objc_allocWithZone(type metadata accessor for PhotoConfirmationTipHostingController(0));
  sub_10006E728(v9, v6);
  v22 = sub_10007CCC0();
  sub_10006E7AC(v9);
  v23 = v22;
  [v23 setModalPresentationStyle:7];
  v24 = [v23 popoverPresentationController];

  if (v24)
  {
    [v24 setPermittedArrowDirections:2];
    [v24 setBarButtonItem:a1];
    [v24 setDelegate:v23];

    sub_10006E7AC(v11);
  }

  else
  {
    sub_10006E7AC(v11);

    return 0;
  }

  return v23;
}

id sub_10006E110()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  result = [v0 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = result;
  [result frame];
  v5 = v4;
  v7 = v6;

  LODWORD(v8) = 1148846080;
  LODWORD(v9) = 1112014848;
  [v2 systemLayoutSizeFittingSize:v5 withHorizontalFittingPriority:v7 verticalFittingPriority:{v8, v9}];
  v11 = v10;
  v13 = v12;

  return [v0 setPreferredContentSize:{v11, v13}];
}

uint64_t sub_10006E1F0(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PhotoConfirmationTipHostingController(0);
  v3 = objc_msgSendSuper2(&v5, "viewWillAppear:", a1 & 1);
  return (*((swift_isaMask & *v1) + qword_1000B7300))(v3);
}

void sub_10006E288(void *a1, uint64_t a2, uint64_t a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for PhotoConfirmationTipHostingController(0);
  v4 = v6.receiver;
  v5 = objc_msgSendSuper2(&v6, "viewWillAppear:", a3);
  (*((swift_isaMask & *v4) + qword_1000B7300))(v5);
}

uint64_t sub_10006E34C(uint64_t a1)
{
  v2 = type metadata accessor for PhotoConfirmationMiniTipView(0);
  __chkstk_darwin(v2 - 8);
  sub_10006E728(a1, &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10007CCC0();
  sub_10006E7AC(a1);
  return v4;
}

uint64_t sub_10006E400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoConfirmationMiniTipView(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v2);
  sub_10006E728(a2, v6);
  v8 = sub_10007CCB0();
  sub_10006E7AC(a2);
  return v8;
}

void *sub_10006E4A8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PhotoConfirmationMiniTipView(0);
  __chkstk_darwin(v3 - 8);
  sub_10006E728(a2, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10007CCB0();
  v6 = v5;
  sub_10006E7AC(a2);
  if (v5)
  {
  }

  return v5;
}

id sub_10006E554(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PhotoConfirmationTipHostingController(0);
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10006E5C0(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for PhotoConfirmationTipHostingController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", v4);

  if (v5)
  {
  }

  return v5;
}

id sub_10006E63C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoConfirmationTipHostingController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10006E728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoConfirmationMiniTipView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006E7AC(uint64_t a1)
{
  v2 = type metadata accessor for PhotoConfirmationMiniTipView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10006E808()
{
  type metadata accessor for PhotoConfirmationMiniTipView(0);
  sub_100006D40(&qword_1000B4468);
  sub_10007D180();
  return v1;
}

uint64_t sub_10006E870()
{
  type metadata accessor for PhotoConfirmationMiniTipView(0);
  sub_100006D40(&qword_1000B4468);
  return sub_10007D190();
}

void (*sub_10006E8E4(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for PhotoConfirmationMiniTipView(0) + 20));
  v6 = *v5;
  v4[6] = *v5;
  v7 = v5[1];
  v4[7] = v7;
  *v4 = v6;
  v4[1] = v7;

  v4[8] = sub_100006D40(&qword_1000B4468);
  sub_10007D180();
  return sub_10006E9A0;
}

void sub_10006E9A0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 56);
  *(*a1 + 16) = *(*a1 + 48);
  v1[3] = v3;
  v1[5] = v2;
  sub_10007D190();

  free(v1);
}

double sub_10006EA08()
{
  type metadata accessor for PhotoConfirmationMiniTipView(0);
  sub_100006D40(&qword_1000B4468);
  sub_10007D1A0();
  return v1;
}

uint64_t sub_10006EAA8()
{
  v1 = *(v0 + *(type metadata accessor for PhotoConfirmationMiniTipView(0) + 28));

  return v1;
}

uint64_t sub_10006EAE8()
{
  v1 = *(v0 + *(type metadata accessor for PhotoConfirmationMiniTipView(0) + 32));

  return v1;
}

uint64_t sub_10006EB28@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v68 = type metadata accessor for PhotoConfirmationMiniTipView(0);
  v69 = *(v68 - 8);
  __chkstk_darwin(v68);
  v70 = v2;
  v71 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_10007CDC0();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_100006D40(&qword_1000B4470);
  __chkstk_darwin(v58);
  v5 = &v57 - v4;
  v6 = sub_10007CA70();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v57 - v11;
  v60 = sub_100006D40(&qword_1000B4478);
  __chkstk_darwin(v60);
  v14 = (&v57 - v13);
  v64 = sub_100006D40(&qword_1000B4480);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &v57 - v15;
  v59 = sub_100006D40(&qword_1000B4488);
  __chkstk_darwin(v59);
  v62 = &v57 - v16;
  v17 = sub_10007CCA0();
  v18 = v1;
  sub_100070BBC(&unk_1000B4450, &type metadata accessor for DynamicTypeSize, v12);
  (*(v7 + 104))(v10, enum case for DynamicTypeSize.large(_:), v6);
  sub_10007149C(&qword_1000B4490, &type metadata accessor for DynamicTypeSize);
  v19 = sub_10007D760();
  v20 = *(v7 + 8);
  v20(v10, v6);
  v20(v12, v6);
  if (v19)
  {
    v21 = sub_10007CC00();
  }

  else
  {
    v21 = sub_10007CBF0();
  }

  *v14 = v17;
  v14[1] = v21;
  *v5 = sub_10007CC80();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v22 = sub_100006D40(&qword_1000B4498);
  sub_10006F314(v18, &v5[*(v22 + 44)]);
  v23 = sub_10007CEB0();
  sub_10007C900();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = &v5[*(sub_100006D40(&qword_1000B44A0) + 36)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = sub_10007CEC0();
  sub_10007C900();
  v34 = &v5[*(v58 + 36)];
  *v34 = v33;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  sub_10007D270();
  v39 = v14 + *(sub_100006D40(&qword_1000B44A8) + 44);
  sub_10007CB00();
  sub_10004EAF4(v5, v39, &qword_1000B4470);
  v40 = (v39 + *(sub_100006D40(&qword_1000B44B0) + 36));
  v41 = v81;
  v40[4] = v80;
  v40[5] = v41;
  v40[6] = v82;
  v42 = v77;
  *v40 = v76;
  v40[1] = v42;
  v43 = v79;
  v40[2] = v78;
  v40[3] = v43;
  v44 = v65;
  sub_10007CDB0();
  sub_10000D744(&qword_1000B44B8, &qword_1000B4478);
  v45 = v61;
  sub_10007D060();
  (*(v66 + 8))(v44, v67);
  sub_10000B348(v14, &qword_1000B4478);
  v46 = (v18 + *(v68 + 20));
  v47 = *v46;
  v48 = v46[1];
  v74 = v47;
  v75 = v48;
  sub_100006D40(&qword_1000B4468);
  sub_10007D180();
  v49 = v73;
  v50 = v62;
  (*(v63 + 32))(v62, v45, v64);
  *(v50 + *(v59 + 36)) = v49;
  v51 = v71;
  sub_10006E728(v18, v71);
  v52 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v53 = swift_allocObject();
  sub_10007132C(v51, v53 + v52);
  v54 = v72;
  sub_10004EAF4(v50, v72, &qword_1000B4488);
  result = sub_100006D40(&unk_1000B44C0);
  v56 = (v54 + *(result + 36));
  *v56 = sub_100071390;
  v56[1] = v53;
  v56[2] = 0;
  v56[3] = 0;
  return result;
}

uint64_t sub_10006F314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100006D40(&qword_1000B46C8);
  __chkstk_darwin(v4 - 8);
  v6 = v39 - v5;
  v7 = sub_100006D40(&qword_1000B46D0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v39 - v9;
  v11 = sub_100006D40(&qword_1000B46D8);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = v39 - v13;
  *v6 = sub_10007CC10();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v15 = sub_100006D40(&qword_1000B46E0);
  sub_10006F5D8(a1, &v6[*(v15 + 44)]);
  sub_10007D280();
  sub_10007CB00();
  sub_10004EAF4(v6, v10, &qword_1000B46C8);
  v16 = &v10[*(v8 + 44)];
  v17 = v39[5];
  *(v16 + 4) = v39[4];
  *(v16 + 5) = v17;
  *(v16 + 6) = v39[6];
  v18 = v39[1];
  *v16 = v39[0];
  *(v16 + 1) = v18;
  v19 = v39[3];
  *(v16 + 2) = v39[2];
  *(v16 + 3) = v19;
  LOBYTE(v6) = sub_10007CE90();
  sub_10007C900();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_10004EAF4(v10, v14, &qword_1000B46D0);
  v28 = &v14[*(v12 + 44)];
  *v28 = v6;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  LOBYTE(v6) = sub_10007CEC0();
  sub_10007C900();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_10004EAF4(v14, a2, &qword_1000B46D8);
  result = sub_100006D40(&qword_1000B46E8);
  v38 = a2 + *(result + 36);
  *v38 = v6;
  *(v38 + 8) = v30;
  *(v38 + 16) = v32;
  *(v38 + 24) = v34;
  *(v38 + 32) = v36;
  *(v38 + 40) = 0;
  return result;
}

uint64_t sub_10006F5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v59 = a2;
  v2 = sub_100006D40(&qword_1000B46F0);
  __chkstk_darwin(v2 - 8);
  v54 = (&v49 - v3);
  v57 = sub_100006D40(&qword_1000B46F8) - 8;
  v4 = __chkstk_darwin(v57);
  v58 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v55 = &v49 - v7;
  __chkstk_darwin(v6);
  v56 = &v49 - v8;
  v9 = sub_100006D40(&qword_1000B4700);
  __chkstk_darwin(v9 - 8);
  v11 = &v49 - v10;
  v12 = sub_10007CF60();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10007D140();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100006D40(&qword_1000B4708);
  v21 = __chkstk_darwin(v20 - 8);
  v53 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v51 = &v49 - v23;
  sub_10007D150();
  (*(v17 + 104))(v19, enum case for Image.ResizingMode.stretch(_:), v16);
  v50 = sub_10007D160();

  (*(v17 + 8))(v19, v16);
  (*(v13 + 104))(v15, enum case for Font.TextStyle.largeTitle(_:), v12);
  v24 = sub_10007CF00();
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  sub_10007CF20();
  v25 = sub_10007CF40();
  sub_10000B348(v11, &qword_1000B4700);
  (*(v13 + 8))(v15, v12);
  KeyPath = swift_getKeyPath();
  v27 = sub_10007D110();
  type metadata accessor for PhotoConfirmationMiniTipView(0);
  v28 = v52;
  sub_10007D260();
  sub_10007C9B0();
  LOBYTE(v72[0]) = 1;
  LOBYTE(v11) = sub_10007CEB0();
  sub_10007C900();
  v68 = 0;
  v60 = v50;
  LOWORD(v61) = 1;
  *(&v61 + 1) = KeyPath;
  *&v62 = v25;
  *(&v62 + 1) = v27;
  v63 = v69;
  v64 = v70;
  v65 = v71;
  LOBYTE(v66) = v11;
  *(&v66 + 1) = v29;
  *&v67[0] = v30;
  *(&v67[0] + 1) = v31;
  *&v67[1] = v32;
  BYTE8(v67[1]) = 0;
  sub_100006D40(&qword_1000B4710);
  sub_100071C0C();
  v33 = v51;
  sub_10007D050();
  v72[6] = v66;
  v73[0] = v67[0];
  *(v73 + 9) = *(v67 + 9);
  v72[2] = v62;
  v72[3] = v63;
  v72[4] = v64;
  v72[5] = v65;
  v72[0] = v60;
  v72[1] = v61;
  sub_10000B348(v72, &qword_1000B4710);
  v34 = sub_10007CC90();
  v35 = v54;
  *v54 = v34;
  v35[1] = 0x4010000000000000;
  *(v35 + 16) = 0;
  v36 = sub_100006D40(&qword_1000B4780);
  sub_10006FCF8(v28, v35 + *(v36 + 44));
  sub_10007D250();
  sub_10007CB00();
  v37 = v35;
  v38 = v55;
  sub_10004EAF4(v37, v55, &qword_1000B46F0);
  v39 = v56;
  v40 = (v38 + *(v57 + 44));
  v41 = v65;
  v40[4] = v64;
  v40[5] = v41;
  v40[6] = v66;
  v42 = v61;
  *v40 = v60;
  v40[1] = v42;
  v43 = v63;
  v40[2] = v62;
  v40[3] = v43;
  sub_10004EAF4(v38, v39, &qword_1000B46F8);
  v44 = v53;
  sub_10003260C(v33, v53, &qword_1000B4708);
  v45 = v58;
  sub_10003260C(v39, v58, &qword_1000B46F8);
  v46 = v59;
  sub_10003260C(v44, v59, &qword_1000B4708);
  v47 = sub_100006D40(&qword_1000B4788);
  sub_10003260C(v45, v46 + *(v47 + 48), &qword_1000B46F8);
  sub_10000B348(v39, &qword_1000B46F8);
  sub_10000B348(v33, &qword_1000B4708);
  sub_10000B348(v45, &qword_1000B46F8);
  return sub_10000B348(v44, &qword_1000B4708);
}

uint64_t sub_10006FCF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v140 = a2;
  v3 = sub_100006D40(&qword_1000B4700);
  __chkstk_darwin(v3 - 8);
  v150 = v126 - v4;
  v151 = sub_10007CF60();
  v149 = *(v151 - 8);
  __chkstk_darwin(v151);
  v148 = v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_100006D40(&qword_1000B4790);
  v6 = __chkstk_darwin(v157);
  v156 = v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v153 = v126 - v8;
  v164 = sub_10007CA70();
  v161 = *(v164 - 8);
  v9 = __chkstk_darwin(v164);
  v163 = v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v162 = v126 - v11;
  v152 = sub_100006D40(&qword_1000B4798);
  __chkstk_darwin(v152);
  v159 = v126 - v12;
  v158 = sub_100006D40(&qword_1000B47A0);
  v160 = *(v158 - 8);
  v13 = __chkstk_darwin(v158);
  v136 = v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v146 = v126 - v15;
  v154 = sub_100006D40(&qword_1000B47A8);
  v16 = __chkstk_darwin(v154);
  v139 = v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v135 = v126 - v19;
  v20 = __chkstk_darwin(v18);
  v138 = v126 - v21;
  __chkstk_darwin(v20);
  v145 = v126 - v22;
  v144 = sub_100006D40(&qword_1000B47B0);
  v23 = __chkstk_darwin(v144);
  v137 = v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v143 = v126 - v26;
  __chkstk_darwin(v25);
  v155 = v126 - v27;
  v141 = type metadata accessor for PhotoConfirmationMiniTipView(0);
  v28 = *(v141 + 28);
  v147 = a1;
  v29 = (a1 + v28);
  v30 = v29[1];
  *&v174 = *v29;
  *(&v174 + 1) = v30;
  v31 = sub_100039884();

  v142 = v31;
  v32 = sub_10007CFB0();
  v34 = v33;
  v36 = v35;
  sub_10007D100();
  v37 = sub_10007CF80();
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v44 = v161;
  sub_100050930(v32, v34, v36 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v174) = v41 & 1;
  LOBYTE(v167) = 1;
  v46 = sub_10007CF50();
  v47 = swift_getKeyPath();
  *&v174 = v37;
  *(&v174 + 1) = v39;
  LOBYTE(v175) = v41 & 1;
  *(&v175 + 1) = v43;
  v176 = KeyPath;
  LOBYTE(v177) = 1;
  *(&v177 + 1) = 256;
  *(&v177 + 1) = v47;
  *&v178 = v46;
  v48 = enum case for DynamicTypeSize.medium(_:);
  v49 = v44[13];
  v50 = v164;
  v49(v162, enum case for DynamicTypeSize.medium(_:), v164);
  v51 = enum case for DynamicTypeSize.accessibility3(_:);
  v49(v163, enum case for DynamicTypeSize.accessibility3(_:), v50);
  v52 = sub_10007149C(&qword_1000B4490, &type metadata accessor for DynamicTypeSize);
  result = sub_10007D770();
  if (result)
  {
    v134 = v52;
    v54 = v44[4];
    v55 = v153;
    v56 = v164;
    v54(v153, v162, v164);
    v133 = v48;
    v57 = v157;
    v54((v55 + *(v157 + 48)), v163, v56);
    v131 = v44 + 13;
    v132 = v51;
    v58 = v156;
    sub_10003260C(v55, v156, &qword_1000B4790);
    v129 = *(v57 + 48);
    v130 = v49;
    v59 = v159;
    v54(v159, v58, v56);
    v60 = v44[1];
    v60(&v129[v58], v56);
    sub_10004EAF4(v55, v58, &qword_1000B4790);
    v61 = &v59[*(v152 + 36)];
    v62 = v58 + *(v57 + 48);
    v128 = v54;
    v129 = (v44 + 4);
    v54(v61, v62, v56);
    v161 = v44 + 1;
    v127 = v60;
    v60(v58, v56);
    v63 = sub_100006D40(&qword_1000B47B8);
    v64 = sub_100071E08(&qword_1000B47C0, &qword_1000B47B8, &unk_10008F3D0, sub_100071FA0);
    v65 = sub_10000D744(&qword_1000B47F8, &qword_1000B4798);
    v66 = v146;
    v67 = v159;
    v126[2] = v63;
    v126[3] = v64;
    v126[1] = v65;
    sub_10007D030();
    sub_10000B348(v67, &qword_1000B4798);
    v181[2] = v176;
    v181[3] = v177;
    v182 = v178;
    v181[0] = v174;
    v181[1] = v175;
    sub_10000B348(v181, &qword_1000B47B8);
    sub_10007D250();
    sub_10007CB00();
    v68 = *(v160 + 32);
    v69 = v145;
    v160 += 32;
    v126[0] = v68;
    v68(v145, v66, v158);
    v70 = &v69[*(v154 + 36)];
    v71 = v170;
    v72 = v172;
    v73 = v173;
    *(v70 + 4) = v171;
    *(v70 + 5) = v72;
    *(v70 + 6) = v73;
    v74 = v168;
    *v70 = v167;
    *(v70 + 1) = v74;
    *(v70 + 2) = v169;
    *(v70 + 3) = v71;
    LOBYTE(v54) = sub_10007CEF0();
    sub_10007C900();
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v83 = v69;
    v84 = v143;
    sub_10004EAF4(v83, v143, &qword_1000B47A8);
    v85 = v84 + *(v144 + 36);
    *v85 = v54;
    *(v85 + 8) = v76;
    *(v85 + 16) = v78;
    *(v85 + 24) = v80;
    *(v85 + 32) = v82;
    *(v85 + 40) = 0;
    sub_10004EAF4(v84, v155, &qword_1000B47B0);
    v86 = (v147 + *(v141 + 32));
    v87 = v86[1];
    *&v174 = *v86;
    *(&v174 + 1) = v87;

    v88 = sub_10007CFB0();
    v90 = v89;
    LOBYTE(v66) = v91;
    sub_10007D110();
    v92 = sub_10007CF80();
    v146 = v93;
    v147 = v92;
    LOBYTE(v67) = v94;
    v145 = v95;

    sub_100050930(v88, v90, v66 & 1);

    v96 = swift_getKeyPath();
    LOBYTE(v66) = v67 & 1;
    LOBYTE(v174) = v67 & 1;
    LOBYTE(v165[0]) = 1;
    v97 = v148;
    v98 = v149;
    v99 = v151;
    (*(v149 + 104))(v148, enum case for Font.TextStyle.subheadline(_:), v151);
    v100 = sub_10007CF00();
    v101 = v150;
    (*(*(v100 - 8) + 56))(v150, 1, 1, v100);
    sub_10007CF20();
    v102 = sub_10007CF40();
    sub_10000B348(v101, &qword_1000B4700);
    (*(v98 + 8))(v97, v99);
    v103 = swift_getKeyPath();
    *&v174 = v147;
    *(&v174 + 1) = v146;
    LOBYTE(v175) = v66;
    *(&v175 + 1) = v145;
    v176 = v96;
    LOBYTE(v177) = 1;
    *(&v177 + 1) = 256;
    *(&v177 + 1) = v103;
    *&v178 = v102;
    v104 = v164;
    v105 = v130;
    v130(v162, v133, v164);
    v105(v163, v132, v104);
    result = sub_10007D770();
    if (result)
    {
      v106 = v153;
      v107 = v164;
      v108 = v128;
      v128(v153, v162, v164);
      v109 = v157;
      v108(v106 + *(v157 + 48), v163, v107);
      v110 = v156;
      sub_10003260C(v106, v156, &qword_1000B4790);
      v111 = *(v109 + 48);
      v112 = v159;
      v108(v159, v110, v107);
      v113 = v127;
      v127(v110 + v111, v107);
      sub_10004EAF4(v106, v110, &qword_1000B4790);
      v108(v112 + *(v152 + 36), (v110 + *(v109 + 48)), v107);
      v113(v110, v107);
      v114 = v136;
      sub_10007D030();
      sub_10000B348(v112, &qword_1000B4798);
      v165[2] = v176;
      v165[3] = v177;
      v166 = v178;
      v165[0] = v174;
      v165[1] = v175;
      sub_10000B348(v165, &qword_1000B47B8);
      sub_10007D250();
      sub_10007CB00();
      v115 = v135;
      (v126[0])(v135, v114, v158);
      v116 = (v115 + *(v154 + 36));
      v117 = v179;
      v116[4] = v178;
      v116[5] = v117;
      v116[6] = v180;
      v118 = v175;
      *v116 = v174;
      v116[1] = v118;
      v119 = v177;
      v116[2] = v176;
      v116[3] = v119;
      v120 = v138;
      sub_10004EAF4(v115, v138, &qword_1000B47A8);
      v121 = v155;
      v122 = v137;
      sub_10003260C(v155, v137, &qword_1000B47B0);
      v123 = v139;
      sub_10003260C(v120, v139, &qword_1000B47A8);
      v124 = v140;
      sub_10003260C(v122, v140, &qword_1000B47B0);
      v125 = sub_100006D40(&unk_1000B4800);
      sub_10003260C(v123, v124 + *(v125 + 48), &qword_1000B47A8);
      sub_10000B348(v120, &qword_1000B47A8);
      sub_10000B348(v121, &qword_1000B47B0);
      sub_10000B348(v123, &qword_1000B47A8);
      return sub_10000B348(v122, &qword_1000B47B0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100070BBC@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_10007CBE0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100006D40(a1);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_10003260C(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_10007DA20();
    v17 = sub_10007CE70();
    sub_10007C750();

    sub_10007CBD0();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_100070DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_100070E8C()
{
  sub_10007D7E0();
  sub_100039884();
  return sub_10007CFB0();
}

uint64_t sub_100070EE4()
{
  sub_10007D7E0();
  sub_100039884();
  return sub_10007CFB0();
}

uint64_t sub_100070F3C()
{
  v0 = sub_10007C930();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  sub_100070BBC(&qword_1000B3118, &type metadata accessor for ColorScheme, &v9 - v5);
  (*(v1 + 104))(v4, enum case for ColorScheme.light(_:), v0);
  sub_10007C920();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v7(v6, v0);
  return sub_10007D150();
}

uint64_t sub_10007112C@<X0>(uint64_t *a1@<X8>)
{
  sub_10007149C(&unk_1000B2220, type metadata accessor for StickerNotAvailableTip);
  result = sub_10007C810();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10007119C()
{
  result = qword_1000B39B0;
  if (!qword_1000B39B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B39B0);
  }

  return result;
}

uint64_t sub_1000711E8()
{
  v1 = *(type metadata accessor for PhotoConfirmationMiniTipView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_100006D40(&unk_1000B4450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_10007CA70();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10007132C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoConfirmationMiniTipView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100071390()
{
  type metadata accessor for PhotoConfirmationMiniTipView(0);
  sub_10007D2A0();
  sub_10007CA30();
}

uint64_t sub_10007149C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100071560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100006D40(&qword_1000B4460);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100071640(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100006D40(&qword_1000B4460);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100071708()
{
  sub_1000719B0(319, &qword_1000B45E0, &type metadata accessor for DynamicTypeSize);
  if (v0 <= 0x3F)
  {
    sub_1000717BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000717BC()
{
  if (!qword_1000B45E8)
  {
    v0 = sub_10007D1B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B45E8);
    }
  }
}

uint64_t sub_100071820(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006D40(&qword_1000B3540);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000718AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006D40(&qword_1000B3540);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_100071928()
{
  sub_1000719B0(319, &unk_1000B4680, &type metadata accessor for ColorScheme);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1000719B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10007C950();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100071A08()
{
  result = qword_1000B46B0;
  if (!qword_1000B46B0)
  {
    sub_10000B8F8(&unk_1000B44C0);
    sub_100071A94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B46B0);
  }

  return result;
}

unint64_t sub_100071A94()
{
  result = qword_1000B46B8;
  if (!qword_1000B46B8)
  {
    sub_10000B8F8(&qword_1000B4488);
    sub_10000B8F8(&qword_1000B4478);
    sub_10000D744(&qword_1000B44B8, &qword_1000B4478);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B46B8);
  }

  return result;
}

uint64_t sub_100071B90()
{
  type metadata accessor for PhotoConfirmationMiniTipView(0);
  sub_100006D40(&qword_1000B4468);
  return sub_10007D190();
}

unint64_t sub_100071C0C()
{
  result = qword_1000B4718;
  if (!qword_1000B4718)
  {
    sub_10000B8F8(&qword_1000B4710);
    sub_100071C98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4718);
  }

  return result;
}

unint64_t sub_100071C98()
{
  result = qword_1000B4720;
  if (!qword_1000B4720)
  {
    sub_10000B8F8(&qword_1000B4728);
    sub_100071D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4720);
  }

  return result;
}

unint64_t sub_100071D24()
{
  result = qword_1000B4730;
  if (!qword_1000B4730)
  {
    sub_10000B8F8(&qword_1000B4738);
    sub_100071E08(&qword_1000B4740, &qword_1000B4748, &unk_10008F348, sub_100071EB8);
    sub_10000D744(&qword_1000B4770, &qword_1000B4778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4730);
  }

  return result;
}

uint64_t sub_100071E08(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B8F8(a2);
    a4();
    sub_10000D744(&unk_1000B4760, &qword_1000B3268);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100071EB8()
{
  result = qword_1000B4750;
  if (!qword_1000B4750)
  {
    sub_10000B8F8(&qword_1000B4758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4750);
  }

  return result;
}

uint64_t sub_100071F3C@<X0>(uint64_t a1@<X8>)
{
  result = sub_10007CBB0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_100071FA0()
{
  result = qword_1000B47C8;
  if (!qword_1000B47C8)
  {
    sub_10000B8F8(&qword_1000B47D0);
    sub_10007202C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B47C8);
  }

  return result;
}

unint64_t sub_10007202C()
{
  result = qword_1000B47D8;
  if (!qword_1000B47D8)
  {
    sub_10000B8F8(&qword_1000B47E0);
    sub_10000D744(&qword_1000B47E8, &qword_1000B47F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B47D8);
  }

  return result;
}

uint64_t sub_1000720EC()
{
  v1 = *v0;

  return v1;
}

double sub_1000721C8()
{
  result = 36.0;
  if ((*(v0 + 25) & 1) == 0)
  {
    return 22.0;
  }

  return result;
}

uint64_t sub_1000721E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v3 = sub_10007CC70();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v22 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = sub_100006D40(&qword_1000B4870);
  __chkstk_darwin(v9);
  v11 = (&v22 - v10);
  v24 = sub_100006D40(&qword_1000B4878);
  v12 = __chkstk_darwin(v24);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  *v11 = sub_10007D270();
  v11[1] = v17;
  v18 = sub_100006D40(&qword_1000B4880);
  sub_1000725F4(v2, v11 + *(v18 + 44));
  sub_10007CC50();
  sub_10000D744(&qword_1000B4888, &qword_1000B4870);
  sub_10007D080();
  v23 = *(v4 + 8);
  v23(v8, v3);
  sub_10000B348(v11, &qword_1000B4870);
  LOBYTE(v8) = *(v2 + 24);
  sub_100006D40(&qword_1000B31A8);
  if (v8)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10008D720;
    sub_10007CC40();
  }

  else
  {
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10008CBC0;
  }

  sub_10007CC60();
  *&v26 = v19;
  sub_10007349C(&qword_1000B31B0, &type metadata accessor for AccessibilityTraits);
  sub_100006D40(&qword_1000B31B8);
  sub_10000D744(&qword_1000B31C0, &qword_1000B31B8);
  v20 = v22;
  sub_10007DC50();
  sub_10007CAB0();
  v23(v20, v3);
  sub_10000B348(v14, &qword_1000B4878);
  v26 = *v2;
  sub_100039884();
  sub_10007CAA0();
  return sub_10000B348(v16, &qword_1000B4878);
}

uint64_t sub_1000725F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_10007D140();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100006D40(&qword_1000B48F0);
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v45 = &v44 - v7;
  v8 = sub_100006D40(&qword_1000B48F8);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v47 = &v44 - v10;
  v51 = sub_100006D40(&qword_1000B4900) - 8;
  __chkstk_darwin(v51);
  v49 = &v44 - v11;
  v12 = sub_100006D40(&qword_1000B4908);
  v13 = v12 - 8;
  v14 = __chkstk_darwin(v12);
  v53 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v44 - v17;
  __chkstk_darwin(v16);
  v50 = &v44 - v19;
  v20 = type metadata accessor for StickerPackStripSelectionBackground();
  v21 = __chkstk_darwin(v20 - 8);
  v48 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v46 = &v44 - v23;
  v24 = *(a1 + 24);
  v25 = sub_1000541AC(*(a1 + 24), &v44 - v23);
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3, v25);
  v26 = sub_10007D160();
  (*(v4 + 8))(v6, v3);
  v56 = v26;
  LOWORD(v57) = 1;
  sub_10007CF10();
  sub_100006D40(&qword_1000B4758);
  sub_100071EB8();
  v27 = v45;
  sub_10007CFE0();

  sub_10007D270();
  sub_10007C9B0();
  v28 = v47;
  (*(v52 + 32))(v47, v27, v54);
  v29 = (v28 + *(v9 + 44));
  v30 = v57;
  *v29 = v56;
  v29[1] = v30;
  v29[2] = v58;
  v31 = 32;
  if (v24)
  {
    v31 = 40;
  }

  v32 = *(a1 + v31);
  KeyPath = swift_getKeyPath();
  v34 = v49;
  sub_10004EAF4(v28, v49, &qword_1000B48F8);
  v35 = (v34 + *(v51 + 44));
  *v35 = KeyPath;
  v35[1] = v32;
  v36 = &v18[*(v13 + 44)];
  sub_100006D40(&qword_1000B4910);

  sub_10007CB10();
  *v36 = 0;
  sub_10004EAF4(v34, v18, &qword_1000B4900);
  v37 = v50;
  sub_10004EAF4(v18, v50, &qword_1000B4908);
  v38 = v46;
  v39 = v48;
  sub_1000735A0(v46, v48);
  v40 = v53;
  sub_100073604(v37, v53);
  v41 = v55;
  sub_1000735A0(v39, v55);
  v42 = sub_100006D40(&qword_1000B4918);
  sub_100073604(v40, v41 + *(v42 + 48));
  sub_10000B348(v37, &qword_1000B4908);
  sub_100073674(v38);
  sub_10000B348(v40, &qword_1000B4908);
  return sub_100073674(v39);
}

uint64_t sub_100072B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = objc_opt_self();
  v13 = [v12 secondaryLabelColor];
  v14 = sub_10007D0E0();
  v15 = [v12 labelColor];
  result = sub_10007D0E0();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 25) = a5;
  *(a6 + 32) = v14;
  *(a6 + 40) = result;
  return result;
}

uint64_t sub_100072C4C(SEL *a1)
{
  v1 = [objc_opt_self() *a1];

  return sub_10007D0E0();
}

double sub_100072CC4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = sub_10007CC10();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = sub_100006D40(&qword_1000B4890);
  sub_100072DA4(a1, a2, a3 + *(v6 + 44));
  sub_100053934();
  sub_10007D270();
  sub_10007C9B0();
  v7 = (a3 + *(sub_100006D40(&qword_1000B4898) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

uint64_t sub_100072DA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_10007D140();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
  v10 = sub_10007D160();
  (*(v7 + 8))(v9, v6);
  v30 = v10;
  LOWORD(v31) = 1;
  sub_10007CF30();
  sub_100006D40(&qword_1000B4758);
  sub_100071EB8();
  sub_10007CFE0();

  v11 = sub_10007CEA0();
  sub_10007C900();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = a3 + *(sub_100006D40(&qword_1000B48C0) + 36);
  *v20 = v11;
  *(v20 + 8) = v13;
  *(v20 + 16) = v15;
  *(v20 + 24) = v17;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  sub_10007D270();
  sub_10007C9B0();
  v21 = (a3 + *(sub_100006D40(&qword_1000B48C8) + 36));
  v22 = v31;
  *v21 = v30;
  v21[1] = v22;
  v21[2] = v32;
  KeyPath = swift_getKeyPath();
  v24 = (a3 + *(sub_100006D40(&qword_1000B48D0) + 36));
  *v24 = KeyPath;
  v24[1] = a1;

  LOBYTE(KeyPath) = sub_10007CEA0();
  v25 = a3 + *(sub_100006D40(&qword_1000B48D8) + 36);
  *v25 = a2;
  *(v25 + 8) = KeyPath;
  v26 = a3 + *(sub_100006D40(&qword_1000B48E0) + 36);
  v27 = enum case for RoundedCornerStyle.continuous(_:);
  v28 = sub_10007CC30();
  (*(*(v28 - 8) + 104))(v26, v27, v28);
  *(v26 + *(sub_100006D40(&qword_1000B48E8) + 36)) = 256;
}

uint64_t sub_1000730C8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 secondaryLabelColor];
  sub_10007D0E0();
  v4 = [v2 tertiarySystemFillColor];
  sub_10007D0E0();
  sub_10005391C();
  return a1;
}

double sub_100073190@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = sub_10007CC10();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = sub_100006D40(&qword_1000B4890);
  sub_100072DA4(v3, v4, a1 + *(v5 + 44));
  sub_100053934();
  sub_10007D270();
  sub_10007C9B0();
  v6 = (a1 + *(sub_100006D40(&qword_1000B4898) + 36));
  *v6 = v8;
  v6[1] = v9;
  result = *&v10;
  v6[2] = v10;
  return result;
}

uint64_t sub_100073274(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000732BC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100073318(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100073360(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1000733B4()
{
  result = qword_1000B48A0;
  if (!qword_1000B48A0)
  {
    sub_10000B8F8(&qword_1000B4878);
    sub_10000D744(&qword_1000B4888, &qword_1000B4870);
    sub_10007349C(&qword_1000B3198, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48A0);
  }

  return result;
}

uint64_t sub_10007349C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000734E8()
{
  result = qword_1000B48A8;
  if (!qword_1000B48A8)
  {
    sub_10000B8F8(&qword_1000B4898);
    sub_10000D744(&qword_1000B48B0, &qword_1000B48B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48A8);
  }

  return result;
}

uint64_t sub_1000735A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StickerPackStripSelectionBackground();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100073604(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006D40(&qword_1000B4908);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100073674(uint64_t a1)
{
  v2 = type metadata accessor for StickerPackStripSelectionBackground();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000736F0()
{
  v1 = (v0 + OBJC_IVAR____TtC22StickersUltraExtension25PlaceholderViewController_name);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_100073748(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22StickersUltraExtension25PlaceholderViewController_name);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id sub_100073808()
{
  v0 = [objc_opt_self() clearColor];

  return v0;
}

id sub_100073848()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension25PlaceholderViewController_backgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_10007389C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension25PlaceholderViewController_backgroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10007399C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension25PlaceholderViewController_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

void sub_100073A54()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension25PlaceholderViewController_textView;
  v2 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension25PlaceholderViewController_textView);
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  v3 = [objc_allocWithZone(UITextView) init];
  v4 = *(v0 + v1);
  *(v0 + v1) = v3;
  v5 = v3;

  if (v5)
  {
    (*((swift_isaMask & *v0) + 0x90))();
    v6 = sub_10007D7A0();

    [v5 setText:v6];
  }

  v7 = *(v0 + v1);
  if (v7)
  {
    v8 = v7;
    v9 = [v0 view];
    if (v9)
    {
      v10 = v9;
      [v9 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      [v8 setFrame:{v12, v14, v16, v18}];
      v19 = *(v0 + v1);
      if (!v19)
      {
        return;
      }

      [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
      v20 = *(v0 + v1);
      if (!v20)
      {
        return;
      }

      v21 = *((swift_isaMask & *v0) + 0xA8);
      v22 = v20;
      v23 = v21();
      [v22 setBackgroundColor:v23];

      v24 = *(v0 + v1);
      if (!v24)
      {
        return;
      }

      [v24 setTextAlignment:1];
      v25 = *(v0 + v1);
      if (!v25)
      {
        return;
      }

      v26 = objc_opt_self();
      v27 = v25;
      v28 = [v26 boldSystemFontOfSize:20.0];
      [v27 setFont:v28];

      v29 = *(v0 + v1);
      if (!v29)
      {
        return;
      }

      v30 = v29;
      v31 = [v0 view];
      if (v31)
      {
        v32 = v31;
        v33 = v30;
        [v32 addSubview:v33];

        sub_100006D40(&qword_1000B2200);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_10008C950;
        v35 = [v33 leftAnchor];

        v36 = [v0 view];
        if (v36)
        {
          v37 = v36;
          v38 = [v36 safeAreaLayoutGuide];

          v39 = [v38 leftAnchor];
          v40 = [v35 constraintEqualToAnchor:v39];

          *(v34 + 32) = v40;
          v41 = [v33 rightAnchor];

          v42 = [v0 view];
          if (v42)
          {
            v43 = v42;
            v44 = [v42 safeAreaLayoutGuide];

            v45 = [v44 rightAnchor];
            v46 = [v41 constraintEqualToAnchor:v45];

            *(v34 + 40) = v46;
            v47 = [v33 topAnchor];

            v48 = [v0 view];
            if (v48)
            {
              v49 = v48;
              v50 = [v48 safeAreaLayoutGuide];

              v51 = [v50 topAnchor];
              v52 = [v47 constraintEqualToAnchor:v51];

              *(v34 + 48) = v52;
              v53 = [v33 bottomAnchor];

              v54 = [v0 view];
              if (v54)
              {
                v55 = v54;
                v56 = objc_opt_self();
                v57 = [v55 safeAreaLayoutGuide];

                v58 = [v57 bottomAnchor];
                v59 = [v53 constraintEqualToAnchor:v58];

                *(v34 + 56) = v59;
                sub_10007404C();
                isa = sub_10007D8C0().super.isa;

                [v56 activateConstraints:isa];

                return;
              }

LABEL_26:
              __break(1u);
              return;
            }

LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }
}

unint64_t sub_10007404C()
{
  result = qword_1000B2210;
  if (!qword_1000B2210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B2210);
  }

  return result;
}

id sub_1000740E0(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC22StickersUltraExtension25PlaceholderViewController_textView] = 0;
  v6 = &v3[OBJC_IVAR____TtC22StickersUltraExtension25PlaceholderViewController_name];
  *v6 = 0xD000000000000010;
  *(v6 + 1) = 0x800000010008A090;
  v7 = OBJC_IVAR____TtC22StickersUltraExtension25PlaceholderViewController_backgroundColor;
  *&v3[v7] = [objc_opt_self() clearColor];
  *&v3[OBJC_IVAR____TtC22StickersUltraExtension25PlaceholderViewController_delegate] = 0;
  if (a2)
  {
    v8 = sub_10007D7A0();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for PlaceholderViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_100074264(void *a1)
{
  *&v1[OBJC_IVAR____TtC22StickersUltraExtension25PlaceholderViewController_textView] = 0;
  v3 = &v1[OBJC_IVAR____TtC22StickersUltraExtension25PlaceholderViewController_name];
  *v3 = 0xD000000000000010;
  *(v3 + 1) = 0x800000010008A090;
  v4 = OBJC_IVAR____TtC22StickersUltraExtension25PlaceholderViewController_backgroundColor;
  *&v1[v4] = [objc_opt_self() clearColor];
  *&v1[OBJC_IVAR____TtC22StickersUltraExtension25PlaceholderViewController_delegate] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for PlaceholderViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_100074360()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceholderViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100074428()
{
  v0 = sub_10007C780();
  sub_10000B274(v0, qword_1000B7050);
  sub_10000AE78(v0, qword_1000B7050);
  return sub_10007C770();
}

id _UIStickerRepresentation.init(representation:)(void *a1)
{
  v2 = sub_10007C730();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = sub_10007D5E0();
  v9 = v8;
  isa = sub_10007C3C0().super.isa;
  sub_10003D398(v7, v9);
  [v6 setData:isa];

  sub_10007D5C0();
  sub_10007C720();
  (*(v3 + 8))(v5, v2);
  v11 = sub_10007D7A0();

  [v6 setType:v11];

  sub_10007D620();
  [v6 setSize:?];
  sub_10007D610();
  v12 = sub_10007D7A0();

  [v6 setRole:v12];

  return v6;
}

uint64_t Sticker.init(from:)()
{
  v0 = sub_10007D540();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Sticker.StickerType.userContent(_:));
  return sub_10007D6A0();
}

void *Sticker.UIRepresentations()()
{
  v19 = sub_10007C730();
  v0 = *(v19 - 8);
  __chkstk_darwin(v19);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007D660();

  v20 = sub_100078C14(v3);
  sub_10007815C(&v20);

  v4 = v20;
  if ((v20 & 0x8000000000000000) == 0 && (v20 & 0x4000000000000000) == 0)
  {
    v5 = *(v20 + 16);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_12:

    return &_swiftEmptyArrayStorage;
  }

  v5 = sub_10007DDB0();
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_4:
  v20 = &_swiftEmptyArrayStorage;
  sub_10007DD20();
  if (v5 < 0)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    v6 = 0;
    v18 = v4 & 0xC000000000000001;
    v7 = (v0 + 8);
    do
    {
      if (v18)
      {
        v8 = sub_10007DCD0();
      }

      else
      {
        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      ++v6;
      v10 = [objc_allocWithZone(_UIStickerRepresentation) init];
      v11 = sub_10007D5E0();
      v13 = v12;
      isa = sub_10007C3C0().super.isa;
      sub_10003D398(v11, v13);
      [v10 setData:isa];

      sub_10007D5C0();
      sub_10007C720();
      (*v7)(v2, v19);
      v15 = sub_10007D7A0();

      [v10 setType:v15];

      sub_10007D620();
      [v10 setSize:?];
      sub_10007D610();
      v16 = sub_10007D7A0();

      [v10 setRole:v16];

      sub_10007DD00();
      sub_10007DD30();
      sub_10007DD40();
      sub_10007DD10();
    }

    while (v5 != v6);

    return v20;
  }

  return result;
}

void Sticker.asMSSticker(completionHandler:)(void (*a1)(id, void), uint64_t a2)
{
  v65 = a2;
  v66 = a1;
  v3 = sub_10007C420();
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v58 - v8;
  __chkstk_darwin(v7);
  v11 = &v58 - v10;
  sub_10000B77C(0, &qword_1000B2AE0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ([ObjCClassFromMetadata instancesRespondToSelector:"initWithStickerIdentifier:representations:stickerName:effectType:externalURI:localizedDescription:metadata:attributionInfo:"])
  {
    v13 = [objc_opt_self() ckAttributionInfoFromSticker:v2];
    if (v13)
    {
      v14 = v13;
      v15 = sub_10007D740();
    }

    else
    {
      v15 = sub_10002D10C(&_swiftEmptyArrayStorage);
    }

    v62 = sub_1000603E4(v15);

    sub_10007D550();
    Sticker.UIRepresentations()();
    sub_10007D670();
    sub_10007D6F0();
    v61 = sub_10007D6E0();
    v60 = sub_10007D560();
    v28 = v27;
    sub_10007D670();
    v59 = sub_10007D710();
    v30 = v29;
    v31.super.isa = sub_10007C410().super.isa;
    sub_10000B77C(0, &unk_1000B22D0);
    v32.super.isa = sub_10007D8C0().super.isa;

    v33 = sub_10007D7A0();

    if (v28)
    {
      v34 = sub_10007D7A0();
    }

    else
    {
      v34 = 0;
    }

    v35 = sub_10007D7A0();

    if (v30 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      v37 = v59;
      isa = sub_10007C3C0().super.isa;
      sub_10003E490(v37, v30);
    }

    v38 = objc_allocWithZone(MSSticker);
    v39 = v62;
    v40 = sub_10007D730().super.isa;
    v41 = v38;
    v42 = v39;
    v43 = [v41 initWithStickerIdentifier:v31.super.isa representations:v32.super.isa stickerName:v33 effectType:v61 externalURI:v34 localizedDescription:v35 metadata:isa attributionInfo:v40];

    (*(v63 + 8))(v11, v64);
    v67 = 0x692D656C646E7562;
    v68 = 0xE900000000000064;
    sub_10007DC80();
    if (*(v42 + 16) && (v44 = sub_10002CA38(v69), (v45 & 1) != 0))
    {
      sub_10000B618(*(v42 + 56) + 32 * v44, v70);
      sub_100032674(v69);

      v46 = swift_dynamicCast();
      v47 = v66;
      if (v46)
      {
        v48 = sub_10007D7A0();

        [v43 setStickerPackGUID:v48];
      }
    }

    else
    {

      sub_100032674(v69);
      v47 = v66;
    }

    v49 = v43;
    v47(v43, 0);
  }

  else
  {
    if ([ObjCClassFromMetadata instancesRespondToSelector:"initWithStickerIdentifier:representations:stickerName:externalURI:localizedDescription:"])
    {
      sub_10007D550();
      Sticker.UIRepresentations()();
      sub_10007D670();
      sub_10007D560();
      v17 = v16;
      sub_10007D670();
      v18.super.isa = sub_10007C410().super.isa;
      sub_10000B77C(0, &unk_1000B22D0);
      v19.super.isa = sub_10007D8C0().super.isa;

      v20 = sub_10007D7A0();

      if (v17)
      {
        v21 = sub_10007D7A0();
      }

      else
      {
        v21 = 0;
      }

      v53 = objc_allocWithZone(MSSticker);
      v54 = sub_10007D7A0();

      v55 = [v53 initWithStickerIdentifier:v18.super.isa representations:v19.super.isa stickerName:v20 externalURI:v21 localizedDescription:v54];

      (*(v63 + 8))(v9, v64);
    }

    else
    {
      if (![ObjCClassFromMetadata instancesRespondToSelector:"initWithStickerIdentifier:representations:externalURI:localizedDescription:"])
      {
        sub_10007C570();
        sub_10007C560();
        v50 = swift_allocObject();
        v50[2] = "initWithFileURL:identifier:localizedDescription:";
        v50[3] = v2;
        v51 = v65;
        v50[4] = v66;
        v50[5] = v51;
        v52 = v2;

        sub_10007C540();

        return;
      }

      sub_10007D550();
      Sticker.UIRepresentations()();
      sub_10007D560();
      v23 = v22;
      sub_10007D670();
      v24.super.isa = sub_10007C410().super.isa;
      sub_10000B77C(0, &unk_1000B22D0);
      v25.super.isa = sub_10007D8C0().super.isa;

      if (v23)
      {
        v26 = sub_10007D7A0();
      }

      else
      {
        v26 = 0;
      }

      v56 = objc_allocWithZone(MSSticker);
      v57 = sub_10007D7A0();

      v55 = [v56 initWithStickerIdentifier:v24.super.isa representations:v25.super.isa externalURI:v26 localizedDescription:v57];

      (*(v63 + 8))(v6, v64);
    }

    v49 = v55;
    v66(v55, 0);
  }
}

uint64_t Sticker.asDisplaySticker(completionHandler:)(uint64_t a1, uint64_t a2)
{
  sub_10007C570();
  sub_10007C560();
  v5 = swift_allocObject();
  v5[2] = "initWithFileURL:identifier:localizedDescription:";
  v5[3] = v2;
  v5[4] = a1;
  v5[5] = a2;
  v6 = v2;

  sub_10007C540();
}

void sub_100075320(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void))
{
  v29 = a1;
  v6 = sub_10007C3B0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007C420();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B77C(0, &qword_1000B2AE0);
  if ([swift_getObjCClassFromMetadata() instancesRespondToSelector:a2])
  {
    sub_10007D550();
    sub_10007D670();
    v14 = objc_allocWithZone(MSSticker);
    v28 = v10;
    v15 = a4;
    v16 = v14;
    sub_10007C380(v17);
    v19 = v18;
    isa = sub_10007C410().super.isa;
    v21 = sub_10007D7A0();

    v22 = v16;
    a4 = v15;
    v23 = [v22 initWithFileURL:v19 identifier:isa localizedDescription:v21];

    (*(v11 + 8))(v13, v28);
  }

  else
  {
    (*(v7 + 16))(v9, v29, v6);
    sub_10007D670();
    v24 = objc_allocWithZone(MSSticker);
    v23 = sub_10002BE18(v9);
  }

  sub_10007D6F0();
  v25 = sub_10007D6E0();
  if (v25 == sub_10007D6E0())
  {
    goto LABEL_7;
  }

  sub_10007D6F0();
  v26 = sub_10007D6E0();
  if ((v26 & 0x8000000000000000) == 0)
  {
    [v23 setStickerEffectType:v26];
LABEL_7:
    a4(v23, 0);

    return;
  }

  __break(1u);
}

uint64_t Sticker.saveToStore(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_10007D2F0();
  v24 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007D320();
  v22 = *(v7 - 8);
  v23 = v7;
  __chkstk_darwin(v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007D300();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B77C(0, &qword_1000B22E0);
  (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v10);
  v14 = sub_10007DAE0();
  (*(v11 + 8))(v13, v10);
  v15 = swift_allocObject();
  v16 = v21;
  v15[2] = v2;
  v15[3] = v16;
  v15[4] = a2;
  aBlock[4] = sub_100078EDC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000136A4;
  aBlock[3] = &unk_1000A6400;
  v17 = _Block_copy(aBlock);
  v18 = v2;

  sub_10007D310();
  v25 = _swiftEmptyArrayStorage;
  sub_100078F54(&qword_1000B2970, &type metadata accessor for DispatchWorkItemFlags);
  sub_100006D40(&unk_1000B22F0);
  sub_10000D744(&qword_1000B2980, &unk_1000B22F0);
  sub_10007DC50();
  sub_10007DAD0();
  _Block_release(v17);

  (*(v24 + 8))(v6, v4);
  (*(v22 + 8))(v9, v23);
}

uint64_t sub_100075A00(uint64_t a1, uint64_t a2, void *a3)
{
  v36 = a2;
  v37 = a3;
  v3 = sub_10007D2F0();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v41 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007D320();
  v39 = *(v5 - 8);
  v40 = v5;
  __chkstk_darwin(v5);
  v38 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007C420();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007D540();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100006D40(&unk_1000B3BF0);
  __chkstk_darwin(v15 - 8);
  v17 = v35 - v16;
  v18 = sub_10007D4B0();
  __chkstk_darwin(v18);
  (*(v20 + 104))(v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for StickerStore.PersistenceType.remote(_:));
  sub_10007D4E0();
  swift_allocObject();
  v44 = sub_10007D4A0();
  v21 = sub_10007D480();
  v22 = v21;
  Sticker.companionRecentUUID()(v17);
  if ((*(v8 + 48))(v17, 1, v7) == 1)
  {
    sub_10000B348(v17, &unk_1000B3BF0);
    (*(v12 + 104))(v14, enum case for Sticker.StickerType.recent(_:), v11);
    sub_10007D660();
    v35[2] = sub_10007D670();
    v35[1] = v23;
    v35[0] = sub_10007D710();
    sub_10007D550();

    sub_10007C690();
    (*(v8 + 8))(v10, v7);
    v24 = objc_allocWithZone(sub_10007D720());
    v25 = sub_10007D6B0();
    v26 = sub_10007D480();
  }

  else
  {

    sub_10000B348(v17, &unk_1000B3BF0);
  }

  sub_10000B77C(0, &qword_1000B22E0);
  v27 = sub_10007DAC0();
  v28 = swift_allocObject();
  v29 = v37;
  v28[2] = v36;
  v28[3] = v29;
  v28[4] = v21;
  v28[5] = 0;
  aBlock[4] = sub_100079024;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008F80;
  aBlock[3] = &unk_1000A64A0;
  v30 = _Block_copy(aBlock);

  v37 = v21;
  swift_errorRetain();

  v31 = v38;
  sub_10007D310();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100078F54(&qword_1000B2970, &type metadata accessor for DispatchWorkItemFlags);
  sub_100006D40(&unk_1000B22F0);
  sub_10000D744(&qword_1000B2980, &unk_1000B22F0);
  v32 = v41;
  v33 = v43;
  sub_10007DC50();
  sub_10007DAD0();
  _Block_release(v30);

  (*(v42 + 8))(v32, v33);
  return (*(v39 + 8))(v31, v40);
}

uint64_t Sticker.companionRecentUUID()@<X0>(uint64_t a1@<X8>)
{
  v112 = a1;
  v2 = sub_10007D540();
  v113 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v99 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v117 = &v93 - v5;
  v101 = sub_10007D530();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v118 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100006D40(&qword_1000B4968);
  __chkstk_darwin(v7 - 8);
  v109 = &v93 - v8;
  v9 = sub_10007D500();
  v114 = *(v9 - 8);
  v115 = v9;
  __chkstk_darwin(v9);
  v102 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_10007D570();
  v105 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100006D40(&qword_1000B3BB8);
  __chkstk_darwin(v12 - 8);
  v106 = &v93 - v13;
  v14 = sub_10007D5A0();
  v110 = *(v14 - 8);
  v111 = v14;
  __chkstk_darwin(v14);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10007D4B0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100006D40(&unk_1000B3BF0);
  __chkstk_darwin(v21 - 8);
  v103 = &v93 - v22;
  v23 = sub_10007C420();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v97 = &v93 - v29;
  __chkstk_darwin(v28);
  v98 = &v93 - v30;
  v31 = [v1 respondsToSelector:sub_10007C470()];
  v116 = v24;
  if (v31)
  {
    v94 = v18;
    v95 = v17;
    v96 = v20;
    v104 = v23;
    v32 = [v1 performSelector:sub_10007C470()];
    v33 = v1;
    if (v32)
    {
      swift_unknownObjectRetain();
      v120[0] = v32;
      v34 = v1;
      v35 = v103;
      v36 = v104;
      v37 = swift_dynamicCast();
      v38 = v116;
      v39 = *(v116 + 56);
      if (v37)
      {
        (v39)(v35, 0, 1, v36);
        v40 = v98;
        v118 = *(v38 + 32);
        (v118)(v98, v35, v36);
        if (qword_1000B7048 != -1)
        {
          swift_once();
        }

        v41 = sub_10007C780();
        sub_10000AE78(v41, qword_1000B7050);
        v42 = v97;
        (*(v38 + 16))(v97, v40, v36);
        v43 = sub_10007C760();
        v44 = sub_10007D9F0();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v117 = v39;
          v46 = v45;
          v115 = swift_slowAlloc();
          v120[0] = v115;
          *v46 = 136315138;
          v47 = sub_10007C400();
          v48 = v42;
          v50 = v49;
          (*(v38 + 8))(v48, v36);
          v51 = sub_10000A660(v47, v50, v120);

          *(v46 + 4) = v51;
          _os_log_impl(&_mh_execute_header, v43, v44, "Found companion identifier %s", v46, 0xCu);
          sub_10000B5CC(v115);

          v39 = v117;
        }

        else
        {

          (*(v38 + 8))(v42, v36);
        }

        v92 = v112;
        (v118)(v112, v40, v36);
        return (v39)(v92, 0, 1, v36);
      }

      (v39)(v35, 1, 1, v36);
      sub_10000B348(v35, &unk_1000B3BF0);
    }

    else
    {
      v52 = v1;
    }

    if (qword_1000B7048 != -1)
    {
      swift_once();
    }

    v53 = sub_10007C780();
    sub_10000AE78(v53, qword_1000B7050);
    v54 = sub_10007C760();
    v55 = sub_10007DA10();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Unable to get _companionRecentUUID despite responding to selector", v56, 2u);
    }

    v23 = v104;
    v24 = v116;
    v20 = v96;
    v17 = v95;
    v18 = v94;
  }

  sub_10007D550();
  v57 = sub_10007C690();
  v103 = v58;
  v104 = v57;
  v98 = *(v24 + 8);
  (v98)(v27, v23);
  (*(v18 + 104))(v20, enum case for StickerStore.PersistenceType.remote(_:), v17);
  sub_10007D4E0();
  swift_allocObject();
  v59 = sub_10007D4A0();
  (*(v113 + 56))(v106, 1, 1, v2);
  (*(v105 + 104))(v107, enum case for Sticker.FetchRequest.RepresentationSpecifier.preferred(_:), v108);
  sub_10007D580();
  sub_10000B77C(0, &qword_1000B4970);
  sub_100006D40(&qword_1000B4978);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_10008D720;
  *(v60 + 56) = &type metadata for String;
  v61 = sub_100078F00();
  *(v60 + 32) = 0x6C616E7265747865;
  *(v60 + 40) = 0xEB00000000495255;
  *(v60 + 96) = &type metadata for String;
  *(v60 + 104) = v61;
  v62 = v103;
  v63 = v104;
  *(v60 + 64) = v61;
  *(v60 + 72) = v63;
  *(v60 + 80) = v62;
  sub_10007D9E0();
  sub_10007D590();
  v64 = v109;
  sub_10007D4D0();
  v105 = v24 + 8;
  v106 = v27;
  v107 = v59;
  v108 = v16;
  v66 = v113;
  v65 = v114;
  v104 = v23;
  v67 = v115;
  (*(v114 + 56))(v64, 0, 1, v115);
  (*(v65 + 32))(v102, v64, v67);
  sub_10007D4F0();
  v68 = sub_10007D520();
  v69 = v99;
  if (v68)
  {
    v70 = v68;
    v71 = enum case for Sticker.StickerType.recent(_:);
    v72 = (v66 + 104);
    v73 = (v66 + 8);
    while (1)
    {
      v74 = v117;
      sub_10007D6C0();
      (*v72)(v69, v71, v2);
      sub_100078F54(&qword_1000B3B08, &type metadata accessor for Sticker.StickerType);
      sub_10007D8A0();
      sub_10007D8A0();
      v75 = *v73;
      (*v73)(v69, v2);
      v75(v74, v2);
      if (v120[0] == v119)
      {
        break;
      }

      v70 = sub_10007D520();
      if (!v70)
      {
        goto LABEL_19;
      }
    }

    v77 = v104;
    if (qword_1000B7048 != -1)
    {
      swift_once();
    }

    v78 = sub_10007C780();
    sub_10000AE78(v78, qword_1000B7050);
    v79 = v70;
    v80 = sub_10007C760();
    v81 = sub_10007D9F0();

    v82 = os_log_type_enabled(v80, v81);
    v83 = v106;
    if (v82)
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v120[0] = v85;
      *v84 = 136315138;
      sub_10007D550();
      sub_100078F54(&unk_1000B3C18, &type metadata accessor for UUID);
      v86 = sub_10007DE30();
      v88 = v87;
      (v98)(v83, v77);
      v89 = sub_10000A660(v86, v88, v120);

      *(v84 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v80, v81, "Found companion identifier %s", v84, 0xCu);
      sub_10000B5CC(v85);
    }

    v90 = v108;
    v91 = v112;
    sub_10007D550();

    (*(v100 + 8))(v118, v101);
    (*(v114 + 8))(v102, v115);
    (*(v110 + 8))(v90, v111);
    return (*(v116 + 56))(v91, 0, 1, v77);
  }

  else
  {
LABEL_19:

    (*(v100 + 8))(v118, v101);
    (*(v114 + 8))(v102, v115);
    (*(v110 + 8))(v108, v111);
    return (*(v116 + 56))(v112, 1, 1, v104);
  }
}

uint64_t static Sticker.isUserContentSupported()()
{
  v1 = sub_10007D540();
  v0[6] = v1;
  v0[7] = *(v1 - 8);
  v0[8] = swift_task_alloc();
  v2 = sub_10007D4B0();
  v0[9] = v2;
  v0[10] = *(v2 - 8);
  v0[11] = swift_task_alloc();

  return _swift_task_switch(sub_100077244, 0, 0);
}

uint64_t sub_100077244()
{
  if ([objc_opt_self() hasANE])
  {
    v1 = 1;
  }

  else
  {
    v2 = v0[8];
    v3 = v0[6];
    v4 = v0[7];
    (*(v0[10] + 104))(v0[11], enum case for StickerStore.PersistenceType.remote(_:), v0[9]);
    sub_10007D4E0();
    swift_allocObject();
    sub_10007D4A0();
    (*(v4 + 104))(v2, enum case for Sticker.StickerType.userContent(_:), v3);
    v5 = sub_10007D4C0();
    (*(v0[7] + 8))(v0[8], v0[6]);

    v1 = v5 > 0;
  }

  v6 = v0[1];

  return v6(v1);
}

uint64_t static Sticker.removeStickers(_:)(uint64_t a1)
{
  v2 = sub_10007D2F0();
  v18 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10007D320();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007D300();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B77C(0, &qword_1000B22E0);
  (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v8);
  v12 = sub_10007DAE0();
  (*(v9 + 8))(v11, v8);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  aBlock[4] = sub_100078FD4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000136A4;
  aBlock[3] = &unk_1000A6450;
  v14 = _Block_copy(aBlock);

  sub_10007D310();
  v19 = _swiftEmptyArrayStorage;
  sub_100078F54(&qword_1000B2970, &type metadata accessor for DispatchWorkItemFlags);
  sub_100006D40(&unk_1000B22F0);
  sub_10000D744(&qword_1000B2980, &unk_1000B22F0);
  sub_10007DC50();
  sub_10007DAD0();
  _Block_release(v14);

  (*(v18 + 8))(v4, v2);
  (*(v5 + 8))(v7, v17);
}

uint64_t sub_1000778C0()
{
  v0 = sub_10007D4B0();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for StickerStore.PersistenceType.remote(_:));
  sub_10007D4E0();
  swift_allocObject();
  sub_10007D4A0();
  sub_10007D490();
}

uint64_t Sticker.Representation.init(_:)(void *a1)
{
  v2 = sub_100006D40(&qword_1000B29D8);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_10007C730();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  v12 = [a1 type];
  sub_10007D7D0();

  sub_10007C740();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    sub_10000B348(v4, &qword_1000B29D8);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    v14 = [a1 data];
    sub_10007C3D0();

    (*(v6 + 16))(v9, v11, v5);
    [a1 size];
    v15 = [a1 role];
    if (v15)
    {
      v19 = v11;
      v16 = v15;
      sub_10007D7D0();

      v11 = v19;
    }

    v17 = sub_10007D5F0();

    (*(v6 + 8))(v11, v5);
    return v17;
  }
}

id MSSticker.init(fileURL:externalURI:localizedDescription:extensionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000B77C(0, &qword_1000B2AE0);
  if ([swift_getObjCClassFromMetadata() instancesRespondToSelector:"initWithContentsOfURL:externalURI:localizedDescription:error:"])
  {
    sub_10007C380(v5);
    v7 = v6;
    if (a3)
    {
      v8 = sub_10007D7A0();
    }

    else
    {
      v8 = 0;
    }

    v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v17 = sub_10007D7A0();

    v14 = [v16 initWithContentsOfURL:v7 externalURI:v8 localizedDescription:v17 error:0];
  }

  else
  {

    v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_10007C380(v10);
    v12 = v11;
    v13 = sub_10007D7A0();

    v24 = 0;
    v14 = [v9 initWithContentsOfFileURL:v12 localizedDescription:v13 error:&v24];

    if (!v14)
    {
      v21 = v24;

      sub_10007C360();

      swift_willThrow();
      v22 = sub_10007C3B0();
      (*(*(v22 - 8) + 8))(a1, v22);

      return v14;
    }

    v15 = v24;
  }

  if ([v14 respondsToSelector:"setStickerPackGUID:"])
  {
    v18 = sub_10007D7A0();

    [v14 setStickerPackGUID:v18];

    v19 = sub_10007C3B0();
    (*(*(v19 - 8) + 8))(a1, v19);
  }

  else
  {
    v20 = sub_10007C3B0();
    (*(*(v20 - 8) + 8))(a1, v20);
  }

  return v14;
}

uint64_t sub_10007815C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100069610(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1000781D8(v6);
  return sub_10007DD10();
}

void sub_1000781D8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_10007DE20(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_10007D630();
        v6 = sub_10007D920();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1000783AC(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1000782DC(0, v2, 1, a1);
  }
}

void sub_1000782DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      v14 = sub_10007D5B0();

      if ((v14 & 1) == 0)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v15 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v15;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1000783AC(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_88:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v8 = sub_100068D24(v8);
    }

    v88 = *(v8 + 2);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = *&v8[16 * v88];
        v90 = *&v8[16 * v88 + 24];
        sub_10007899C((*a3 + 8 * v89), (*a3 + 8 * *&v8[16 * v88 + 16]), (*a3 + 8 * v90), v6);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v90 < v89)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100068D24(v8);
        }

        if (v88 - 2 >= *(v8 + 2))
        {
          goto LABEL_114;
        }

        v91 = &v8[16 * v88];
        *v91 = v89;
        *(v91 + 1) = v90;
        sub_100068C98(v88 - 1);
        v88 = *(v8 + 2);
        if (v88 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v93 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = (*a3 + 8 * v7);
      v14 = *v12;
      v13 = v12 + 2;
      v15 = v11;
      v16 = v14;
      v17 = sub_10007D5B0();

      v95 = v7;
      v18 = v7 + 2;
      while (v6 != v18)
      {
        v19 = *(v13 - 1);
        v20 = *v13;
        v21 = v19;
        LODWORD(v19) = sub_10007D5B0() & 1;

        ++v18;
        ++v13;
        if ((v17 & 1) != v19)
        {
          v6 = v18 - 1;
          break;
        }
      }

      if (v17)
      {
        v9 = v95;
        if (v6 < v95)
        {
          goto LABEL_117;
        }

        if (v95 < v6)
        {
          v22 = 8 * v6 - 8;
          v23 = v6;
          v24 = v95;
          do
          {
            if (v24 != --v23)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v25 = *(v26 + v5);
              *(v26 + v5) = *(v26 + v22);
              *(v26 + v22) = v25;
            }

            ++v24;
            v22 -= 8;
            v5 += 8;
          }

          while (v24 < v23);
        }

        v10 = v6;
        v5 = v93;
      }

      else
      {
        v10 = v6;
        v5 = v93;
        v9 = v95;
      }
    }

    v6 = a3;
    v27 = a3[1];
    if (v10 < v27)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_116;
      }

      if (v10 - v9 < a4)
      {
        v28 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_118;
        }

        if (v28 >= v27)
        {
          v28 = a3[1];
        }

        if (v28 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v10 != v28)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_10006723C(0, *(v8 + 2) + 1, 1, v8);
    }

    v42 = *(v8 + 2);
    v41 = *(v8 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      v8 = sub_10006723C((v41 > 1), v42 + 1, 1, v8);
    }

    *(v8 + 2) = v43;
    v44 = &v8[16 * v42];
    *(v44 + 4) = v9;
    *(v44 + 5) = v10;
    v45 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    v7 = v10;
    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v8 + 4);
          v48 = *(v8 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_104;
          }

          v63 = &v8[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_107;
          }

          v69 = &v8[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_111;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v73 = &v8[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_71:
        if (v68)
        {
          goto LABEL_106;
        }

        v76 = &v8[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_109;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_78:
        v84 = v46 - 1;
        if (v46 - 1 >= v43)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*v6)
        {
          goto LABEL_122;
        }

        v85 = *&v8[16 * v84 + 32];
        v86 = *&v8[16 * v46 + 40];
        sub_10007899C((*v6 + 8 * v85), (*v6 + 8 * *&v8[16 * v46 + 32]), (*v6 + 8 * v86), v45);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v86 < v85)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100068D24(v8);
        }

        if (v84 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v87 = &v8[16 * v84];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        sub_100068C98(v46);
        v43 = *(v8 + 2);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v8[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_102;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_103;
      }

      v58 = &v8[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_105;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_108;
      }

      if (v62 >= v54)
      {
        v80 = &v8[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_112;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = *(v6 + 8);
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v94 = v5;
  v96 = v9;
  v29 = *a3;
  v30 = *a3 + 8 * v10 - 8;
  v31 = v9 - v10;
  v98 = v28;
LABEL_30:
  v100 = v10;
  v32 = *(v29 + 8 * v10);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    v35 = *v34;
    v36 = v32;
    v37 = v35;
    v38 = sub_10007D5B0();

    if ((v38 & 1) == 0)
    {
LABEL_29:
      v10 = v100 + 1;
      v30 += 8;
      --v31;
      if (v100 + 1 != v98)
      {
        goto LABEL_30;
      }

      v10 = v98;
      v5 = v94;
      v9 = v96;
      v6 = a3;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v39 = *v34;
    v32 = *(v34 + 8);
    *v34 = v32;
    *(v34 + 8) = v39;
    v34 -= 8;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_10007899C(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v4;
      v18 = *v6;
      v19 = v17;
      v20 = v6;
      v21 = sub_10007D5B0();

      if (v21)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4++;
      v6 = v20;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v20;
    v6 = v20 + 1;
    if (v7 == v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
    v34 = v4;
LABEL_24:
    v33 = v6;
    v22 = v6 - 1;
    --v5;
    v23 = v14;
    do
    {
      v24 = v5 + 1;
      v25 = *--v23;
      v26 = v22;
      v27 = *v22;
      v28 = v25;
      v29 = v27;
      v30 = sub_10007D5B0();

      if (v30)
      {
        v31 = v26;
        if (v24 != v33)
        {
          *v5 = *v26;
        }

        v4 = v34;
        if (v14 <= v34 || (v6 = v31, v31 <= v7))
        {
          v6 = v31;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v24 != v14)
      {
        *v5 = *v23;
      }

      --v5;
      v14 = v23;
      v22 = v26;
    }

    while (v23 > v34);
    v14 = v23;
    v6 = v33;
    v4 = v34;
  }

LABEL_35:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

void *sub_100078C14(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_10007DDB0();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100067340(v3, 0);
  sub_100078CB8(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100078CB8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10007DDB0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_10007DDB0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000D744(&unk_1000B4990, &qword_1000B4988);
          for (i = 0; i != v6; ++i)
          {
            sub_100006D40(&qword_1000B4988);
            v9 = sub_100013584(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10007D630();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100078E5C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100078E9C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100078EE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100078F00()
{
  result = qword_1000B4980;
  if (!qword_1000B4980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4980);
  }

  return result;
}

uint64_t sub_100078F54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100078F9C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100078FDC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100079054(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006D40(&qword_1000B29C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100079114@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 88);
  swift_beginAccess();
  v4 = sub_10007DBF0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1000791C0(uint64_t a1)
{
  v3 = *(*v1 + 88);
  swift_beginAccess();
  v4 = sub_10007DBF0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1000792E0()
{
  v1 = (v0 + *(*v0 + 96));
  swift_beginAccess();
  v2 = *v1;
  sub_100016BF8(*v1);
  return v2;
}

uint64_t sub_100079348(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 96));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10002CC20(v6);
}

uint64_t sub_100079420(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_100079460(a1);
  return v2;
}

uint64_t sub_100079460(uint64_t a1)
{
  v3 = *(*v1 + 88);
  (*(*(*(*v1 + 80) - 8) + 56))(v1 + v3, 1, 1, *(*v1 + 80));
  v4 = (v1 + *(*v1 + 96));
  *v4 = 0;
  v4[1] = 0;
  swift_beginAccess();
  v5 = sub_10007DBF0();
  (*(*(v5 - 8) + 40))(v1 + v3, a1, v5);
  swift_endAccess();
  return v1;
}

uint64_t sub_100079570(void (*a1)(uint64_t (*)(uint64_t a1), uint64_t))
{
  v2 = swift_allocObject();
  sub_1000795C0(a1);
  return v2;
}

uint64_t sub_1000795C0(void (*a1)(uint64_t (*)(uint64_t a1), uint64_t))
{
  v2 = v1;
  (*(*(*(*v1 + 80) - 8) + 56))(v2 + *(*v2 + 88), 1, 1);
  v4 = (v2 + *(*v2 + 96));
  *v4 = 0;
  v4[1] = 0;

  a1(sub_1000797C4, v1);

  return v1;
}

uint64_t sub_1000796A0(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 80);
  v5 = sub_10007DBF0();
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - v6;
  v8 = *(v4 - 8);
  (*(v8 + 16))(&v10 - v6, a1, v4);
  (*(v8 + 56))(v7, 0, 1, v4);
  return (*(*a2 + 112))(v7);
}

uint64_t sub_1000797CC(void (*a1)(char *), uint64_t a2)
{
  v37 = a2;
  v38 = a1;
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = sub_10007DBF0();
  v6 = *(v5 - 8);
  v35 = v5;
  v36 = v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v31 - v11;
  v13 = *(v4 - 8);
  v14 = __chkstk_darwin(v10);
  v34 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v31 - v17;
  v19 = *(v3 + 104);
  v19(v16);
  v20 = *(v13 + 48);
  if (v20(v12, 1, v4) == 1)
  {
    v21 = *(v36 + 8);
    v36 += 8;
    v32 = v21;
    v21(v12, v35);
    v22 = *v2;
    v33 = v9;
    v23 = *(v22 + 136);
    v24 = v37;

    v25 = v24;
    v26 = v23;
    v27 = v33;
    v28 = v26(v38, v25);
    v19(v28);
    if (v20(v27, 1, v4) == 1)
    {
      return v32(v27, v35);
    }

    else
    {
      v30 = v34;
      (*(v13 + 32))(v34, v27, v4);
      v26(0, 0);
      v38(v30);
      return (*(v13 + 8))(v30, v4);
    }
  }

  else
  {
    (*(v13 + 32))(v18, v12, v4);
    v38(v18);
    return (*(v13 + 8))(v18, v4);
  }
}

uint64_t sub_100079B04()
{
  v1 = *(*v0 + 88);
  v2 = sub_10007DBF0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10002CC20(*(v0 + *(*v0 + 96)));
  return v0;
}

uint64_t sub_100079BA8()
{
  sub_100079B04();

  return swift_deallocClassInstance();
}

uint64_t sub_100079C04()
{
  result = sub_10007DBF0();
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

uint64_t sub_100079CC4()
{
  v0 = sub_10007C780();
  sub_10000B274(v0, qword_1000B70F8);
  sub_10000AE78(v0, qword_1000B70F8);
  return sub_10007C770();
}

uint64_t sub_100079D44()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_canSupportMagicPocket;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100079D88(char a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_canSupportMagicPocket;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_100079E38()
{
  result = [v0 view];
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

  return result;
}

uint64_t sub_100079E88()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_isPresentedWithNavigationTitleBar;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100079ECC(char a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_isPresentedWithNavigationTitleBar;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  byte_1000B7110 = a1;
  return result;
}

void (*sub_100079F24(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_isPresentedWithNavigationTitleBar;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_100079FAC;
}

void sub_100079FAC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    byte_1000B7110 = *(v3[3] + v3[4]);
  }

  free(v3);
}

id sub_10007A000()
{
  v0 = [objc_allocWithZone(AVTStickerSheetControllerSwiftProvider) init];
  v1 = sub_100054F68(byte_1000B7110);
  v2 = [objc_allocWithZone(UIDevice) init];
  v3 = [v2 userInterfaceIdiom];

  v4 = v1 + -6.0;
  if (v3 == 1)
  {
    v4 = v1;
  }

  result = [v0 setSectionInsets:{v4, 0.0, 0.0, 0.0}];
  qword_1000B7120 = v0;
  return result;
}

void *sub_10007A0B8()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_keyline;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10007A104(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_keyline;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10007A204(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_10007A2BC()
{
  v1 = (v0 + OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_puppetIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_10007A314(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_puppetIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  v7 = (*((swift_isaMask & *v2) + 0x148))(v6);
  return (*((swift_isaMask & *v2) + 0x150))(v7);
}

uint64_t (*sub_10007A3FC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10007A460;
}

uint64_t sub_10007A460(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = (*((swift_isaMask & *v5) + 0x148))(result);
    return (*((swift_isaMask & *v5) + 0x150))(v6);
  }

  return result;
}

void *sub_10007A550(uint64_t a1, unint64_t a2)
{
  v2[OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_canSupportMagicPocket] = 1;
  v2[OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_isPresentedWithNavigationTitleBar] = 0;
  *&v2[OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_stickerSheetView] = 0;
  *&v2[OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_keyline] = 0;
  *&v2[OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_puppetRecord] = 0;
  *&v2[OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_delegate] = 0;
  v5 = &v2[OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_puppetIdentifier];
  v6 = type metadata accessor for AvatarStickersViewController();
  *v5 = 0;
  v5[1] = 0;
  v17.receiver = v2;
  v17.super_class = v6;
  v7 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", 0, 0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v9 = v7;
  if (!v8)
  {

    v10 = sub_100013AF8();
    swift_beginAccess();
    v11 = *(**v10 + 240);

    a1 = v11(v12);
    a2 = v13;
  }

  v14 = (v9 + OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_puppetIdentifier);
  swift_beginAccess();
  *v14 = a1;
  v14[1] = a2;

  (*((swift_isaMask & *v9) + 0x148))(v15);

  return v9;
}

void sub_10007A75C()
{
  v1 = v0;
  v2 = *((swift_isaMask & *v0) + 0x128);
  v4 = v2();
  v5 = v3;
  v6 = OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_puppetRecord;
  v7 = *&v1[OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_puppetRecord];
  if (!v7)
  {
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

  v8 = [v7 identifier];
  v9 = sub_10007D7D0();
  v11 = v10;

  if (!v5)
  {
    if (v11)
    {
LABEL_13:

      goto LABEL_14;
    }

LABEL_28:
    if (qword_1000B70F0 != -1)
    {
      swift_once();
    }

    v31 = sub_10007C780();
    sub_10000AE78(v31, qword_1000B70F8);
    v32 = v1;
    oslog = sub_10007C760();
    v33 = sub_10007DA00();

    if (os_log_type_enabled(oslog, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41[0] = v35;
      *v34 = 136315138;
      v36 = v2();
      if (v37)
      {
        v38 = v37;
      }

      else
      {
        v36 = 7104878;
        v38 = 0xE300000000000000;
      }

      v39 = sub_10000A660(v36, v38, v41);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, oslog, v33, "Puppet and ID match. Nothing to do: %s", v34, 0xCu);
      sub_10000B5CC(v35);
    }

    else
    {
    }

    return;
  }

  if (!v11)
  {
    goto LABEL_13;
  }

  if (v4 == v9 && v5 == v11)
  {

    goto LABEL_28;
  }

  v13 = sub_10007DE50();

  if (v13)
  {
    goto LABEL_28;
  }

LABEL_14:
  v15 = (v2)(v14);
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    if (qword_1000B70F0 != -1)
    {
      swift_once();
    }

    v19 = sub_10007C780();
    sub_10000AE78(v19, qword_1000B70F8);

    v20 = sub_10007C760();
    v21 = sub_10007DA00();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v41[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_10000A660(v17, v18, v41);
      _os_log_impl(&_mh_execute_header, v20, v21, "Will attempt to load puppet identified by %s", v22, 0xCu);
      sub_10000B5CC(v23);
    }

    v24 = sub_100013AF8();
    swift_beginAccess();
    v25 = *(**v24 + 376);

    v26 = v25(v17, v18, 0);

    *&v1[v6] = v26;
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1000B70F0 != -1)
    {
      swift_once();
    }

    v27 = sub_10007C780();
    sub_10000AE78(v27, qword_1000B70F8);
    v28 = sub_10007C760();
    v29 = sub_10007DA00();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Removing puppet record because of nil value", v30, 2u);
    }

    *&v1[v6] = 0;

    swift_unknownObjectRelease();
  }
}

void sub_10007ACA0()
{
  v1 = *&v0[OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_puppetRecord];
  if (v1)
  {
    v2 = OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_stickerSheetView;
    v3 = *&v0[OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_stickerSheetView];
    swift_unknownObjectRetain();
    [v3 removeFromSuperview];
    if (qword_1000B7118 != -1)
    {
      swift_once();
    }

    [qword_1000B7120 setDelegate:v0];
    v4 = [qword_1000B7120 stickerSheetViewForAvatarRecord:v1];
    v5 = *&v0[v2];
    *&v0[v2] = v4;
    v6 = v4;

    if (v6)
    {
      v7 = [v0 view];
      if (!v7)
      {
        __break(1u);
        goto LABEL_22;
      }

      v8 = v7;
      [v7 bounds];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      [v6 setFrame:{v10, v12, v14, v16}];
    }

    v17 = *&v0[v2];
    if (!v17 || ([v17 setTranslatesAutoresizingMaskIntoConstraints:1], (v18 = *&v0[v2]) == 0))
    {
LABEL_11:

      swift_unknownObjectRelease();
      return;
    }

    v19 = v18;
    v20 = [v0 view];
    if (v20)
    {
      v21 = v20;
      [v20 addSubview:v19];

      goto LABEL_11;
    }

LABEL_22:
    __break(1u);
    return;
  }

  if (qword_1000B70F0 != -1)
  {
    swift_once();
  }

  v22 = sub_10007C780();
  sub_10000AE78(v22, qword_1000B70F8);
  oslog = sub_10007C760();
  v23 = sub_10007DA10();
  if (os_log_type_enabled(oslog, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v23, "Asked to load stickers without an avatar", v24, 2u);
  }
}

id sub_10007AF54()
{
  v1 = v0;
  (*((swift_isaMask & *v0) + 0x150))();
  result = [v0 view];
  if (result)
  {
    v3 = result;
    type metadata accessor for KeylineView();
    v4 = sub_100053328(v3);
    v5 = *((swift_isaMask & *v1) + 0xE8);

    return v5(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10007B130()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for AvatarStickersViewController();
  objc_msgSendSuper2(&v13, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_stickerSheetView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [v2 setFrame:{v6, v8, v10, v12}];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10007B244()
{
  v1 = sub_10007D2F0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007D320();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_puppetRecord) = 0;
  v9 = swift_unknownObjectRelease();
  (*((swift_isaMask & *v0) + 0x148))(v9);
  sub_10000B77C(0, &qword_1000B22E0);
  v10 = sub_10007DAC0();
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  aBlock[4] = sub_10007BD0C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008F80;
  aBlock[3] = &unk_1000A65E0;
  v12 = _Block_copy(aBlock);
  v13 = v0;

  sub_10007D310();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10006C57C();
  sub_100006D40(&unk_1000B22F0);
  sub_10000B894();
  sub_10007DC50();
  sub_10007DAD0();
  _Block_release(v12);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

id sub_10007B594()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AvatarStickersViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void (*sub_10007B7A0(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((swift_isaMask & **v1) + 0xC0))();
  return sub_1000347E0;
}

void sub_10007B9C8(double a1, double a2)
{
  v4 = (*((swift_isaMask & *v2) + 0xE0))();
  if (v4)
  {
    v5 = v4;
    (*((swift_isaMask & *v4) + 0x58))(a2);
  }
}

void sub_10007BC1C()
{
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_canSupportMagicPocket) = 1;
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_isPresentedWithNavigationTitleBar) = 0;
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_stickerSheetView) = 0;
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_keyline) = 0;
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_puppetRecord) = 0;
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_delegate) = 0;
  v1 = (v0 + OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_puppetIdentifier);
  *v1 = 0;
  v1[1] = 0;
  sub_10007DD90();
  __break(1u);
}

uint64_t sub_10007BCD4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007BD68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10007BD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10007C3B0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v3 + OBJC_IVAR____TtC22StickersUltraExtension28AvatarStickersViewController_puppetRecord))
  {
    return 0;
  }

  v24 = a1;
  v25 = a2;
  v11 = [swift_unknownObjectRetain() identifier];
  sub_10007D7D0();

  v12 = sub_10007C6A0();
  v14 = v13;

  if (qword_1000B70F0 != -1)
  {
    swift_once();
  }

  v15 = sub_10007C780();
  sub_10000AE78(v15, qword_1000B70F8);

  v16 = sub_10007C760();
  v17 = sub_10007DA00();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = a3;
    v20 = v19;
    v26 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_10000A660(v12, v14, &v26);
    _os_log_impl(&_mh_execute_header, v16, v17, "Loaded sticker for puppet with externalURI %s", v18, 0xCu);
    sub_10000B5CC(v20);
  }

  sub_10000B77C(0, &qword_1000B2AE0);
  (*(v8 + 16))(v10, v24, v7);

  v21 = MSSticker.init(fileURL:externalURI:localizedDescription:extensionIdentifier:)(v10, v12, v14);
  swift_unknownObjectRelease();
  return v21;
}

id sub_10007C058()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_1000B71B8 = result;
  return result;
}

uint64_t sub_10007C0AC()
{
  v0 = sub_10007C710();
  sub_10000B274(v0, qword_1000B7310);
  sub_10000AE78(v0, qword_1000B7310);
  if (qword_1000B71B0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000B71B8;
  return sub_10007C700();
}

uint64_t sub_10007C154()
{
  if (qword_1000B71C0 != -1)
  {
    swift_once();
  }

  v0 = sub_10007C710();

  return sub_10000AE78(v0, qword_1000B7310);
}

uint64_t sub_10007C1B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000B71C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10007C710();
  v3 = sub_10000AE78(v2, qword_1000B7310);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

CGSize CGSizeApplyAffineTransform(CGSize size, CGAffineTransform *t)
{
  v4 = _CGSizeApplyAffineTransform(size, t);
  height = v4.height;
  width = v4.width;
  result.height = height;
  result.width = width;
  return result;
}