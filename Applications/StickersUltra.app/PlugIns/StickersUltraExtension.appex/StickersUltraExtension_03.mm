void sub_100056A58()
{
  v1 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeController);
  if (v1)
  {
    sub_10007C680();
    if (swift_dynamicCastClass())
    {
      v2 = v1;
      sub_10007C630();
    }
  }
}

void sub_100056B00(uint64_t a1, SEL *a2, SEL *a3)
{
  if (a1 == 1)
  {
    if (!*(v3 + OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeController))
    {
      return;
    }

    a2 = a3;
    goto LABEL_7;
  }

  if (!a1)
  {
    if (!*(v3 + OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeController))
    {
      return;
    }

LABEL_7:
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (v5)
    {
      v6 = v5;
      if ([v5 respondsToSelector:*a2])
      {
        [v6 *a2];
      }
    }

    return;
  }

  if (qword_1000B6150 != -1)
  {
    swift_once();
  }

  v7 = sub_10007C780();
  sub_10000AE78(v7, qword_1000B6158);
  oslog = sub_10007C760();
  v8 = sub_10007DA10();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v8, "Should never transition to anything besides compact/expanded", v9, 2u);
  }
}

uint64_t sub_100056C8C(void *a1, char a2)
{
  v3 = v2;
  if (qword_1000B6150 != -1)
  {
    swift_once();
  }

  v6 = sub_10007C780();
  sub_10000AE78(v6, qword_1000B6158);
  v7 = a1;
  v8 = sub_10007C760();
  v9 = sub_10007D9F0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&aBlock = v11;
    *v10 = 136315138;
    v12 = [v7 debugDescription];
    v13 = sub_10007D7D0();
    v15 = v14;

    v16 = sub_10000A660(v13, v15, &aBlock);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Adding child controller %s", v10, 0xCu);
    sub_10000B5CC(v11);
  }

  [v3 addChildViewController:v7];
  result = [v7 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_32;
  }

  v18 = result;
  result = [v3 view];
  if (!result)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v19 = result;
  [result bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  [v18 setFrame:{v21, v23, v25, v27}];
  if (a2)
  {
    result = [v7 view];
    if (!result)
    {
LABEL_44:
      __break(1u);
      return result;
    }

    v28 = result;
    [result setAlpha:0.0];
  }

  result = [v3 view];
  if (!result)
  {
    goto LABEL_33;
  }

  v29 = result;
  result = [v7 view];
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v30 = result;
  [v29 addSubview:result];

  [v7 didMoveToParentViewController:v3];
  result = [v7 view];
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v31 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  v69 = v7;
  sub_10000B77C(0, &qword_1000B3B10);
  v32 = v7;
  sub_100006D40(&qword_1000B3BB0);
  if (swift_dynamicCast())
  {
    sub_10000C9A4(&aBlock, *(&v66 + 1));
    v33 = sub_10007C510();
    v34 = sub_10000B5CC(&aBlock);
    v35 = 0.0;
    if (v33)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v67 = 0;
    aBlock = 0u;
    v66 = 0u;
    v34 = sub_1000589A4(&aBlock);
  }

  if ((*((swift_isaMask & *v3) + 0x118))(v34))
  {
    v35 = 120.0;
  }

  else
  {
    v35 = 70.0;
  }

LABEL_20:
  sub_100006D40(&qword_1000B2200);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_10008C950;
  result = [v32 view];
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v37 = result;
  v38 = [result topAnchor];

  result = [v3 view];
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v39 = result;
  v40 = [result topAnchor];

  v41 = [v38 constraintEqualToAnchor:v40 constant:v35];
  *(v36 + 32) = v41;
  result = [v32 view];
  if (!result)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v42 = result;
  v43 = [result bottomAnchor];

  result = [v3 view];
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v44 = result;
  v45 = [result bottomAnchor];

  v46 = [v43 constraintEqualToAnchor:v45];
  *(v36 + 40) = v46;
  result = [v32 view];
  if (!result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v47 = result;
  v48 = [result leadingAnchor];

  result = [v3 view];
  if (!result)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v49 = result;
  v50 = [result safeAreaLayoutGuide];

  v51 = [v50 leadingAnchor];
  v52 = [v48 constraintEqualToAnchor:v51];

  *(v36 + 48) = v52;
  result = [v32 view];
  if (!result)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v53 = result;
  v54 = [result trailingAnchor];

  result = [v3 view];
  if (!result)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v55 = result;
  v56 = objc_opt_self();
  v57 = [v55 safeAreaLayoutGuide];

  v58 = [v57 trailingAnchor];
  v59 = [v54 constraintEqualToAnchor:v58];

  *(v36 + 56) = v59;
  sub_10000B77C(0, &qword_1000B2210);
  isa = sub_10007D8C0().super.isa;

  [v56 activateConstraints:isa];

  if (a2)
  {
    v61 = objc_opt_self();
    v62 = swift_allocObject();
    *(v62 + 16) = v32;
    v67 = sub_100058C24;
    v68 = v62;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v66 = sub_100008F80;
    *(&v66 + 1) = &unk_1000A5568;
    v63 = _Block_copy(&aBlock);
    v64 = v32;

    [v61 animateWithDuration:v63 animations:0.2];
    _Block_release(v63);
  }

  return 1;
}

void sub_1000574BC(void *a1, char a2)
{
  if (a1)
  {
    v3 = qword_1000B6150;
    v4 = a1;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_10007C780();
    sub_10000AE78(v5, qword_1000B6158);
    v25 = v4;
    v6 = sub_10007C760();
    v7 = sub_10007DA00();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      aBlock = v9;
      *v8 = 136315138;
      v10 = [v25 debugDescription];
      v11 = sub_10007D7D0();
      v13 = v12;

      v14 = sub_10000A660(v11, v13, &aBlock);

      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "Removing old %s", v8, 0xCu);
      sub_10000B5CC(v9);
    }

    if (a2)
    {
      v15 = objc_opt_self();
      v16 = swift_allocObject();
      *(v16 + 16) = v25;
      v30 = sub_100058C44;
      v31 = v16;
      aBlock = _NSConcreteStackBlock;
      v27 = 1107296256;
      v28 = sub_100008F80;
      v29 = &unk_1000A55B8;
      v17 = _Block_copy(&aBlock);
      v18 = v25;

      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v20 + 24) = v18;
      v30 = sub_100058D34;
      v31 = v20;
      aBlock = _NSConcreteStackBlock;
      v27 = 1107296256;
      v28 = sub_1000136CC;
      v29 = &unk_1000A5630;
      v21 = _Block_copy(&aBlock);
      v22 = v18;

      [v15 animateWithDuration:v17 animations:v21 completion:0.2];

      _Block_release(v21);
      _Block_release(v17);
    }

    else
    {
      [v25 willMoveToParentViewController:0];
      v23 = [v25 view];
      if (v23)
      {
        v24 = v23;
        [v23 removeFromSuperview];

        [v25 removeFromParentViewController];
        [v25 didMoveToParentViewController:0];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_10005788C(uint64_t a1@<X8>)
{
  v3 = (*((swift_isaMask & *v1) + 0x150))();
  if (v3)
  {
    v4 = v3;
    sub_10007C590();
    v5 = v10;

    v7 = v9;
    v6 = v8;
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

void sub_100057964(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = (*((swift_isaMask & *v4) + 0x150))();
  if (v9)
  {
    oslog = v9;
    a4(a1, a2, a3);
  }

  else
  {
    if (qword_1000B6150 != -1)
    {
      swift_once();
    }

    v10 = sub_10007C780();
    sub_10000AE78(v10, qword_1000B6158);
    v11 = v4;
    oslog = sub_10007C760();
    v12 = sub_10007DA10();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136315138;
      v15 = *(v11 + OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeControllerType);
      if (v15 <= 2)
      {
        if (*(v11 + OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeControllerType))
        {
          if (v15 == 1)
          {
            v16 = 0xE600000000000000;
            v17 = 0x746E65636572;
          }

          else
          {
            v16 = 0xEE00746E65636552;
            v17 = 0x6472616F6279656BLL;
          }
        }

        else
        {
          v16 = 0xEB00000000746E65;
          v17 = 0x746E6F4372657375;
        }
      }

      else if (*(v11 + OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeControllerType) > 4u)
      {
        if (v15 == 5)
        {
          v16 = 0xEA00000000007974;
          v17 = 0x7261506472696874;
        }

        else
        {
          v16 = 0x80000001000894B0;
          v17 = 0xD000000000000012;
        }
      }

      else if (v15 == 3)
      {
        v16 = 0xE600000000000000;
        v17 = 0x696A6F6D656DLL;
      }

      else
      {
        v16 = 0xE500000000000000;
        v17 = 0x696A6F6D65;
      }

      v18 = sub_10000A660(v17, v16, &v20);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, oslog, v12, "Was going to add a sticker, but we're not in the right controller. %s", v13, 0xCu);
      sub_10000B5CC(v14);
    }
  }
}

void sub_100057C1C()
{
  v1 = (*((swift_isaMask & *v0) + 0x150))();
  if (v1)
  {
    oslog = v1;
    sub_10007C5B0();
  }

  else
  {
    if (qword_1000B6150 != -1)
    {
      swift_once();
    }

    v2 = sub_10007C780();
    sub_10000AE78(v2, qword_1000B6158);
    v3 = v0;
    oslog = sub_10007C760();
    v4 = sub_10007DA10();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136315138;
      v7 = *(v3 + OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeControllerType);
      if (v7 <= 2)
      {
        if (*(v3 + OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeControllerType))
        {
          if (v7 == 1)
          {
            v8 = 0xE600000000000000;
            v9 = 0x746E65636572;
          }

          else
          {
            v8 = 0xEE00746E65636552;
            v9 = 0x6472616F6279656BLL;
          }
        }

        else
        {
          v8 = 0xEB00000000746E65;
          v9 = 0x746E6F4372657375;
        }
      }

      else if (*(v3 + OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeControllerType) > 4u)
      {
        if (v7 == 5)
        {
          v8 = 0xEA00000000007974;
          v9 = 0x7261506472696874;
        }

        else
        {
          v8 = 0x80000001000894B0;
          v9 = 0xD000000000000012;
        }
      }

      else if (v7 == 3)
      {
        v8 = 0xE600000000000000;
        v9 = 0x696A6F6D656DLL;
      }

      else
      {
        v8 = 0xE500000000000000;
        v9 = 0x696A6F6D65;
      }

      v10 = sub_10000A660(v9, v8, &v12);

      *(v5 + 4) = v10;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Was going to add a sticker, but we're not in the right controller. %s", v5, 0xCu);
      sub_10000B5CC(v6);
    }
  }
}

void sub_100057EFC()
{
  v1 = (*((swift_isaMask & *v0) + 0x150))();
  if (v1)
  {
    oslog = v1;
    sub_10007C5F0();
  }

  else
  {
    if (qword_1000B6150 != -1)
    {
      swift_once();
    }

    v2 = sub_10007C780();
    sub_10000AE78(v2, qword_1000B6158);
    v3 = v0;
    oslog = sub_10007C760();
    v4 = sub_10007DA10();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136315138;
      v7 = *(v3 + OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeControllerType);
      if (v7 <= 2)
      {
        if (*(v3 + OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeControllerType))
        {
          if (v7 == 1)
          {
            v8 = 0xE600000000000000;
            v9 = 0x746E65636572;
          }

          else
          {
            v8 = 0xEE00746E65636552;
            v9 = 0x6472616F6279656BLL;
          }
        }

        else
        {
          v8 = 0xEB00000000746E65;
          v9 = 0x746E6F4372657375;
        }
      }

      else if (*(v3 + OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeControllerType) > 4u)
      {
        if (v7 == 5)
        {
          v8 = 0xEA00000000007974;
          v9 = 0x7261506472696874;
        }

        else
        {
          v8 = 0x80000001000894B0;
          v9 = 0xD000000000000012;
        }
      }

      else if (v7 == 3)
      {
        v8 = 0xE600000000000000;
        v9 = 0x696A6F6D656DLL;
      }

      else
      {
        v8 = 0xE500000000000000;
        v9 = 0x696A6F6D65;
      }

      v10 = sub_10000A660(v9, v8, &v12);

      *(v5 + 4) = v10;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Was going to add a sticker, but we're not in the right controller. %s", v5, 0xCu);
      sub_10000B5CC(v6);
    }
  }
}

void sub_1000581B4()
{
  v1 = (*((swift_isaMask & *v0) + 0x150))();
  if (v1)
  {
    v2 = v1;
    sub_10007C580();
  }
}

void sub_100058268()
{
  v1 = (*((swift_isaMask & *v0) + 0x150))();
  if (v1)
  {
    v2 = v1;
    sub_10007C5E0();
  }
}

void sub_1000582FC()
{
  v1 = (*((swift_isaMask & *v0) + 0x150))();
  if (v1)
  {
    v2 = v1;
    sub_10007C600();
  }
}

void sub_1000583A4()
{
  v1 = (*((swift_isaMask & *v0) + 0x150))();
  if (v1)
  {
    v2 = v1;
    sub_10007C610();
  }
}

id sub_100058474(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_delegate] = 0;
  v5 = &v3[OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController__puppetIdentifier];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v3[OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController__thirdPartyAppIdentifier];
  *v6 = 0;
  v6[1] = 0;
  v3[OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeControllerType] = 6;
  *&v3[OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeController] = 0;
  v3[OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_isPresentedWithNavigationTitleBar] = 0;
  if (a2)
  {
    v7 = sub_10007D7A0();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for StickerProvidingViewController();
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_1000585A8(void *a1)
{
  *&v1[OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_delegate] = 0;
  v3 = &v1[OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController__puppetIdentifier];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v1[OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController__thirdPartyAppIdentifier];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeControllerType] = 6;
  *&v1[OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeController] = 0;
  v1[OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_isPresentedWithNavigationTitleBar] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for StickerProvidingViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_10005868C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerProvidingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void (*sub_1000588AC(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((swift_isaMask & **v1) + 0x128))();
  return sub_1000347E0;
}

uint64_t sub_100058958(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000A53B8;
  v6._object = a2;
  v4 = sub_10007DE00(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000589A4(uint64_t a1)
{
  v2 = sub_100006D40(&qword_1000B3AF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100058A0C()
{
  result = qword_1000B3B08;
  if (!qword_1000B3B08)
  {
    sub_10007D540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3B08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StickerProvidingViewController.ControllerType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StickerProvidingViewController.ControllerType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100058BEC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100058C2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100058C4C(double a1)
{
  v3 = [*(v1 + 16) view];
  if (v3)
  {
    v4 = v3;
    [v3 setAlpha:a1];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100058CBC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100058CF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100058D34()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    [v1 willMoveToParentViewController:0];
    result = [v1 view];
    if (result)
    {
      v3 = result;
      [result removeFromSuperview];

      [v1 removeFromParentViewController];
      return [v1 didMoveToParentViewController:0];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_100058DF4()
{
  v1 = *(v0 + 16);
  if ([v1 respondsToSelector:"viewWillTransitionToCompactPresentation"])
  {
    [v1 viewWillTransitionToCompactPresentation];
  }

  result = [v1 respondsToSelector:"viewDidTransitionToCompactPresentation"];
  if (result)
  {

    return [v1 viewDidTransitionToCompactPresentation];
  }

  return result;
}

uint64_t sub_100058EA4()
{
  v0 = sub_10007C780();
  sub_10000B274(v0, qword_1000B6378);
  sub_10000AE78(v0, qword_1000B6378);
  return sub_10007C770();
}

uint64_t sub_100058F74(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_100058FE0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10000702C;
}

id sub_100059090()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_livePhoto;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1000590E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_livePhoto;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10005919C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_localIdentifier);

  return v1;
}

void *sub_1000591E8()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_livePhotoSticker;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100059234(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_livePhotoSticker;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1000592EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10007C420();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100059358@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_livePhotoStickerRecentUUID;
  swift_beginAccess();
  return sub_10003260C(v1 + v3, a1, &unk_1000B3BF0);
}

uint64_t sub_1000593C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_livePhotoStickerRecentUUID;
  swift_beginAccess();
  sub_100059420(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100059420(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006D40(&unk_1000B3BF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_1000594F0()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_asset;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10005953C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_asset;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1000595F4()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_assetTrack;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100059640(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_assetTrack;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_1000596F8@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  return result;
}

__n128 sub_100059710@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_assetTrackPreferredTransform;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

__n128 sub_100059770(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_assetTrackPreferredTransform;
  swift_beginAccess();
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v3 + 48) = *(a1 + 48);
  return result;
}

void *sub_100059930()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_assetTrackFormatDescription;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10005997C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_assetTrackFormatDescription;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100059A40()
{
  v1 = v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_assetTrackFormatDescriptionDimensions;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_100059A8C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_assetTrackFormatDescriptionDimensions;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_100059BD0(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_100059C24(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = v4 + *a4;
  result = swift_beginAccess();
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

id sub_100059D28(SEL *a1, uint64_t a2, double a3)
{
  v5 = [objc_opt_self() *a1];
  v6 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:a2];
  v7 = [v5 resolvedColorWithTraitCollection:v6];

  v8 = [v7 colorWithAlphaComponent:a3];
  return v8;
}

void *sub_100059E08()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_lightAppearanceComposition;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100059E54(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_lightAppearanceComposition;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_100059F0C()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_darkAppearanceComposition;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100059F58(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_darkAppearanceComposition;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *sub_10005A06C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v52 = a4;
  v53 = a2;
  v54 = a3;
  v51 = a1;
  v6 = sub_100006D40(&unk_1000B2960);
  __chkstk_darwin(v6 - 8);
  v8 = &v51 - v7;
  *&v4[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_previewCache] = 0;
  *&v4[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_livePhotoSticker] = 0;
  v9 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_livePhotoStickerRecentUUID;
  v10 = sub_10007C420();
  (*(*(v10 - 8) + 56))(&v5[v9], 1, 1, v10);
  *&v5[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_asset] = 0;
  *&v5[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_assetTrack] = 0;
  v11 = &v5[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_assetTrackPreferredTransform];
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *v11 = 0u;
  v11[48] = 1;
  v12 = &v5[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_assetTrackNaturalSize];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = &v5[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_assetTrackNaturalSizeTransformed];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  *&v5[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_assetTrackFormatDescription] = 0;
  v14 = &v5[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_assetTrackFormatDescriptionDimensions];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v5[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_assetTrackEncodedSize];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = &v5[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_assetTrackEncodedSizeTransformed];
  *v16 = 0;
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_lightAppearanceDimmingColor;
  v18 = objc_opt_self();
  v19 = [v18 secondarySystemBackgroundColor];
  v20 = objc_opt_self();
  v21 = [v20 traitCollectionWithUserInterfaceStyle:1];
  v22 = [v19 resolvedColorWithTraitCollection:v21];

  v23 = [v22 colorWithAlphaComponent:0.8];
  *&v5[v17] = v23;
  v24 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_darkAppearanceDimmingColor;
  v25 = [v18 systemBackgroundColor];
  v26 = [v20 traitCollectionWithUserInterfaceStyle:2];
  v27 = [v25 resolvedColorWithTraitCollection:v26];

  v28 = [v27 colorWithAlphaComponent:0.7];
  *&v5[v24] = v28;
  *&v5[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_lightAppearanceComposition] = 0;
  *&v5[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_darkAppearanceComposition] = 0;
  *&v5[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___livePhotoView] = 0;
  v29 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_activityIndicator;
  v30 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v29] = v30;
  *&v5[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___cancelButtonItem] = 0;
  *&v5[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___addStickerButtonItem] = 0;
  *&v5[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___tapGestureRecognizer] = 0;
  v31 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_util;
  *&v5[v31] = [objc_allocWithZone(StickerPhotosUtil) init];
  *&v5[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___imageAnalysisInteraction] = 0;
  *&v5[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___imageAnalyzer] = 0;
  sub_1000720E8();
  swift_unknownObjectWeakInit();
  v32 = v51;
  v33 = v52;
  *&v5[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_image] = v51;
  *&v5[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_livePhoto] = v33;
  v34 = &v5[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_localIdentifier];
  v35 = v54;
  *v34 = v53;
  *(v34 + 1) = v35;
  v36 = objc_allocWithZone(sub_10007C4D0());
  v37 = v32;
  v38 = v33;
  v39 = [v36 init];
  v40 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_liveButton;
  *&v5[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_liveButton] = v39;
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  v41 = *&v5[v40];
  sub_10007C4C0();

  v42 = type metadata accessor for StickerLivePhotoConfirmationController(0);
  v55.receiver = v5;
  v55.super_class = v42;
  v43 = objc_msgSendSuper2(&v55, "initWithNibName:bundle:", 0, 0);
  v44 = *&v43[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_liveButton];
  v45 = v43;
  [v44 addTarget:v45 action:"handleLiveButton" forControlEvents:64];
  sub_10005E724();
  v46 = sub_10007D990();
  (*(*(v46 - 8) + 56))(v8, 1, 1, v46);
  sub_10007D960();
  v47 = v45;
  v48 = sub_10007D950();
  v49 = swift_allocObject();
  v49[2] = v48;
  v49[3] = &protocol witness table for MainActor;
  v49[4] = v47;
  sub_100009514(0, 0, v8, &unk_10008E4F8, v49);

  sub_10000B77C(0, &qword_1000B3C08);
  sub_10007DAF0();
  sub_10007DA80();

  swift_unknownObjectRelease();

  return v47;
}

void sub_10005A664()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  if (v2 == 1)
  {
    v3 = (*((swift_isaMask & *v0) + 0x298))();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = (*((swift_isaMask & *v0) + 0x2B0))();
    if (!v3)
    {
      return;
    }
  }

  v4 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_util);
  v5 = sub_10005CDCC();
  [v4 videoPreviewTimeRangeForImageAnalysisInteraction:v5];

  v6 = sub_10005B334();
  v7 = *((swift_isaMask & *v6) + 0x100);
  v8 = v3;
  v7(v3, v9, 0.25);
}

uint64_t sub_10005A800(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701869940;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x4972656B63697473;
    }

    else
    {
      v4 = 0x5372656B63697473;
    }

    if (v3 == 2)
    {
      v5 = 0xEA00000000007344;
    }

    else
    {
      v5 = 0xEC00000065726F63;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x73736572676F7270;
    }

    else
    {
      v4 = 1701869940;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x4972656B63697473;
  v8 = 0xEA00000000007344;
  if (a2 != 2)
  {
    v7 = 0x5372656B63697473;
    v8 = 0xEC00000065726F63;
  }

  if (a2)
  {
    v2 = 0x73736572676F7270;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10007DE50();
  }

  return v11 & 1;
}

uint64_t sub_10005A99C()
{
  v1 = v0;
  v2 = sub_10007C420();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StickerLivePhotoConfirmationController.AddStickerError(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100062E68(v1, v8, type metadata accessor for StickerLivePhotoConfirmationController.AddStickerError);
  v9 = sub_100006D40(&qword_1000B3C10);
  v10 = (*(*(v9 - 8) + 48))(v8, 2, v9);
  if (v10)
  {
    if (v10 == 1)
    {
      return 0xD000000000000017;
    }

    else
    {
      return 0x20676E697373694DLL;
    }
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_10007DCB0(28);

    v13 = 0xD00000000000001ALL;
    v14 = 0x8000000100089630;
    sub_100062E20(&unk_1000B3C18, &type metadata accessor for UUID);
    v15._countAndFlagsBits = sub_10007DE30();
    sub_10007D840(v15);

    v12 = v13;
    (*(v3 + 8))(v5, v2);
    return v12;
  }
}

uint64_t sub_10005AC30(unsigned __int8 a1)
{
  v1 = 1701869940;
  v2 = 0x4972656B63697473;
  if (a1 != 2)
  {
    v2 = 0x5372656B63697473;
  }

  if (a1)
  {
    v1 = 0x73736572676F7270;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_10005ACBC()
{
  sub_10007DF00();
  sub_10007D820();

  return sub_10007DF10();
}

uint64_t sub_10005AD84()
{
  sub_10007D820();
}

Swift::Int sub_10005AE38()
{
  sub_10007DF00();
  sub_10007D820();

  return sub_10007DF10();
}

uint64_t sub_10005AEFC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100062588(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10005AF2C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701869940;
  v4 = 0xEA00000000007344;
  v5 = 0x4972656B63697473;
  if (*v1 != 2)
  {
    v5 = 0x5372656B63697473;
    v4 = 0xEC00000065726F63;
  }

  if (*v1)
  {
    v3 = 0x73736572676F7270;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10005AFB4(char a1)
{
  if (!a1)
  {
    return 0x6E69676562;
  }

  if (a1 == 1)
  {
    return 0x657461647075;
  }

  return 6581861;
}

uint64_t sub_10005AFFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x657461647075;
  if (v2 != 1)
  {
    v4 = 6581861;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E69676562;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x657461647075;
  if (*a2 != 1)
  {
    v8 = 6581861;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E69676562;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10007DE50();
  }

  return v11 & 1;
}

Swift::Int sub_10005B0E4()
{
  sub_10007DF00();
  sub_10007D820();

  return sub_10007DF10();
}

uint64_t sub_10005B178()
{
  sub_10007D820();
}

Swift::Int sub_10005B1F8()
{
  sub_10007DF00();
  sub_10007D820();

  return sub_10007DF10();
}

uint64_t sub_10005B288@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000625D4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10005B2B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x657461647075;
  if (v2 != 1)
  {
    v5 = 6581861;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E69676562;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void *sub_10005B334()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___livePhotoView;
  v2 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___livePhotoView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___livePhotoView);
  }

  else
  {
    type metadata accessor for LivePhotoView();
    v4 = *((swift_isaMask & *v0) + 0x160);
    v5 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_image);
    v6 = v0;
    v7 = v4();
    v8 = sub_10000FF50(v5, v7);
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = *(v0 + v1);
    *(v6 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

objc_class *sub_10005B424()
{
  v1 = v0;
  v2 = sub_10007DBD0();
  __chkstk_darwin(v2 - 8);
  v3 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___cancelButtonItem;
  v4 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___cancelButtonItem);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___cancelButtonItem);
  }

  else
  {
    if (sub_10007D240())
    {
      sub_10000B77C(0, &qword_1000B2208);
      sub_10000B77C(0, &qword_1000B22C8);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v11.value.super.super.isa = sub_10007DBB0();
      v11.is_nil = 0;
      v6.super.super.isa = sub_10007DA50(UIBarButtonSystemItemCancel, v11, v12).super.super.isa;
    }

    else
    {
      sub_10000B77C(0, &qword_1000B22C0);
      sub_10007DBC0();
      sub_10000B77C(0, &qword_1000B22C8);
      sub_10007D7E0();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_10007DBB0();
      v7 = sub_10007DBE0();
      [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      v6.super.super.isa = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v7];
    }

    v8 = *(v1 + v3);
    *(v1 + v3) = v6;
    v5 = v6.super.super.isa;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

objc_class *sub_10005B6AC()
{
  v1 = v0;
  v2 = sub_10007DBD0();
  __chkstk_darwin(v2 - 8);
  v3 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___addStickerButtonItem;
  v4 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___addStickerButtonItem);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___addStickerButtonItem);
  }

  else
  {
    if (sub_10007D240())
    {
      sub_10000B77C(0, &qword_1000B2208);
      sub_10000B77C(0, &qword_1000B22C8);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v12.value.super.super.isa = sub_10007DBB0();
      v12.is_nil = 0;
      v6.super.super.isa = sub_10007DA50(UIBarButtonSystemItemAdd, v12, v13).super.super.isa;
    }

    else
    {
      sub_10000B77C(0, &qword_1000B22C0);
      sub_10007DBC0();
      sub_10000B77C(0, &qword_1000B22C8);
      sub_10007D7E0();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_10007DBB0();
      v7 = sub_10007DBE0();
      [v7 setRole:1];
      v8 = v7;
      [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
      v6.super.super.isa = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v8];
    }

    v9 = *(v1 + v3);
    *(v1 + v3) = v6;
    v5 = v6.super.super.isa;

    v4 = 0;
  }

  v10 = v4;
  return v5;
}

id sub_10005B95C()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___tapGestureRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___tapGestureRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___tapGestureRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"didTapLivePhotoView:"];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_10005B9E0()
{
  v55.receiver = v0;
  v55.super_class = type metadata accessor for StickerLivePhotoConfirmationController(0);
  objc_msgSendSuper2(&v55, "loadView");
  v1 = [v0 navigationItem];
  v2 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:*&v0[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_liveButton]];
  [v1 setLeftBarButtonItem:v2];

  v3 = [v0 navigationItem];
  sub_10007D7E0();
  v4 = sub_10007D7A0();

  [v3 setTitle:v4];

  sub_100006D40(&qword_1000B2200);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10008C380;
  *(v5 + 32) = sub_10005B424();
  *(v5 + 40) = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:5 target:0 action:0];
  *(v5 + 48) = sub_10005B6AC();
  sub_10000B77C(0, &qword_1000B2208);
  isa = sub_10007D8C0().super.isa;

  [v0 setToolbarItems:isa];

  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [objc_opt_self() systemBackgroundColor];
  [v8 setBackgroundColor:v9];

  v10 = [v0 view];
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  v12 = sub_10005B334();
  [v11 addSubview:v12];

  v13 = [v0 view];
  if (!v13)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13;
  v15 = *&v0[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_activityIndicator];
  [v13 addSubview:v15];

  v16 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___livePhotoView;
  [*&v0[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___livePhotoView] setUserInteractionEnabled:1];
  v17 = *&v0[v16];
  v18 = sub_10005B95C();
  [v17 addGestureRecognizer:v18];

  v19 = *&v0[v16];
  v20 = sub_10005CDCC();
  [v19 addInteraction:v20];

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10008C390;
  v22 = [*&v0[v16] leftAnchor];
  v23 = [v0 view];
  if (!v23)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v24 = v23;
  v25 = [v23 leftAnchor];

  v26 = [v22 constraintEqualToAnchor:v25];
  *(v21 + 32) = v26;
  v27 = [*&v0[v16] rightAnchor];
  v28 = [v0 view];
  if (!v28)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v29 = v28;
  v30 = [v28 rightAnchor];

  v31 = [v27 constraintEqualToAnchor:v30];
  *(v21 + 40) = v31;
  v32 = [*&v0[v16] centerYAnchor];
  v33 = [v0 view];
  if (!v33)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v34 = v33;
  v35 = [v33 safeAreaLayoutGuide];

  v36 = [v35 centerYAnchor];
  v37 = [v32 constraintEqualToAnchor:v36];

  *(v21 + 48) = v37;
  v38 = [*&v0[v16] topAnchor];
  v39 = [v0 view];
  if (v39)
  {
    v40 = v39;
    v41 = objc_opt_self();
    v42 = [v40 safeAreaLayoutGuide];

    v43 = [v42 topAnchor];
    v44 = [v38 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v43 multiplier:1.0];

    *(v21 + 56) = v44;
    v45 = [v15 centerXAnchor];
    v46 = [*&v0[v16] centerXAnchor];
    v47 = [v45 constraintEqualToAnchor:v46];

    *(v21 + 64) = v47;
    v48 = [v15 centerYAnchor];
    v49 = [*&v0[v16] centerYAnchor];
    v50 = [v48 constraintEqualToAnchor:v49];

    *(v21 + 72) = v50;
    sub_10000B77C(0, &qword_1000B2210);
    v51 = sub_10007D8C0().super.isa;

    [v41 activateConstraints:v51];

    [*&v0[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___tapGestureRecognizer] setEnabled:0];
    [*&v0[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___addStickerButtonItem] setEnabled:0];
    v52 = *&v0[v16];
    v53 = *((swift_isaMask & *v52) + 0xE0);
    v54 = v52;
    v53(1);

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_10005C154(void *a1)
{
  v2 = v1;
  v4 = sub_10007C460();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10005B334();
  [a1 locationInView:v8];
  v10 = v9;
  v12 = v11;

  v13 = sub_10005CDCC();
  v14 = [v13 subjectIndexAtPoint:{v10, v12}];

  if (v14)
  {
    v15 = *(v2 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___imageAnalysisInteraction);
    [v14 integerValue];
    sub_10007C450();
    sub_10007C430(v16);
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    [v15 highlightSubjectAtIndexSet:v18 showCallout:0 showBurst:0 burstPoint:1 animated:{0.0, 0.0}];

    v19 = *(v2 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_previewCache);
    if (v19)
    {
      v20 = *(*v19 + 136);

      v20(v21);
    }
  }

  else
  {
    v22 = sub_10005CDCC();
    v23 = [*(v2 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___imageAnalysisInteraction) allSubjectIndexes];
    sub_10007C440();

    sub_10007C430(v24);
    v26 = v25;
    (*(v5 + 8))(v7, v4);
    [v22 highlightSubjectAtIndexSet:v26 showCallout:0 showBurst:0 burstPoint:1 animated:{0.0, 0.0}];

    v27 = *(v2 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_previewCache);
    if (v27)
    {
      v28 = *(*v27 + 136);

      v28(v29);
    }
  }
}

void sub_10005C478()
{
  v1 = v0;
  v2 = sub_10007C460();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10007C4A0();
  *v7 = !*v7;
  v6(v23, 0);
  v8 = sub_10005B95C();
  [v8 setEnabled:(sub_10007C4B0() & 1) == 0];

  if (sub_10007C4B0())
  {
    v9 = sub_10005CDCC();
    [v9 highlightSubjectAtIndexSet:0 showCallout:0 showBurst:0 burstPoint:1 animated:{0.0, 0.0}];

    v10 = *(v1 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_previewCache);
    if (v10)
    {
      v11 = *(*v10 + 136);

      v11(v12);
    }

    v13 = sub_10005B334();
    (*((swift_isaMask & *v13) + 0x110))();
  }

  else
  {
    v14 = sub_10005B334();
    (*((swift_isaMask & *v14) + 0x120))();

    v15 = sub_10005CDCC();
    v16 = [*(v1 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___imageAnalysisInteraction) allSubjectIndexes];
    sub_10007C440();

    sub_10007C430(v17);
    v19 = v18;
    (*(v3 + 8))(v5, v2);
    [v15 highlightSubjectAtIndexSet:v19 showCallout:0 showBurst:0 burstPoint:1 animated:{0.0, 0.0}];

    v20 = *(v1 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_previewCache);
    if (v20)
    {
      v21 = *(*v20 + 136);

      v21(v22);
    }
  }
}

uint64_t sub_10005C7D4(char a1)
{
  v2 = v1;
  v42 = sub_10007C420();
  v4 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_100006D40(&unk_1000B3BF0);
  v6 = *(v40 - 8);
  v7 = __chkstk_darwin(v40);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v37 - v10;
  v12 = type metadata accessor for StickerLivePhotoConfirmationController(0);
  v43.receiver = v2;
  v43.super_class = v12;
  objc_msgSendSuper2(&v43, "viewWillDisappear:", a1 & 1);
  v13 = [v2 presentedViewController];
  if (v13)
  {
    v14 = v13;
    sub_10007C850();
    v15 = swift_dynamicCastClass();

    if (v15)
    {
      [v2 dismissViewControllerAnimated:a1 & 1 completion:0];
      swift_unknownObjectWeakAssign();
    }
  }

  sub_100006D40(&qword_1000B3C28);
  v16 = *(v6 + 72);
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v38 = swift_allocObject();
  v18 = v38 + v17;
  v19 = (*((swift_isaMask & *v2) + 0x190))();
  if (v19)
  {
    v20 = v19;
    sub_10007D550();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = v42;
  v23 = (*(v4 + 56))(v18, v21, 1, v42);
  v24 = v22;
  (*((swift_isaMask & *v2) + 0x1A8))(v23);
  sub_10003260C(v18, v11, &unk_1000B3BF0);
  sub_1000629D4(v11, v9);
  v39 = v4;
  v25 = *(v4 + 48);
  v26 = (v4 + 32);
  if (v25(v9, 1, v22) == 1)
  {
    sub_10000B348(v9, &unk_1000B3BF0);
    v27 = _swiftEmptyArrayStorage;
  }

  else
  {
    v37 = *v26;
    v37(v41, v9, v22);
    v27 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1000623B0(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_1000623B0(v28 > 1, v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    v30 = &v27[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v29];
    v24 = v42;
    v37(v30, v41, v42);
  }

  sub_10003260C(v18 + v16, v11, &unk_1000B3BF0);
  sub_1000629D4(v11, v9);
  if (v25(v9, 1, v24) == 1)
  {
    sub_10000B348(v9, &unk_1000B3BF0);
  }

  else
  {
    v31 = v24;
    v32 = *v26;
    (*v26)(v41, v9, v31);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1000623B0(0, *(v27 + 2) + 1, 1, v27);
    }

    v33 = v39;
    v35 = *(v27 + 2);
    v34 = *(v27 + 3);
    if (v35 >= v34 >> 1)
    {
      v27 = sub_1000623B0(v34 > 1, v35 + 1, 1, v27);
    }

    *(v27 + 2) = v35 + 1;
    v32(&v27[((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v35], v41, v42);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_10007D720();
  static Sticker.removeStickers(_:)(v27);
}

id sub_10005CDCC()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___imageAnalysisInteraction;
  v2 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___imageAnalysisInteraction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___imageAnalysisInteraction);
  }

  else
  {
    v4 = [objc_allocWithZone(VKCImageAnalysisInteraction) init];
    [v4 setDelegate:v0];
    v5 = v4;
    [v5 setSubjectViewUserInteractionDisabled:1];
    v6 = sub_10005B334();
    [v6 addInteraction:v5];

    [*(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_util) setUsesLightDimmingViewInLightModeForImageAnalysisInteraction:v5];
    v7 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_10005CEB4()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___imageAnalyzer;
  v2 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___imageAnalyzer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___imageAnalyzer);
  }

  else
  {
    v4 = [objc_allocWithZone(VKCImageAnalyzer) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_10005CF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[47] = a4;
  v4[48] = sub_10007D960();
  v4[49] = sub_10007D950();
  v6 = sub_10007D940();
  v4[50] = v6;
  v4[51] = v5;

  return _swift_task_switch(sub_10005CFC4, v6, v5);
}

uint64_t sub_10005CFC4()
{
  v1 = v0[47];
  v2 = (*((swift_isaMask & *v1) + 0x160))();
  v3 = [v2 videoAsset];

  v4 = (*((swift_isaMask & *v1) + 0x1C8))(v3);
  v5 = (*((swift_isaMask & *v1) + 0x1C0))(v4);
  v0[52] = v5;
  if (v5)
  {
    v6 = v5;
    v0[2] = v0;
    v0[7] = v0 + 45;
    v0[3] = sub_10005D220;
    v7 = swift_continuation_init();
    v0[17] = sub_100006D40(&qword_1000B3D70);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10005E634;
    v0[13] = &unk_1000A5CE8;
    v0[14] = v7;
    [v6 loadTracksWithMediaType:AVMediaTypeVideo completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10005D220()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 424) = v2;
  v3 = *(v1 + 408);
  v4 = *(v1 + 400);
  if (v2)
  {
    v5 = sub_10005DF14;
  }

  else
  {
    v5 = sub_10005D350;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10005D350(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4[45];
  if (v5 >> 62)
  {
    v6 = sub_10007DDB0();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_8:

    v8 = 0;
    goto LABEL_9;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = sub_10007DCD0();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v6, a2, a3, a4);
    }

    v7 = *(v5 + 32);
  }

  v8 = v7;

LABEL_9:
  v9 = v4[47];
  v10 = (*((swift_isaMask & *v9) + 0x1E0))(v8);
  v11 = (*((swift_isaMask & *v9) + 0x1D8))(v10);
  v4[54] = v11;
  if (v11)
  {
    sub_100006D40(&qword_1000B3D78);
    v12 = sub_10007C6F0();
    v4[55] = v12;
    v13 = sub_10007D950();
    v4[56] = v13;
    v14 = swift_task_alloc();
    v4[57] = v14;
    *v14 = v4;
    v14[1] = sub_10005D588;
    a4 = &protocol witness table for MainActor;
    v6 = (v4 + 25);
    a2 = v12;
    a3 = v13;

    return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v6, a2, a3, a4);
  }

  v15 = v4[52];

  v16 = v4[1];

  return v16();
}

uint64_t sub_10005D588()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_10005E0C8;
  }

  else
  {

    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_10005D6AC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10005D6AC()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  *(v0 + 472) = v2;
  *(v0 + 480) = v3;
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  *(v0 + 488) = v4;
  *(v0 + 496) = v5;
  v6 = *(v0 + 232);
  v7 = *(v0 + 240);
  *(v0 + 504) = v6;
  *(v0 + 512) = v7;
  *(v0 + 144) = v2;
  *(v0 + 152) = v3;
  *(v0 + 160) = v4;
  *(v0 + 168) = v5;
  *(v0 + 176) = v6;
  *(v0 + 184) = v7;
  *(v0 + 192) = 0;
  (*((swift_isaMask & *v1) + 0x1F8))(v0 + 144);
  sub_100006D40(&qword_1000B3D80);
  v8 = sub_10007C6D0();
  *(v0 + 520) = v8;
  v9 = sub_10007D950();
  *(v0 + 528) = v9;
  v10 = swift_task_alloc();
  *(v0 + 536) = v10;
  *v10 = v0;
  v10[1] = sub_10005D814;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 344, v8, v9, &protocol witness table for MainActor);
}

uint64_t sub_10005D814()
{
  v2 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_10005E294;
  }

  else
  {

    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_10005D93C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10005D93C()
{
  v2 = *(v0 + 504);
  v1 = *(v0 + 512);
  v3 = *(v0 + 376);
  v4 = *(v0 + 344);
  v5 = *(v0 + 352);
  v12 = *(v0 + 472);
  v13 = *(v0 + 488);
  (*((swift_isaMask & *v3) + 0x210))(COERCE_CGFLOAT(*&v4), COERCE_CGFLOAT(*&v5), 0);
  *(v0 + 248) = v12;
  *(v0 + 264) = v13;
  *(v0 + 280) = v2;
  *(v0 + 288) = v1;
  v15.width = v4;
  v15.height = v5;
  v7 = CGSizeApplyAffineTransform(v15, (v0 + 248));
  v6.n128_f64[0] = v7.width;
  (*((swift_isaMask & *v3) + 0x228))(*&v7.width & 0x7FFFFFFFFFFFFFFFLL, *&v7.height & 0x7FFFFFFFFFFFFFFFLL, 0, v6);
  sub_100006D40(&qword_1000B3D88);
  v8 = sub_10007C6E0();
  *(v0 + 552) = v8;
  v9 = sub_10007D950();
  *(v0 + 560) = v9;
  v10 = swift_task_alloc();
  *(v0 + 568) = v10;
  *v10 = v0;
  v10[1] = sub_10005DB14;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 368, v8, v9, &protocol witness table for MainActor);
}

uint64_t sub_10005DB14()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  if (v0)
  {
    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_10005E464;
  }

  else
  {

    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_10005DC3C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10005DC3C()
{

  v1 = *(v0 + 368);
  if (v1 >> 62)
  {
    result = sub_10007DDB0();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v4 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_10007DCD0();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

LABEL_9:
  v5 = *(v0 + 376);
  v6 = (*((swift_isaMask & *v5) + 0x240))(v4);
  v7 = (*((swift_isaMask & *v5) + 0x238))(v6);
  if (v7)
  {
    v9 = *(v0 + 504);
    v8 = *(v0 + 512);
    v10 = *(v0 + 432);
    v11 = *(v0 + 416);
    v12 = *(v0 + 376);
    v18 = *(v0 + 488);
    v19 = *(v0 + 472);
    v13 = v7;
    Dimensions = CMVideoFormatDescriptionGetDimensions(v7);
    (*((swift_isaMask & *v12) + 0x258))(Dimensions, 0);
    (*((swift_isaMask & *v12) + 0x270))(Dimensions.width, (*&Dimensions >> 32), 0);
    *(v0 + 296) = v19;
    *(v0 + 312) = v18;
    *(v0 + 328) = v9;
    *(v0 + 336) = v8;
    v21.width = Dimensions.width;
    v21.height = (*&Dimensions >> 32);
    v16 = CGSizeApplyAffineTransform(v21, (v0 + 296));
    v15.n128_f64[0] = v16.width;
    (*((swift_isaMask & *v12) + 0x288))(*&v16.width & 0x7FFFFFFFFFFFFFFFLL, *&v16.height & 0x7FFFFFFFFFFFFFFFLL, 0, v15);
  }

  else
  {
    v10 = *(v0 + 432);
    v11 = *(v0 + 416);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10005DF14()
{
  v1 = *(v0 + 416);

  swift_willThrow();

  if (qword_1000B6370 != -1)
  {
    swift_once();
  }

  v2 = sub_10007C780();
  sub_10000AE78(v2, qword_1000B6378);
  swift_errorRetain();
  v3 = sub_10007C760();
  v4 = sub_10007DA10();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error retrieving asset properties: %@", v5, 0xCu);
    sub_10000B348(v6, &unk_1000B2D40);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10005E0C8()
{
  v1 = v0[54];
  v2 = v0[52];

  if (qword_1000B6370 != -1)
  {
    swift_once();
  }

  v3 = sub_10007C780();
  sub_10000AE78(v3, qword_1000B6378);
  swift_errorRetain();
  v4 = sub_10007C760();
  v5 = sub_10007DA10();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error retrieving asset properties: %@", v6, 0xCu);
    sub_10000B348(v7, &unk_1000B2D40);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_10005E294()
{
  v1 = v0[54];
  v2 = v0[52];

  if (qword_1000B6370 != -1)
  {
    swift_once();
  }

  v3 = sub_10007C780();
  sub_10000AE78(v3, qword_1000B6378);
  swift_errorRetain();
  v4 = sub_10007C760();
  v5 = sub_10007DA10();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error retrieving asset properties: %@", v6, 0xCu);
    sub_10000B348(v7, &unk_1000B2D40);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_10005E464()
{
  v1 = v0[54];
  v2 = v0[52];

  if (qword_1000B6370 != -1)
  {
    swift_once();
  }

  v3 = sub_10007C780();
  sub_10000AE78(v3, qword_1000B6378);
  swift_errorRetain();
  v4 = sub_10007C760();
  v5 = sub_10007DA10();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error retrieving asset properties: %@", v6, 0xCu);
    sub_10000B348(v7, &unk_1000B2D40);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_10005E634(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000C9A4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100006D40(&qword_1000B3030);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10000B77C(0, &qword_1000B3D90);
    **(*(v4 + 64) + 40) = sub_10007D8E0();

    return _swift_continuation_throwingResume(v4);
  }
}

void sub_10005E724()
{
  v1 = v0;
  v2 = sub_100006D40(&qword_1000B2130);
  __chkstk_darwin(v2 - 8);
  v4 = aBlock - v3;
  v5 = sub_10007C3B0();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = aBlock - v10;
  v12 = sub_10005CDCC();
  [v12 setAnalysis:0];

  v13 = [objc_opt_self() systemPhotoLibraryURL];
  sub_10007C390();

  sub_10007C370();
  v14 = *(v6 + 8);
  v14(v9, v5);
  sub_10007C3A0();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000B348(v4, &qword_1000B2130);
    if (qword_1000B6370 != -1)
    {
      swift_once();
    }

    v15 = sub_10007C780();
    sub_10000AE78(v15, qword_1000B6378);
    v16 = sub_10007C760();
    v17 = sub_10007DA10();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Cannot create Photo Library URL", v18, 2u);
    }
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    [*(v1 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_image) size];
    v20 = v19;
    v22 = v21;
    v23 = objc_allocWithZone(VKCImageAnalyzerRequest);
    v24 = sub_10007D7A0();
    sub_10007C380(v25);
    v27 = v26;
    v28 = [v23 initWithLocalIdentifier:v24 photoLibraryURL:v26 imageSize:32 requestType:{v20, v22}];

    v29 = sub_10005CEB4();
    if (v28)
    {
      v30 = v29;
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_100064760;
      aBlock[5] = v31;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100008FC4;
      aBlock[3] = &unk_1000A5D10;
      v32 = _Block_copy(aBlock);
      v33 = v28;

      [v30 processRequest:v33 progressHandler:0 completionHandler:v32];
      _Block_release(v32);

      v14(v11, v5);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10005EB80()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000B96C;

  return sub_10005CF28(v3, v4, v5, v2);
}

uint64_t sub_10005EC34(uint64_t a1)
{
  v2 = sub_10007D2F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007D320();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = sub_10005CDCC();
    [v12 setAnalysis:a1];

    v13 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___imageAnalysisInteraction;
    [*&v11[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___imageAnalysisInteraction] set_photosImageForRemoveBackground:*&v11[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_image]];
    [*&v11[v13] setActiveInteractionTypes:8];
    sub_10000B77C(0, &qword_1000B22E0);
    v14 = sub_10007DAC0();
    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    aBlock[4] = sub_1000647A0;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008F80;
    aBlock[3] = &unk_1000A5D60;
    v16 = _Block_copy(aBlock);
    v19 = v6;
    v17 = v16;
    v18 = v11;

    sub_10007D310();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100062E20(&qword_1000B2970, &type metadata accessor for DispatchWorkItemFlags);
    sub_100006D40(&unk_1000B22F0);
    sub_10000B894();
    sub_10007DC50();
    sub_10007DAD0();
    _Block_release(v17);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v19);
  }

  return result;
}

void sub_10005EF84()
{
  v1 = v0;
  v2 = sub_10007C460();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_util];
  v7 = sub_10005CDCC();
  v8 = [*&v0[OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___imageAnalysisInteraction] allSubjectIndexes];
  sub_10007C440();

  sub_10007C430(v9);
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  sub_10007C420();
  isa = sub_10007D8C0().super.isa;
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  aBlock[4] = sub_100062A44;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008740;
  aBlock[3] = &unk_1000A5808;
  v14 = _Block_copy(aBlock);
  v15 = v1;

  [v6 imageAnalysisInteraction:v7 createStickerRepresentationsAtIndexSet:v11 type:5 stickerIDs:isa progress:0 completion:v14];

  _Block_release(v14);
}

void sub_10005F188(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_10007C460();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v72 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007C420();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v71 = &v64 - v14;
  v15 = sub_100006D40(&unk_1000B3BF0);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v64 - v19;
  if (a1)
  {
    v66 = v13;
    v67 = v7;
    v68 = v6;
    v21 = *((swift_isaMask & *a3) + 0x198);
    v22 = a1;
    v21(a1);
    Sticker.companionRecentUUID()(v20);
    (*((swift_isaMask & *a3) + 0x1B0))(v20);
    sub_100006D40(&qword_1000B3D68);
    v23 = *(v10 + 72);
    v24 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10008CBC0;
    v69 = v22;
    v26 = sub_10007D550();
    (*((swift_isaMask & *a3) + 0x1A8))(v26);
    v27 = (*(v10 + 48))(v18, 1, v9);
    v70 = v9;
    if (v27 == 1)
    {
      v28 = sub_10000B348(v18, &unk_1000B3BF0);
    }

    else
    {
      v37 = v71;
      v65 = *(v10 + 32);
      v65(v71, v18, v9);
      v38 = v66;
      (*(v10 + 16))(v66, v37, v9);
      v40 = *(v25 + 16);
      v39 = *(v25 + 24);
      if (v40 >= v39 >> 1)
      {
        v25 = sub_1000623B0(v39 > 1, v40 + 1, 1, v25);
      }

      v41 = v70;
      (*(v10 + 8))(v71, v70);
      *(v25 + 16) = v40 + 1;
      v28 = (v65)(v25 + v24 + v40 * v23, v38, v41);
    }

    v42 = (*((swift_isaMask & *a3) + 0x148))(v28);
    v45 = v67;
    v44 = v68;
    if (v42)
    {
      v46 = v43;
      ObjectType = swift_getObjectType();
      v48 = sub_10005CDCC();
      (*(v46 + 16))(a3, v48, ObjectType, v46);

      swift_unknownObjectRelease();
    }

    v49 = *((swift_isaMask & *a3) + 0x3A0);

    v50 = v49(0x6E69676562, 0xE500000000000000, v25, 0.0, 1.0);
    (*((swift_isaMask & *a3) + 0x3C0))(v50, 0.0);

    v71 = *(a3 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_util);
    v51 = sub_10005CDCC();
    v52 = [*(a3 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___imageAnalysisInteraction) allSubjectIndexes];
    v53 = v72;
    sub_10007C440();

    sub_10007C430(v54);
    v56 = v55;
    (*(v45 + 8))(v53, v44);
    isa = sub_10007D8C0().super.isa;
    v58 = swift_allocObject();
    v58[2] = a3;
    v58[3] = v25;
    v58[4] = 0x3FF0000000000000;
    v77 = sub_100064420;
    v78 = v58;
    aBlock = _NSConcreteStackBlock;
    v74 = 1107296256;
    v75 = sub_10005FA64;
    v76 = &unk_1000A5C20;
    v59 = _Block_copy(&aBlock);
    v60 = a3;

    v61 = swift_allocObject();
    v61[2] = v60;
    v61[3] = v25;
    v61[4] = 0x3FF0000000000000;
    v77 = sub_100064548;
    v78 = v61;
    aBlock = _NSConcreteStackBlock;
    v74 = 1107296256;
    v75 = sub_100008740;
    v76 = &unk_1000A5C70;
    v62 = _Block_copy(&aBlock);
    v63 = v60;

    [v71 imageAnalysisInteraction:v51 createStickerRepresentationsAtIndexSet:v56 type:2 stickerIDs:isa progress:v59 completion:v62];

    _Block_release(v62);
    _Block_release(v59);
  }

  else if (a2)
  {
    swift_errorRetain();
    if (qword_1000B6370 != -1)
    {
      swift_once();
    }

    v29 = sub_10007C780();
    sub_10000AE78(v29, qword_1000B6378);
    swift_errorRetain();
    v30 = sub_10007C760();
    v31 = sub_10007DA10();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      aBlock = v33;
      *v32 = 136315138;
      swift_getErrorValue();
      v34 = sub_10007DEB0();
      v36 = sub_10000A660(v34, v35, &aBlock);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "Unable to save sticker to store: %s", v32, 0xCu);
      sub_10000B5CC(v33);
    }

    else
    {
    }
  }
}

uint64_t sub_10005FA64(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);
  sub_10007C420();
  v4 = sub_10007D8E0();

  v3(v4, a2);
}

unint64_t sub_10005FAE8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  sub_100006D40(&qword_1000B3C30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008CD50;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "stickerScore");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = a5;
  *(inited + 120) = &type metadata for Double;
  *(inited + 128) = 0x73736572676F7270;
  *(inited + 136) = 0xE800000000000000;
  v11 = a4;
  *(inited + 144) = v11;
  *(inited + 168) = &type metadata for Float;
  *(inited + 176) = 0x4972656B63697473;
  *(inited + 184) = 0xEA00000000007344;
  *(inited + 216) = sub_100006D40(&qword_1000B3C38);
  *(inited + 192) = a3;

  v12 = sub_10002D10C(inited);
  swift_setDeallocating();
  sub_100006D40(&qword_1000B29C0);
  swift_arrayDestroy();
  return v12;
}

void sub_10005FC6C()
{
  v1 = v0;
  v2 = sub_10007C460();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100006D40(&unk_1000B3BF0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v31 - v8;
  v10 = (*((swift_isaMask & *v0) + 0x190))(v7);
  if (v10)
  {
    v11 = v10;
    if (sub_10007C4B0())
    {
      (*((swift_isaMask & *v0) + 0x198))(0);
      v12 = sub_10007C420();
      (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
      (*((swift_isaMask & *v0) + 0x1B0))(v9);
      v13 = sub_10005B334();
      (*((swift_isaMask & *v13) + 0x118))();

      if ((*((swift_isaMask & *v1) + 0x148))())
      {
        v15 = v14;
        ObjectType = swift_getObjectType();
        (*(*(v15 + 8) + 24))(v1, &off_1000A5858, v11, 1, ObjectType);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      v21 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_util);
      v22 = sub_10005CDCC();
      v23 = [*(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___imageAnalysisInteraction) selectedSubjectIndexes];
      sub_10007C440();

      sub_10007C430(v24);
      v26 = v25;
      (*(v3 + 8))(v5, v2);
      sub_10007C420();
      isa = sub_10007D8C0().super.isa;
      v28 = swift_allocObject();
      *(v28 + 16) = v1;
      aBlock[4] = sub_100064040;
      aBlock[5] = v28;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100008740;
      aBlock[3] = &unk_1000A5B08;
      v29 = _Block_copy(aBlock);
      v30 = v1;

      [v21 imageAnalysisInteraction:v22 createStickerRepresentationsAtIndexSet:v26 type:5 stickerIDs:isa progress:0 completion:v29];

      _Block_release(v29);
    }
  }

  else
  {
    if (qword_1000B6370 != -1)
    {
      swift_once();
    }

    v17 = sub_10007C780();
    sub_10000AE78(v17, qword_1000B6378);
    v32 = sub_10007C760();
    v18 = sub_10007DA10();
    if (os_log_type_enabled(v32, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v32, v18, "We don't have a live photo sticker to confirm", v19, 2u);
    }

    v20 = v32;
  }
}

uint64_t sub_1000601B0()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:0 completion:0];
  }

  result = (*((swift_isaMask & *v0) + 0x148))();
  if (result)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(*(v5 + 8) + 8))(v0, &off_1000A5858, ObjectType);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000602A8(uint64_t a1)
{
  v2 = sub_10007C300();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007DB00();
  memset(v9, 0, sizeof(v9));
  sub_1000603E4(a1);
  sub_10007C2E0();
  v6 = [objc_opt_self() defaultCenter];
  isa = sub_10007C2C0().super.isa;
  [v6 postNotification:isa];

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1000603E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100006D40(&qword_1000B3D58);
    v2 = sub_10007DDE0();
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
    sub_10000B618(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10000FE98(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000FE98(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000FE98(v31, v32);
    result = sub_10007DC60(v2[5]);
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
    result = sub_10000FE98(v32, (v2[7] + 32 * v10));
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

uint64_t sub_1000606AC()
{
  v1 = sub_100006D40(&unk_1000B2960);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for StickerLivePhotoConfirmationController(0);
  v10.receiver = v0;
  v10.super_class = v4;
  objc_msgSendSuper2(&v10, "viewDidLoad");
  v5 = sub_10007D990();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_10007D960();
  v6 = v0;
  v7 = sub_10007D950();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  sub_100009514(0, 0, v3, &unk_10008E538, v8);
}

uint64_t sub_1000607F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for StickerNotAvailableTip(0);
  v4[4] = swift_task_alloc();
  sub_10007D960();
  v4[5] = sub_10007D950();
  v6 = sub_10007D940();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_1000608B8, v6, v5);
}

uint64_t sub_1000608B8()
{
  sub_10007C870();
  sub_100062E68(v0[2] + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_stickerNotAvailableTip, v0[4], type metadata accessor for StickerNotAvailableTip);
  v1 = swift_task_alloc();
  v0[8] = v1;
  v2 = sub_100062E20(&unk_1000B2220, type metadata accessor for StickerNotAvailableTip);
  *v1 = v0;
  v1[1] = sub_100009368;
  v3 = v0[3];

  return Tip.resetEligibility()(v3, v2);
}

id sub_100060B90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerLivePhotoConfirmationController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

double PHLivePhotoView.intrinsicContentSize.getter()
{
  v1 = [v0 livePhoto];
  if (!v1)
  {
    return 0.0;
  }

  v2 = v1;
  [v1 size];
  v4 = v3;

  return v4;
}

void sub_100060E94(void *a1)
{
  v2 = v1;
  if (qword_1000B6370 != -1)
  {
    swift_once();
  }

  v4 = sub_10007C780();
  sub_10000AE78(v4, qword_1000B6378);
  v5 = sub_10007C760();
  v6 = sub_10007D9F0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "did complete subject analysis", v7, 2u);
  }

  if ([a1 isSubjectHighlightAvailable])
  {
    v8 = sub_10005B6AC();
    [(objc_class *)v8 setEnabled:1];

    (*((swift_isaMask & *v2) + 0x398))();
    type metadata accessor for StickerUIPreviewCache();
    v9 = a1;
    *(v2 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_previewCache) = sub_10000DB8C(a1);

    return;
  }

  v10 = sub_10007C760();
  v11 = sub_10007DA10();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "no subject highlight available", v12, 2u);
  }

  v13 = sub_10005B6AC();
  v22 = [(objc_class *)v13 customView];

  if (!v22)
  {
LABEL_19:
    sub_10007C850();
    v23[3] = type metadata accessor for StickerNotAvailableTip(0);
    v23[4] = sub_100062E20(&unk_1000B2220, type metadata accessor for StickerNotAvailableTip);
    v19 = sub_10000AEB0(v23);
    sub_100062E68(v2 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_stickerNotAvailableTip, v19, type metadata accessor for StickerNotAvailableTip);
    v20 = *(v2 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___addStickerButtonItem);
    v21 = sub_10007C860();
    [v2 presentViewController:v21 animated:1 completion:0];
    swift_unknownObjectWeakAssign();

    return;
  }

  v14 = sub_10005B424();
  v15 = [(objc_class *)v14 customView];

  if (!v15)
  {

    goto LABEL_19;
  }

  type metadata accessor for PhotoConfirmationTipHostingController(0);
  sub_100006D40(&qword_1000B2200);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10008C3A0;
  *(v16 + 32) = v15;
  v17 = v15;
  v18 = sub_10006DA38(v22, v16);

  if (v18)
  {
    [v2 presentViewController:v18 animated:1 completion:0];
  }
}

void sub_100061334(void *a1, void *a2)
{
  v4 = [a1 sourceImage];
  [a1 compositionTime];
  v5 = sub_100061544(v4, *&v13.a, *&v13.b, *&v13.c, a2);
  [a1 renderSize];
  v7 = v6;
  [v4 extent];
  v8 = (v7 - CGRectGetWidth(v14)) * 0.5;
  [a1 renderSize];
  v10 = v9;
  [v4 extent];
  Height = CGRectGetHeight(v15);
  CGAffineTransformMakeTranslation(&v13, v8, (v10 - Height) * 0.5);
  v12 = [v5 imageByApplyingTransform:&v13];
  [a1 finishWithImage:v12 context:0];
}

void sub_10006147C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_100061544(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = a3;
  v11 = HIDWORD(a3);
  v12 = *(v5 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_util);
  v13 = sub_10005CDCC();
  *&v46.a = a2;
  *&v46.b = __PAIR64__(v11, v8);
  *&v46.c = a4;
  v14 = [v12 imageAnalysisInteraction:v13 videoPreviewSubjectMatteAtCompositionTime:&v46];

  if (!v14)
  {
    return [objc_allocWithZone(CIImage) init];
  }

  v15 = v14;
  [a1 extent];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [v15 extent];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v48.origin.x = v25;
  v48.origin.y = v27;
  v48.size.width = v29;
  v48.size.height = v31;
  if (!CGRectIsEmpty(v48))
  {
    v49.origin.x = v17;
    v49.origin.y = v19;
    v49.size.width = v21;
    v49.size.height = v23;
    rect = v23;
    v32 = v21;
    v33 = v19;
    v34 = v17;
    Width = CGRectGetWidth(v49);
    v50.origin.x = v25;
    v50.origin.y = v27;
    v50.size.width = v29;
    v50.size.height = v31;
    v36 = Width / CGRectGetWidth(v50);
    v51.origin.x = v34;
    v51.origin.y = v33;
    v51.size.width = v32;
    v51.size.height = rect;
    Height = CGRectGetHeight(v51);
    v52.origin.x = v25;
    v52.origin.y = v27;
    v52.size.width = v29;
    v52.size.height = v31;
    v38 = CGRectGetHeight(v52);
    CGAffineTransformMakeScale(&v46, v36, Height / v38);
    v39 = [v15 imageByApplyingTransform:&v46];

    v15 = v39;
  }

  (*((swift_isaMask & *v5) + 0x1F0))(&v46);
  if ((v47 & 1) == 0 && (vk_imageOrientationFromTransform() & 0xFFFFFFFFFFFFFFFCLL) == 4)
  {
    v40 = [v15 imageByApplyingCGOrientation:2];

    v15 = v40;
  }

  v41 = [a5 CGColor];
  v42 = [objc_allocWithZone(CIColor) initWithCGColor:v41];

  v43 = sub_100063694(v42, a1, v15);
  return v43;
}

id sub_100061830()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_previewCache);
  if (v2)
  {
    v3 = *(*v2 + 120);

    v3(&v44, v4);

    v5 = v44;
  }

  else
  {
    v5 = 0;
  }

  if (sub_10007C4B0())
  {
    *&v6 = COERCE_DOUBLE((*((swift_isaMask & *v1) + 0x280))());
    if ((v8 & 1) == 0)
    {
      v9 = v7;
      v10 = *&v6;
      v11 = sub_10005B334();
      v12 = COERCE_DOUBLE((*((swift_isaMask & *v11) + 0x128))());
      v14 = v13;
      v16 = v15;
      v18 = v17;

      if ((v18 & 1) == 0)
      {
        v19 = *(v1 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_util);
        v20 = sub_10005CDCC();
        v43.a = v12;
        v43.b = v14;
        v43.c = v16;
        v21 = [v19 imageAnalysisInteraction:v20 videoPreviewSubjectMatteAtCompositionTime:&v43];

        if (v21)
        {
          [v21 extent];
          x = v45.origin.x;
          y = v45.origin.y;
          width = v45.size.width;
          height = v45.size.height;
          v26 = v10 / CGRectGetWidth(v45);
          v46.origin.x = x;
          v46.origin.y = y;
          v46.size.width = width;
          v46.size.height = height;
          v27 = CGRectGetHeight(v46);
          CGAffineTransformMakeScale(&v43, v26, v9 / v27);
          v28 = [v21 imageByApplyingTransform:&v43];
          [v19 videoPreviewNormalizedCropRectForImageAnalysisInteraction:*(v1 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___imageAnalysisInteraction)];
          v29 = v47.origin.x;
          v30 = v47.origin.y;
          v31 = v47.size.width;
          v32 = v47.size.height;
          v48.origin.x = 0.0;
          v48.origin.y = 0.0;
          v48.size.width = 0.0;
          v48.size.height = 0.0;
          if (CGRectEqualToRect(v47, v48))
          {
            if (qword_1000B6370 != -1)
            {
              swift_once();
            }

            v33 = sub_10007C780();
            sub_10000AE78(v33, qword_1000B6378);
            v34 = sub_10007C760();
            v35 = sub_10007DA10();
            if (os_log_type_enabled(v34, v35))
            {
              v36 = swift_slowAlloc();
              *v36 = 0;
              _os_log_impl(&_mh_execute_header, v34, v35, "Could not get video preview normalized crop rect.", v36, 2u);
            }
          }

          else
          {
            v37 = [v28 imageByCroppingToRect:{v29 * v10, v30 * v9, v31 * v10, v32 * v9}];
            v38 = [objc_allocWithZone(CIContext) init];
            [v37 extent];
            v39 = [v38 createCGImage:v37 fromRect:?];
            if (v39)
            {
              v40 = v39;
              v41 = [objc_allocWithZone(UIImage) initWithCGImage:v39];

              return v41;
            }

            else
            {
            }
          }
        }
      }
    }
  }

  return v5;
}

uint64_t sub_100061C3C()
{
  v0 = sub_10005B334();
  v1 = (*((swift_isaMask & *v0) + 0x128))();

  return v1;
}

void sub_100061CD0(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_previewCache);
  v5 = 0.0;
  if (v4 && (v6 = *(*v4 + 120), v7 = , v6(v60, v7), , v60[0]))
  {
    Width = *&v60[3];
    v9 = *&v60[4];
    v5 = *&v60[1];
    v10 = *&v60[2];
    sub_10000B348(v60, &qword_1000B3C40);
    v11 = 0;
  }

  else
  {
    v11 = 1;
    v10 = 0.0;
    Width = 0.0;
    v9 = 0.0;
  }

  if (sub_10007C4B0())
  {
    v12 = sub_10005B334();
    (*((swift_isaMask & *v12) + 0x128))();
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      *&v15 = COERCE_DOUBLE((*((swift_isaMask & *v2) + 0x280))());
      if ((v17 & 1) == 0)
      {
        v18 = *&v15;
        v19 = v16;
        *&v20 = COERCE_DOUBLE((*((swift_isaMask & *v2) + 0x220))());
        if ((v22 & 1) == 0)
        {
          v23 = *&v20;
          v24 = v21;
          v25 = *(v2 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___livePhotoView);
          v26 = *((swift_isaMask & *v25) + 0x138);
          v27 = v25;
          v5 = v26();
          v10 = v28;
          Width = v29;
          v9 = v30;

          v31 = *(v2 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_util);
          v32 = sub_10005CDCC();
          [v31 videoPreviewNormalizedCropRectForImageAnalysisInteraction:v32];
          v34 = v33;
          v36 = v35;
          v38 = v37;
          v40 = v39;

          v75.origin.x = 0.0;
          v75.origin.y = 0.0;
          v75.size.width = 0.0;
          v75.size.height = 0.0;
          v62.origin.x = v34;
          v62.origin.y = v36;
          v62.size.width = v38;
          v62.size.height = v40;
          if (CGRectEqualToRect(v62, v75))
          {
            if (qword_1000B6370 != -1)
            {
              swift_once();
            }

            v41 = sub_10007C780();
            sub_10000AE78(v41, qword_1000B6378);
            v42 = sub_10007C760();
            v43 = sub_10007DA10();
            if (os_log_type_enabled(v42, v43))
            {
              v44 = swift_slowAlloc();
              *v44 = 0;
              _os_log_impl(&_mh_execute_header, v42, v43, "Could not get video preview normalized crop rect.", v44, 2u);
            }

            v11 = 0;
          }

          else
          {
            v57 = v34;
            v63.origin.x = v5;
            v63.origin.y = v10;
            v63.size.width = Width;
            v63.size.height = v9;
            v45 = CGRectGetWidth(v63) / v23;
            v64.origin.x = v5;
            v64.origin.y = v10;
            v64.size.width = Width;
            v64.size.height = v9;
            Height = CGRectGetHeight(v64);
            CGAffineTransformMakeScale(&v59, v45, Height / v24);
            v61.width = v18;
            v61.height = v19;
            v47 = CGSizeApplyAffineTransform(v61, &v59);
            v65.origin.y = v36;
            v65.origin.x = v57;
            v65.size.width = v38;
            v65.size.height = v40;
            MidY = CGRectGetMidY(v65);
            v66.origin.x = 0.0;
            v66.origin.y = 0.0;
            v66.size.width = 1.0;
            v66.size.height = 1.0;
            v48 = CGRectGetMidY(v66);
            v11 = 0;
            if (v47.width != 0.0 && v19 != 0.0)
            {
              size_8 = v40 * v47.height;
              v56 = v47.height * (v36 - (MidY - v48 + MidY - v48));
              v49 = v57 * v47.width;
              v67.origin.x = v5;
              v67.origin.y = v10;
              v67.size.width = Width;
              v67.size.height = v9;
              size = (CGRectGetWidth(v67) - v47.width) * 0.5;
              v68.origin.x = v5;
              v68.origin.y = v10;
              v68.size.width = Width;
              v68.size.height = v9;
              v58 = (CGRectGetHeight(v68) - v47.height) * 0.5;
              v69.origin.x = v5;
              v69.origin.y = v10;
              v69.size.width = Width;
              v69.size.height = v9;
              MinX = CGRectGetMinX(v69);
              v70.origin.x = v49;
              v70.origin.y = v56;
              v70.size.width = v38 * v47.width;
              v70.size.height = size_8;
              v51 = size + MinX + CGRectGetMinX(v70);
              v71.origin.x = v5;
              v71.origin.y = v10;
              v71.size.width = Width;
              v71.size.height = v9;
              MinY = CGRectGetMinY(v71);
              v72.origin.x = v49;
              v72.origin.y = v56;
              v72.size.width = v38 * v47.width;
              v72.size.height = size_8;
              v10 = v58 + MinY + CGRectGetMinY(v72);
              v73.origin.x = v49;
              v73.origin.y = v56;
              v73.size.width = v38 * v47.width;
              v73.size.height = size_8;
              Width = CGRectGetWidth(v73);
              v74.origin.x = v49;
              v74.origin.y = v56;
              v74.size.width = v38 * v47.width;
              v74.size.height = size_8;
              v9 = CGRectGetHeight(v74);
              v11 = 0;
              v5 = v51;
            }
          }
        }
      }
    }
  }

  *a1 = v5;
  *(a1 + 8) = v10;
  *(a1 + 16) = Width;
  *(a1 + 24) = v9;
  *(a1 + 32) = v11;
}

double sub_100062238(double a1, double a2, double a3, double a4)
{
  CGRectGetMidY(*&a1);
  v6.origin.x = 0.0;
  v6.origin.y = 0.0;
  v6.size.width = 1.0;
  v6.size.height = 1.0;
  CGRectGetMidY(v6);
  return a1;
}

double sub_1000622AC@<D0>(uint64_t a1@<X8>)
{
  sub_100061CD0(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

CGFloat sub_100062310(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v14.origin.x = a5;
  v14.origin.y = a6;
  v14.size.width = a7;
  v14.size.height = a8;
  CGRectGetMidY(v14);
  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  CGRectGetMidY(v15);
  return a5;
}

size_t sub_1000623B0(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100006D40(&qword_1000B3D68);
  v10 = *(sub_10007C420() - 8);
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
  v15 = *(sub_10007C420() - 8);
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

uint64_t sub_100062588(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000A56A8;
  v6._object = a2;
  v4 = sub_10007DE00(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000625D4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000A5728;
  v6._object = a2;
  v4 = sub_10007DE00(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

void sub_100062620()
{
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_previewCache) = 0;
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_livePhotoSticker) = 0;
  v1 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_livePhotoStickerRecentUUID;
  v2 = sub_10007C420();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_asset) = 0;
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_assetTrack) = 0;
  v3 = v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_assetTrackPreferredTransform;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *v3 = 0u;
  *(v3 + 48) = 1;
  v4 = v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_assetTrackNaturalSize;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  v5 = v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_assetTrackNaturalSizeTransformed;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_assetTrackFormatDescription) = 0;
  v6 = v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_assetTrackFormatDescriptionDimensions;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_assetTrackEncodedSize;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  v8 = v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_assetTrackEncodedSizeTransformed;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_lightAppearanceDimmingColor;
  v10 = objc_opt_self();
  v11 = [v10 secondarySystemBackgroundColor];
  v12 = objc_opt_self();
  v13 = [v12 traitCollectionWithUserInterfaceStyle:1];
  v14 = [v11 resolvedColorWithTraitCollection:v13];

  v15 = [v14 colorWithAlphaComponent:0.8];
  *(v0 + v9) = v15;
  v16 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_darkAppearanceDimmingColor;
  v17 = [v10 systemBackgroundColor];
  v18 = [v12 traitCollectionWithUserInterfaceStyle:2];
  v19 = [v17 resolvedColorWithTraitCollection:v18];

  v20 = [v19 colorWithAlphaComponent:0.7];
  *(v0 + v16) = v20;
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_lightAppearanceComposition) = 0;
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_darkAppearanceComposition) = 0;
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___livePhotoView) = 0;
  v21 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_activityIndicator;
  v22 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v21) = v22;
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___cancelButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___addStickerButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___tapGestureRecognizer) = 0;
  v23 = OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_util;
  *(v0 + v23) = [objc_allocWithZone(StickerPhotosUtil) init];
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___imageAnalysisInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___imageAnalyzer) = 0;
  sub_1000720E8();
  swift_unknownObjectWeakInit();
  sub_10007DD90();
  __break(1u);
}

uint64_t sub_1000629D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006D40(&unk_1000B3BF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100062A44(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = *(v3 + 16);
    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
LABEL_27:
      v8 = sub_10007DDB0();
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = 0;
    while (v8 != v9)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = sub_10007DCD0();
      }

      else
      {
        if (v9 >= *(v7 + 16))
        {
          goto LABEL_26;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      sub_10007D630();
      ++v9;
      if (Sticker.Representation.init(_:)(v11))
      {
        sub_10007D8B0();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10007D900();
        }

        sub_10007D930();
        v9 = v12;
      }
    }

    if (a3)
    {
      swift_errorRetain();
      if (qword_1000B6370 != -1)
      {
        swift_once();
      }

      v13 = sub_10007C780();
      sub_10000AE78(v13, qword_1000B6378);
      swift_errorRetain();
      v14 = sub_10007C760();
      v15 = sub_10007DA10();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        swift_errorRetain();
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 4) = v18;
        *v17 = v18;
        _os_log_impl(&_mh_execute_header, v14, v15, "Error in creating live photo sticker: %@ ", v16, 0xCu);
        sub_10000B348(v17, &unk_1000B2D40);
      }

      else
      {
      }
    }

    sub_10007D720();
    v21 = Sticker.init(from:)();
    v19 = swift_allocObject();
    *(v19 + 16) = v6;
    v20 = v6;
    Sticker.saveToStore(completionHandler:)(sub_100064418, v19);
  }
}

uint64_t sub_100062D74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100062D8C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000B96C;

  return sub_1000607F0(v3, v4, v5, v2);
}

uint64_t sub_100062E20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100062E68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100062ED0()
{
  v1 = v0;
  v2 = sub_10007C460();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000B6370 != -1)
  {
    swift_once();
  }

  v6 = sub_10007C780();
  sub_10000AE78(v6, qword_1000B6378);
  v7 = sub_10007C760();
  v8 = sub_10007D9F0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Live sticker video preview complete", v9, 2u);
  }

  v10 = (*((swift_isaMask & *v1) + 0x160))();
  v11 = [v10 videoAsset];

  if (v11)
  {
    v45 = v11;
    v12 = *(v1 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_util);
    v13 = sub_10005CDCC();
    [v12 videoPreviewTimeRangeForImageAnalysisInteraction:v13];
    v51 = aBlock;
    v52 = v47;
    v53 = v48;
    v54 = v49;
    v55 = v50;

    sub_10007DB60();
    v15 = v14;
    v16 = sub_10007C760();
    if (v15 <= 0.0)
    {
      v30 = sub_10007DA10();
      if (os_log_type_enabled(v16, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v16, v30, "Live sticker video preview did not pass gating, falling back to still sticker.", v31, 2u);
      }

      v32 = *(v1 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_liveButton);
      sub_10007C4C0();
      [v32 setHidden:1];
      v33 = sub_10005B334();
      (*((swift_isaMask & *v33) + 0x120))();

      v34 = sub_10005CDCC();
      v35 = [*(v1 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController____lazy_storage___imageAnalysisInteraction) allSubjectIndexes];
      sub_10007C440();

      sub_10007C430(v36);
      v38 = v37;
      (*(v3 + 8))(v5, v2);
      [v34 highlightSubjectAtIndexSet:v38 showCallout:0 showBurst:0 burstPoint:1 animated:{0.0, 0.0}];

      v39 = *(v1 + OBJC_IVAR____TtC22StickersUltraExtension38StickerLivePhotoConfirmationController_previewCache);
      if (v39)
      {
        v40 = *(*v39 + 136);

        v40(v41);
      }

      else
      {
      }
    }

    else
    {
      v17 = sub_10007D9F0();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Live sticker Video preview available", v18, 2u);
      }

      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v49 = sub_100064384;
      v50 = v19;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v47 = sub_10006147C;
      v48 = &unk_1000A5B80;
      v20 = _Block_copy(&aBlock);
      v21 = objc_opt_self();

      v22 = v45;
      v23 = [v21 videoCompositionWithAsset:v45 applyingCIFiltersWithHandler:v20];
      _Block_release(v20);

      (*((swift_isaMask & *v1) + 0x2A0))(v23);
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v49 = sub_100064390;
      v50 = v24;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v47 = sub_10006147C;
      v48 = &unk_1000A5BA8;
      v25 = _Block_copy(&aBlock);

      v26 = [v21 videoCompositionWithAsset:v22 applyingCIFiltersWithHandler:v25];
      _Block_release(v25);

      (*((swift_isaMask & *v1) + 0x2B8))(v26);
      v27 = [v1 traitCollection];
      v28 = [v27 userInterfaceStyle];

      if (v28 == 1)
      {
        v29 = (*((swift_isaMask & *v1) + 0x298))();
      }

      else
      {
        v29 = (*((swift_isaMask & *v1) + 0x2B0))();
      }

      v42 = v29;
      v43 = sub_10005B334();
      (*((swift_isaMask & *v43) + 0x100))(v42, &v51, 0.25);
    }
  }
}

id sub_100063694(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [objc_opt_self() blendWithAlphaMaskFilter];
  [v6 setInputImage:a2];
  [v6 setMaskImage:a3];
  v7 = [objc_allocWithZone(CIImage) initWithColor:a1];
  [a2 extent];
  v8 = [v7 imageByCroppingToRect:?];

  v9 = [v8 imageByCompositingOverImage:a2];
  [v6 setBackgroundImage:v9];

  result = [v6 outputImage];
  if (result)
  {
    v11 = result;

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100063810()
{
  result = qword_1000B3C50;
  if (!qword_1000B3C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3C50);
  }

  return result;
}

unint64_t sub_100063868()
{
  result = qword_1000B3C58;
  if (!qword_1000B3C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3C58);
  }

  return result;
}

void sub_1000638C4()
{
  sub_100063A70(319, &qword_1000B3C88, &type metadata accessor for UUID, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100063A70(319, &qword_1000B3C90, &type metadata accessor for ColorScheme, &type metadata accessor for Environment.Content);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100063A70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100063AE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006D40(&qword_1000B3C10);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100063B74(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100006D40(&qword_1000B3C10);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100063C04()
{
  sub_100063C5C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_100063C5C()
{
  if (!qword_1000B3D08)
  {
    v0 = sub_10007C420();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B3D08);
    }
  }
}

uint64_t getEnumTagSinglePayload for StickerLivePhotoConfirmationController.ProgressDictionaryKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StickerLivePhotoConfirmationController.ProgressDictionaryKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StickerLivePhotoConfirmationController.InfoDictionaryKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StickerLivePhotoConfirmationController.InfoDictionaryKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100063F50(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100063F70(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

__n128 sub_100063FC0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100063FD4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100063FF4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

void sub_100064040(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  if ((*((swift_isaMask & *v6) + 0x148))())
  {
    v8 = v7;
    if (a1)
    {
      v9 = a1;
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    ObjectType = swift_getObjectType();
    v11 = *(v8 + 8);
    v12 = *(v11 + 16);

    v12(v6, &off_1000A5858, v9, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  if (a3)
  {
    swift_errorRetain();
    if (qword_1000B6370 != -1)
    {
      swift_once();
    }

    v13 = sub_10007C780();
    sub_10000AE78(v13, qword_1000B6378);
    swift_errorRetain();
    v14 = sub_10007C760();
    v15 = sub_10007DA10();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21 = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = sub_10007DEB0();
      v20 = sub_10000A660(v18, v19, &v21);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to create sticker representations. %s", v16, 0xCu);
      sub_10000B5CC(v17);
    }

    else
    {
    }
  }
}

uint64_t sub_1000642B8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000B180;

  return sub_1000607F0(v3, v4, v5, v2);
}

uint64_t sub_10006434C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10006439C(void *a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + *a2);
    sub_100061334(a1, v6);
  }
}

uint64_t sub_100064420(__n128 a1)
{
  v2 = a1.n128_f64[0];
  v3 = *(v1 + 16);
  (*((swift_isaMask & *v3) + 0x3A0))(0x657461647075, 0xE600000000000000, *(v1 + 24), a1, *(v1 + 32));
  (*((swift_isaMask & *v3) + 0x3C0))(v2);
}

uint64_t sub_100064508()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100064548()
{
  v1 = *(v0 + 16);
  (*((swift_isaMask & *v1) + 0x3A0))(6581861, 0xE300000000000000, *(v0 + 24), 100.0, *(v0 + 32));
  (*((swift_isaMask & *v1) + 0x3C0))(100.0);
}

void sub_100064634()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10005FC6C();
  }
}

void sub_100064688()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((swift_isaMask & *Strong) + 0x3B8))();
  }
}

uint64_t sub_100064710()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100064768()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000647A0()
{
  v0 = sub_10005CDCC();
  [v0 beginImageSubjectAnalysisIfNecessary];
}

uint64_t sub_100064860()
{
  v0 = sub_10007C780();
  sub_10000B274(v0, qword_1000B6808);
  sub_10000AE78(v0, qword_1000B6808);
  return sub_10007C770();
}

uint64_t sub_10006490C(uint64_t a1, char a2)
{
  if (a2)
  {
    return 2;
  }

  if (!a1)
  {
    return 1;
  }

  v13 = v2;
  v14 = v3;
  v11 = 0xD000000000000028;
  v12 = 0x8000000100089AF0;
  v10 = &v11;
  v5 = __chkstk_darwin(a1);
  v6 = sub_10003C540(sub_1000695F4, v9, v5);
  v7 = v6;
  v8 = v6 & 1;
  v11 = 0xD000000000000025;
  v12 = 0x8000000100089B20;
  __chkstk_darwin(v6);
  v10 = &v11;
  if (sub_10003C540(sub_10006A148, v9, v5))
  {
    return v7 & 1 | 2;
  }

  else
  {
    return v8;
  }
}

BOOL sub_100064A9C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100064ACC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100064AF8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100064BE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100069624(a1);

  *a2 = v3;
  return result;
}

uint64_t iMessageApp.__allocating_init(extensionIdentifier:bundleIdentifier:displayName:infoDictionary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  iMessageApp.init(extensionIdentifier:bundleIdentifier:displayName:infoDictionary:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t iMessageApp.init(extensionIdentifier:bundleIdentifier:displayName:infoDictionary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  v41 = 0xD00000000000001ELL;
  v42 = 0x8000000100089A00;
  sub_10007DC80();
  if (!*(a7 + 16) || (v10 = sub_1000673C8(&v39), (v11 & 1) == 0))
  {
    sub_100032674(&v39);
    goto LABEL_6;
  }

  sub_10000B618(*(a7 + 56) + 32 * v10, &v41);
  sub_100032674(&v39);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  v12 = v37;
LABEL_7:
  *(v8 + 64) = v12;
  v41 = 0xD000000000000011;
  v42 = 0x8000000100089A20;
  sub_10007DC80();
  if (!*(a7 + 16) || (v13 = sub_1000673C8(&v39), (v14 & 1) == 0))
  {
    sub_100032674(&v39);
    goto LABEL_12;
  }

  sub_10000B618(*(a7 + 56) + 32 * v13, &v41);
  sub_100032674(&v39);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  v15 = v37;
LABEL_13:
  *(v8 + 65) = v15;
  v41 = 0xD000000000000015;
  v42 = 0x8000000100089A40;
  sub_10007DC80();
  if (!*(a7 + 16) || (v16 = sub_1000673C8(&v39), (v17 & 1) == 0))
  {
    sub_100032674(&v39);
    goto LABEL_18;
  }

  sub_10000B618(*(a7 + 56) + 32 * v16, &v41);
  sub_100032674(&v39);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v18 = 0;
    goto LABEL_19;
  }

  v18 = v37;
LABEL_19:
  *(v8 + 66) = v18;
  v41 = 0xD00000000000001ALL;
  v42 = 0x8000000100089A60;
  sub_10007DC80();
  if (!*(a7 + 16) || (v19 = sub_1000673C8(&v39), (v20 & 1) == 0))
  {
    sub_100032674(&v39);
    goto LABEL_24;
  }

  sub_10000B618(*(a7 + 56) + 32 * v19, &v41);
  sub_100032674(&v39);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v21 = 0;
    goto LABEL_25;
  }

  v21 = v37;
LABEL_25:
  *(v8 + 67) = v21;
  v41 = 0xD000000000000017;
  v42 = 0x8000000100089A80;
  sub_10007DC80();
  if (!*(a7 + 16) || (v22 = sub_1000673C8(&v39), (v23 & 1) == 0))
  {
    sub_100032674(&v39);
    goto LABEL_30;
  }

  sub_10000B618(*(a7 + 56) + 32 * v22, &v41);
  sub_100032674(&v39);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    v24 = 0;
    goto LABEL_31;
  }

  v24 = v37;
LABEL_31:
  *(v8 + 68) = v24;
  v37 = 0xD00000000000001FLL;
  v38 = 0x8000000100089AA0;
  sub_10007DC80();
  if (!*(a7 + 16) || (v25 = sub_1000673C8(&v39), (v26 & 1) == 0))
  {

    sub_100032674(&v39);
    if (*(v8 + 64) != 1)
    {
      goto LABEL_43;
    }

LABEL_42:

    v33 = 2;
    goto LABEL_44;
  }

  sub_10000B618(*(a7 + 56) + 32 * v25, &v41);
  sub_100032674(&v39);

  sub_100006D40(&qword_1000B3D98);
  if (swift_dynamicCast())
  {
    v27 = v37;
  }

  else
  {
    v27 = 0;
  }

  if (*(v8 + 64))
  {
    goto LABEL_42;
  }

  if (!v27)
  {
LABEL_43:
    v33 = 1;
    goto LABEL_44;
  }

  v39 = 0xD000000000000028;
  v40 = 0x8000000100089AF0;
  v36 = &v39;
  v28 = __chkstk_darwin(v27);
  v29 = sub_10003C540(sub_10006A148, v35, v28);
  v30 = v29;
  v31 = v29 & 1;
  v39 = 0xD000000000000025;
  v40 = 0x8000000100089B20;
  __chkstk_darwin(v29);
  v36 = &v39;
  v32 = sub_10003C540(sub_10006A148, v35, v28);

  v33 = v30 & 1 | 2;
  if ((v32 & 1) == 0)
  {
    v33 = v31;
  }

LABEL_44:
  *(v8 + 72) = v33;
  return v8;
}

uint64_t iMessageApp.__allocating_init(extensionIdentifier:bundleIdentifier:displayName:isStickerPackOnly:hideFromBrowser:canSendDataPayloads:shouldHideAppIcon:shouldHideAppSwitcher:presentationContexts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, char a9, char a10, char a11, uint64_t a12)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = a7;
  *(result + 65) = a8;
  *(result + 66) = a9;
  *(result + 67) = a10;
  *(result + 68) = a11;
  *(result + 72) = a12;
  return result;
}

uint64_t iMessageApp.init(extensionIdentifier:bundleIdentifier:displayName:isStickerPackOnly:hideFromBrowser:canSendDataPayloads:shouldHideAppIcon:shouldHideAppSwitcher:presentationContexts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, char a9, char a10, char a11, uint64_t a12)
{
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;
  *(v12 + 64) = a7;
  *(v12 + 65) = a8;
  *(v12 + 66) = a9;
  *(v12 + 67) = a10;
  *(v12 + 68) = a11;
  *(v12 + 72) = a12;
  return v12;
}

uint64_t iMessageApp.deinit()
{

  return v0;
}

uint64_t iMessageApp.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100065490@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for iMessageApp();
  result = sub_10007DCC0();
  *a1 = result;
  return result;
}

Swift::Int iMessageApp.hashValue.getter()
{
  sub_10007DF00();
  sub_10007D820();
  return sub_10007DF10();
}

Swift::Int sub_10006551C()
{
  sub_10007DF00();
  sub_10007D820();
  return sub_10007DF10();
}

Swift::Int sub_100065570()
{
  sub_10007DF00();
  sub_10007D820();
  return sub_10007DF10();
}

id sub_1000655B4(void *a1)
{
  swift_allocObject();
  v2 = sub_100069894(a1);

  return v2;
}

id sub_1000655FC(void *a1)
{
  v2 = sub_100069894(a1);

  return v2;
}

uint64_t sub_100065694()
{

  return v0;
}

uint64_t sub_1000656CC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10006571C()
{
  v1 = *(*v0 + 48);

  return v1;
}

uint64_t sub_1000657A8(uint64_t a1)
{
  swift_beginAccess();
  sub_1000109B8(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t iMessageAppsRegistry.apps.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return sub_10006600C();
}

uint64_t (*iMessageAppsRegistry.apps.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100065920;
}

uint64_t sub_100065920(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_10006600C();
  }

  return result;
}

uint64_t iMessageAppsRegistry.lookupMap.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t variable initialization expression of iMessageAppsRegistry.preferences()
{
  type metadata accessor for iMessageAppsPreferences();

  return swift_allocObject();
}

uint64_t iMessageAppsRegistry.stickerApps.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007C8D0();

  return v1;
}

uint64_t sub_100065B3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t sub_100065B88(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 200);

  return v2(v3);
}

uint64_t iMessageAppsRegistry.stickerApps.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10007C8E0();
}

void (*iMessageAppsRegistry.stickerApps.modify(uint64_t *a1))(void *a1)
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

uint64_t iMessageAppsRegistry.$stickerApps.getter()
{
  swift_beginAccess();
  sub_100006D40(&qword_1000B3DA8);
  sub_10007C8A0();
  return swift_endAccess();
}

uint64_t iMessageAppsRegistry.$stickerApps.setter(uint64_t a1)
{
  v2 = sub_100006D40(&qword_1000B3DB0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100006D40(&qword_1000B3DA8);
  sub_10007C8B0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*iMessageAppsRegistry.$stickerApps.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = sub_100006D40(&qword_1000B3DB0);
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

  v9 = OBJC_IVAR____TtC22StickersUltraExtension20iMessageAppsRegistry__stickerApps;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100006D40(&qword_1000B3DA8);
  sub_10007C8A0();
  swift_endAccess();
  return sub_100035C00;
}

uint64_t sub_10006600C()
{
  sub_100006D40(&qword_1000B30F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008E9C0;
  *(inited + 32) = sub_10007D7D0();
  *(inited + 40) = v2;
  *(inited + 48) = sub_10007D7D0();
  *(inited + 56) = v3;
  *(inited + 64) = sub_10007D7D0();
  *(inited + 72) = v4;
  *(inited + 80) = sub_10007D7D0();
  *(inited + 88) = v5;
  *(inited + 96) = sub_10007D7D0();
  *(inited + 104) = v6;
  *(inited + 112) = sub_10007D7D0();
  *(inited + 120) = v7;
  *(inited + 128) = sub_10007D7D0();
  *(inited + 136) = v8;
  v9 = sub_100069FC4(inited);
  swift_setDeallocating();
  v10 = swift_arrayDestroy();
  v48 = v0;
  v11 = (*(*v0 + 144))(v10);
  v54 = _swiftEmptyArrayStorage;
  if (v11 >> 62)
  {
LABEL_28:
    v26 = v11;
    v12 = sub_10007DDB0();
    v11 = v26;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_3:
      v13 = 0;
      v50 = v11 & 0xFFFFFFFFFFFFFF8;
      v52 = v11 & 0xC000000000000001;
      v14 = v11 + 32;
      v15 = v9 + 56;
      while (1)
      {
        if (v52)
        {
          v16 = sub_10007DCD0();
          v17 = __OFADD__(v13++, 1);
          if (v17)
          {
LABEL_25:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v13 >= *(v50 + 16))
          {
            __break(1u);
            goto LABEL_28;
          }

          v16 = *(v14 + 8 * v13);

          v17 = __OFADD__(v13++, 1);
          if (v17)
          {
            goto LABEL_25;
          }
        }

        v19 = *(v16 + 32);
        v18 = *(v16 + 40);
        if (*(v9 + 16))
        {
          sub_10007DF00();

          sub_10007D820();
          v20 = sub_10007DF10();
          v21 = -1 << *(v9 + 32);
          v22 = v20 & ~v21;
          if ((*(v15 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
          {
            v23 = ~v21;
            while (1)
            {
              v24 = (*(v9 + 48) + 16 * v22);
              v25 = *v24 == v19 && v24[1] == v18;
              if (v25 || (sub_10007DE50() & 1) != 0)
              {
                break;
              }

              v22 = (v22 + 1) & v23;
              if (((*(v15 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
              {
                goto LABEL_18;
              }
            }

            goto LABEL_5;
          }

LABEL_18:
        }

        v55._object = 0x8000000100089D80;
        v55._countAndFlagsBits = 0xD000000000000013;
        if (sub_10007D860(v55) || (*(v16 + 72) & 2) == 0)
        {
LABEL_5:

          if (v13 == v12)
          {
            break;
          }
        }

        else
        {
          sub_10007DD00();
          sub_10007DD30();
          sub_10007DD40();
          v11 = sub_10007DD10();
          if (v13 == v12)
          {
            break;
          }
        }
      }
    }
  }

  v53[0] = sub_10006935C(v27);
  sub_10006748C(v53);

  v28 = (*(*v48 + 264))(v53[0]);

  if (qword_1000B6800 != -1)
  {
    swift_once();
  }

  v29 = sub_10007C780();
  sub_10000AE78(v29, qword_1000B6808);

  v30 = sub_10007C760();
  v31 = sub_10007D9F0();

  if (!os_log_type_enabled(v30, v31))
  {
    goto LABEL_45;
  }

  v32 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  v53[0] = v33;
  *v32 = 136315138;
  if (v28 >> 62)
  {
    v34 = sub_10007DDB0();
  }

  else
  {
    v34 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v34)
  {
LABEL_44:
    v43 = sub_10007D8F0();
    v45 = v44;

    v46 = sub_10000A660(v43, v45, v53);

    *(v32 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v30, v31, "Loaded apps %s", v32, 0xCu);
    sub_10000B5CC(v33);

LABEL_45:

    return (*(*v48 + 200))(v28);
  }

  v54 = _swiftEmptyArrayStorage;
  sub_100068D38(0, v34 & ~(v34 >> 63), 0);
  if ((v34 & 0x8000000000000000) == 0)
  {
    v49 = v33;
    v51 = v32;
    v35 = 0;
    v36 = v54;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v37 = sub_10007DCD0();
      }

      else
      {
        v37 = *(v28 + 8 * v35 + 32);
      }

      v38 = *(v37 + 32);
      v39 = *(v37 + 40);

      v54 = v36;
      v41 = v36[2];
      v40 = v36[3];
      if (v41 >= v40 >> 1)
      {
        sub_100068D38((v40 > 1), v41 + 1, 1);
        v36 = v54;
      }

      ++v35;
      v36[2] = v41 + 1;
      v42 = &v36[2 * v41];
      v42[4] = v38;
      v42[5] = v39;
    }

    while (v34 != v35);
    v33 = v49;
    v32 = v51;
    goto LABEL_44;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_10006665C()
{
  type metadata accessor for iMessageAppsRegistry();
  v0 = swift_allocObject();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = &_swiftEmptyArrayStorage;
  *(v0 + 56) = &_swiftEmptyDictionarySingleton;
  type metadata accessor for iMessageAppsPreferences();
  *(v0 + 64) = swift_allocObject();
  sub_100006D40(&qword_1000B3DA0);
  result = sub_10007C890();
  static iMessageAppsRegistry.shared = v0;
  return result;
}

uint64_t sub_100066708()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = _swiftEmptyArrayStorage;
  *(v0 + 56) = &_swiftEmptyDictionarySingleton;
  type metadata accessor for iMessageAppsPreferences();
  *(v0 + 64) = swift_allocObject();
  sub_100006D40(&qword_1000B3DA0);
  sub_10007C890();
  return v0;
}

uint64_t *iMessageAppsRegistry.shared.unsafeMutableAddressor()
{
  if (qword_1000B6820 != -1)
  {
    swift_once();
  }

  return &static iMessageAppsRegistry.shared;
}

uint64_t static iMessageAppsRegistry.shared.getter()
{
  if (qword_1000B6820 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10006685C(unint64_t a1)
{
  v3 = sub_100069798(_swiftEmptyArrayStorage);
  v4 = *(v1 + 64);
  v5 = (*(*v4 + 80))();
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (v5 + 40);
    while (1)
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        v24 = sub_10007DDB0();
        goto LABEL_18;
      }

      v11 = *(v9 - 1);
      v10 = *v9;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v3;
      v4 = v3;
      v13 = sub_100016368(v11, v10);
      v15 = v3[2];
      v16 = (v14 & 1) == 0;
      v17 = __OFADD__(v15, v16);
      v18 = v15 + v16;
      if (v17)
      {
        goto LABEL_52;
      }

      v2 = v14;
      if (v3[3] < v18)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v4 = &v44;
      v23 = v13;
      sub_1000691F4();
      v13 = v23;
      if (v2)
      {
LABEL_3:
        v4 = v13;

        v3 = v44;
        *(v44[7] + 8 * v4) = v8;
        goto LABEL_4;
      }

LABEL_12:
      v3 = v44;
      v44[(v13 >> 6) + 8] |= 1 << v13;
      v20 = (v3[6] + 16 * v13);
      *v20 = v11;
      v20[1] = v10;
      *(v3[7] + 8 * v13) = v8;
      v21 = v3[2];
      v17 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v17)
      {
        goto LABEL_55;
      }

      v3[2] = v22;
LABEL_4:
      ++v8;
      v9 += 2;
      if (v7 == v8)
      {
        goto LABEL_16;
      }
    }

    sub_100068F54(v18, isUniquelyReferenced_nonNull_native);
    v4 = v44;
    v13 = sub_100016368(v11, v10);
    if ((v2 & 1) != (v19 & 1))
    {
      sub_10007DE70();
      __break(1u);

      __break(1u);
      return result;
    }

LABEL_11:
    if (v2)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

LABEL_16:
  v44 = v3;

  v43 = _swiftEmptyArrayStorage;
  v4 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_56;
  }

  v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:

  if (!v24)
  {
    goto LABEL_32;
  }

  v25 = 0;
  v26 = v4 & 0xC000000000000001;
  v27 = v4 & 0xFFFFFFFFFFFFFF8;
  while (v26)
  {
    v28 = sub_10007DCD0();
    v29 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_30;
    }

LABEL_25:
    if (v3[2] && (v4 = v3, sub_100016368(*(v28 + 16), *(v28 + 24)), (v30 & 1) != 0))
    {
      sub_10007DD00();
      sub_10007DD30();
      sub_10007DD40();
      v4 = &v43;
      sub_10007DD10();
    }

    else
    {
    }

    ++v25;
    if (v29 == v24)
    {
      goto LABEL_31;
    }
  }

  if (v25 >= *(v27 + 16))
  {
    goto LABEL_53;
  }

  v28 = *(a1 + 8 * v25 + 32);

  v29 = v25 + 1;
  if (!__OFADD__(v25, 1))
  {
    goto LABEL_25;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  v4 = a1;
LABEL_32:

  v43 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v31 = sub_10007DDB0();
  }

  else
  {
    v31 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v31)
  {
    v38 = _swiftEmptyArrayStorage;
    goto LABEL_50;
  }

  v32 = 0;
  v33 = v4 & 0xC000000000000001;
  v34 = v4 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if (v33)
    {
      v35 = sub_10007DCD0();
      v36 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      goto LABEL_42;
    }

    if (v32 >= *(v34 + 16))
    {
      goto LABEL_54;
    }

    v35 = *(v4 + 8 * v32 + 32);

    v36 = v32 + 1;
    if (!__OFADD__(v32, 1))
    {
LABEL_42:
      if (v3[2] && (sub_100016368(*(v35 + 16), *(v35 + 24)), (v37 & 1) != 0))
      {
      }

      else
      {
        sub_10007DD00();
        v2 = v43[2];
        sub_10007DD30();
        sub_10007DD40();
        sub_10007DD10();
      }

      ++v32;
      v4 = a1;
      if (v36 == v31)
      {
        goto LABEL_48;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_48:
  v38 = v43;
LABEL_50:

  v43 = sub_10006935C(v39);
  sub_100067408(&v43, &v44);

  sub_100068E64(v38);
  v40 = v43;

  return v40;
}

uint64_t iMessageAppsRegistry.deinit()
{
  sub_100069C04(v0 + 16);

  v1 = OBJC_IVAR____TtC22StickersUltraExtension20iMessageAppsRegistry__stickerApps;
  v2 = sub_100006D40(&qword_1000B3DA8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t iMessageAppsRegistry.__deallocating_deinit()
{
  sub_100069C04(v0 + 16);

  v1 = OBJC_IVAR____TtC22StickersUltraExtension20iMessageAppsRegistry__stickerApps;
  v2 = sub_100006D40(&qword_1000B3DA8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100066E20()
{
  v1 = sub_100006D40(&qword_1000B3DA8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v7 - v3;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = _swiftEmptyArrayStorage;
  *(v0 + 56) = &_swiftEmptyDictionarySingleton;
  type metadata accessor for iMessageAppsPreferences();
  *(v0 + 64) = swift_allocObject();
  v5 = OBJC_IVAR____TtC22StickersUltraExtension20iMessageAppsRegistry__stickerApps;
  v7[1] = _swiftEmptyArrayStorage;
  sub_100006D40(&qword_1000B3DA0);
  sub_10007C890();
  (*(v2 + 32))(v0 + v5, v4, v1);
  return v0;
}

uint64_t sub_100066F98@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for iMessageAppsRegistry();
  result = sub_10007C880();
  *a1 = result;
  return result;
}

void *iMessageAppsPreferences.preferredOrder.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_10007D7A0();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_10007DC10();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100006D40(&qword_1000B3D98);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_100069C04(v7);
  }

  return _swiftEmptyArrayStorage;
}

Swift::Void __swiftcall iMessageAppsPreferences.setPreferredOrder(extensionIdentifiers:)(Swift::OpaquePointer extensionIdentifiers)
{
  v1 = [objc_opt_self() standardUserDefaults];
  isa = sub_10007D8C0().super.isa;
  v3 = sub_10007D7A0();
  [v1 setObject:isa forKey:v3];
}

Swift::Void __swiftcall iMessageAppsRegistry.overrideApps(with:)(Swift::OpaquePointer with)
{
  v3 = *(*v1 + 152);

  v3(v2);
}

char *sub_10006723C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006D40(&qword_1000B41B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_100067340(uint64_t a1, uint64_t a2)
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

  sub_100006D40(&qword_1000B2200);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_1000673C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007DC60(*(v2 + 40));
  return sub_10002CA7C(a1, v4);
}

uint64_t sub_100067408(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_100069610(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_100067508(v8, a2);
  return sub_10007DD10();
}

uint64_t sub_10006748C(uint64_t *a1)
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
  sub_100067614(v6);
  return sub_10007DD10();
}

Swift::Int sub_100067508(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  result = sub_10007DE20(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for iMessageApp();
        v8 = sub_10007D920();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v10[1] = v7;
      sub_100067934(v10, v11, a1, v6, a2);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_100067714(0, v4, 1, a1, a2);
  }

  return result;
}

Swift::Int sub_100067614(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_10007DE20(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for iMessageApp();
        v6 = sub_10007D920();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_100068104(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100067874(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100067714(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = (*a4 + 8 * a3 - 8);
    v9 = result - a3;
LABEL_5:
    v10 = *(v7 + 8 * v6);
    v25 = v9;
    v26 = v8;
    while (1)
    {
      v11 = *v8;
      v12 = *a5;
      if (!*(*a5 + 16))
      {
        break;
      }

      v14 = *(v10 + 16);
      v13 = *(v10 + 24);

      v15 = sub_100016368(v14, v13);
      if ((v16 & 1) == 0)
      {
        goto LABEL_10;
      }

      v17 = *(*(v12 + 56) + 8 * v15);
LABEL_11:
      v18 = *a5;
      if (*(*a5 + 16) && (v19 = sub_100016368(*(v11 + 16), *(v11 + 24)), (v20 & 1) != 0))
      {
        v21 = *(*(v18 + 56) + 8 * v19);

        if (v17 >= v21)
        {
          goto LABEL_4;
        }
      }

      else
      {

        if (v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_4;
        }
      }

      if (!v7)
      {
        __break(1u);
        return result;
      }

      v22 = *v8;
      v10 = v8[1];
      *v8 = v10;
      v8[1] = v22;
      --v8;
      if (__CFADD__(v9++, 1))
      {
LABEL_4:
        ++v6;
        v8 = v26 + 1;
        v9 = v25 - 1;
        if (v6 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

LABEL_10:
    v17 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_100067874(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = result - a3;
LABEL_5:
    v9 = *(v6 + 8 * v4);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      result = *(v9 + 48);
      v12 = result == *(*v11 + 48) && *(v9 + 56) == *(*v11 + 56);
      if (v12 || (result = sub_10007DE50(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 8;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v13 = *v11;
      v9 = v11[1];
      *v11 = v9;
      v11[1] = v13;
      --v11;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100067934(uint64_t result, uint64_t a2, char *a3, uint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v122 = result;
  v8 = *(a3 + 1);
  if (v8 < 1)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_116:
    v9 = *v122;
    if (!*v122)
    {
      goto LABEL_156;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_118:
      v113 = *(v11 + 16);
      if (v113 >= 2)
      {
        while (*a3)
        {
          v114 = *(v11 + 16 * v113);
          v115 = v11;
          v116 = *(v11 + 16 * (v113 - 1) + 32);
          v11 = *(v11 + 16 * (v113 - 1) + 40);
          sub_1000686D4((*a3 + 8 * v114), (*a3 + 8 * v116), (*a3 + 8 * v11), v9, a5);
          if (v6)
          {
          }

          if (v11 < v114)
          {
            goto LABEL_143;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v115 = sub_100068D24(v115);
          }

          if (v113 - 2 >= *(v115 + 2))
          {
            goto LABEL_144;
          }

          v117 = &v115[16 * v113];
          *v117 = v114;
          *(v117 + 1) = v11;
          result = sub_100068C98(v113 - 1);
          v11 = v115;
          v113 = *(v115 + 2);
          if (v113 <= 1)
          {
          }
        }

        goto LABEL_154;
      }
    }

LABEL_150:
    result = sub_100068D24(v11);
    v11 = result;
    goto LABEL_118;
  }

  v9 = a3;
  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  while (2)
  {
    v12 = v10;
    v13 = v10 + 1;
    v123 = v10;
    if (v10 + 1 >= v8)
    {
      goto LABEL_38;
    }

    v125 = v8;
    v14 = *v9;
    v15 = *(*v9 + 8 * v13);
    v16 = *(*v9 + 8 * v10);
    v17 = *a5;
    v18 = *(*a5 + 16);

    if (v18 && (v19 = sub_100016368(*(v15 + 16), *(v15 + 24)), (v20 & 1) != 0))
    {
      v21 = *(*(v17 + 56) + 8 * v19);
    }

    else
    {
      v21 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v128 = v21;
    v22 = *a5;
    if (*(*a5 + 16) && (v23 = sub_100016368(*(v16 + 16), *(v16 + 24)), (v24 & 1) != 0))
    {
      v25 = *(*(v22 + 56) + 8 * v23);
    }

    else
    {
      v25 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v126 = v25;
    if (v6)
    {
    }

    v119 = v11;

    v11 = 8 * v123;
    v6 = (v14 + 8 * v123 + 16);
    v26 = 8 * v123 + 8;
    do
    {
      v9 = v13;
      v29 = v26;
      if (++v13 >= v125)
      {
        break;
      }

      v130 = v13;
      v30 = *(v6 - 1);
      v31 = *v6;
      v32 = *a5;
      if (*(*a5 + 16))
      {
        v34 = *(v31 + 16);
        v33 = *(v31 + 24);

        v35 = sub_100016368(v34, v33);
        if (v36)
        {
          v37 = *(*(v32 + 56) + 8 * v35);
          goto LABEL_23;
        }
      }

      else
      {
      }

      v37 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_23:
      v38 = *a5;
      if (*(*a5 + 16) && (v39 = sub_100016368(*(v30 + 16), *(v30 + 24)), (v40 & 1) != 0))
      {
        v27 = *(*(v38 + 56) + 8 * v39);
      }

      else
      {

        v27 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v28 = (v128 < v126) ^ (v37 >= v27);
      ++v6;
      v26 = v29 + 8;
      v13 = v130;
    }

    while ((v28 & 1) != 0);
    if (v128 >= v126)
    {
      v6 = 0;
      goto LABEL_36;
    }

    v41 = v123;
    if (v13 < v123)
    {
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    if (v123 >= v13)
    {
      v11 = v119;
      v6 = 0;
      v9 = a3;
      v12 = v123;
    }

    else
    {
      v6 = 0;
      do
      {
        if (v41 != v9)
        {
          v43 = *a3;
          if (!*a3)
          {
            goto LABEL_153;
          }

          v44 = *(v43 + v11);
          *(v43 + v11) = *(v43 + v29);
          *(v43 + v29) = v44;
        }

        ++v41;
        v29 -= 8;
        v11 += 8;
      }

      while (v41 < v9--);
LABEL_36:
      v12 = v123;
      v9 = a3;
      v11 = v119;
    }

LABEL_38:
    v45 = *(v9 + 1);
    if (v13 >= v45)
    {
      goto LABEL_64;
    }

    if (__OFSUB__(v13, v12))
    {
      goto LABEL_146;
    }

    if (v13 - v12 >= a4)
    {
LABEL_64:
      if (v13 < v12)
      {
        goto LABEL_145;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10006723C(0, *(v11 + 16) + 1, 1, v11);
        v11 = result;
      }

      v66 = *(v11 + 16);
      v65 = *(v11 + 24);
      v67 = v66 + 1;
      if (v66 >= v65 >> 1)
      {
        result = sub_10006723C((v65 > 1), v66 + 1, 1, v11);
        v11 = result;
      }

      *(v11 + 16) = v67;
      v68 = v11 + 16 * v66;
      *(v68 + 32) = v123;
      *(v68 + 40) = v13;
      v132 = v13;
      v69 = *v122;
      if (!*v122)
      {
        goto LABEL_155;
      }

      if (!v66)
      {
LABEL_3:
        v8 = *(v9 + 1);
        v10 = v132;
        if (v132 >= v8)
        {
          goto LABEL_116;
        }

        continue;
      }

      while (1)
      {
        v70 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v71 = *(v11 + 32);
          v72 = *(v11 + 40);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_84:
          if (v74)
          {
            goto LABEL_134;
          }

          v87 = (v11 + 16 * v67);
          v89 = *v87;
          v88 = v87[1];
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_137;
          }

          v93 = (v11 + 32 + 16 * v70);
          v95 = *v93;
          v94 = v93[1];
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_140;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_141;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              v70 = v67 - 2;
            }

            goto LABEL_105;
          }

          goto LABEL_98;
        }

        v97 = (v11 + 16 * v67);
        v99 = *v97;
        v98 = v97[1];
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_98:
        if (v92)
        {
          goto LABEL_136;
        }

        v100 = v11 + 16 * v70;
        v102 = *(v100 + 32);
        v101 = *(v100 + 40);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_139;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_105:
        v108 = v70 - 1;
        if (v70 - 1 >= v67)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
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
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v9)
        {
          goto LABEL_152;
        }

        v109 = v11;
        v110 = *(v11 + 32 + 16 * v108);
        v111 = *(v11 + 32 + 16 * v70);
        v11 = *(v11 + 32 + 16 * v70 + 8);
        sub_1000686D4((*v9 + 8 * v110), (*v9 + 8 * v111), (*v9 + 8 * v11), v69, a5);
        if (v6)
        {
        }

        if (v11 < v110)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = sub_100068D24(v109);
        }

        if (v108 >= *(v109 + 2))
        {
          goto LABEL_131;
        }

        v112 = &v109[16 * v108];
        *(v112 + 4) = v110;
        *(v112 + 5) = v11;
        result = sub_100068C98(v70);
        v11 = v109;
        v67 = *(v109 + 2);
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = v11 + 32 + 16 * v67;
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_132;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_133;
      }

      v82 = (v11 + 16 * v67);
      v84 = *v82;
      v83 = v82[1];
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_135;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_138;
      }

      if (v86 >= v78)
      {
        v104 = (v11 + 32 + 16 * v70);
        v106 = *v104;
        v105 = v104[1];
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_142;
        }

        if (v73 < v107)
        {
          v70 = v67 - 2;
        }

        goto LABEL_105;
      }

      goto LABEL_84;
    }

    break;
  }

  v46 = v12 + a4;
  if (__OFADD__(v12, a4))
  {
    goto LABEL_147;
  }

  if (v46 >= v45)
  {
    v46 = *(v9 + 1);
  }

  if (v46 < v12)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v13 == v46)
  {
    goto LABEL_64;
  }

  v120 = v11;
  v121 = v6;
  v47 = *v9;
  v48 = (*v9 + 8 * v13 - 8);
  v49 = v12 - v13;
  v127 = v46;
LABEL_48:
  v129 = v48;
  v131 = v13;
  v50 = *(v47 + 8 * v13);
  v51 = v49;
  while (1)
  {
    v52 = *v48;
    v53 = *a5;
    if (!*(*a5 + 16))
    {

LABEL_53:
      v58 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_54;
    }

    v55 = *(v50 + 16);
    v54 = *(v50 + 24);

    v56 = sub_100016368(v55, v54);
    if ((v57 & 1) == 0)
    {
      goto LABEL_53;
    }

    v58 = *(*(v53 + 56) + 8 * v56);
LABEL_54:
    v59 = *a5;
    if (*(*a5 + 16) && (v60 = sub_100016368(*(v52 + 16), *(v52 + 24)), (v61 & 1) != 0))
    {
      v62 = *(*(v59 + 56) + 8 * v60);

      if (v58 >= v62)
      {
        goto LABEL_47;
      }
    }

    else
    {

      if (v58 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_47;
      }
    }

    if (!v47)
    {
      break;
    }

    v63 = *v48;
    v50 = v48[1];
    *v48 = v50;
    v48[1] = v63;
    --v48;
    if (__CFADD__(v51++, 1))
    {
LABEL_47:
      v13 = v131 + 1;
      v48 = v129 + 1;
      --v49;
      if (v131 + 1 == v127)
      {
        v13 = v127;
        v11 = v120;
        v6 = v121;
        v12 = v123;
        v9 = a3;
        goto LABEL_64;
      }

      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
  return result;
}

uint64_t sub_100068104(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v86 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_105:
    v8 = *v86;
    if (!*v86)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_100068D24(v7);
      v7 = result;
    }

    v80 = *(v7 + 2);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = *&v7[16 * v80];
        v82 = *&v7[16 * v80 + 24];
        sub_100068A60((*a3 + 8 * v81), (*a3 + 8 * *&v7[16 * v80 + 16]), (*a3 + 8 * v82), v8);
        if (v4)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_100068D24(v7);
        }

        if (v80 - 2 >= *(v7 + 2))
        {
          goto LABEL_131;
        }

        v83 = &v7[16 * v80];
        *v83 = v81;
        *(v83 + 1) = v82;
        result = sub_100068C98(v80 - 1);
        v80 = *(v7 + 2);
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3;
      v10 = *(*a3 + 8 * v6);
      v11 = *(*a3 + 8 * v8);
      result = *(v10 + 48);
      if (result == *(v11 + 48) && *(v10 + 56) == *(v11 + 56))
      {
        v13 = 0;
      }

      else
      {
        result = sub_10007DE50();
        v13 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v14 = v9 + 8 * v8 + 16;
        do
        {
          v15 = *(v14 - 8);
          result = *(*v14 + 48);
          if (result == *(v15 + 48) && *(*v14 + 56) == *(v15 + 56))
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_10007DE50();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v6;
          v14 += 8;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v17 = 8 * v6 - 8;
          v18 = 8 * v8;
          v19 = v6;
          v20 = v8;
          do
          {
            if (v20 != --v19)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v21 = *(v22 + v18);
              *(v22 + v18) = *(v22 + v17);
              *(v22 + v17) = v21;
            }

            ++v20;
            v17 -= 8;
            v18 += 8;
          }

          while (v20 < v19);
        }
      }
    }

    v23 = a3[1];
    if (v6 < v23)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v23)
        {
          v24 = a3[1];
        }

        else
        {
          v24 = (v8 + a4);
        }

        if (v24 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v24)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10006723C(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v35 = *(v7 + 2);
    v34 = *(v7 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_10006723C((v34 > 1), v35 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v36;
    v37 = &v7[16 * v35];
    *(v37 + 4) = v8;
    *(v37 + 5) = v6;
    v38 = *v86;
    if (!*v86)
    {
      goto LABEL_142;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v7 + 4);
          v41 = *(v7 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_74:
          if (v43)
          {
            goto LABEL_121;
          }

          v56 = &v7[16 * v36];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_124;
          }

          v62 = &v7[16 * v39 + 32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_128;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v66 = &v7[16 * v36];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_88:
        if (v61)
        {
          goto LABEL_123;
        }

        v69 = &v7[16 * v39];
        v71 = *(v69 + 4);
        v70 = *(v69 + 5);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_126;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v39 - 1;
        if (v39 - 1 >= v36)
        {
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
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v77 = *&v7[16 * v8 + 32];
        v78 = *&v7[16 * v39 + 40];
        sub_100068A60((*a3 + 8 * v77), (*a3 + 8 * *&v7[16 * v39 + 32]), (*a3 + 8 * v78), v38);
        if (v4)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_100068D24(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_118;
        }

        v79 = &v7[16 * v8];
        *(v79 + 4) = v77;
        *(v79 + 5) = v78;
        result = sub_100068C98(v39);
        v36 = *(v7 + 2);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v44 = &v7[16 * v36 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_119;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_120;
      }

      v51 = &v7[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_122;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_125;
      }

      if (v55 >= v47)
      {
        v73 = &v7[16 * v39 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_129;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v25 = *a3;
  v26 = *a3 + 8 * v6 - 8;
  v84 = v8;
  v27 = (v8 - v6);
LABEL_43:
  v28 = *(v25 + 8 * v6);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    v31 = *(v28 + 48) == *(*v30 + 48) && *(v28 + 56) == *(*v30 + 56);
    if (v31 || (result = sub_10007DE50(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v26 += 8;
      --v27;
      if (v6 != v24)
      {
        goto LABEL_43;
      }

      v6 = v24;
      v8 = v84;
      goto LABEL_54;
    }

    if (!v25)
    {
      break;
    }

    v32 = *v30;
    v28 = v30[1];
    *v30 = v28;
    v30[1] = v32;
    --v30;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_1000686D4(char *__src, char *a2, char *a3, char *a4, uint64_t *a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = a2;
    if (a4 != __src || &__src[8 * v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v15 = &v5[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v16 = v7;
      goto LABEL_54;
    }

    while (1)
    {
      if (v14 >= v6)
      {
        goto LABEL_10;
      }

      v19 = *v14;
      v20 = *v5;
      v21 = *a5;
      if (!*(*a5 + 16))
      {
        break;
      }

      v22 = *(v19 + 16);
      v23 = *(v19 + 24);

      v24 = sub_100016368(v22, v23);
      if ((v25 & 1) == 0)
      {
        goto LABEL_19;
      }

      v26 = *(*(v21 + 56) + 8 * v24);
LABEL_20:
      v27 = *a5;
      if (*(*a5 + 16) && (v28 = sub_100016368(*(v20 + 16), *(v20 + 24)), (v29 & 1) != 0))
      {
        v30 = *(*(v27 + 56) + 8 * v28);

        if (v26 >= v30)
        {
          goto LABEL_25;
        }
      }

      else
      {

        if (v26 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_25:
          v17 = v5;
          v18 = v7 == v5;
          v5 += 8;
          if (v18)
          {
            goto LABEL_13;
          }

LABEL_12:
          *v7 = *v17;
          goto LABEL_13;
        }
      }

      v17 = v14;
      v18 = v7 == v14;
      v14 += 8;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v5 >= v15)
      {
        goto LABEL_10;
      }
    }

LABEL_19:
    v26 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_20;
  }

  if (a4 != a2 || &a2[8 * v13] <= a4)
  {
    v31 = a2;
    memmove(a4, a2, 8 * v13);
    a2 = v31;
  }

  v16 = a2;
  v15 = &v5[8 * v13];
  if (v11 >= 8 && a2 > v7)
  {
    v51 = v5;
LABEL_34:
    __dst = v16;
    v32 = v16 - 8;
    v6 -= 8;
    v33 = v15;
    while (1)
    {
      v35 = *(v33 - 1);
      v33 -= 8;
      v34 = v35;
      v36 = v32;
      v37 = *v32;
      v38 = *a5;
      if (*(*a5 + 16))
      {
        v39 = *(v34 + 16);
        v40 = *(v34 + 24);

        v41 = sub_100016368(v39, v40);
        if (v42)
        {
          v43 = *(*(v38 + 56) + 8 * v41);
          goto LABEL_41;
        }
      }

      else
      {
      }

      v43 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_41:
      v44 = *a5;
      if (*(*a5 + 16) && (v45 = sub_100016368(*(v37 + 16), *(v37 + 24)), (v46 & 1) != 0))
      {
        v47 = *(*(v44 + 56) + 8 * v45);

        if (v43 < v47)
        {
          goto LABEL_48;
        }
      }

      else
      {

        if (v43 != 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_48:
          v48 = v36;
          if (v6 + 8 != __dst)
          {
            *v6 = *v36;
          }

          v5 = v51;
          if (v15 <= v51 || (v16 = v48, v48 <= v7))
          {
            v16 = v48;
            break;
          }

          goto LABEL_34;
        }
      }

      if (v6 + 8 != v15)
      {
        *v6 = *v33;
      }

      v6 -= 8;
      v15 = v33;
      v32 = v36;
      if (v33 <= v51)
      {
        v15 = v33;
        v16 = __dst;
        v5 = v51;
        break;
      }
    }
  }

LABEL_54:
  if (v16 != v5 || v16 >= &v5[(v15 - v5 + (v15 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v16, v5, 8 * ((v15 - v5) / 8));
  }

  return 1;
}

uint64_t sub_100068A60(char *__dst, char *__src, char *a3, char *a4)
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
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *(*v6 + 48) == *(*v4 + 48) && *(*v6 + 56) == *(*v4 + 56);
      if (!v16 && (sub_10007DE50() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = *(v18 - 1);
      v18 -= 8;
      v20 = *(v19 + 56);
      v21 = *(v19 + 48) == *(*v17 + 48) && v20 == *(*v17 + 56);
      if (!v21 && (sub_10007DE50() & 1) != 0)
      {
        if (v5 + 8 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 8 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_100068C98(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100068D24(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_100068D38(char *a1, int64_t a2, char a3)
{
  result = sub_100068D58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100068D58(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006D40(&qword_1000B30F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100068E64(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_10007DDB0();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_10007DDB0();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100013354(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1000693F0(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100068F54(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100006D40(&qword_1000B41C0);
  v34 = a2;
  result = sub_10007DDD0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_10007DF00();
      sub_10007D820();
      result = sub_10007DF10();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1000691F4()
{
  v1 = v0;
  sub_100006D40(&qword_1000B41C0);
  v2 = *v0;
  v3 = sub_10007DDC0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10006935C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_10007DDB0();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100067340(v3, 0);
  sub_1000693F0((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000693F0(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100069F60();
          for (i = 0; i != v6; ++i)
          {
            sub_100006D40(&qword_1000B3DA0);
            v9 = sub_10006956C(v13, i, a3);
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
        type metadata accessor for iMessageApp();
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

uint64_t (*sub_10006956C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10007DCD0();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1000695EC;
  }

  __break(1u);
  return result;
}

uint64_t sub_100069624(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_10006965C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006D40(&qword_1000B3D58);
    v3 = sub_10007DDE0();
    v4 = a1 + 32;

    while (1)
    {
      sub_10003260C(v4, v13, &qword_1000B41D0);
      result = sub_1000673C8(v13);
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
      result = sub_10000FE98(&v15, (v3[7] + 32 * result));
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

unint64_t sub_100069798(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006D40(&qword_1000B41C0);
    v3 = sub_10007DDE0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100016368(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

id sub_100069894(void *a1)
{
  *(v1 + 80) = a1;
  v2 = a1;
  v3 = sub_10007D7A0();
  v4 = [v2 objectForInfoDictionaryKey:v3];

  if (v4)
  {
    sub_10007DC10();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27 = v25;
  v28 = v26;
  if (*(&v26 + 1))
  {
    if (swift_dynamicCast())
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_100069C04(&v27);
  }

  v5 = sub_10007D7A0();
  v6 = [v2 objectForInfoDictionaryKey:v5];

  if (v6)
  {
    sub_10007DC10();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27 = v25;
  v28 = v26;
  if (*(&v26 + 1))
  {
    if (swift_dynamicCast())
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_100069C04(&v27);
  }

  v7 = sub_10007D7A0();
  v8 = [v2 objectForInfoDictionaryKey:v7];

  if (v8)
  {
    sub_10007DC10();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27 = v25;
  v28 = v26;
  if (*(&v26 + 1))
  {
    if (swift_dynamicCast())
    {
LABEL_20:
      v9 = v23;
      v10 = v24;
      goto LABEL_23;
    }
  }

  else
  {
    sub_100069C04(&v27);
  }

  v9 = 0;
  v10 = 0xE000000000000000;
LABEL_23:
  result = [v2 identifier];
  if (!result)
  {
    __break(1u);
    goto LABEL_28;
  }

  v12 = result;
  v13 = [objc_opt_self() extendedIdentifierFromIdentifier:result];

  v14 = sub_10007D7D0();
  v16 = v15;

  result = [v2 identifier];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = result;
  v18 = sub_10007D7D0();
  v20 = v19;

  result = [v2 infoDictionary];
  if (result)
  {
    v21 = result;
    v22 = sub_10007D740();

    iMessageApp.init(extensionIdentifier:bundleIdentifier:displayName:infoDictionary:)(v14, v16, v18, v20, v9, v10, v22);
    return v1;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100069C04(uint64_t a1)
{
  v2 = sub_100006D40(&qword_1000B2528);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100069C70()
{
  result = qword_1000B3DB8;
  if (!qword_1000B3DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3DB8);
  }

  return result;
}

unint64_t sub_100069CD0()
{
  result = qword_1000B3DC0;
  if (!qword_1000B3DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3DC0);
  }

  return result;
}

unint64_t sub_100069D34()
{
  result = qword_1000B3048;
  if (!qword_1000B3048)
  {
    type metadata accessor for iMessageApp();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3048);
  }

  return result;
}

uint64_t type metadata accessor for iMessageAppsRegistry()
{
  result = qword_1000B6D40;
  if (!qword_1000B6D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100069E44()
{
  sub_100069EFC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100069EFC()
{
  if (!qword_1000B3FD0)
  {
    sub_10000B8F8(&qword_1000B3DA0);
    v0 = sub_10007C8F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B3FD0);
    }
  }
}

unint64_t sub_100069F60()
{
  result = qword_1000B41B0;
  if (!qword_1000B41B0)
  {
    sub_10000B8F8(&qword_1000B3DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B41B0);
  }

  return result;
}

Swift::Int sub_100069FC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006D40(&qword_1000B41C8);
    v3 = sub_10007DC90();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_10007DF00();

      sub_10007D820();
      result = sub_10007DF10();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_10007DE50();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_10006A1D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10006A234(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10006A2C8;
}

void sub_10006A2C8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_10006A384(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_10006A3D0(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10006A460;
}

void sub_10006A460(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void sub_10006A514(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_10006A560(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10006A5F0;
}

void sub_10006A5F0(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id sub_10006A66C@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  v4 = *(v1 + 64);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v4;
  *(a1 + 32) = v3;

  return v5;
}

void sub_10006A6CC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v4;
  *(v1 + 80) = *(a1 + 32);
}