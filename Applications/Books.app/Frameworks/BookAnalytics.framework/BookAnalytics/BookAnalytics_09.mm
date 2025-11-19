uint64_t sub_DD4FC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 orientation];

  if (sub_DE078(v1))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_DD564(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x6964616552626F65;
    }

    if (a1 == 3)
    {
      return 0x4E676E6964616572;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (a1 == 1)
    {
      return 16718;
    }
  }

  result = sub_1E1D50();
  __break(1u);
  return result;
}

uint64_t sub_DD704(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6E776F6E6B6E75;
    case 2:
      return 0x6F6F42664F646E65;
    case 1:
      return 0x6E6F43664F646E65;
  }

  result = sub_1E1D50();
  __break(1u);
  return result;
}

id Utilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Utilities();
  return objc_msgSendSuper2(&v2, "init");
}

id Utilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Utilities();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_DD91C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_DD9E8(v11, 0, 0, 1, a1, a2);
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
    sub_326BC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_4E48(v11);
  return v7;
}

unint64_t sub_DD9E8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_DDAF4(a5, a6);
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
    result = sub_1E1AF0();
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

void *sub_DDAF4(uint64_t a1, unint64_t a2)
{
  v4 = sub_DDB40(a1, a2);
  sub_DDC70(&off_2609D8);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_DDB40(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_E87CC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1E1AF0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1E1800();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_E87CC(v10, 0);
        result = sub_1E1AD0();
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

uint64_t sub_DDC70(uint64_t result)
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

  result = sub_DDD5C(result, v12, 1, v3);
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

char *sub_DDD5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_3D68(&qword_285690, &qword_1F6F98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_DDE50(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x50656D6568544D49 && a2 == 0xEF79617247656761 || (sub_1E1D30() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0xD000000000000010 && 0x8000000000215ED0 == a2 || (sub_1E1D30() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0xD000000000000010 && 0x8000000000215EF0 == a2)
  {
    return 0;
  }

  v5 = sub_1E1D30();
  result = 0;
  v7 = a1 == 0x50656D6568544D49 && a2 == 0xEB00000000656761;
  if ((v5 & 1) == 0 && !v7)
  {
    if (sub_1E1D30())
    {
      return 0;
    }

    if (a1 == 0xD000000000000010 && 0x8000000000215F10 == a2)
    {
      return 1;
    }

    else if (sub_1E1D30())
    {
      return 1;
    }

    else
    {
      return 4;
    }
  }

  return result;
}

uint64_t sub_DDFE4(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    return 2 * (a1 == 6);
  }

  else
  {
    return qword_1F6FA0[a1 - 1];
  }
}

uint64_t sub_DE010(uint64_t a1)
{
  v2 = sub_3D68(&qword_285658, &qword_1F6F68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of static Utilities.contentType(from:)()
{
  return (*(v0 + 104))();
}

{
  return (*(v0 + 112))();
}

{
  return (*(v0 + 120))();
}

void EventReporter.emitAnnotationActionEvent(using:contentData:viewData:)(uint64_t a1, _OWORD *a2, char *a3)
{
  v5 = a2[3];
  v21[2] = a2[2];
  v21[3] = v5;
  v6 = a2[5];
  v21[4] = a2[4];
  v21[5] = v6;
  v7 = a2[1];
  v21[0] = *a2;
  v21[1] = v7;
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = [objc_opt_self() sharedConnection];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 isDiagnosticSubmissionAllowed];

    if (v13)
    {
      v14 = swift_allocObject();
      v15 = a2[3];
      *(v14 + 48) = a2[2];
      *(v14 + 64) = v15;
      v16 = a2[5];
      *(v14 + 80) = a2[4];
      *(v14 + 96) = v16;
      v17 = a2[1];
      *(v14 + 16) = *a2;
      *(v14 + 32) = v17;
      *(v14 + 112) = v8;
      *(v14 + 113) = v9;
      *(v14 + 114) = v10;
      v18 = *(a1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
      v19 = swift_allocObject();
      *(v19 + 16) = sub_DFE7C;
      *(v19 + 24) = v14;
      sub_13A5C(v21, &v20);

      sub_1E10C0();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_DE350(uint64_t a1, __int128 *a2)
{
  v2 = a2[3];
  v16 = a2[2];
  v17 = v2;
  v3 = a2[5];
  v18 = a2[4];
  v19 = v3;
  v4 = a2[1];
  v14 = *a2;
  v15 = v4;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v5 = sub_1E0CB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E9970;
  v10 = enum case for DataEventTrait.onlyOnce(_:);
  v11 = *(v6 + 104);
  v11(v9 + v8, enum case for DataEventTrait.onlyOnce(_:), v5);
  sub_4C164();
  sub_1E0C00();

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E9970;
  v11(v12 + v8, v10, v5);
  sub_E058C();
  sub_1E0C00();

  type metadata accessor for AnnotationActionEvent(0);
  sub_E05E0(&qword_2856F8, type metadata accessor for AnnotationActionEvent);
  v14 = 0u;
  v15 = 0u;
  sub_1E0C10();
  return sub_4C1B8(&v14);
}

uint64_t EventReporter.emitExitLinkTapEvent(using:with:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E0930();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  (*(v5 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  (*(v5 + 32))(v8 + v7, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v9 = *(a1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_DFE84;
  *(v10 + 24) = v8;

  sub_1E10C0();
}

uint64_t sub_DE734()
{
  *&v7[0] = sub_1E08F0();
  *(&v7[0] + 1) = v0;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v1 = sub_1E0CB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E9970;
  (*(v2 + 104))(v5 + v4, enum case for DataEventTrait.onlyOnce(_:), v1);
  sub_E0538();
  sub_1E0C00();

  type metadata accessor for ExitLinkTapEvent(0);
  sub_E05E0(&qword_2856E8, type metadata accessor for ExitLinkTapEvent);
  memset(v7, 0, sizeof(v7));
  sub_1E0C10();
  return sub_4C1B8(v7);
}

uint64_t EventReporter.emitGetStartedActionEvent(using:for:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(a1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_DFE98;
  *(v6 + 24) = v4;

  sub_1E10C0();
}

uint64_t sub_DEB88(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    LOBYTE(v8[0]) = a2;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v2 = sub_1E0CB0();
    v3 = *(v2 - 8);
    v4 = *(v3 + 72);
    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1E9970;
    (*(v3 + 104))(v6 + v5, enum case for DataEventTrait.onlyOnce(_:), v2);
    sub_E04E4();
    sub_1E0C00();

    type metadata accessor for GetStartedActionEvent(0);
    sub_E05E0(&qword_2856D8, type metadata accessor for GetStartedActionEvent);
    memset(v8, 0, sizeof(v8));
    sub_1E0C10();
    return sub_4C1B8(v8);
  }

  return result;
}

uint64_t EventReporter.emitNotificationEngagementEvent(using:for:with:)(uint64_t a1, void *a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a2;
  v7 = *(a1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_DFF18;
  *(v8 + 24) = v6;
  v9 = a3;
  v10 = a2;

  sub_1E10C0();
}

uint64_t sub_DEEF8()
{
  sub_A5880(&v9);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v0 = sub_1E0CB0();
  v1 = *(v0 - 8);
  v8 = *(v1 + 72);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E9970;
  v4 = enum case for DataEventTrait.onlyOnce(_:);
  v5 = *(v1 + 104);
  v5(v3 + v2, enum case for DataEventTrait.onlyOnce(_:), v0);
  sub_E043C();
  sub_1E0C00();

  v15[2] = v11;
  v15[3] = v12;
  v15[4] = v13;
  v15[5] = v14;
  v15[0] = v9;
  v15[1] = v10;
  sub_6E990(v15);
  sub_A5CF0(&v9);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E9970;
  v5(v6 + v2, v4, v0);
  sub_E0490();
  sub_1E0C00();

  type metadata accessor for NotificationEngagementEvent(0);
  sub_E05E0(&qword_2856C8, type metadata accessor for NotificationEngagementEvent);
  v9 = 0u;
  v10 = 0u;
  sub_1E0C10();
  return sub_4C1B8(&v9);
}

void EventReporter.emitScrubEvent(using:contentData:readingSettingsData:startPosition:endPosition:totalLength:)(uint64_t a1, _OWORD *a2, _OWORD *a3, int a4, int a5, int a6)
{
  v12 = a2[3];
  v27[2] = a2[2];
  v27[3] = v12;
  v13 = a2[5];
  v27[4] = a2[4];
  v27[5] = v13;
  v14 = a2[1];
  v27[0] = *a2;
  v27[1] = v14;
  v15 = a3[1];
  v28[0] = *a3;
  v28[1] = v15;
  v16 = [objc_opt_self() sharedConnection];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 isDiagnosticSubmissionAllowed];

    if (v18)
    {
      v19 = swift_allocObject();
      v20 = a2[3];
      *(v19 + 48) = a2[2];
      *(v19 + 64) = v20;
      v21 = a2[5];
      *(v19 + 80) = a2[4];
      *(v19 + 96) = v21;
      v22 = a2[1];
      *(v19 + 16) = *a2;
      *(v19 + 32) = v22;
      v23 = a3[1];
      *(v19 + 112) = *a3;
      *(v19 + 128) = v23;
      *(v19 + 144) = a4;
      *(v19 + 148) = a5;
      *(v19 + 152) = a6;
      v24 = *(a1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
      v25 = swift_allocObject();
      *(v25 + 16) = sub_E00EC;
      *(v25 + 24) = v19;
      sub_13A5C(v27, v26);
      sub_E0100(v28, v26);

      sub_1E10C0();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_DF504(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = a2[3];
  v21 = a2[2];
  v22 = v3;
  v4 = a2[5];
  v23 = a2[4];
  v24 = v4;
  v5 = a2[1];
  v19 = *a2;
  v20 = v5;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v17 = sub_1E0CB0();
  v6 = *(v17 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E9970;
  v10 = enum case for DataEventTrait.onlyOnce(_:);
  v11 = *(v6 + 104);
  v16 = enum case for DataEventTrait.onlyOnce(_:);
  v11(v9 + v8, enum case for DataEventTrait.onlyOnce(_:), v17);
  sub_4C164();
  sub_1E0C00();

  v12 = a3[1];
  v19 = *a3;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E9970;
  v11(v13 + v8, v10, v17);
  sub_92AF0();
  sub_1E0C00();

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E9970;
  v11(v14 + v8, v16, v17);
  sub_E033C();
  sub_1E0C00();

  type metadata accessor for ScrubEvent(0);
  sub_E05E0(&qword_2856B0, type metadata accessor for ScrubEvent);
  v19 = 0u;
  v20 = 0u;
  sub_1E0C10();
  return sub_4C1B8(&v19);
}

uint64_t EventReporter.emitUnifiedMessageActionEvent(using:with:messageType:messageIdentifier:hasActionable:actionIdentifier:placementName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a5;
  *(v17 + 48) = a6;
  *(v17 + 56) = a7;
  *(v17 + 64) = a8;
  *(v17 + 72) = a9;
  *(v17 + 80) = a10;
  v18 = *(a1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_E0160;
  *(v19 + 24) = v17;

  sub_1E10C0();
}

uint64_t sub_DF91C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2 >= 7)
  {
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    *&v17[0] = a3;
    *(&v17[0] + 1) = a4;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v11 = sub_1E0CB0();
    v12 = *(v11 - 8);
    v13 = *(v12 + 72);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1E9970;
    (*(v12 + 104))(v15 + v14, enum case for DataEventTrait.onlyOnce(_:), v11);
    sub_E02E8();

    sub_1E0C00();

    v18 = a8;
    v19 = a9;
    v20 = a10;
    sub_98990();
    sub_1E0C00();

    type metadata accessor for UnifiedMessageActionEvent(0);
    sub_E05E0(&qword_2856A0, type metadata accessor for UnifiedMessageActionEvent);
    memset(v17, 0, sizeof(v17));
    sub_1E0C10();
    return sub_4C1B8(v17);
  }

  return result;
}

id _s13BookAnalytics13EventReporterC020emitAnnotationActionC05using11contentData04viewJ0yAA9BATrackerC_AA014BridgedContentJ0CAA0m4ViewJ0CtF_0(uint64_t a1)
{
  sub_A3F08(v16);
  sub_A78F0(v15);
  v2 = v15[0];
  v3 = v15[1];
  v4 = v15[2];
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v6 = result;
    v7 = [result isDiagnosticSubmissionAllowed];

    if (v7)
    {
      v8 = swift_allocObject();
      v9 = v16[3];
      *(v8 + 48) = v16[2];
      *(v8 + 64) = v9;
      v10 = v16[5];
      *(v8 + 80) = v16[4];
      *(v8 + 96) = v10;
      v11 = v16[1];
      *(v8 + 16) = v16[0];
      *(v8 + 32) = v11;
      *(v8 + 112) = v2;
      *(v8 + 113) = v3;
      *(v8 + 114) = v4;
      v12 = *(a1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
      v13 = swift_allocObject();
      *(v13 + 16) = sub_E06DC;
      *(v13 + 24) = v8;
      sub_13A5C(v16, v14);

      sub_1E10C0();
      sub_14424(v16);
    }

    else
    {
      return sub_14424(v16);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_DFEA0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_DFED8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_DFF18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_DEEF8();
}

id _s13BookAnalytics13EventReporterC09emitScrubC05using11contentData015readingSettingsI013startPosition03endM011totalLengthyAA9BATrackerC_AA014BridgedContentI0CAA0r7ReadingkI0CSo8NSNumberCA2RtF_0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  sub_A3F08(v24);
  sub_A6A60(v25);
  v10 = [a4 intValue];
  v11 = [a5 intValue];
  v12 = [a6 intValue];
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v14 = result;
    v15 = [result isDiagnosticSubmissionAllowed];

    if (v15)
    {
      v16 = swift_allocObject();
      v17 = v24[3];
      *(v16 + 48) = v24[2];
      *(v16 + 64) = v17;
      v18 = v24[5];
      *(v16 + 80) = v24[4];
      *(v16 + 96) = v18;
      v19 = v24[1];
      *(v16 + 16) = v24[0];
      *(v16 + 32) = v19;
      v20 = v25[1];
      *(v16 + 112) = v25[0];
      *(v16 + 128) = v20;
      *(v16 + 144) = v10;
      *(v16 + 148) = v11;
      *(v16 + 152) = v12;
      v21 = *(a1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
      v22 = swift_allocObject();
      *(v22 + 16) = sub_E068C;
      *(v22 + 24) = v16;
      sub_13A5C(v24, v23);
      sub_E0100(v25, v23);

      sub_1E10C0();
      sub_E0390(v25);
      sub_14424(v24);
    }

    else
    {
      sub_E0390(v25);
      return sub_14424(v24);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_E00EC(uint64_t a1)
{
  v2 = *(v1 + 144);
  v3 = *(v1 + 148);
  v4 = *(v1 + 152);
  return sub_DF504(a1, (v1 + 16), (v1 + 112));
}

uint64_t sub_E0164()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_E01F0()
{
  v1 = sub_1E0930();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_E0278()
{
  v0 = *(*(sub_1E0930() - 8) + 80);

  return sub_DE734();
}

unint64_t sub_E02E8()
{
  result = qword_285698;
  if (!qword_285698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285698);
  }

  return result;
}

unint64_t sub_E033C()
{
  result = qword_2856A8;
  if (!qword_2856A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2856A8);
  }

  return result;
}

uint64_t sub_E03E4()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[13];

  v5 = v0[16];

  return _swift_deallocObject(v0, 156, 7);
}

unint64_t sub_E043C()
{
  result = qword_2856B8;
  if (!qword_2856B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2856B8);
  }

  return result;
}

unint64_t sub_E0490()
{
  result = qword_2856C0;
  if (!qword_2856C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2856C0);
  }

  return result;
}

unint64_t sub_E04E4()
{
  result = qword_2856D0;
  if (!qword_2856D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2856D0);
  }

  return result;
}

unint64_t sub_E0538()
{
  result = qword_2856E0;
  if (!qword_2856E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2856E0);
  }

  return result;
}

unint64_t sub_E058C()
{
  result = qword_2856F0;
  if (!qword_2856F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2856F0);
  }

  return result;
}

uint64_t sub_E05E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_E0628()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[13];

  return _swift_deallocObject(v0, 115, 7);
}

uint64_t sub_E0678(uint64_t a1)
{
  v2 = *(v1 + 114);
  v3 = *(v1 + 112);
  return sub_DE350(a1, (v1 + 16));
}

BookAnalytics::ClearType_optional __swiftcall ClearType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260A00;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

uint64_t ClearType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x796C746E65636572;
  }

  else
  {
    result = 0x6553746E65636572;
  }

  *v0;
  return result;
}

uint64_t static ClearedData.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x796C746E65636572;
  }

  else
  {
    v4 = 0x6553746E65636572;
  }

  if (v3)
  {
    v5 = 0xEE00736568637261;
  }

  else
  {
    v5 = 0xEE00646577656956;
  }

  if (*a2)
  {
    v6 = 0x796C746E65636572;
  }

  else
  {
    v6 = 0x6553746E65636572;
  }

  if (*a2)
  {
    v7 = 0xEE00646577656956;
  }

  else
  {
    v7 = 0xEE00736568637261;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E1D30();
  }

  return v9 & 1;
}

unint64_t sub_E0864()
{
  result = qword_285700;
  if (!qword_285700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285700);
  }

  return result;
}

Swift::Int sub_E08B8()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_E0954()
{
  *v0;
  sub_1E17D0();
}

Swift::Int sub_E09DC()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_E0A74@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_260A00;
  v8._object = v3;
  v5 = sub_1E1B70(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_E0AD4(uint64_t *a1@<X8>)
{
  v2 = 0x6553746E65636572;
  if (*v1)
  {
    v2 = 0x796C746E65636572;
  }

  v3 = 0xEE00736568637261;
  if (*v1)
  {
    v3 = 0xEE00646577656956;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_E0BEC()
{
  result = qword_285708;
  if (!qword_285708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285708);
  }

  return result;
}

uint64_t static LibrarySortData.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = *a2;
  v6 = 0xE500000000000000;
  v7 = 0x656C746974;
  v8 = 0x726F68747561;
  if (v3 != 3)
  {
    v8 = 0x6C61756E616DLL;
  }

  if (v3 != 2)
  {
    v7 = v8;
    v6 = 0xE600000000000000;
  }

  v9 = 0x746E65636572;
  if (*a1)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a1 <= 1u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  if (v3 <= 1)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  v12 = 0xE700000000000000;
  v13 = 0xE500000000000000;
  v14 = 0x656C746974;
  v15 = 0x726F68747561;
  if (v5 != 3)
  {
    v15 = 0x6C61756E616DLL;
  }

  if (v5 != 2)
  {
    v14 = v15;
    v13 = 0xE600000000000000;
  }

  if (*a2)
  {
    v2 = 0x746E65636572;
    v12 = 0xE600000000000000;
  }

  if (*a2 <= 1u)
  {
    v16 = v2;
  }

  else
  {
    v16 = v14;
  }

  if (*a2 <= 1u)
  {
    v17 = v12;
  }

  else
  {
    v17 = v13;
  }

  if (v10 == v16 && v11 == v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_1E1D30();
  }

  return v18 & 1;
}

uint64_t sub_E0DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6570795474726F73 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E1D30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_E0E44(uint64_t a1)
{
  v2 = sub_E11B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E0E80(uint64_t a1)
{
  v2 = sub_E11B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LibrarySortData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_285710, &qword_1F70C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_E11B0();
  sub_1E1E00();
  v12 = v8;
  sub_E1204();
  sub_1E1CF0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t LibrarySortData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_285728, &qword_1F70D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_E11B0();
  sub_1E1DF0();
  if (!v2)
  {
    sub_E1258();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_E11B0()
{
  result = qword_285718;
  if (!qword_285718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285718);
  }

  return result;
}

unint64_t sub_E1204()
{
  result = qword_285720;
  if (!qword_285720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285720);
  }

  return result;
}

unint64_t sub_E1258()
{
  result = qword_285730;
  if (!qword_285730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285730);
  }

  return result;
}

unint64_t sub_E12B0()
{
  result = qword_285738;
  if (!qword_285738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285738);
  }

  return result;
}

unint64_t sub_E1308()
{
  result = qword_285740;
  if (!qword_285740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285740);
  }

  return result;
}

unint64_t sub_E1380()
{
  result = qword_285748;
  if (!qword_285748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285748);
  }

  return result;
}

unint64_t sub_E13D8()
{
  result = qword_285750;
  if (!qword_285750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285750);
  }

  return result;
}

unint64_t sub_E1430()
{
  result = qword_285758;
  if (!qword_285758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285758);
  }

  return result;
}

BookAnalytics::DealType_optional __swiftcall DealType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260A50;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t DealType.rawValue.getter()
{
  v1 = 1701147238;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F72446563697270;
  }
}

uint64_t sub_E1538(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701147238;
  if (v2 != 1)
  {
    v4 = 0x6E776F6E6B6E75;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6F72446563697270;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000070;
  }

  v7 = 0xE400000000000000;
  v8 = 1701147238;
  if (*a2 != 1)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F72446563697270;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000070;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1D30();
  }

  return v11 & 1;
}

unint64_t sub_E1630()
{
  result = qword_285760;
  if (!qword_285760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285760);
  }

  return result;
}

Swift::Int sub_E1684()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_E1724()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_E17B0()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_E1858(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000070;
  v4 = 0xE400000000000000;
  v5 = 1701147238;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F72446563697270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_E1974()
{
  result = qword_285768;
  if (!qword_285768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285768);
  }

  return result;
}

uint64_t static FormatFilterData.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0xEB00000000736569;
  v3 = 0x7265536E496C6C61;
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  v7 = 0xE600000000000000;
  v8 = 0x646165726E75;
  if (v4 != 2)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  v9 = 0x6573616863727570;
  v10 = 0xE900000000000064;
  if (!*a1)
  {
    v9 = 0x7265536E496C6C61;
    v10 = 0xEB00000000736569;
  }

  if (*a1 <= 1u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  if (v4 <= 1)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  v13 = 0xE600000000000000;
  v14 = 0x646165726E75;
  if (*a2 != 2)
  {
    v14 = 0x6E776F6E6B6E75;
    v13 = 0xE700000000000000;
  }

  if (*a2)
  {
    v3 = 0x6573616863727570;
    v2 = 0xE900000000000064;
  }

  if (*a2 <= 1u)
  {
    v15 = v3;
  }

  else
  {
    v15 = v14;
  }

  if (*a2 <= 1u)
  {
    v16 = v2;
  }

  else
  {
    v16 = v13;
  }

  if (v11 == v15 && v12 == v16)
  {
  }

  else
  {
    v17 = sub_1E1D30();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_21478(v5, v6);
}

uint64_t sub_E1B5C()
{
  if (*v0)
  {
    result = 0x794274726F73;
  }

  else
  {
    result = 0x79547265746C6966;
  }

  *v0;
  return result;
}

uint64_t sub_E1B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79547265746C6966 && a2 == 0xEA00000000006570;
  if (v6 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x794274726F73 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E1D30();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_E1C78(uint64_t a1)
{
  v2 = sub_E20EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E1CB4(uint64_t a1)
{
  v2 = sub_E20EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FormatFilterData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_285770, &qword_1F7400);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_E20EC();
  sub_1E1E00();
  v17 = v9;
  v16 = 0;
  sub_E2140();
  sub_1E1CF0();
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_E2194();
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t FormatFilterData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_285790, &qword_1F7408);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_E20EC();
  sub_1E1DF0();
  if (!v2)
  {
    v17 = 0;
    sub_E21E8();
    sub_1E1C20();
    v11 = v18;
    v15 = 1;
    sub_E223C();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    v12 = v16;
    *a2 = v11;
    a2[1] = v12;
  }

  return sub_4E48(a1);
}

uint64_t sub_E2060(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_236D0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_21478(v2, v3);
}

unint64_t sub_E20EC()
{
  result = qword_285778;
  if (!qword_285778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285778);
  }

  return result;
}

unint64_t sub_E2140()
{
  result = qword_285780;
  if (!qword_285780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285780);
  }

  return result;
}

unint64_t sub_E2194()
{
  result = qword_285788;
  if (!qword_285788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285788);
  }

  return result;
}

unint64_t sub_E21E8()
{
  result = qword_285798;
  if (!qword_285798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285798);
  }

  return result;
}

unint64_t sub_E223C()
{
  result = qword_2857A0;
  if (!qword_2857A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2857A0);
  }

  return result;
}

unint64_t sub_E2294()
{
  result = qword_2857A8;
  if (!qword_2857A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2857A8);
  }

  return result;
}

unint64_t sub_E22EC()
{
  result = qword_2857B0;
  if (!qword_2857B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2857B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatFilterData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65283 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65283;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65283;
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

_WORD *storeEnumTagSinglePayload for FormatFilterData(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
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
    v5 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_E24A8()
{
  result = qword_2857B8;
  if (!qword_2857B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2857B8);
  }

  return result;
}

unint64_t sub_E2500()
{
  result = qword_2857C0;
  if (!qword_2857C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2857C0);
  }

  return result;
}

unint64_t sub_E2558()
{
  result = qword_2857C8;
  if (!qword_2857C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2857C8);
  }

  return result;
}

BookAnalytics::ScrubData __swiftcall ScrubData.init(startPosition:endPosition:totalLength:)(Swift::Int32 startPosition, Swift::Int32 endPosition, Swift::Int32 totalLength)
{
  *v3 = startPosition;
  v3[1] = endPosition;
  v3[2] = totalLength;
  result.totalLength = endPosition;
  result.startPosition = startPosition;
  return result;
}

uint64_t sub_E2618()
{
  v1 = 0x6E756F4365746F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x6867696C68676968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B72616D6B6F6F62;
  }
}

uint64_t sub_E2690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_E2C64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_E26B8(uint64_t a1)
{
  v2 = sub_E28E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E26F4(uint64_t a1)
{
  v2 = sub_E28E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ContentSettingsData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_2857D0, &qword_1F7630);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[6] = v1[1];
  v12[3] = v1[2];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_E28E8();
  sub_1E1E00();
  v15 = 0;
  sub_1E1D00();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v14 = 1;
  sub_1E1D00();
  v13 = 2;
  sub_1E1D00();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_E28E8()
{
  result = qword_2857D8;
  if (!qword_2857D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2857D8);
  }

  return result;
}

uint64_t ContentSettingsData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_2857E0, &qword_1F7638);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_E28E8();
  sub_1E1DF0();
  if (!v2)
  {
    v19 = 0;
    v11 = sub_1E1C30();
    v18 = 1;
    v16 = sub_1E1C30();
    v17 = 2;
    v13 = sub_1E1C30();
    (*(v6 + 8))(v9, v5);
    v14 = v16;
    *a2 = v11;
    a2[1] = v14;
    a2[2] = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_E2B60()
{
  result = qword_2857E8;
  if (!qword_2857E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2857E8);
  }

  return result;
}

unint64_t sub_E2BB8()
{
  result = qword_2857F0;
  if (!qword_2857F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2857F0);
  }

  return result;
}

unint64_t sub_E2C10()
{
  result = qword_2857F8;
  if (!qword_2857F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2857F8);
  }

  return result;
}

uint64_t sub_E2C64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B72616D6B6F6F62 && a2 == 0xED0000746E756F43;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E756F4365746F6ELL && a2 == 0xE900000000000074 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6867696C68676968 && a2 == 0xEE00746E756F4374)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t LibraryDataEditEvent.libraryEditData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_285830, &unk_1F7870);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LibraryDataEditEvent.libraryEditData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_285830, &unk_1F7870);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t LibraryDataEditEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LibraryDataEditEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LibraryDataEditEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LibraryDataEditEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LibraryDataEditEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_285830, &unk_1F7870);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for LibraryDataEditEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t LibraryDataEditEvent.Model.libraryEditData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t LibraryDataEditEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LibraryDataEditEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LibraryDataEditEvent.Model.init(libraryEditData:eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  *a3 = *a1;
  *(a3 + 8) = v5;
  v6 = *(type metadata accessor for LibraryDataEditEvent.Model(0) + 20);
  v7 = sub_1E1150();
  v8 = *(*(v7 - 8) + 32);

  return v8(a3 + v6, a2, v7);
}

uint64_t sub_E32D0()
{
  if (*v0)
  {
    result = 0x746144746E657665;
  }

  else
  {
    result = 0x457972617262696CLL;
  }

  *v0;
  return result;
}

uint64_t sub_E331C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x457972617262696CLL && a2 == 0xEF61746144746964;
  if (v6 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E1D30();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_E3408(uint64_t a1)
{
  v2 = sub_E3658();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E3444(uint64_t a1)
{
  v2 = sub_E3658();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LibraryDataEditEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_285838, &qword_1F7880);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_E3658();
  sub_1E1E00();
  v11 = *(v3 + 4);
  v15 = *v3;
  v16 = v11;
  v14[15] = 0;
  sub_80508();

  sub_1E1CF0();

  if (!v2)
  {
    v12 = *(type metadata accessor for LibraryDataEditEvent.Model(0) + 20);
    v14[14] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_E3658()
{
  result = qword_285840;
  if (!qword_285840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285840);
  }

  return result;
}

uint64_t LibraryDataEditEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_1E1150();
  v22 = *(v25 - 8);
  v4 = *(v22 + 64);
  __chkstk_darwin(v25);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_3D68(&qword_285848, &qword_1F7888);
  v24 = *(v26 - 8);
  v7 = *(v24 + 64);
  __chkstk_darwin(v26);
  v9 = &v21 - v8;
  v10 = type metadata accessor for LibraryDataEditEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_E3658();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v21 = v10;
  v15 = v13;
  v17 = v24;
  v16 = v25;
  v30 = 0;
  sub_804B0();
  v18 = v26;
  sub_1E1C20();
  v19 = v28;
  *v15 = v27;
  *(v15 + 8) = v19;
  v29 = 1;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v17 + 8))(v9, v18);
  (*(v22 + 32))(v15 + *(v21 + 20), v6, v16);
  sub_E39C4(v15, v23);
  sub_4E48(a1);
  return sub_E3A28(v15);
}

uint64_t sub_E39C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryDataEditEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E3A28(uint64_t a1)
{
  v2 = type metadata accessor for LibraryDataEditEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E3B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_285830, &unk_1F7870);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_E3C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_285830, &unk_1F7870);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_E3D2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_285830, &unk_1F7870);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_E3E40()
{
  sub_E3EC4();
  if (v0 <= 0x3F)
  {
    sub_5684();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_E3EC4()
{
  if (!qword_2858B8)
  {
    sub_804B0();
    sub_80508();
    v0 = sub_1E0C90();
    if (!v1)
    {
      atomic_store(v0, &qword_2858B8);
    }
  }
}

uint64_t sub_E3F40(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_E4000(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_E40A4()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_E4134()
{
  result = qword_285978;
  if (!qword_285978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285978);
  }

  return result;
}

unint64_t sub_E418C()
{
  result = qword_285980;
  if (!qword_285980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285980);
  }

  return result;
}

unint64_t sub_E41E4()
{
  result = qword_285988;
  if (!qword_285988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285988);
  }

  return result;
}

uint64_t PageViewEvent.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PageViewEvent.pageData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PageViewEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PageViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PageViewEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PageViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PageViewEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PageViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PageViewEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PageViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PageViewEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PageViewEvent(0) + 28);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PageViewEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PageViewEvent(0) + 28);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PageViewEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PageViewEvent(0) + 32);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PageViewEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PageViewEvent(0) + 32);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PageViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PageViewEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PageViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PageViewEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PageViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PageViewEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v13 - 8) + 104))(a1 + v12, v6, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v2, v15);
}

uint64_t PageViewEvent.Model.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
}

uint64_t PageViewEvent.Model.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  v3 = *(v1 + 112);
  v20 = *(v1 + 128);
  v21 = v2;
  v4 = *(v1 + 144);
  v22 = *(v1 + 160);
  v5 = *(v1 + 80);
  v7 = *(v1 + 48);
  v16 = *(v1 + 64);
  v6 = v16;
  v17 = v5;
  v8 = *(v1 + 80);
  v9 = *(v1 + 112);
  v18 = *(v1 + 96);
  v10 = v18;
  v19 = v9;
  v11 = *(v1 + 48);
  v15[0] = *(v1 + 32);
  v12 = v15[0];
  v15[1] = v11;
  *(a1 + 96) = v20;
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 160);
  *(a1 + 32) = v6;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 176);
  *(a1 + 144) = *(v1 + 176);
  *a1 = v12;
  *(a1 + 16) = v7;
  return sub_17AA4(v15, v14, &qword_27E4A0, &qword_1E8860);
}

uint64_t PageViewEvent.Model.contentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 232);
  v10 = *(v1 + 216);
  v11 = v2;
  v3 = *(v1 + 248);
  v5 = *(v1 + 200);
  v9[0] = *(v1 + 184);
  v4 = v9[0];
  v9[1] = v5;
  v6 = *(v1 + 264);
  v12 = v3;
  v13 = v6;
  a1[2] = v10;
  a1[3] = v2;
  *a1 = v4;
  a1[1] = v5;
  a1[4] = v3;
  a1[5] = v6;
  return sub_17AA4(v9, &v8, &qword_27FD08, &qword_1E94F0);
}

uint64_t PageViewEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 296);
  *a1 = *(v1 + 280);
  *(a1 + 16) = v2;
}

uint64_t PageViewEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[38];
  v3 = v1[39];
  v4 = v1[40];
  v5 = v1[41];
  v6 = v1[42];
  v7 = v1[43];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

uint64_t PageViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PageViewEvent.Model(0) + 36);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PageViewEvent.Model.init(pageData:linkData:contentData:upSellData:seriesData:eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a4 + 16);
  *a7 = *a1;
  *(a7 + 16) = v9;
  *(a7 + 24) = v10;
  v12 = *(a2 + 112);
  *(a7 + 128) = *(a2 + 96);
  *(a7 + 144) = v12;
  *(a7 + 160) = *(a2 + 128);
  *(a7 + 176) = *(a2 + 144);
  v13 = *(a2 + 48);
  *(a7 + 64) = *(a2 + 32);
  *(a7 + 80) = v13;
  v14 = *(a2 + 80);
  *(a7 + 96) = *(a2 + 64);
  *(a7 + 112) = v14;
  v15 = *(a2 + 16);
  *(a7 + 32) = *a2;
  *(a7 + 48) = v15;
  v16 = a3[3];
  *(a7 + 216) = a3[2];
  *(a7 + 232) = v16;
  v17 = a3[5];
  *(a7 + 248) = a3[4];
  *(a7 + 264) = v17;
  v18 = a3[1];
  *(a7 + 184) = *a3;
  *(a7 + 200) = v18;
  *(a7 + 280) = *a4;
  *(a7 + 296) = v11;
  v19 = a5[1];
  *(a7 + 304) = *a5;
  *(a7 + 320) = v19;
  *(a7 + 336) = a5[2];
  v20 = *(type metadata accessor for PageViewEvent.Model(0) + 36);
  v21 = sub_1E1150();
  v22 = *(*(v21 - 8) + 32);

  return v22(a7 + v20, a6, v21);
}

uint64_t sub_E5018()
{
  v1 = *v0;
  v2 = 0x6174614465676170;
  v3 = 0x61446C6C65537075;
  v4 = 0x6144736569726573;
  if (v1 != 4)
  {
    v4 = 0x746144746E657665;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x617461446B6E696CLL;
  if (v1 != 1)
  {
    v5 = 0x44746E65746E6F63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_E50E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_E6C2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_E5110(uint64_t a1)
{
  v2 = sub_E56D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E514C(uint64_t a1)
{
  v2 = sub_E56D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PageViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_2859C0, &qword_1F7A90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_E56D4();
  sub_1E1E00();
  v11 = v3[3];
  v68 = *v3;
  v69 = *(v3 + 1);
  v70 = v11;
  v74 = 0;
  sub_18598();

  sub_1E1CF0();

  if (!v2)
  {
    v12 = *(v3 + 9);
    v13 = *(v3 + 7);
    v64 = *(v3 + 8);
    v65 = v12;
    v14 = *(v3 + 9);
    v66 = *(v3 + 10);
    v15 = *(v3 + 5);
    v16 = *(v3 + 3);
    v60 = *(v3 + 4);
    v61 = v15;
    v17 = *(v3 + 5);
    v18 = *(v3 + 7);
    v62 = *(v3 + 6);
    v63 = v18;
    v19 = *(v3 + 3);
    v59[0] = *(v3 + 2);
    v59[1] = v19;
    v55 = v64;
    v56 = v14;
    v57 = *(v3 + 10);
    v51 = v60;
    v52 = v17;
    v53 = v62;
    v54 = v13;
    v67 = v3[22];
    v58 = v3[22];
    v49 = v59[0];
    v50 = v16;
    v73 = 1;
    sub_17AA4(v59, v47, &qword_27E4A0, &qword_1E8860);
    sub_18630();
    sub_1E1C80();
    v47[6] = v55;
    v47[7] = v56;
    v47[8] = v57;
    v48 = v58;
    v47[2] = v51;
    v47[3] = v52;
    v47[4] = v53;
    v47[5] = v54;
    v47[0] = v49;
    v47[1] = v50;
    sub_18E48(v47, &qword_27E4A0, &qword_1E8860);
    v20 = *(v3 + 29);
    v46[2] = *(v3 + 27);
    v46[3] = v20;
    v21 = *(v3 + 33);
    v46[4] = *(v3 + 31);
    v46[5] = v21;
    v22 = *(v3 + 25);
    v46[0] = *(v3 + 23);
    v46[1] = v22;
    v23 = *(v3 + 29);
    v42 = *(v3 + 27);
    v43 = v23;
    v24 = *(v3 + 33);
    v44 = *(v3 + 31);
    v45 = v24;
    v25 = *(v3 + 25);
    v40 = *(v3 + 23);
    v41 = v25;
    v72 = 2;
    sub_17AA4(v46, v39, &qword_27FD08, &qword_1E94F0);
    sub_143D0();
    sub_1E1C80();
    v39[2] = v42;
    v39[3] = v43;
    v39[4] = v44;
    v39[5] = v45;
    v39[0] = v40;
    v39[1] = v41;
    sub_18E48(v39, &qword_27FD08, &qword_1E94F0);
    v26 = v3[37];
    v34 = *(v3 + 35);
    v35 = v26;
    v71 = 3;
    sub_28450();

    sub_1E1C80();

    v27 = v3[39];
    v28 = v3[40];
    v29 = v3[41];
    v30 = v3[42];
    v31 = v3[43];
    *&v34 = v3[38];
    *(&v34 + 1) = v27;
    v35 = v28;
    v36 = v29;
    v37 = v30;
    v38 = v31;
    v71 = 4;
    sub_13BDC(v34, v27, v28, v29, v30, v31);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v34, *(&v34 + 1), v35, v36, v37, v38);
    v32 = *(type metadata accessor for PageViewEvent.Model(0) + 36);
    LOBYTE(v34) = 5;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_E56D4()
{
  result = qword_2859C8;
  if (!qword_2859C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2859C8);
  }

  return result;
}

uint64_t PageViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_1E1150();
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  __chkstk_darwin(v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_3D68(&qword_2859D0, &qword_1F7A98);
  v35 = *(v38 - 8);
  v7 = *(v35 + 64);
  __chkstk_darwin(v38);
  v9 = v31 - v8;
  v10 = type metadata accessor for PageViewEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v14 = a1[4];
  v54 = a1;
  sub_48B8(a1, v15);
  sub_E56D4();
  v37 = v9;
  v16 = v39;
  sub_1E1DF0();
  if (v16)
  {
    return sub_4E48(v54);
  }

  v39 = v6;
  v17 = v13;
  v18 = v35;
  v19 = v36;
  LOBYTE(v45) = 0;
  sub_18F50();
  sub_1E1C20();
  v20 = *(&v52[1] + 1);
  *v17 = *&v52[0];
  v32 = *(v52 + 8);
  *(v17 + 8) = *(v52 + 8);
  v33 = v20;
  *(v17 + 24) = v20;
  v51 = 1;
  sub_18FA4();
  sub_1E1BB0();
  v21 = v52[7];
  *(v17 + 128) = v52[6];
  *(v17 + 144) = v21;
  *(v17 + 160) = v52[8];
  *(v17 + 176) = v53;
  v22 = v52[3];
  *(v17 + 64) = v52[2];
  *(v17 + 80) = v22;
  v23 = v52[5];
  *(v17 + 96) = v52[4];
  *(v17 + 112) = v23;
  v24 = v52[1];
  *(v17 + 32) = v52[0];
  *(v17 + 48) = v24;
  v44 = 2;
  sub_14CB8();
  v31[1] = 0;
  sub_1E1BB0();
  v25 = v48;
  *(v17 + 216) = v47;
  *(v17 + 232) = v25;
  *(v17 + 248) = v49;
  v26 = v46;
  *(v17 + 184) = v45;
  *(v17 + 200) = v26;
  *(v17 + 264) = v50;
  v43 = 3;
  sub_28EF4();
  sub_1E1BB0();
  v27 = v41;
  *(v17 + 280) = v40;
  *(v17 + 296) = v27;
  v43 = 4;
  sub_DAD8();
  sub_1E1BB0();
  v28 = v41;
  *(v17 + 304) = v40;
  *(v17 + 320) = v28;
  *(v17 + 336) = v42;
  LOBYTE(v40) = 5;
  sub_14E5C(&qword_27D830);
  v29 = v39;
  sub_1E1C20();
  (*(v18 + 8))(v37, v38);
  (*(v34 + 32))(v17 + *(v10 + 36), v29, v3);
  sub_E5D98(v17, v19);
  sub_4E48(v54);
  return sub_E5DFC(v17);
}

uint64_t sub_E5D98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E5DFC(uint64_t a1)
{
  v2 = type metadata accessor for PageViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E5EF8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v12 - 8) + 104))(a2 + v11, v7, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v14 - 8) + 104))(a2 + v13, v7, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v4, v16);
}

uint64_t sub_E6128(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_E639C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v18 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v20 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[9];

  return v21(v22, a2, a2, v20);
}

void sub_E6608()
{
  sub_E6804(319, &qword_27E580, sub_18F50, sub_18598);
  if (v0 <= 0x3F)
  {
    sub_E6804(319, &unk_27E588, sub_18FA4, sub_18630);
    if (v1 <= 0x3F)
    {
      sub_E6804(319, &qword_27E2C8, sub_14CB8, sub_143D0);
      if (v2 <= 0x3F)
      {
        sub_E6804(319, &qword_27EAE8, sub_28EF4, sub_28450);
        if (v3 <= 0x3F)
        {
          sub_E6804(319, &qword_27DE18, sub_DAD8, sub_D57C);
          if (v4 <= 0x3F)
          {
            sub_5684();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_E6804(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_E6894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_E6954(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_E69F8()
{
  sub_19FE0(319, &unk_27E650);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_27FE30);
    if (v1 <= 0x3F)
    {
      sub_19FE0(319, &qword_27EBC8);
      if (v2 <= 0x3F)
      {
        sub_19FE0(319, &qword_27E398);
        if (v3 <= 0x3F)
        {
          sub_1E1150();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_E6B28()
{
  result = qword_285B18;
  if (!qword_285B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285B18);
  }

  return result;
}

unint64_t sub_E6B80()
{
  result = qword_285B20;
  if (!qword_285B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285B20);
  }

  return result;
}

unint64_t sub_E6BD8()
{
  result = qword_285B28;
  if (!qword_285B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285B28);
  }

  return result;
}

uint64_t sub_E6C2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6174614465676170 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t RemoteConfigNamespaceData.treatmentIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t OptionListData.init(optionIdentifier:optionSelected:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t static UserEmbedding.== infix(_:_:)(uint64_t *a1, void *a2)
{
  result = *a1;
  v4 = a1[2];
  v5 = a2[2];
  if (result != *a2 || a1[1] != a2[1])
  {
    result = sub_1E1D30();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(v4 + 16);
  if (v7 != *(v5 + 16))
  {
    return 0;
  }

  if (!v7 || v4 == v5)
  {
    return 1;
  }

  v8 = (v4 + 32);
  v9 = (v5 + 32);
  while (v7)
  {
    v10 = *v8++;
    v11 = v10;
    v12 = *v9++;
    result = v11 == v12;
    if (v11 != v12 || v7-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_E6F28()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_E6F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E1D30();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_E7030(uint64_t a1)
{
  v2 = sub_E7274();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E706C(uint64_t a1)
{
  v2 = sub_E7274();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UserFeature.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_285B30, &qword_1F7CC8);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_E7274();
  sub_1E1E00();
  v17 = 0;
  sub_1E1CB0();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    sub_3D68(&qword_285B40, &qword_1F7CD0);
    sub_E7510(&qword_285B48);
    sub_1E1CF0();
  }

  return (*(v14 + 8))(v7, v4);
}

unint64_t sub_E7274()
{
  result = qword_285B38;
  if (!qword_285B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285B38);
  }

  return result;
}

uint64_t UserFeature.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_285B50, &qword_1F7CD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v17 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_E7274();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v19 = 0;
  v11 = sub_1E1BE0();
  v13 = v12;
  v14 = v11;
  sub_3D68(&qword_285B40, &qword_1F7CD0);
  v18 = 1;
  sub_E7510(&qword_285B58);
  sub_1E1C20();
  (*(v6 + 8))(v9, v5);
  v15 = v17[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  sub_4E48(a1);
}

uint64_t sub_E7510(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_5DE50(&qword_285B40, &qword_1F7CD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_E7580()
{
  result = qword_285B60;
  if (!qword_285B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285B60);
  }

  return result;
}

unint64_t sub_E75D8()
{
  result = qword_285B68;
  if (!qword_285B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285B68);
  }

  return result;
}

uint64_t sub_E762C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  return sub_5D094(v2, v3);
}

uint64_t sub_E76D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_E7718(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_E777C()
{
  result = qword_285B70;
  if (!qword_285B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285B70);
  }

  return result;
}

unint64_t sub_E77D4()
{
  result = qword_285B78;
  if (!qword_285B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285B78);
  }

  return result;
}

unint64_t sub_E782C()
{
  result = qword_285B80;
  if (!qword_285B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285B80);
  }

  return result;
}

BookAnalytics::ContentSource_optional __swiftcall ContentSource.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260AB8;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 8;
  if (v5 < 8)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t ContentSource.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x7550796C696D6166;
  if (v1 != 6)
  {
    v3 = 0x646567616E616DLL;
  }

  v4 = 0x656C706D6173;
  if (v1 != 4)
  {
    v4 = 0x5364656E776F6E75;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x64616F6C65646973;
  if (v1 != 2)
  {
    v5 = 0x726564726F657270;
  }

  if (*v0)
  {
    v2 = 0x6573616863727570;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_E7A00()
{
  result = qword_285B88;
  if (!qword_285B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285B88);
  }

  return result;
}

void sub_E7A7C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEE00657361686372;
  v6 = 0x7550796C696D6166;
  if (v2 != 6)
  {
    v6 = 0x646567616E616DLL;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656C706D6173;
  if (v2 != 4)
  {
    v8 = 0x5364656E776F6E75;
    v7 = 0xEC00000065726F74;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006465;
  v10 = 0x64616F6C65646973;
  if (v2 != 2)
  {
    v10 = 0x726564726F657270;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x6573616863727570;
    v3 = 0xE900000000000064;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_E7C54()
{
  result = qword_285B90;
  if (!qword_285B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285B90);
  }

  return result;
}

void __swiftcall ContentExposureData.init(hasLanguageFlag:)(BookAnalytics::ContentExposureData *__return_ptr retstr, Swift::Bool_optional hasLanguageFlag)
{
  retstr->sectionType._countAndFlagsBits = 0;
  retstr->sectionType._object = 0xE000000000000000;
  retstr->sectionID._countAndFlagsBits = 0;
  retstr->sectionID._object = 0xE000000000000000;
  retstr->sectionName._countAndFlagsBits = 0;
  retstr->sectionName._object = 0xE000000000000000;
  retstr->positionInSection._countAndFlagsBits = 0;
  retstr->positionInSection._object = 0xE000000000000000;
  retstr->cellSize._countAndFlagsBits = 0;
  retstr->cellSize._object = 0xE000000000000000;
  retstr->positionInSubSection.value = 0;
  retstr->positionInSubSection.is_nil = 1;
  *(&retstr->subSectionID.value + 3) = 0;
  *(&retstr->subSectionID + 7) = 1;
  retstr->subSectionName.value._countAndFlagsBits = 0;
  retstr->subSectionName.value._object = 0;
  retstr->subSectionPosition.value = 0;
  retstr->subSectionPosition.is_nil = 1;
  retstr->hasLanguageTag = hasLanguageFlag;
}

unsigned __int8 *ContentExposureData.updating(for:with:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v7 = v2[5];
  v89 = v2[4];
  v90 = v7;
  *v91 = v2[6];
  *&v91[14] = *(v2 + 110);
  v8 = v2[1];
  v85 = *v2;
  v86 = v8;
  v9 = v2[3];
  v87 = v2[2];
  v88 = v9;
  v80 = v6;
  v81 = sub_E97BC;
  v82 = 0;
  v83 = sub_E99E4;
  v84 = 0;

  result = sub_E97C4();
  if (v12)
  {
    goto LABEL_97;
  }

  if (*(v6 + 36) != v11)
  {
    __break(1u);
    goto LABEL_90;
  }

  if (result == (1 << *(v6 + 32)))
  {

    v13 = v90;
    *(a2 + 64) = v89;
    *(a2 + 80) = v13;
    *(a2 + 96) = *v91;
    *(a2 + 110) = *&v91[14];
    v14 = v86;
    *a2 = v85;
    *(a2 + 16) = v14;
    v15 = v88;
    *(a2 + 32) = v87;
    *(a2 + 48) = v15;
    return sub_52748(&v85, &v60);
  }

  sub_E99F4(result, v11, 0, v6);

  sub_E8688(v16, &v60);

  *v77 = v64;
  *&v77[16] = v65;
  v73 = v60;
  v74 = v61;
  v75 = v62;
  v76 = v63;
  v79[1] = v61;
  v79[2] = v62;
  v78 = v66;
  v79[0] = v60;
  v79[3] = v63;
  v79[4] = v64;
  v79[5] = v65;
  v79[6] = v66;
  sub_E9A44(&v73, v72);
  result = sub_E9AB4(v79);
  if (!v74)
  {
    goto LABEL_98;
  }

  v4 = v74;
  v17 = *v77;
  v18 = *(&v78 + 1);
  v69 = v88;
  v70 = v89;
  v71 = v90;
  v50 = DWORD2(v90);
  v51 = v77[28];
  v19 = BYTE12(v90);
  v68 = HIBYTE(v90);
  v67 = *(&v90 + 13);
  v57 = v78;
  v58 = *(&v73 + 1);
  v52 = *&v77[24];
  v53 = *(&v76 + 1);
  if (v73 <= 2u)
  {
    if (v73)
    {
      if (v73 == 1)
      {
        v56 = 0xE600000000000000;
        v20 = 0x68736F6F7773;
      }

      else
      {
        v56 = 0xE500000000000000;
        v20 = 0x6B63697262;
      }
    }

    else
    {
      v56 = 0xE700000000000000;
      v20 = 0x6E776F6E6B6E75;
    }
  }

  else if (v73 > 4u)
  {
    if (v73 == 5)
    {
      v56 = 0xE500000000000000;
      v20 = 0x736C616F67;
    }

    else
    {
      v56 = 0xE600000000000000;
      v20 = 0x6573776F7262;
    }
  }

  else if (v73 == 3)
  {
    v56 = 0x80000000002129E0;
    v20 = 0xD000000000000010;
  }

  else
  {
    v56 = 0xE800000000000000;
    v20 = 0x65736163776F6C66;
  }

  v55 = v20;
  v21 = *&v91[16];
  v22 = v91[20];
  v59 = *&v77[8];
  v49 = *v91;
  v54 = v91[21];
  sub_52748(&v85, &v60);

  v3 = v18;

  if (!v17)
  {
    result = sub_E9AB4(&v73);
    v31 = v49;
    v32 = v54;
    v33 = v50;
LABEL_88:
    *a2 = v55;
    *(a2 + 8) = v56;
    *(a2 + 16) = v57;
    *(a2 + 24) = v3;
    *(a2 + 32) = v58;
    *(a2 + 40) = v4;
    v48 = v70;
    *(a2 + 48) = v69;
    *(a2 + 64) = v48;
    *(a2 + 80) = v71;
    *(a2 + 88) = v33;
    *(a2 + 92) = v19;
    *(a2 + 93) = v67;
    *(a2 + 95) = v68;
    *(a2 + 96) = v31;
    *(a2 + 112) = v21;
    *(a2 + 116) = v22;
    *(a2 + 117) = v32;
    return result;
  }

  v23 = HIBYTE(v17) & 0xF;
  v24 = v53 & 0xFFFFFFFFFFFFLL;
  if ((v17 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v17) & 0xF;
  }

  else
  {
    v25 = v53 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
LABEL_90:
    v33 = 0;
    LOBYTE(v23) = 1;
    v32 = v54;
LABEL_87:
    LOBYTE(v60) = v23;

    result = sub_E9AB4(&v73);
    v31 = v59;
    v21 = v52;
    v22 = v51 & 1;
    v72[0] = v51 & 1;
    v19 = v60;
    goto LABEL_88;
  }

  if ((v17 & 0x1000000000000000) != 0)
  {

    v27 = sub_E8840(v53, v17, 10);

    v23 = (v27 >> 32) & 1;
    goto LABEL_83;
  }

  if ((v17 & 0x2000000000000000) != 0)
  {
    *&v60 = v53;
    *(&v60 + 1) = v17 & 0xFFFFFFFFFFFFFFLL;
    if (v53 == 43)
    {
      if (v23)
      {
        if (--v23)
        {
          LODWORD(v27) = 0;
          v40 = &v60 + 1;
          while (1)
          {
            v41 = *v40 - 48;
            if (v41 > 9)
            {
              break;
            }

            v42 = 10 * v27;
            if (v42 != v42)
            {
              break;
            }

            LODWORD(v27) = v42 + v41;
            if (__OFADD__(v42, v41))
            {
              break;
            }

            ++v40;
            if (!--v23)
            {
              goto LABEL_82;
            }
          }
        }

        goto LABEL_81;
      }

      goto LABEL_96;
    }

    if (v53 != 45)
    {
      if (v23)
      {
        LODWORD(v27) = 0;
        v45 = &v60;
        while (1)
        {
          v46 = *v45 - 48;
          if (v46 > 9)
          {
            break;
          }

          v47 = 10 * v27;
          if (v47 != v47)
          {
            break;
          }

          LODWORD(v27) = v47 + v46;
          if (__OFADD__(v47, v46))
          {
            break;
          }

          ++v45;
          if (!--v23)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    if (v23)
    {
      if (--v23)
      {
        LODWORD(v27) = 0;
        v34 = &v60 + 1;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          v36 = 10 * v27;
          if (v36 != v36)
          {
            break;
          }

          LODWORD(v27) = v36 - v35;
          if (__OFSUB__(v36, v35))
          {
            break;
          }

          ++v34;
          if (!--v23)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }
  }

  else
  {
    if ((v53 & 0x1000000000000000) != 0)
    {
      result = ((v17 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1E1AF0();
    }

    v26 = *result;
    if (v26 == 43)
    {
      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          LODWORD(v27) = 0;
          if (result)
          {
            v37 = result + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                goto LABEL_81;
              }

              v39 = 10 * v27;
              if (v39 != v39)
              {
                goto LABEL_81;
              }

              LODWORD(v27) = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                goto LABEL_81;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_82;
              }
            }
          }

          goto LABEL_73;
        }

        goto LABEL_81;
      }

      goto LABEL_95;
    }

    if (v26 != 45)
    {
      if (v24)
      {
        LODWORD(v27) = 0;
        if (result)
        {
          while (1)
          {
            v43 = *result - 48;
            if (v43 > 9)
            {
              goto LABEL_81;
            }

            v44 = 10 * v27;
            if (v44 != v44)
            {
              goto LABEL_81;
            }

            LODWORD(v27) = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              goto LABEL_81;
            }

            ++result;
            if (!--v24)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_73;
      }

LABEL_81:
      LODWORD(v27) = 0;
      LOBYTE(v23) = 1;
      goto LABEL_82;
    }

    if (v24 >= 1)
    {
      v23 = v24 - 1;
      if (v24 != 1)
      {
        LODWORD(v27) = 0;
        if (result)
        {
          v28 = result + 1;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              goto LABEL_81;
            }

            v30 = 10 * v27;
            if (v30 != v30)
            {
              goto LABEL_81;
            }

            LODWORD(v27) = v30 - v29;
            if (__OFSUB__(v30, v29))
            {
              goto LABEL_81;
            }

            ++v28;
            if (!--v23)
            {
              goto LABEL_82;
            }
          }
        }

LABEL_73:
        LOBYTE(v23) = 0;
LABEL_82:
        v72[0] = v23;
LABEL_83:
        if (v23)
        {
          v33 = 0;
        }

        else
        {
          v33 = v27;
        }

        v32 = v54;
        goto LABEL_87;
      }

      goto LABEL_81;
    }

    __break(1u);
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
  return result;
}

uint64_t ContentExposureData.updating(for:with:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = v4[5];
  v28[4] = v4[4];
  v28[5] = v7;
  v29[0] = v4[6];
  *(v29 + 14) = *(v4 + 110);
  v8 = v4[1];
  v28[0] = *v4;
  v28[1] = v8;
  v9 = v4[3];
  v28[2] = v4[2];
  v28[3] = v9;
  v10 = a2[3];
  v11 = a2[4];
  sub_48B8(a2, v10);
  (*(v11 + 8))(a1, v10, v11);
  if (v12)
  {
    v13 = v4[5];
    *(a3 + 64) = v4[4];
    *(a3 + 80) = v13;
    *(a3 + 96) = v4[6];
    *(a3 + 110) = *(v4 + 110);
    v14 = v4[1];
    *a3 = *v4;
    *(a3 + 16) = v14;
    v15 = v4[3];
    *(a3 + 32) = v4[2];
    *(a3 + 48) = v15;
    return sub_52748(v28, &v26);
  }

  else
  {
    v22 = *v4;
    v23 = v4[1];
    v24 = v4[2];
    v25 = v4[3];
    v20 = v4[5];
    *v21 = v4[6];
    *&v21[14] = *(v4 + 110);
    sub_52748(v28, &v26);
    v26 = sub_1E1910();
    v27 = v17;
    v30._countAndFlagsBits = 44;
    v30._object = 0xE100000000000000;
    sub_1E17E0(v30);
    v31._countAndFlagsBits = sub_1E1910();
    sub_1E17E0(v31);

    v18 = v26;
    v19 = v27;
    *a3 = v22;
    *(a3 + 16) = v23;
    *(a3 + 32) = v24;
    *(a3 + 48) = v25;
    *(a3 + 64) = v18;
    *(a3 + 72) = v19;
    *(a3 + 80) = v20;
    *(a3 + 96) = *v21;
    *(a3 + 110) = *&v21[14];
  }

  return result;
}

__n128 ContentExposureData.updating(for:with:)@<Q0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(v3 + 80);
  v19[4] = *(v3 + 64);
  v20 = v7;
  v21[0] = *(v3 + 96);
  *(v21 + 14) = *(v3 + 110);
  v8 = *(v3 + 16);
  v19[0] = *v3;
  v19[1] = v8;
  v9 = *(v3 + 48);
  v19[2] = *(v3 + 32);
  v19[3] = v9;
  v10 = v7;
  v11 = BYTE4(v7);
  if (a2)
  {
    sub_52748(v19, v18);

    v12 = 0;
    v13 = 0xE000000000000000;
    if ((BYTE12(v20) & 1) == 0)
    {
      v10 = 0;
LABEL_9:
      v11 = a2 & 1;
      v18[0] = a2 & 1;
    }
  }

  else
  {
    sub_52748(v19, v18);
    sub_E9B1C();
    v12 = sub_1E1A50();
    v13 = v15;

    if ((BYTE12(v20) & 1) == 0)
    {
      if (a1 < 0xFFFFFFFF80000000)
      {
        v10 = 0x80000000;
      }

      else if (a1 >= 0x7FFFFFFF)
      {
        v10 = 0x7FFFFFFF;
      }

      else
      {
        v10 = a1;
      }

      goto LABEL_9;
    }
  }

  v16 = *(v4 + 16);
  *a3 = *v4;
  *(a3 + 16) = v16;
  *(a3 + 32) = *(v4 + 32);
  *(a3 + 48) = v12;
  *(a3 + 56) = v13;
  *(a3 + 64) = *(v4 + 64);
  *(a3 + 80) = v10;
  *(a3 + 84) = v11;
  *(a3 + 117) = *(v4 + 117);
  *(a3 + 101) = *(v4 + 101);
  result = *(v4 + 85);
  *(a3 + 85) = result;
  return result;
}

double sub_E8688@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    while (1)
    {
      sub_E9C4C(v4, v8);
      sub_E9C4C(v8, v7);
      sub_3D68(&qword_285BB0, &qword_20EAA0);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_4E48(v8);
      v4 += 48;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v6[4] = v6[11];
    v6[5] = v6[12];
    v6[6] = v6[13];
    v6[0] = v6[7];
    v6[1] = v6[8];
    v6[2] = v6[9];
    v6[3] = v6[10];
    sub_28354(v6);
    sub_E9CB0(v8, v9);
  }

  else
  {
LABEL_5:
    memset(v9, 0, sizeof(v9));
  }

  sub_3D68(&qword_285BB8, &unk_210050);
  if ((swift_dynamicCast() & 1) == 0)
  {
    result = 0.0;
    a2[5] = 0u;
    a2[6] = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

void *sub_E87CC(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_3D68(&qword_285690, &qword_1F6F98);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_E8840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_1E1860();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_E9348();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1E1AF0();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if (v29 != v29)
              {
                goto LABEL_126;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if (v37 != v37)
            {
              goto LABEL_126;
            }

            v38 = v35 + v36;
            v21 = __OFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if (v19 != v19)
            {
              goto LABEL_126;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_127;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if (v67 != v67)
          {
            goto LABEL_126;
          }

          v68 = v65 + v66;
          v21 = __OFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_126;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if (v50 != v50)
          {
            goto LABEL_126;
          }

          v51 = v48 + v49;
          v21 = __OFSUB__(v50, v51);
          v43 = v50 - v51;
          if (v21)
          {
            goto LABEL_126;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_127;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if (v59 != v59)
        {
          goto LABEL_126;
        }

        v60 = v57 + v58;
        v21 = __OFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_126;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_125:
      v15 = 0;
      v18 = v43;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_E8DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1E1860();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_E9348();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1E1AF0();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_E9348()
{
  v0 = sub_1E1870();
  v4 = sub_E93C8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_E93C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1E17C0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1E1A30();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_E87CC(v9, 0);
  v12 = sub_E9520(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1E17C0();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1E1AF0();
LABEL_4:

  return sub_1E17C0();
}

unint64_t sub_E9520(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_E9740(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1E1830();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1E1AF0();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_E9740(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1E1810();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_E9740(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1E1840();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1E1820();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_E97C4()
{
  v1 = *v0;
  v20 = v0[2];
  v21 = v0[1];
  v18 = v0[4];
  v19 = v0[3];
  v2 = *v0 + 64;
  v3 = -1 << *(*v0 + 32);
  result = sub_1E1A80();
  v5 = result;
  v6 = *(v1 + 36);
  while (1)
  {
    v8 = 1 << *(v1 + 32);
    if (v5 == v8)
    {
      return v5;
    }

    if (v5 < 0 || v5 >= v8)
    {
      break;
    }

    v9 = v5 >> 6;
    if ((*(v2 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_20;
    }

    v23 = *(*(v1 + 56) + 8 * v5);

    v21(v22, &v23);

    v10 = v19(v22);
    v24[3] = v22[3];
    v24[4] = v22[4];
    v24[5] = v22[5];
    v24[6] = v22[6];
    v24[0] = v22[0];
    v24[1] = v22[1];
    v24[2] = v22[2];
    result = sub_E9AB4(v24);
    if (v10)
    {
      return v5;
    }

    v7 = 1 << *(v1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_21;
    }

    v11 = *(v2 + 8 * v9);
    if ((v11 & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    if (v6 != *(v1 + 36))
    {
      goto LABEL_23;
    }

    v12 = v11 & (-2 << (v5 & 0x3F));
    if (v12)
    {
      v7 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v13 = v9 << 6;
      v14 = v9 + 1;
      v15 = (v1 + 72 + 8 * v9);
      while (v14 < (v7 + 63) >> 6)
      {
        v17 = *v15++;
        v16 = v17;
        v13 += 64;
        ++v14;
        if (v17)
        {
          result = sub_E9CC8(v5, v6, 0);
          v7 = __clz(__rbit64(v16)) + v13;
          goto LABEL_3;
        }
      }

      result = sub_E9CC8(v5, v6, 0);
    }

LABEL_3:
    v5 = v7;
    if (v6 != *(v1 + 36))
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_E99F4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_E9A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27E490, &qword_205F90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E9AB4(uint64_t a1)
{
  v2 = sub_3D68(&qword_27E490, &qword_205F90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_E9B1C()
{
  result = qword_285B98;
  if (!qword_285B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285B98);
  }

  return result;
}

unint64_t sub_E9B70()
{
  result = qword_285BA0;
  if (!qword_285BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285BA0);
  }

  return result;
}

unint64_t sub_E9BC4()
{
  result = qword_285BA8;
  if (!qword_285BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285BA8);
  }

  return result;
}

unint64_t sub_E9C1C(uint64_t a1)
{
  *(a1 + 8) = sub_E9B70();
  result = sub_E9BC4();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_E9C4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_E9CB0(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_E9CC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t HostingControllerVisibilityStateManager.State.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6E6564646968;
  }

  else
  {
    result = 0x656C6269736976;
  }

  *v0;
  return result;
}

uint64_t sub_E9D1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E6564646968;
  }

  else
  {
    v4 = 0x656C6269736976;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x6E6564646968;
  }

  else
  {
    v6 = 0x656C6269736976;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E1D30();
  }

  return v9 & 1;
}

Swift::Int sub_E9DC0()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_E9E40()
{
  *v0;
  sub_1E17D0();
}

Swift::Int sub_E9EAC()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_E9F34(uint64_t *a1@<X8>)
{
  v2 = 0x656C6269736976;
  if (*v1)
  {
    v2 = 0x6E6564646968;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t HostingControllerVisibilityStateManager.HostingControllerLifeCycleEvent.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_E9FB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0xD000000000000011;
  }

  if (v3)
  {
    v5 = "d";
  }

  else
  {
    v5 = "hostViewDidAppear";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000014;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (*a2)
  {
    v8 = "hostViewDidAppear";
  }

  else
  {
    v8 = "d";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E1D30();
  }

  return v10 & 1;
}

Swift::Int sub_EA064()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_EA0E4()
{
  *v0;
  sub_1E17D0();
}

Swift::Int sub_EA150()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_EA1D8(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*v1)
  {
    v3 = "hostViewDidAppear";
  }

  else
  {
    v3 = "d";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_EA224@<X0>(uint64_t a1@<X0>, void *a2@<X1>, Swift::OpaquePointer a3@<X2>, char *a4@<X8>)
{
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v7 = sub_1E1B70(a3, v10);

  if (v7 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!v7)
  {
    v9 = 0;
  }

  *a4 = v9;
  return result;
}

uint64_t HostingControllerVisibilityStateManager.SwiftUILifeCycleEvent.rawValue.getter()
{
  if (*v0)
  {
    result = 0x7070617369446E6FLL;
  }

  else
  {
    result = 0x7261657070416E6FLL;
  }

  *v0;
  return result;
}

uint64_t sub_EA2C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7070617369446E6FLL;
  }

  else
  {
    v4 = 0x7261657070416E6FLL;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEB00000000726165;
  }

  if (*a2)
  {
    v6 = 0x7070617369446E6FLL;
  }

  else
  {
    v6 = 0x7261657070416E6FLL;
  }

  if (*a2)
  {
    v7 = 0xEB00000000726165;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E1D30();
  }

  return v9 & 1;
}

Swift::Int sub_EA378()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_EA404()
{
  *v0;
  sub_1E17D0();
}

Swift::Int sub_EA47C()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_EA510@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, char *a3@<X8>)
{
  v9._countAndFlagsBits = *a1;
  v4 = a1[1];
  v9._object = v4;
  v6 = sub_1E1B70(a2, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

void sub_EA56C(uint64_t *a1@<X8>)
{
  v2 = 0x7261657070416E6FLL;
  if (*v1)
  {
    v2 = 0x7070617369446E6FLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000726165;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t HostingControllerVisibilityStateManager.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t HostingControllerVisibilityStateManager.hostingControllerEventPublisher.getter()
{
  v2 = *(v0 + 24);
  sub_3D68(&qword_285BC8, &qword_1F8090);
  sub_EC07C(&qword_285BD0, &qword_285BC8, &qword_1F8090);
  return sub_1E1390();
}

uint64_t HostingControllerVisibilityStateManager.swiftUIEventPublisher.getter()
{
  v2 = *(v0 + 32);
  sub_3D68(&qword_285BD8, &qword_1F8098);
  sub_EC07C(&qword_285BE0, &qword_285BD8, &qword_1F8098);
  return sub_1E1390();
}

uint64_t HostingControllerVisibilityStateManager.statePublisher.getter()
{
  v2 = *(v0 + 40);
  sub_3D68(&qword_285BE8, &qword_1F80A0);
  sub_EC07C(&qword_285BF0, &qword_285BE8, &qword_1F80A0);
  return sub_1E1390();
}

uint64_t HostingControllerVisibilityStateManager.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = sub_3D68(&qword_285BC8, &qword_1F8090);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 24) = sub_1E1380();
  v4 = sub_3D68(&qword_285BD8, &qword_1F8098);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v0 + 32) = sub_1E1380();
  v7 = sub_3D68(&qword_285BE8, &qword_1F80A0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v0 + 40) = sub_1E1380();
  *(v0 + 48) = 0;
  *(v0 + 16) = 1;
  return v0;
}

uint64_t HostingControllerVisibilityStateManager.init()()
{
  v1 = sub_3D68(&qword_285BC8, &qword_1F8090);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 24) = sub_1E1380();
  v4 = sub_3D68(&qword_285BD8, &qword_1F8098);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v0 + 32) = sub_1E1380();
  v7 = sub_3D68(&qword_285BE8, &qword_1F80A0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v0 + 40) = sub_1E1380();
  *(v0 + 48) = 0;
  *(v0 + 16) = 1;
  return v0;
}

uint64_t sub_EAA9C()
{
  v1 = v0;
  v2 = *(v0 + 48) != 1 || (*(v0 + 49) & 1) == 0;
  if (qword_27D060 != -1)
  {
    swift_once();
  }

  v3 = sub_1E1360();
  sub_3B2C(v3, qword_280308);
  swift_retain_n();
  v4 = sub_1E1340();
  v5 = sub_1E19A0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315650;
    if (v2)
    {
      v8 = 0x6E6564646968;
    }

    else
    {
      v8 = 0x656C6269736976;
    }

    if (v2)
    {
      v9 = 0xE600000000000000;
    }

    else
    {
      v9 = 0xE700000000000000;
    }

    v10 = sub_DD91C(v8, v9, &v17);

    *(v6 + 4) = v10;
    *(v6 + 12) = 1024;
    v11 = *(v1 + 48);

    *(v6 + 14) = v11;

    *(v6 + 18) = 1024;
    LODWORD(v10) = *(v1 + 49);

    *(v6 + 20) = v10;

    _os_log_impl(&dword_0, v4, v5, "Did recompute state: %s, swiftUIViewIsVisible: %{BOOL}d, hostingControllerViewIsVisible:%{BOOL}d", v6, 0x18u);
    sub_4E48(v7);
  }

  else
  {

    if (v2)
    {
      v8 = 0x6E6564646968;
    }

    else
    {
      v8 = 0x656C6269736976;
    }

    if (v2)
    {
      v9 = 0xE600000000000000;
    }

    else
    {
      v9 = 0xE700000000000000;
    }
  }

  swift_beginAccess();
  if (*(v1 + 16))
  {
    v12 = 0x6E6564646968;
  }

  else
  {
    v12 = 0x656C6269736976;
  }

  if (*(v1 + 16))
  {
    v13 = 0xE600000000000000;
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  if (v8 == v12 && v9 == v13)
  {
  }

  else
  {
    v15 = sub_1E1D30();

    if ((v15 & 1) == 0)
    {
      *(v1 + 16) = v2;
      v16 = *(v1 + 40);
      return sub_1E1370();
    }
  }

  return result;
}

void *HostingControllerVisibilityStateManager.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t HostingControllerVisibilityStateManager.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocClassInstance(v0, 50, 7);
}

uint64_t sub_EAF64()
{
  type metadata accessor for HostingControllerVisibilityStateManager();
  v0 = swift_allocObject();
  v1 = sub_3D68(&qword_285BC8, &qword_1F8090);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 24) = sub_1E1380();
  v4 = sub_3D68(&qword_285BD8, &qword_1F8098);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v0 + 32) = sub_1E1380();
  v7 = sub_3D68(&qword_285BE8, &qword_1F80A0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  result = sub_1E1380();
  *(v0 + 40) = result;
  *(v0 + 48) = 0;
  *(v0 + 16) = 1;
  qword_285BC0 = v0;
  return result;
}

uint64_t sub_EB02C@<X0>(void *a1@<X8>)
{
  if (qword_27D2F8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_285BC0;
}

uint64_t EnvironmentValues.analyticsVisibilityManager.getter()
{
  sub_EB924();
  sub_1E1490();
  return v1;
}

uint64_t sub_EB0D8@<X0>(void *a1@<X8>)
{
  sub_EB924();
  result = sub_1E1490();
  *a1 = v3;
  return result;
}

uint64_t sub_EB128(uint64_t *a1)
{
  v2 = *a1;
  sub_EB924();

  return sub_1E14A0();
}

uint64_t (*EnvironmentValues.analyticsVisibilityManager.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_EB924();
  sub_1E1490();
  return sub_EB224;
}

uint64_t sub_EB224(void *a1, char a2)
{
  a1[1] = *a1;
  v3 = a1[2];
  v4 = a1[3];
  if (a2)
  {

    sub_1E14A0();
    v5 = *a1;
  }

  else
  {
    v7 = a1[3];
    return sub_1E14A0();
  }
}

uint64_t View.observeAnalyticsVisibility()()
{
  swift_getKeyPath();
  sub_1E1530();
}

uint64_t View.analyticsVisibilityState(_:)(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_1E1530();
}

uint64_t sub_EB3B4(uint64_t a1, char a2, char a3)
{
  v5 = sub_1E1480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1E1990();
    v10 = sub_1E14E0();
    sub_1E1320();

    sub_1E1470();
    swift_getAtKeyPath();

    (*(v6 + 8))(v9, v5);
  }

  HIBYTE(v12) = a3;
  HostingControllerVisibilityStateManager.signal(event:)((&v12 + 7));
}

uint64_t sub_EB510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = sub_3D68(&qword_285CF0, &qword_1F85D8);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = (a2 + *(sub_3D68(&qword_285CF8, &qword_1F85E0) + 36));
  *v9 = sub_EBE8C;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v6;
  v11 = (a2 + *(sub_3D68(&qword_285D00, &qword_1F85E8) + 36));
  *v11 = 0;
  v11[1] = 0;
  v11[2] = sub_EBEB0;
  v11[3] = v10;
  return swift_retain_n();
}

uint64_t sub_EB648(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v5 = sub_1E1480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a4 & 1) == 0)
  {
    sub_1E1990();
    v10 = sub_1E14E0();
    sub_1E1320();

    sub_1E1470();
    swift_getAtKeyPath();

    (*(v6 + 8))(v9, v5);
  }

  if ((a4 & 0x100) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1D30();
  }

  HIBYTE(v13) = v11 & 1;
  HostingControllerVisibilityStateManager.signal(event:)((&v13 + 7));
}

uint64_t sub_EB814()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v5 = *(v0 + 9);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 25) = v5;

  sub_3D68(&qword_285D08, &qword_1F85F0);
  sub_EC07C(&qword_285D10, &qword_285D08, &qword_1F85F0);
  sub_EB9D0();
  sub_1E1540();
}

unint64_t sub_EB924()
{
  result = qword_285BF8;
  if (!qword_285BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285BF8);
  }

  return result;
}

uint64_t sub_EB978@<X0>(void *a1@<X8>)
{
  sub_EB924();
  result = sub_1E1490();
  *a1 = v3;
  return result;
}

unint64_t sub_EB9D0()
{
  result = qword_285C00;
  if (!qword_285C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285C00);
  }

  return result;
}

unint64_t sub_EBA28()
{
  result = qword_285C08;
  if (!qword_285C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285C08);
  }

  return result;
}

unint64_t sub_EBA80()
{
  result = qword_285C10;
  if (!qword_285C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285C10);
  }

  return result;
}

unint64_t sub_EBB7C()
{
  result = qword_285CE0;
  if (!qword_285CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285CE0);
  }

  return result;
}

uint64_t sub_EBBF0(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v4 = *a1;
  v5 = a1[1];
  sub_1E1440();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_EBC60()
{
  result = qword_285CE8;
  if (!qword_285CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285CE8);
  }

  return result;
}

uint64_t sub_EBCC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_EBD08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_EBD5C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_EBD70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_EBDB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_EBE54()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_EBED4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 26, 7);
}

uint64_t sub_EBF0C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 25))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_EB648(a1, a2, *(v2 + 16), v3 | *(v2 + 24));
}

unint64_t sub_EBF38()
{
  result = qword_285D18;
  if (!qword_285D18)
  {
    sub_5DE50(&qword_285D00, &qword_1F85E8);
    sub_EBFC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285D18);
  }

  return result;
}

unint64_t sub_EBFC4()
{
  result = qword_285D20;
  if (!qword_285D20)
  {
    sub_5DE50(&qword_285CF8, &qword_1F85E0);
    sub_EC07C(&qword_285D28, &qword_285CF0, &qword_1F85D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285D20);
  }

  return result;
}

uint64_t sub_EC07C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_5DE50(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_EC0C4()
{
  sub_5DE50(&qword_285D08, &qword_1F85F0);
  sub_EC07C(&qword_285D10, &qword_285D08, &qword_1F85F0);
  sub_EB9D0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_EC1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656E746867697262 && a2 == 0xEF6C6576654C7373)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E1D30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_EC260(uint64_t a1)
{
  v2 = sub_EC410();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_EC29C(uint64_t a1)
{
  v2 = sub_EC410();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BrightnessData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_285D30, &qword_1F85F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_EC410();
  sub_1E1E00();
  sub_1E1D00();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_EC410()
{
  result = qword_285D38;
  if (!qword_285D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285D38);
  }

  return result;
}

uint64_t BrightnessData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_285D40, &qword_1F8600);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_EC410();
  sub_1E1DF0();
  if (!v2)
  {
    v11 = sub_1E1C30();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return sub_4E48(a1);
}

unint64_t sub_EC5BC()
{
  result = qword_285D48;
  if (!qword_285D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285D48);
  }

  return result;
}

unint64_t sub_EC614()
{
  result = qword_285D50;
  if (!qword_285D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285D50);
  }

  return result;
}

unint64_t sub_EC6A4()
{
  result = qword_285D58;
  if (!qword_285D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285D58);
  }

  return result;
}

unint64_t sub_EC6FC()
{
  result = qword_285D60;
  if (!qword_285D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285D60);
  }

  return result;
}

unint64_t sub_EC754()
{
  result = qword_285D68;
  if (!qword_285D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285D68);
  }

  return result;
}

uint64_t ReadingFontChangeEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingFontChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingFontChangeEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingFontChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingFontChangeEvent.fontData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingFontChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_285DA0, &unk_1F8820);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingFontChangeEvent.fontData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingFontChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_285DA0, &unk_1F8820);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingFontChangeEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingFontChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingFontChangeEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingFontChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingFontChangeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReadingFontChangeEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_285DA0, &unk_1F8820);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t ReadingFontChangeEvent.Model.fontData.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = *(v1 + 112);
  a1[1] = v2;
}

uint64_t ReadingFontChangeEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingFontChangeEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingFontChangeEvent.Model.init(readingSessionData:contentData:fontData:eventData:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 4);
  v8 = *(a1 + 8);
  v9 = *(a1 + 12);
  v10 = *(a1 + 13);
  v11 = *(a1 + 14);
  v12 = *a3;
  v13 = a3[1];
  *a5 = *a1;
  *(a5 + 4) = v7;
  *(a5 + 8) = v8;
  *(a5 + 12) = v9;
  *(a5 + 13) = v10;
  *(a5 + 14) = v11;
  v14 = a2[1];
  *(a5 + 16) = *a2;
  *(a5 + 32) = v14;
  v15 = a2[2];
  v16 = a2[3];
  v17 = a2[5];
  *(a5 + 80) = a2[4];
  *(a5 + 96) = v17;
  *(a5 + 48) = v15;
  *(a5 + 64) = v16;
  *(a5 + 112) = v12;
  *(a5 + 120) = v13;
  v18 = *(type metadata accessor for ReadingFontChangeEvent.Model(0) + 28);
  v19 = sub_1E1150();
  v20 = *(*(v19 - 8) + 32);

  return v20(a5 + v18, a4, v19);
}

unint64_t sub_ECF80()
{
  v1 = 0x44746E65746E6F63;
  v2 = 0x61746144746E6F66;
  if (*v0 != 2)
  {
    v2 = 0x746144746E657665;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_ED00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_EE3B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_ED034(uint64_t a1)
{
  v2 = sub_ED3C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_ED070(uint64_t a1)
{
  v2 = sub_ED3C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingFontChangeEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_285DA8, &qword_1F8830);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_ED3C0();
  sub_1E1E00();
  v10 = *(v2 + 4);
  v11 = v2[2];
  v12 = *(v2 + 12);
  v13 = *(v2 + 13);
  v14 = *(v2 + 14);
  v42 = *v2;
  v43 = v10;
  v44 = v11;
  v45 = v12;
  v46 = v13;
  v47 = v14;
  v41 = 0;
  sub_67BE8();
  v15 = v48;
  sub_1E1CF0();
  if (!v15)
  {
    v16 = *(v2 + 4);
    v17 = *(v2 + 2);
    v37 = *(v2 + 3);
    v38 = v16;
    v18 = *(v2 + 4);
    v19 = *(v2 + 6);
    v39 = *(v2 + 5);
    v40 = v19;
    v20 = *(v2 + 2);
    v36[0] = *(v2 + 1);
    v36[1] = v20;
    v32 = v37;
    v33 = v18;
    v21 = *(v2 + 6);
    v34 = v39;
    v35 = v21;
    v30 = v36[0];
    v31 = v17;
    v29 = 1;
    sub_13A5C(v36, v28);
    sub_143D0();
    sub_1E1CF0();
    v28[2] = v32;
    v28[3] = v33;
    v28[4] = v34;
    v28[5] = v35;
    v28[0] = v30;
    v28[1] = v31;
    sub_14424(v28);
    v22 = *(v2 + 15);
    v26 = *(v2 + 14);
    v27 = v22;
    v25[15] = 2;
    sub_3781C();

    sub_1E1CF0();

    v23 = *(type metadata accessor for ReadingFontChangeEvent.Model(0) + 28);
    LOBYTE(v26) = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_ED3C0()
{
  result = qword_285DB0;
  if (!qword_285DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285DB0);
  }

  return result;
}

uint64_t ReadingFontChangeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_1E1150();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3D68(&qword_285DB8, &qword_1F8838);
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for ReadingFontChangeEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v35 = a1;
  sub_48B8(a1, v16);
  sub_ED3C0();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v35);
  }

  v30 = v12;
  v18 = v33;
  LOBYTE(v36) = 0;
  sub_686E8();
  sub_1E1C20();
  v19 = BYTE4(v38);
  v20 = DWORD2(v38);
  v21 = BYTE12(v38);
  v22 = BYTE13(v38);
  v23 = BYTE14(v38);
  *v15 = v38;
  v15[4] = v19;
  *(v15 + 2) = v20;
  v15[12] = v21;
  v15[13] = v22;
  v15[14] = v23;
  v45 = 1;
  sub_14CB8();
  sub_1E1C20();
  v24 = v41;
  *(v15 + 3) = v40;
  *(v15 + 4) = v24;
  v25 = v43;
  *(v15 + 5) = v42;
  *(v15 + 6) = v25;
  v26 = v39;
  *(v15 + 1) = v38;
  *(v15 + 2) = v26;
  v44 = 2;
  sub_377C4();
  sub_1E1C20();
  v27 = v37;
  *(v15 + 14) = v36;
  *(v15 + 15) = v27;
  LOBYTE(v36) = 3;
  sub_14E5C(&qword_27D830);
  v28 = v34;
  sub_1E1C20();
  (*(v18 + 8))(v11, v28);
  (*(v31 + 32))(&v15[*(v30 + 28)], v7, v4);
  sub_ED844(v15, v32);
  sub_4E48(v35);
  return sub_ED8A8(v15);
}

uint64_t sub_ED844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingFontChangeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_ED8A8(uint64_t a1)
{
  v2 = type metadata accessor for ReadingFontChangeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_ED9A4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_285DA0, &unk_1F8820);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

uint64_t sub_EDB28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_3D68(&qword_285DA0, &unk_1F8820);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_EDCF4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_285DA0, &unk_1F8820);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_EDEB8()
{
  sub_EE014(319, &qword_280E40, sub_686E8, sub_67BE8);
  if (v0 <= 0x3F)
  {
    sub_EE014(319, &qword_27E2C8, sub_14CB8, sub_143D0);
    if (v1 <= 0x3F)
    {
      sub_EE014(319, &unk_285E28, sub_377C4, sub_3781C);
      if (v2 <= 0x3F)
      {
        sub_5684();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_EE014(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_EE0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_EE164(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_EE208()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_EE2B0()
{
  result = qword_285EF8;
  if (!qword_285EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285EF8);
  }

  return result;
}

unint64_t sub_EE308()
{
  result = qword_285F00;
  if (!qword_285F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285F00);
  }

  return result;
}

unint64_t sub_EE360()
{
  result = qword_285F08;
  if (!qword_285F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285F08);
  }

  return result;
}

uint64_t sub_EE3B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000000214400 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61746144746E6F66 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 3;
  }

  else
  {
    v5 = sub_1E1D30();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t RemoteConfigNamespaceData.init(name:treatmentIDs:segmentIDs:segmentSetIDs:previousTreatmentIDs:previousSegmentIDs:previousSegmentSetIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t RemoteConfigNamespaceData.previousTreatmentIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t RemoteConfigNamespaceData.previousSegmentIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t RemoteConfigNamespaceData.previousSegmentSetIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_EE5E4()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6E656D7461657274;
    if (v1 != 1)
    {
      v5 = 0x49746E656D676573;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 1701667182;
    }
  }

  else
  {
    v2 = 0xD000000000000015;
    if (v1 == 5)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0xD000000000000014;
    if (v1 == 3)
    {
      v3 = 0x53746E656D676573;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_EE6D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_EF3A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_EE6FC(uint64_t a1)
{
  v2 = sub_EF0A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_EE738(uint64_t a1)
{
  v2 = sub_EF0A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RemoteConfigNamespaceData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_285F10, &unk_1F8A50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v22 = v1[3];
  v23 = v10;
  v11 = v1[4];
  v20 = v1[5];
  v21 = v11;
  v12 = v1[6];
  v18 = v1[7];
  v19 = v12;
  v13 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_EF0A4();
  sub_1E1E00();
  LOBYTE(v26) = 0;
  v14 = v24;
  sub_1E1C50();
  if (!v14)
  {
    v16 = v21;
    v15 = v22;
    v26 = v23;
    v25 = 1;
    sub_3D68(&qword_281BC0, &unk_1EDD80);
    sub_6E7F0(&qword_281190);
    sub_1E1C80();
    v26 = v15;
    v25 = 2;
    sub_1E1C80();
    v26 = v16;
    v25 = 3;
    sub_1E1C80();
    v26 = v20;
    v25 = 4;
    sub_1E1C80();
    v26 = v19;
    v25 = 5;
    sub_1E1C80();
    v26 = v18;
    v25 = 6;
    sub_1E1C80();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t RemoteConfigNamespaceData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_285F20, &qword_1F8A60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_EF0A4();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1);
    v34 = 0uLL;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
  }

  else
  {
    LOBYTE(v34) = 0;
    *&v28 = sub_1E1B80();
    *(&v28 + 1) = v12;
    v13 = sub_3D68(&qword_281BC0, &unk_1EDD80);
    LOBYTE(v29) = 1;
    sub_6E7F0(&qword_2811B8);
    sub_1E1BB0();
    v27 = v34;
    LOBYTE(v29) = 2;
    sub_1E1BB0();
    v14 = v34;
    LOBYTE(v29) = 3;
    sub_1E1BB0();
    v15 = v13;
    v16 = v34;
    LOBYTE(v29) = 4;
    v26 = v15;
    sub_1E1BB0();
    v25 = a2;
    v17 = v34;
    LOBYTE(v29) = 5;
    sub_1E1BB0();
    v24 = v6;
    v18 = v34;
    v33 = 6;
    sub_1E1BB0();
    (*(v24 + 8))(v9, v5);
    v26 = v41;
    v19 = v28;
    v29 = v28;
    v20 = v27;
    *&v30 = v27;
    *(&v30 + 1) = v14;
    *&v31 = v16;
    *(&v31 + 1) = v17;
    *&v32 = v18;
    *(&v32 + 1) = v41;
    v21 = v30;
    v22 = v25;
    *v25 = v28;
    v22[1] = v21;
    v23 = v32;
    v22[2] = v31;
    v22[3] = v23;
    sub_5E410(&v29, &v34);
    sub_4E48(a1);
    v34 = v19;
    v35 = v20;
    v36 = v14;
    v37 = v16;
    v38 = v17;
    v39 = v18;
    v40 = v26;
  }

  return sub_5E46C(&v34);
}

uint64_t _s13BookAnalytics25RemoteConfigNamespaceDataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a2[1];
  v11 = a2[2];
  v13 = a2[3];
  v12 = a2[4];
  v15 = a2[5];
  v14 = a2[6];
  v16 = a2[7];
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    v18 = a2[7];
    v19 = a1[7];
    if ((*a1 != *a2 || v3 != v10) && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v18 = a2[7];
    v19 = a1[7];
    if (v10)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v11 || (sub_5C5F8(v4, v11) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v6)
  {
    if (!v13 || (sub_5C5F8(v6, v13) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v5)
  {
    if (!v12 || (sub_5C5F8(v5, v12) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v8)
  {
    if (!v15 || (sub_5C5F8(v8, v15) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v7)
  {
    if (!v14 || (sub_5C5F8(v7, v14) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v19)
  {
    if (v18 && (sub_5C5F8(v19, v18) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v18)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_EF0A4()
{
  result = qword_285F18;
  if (!qword_285F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285F18);
  }

  return result;
}

unint64_t sub_EF0FC()
{
  result = qword_285F28;
  if (!qword_285F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285F28);
  }

  return result;
}

unint64_t sub_EF154()
{
  result = qword_285F30;
  if (!qword_285F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285F30);
  }

  return result;
}

__n128 sub_EF1A8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_EF1BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_EF218(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_EF2A0()
{
  result = qword_285F38;
  if (!qword_285F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285F38);
  }

  return result;
}

unint64_t sub_EF2F8()
{
  result = qword_285F40;
  if (!qword_285F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285F40);
  }

  return result;
}

unint64_t sub_EF350()
{
  result = qword_285F48;
  if (!qword_285F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285F48);
  }

  return result;
}

uint64_t sub_EF3A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D7461657274 && a2 == 0xEC00000073444974 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49746E656D676573 && a2 == 0xEA00000000007344 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x53746E656D676573 && a2 == 0xED00007344497465 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000000215780 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000000002157A0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000000002157C0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t ContentData.contentLength.setter(uint64_t result)
{
  *(v1 + 60) = result;
  *(v1 + 64) = BYTE4(result) & 1;
  return result;
}

uint64_t ContentData.supplementalContentCount.setter(uint64_t result)
{
  *(v1 + 68) = result;
  *(v1 + 72) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_EF838(char a1)
{
  result = 0x49746E65746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x54746E65746E6F63;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x55746E65746E6F63;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x53746E65746E6F63;
      break;
    case 6:
      result = 0x4C746E65746E6F63;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0x7954736569726573;
      break;
    case 9:
      result = 0x69746375646F7270;
      break;
    case 10:
      result = 0x616C4661676E616DLL;
      break;
    case 11:
      result = 0x656966696E557369;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x4B746E65746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_EFA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_F1424(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_EFA88(uint64_t a1)
{
  v2 = sub_F0E18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_EFAC4(uint64_t a1)
{
  v2 = sub_F0E18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ContentData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_285F50, &qword_1F8CE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v33 = *(v1 + 16);
  v10 = v1[3];
  v30 = v1[4];
  v31 = v10;
  v11 = v1[5];
  v28 = v1[6];
  v29 = v11;
  LODWORD(v11) = *(v1 + 56);
  v26 = *(v1 + 57);
  v27 = v11;
  v25 = *(v1 + 15);
  v24 = *(v1 + 64);
  v23 = *(v1 + 17);
  LODWORD(v11) = *(v1 + 72);
  v21 = *(v1 + 73);
  v22 = v11;
  LODWORD(v11) = *(v1 + 74);
  v19 = *(v1 + 75);
  v20 = v11;
  LODWORD(v11) = *(v1 + 76);
  v17 = *(v1 + 77);
  v18 = v11;
  v12 = v1[11];
  v16[0] = v1[10];
  v16[1] = v12;
  v13 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_F0E18();
  sub_1E1E00();
  v35 = 0;
  v14 = v32;
  sub_1E1CB0();
  if (v14)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v35 = v33;
  v34 = 1;
  sub_C480();
  sub_1E1CF0();
  v35 = 2;
  sub_1E1CB0();
  v32 = v4;
  v35 = 3;
  sub_1E1CB0();
  v35 = v27;
  v34 = 4;
  sub_F0E6C();
  sub_1E1C80();
  v35 = v26;
  v34 = 5;
  sub_F0EC0();
  sub_1E1C80();
  v35 = 6;
  v34 = v24;
  sub_1E1C90();
  v35 = 7;
  v34 = v22;
  sub_1E1C90();
  v35 = v21;
  v34 = 8;
  sub_F0F14();
  sub_1E1C80();
  v35 = v20;
  v34 = 9;
  sub_F0F68();
  sub_1E1C80();
  v35 = v19;
  v34 = 10;
  sub_F0FBC();
  sub_1E1C80();
  v35 = 11;
  sub_1E1C60();
  v35 = 12;
  sub_1E1C60();
  v35 = 13;
  sub_1E1C50();
  return (*(v4 + 8))(v7, 0);
}

uint64_t ContentData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_285F88, &qword_1F8CE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_F0E18();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  LOBYTE(v49[0]) = 0;
  v11 = sub_1E1BE0();
  v13 = v12;
  LOBYTE(v43) = 1;
  sub_C4D4();
  sub_1E1C20();
  v77 = v13;
  LODWORD(v13) = LOBYTE(v49[0]);
  LOBYTE(v49[0]) = 2;
  v40 = sub_1E1BE0();
  v39 = v13;
  v42 = v14;
  LOBYTE(v49[0]) = 3;
  v38 = sub_1E1BE0();
  v41 = v15;
  LOBYTE(v43) = 4;
  sub_F1010();
  sub_1E1BB0();
  v37 = LOBYTE(v49[0]);
  LOBYTE(v43) = 5;
  sub_F1064();
  sub_1E1BB0();
  v36 = LOBYTE(v49[0]);
  LOBYTE(v49[0]) = 6;
  v35 = sub_1E1BC0();
  v75 = BYTE4(v35) & 1;
  LOBYTE(v49[0]) = 7;
  v34 = sub_1E1BC0();
  v72 = BYTE4(v34) & 1;
  LOBYTE(v43) = 8;
  sub_F10B8();
  sub_1E1BB0();
  LOBYTE(v13) = v49[0];
  LOBYTE(v43) = 9;
  sub_F110C();
  sub_1E1BB0();
  v33 = LOBYTE(v49[0]);
  LOBYTE(v43) = 10;
  sub_F1160();
  sub_1E1BB0();
  v32 = LOBYTE(v49[0]);
  LOBYTE(v49[0]) = 11;
  v31 = sub_1E1B90();
  LOBYTE(v49[0]) = 12;
  v30 = sub_1E1B90();
  v71 = 13;
  v16 = sub_1E1B80();
  v29 = v17;
  v18 = v16;
  (*(v6 + 8))(v9, v5);
  *&v43 = v11;
  v19 = v77;
  *(&v43 + 1) = v77;
  v20 = v39;
  LOBYTE(v44) = v39;
  *(&v44 + 1) = v40;
  v21 = v42;
  *&v45 = v42;
  *(&v45 + 1) = v38;
  *&v46 = v41;
  BYTE8(v46) = v37;
  BYTE9(v46) = v36;
  HIDWORD(v46) = v35;
  v27 = v75;
  LOBYTE(v47) = v75;
  DWORD1(v47) = v34;
  v28 = v72;
  BYTE8(v47) = v72;
  BYTE9(v47) = v13;
  BYTE10(v47) = v33;
  BYTE11(v47) = v32;
  BYTE12(v47) = v31;
  BYTE13(v47) = v30;
  *&v48 = v18;
  *(&v48 + 1) = v29;
  v22 = v44;
  *a2 = v43;
  a2[1] = v22;
  v23 = v45;
  v24 = v46;
  v25 = v48;
  a2[4] = v47;
  a2[5] = v25;
  a2[2] = v23;
  a2[3] = v24;
  sub_13A5C(&v43, v49);
  sub_4E48(a1);
  v49[0] = v11;
  v49[1] = v19;
  v50 = v20;
  *v51 = *v76;
  *&v51[3] = *&v76[3];
  v52 = v40;
  v53 = v21;
  v54 = v38;
  v55 = v41;
  v56 = v37;
  v57 = v36;
  v58 = v35;
  v59 = v27;
  v60 = v73;
  v61 = v74;
  v62 = v34;
  v63 = v28;
  v64 = v13;
  v65 = v33;
  v66 = v32;
  v67 = v31;
  v68 = v30;
  v69 = v18;
  v70 = v29;
  return sub_14424(v49);
}

BOOL _s13BookAnalytics11ContentDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v54 = *(a1 + 57);
  v55 = *(a1 + 56);
  v49 = *(a1 + 60);
  v52 = *(a1 + 64);
  v50 = *(a1 + 72);
  v45 = *(a1 + 68);
  v46 = *(a1 + 73);
  v41 = *(a1 + 74);
  v39 = *(a1 + 75);
  v35 = *(a1 + 77);
  v36 = *(a1 + 76);
  v32 = *(a1 + 80);
  v34 = *(a1 + 88);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v56 = *(a2 + 56);
  v53 = *(a2 + 57);
  v51 = *(a2 + 64);
  v47 = *(a2 + 60);
  v48 = *(a2 + 72);
  v43 = *(a2 + 68);
  v44 = *(a2 + 73);
  v42 = *(a2 + 74);
  v40 = *(a2 + 75);
  v37 = *(a2 + 76);
  v38 = *(a2 + 77);
  v31 = *(a2 + 80);
  v33 = *(a2 + 88);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1E1D30() & 1) == 0 || (sub_218F4(v2, v7) & 1) == 0 || (v3 != v8 || v4 != v9) && (sub_1E1D30() & 1) == 0 || (v5 != v10 || v6 != v11) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  if (v55 == 3)
  {
    if (v56 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v56 == 3)
    {
      return 0;
    }

    v12 = 0x6E776F6E6B6E75;
    if (v55)
    {
      if (v55 == 1)
      {
        v13 = 0x756F4265726F7473;
        v14 = 0xEB00000000746867;
      }

      else
      {
        v13 = 0x65726F74536E6F6ELL;
        v14 = 0xEE00746867756F42;
      }
    }

    else
    {
      v14 = 0xE700000000000000;
      v13 = 0x6E776F6E6B6E75;
    }

    if (v56)
    {
      if (v56 == 1)
      {
        v12 = 0x756F4265726F7473;
        v15 = 0xEB00000000746867;
      }

      else
      {
        v12 = 0x65726F74536E6F6ELL;
        v15 = 0xEE00746867756F42;
      }
    }

    else
    {
      v15 = 0xE700000000000000;
    }

    if (v13 == v12 && v14 == v15)
    {
    }

    else
    {
      v16 = sub_1E1D30();

      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (v54 == 4)
  {
    if (v53 != 4)
    {
      return 0;
    }
  }

  else if (v53 == 4 || (sub_24AAC(v54, v53) & 1) == 0)
  {
    return 0;
  }

  if (v52)
  {
    if (!v51)
    {
      return 0;
    }
  }

  else
  {
    v17 = v51;
    if (v49 != v47)
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if (v50)
  {
    if (!v48)
    {
      return 0;
    }
  }

  else
  {
    v18 = v48;
    if (v45 != v43)
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  if (v46 == 4)
  {
    if (v44 != 4)
    {
      return 0;
    }
  }

  else if (v44 == 4 || (sub_24C00(v46, v44) & 1) == 0)
  {
    return 0;
  }

  if (v41 == 3)
  {
    if (v42 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v42 == 3)
    {
      return 0;
    }

    v19 = 0x6E776F6E6B6E75;
    if (v41)
    {
      if (v41 == 1)
      {
        v20 = 0x6375646F72506773;
        v21 = 0xEC0000006E6F6974;
      }

      else
      {
        v20 = 0x6F725047536E6F6ELL;
        v21 = 0xEF6E6F6974637564;
      }
    }

    else
    {
      v21 = 0xE700000000000000;
      v20 = 0x6E776F6E6B6E75;
    }

    if (v42)
    {
      if (v42 == 1)
      {
        v19 = 0x6375646F72506773;
        v22 = 0xEC0000006E6F6974;
      }

      else
      {
        v19 = 0x6F725047536E6F6ELL;
        v22 = 0xEF6E6F6974637564;
      }
    }

    else
    {
      v22 = 0xE700000000000000;
    }

    if (v20 == v19 && v21 == v22)
    {
    }

    else
    {
      v23 = sub_1E1D30();

      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (v39 == 3)
  {
    if (v40 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v40 == 3)
    {
      return 0;
    }

    v24 = 7562617;
    if (v39)
    {
      if (v39 == 1)
      {
        v25 = 0xE200000000000000;
        v26 = 28526;
      }

      else
      {
        v25 = 0xE700000000000000;
        v26 = 0x6E776F6E6B6E75;
      }
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 7562617;
    }

    if (v40)
    {
      if (v40 == 1)
      {
        v27 = 0xE200000000000000;
        v24 = 28526;
      }

      else
      {
        v27 = 0xE700000000000000;
        v24 = 0x6E776F6E6B6E75;
      }
    }

    else
    {
      v27 = 0xE300000000000000;
    }

    if (v26 == v24 && v25 == v27)
    {
    }

    else
    {
      v28 = sub_1E1D30();

      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (v36 == 2)
  {
    v29 = v38;
    if (v37 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    v29 = v38;
    if (v37 == 2 || ((v37 ^ v36) & 1) != 0)
    {
      return result;
    }
  }

  if (v35 == 2)
  {
    if (v29 != 2)
    {
      return 0;
    }

    goto LABEL_97;
  }

  result = 0;
  if (v29 != 2 && ((v29 ^ v35) & 1) == 0)
  {
LABEL_97:
    if (v34)
    {
      return v33 && (v32 == v31 && v34 == v33 || (sub_1E1D30() & 1) != 0);
    }

    return !v33;
  }

  return result;
}

unint64_t sub_F0E18()
{
  result = qword_285F58;
  if (!qword_285F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285F58);
  }

  return result;
}