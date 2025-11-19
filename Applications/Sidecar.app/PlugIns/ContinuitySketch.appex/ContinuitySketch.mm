id sub_100001308()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1000033CC();

  v2 = [v0 initWithTitle:v1];

  return v2;
}

void sub_1000013D8()
{
  v1 = type metadata accessor for SketchViewController();
  v39.receiver = v0;
  v39.super_class = v1;
  objc_msgSendSuper2(&v39, "viewDidLoad");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = *&v0[OBJC_IVAR___SketchViewController__navigationItem];
    sub_100002A28(v0);
    if (v5)
    {
      v6 = sub_1000033CC();
    }

    else
    {
      v6 = 0;
    }

    [v4 setTitle:v6];

    *(&v38 + 1) = v1;
    *&v37 = v0;
    v7 = objc_allocWithZone(UIBarButtonItem);
    v8 = v0;
    v9 = sub_100002768(1, &v37, "cancel:");
    v10 = *&v8[OBJC_IVAR___SketchViewController_cancelButton];
    *&v8[OBJC_IVAR___SketchViewController_cancelButton] = v9;
    v11 = v9;

    *(&v38 + 1) = v1;
    *&v37 = v8;
    v12 = objc_allocWithZone(UIBarButtonItem);
    v13 = v8;
    v14 = sub_100002768(0, &v37, "done:");
    v15 = *&v13[OBJC_IVAR___SketchViewController_doneButton];
    *&v13[OBJC_IVAR___SketchViewController_doneButton] = v14;
    v16 = v14;

    v37 = 0u;
    v38 = 0u;
    v17 = objc_allocWithZone(UIBarButtonItem);
    v18 = sub_100002768(6, &v37, 0);
    [v18 setWidth:40.0];
    sub_1000029E0(&qword_10000CA30, &unk_100003AC0);
    sub_100002BE8();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100003A50;
    *(v19 + 32) = v11;
    v36 = v11;
    sub_100002A8C(v19, v4, &selRef_setLeftBarButtonItems_);
    sub_100002BE8();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100003A50;
    *(v20 + 32) = v16;
    v21 = v16;
    sub_100002A8C(v20, v4, &selRef_setRightBarButtonItems_);
    v22 = *&v13[OBJC_IVAR___SketchViewController_canvas];
    [v22 setDelegate:v13];
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v3 addSubview:v22];
    v23 = objc_opt_self();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100003A60;
    v25 = [v22 leftAnchor];
    v26 = [v3 leftAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];

    *(v24 + 32) = v27;
    v28 = [v22 topAnchor];
    v29 = sub_100002BF4([v3 topAnchor]);

    *(v24 + 40) = v29;
    v30 = [v3 rightAnchor];
    v31 = sub_100002BF4([v22 rightAnchor]);

    *(v24 + 48) = v31;
    v32 = [v3 bottomAnchor];
    v33 = [v22 bottomAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];

    *(v24 + 56) = v34;
    sub_100002B18(0, &qword_10000CA38, NSLayoutConstraint_ptr);
    isa = sub_1000033FC().super.isa;

    [v23 activateConstraints:isa];

    [v3 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000018A0(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SketchViewController();
  objc_msgSendSuper2(&v8, "viewDidAppear:", a1 & 1);
  v3 = OBJC_IVAR___SketchViewController_picker;
  if (!*&v1[OBJC_IVAR___SketchViewController_picker])
  {
    v4 = [objc_allocWithZone(PKToolPicker) init];
    v5 = *&v1[OBJC_IVAR___SketchViewController_canvas];
    [v4 addObserver:v5];
    [v4 setVisible:1 forFirstResponder:v5];
    v6 = *&v1[v3];
    *&v1[v3] = v4;
    v7 = v4;

    [v5 becomeFirstResponder];
  }
}

void sub_1000019D0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong completeRequest:1];
  }
}

void sub_100001A4C()
{
  v1 = sub_1000033BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong request];
    if (v9)
    {
      v10 = v9;
      v11 = *(v0 + OBJC_IVAR___SketchViewController_canvas);
      v12 = sub_100002544(v11);
      sub_1000033AC();

      v32.origin.x = sub_10000258C(v11);
      x = v32.origin.x;
      y = v32.origin.y;
      width = v32.size.width;
      height = v32.size.height;
      if (CGRectIsEmpty(v32))
      {
        [v10 cancel];
      }

      else
      {
        v19 = sub_1000025F8(v11);
        v20 = sub_10000335C();
        v22 = v21;

        v29 = [objc_allocWithZone(PKImageRenderer) initWithSize:width scale:{height, 1.0}];
        isa = sub_10000339C().super.isa;
        sub_100002BE8();
        v24 = swift_allocObject();
        v24[2] = v20;
        v24[3] = v22;
        v24[4] = v10;
        aBlock[4] = sub_1000026EC;
        aBlock[5] = v24;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10000202C;
        aBlock[3] = &unk_100008338;
        v25 = _Block_copy(aBlock);
        sub_100002710(v20, v22);
        v26 = v10;

        v27 = v29;
        [v29 renderDrawing:isa clippedToStrokeSpaceRect:v25 scale:x completion:{y, width, height, 1.0}];
        _Block_release(v25);

        sub_100002694(v20, v22);
      }

      (*(v2 + 8))(v6, v1);
      return;
    }
  }

  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v29 = v17;
    [v17 completeRequest:0];
    v18 = v29;
  }
}

void sub_100001D74(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = sub_10000338C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = &_swiftEmptyArrayStorage;
  if (a1)
  {
    v14 = a1;
    v15 = UIImagePNGRepresentation(v14);
    if (v15)
    {
      v16 = v15;
      v23 = a4;
      v17 = sub_10000335C();
      v19 = v18;

      sub_100002710(v17, v19);
      sub_10000337C();
      sub_10000336C();
      (*(v9 + 8))(v13, v8);
      v20 = objc_allocWithZone(SidecarItem);
      sub_1000028C0(v17, v19);
      sub_1000033EC();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10000340C();
      }

      sub_10000341C();

      sub_100002694(v17, v19);
      a4 = v23;
    }

    else
    {
    }
  }

  sub_1000033DC();
  objc_allocWithZone(SidecarItem);
  sub_100002710(a2, a3);
  v21 = sub_1000028C0(a2, a3);
  sub_1000033EC();
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10000340C();
  }

  sub_10000341C();
  sub_100002B18(0, &qword_10000CA18, SidecarItem_ptr);
  isa = sub_1000033FC().super.isa;

  [a4 sendItems:isa];
}

void sub_10000202C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1000020B0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_10000342C();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_100002978(v9);
}

id sub_10000212C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR___SketchViewController__undoManager;
  *&v4[v7] = [objc_allocWithZone(NSUndoManager) init];
  v8 = OBJC_IVAR___SketchViewController__navigationItem;
  sub_100002B18(0, &qword_10000CA20, UINavigationItem_ptr);
  *&v4[v8] = sub_100001308();
  *&v4[OBJC_IVAR___SketchViewController_cancelButton] = 0;
  *&v4[OBJC_IVAR___SketchViewController_doneButton] = 0;
  *&v4[OBJC_IVAR___SketchViewController_fixedSpace] = 0;
  v9 = OBJC_IVAR___SketchViewController_canvas;
  *&v4[v9] = [objc_allocWithZone(PKCanvasView) init];
  *&v4[OBJC_IVAR___SketchViewController_picker] = 0;
  if (a2)
  {
    v10 = sub_1000033CC();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v4;
  v13.super_class = type metadata accessor for SketchViewController();
  v11 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", v10, a3);

  return v11;
}

id sub_1000022E8(void *a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR___SketchViewController__undoManager;
  *&v2[v4] = [objc_allocWithZone(NSUndoManager) init];
  v5 = OBJC_IVAR___SketchViewController__navigationItem;
  sub_100002B18(0, &qword_10000CA20, UINavigationItem_ptr);
  *&v2[v5] = sub_100001308();
  *&v2[OBJC_IVAR___SketchViewController_cancelButton] = 0;
  *&v2[OBJC_IVAR___SketchViewController_doneButton] = 0;
  *&v2[OBJC_IVAR___SketchViewController_fixedSpace] = 0;
  v6 = OBJC_IVAR___SketchViewController_canvas;
  *&v2[v6] = [objc_allocWithZone(PKCanvasView) init];
  *&v2[OBJC_IVAR___SketchViewController_picker] = 0;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for SketchViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_100002440()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SketchViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100002544(void *a1)
{
  v1 = a1;
  v2 = [v1 drawing];

  return v2;
}

double sub_10000258C(void *a1)
{
  v1 = a1;
  v2 = [v1 drawing];
  [v2 bounds];
  v4 = v3;

  return v4;
}

id sub_1000025F8(void *a1)
{
  v1 = a1;
  v2 = [v1 drawing];
  v3 = [v2 dataRepresentation];

  return v3;
}

uint64_t sub_100002658()
{
  sub_100002694(*(v0 + 16), *(v0 + 24));

  sub_100002BE8();

  return _swift_deallocObject();
}

uint64_t sub_100002694(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000026F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002710(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_100002768(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2[3];
  if (v6)
  {
    v8 = sub_100002B58(a2, a2[3]);
    v9 = *(v6 - 8);
    v10 = *(v9 + 64);
    __chkstk_darwin(v8, v8);
    v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12);
    v13 = sub_10000343C();
    (*(v9 + 8))(v12, v6);
    sub_100002B9C(a2);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v3 initWithBarButtonSystemItem:a1 target:v13 action:a3];
  swift_unknownObjectRelease();
  return v14;
}

id sub_1000028C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_10000334C().super.isa;
    sub_100002964(a1, a2);
  }

  v6 = sub_1000033CC();

  v7 = [v2 initWithData:isa type:v6];

  return v7;
}

uint64_t sub_100002964(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100002694(a1, a2);
  }

  return a1;
}

uint64_t sub_100002978(uint64_t a1)
{
  v2 = sub_1000029E0(&qword_10000CA28, &qword_100003AB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000029E0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002A28(void *a1)
{
  v1 = [a1 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1000033DC();

  return v3;
}

void sub_100002A8C(uint64_t a1, void *a2, SEL *a3)
{
  sub_100002B18(0, &unk_10000CA40, UIBarButtonItem_ptr);
  isa = sub_1000033FC().super.isa;

  [a2 *a3];
}

uint64_t sub_100002B18(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void *sub_100002B58(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100002B9C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

id sub_100002BF4(uint64_t a1)
{
  v4 = *(v2 + 1216);

  return [v1 v4];
}

void sub_100002C1C()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for SketchRootController();
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor:v3];

    v4 = *&v0[OBJC_IVAR___SketchRootController__navigationController];
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v0 addChildViewController:v4];
      [v2 addSubview:v6];
      v7 = objc_opt_self();
      sub_1000029E0(&qword_10000CA30, &unk_100003AC0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_100003A60;
      v9 = [v6 leftAnchor];
      v10 = [v2 leftAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];

      *(v8 + 32) = v11;
      v12 = [v6 rightAnchor];
      v13 = sub_10000330C([v2 rightAnchor]);

      *(v8 + 40) = v13;
      v14 = [v6 topAnchor];
      v15 = sub_10000330C([v2 topAnchor]);

      *(v8 + 48) = v15;
      v16 = [v6 bottomAnchor];
      v17 = sub_10000330C([v2 bottomAnchor]);

      *(v8 + 56) = v17;
      sub_1000032C8();
      isa = sub_1000033FC().super.isa;

      [v7 activateConstraints:isa];

      v19 = *&v0[OBJC_IVAR___SketchRootController_sketchController];
      swift_unknownObjectWeakAssign();
      [v4 pushViewController:v19 animated:0];
      [v4 didMoveToParentViewController:v0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_100002FA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR___SketchRootController__navigationController;
  v8 = objc_allocWithZone(UINavigationController);
  *&v3[v7] = sub_10000332C();
  v9 = OBJC_IVAR___SketchRootController_sketchController;
  type metadata accessor for SketchViewController();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a2)
  {
    v10 = sub_1000033CC();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v4;
  v13.super_class = type metadata accessor for SketchRootController();
  v11 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", v10, a3);

  return v11;
}

id sub_1000030DC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___SketchRootController__navigationController;
  v5 = objc_allocWithZone(UINavigationController);
  *&v1[v4] = sub_10000332C();
  v6 = OBJC_IVAR___SketchRootController_sketchController;
  type metadata accessor for SketchViewController();
  *&v2[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9.receiver = v2;
  v9.super_class = type metadata accessor for SketchRootController();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_1000031B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SketchRootController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100003258(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1000033CC();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithNibName:v5 bundle:a3];

  return v6;
}

unint64_t sub_1000032C8()
{
  result = qword_10000CA38;
  if (!qword_10000CA38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000CA38);
  }

  return result;
}

id sub_10000330C(uint64_t a1)
{
  v4 = *(v2 + 1216);

  return [v1 v4];
}

id sub_10000332C()
{

  return sub_100003258(0, 0, 0);
}