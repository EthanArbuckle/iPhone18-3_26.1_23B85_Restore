uint64_t sub_100001BEC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for FamilyFetcher();
  result = sub_10001EFD0();
  a1[3] = v2;
  a1[4] = &off_1000318A8;
  *a1 = result;
  return result;
}

uint64_t sub_100001C40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100001CB0()
{
  v1 = (v0 + OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_recipientHandleFromConversation);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_100001D08(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_recipientHandleFromConversation);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_100001DFC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001ED8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_100001F68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_100008798(v4 + v8, a4, a2, a3);
}

uint64_t sub_100001FF0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_100002064(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_100002064(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001DFC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void *sub_100002134()
{
  v1 = OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_bubbleViewControler;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100002180(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_bubbleViewControler;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10000224C()
{
  v1 = (v0 + OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_computedSize);
  swift_beginAccess();
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t sub_100002298(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_computedSize;
  result = swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
  return result;
}

void sub_10000235C(double a1)
{
  v2 = v1;
  v4 = sub_100027D5C();
  v58 = *(v4 - 8);
  v5 = *(v58 + 64);
  v6 = (__chkstk_darwin)();
  v59 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = &v55 - v8;
  v9 = type metadata accessor for InviteMessageView(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100001DFC(&qword_100034798, &qword_100029618);
  v14 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13 - 8);
  v16 = &v55 - v15;
  v17 = type metadata accessor for InviteMessageDetails();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v55 - v24;
  v26 = (*((swift_isaMask & *v1) + 0xE0))(v23);
  if ((v27 & 1) == 0)
  {
    return;
  }

  v57 = v4;
  v28 = (*((swift_isaMask & *v1) + 0xC8))(v26);
  if (!v28)
  {
    return;
  }

  v29 = v28;
  (*((swift_isaMask & *v1) + 0xB0))();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {

    sub_100008800(v16, &qword_100034798, &qword_100029618);
    return;
  }

  v30 = v25;
  sub_1000029C4(v16, v25);
  sub_100002A28(v25, v22);
  if (qword_100035170 != -1)
  {
    swift_once();
  }

  if (*&qword_100035178 < a1)
  {
    a1 = *&qword_100035178;
  }

  v31 = sub_100004480();
  v32 = sub_100004480();
  v33 = v2;
  sub_10000B5A8(v22, *&a1, 0, v2, &off_100031028, v31 & 1, v32 & 1, v12);
  sub_100027F5C();
  v34 = v29;
  v35 = [v34 view];
  v36 = v60;
  if (!v35)
  {
    __break(1u);
    goto LABEL_21;
  }

  v37 = v35;
  [v35 invalidateIntrinsicContentSize];

  v38 = [v34 view];
  v39 = v59;
  if (!v38)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v40 = v38;
  v56 = a1;
  [v38 layoutSubviews];

  v41 = [v34 view];
  if (!v41)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v42 = v41;
  [v41 intrinsicContentSize];
  v44 = v43;

  v45 = [v34 view];
  if (!v45)
  {
LABEL_23:
    __break(1u);
    return;
  }

  [v45 intrinsicContentSize];
  v47 = v46;

  sub_100027CCC();
  v48 = sub_100027D4C();
  v49 = sub_10002850C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134218240;
    *(v50 + 4) = v47;
    *(v50 + 12) = 2048;
    *(v50 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v48, v49, "content size width: %f, height: %f", v50, 0x16u);
  }

  v51 = *(v58 + 8);
  v51(v36, v57);
  sub_100027CCC();
  v52 = sub_100027D4C();
  v53 = sub_10002850C();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 134218240;
    *(v54 + 4) = a1;
    *(v54 + 12) = 2048;
    *(v54 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v52, v53, "contentSizeThatFits %f,%f", v54, 0x16u);
  }

  v51(v39, v57);
  (*((swift_isaMask & *v33) + 0xE8))(COERCE_DOUBLE(*&v56), v44, 0);

  sub_100008A60(v30, type metadata accessor for InviteMessageDetails);
}

uint64_t sub_1000029C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InviteMessageDetails();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002A28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InviteMessageDetails();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100002AE0(char a1)
{
  v2 = v1;
  v4 = sub_100027D5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MessagesViewController();
  v14.receiver = v2;
  v14.super_class = v9;
  objc_msgSendSuper2(&v14, "viewWillAppear:", a1 & 1);
  sub_100027CCC();
  v10 = sub_100027D4C();
  v11 = sub_10002850C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Register for family update notification", v12, 2u);
  }

  (*(v5 + 8))(v8, v4);
  v13 = [objc_opt_self() defaultCenter];
  [v13 addObserver:v2 selector:"handleFamilyDidUpdate" name:FAFamilyUpdateNotification object:0];
}

void sub_100002CEC(char a1)
{
  v2 = v1;
  v4 = sub_100027D5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MessagesViewController();
  v14.receiver = v2;
  v14.super_class = v9;
  objc_msgSendSuper2(&v14, "viewDidDisappear:", a1 & 1);
  sub_100027CCC();
  v10 = sub_100027D4C();
  v11 = sub_10002850C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Unregister for family update notification", v12, 2u);
  }

  (*(v5 + 8))(v8, v4);
  v13 = [objc_opt_self() defaultCenter];
  [v13 removeObserver:v2 name:FAFamilyUpdateNotification object:0];
}

id sub_100002EF0(void *a1)
{
  v2 = v1;
  v4 = sub_100001DFC(&qword_1000347A0, &unk_100029620);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v88 = &v82 - v6;
  v94 = sub_100027D5C();
  v7 = *(v94 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v94);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v82 - v13;
  v15 = __chkstk_darwin(v12);
  v89 = &v82 - v16;
  __chkstk_darwin(v15);
  v18 = &v82 - v17;
  v19 = sub_100001DFC(&qword_100034790, &qword_100029610);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v82 - v24;
  v91 = sub_100027B1C();
  v93 = *(v91 - 8);
  v26 = *(v93 + 64);
  __chkstk_darwin(v91);
  v92 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100027BEC();
  v90 = *(v28 - 8);
  v29 = *(v90 + 64);
  __chkstk_darwin(v28);
  v31 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = a1;
  v32 = [a1 selectedMessage];
  if (v32)
  {
    v33 = v32;
    v85 = v28;
    v86 = v2;
    v34 = [v32 URL];
    if (v34)
    {
      v35 = v34;
      sub_100027BCC();

      v84 = v31;
      sub_100027B0C();
      v36 = v93;
      v37 = v91;
      if ((*(v93 + 48))(v25, 1, v91) == 1)
      {
        sub_100008800(v25, &qword_100034790, &qword_100029610);
        sub_100027CCC();
        v38 = sub_100027D4C();
        v39 = sub_10002850C();
        v40 = os_log_type_enabled(v38, v39);
        v41 = v86;
        if (v40)
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&_mh_execute_header, v38, v39, "Missing url components for invite message url", v42, 2u);
        }

        (*(v7 + 8))(v14, v94);
        result = [v41 view];
        v44 = v85;
        if (result)
        {
          v45 = result;
          v46 = [objc_opt_self() blackColor];
          [v45 setBackgroundColor:v46];

          return (*(v90 + 8))(v84, v44);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        (*(v36 + 32))(v92, v25, v37);
        sub_100027CBC();
        v50 = v33;
        v51 = sub_100027D4C();
        v52 = sub_10002850C();
        v53 = os_log_type_enabled(v51, v52);
        v54 = v86;
        if (v53)
        {
          v55 = swift_slowAlloc();
          *v55 = 67109120;
          *(v55 + 4) = [v50 isPending];

          _os_log_impl(&_mh_execute_header, v51, v52, "in compose screen %{BOOL}d", v55, 8u);
        }

        else
        {

          v51 = v50;
        }

        v56 = v89;

        v57 = v94;
        v83 = *(v7 + 8);
        v83(v18, v94);
        v58 = v93;
        (*(v93 + 16))(v23, v92, v37);
        (*(v58 + 56))(v23, 0, 1, v37);
        (*((swift_isaMask & *v54) + 0xA0))(v23);
        sub_100027CBC();
        v59 = v87;
        v60 = sub_100027D4C();
        v61 = sub_10002850C();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v95 = v63;
          *v62 = 136315138;
          v64 = [v59 recipientAddresses];
          v65 = v50;
          sub_10002845C();

          v66 = sub_10002846C();
          v68 = v67;
          v37 = v91;

          v69 = sub_100006B88(v66, v68, &v95);
          v50 = v65;

          *(v62 + 4) = v69;
          v54 = v86;
          _os_log_impl(&_mh_execute_header, v60, v61, "recipientAddresses from conversation %s", v62, 0xCu);
          sub_100007038(v63);

          v70 = v89;
          v71 = v94;
        }

        else
        {

          v70 = v56;
          v71 = v57;
        }

        v83(v70, v71);
        v72 = [v59 recipientAddresses];
        v73 = sub_10002845C();

        if (v73[2])
        {
          v74 = v73[4];
          v75 = v73[5];
        }

        else
        {

          v74 = 0;
          v75 = 0xE000000000000000;
        }

        (*((swift_isaMask & *v54) + 0x88))(v74, v75);
        v76 = [v50 isPending];
        v77 = [v50 time];
        v78 = v88;
        if (v77)
        {
          v79 = v77;
          sub_100027BFC();

          v80 = 0;
        }

        else
        {
          v80 = 1;
        }

        v81 = sub_100027C1C();
        (*(*(v81 - 8) + 56))(v78, v80, 1, v81);
        (*((swift_isaMask & *v54) + 0x100))(v76, v78);

        sub_100008800(v78, &qword_1000347A0, &unk_100029620);
        (*(v93 + 8))(v92, v37);
        return (*(v90 + 8))(v84, v85);
      }

      return result;
    }
  }

  sub_100027CCC();
  v47 = sub_100027D4C();
  v48 = sub_10002850C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "Missing invite message url", v49, 2u);
  }

  return (*(v7 + 8))(v11, v94);
}

void sub_10000392C(void *a1)
{
  v3 = [a1 view];
  if (v3)
  {
    v32 = v3;
    v4 = [v1 view];
    if (v4)
    {
      v30 = v4;
      v5 = [v1 childViewControllers];
      sub_100007FAC(0, &qword_100034808, UIViewController_ptr);
      v6 = sub_10002845C();

      v31 = a1;
      if (v6 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000285DC())
      {
        v8 = 0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = sub_1000285AC();
          }

          else
          {
            if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v9 = *(v6 + 8 * v8 + 32);
          }

          v10 = v9;
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          [v9 willMoveToParentViewController:0];
          v12 = [v10 view];
          [v12 removeFromSuperview];

          [v10 removeFromParentViewController];
          ++v8;
          if (v11 == i)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      v13 = [v1 view];
      if (v13)
      {
        v14 = v13;
        v15 = [objc_opt_self() systemGray5Color];
        [v14 setBackgroundColor:v15];

        [v1 _balloonMaskEdgeInsets];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        [v1 addChildViewController:v31];
        v24 = [v1 view];
        if (v24)
        {
          v25 = v24;
          [v24 addSubview:v32];

          [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
          sub_100001DFC(&qword_100034810, &qword_100029740);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100029600;
          *(inited + 32) = 1952867692;
          *(inited + 40) = 0xE400000000000000;
          *(inited + 48) = v19;
          *(inited + 72) = &type metadata for CGFloat;
          *(inited + 80) = 0x7468676972;
          *(inited + 88) = 0xE500000000000000;
          *(inited + 96) = v23;
          *(inited + 120) = &type metadata for CGFloat;
          *(inited + 128) = 7368564;
          *(inited + 136) = 0xE300000000000000;
          *(inited + 144) = v17;
          *(inited + 168) = &type metadata for CGFloat;
          *(inited + 176) = 0x6D6F74746F62;
          *(inited + 184) = 0xE600000000000000;
          *(inited + 216) = &type metadata for CGFloat;
          *(inited + 192) = v21;
          v27 = sub_1000079CC(inited);
          swift_setDeallocating();
          sub_100001DFC(&qword_100034818, &qword_100029748);
          swift_arrayDestroy();

          v28 = v32;
          sub_100007AFC(&off_100030F20, v27, v28);
          swift_bridgeObjectRelease_n();

          swift_arrayDestroy();
          sub_100007FAC(0, &qword_100034820, NSLayoutConstraint_ptr);
          isa = sub_10002844C().super.isa;

          [v30 addConstraints:isa];

          [v31 didMoveToParentViewController:v1];
          [v1 requestResize];

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }
}

void sub_100003DB8(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v39 = a1;
  v40 = a2;
  v38 = sub_100027D5C();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v38);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v38 - v10;
  __chkstk_darwin(v9);
  v13 = &v38 - v12;
  v14 = sub_100001DFC(&qword_100034798, &qword_100029618);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v38 - v16;
  v18 = type metadata accessor for InviteMessageDetails();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v2) + 0xB0))(v21);
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    sub_1000029C4(v17, v23);
    v45 = v23[232];
    v44 = 2;
    sub_100006C6C();
    sub_10002843C();
    sub_10002843C();
    if (aBlock == v42 && v48 == v43)
    {
    }

    else
    {
      v29 = sub_10002863C();

      if ((v29 & 1) == 0)
      {
        sub_100027CCC();
        v33 = sub_100027D4C();
        v34 = sub_10002850C();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v33, v34, "Snapshot normal fallback", v35, 2u);
        }

        (*(v4 + 8))(v11, v38);
        v51 = v39;
        v52 = v40;
        aBlock = _NSConcreteStackBlock;
        v48 = 1107296256;
        v49 = sub_1000043A8;
        v50 = &unk_100030F88;
        v36 = _Block_copy(&aBlock);

        v37 = type metadata accessor for MessagesViewController();
        v41.receiver = v3;
        v41.super_class = v37;
        objc_msgSendSuper2(&v41, "updateSnapshotWithCompletionBlock:", v36);
        _Block_release(v36);
        goto LABEL_15;
      }
    }

    sub_100027CCC();
    v30 = sub_100027D4C();
    v31 = sub_10002850C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Snapshot, state is pending. Don't use cached view", v32, 2u);
    }

    (*(v4 + 8))(v13, v38);
    v39(0);
LABEL_15:
    sub_100008A60(v23, type metadata accessor for InviteMessageDetails);
    return;
  }

  sub_100008800(v17, &qword_100034798, &qword_100029618);
  sub_100027CCC();
  v24 = sub_100027D4C();
  v25 = sub_1000284EC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Snapshot fallback, no bubble", v26, 2u);
  }

  (*(v4 + 8))(v8, v38);
  v51 = v39;
  v52 = v40;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_1000043A8;
  v50 = &unk_100030F60;
  v27 = _Block_copy(&aBlock);

  v28 = type metadata accessor for MessagesViewController();
  v46.receiver = v3;
  v46.super_class = v28;
  objc_msgSendSuper2(&v46, "updateSnapshotWithCompletionBlock:", v27);
  _Block_release(v27);
}

void sub_1000043A8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100004488(char a1, uint64_t a2)
{
  v5 = sub_100001DFC(&qword_1000347A0, &unk_100029620);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v9 = &v20 - v8;
  v10 = sub_100001DFC(&qword_1000347B0, &qword_100029840);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  v14 = sub_1000284CC();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_100008798(a2, v9, &qword_1000347A0, &unk_100029620);
  sub_1000284AC();
  v15 = v2;
  v16 = sub_10002849C();
  v17 = (*(v6 + 80) + 41) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = &protocol witness table for MainActor;
  *(v18 + 32) = v15;
  *(v18 + 40) = a1;
  sub_100006DE8(v9, v18 + v17);
  sub_100005128(0, 0, v13, &unk_100029638, v18);
}

uint64_t sub_100004684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 200) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  v7 = type metadata accessor for InviteMessageView(0);
  *(v6 + 32) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 40) = swift_task_alloc();
  v9 = *(*(sub_100001DFC(&qword_100034798, &qword_100029618) - 8) + 64) + 15;
  *(v6 + 48) = swift_task_alloc();
  *(v6 + 56) = swift_task_alloc();
  v10 = type metadata accessor for InviteMessageDetails();
  *(v6 + 64) = v10;
  v11 = *(v10 - 8);
  *(v6 + 72) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  v13 = sub_100027D5C();
  *(v6 + 96) = v13;
  v14 = *(v13 - 8);
  *(v6 + 104) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  v16 = *(*(sub_100001DFC(&qword_100034790, &qword_100029610) - 8) + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  v17 = sub_100027B1C();
  *(v6 + 136) = v17;
  v18 = *(v17 - 8);
  *(v6 + 144) = v18;
  v19 = *(v18 + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  sub_1000284AC();
  *(v6 + 160) = sub_10002849C();
  v21 = sub_10002848C();
  *(v6 + 168) = v21;
  *(v6 + 176) = v20;

  return _swift_task_switch(sub_1000048F8, v21, v20);
}

uint64_t sub_1000048F8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  (*((swift_isaMask & **(v0 + 16)) + 0x98))();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 160);
    v5 = *(v0 + 120);
    v6 = *(v0 + 128);

    sub_100008800(v6, &qword_100034790, &qword_100029610);
    sub_100027CCC();
    v7 = sub_100027D4C();
    v8 = sub_1000284EC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Message bubble missing urlComponents", v9, 2u);
    }

    v10 = *(v0 + 152);
    v11 = *(v0 + 128);
    v12 = *(v0 + 112);
    v14 = *(v0 + 80);
    v13 = *(v0 + 88);
    v16 = *(v0 + 48);
    v15 = *(v0 + 56);
    v17 = *(v0 + 40);
    (*(*(v0 + 104) + 8))(*(v0 + 120), *(v0 + 96));

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = *(v0 + 16);
    v21 = (*(*(v0 + 144) + 32))(*(v0 + 152), *(v0 + 128), *(v0 + 136));
    v22 = (*((swift_isaMask & *v20) + 0x80))(v21);
    v24 = v23;
    *(v0 + 184) = v23;
    v25 = OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_familyFetcher;
    v26 = swift_task_alloc();
    *(v0 + 192) = v26;
    *v26 = v0;
    v26[1] = sub_100004BE4;
    v27 = *(v0 + 152);
    v28 = *(v0 + 56);
    v29 = *(v0 + 24);
    v30 = *(v0 + 200);

    return sub_100021790(v28, v27, v30, v22, v24, v20 + v25, v29);
  }
}

uint64_t sub_100004BE4()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v7 = *v0;

  v4 = *(v1 + 176);
  v5 = *(v1 + 168);

  return _swift_task_switch(sub_100004D28, v5, v4);
}

uint64_t sub_100004D28()
{
  v1 = v0[20];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v0[14];
    sub_100008800(v0[7], &qword_100034798, &qword_100029618);
    sub_100027CCC();
    v6 = sub_100027D4C();
    v7 = sub_1000284EC();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[13];
    v9 = v0[14];
    v11 = v0[12];
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Message bubble could not build inviteMessageDetail", v12, 2u);
    }

    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v14 = v0[10];
    v13 = v0[11];
    v15 = v0[8];
    v16 = v0[9];
    v17 = v0[6];
    v18 = v0[2];
    sub_1000029C4(v0[7], v13);
    (*((swift_isaMask & *v18) + 0xE8))(0, 0, 1);
    sub_100002A28(v13, v17);
    (*(v16 + 56))(v17, 0, 1, v15);
    (*((swift_isaMask & *v18) + 0xB8))(v17);
    sub_100002A28(v13, v14);
    if (qword_100035170 != -1)
    {
      swift_once();
    }

    v20 = v0[10];
    v19 = v0[11];
    v22 = v0[4];
    v21 = v0[5];
    v23 = v0[2];
    v24 = qword_100035178;
    v25 = sub_100004480();
    v26 = sub_100004480();
    v27 = v23;
    sub_10000B5A8(v20, v24, 0, v23, &off_100031028, v25 & 1, v26 & 1, v21);
    v28 = *((swift_isaMask & *v27) + 0x110);
    v29 = sub_100008A08();
    v30 = v28(v21, v22, v29);
    sub_100008A60(v21, type metadata accessor for InviteMessageView);
    v31 = *((swift_isaMask & *v27) + 0xD0);
    v32 = v30;
    v31(v30);
    sub_10000392C(v32);
    [v27 setReadyForDisplay];

    sub_100008A60(v19, type metadata accessor for InviteMessageDetails);
  }

  v33 = v0[16];
  v35 = v0[14];
  v34 = v0[15];
  v37 = v0[10];
  v36 = v0[11];
  v39 = v0[6];
  v38 = v0[7];
  v40 = v0[5];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v41 = v0[1];

  return v41();
}

uint64_t sub_100005128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001DFC(&qword_1000347B0, &qword_100029840);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100008798(a3, v27 - v11, &qword_1000347B0, &qword_100029840);
  v13 = sub_1000284CC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100008800(v12, &qword_1000347B0, &qword_100029840);
  }

  else
  {
    sub_1000284BC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_10002848C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_10002840C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100008800(a3, &qword_1000347B0, &qword_100029840);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008800(a3, &qword_1000347B0, &qword_100029840);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

BOOL sub_100005428()
{
  v1 = sub_100001DFC(&qword_100034798, &qword_100029618);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v9 - v4;
  (*((swift_isaMask & *v0) + 0xB0))(v3);
  v6 = type metadata accessor for InviteMessageDetails();
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6) != 1;
  sub_100008800(v5, &qword_100034798, &qword_100029618);
  return v7;
}

uint64_t sub_100005658()
{
  v1 = v0;
  v2 = sub_100001DFC(&qword_1000347A0, &unk_100029620);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_100027D5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100027CCC();
  v11 = sub_100027D4C();
  v12 = sub_10002850C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Received notification for family update", v13, 2u);
  }

  (*(v7 + 8))(v10, v6);
  v14 = sub_100027C1C();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  (*((swift_isaMask & *v1) + 0x100))(0, v5);
  return sub_100008800(v5, &qword_1000347A0, &unk_100029620);
}

void *sub_1000058D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100027F6C();
  (*(v4 + 16))(v7, a1, a2);
  v8 = sub_100027F4C();
  sub_100027F3C();
  v9 = [v8 view];
  if (v9)
  {
    v10 = v9;
    sub_100027DCC();
    if (swift_dynamicCastClass())
    {
      sub_100027DBC();
    }
  }

  return v8;
}

id sub_100005A18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1000283DC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_100005A90(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = &v3[OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_familyFetcher];
  v8 = type metadata accessor for FamilyFetcher();
  v9 = sub_10001EFD0();
  v7[3] = v8;
  v7[4] = &off_1000318A8;
  *v7 = v9;
  v10 = &v4[OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_recipientHandleFromConversation];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_urlComponents;
  v12 = sub_100027B1C();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_inviteMessageDetails;
  v14 = type metadata accessor for InviteMessageDetails();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  *&v4[OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_bubbleViewControler] = 0;
  v15 = &v4[OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_computedSize];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  if (a2)
  {
    v16 = sub_1000283DC();
  }

  else
  {
    v16 = 0;
  }

  v19.receiver = v4;
  v19.super_class = type metadata accessor for MessagesViewController();
  v17 = objc_msgSendSuper2(&v19, "initWithNibName:bundle:", v16, a3);

  return v17;
}

id sub_100005C7C(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id sub_100005CC0(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_familyFetcher];
  v5 = type metadata accessor for FamilyFetcher();
  v6 = sub_10001EFD0();
  v4[3] = v5;
  v4[4] = &off_1000318A8;
  *v4 = v6;
  v7 = &v2[OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_recipientHandleFromConversation];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_urlComponents;
  v9 = sub_100027B1C();
  (*(*(v9 - 8) + 56))(&v2[v8], 1, 1, v9);
  v10 = OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_inviteMessageDetails;
  v11 = type metadata accessor for InviteMessageDetails();
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  *&v2[OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_bubbleViewControler] = 0;
  v12 = &v2[OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_computedSize];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for MessagesViewController();
  v13 = objc_msgSendSuper2(&v15, "initWithCoder:", a1);

  if (v13)
  {
  }

  return v13;
}

id sub_100005E48(char a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithShouldBeSheetPresentationControllerDelegate:a1 & 1];
}

id sub_100005E8C(char a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_familyFetcher];
  v5 = type metadata accessor for FamilyFetcher();
  v6 = sub_10001EFD0();
  v4[3] = v5;
  v4[4] = &off_1000318A8;
  *v4 = v6;
  v7 = &v2[OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_recipientHandleFromConversation];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_urlComponents;
  v9 = sub_100027B1C();
  (*(*(v9 - 8) + 56))(&v2[v8], 1, 1, v9);
  v10 = OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_inviteMessageDetails;
  v11 = type metadata accessor for InviteMessageDetails();
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  *&v2[OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_bubbleViewControler] = 0;
  v12 = &v2[OBJC_IVAR____TtC28InviteMessageBubbleExtension22MessagesViewController_computedSize];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for MessagesViewController();
  return objc_msgSendSuper2(&v14, "initWithShouldBeSheetPresentationControllerDelegate:", a1 & 1);
}

id sub_100005FF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessagesViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000060D0()
{
  v1 = v0;
  v2 = sub_1000283DC();
  v3 = sub_1000283DC();
  v4 = sub_1000283DC();
  v6[4] = nullsub_1;
  v6[5] = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1000068AC;
  v6[3] = &unk_100031220;
  v5 = _Block_copy(v6);
  [v1 _presentAlertWithTitle:v2 message:v3 buttonTitle:v4 completion:v5];
  _Block_release(v5);
}

void sub_1000061D8()
{
  v1 = v0;
  v2 = sub_1000283DC();
  v3 = sub_1000283DC();
  v4 = sub_1000283DC();
  v6[4] = nullsub_1;
  v6[5] = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1000068AC;
  v6[3] = &unk_100030FD8;
  v5 = _Block_copy(v6);
  [v1 _presentAlertWithTitle:v2 message:v3 buttonTitle:v4 completion:v5];
  _Block_release(v5);
}

uint64_t sub_1000062E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1000063B4;

  return sub_1000064B0(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1000063B4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1000064B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[23] = a6;
  v7[24] = v6;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v7[18] = a1;
  sub_1000284AC();
  v7[25] = sub_10002849C();
  v9 = sub_10002848C();
  v7[26] = v9;
  v7[27] = v8;

  return _swift_task_switch(sub_100006554, v9, v8);
}

uint64_t sub_100006554()
{
  if (v0[19])
  {
    v1 = v0[18];
    v2 = sub_1000283DC();
  }

  else
  {
    v2 = 0;
  }

  v0[28] = v2;
  if (v0[21])
  {
    v3 = v0[20];
    v4 = sub_1000283DC();
  }

  else
  {
    v4 = 0;
  }

  v0[29] = v4;
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  isa = sub_10002844C().super.isa;
  v0[30] = isa;
  sub_100007FAC(0, &qword_1000347B8, NSNumber_ptr);
  v9 = sub_10002844C().super.isa;
  v0[31] = v9;
  v0[2] = v0;
  v0[7] = v0 + 32;
  v0[3] = sub_100006710;
  v10 = swift_continuation_init();
  v0[17] = sub_100001DFC(&qword_1000347C0, &qword_100029648);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000068F0;
  v0[13] = &unk_100031000;
  v0[14] = v10;
  [v5 family_presentAlertSheetWithTitle:v2 message:v4 buttonTitles:isa styles:v9 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100006710()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v3 = *v0;

  return _swift_task_switch(sub_100006818, v2, v1);
}

uint64_t sub_100006818()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 200);

  v6 = *(v0 + 256);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_1000068AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1000068F0(uint64_t a1, int a2)
{
  **(*(*sub_100008754((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}

uint64_t sub_10000694C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006A44;

  return v7(a1);
}

uint64_t sub_100006A44()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t type metadata accessor for MessagesViewController()
{
  result = qword_100035180;
  if (!qword_100035180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006B88(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100007338(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100007094(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007038(v11);
  return v7;
}

uint64_t sub_100006C54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100006C6C()
{
  result = qword_1000347A8;
  if (!qword_1000347A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000347A8);
  }

  return result;
}

uint64_t sub_100006CC0()
{
  v1 = *(sub_100001DFC(&qword_1000347A0, &unk_100029620) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 41) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = sub_100027C1C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100006DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DFC(&qword_1000347A0, &unk_100029620);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006E58()
{
  v2 = *(sub_100001DFC(&qword_1000347A0, &unk_100029620) - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100006F44;

  return sub_100004684(v6, v7, v8, v4, v5, v0 + v3);
}

uint64_t sub_100006F44()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100007038(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100007094(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100007114()
{
  sub_10000723C(319, &qword_1000347F0, &type metadata accessor for URLComponents);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10000723C(319, &qword_1000347F8, type metadata accessor for InviteMessageDetails);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000723C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10002853C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 sub_100007290(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000072A0(uint64_t a1, int a2)
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

uint64_t sub_1000072C0(uint64_t result, int a2, int a3)
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
  if (!qword_100034800)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100034800);
    }
  }
}

unint64_t sub_100007338(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100007444(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_1000285CC();
    a6 = v11;
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

char *sub_100007444(uint64_t a1, unint64_t a2)
{
  v4 = sub_100007490(a1, a2);
  sub_1000075C0(&off_100030EF8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100007490(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000076AC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000285CC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10002842C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000076AC(v10, 0);
        result = sub_10002859C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000075C0(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100007720(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000076AC(uint64_t a1, uint64_t a2)
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

  sub_100001DFC(&qword_100034850, &unk_10002A410);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100007720(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001DFC(&qword_100034850, &unk_10002A410);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_100007814(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10002867C();
  sub_10002841C();
  v6 = sub_10002868C();

  return sub_10000788C(a1, a2, v6);
}

unint64_t sub_10000788C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10002863C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void (*sub_100007944(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1000285AC();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000079C4;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000079CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001DFC(&qword_100034830, &qword_100029750);
    v3 = sub_10002860C();
    v4 = a1 + 32;

    while (1)
    {
      sub_100008798(v4, &v13, &qword_100034818, &qword_100029748);
      v5 = v13;
      v6 = v14;
      result = sub_100007814(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100007FF4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_100007AFC(uint64_t a1, uint64_t a2, void *a3)
{
  v42 = *(a1 + 16);
  if (!v42)
  {
    return &_swiftEmptyArrayStorage;
  }

  v3 = 0;
  v41 = a1 + 32;
  v45 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v5 = (v41 + 16 * v3);
    v6 = *v5;
    v7 = v5[1];

    v8 = sub_1000283DC();
    v9.super.isa = sub_10002836C().super.isa;
    v49[0] = 2003134838;
    v49[1] = 0xE400000000000000;
    v49[5] = sub_100007FAC(0, &qword_100034828, UIView_ptr);
    v49[2] = a3;
    sub_100001DFC(&qword_100034830, &qword_100029750);
    v10 = sub_10002860C();
    v11 = a3;
    sub_100008798(v49, &v46, &qword_100034818, &qword_100029748);
    v12 = v46;
    v13 = v47;
    result = sub_100007814(v46, v47);
    if (v14)
    {
      break;
    }

    v10[(result >> 6) + 8] |= 1 << result;
    v15 = (v10[6] + 16 * result);
    *v15 = v12;
    v15[1] = v13;
    result = sub_100007FF4(&v48, (v10[7] + 32 * result));
    v16 = v10[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      goto LABEL_40;
    }

    v10[2] = v18;
    v19 = objc_opt_self();
    sub_100008800(v49, &qword_100034818, &qword_100029748);
    isa = sub_10002836C().super.isa;

    v21 = [v19 constraintsWithVisualFormat:v8 options:0 metrics:v9.super.isa views:isa];

    sub_100007FAC(0, &qword_100034820, NSLayoutConstraint_ptr);
    v22 = sub_10002845C();

    v23 = v22 >> 62;
    v50 = v3;
    if (v22 >> 62)
    {
      v24 = sub_1000285DC();
    }

    else
    {
      v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v45 >> 62;
    if (v45 >> 62)
    {
      v40 = sub_1000285DC();
      v27 = v40 + v24;
      if (__OFADD__(v40, v24))
      {
LABEL_36:
        __break(1u);
        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v26 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v27 = v26 + v24;
      if (__OFADD__(v26, v24))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v25)
      {
        goto LABEL_18;
      }

      v28 = v45 & 0xFFFFFFFFFFFFFF8;
      if (v27 <= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v25)
      {
LABEL_18:
        sub_1000285DC();
        goto LABEL_19;
      }

      v28 = v45 & 0xFFFFFFFFFFFFFF8;
    }

    v29 = *(v28 + 16);
LABEL_19:
    result = sub_1000285BC();
    v45 = result;
    v28 = result & 0xFFFFFFFFFFFFFF8;
LABEL_20:
    v30 = *(v28 + 16);
    v31 = *(v28 + 24);
    if (v23)
    {
      result = sub_1000285DC();
      v32 = result;
      if (!result)
      {
LABEL_3:

        if (v24 > 0)
        {
          goto LABEL_41;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v32 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v32)
      {
        goto LABEL_3;
      }
    }

    if (((v31 >> 1) - v30) < v24)
    {
      goto LABEL_42;
    }

    v44 = v24;
    v33 = v28 + 8 * v30 + 32;
    if (v23)
    {
      if (v32 < 1)
      {
        goto LABEL_44;
      }

      sub_100008004();
      for (i = 0; i != v32; ++i)
      {
        sub_100001DFC(&qword_100034838, &qword_100029758);
        v35 = sub_100007944(&v46, i, v22);
        v37 = *v36;
        (v35)(&v46, 0);
        *(v33 + 8 * i) = v37;
      }
    }

    else
    {
      swift_arrayInitWithCopy();
    }

    if (v44 >= 1)
    {
      v38 = *(v28 + 16);
      v17 = __OFADD__(v38, v44);
      v39 = v38 + v44;
      if (v17)
      {
        goto LABEL_43;
      }

      *(v28 + 16) = v39;
    }

LABEL_4:
    v3 = v50 + 1;
    if (v50 + 1 == v42)
    {
      return v45;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_100007FAC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

_OWORD *sub_100007FF4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100008004()
{
  result = qword_100034840;
  if (!qword_100034840)
  {
    sub_100008068(&qword_100034838, &qword_100029758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034840);
  }

  return result;
}

uint64_t sub_100008068(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000080B0(void *a1, void (**a2)(void, void))
{
  v4 = sub_100027D5C();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  v6 = __chkstk_darwin(v4);
  v42 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v42 - v9;
  __chkstk_darwin(v8);
  v12 = &v42 - v11;
  v13 = sub_100001DFC(&qword_100034798, &qword_100029618);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v42 - v15;
  v17 = type metadata accessor for InviteMessageDetails();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = swift_allocObject();
  *(v46 + 16) = a2;
  v22 = *((swift_isaMask & *a1) + 0xB0);
  v23 = _Block_copy(a2);
  v43 = a1;
  v22(v23);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    sub_1000029C4(v16, v21);
    v51 = v21[232];
    v50 = 2;
    sub_100006C6C();
    sub_10002843C();
    sub_10002843C();
    v29 = v21;
    if (aBlock == v48 && v54 == v49)
    {
    }

    else
    {
      v30 = sub_10002863C();

      v31 = v46;
      if ((v30 & 1) == 0)
      {
        v35 = v42;
        sub_100027CCC();
        v36 = sub_100027D4C();
        v37 = sub_10002850C();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "Snapshot normal fallback", v38, 2u);
        }

        (*(v44 + 8))(v35, v45);
        v57 = sub_100008740;
        v58 = v31;
        aBlock = _NSConcreteStackBlock;
        v54 = 1107296256;
        v55 = sub_1000043A8;
        v56 = &unk_1000311F8;
        v39 = _Block_copy(&aBlock);

        v40 = type metadata accessor for MessagesViewController();
        v47.receiver = v43;
        v47.super_class = v40;
        objc_msgSendSuper2(&v47, "updateSnapshotWithCompletionBlock:", v39);
        _Block_release(v39);
        goto LABEL_15;
      }
    }

    sub_100027CCC();
    v32 = sub_100027D4C();
    v33 = sub_10002850C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Snapshot, state is pending. Don't use cached view", v34, 2u);
    }

    (*(v44 + 8))(v10, v45);
    a2[2](a2, 0);
LABEL_15:
    sub_100008A60(v29, type metadata accessor for InviteMessageDetails);
  }

  sub_100008800(v16, &qword_100034798, &qword_100029618);
  sub_100027CCC();
  v24 = sub_100027D4C();
  v25 = sub_1000284EC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Snapshot fallback, no bubble", v26, 2u);
  }

  (*(v44 + 8))(v12, v45);
  v57 = sub_100008740;
  v58 = v46;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_1000043A8;
  v56 = &unk_1000311D0;
  v27 = _Block_copy(&aBlock);

  v28 = type metadata accessor for MessagesViewController();
  v52.receiver = v43;
  v52.super_class = v28;
  objc_msgSendSuper2(&v52, "updateSnapshotWithCompletionBlock:", v27);
  _Block_release(v27);
}

uint64_t sub_100008708()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_100008754(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100008798(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001DFC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100008800(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001DFC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100008860()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008898(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008AE0;

  return sub_10000694C(a1, v5);
}

uint64_t sub_100008950(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100006F44;

  return sub_10000694C(a1, v5);
}

unint64_t sub_100008A08()
{
  result = qword_100034848;
  if (!qword_100034848)
  {
    type metadata accessor for InviteMessageView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034848);
  }

  return result;
}

uint64_t sub_100008A60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100008B2C()
{
  v1 = (v0 + *(type metadata accessor for InviteMessageView(0) + 20));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

id sub_100008B78()
{
  v1 = v0 + *(type metadata accessor for InviteMessageView(0) + 24);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *v1;
  return v2;
}

uint64_t sub_100008BB4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InviteMessageView(0) + 28);

  return sub_100001C40(v3, a1);
}

uint64_t sub_100008BF8()
{
  v1 = (v0 + *(type metadata accessor for InviteMessageView(0) + 32));
  v4 = *v1;
  v5 = *(v1 + 1);
  sub_100001DFC(&qword_100034858, &qword_1000297D0);
  sub_1000282CC();
  return v3;
}

uint64_t sub_100008C60()
{
  v1 = (v0 + *(type metadata accessor for InviteMessageView(0) + 32));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_100001DFC(&qword_100034858, &qword_1000297D0);
  return sub_1000282DC();
}

uint64_t (*sub_100008CD0(uint64_t *a1))()
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
  v5 = (v1 + *(type metadata accessor for InviteMessageView(0) + 32));
  v6 = *v5;
  *(v4 + 50) = *v5;
  v7 = *(v5 + 1);
  *(v4 + 32) = v7;
  *v4 = v6;
  *(v4 + 8) = v7;

  *(v4 + 40) = sub_100001DFC(&qword_100034858, &qword_1000297D0);
  sub_1000282CC();
  return sub_10001A6F8;
}

uint64_t sub_100008D8C()
{
  v1 = (v0 + *(type metadata accessor for InviteMessageView(0) + 32));
  v4 = *v1;
  v5 = *(v1 + 1);
  sub_100001DFC(&qword_100034858, &qword_1000297D0);
  sub_1000282EC();
  return v3;
}

uint64_t sub_100008E38()
{
  v1 = (v0 + *(type metadata accessor for InviteMessageView(0) + 36));
  v4 = *v1;
  v5 = *(v1 + 1);
  sub_100001DFC(&qword_100034858, &qword_1000297D0);
  sub_1000282CC();
  return v3;
}

uint64_t sub_100008EA0()
{
  v1 = (v0 + *(type metadata accessor for InviteMessageView(0) + 36));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_100001DFC(&qword_100034858, &qword_1000297D0);
  return sub_1000282DC();
}

uint64_t (*sub_100008F10(uint64_t *a1))()
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
  v5 = (v1 + *(type metadata accessor for InviteMessageView(0) + 36));
  v6 = *v5;
  *(v4 + 50) = *v5;
  v7 = *(v5 + 1);
  *(v4 + 32) = v7;
  *v4 = v6;
  *(v4 + 8) = v7;

  *(v4 + 40) = sub_100001DFC(&qword_100034858, &qword_1000297D0);
  sub_1000282CC();
  return sub_100008FCC;
}

void sub_100008FD0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  *(*a1 + 16) = *(*a1 + 50);
  *(v1 + 24) = v4;
  *(v1 + 49) = v2;
  sub_1000282DC();

  free(v1);
}

uint64_t sub_100009038()
{
  v1 = (v0 + *(type metadata accessor for InviteMessageView(0) + 36));
  v4 = *v1;
  v5 = *(v1 + 1);
  sub_100001DFC(&qword_100034858, &qword_1000297D0);
  sub_1000282EC();
  return v3;
}

double sub_1000090A4()
{
  v0 = sub_100027CAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for FamilyFeatureFlags.familyPrivacyDisclosure(_:), v0);
  v5 = sub_100027C9C();
  (*(v1 + 8))(v4, v0);
  v6 = 0.0;
  if (v5)
  {
    v6 = 3.0;
  }

  return nullsub_1(v6);
}

uint64_t sub_1000091C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  v3 = sub_100001DFC(&qword_100034860, &qword_1000297D8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v71 - v5);
  v7 = sub_100001DFC(&qword_100034868, &qword_1000297E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v71 - v9;
  v71 = sub_100001DFC(&qword_100034870, &qword_1000297E8);
  v11 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v13 = &v71 - v12;
  v72 = sub_100001DFC(&qword_100034878, &qword_1000297F0);
  v14 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v16 = &v71 - v15;
  v73 = sub_100001DFC(&qword_100034880, &qword_1000297F8);
  v17 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v74 = &v71 - v18;
  v19 = sub_100027F1C();
  v20 = nullsub_1(12.0);
  *v6 = v19;
  v6[1] = v20;
  *(v6 + 16) = 0;
  v21 = sub_100001DFC(&qword_100034888, &qword_100029800);
  sub_100009820(v2, v6 + *(v21 + 44));
  sub_100001DFC(&qword_100034890, &qword_100029808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100029790;
  LOBYTE(v19) = sub_10002804C();
  *(inited + 32) = v19;
  v23 = sub_10002806C();
  *(inited + 33) = v23;
  v24 = sub_10002805C();
  sub_10002805C();
  if (sub_10002805C() != v19)
  {
    v24 = sub_10002805C();
  }

  sub_10002805C();
  if (sub_10002805C() != v23)
  {
    v24 = sub_10002805C();
  }

  nullsub_1(16.0);
  sub_100027D6C();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_100016F44(v6, v10, &qword_100034860, &qword_1000297D8);
  v33 = &v10[*(v7 + 36)];
  *v33 = v24;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  v34 = sub_10002803C();
  v78 = *(v2 + 232);
  v77 = 2;
  sub_100006C6C();
  sub_10002843C();
  sub_10002843C();
  if (v79 == v76)
  {
  }

  else
  {
    v35 = sub_10002863C();

    if ((v35 & 1) == 0)
    {
LABEL_9:
      v36 = 10.0;
      goto LABEL_10;
    }
  }

  v36 = 16.0;
  if (*(v2 + 233) == 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  nullsub_1(v36);
  sub_100027D6C();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_100016F44(v10, v13, &qword_100034868, &qword_1000297E0);
  v45 = &v13[*(v71 + 36)];
  *v45 = v34;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  v46 = sub_10002802C();
  nullsub_1(12.0);
  sub_100027D6C();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  sub_100016F44(v13, v16, &qword_100034870, &qword_1000297E8);
  v55 = &v16[*(v72 + 36)];
  *v55 = v46;
  *(v55 + 1) = v48;
  *(v55 + 2) = v50;
  *(v55 + 3) = v52;
  *(v55 + 4) = v54;
  v55[40] = 0;
  v56 = v2 + *(type metadata accessor for InviteMessageView(0) + 20);
  v57 = *v56;
  v58 = *(v56 + 8);
  sub_10002831C();
  sub_100027E1C();
  v59 = v74;
  sub_100016F44(v16, v74, &qword_100034878, &qword_1000297F0);
  v60 = (v59 + *(v73 + 36));
  v61 = v84;
  v60[4] = v83;
  v60[5] = v61;
  v60[6] = v85;
  v62 = v80;
  *v60 = v79;
  v60[1] = v62;
  v63 = v82;
  v60[2] = v81;
  v60[3] = v63;
  v64 = [objc_opt_self() systemGray5Color];
  v65 = sub_1000281FC();
  v66 = sub_10002801C();
  v67 = v59;
  v68 = v75;
  sub_100016F44(v67, v75, &qword_100034880, &qword_1000297F8);
  result = sub_100001DFC(&qword_100034898, &qword_100029810);
  v70 = v68 + *(result + 36);
  *v70 = v65;
  *(v70 + 8) = v66;
  return result;
}

uint64_t sub_100009820@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v184 = a2;
  v161 = sub_100001DFC(&qword_100034D70, &qword_10002A168);
  v3 = *(*(v161 - 8) + 64);
  v4 = __chkstk_darwin(v161);
  v155 = &v153 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v156 = &v153 - v6;
  v163 = sub_100001DFC(&qword_100034D78, &qword_10002A170);
  v7 = *(*(v163 - 8) + 64);
  __chkstk_darwin(v163);
  v165 = &v153 - v8;
  v159 = sub_100001DFC(&qword_100034D80, &qword_10002A178);
  v9 = *(*(v159 - 8) + 64);
  __chkstk_darwin(v159);
  v160 = (&v153 - v10);
  v164 = sub_100001DFC(&qword_100034D88, &qword_10002A180);
  v11 = *(*(v164 - 8) + 64);
  __chkstk_darwin(v164);
  v162 = &v153 - v12;
  v175 = sub_100001DFC(&qword_100034D90, &qword_10002A188);
  v13 = *(*(v175 - 8) + 64);
  __chkstk_darwin(v175);
  v170 = &v153 - v14;
  v173 = sub_100001DFC(&qword_100034D98, &qword_10002A190);
  v15 = *(*(v173 - 8) + 64);
  __chkstk_darwin(v173);
  v174 = &v153 - v16;
  v169 = type metadata accessor for InviteActionsView(0);
  v17 = *(*(v169 - 8) + 64);
  v18 = __chkstk_darwin(v169);
  v154 = &v153 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v157 = &v153 - v20;
  v166 = sub_100001DFC(&qword_100034DA0, &qword_10002A198);
  v21 = *(*(v166 - 8) + 64);
  __chkstk_darwin(v166);
  v167 = &v153 - v22;
  v177 = type metadata accessor for InviteMessageView(0);
  v23 = *(*(v177 - 8) + 64);
  __chkstk_darwin(v177);
  v158 = &v153 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_100001DFC(&qword_100034DA8, &qword_10002A1A0);
  v25 = *(*(v171 - 8) + 64);
  __chkstk_darwin(v171);
  v168 = &v153 - v26;
  v185 = sub_100001DFC(&qword_100034DB0, &qword_10002A1A8);
  v180 = *(v185 - 1);
  v27 = *(v180 + 64);
  __chkstk_darwin(v185);
  v172 = &v153 - v28;
  v29 = sub_100001DFC(&qword_100034DB8, &qword_10002A1B0);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v183 = &v153 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v191 = &v153 - v33;
  v181 = sub_100027FFC();
  v179 = *(v181 - 8);
  v34 = *(v179 + 64);
  __chkstk_darwin(v181);
  v178 = &v153 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_100001DFC(&qword_100034DC0, &qword_10002A1B8);
  v182 = *(v194 - 8);
  v36 = *(v182 + 64);
  v37 = __chkstk_darwin(v194);
  v193 = &v153 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v195 = &v153 - v39;
  v40 = sub_100001DFC(&qword_100034DC8, &qword_10002A1C0);
  v41 = v40 - 8;
  v42 = *(*(v40 - 8) + 64);
  v43 = __chkstk_darwin(v40);
  v192 = &v153 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v46 = &v153 - v45;
  v47 = sub_100027CAC();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  __chkstk_darwin(v47);
  v51 = &v153 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for SettingsView(0);
  v53 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v55 = &v153 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_100001DFC(&qword_100034DD0, &qword_10002A1C8);
  v188 = *(v56 - 8);
  v189 = v56;
  v57 = v188[8];
  v58 = __chkstk_darwin(v56);
  v187 = &v153 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v61 = &v153 - v60;
  v176 = a1;
  sub_1000166C8(a1, v55, type metadata accessor for InviteMessageView);
  sub_1000166C8(a1, &v55[*(v52 + 20)], type metadata accessor for InviteMessageDetails);
  (*(v48 + 104))(v51, enum case for FamilyFeatureFlags.familyPrivacyDisclosure(_:), v47);
  sub_100027C9C();
  (*(v48 + 8))(v51, v47);
  v62 = v177;
  sub_100018568(&qword_100034DD8, type metadata accessor for SettingsView);
  v186 = v61;
  sub_10002817C();
  sub_10001A0F4(v55, type metadata accessor for SettingsView);
  sub_10001A154();
  sub_1000281DC();
  LOBYTE(v55) = sub_10002802C();
  v63 = v176;
  v64 = *(v176 + v62[10]);
  sub_100027D6C();
  v65 = *(v41 + 44);
  v190 = v46;
  v66 = &v46[v65];
  *v66 = v55;
  *(v66 + 1) = v67;
  *(v66 + 2) = v68;
  *(v66 + 3) = v69;
  *(v66 + 4) = v70;
  v66[40] = 0;
  v71 = sub_100027F1C();
  v72 = nullsub_1(0.0);
  LOBYTE(v196) = 0;
  sub_10000B168(v63, &v200);
  v205 = v201[1];
  v206 = v201[2];
  v207 = v201[3];
  v203 = v200;
  v204 = v201[0];
  v208[2] = v201[1];
  v208[3] = v201[2];
  v209 = v201[3];
  v208[0] = v200;
  v208[1] = v201[0];
  sub_100008798(&v203, v210, &qword_100034DE8, &qword_10002A1D0);
  sub_100008800(v208, &qword_100034DE8, &qword_10002A1D0);
  *(v199 + 7) = v203;
  *(&v199[3] + 7) = v206;
  *(&v199[2] + 7) = v205;
  *(&v199[1] + 7) = v204;
  *(&v200 + 1) = v72;
  *(&v201[1] + 1) = v199[1];
  *(&v201[2] + 1) = v199[2];
  *(&v199[4] + 7) = v207;
  *&v200 = v71;
  LOBYTE(v201[0]) = v196;
  *(&v201[3] + 1) = v199[3];
  *(&v201[3] + 10) = *(&v199[3] + 9);
  *(v201 + 1) = v199[0];
  v73 = v178;
  sub_100027FEC();
  sub_100001DFC(&qword_100034DF0, &qword_10002A1D8);
  sub_10001A1A8(&qword_100034DF8, &qword_100034DF0, &qword_10002A1D8);
  sub_1000281EC();
  (*(v179 + 8))(v73, v181);
  v210[2] = v201[1];
  v210[3] = v201[2];
  v211[0] = v201[3];
  *(v211 + 10) = *(&v201[3] + 10);
  v210[0] = v200;
  v210[1] = v201[0];
  v74 = v63;
  sub_100008800(v210, &qword_100034DF0, &qword_10002A1D8);
  v75 = *(v63 + 224);
  v76 = *(v63 + *(type metadata accessor for InviteMessageDetails() + 108));
  v181 = v75;
  if ((v76 & 1) == 0)
  {
    v79 = v185;
    if (*(v63 + 233) == 1)
    {
      LOBYTE(v200) = *(v63 + 232);
      LOBYTE(v196) = 4;
      sub_10001697C();

      v80 = sub_1000283AC();
      v81 = v79;
      v82 = v172;
      if (v80)
      {
        v83 = v74;
        v84 = v157;
        sub_1000166C8(v83, v157, type metadata accessor for InviteMessageView);
        sub_1000166C8(v84, v167, type metadata accessor for InviteActionsView);
        swift_storeEnumTagMultiPayload();
        sub_100001DFC(&qword_100034E18, &qword_10002A1E8);
        sub_10001A2AC();
        sub_100018568(&qword_100034E28, type metadata accessor for InviteActionsView);
        v85 = v168;
        sub_100027F7C();
        sub_10001A0F4(v84, type metadata accessor for InviteActionsView);
      }

      else
      {
        v103 = v158;
        sub_1000166C8(v74, v158, type metadata accessor for InviteMessageView);
        sub_100016520(v103, &v200);
        LOBYTE(v103) = sub_10002802C();
        nullsub_1(4.0);
        sub_100027D6C();
        LOBYTE(v196) = 0;
        v104 = v201[2];
        v105 = v167;
        *(v167 + 32) = v201[1];
        *(v105 + 48) = v104;
        *(v105 + 64) = v201[3];
        *(v105 + 80) = *&v201[4];
        v106 = v201[0];
        *v105 = v200;
        *(v105 + 16) = v106;
        *(v105 + 88) = v103;
        *(v105 + 96) = v107;
        *(v105 + 104) = v108;
        *(v105 + 112) = v109;
        *(v105 + 120) = v110;
        *(v105 + 128) = 0;
        swift_storeEnumTagMultiPayload();
        sub_100001DFC(&qword_100034E18, &qword_10002A1E8);
        sub_10001A2AC();
        sub_100018568(&qword_100034E28, type metadata accessor for InviteActionsView);
        v85 = v168;
        sub_100027F7C();
      }

      v111 = v180;
      sub_100008798(v85, v174, &qword_100034DA8, &qword_10002A1A0);
      swift_storeEnumTagMultiPayload();
      sub_10001A1F0();
      sub_10001A38C();
      sub_100027F7C();
      sub_100008800(v85, &qword_100034DA8, &qword_10002A1A0);
      goto LABEL_18;
    }

    v86 = v63 + v62[8];
    v87 = *v86;
    v88 = *(v86 + 8);
    LOBYTE(v200) = v87;
    *(&v200 + 1) = v88;

    sub_100001DFC(&qword_100034858, &qword_1000297D0);
    sub_1000282CC();
    v82 = v172;
    if ((v196 & 1) != 0 || (v89 = v63 + v62[9], v90 = *v89, v91 = *(v89 + 8), LOBYTE(v200) = v90, *(&v200 + 1) = v91, sub_1000282CC(), v196 == 1))
    {
      v93 = *(v63 + 48);
      v92 = *(v63 + 56);

      sub_10002831C();
      sub_100027E1C();
      v94 = v160;
      *v160 = v93;
      v94[1] = v92;
      v95 = v201[4];
      *(v94 + 5) = v201[3];
      *(v94 + 6) = v95;
      *(v94 + 7) = v202;
      v96 = v201[0];
      *(v94 + 1) = v200;
      *(v94 + 2) = v96;
      v97 = v201[2];
      *(v94 + 3) = v201[1];
      *(v94 + 4) = v97;
      swift_storeEnumTagMultiPayload();
      sub_100001DFC(&qword_100034E50, &qword_10002A1F0);
      sub_10001A528();
      sub_10001A608();
      v98 = v162;
      sub_100027F7C();
      sub_100008798(v98, v165, &qword_100034D88, &qword_10002A180);
      swift_storeEnumTagMultiPayload();
      sub_100001DFC(&qword_100034E18, &qword_10002A1E8);
      sub_10001A49C();
      sub_10001A2AC();
      v99 = v170;
      sub_100027F7C();
      v100 = v98;
      v101 = &qword_100034D88;
      v102 = &qword_10002A180;
LABEL_15:
      sub_100008800(v100, v101, v102);
LABEL_16:
      v123 = sub_100001DFC(&qword_100034E00, &qword_10002A1E0);
      (*(*(v123 - 8) + 56))(v99, 0, 1, v123);
LABEL_17:
      sub_100008798(v99, v174, &qword_100034D90, &qword_10002A188);
      swift_storeEnumTagMultiPayload();
      sub_10001A1F0();
      sub_10001A38C();
      sub_100027F7C();
      sub_100008800(v99, &qword_100034D90, &qword_10002A188);
      v111 = v180;
      v81 = v185;
LABEL_18:
      v124 = sub_100001DFC(&qword_100034E68, &qword_10002A1F8);
      (*(*(v124 - 8) + 56))(v82, 0, 1, v124);
      v78 = v191;
      sub_100016F44(v82, v191, &qword_100034DB0, &qword_10002A1A8);
      (*(v111 + 56))(v78, 0, 1, v81);
      goto LABEL_19;
    }

    v112 = *(v63 + 232);
    v198 = v112;
    v197 = 2;
    sub_100006C6C();
    sub_10002843C();
    sub_10002843C();
    if (v200 == v196)
    {
      goto LABEL_12;
    }

    v113 = sub_10002863C();

    if (v113)
    {
      goto LABEL_14;
    }

    v198 = v112;
    v197 = 4;
    sub_10002843C();
    sub_10002843C();
    if (v200 == v196)
    {
LABEL_12:

LABEL_14:
      v114 = v154;
      sub_1000166C8(v63, v154, type metadata accessor for InviteMessageView);
      sub_10002831C();
      sub_100027E1C();
      v115 = v114;
      v116 = v155;
      sub_10001603C(v115, v155, type metadata accessor for InviteActionsView);
      v117 = (v116 + *(v161 + 36));
      v118 = v201[4];
      v117[4] = v201[3];
      v117[5] = v118;
      v117[6] = v202;
      v119 = v201[0];
      *v117 = v200;
      v117[1] = v119;
      v120 = v201[2];
      v117[2] = v201[1];
      v117[3] = v120;
      v121 = v156;
      sub_100016F44(v116, v156, &qword_100034D70, &qword_10002A168);
      sub_100008798(v121, v160, &qword_100034D70, &qword_10002A168);
      swift_storeEnumTagMultiPayload();
      sub_100001DFC(&qword_100034E50, &qword_10002A1F0);
      sub_10001A528();
      sub_10001A608();
      v122 = v162;
      sub_100027F7C();
      sub_100008798(v122, v165, &qword_100034D88, &qword_10002A180);
      swift_storeEnumTagMultiPayload();
      sub_100001DFC(&qword_100034E18, &qword_10002A1E8);
      sub_10001A49C();
      sub_10001A2AC();
      v99 = v170;
      sub_100027F7C();
      sub_100008800(v122, &qword_100034D88, &qword_10002A180);
      v100 = v121;
      v101 = &qword_100034D70;
      v102 = &qword_10002A168;
      goto LABEL_15;
    }

    v140 = sub_10002863C();

    if (v140)
    {
      goto LABEL_14;
    }

    v198 = v112;
    v197 = 0;
    sub_10002843C();
    sub_10002843C();
    if (v200 != v196)
    {
      v141 = sub_10002863C();

      if (v141)
      {
        goto LABEL_25;
      }

      v198 = v112;
      v197 = 1;
      sub_10002843C();
      sub_10002843C();
      if (v200 != v196)
      {
        v150 = sub_10002863C();

        if (v150)
        {
          goto LABEL_25;
        }

        v198 = v112;
        v197 = 3;
        sub_10002843C();
        sub_10002843C();
        if (v200 != v196)
        {
          v151 = sub_10002863C();

          if ((v151 & 1) == 0)
          {
            v152 = sub_100001DFC(&qword_100034E00, &qword_10002A1E0);
            v99 = v170;
            (*(*(v152 - 8) + 56))(v170, 1, 1, v152);
            goto LABEL_17;
          }

          goto LABEL_25;
        }
      }
    }

LABEL_25:
    v142 = v158;
    sub_1000166C8(v63, v158, type metadata accessor for InviteMessageView);
    sub_100016520(v142, &v200);
    LOBYTE(v142) = sub_10002802C();
    nullsub_1(4.0);
    sub_100027D6C();
    LOBYTE(v196) = 0;
    v143 = v201[2];
    v144 = v165;
    *(v165 + 32) = v201[1];
    *(v144 + 48) = v143;
    *(v144 + 64) = v201[3];
    *(v144 + 80) = *&v201[4];
    v145 = v201[0];
    *v144 = v200;
    *(v144 + 16) = v145;
    *(v144 + 88) = v142;
    *(v144 + 96) = v146;
    *(v144 + 104) = v147;
    *(v144 + 112) = v148;
    *(v144 + 120) = v149;
    *(v144 + 128) = 0;
    swift_storeEnumTagMultiPayload();
    sub_100001DFC(&qword_100034E18, &qword_10002A1E8);
    sub_10001A49C();
    sub_10001A2AC();
    v99 = v170;
    sub_100027F7C();
    goto LABEL_16;
  }

  v77 = v191;
  (*(v180 + 56))(v191, 1, 1, v185);

  v78 = v77;
LABEL_19:
  v125 = v187;
  v126 = v188[2];
  v127 = v189;
  v126(v187, v186, v189);
  v128 = v192;
  sub_100008798(v190, v192, &qword_100034DC8, &qword_10002A1C0);
  v129 = v182;
  v185 = *(v182 + 16);
  (v185)(v193, v195, v194);
  v130 = v78;
  v131 = v183;
  sub_100008798(v130, v183, &qword_100034DB8, &qword_10002A1B0);
  v132 = v184;
  v126(v184, v125, v127);
  v133 = sub_100001DFC(&qword_100034E70, &qword_10002A200);
  sub_100008798(v128, &v132[v133[12]], &qword_100034DC8, &qword_10002A1C0);
  v134 = v193;
  v135 = v194;
  (v185)(&v132[v133[16]], v193, v194);
  *&v132[v133[20]] = v181;
  sub_100008798(v131, &v132[v133[24]], &qword_100034DB8, &qword_10002A1B0);

  sub_100008800(v191, &qword_100034DB8, &qword_10002A1B0);
  v136 = *(v129 + 8);
  v136(v195, v135);
  sub_100008800(v190, &qword_100034DC8, &qword_10002A1C0);
  v137 = v189;
  v138 = v188[1];
  v138(v186, v189);
  sub_100008800(v131, &qword_100034DB8, &qword_10002A1B0);

  v136(v134, v135);
  sub_100008800(v192, &qword_100034DC8, &qword_10002A1C0);
  return (v138)(v187, v137);
}

uint64_t sub_10000B0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10001603C(a1, a3, type metadata accessor for InviteMessageView);
  v5 = type metadata accessor for SettingsView(0);
  return sub_10001603C(a2, a3 + *(v5 + 20), type metadata accessor for InviteMessageDetails);
}

uint64_t sub_10000B168@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000280CC();
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  __chkstk_darwin(v4);
  v55 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  v7 = a1[1];
  v60 = *a1;
  v61 = v7;
  v49 = sub_100017000();

  v8 = sub_10002816C();
  v10 = v9;
  v12 = v11;
  sub_10002807C();
  v13 = sub_10002813C();
  v15 = v14;
  v17 = v16;

  sub_100018604(v8, v10, v12 & 1);

  sub_10002809C();
  v18 = sub_10002811C();
  v20 = v19;
  LOBYTE(v8) = v21;
  sub_100018604(v13, v15, v17 & 1);

  sub_10002824C();
  v22 = sub_10002812C();
  v52 = v23;
  v53 = v22;
  v51 = v24;
  v54 = v25;

  sub_100018604(v18, v20, v8 & 1);

  v26 = v50[3];
  v60 = v50[2];
  v61 = v26;

  v27 = sub_10002816C();
  v29 = v28;
  LOBYTE(v10) = v30;
  sub_10002824C();
  v31 = sub_10002812C();
  v33 = v32;
  LOBYTE(v18) = v34;

  sub_100018604(v27, v29, v10 & 1);

  sub_10002810C();
  v36 = v55;
  v35 = v56;
  v37 = v57;
  (*(v56 + 104))(v55, enum case for Font.Leading.tight(_:), v57);
  sub_1000280EC();

  (*(v35 + 8))(v36, v37);
  v38 = sub_10002813C();
  v40 = v39;
  LOBYTE(v36) = v41;
  v43 = v42;

  sub_100018604(v31, v33, v18 & 1);

  v44 = v51 & 1;
  LOBYTE(v60) = v51 & 1;
  v59 = v51 & 1;
  v58 = v36 & 1;
  v46 = v52;
  v45 = v53;
  *a2 = v53;
  *(a2 + 8) = v46;
  *(a2 + 16) = v44;
  *(a2 + 24) = v54;
  *(a2 + 32) = v38;
  *(a2 + 40) = v40;
  *(a2 + 48) = v36 & 1;
  *(a2 + 56) = v43;
  *(a2 + 64) = 256;
  v47 = v45;
  sub_100016FF0(v45, v46, v44);

  sub_100016FF0(v38, v40, v36 & 1);

  sub_100018604(v38, v40, v36 & 1);

  sub_100018604(v47, v46, v60);
}

double sub_10000B520@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100016520(a1, v6);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

void sub_10000B5A8(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v33 = a7;
  v15 = sub_100027CAC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001603C(a1, a8, type metadata accessor for InviteMessageDetails);
  v20 = type metadata accessor for InviteMessageView(0);
  v21 = a8 + v20[5];
  *v21 = a2;
  *(v21 + 8) = a3 & 1;
  v22 = (a8 + v20[6]);
  *v22 = a4;
  v22[1] = a5;
  v23 = (a8 + v20[7]);
  v24 = type metadata accessor for FamilyFetcher();
  v25 = sub_10001EFD0();
  v23[3] = v24;
  v23[4] = &off_1000318A8;
  *v23 = v25;
  v26 = a8 + v20[8];
  v34 = a6;
  sub_1000282BC();
  v27 = v36;
  *v26 = v35;
  *(v26 + 8) = v27;
  v28 = a8 + v20[9];
  v34 = v33;
  sub_1000282BC();
  v29 = v36;
  *v28 = v35;
  *(v28 + 8) = v29;
  (*(v16 + 104))(v19, enum case for FamilyFeatureFlags.familyPrivacyDisclosure(_:), v15);
  LOBYTE(v24) = sub_100027C9C();
  (*(v16 + 8))(v19, v15);
  v30 = 0.0;
  if (v24)
  {
    v30 = 3.0;
  }

  v31 = v20[10];
  *(a8 + v31) = nullsub_1(v30);
}

uint64_t sub_10000B7FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100027E9C();
  v4 = nullsub_1(10.0);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  v5 = sub_100001DFC(&qword_1000348A0, &qword_100029818);
  return sub_10000B864(v1, a1 + *(v5 + 44));
}

uint64_t sub_10000B864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v157 = sub_100001DFC(&qword_100034CF8, &qword_10002A0F0);
  v4 = *(*(v157 - 8) + 64);
  __chkstk_darwin(v157);
  v6 = v133 - v5;
  v147 = sub_100001DFC(&qword_100034D00, &qword_10002A0F8);
  v7 = *(*(v147 - 8) + 64);
  v8 = __chkstk_darwin(v147);
  v149 = v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v148 = v133 - v11;
  v12 = __chkstk_darwin(v10);
  v146 = v133 - v13;
  v14 = __chkstk_darwin(v12);
  v150 = v133 - v15;
  v16 = __chkstk_darwin(v14);
  v143 = v133 - v17;
  __chkstk_darwin(v16);
  v151 = v133 - v18;
  v155 = sub_100001DFC(&qword_100034D08, &qword_10002A100);
  v19 = *(*(v155 - 8) + 64);
  __chkstk_darwin(v155);
  v156 = v133 - v20;
  v21 = type metadata accessor for InviteActionsView(0);
  *&v152 = *(v21 - 8);
  v22 = *(v152 + 64);
  __chkstk_darwin(v21 - 8);
  v159 = v23;
  v153 = v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_100001DFC(&qword_100034D10, &qword_10002A108);
  v154 = *(v161 - 8);
  v24 = *(v154 + 64);
  v25 = __chkstk_darwin(v161);
  v144 = v133 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v140 = v133 - v28;
  __chkstk_darwin(v27);
  v30 = v133 - v29;
  v160 = sub_100001DFC(&qword_100034D18, &qword_10002A110);
  v31 = *(*(v160 - 8) + 64);
  v32 = __chkstk_darwin(v160);
  v34 = v133 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v32);
  v141 = v133 - v36;
  __chkstk_darwin(v35);
  v38 = v133 - v37;
  v162 = sub_100001DFC(&qword_100034D20, &qword_10002A118);
  v39 = *(*(v162 - 8) + 64);
  v40 = __chkstk_darwin(v162);
  v145 = v133 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v142 = v133 - v43;
  __chkstk_darwin(v42);
  v45 = v133 - v44;
  v163 = sub_100001DFC(&qword_100034D28, &qword_10002A120);
  v46 = *(*(v163 - 8) + 64);
  v47 = __chkstk_darwin(v163);
  v48 = __chkstk_darwin(v47);
  v49 = __chkstk_darwin(v48);
  v51 = v133 - v50;
  __chkstk_darwin(v49);
  v55 = v133 - v54;
  v56 = *(a1 + 234);
  v158 = a2;
  if ((v56 & 1) == 0)
  {
    v136 = v53;
    v137 = v52;
    v138 = v34;
    v139 = v6;
    v165 = *(a1 + 232);
    v164 = 4;
    sub_100006C6C();
    sub_10002843C();
    sub_10002843C();
    if (v173 == v166)
    {
    }

    else
    {
      v57 = sub_10002863C();

      if ((v57 & 1) == 0)
      {
        v135 = a1;
        v81 = v153;
        sub_1000166C8(a1, v153, type metadata accessor for InviteActionsView);
        v82 = (*(v152 + 80) + 32) & ~*(v152 + 80);
        v83 = swift_allocObject();
        v152 = xmmword_1000297A0;
        *(v83 + 16) = xmmword_1000297A0;
        sub_10001603C(v81, v83 + v82, type metadata accessor for InviteActionsView);
        v84 = v140;
        sub_1000282FC();
        nullsub_1(34.0);
        sub_10002831C();
        sub_100027E1C();
        v85 = v141;
        v140 = *(v154 + 32);
        (v140)(v141, v84, v161);
        v86 = (v85 + *(v160 + 36));
        v87 = v171;
        v86[4] = v170;
        v86[5] = v87;
        v86[6] = v172;
        v88 = v167;
        *v86 = v166;
        v86[1] = v88;
        v89 = v169;
        v86[2] = v168;
        v86[3] = v89;
        v134 = objc_opt_self();
        v90 = [v134 secondarySystemFillColor];
        v91 = sub_1000281FC();
        v92 = sub_10002801C();
        v93 = v142;
        sub_100016F44(v85, v142, &qword_100034D18, &qword_10002A110);
        v94 = v93 + *(v162 + 36);
        *v94 = v91;
        *(v94 + 8) = v92;
        v95 = nullsub_1(10.0);
        v96 = v136;
        v97 = (v136 + *(v163 + 36));
        v154 = sub_100027E0C();
        v98 = *(v154 + 20);
        v99 = enum case for RoundedCornerStyle.continuous(_:);
        v100 = sub_100027F0C();
        v101 = *(v100 - 8);
        v102 = *(v101 + 104);
        LODWORD(v141) = v99;
        v103 = v99;
        v104 = v102;
        v133[1] = v101 + 104;
        v102(v97 + v98, v103, v100);
        *v97 = v95;
        v97[1] = v95;
        v105 = sub_100001DFC(&qword_100034D30, &qword_10002A128);
        *(v97 + *(v105 + 36)) = 256;
        sub_100016F44(v93, v96, &qword_100034D20, &qword_10002A118);
        v106 = v143;
        sub_100016F44(v96, v143, &qword_100034D28, &qword_10002A120);
        v107 = v147;
        *(v106 + *(v147 + 36)) = 0;
        sub_100016F44(v106, v151, &qword_100034D00, &qword_10002A0F8);
        sub_1000166C8(v135, v81, type metadata accessor for InviteActionsView);
        v108 = swift_allocObject();
        *(v108 + 16) = v152;
        sub_10001603C(v81, v108 + v82, type metadata accessor for InviteActionsView);
        v109 = v144;
        sub_1000282FC();
        nullsub_1(34.0);
        sub_10002831C();
        sub_100027E1C();
        v110 = v138;
        (v140)(v138, v109, v161);
        v111 = (v110 + *(v160 + 36));
        v112 = v176;
        v113 = v178;
        v114 = v179;
        v111[4] = v177;
        v111[5] = v113;
        v111[6] = v114;
        v115 = v174;
        v116 = v175;
        *v111 = v173;
        v111[1] = v115;
        v111[2] = v116;
        v111[3] = v112;
        v117 = [v134 systemBlueColor];
        v118 = sub_1000281FC();
        LOBYTE(v93) = sub_10002801C();
        v119 = v110;
        v120 = v145;
        sub_100016F44(v119, v145, &qword_100034D18, &qword_10002A110);
        v121 = v120 + *(v162 + 36);
        *v121 = v118;
        *(v121 + 8) = v93;
        v122 = nullsub_1(10.0);
        v123 = v137;
        v124 = (v137 + *(v163 + 36));
        v104(v124 + *(v154 + 20), v141, v100);
        *v124 = v122;
        v124[1] = v122;
        *(v124 + *(v105 + 36)) = 256;
        sub_100016F44(v120, v123, &qword_100034D20, &qword_10002A118);
        v125 = v123;
        v126 = v146;
        sub_100016F44(v125, v146, &qword_100034D28, &qword_10002A120);
        *(v126 + *(v107 + 36)) = 0;
        v77 = &qword_100034D00;
        v78 = &qword_10002A0F8;
        v127 = v150;
        sub_100016F44(v126, v150, &qword_100034D00, &qword_10002A0F8);
        v128 = v151;
        v129 = v148;
        sub_100008798(v151, v148, &qword_100034D00, &qword_10002A0F8);
        v130 = v149;
        sub_100008798(v127, v149, &qword_100034D00, &qword_10002A0F8);
        v131 = v139;
        sub_100008798(v129, v139, &qword_100034D00, &qword_10002A0F8);
        v132 = sub_100001DFC(&qword_100034D38, &qword_10002A130);
        sub_100008798(v130, v131 + *(v132 + 48), &qword_100034D00, &qword_10002A0F8);
        sub_100008800(v130, &qword_100034D00, &qword_10002A0F8);
        sub_100008800(v129, &qword_100034D00, &qword_10002A0F8);
        sub_100008798(v131, v156, &qword_100034CF8, &qword_10002A0F0);
        swift_storeEnumTagMultiPayload();
        sub_100019378();
        sub_10001A1A8(&qword_100034D68, &qword_100034CF8, &qword_10002A0F0);
        sub_100027F7C();
        sub_100008800(v131, &qword_100034CF8, &qword_10002A0F0);
        sub_100008800(v127, &qword_100034D00, &qword_10002A0F8);
        v79 = v128;
        return sub_100008800(v79, v77, v78);
      }
    }
  }

  v58 = v153;
  sub_1000166C8(a1, v153, type metadata accessor for InviteActionsView);
  v59 = (*(v152 + 80) + 32) & ~*(v152 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1000297A0;
  v61 = sub_10001603C(v58, v60 + v59, type metadata accessor for InviteActionsView);
  __chkstk_darwin(v61);
  sub_1000282FC();
  nullsub_1(34.0);
  sub_10002831C();
  sub_100027E1C();
  (*(v154 + 32))(v38, v30, v161);
  v62 = &v38[*(v160 + 36)];
  v63 = v176;
  v64 = v178;
  v65 = v179;
  *(v62 + 4) = v177;
  *(v62 + 5) = v64;
  *(v62 + 6) = v65;
  v66 = v174;
  v67 = v175;
  *v62 = v173;
  *(v62 + 1) = v66;
  *(v62 + 2) = v67;
  *(v62 + 3) = v63;
  v68 = [objc_opt_self() systemBlueColor];
  v69 = sub_1000281FC();
  v70 = sub_10002801C();
  sub_100016F44(v38, v45, &qword_100034D18, &qword_10002A110);
  v71 = &v45[*(v162 + 36)];
  *v71 = v69;
  v71[8] = v70;
  v72 = nullsub_1(10.0);
  v73 = &v51[*(v163 + 36)];
  v74 = *(sub_100027E0C() + 20);
  v75 = enum case for RoundedCornerStyle.continuous(_:);
  v76 = sub_100027F0C();
  (*(*(v76 - 8) + 104))(v73 + v74, v75, v76);
  *v73 = v72;
  v73[1] = v72;
  *(v73 + *(sub_100001DFC(&qword_100034D30, &qword_10002A128) + 36)) = 256;
  sub_100016F44(v45, v51, &qword_100034D20, &qword_10002A118);
  v77 = &qword_100034D28;
  v78 = &qword_10002A120;
  sub_100016F44(v51, v55, &qword_100034D28, &qword_10002A120);
  sub_100008798(v55, v156, &qword_100034D28, &qword_10002A120);
  swift_storeEnumTagMultiPayload();
  sub_100019378();
  sub_10001A1A8(&qword_100034D68, &qword_100034CF8, &qword_10002A0F0);
  sub_100027F7C();
  v79 = v55;
  return sub_100008800(v79, v77, v78);
}

void sub_10000CB1C(uint64_t a1)
{
  v2 = type metadata accessor for InviteActionsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001DFC(&qword_1000347B0, &qword_100029840);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v27 - v8;
  v10 = type metadata accessor for InviteMessageView(0);
  v11 = a1 + *(v10 + 24);
  v12 = *v11;
  if (*v11)
  {
    v27 = *(v11 + 8);
    v13 = a1 + *(v10 + 36);
    v14 = *v13;
    v15 = *(v13 + 8);
    v29 = v14;
    v30 = v15;
    v28 = 1;
    v16 = v12;
    sub_100001DFC(&qword_100034858, &qword_1000297D0);
    sub_1000282DC();
    sub_100027D0C();
    v17 = sub_100027CFC();
    sub_10001A708(*(a1 + 232));
    v18 = *(a1 + 233);
    sub_100027CDC();

    v19 = sub_1000284CC();
    (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    sub_1000166C8(a1, &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InviteActionsView);
    sub_1000284AC();
    v20 = v16;
    v21 = sub_10002849C();
    v22 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v23 = (v4 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 16) = v21;
    *(v24 + 24) = &protocol witness table for MainActor;
    sub_10001603C(v5, v24 + v22, type metadata accessor for InviteActionsView);
    v25 = (v24 + v23);
    v26 = v27;
    *v25 = v20;
    v25[1] = v26;
    sub_100005128(0, 0, v9, &unk_10002A140, v24);
  }
}

uint64_t sub_10000CDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = *(*(sub_100001DFC(&qword_1000348A8, &unk_10002A420) - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  sub_1000284AC();
  v6[8] = sub_10002849C();
  v9 = sub_10002848C();
  v6[9] = v9;
  v6[10] = v8;

  return _swift_task_switch(sub_10000CECC, v9, v8);
}

uint64_t sub_10000CECC()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = *(v2 + 96);
  v4 = *(v2 + 104);
  sub_100027BDC();
  v5 = type metadata accessor for InviteMessageView(0);
  v0[11] = v5;
  v6 = *(v5 + 28);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_10000CFA8;
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[5];

  return sub_10000D1B8(v9, v10, v8, v2 + v6, 0xD000000000000014, 0x800000010002A870);
}

uint64_t sub_10000CFA8()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 56);
  v7 = *v0;

  sub_100008800(v3, &qword_1000348A8, &unk_10002A420);
  v4 = *(v1 + 80);
  v5 = *(v1 + 72);

  return _swift_task_switch(sub_10000D0FC, v5, v4);
}

uint64_t sub_10000D0FC()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 32);

  v5 = (v4 + *(v1 + 36));
  v6 = *v5;
  v7 = *(v5 + 1);
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  *(v0 + 104) = 0;
  sub_100001DFC(&qword_100034858, &qword_1000297D0);
  sub_1000282DC();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10000D1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v7 = sub_100027D5C();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v10 = *(*(sub_100027C3C() - 8) + 64) + 15;
  v6[16] = swift_task_alloc();
  v11 = *(*(sub_1000283CC() - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v12 = *(*(sub_100001DFC(&qword_1000348A8, &unk_10002A420) - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v13 = sub_100027BEC();
  v6[19] = v13;
  v14 = *(v13 - 8);
  v6[20] = v14;
  v15 = *(v14 + 64) + 15;
  v6[21] = swift_task_alloc();

  return _swift_task_switch(sub_10000D378, 0, 0);
}

uint64_t sub_10000D378()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_100008798(v0[6], v3, &qword_1000348A8, &unk_10002A420);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[14];
    sub_100008800(v0[18], &qword_1000348A8, &unk_10002A420);
    sub_100027CCC();
    v5 = sub_100027D4C();
    v6 = sub_1000284EC();
    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[13];
    v8 = v0[14];
    v10 = v0[12];
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "invalid url in openFamilyInvite", v11, 2u);
    }

    (*(v9 + 8))(v8, v10);
    v12 = v0[21];
    v13 = v0[17];
    v14 = v0[18];
    v16 = v0[15];
    v15 = v0[16];
    v17 = v0[14];

    v18 = v0[1];

    return v18(0);
  }

  else
  {
    v20 = v0[9];
    v21 = v0[7];
    (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
    v22 = v20[3];
    v23 = v20[4];
    sub_100008754(v20, v22);
    v0[22] = swift_getObjectType();
    v24 = *(v23 + 56);
    v31 = (v24 + *v24);
    v25 = v24[1];
    v26 = swift_task_alloc();
    v0[23] = v26;
    *v26 = v0;
    v26[1] = sub_10000D65C;
    v27 = v0[21];
    v28 = v0[10];
    v29 = v0[11];
    v30 = v0[7];

    return v31(v27, v30, v28, v29, v22, v23);
  }
}

uint64_t sub_10000D65C(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_10000D75C, 0, 0);
}

uint64_t sub_10000D75C()
{
  v1 = [*(v0 + 192) error];
  if (v1)
  {
    v2 = v1;
    v43 = *(v0 + 176);
    v3 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    sub_1000283BC();
    sub_100027C2C();
    v7 = sub_1000283FC();
    v9 = v8;
    swift_getErrorValue();
    v11 = *(v0 + 16);
    v10 = *(v0 + 24);
    v12 = *(v0 + 32);
    v13 = sub_10002866C();
    v15 = v14;
    sub_1000283BC();
    sub_100027C2C();
    v16 = sub_1000283FC();
    (*(v5 + 8))(v7, v9, v13, v15, v16, v17, v43, v5);
  }

  v18 = *(v0 + 192);
  v19 = *(v0 + 120);
  sub_100027CCC();
  v20 = v18;
  v21 = sub_100027D4C();
  v22 = sub_10002850C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 192);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v23;
    *v25 = v23;
    v26 = v23;
    _os_log_impl(&_mh_execute_header, v21, v22, "Did present Family invite: %@", v24, 0xCu);
    sub_100008800(v25, &qword_1000348B0, &qword_100029830);
  }

  v27 = *(v0 + 192);
  v29 = *(v0 + 160);
  v28 = *(v0 + 168);
  v30 = *(v0 + 152);
  v31 = *(v0 + 120);
  v32 = *(v0 + 96);
  v33 = *(v0 + 104);

  (*(v33 + 8))(v31, v32);
  v34 = [v27 success];

  (*(v29 + 8))(v28, v30);
  v35 = *(v0 + 168);
  v37 = *(v0 + 136);
  v36 = *(v0 + 144);
  v39 = *(v0 + 120);
  v38 = *(v0 + 128);
  v40 = *(v0 + 112);

  v41 = *(v0 + 8);

  return v41(v34);
}

uint64_t sub_10000DA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001DFC(&qword_1000347B0, &qword_100029840);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100008798(a3, v27 - v11, &qword_1000347B0, &qword_100029840);
  v13 = sub_1000284CC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100008800(v12, &qword_1000347B0, &qword_100029840);
  }

  else
  {
    sub_1000284BC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_10002848C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_10002840C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100008800(a3, &qword_1000347B0, &qword_100029840);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008800(a3, &qword_1000347B0, &qword_100029840);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10000DD80(uint64_t a1)
{
  v2 = type metadata accessor for InviteActionsView(0);
  v35 = *(v2 - 8);
  v3 = *(v35 + 64);
  __chkstk_darwin(v2 - 8);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001DFC(&qword_1000347B0, &qword_100029840);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v37 = &v33 - v6;
  v7 = sub_100001DFC(&qword_1000348A8, &unk_10002A420);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v33 - v9;
  v11 = sub_100027BEC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v33 - v16;
  v18 = type metadata accessor for InviteMessageDetails();
  sub_100008798(a1 + *(v18 + 100), v10, &qword_1000348A8, &unk_10002A420);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_100008800(v10, &qword_1000348A8, &unk_10002A420);
  }

  v20 = *(v12 + 32);
  v33 = v12 + 32;
  v34 = v20;
  v21 = v17;
  v20(v17, v10, v11);
  v22 = a1 + *(type metadata accessor for InviteMessageView(0) + 32);
  v23 = *v22;
  v24 = *(v22 + 8);
  v39 = v23;
  v40 = v24;
  v38 = 1;
  sub_100001DFC(&qword_100034858, &qword_1000297D0);
  sub_1000282DC();
  sub_100027D0C();
  v25 = sub_100027CFC();
  sub_10001A708(*(a1 + 232));
  v26 = *(a1 + 233);
  sub_100027CDC();

  v27 = sub_1000284CC();
  (*(*(v27 - 8) + 56))(v37, 1, 1, v27);
  v28 = v36;
  sub_1000166C8(a1, v36, type metadata accessor for InviteActionsView);
  (*(v12 + 16))(v15, v21, v11);
  sub_1000284AC();
  v29 = sub_10002849C();
  v30 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v31 = (v3 + *(v12 + 80) + v30) & ~*(v12 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  *(v32 + 24) = &protocol witness table for MainActor;
  sub_10001603C(v28, v32 + v30, type metadata accessor for InviteActionsView);
  v34(v32 + v31, v15, v11);
  sub_100005128(0, 0, v37, &unk_10002A160, v32);

  return (*(v12 + 8))(v21, v11);
}

uint64_t sub_10000E210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_1000284AC();
  v5[3] = sub_10002849C();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_10000E2D0;

  return sub_10000E46C(a5, 2);
}

uint64_t sub_10000E2D0()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_10002848C();

  return _swift_task_switch(sub_10000E40C, v5, v4);
}

uint64_t sub_10000E40C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000E46C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = *(*(sub_100001DFC(&qword_1000348A8, &unk_10002A420) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v5 = sub_100027BEC();
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v7 = *(v6 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v8 = *(type metadata accessor for InviteActionsView(0) - 8);
  v3[15] = v8;
  v3[16] = *(v8 + 64);
  v3[17] = swift_task_alloc();
  v9 = *(*(sub_100001DFC(&qword_1000347B0, &qword_100029840) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v10 = sub_100027CAC();
  v3[19] = v10;
  v11 = *(v10 - 8);
  v3[20] = v11;
  v12 = *(v11 + 64) + 15;
  v3[21] = swift_task_alloc();
  v13 = sub_100027D5C();
  v3[22] = v13;
  v14 = *(v13 - 8);
  v3[23] = v14;
  v15 = *(v14 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = sub_1000284AC();
  v3[28] = sub_10002849C();
  v17 = sub_10002848C();
  v3[29] = v17;
  v3[30] = v16;

  return _swift_task_switch(sub_10000E720, v17, v16);
}

uint64_t sub_10000E720()
{
  v1 = *(v0 + 208);
  sub_100027CCC();
  v2 = sub_100027D4C();
  v3 = sub_10002850C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 56);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "User didTap %ld button", v5, 0xCu);
  }

  v6 = *(v0 + 208);
  v7 = *(v0 + 176);
  v8 = *(v0 + 184);
  v9 = *(v0 + 64);

  v10 = *(v8 + 8);
  *(v0 + 248) = v10;
  *(v0 + 256) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v7);
  v11 = type metadata accessor for InviteMessageView(0);
  *(v0 + 264) = v11;
  v12 = v9 + *(v11 + 24);
  v13 = *v12;
  *(v0 + 272) = *v12;
  if (!v13)
  {
    v36 = v11;
    v37 = *(v0 + 224);
    v38 = *(v0 + 192);

    sub_100027CCC();
    v39 = sub_100027D4C();
    v40 = sub_1000284EC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "No presenter, return", v41, 2u);
    }

    v42 = *(v0 + 192);
    v43 = *(v0 + 176);
    v44 = *(v0 + 64);

    v10(v42, v43);
    v45 = (v44 + *(v36 + 32));
    v46 = *v45;
    v47 = *(v45 + 1);
    *(v0 + 16) = v46;
    *(v0 + 24) = v47;
    *(v0 + 364) = 0;
    sub_100001DFC(&qword_100034858, &qword_1000297D0);
    goto LABEL_10;
  }

  v15 = *(v0 + 160);
  v14 = *(v0 + 168);
  v16 = *(v0 + 152);
  v17 = *(v12 + 8);
  *(v0 + 280) = v17;
  (*(v15 + 104))(v14, enum case for FamilyFeatureFlags.familyPrivacyDisclosure(_:), v16);
  v18 = v13;
  v19 = sub_100027C9C();
  (*(v15 + 8))(v14, v16);
  if (v19)
  {
    if (*(v0 + 56) == 1)
    {
      v21 = *(v0 + 216);
      v20 = *(v0 + 224);
      v23 = *(v0 + 136);
      v22 = *(v0 + 144);
      v25 = *(v0 + 120);
      v24 = *(v0 + 128);
      v26 = *(v0 + 64);

      v27 = sub_1000284CC();
      (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
      sub_1000166C8(v26, v23, type metadata accessor for InviteActionsView);
      v28 = v18;
      v29 = sub_10002849C();
      v30 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = v29;
      *(v31 + 24) = &protocol witness table for MainActor;
      sub_10001603C(v23, v31 + v30, type metadata accessor for InviteActionsView);
      v32 = (v31 + ((v24 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v32 = v28;
      v32[1] = v17;
      sub_100005128(0, 0, v22, &unk_100029870, v31);

      v33 = (*(v0 + 64) + *(*(v0 + 264) + 32));
      v34 = *v33;
      v35 = *(v33 + 1);
      *(v0 + 32) = v34;
      *(v0 + 40) = v35;
      *(v0 + 365) = 0;
      sub_100001DFC(&qword_100034858, &qword_1000297D0);
LABEL_10:
      sub_1000282DC();
      v49 = *(v0 + 200);
      v48 = *(v0 + 208);
      v50 = *(v0 + 192);
      v51 = *(v0 + 168);
      v53 = *(v0 + 136);
      v52 = *(v0 + 144);
      v55 = *(v0 + 104);
      v54 = *(v0 + 112);
      v57 = *(v0 + 72);
      v56 = *(v0 + 80);

      v58 = *(v0 + 8);

      return v58();
    }

    sub_100001DFC(&qword_1000348B8, &qword_100029858);
    v62 = swift_allocObject();
    *(v0 + 288) = v62;
    *(v62 + 16) = xmmword_100029790;
    v63 = objc_opt_self();
    v64 = [v63 mainBundle];
    v88._countAndFlagsBits = 0xE000000000000000;
    v95._object = 0x800000010002A7B0;
    v95._countAndFlagsBits = 0xD000000000000017;
    v99.value._countAndFlagsBits = 0;
    v99.value._object = 0;
    v65.super.isa = v64;
    v103._countAndFlagsBits = 0;
    v103._object = 0xE000000000000000;
    v66 = sub_100027B4C(v95, v99, v65, v103, v88);
    v68 = v67;

    *(v62 + 32) = v66;
    *(v62 + 40) = v68;
    v69 = [v63 mainBundle];
    v89._countAndFlagsBits = 0xE000000000000000;
    v96._countAndFlagsBits = 0x6C65636E6143;
    v96._object = 0xE600000000000000;
    v100.value._countAndFlagsBits = 0;
    v100.value._object = 0;
    v70.super.isa = v69;
    v104._countAndFlagsBits = 0;
    v104._object = 0xE000000000000000;
    v71 = sub_100027B4C(v96, v100, v70, v104, v89);
    v73 = v72;

    *(v62 + 48) = v71;
    *(v62 + 56) = v73;
    ObjectType = swift_getObjectType();
    v74 = [v63 mainBundle];
    v90._countAndFlagsBits = 0xE000000000000000;
    v97._countAndFlagsBits = 0xD00000000000001CLL;
    v97._object = 0x800000010002A7D0;
    v101.value._countAndFlagsBits = 0;
    v101.value._object = 0;
    v75.super.isa = v74;
    v105._countAndFlagsBits = 0;
    v105._object = 0xE000000000000000;
    v76 = sub_100027B4C(v97, v101, v75, v105, v90);
    v78 = v77;

    *(v0 + 296) = v78;
    v79 = [v63 mainBundle];
    v91._countAndFlagsBits = 0xE000000000000000;
    v98._countAndFlagsBits = 0xD00000000000001ELL;
    v98._object = 0x800000010002A7F0;
    v102.value._countAndFlagsBits = 0;
    v102.value._object = 0;
    v80.super.isa = v79;
    v106._countAndFlagsBits = 0;
    v106._object = 0xE000000000000000;
    v81 = sub_100027B4C(v98, v102, v80, v106, v91);
    v83 = v82;

    *(v0 + 304) = v83;
    sub_100001DFC(&qword_1000348C0, &qword_100029860);
    v84 = swift_allocObject();
    *(v0 + 312) = v84;
    *(v84 + 16) = xmmword_1000297B0;
    sub_100016788();
    *(v84 + 32) = sub_10002852C(2);
    *(v84 + 40) = sub_10002852C(1);
    v85 = *(v17 + 16);
    v92 = (v85 + *v85);
    v86 = v85[1];
    v87 = swift_task_alloc();
    *(v0 + 320) = v87;
    *v87 = v0;
    v87[1] = sub_10000EF40;

    return v92(v76, v78, v81, v83, v62, v84, ObjectType, v17);
  }

  else
  {
    v60 = swift_task_alloc();
    *(v0 + 344) = v60;
    *v60 = v0;
    v60[1] = sub_10000F73C;
    v61 = *(v0 + 72);

    return sub_1000107D4(v61);
  }
}

uint64_t sub_10000EF40(int a1)
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *(*v1 + 312);
  v5 = *(*v1 + 304);
  v6 = *(*v1 + 296);
  v7 = *(*v1 + 288);
  v11 = *v1;
  *(*v1 + 360) = a1;

  v8 = *(v2 + 240);
  v9 = *(v2 + 232);

  return _swift_task_switch(sub_10000F0E8, v9, v8);
}

uint64_t sub_10000F0E8()
{
  v1 = *(v0 + 200);
  sub_100027CCC();
  v2 = sub_100027D4C();
  v3 = sub_10002850C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 360);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "User in tap in alert sheet: %d", v5, 8u);
  }

  v6 = *(v0 + 360);
  v8 = *(v0 + 248);
  v7 = *(v0 + 256);
  v9 = *(v0 + 200);
  v10 = *(v0 + 176);

  v8(v9, v10);
  if (v6)
  {
    v11 = *(v0 + 272);
    v12 = *(v0 + 224);

    v13 = (*(v0 + 64) + *(*(v0 + 264) + 32));
    v14 = *v13;
    v15 = *(v13 + 1);
    *(v0 + 32) = v14;
    *(v0 + 40) = v15;
    *(v0 + 365) = 0;
    sub_100001DFC(&qword_100034858, &qword_1000297D0);
    sub_1000282DC();
    v17 = *(v0 + 200);
    v16 = *(v0 + 208);
    v18 = *(v0 + 192);
    v19 = *(v0 + 168);
    v21 = *(v0 + 136);
    v20 = *(v0 + 144);
    v23 = *(v0 + 104);
    v22 = *(v0 + 112);
    v25 = *(v0 + 72);
    v24 = *(v0 + 80);

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v28 = swift_task_alloc();
    *(v0 + 328) = v28;
    *v28 = v0;
    v28[1] = sub_10000F340;
    v29 = *(v0 + 80);

    return sub_1000107D4(v29);
  }
}

uint64_t sub_10000F340()
{
  v1 = *v0;
  v2 = *(*v0 + 328);
  v6 = *v0;

  v3 = *(v1 + 240);
  v4 = *(v1 + 232);

  return _swift_task_switch(sub_10000F460, v4, v3);
}

uint64_t sub_10000F460()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v6 = v0[14];
  if (v5 == 1)
  {
    (*(v2 + 16))(v6, v0[6], v1);
    if (v4(v3, 1, v1) != 1)
    {
      sub_100008800(v0[10], &qword_1000348A8, &unk_10002A420);
    }
  }

  else
  {
    (*(v2 + 32))(v6, v3, v1);
  }

  v7 = v0[34];
  v8 = v0[35];
  v9 = swift_task_alloc();
  v0[42] = v9;
  *v9 = v0;
  v9[1] = sub_10000F5B8;
  v10 = v0[14];
  v11 = v0[7];
  v12 = v0[8];

  return sub_1000113A0(v10, v11, v7, v8);
}

uint64_t sub_10000F5B8()
{
  v1 = *v0;
  v2 = *(*v0 + 336);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 96);
  v5 = *(*v0 + 88);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 240);
  v7 = *(v1 + 232);

  return _swift_task_switch(sub_10001A6F4, v7, v6);
}

uint64_t sub_10000F73C()
{
  v1 = *v0;
  v2 = *(*v0 + 344);
  v6 = *v0;

  v3 = *(v1 + 240);
  v4 = *(v1 + 232);

  return _swift_task_switch(sub_10000F85C, v4, v3);
}

uint64_t sub_10000F85C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v6 = v0[13];
  if (v5 == 1)
  {
    (*(v2 + 16))(v6, v0[6], v1);
    if (v4(v3, 1, v1) != 1)
    {
      sub_100008800(v0[9], &qword_1000348A8, &unk_10002A420);
    }
  }

  else
  {
    (*(v2 + 32))(v6, v3, v1);
  }

  v7 = v0[34];
  v8 = v0[35];
  v9 = swift_task_alloc();
  v0[44] = v9;
  *v9 = v0;
  v9[1] = sub_10000F9B4;
  v10 = v0[13];
  v11 = v0[7];
  v12 = v0[8];

  return sub_1000113A0(v10, v11, v7, v8);
}

uint64_t sub_10000F9B4()
{
  v1 = *v0;
  v2 = *(*v0 + 352);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);
  v5 = *(*v0 + 88);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 240);
  v7 = *(v1 + 232);

  return _swift_task_switch(sub_10000FB38, v7, v6);
}

uint64_t sub_10000FB38()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 224);

  v3 = (*(v0 + 64) + *(*(v0 + 264) + 32));
  v4 = *v3;
  v5 = *(v3 + 1);
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  *(v0 + 365) = 0;
  sub_100001DFC(&qword_100034858, &qword_1000297D0);
  sub_1000282DC();
  v7 = *(v0 + 200);
  v6 = *(v0 + 208);
  v8 = *(v0 + 192);
  v9 = *(v0 + 168);
  v11 = *(v0 + 136);
  v10 = *(v0 + 144);
  v13 = *(v0 + 104);
  v12 = *(v0 + 112);
  v15 = *(v0 + 72);
  v14 = *(v0 + 80);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10000FC6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100027C3C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_100027B7C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1000283CC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_100027B8C();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  sub_1000283BC();
  sub_100027B6C();
  sub_100027C2C();
  sub_100027B9C();
  v10 = sub_10002815C();
  v12 = v11;
  v14 = v13;
  sub_10002807C();
  v15 = sub_10002813C();
  v17 = v16;
  v19 = v18;

  sub_100018604(v10, v12, v14 & 1);

  sub_10002824C();
  v20 = sub_10002812C();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_100018604(v15, v17, v19 & 1);

  *a1 = v20;
  *(a1 + 8) = v22;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v26;
  return result;
}

uint64_t sub_10000FEDC(uint64_t a1)
{
  v2 = type metadata accessor for InviteActionsView(0);
  v35 = *(v2 - 8);
  v3 = *(v35 + 64);
  __chkstk_darwin(v2 - 8);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001DFC(&qword_1000347B0, &qword_100029840);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v37 = &v33 - v6;
  v7 = sub_100001DFC(&qword_1000348A8, &unk_10002A420);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v33 - v9;
  v11 = sub_100027BEC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v33 - v16;
  v18 = type metadata accessor for InviteMessageDetails();
  sub_100008798(a1 + *(v18 + 96), v10, &qword_1000348A8, &unk_10002A420);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_100008800(v10, &qword_1000348A8, &unk_10002A420);
  }

  v20 = *(v12 + 32);
  v33 = v12 + 32;
  v34 = v20;
  v21 = v17;
  v20(v17, v10, v11);
  v22 = a1 + *(type metadata accessor for InviteMessageView(0) + 32);
  v23 = *v22;
  v24 = *(v22 + 8);
  v39 = v23;
  v40 = v24;
  v38 = 1;
  sub_100001DFC(&qword_100034858, &qword_1000297D0);
  sub_1000282DC();
  sub_100027D0C();
  v25 = sub_100027CFC();
  sub_10001A708(*(a1 + 232));
  v26 = *(a1 + 233);
  sub_100027CDC();

  v27 = sub_1000284CC();
  (*(*(v27 - 8) + 56))(v37, 1, 1, v27);
  v28 = v36;
  sub_1000166C8(a1, v36, type metadata accessor for InviteActionsView);
  (*(v12 + 16))(v15, v21, v11);
  sub_1000284AC();
  v29 = sub_10002849C();
  v30 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v31 = (v3 + *(v12 + 80) + v30) & ~*(v12 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  *(v32 + 24) = &protocol witness table for MainActor;
  sub_10001603C(v28, v32 + v30, type metadata accessor for InviteActionsView);
  v34(v32 + v31, v15, v11);
  sub_100005128(0, 0, v37, &unk_10002A150, v32);

  return (*(v12 + 8))(v21, v11);
}

uint64_t sub_100010368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_1000284AC();
  v5[3] = sub_10002849C();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_100010428;

  return sub_10000E46C(a5, 1);
}

uint64_t sub_100010428()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_10002848C();

  return _swift_task_switch(sub_10001A700, v5, v4);
}

uint64_t sub_100010564@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100027C3C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_100027B7C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1000283CC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_100027B8C();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  sub_1000283BC();
  sub_100027B6C();
  sub_100027C2C();
  sub_100027B9C();
  v10 = sub_10002815C();
  v12 = v11;
  v14 = v13;
  sub_10002807C();
  v15 = sub_10002813C();
  v17 = v16;
  v19 = v18;

  sub_100018604(v10, v12, v14 & 1);

  sub_10002823C();
  v20 = sub_10002812C();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_100018604(v15, v17, v19 & 1);

  *a1 = v20;
  *(a1 + 8) = v22;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v26;
  return result;
}

uint64_t sub_1000107D4(uint64_t a1)
{
  v1[18] = a1;
  v2 = sub_100027D5C();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v5 = sub_100027BEC();
  v1[22] = v5;
  v6 = *(v5 - 8);
  v1[23] = v6;
  v7 = *(v6 + 64) + 15;
  v1[24] = swift_task_alloc();
  sub_1000284AC();
  v1[25] = sub_10002849C();
  v9 = sub_10002848C();
  v1[26] = v9;
  v1[27] = v8;

  return _swift_task_switch(sub_100010924, v9, v8);
}

uint64_t sub_100010924()
{
  v1 = v0[24];
  v0[28] = [objc_allocWithZone(FAURLConfiguration) init];
  v2 = [objc_allocWithZone(FAURLConfiguration) init];
  v0[29] = v2;
  v3 = FAURLEndpointPendingInviteActionFromMessagesV1;
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_100010A88;
  v4 = swift_continuation_init();
  v0[17] = sub_100001DFC(&qword_1000348C8, &qword_100029878);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100010E74;
  v0[13] = &unk_1000312E8;
  v0[14] = v4;
  [v2 URLForEndpoint:v3 withCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100010A88()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 240) = v3;
  v4 = *(v1 + 216);
  v5 = *(v1 + 208);
  if (v3)
  {
    v6 = sub_100010C94;
  }

  else
  {
    v6 = sub_100010BB8;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100010BB8()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v6 = *(v0 + 144);

  (*(v5 + 32))(v6, v2, v4);
  (*(v5 + 56))(v6, 0, 1, v4);

  v7 = *(v0 + 192);
  v8 = *(v0 + 168);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100010C94()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[25];
  v4 = v0[21];

  swift_willThrow();

  sub_100027CCC();
  swift_errorRetain();
  v5 = sub_100027D4C();
  v6 = sub_1000284EC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[30];
  v9 = v0[28];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to retrieve PendingInviteActionFromMessagesV1 from config bag. Falling back to url from messages payload. Error: %@", v10, 0xCu);
    sub_100008800(v11, &qword_1000348B0, &qword_100029830);
  }

  else
  {
  }

  v13 = v0[22];
  v14 = v0[23];
  v15 = v0[18];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v14 + 56))(v15, 1, 1, v13);
  v16 = v0[24];
  v17 = v0[21];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100010E74(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_100027BEC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *sub_100008754((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100001DFC(&qword_100034CF0, qword_10002A0D0);
    v11 = swift_allocError();
    *v12 = a3;
    v13 = a3;

    return _swift_continuation_throwingResumeWithError(v10, v11);
  }

  else
  {
    sub_100027BCC();
    (*(v6 + 32))(*(*(v10 + 64) + 40), v9, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_100010FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = *(*(sub_100001DFC(&qword_1000348A8, &unk_10002A420) - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  sub_1000284AC();
  v6[8] = sub_10002849C();
  v9 = sub_10002848C();
  v6[9] = v9;
  v6[10] = v8;

  return _swift_task_switch(sub_1000110B8, v9, v8);
}

uint64_t sub_1000110B8()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = *(v2 + 96);
  v4 = *(v2 + 104);
  sub_100027BDC();
  v5 = type metadata accessor for InviteMessageView(0);
  v0[11] = v5;
  v6 = *(v5 + 28);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_100011190;
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[5];

  return sub_10000D1B8(v9, v10, v8, v2 + v6, 0x7542747065636341, 0xEC0000006E6F7474);
}

uint64_t sub_100011190()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 56);
  v7 = *v0;

  sub_100008800(v3, &qword_1000348A8, &unk_10002A420);
  v4 = *(v1 + 80);
  v5 = *(v1 + 72);

  return _swift_task_switch(sub_1000112E4, v5, v4);
}

uint64_t sub_1000112E4()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 32);

  v5 = (v4 + *(v1 + 32));
  v6 = *v5;
  v7 = *(v5 + 1);
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  *(v0 + 104) = 0;
  sub_100001DFC(&qword_100034858, &qword_1000297D0);
  sub_1000282DC();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000113A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = *(*(sub_100027C3C() - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v7 = *(*(sub_1000283CC() - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v8 = sub_100027D5C();
  v5[17] = v8;
  v9 = *(v8 - 8);
  v5[18] = v9;
  v10 = *(v9 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  sub_1000284AC();
  v5[21] = sub_10002849C();
  v12 = sub_10002848C();
  v5[22] = v12;
  v5[23] = v11;

  return _swift_task_switch(sub_100011500, v12, v11);
}

uint64_t sub_100011500()
{
  v1 = v0[14];
  v2 = (v1 + *(type metadata accessor for InviteMessageView(0) + 28));
  v3 = v2[3];
  v4 = v2[4];
  sub_100008754(v2, v3);
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v7 = *(v4 + 24);
  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[24] = v9;
  *v9 = v0;
  v9[1] = sub_100011650;
  v11 = v0[10];
  v10 = v0[11];

  return v13(v11, v5, v6, v10, v3, v4);
}

uint64_t sub_100011650(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 192);
  v9 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = a2;

  v6 = *(v3 + 184);
  v7 = *(v3 + 176);

  return _swift_task_switch(sub_10001177C, v7, v6);
}

uint64_t sub_10001177C()
{
  v56 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);

  if (v1)
  {
    v3 = *(v0 + 200);
    v4 = *(v0 + 160);
    v5 = *(v0 + 88);
    sub_100027D0C();
    swift_errorRetain();
    v6 = sub_100027CFC();
    sub_100027CEC();

    sub_100027CCC();
    swift_errorRetain();
    v7 = sub_100027D4C();
    v8 = sub_1000284EC();
    sub_10001690C(v3, 1);
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 160);
    v12 = *(v0 + 136);
    v11 = *(v0 + 144);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v55 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v53 = v10;
      v16 = *(v0 + 40);
      v15 = *(v0 + 48);
      v17 = *(v0 + 56);
      v18 = sub_10002866C();
      v20 = sub_100006B88(v18, v19, &v55);

      *(v13 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v7, v8, "Updating invite status failed with error %s", v13, 0xCu);
      sub_100007038(v14);

      (*(v11 + 8))(v53, v12);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    v31 = *(v0 + 200);
    v32 = *(v0 + 120);
    v33 = *(v0 + 128);
    v35 = *(v0 + 96);
    v34 = *(v0 + 104);
    ObjectType = swift_getObjectType();
    sub_1000283BC();
    sub_100027C2C();
    v36 = sub_1000283FC();
    v38 = v37;
    swift_getErrorValue();
    v40 = *(v0 + 16);
    v39 = *(v0 + 24);
    v41 = *(v0 + 32);
    v42 = sub_10002866C();
    v44 = v43;
    sub_1000283BC();
    sub_100027C2C();
    v45 = sub_1000283FC();
    (*(v34 + 8))(v36, v38, v42, v44, v45, v46, ObjectType, v34);
    sub_10001690C(v31, 1);

    sub_10001690C(v31, 1);
  }

  else
  {
    v21 = *(v0 + 152);
    v22 = *(v0 + 88);
    sub_100027D0C();
    v23 = sub_100027CFC();
    sub_100027CEC();

    sub_100027CCC();
    v24 = sub_100027D4C();
    v25 = sub_10002850C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 88);
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v24, v25, "Updated invite status to %ld", v27, 0xCu);
    }

    v29 = *(v0 + 144);
    v28 = *(v0 + 152);
    v30 = *(v0 + 136);

    (*(v29 + 8))(v28, v30);
  }

  v48 = *(v0 + 152);
  v47 = *(v0 + 160);
  v50 = *(v0 + 120);
  v49 = *(v0 + 128);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_100011C2C(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SettingsView(0) + 20);

  return sub_100016918(a1, v3);
}

uint64_t sub_100011CB8()
{
  v1 = (v0 + *(type metadata accessor for SettingsView(0) + 20));
  v2 = v1[232];
  if (v1[233] != 1)
  {
    v15 = v1[232];
    sub_100006C6C();
    sub_10002843C();
    sub_10002843C();
    if (v12 == v10 && v14 == v11)
    {
    }

    else
    {
      v4 = sub_10002863C();

      if ((v4 & 1) == 0)
      {
        sub_10002843C();
        sub_10002843C();
        if (v12 == v10 && v14 == v11)
        {
        }

        else
        {
          v9 = sub_10002863C();

          if ((v9 & 1) == 0)
          {
            return 0;
          }
        }

        if (v1[234])
        {
          return 0;
        }

        v5 = 200;
        v6 = 192;
LABEL_9:
        v3 = *&v1[v6];
        v7 = *&v1[v5];

        return v3;
      }
    }

LABEL_8:
    v5 = 184;
    v6 = 176;
    goto LABEL_9;
  }

  v13 = v1[232];
  sub_10001697C();
  if ((sub_1000283AC() & 1) == 0)
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_100011EA0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_100027E9C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_100001DFC(&qword_1000348D8, &qword_100029880);
  return sub_100011EF4(v1, a1 + *(v3 + 44));
}

uint64_t sub_100011EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v66 = a2;
  v2 = type metadata accessor for SettingsView(0);
  v57 = *(v2 - 8);
  v3 = *(v57 + 64);
  __chkstk_darwin(v2 - 8);
  v58 = v4;
  v59 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_100001DFC(&qword_100034CA0, &qword_10002A088);
  v64 = *(v63 - 8);
  v5 = *(v64 + 64);
  __chkstk_darwin(v63);
  v7 = &v56 - v6;
  v8 = sub_100001DFC(&qword_100034CA8, &qword_10002A090);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v65 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v56 - v12;
  v14 = sub_100001DFC(&qword_100034CB0, &qword_10002A098);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v56 - v16;
  v18 = sub_100001DFC(&qword_100034CB8, &qword_10002A0A0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v62 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v56 - v22;
  v24 = sub_100027F1C();
  v25 = 1;
  v71 = 1;
  v26 = sub_10002825C();
  v27 = sub_10002821C();
  KeyPath = swift_getKeyPath();
  nullsub_1(15.0);
  v29 = sub_10002808C();
  (*(*(v29 - 8) + 56))(v17, 1, 1, v29);
  v30 = sub_1000280BC();
  sub_100008800(v17, &qword_100034CB0, &qword_10002A098);
  v31 = swift_getKeyPath();
  v67 = v24;
  LOBYTE(v68) = v71;
  *(&v68 + 1) = v26;
  *&v69 = KeyPath;
  *(&v69 + 1) = v27;
  *&v70 = v31;
  *(&v70 + 1) = v30;
  sub_100001DFC(&qword_100034CC0, &qword_10002A0A8);
  sub_10001A1A8(&qword_100034CC8, &qword_100034CC0, &qword_10002A0A8);
  v61 = v23;
  sub_1000281DC();
  v72[0] = v67;
  v72[1] = v68;
  v72[2] = v69;
  v72[3] = v70;
  v32 = v60;
  sub_100008800(v72, &qword_100034CC0, &qword_10002A0A8);
  v33 = sub_100011CB8();
  if (v34)
  {
    v35 = v33;
    v36 = v34;
    *v7 = sub_100027F2C();
    *(v7 + 1) = 0;
    v7[16] = 1;
    v37 = *(sub_100001DFC(&qword_100034CD8, &qword_10002A0B8) + 44);
    v38 = v59;
    sub_1000166C8(v32, v59, type metadata accessor for SettingsView);
    v39 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v40 = swift_allocObject();
    v41 = sub_10001603C(v38, v40 + v39, type metadata accessor for SettingsView);
    __chkstk_darwin(v41);
    *(&v56 - 2) = v35;
    *(&v56 - 1) = v36;
    sub_100001DFC(&qword_100034CE0, &unk_10002A0C0);
    sub_100018F2C();
    sub_1000282FC();

    v42 = sub_10002802C();
    nullsub_1(3.0);
    sub_100027D6C();
    v43 = v63;
    v44 = &v7[*(v63 + 36)];
    *v44 = v42;
    *(v44 + 1) = v45;
    *(v44 + 2) = v46;
    *(v44 + 3) = v47;
    *(v44 + 4) = v48;
    v44[40] = 0;
    sub_100016F44(v7, v13, &qword_100034CA0, &qword_10002A088);
    v25 = 0;
    v49 = v43;
  }

  else
  {
    v49 = v63;
  }

  (*(v64 + 56))(v13, v25, 1, v49);
  v50 = v61;
  v51 = v62;
  sub_100008798(v61, v62, &qword_100034CB8, &qword_10002A0A0);
  v52 = v65;
  sub_100008798(v13, v65, &qword_100034CA8, &qword_10002A090);
  v53 = v66;
  sub_100008798(v51, v66, &qword_100034CB8, &qword_10002A0A0);
  v54 = sub_100001DFC(&qword_100034CD0, &qword_10002A0B0);
  sub_100008798(v52, v53 + *(v54 + 48), &qword_100034CA8, &qword_10002A090);
  sub_100008800(v13, &qword_100034CA8, &qword_10002A090);
  sub_100008800(v50, &qword_100034CB8, &qword_10002A0A0);
  sub_100008800(v52, &qword_100034CA8, &qword_10002A090);
  return sub_100008800(v51, &qword_100034CB8, &qword_10002A0A0);
}

void sub_1000125C0()
{
  v1 = v0;
  v2 = sub_100027D5C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SettingsView(0);
  v8 = v7 - 8;
  v48[0] = *(v7 - 8);
  v9 = *(v48[0] + 64);
  __chkstk_darwin(v7);
  v10 = sub_100001DFC(&qword_1000347B0, &qword_100029840);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v48 - v12;
  v14 = sub_100001DFC(&qword_1000348A8, &unk_10002A420);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v48 - v16;
  v18 = sub_100011CB8();
  if (!v19)
  {
LABEL_7:
    v23 = v0 + *(type metadata accessor for InviteMessageView(0) + 24);
    v24 = *v23;
    if (*v23)
    {
      v25 = *(v23 + 8);
      sub_100027D0C();
      v26 = v24;
      v27 = sub_100027CFC();
      sub_10001A708(*(v1 + 232));
      v28 = *(v1 + 233);
      sub_100027CDC();

      v29 = sub_1000284CC();
      (*(*(v29 - 8) + 56))(v13, 1, 1, v29);
      sub_1000166C8(v1, v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SettingsView);
      sub_1000284AC();
      v30 = v26;
      v31 = sub_10002849C();
      v32 = (*(v48[0] + 80) + 32) & ~*(v48[0] + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = v31;
      *(v33 + 24) = &protocol witness table for MainActor;
      sub_10001603C(v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32, type metadata accessor for SettingsView);
      v34 = (v33 + ((v9 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v34 = v30;
      v34[1] = v25;
      sub_10000DA88(0, 0, v13, &unk_100029890, v33);
    }

    else
    {
      sub_100027CCC();
      v43 = sub_100027D4C();
      v44 = sub_1000284EC();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "No presenter, return", v45, 2u);
      }

      (*(v3 + 8))(v6, v2);
    }

    return;
  }

  v20 = v0 + *(v8 + 28);
  if (v18 == *(v20 + 176) && v19 == *(v20 + 184))
  {
  }

  else
  {
    v22 = sub_10002863C();

    if ((v22 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  sub_100027D0C();
  v35 = sub_100027CFC();
  sub_10001A708(*(v1 + 232));
  v36 = *(v1 + 233);
  sub_100027CDC();

  v37 = objc_opt_self();
  v49 = 0;
  v38 = [v37 urlDestinationTo:1 error:&v49];
  v39 = v49;
  if (v38)
  {
    v40 = v38;
    sub_100027BCC();
    v41 = v39;

    v42 = 0;
  }

  else
  {
    v46 = v49;
    sub_100027B5C();

    swift_willThrow();

    v42 = 1;
  }

  v47 = sub_100027BEC();
  (*(*(v47 - 8) + 56))(v17, v42, 1, v47);
  sub_100012E0C(v17);
  sub_100008800(v17, &qword_1000348A8, &unk_10002A420);
}

__n128 sub_100012B60@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100027EEC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  sub_100027EDC();
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_100027ECC(v36);
  v37._countAndFlagsBits = a1;
  v37._object = a2;
  sub_100027EBC(v37);
  v38._countAndFlagsBits = 32;
  v38._object = 0xE100000000000000;
  sub_100027ECC(v38);
  sub_10002825C();
  sub_100027EAC();

  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  sub_100027ECC(v39);
  sub_100027EFC();
  v8 = sub_10002814C();
  v10 = v9;
  LOBYTE(a1) = v11;
  sub_10002810C();
  v12 = sub_10002813C();
  v14 = v13;
  v16 = v15;

  sub_100018604(v8, v10, a1 & 1);

  sub_1000280AC();
  v17 = sub_10002811C();
  v19 = v18;
  LOBYTE(a1) = v20;
  sub_100018604(v12, v14, v16 & 1);

  sub_10002821C();
  v21 = sub_10002812C();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_100018604(v17, v19, a1 & 1);

  sub_10002833C();
  sub_100027E1C();
  *a3 = v21;
  *(a3 + 8) = v23;
  *(a3 + 16) = v25 & 1;
  *(a3 + 24) = v27;
  *(a3 + 96) = v33;
  *(a3 + 112) = v34;
  *(a3 + 128) = v35;
  *(a3 + 32) = v29;
  *(a3 + 48) = v30;
  result = v32;
  *(a3 + 64) = v31;
  *(a3 + 80) = v32;
  return result;
}

id sub_100012E0C(uint64_t a1)
{
  v2 = sub_100027D5C();
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = *(v58 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v53 - v8;
  v10 = __chkstk_darwin(v7);
  v57 = &v53 - v11;
  __chkstk_darwin(v10);
  v13 = &v53 - v12;
  v14 = sub_100001DFC(&qword_1000348A8, &unk_10002A420);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v53 - v16;
  v18 = sub_100027BEC();
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v53 - v23;
  v26 = v25;
  sub_100008798(a1, v17, &qword_1000348A8, &unk_10002A420);
  if ((*(v26 + 48))(v17, 1, v18) == 1)
  {
    sub_100008800(v17, &qword_1000348A8, &unk_10002A420);
    sub_100027CCC();
    v27 = sub_100027D4C();
    v28 = sub_1000284EC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "invalid url", v29, 2u);
    }

    (*(v58 + 8))(v6, v59);
    return 0;
  }

  (*(v26 + 32))(v24, v17, v18);
  v56 = [objc_opt_self() defaultWorkspace];
  if (!v56)
  {
    sub_100027CCC();
    v39 = sub_100027D4C();
    v40 = sub_1000284EC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "no workspace", v41, 2u);
    }

    (*(v58 + 8))(v9, v59);
    (*(v26 + 8))(v24, v18);
    return 0;
  }

  sub_100027CCC();
  (*(v26 + 16))(v22, v24, v18);
  v30 = sub_100027D4C();
  v31 = sub_10002850C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v54 = v24;
    v33 = v32;
    v34 = swift_slowAlloc();
    v60 = v34;
    *v33 = 136315138;
    sub_100018568(&qword_1000348E0, &type metadata accessor for URL);
    v35 = sub_10002862C();
    v37 = v36;
    v55 = *(v26 + 8);
    v55(v22, v18);
    v38 = sub_100006B88(v35, v37, &v60);

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v30, v31, "Opening url %s", v33, 0xCu);
    sub_100007038(v34);

    v24 = v54;
  }

  else
  {

    v55 = *(v26 + 8);
    v55(v22, v18);
  }

  v43 = v59;
  v44 = *(v58 + 8);
  v44(v13, v59);
  sub_100027BBC(v45);
  v47 = v46;
  sub_1000079CC(&_swiftEmptyArrayStorage);
  isa = sub_10002836C().super.isa;

  v49 = [v56 openSensitiveURL:v47 withOptions:isa];

  sub_100027CCC();
  v50 = sub_100027D4C();
  v51 = sub_10002850C();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 67109120;
    *(v52 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v50, v51, "Did open Family Settings: %{BOOL}d", v52, 8u);
  }

  v44(v57, v43);
  v55(v24, v18);
  return v49;
}

uint64_t sub_1000134D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = *(*(sub_100001DFC(&qword_1000348A8, &unk_10002A420) - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  sub_1000284AC();
  v6[7] = sub_10002849C();
  v9 = sub_10002848C();
  v6[8] = v9;
  v6[9] = v8;

  return _swift_task_switch(sub_1000135A4, v9, v8);
}

uint64_t sub_1000135A4()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v2 + *(type metadata accessor for SettingsView(0) + 20);
  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  sub_100027BDC();
  v6 = *(type metadata accessor for InviteMessageView(0) + 28);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_100013690;
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[4];

  return sub_10000D1B8(v9, v10, v8, v2 + v6, 0x726F4D6E7261654CLL, 0xED00006B6E694C65);
}

uint64_t sub_100013690(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 88) = a1;

  sub_100008800(v4, &qword_1000348A8, &unk_10002A420);
  v5 = *(v2 + 72);
  v6 = *(v2 + 64);

  return _swift_task_switch(sub_1000137EC, v6, v5);
}

uint64_t sub_1000137EC()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 16);

  *v4 = v1;

  v5 = *(v0 + 8);

  return v5();
}

double sub_100013868@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10002826C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002829C();
  (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
  v7 = sub_10002828C();

  (*(v3 + 8))(v6, v2);
  nullsub_1(60.0);
  nullsub_1(60.0);
  sub_10002832C();
  sub_100027D9C();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;
  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  result = *&v17;
  *(a1 + 40) = v17;
  return result;
}

__n128 sub_100013A4C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100001DFC(&qword_1000348E8, &qword_100029898);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = (v17 - v8);
  v10 = sub_100027F1C();
  v11 = nullsub_1(0.0);
  *v9 = v10;
  v9[1] = v11;
  *(v9 + 16) = 0;
  v12 = sub_100001DFC(&qword_1000348F0, &qword_1000298A0);
  sub_100013C34(a1, a2, v9 + *(v12 + 44));
  nullsub_1(34.0);
  sub_10002831C();
  sub_100027E1C();
  sub_100016F44(v9, a3, &qword_1000348E8, &qword_100029898);
  v13 = a3 + *(sub_100001DFC(&qword_1000348F8, &qword_1000298A8) + 36);
  v14 = v17[6];
  *(v13 + 64) = v17[5];
  *(v13 + 80) = v14;
  *(v13 + 96) = v17[7];
  v15 = v17[2];
  *v13 = v17[1];
  *(v13 + 16) = v15;
  result = v17[4];
  *(v13 + 32) = v17[3];
  *(v13 + 48) = result;
  return result;
}

uint64_t sub_100013C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v26 = a2;
  v4 = sub_100001DFC(&qword_100034C48, &qword_100029FF8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v24 - v9);
  nullsub_1(16.0);
  sub_10002831C();
  sub_100027D9C();
  v11 = v27;
  v12 = v28;
  v13 = v29;
  v14 = v30;
  v15 = v32;
  v24 = v31;
  v35 = 1;
  v34 = v28;
  v33 = v30;
  v16 = sub_100027F1C();
  v17 = nullsub_1(0.0);
  *v10 = v16;
  v10[1] = v17;
  *(v10 + 16) = 0;
  v18 = v10 + *(sub_100001DFC(&qword_100034C50, &qword_10002A000) + 44);
  v19 = sub_100027E9C();
  v20 = nullsub_1(4.0);
  *v18 = v19;
  *(v18 + 1) = v20;
  v18[16] = 0;
  v21 = sub_100001DFC(&qword_100034C58, &qword_10002A008);
  sub_100013E5C(v25, v26, &v18[*(v21 + 44)]);
  sub_100008798(v10, v8, &qword_100034C48, &qword_100029FF8);
  *a3 = 0;
  *(a3 + 8) = 1;
  *(a3 + 16) = v11;
  *(a3 + 24) = v12;
  *(a3 + 32) = v13;
  *(a3 + 40) = v14;
  *(a3 + 48) = v24;
  *(a3 + 56) = v15;
  *(a3 + 64) = 257;
  v22 = sub_100001DFC(&qword_100034C60, &qword_10002A010);
  sub_100008798(v8, a3 + *(v22 + 64), &qword_100034C48, &qword_100029FF8);
  sub_100008800(v10, &qword_100034C48, &qword_100029FF8);
  return sub_100008800(v8, &qword_100034C48, &qword_100029FF8);
}

uint64_t sub_100013E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a1;
  v45 = a2;
  v47 = a3;
  v3 = sub_100027FDC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001DFC(&qword_100034C68, &qword_10002A018);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v44 - v11;
  v13 = sub_100001DFC(&qword_100034C70, &qword_10002A020);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13);
  v46 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v44 - v18;
  sub_100027D8C();
  sub_100027FCC();
  sub_10001A1A8(&qword_100034C78, &qword_100034C68, &qword_10002A018);
  sub_100018568(&qword_100034C80, &type metadata accessor for CircularProgressViewStyle);
  sub_1000281AC();
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
  *&v19[*(sub_100001DFC(&qword_100034C88, &qword_10002A028) + 36)] = 257;
  v20 = &v19[*(v14 + 44)];
  v21 = *(sub_100001DFC(&qword_100034C90, &qword_10002A030) + 28);
  v22 = enum case for ControlSize.small(_:);
  v23 = sub_100027D7C();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  v48 = v44;
  v49 = v45;
  sub_100017000();

  v24 = sub_10002816C();
  v26 = v25;
  LOBYTE(v3) = v27;
  sub_1000280FC();
  v28 = sub_10002813C();
  v30 = v29;
  v32 = v31;

  sub_100018604(v24, v26, v3 & 1);

  v33 = [objc_opt_self() secondaryLabelColor];
  sub_1000281FC();
  v34 = sub_10002812C();
  v36 = v35;
  LOBYTE(v7) = v37;
  v39 = v38;

  sub_100018604(v28, v30, v32 & 1);

  v40 = v46;
  sub_100008798(v19, v46, &qword_100034C70, &qword_10002A020);
  v41 = v47;
  sub_100008798(v40, v47, &qword_100034C70, &qword_10002A020);
  v42 = v41 + *(sub_100001DFC(&qword_100034C98, &qword_10002A068) + 48);
  *v42 = v34;
  *(v42 + 8) = v36;
  *(v42 + 16) = v7 & 1;
  *(v42 + 24) = v39;
  sub_100016FF0(v34, v36, v7 & 1);

  sub_100008800(v19, &qword_100034C70, &qword_10002A020);
  sub_100018604(v34, v36, v7 & 1);

  return sub_100008800(v40, &qword_100034C70, &qword_10002A020);
}

uint64_t sub_10001432C()
{
  v1 = *v0;
  sub_100016FAC(*v0, v0[1], v0[2], v0[3]);
  return v1;
}

uint64_t sub_10001437C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_1000143B4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  sub_100016FF0(v1, v2, v3);

  return v1;
}

double sub_100014414@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100027F1C();
  v5 = nullsub_1(7.0);
  v24 = 0;
  sub_1000145E8(v2, &v13);
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v25 = v13;
  v26 = v14;
  v35[6] = v19;
  v35[7] = v20;
  v35[8] = v21;
  v35[2] = v15;
  v35[3] = v16;
  v35[4] = v17;
  v35[5] = v18;
  v34 = v22;
  v36 = v22;
  v35[0] = v13;
  v35[1] = v14;
  sub_100008798(&v25, v12, &qword_100034900, &qword_1000298B0);
  sub_100008800(v35, &qword_100034900, &qword_1000298B0);
  *(&v23[3] + 7) = v28;
  *(&v23[2] + 7) = v27;
  *(&v23[6] + 7) = v31;
  *(&v23[7] + 7) = v32;
  *(&v23[8] + 7) = v33;
  *(&v23[4] + 7) = v29;
  *(&v23[5] + 7) = v30;
  *(v23 + 7) = v25;
  *(&v23[9] + 7) = v34;
  *(&v23[1] + 7) = v26;
  v6 = v24;
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v7 = v23[7];
  *(a1 + 113) = v23[6];
  *(a1 + 129) = v7;
  *(a1 + 145) = v23[8];
  *(a1 + 160) = *(&v23[8] + 15);
  v8 = v23[3];
  *(a1 + 49) = v23[2];
  *(a1 + 65) = v8;
  v9 = v23[5];
  *(a1 + 81) = v23[4];
  *(a1 + 97) = v9;
  result = *v23;
  v11 = v23[1];
  *(a1 + 17) = v23[0];
  *(a1 + 33) = v11;
  return result;
}

uint64_t sub_1000145E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = sub_100027F1C();
  v3 = nullsub_1(0.0);
  v68 = 0;
  v58 = sub_100027E9C();
  v4 = nullsub_1(2.0);
  LOBYTE(v84) = 0;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (!*(a1 + 24))
  {
    v17 = 0;
    v18 = *(a1 + 40);
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_5:
    v20 = 0;
    KeyPath = 0;
    v21 = 0;
    v23 = 0;
    goto LABEL_6;
  }

  sub_100016FF0(*a1, *(a1 + 8), v7 & 1);

  sub_1000280FC();
  v56 = sub_10002813C();
  v9 = v8;
  v11 = v10;

  sub_1000280AC();
  v12 = sub_10002811C();
  v14 = v13;
  v57 = v15;
  v17 = v16;
  sub_100018604(v5, v6, v7 & 1);

  sub_100018604(v56, v9, v11 & 1);

  v7 = v57 & 1;
  sub_100016FF0(v12, v14, v57 & 1);

  v5 = v12;
  v6 = v14;
  v18 = *(a1 + 40);
  if (!v18)
  {
    goto LABEL_5;
  }

LABEL_3:
  v19 = *(a1 + 32);

  v20 = sub_10002825C();
  v21 = sub_1000280FC();
  KeyPath = swift_getKeyPath();
  v23 = *(a1 + 48);
  v18 = swift_getKeyPath();
  swift_retain_n();

LABEL_6:
  sub_100016FAC(v5, v6, v7, v17);
  sub_1000187D0(v20);
  sub_100018840(v5, v6, v7, v17);
  sub_100018884(v20);
  sub_100018884(v20);
  sub_100018840(v5, v6, v7, v17);
  *&v95 = v5;
  *(&v95 + 1) = v6;
  *&v96 = v7;
  *(&v96 + 1) = v17;
  *&v97 = v20;
  *(&v97 + 1) = KeyPath;
  *&v98 = v21;
  *(&v98 + 1) = v18;
  v99 = v23;
  *&v69 = v5;
  *(&v69 + 1) = v6;
  *&v70 = v7;
  *(&v70 + 1) = v17;
  *&v71 = v20;
  *(&v71 + 1) = KeyPath;
  *&v72 = v21;
  *(&v72 + 1) = v18;
  *&v73 = v23;
  sub_100008798(&v95, &v86, &qword_100034C38, &qword_100029FB8);
  sub_100008800(&v69, &qword_100034C38, &qword_100029FB8);
  *&v77[23] = v96;
  *&v77[39] = v97;
  *&v77[55] = v98;
  *&v77[71] = v99;
  *&v77[7] = v95;
  v24 = v84;
  v25 = *(a1 + 56);
  v26 = *(a1 + 64);
  v27 = *(a1 + 72);
  v28 = *(a1 + 80);
  sub_1000280FC();
  v29 = sub_10002813C();
  v31 = v30;
  v33 = v32;

  v34 = [objc_opt_self() secondaryLabelColor];
  sub_1000281FC();
  v35 = sub_10002812C();
  v37 = v36;
  v39 = v38;
  v41 = v40;

  sub_100018604(v29, v31, v33 & 1);

  *&v84 = v58;
  *(&v84 + 1) = v4;
  v85[0] = v24;
  *&v85[1] = *v77;
  *&v85[49] = *&v77[48];
  *&v85[33] = *&v77[32];
  *&v85[17] = *&v77[16];
  *&v85[64] = *&v77[63];
  v94 = v39 & 1;
  v61 = v84;
  v62 = *v85;
  v65 = *&v85[48];
  v66 = *&v77[63];
  v63 = *&v85[16];
  v64 = *&v85[32];
  sub_100008798(&v84, &v86, &qword_100034C40, &qword_100029FC0);
  sub_100016FF0(v35, v37, v39 & 1);

  sub_100018604(v35, v37, v39 & 1);

  v86 = v58;
  v87 = v4;
  v88 = v24;
  v90 = *&v77[16];
  v91 = *&v77[32];
  v92[0] = *&v77[48];
  *(v92 + 15) = *&v77[63];
  v89 = *v77;
  sub_100008800(&v86, &qword_100034C40, &qword_100029FC0);
  v71 = v63;
  v72 = v64;
  v73 = v65;
  v74 = v66;
  v69 = v61;
  v70 = v62;
  *v77 = v61;
  *&v77[16] = v62;
  *&v75 = v35;
  *(&v75 + 1) = v37;
  LOBYTE(v76) = v39 & 1;
  DWORD1(v76) = *(&v84 + 3);
  *(&v76 + 1) = v84;
  *(&v76 + 1) = v41;
  *&v77[64] = v65;
  v78 = v66;
  *&v77[32] = v63;
  *&v77[48] = v64;
  v79 = v35;
  v80 = v37;
  v81 = v39 & 1;
  *&v82[3] = *(&v84 + 3);
  *v82 = v84;
  v83 = v41;
  sub_100008798(&v69, &v86, &qword_100034C28, &qword_100029FA8);
  sub_100008800(v77, &qword_100034C28, &qword_100029FA8);
  *&v67[71] = v73;
  *&v67[87] = v74;
  *&v67[103] = v75;
  *&v67[119] = v76;
  *&v67[7] = v69;
  *&v67[23] = v70;
  *&v67[39] = v71;
  *&v67[55] = v72;
  v42 = v68;
  *&v84 = v59;
  *(&v84 + 1) = v3;
  v85[0] = v68;
  *&v85[97] = *&v67[96];
  v44 = *&v67[80];
  v43 = *&v67[96];
  *&v85[81] = *&v67[80];
  v45 = *&v67[112];
  *&v85[113] = *&v67[112];
  *&v85[17] = *&v67[16];
  v46 = *&v67[16];
  v47 = *&v67[32];
  *&v85[33] = *&v67[32];
  *&v85[49] = *&v67[48];
  v48 = *&v67[48];
  v49 = *&v67[64];
  *&v85[65] = *&v67[64];
  v50 = *v67;
  *&v85[1] = *v67;
  v51 = *&v85[96];
  *(a2 + 96) = *&v85[80];
  *(a2 + 112) = v51;
  *(a2 + 128) = *&v85[112];
  v52 = *&v85[32];
  *(a2 + 32) = *&v85[16];
  *(a2 + 48) = v52;
  v53 = *&v85[64];
  *(a2 + 64) = *&v85[48];
  *(a2 + 80) = v53;
  v54 = *v85;
  *a2 = v84;
  *(a2 + 16) = v54;
  v87 = v3;
  v92[2] = v44;
  v92[3] = v43;
  *v93 = v45;
  v90 = v46;
  v91 = v47;
  v92[0] = v48;
  *&v85[128] = *&v67[127];
  *(a2 + 144) = *&v67[127];
  v86 = v59;
  v88 = v42;
  *&v93[15] = *&v67[127];
  v92[1] = v49;
  v89 = v50;
  sub_100008798(&v84, &v61, &qword_100034C30, &qword_100029FB0);
  return sub_100008800(&v86, &qword_100034C30, &qword_100029FB0);
}

uint64_t sub_100014C70@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 80) = a12;
  return result;
}

uint64_t sub_100014CD0(uint64_t a1)
{
  v1 = 144;
  if (*(a1 + 233))
  {
    v1 = 128;
  }

  v2 = 152;
  if (*(a1 + 233))
  {
    v2 = 136;
  }

  v3 = *(a1 + v1);
  v4 = *(a1 + v2);

  return v3;
}

uint64_t sub_100014D24(char a1)
{
  if (a1 == 1)
  {
    return sub_10002820C();
  }

  if (a1)
  {
    return sub_10002821C();
  }

  return sub_10002822C();
}

double sub_100014D40@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() opaqueSeparatorColor];
  v3 = sub_1000281FC();
  nullsub_1(0.5);
  sub_10002831C();
  sub_100027D9C();
  *a1 = v3;
  *(a1 + 8) = 256;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  result = *&v7;
  *(a1 + 48) = v7;
  return result;
}

uint64_t sub_100014DE8(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void sub_100014E34(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1 - 1;
  if (v1 > 3)
  {
    v2 = 3;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v1 <= v2)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v3 = 2 * v2 + 3;
  if (v1 == v3 >> 1)
  {
  }

  else
  {
    sub_100016240(a1, a1 + 32, 0, v3);
  }
}

void sub_100014E7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 5)
  {
    sub_100016240(a1, a1 + 32, 4, (2 * v1) | 1);
  }
}

uint64_t sub_100014EA8(uint64_t a1)
{
  v2 = sub_100027FFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001DFC(&qword_100034908, &qword_1000298B8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v15 - v9);
  v11 = sub_100027E8C();
  v12 = nullsub_1(30.0);
  *v10 = v11;
  v10[1] = v12;
  *(v10 + 16) = 0;
  v13 = sub_100001DFC(&qword_100034910, &qword_1000298C0);
  sub_100015074(a1, v10 + *(v13 + 44));
  sub_100027FEC();
  sub_10001A1A8(&qword_100034918, &qword_100034908, &qword_1000298B8);
  sub_1000281EC();
  (*(v3 + 8))(v6, v2);
  return sub_100008800(v10, &qword_100034908, &qword_1000298B8);
}

uint64_t sub_100015074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_100001DFC(&qword_100034C00, &qword_100029F88);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v31 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = (&v31 - v12);
  __chkstk_darwin(v11);
  v15 = (&v31 - v14);
  v16 = sub_100027F1C();
  v17 = nullsub_1(8.0);
  *v15 = v16;
  v15[1] = v17;
  *(v15 + 16) = 0;
  v18 = sub_100001DFC(&qword_100034C08, &qword_100029F90);
  v19 = *(v18 + 44);
  sub_100014E34(a1);
  v21 = *(v20 + 16);

  *(swift_allocObject() + 16) = a1;
  sub_1000186D0();

  sub_10002830C();
  v22 = sub_100027F1C();
  v23 = nullsub_1(8.0);
  *v13 = v22;
  v13[1] = v23;
  *(v13 + 16) = 0;
  v24 = *(v18 + 44);
  v25 = *(a1 + 16);
  if (v25 < 5)
  {
    v26 = &_swiftEmptyArrayStorage;
  }

  else
  {
    sub_100016240(a1, a1 + 32, 4, (2 * v25) | 1);
  }

  v27 = v26[2];

  *(swift_allocObject() + 16) = a1;

  sub_10002830C();
  sub_100008798(v15, v10, &qword_100034C00, &qword_100029F88);
  sub_100008798(v13, v7, &qword_100034C00, &qword_100029F88);
  v28 = v32;
  sub_100008798(v10, v32, &qword_100034C00, &qword_100029F88);
  v29 = sub_100001DFC(&qword_100034C18, &qword_100029F98);
  sub_100008798(v7, v28 + *(v29 + 48), &qword_100034C00, &qword_100029F88);
  sub_100008800(v13, &qword_100034C00, &qword_100029F88);
  sub_100008800(v15, &qword_100034C00, &qword_100029F88);
  sub_100008800(v7, &qword_100034C00, &qword_100029F88);
  return sub_100008800(v10, &qword_100034C00, &qword_100029F88);
}

uint64_t sub_100015384()
{
  v1 = sub_100027FFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001DFC(&qword_100034908, &qword_1000298B8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v15 - v8);
  v10 = *v0;
  v11 = sub_100027E8C();
  v12 = nullsub_1(30.0);
  *v9 = v11;
  v9[1] = v12;
  *(v9 + 16) = 0;
  v13 = sub_100001DFC(&qword_100034910, &qword_1000298C0);
  sub_100015074(v10, v9 + *(v13 + 44));
  sub_100027FEC();
  sub_10001A1A8(&qword_100034918, &qword_100034908, &qword_1000298B8);
  sub_1000281EC();
  (*(v2 + 8))(v5, v1);
  return sub_100008800(v9, &qword_100034908, &qword_1000298B8);
}

uint64_t sub_100015550(uint64_t a1)
{

  return a1;
}

uint64_t sub_1000155A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[1];

  v10 = v4[3];

  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

uint64_t sub_1000155F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v7 = sub_100001DFC(&qword_100034920, &qword_1000298C8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v12 = sub_100027ABC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = a2;

  sub_100027AAC();
  sub_100017000();
  v17 = sub_10002855C();
  v19 = v18;
  (*(v13 + 8))(v16, v12);

  v29 = v17;
  v30 = v19;
  v25 = a1;
  v26 = a2;
  v27 = v22;
  v28 = v23;
  sub_100001DFC(&qword_100034930, &qword_1000298D0);
  sub_1000170BC();
  sub_1000282AC();

  sub_10001A1A8(&qword_100034950, &qword_100034920, &qword_1000298C8);
  sub_100017174();
  sub_1000281BC();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100015890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000280CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[2] = a1;
  v24[3] = a2;
  sub_100017000();

  v11 = sub_10002816C();
  v13 = v12;
  v15 = v14;
  sub_10002810C();
  (*(v7 + 104))(v10, enum case for Font.Leading.tight(_:), v6);
  sub_1000280EC();

  (*(v7 + 8))(v10, v6);
  v16 = sub_10002813C();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_100018604(v11, v13, v15 & 1);

  *a3 = v16;
  *(a3 + 8) = v18;
  *(a3 + 16) = v20 & 1;
  *(a3 + 24) = v22;
  return result;
}

uint64_t sub_100015A54@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_100027E9C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_100001DFC(&qword_100034960, &qword_1000298E0);
  return sub_100015AAC((a1 + *(v2 + 44)));
}

uint64_t sub_100015AAC@<X0>(char *a1@<X8>)
{
  v31 = a1;
  v1 = sub_100027FAC();
  v2 = *(v1 - 8);
  v3 = v2;
  v28 = v1;
  v29 = v2;
  v4 = *(v2 + 64);
  v5 = __chkstk_darwin(v1);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = sub_100027F8C();
  v30 = *(v10 - 8);
  v11 = v30;
  v12 = *(v30 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  sub_100027F9C();
  sub_100027FBC();
  v18 = *(v11 + 16);
  v18(v15, v17, v10);
  v19 = *(v3 + 16);
  v19(v7, v9, v1);
  v20 = v31;
  v18(v31, v15, v10);
  v21 = &v20[*(sub_100001DFC(&qword_100034BF8, &qword_100029F50) + 48)];
  v22 = v28;
  v19(v21, v7, v28);
  v23 = *(v29 + 8);
  v24 = v9;
  v25 = v22;
  v23(v24, v22);
  v26 = *(v30 + 8);
  v26(v17, v10);
  v23(v7, v25);
  return (v26)(v15, v10);
}

void sub_100015D3C(uint64_t a1@<X8>)
{
  v2 = sub_100027CAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for InviteMessageDetails();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100021640(v10);
  sub_10001603C(v10, a1, type metadata accessor for InviteMessageDetails);
  v11 = type metadata accessor for InviteMessageView(0);
  v12 = a1 + v11[5];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (a1 + v11[6]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + v11[7]);
  v15 = type metadata accessor for FamilyFetcher();
  v16 = sub_10001EFD0();
  v14[3] = v15;
  v14[4] = &off_1000318A8;
  *v14 = v16;
  v17 = a1 + v11[8];
  v24 = 0;
  sub_1000282BC();
  v18 = v26;
  *v17 = v25;
  *(v17 + 8) = v18;
  v19 = a1 + v11[9];
  v24 = 0;
  sub_1000282BC();
  v20 = v26;
  *v19 = v25;
  *(v19 + 8) = v20;
  (*(v3 + 104))(v6, enum case for FamilyFeatureFlags.familyPrivacyDisclosure(_:), v2);
  LOBYTE(v15) = sub_100027C9C();
  (*(v3 + 8))(v6, v2);
  v21 = 0.0;
  if (v15)
  {
    v21 = 3.0;
  }

  v22 = v11[10];
  *(a1 + v22) = nullsub_1(v21);
}

uint64_t sub_100015F84(uint64_t a1)
{
  v2 = sub_1000185B0();

  return static PreviewProvider._previews.getter(a1, v2);
}

uint64_t sub_100015FD0(uint64_t a1)
{
  v2 = sub_1000185B0();

  return static PreviewProvider._platform.getter(a1, v2);
}

uint64_t sub_10001603C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000160A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100027E4C();
  *a1 = result;
  return result;
}

uint64_t sub_1000160D0(uint64_t *a1)
{
  v1 = *a1;

  return sub_100027E5C();
}

uint64_t sub_1000160FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100027E6C();
  *a1 = result;
  return result;
}

uint64_t sub_100016128(uint64_t *a1)
{
  v1 = *a1;

  return sub_100027E7C();
}

uint64_t sub_100016178(uint64_t a1)
{
  v2 = sub_100027D7C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100027E3C();
}

void sub_100016240(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100001DFC(&qword_100034C20, &qword_100029FA0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 1;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 5);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_100016318(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10001640C;

  return v6(v2 + 32);
}

uint64_t sub_10001640C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100016520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = *(a1 + 112);
  v36 = *(a1 + 120);
  sub_100017000();

  v4 = sub_10002816C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(a1 + 232);
  sub_10001697C();
  if (sub_1000283AC())
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = *(a1 + 160);
    v14 = *(a1 + 168);
  }

  v32 = v12;
  v33 = v10;
  v31 = v13;
  v15 = v8;
  v16 = v6;
  v17 = v4;
  if (v11 == 1)
  {
    v18 = sub_10002820C();
  }

  else if (v11)
  {
    v18 = sub_10002821C();
  }

  else
  {
    v18 = sub_10002822C();
  }

  v19 = v18;
  v20 = 144;
  if (*(a1 + 233))
  {
    v20 = 128;
  }

  v21 = 152;
  if (*(a1 + 233))
  {
    v21 = 136;
  }

  v22 = *(a1 + v21);
  v35 = *(a1 + v20);

  v23 = sub_10002816C();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  result = sub_10001A0F4(a1, type metadata accessor for InviteMessageView);
  *a2 = v17;
  *(a2 + 8) = v16;
  *(a2 + 16) = v15 & 1;
  *(a2 + 24) = v33;
  *(a2 + 32) = v32;
  *(a2 + 40) = v31;
  *(a2 + 48) = v19;
  *(a2 + 56) = v23;
  *(a2 + 64) = v25;
  *(a2 + 72) = v27 & 1;
  *(a2 + 80) = v29;
  return result;
}

uint64_t sub_1000166C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100016750(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100016788()
{
  result = qword_1000347B8;
  if (!qword_1000347B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000347B8);
  }

  return result;
}

uint64_t sub_1000167D8()
{
  v2 = *(type metadata accessor for InviteActionsView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100006F44;

  return sub_100010FE4(v7, v8, v9, v0 + v3, v5, v6);
}

uint64_t sub_10001690C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100016918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InviteMessageDetails();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001697C()
{
  result = qword_1000348D0;
  if (!qword_1000348D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000348D0);
  }

  return result;
}

uint64_t sub_1000169D0()
{
  v56 = type metadata accessor for SettingsView(0);
  v59 = *(*(v56 - 8) + 80);
  v57 = *(*(v56 - 8) + 64);
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v60 = v0;
  v58 = (v59 + 32) & ~v59;
  v2 = v0 + v58;
  v3 = *(v0 + v58 + 8);

  v4 = *(v0 + v58 + 24);

  v5 = *(v0 + v58 + 40);

  v6 = *(v0 + v58 + 56);

  v7 = *(v0 + v58 + 72);

  v8 = *(v0 + v58 + 88);

  v9 = *(v0 + v58 + 104);

  v10 = *(v0 + v58 + 120);

  v11 = *(v0 + v58 + 136);

  v12 = *(v0 + v58 + 152);

  v13 = *(v0 + v58 + 168);

  v14 = *(v0 + v58 + 184);

  v15 = *(v0 + v58 + 200);

  v16 = *(v0 + v58 + 216);

  v17 = *(v0 + v58 + 224);

  v18 = *(v0 + v58 + 248);

  v19 = *(v0 + v58 + 264);

  v20 = type metadata accessor for InviteMessageDetails();
  v21 = v20[24];
  v22 = sub_100027BEC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (!v24(v2 + v21, 1, v22))
  {
    (*(v23 + 8))(v2 + v21, v22);
  }

  v25 = v20[25];
  if (!v24(v2 + v25, 1, v22))
  {
    (*(v23 + 8))(v2 + v25, v22);
  }

  v26 = v20[26];
  v27 = sub_100027C1C();
  v55 = *(v27 - 8);
  v28 = *(v55 + 48);
  if (!v28(v2 + v26, 1, v27))
  {
    (*(v55 + 8))(v2 + v26, v27);
  }

  v29 = type metadata accessor for InviteMessageView(0);

  sub_100007038((v2 + v29[7]));
  v30 = *(v2 + v29[8] + 8);

  v31 = *(v2 + v29[9] + 8);

  v32 = (v2 + *(v56 + 20));
  v33 = *(v32 + 1);

  v34 = *(v32 + 3);

  v35 = *(v32 + 5);

  v36 = *(v32 + 7);

  v37 = *(v32 + 9);

  v38 = *(v32 + 11);

  v39 = *(v32 + 13);

  v40 = *(v32 + 15);

  v41 = *(v32 + 17);

  v42 = *(v32 + 19);

  v43 = *(v32 + 21);

  v44 = *(v32 + 23);

  v45 = *(v32 + 25);

  v46 = *(v32 + 27);

  v47 = *(v32 + 28);

  v48 = *(v32 + 31);

  v49 = *(v32 + 33);

  v50 = v20[24];
  if (!v24(&v32[v50], 1, v22))
  {
    (*(v23 + 8))(&v32[v50], v22);
  }

  v51 = v20[25];
  if (!v24(&v32[v51], 1, v22))
  {
    (*(v23 + 8))(&v32[v51], v22);
  }

  v52 = v20[26];
  if (!v28(&v32[v52], 1, v27))
  {
    (*(v55 + 8))(&v32[v52], v27);
  }

  v53 = (v57 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v60, v53 + 16, v59 | 7);
}

uint64_t sub_100016E28(uint64_t a1)
{
  v4 = *(type metadata accessor for SettingsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100008AE0;

  return sub_1000134D0(a1, v9, v10, v1 + v5, v7, v8);
}

uint64_t sub_100016F44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001DFC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100016FAC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100016FF0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100016FF0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100017000()
{
  result = qword_100034928;
  if (!qword_100034928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034928);
  }

  return result;
}

uint64_t sub_10001705C@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);

  v5 = sub_10002827C();
  v6 = sub_1000280DC();
  result = swift_getKeyPath();
  *a1 = v5;
  a1[1] = result;
  a1[2] = v6;
  return result;
}

unint64_t sub_1000170BC()
{
  result = qword_100034938;
  if (!qword_100034938)
  {
    sub_100008068(&qword_100034930, &qword_1000298D0);
    sub_10001A1A8(&qword_100034940, &qword_100034948, &qword_1000298D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034938);
  }

  return result;
}

unint64_t sub_100017174()
{
  result = qword_100034958;
  if (!qword_100034958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034958);
  }

  return result;
}

unint64_t sub_1000172E4()
{
  result = qword_100034968;
  if (!qword_100034968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034968);
  }

  return result;
}

uint64_t sub_100017368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InviteMessageDetails();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001743C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for InviteMessageDetails();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }

  return result;
}

void sub_1000174F8()
{
  type metadata accessor for InviteMessageDetails();
  if (v0 <= 0x3F)
  {
    sub_1000176E0(319, &qword_1000349C8, &type metadata for CGFloat, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100017618();
      if (v2 <= 0x3F)
      {
        sub_10001767C();
        if (v3 <= 0x3F)
        {
          sub_1000176E0(319, &unk_1000349E8, &type metadata for Bool, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100017618()
{
  if (!qword_1000349D0)
  {
    sub_100008068(&qword_1000349D8, &qword_100029CA8);
    v0 = sub_10002853C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000349D0);
    }
  }
}

unint64_t sub_10001767C()
{
  result = qword_1000349E0;
  if (!qword_1000349E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000349E0);
  }

  return result;
}

void sub_1000176E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100017744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InviteMessageView(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000177C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InviteMessageView(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100017834()
{
  result = type metadata accessor for InviteMessageView(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000178B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InviteMessageView(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for InviteMessageDetails();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000179B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for InviteMessageView(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for InviteMessageDetails();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100017AB4()
{
  result = type metadata accessor for InviteMessageView(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for InviteMessageDetails();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100017B48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100017B90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
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

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100017BE8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100017C00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100017C24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100017C6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100017CF0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100017CFC(uint64_t a1, int a2)
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

uint64_t sub_100017D44(uint64_t result, int a2, int a3)
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

unint64_t sub_100017DB8()
{
  result = qword_100034B30;
  if (!qword_100034B30)
  {
    sub_100008068(&qword_100034898, &qword_100029810);
    sub_100017E70();
    sub_10001A1A8(&qword_100034B60, &qword_100034B68, &qword_100029F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B30);
  }

  return result;
}

unint64_t sub_100017E70()
{
  result = qword_100034B38;
  if (!qword_100034B38)
  {
    sub_100008068(&qword_100034880, &qword_1000297F8);
    sub_100017EFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B38);
  }

  return result;
}

unint64_t sub_100017EFC()
{
  result = qword_100034B40;
  if (!qword_100034B40)
  {
    sub_100008068(&qword_100034878, &qword_1000297F0);
    sub_100017F88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B40);
  }

  return result;
}

unint64_t sub_100017F88()
{
  result = qword_100034B48;
  if (!qword_100034B48)
  {
    sub_100008068(&qword_100034870, &qword_1000297E8);
    sub_100018014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B48);
  }

  return result;
}

unint64_t sub_100018014()
{
  result = qword_100034B50;
  if (!qword_100034B50)
  {
    sub_100008068(&qword_100034868, &qword_1000297E0);
    sub_10001A1A8(&qword_100034B58, &qword_100034860, &qword_1000297D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B50);
  }

  return result;
}

unint64_t sub_100018158()
{
  result = qword_100034B90;
  if (!qword_100034B90)
  {
    sub_100008068(&qword_100034B98, &qword_100029F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B90);
  }

  return result;
}

unint64_t sub_1000181E0()
{
  result = qword_100034BA0;
  if (!qword_100034BA0)
  {
    sub_100008068(&qword_1000348F8, &qword_1000298A8);
    sub_10001A1A8(&qword_100034BA8, &qword_1000348E8, &qword_100029898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034BA0);
  }

  return result;
}

unint64_t sub_1000182E0()
{
  result = qword_100034BC0;
  if (!qword_100034BC0)
  {
    sub_100008068(&qword_100034BC8, &qword_100029F38);
    sub_10001A1A8(&qword_100034BD0, &qword_100034BD8, &qword_100029F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034BC0);
  }

  return result;
}

uint64_t sub_100018398()
{
  sub_100008068(&qword_100034908, &qword_1000298B8);
  sub_10001A1A8(&qword_100034918, &qword_100034908, &qword_1000298B8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100018430()
{
  sub_100008068(&qword_100034920, &qword_1000298C8);
  sub_10001A1A8(&qword_100034950, &qword_100034920, &qword_1000298C8);
  sub_100017174();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100018568(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000185B0()
{
  result = qword_100034BF0;
  if (!qword_100034BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034BF0);
  }

  return result;
}

uint64_t sub_100018604(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100018614()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10001864C(unint64_t a1@<X0>, void *a2@<X8>)
{
  sub_100014E34(*(v2 + 16));
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v5 + 16) > a1)
  {
    v6 = (v5 + 32 * a1);
    v8 = v6[4];
    v7 = v6[5];
    v10 = v6[6];
    v9 = v6[7];

    *a2 = v8;
    a2[1] = v7;
    a2[2] = v10;
    a2[3] = v9;
    return;
  }

  __break(1u);
}

unint64_t sub_1000186D0()
{
  result = qword_100034C10;
  if (!qword_100034C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034C10);
  }

  return result;
}

void sub_100018724(unint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v5 + 16);
  if (v6 < 5)
  {
    v8 = &_swiftEmptyArrayStorage;
  }

  else
  {
    sub_100016240(v5, v5 + 32, 4, (2 * v6) | 1);
    v8 = v7;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8[2] > a1)
  {
    v9 = &v8[4 * a1];
    v11 = v9[4];
    v10 = v9[5];
    v13 = v9[6];
    v12 = v9[7];

    *a2 = v11;
    a2[1] = v10;
    a2[2] = v13;
    a2[3] = v12;
    return;
  }

  __break(1u);
}

uint64_t sub_1000187D0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100018840(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100018604(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100018884(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000188F0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100018928(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008AE0;

  return sub_100016318(a1, v5);
}

uint64_t sub_1000189E0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100006F44;

  return sub_100016318(a1, v5);
}

uint64_t sub_100018A98()
{
  v54 = type metadata accessor for SettingsView(0);
  v57 = *(*(v54 - 8) + 80);
  v55 = *(*(v54 - 8) + 64);
  v56 = (v57 + 16) & ~v57;
  v58 = v0;
  v1 = v0 + v56;
  v2 = *(v0 + v56 + 8);

  v3 = *(v0 + v56 + 24);

  v4 = *(v0 + v56 + 40);

  v5 = *(v0 + v56 + 56);

  v6 = *(v0 + v56 + 72);

  v7 = *(v0 + v56 + 88);

  v8 = *(v0 + v56 + 104);

  v9 = *(v0 + v56 + 120);

  v10 = *(v0 + v56 + 136);

  v11 = *(v0 + v56 + 152);

  v12 = *(v0 + v56 + 168);

  v13 = *(v0 + v56 + 184);

  v14 = *(v0 + v56 + 200);

  v15 = *(v0 + v56 + 216);

  v16 = *(v0 + v56 + 224);

  v17 = *(v0 + v56 + 248);

  v18 = *(v0 + v56 + 264);

  v19 = type metadata accessor for InviteMessageDetails();
  v20 = v19[24];
  v21 = sub_100027BEC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (!v23(v1 + v20, 1, v21))
  {
    (*(v22 + 8))(v1 + v20, v21);
  }

  v24 = v19[25];
  if (!v23(v1 + v24, 1, v21))
  {
    (*(v22 + 8))(v1 + v24, v21);
  }

  v25 = v19[26];
  v26 = sub_100027C1C();
  v53 = *(v26 - 8);
  v27 = *(v53 + 48);
  if (!v27(v1 + v25, 1, v26))
  {
    (*(v53 + 8))(v1 + v25, v26);
  }

  v28 = type metadata accessor for InviteMessageView(0);

  sub_100007038((v1 + v28[7]));
  v29 = *(v1 + v28[8] + 8);

  v30 = *(v1 + v28[9] + 8);

  v31 = (v1 + *(v54 + 20));
  v32 = *(v31 + 1);

  v33 = *(v31 + 3);

  v34 = *(v31 + 5);

  v35 = *(v31 + 7);

  v36 = *(v31 + 9);

  v37 = *(v31 + 11);

  v38 = *(v31 + 13);

  v39 = *(v31 + 15);

  v40 = *(v31 + 17);

  v41 = *(v31 + 19);

  v42 = *(v31 + 21);

  v43 = *(v31 + 23);

  v44 = *(v31 + 25);

  v45 = *(v31 + 27);

  v46 = *(v31 + 28);

  v47 = *(v31 + 31);

  v48 = *(v31 + 33);

  v49 = v19[24];
  if (!v23(&v31[v49], 1, v21))
  {
    (*(v22 + 8))(&v31[v49], v21);
  }

  v50 = v19[25];
  if (!v23(&v31[v50], 1, v21))
  {
    (*(v22 + 8))(&v31[v50], v21);
  }

  v51 = v19[26];
  if (!v27(&v31[v51], 1, v26))
  {
    (*(v53 + 8))(&v31[v51], v26);
  }

  return _swift_deallocObject(v58, v56 + v55, v57 | 7);
}

void sub_100018EC8()
{
  v1 = *(type metadata accessor for SettingsView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_1000125C0();
}

unint64_t sub_100018F2C()
{
  result = qword_100034CE8;
  if (!qword_100034CE8)
  {
    sub_100008068(&qword_100034CE0, &unk_10002A0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034CE8);
  }

  return result;
}

uint64_t sub_100018FCC()
{
  v1 = *(type metadata accessor for InviteActionsView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v35 = *(v1 + 64);
  v4 = v0 + v3;
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 40);

  v8 = *(v0 + v3 + 56);

  v9 = *(v0 + v3 + 72);

  v10 = *(v0 + v3 + 88);

  v11 = *(v0 + v3 + 104);

  v12 = *(v0 + v3 + 120);

  v13 = *(v0 + v3 + 136);

  v14 = *(v0 + v3 + 152);

  v15 = *(v0 + v3 + 168);

  v16 = *(v0 + v3 + 184);

  v17 = *(v0 + v3 + 200);

  v18 = *(v0 + v3 + 216);

  v19 = *(v0 + v3 + 224);

  v20 = *(v0 + v3 + 248);

  v21 = *(v0 + v3 + 264);

  v22 = type metadata accessor for InviteMessageDetails();
  v23 = v22[24];
  v24 = sub_100027BEC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (!v26(v0 + v3 + v23, 1, v24))
  {
    (*(v25 + 8))(v4 + v23, v24);
  }

  v27 = v22[25];
  if (!v26(v4 + v27, 1, v24))
  {
    (*(v25 + 8))(v4 + v27, v24);
  }

  v28 = v22[26];
  v29 = sub_100027C1C();
  v30 = *(v29 - 8);
  if (!(*(v30 + 48))(v4 + v28, 1, v29))
  {
    (*(v30 + 8))(v4 + v28, v29);
  }

  v31 = type metadata accessor for InviteMessageView(0);

  sub_100007038((v4 + v31[7]));
  v32 = *(v4 + v31[8] + 8);

  v33 = *(v4 + v31[9] + 8);

  return _swift_deallocObject(v0, v3 + v35, v2 | 7);
}

uint64_t sub_1000192B8()
{
  v1 = *(type metadata accessor for InviteActionsView(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  sub_10002835C();
  sub_10002834C();

  sub_100027DAC();
}

unint64_t sub_100019378()
{
  result = qword_100034D40;
  if (!qword_100034D40)
  {
    sub_100008068(&qword_100034D28, &qword_10002A120);
    sub_100019430();
    sub_10001A1A8(&qword_100034D60, &qword_100034D30, &qword_10002A128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034D40);
  }

  return result;
}

unint64_t sub_100019430()
{
  result = qword_100034D48;
  if (!qword_100034D48)
  {
    sub_100008068(&qword_100034D20, &qword_10002A118);
    sub_1000194E8();
    sub_10001A1A8(&qword_100034B60, &qword_100034B68, &qword_100029F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034D48);
  }

  return result;
}

unint64_t sub_1000194E8()
{
  result = qword_100034D50;
  if (!qword_100034D50)
  {
    sub_100008068(&qword_100034D18, &qword_10002A110);
    sub_10001A1A8(&qword_100034D58, &qword_100034D10, &qword_10002A108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034D50);
  }

  return result;
}

uint64_t sub_1000195B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v22 = *(v3 + 32);
  v23 = *(v3 + 40);
  sub_100017000();

  v4 = sub_10002816C();
  v6 = v5;
  v8 = v7;
  sub_10002807C();
  v9 = sub_10002813C();
  v11 = v10;
  v13 = v12;

  sub_100018604(v4, v6, v8 & 1);

  sub_10002823C();
  v14 = sub_10002812C();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_100018604(v9, v11, v13 & 1);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  return result;
}

uint64_t sub_100019714()
{
  v1 = *(type metadata accessor for InviteActionsView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v37 = *(v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 56);

  v10 = *(v0 + v3 + 72);

  v11 = *(v0 + v3 + 88);

  v12 = *(v0 + v3 + 104);

  v13 = *(v0 + v3 + 120);

  v14 = *(v0 + v3 + 136);

  v15 = *(v0 + v3 + 152);

  v16 = *(v0 + v3 + 168);

  v17 = *(v0 + v3 + 184);

  v18 = *(v0 + v3 + 200);

  v19 = *(v0 + v3 + 216);

  v20 = *(v0 + v3 + 224);

  v21 = *(v0 + v3 + 248);

  v22 = *(v0 + v3 + 264);

  v23 = type metadata accessor for InviteMessageDetails();
  v24 = v23[24];
  v25 = sub_100027BEC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  if (!v27(v0 + v3 + v24, 1, v25))
  {
    (*(v26 + 8))(v5 + v24, v25);
  }

  v28 = v23[25];
  if (!v27(v5 + v28, 1, v25))
  {
    (*(v26 + 8))(v5 + v28, v25);
  }

  v29 = v23[26];
  v30 = sub_100027C1C();
  v31 = *(v30 - 8);
  if (!(*(v31 + 48))(v5 + v29, 1, v30))
  {
    (*(v31 + 8))(v5 + v29, v30);
  }

  v32 = (v37 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = type metadata accessor for InviteMessageView(0);

  sub_100007038((v5 + v33[7]));
  v34 = *(v5 + v33[8] + 8);

  v35 = *(v5 + v33[9] + 8);

  return _swift_deallocObject(v0, v32 + 16, v2 | 7);
}

uint64_t sub_100019A04()
{
  v2 = *(type metadata accessor for InviteActionsView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008AE0;

  return sub_10000CDF8(v7, v8, v9, v0 + v3, v5, v6);
}

uint64_t sub_100019B3C()
{
  v2 = *(type metadata accessor for InviteActionsView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_100027BEC() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008AE0;

  return sub_100010368(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_100019C94()
{
  v1 = *(type metadata accessor for InviteActionsView(0) - 8);
  v2 = *(v1 + 80);
  v38 = *(v1 + 64);
  v3 = sub_100027BEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v39 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = (v0 + ((v2 + 32) & ~v2));
  v8 = *(v7 + 1);

  v9 = *(v7 + 3);

  v10 = *(v7 + 5);

  v11 = *(v7 + 7);

  v12 = *(v7 + 9);

  v13 = *(v7 + 11);

  v14 = *(v7 + 13);

  v15 = *(v7 + 15);

  v16 = *(v7 + 17);

  v17 = *(v7 + 19);

  v18 = *(v7 + 21);

  v19 = *(v7 + 23);

  v20 = *(v7 + 25);

  v21 = *(v7 + 27);

  v22 = *(v7 + 28);

  v23 = *(v7 + 31);

  v24 = *(v7 + 33);

  v25 = type metadata accessor for InviteMessageDetails();
  v26 = v25[24];
  v27 = *(v4 + 48);
  if (!v27(&v7[v26], 1, v3))
  {
    (*(v4 + 8))(&v7[v26], v3);
  }

  v28 = v25[25];
  if (!v27(&v7[v28], 1, v3))
  {
    (*(v4 + 8))(&v7[v28], v3);
  }

  v29 = v25[26];
  v30 = sub_100027C1C();
  v31 = *(v30 - 8);
  if (!(*(v31 + 48))(&v7[v29], 1, v30))
  {
    (*(v31 + 8))(&v7[v29], v30);
  }

  v32 = v2 | v5;
  v33 = (((v2 + 32) & ~v2) + v38 + v5) & ~v5;
  v34 = type metadata accessor for InviteMessageView(0);

  sub_100007038(&v7[v34[7]]);
  v35 = *&v7[v34[8] + 8];

  v36 = *&v7[v34[9] + 8];

  (*(v4 + 8))(v0 + v33, v3);

  return _swift_deallocObject(v0, v33 + v39, v32 | 7);
}

uint64_t sub_100019FC8()
{
  v2 = *(type metadata accessor for InviteActionsView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_100027BEC() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008AE0;

  return sub_10000E210(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_10001A0F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10001A154()
{
  result = qword_100034DE0;
  if (!qword_100034DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034DE0);
  }

  return result;
}

uint64_t sub_10001A1A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008068(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001A1F0()
{
  result = qword_100034E08;
  if (!qword_100034E08)
  {
    sub_100008068(&qword_100034DA8, &qword_10002A1A0);
    sub_10001A2AC();
    sub_100018568(&qword_100034E28, type metadata accessor for InviteActionsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E08);
  }

  return result;
}

unint64_t sub_10001A2AC()
{
  result = qword_100034E10;
  if (!qword_100034E10)
  {
    sub_100008068(&qword_100034E18, &qword_10002A1E8);
    sub_10001A338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E10);
  }

  return result;
}

unint64_t sub_10001A338()
{
  result = qword_100034E20;
  if (!qword_100034E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E20);
  }

  return result;
}

unint64_t sub_10001A38C()
{
  result = qword_100034E30;
  if (!qword_100034E30)
  {
    sub_100008068(&qword_100034D90, &qword_10002A188);
    sub_10001A410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E30);
  }

  return result;
}

unint64_t sub_10001A410()
{
  result = qword_100034E38;
  if (!qword_100034E38)
  {
    sub_100008068(&qword_100034E00, &qword_10002A1E0);
    sub_10001A49C();
    sub_10001A2AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E38);
  }

  return result;
}

unint64_t sub_10001A49C()
{
  result = qword_100034E40;
  if (!qword_100034E40)
  {
    sub_100008068(&qword_100034D88, &qword_10002A180);
    sub_10001A528();
    sub_10001A608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E40);
  }

  return result;
}

unint64_t sub_10001A528()
{
  result = qword_100034E48;
  if (!qword_100034E48)
  {
    sub_100008068(&qword_100034E50, &qword_10002A1F0);
    sub_10001A5B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E48);
  }

  return result;
}

unint64_t sub_10001A5B4()
{
  result = qword_100034E58;
  if (!qword_100034E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E58);
  }

  return result;
}

unint64_t sub_10001A608()
{
  result = qword_100034E60;
  if (!qword_100034E60)
  {
    sub_100008068(&qword_100034D70, &qword_10002A168);
    sub_100018568(&qword_100034E28, type metadata accessor for InviteActionsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E60);
  }

  return result;
}

uint64_t sub_10001A708(unsigned __int8 a1)
{
  v1 = 0x6465747065636341;
  v2 = 0x676E69646E6550;
  v3 = 0x64657269707845;
  if (a1 != 3)
  {
    v3 = 0x6E776F6E6B6E55;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x64656E696C636544;
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

uint64_t sub_10001A7B0(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x64656E696C636544;
    }

    else
    {
      v3 = 0x6465747065636341;
    }

    v2 = 0xE800000000000000;
  }

  else
  {
    v2 = 0xE700000000000000;
    if (a1 == 2)
    {
      v3 = 0x676E69646E6550;
    }

    else if (a1 == 3)
    {
      v3 = 0x64657269707845;
    }

    else
    {
      v3 = 0x6E776F6E6B6E55;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x64656E696C636544;
    }

    else
    {
      v7 = 0x6465747065636341;
    }

    v6 = 0xE800000000000000;
    if (v3 != v7)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v4 = 0x64657269707845;
    if (a2 != 3)
    {
      v4 = 0x6E776F6E6B6E55;
    }

    if (a2 == 2)
    {
      v5 = 0x676E69646E6550;
    }

    else
    {
      v5 = v4;
    }

    v6 = 0xE700000000000000;
    if (v3 != v5)
    {
      goto LABEL_25;
    }
  }

  if (v2 != v6)
  {
LABEL_25:
    v8 = sub_10002863C();
    goto LABEL_26;
  }

  v8 = 1;
LABEL_26:

  return v8 & 1;
}

Swift::Int sub_10001A934()
{
  v1 = *v0;
  sub_10002867C();
  sub_10002841C();

  return sub_10002868C();
}

uint64_t sub_10001AA18()
{
  *v0;
  *v0;
  *v0;
  sub_10002841C();
}

Swift::Int sub_10001AAE8()
{
  v1 = *v0;
  sub_10002867C();
  sub_10002841C();

  return sub_10002868C();
}

uint64_t sub_10001ABC8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001FC38(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10001ABF8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6465747065636341;
  v5 = 0x676E69646E6550;
  v6 = 0x64657269707845;
  if (v2 != 3)
  {
    v6 = 0x6E776F6E6B6E55;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0x64656E696C636544;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10001ACC0()
{
  v1 = v0[19];
  v2 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
  v0[20] = v2;
  [v2 setCachePolicy:v1];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10001AE14;
  v3 = swift_continuation_init();
  v0[17] = sub_100001DFC(&qword_100034E78, &qword_10002A238);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10001B004;
  v0[13] = &unk_100031830;
  v0[14] = v3;
  [v2 startRequestWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001AE14()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_10001AF88;
  }

  else
  {
    v3 = sub_10001AF24;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001AF24()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10001AF88()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];

  return v3(0);
}

uint64_t sub_10001B004(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100008754((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    sub_100001DFC(&qword_100034CF0, qword_10002A0D0);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

uint64_t sub_10001B0DC()
{
  v2 = *(*v0 + 80);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001B1F0;

  return v6(1);
}

uint64_t sub_10001B1F0(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return _swift_task_switch(sub_10001B2F0, 0, 0);
}

uint64_t sub_10001B2F0()
{
  v1 = *(v0 + 24);
  if (v1 && (v2 = [*(v0 + 24) pendingMembers]) != 0)
  {
    v3 = v2;
    sub_100007FAC(0, &qword_100034E80, FAFamilyMember_ptr);
    v4 = sub_10002845C();
  }

  else
  {
    v4 = &_swiftEmptyArrayStorage;
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_10001B3B8(uint64_t result)
{
  if (result)
  {
    return sub_10002851C() & 1;
  }

  return result;
}

uint64_t sub_10001B3E8(void *a1, char *a2, __objc2_class_ro *a3)
{
  v6 = sub_100027D5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v11 = a1;
  v12 = &Family_MSMessagesAppViewController__metaData;
  v13 = [v11 members];
  sub_100007FAC(0, &qword_100034E80, FAFamilyMember_ptr);
  v14 = sub_10002845C();

  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v15)
    {
      goto LABEL_4;
    }

LABEL_22:

    return 0;
  }

LABEL_25:
  v28 = sub_1000285DC();

  if (!v28)
  {
    goto LABEL_22;
  }

LABEL_4:
  v16 = [v11 *(v12 + 1128)];
  v17 = sub_10002845C();

  v34 = v7;
  v35 = v6;
  v32 = a2;
  v33 = a3;
  if (v17 >> 62)
  {
    v18 = sub_1000285DC();
    if (v18)
    {
      goto LABEL_6;
    }

LABEL_28:

    goto LABEL_29;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_28;
  }

LABEL_6:
  v12 = 0;
  v6 = v17 & 0xC000000000000001;
  v7 = v17 & 0xFFFFFFFFFFFFFF8;
  a3 = &Family_MSMessagesAppViewController__metaData;
  while (1)
  {
    if (v6)
    {
      v19 = sub_1000285AC();
    }

    else
    {
      if (v12 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v19 = *(v17 + 8 * v12 + 32);
    }

    v20 = v19;
    a2 = (v12 + 1);
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if ([v19 isOrganizer])
    {
      break;
    }

    ++v12;
    if (a2 == v18)
    {
      goto LABEL_28;
    }
  }

  v22 = [v20 appleID];
  if (!v22)
  {

    goto LABEL_29;
  }

  v23 = v22;
  v24 = sub_1000283EC();
  v26 = v25;

  if (v24 == v32 && v26 == v33)
  {

    return 0;
  }

  v27 = sub_10002863C();

  if (v27)
  {
    goto LABEL_22;
  }

LABEL_29:
  sub_100027CCC();
  v29 = sub_100027D4C();
  v30 = sub_10002850C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "orgranizerAppleID and senderHandle do not match, receiver is already in another family", v31, 2u);
  }

  (*(v34 + 8))(v10, v35);
  return 1;
}

void sub_10001B764(void *a1, unint64_t a2)
{
  v257 = a1;
  v3 = sub_100001DFC(&qword_1000347A0, &unk_100029620);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v242 = &v225 - v5;
  v6 = sub_100027C1C();
  v243 = *(v6 - 8);
  v244 = v6;
  v7 = *(v243 + 64);
  __chkstk_darwin(v6);
  v240 = &v225 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for InviteMessageDetails();
  v9 = *(*(v241 - 8) + 64);
  v10 = __chkstk_darwin(v241);
  v251 = &v225 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v232 = &v225 - v13;
  v14 = __chkstk_darwin(v12);
  v230 = &v225 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v225 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v225 - v20;
  __chkstk_darwin(v19);
  v254 = &v225 - v22;
  v256 = sub_100027D5C();
  v23 = *(v256 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v256);
  v27 = &v225 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v30 = &v225 - v29;
  v31 = __chkstk_darwin(v28);
  v32 = __chkstk_darwin(v31);
  v233 = &v225 - v33;
  v34 = __chkstk_darwin(v32);
  v231 = &v225 - v35;
  v36 = __chkstk_darwin(v34);
  v37 = __chkstk_darwin(v36);
  __chkstk_darwin(v37);
  v42 = &v225 - v41;
  v252 = v30;
  v253 = v27;
  v247 = v38;
  if (!a2)
  {
    goto LABEL_118;
  }

  v248 = v40;
  *&v249 = v21;
  v237 = v39;
  v238 = v18;
  v43 = [a2 members];
  v44 = sub_100007FAC(0, &qword_100034E80, FAFamilyMember_ptr);
  v45 = sub_10002845C();

  v46 = (*(*v245 + 104))(a2, v257[32], v257[33]);
  v255 = a2;
  if ((v46 & 1) == 0)
  {
    if (v45 >> 62)
    {
      goto LABEL_113;
    }

    v246 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v246)
    {
      goto LABEL_5;
    }
  }

LABEL_56:

  v78 = [a2 pendingMembersWithAllStatues];
  v38 = v247;
  if (!v78)
  {
LABEL_118:
    v158 = v38;
    sub_100027CCC();
    v159 = a2;
    v160 = sub_100027D4C();
    v161 = sub_10002850C();

    if (os_log_type_enabled(v160, v161))
    {
      v162 = v23;
      v163 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v258 = v164;
      *v163 = 136315138;
      if (a2)
      {
        v165 = [v159 invites];
        if (v165)
        {
          v166 = v165;
          sub_100007FAC(0, &qword_100034E88, FAFamilyInvite_ptr);
          sub_10002845C();
        }
      }

      sub_100007FAC(0, &qword_100034E88, FAFamilyInvite_ptr);
      v167 = sub_10002846C();
      v169 = v168;

      v170 = sub_100006B88(v167, v169, &v258);

      *(v163 + 4) = v170;
      _os_log_impl(&_mh_execute_header, v160, v161, "invites %s", v163, 0xCu);
      sub_100007038(v164);

      v23 = v162;
      v255 = *(v162 + 8);
      v255(v247, v256);
      v30 = v252;
      v27 = v253;
      if (!a2)
      {
        goto LABEL_170;
      }
    }

    else
    {

      v255 = *(v23 + 8);
      v255(v158, v256);
      if (!a2)
      {
        goto LABEL_170;
      }
    }

    v171 = [v159 invites];
    if (v171)
    {
      v172 = v171;
      sub_100007FAC(0, &qword_100034E88, FAFamilyInvite_ptr);
      v173 = sub_10002845C();

      if (v173 >> 62)
      {
        goto LABEL_168;
      }

      for (i = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000285DC())
      {
        v176 = 0;
        v250 = v173 & 0xC000000000000001;
        v239 = (v173 & 0xFFFFFFFFFFFFFF8);
        *&v174 = 136315138;
        v249 = v174;
        v247 = v173;
        v248 = v23 + 8;
        v246 = i;
        while (1)
        {
          if (v250)
          {
            v177 = sub_1000285AC();
            v23 = v251;
            v178 = (v176 + 1);
            if (__OFADD__(v176, 1))
            {
              break;
            }

            goto LABEL_137;
          }

          v23 = v251;
          if (v176 >= v239[2])
          {
            goto LABEL_167;
          }

          v177 = *(v173 + 8 * v176 + 32);
          v178 = (v176 + 1);
          if (__OFADD__(v176, 1))
          {
            break;
          }

LABEL_137:
          v254 = v178;
          sub_100027CCC();
          sub_100002A28(v257, v23);
          v179 = sub_100027D4C();
          v180 = v30;
          v181 = sub_10002850C();
          if (os_log_type_enabled(v179, v181))
          {
            v182 = swift_slowAlloc();
            v183 = swift_slowAlloc();
            v258 = v183;
            *v182 = v249;
            v185 = *(v23 + 96);
            v184 = *(v23 + 104);

            sub_10001FC9C(v23);
            v186 = sub_100006B88(v185, v184, &v258);
            v27 = v253;

            *(v182 + 4) = v186;
            _os_log_impl(&_mh_execute_header, v179, v181, "Invite code from message url %s", v182, 0xCu);
            sub_100007038(v183);
          }

          else
          {

            sub_10001FC9C(v23);
          }

          v255(v180, v256);
          v30 = v180;
          sub_100027CCC();
          v187 = v177;
          v188 = sub_100027D4C();
          v189 = sub_10002850C();
          if (os_log_type_enabled(v188, v189))
          {
            v190 = swift_slowAlloc();
            v191 = swift_slowAlloc();
            v258 = v191;
            *v190 = v249;
            v192 = [v187 code];

            if (!v192)
            {
              goto LABEL_174;
            }

            v193 = sub_1000283EC();
            v195 = v194;

            v196 = sub_100006B88(v193, v195, &v258);

            *(v190 + 4) = v196;
            _os_log_impl(&_mh_execute_header, v188, v189, "Invite code from family circle %s", v190, 0xCu);
            sub_100007038(v191);

            v27 = v253;
            v255(v253, v256);
            v30 = v252;
          }

          else
          {

            v255(v27, v256);
          }

          v197 = [v187 organizerEmail];
          v173 = v247;
          if (v197)
          {
            v198 = v197;
            v199 = sub_1000283EC();
            v201 = v200;

            if (v199 == v257[32] && v201 == v257[33])
            {
            }

            else
            {
              v202 = sub_10002863C();

              if ((v202 & 1) == 0)
              {
                goto LABEL_154;
              }
            }

            v203 = [v187 inviteStatus];
            if (!v203)
            {
              goto LABEL_164;
            }

            v204 = v203;
            v205 = sub_1000283EC();
            v207 = v206;

            if (v205 == 0x64656E696C636544 && v207 == 0xE800000000000000)
            {
            }

            else
            {
              v208 = sub_10002863C();

              if ((v208 & 1) == 0)
              {
LABEL_164:

                return;
              }
            }
          }

LABEL_154:
          v209 = [v187 organizerEmail];
          if (!v209)
          {
            goto LABEL_129;
          }

          v210 = v209;
          v211 = sub_1000283EC();
          v213 = v212;

          if (v211 == v257[32] && v213 == v257[33])
          {
          }

          else
          {
            v214 = sub_10002863C();

            if ((v214 & 1) == 0)
            {
              goto LABEL_129;
            }
          }

          v215 = [v187 inviteStatus];
          if (!v215)
          {
LABEL_129:

            goto LABEL_130;
          }

          v216 = v215;
          v217 = sub_1000283EC();
          v219 = v218;

          if (v217 == 0x64656E696C636544 && v219 == 0xE800000000000000)
          {

            return;
          }

          v220 = sub_10002863C();

          if (v220)
          {

            return;
          }

LABEL_130:
          ++v176;
          if (v254 == v246)
          {
            goto LABEL_169;
          }
        }

        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        ;
      }

LABEL_169:
    }

LABEL_170:
    v221 = v242;
    sub_100008798(v257 + *(v241 + 104), v242, &qword_1000347A0, &unk_100029620);
    v223 = v243;
    v222 = v244;
    if ((*(v243 + 48))(v221, 1, v244) == 1)
    {
      sub_100008800(v221, &qword_1000347A0, &unk_100029620);
    }

    else
    {
      v224 = v240;
      (*(v223 + 32))(v240, v221, v222);
      (*(*v245 + 136))(v224);
      (*(v223 + 8))(v224, v222);
    }

    return;
  }

  v79 = v78;
  v44 = sub_10002845C();

  v229 = v23;
  if (v44 >> 62)
  {
    goto LABEL_116;
  }

  v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v45)
  {
LABEL_117:

    v23 = v229;
    v38 = v247;
    goto LABEL_118;
  }

LABEL_59:
  v23 = 0;
  v254 = (v44 & 0xC000000000000001);
  v236 = v44 & 0xFFFFFFFFFFFFFF8;
  v237 = v44;
  v234 = v45;
  while (1)
  {
    if (v254)
    {
      v81 = sub_1000285AC();
    }

    else
    {
      if (v23 >= *(v236 + 16))
      {
        goto LABEL_112;
      }

      v81 = *(v44 + 8 * v23 + 32);
    }

    v80 = v81;
    a2 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
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
      v246 = sub_1000285DC();
      if (!v246)
      {
        goto LABEL_56;
      }

LABEL_5:
      v250 = 0;
      v47 = v45 & 0xC000000000000001;
      v235 = v45 & 0xFFFFFFFFFFFFFF8;
      v234 = v45 + 32;
      v229 = v23;
      v226 = v42;
      v228 = v44;
      v236 = v45;
      v227 = v45 & 0xC000000000000001;
      while (1)
      {
        if (v47)
        {
          v48 = v250;
          v30 = sub_1000285AC();
          v49 = v254;
          v50 = __OFADD__(v48, 1);
          v51 = v48 + 1;
          if (v50)
          {
            goto LABEL_115;
          }
        }

        else
        {
          v52 = v250;
          v49 = v254;
          if (v250 >= *(v235 + 16))
          {
            __break(1u);
LABEL_174:
            __break(1u);
            return;
          }

          v30 = *(v234 + 8 * v250);
          v50 = __OFADD__(v52, 1);
          v51 = v52 + 1;
          if (v50)
          {
LABEL_115:
            __break(1u);
LABEL_116:
            v45 = sub_1000285DC();
            if (!v45)
            {
              goto LABEL_117;
            }

            goto LABEL_59;
          }
        }

        v53 = [v30 appleID];
        if (v53)
        {
          v54 = v53;
          v45 = sub_1000283EC();
          v56 = v55;

          v57 = v45 == v257[30] && v56 == v257[31];
          if (v57)
          {

LABEL_104:

            v149 = v226;
            sub_100027CCC();
            sub_100002A28(v257, v49);
            v150 = sub_100027D4C();
            v151 = sub_10002850C();
            if (os_log_type_enabled(v150, v151))
            {
              v152 = swift_slowAlloc();
              v153 = swift_slowAlloc();
              v258 = v153;
              *v152 = 136315138;
              v154 = v23;
              v155 = *(v49 + 240);
              v156 = *(v49 + 248);

              sub_10001FC9C(v49);
              v157 = sub_100006B88(v155, v156, &v258);

              *(v152 + 4) = v157;
              _os_log_impl(&_mh_execute_header, v150, v151, "contact handle %s mapped to family member Apple Account", v152, 0xCu);
              sub_100007038(v153);

              (*(v154 + 8))(v149, v256);
            }

            else
            {

              sub_10001FC9C(v49);
              (*(v23 + 8))(v149, v256);
            }

            return;
          }

          v42 = sub_10002863C();

          if (v42)
          {
            goto LABEL_104;
          }
        }

        v58 = [v30 contact];
        if (v58)
        {
          v59 = v58;
          v42 = [v58 phoneNumbers];

          sub_100001DFC(&qword_100034E90, &qword_10002A250);
          v60 = sub_10002845C();
        }

        else
        {
          v60 = &_swiftEmptyArrayStorage;
        }

        v239 = v30;
        v250 = v51;
        if (v60 >> 62)
        {
          v30 = sub_1000285DC();
          if (v30)
          {
LABEL_23:
            a2 = 0;
            v27 = (v60 & 0xC000000000000001);
            v23 = v60 & 0xFFFFFFFFFFFFFF8;
            do
            {
              if (v27)
              {
                v61 = sub_1000285AC();
              }

              else
              {
                if (a2 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_109;
                }

                v61 = *(v60 + 8 * a2 + 32);
              }

              v45 = v61;
              v44 = a2 + 1;
              if (__OFADD__(a2, 1))
              {
                goto LABEL_108;
              }

              v62 = [v61 value];
              v63 = [v62 stringValue];

              v42 = sub_1000283EC();
              v65 = v64;

              if (v42 == v257[30] && v65 == v257[31])
              {

LABEL_82:

                v106 = v248;
                sub_100027CCC();
                v107 = v249;
                sub_100002A28(v257, v249);
                v108 = sub_100027D4C();
                v109 = sub_10002850C();
                if (os_log_type_enabled(v108, v109))
                {
                  v110 = swift_slowAlloc();
                  v111 = swift_slowAlloc();
                  v258 = v111;
                  *v110 = 136315138;
                  v112 = *(v107 + 240);
                  v113 = *(v107 + 248);

                  sub_10001FC9C(v107);
                  v114 = sub_100006B88(v112, v113, &v258);

                  *(v110 + 4) = v114;
                  _os_log_impl(&_mh_execute_header, v108, v109, "contact handle %s mapped to family member phone number", v110, 0xCu);
                  sub_100007038(v111);
                }

                else
                {

                  sub_10001FC9C(v107);
                }

                (*(v229 + 8))(v106, v256);
                return;
              }

              v67 = sub_10002863C();

              if (v67)
              {
                goto LABEL_82;
              }

              ++a2;
            }

            while (v44 != v30);
          }
        }

        else
        {
          v30 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v30)
          {
            goto LABEL_23;
          }
        }

        v68 = [v239 contact];
        if (v68)
        {
          v69 = v68;
          v70 = [v68 emailAddresses];

          sub_100001DFC(&qword_100034E90, &qword_10002A250);
          v71 = sub_10002845C();

          if (!(v71 >> 62))
          {
            goto LABEL_39;
          }
        }

        else
        {
          v71 = &_swiftEmptyArrayStorage;
          if (!(&_swiftEmptyArrayStorage >> 62))
          {
LABEL_39:
            v30 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v30)
            {
              goto LABEL_40;
            }

            goto LABEL_55;
          }
        }

        v30 = sub_1000285DC();
        if (v30)
        {
LABEL_40:
          a2 = 0;
          v23 = v71 & 0xC000000000000001;
          v27 = (v71 & 0xFFFFFFFFFFFFFF8);
          do
          {
            if (v23)
            {
              v72 = sub_1000285AC();
            }

            else
            {
              if (a2 >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_111;
              }

              v72 = *(v71 + 8 * a2 + 32);
            }

            v45 = v72;
            v44 = a2 + 1;
            if (__OFADD__(a2, 1))
            {
              goto LABEL_110;
            }

            v73 = [v72 value];
            v42 = sub_1000283EC();
            v75 = v74;

            if (v42 == v257[30] && v75 == v257[31])
            {

LABEL_87:

              v115 = v237;
              sub_100027CCC();
              v116 = v238;
              sub_100002A28(v257, v238);
              v117 = sub_100027D4C();
              v118 = sub_10002850C();
              v119 = os_log_type_enabled(v117, v118);
              v120 = v239;
              if (v119)
              {
                v121 = swift_slowAlloc();
                v122 = swift_slowAlloc();
                v258 = v122;
                *v121 = 136315138;
                v123 = v116[30];
                v124 = v116[31];

                sub_10001FC9C(v116);
                v125 = sub_100006B88(v123, v124, &v258);

                *(v121 + 4) = v125;
                _os_log_impl(&_mh_execute_header, v117, v118, "contact handle %s mapped to family member email address", v121, 0xCu);
                sub_100007038(v122);
              }

              else
              {

                sub_10001FC9C(v116);
              }

              (*(v229 + 8))(v115, v256);
              return;
            }

            v77 = sub_10002863C();

            if (v77)
            {
              goto LABEL_87;
            }

            ++a2;
          }

          while (v44 != v30);
        }

LABEL_55:

        v23 = v229;
        v30 = v252;
        v27 = v253;
        a2 = v255;
        v44 = v228;
        v45 = v236;
        v47 = v227;
        if (v250 == v246)
        {
          goto LABEL_56;
        }
      }
    }

    v82 = [v81 inviteEmail];
    if (!v82)
    {
      goto LABEL_62;
    }

    v83 = v82;
    v250 = sub_1000283EC();
    v85 = v84;
    v86 = [v80 statusString];
    if (v86)
    {
      break;
    }

    v42 = v80;
    v80 = v83;
LABEL_61:

LABEL_62:
    ++v23;
    v57 = a2 == v45;
    a2 = v255;
    if (v57)
    {
      goto LABEL_117;
    }
  }

  v87 = v86;
  v235 = sub_1000283EC();
  *&v249 = v88;

  v89 = [objc_allocWithZone(CNPhoneNumber) initWithStringValue:v83];
  v90 = v257[30];
  v91 = v257[31];
  v92 = objc_allocWithZone(CNPhoneNumber);
  v248 = v91;
  v93 = sub_1000283DC();
  v42 = [v92 initWithStringValue:v93];

  v94 = [v89 fullyQualifiedDigits];
  if (!v94)
  {
    goto LABEL_77;
  }

  v238 = v89;
  v239 = v80;
  v246 = v42;
  v95 = v94;
  v96 = sub_1000283EC();
  v98 = v97;

  v42 = v246;
  v99 = [v246 fullyQualifiedDigits];
  if (!v99)
  {

    v80 = v239;
    v89 = v238;
    goto LABEL_77;
  }

  v100 = v99;
  v101 = sub_1000283EC();
  v103 = v102;

  if (v96 != v101 || v98 != v103)
  {
    v104 = sub_10002863C();

    v27 = v253;
    v80 = v239;
    v89 = v238;
    v42 = v246;
    if (v104)
    {
      goto LABEL_98;
    }

LABEL_77:
    if (v250 == v90 && v85 == v248)
    {
      v246 = v42;
      v126 = v89;

      v127 = v249;
    }

    else
    {
      v105 = sub_10002863C();

      if ((v105 & 1) == 0)
      {

        v30 = v252;
        v44 = v237;
        v45 = v234;
        goto LABEL_61;
      }

      v127 = v249;
      v246 = v42;
      v126 = v89;
    }

    v128 = v233;
    sub_100027CCC();
    v129 = v232;
    sub_100002A28(v257, v232);

    v130 = sub_100027D4C();
    v131 = sub_10002850C();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v258 = swift_slowAlloc();
      *v132 = 136315394;
      v133 = *(v129 + 240);
      v134 = *(v129 + 248);

      sub_10001FC9C(v129);
      v135 = sub_100006B88(v133, v134, &v258);

      *(v132 + 4) = v135;
      v136 = v249;
      *(v132 + 12) = 2080;
      v137 = v235;
      v127 = v136;
      *(v132 + 14) = sub_100006B88(v235, v136, &v258);
      _os_log_impl(&_mh_execute_header, v130, v131, "contact handle %s found in pending members with status %s", v132, 0x16u);
      swift_arrayDestroy();

      (*(v229 + 8))(v128, v256);
    }

    else
    {

      sub_10001FC9C(v129);
      (*(v229 + 8))(v128, v256);
      v137 = v235;
    }

    sub_10001FC38(v137, v127);

    goto LABEL_102;
  }

LABEL_98:

  v138 = v231;
  sub_100027CCC();
  v139 = v230;
  sub_100002A28(v257, v230);
  v140 = v249;

  v141 = sub_100027D4C();
  v142 = sub_10002850C();

  if (os_log_type_enabled(v141, v142))
  {
    v143 = swift_slowAlloc();
    v258 = swift_slowAlloc();
    *v143 = 136315394;
    v144 = *(v139 + 240);
    v145 = *(v139 + 248);

    sub_10001FC9C(v139);
    v146 = sub_100006B88(v144, v145, &v258);

    *(v143 + 4) = v146;
    v140 = v249;
    *(v143 + 12) = 2080;
    v147 = v235;
    *(v143 + 14) = sub_100006B88(v235, v140, &v258);
    _os_log_impl(&_mh_execute_header, v141, v142, "contact handle %s found in pending members with status %s", v143, 0x16u);
    swift_arrayDestroy();

    (*(v229 + 8))(v138, v256);
    v148 = v239;
  }

  else
  {

    sub_10001FC9C(v139);
    (*(v229 + 8))(v138, v256);
    v148 = v239;
    v147 = v235;
  }

  sub_10001FC38(v147, v140);

LABEL_102:
}