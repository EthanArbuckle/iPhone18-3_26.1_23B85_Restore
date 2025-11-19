uint64_t sub_100019BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  v10 = *(a7 + 16);
  v9 = *(a7 + 24);

  a5(v10, v9, 1);
}

uint64_t sub_100019C4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_100019CA0(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_genericView);
  v5 = *(v2 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_genericView + 16);
  if (!v5)
  {
    v14 = sub_10001D31C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    v15 = qword_100035690;
    if (os_log_type_enabled(qword_100035690, v14))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v15, v14, "EventGenericDetailViewCoordinator bottomStatusButtonTapped: onRequestPresentViewAction not set on the EKEventGenericDetailView when button tapped for action: %ld", v16, 0xCu);
    }

    return;
  }

  v6 = v4[3];
  v7 = v4[4];
  if (!v7)
  {
    v17 = v4[3];

    v18 = sub_10001D31C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    v19 = qword_100035690;
    if (os_log_type_enabled(qword_100035690, v18))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v19, v18, "EventGenericDetailViewCoordinator bottomStatusButtonTapped: onRequestDismissViewAction not set on the EKEventGenericDetailView when button tapped for action: %ld", v20, 0xCu);
    }

LABEL_22:

    sub_100002EB0(v5);
    return;
  }

  v8 = v4[5];
  v9 = *(a1 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_event);
  if (!v9)
  {
    v21 = v4[5];
    sub_10000BF70(v4[4]);
    sub_10000BF70(v5);
    sub_10001D31C();
    if (qword_100032310 != -1)
    {
LABEL_63:
      swift_once();
    }

    sub_10001CF8C();
    sub_100002EB0(v7);
    goto LABEL_22;
  }

  v10 = v4[1];
  swift_getKeyPath();
  swift_getKeyPath();

  v11 = v9;
  sub_10000BF70(v7);
  sub_10000BF70(v5);
  sub_10001CFCC();

  if (!aBlock[0])
  {
LABEL_26:
    sub_100002EB0(v5);
    sub_100002EB0(v7);

    return;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {

    goto LABEL_26;
  }

  v13 = v12;
  if (a2 != 0x4000)
  {
    if (a2 == 0x2000)
    {
      [v12 rejectButtonTapped];
    }

    else if (a2 == 4096)
    {
      [v12 acceptButtonTapped];
    }

    sub_100002EB0(v7);
    sub_100002EB0(v5);

    return;
  }

  v64._object = aBlock[0];
  v76 = &_swiftEmptyArrayStorage;
  v22 = [v11 attendees];
  v66 = v7;
  v67 = v8;
  if (!v22)
  {
    goto LABEL_67;
  }

  v23 = v22;
  sub_1000058A8(0, &qword_100033EC8, EKParticipant_ptr);
  v24 = sub_10001D2AC();

  if (v24 >> 62)
  {
LABEL_65:
    v25 = sub_10001D50C();
    if (v25)
    {
      goto LABEL_32;
    }

LABEL_66:

    goto LABEL_67;
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v25)
  {
    goto LABEL_66;
  }

LABEL_32:
  v7 = 0;
  v73 = v11;
  v74 = v24 & 0xC000000000000001;
  v68 = v24 & 0xFFFFFFFFFFFFFF8;
  v69 = v25;
  v26 = &off_100031000;
  v70 = v13;
  v71 = v24;
  while (1)
  {
    if (v74)
    {
      v28 = sub_10001D4EC();
    }

    else
    {
      if (v7 >= *(v68 + 16))
      {
        __break(1u);
        goto LABEL_65;
      }

      v28 = *(v24 + 8 * v7 + 32);
    }

    v29 = v28;
    v30 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_63;
    }

    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (v31)
    {
      break;
    }

LABEL_34:
    ++v7;
    v27 = v30 == v25;
    v11 = v73;
    if (v27)
    {
      goto LABEL_66;
    }
  }

  v32 = v31;
  v33 = [v13 proposedTimeAttendee];
  v34 = [v33 v26[321]];

  if (v34)
  {
    v72 = sub_10001D23C();
    v36 = v35;
  }

  else
  {
    v72 = 0;
    v36 = 0;
  }

  v37 = [v32 v26[321]];
  if (!v37)
  {
    if (!v36)
    {
      goto LABEL_57;
    }

    goto LABEL_52;
  }

  v38 = v37;
  v39 = sub_10001D23C();
  v41 = v40;

  if (!v36)
  {
    if (!v41)
    {
LABEL_57:
      v43 = v2;
      goto LABEL_59;
    }

    goto LABEL_55;
  }

  if (!v41)
  {
LABEL_52:

LABEL_56:
    v13 = v70;
    v24 = v71;
    v25 = v69;
    v26 = &off_100031000;
    goto LABEL_34;
  }

  if (v72 != v39 || v36 != v41)
  {
    v42 = sub_10001D55C();

    if (v42)
    {
      goto LABEL_57;
    }

LABEL_55:

    goto LABEL_56;
  }

  v43 = v2;

LABEL_59:

  v44 = v29;
  sub_10001D28C();
  v11 = v73;
  if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v63 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_10001D2BC();
    v11 = v73;
  }

  sub_10001D2CC();

  v2 = v43;
LABEL_67:
  v45 = EventKitUIBundle();
  if (v45)
  {
    v46 = v45;

    v64._countAndFlagsBits = 0x8000000100024830;
    v78._countAndFlagsBits = 3818834;
    v78._object = 0xE300000000000000;
    v79.value._countAndFlagsBits = 0;
    v79.value._object = 0;
    v47.super.isa = v46;
    v80._countAndFlagsBits = 0;
    v80._object = 0xE000000000000000;
    sub_10001CEAC(v78, v79, v47, v80, v64);

    v48 = objc_allocWithZone(EKUIEmailCompositionManager);
    v49 = v11;
    v50 = sub_10001D20C();

    v51 = [v48 initWithEvent:v49 participantRecipients:0 subjectPrefix:v50 bodyPrefix:0];

    v52 = *(v2 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_messageSendingManager);
    *(v2 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_messageSendingManager) = v51;
    v53 = v51;

    v54 = [v53 viewController];
    if (v54)
    {
      v55 = v54;
      [v54 setModalPresentationStyle:2];
    }

    v56 = [v53 viewController];
    sub_100002D94(&qword_100032940, &qword_10001EE38);
    sub_100002D94(&qword_100033EC0, &qword_10001FD08);
    v57 = sub_10001D24C();
    v59 = v58;
    v60 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v61 = swift_allocObject();
    v61[2] = v66;
    v61[3] = v67;
    v61[4] = v57;
    v61[5] = v59;
    v61[6] = v60;
    aBlock[4] = sub_10001CD20;
    aBlock[5] = v61;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019C4C;
    aBlock[3] = &unk_10002DD98;
    v62 = _Block_copy(aBlock);
    sub_10000BF70(v66);

    [v53 setMessageSendingComplete:v62];
    _Block_release(v62);
    if (v56)
    {
      sub_10001D32C();
      if (qword_100032310 != -1)
      {
        swift_once();
      }

      sub_10001CF8C();
      v5(v57, v59, v56, v49, 2);

      sub_100002EB0(v66);
    }

    else
    {

      sub_10001D31C();
      if (qword_100032310 != -1)
      {
        swift_once();
      }

      sub_10001CF8C();

      sub_100002EB0(v66);
      v56 = v65;
    }

    sub_100002EB0(v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_10001A700(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2(a4, a5, 2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *&Strong[OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_messageSendingManager];
    *&Strong[OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_messageSendingManager] = 0;
  }
}

id sub_10001ADB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EKEventGenericDetailView.EventGenericDetailViewCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10001AEC0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

id sub_10001AF08@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v14 = *v1;
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v15 = type metadata accessor for EKEventGenericDetailView.EventGenericDetailViewCoordinator();
  v11 = objc_allocWithZone(v15);
  *&v11[OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_messageSendingManager] = 0;
  v12 = &v11[OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_genericView];
  *v12 = v14;
  *(v12 + 1) = v2;
  *(v12 + 2) = v3;
  *(v12 + 3) = v4;
  *(v12 + 4) = v5;
  *(v12 + 5) = v6;
  *(v12 + 6) = v7;
  *(v12 + 7) = v8;
  *(v12 + 8) = v10;
  *(v12 + 9) = v9;

  sub_10000BF70(v3);
  sub_10000BF70(v5);
  sub_10000BF70(v7);
  sub_10000BF70(v10);
  v17.receiver = v11;
  v17.super_class = v15;
  result = objc_msgSendSuper2(&v17, "init");
  *a1 = result;
  return result;
}

uint64_t sub_10001B000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001C0BC();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10001B064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001C0BC();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10001B0C8()
{
  sub_10001C0BC();
  sub_10001D08C();
  __break(1u);
}

unint64_t sub_10001B0F4()
{
  result = qword_100033DE0;
  if (!qword_100033DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033DE0);
  }

  return result;
}

uint64_t sub_10001B148@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001CFCC();

  *a2 = v5;
  return result;
}

uint64_t sub_10001B1C8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_10001CFDC();
}

uint64_t sub_10001B240(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001B30C(v11, 0, 0, 1, a1, a2);
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
    sub_10000A138(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000584C(v11);
  return v7;
}

unint64_t sub_10001B30C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001B418(a5, a6);
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
    result = sub_10001D4FC();
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

char *sub_10001B418(uint64_t a1, unint64_t a2)
{
  v4 = sub_10001B464(a1, a2);
  sub_10001B594(&off_10002CD08);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10001B464(uint64_t a1, unint64_t a2)
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

  v6 = sub_10001B680(v5, 0);
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

  result = sub_10001D4FC();
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
        v10 = sub_10001D26C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001B680(v10, 0);
        result = sub_10001D4DC();
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

uint64_t sub_10001B594(uint64_t result)
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

  result = sub_10001B6F4(result, v12, 1, v3);
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

void *sub_10001B680(uint64_t a1, uint64_t a2)
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

  sub_100002D94(&qword_100033EB0, &qword_10001FD00);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001B6F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002D94(&qword_100033EB0, &qword_10001FD00);
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

id sub_10001B7E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D94(&qword_100033DE8, &qword_10001FCF8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v40 - v7;
  sub_10001D32C();
  if (qword_100032310 != -1)
  {
    swift_once();
  }

  sub_10001CF8C();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = *(v5 + 16);
  v40[3] = v5 + 16;
  v42 = v10;
  v10(v8, a1, v4);
  v40[0] = v8;
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v43 = a1;
  v13 = v12;
  *(v12 + 16) = v9;
  v41 = *(v5 + 32);
  v41(v12 + v11, v8, v4);
  v14 = (a2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_leftBarButtonTapCallback);
  v40[2] = v6;
  v15 = v4;
  v16 = *(a2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_leftBarButtonTapCallback);
  v17 = *(a2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_leftBarButtonTapCallback + 8);
  *v14 = sub_10001BE90;
  v14[1] = v13;

  sub_100002EB0(v16);

  v18 = swift_allocObject();
  swift_weakInit();
  v19 = v40[0];
  v40[1] = v5 + 32;
  v42(v40[0], v43, v15);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  v21 = v19;
  v41(v20 + v11, v19, v15);
  v22 = (a2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_rightBarButtonTapCallback);
  v23 = *(a2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_rightBarButtonTapCallback);
  v24 = *(a2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_rightBarButtonTapCallback + 8);
  *v22 = sub_10001BEB0;
  v22[1] = v20;

  sub_100002EB0(v23);

  v25 = v43;

  v26 = swift_allocObject();
  swift_weakInit();
  v42(v21, v25, v15);
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  v41(v27 + v11, v21, v15);
  v28 = (a2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_bottomStatusButtonTapCallback);
  v29 = *(a2 + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_bottomStatusButtonTapCallback);
  v30 = v28[1];
  *v28 = sub_10001C03C;
  v28[1] = v27;

  sub_100002EB0(v29);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001CFCC();

  v31 = v46;
  if (!v46)
  {
    return [objc_allocWithZone(UIViewController) init];
  }

  v45 = &OBJC_PROTOCOL___EKUINavigationDelegateProvider;
  v32 = swift_dynamicCastObjCProtocolConditional();
  if (v32)
  {
    v33 = v32;
    v34 = v31;
    sub_10001D0AC();
    v35 = v46;
    [v33 setNavigationDelegate:v46];
  }

  v44 = &OBJC_PROTOCOL___EKViewControllerRemoteUIProtocol;
  v36 = swift_dynamicCastObjCProtocolConditional();
  if (v36)
  {
    v37 = v36;
    v31 = v31;
    sub_10001D0AC();
    v38 = v46;
    [v37 setRemoteUIDelegate:v46];
  }

  return v31;
}

uint64_t sub_10001BCF8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001CFCC();

  if (v1)
  {

    sub_10001D32C();
    if (qword_100032310 == -1)
    {
      return sub_10001CF8C();
    }

    goto LABEL_6;
  }

  sub_10001D31C();
  if (qword_100032310 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_10001CF8C();
}

uint64_t sub_10001BE54()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001BF6C()
{
  v1 = sub_100002D94(&qword_100033DE8, &qword_10001FCF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001C03C(uint64_t a1)
{
  v3 = *(*(sub_100002D94(&qword_100033DE8, &qword_10001FCF8) - 8) + 80);
  v4 = *(v1 + 16);

  return sub_100018B38(a1);
}

unint64_t sub_10001C0BC()
{
  result = qword_100033EB8;
  if (!qword_100033EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033EB8);
  }

  return result;
}

uint64_t sub_10001C110()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C14C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001C164()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C19C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001C20C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10001C258(void *a1)
{
  v2 = v1 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_genericView;
  v3 = *(v1 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_genericView + 16);
  if (v3)
  {
    v4 = *(v2 + 24);
    v5 = *(*(v2 + 8) + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_event);
    if (v5)
    {
      swift_getObjectType();
      sub_10000BF70(v3);
      v7 = v5;
      sub_100002D94(&unk_1000333C0, &unk_10001F820);
      v8 = sub_10001D24C();
      v10 = v9;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (!v11)
      {
LABEL_25:
        sub_10001D32C();
        if (qword_100032310 != -1)
        {
          swift_once();
        }

        sub_10001CF8C();
        v3(v8, v10, a1, v7, 1);

        return sub_100002EB0(v3);
      }

      v12 = v11;
      v13 = a1;
      v14 = [v12 viewControllers];
      sub_1000058A8(0, &unk_100033810, UIViewController_ptr);
      v15 = sub_10001D2AC();

      if (v15 >> 62)
      {
        v16 = sub_10001D50C();
        if (v16)
        {
LABEL_6:

          result = v16 - 1;
          if (__OFSUB__(v16, 1))
          {
            __break(1u);
          }

          else if ((v15 & 0xC000000000000001) == 0)
          {
            if ((result & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (result < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v18 = *(v15 + 8 * result + 32);
LABEL_11:
              v19 = v18;

              swift_getObjectType();
              v8 = sub_10001D24C();
              v10 = v20;

LABEL_24:
              goto LABEL_25;
            }

            __break(1u);
            return result;
          }

          v18 = sub_10001D4EC();
          goto LABEL_11;
        }
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_24;
    }

    sub_10001D31C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    sub_10001CF8C();

    return sub_100002EB0(v3);
  }

  else
  {
    sub_10001D32C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    return sub_10001CF8C();
  }
}

uint64_t sub_10001C624(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_genericView;
  v3 = *(v1 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_genericView + 16);
  if (v3)
  {
    v4 = *(v2 + 24);
    v5 = *(*(v2 + 8) + OBJC_IVAR____TtC27EventKitUIRemoteUIExtension29EKEventGenericDetailViewModel_event);
    if (v5)
    {
      swift_getObjectType();
      sub_10000BF70(v3);
      v7 = v5;
      sub_100002D94(&unk_1000333C0, &unk_10001F820);
      v8 = sub_10001D24C();
      v10 = v9;
      sub_10001D32C();
      if (qword_100032310 != -1)
      {
        swift_once();
      }

      sub_10001CF8C();
      v3(v8, v10, a1, v7, 0);

      return sub_100002EB0(v3);
    }

    else
    {

      sub_10001D31C();
      if (qword_100032310 != -1)
      {
        swift_once();
      }

      sub_10001CF8C();

      return sub_100002EB0(v3);
    }
  }

  else
  {
    sub_10001D32C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    return sub_10001CF8C();
  }
}

uint64_t sub_10001C8A0(void (*a1)(uint64_t))
{
  v2 = *(v1 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_genericView + 32);
  if (v2)
  {
    v4 = *(v1 + OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_genericView + 40);

    v2(0, 0, 1);
    if (a1)
    {

      a1(v5);
      sub_100002EB0(v2);
      v6 = a1;
    }

    else
    {
      v6 = v2;
    }

    return sub_100002EB0(v6);
  }

  else
  {
    sub_10001D32C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    return sub_10001CF8C();
  }
}

uint64_t sub_10001C9E0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001CA30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001CA78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10001CAC0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10001CB5C()
{
  v1 = v0[3];

  if (v0[4])
  {
    v2 = v0[5];
  }

  if (v0[6])
  {
    v3 = v0[7];
  }

  if (v0[8])
  {
    v4 = v0[9];
  }

  if (v0[10])
  {
    v5 = v0[11];
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10001CBDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D94(&qword_100033EF0, &qword_10001FD90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001CC50()
{
  result = qword_100033EF8;
  if (!qword_100033EF8)
  {
    sub_100002E40(&unk_100033F00, &qword_10001FD98);
    sub_10001B0F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033EF8);
  }

  return result;
}