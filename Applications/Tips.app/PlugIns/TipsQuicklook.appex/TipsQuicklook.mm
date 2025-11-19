id sub_1000018CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PreviewViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000019DC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_10000773C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id sub_100001A40()
{
  v1 = [objc_opt_self() sharedInstance];
  v7 = 0;
  v2 = [v1 setCategory:AVAudioSessionCategoryAmbient error:&v7];

  if (v2)
  {
    v3 = v7;
  }

  else
  {
    v4 = v7;
    sub_10000774C();

    swift_willThrow();
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for PreviewViewController();
  return objc_msgSendSuper2(&v6, "viewDidLoad");
}

__n128 sub_100001D48(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001D58(uint64_t a1, int a2)
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

uint64_t sub_100001D78(uint64_t result, int a2, int a3)
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
  if (!qword_100010790)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100010790);
    }
  }
}

void sub_100001DF0(uint64_t a1, uint64_t a2, char *a3, void (**a4)(void, void))
{
  v8 = objc_allocWithZone(sub_100007C9C());

  v9 = sub_100007C5C();
  if (v9)
  {
    v49 = v9;
    sub_100007C6C();
    if (v10)
    {
      sub_100007C8C();
      sub_100007C7C();
      if (!v11)
      {
        sub_100007CDC();
      }

      v12 = sub_100007CCC();

      v13 = sub_100007CCC();

      v14 = [objc_opt_self() helpViewControllerWithIdentifier:v12 version:v13];

      if (!v14)
      {

        a4[2](a4, 0);
        v47 = v49;
LABEL_21:

        return;
      }

      v15 = *&a3[OBJC_IVAR____TtC13TipsQuicklook21PreviewViewController_helpViewController];
      *&a3[OBJC_IVAR____TtC13TipsQuicklook21PreviewViewController_helpViewController] = v14;
      v48 = v14;

      [v48 setShouldDisallowOffSiteRedirects:1];
      [v48 setDisplayHelpTopicsOnly:1];
      v16 = sub_100007CCC();
      [v48 setSelectedHelpTopicID:v16];

      [v48 setShowTopicViewOnLoad:1];
      v17 = [v48 view];
      if (!v17)
      {

        goto LABEL_20;
      }

      v18 = v17;
      v19 = [a3 view];
      if (v19)
      {
        v20 = v19;
        [v19 addSubview:v18];

        [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
        v21 = [a3 view];
        if (v21)
        {
          v22 = v21;
          sub_100002A6C(&qword_1000107A0, &qword_1000083E0);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_100008380;
          v24 = [v18 leadingAnchor];
          v25 = [a3 view];
          if (v25)
          {
            v26 = v25;
            v27 = [v25 leadingAnchor];

            v28 = [v24 constraintEqualToAnchor:v27];
            *(v23 + 32) = v28;
            v29 = [v18 topAnchor];
            v30 = [a3 view];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 topAnchor];

              v33 = [v29 constraintEqualToAnchor:v32];
              *(v23 + 40) = v33;
              v34 = [v18 trailingAnchor];
              v35 = [a3 view];
              if (v35)
              {
                v36 = v35;
                v37 = [v35 trailingAnchor];

                v38 = [v34 constraintEqualToAnchor:v37];
                *(v23 + 48) = v38;
                v39 = [v18 bottomAnchor];
                v40 = [a3 view];
                if (v40)
                {
                  v41 = v40;

                  v42 = [v41 bottomAnchor];

                  v43 = [v39 constraintEqualToAnchor:v42];
                  *(v23 + 56) = v43;
                  sub_100002AB4();
                  isa = sub_100007CFC().super.isa;

                  [v22 addConstraints:isa];

                  [v48 didMoveToParentViewController:a3];
LABEL_20:
                  a4[2](a4, 0);

                  v47 = v48;
                  goto LABEL_21;
                }

LABEL_29:
                _Block_release(a4);
                __break(1u);
                return;
              }

LABEL_28:
              _Block_release(a4);
              __break(1u);
              goto LABEL_29;
            }

LABEL_27:
            _Block_release(a4);
            __break(1u);
            goto LABEL_28;
          }

LABEL_26:
          _Block_release(a4);
          __break(1u);
          goto LABEL_27;
        }
      }

      else
      {
        _Block_release(a4);
        __break(1u);
      }

      _Block_release(a4);
      __break(1u);
      goto LABEL_26;
    }
  }

  sub_100002A18();
  swift_allocError();
  *v45 = a1;
  v45[1] = a2;

  v46 = sub_10000773C();
  (a4)[2](a4, v46);
}

void sub_1000023D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TipPreviewView();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  v10 = &v8[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_contentSizeUpdatedHandler];
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = sub_100002B38;
  v10[1] = v9;
  v13 = v4;
  sub_100002B48(v11);
  v14 = v8;
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [v13 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = v15;
  [v15 addSubview:v14];

  v17 = [v13 view];
  if (!v17)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v18 = v17;
  v41 = a3;
  sub_100002A6C(&qword_1000107A0, &qword_1000083E0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100008380;
  v20 = [v14 leadingAnchor];
  v21 = [v13 view];
  if (!v21)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v22 = v21;
  v23 = [v21 leadingAnchor];

  v24 = [v20 constraintEqualToAnchor:v23];
  *(v19 + 32) = v24;
  v25 = [v14 topAnchor];
  v26 = [v13 view];
  if (!v26)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v27 = v26;
  v28 = [v26 topAnchor];

  v29 = [v25 constraintEqualToAnchor:v28];
  *(v19 + 40) = v29;
  v30 = [v14 trailingAnchor];
  v31 = [v13 view];
  if (!v31)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v32 = v31;
  v33 = [v31 trailingAnchor];

  v34 = [v30 constraintEqualToAnchor:v33];
  *(v19 + 48) = v34;
  v35 = [v14 bottomAnchor];

  v36 = [v13 view];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 bottomAnchor];

    v39 = [v35 constraintEqualToAnchor:v38];
    *(v19 + 56) = v39;
    sub_100002AB4();
    isa = sub_100007CFC().super.isa;

    [v18 addConstraints:isa];

    sub_100004668(a1, a2, v41, a4);
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1000027A4(uint64_t a1, void *a2, uint64_t a3, void *a4, char *a5, void *a6)
{
  v19 = a5;
  v18 = sub_100007C3C();
  v11 = *(v18 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v18);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  _Block_copy(a6);
  sub_100007C2C();
  v16 = 0xE000000000000000;
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_100007D5C(64);
  v22._object = 0x8000000100008730;
  v22._countAndFlagsBits = 0xD00000000000002DLL;
  sub_100007CEC(v22);
  v23._countAndFlagsBits = a1;
  v23._object = a2;
  sub_100007CEC(v23);
  v24._countAndFlagsBits = 0x537972657571202CLL;
  v24._object = 0xEF203A676E697274;
  sub_100007CEC(v24);
  if (a4)
  {
    v16 = a4;
  }

  else
  {
    a3 = 0;
  }

  v25._countAndFlagsBits = a3;
  v25._object = v16;
  sub_100007CEC(v25);

  sub_100007CAC();

  (*(v11 + 8))(v14, v18);
  sub_100007C9C();
  if (sub_100007C4C())
  {
    _Block_copy(a6);
    sub_100001DF0(a1, a2, v19, a6);
    _Block_release(a6);
  }

  else
  {
    sub_1000023D4(a1, a2, sub_100002A10, v15);
  }
}

uint64_t sub_1000029D8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100002A18()
{
  result = qword_100010798;
  if (!qword_100010798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010798);
  }

  return result;
}

uint64_t sub_100002A6C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100002AB4()
{
  result = qword_1000107A8;
  if (!qword_1000107A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000107A8);
  }

  return result;
}

uint64_t sub_100002B00()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002B48(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100002B58(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100002B70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002BC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_100002C24(void *result, int a2)
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

uint64_t TipPreviewView.contentSizeUpdatedHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_contentSizeUpdatedHandler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_100002CCC(v3);
  return v3;
}

uint64_t sub_100002CCC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t TipPreviewView.contentSizeUpdatedHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_contentSizeUpdatedHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_100002B48(v6);
}

void sub_100002DAC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_currentTipIdentifier);
    v6 = *(Strong + OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_currentTipIdentifier + 8);
    v8 = Strong;

    if (v6)
    {
      if (v7 == a2 && v6 == a3)
      {
      }

      else
      {
        v10 = sub_100007D7C();

        if ((v10 & 1) == 0)
        {
          return;
        }
      }

      swift_beginAccess();
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v12 = v11;
        sub_100002EA8(a2, a3);
      }
    }
  }
}

uint64_t sub_100002EA8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_100007C3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_tipsContentModel;
  v12 = *&v2[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_tipsContentModel];
  v13 = sub_1000077DC();

  if (v13)
  {
    v14 = [v3 traitCollection];
    [v14 userInterfaceStyle];

    v15 = *&v3[v11];
    v16 = v13;
    sub_1000077AC();

    v17 = *&v3[v11];
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = v18;
    v20 = v17;

    sub_1000077CC();
  }

  else
  {
    sub_100007C2C();
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_100007D5C(30);

    v22 = 0xD00000000000001CLL;
    v23 = 0x8000000100008920;
    v25._countAndFlagsBits = a1;
    v25._object = a2;
    sub_100007CEC(v25);
    sub_100007CBC();

    (*(v7 + 8))(v10, v6);
    return sub_100003648(a1, a2, 0);
  }
}

uint64_t sub_100003154(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v27 = a5;
  v31 = a3;
  v8 = sub_100007BFC();
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007C1C();
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100007C3C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    sub_100007C2C();
    aBlock = 0;
    v34 = 0xE000000000000000;
    sub_100007D5C(36);
    v39._object = 0x8000000100008950;
    v39._countAndFlagsBits = 0xD00000000000001ELL;
    sub_100007CEC(v39);
    v40._countAndFlagsBits = v31;
    v40._object = a4;
    sub_100007CEC(v40);
    v41._countAndFlagsBits = 8250;
    v41._object = 0xE200000000000000;
    sub_100007CEC(v41);
    v32 = a2;
    sub_100002A6C(&qword_1000108A8, &qword_100008510);
    sub_100007D6C();
    sub_100007CBC();

    (*(v17 + 8))(v20, v16);
  }

  sub_100004B48(0, &qword_100010888, OS_dispatch_queue_ptr);
  v21 = sub_100007D0C();
  v22 = swift_allocObject();
  v23 = v31;
  v22[2] = v27;
  v22[3] = v23;
  v22[4] = a4;
  v22[5] = a1;
  v37 = sub_100004BD8;
  v38 = v22;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100003604;
  v36 = &unk_10000CAF0;
  v24 = _Block_copy(&aBlock);
  v25 = a1;

  sub_100007C0C();
  aBlock = &_swiftEmptyArrayStorage;
  sub_100004BFC();
  sub_100002A6C(&qword_100010898, &qword_100008508);
  sub_100004D48(&qword_1000108A0, &qword_100010898, &qword_100008508);
  sub_100007D4C();
  sub_100007D1C();
  _Block_release(v24);

  (*(v30 + 8))(v11, v8);
  return (*(v28 + 8))(v15, v29);
}

void sub_10000358C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100003648(a2, a3, a4);
  }
}

uint64_t sub_100003604(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100003648(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_100007C3C();
  v79 = *(v8 - 8);
  v80 = v8;
  v9 = *(v79 + 64);
  (__chkstk_darwin)();
  v78 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(*(sub_100002A6C(&qword_100010870, &qword_1000084F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v13 = &v77 - v12;
  v14 = type metadata accessor for SingleTipView();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = (__chkstk_darwin)();
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v77 - v20;
  v22 = OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_hostingView;
  [*&v4[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_hostingView] removeFromSuperview];
  sub_100003D68(a1, a2, a3, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100004928(v13);
    sub_100007A0C();
    v23 = sub_100007AFC();
    v25 = v24;
    v27 = v26;
    sub_100007A9C();
    v28 = sub_100007AEC();
    v30 = v29;
    v32 = v31;
    v77 = v22;

    sub_100004990(v23, v25, v27 & 1);

    sub_100007B8C();
    v33 = sub_100007ADC();
    v35 = v34;
    v37 = v36;
    v39 = v38;

    sub_100004990(v28, v30, v32 & 1);
    v40 = v77;

    v81 = v33;
    v82 = v35;
    v83 = v37 & 1;
    v84 = v39;
    v41 = objc_allocWithZone(sub_100002A6C(&qword_100010878, &qword_1000084F8));
    v42 = sub_1000079CC();
    v43 = *&v4[v40];
    *&v4[v40] = v42;

    v44 = *&v4[v40];
    if (!v44)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  sub_1000049A0(v13, v21);
  sub_100004A04(v21, v19);
  v45 = objc_allocWithZone(sub_100002A6C(&qword_100010880, &qword_100008500));
  v46 = sub_1000079CC();
  v47 = *&v4[v22];
  *&v4[v22] = v46;

  v48 = objc_opt_self();
  if ([v48 isPhoneUI])
  {
    v49 = &v4[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_contentSizeUpdatedHandler];
    swift_beginAccess();
    v50 = *v49;
    if (!*v49)
    {
      goto LABEL_11;
    }

    v51 = *(v49 + 1);

    v53.n128_u64[0] = 0x407AC00000000000;
    v54 = 738.0;
    goto LABEL_10;
  }

  if ([v48 isPadUI])
  {
    v55 = &v4[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_contentSizeUpdatedHandler];
    swift_beginAccess();
    v50 = *v55;
    if (*v55)
    {
      v56 = *(v55 + 1);

      v53.n128_u64[0] = 0x408F400000000000;
      v54 = 1200.0;
LABEL_10:
      v50(v52, v53, v54);
      sub_100002B48(v50);
    }
  }

LABEL_11:
  sub_100004A68(v21);
  v44 = *&v4[v22];
  if (v44)
  {
LABEL_12:
    v57 = v44;
    [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 addSubview:v57];
    sub_100002A6C(&qword_1000107A0, &qword_1000083E0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_100008380;
    v59 = [v57 leadingAnchor];
    v60 = [v4 leadingAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];

    *(v58 + 32) = v61;
    v62 = [v57 topAnchor];
    v63 = [v4 topAnchor];
    v64 = [v62 constraintEqualToAnchor:v63];

    *(v58 + 40) = v64;
    v65 = [v57 trailingAnchor];
    v66 = [v4 trailingAnchor];
    v67 = [v65 constraintEqualToAnchor:v66];

    *(v58 + 48) = v67;
    v68 = [v57 bottomAnchor];
    v69 = [v4 bottomAnchor];
    v70 = [v68 constraintEqualToAnchor:v69];

    *(v58 + 56) = v70;
    sub_100004B48(0, &qword_1000107A8, NSLayoutConstraint_ptr);
    isa = sub_100007CFC().super.isa;

    [v4 addConstraints:isa];
  }

LABEL_13:
  v72 = v78;
  sub_100007C2C();
  sub_100007CAC();
  (*(v79 + 8))(v72, v80);
  v73 = &v4[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_completionHandler];
  v74 = *&v4[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_completionHandler];
  v75 = *(v73 + 1);

  v74(0);
}

uint64_t sub_100003D68@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v47 = a3;
  v9 = sub_100007C3C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_tipsContentModel;
  v15 = *(v4 + OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_tipsContentModel);
  v16 = sub_10000778C();

  if (!v16)
  {
    goto LABEL_9;
  }

  v46 = v16;
  v17 = *(v5 + v14);
  v18 = sub_1000077DC();

  v45 = v18;
  if (!v18)
  {

LABEL_9:
    sub_100007C2C();
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_100007D5C(44);

    v49 = 0xD00000000000002ALL;
    v50 = 0x8000000100008860;
    v51._countAndFlagsBits = a1;
    v51._object = a2;
    sub_100007CEC(v51);
    sub_100007CBC();

    (*(v10 + 8))(v13, v9);
    v30 = type metadata accessor for SingleTipView();
    return (*(*(v30 - 8) + 56))(a4, 1, 1, v30);
  }

  v19 = *(v5 + v14);
  v20 = sub_10000777C();

  if (v20 && (v21 = [v20 tip], v20, v22 = objc_msgSend(v21, "compact"), v21, v22))
  {
    v23 = [v22 width];
    v24 = [v23 integerValue];

    v25 = [v22 height];
    v26 = [v25 integerValue];

    v27 = v24;
    v28 = v26;
  }

  else
  {
    v29 = objc_opt_self();
    if ([v29 isPadUI])
    {
      v28 = 1500.0;
      v27 = 2500.0;
    }

    else
    {
      v32 = [v29 isMacUI];
      if (v32)
      {
        v27 = 3200.0;
      }

      else
      {
        v27 = 0.0;
      }

      if (v32)
      {
        v28 = 2000.0;
      }

      else
      {
        v28 = 0.0;
      }
    }
  }

  v33 = v46;
  LOBYTE(v48) = 0;
  sub_100007B9C();
  v34 = v50;
  *(a4 + 16) = v49;
  *(a4 + 24) = v34;
  v35 = type metadata accessor for SingleTipView();
  v36 = v35[6];
  *(a4 + v36) = swift_getKeyPath();
  sub_100002A6C(&qword_100010868, &qword_1000084E8);
  swift_storeEnumTagMultiPayload();
  *(a4 + v35[7]) = 0x4040000000000000;
  sub_1000077FC();
  v37 = v33;
  v38 = v45;
  sub_1000077EC();
  v39 = sub_10000789C();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v42 = v47;
  v48 = sub_10000783C();
  sub_100007B9C();

  v43 = v50;
  *a4 = v49;
  *(a4 + 8) = v43;
  v44 = (a4 + v35[8]);
  *v44 = v27;
  v44[1] = v28;
  return (*(*(v35 - 1) + 56))(a4, 0, 1, v35);
}

id TipPreviewView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id TipPreviewView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_tipsContentModel;
  sub_1000077FC();
  *&v4[v9] = sub_1000077EC();
  v10 = &v4[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_currentTipIdentifier];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_hostingView] = 0;
  *&v4[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_cancellables] = &_swiftEmptySetSingleton;
  v11 = &v4[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_completionHandler];
  *v11 = nullsub_2;
  *(v11 + 1) = 0;
  v12 = &v4[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_contentSizeUpdatedHandler];
  *v12 = nullsub_2;
  *(v12 + 1) = 0;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for TipPreviewView();
  return objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
}

id TipPreviewView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id TipPreviewView.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_tipsContentModel;
  sub_1000077FC();
  *&v1[v3] = sub_1000077EC();
  v4 = &v1[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_currentTipIdentifier];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_hostingView] = 0;
  *&v1[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_cancellables] = &_swiftEmptySetSingleton;
  v5 = &v1[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_completionHandler];
  *v5 = nullsub_2;
  *(v5 + 1) = 0;
  v6 = &v1[OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_contentSizeUpdatedHandler];
  *v6 = nullsub_2;
  *(v6 + 1) = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for TipPreviewView();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id TipPreviewView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipPreviewView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000045A0(uint64_t a1)
{
  v2 = sub_10000799C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000079FC();
}

void sub_100004668(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = (v5 + OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_currentTipIdentifier);
  v11 = *(v5 + OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_currentTipIdentifier + 8);
  *v10 = a1;
  v10[1] = a2;

  v12 = (v5 + OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_completionHandler);
  v13 = *(v5 + OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_completionHandler + 8);
  *v12 = a3;
  v12[1] = a4;

  v14 = OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_cancellables;
  swift_beginAccess();
  v15 = *(v5 + v14);
  *(v5 + v14) = &_swiftEmptySetSingleton;

  v16 = OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_tipsContentModel;
  v17 = *(v5 + OBJC_IVAR____TtC13TipsQuicklook14TipPreviewView_tipsContentModel);
  sub_1000077BC();

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = a1;
  v19[4] = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_100004CDC;
  *(v20 + 24) = v19;

  sub_100002A6C(&qword_1000108B0, &qword_100008518);
  sub_100004D48(&qword_1000108B8, &qword_1000108B0, &qword_100008518);
  sub_10000797C();

  swift_beginAccess();
  sub_10000796C();
  swift_endAccess();

  v21 = *(v5 + v16);
  v22 = sub_1000077DC();

  if (v22)
  {

    sub_100002EA8(a1, a2);
  }

  else
  {
    v23 = *(v5 + v16);
    sub_10000776C();
  }
}

uint64_t sub_100004928(uint64_t a1)
{
  v2 = sub_100002A6C(&qword_100010870, &qword_1000084F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004990(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000049A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleTipView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleTipView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004A68(uint64_t a1)
{
  v2 = type metadata accessor for SingleTipView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004AC4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004AFC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100004B48(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100004B90()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100004BE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100004BFC()
{
  result = qword_100010890;
  if (!qword_100010890)
  {
    sub_100007BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010890);
  }

  return result;
}

uint64_t sub_100004C54(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100004C9C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100004CE8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100004D20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100004D48(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004C54(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004DA4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002A6C(&qword_1000108C0, &qword_100008520);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100004E74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100002A6C(&qword_1000108C0, &qword_100008520);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SingleTipView()
{
  result = qword_100010920;
  if (!qword_100010920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100004F70()
{
  sub_1000050DC(319, &qword_100010930, &type metadata accessor for TipViewModel, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_10000508C();
    if (v1 <= 0x3F)
    {
      sub_1000050DC(319, &unk_100010940, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGSize();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10000508C()
{
  if (!qword_100010938)
  {
    v0 = sub_100007BCC();
    if (!v1)
    {
      atomic_store(v0, &qword_100010938);
    }
  }
}

void sub_1000050DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10000515C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = a1;
  v4 = sub_10000795C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002A6C(&qword_100010A30, &qword_1000085F8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v26 - v11;
  v27 = sub_10000794C();
  v13 = *(v27 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v27);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000079BC();
  v18 = v17;
  v19 = type metadata accessor for SingleTipView();
  v20 = v18 - (*(a1 + *(v19 + 28)) + *(a1 + *(v19 + 28)));
  sub_1000079BC();
  sub_100004B48(0, &qword_100010A38, UIFont_ptr);
  sub_100007D2C();
  v21 = sub_10000775C();
  v31 = 0u;
  v32 = 0u;
  v33 = 0;
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  sub_10000791C();
  (*(v5 + 104))(v8, enum case for ConstellationContentParagraphStyle.newline(_:), v4);
  sub_10000793C();
  *a2 = sub_100007A3C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v22 = sub_100002A6C(&qword_100010A40, &qword_100008600);
  sub_1000054D0(v26, v16, a2 + *(v22 + 44));
  sub_1000079BC();
  sub_100007BEC();
  sub_1000079AC();
  v23 = (a2 + *(sub_100002A6C(&qword_100010A48, &qword_100008608) + 36));
  v24 = v29;
  *v23 = v28;
  v23[1] = v24;
  v23[2] = v30;
  return (*(v13 + 8))(v16, v27);
}

uint64_t sub_1000054D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100002A6C(&qword_100010A50, &qword_100008610);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v59 - v8;
  v10 = sub_100002A6C(&qword_100010A58, &qword_100008618);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = v59 - v13;
  v15 = sub_100002A6C(&qword_100010A60, &qword_100008620);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = v59 - v18;
  v20 = sub_100002A6C(&qword_100010A68, &qword_100008628);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = v59 - v23;
  *v9 = sub_100007A4C();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v25 = sub_100002A6C(&qword_100010A70, &qword_100008630);
  sub_10000585C(a1, a2, &v9[*(v25 + 44)]);
  sub_100007BEC();
  sub_1000079DC();
  sub_100007430(v9, v14, &qword_100010A50, &qword_100008610);
  v26 = &v14[*(v11 + 44)];
  v27 = v59[5];
  *(v26 + 4) = v59[4];
  *(v26 + 5) = v27;
  *(v26 + 6) = v59[6];
  v28 = v59[1];
  *v26 = v59[0];
  *(v26 + 1) = v28;
  v29 = v59[3];
  *(v26 + 2) = v59[2];
  *(v26 + 3) = v29;
  LOBYTE(v11) = sub_100007A6C();
  v30 = *(a1 + *(type metadata accessor for SingleTipView() + 28));
  sub_10000798C();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_100007430(v14, v19, &qword_100010A58, &qword_100008618);
  v39 = &v19[*(v16 + 44)];
  *v39 = v11;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  LOBYTE(a1) = sub_100007A7C();
  sub_10000798C();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_100007430(v19, v24, &qword_100010A60, &qword_100008620);
  v48 = &v24[*(v21 + 44)];
  *v48 = a1;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  LOBYTE(a1) = sub_100007A8C();
  sub_10000798C();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  sub_100007430(v24, a3, &qword_100010A68, &qword_100008628);
  result = sub_100002A6C(&qword_100010A78, &qword_100008638);
  v58 = a3 + *(result + 36);
  *v58 = a1;
  *(v58 + 8) = v50;
  *(v58 + 16) = v52;
  *(v58 + 24) = v54;
  *(v58 + 32) = v56;
  *(v58 + 40) = 0;
  return result;
}

uint64_t sub_10000585C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v86 = a3;
  v4 = sub_100002A6C(&qword_100010A80, &qword_100008640);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v82 = &v70 - v6;
  v7 = sub_100002A6C(&qword_100010A88, &qword_100008648);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v79 = &v70 - v9;
  v10 = sub_100002A6C(&qword_100010A90, &qword_100008650);
  v11 = *(v10 - 8);
  v84 = v10 - 8;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v85 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v81 = &v70 - v15;
  v16 = sub_100007A2C();
  v77 = *(v16 - 8);
  v78 = v16;
  v17 = *(v77 + 64);
  __chkstk_darwin(v16);
  v76 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_100002A6C(&qword_100010A98, &qword_100008658);
  v19 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v71 = &v70 - v20;
  v21 = sub_100002A6C(&qword_100010AA0, &qword_100008660);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v80 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v87 = &v70 - v25;
  v74 = *a1;
  v73 = a1[1];
  v88 = v74;
  v89 = v73;
  v72 = sub_100002A6C(&qword_100010998, &qword_1000085A8);
  sub_100007BAC();
  v26 = sub_10000787C();
  v28 = v27;

  v88 = v26;
  v89 = v28;
  sub_100007498();
  v29 = sub_100007B0C();
  v31 = v30;
  v33 = v32;
  sub_100004B48(0, &qword_100010A38, UIFont_ptr);
  sub_100007D2C();
  sub_100007ABC();
  v34 = sub_100007AEC();
  v36 = v35;
  v38 = v37;

  sub_100004990(v29, v31, v33 & 1);

  sub_100007AAC();
  v39 = sub_100007ACC();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_100004990(v34, v36, v38 & 1);

  v88 = v39;
  v89 = v41;
  v90 = v43 & 1;
  v91 = v45;
  sub_100007D3C();
  v46 = v71;
  sub_100007B5C();
  sub_100004990(v39, v41, v43 & 1);

  LOBYTE(v39) = sub_100007A7C();
  sub_10000798C();
  v47 = v46 + *(v75 + 36);
  *v47 = v39;
  *(v47 + 8) = v48;
  *(v47 + 16) = v49;
  *(v47 + 24) = v50;
  *(v47 + 32) = v51;
  *(v47 + 40) = 0;
  v52 = v76;
  sub_100007A1C();
  sub_1000074EC();
  sub_100007B6C();
  (*(v77 + 8))(v52, v78);
  sub_100007680(v46, &qword_100010A98, &qword_100008658);
  v53 = v74;
  v54 = v73;
  v88 = v74;
  v89 = v73;
  sub_100007BAC();
  v78 = sub_10000786C();

  v88 = v53;
  v89 = v54;
  sub_100007BAC();
  v77 = sub_10000788C();

  v88 = v53;
  v89 = v54;
  sub_100007BAC();
  sub_10000784C();

  v88 = v53;
  v89 = v54;
  sub_100007BAC();
  sub_10000785C();

  v55 = sub_10000794C();
  v56 = *(v55 - 8);
  v57 = v82;
  (*(v56 + 16))(v82, v83, v55);
  (*(v56 + 56))(v57, 0, 1, v55);
  v88 = v53;
  v89 = v54;
  sub_100007BAC();
  v58 = v81;
  sub_10000792C();
  LOBYTE(v55) = sub_100007A7C();
  sub_10000798C();
  v59 = v58 + *(v84 + 44);
  *v59 = v55;
  *(v59 + 8) = v60;
  *(v59 + 16) = v61;
  *(v59 + 24) = v62;
  *(v59 + 32) = v63;
  *(v59 + 40) = 0;
  v64 = v87;
  v65 = v80;
  sub_1000075A8(v87, v80, &qword_100010AA0, &qword_100008660);
  v66 = v85;
  sub_100007610(v58, v85);
  v67 = v86;
  sub_1000075A8(v65, v86, &qword_100010AA0, &qword_100008660);
  v68 = sub_100002A6C(&qword_100010AB8, &qword_100008668);
  sub_100007610(v66, v67 + *(v68 + 48));
  sub_100007680(v58, &qword_100010A90, &qword_100008650);
  sub_100007680(v64, &qword_100010AA0, &qword_100008660);
  sub_100007680(v66, &qword_100010A90, &qword_100008650);
  return sub_100007680(v65, &qword_100010AA0, &qword_100008660);
}

uint64_t sub_100005FDC@<X0>(char *a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for SingleTipView();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_100002A6C(&qword_100010A08, &qword_1000085E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v28 - v6;
  v33 = sub_100002A6C(&qword_100010A10, &qword_1000085E8);
  v8 = *(v33 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v33);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v15 = v1[1];
  v40 = *v1;
  v41 = v15;
  sub_100002A6C(&qword_100010998, &qword_1000085A8);
  sub_100007BAC();
  sub_10000780C();

  LOBYTE(v37) = 0;
  sub_100007BDC();
  sub_1000078AC();
  sub_100007BEC();
  sub_1000079AC();
  v16 = &v7[*(v4 + 36)];
  v17 = v38;
  *v16 = v37;
  *(v16 + 1) = v17;
  *(v16 + 2) = v39;
  sub_100007174();
  v31 = v14;
  sub_100007B1C();
  sub_100007680(v7, &qword_100010A08, &qword_1000085E0);
  sub_100004A04(v1, &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v19 = swift_allocObject();
  sub_1000049A0(&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  sub_100007BEC();
  sub_1000079AC();
  v32 = v40;
  v30 = v42;
  v20 = v45;
  v29 = v44;
  v36 = v41;
  v35 = v43;
  v21 = v8;
  v22 = *(v8 + 16);
  v23 = v33;
  v22(v12, v14, v33);
  LOBYTE(v3) = v36;
  LOBYTE(v18) = v35;
  v24 = v34;
  v22(v34, v12, v23);
  v25 = &v24[*(sub_100002A6C(&qword_100010A28, &qword_1000085F0) + 48)];
  *v25 = sub_100007384;
  *(v25 + 1) = v19;
  *(v25 + 2) = v32;
  v25[24] = v3;
  *(v25 + 4) = v30;
  v25[40] = v18;
  *(v25 + 6) = v29;
  *(v25 + 7) = v20;
  v26 = *(v21 + 8);

  v26(v31, v23);

  return (v26)(v12, v23);
}

uint64_t sub_100006434@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SingleTipView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = v9;
  v11 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002A6C(&qword_100010980, &qword_100008590);
  v31[0] = v12;
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v31 - v14;
  *v15 = sub_100007A3C();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v16 = &v15[*(sub_100002A6C(&qword_100010988, &qword_100008598) + 44)];
  sub_100006800(a1, a2);
  sub_100004A04(a2, v11);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_1000049A0(v11, v18 + v17);
  v19 = &v15[*(sub_100002A6C(&qword_100010990, &qword_1000085A0) + 36)];
  *v19 = sub_10000772C;
  *(v19 + 1) = v18;
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  sub_100004A04(a2, v11);
  v34 = v10;
  v20 = swift_allocObject();
  sub_1000049A0(v11, v20 + v17);
  v21 = &v15[*(v12 + 36)];
  *v21 = 0;
  *(v21 + 1) = 0;
  *(v21 + 2) = sub_100006E74;
  *(v21 + 3) = v20;
  v22 = *a2;
  v32 = a2[1];
  v33 = v22;
  v35 = v22;
  v36 = v32;
  v31[1] = sub_100002A6C(&qword_100010998, &qword_1000085A8);
  sub_100007BAC();
  v23 = sub_10000781C();

  v24 = sub_10000779C();

  v35 = v24;
  sub_100004A04(a2, v11);
  v25 = swift_allocObject();
  sub_1000049A0(v11, v25 + v17);
  sub_100002A6C(&qword_1000109A0, &qword_1000085B0);
  sub_100006ED4();
  sub_100007018();
  sub_100007B7C();

  sub_100007680(v15, &qword_100010980, &qword_100008590);
  v35 = v33;
  v36 = v32;
  sub_100007BAC();
  sub_10000780C();

  v26 = sub_100002A6C(&qword_1000109E0, &qword_1000085C0);
  v27 = a3 + *(v26 + 52);
  sub_1000078FC();

  sub_100004A04(a2, v11);
  v28 = swift_allocObject();
  result = sub_1000049A0(v11, v28 + v17);
  v30 = (a3 + *(v26 + 56));
  *v30 = sub_100007104;
  v30[1] = v28;
  return result;
}

uint64_t sub_100006800(uint64_t a1, uint64_t a2)
{
  v3 = sub_100002A6C(&qword_1000109F0, &qword_1000085D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v20 - v5;
  v7 = sub_100002A6C(&qword_1000109F8, &qword_1000085D8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  sub_1000079BC();
  v12 = v11;
  sub_1000079BC();
  sub_1000079BC();
  v14 = v13;
  v15 = (a2 + *(type metadata accessor for SingleTipView() + 32));
  v16 = v14 * (v15[1] / *v15);
  sub_1000079BC();
  if (v12 >= v17 || (sub_1000079BC(), v18 - v16 >= v12))
  {
    sub_1000079BC();
    sub_100005FDC(v10);
  }

  else
  {
    sub_1000079BC();
    sub_1000079BC();
    sub_1000079BC();
    sub_1000079BC();
    sub_100005FDC(v10);
  }

  sub_1000075A8(v10, v6, &qword_1000109F8, &qword_1000085D8);
  swift_storeEnumTagMultiPayload();
  sub_100004D48(&qword_100010A00, &qword_1000109F8, &qword_1000085D8);
  sub_100007A5C();
  return sub_100007680(v10, &qword_1000109F8, &qword_1000085D8);
}

uint64_t sub_100006A50()
{
  v1 = *v0;
  v2 = v0[1];
  sub_100002A6C(&qword_100010998, &qword_1000085A8);
  sub_100007BAC();
  v3 = sub_10000782C();

  v4 = *(v0 + 16);
  v5 = v0[3];
  sub_100002A6C(&qword_1000109E8, &qword_1000085C8);
  sub_100007BBC();
  sub_100007BAC();
  sub_100007BAC();
  sub_10000780C();

  if ((v3 & 1) == 1)
  {
    sub_1000078DC();

    sub_100007BAC();
    sub_10000780C();

    sub_10000790C();
  }

  else
  {
    sub_1000078EC();

    sub_100007BAC();
    sub_10000780C();

    sub_1000078CC();
  }
}

id sub_100006C10(void **a1, uint64_t a2)
{
  v2 = *a1;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_100002A6C(&qword_1000109E8, &qword_1000085C8);
  result = sub_100007BAC();
  if (v4 == 1)
  {
    return [v2 play];
  }

  return result;
}

uint64_t sub_100006CA8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007C3C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007C2C();
  sub_100007CAC();
  (*(v9 + 8))(v12, v8);
  sub_100004A04(v3, v7);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  result = sub_1000049A0(v7, v14 + v13);
  *a2 = sub_100006E5C;
  a2[1] = v14;
  return result;
}

uint64_t sub_100006E78()
{
  v1 = *(type metadata accessor for SingleTipView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_100006A50();
}

unint64_t sub_100006ED4()
{
  result = qword_1000109A8;
  if (!qword_1000109A8)
  {
    sub_100004C54(&qword_100010980, &qword_100008590);
    sub_100006F60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000109A8);
  }

  return result;
}

unint64_t sub_100006F60()
{
  result = qword_1000109B0;
  if (!qword_1000109B0)
  {
    sub_100004C54(&qword_100010990, &qword_1000085A0);
    sub_100004D48(&qword_1000109B8, &qword_1000109C0, &qword_1000085B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000109B0);
  }

  return result;
}

unint64_t sub_100007018()
{
  result = qword_1000109C8;
  if (!qword_1000109C8)
  {
    sub_100004C54(&qword_1000109A0, &qword_1000085B0);
    sub_10000709C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000109C8);
  }

  return result;
}

unint64_t sub_10000709C()
{
  result = qword_1000109D0;
  if (!qword_1000109D0)
  {
    sub_100004B48(255, &qword_1000109D8, TPSTip_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000109D0);
  }

  return result;
}

id sub_100007104(void **a1)
{
  v3 = *(type metadata accessor for SingleTipView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100006C10(a1, v4);
}

unint64_t sub_100007174()
{
  result = qword_100010A18;
  if (!qword_100010A18)
  {
    sub_100004C54(&qword_100010A08, &qword_1000085E0);
    sub_100007200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010A18);
  }

  return result;
}

unint64_t sub_100007200()
{
  result = qword_100010A20;
  if (!qword_100010A20)
  {
    sub_1000078BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010A20);
  }

  return result;
}

uint64_t sub_100007258()
{
  v1 = (type metadata accessor for SingleTipView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = v1[8];
  sub_100002A6C(&qword_100010868, &qword_1000084E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_10000799C();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000739C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for SingleTipView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_100007430(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002A6C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_100007498()
{
  result = qword_100010AA8;
  if (!qword_100010AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010AA8);
  }

  return result;
}

unint64_t sub_1000074EC()
{
  result = qword_100010AB0;
  if (!qword_100010AB0)
  {
    sub_100004C54(&qword_100010A98, &qword_100008658);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010AB0);
  }

  return result;
}

uint64_t sub_1000075A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002A6C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100007610(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A6C(&qword_100010A90, &qword_100008650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007680(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002A6C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}