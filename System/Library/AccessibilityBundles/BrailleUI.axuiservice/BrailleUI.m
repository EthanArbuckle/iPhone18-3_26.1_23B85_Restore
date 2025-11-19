uint64_t sub_18B0()
{
  v0 = sub_50D4();
  sub_4FA0(v0, BRUILog);
  sub_1990(v0, BRUILog);
  return sub_50C4();
}

uint64_t BRUILog.unsafeMutableAddressor()
{
  if (qword_C7B8 != -1)
  {
    swift_once();
  }

  v0 = sub_50D4();

  return sub_1990(v0, BRUILog);
}

uint64_t sub_1990(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

Swift::Void __swiftcall AXBrailleUI_RootViewController.viewDidLoad()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AXBrailleUI_RootViewController(0);
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor:v3];
  }

  else
  {
    __break(1u);
  }
}

void sub_1A8C(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for AXBrailleUI_RootViewController(0);
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor:v4];
  }

  else
  {
    __break(1u);
  }
}

uint64_t AXBrailleUI_RootViewController.__allocating_init(rootView:)(uint64_t a1)
{
  v3 = sub_50B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_50F4();
  (*(v4 + 8))(a1, v3);
  return v9;
}

uint64_t AXBrailleUI_RootViewController.init(rootView:)(uint64_t a1)
{
  v2 = sub_50B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  (*(v3 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = sub_50F4();
  (*(v3 + 8))(a1, v2);
  return v6;
}

void *AXBrailleUI_RootViewController.__allocating_init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_50B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v2);
  (*(v5 + 16))(v8, a2, v4);
  v10 = sub_50E4();
  v11 = *(v5 + 8);
  v12 = v10;
  v11(a2, v4);
  if (v10)
  {
  }

  return v10;
}

void *AXBrailleUI_RootViewController.init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_50B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  (*(v4 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v7 = sub_50E4();
  v8 = *(v4 + 8);
  v9 = v7;
  v8(a2, v3);
  if (v7)
  {
  }

  return v7;
}

id AXBrailleUI_RootViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id AXBrailleUI_RootViewController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AXBrailleUI_RootViewController(0);
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2024(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for AXBrailleUI_RootViewController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", v4);

  if (v5)
  {
  }

  return v5;
}

id AXBrailleUI_RootViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXBrailleUI_RootViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_20D8()
{
  result = [objc_allocWithZone(type metadata accessor for BrailleUI_UIController(0)) init];
  static BrailleUI_UIController.shared = result;
  return result;
}

id BrailleUI_UIController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *BrailleUI_UIController.shared.unsafeMutableAddressor()
{
  if (qword_C7C0 != -1)
  {
    swift_once();
  }

  return &static BrailleUI_UIController.shared;
}

id static BrailleUI_UIController.shared.getter()
{
  if (qword_C7C0 != -1)
  {
    swift_once();
  }

  v1 = static BrailleUI_UIController.shared;

  return v1;
}

void *BrailleUI_UIController.mainDisplayViewController.getter()
{
  v1 = OBJC_IVAR___BrailleUI_UIController_mainDisplayViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void BrailleUI_UIController.mainDisplayViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___BrailleUI_UIController_mainDisplayViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2318()
{
  v0[2] = sub_5184();
  v0[3] = sub_5174();
  v0[4] = sub_5174();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_23D0;

  return sub_46F4(0);
}

uint64_t sub_23D0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_5164();

  return _swift_task_switch(sub_250C, v5, v4);
}

uint64_t sub_250C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v5 = sub_5164();

  return _swift_task_switch(sub_2590, v5, v4);
}

uint64_t sub_2590()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_4164(&qword_C5F0, &qword_5810) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_4F28(a3, v26 - v10, &qword_C5F0, &qword_5810);
  v12 = sub_51A4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_4DD0(v11, &qword_C5F0, &qword_5810);
  }

  else
  {
    sub_5194();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_5164();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_5144() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_4DD0(a3, &qword_C5F0, &qword_5810);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_4DD0(a3, &qword_C5F0, &qword_5810);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_28F0(uint64_t a1)
{
  v2 = sub_5084();
  v3 = *(v2 - 8);
  v67 = v2;
  v68 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_5134();
  v76 = v7;
  sub_51D4();
  if (!*(a1 + 16) || (v8 = sub_3A54(v77), (v9 & 1) == 0))
  {
    sub_4E74(v77);
LABEL_46:
    v78 = sub_5134();
    v79 = v55;
    sub_51D4();
    if (*(a1 + 16) && (v56 = sub_3A54(v77), (v57 & 1) != 0))
    {
      sub_4D20(*(a1 + 56) + 32 * v56, &v78);
      sub_4E74(v77);
      swift_dynamicCast();
    }

    else
    {
      sub_4E74(v77);
    }

    v78 = sub_5134();
    v79 = v58;
    sub_51D4();
    if (*(a1 + 16) && (v59 = sub_3A54(v77), (v60 & 1) != 0))
    {
      sub_4D20(*(a1 + 56) + 32 * v59, &v78);
      sub_4E74(v77);
      swift_dynamicCast();
    }

    else
    {
      sub_4E74(v77);
    }

    sub_5094();
    sub_5044();

    sub_5094();
    sub_5034();

    sub_5094();
    sub_5054();
  }

  sub_4D20(*(a1 + 56) + 32 * v8, &v78);
  sub_4E74(v77);
  sub_4164(&qword_C730, &qword_58D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_46;
  }

  v10 = v75;
  v11 = *(v75 + 16);
  if (!v11)
  {
LABEL_44:

    goto LABEL_46;
  }

  v66 = kAXBrailleUIBrailleKey;
  v65 = kAXBrailleUIBrailleSelectionLocationKey;
  v64 = kAXBrailleUIBrailleSelectionLengthKey;
  v61[4] = kAXBrailleUICaptionKey;
  v61[3] = kAXBrailleUIMathMLKey;
  v61[2] = v68 + 32;
  v12 = &_swiftEmptyArrayStorage;
  v13 = 32;
  v63 = v6;
  v62 = v75;
  while (1)
  {
    v14 = *(v10 + v13);
    v15 = sub_5134();
    v17 = v16;
    if (*(v14 + 16))
    {
      v18 = v15;

      v19 = sub_39DC(v18, v17);
      v21 = v20;

      if (v21)
      {
        sub_4D20(*(v14 + 56) + 32 * v19, v77);
        if (swift_dynamicCast())
        {
          v22 = v79;
          v73 = v78;
          goto LABEL_12;
        }
      }
    }

    else
    {
    }

    v73 = 0;
    v22 = 0xE000000000000000;
LABEL_12:
    v72 = v22;
    v23 = sub_5134();
    v25 = *(v14 + 16);
    v74 = v13;
    if (v25)
    {
      v26 = sub_39DC(v23, v24);
      v28 = v27;

      if (v28)
      {
        sub_4D20(*(v14 + 56) + 32 * v26, v77);
        if (swift_dynamicCast())
        {
          v29 = v78;
          goto LABEL_18;
        }
      }
    }

    else
    {
    }

    v29 = sub_5014();
LABEL_18:
    v30 = sub_5134();
    if (*(v14 + 16))
    {
      v32 = sub_39DC(v30, v31);
      v34 = v33;

      if (v34)
      {
        sub_4D20(*(v14 + 56) + 32 * v32, v77);
        if (swift_dynamicCast())
        {
          v35 = v78;
          goto LABEL_24;
        }
      }
    }

    else
    {
    }

    v35 = 0;
LABEL_24:
    result = sub_5014();
    if (v29 == result)
    {
      v37 = 0;
      goto LABEL_29;
    }

    if (__OFADD__(v29, v35))
    {
      break;
    }

    if (v29 + v35 < v29)
    {
      goto LABEL_57;
    }

    v37 = v29;
LABEL_29:
    v69 = v37;
    v70 = v11;
    v38 = sub_5134();
    v40 = *(v14 + 16);
    v71 = v12;
    if (v40)
    {
      v41 = sub_39DC(v38, v39);
      v43 = v42;

      if (v43)
      {
        sub_4D20(*(v14 + 56) + 32 * v41, v77);
        swift_dynamicCast();
      }
    }

    else
    {
    }

    v44 = sub_5134();
    if (*(v14 + 16))
    {
      v46 = a1;
      v47 = sub_39DC(v44, v45);
      v49 = v48;

      if (v49)
      {
        sub_4D20(*(v14 + 56) + 32 * v47, v77);

        swift_dynamicCast();
      }

      else
      {
      }

      a1 = v46;
    }

    else
    {
    }

    v50 = v63;
    sub_5074();
    v12 = v71;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_3C18(0, v12[2] + 1, 1, v12);
    }

    v10 = v62;
    v51 = v70;
    v52 = v74;
    v54 = v12[2];
    v53 = v12[3];
    if (v54 >= v53 >> 1)
    {
      v12 = sub_3C18(v53 > 1, v54 + 1, 1, v12);
    }

    v12[2] = v54 + 1;
    (*(v68 + 32))(v12 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v54, v50, v67);
    v13 = v52 + 8;
    v11 = v51 - 1;
    if (!v11)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

Swift::Void __swiftcall BrailleUI_UIController.connectionWillBeInterruptedForClient(withIdentifier:)(Swift::String withIdentifier)
{
  v2 = (*(*(sub_4164(&qword_C5F0, &qword_5810) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v9 - v3;
  v5 = sub_51A4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_5184();
  v6 = v1;
  v7 = sub_5174();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  sub_25F0(0, 0, v4, &unk_5820, v8);
}

uint64_t sub_3360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_5184();
  *(v4 + 48) = sub_5174();
  v6 = sub_5164();

  return _swift_task_switch(sub_33F8, v6, v5);
}

id sub_33F8()
{
  v1 = v0[6];

  result = [objc_opt_self() sharedDisplayManager];
  if (result)
  {
    v3 = result;
    v4 = v0[5];
    v5 = OBJC_IVAR___BrailleUI_UIController_mainDisplayViewController;
    swift_beginAccess();
    [v3 removeContentViewController:*(v4 + v5) withUserInteractionEnabled:0 forService:v4];

    v6 = v0[1];

    return v6();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_361C(uint64_t a1, char a2)
{
  **(*(*sub_4E30((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}

id BrailleUI_UIController.init()()
{
  ObjectType = swift_getObjectType();
  _s9BrailleUI0aB13_UIControllerC13brailleUIView33_6F8689ADE33571FDFE65109765AA1F6FLL28AccessibilitySharedUISupport0A12UIVisualViewVvpfi_0();
  *&v0[OBJC_IVAR___BrailleUI_UIController_mainDisplayViewController] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

id BrailleUI_UIController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_37EC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_38E4;

  return v7(a1);
}

uint64_t sub_38E4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_39DC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_5214();
  sub_5154();
  v6 = sub_5224();

  return sub_3A98(a1, a2, v6);
}

unint64_t sub_3A54(uint64_t a1)
{
  v2 = v1;
  v4 = sub_51B4(*(v2 + 40));

  return sub_3B50(a1, v4);
}

unint64_t sub_3A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_5204())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_3B50(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_4ECC(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_51C4();
      sub_4E74(v8);
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

size_t sub_3C18(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_4164(&qword_C738, &qword_58E0);
  v10 = *(sub_5084() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_5084() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_3DF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_4164(&qword_C740, &qword_58E8);
    v3 = sub_51E4();
    v4 = a1 + 32;

    while (1)
    {
      sub_4F28(v4, v13, &qword_C748, &qword_58F0);
      result = sub_3A54(v13);
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
      result = sub_4F90(&v15, (v3[7] + 32 * result));
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

id sub_3F2C(uint64_t a1, uint64_t a2)
{
  v5 = (*(*(sub_4164(&qword_C5F0, &qword_5810) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v15 - v6;
  if (a2 <= 2)
  {
    if (a2 != 1)
    {
      if (a2 == 2 && a1)
      {
        sub_28F0(a1);
      }

      return sub_3DF0(&_swiftEmptyArrayStorage);
    }

    v11 = sub_51A4();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    sub_5184();
    v12 = v2;
    v13 = sub_5174();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = v12;
    sub_25F0(0, 0, v7, &unk_58B8, v14);
LABEL_14:

    return sub_3DF0(&_swiftEmptyArrayStorage);
  }

  if (a2 != 3)
  {
    if (a2 != 4 && a2 != 5)
    {
      return sub_3DF0(&_swiftEmptyArrayStorage);
    }

    sub_5094();
    sub_5064();
    goto LABEL_14;
  }

  result = [objc_opt_self() sharedDisplayManager];
  if (result)
  {
    v9 = result;
    v10 = OBJC_IVAR___BrailleUI_UIController_mainDisplayViewController;
    swift_beginAccess();
    [v9 removeContentViewController:*&v2[v10] withUserInteractionEnabled:0 forService:v2];

    return sub_3DF0(&_swiftEmptyArrayStorage);
  }

  __break(1u);
  return result;
}

uint64_t sub_4164(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_41B0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_5010;

  return sub_3360(v3, v4, v5, v2);
}

uint64_t sub_42B4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_42EC()
{
  result = sub_50B4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_4384()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_43BC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_5010;

  return sub_37EC(a1, v5);
}

uint64_t sub_4474(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_452C;

  return sub_37EC(a1, v5);
}

uint64_t sub_452C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_4620()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_4660()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_452C;

  return sub_2318();
}

uint64_t sub_46F4(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = sub_50B4();
  v2[31] = v3;
  v4 = *(v3 - 8);
  v2[32] = v4;
  v5 = *(v4 + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  sub_5184();
  v2[35] = sub_5174();
  v7 = sub_5164();
  v2[36] = v7;
  v2[37] = v6;

  return _swift_task_switch(sub_47F4, v7, v6);
}

uint64_t sub_47F4()
{
  *(v0 + 144) = 0u;
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v0 + 240);
  *(v0 + 160) = 0u;
  v6 = *(v4 + 16);
  v6(v2, v5 + OBJC_IVAR___BrailleUI_UIController_brailleUIView, v3);
  objc_allocWithZone(type metadata accessor for AXBrailleUI_RootViewController(0));
  v6(v1, v2, v3);
  v7 = sub_50F4();
  *(v0 + 304) = v7;
  (*(v4 + 8))(v2, v3);
  v8 = [objc_opt_self() sharedDisplayManager];
  *(v0 + 312) = v8;
  if (v8)
  {
    v9 = v8;
    v21 = v7;
    v10 = sub_5124();
    *(v0 + 320) = v10;
    sub_4F28(v0 + 144, v0 + 176, &qword_C720, &qword_58C8);
    v11 = *(v0 + 200);
    if (v11)
    {
      v12 = sub_4E30((v0 + 176), *(v0 + 200));
      v13 = *(v11 - 8);
      v14 = *(v13 + 64) + 15;
      v15 = swift_task_alloc();
      (*(v13 + 16))(v15, v12, v11);
      v16 = sub_51F4();
      (*(v13 + 8))(v15, v11);

      sub_4D84((v0 + 176));
    }

    else
    {
      v16 = 0;
    }

    *(v0 + 328) = v16;
    v17 = *(v0 + 232);
    v18 = *(v0 + 240);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 336;
    *(v0 + 24) = sub_4B1C;
    v19 = swift_continuation_init();
    *(v0 + 136) = sub_4164(&qword_C728, &qword_58D0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_361C;
    *(v0 + 104) = &unk_8558;
    *(v0 + 112) = v19;
    [v9 addContentViewController:v21 withUserInteractionEnabled:0 forService:v18 forSceneClientIdentifier:v10 context:0 userInterfaceStyle:2 forWindowScene:v17 spatialConfiguration:v16 completion:v0 + 80];
    v8 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v8);
}

uint64_t sub_4B1C()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v3 = *v0;

  return _swift_task_switch(sub_4C24, v2, v1);
}

uint64_t sub_4C24()
{
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[33];
  v8 = v0[30];

  sub_4DD0((v0 + 18), &qword_C720, &qword_58C8);

  swift_unknownObjectRelease();
  v9 = OBJC_IVAR___BrailleUI_UIController_mainDisplayViewController;
  swift_beginAccess();
  v10 = *(v8 + v9);
  *(v8 + v9) = v4;

  v11 = v0[1];

  return v11();
}

uint64_t sub_4D20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_4D84(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_4DD0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_4164(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_4E30(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_4F28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_4164(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_4F90(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *sub_4FA0(uint64_t a1, uint64_t *a2)
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