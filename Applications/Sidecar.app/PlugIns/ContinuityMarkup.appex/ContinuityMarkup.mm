uint64_t sub_100001508()
{
  v0 = sub_100005FC8();
  sub_1000051C4(v0, qword_10000C958);
  sub_100004EF4(v0, qword_10000C958);
  return sub_100005FB8();
}

id sub_10000157C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_100006028();

  v2 = [v0 initWithTitle:v1];

  return v2;
}

id sub_10000164C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AnnotationViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100001774()
{
  v1 = type metadata accessor for AnnotationViewController();
  v41.receiver = v0;
  v41.super_class = v1;
  objc_msgSendSuper2(&v41, "viewDidLoad");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = *&v0[OBJC_IVAR___AnnotationViewController__navigationItem];
    sub_100004D8C(v0);
    if (v5)
    {
      v6 = sub_100006028();
    }

    else
    {
      v6 = 0;
    }

    [v4 setTitle:v6];

    *(&v40 + 1) = v1;
    *&v39 = v0;
    v7 = objc_allocWithZone(UIBarButtonItem);
    v8 = v0;
    v9 = sub_1000043C4(0, &v39, "done:");
    v10 = *&v8[OBJC_IVAR___AnnotationViewController_doneButton];
    *&v8[OBJC_IVAR___AnnotationViewController_doneButton] = v9;
    v11 = v9;

    v39 = 0u;
    v40 = 0u;
    v12 = objc_allocWithZone(UIBarButtonItem);
    v13 = sub_1000043C4(6, &v39, 0);
    [v13 setWidth:40.0];
    sub_100004228(&qword_10000CA88, &qword_100006908);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100006840;
    *(v14 + 32) = v11;
    *(v14 + 40) = v13;
    v38 = v11;
    v37 = v13;
    sub_100004DF0(v14, v4);
    v15 = *&v8[OBJC_IVAR___AnnotationViewController_markupViewController];
    v16 = [v15 view];
    if (v16)
    {
      v17 = v16;
      v18 = objc_opt_self();
      v19 = [v18 systemBackgroundColor];
      [v3 setBackgroundColor:v19];

      v20 = [v18 systemBackgroundColor];
      [v15 setBackgroundColor:v20];

      [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v8 addChildViewController:v15];
      [v3 addSubview:v17];
      v21 = [v3 topAnchor];
      v22 = [v3 leftAnchor];
      v34 = [v3 bottomAnchor];
      v36 = v8;
      v23 = [v3 rightAnchor];
      v35 = objc_opt_self();
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_100006850;
      v25 = [v17 leftAnchor];
      v26 = [v25 constraintEqualToAnchor:v22];

      *(v24 + 32) = v26;
      v27 = [v17 topAnchor];
      v28 = [v27 constraintEqualToAnchor:v21];

      *(v24 + 40) = v28;
      v29 = [v17 rightAnchor];
      v30 = [v23 constraintEqualToAnchor:v29];

      *(v24 + 48) = v30;
      v31 = [v17 bottomAnchor];
      v32 = [v34 constraintEqualToAnchor:v31];

      *(v24 + 56) = v32;
      sub_100005228(0, &qword_10000CAB0, NSLayoutConstraint_ptr);
      isa = sub_100006058().super.isa;

      [v35 activateConstraints:isa];

      [v3 layoutIfNeeded];
      [v17 becomeFirstResponder];
      [v15 didMoveToParentViewController:v36];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100001C90(void *a1)
{
  v2 = v1;
  if (qword_10000C950 != -1)
  {
    sub_100005300();
  }

  v4 = sub_100005FC8();
  sub_100004EF4(v4, qword_10000C958);
  v5 = sub_100005FA8();
  v6 = sub_100006078();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1000046B8(0xD000000000000013, 0x80000001000071B0, &v17);
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s", v7, 0xCu);
    sub_10000431C(v8);
  }

  v9 = sub_100006028();
  sub_100005320();
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  v21 = sub_100004F2C;
  v22 = v10;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_100002444;
  v20 = &unk_100008640;
  v11 = _Block_copy(&v17);
  v12 = v2;

  [a1 openStreamForType:2 identifier:v9 completion:v11];
  _Block_release(v11);

  v13 = sub_100006028();
  sub_100005320();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v21 = sub_100004F34;
  v22 = v14;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_100002444;
  v20 = &unk_100008690;
  v15 = _Block_copy(&v17);
  v16 = v12;

  [a1 openStreamForType:2 identifier:v13 completion:v15];
  _Block_release(v15);
}

void sub_100001F74(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = sub_1000050CC;
    v24 = v5;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_100002330;
    v22 = &unk_1000087A8;
    v6 = _Block_copy(&aBlock);
    v7 = a1;

    [v7 setHandler:v6];
    _Block_release(v6);
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    v23 = sub_10000510C;
    v24 = v8;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_1000023D8;
    v22 = &unk_1000087F8;
    v9 = _Block_copy(&aBlock);
    v10 = a3;

    [v7 activateWithCompletion:v9];
    _Block_release(v9);
    v11 = *&v10[OBJC_IVAR___AnnotationViewController_akStream];
    *&v10[OBJC_IVAR___AnnotationViewController_akStream] = a1;
  }

  else if (a2)
  {
    swift_errorRetain();
    if (qword_10000C950 != -1)
    {
      swift_once();
    }

    v12 = sub_100005FC8();
    v13 = sub_100004EF4(v12, qword_10000C958);
    __chkstk_darwin(v13, v14);
    sub_100005390(sub_1000022D0, 0, sub_1000052C4);
  }

  else
  {
    if (qword_10000C950 != -1)
    {
      swift_once();
    }

    v15 = sub_100005FC8();
    sub_100004EF4(v15, qword_10000C958);
    v18 = sub_100005FA8();
    v16 = sub_100006088();
    if (os_log_type_enabled(v18, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v18, v16, "AKSidecarController Stream Failed", v17, 2u);
    }
  }
}

uint64_t sub_1000022EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100002330(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v6 = a2;
    sub_100004E74(&v6, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  swift_unknownObjectRetain();
  v4(v8);

  return sub_100004650(v8);
}

void sub_1000023D8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_100002444(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_1000024D0(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = sub_100004FA0;
    v24 = v5;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_100002330;
    v22 = &unk_1000086E0;
    v6 = _Block_copy(&aBlock);
    v7 = a1;

    [v7 setHandler:v6];
    _Block_release(v6);
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    v23 = sub_100004FE0;
    v24 = v8;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_1000023D8;
    v22 = &unk_100008730;
    v9 = _Block_copy(&aBlock);
    v10 = a3;

    [v7 activateWithCompletion:v9];
    _Block_release(v9);
    v11 = *&v10[OBJC_IVAR___AnnotationViewController_markupStream];
    *&v10[OBJC_IVAR___AnnotationViewController_markupStream] = a1;
  }

  else if (a2)
  {
    swift_errorRetain();
    if (qword_10000C950 != -1)
    {
      swift_once();
    }

    v12 = sub_100005FC8();
    v13 = sub_100004EF4(v12, qword_10000C958);
    __chkstk_darwin(v13, v14);
    sub_100005390(sub_10000282C, 0, sub_100004F40);
  }

  else
  {
    if (qword_10000C950 != -1)
    {
      swift_once();
    }

    v15 = sub_100005FC8();
    sub_100004EF4(v15, qword_10000C958);
    v18 = sub_100005FA8();
    v16 = sub_100006088();
    if (os_log_type_enabled(v18, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v18, v16, "MarkupController Stream Failed", v17, 2u);
    }
  }
}

uint64_t sub_100002848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100005FD8();
  v9 = sub_1000052DC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9, v14);
  sub_1000052F0();
  v17 = v16 - v15;
  v18 = sub_100005FF8();
  v19 = sub_1000052DC(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19, v24);
  sub_1000052F0();
  v27 = v26 - v25;
  sub_100005024(a1, &aBlock);
  if (!v38)
  {
    return sub_100004650(&aBlock);
  }

  sub_100004E74(&aBlock, v42);
  sub_100005228(0, &qword_10000CA68, OS_dispatch_queue_ptr);
  v34 = v18;
  v28 = sub_100006098();
  sub_100004368(v42, v41);
  v29 = swift_allocObject();
  *(v29 + 16) = a2;
  sub_100004E74(v41, (v29 + 24));
  v39 = a4;
  v40 = v29;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v37 = sub_1000022EC;
  v38 = a5;
  v30 = _Block_copy(&aBlock);

  sub_100005FE8();
  *&aBlock = &_swiftEmptyArrayStorage;
  sub_1000041D0();
  sub_100004228(&qword_10000CA78, &qword_100006900);
  v31 = sub_100004270();
  sub_10000532C(&aBlock, v32, v31);
  sub_1000060A8();
  _Block_release(v30);

  (*(v11 + 8))(v17, v8);
  (*(v21 + 8))(v27, v34);
  return sub_10000431C(v42);
}

void sub_100002AF0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a2);
  }
}

uint64_t sub_100002B60(uint64_t result, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void))
{
  if (result)
  {
    swift_errorRetain();
    if (qword_10000C950 != -1)
    {
      sub_100005300();
    }

    v6 = sub_100005FC8();
    v7 = sub_100004EF4(v6, qword_10000C958);
    __chkstk_darwin(v7, v8);
    sub_100005390(a3, 0, a4);
  }

  return result;
}

void sub_100002C3C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong completeRequest:2];
  }

  v3 = *(v0 + OBJC_IVAR___AnnotationViewController_akStream);
  *(v0 + OBJC_IVAR___AnnotationViewController_akStream) = 0;

  v4 = *(v0 + OBJC_IVAR___AnnotationViewController_markupStream);
  *(v0 + OBJC_IVAR___AnnotationViewController_markupStream) = 0;
}

void sub_100002D24(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR___AnnotationViewController_markupViewController) annotationController];
  if (v3)
  {
    v6 = v3;
    v4 = sub_100004EAC(v3);
    if (v4)
    {
      v5 = v4;
      sub_1000045B8(a1, a1[3]);
      [v5 handleIncomingOPACKObject:sub_100006148()];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_100002E1C(void *a1)
{
  v3 = objc_opt_self();
  sub_1000045B8(a1, a1[3]);
  v4 = sub_100006148();
  sub_100005320();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v15[4] = sub_100004E84;
  v15[5] = v5;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100002FF8;
  v15[3] = &unk_1000085F0;
  v6 = _Block_copy(v15);
  v7 = v1;

  v8 = [v3 validateInitialMessage:v4 applicationData:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();
  if (v8 && (v9 = [*&v7[OBJC_IVAR___AnnotationViewController_markupViewController] annotationController]) != 0 && (v10 = v9, v11 = objc_msgSend(v9, "sidecarController"), v10, v11))
  {
    [v11 setDelegate:v7];

    v7[OBJC_IVAR___AnnotationViewController_handledSetupMessage] = 1;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = [Strong request];

      [v14 cancel];
    }
  }
}

uint64_t sub_100002FF8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_100006018();

  LOBYTE(v2) = v2(v3);

  return v2 & 1;
}

void sub_100003078(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_100006138();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  v4 = OBJC_IVAR___AnnotationViewController_handledSetupMessage;
  if (v1[OBJC_IVAR___AnnotationViewController_handledSetupMessage] != 1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = sub_100006118();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_38;
      }

      v11 = *(a1 + 32);
    }

    v12 = v11;
    v13 = [v11 objectValue];

    if (v13)
    {
      sub_1000060B8();
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    v24 = v28;
    v25 = v29;
    if (*(&v29 + 1))
    {
      sub_100004E74(&v24, &v30);
      v14 = objc_opt_self();
      sub_1000045B8(&v30, v31);
      v15 = sub_100006148();
      sub_100005320();
      v16 = swift_allocObject();
      *(v16 + 16) = v1;
      v26 = sub_1000052D8;
      v27 = v16;
      *&v24 = _NSConcreteStackBlock;
      *(&v24 + 1) = 1107296256;
      *&v25 = sub_100002FF8;
      *(&v25 + 1) = &unk_1000085A0;
      v17 = _Block_copy(&v24);
      v18 = v1;

      LODWORD(v14) = [v14 validateInitialMessage:v15 applicationData:v17];
      _Block_release(v17);
      swift_unknownObjectRelease();
      if (v14)
      {
        v19 = [*&v18[OBJC_IVAR___AnnotationViewController_markupViewController] annotationController];
        if (v19)
        {
          v20 = v19;
          v21 = [v19 sidecarController];

          if (v21)
          {
            [v21 setDelegate:v18];

            v1[v4] = 1;
          }
        }

        sub_10000431C(&v30);
        return;
      }

      sub_10000431C(&v30);
    }

    else
    {
      sub_100004650(&v24);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v23 = Strong;
    v7 = [Strong request];

    [v7 cancel];
    goto LABEL_32;
  }

  v5 = [*&v1[OBJC_IVAR___AnnotationViewController_markupViewController] annotationController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 sidecarController];

    if (v7)
    {
      if (v3 >= 1)
      {
        for (i = 0; i != v3; ++i)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v9 = sub_100006118();
          }

          else
          {
            v9 = *(a1 + 8 * i + 32);
          }

          v10 = v9;
          if ([v9 objectValue])
          {
            sub_1000060B8();
            swift_unknownObjectRelease();
            sub_100004E74(&v30, &v24);
            sub_1000045B8(&v24, *(&v25 + 1));
            [v7 handleIncomingOPACKObject:sub_100006148()];

            swift_unknownObjectRelease();
            sub_10000431C(&v24);
          }

          else
          {
          }
        }

LABEL_32:

        return;
      }

LABEL_38:
      __break(1u);
    }
  }
}

uint64_t sub_100003460()
{
  isa = sub_100006008().super.isa;
  AKSidecarMarkupGetApplicationFromDictionary();

  return 0;
}

double sub_1000036B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_100004C28(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_100004368(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

id sub_10000371C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR___AnnotationViewController_markupViewController;
  type metadata accessor for _MarkupViewController();
  *&v4[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR___AnnotationViewController_doneButton] = 0;
  v4[OBJC_IVAR___AnnotationViewController_handledSetupMessage] = 0;
  v8 = OBJC_IVAR___AnnotationViewController__navigationItem;
  sub_100005228(0, &qword_10000CAA8, UINavigationItem_ptr);
  *&v4[v8] = sub_100005350();
  *&v4[OBJC_IVAR___AnnotationViewController_akStream] = 0;
  *&v4[OBJC_IVAR___AnnotationViewController_markupStream] = 0;
  if (a2)
  {
    v9 = sub_100006028();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v4;
  v12.super_class = type metadata accessor for AnnotationViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_10000385C(void *a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR___AnnotationViewController_markupViewController;
  type metadata accessor for _MarkupViewController();
  *&v2[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v2[OBJC_IVAR___AnnotationViewController_doneButton] = 0;
  v2[OBJC_IVAR___AnnotationViewController_handledSetupMessage] = 0;
  v5 = OBJC_IVAR___AnnotationViewController__navigationItem;
  sub_100005228(0, &qword_10000CAA8, UINavigationItem_ptr);
  *&v2[v5] = sub_100005350();
  *&v2[OBJC_IVAR___AnnotationViewController_akStream] = 0;
  *&v2[OBJC_IVAR___AnnotationViewController_markupStream] = 0;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for AnnotationViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

void sub_1000039A4(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong request];

    if (v5)
    {
      sub_100004228(&qword_10000CA88, &qword_100006908);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100006860;
      sub_100004368(a2, v9);
      v7 = objc_allocWithZone(SidecarItem);
      *(v6 + 32) = sub_10000451C(v9);
      sub_100005228(0, &qword_10000CA90, SidecarItem_ptr);
      isa = sub_100006058().super.isa;

      [v5 sendItems:isa complete:0];
    }
  }
}

uint64_t sub_100003B34()
{
  v1 = sub_100005FD8();
  v2 = sub_1000052DC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2, v7);
  sub_1000052F0();
  v10 = v9 - v8;
  v11 = sub_100005FF8();
  v12 = sub_1000052DC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12, v17);
  sub_1000052F0();
  v20 = v19 - v18;
  sub_100005228(0, &qword_10000CA68, OS_dispatch_queue_ptr);
  v21 = sub_100006098();
  sub_100005320();
  v22 = swift_allocObject();
  *(v22 + 16) = v0;
  aBlock[4] = sub_1000041B0;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000022EC;
  aBlock[3] = &unk_100008550;
  v23 = _Block_copy(aBlock);
  v24 = v0;

  sub_100005FE8();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000041D0();
  sub_100004228(&qword_10000CA78, &qword_100006900);
  v25 = sub_100004270();
  sub_10000532C(aBlock, v26, v25);
  sub_1000060A8();
  _Block_release(v23);

  (*(v4 + 8))(v10, v1);
  return (*(v14 + 8))(v20, v11);
}

void sub_100003D88()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong request];

    [v2 cancel];
  }
}

double sub_100003EAC()
{
  result = *(v0 + OBJC_IVAR____TtC16ContinuityMarkup21_MarkupViewController_hostImageSize);
  v2 = *(v0 + OBJC_IVAR____TtC16ContinuityMarkup21_MarkupViewController_hostImageSize + 8);
  return result;
}

id sub_100003EC0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = &v3[OBJC_IVAR____TtC16ContinuityMarkup21_MarkupViewController_hostImageSize];
  *v5 = 0;
  *(v5 + 1) = 0;
  if (a2)
  {
    v6 = sub_100006028();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for _MarkupViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", v6, a3);

  return v7;
}

uint64_t sub_100003F68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, void *))
{
  if (a3)
  {
    v7 = sub_100006038();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a4;
  return a5(v7, v9, a4);
}

id sub_100003FDC(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC16ContinuityMarkup21_MarkupViewController_hostImageSize];
  v4 = type metadata accessor for _MarkupViewController();
  *v3 = 0;
  *(v3 + 1) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_10000407C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _MarkupViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_1000040D4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000040E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100004104(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_10000CA60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10000CA60);
    }
  }
}

uint64_t sub_10000417C()
{
  sub_100005320();

  return _swift_deallocObject();
}

uint64_t sub_1000041B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000041D0()
{
  result = qword_10000CA70;
  if (!qword_10000CA70)
  {
    sub_100005FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000CA70);
  }

  return result;
}

uint64_t sub_100004228(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100004270()
{
  result = qword_10000CA80;
  if (!qword_10000CA80)
  {
    sub_1000042D4(&qword_10000CA78, &qword_100006900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000CA80);
  }

  return result;
}

uint64_t sub_1000042D4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000431C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100004368(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_1000043C4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2[3];
  if (v6)
  {
    v8 = sub_1000045B8(a2, a2[3]);
    v9 = *(v6 - 8);
    v10 = *(v9 + 64);
    __chkstk_darwin(v8, v8);
    v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12);
    v13 = sub_100006148();
    (*(v9 + 8))(v12, v6);
    sub_10000431C(a2);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v3 initWithBarButtonSystemItem:a1 target:v13 action:a3];
  swift_unknownObjectRelease();
  return v14;
}

id sub_10000451C(uint64_t *a1)
{
  sub_1000045B8(a1, a1[3]);
  v3 = sub_100006148();
  v4 = sub_100006028();

  v5 = [v1 initWithObject:v3 type:v4];
  swift_unknownObjectRelease();

  sub_10000431C(a1);
  return v5;
}

void *sub_1000045B8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100004650(uint64_t a1)
{
  v2 = sub_100004228(&qword_10000CA98, &qword_100006910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000046B8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000477C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100004368(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_10000431C(v11);
  return v7;
}

unint64_t sub_10000477C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000487C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_100006128();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10000487C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000048C8(a1, a2);
  sub_1000049E0(&off_100008480);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000048C8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_100006048())
  {
    result = sub_100004AC4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_100006108();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_100006128();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000049E0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_100004B34(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100004AC4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100004228(&qword_10000CAA0, &unk_100006918);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100004B34(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004228(&qword_10000CAA0, &unk_100006918);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_100004C28(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000060D8(*(v2 + 40));

  return sub_100004C6C(a1, v4);
}

unint64_t sub_100004C6C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100004D30(*(v2 + 48) + 40 * i, v7);
    v5 = sub_1000060E8();
    sub_1000045FC(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100004D8C(void *a1)
{
  v1 = [a1 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100006038();

  return v3;
}

void sub_100004DF0(uint64_t a1, void *a2)
{
  sub_100005228(0, &qword_10000CAB8, UIBarButtonItem_ptr);
  isa = sub_100006058().super.isa;

  [a2 setRightBarButtonItems:isa];
}

_OWORD *sub_100004E74(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_100004EAC(void *a1)
{
  v1 = a1;
  v2 = [v1 sidecarController];

  return v2;
}

uint64_t sub_100004EF4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100004F40()
{
  v1 = *(v0 + 16);
  swift_errorRetain();
  return v1;
}

uint64_t sub_100004F6C()
{
  swift_unknownObjectWeakDestroy();
  sub_100005320();

  return _swift_deallocObject();
}

uint64_t sub_100005024(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004228(&qword_10000CA98, &qword_100006910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005150()
{
  v1 = *(v0 + 16);

  sub_10000431C((v0 + 24));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t *sub_1000051C4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100005228(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100005300()
{

  return swift_once();
}

uint64_t sub_10000532C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of SetAlgebra.init<A>(_:)(a1, v4, a3, v3, v5);
}

id sub_100005350()
{

  return sub_10000157C();
}

uint64_t sub_100005370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{

  return _swift_dynamicCast(&a9, &a16, v16 + 8, a4, 6);
}

void sub_100005390(uint64_t (*a1)(void), uint64_t a2, void (*a3)(void))
{
  a3();
  v4 = sub_100005F98();

  v5 = [v4 localizedDescription];
  v6 = sub_100006038();
  v8 = v7;

  v9 = a1();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v33 = v4;

    v13 = sub_100005FA8();
    v14 = sub_100006088();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v15 = 136446979;
      v16 = sub_1000046B8(v11, v12, &v34);

      *(v15 + 4) = v16;
      *(v15 + 12) = 2082;
      v17 = [v33 domain];
      v18 = sub_100006038();
      v20 = v19;

      v21 = sub_1000046B8(v18, v20, &v34);

      *(v15 + 14) = v21;
      *(v15 + 22) = 2048;
      v22 = [v33 code];

      *(v15 + 24) = v22;
      *(v15 + 32) = 2081;
      v23 = sub_1000046B8(v6, v8, &v34);

      *(v15 + 34) = v23;
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s: %{public}s (%ld) %{private}s", v15, 0x2Au);
LABEL_6:
      swift_arrayDestroy();

      return;
    }
  }

  else
  {
    v33 = v4;

    v13 = sub_100005FA8();
    v24 = sub_100006088();

    if (os_log_type_enabled(v13, v24))
    {
      v25 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v25 = 136446723;
      v26 = [v33 domain];
      v27 = sub_100006038();
      v29 = v28;

      v30 = sub_1000046B8(v27, v29, &v34);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2048;
      v31 = [v33 code];

      *(v25 + 14) = v31;
      *(v25 + 22) = 2081;
      v32 = sub_1000046B8(v6, v8, &v34);

      *(v25 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v13, v24, "%{public}s (%ld) %{private}s", v25, 0x20u);
      goto LABEL_6;
    }
  }
}

void sub_1000057A0()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for AnnotationRootController();
  objc_msgSendSuper2(&v19, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = *&v0[OBJC_IVAR___AnnotationRootController__navigationController];
    v4 = [v3 view];
    if (v4)
    {
      v5 = v4;
      [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v0 addChildViewController:v3];
      [v2 addSubview:v5];
      v6 = objc_opt_self();
      sub_100004228(&qword_10000CA88, &qword_100006908);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_100006850;
      v8 = [v5 leftAnchor];
      v9 = [v2 leftAnchor];
      v10 = [v8 constraintEqualToAnchor:v9];

      *(v7 + 32) = v10;
      v11 = [v5 rightAnchor];
      v12 = sub_100005F58([v2 rightAnchor]);

      *(v7 + 40) = v12;
      v13 = [v5 topAnchor];
      v14 = sub_100005F58([v2 topAnchor]);

      *(v7 + 48) = v14;
      v15 = [v5 bottomAnchor];
      v16 = sub_100005F58([v2 bottomAnchor]);

      *(v7 + 56) = v16;
      sub_100005228(0, &qword_10000CAB0, NSLayoutConstraint_ptr);
      isa = sub_100006058().super.isa;

      [v6 activateConstraints:isa];

      [v3 didMoveToParentViewController:v0];
      v18 = *&v0[OBJC_IVAR___AnnotationRootController_markupController];
      swift_unknownObjectWeakAssign();
      [v3 pushViewController:v18 animated:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_100005C30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR___AnnotationRootController__navigationController;
  v8 = objc_allocWithZone(UINavigationController);
  *&v3[v7] = sub_100005F78();
  v9 = OBJC_IVAR___AnnotationRootController_markupController;
  type metadata accessor for AnnotationViewController();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a2)
  {
    v10 = sub_100006028();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v4;
  v13.super_class = type metadata accessor for AnnotationRootController();
  v11 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", v10, a3);

  return v11;
}

id sub_100005D6C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___AnnotationRootController__navigationController;
  v5 = objc_allocWithZone(UINavigationController);
  *&v1[v4] = sub_100005F78();
  v6 = OBJC_IVAR___AnnotationRootController_markupController;
  type metadata accessor for AnnotationViewController();
  *&v2[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9.receiver = v2;
  v9.super_class = type metadata accessor for AnnotationRootController();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_100005E44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnnotationRootController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100005EE8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_100006028();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithNibName:v5 bundle:a3];

  return v6;
}

id sub_100005F58(uint64_t a1)
{
  v4 = *(v1 + 1192);

  return [v2 v4];
}

id sub_100005F78()
{

  return sub_100005EE8(0, 0, 0);
}