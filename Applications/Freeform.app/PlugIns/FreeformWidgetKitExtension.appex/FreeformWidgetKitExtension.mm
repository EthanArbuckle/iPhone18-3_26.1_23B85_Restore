void sub_100001A0C(id a1)
{
  v6[0] = @"CRLSnapToGrid";
  v6[1] = @"CRLDisplayEdgeGuides";
  v7[0] = &__kCFBooleanFalse;
  v7[1] = &__kCFBooleanFalse;
  v6[2] = @"CRLDisplayCenterGuides";
  v6[3] = @"CRLDisplaySpacingGuides";
  v7[2] = &__kCFBooleanTrue;
  v7[3] = &__kCFBooleanTrue;
  v6[4] = @"CRLDisplaySizingGuides";
  v6[5] = @"CRLUseHapticFeedbackWhenSnapping";
  v6[6] = @"CRLEncryptSharePlayData";
  v6[7] = @"CRLDeleteBoardCleanupTolerance";
  v7[6] = &__kCFBooleanTrue;
  v7[7] = &off_100029C88;
  v7[4] = &__kCFBooleanTrue;
  v7[5] = &__kCFBooleanTrue;
  v6[8] = @"CRLDeletedBoardTTL";
  v6[9] = @"CRLSelectAndScrollWithApplePencil";
  v7[8] = &off_100029CA0;
  v7[9] = &__kCFBooleanFalse;
  v6[10] = @"CRLMathRecognitionMode";
  v6[11] = @"CRLAppAnalyticsResetIdentifier";
  v7[10] = &off_100029CB8;
  v7[11] = &__kCFBooleanFalse;
  v6[12] = @"enableOSSignpost";
  v6[13] = @"CRLMultiSelectionShouldDisplaySingleBoundsUserDefault";
  v7[12] = &__kCFBooleanFalse;
  v7[13] = &__kCFBooleanTrue;
  v6[14] = @"CRLRulerUnitTypeUserDefault";
  v1 = +[NSLocale currentLocale];
  if ([v1 usesMetricSystem])
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v3 = [NSNumber numberWithUnsignedInteger:v2];
  v6[15] = @"CRL3DObjectCompression";
  v7[14] = v3;
  v7[15] = &__kCFBooleanFalse;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:16];
  v5 = qword_10002CD40;
  qword_10002CD40 = v4;
}

unint64_t sub_100001C34()
{
  result = qword_10002C330;
  if (!qword_10002C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C330);
  }

  return result;
}

uint64_t sub_100001CCC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001D14()
{
  v0 = sub_10001C9A8();
  sub_1000041D8(v0, qword_100032488);
  sub_1000041A0(v0, qword_100032488);
  return sub_10001C998();
}

uint64_t sub_100001D78()
{
  v0 = sub_100004158(&qword_10002C440, &unk_10001FA10);
  sub_1000041D8(v0, qword_1000324A0);
  v1 = sub_1000041A0(v0, qword_1000324A0);
  sub_10001C728();
  v2 = sub_10001C738();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100001E38()
{
  result = swift_getKeyPath();
  qword_1000324B8 = result;
  return result;
}

uint64_t sub_100001ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return _swift_task_switch(sub_100001EFC, 0, 0);
}

uint64_t sub_100001EFC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_10001C558();
  v3 = *(v0 + 16);
  *(v0 + 24) = v3;
  *(v0 + 72) = v3;
  sub_10001C558();
  *(v0 + 145) = *(v0 + 144);
  if (qword_10002C1F0 != -1)
  {
    swift_once();
  }

  v4 = qword_1000324B8;
  *(v0 + 80) = qword_1000324B8;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v7 = sub_1000042E4(&qword_10002C428, &qword_10002C430, &qword_10001EEC0);
  *(v0 + 96) = v7;
  *v6 = v0;
  v6[1] = sub_100002060;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 145, v4, &type metadata for Bool, v7);
}

uint64_t sub_100002060()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v5 = sub_100002468;
  }

  else
  {
    v5 = sub_1000021B4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000021B4()
{
  v1 = v0[7];
  sub_10001C558();
  v2 = v0[4];
  v0[5] = v2;
  v3 = qword_1000324B8;
  v0[14] = v2;
  v0[15] = v3;
  v4 = async function pointer to AppEntity._value<A, B>(for:)[1];

  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_10000228C;
  v6 = v0[12];

  return AppEntity._value<A, B>(for:)(v0 + 146, v3, v6);
}

uint64_t sub_10000228C()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v5 = sub_100002480;
  }

  else
  {
    v5 = sub_1000023E0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000023E0()
{
  v1 = *(v0 + 48);
  *(v0 + 147) = *(v0 + 146);
  sub_10000432C();
  sub_10001C528();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100002498@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_10001C558();
  *a1 = v5;
  return result;
}

uint64_t sub_1000024D4(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;

  sub_10001C568();
}

uint64_t (*sub_10000251C(uint64_t *a1))()
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
  v4 = *v1;
  *(v3 + 32) = sub_10001C548();
  return sub_100002590;
}

uint64_t sub_100002594@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = sub_10001C558();
  *a1 = v5;
  return result;
}

uint64_t sub_1000025D0(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_10001C568();
}

uint64_t (*sub_100002608(uint64_t *a1))()
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
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_10001C548();
  return sub_1000043F0;
}

void sub_10000267C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1000026C8()
{
  if (qword_10002C1F0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10000274C()
{
  result = qword_10002C348;
  if (!qword_10002C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C348);
  }

  return result;
}

unint64_t sub_1000027A4()
{
  result = qword_10002C350;
  if (!qword_10002C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C350);
  }

  return result;
}

uint64_t sub_10000287C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C1E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10001C9A8();
  v3 = sub_1000041A0(v2, qword_100032488);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100002938@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C1E8 != -1)
  {
    swift_once();
  }

  v2 = sub_100004158(&qword_10002C440, &unk_10001FA10);
  v3 = sub_1000041A0(v2, qword_1000324A0);

  return sub_100004380(v3, a1);
}

uint64_t sub_1000029BC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002A68;

  return sub_100001ED8(a1, v5, v4);
}

uint64_t sub_100002A68()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002B5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100003CF4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100002BA4()
{
  result = qword_10002C358;
  if (!qword_10002C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C358);
  }

  return result;
}

unint64_t sub_100002BFC()
{
  result = qword_10002C360;
  if (!qword_10002C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C360);
  }

  return result;
}

uint64_t sub_100002C70()
{
  if (qword_10002C220 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  *v1 = sub_100018B38(3) & 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100002D3C()
{
  if (qword_10002C220 != -1)
  {
    swift_once();
  }

  v1 = qword_100032508;
  *(v0 + 16) = *(v0 + 17);
  [v1 setObject:sub_10001CB28() forKey:@"CRLSnapToGrid"];
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100002E14()
{
  v0 = sub_100004158(&qword_10002C408, &qword_10001F3C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v19 - v2;
  v4 = sub_100004158(&qword_10002C3F0, &qword_10001EE80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = sub_10001C9A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  if (qword_10002C200 != -1)
  {
    swift_once();
  }

  v12 = sub_10001C948();
  sub_1000041A0(v12, qword_1000324D8);
  swift_beginAccess();
  sub_10001C938();
  swift_endAccess();
  sub_10001C998();
  v14 = *(v9 + 56);
  v13 = v9 + 56;
  v14(v7, 0, 1, v8);
  sub_10001C758();
  v15 = sub_10001C768();
  (*(*(v15 - 8) + 56))(v3, 0, 1, v15);
  sub_100004158(&qword_10002C410, &qword_10001EEA0);
  v16 = *(v13 + 16);
  v17 = (*(v13 + 24) + 32) & ~*(v13 + 24);
  *(swift_allocObject() + 16) = xmmword_10001E940;
  sub_10001C998();
  sub_10001C998();
  sub_10001C998();
  sub_10001C998();
  return sub_10001C788();
}

uint64_t sub_100003198()
{
  v0 = sub_100004158(&qword_10002C370, &qword_10001EB28);
  sub_1000041D8(v0, qword_1000324C0);
  sub_1000041A0(v0, qword_1000324C0);
  sub_10000423C();
  return sub_10001C7C8();
}

uint64_t sub_10000321C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_10001C9A8() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000032AC, 0, 0);
}

uint64_t sub_1000032AC()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100004158(&qword_10002C340, qword_10001E950);
  sub_10001C998();
  sub_1000042E4(&qword_10002C428, &qword_10002C430, &qword_10001EEC0);
  *v2 = sub_10001C988();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000033D0()
{
  v0 = sub_10001C948();
  sub_1000041D8(v0, qword_1000324D8);
  sub_1000041A0(v0, qword_1000324D8);
  return sub_10001C928();
}

uint64_t sub_10000343C()
{
  sub_100002BA4();

  return sub_10001C918();
}

uint64_t sub_1000034E4()
{
  v0 = qword_10002C208;

  return v0;
}

unint64_t sub_100003520()
{
  result = qword_10002C378;
  if (!qword_10002C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C378);
  }

  return result;
}

unint64_t sub_100003578()
{
  result = qword_10002C380;
  if (!qword_10002C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C380);
  }

  return result;
}

unint64_t sub_1000035D0()
{
  result = qword_10002C388;
  if (!qword_10002C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C388);
  }

  return result;
}

uint64_t sub_100003674@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C1F8 != -1)
  {
    swift_once();
  }

  v2 = sub_100004158(&qword_10002C370, &qword_10001EB28);
  v3 = sub_1000041A0(v2, qword_1000324C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100003728()
{
  sub_100004290();
  v1 = sub_10001C8E8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100003798()
{
  result = qword_10002C398;
  if (!qword_10002C398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C398);
  }

  return result;
}

unint64_t sub_1000037F0()
{
  result = qword_10002C3A0;
  if (!qword_10002C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C3A0);
  }

  return result;
}

unint64_t sub_100003848()
{
  result = qword_10002C3A8;
  if (!qword_10002C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C3A8);
  }

  return result;
}

unint64_t sub_1000038A0()
{
  result = qword_10002C3B0;
  if (!qword_10002C3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C3B0);
  }

  return result;
}

uint64_t sub_100003900@<X0>(uint64_t *a1@<X8>)
{
  sub_10000423C();
  result = sub_10001C538();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100003944@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C200 != -1)
  {
    swift_once();
  }

  v2 = sub_10001C948();
  v3 = sub_1000041A0(v2, qword_1000324D8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_100003A48(uint64_t a1)
{
  v2 = sub_100002BA4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100003A98()
{
  result = qword_10002C3C8;
  if (!qword_10002C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C3C8);
  }

  return result;
}

uint64_t sub_100003AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100002A68;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100003BB4(uint64_t a1)
{
  v2 = sub_1000038A0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_100003C10(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003C1C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100003C64(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100003CF4()
{
  v0 = (*(*(sub_100004158(&qword_10002C3E0, &unk_10001EE70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v33 = &v25 - v1;
  v34 = sub_10001C8D8();
  v2 = *(v34 - 8);
  v3 = *(v2 + 64);
  (__chkstk_darwin)();
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_100004158(&qword_10002C3E8, &unk_1000213D0) - 8) + 64);
  v7 = (__chkstk_darwin)();
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = sub_100004158(&qword_10002C3F0, &qword_10001EE80);
  v13 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12 - 8);
  v15 = &v25 - v14;
  v16 = sub_10001C9A8();
  v32 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v26 = sub_100004158(&qword_10002C3F8, &qword_10001EE88);
  sub_10001C998();
  v19 = *(v17 + 56);
  v30 = v17 + 56;
  v31 = v19;
  v19(v15, 1, 1, v16);
  v36 = 0;
  v20 = sub_10001C518();
  v21 = *(*(v20 - 8) + 56);
  v21(v11, 1, 1, v20);
  v21(v9, 1, 1, v20);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v22 = *(v2 + 104);
  v27 = v2 + 104;
  v28 = v22;
  v22(v5);
  sub_100002BA4();
  v26 = sub_10001C598();
  sub_100004158(&qword_10002C400, &unk_10001EE90);
  sub_10001C998();
  v31(v15, 1, 1, v32);
  v35 = 2;
  v23 = sub_10001CAD8();
  (*(*(v23 - 8) + 56))(v33, 1, 1, v23);
  v21(v11, 1, 1, v20);
  v28(v5, v29, v34);
  sub_10001C5A8();
  return v26;
}

uint64_t sub_100004158(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000041A0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000041D8(uint64_t a1, uint64_t *a2)
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

unint64_t sub_10000423C()
{
  result = qword_10002C418;
  if (!qword_10002C418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C418);
  }

  return result;
}

unint64_t sub_100004290()
{
  result = qword_10002C420;
  if (!qword_10002C420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C420);
  }

  return result;
}

uint64_t sub_1000042E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100001CCC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000432C()
{
  result = qword_10002C438;
  if (!qword_10002C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C438);
  }

  return result;
}

uint64_t sub_100004380(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004158(&qword_10002C440, &unk_10001FA10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004430@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_100004158(&qword_10002C448, &unk_10001F460);
  v27 = *(v1 - 8);
  v2 = *(v27 + 64);
  __chkstk_darwin(v1);
  v4 = &v27 - v3;
  v5 = sub_100004158(&qword_10002C450, &unk_10001EF70);
  v6 = *(v5 - 8);
  v28 = v5;
  v29 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_100004158(&qword_10002C458, &unk_10001F470);
  v11 = *(v10 - 8);
  v30 = v10;
  v31 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = sub_100004158(&qword_10002C460, &qword_10001EF80);
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  swift_getKeyPath();
  sub_100004A7C();
  sub_10001CA78();
  sub_10001C9D8();
  v20 = sub_100004AD0();
  sub_10001CA08();

  (*(v27 + 8))(v4, v1);
  sub_10001C9D8();
  v35 = v1;
  v36 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v28;
  sub_10001C9E8();

  (*(v29 + 8))(v9, v22);
  v35 = v22;
  v36 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v30;
  sub_10001CA18();
  (*(v31 + 8))(v14, v24);
  v35 = v24;
  v36 = v23;
  swift_getOpaqueTypeConformance2();
  v25 = v32;
  sub_10001C9F8();
  return (*(v33 + 8))(v19, v25);
}

uint64_t sub_1000048F8@<X0>(uint64_t a1@<X8>)
{
  sub_10001C9D8();
  result = sub_10001CA28();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100004970@<X0>(uint64_t a1@<X8>)
{
  sub_10001C9D8();
  result = sub_10001CA28();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000049E8@<X0>(uint64_t a1@<X8>)
{
  sub_10001C9D8();
  result = sub_10001CA28();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_100004A7C()
{
  result = qword_10002C468;
  if (!qword_10002C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C468);
  }

  return result;
}

unint64_t sub_100004AD0()
{
  result = qword_10002C470;
  if (!qword_10002C470)
  {
    sub_100001CCC(&qword_10002C448, &unk_10001F460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C470);
  }

  return result;
}

uint64_t sub_100004B34()
{
  sub_100001CCC(&qword_10002C460, &qword_10001EF80);
  sub_100001CCC(&qword_10002C458, &unk_10001F470);
  sub_100001CCC(&qword_10002C450, &unk_10001EF70);
  sub_100001CCC(&qword_10002C448, &unk_10001F460);
  sub_100004AD0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100004C58()
{
  result = qword_10002C478;
  if (!qword_10002C478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C478);
  }

  return result;
}

unint64_t sub_100004CB0()
{
  result = qword_10002C480;
  if (!qword_10002C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C480);
  }

  return result;
}

unint64_t sub_100004D08()
{
  result = qword_10002C488;
  if (!qword_10002C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C488);
  }

  return result;
}

uint64_t sub_100004D5C()
{
  v0 = sub_10001C948();
  sub_1000041D8(v0, qword_1000324F0);
  sub_1000041A0(v0, qword_1000324F0);
  return sub_10001C928();
}

uint64_t sub_100004DC0(unsigned __int8 a1)
{
  v2 = sub_100004158(&qword_10002C408, &qword_10001F3C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v32 - v4;
  v6 = sub_100004158(&qword_10002C3F0, &qword_10001EE80);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v32 - v8;
  v10 = sub_10001C9A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 != 6)
      {
        sub_10001C998();
        sub_10001C998();
        (*(v11 + 56))(v9, 0, 1, v10);
        v31 = sub_10001C768();
        (*(*(v31 - 8) + 56))(v5, 1, 1, v31);
        goto LABEL_14;
      }
    }

    else if (a1 != 4)
    {
      sub_10001C998();
      sub_10001C998();
      v27 = *(v11 + 56);
      v26 = v11 + 56;
      v27(v9, 0, 1, v10);
      sub_10001C758();
      v28 = sub_10001C768();
      (*(*(v28 - 8) + 56))(v5, 0, 1, v28);
      sub_100004158(&qword_10002C410, &qword_10001EEA0);
      v29 = *(v26 + 16);
      v30 = (*(v26 + 24) + 32) & ~*(v26 + 24);
      *(swift_allocObject() + 16) = xmmword_10001E940;
      sub_10001C998();
      sub_10001C998();
      sub_10001C998();
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (a1 > 1u)
  {
LABEL_10:
    sub_10001C998();
    sub_10001C998();
    (*(v11 + 56))(v9, 0, 1, v10);
    sub_10001C758();
    v20 = sub_10001C768();
    (*(*(v20 - 8) + 56))(v5, 0, 1, v20);
    goto LABEL_14;
  }

  if (!a1)
  {
    sub_10001C998();
    sub_10001C998();
    v15 = *(v11 + 56);
    v14 = v11 + 56;
    v15(v9, 0, 1, v10);
    sub_10001C758();
    v16 = sub_10001C768();
    (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
    sub_100004158(&qword_10002C410, &qword_10001EEA0);
    v17 = *(v14 + 16);
    v18 = (*(v14 + 24) + 32) & ~*(v14 + 24);
    *(swift_allocObject() + 16) = xmmword_10001E940;
    sub_10001C998();
    sub_10001C998();
    sub_10001C998();
    return sub_10001C798();
  }

  sub_10001C998();
  sub_10001C998();
  v22 = *(v11 + 56);
  v21 = v11 + 56;
  v22(v9, 0, 1, v10);
  sub_10001C758();
  v23 = sub_10001C768();
  (*(*(v23 - 8) + 56))(v5, 0, 1, v23);
  sub_100004158(&qword_10002C410, &qword_10001EEA0);
  v24 = *(v21 + 16);
  v25 = (*(v21 + 24) + 32) & ~*(v21 + 24);
  *(swift_allocObject() + 16) = xmmword_10001E940;
  sub_10001C998();
  sub_10001C998();
  sub_10001C998();
LABEL_14:
  sub_10001C998();
  return sub_10001C788();
}

uint64_t sub_100005884(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007184;

  return sub_100006BE8(a1);
}

uint64_t sub_10000592C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000059D0;

  return sub_100006DF8();
}

uint64_t sub_1000059D0(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100005AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100005BA4;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100005BA4(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_100005CA8()
{
  result = qword_10002C490;
  if (!qword_10002C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C490);
  }

  return result;
}

unint64_t sub_100005D00()
{
  result = qword_10002C498;
  if (!qword_10002C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C498);
  }

  return result;
}

unint64_t sub_100005D58()
{
  result = qword_10002C4A0;
  if (!qword_10002C4A0)
  {
    sub_100001CCC(&qword_10002C4A8, qword_10001F028);
    sub_100005D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C4A0);
  }

  return result;
}

uint64_t sub_100005DDC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100006370();
  *v6 = v2;
  v6[1] = sub_100002A68;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100005E90(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005F34;

  return sub_100006FFC();
}

uint64_t sub_100005F34(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

unint64_t sub_10000604C()
{
  result = qword_10002C4B0;
  if (!qword_10002C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C4B0);
  }

  return result;
}

uint64_t sub_1000060A0()
{
  v0 = sub_100004158(&qword_10002C520, &qword_10001F3C8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100004158(&qword_10002C528, &qword_10001F3D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100004D08();
  sub_10001C8B8();
  v9._object = 0x800000010001DC20;
  v9._countAndFlagsBits = 0xD000000000000040;
  sub_10001C8A8(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_10001C898();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_10001C8A8(v10);
  return sub_10001C8C8();
}

unint64_t sub_100006268()
{
  result = qword_10002C4B8;
  if (!qword_10002C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C4B8);
  }

  return result;
}

unint64_t sub_1000062C0()
{
  result = qword_10002C4C0;
  if (!qword_10002C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C4C0);
  }

  return result;
}

unint64_t sub_100006318()
{
  result = qword_10002C4C8;
  if (!qword_10002C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C4C8);
  }

  return result;
}

unint64_t sub_100006370()
{
  result = qword_10002C4D0;
  if (!qword_10002C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C4D0);
  }

  return result;
}

unint64_t sub_1000063C8()
{
  result = qword_10002C4D8;
  if (!qword_10002C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C4D8);
  }

  return result;
}

uint64_t sub_10000641C()
{
  sub_10000696C();
  v1 = sub_10001C838();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10000648C()
{
  result = qword_10002C4E0;
  if (!qword_10002C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C4E0);
  }

  return result;
}

unint64_t sub_1000064E4()
{
  result = qword_10002C4E8;
  if (!qword_10002C4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C4E8);
  }

  return result;
}

unint64_t sub_10000653C()
{
  result = qword_10002C4F0;
  if (!qword_10002C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C4F0);
  }

  return result;
}

unint64_t sub_100006594()
{
  result = qword_10002C4F8;
  if (!qword_10002C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C4F8);
  }

  return result;
}

uint64_t sub_1000065F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C218 != -1)
  {
    swift_once();
  }

  v2 = sub_10001C948();
  v3 = sub_1000041A0(v2, qword_1000324F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1000066A0()
{
  result = qword_10002C500;
  if (!qword_10002C500)
  {
    sub_100001CCC(&qword_10002C508, &qword_10001F298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C500);
  }

  return result;
}

uint64_t sub_100006704(uint64_t a1)
{
  v2 = sub_100004D08();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100006754()
{
  result = qword_10002C510;
  if (!qword_10002C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C510);
  }

  return result;
}

uint64_t sub_1000067B0(uint64_t a1)
{
  v2 = sub_10000653C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for FreeformSettingsDestinations(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FreeformSettingsDestinations(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000696C()
{
  result = qword_10002C518;
  if (!qword_10002C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C518);
  }

  return result;
}

char *sub_1000069C0(char *a1, int64_t a2, char a3)
{
  result = sub_100006A00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000069E0(char *a1, int64_t a2, char a3)
{
  result = sub_100006AF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100006A00(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004158(&qword_10002C538, &qword_10001F3F0);
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

char *sub_100006AF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004158(&qword_10002C530, &qword_10001F3E0);
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

id sub_100006C08()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v7 = *v3++;
      v6 = v7;
      if (v7 != 6)
      {
        goto LABEL_10;
      }

      result = MobileGestalt_get_current_device();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v9 = result;
      deviceSupportsApplePencil = MobileGestalt_get_deviceSupportsApplePencil();

      if (deviceSupportsApplePencil)
      {
LABEL_10:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000069E0(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v5 = *(&_swiftEmptyArrayStorage + 2);
        v4 = *(&_swiftEmptyArrayStorage + 3);
        if (v5 >= v4 >> 1)
        {
          sub_1000069E0((v4 > 1), v5 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v5 + 1;
        *(&_swiftEmptyArrayStorage + v5 + 32) = v6;
      }

      --v2;
    }

    while (v2);
  }

  v11 = *(&_swiftEmptyArrayStorage + 2);
  if (v11)
  {
    sub_1000069C0(0, v11, 0);
    v12 = *(&_swiftEmptyArrayStorage + 2);
    v13 = 32;
    do
    {
      v14 = *(&_swiftEmptyArrayStorage + v13);
      v15 = *(&_swiftEmptyArrayStorage + 3);
      if (v12 >= v15 >> 1)
      {
        sub_1000069C0((v15 > 1), v12 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v12 + 1;
      *(&_swiftEmptyArrayStorage + v12 + 32) = v14;
      ++v13;
      ++v12;
      --v11;
    }

    while (v11);
  }

  v16 = *(v0 + 8);

  return v16(&_swiftEmptyArrayStorage);
}

id sub_100006E14()
{
  for (i = 0; i != 8; ++i)
  {
    v4 = *(&off_100029078 + i + 32);
    if (v4 != 6)
    {
      goto LABEL_9;
    }

    result = MobileGestalt_get_current_device();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    deviceSupportsApplePencil = MobileGestalt_get_deviceSupportsApplePencil();

    if (deviceSupportsApplePencil)
    {
LABEL_9:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000069E0(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
      }

      v3 = *(&_swiftEmptyArrayStorage + 2);
      v2 = *(&_swiftEmptyArrayStorage + 3);
      if (v3 >= v2 >> 1)
      {
        sub_1000069E0((v2 > 1), v3 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v3 + 1;
      *(&_swiftEmptyArrayStorage + v3 + 32) = v4;
    }
  }

  v8 = *(&_swiftEmptyArrayStorage + 2);
  if (v8)
  {
    sub_1000069C0(0, v8, 0);
    v9 = *(&_swiftEmptyArrayStorage + 2);
    v10 = 32;
    do
    {
      v11 = *(&_swiftEmptyArrayStorage + v10);
      v12 = *(&_swiftEmptyArrayStorage + 3);
      if (v9 >= v12 >> 1)
      {
        sub_1000069C0((v12 > 1), v9 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v9 + 1;
      *(&_swiftEmptyArrayStorage + v9 + 32) = v11;
      ++v10;
      ++v9;
      --v8;
    }

    while (v8);
  }

  v13 = *(v0 + 8);

  return v13(&_swiftEmptyArrayStorage);
}

id sub_100007018()
{
  for (i = 0; i != 8; ++i)
  {
    v4 = *(&off_100029078 + i + 32);
    if (v4 != 6)
    {
      goto LABEL_9;
    }

    result = MobileGestalt_get_current_device();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    deviceSupportsApplePencil = MobileGestalt_get_deviceSupportsApplePencil();

    if (deviceSupportsApplePencil)
    {
LABEL_9:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000069E0(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
      }

      v3 = *(&_swiftEmptyArrayStorage + 2);
      v2 = *(&_swiftEmptyArrayStorage + 3);
      if (v3 >= v2 >> 1)
      {
        sub_1000069E0((v2 > 1), v3 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v3 + 1;
      *(&_swiftEmptyArrayStorage + v3 + 32) = v4;
    }
  }

  if (*(&_swiftEmptyArrayStorage + 2))
  {
    v8 = *(&_swiftEmptyArrayStorage + 32);
  }

  else
  {
    v8 = 8;
  }

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_1000071B4@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_100004158(&qword_10002C448, &unk_10001F460);
  v27 = *(v1 - 8);
  v2 = *(v27 + 64);
  __chkstk_darwin(v1);
  v4 = &v27 - v3;
  v5 = sub_100004158(&qword_10002C450, &unk_10001EF70);
  v6 = *(v5 - 8);
  v28 = v5;
  v29 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_100004158(&qword_10002C458, &unk_10001F470);
  v11 = *(v10 - 8);
  v30 = v10;
  v31 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = sub_100004158(&qword_10002C460, &qword_10001EF80);
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  swift_getKeyPath();
  sub_100007774();
  sub_10001CA78();
  sub_10001C9D8();
  v20 = sub_100004AD0();
  sub_10001CA08();

  (*(v27 + 8))(v4, v1);
  sub_10001C9D8();
  v35 = v1;
  v36 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v28;
  sub_10001C9E8();

  (*(v29 + 8))(v9, v22);
  v35 = v22;
  v36 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v30;
  sub_10001CA18();
  (*(v31 + 8))(v14, v24);
  v35 = v24;
  v36 = v23;
  swift_getOpaqueTypeConformance2();
  v25 = v32;
  sub_10001C9F8();
  return (*(v33 + 8))(v19, v25);
}

uint64_t sub_100007678@<X0>(uint64_t a1@<X8>)
{
  sub_10001C9D8();
  result = sub_10001CA28();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000076F0@<X0>(uint64_t a1@<X8>)
{
  sub_10001C9D8();
  result = sub_10001CA28();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_100007774()
{
  result = qword_10002C540;
  if (!qword_10002C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C540);
  }

  return result;
}

void sub_1000077C8()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_10001CAA8();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    qword_100032508 = v2;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10000785C()
{
  result = qword_10002C558;
  if (!qword_10002C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C558);
  }

  return result;
}

uint64_t sub_1000078F4()
{
  v0 = sub_10001C9A8();
  sub_1000041D8(v0, qword_100032510);
  sub_1000041A0(v0, qword_100032510);
  return sub_10001C998();
}

uint64_t sub_100007958()
{
  v0 = sub_100004158(&qword_10002C440, &unk_10001FA10);
  sub_1000041D8(v0, qword_100032528);
  v1 = sub_1000041A0(v0, qword_100032528);
  sub_10001C728();
  v2 = sub_10001C738();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100007A18()
{
  result = swift_getKeyPath();
  qword_100032540 = result;
  return result;
}

uint64_t sub_100007A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return _swift_task_switch(sub_100007A64, 0, 0);
}

uint64_t sub_100007A64()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_10001C558();
  v3 = *(v0 + 16);
  *(v0 + 24) = v3;
  *(v0 + 72) = v3;
  sub_10001C558();
  *(v0 + 145) = *(v0 + 144);
  if (qword_10002C238 != -1)
  {
    swift_once();
  }

  v4 = qword_100032540;
  *(v0 + 80) = qword_100032540;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v7 = sub_1000042E4(&qword_10002C608, &qword_10002C610, &qword_10001F9D8);
  *(v0 + 96) = v7;
  *v6 = v0;
  v6[1] = sub_100007BC8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 145, v4, &type metadata for Bool, v7);
}

uint64_t sub_100007BC8()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v5 = sub_100002468;
  }

  else
  {
    v5 = sub_100007D1C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100007D1C()
{
  v1 = v0[7];
  sub_10001C558();
  v2 = v0[4];
  v0[5] = v2;
  v3 = qword_100032540;
  v0[14] = v2;
  v0[15] = v3;
  v4 = async function pointer to AppEntity._value<A, B>(for:)[1];

  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_10000228C;
  v6 = v0[12];

  return AppEntity._value<A, B>(for:)(v0 + 146, v3, v6);
}

uint64_t (*sub_100007DF4(uint64_t *a1))()
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
  v4 = *v1;
  *(v3 + 32) = sub_10001C548();
  return sub_100002590;
}

uint64_t (*sub_100007E68(uint64_t *a1))()
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
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_10001C548();
  return sub_1000043F0;
}

uint64_t sub_100007EDC()
{
  if (qword_10002C238 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100007F3C()
{
  result = qword_10002C570;
  if (!qword_10002C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C570);
  }

  return result;
}

unint64_t sub_100007F94()
{
  result = qword_10002C578;
  if (!qword_10002C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C578);
  }

  return result;
}

uint64_t sub_10000806C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C228 != -1)
  {
    swift_once();
  }

  v2 = sub_10001C9A8();
  v3 = sub_1000041A0(v2, qword_100032510);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100008114@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C230 != -1)
  {
    swift_once();
  }

  v2 = sub_100004158(&qword_10002C440, &unk_10001FA10);
  v3 = sub_1000041A0(v2, qword_100032528);

  return sub_100004380(v3, a1);
}

uint64_t sub_100008198(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002A68;

  return sub_100007A40(a1, v5, v4);
}

uint64_t sub_100008244@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100009198();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10000828C()
{
  result = qword_10002C580;
  if (!qword_10002C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C580);
  }

  return result;
}

unint64_t sub_1000082E4()
{
  result = qword_10002C588;
  if (!qword_10002C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C588);
  }

  return result;
}

uint64_t sub_100008358()
{
  if (qword_10002C220 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  *v1 = sub_100018B38(5) & 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100008424()
{
  if (qword_10002C220 != -1)
  {
    swift_once();
  }

  v1 = qword_100032508;
  *(v0 + 16) = *(v0 + 17);
  [v1 setObject:sub_10001CB28() forKey:@"CRLSelectAndScrollWithApplePencil"];
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000084FC()
{
  v0 = sub_100004158(&qword_10002C408, &qword_10001F3C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v15 - v2;
  v4 = sub_100004158(&qword_10002C3F0, &qword_10001EE80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_10001C9A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  if (qword_10002C248 != -1)
  {
    swift_once();
  }

  v12 = sub_10001C948();
  sub_1000041A0(v12, qword_100032560);
  swift_beginAccess();
  sub_10001C938();
  swift_endAccess();
  sub_10001C998();
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_10001C758();
  v13 = sub_10001C768();
  (*(*(v13 - 8) + 56))(v3, 0, 1, v13);
  sub_10001C998();
  return sub_10001C788();
}

uint64_t sub_1000087B8()
{
  v0 = sub_100004158(&qword_10002C598, &qword_10001F688);
  sub_1000041D8(v0, qword_100032548);
  sub_1000041A0(v0, qword_100032548);
  sub_100007774();
  return sub_10001C7C8();
}

uint64_t sub_10000883C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_10001C9A8() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000088CC, 0, 0);
}

uint64_t sub_1000088CC()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100004158(&qword_10002C568, qword_10001F4B0);
  sub_10001C998();
  sub_1000042E4(&qword_10002C608, &qword_10002C610, &qword_10001F9D8);
  *v2 = sub_10001C988();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000089EC()
{
  v0 = sub_10001C948();
  sub_1000041D8(v0, qword_100032560);
  sub_1000041A0(v0, qword_100032560);
  return sub_10001C928();
}

uint64_t sub_100008A50()
{
  sub_10000828C();

  return sub_10001C918();
}

uint64_t sub_100008AF8()
{
  v0 = qword_10002C548;

  return v0;
}

unint64_t sub_100008B34()
{
  result = qword_10002C5A0;
  if (!qword_10002C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C5A0);
  }

  return result;
}

unint64_t sub_100008B8C()
{
  result = qword_10002C5A8;
  if (!qword_10002C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C5A8);
  }

  return result;
}

unint64_t sub_100008BE4()
{
  result = qword_10002C5B0;
  if (!qword_10002C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C5B0);
  }

  return result;
}

uint64_t sub_100008C7C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C240 != -1)
  {
    swift_once();
  }

  v2 = sub_100004158(&qword_10002C598, &qword_10001F688);
  v3 = sub_1000041A0(v2, qword_100032548);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100008D30()
{
  sub_1000095FC();
  v1 = sub_10001C8E8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100008DA0()
{
  result = qword_10002C5C0;
  if (!qword_10002C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C5C0);
  }

  return result;
}

unint64_t sub_100008DF8()
{
  result = qword_10002C5C8;
  if (!qword_10002C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C5C8);
  }

  return result;
}

unint64_t sub_100008E50()
{
  result = qword_10002C5D0;
  if (!qword_10002C5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C5D0);
  }

  return result;
}

unint64_t sub_100008EA8()
{
  result = qword_10002C5D8;
  if (!qword_10002C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C5D8);
  }

  return result;
}

uint64_t sub_100008EFC@<X0>(uint64_t *a1@<X8>)
{
  sub_100007774();
  result = sub_10001C538();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100008F3C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C248 != -1)
  {
    swift_once();
  }

  v2 = sub_10001C948();
  v3 = sub_1000041A0(v2, qword_100032560);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_100009040(uint64_t a1)
{
  v2 = sub_10000828C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100009090()
{
  result = qword_10002C5F0;
  if (!qword_10002C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C5F0);
  }

  return result;
}

uint64_t sub_1000090E8(uint64_t a1)
{
  v2 = sub_100008EA8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100009198()
{
  v0 = sub_100004158(&qword_10002C3E0, &unk_10001EE70);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v35 = &v27 - v2;
  v36 = sub_10001C8D8();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004158(&qword_10002C3E8, &unk_1000213D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_100004158(&qword_10002C3F0, &qword_10001EE80);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_10001C9A8();
  v34 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v28 = sub_100004158(&qword_10002C5F8, &qword_10001F9B8);
  sub_10001C998();
  v21 = *(v19 + 56);
  v32 = v19 + 56;
  v33 = v21;
  v21(v17, 1, 1, v18);
  v38 = 0;
  v22 = sub_10001C518();
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v29 = v3 + 104;
  v30 = v24;
  v24(v6);
  sub_10000828C();
  v28 = sub_10001C598();
  sub_100004158(&qword_10002C400, &unk_10001EE90);
  sub_10001C998();
  v33(v17, 1, 1, v34);
  v37 = 2;
  v25 = sub_10001CAD8();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v30(v6, v31, v36);
  sub_10001C5A8();
  return v28;
}

unint64_t sub_1000095FC()
{
  result = qword_10002C600;
  if (!qword_10002C600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C600);
  }

  return result;
}

uint64_t sub_10000966C()
{
  v0 = sub_10001C948();
  sub_1000041D8(v0, qword_100032578);
  sub_1000041A0(v0, qword_100032578);
  return sub_10001C928();
}

uint64_t sub_1000096D0()
{
  v0 = sub_100004158(&qword_10002C408, &qword_10001F3C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v51 - v2;
  v4 = sub_100004158(&qword_10002C3F0, &qword_10001EE80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v51 - v6;
  v8 = sub_10001C9A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v75 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v67 = &v51 - v13;
  sub_100004158(&qword_10002C690, "&*");
  v14 = sub_100004158(&qword_10002C698, &qword_100021470);
  v72 = v14;
  v15 = *(v14 - 8);
  v68 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v57 = 8 * v68;
  v17 = swift_allocObject();
  v58 = v17;
  *(v17 + 16) = xmmword_10001FA20;
  v18 = v17 + v16;
  v73 = *(v14 + 48);
  *(v17 + v16) = 0;
  sub_10001C998();
  sub_10001C998();
  v69 = *(v9 + 56);
  v19 = v8;
  v66 = v8;
  v69(v7, 0, 1, v8);
  v74 = "Apps → Freeform";
  sub_10001C758();
  v76 = sub_10001C768();
  v20 = *(v76 - 8);
  v77 = *(v20 + 56);
  v71 = v20 + 56;
  v77(v3, 0, 1, v76);
  v21 = sub_100004158(&qword_10002C410, &qword_10001EEA0);
  v70 = v9 + 56;
  v22 = *(v9 + 72);
  v23 = *(v9 + 80);
  v24 = (v23 + 32) & ~v23;
  v63 = 3 * v22;
  v64 = v23;
  v62 = v22;
  v59 = 2 * v22;
  v60 = v21;
  v25 = swift_allocObject();
  v61 = xmmword_10001E940;
  *(v25 + 16) = xmmword_10001E940;
  sub_10001C998();
  sub_10001C998();
  sub_10001C998();
  v65 = v18;
  sub_10001C798();
  v52 = v18 + v68;
  v53 = *(v72 + 48);
  *v52 = 1;
  sub_10001C998();
  v73 = "update on Snap to Grid";
  v51 = v7;
  sub_10001C998();
  v69(v7, 0, 1, v19);
  v26 = v3;
  sub_10001C758();
  v77(v3, 0, 1, v76);
  v54 = v24;
  *(swift_allocObject() + 16) = v61;
  sub_10001C998();
  v55 = 0xD000000000000011;
  sub_10001C998();
  v56 = 0xD000000000000010;
  sub_10001C998();
  sub_10001C998();
  v27 = v51;
  sub_10001C788();
  v28 = v68;
  v53 = 2 * v68;
  v29 = v65;
  v52 = *(v72 + 48);
  *(v65 + 2 * v68) = 2;
  sub_10001C998();
  sub_10001C998();
  v30 = v66;
  v31 = v69;
  v69(v27, 0, 1, v66);
  sub_10001C758();
  v77(v26, 0, 1, v76);
  sub_10001C998();
  sub_10001C788();
  v32 = (v29 + v53 + v28);
  v33 = v72;
  v53 = *(v72 + 48);
  *v32 = 3;
  sub_10001C998();
  v34 = v27;
  sub_10001C998();
  v31(v27, 0, 1, v30);
  sub_10001C758();
  v35 = v26;
  v36 = v76;
  v77(v26, 0, 1, v76);
  sub_10001C998();
  sub_10001C788();
  v37 = v68;
  v53 = 4 * v68;
  v38 = v65;
  v52 = *(v33 + 48);
  *(v65 + 4 * v68) = 4;
  sub_10001C998();
  sub_10001C998();
  v39 = v69;
  v69(v34, 0, 1, v66);
  sub_10001C758();
  v40 = v36;
  v41 = v77;
  v77(v26, 0, 1, v40);
  sub_10001C998();
  sub_10001C788();
  v52 = v38 + v53 + v37;
  v53 = *(v72 + 48);
  *v52 = 5;
  sub_10001C998();
  sub_10001C998();
  v42 = v66;
  v39(v34, 0, 1, v66);
  sub_10001C758();
  v41(v26, 0, 1, v76);
  *(swift_allocObject() + 16) = v61;
  sub_10001C998();
  sub_10001C998();
  sub_10001C998();
  sub_10001C998();
  sub_10001C788();
  v43 = v65;
  v44 = v68;
  v45 = v72;
  v64 = *(v72 + 48);
  *(v65 + 6 * v68) = 6;
  sub_10001C998();
  sub_10001C998();
  v46 = v69;
  v69(v34, 0, 1, v42);
  sub_10001C758();
  v77(v35, 0, 1, v76);
  sub_10001C998();
  sub_10001C788();
  v47 = (v43 + v57 - v44);
  v48 = *(v45 + 48);
  *v47 = 7;
  sub_10001C998();
  sub_10001C998();
  v46(v34, 0, 1, v66);
  sub_10001C758();
  v77(v35, 0, 1, v76);
  sub_10001C998();
  sub_10001C788();
  v49 = sub_100014024(v58);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100032590 = v49;
  return result;
}

uint64_t sub_10000A3DC()
{
  v0 = sub_100004158(&qword_10002C6A8, &qword_10001FD58);
  sub_1000041D8(v0, qword_100032598);
  sub_1000041A0(v0, qword_100032598);
  sub_100004158(&qword_10002C6B0, &unk_10001FD60);
  v1 = sub_100004158(&qword_10002C6B8, &qword_100021480);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10001FA20;
  v5 = v4 + v3;
  v6 = *(v1 + 48);
  *(v4 + v3) = 0;
  sub_10000A900();
  sub_10001C868();
  v7 = *(v1 + 48);
  *(v5 + v2) = 1;
  sub_10001C868();
  v8 = *(v1 + 48);
  *(v5 + 2 * v2) = 2;
  sub_10001C868();
  v9 = *(v1 + 48);
  *(v5 + 3 * v2) = 3;
  sub_10001C868();
  v10 = *(v1 + 48);
  *(v5 + 4 * v2) = 4;
  sub_10001C868();
  v11 = *(v1 + 48);
  *(v5 + 5 * v2) = 5;
  sub_10001C868();
  v12 = *(v1 + 48);
  *(v5 + 6 * v2) = 6;
  sub_10001C868();
  v13 = *(v1 + 48);
  *(v5 + 7 * v2) = 7;
  sub_10001C868();
  sub_10001420C(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_10001C888();
}

unint64_t sub_10000A730()
{
  result = qword_10002C618;
  if (!qword_10002C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C618);
  }

  return result;
}

uint64_t sub_10000A7A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000B120(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10000A7D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1953460082;
  v5 = 0xEF6C6C6F72635364;
  v6 = 0x6E417463656C6573;
  if (v2 != 6)
  {
    v6 = 0x6564497465736572;
    v5 = 0xEF7265696669746ELL;
  }

  v7 = 0xED00007365646975;
  v8 = 0x47676E6963617073;
  if (v2 != 4)
  {
    v8 = 0x72476F5470616E73;
    v7 = 0xEA00000000006469;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC00000073656469;
  v10 = 0x75477265746E6563;
  if (v2 != 2)
  {
    v10 = 0x6469754765676465;
    v9 = 0xEA00000000007365;
  }

  if (*v1)
  {
    v4 = 0x746E69486874616DLL;
    v3 = 0xE900000000000073;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_10000A900()
{
  result = qword_10002C620;
  if (!qword_10002C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C620);
  }

  return result;
}

unint64_t sub_10000A958()
{
  result = qword_10002C628;
  if (!qword_10002C628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C628);
  }

  return result;
}

uint64_t sub_10000A9AC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C260 != -1)
  {
    swift_once();
  }

  v2 = sub_100004158(&qword_10002C6A8, &qword_10001FD58);
  v3 = sub_1000041A0(v2, qword_100032598);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10000AA64()
{
  result = qword_10002C630;
  if (!qword_10002C630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C630);
  }

  return result;
}

unint64_t sub_10000AABC()
{
  result = qword_10002C638;
  if (!qword_10002C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C638);
  }

  return result;
}

unint64_t sub_10000AB14()
{
  result = qword_10002C640;
  if (!qword_10002C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C640);
  }

  return result;
}

uint64_t sub_10000AB74()
{
  sub_10000B0CC();
  v1 = sub_10001C7B8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10000ABE4()
{
  result = qword_10002C648;
  if (!qword_10002C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C648);
  }

  return result;
}

unint64_t sub_10000AC3C()
{
  result = qword_10002C650;
  if (!qword_10002C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C650);
  }

  return result;
}

unint64_t sub_10000AC94()
{
  result = qword_10002C658;
  if (!qword_10002C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C658);
  }

  return result;
}

unint64_t sub_10000ACEC()
{
  result = qword_10002C660;
  if (!qword_10002C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C660);
  }

  return result;
}

uint64_t sub_10000AD40@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C250 != -1)
  {
    swift_once();
  }

  v2 = sub_10001C948();
  v3 = sub_1000041A0(v2, qword_100032578);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000AE38(uint64_t a1)
{
  v2 = sub_10000A900();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000AE88()
{
  result = qword_10002C668;
  if (!qword_10002C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C668);
  }

  return result;
}

unint64_t sub_10000AEE0()
{
  result = qword_10002C670;
  if (!qword_10002C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C670);
  }

  return result;
}

unint64_t sub_10000AF38()
{
  result = qword_10002C678;
  if (!qword_10002C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C678);
  }

  return result;
}

uint64_t sub_10000AF8C()
{
  if (qword_10002C258 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10000AFE8(uint64_t a1)
{
  v2 = sub_10000ACEC();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10000B038()
{
  result = qword_10002C680;
  if (!qword_10002C680)
  {
    sub_100001CCC(&qword_10002C688, &qword_10001FCF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C680);
  }

  return result;
}

unint64_t sub_10000B0CC()
{
  result = qword_10002C6A0;
  if (!qword_10002C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C6A0);
  }

  return result;
}

uint64_t sub_10000B120(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000290A0;
  v6._object = a2;
  v4 = sub_10001CB08(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10000B178()
{
  result = qword_10002C6D0;
  if (!qword_10002C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C6D0);
  }

  return result;
}

uint64_t sub_10000B210()
{
  v0 = sub_10001C9A8();
  sub_1000041D8(v0, qword_1000325B0);
  sub_1000041A0(v0, qword_1000325B0);
  return sub_10001C998();
}

uint64_t sub_10000B274()
{
  v0 = sub_100004158(&qword_10002C440, &unk_10001FA10);
  sub_1000041D8(v0, qword_1000325C8);
  v1 = sub_1000041A0(v0, qword_1000325C8);
  sub_10001C728();
  v2 = sub_10001C738();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10000B334()
{
  result = swift_getKeyPath();
  qword_1000325E0 = result;
  return result;
}

uint64_t sub_10000B35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return _swift_task_switch(sub_10000B380, 0, 0);
}

uint64_t sub_10000B380()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_10001C558();
  v3 = *(v0 + 16);
  *(v0 + 24) = v3;
  *(v0 + 72) = v3;
  sub_10001C558();
  *(v0 + 145) = *(v0 + 144);
  if (qword_10002C278 != -1)
  {
    swift_once();
  }

  v4 = qword_1000325E0;
  *(v0 + 80) = qword_1000325E0;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v7 = sub_1000042E4(&qword_10002C788, &qword_10002C790, &qword_100020298);
  *(v0 + 96) = v7;
  *v6 = v0;
  v6[1] = sub_10000B4E4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 145, v4, &type metadata for Bool, v7);
}

uint64_t sub_10000B4E4()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v5 = sub_100002468;
  }

  else
  {
    v5 = sub_10000B638;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000B638()
{
  v1 = v0[7];
  sub_10001C558();
  v2 = v0[4];
  v0[5] = v2;
  v3 = qword_1000325E0;
  v0[14] = v2;
  v0[15] = v3;
  v4 = async function pointer to AppEntity._value<A, B>(for:)[1];

  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_10000228C;
  v6 = v0[12];

  return AppEntity._value<A, B>(for:)(v0 + 146, v3, v6);
}

uint64_t (*sub_10000B710(uint64_t *a1))()
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
  v4 = *v1;
  *(v3 + 32) = sub_10001C548();
  return sub_100002590;
}

uint64_t (*sub_10000B784(uint64_t *a1))()
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
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_10001C548();
  return sub_1000043F0;
}

uint64_t sub_10000B7F8()
{
  if (qword_10002C278 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10000B858()
{
  result = qword_10002C6E8;
  if (!qword_10002C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C6E8);
  }

  return result;
}

unint64_t sub_10000B8B0()
{
  result = qword_10002C6F0;
  if (!qword_10002C6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C6F0);
  }

  return result;
}

uint64_t sub_10000B988@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C268 != -1)
  {
    swift_once();
  }

  v2 = sub_10001C9A8();
  v3 = sub_1000041A0(v2, qword_1000325B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000BA30@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C270 != -1)
  {
    swift_once();
  }

  v2 = sub_100004158(&qword_10002C440, &unk_10001FA10);
  v3 = sub_1000041A0(v2, qword_1000325C8);

  return sub_100004380(v3, a1);
}

uint64_t sub_10000BAB4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002A68;

  return sub_10000B35C(a1, v5, v4);
}

uint64_t sub_10000BB60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000CA84();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10000BBA8()
{
  result = qword_10002C6F8;
  if (!qword_10002C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C6F8);
  }

  return result;
}

unint64_t sub_10000BC00()
{
  result = qword_10002C700;
  if (!qword_10002C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C700);
  }

  return result;
}

uint64_t sub_10000BC74()
{
  if (qword_10002C220 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  *v1 = sub_100018B38(2) & 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000BD40()
{
  if (qword_10002C220 != -1)
  {
    swift_once();
  }

  v1 = qword_100032508;
  *(v0 + 16) = *(v0 + 17);
  [v1 setObject:sub_10001CB28() forKey:@"CRLDisplaySpacingGuides"];
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000BE18()
{
  v0 = sub_100004158(&qword_10002C408, &qword_10001F3C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v15 - v2;
  v4 = sub_100004158(&qword_10002C3F0, &qword_10001EE80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_10001C9A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  if (qword_10002C288 != -1)
  {
    swift_once();
  }

  v12 = sub_10001C948();
  sub_1000041A0(v12, qword_100032600);
  swift_beginAccess();
  sub_10001C938();
  swift_endAccess();
  sub_10001C998();
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_10001C758();
  v13 = sub_10001C768();
  (*(*(v13 - 8) + 56))(v3, 0, 1, v13);
  sub_10001C998();
  return sub_10001C788();
}

uint64_t sub_10000C0D4()
{
  v0 = sub_100004158(&qword_10002C710, &qword_10001FF48);
  sub_1000041D8(v0, qword_1000325E8);
  sub_1000041A0(v0, qword_1000325E8);
  sub_10000CEE8();
  return sub_10001C7C8();
}

uint64_t sub_10000C158(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_10001C9A8() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10000C1E8, 0, 0);
}

uint64_t sub_10000C1E8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100004158(&qword_10002C6E0, qword_10001FD70);
  sub_10001C998();
  sub_1000042E4(&qword_10002C788, &qword_10002C790, &qword_100020298);
  *v2 = sub_10001C988();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10000C310()
{
  v0 = sub_10001C948();
  sub_1000041D8(v0, qword_100032600);
  sub_1000041A0(v0, qword_100032600);
  return sub_10001C928();
}

uint64_t sub_10000C380()
{
  sub_10000BBA8();

  return sub_10001C918();
}

uint64_t sub_10000C428()
{
  v0 = qword_10002C6C0;

  return v0;
}

unint64_t sub_10000C464()
{
  result = qword_10002C718;
  if (!qword_10002C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C718);
  }

  return result;
}

unint64_t sub_10000C4BC()
{
  result = qword_10002C720;
  if (!qword_10002C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C720);
  }

  return result;
}

unint64_t sub_10000C514()
{
  result = qword_10002C728;
  if (!qword_10002C728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C728);
  }

  return result;
}

uint64_t sub_10000C5AC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C280 != -1)
  {
    swift_once();
  }

  v2 = sub_100004158(&qword_10002C710, &qword_10001FF48);
  v3 = sub_1000041A0(v2, qword_1000325E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000C660()
{
  sub_10000CF3C();
  v1 = sub_10001C8E8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10000C6D0()
{
  result = qword_10002C738;
  if (!qword_10002C738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C738);
  }

  return result;
}

unint64_t sub_10000C728()
{
  result = qword_10002C740;
  if (!qword_10002C740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C740);
  }

  return result;
}

unint64_t sub_10000C780()
{
  result = qword_10002C748;
  if (!qword_10002C748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C748);
  }

  return result;
}

unint64_t sub_10000C7D8()
{
  result = qword_10002C750;
  if (!qword_10002C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C750);
  }

  return result;
}

uint64_t sub_10000C82C@<X0>(uint64_t *a1@<X8>)
{
  sub_10000CEE8();
  result = sub_10001C538();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000C86C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C288 != -1)
  {
    swift_once();
  }

  v2 = sub_10001C948();
  v3 = sub_1000041A0(v2, qword_100032600);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_10000C970(uint64_t a1)
{
  v2 = sub_10000BBA8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000C9C0()
{
  result = qword_10002C768;
  if (!qword_10002C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C768);
  }

  return result;
}

uint64_t sub_10000CA18(uint64_t a1)
{
  v2 = sub_10000C7D8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000CA84()
{
  v0 = sub_100004158(&qword_10002C3E0, &unk_10001EE70);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v35 = &v27 - v2;
  v36 = sub_10001C8D8();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004158(&qword_10002C3E8, &unk_1000213D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_100004158(&qword_10002C3F0, &qword_10001EE80);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_10001C9A8();
  v34 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v28 = sub_100004158(&qword_10002C770, &qword_100020278);
  sub_10001C998();
  v21 = *(v19 + 56);
  v32 = v19 + 56;
  v33 = v21;
  v21(v17, 1, 1, v18);
  v38 = 0;
  v22 = sub_10001C518();
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v29 = v3 + 104;
  v30 = v24;
  v24(v6);
  sub_10000BBA8();
  v28 = sub_10001C598();
  sub_100004158(&qword_10002C400, &unk_10001EE90);
  sub_10001C998();
  v33(v17, 1, 1, v34);
  v37 = 2;
  v25 = sub_10001CAD8();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v30(v6, v31, v36);
  sub_10001C5A8();
  return v28;
}

unint64_t sub_10000CEE8()
{
  result = qword_10002C778;
  if (!qword_10002C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C778);
  }

  return result;
}

unint64_t sub_10000CF3C()
{
  result = qword_10002C780;
  if (!qword_10002C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C780);
  }

  return result;
}

uint64_t sub_10000CFAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x800000010001D190;
    if (a1 == 6)
    {
      v10 = 0xD000000000000012;
    }

    else
    {
      v10 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v9 = 0x800000010001D1B0;
    }

    v11 = 0x474E494341505323;
    v12 = 0xEF5345444955475FLL;
    if (a1 != 4)
    {
      v11 = 0x4F545F50414E5323;
      v12 = 0xED0000444952475FLL;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE100000000000000;
    v4 = 35;
    v5 = 0x5F5245544E454323;
    v6 = 0xEE00534544495547;
    if (a1 != 2)
    {
      v5 = 0x55475F4547444523;
      v6 = 0xEC00000053454449;
    }

    if (a1)
    {
      v4 = 0x49485F4854414D23;
      v3 = 0xEB0000000053544ELL;
    }

    if (a1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0x800000010001D190;
        if (v7 != 0xD000000000000012)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v13 = 0x800000010001D1B0;
        if (v7 != 0xD000000000000011)
        {
LABEL_49:
          v14 = sub_10001CB18();
          goto LABEL_50;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEF5345444955475FLL;
      if (v7 != 0x474E494341505323)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v13 = 0xED0000444952475FLL;
      if (v7 != 0x4F545F50414E5323)
      {
        goto LABEL_49;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEE00534544495547;
      if (v7 != 0x5F5245544E454323)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v13 = 0xEC00000053454449;
      if (v7 != 0x55475F4547444523)
      {
        goto LABEL_49;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEB0000000053544ELL;
    if (v7 != 0x49485F4854414D23)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v13 = 0xE100000000000000;
    if (v7 != 35)
    {
      goto LABEL_49;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_49;
  }

  v14 = 1;
LABEL_50:

  return v14 & 1;
}

uint64_t sub_10000D298(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x6E417463656C6573;
  v5 = 0xEF6C6C6F72635364;
  if (a1 != 6)
  {
    v4 = 0x6564497465736572;
    v5 = 0xEF7265696669746ELL;
  }

  v6 = 0x47676E6963617073;
  v7 = 0xED00007365646975;
  if (a1 != 4)
  {
    v6 = 0x72476F5470616E73;
    v7 = 0xEA00000000006469;
  }

  if (a1 <= 5u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x75477265746E6563;
  v9 = 0xEC00000073656469;
  if (a1 != 2)
  {
    v8 = 0x6469754765676465;
    v9 = 0xEA00000000007365;
  }

  v10 = 0x746E69486874616DLL;
  if (a1)
  {
    v3 = 0xE900000000000073;
  }

  else
  {
    v10 = 1953460082;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEF6C6C6F72635364;
        if (v11 != 0x6E417463656C6573)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xEF7265696669746ELL;
        if (v11 != 0x6564497465736572)
        {
LABEL_45:
          v14 = sub_10001CB18();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xED00007365646975;
      if (v11 != 0x47676E6963617073)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xEA00000000006469;
      if (v11 != 0x72476F5470616E73)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEC00000073656469;
      if (v11 != 0x75477265746E6563)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xEA00000000007365;
      if (v11 != 0x6469754765676465)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE900000000000073;
    if (v11 != 0x746E69486874616DLL)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE400000000000000;
    if (v11 != 1953460082)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_10000D578()
{
  sub_10001CAC8();
}

uint64_t sub_10000D6D8()
{
  sub_10001CAC8();
}

Swift::Int sub_10000D834()
{
  sub_10001CB38();
  sub_10001CAC8();

  return sub_10001CB58();
}

Swift::Int sub_10000D9A4()
{
  sub_10001CB38();
  sub_10001CAC8();

  return sub_10001CB58();
}

unint64_t sub_10000DB28()
{
  result = qword_10002C798;
  if (!qword_10002C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C798);
  }

  return result;
}

uint64_t sub_10000DB98@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000DEF4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10000DBC8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 35;
  v5 = 0x800000010001D190;
  if (v2 == 6)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (v2 != 6)
  {
    v5 = 0x800000010001D1B0;
  }

  v7 = 0xEF5345444955475FLL;
  v8 = 0x474E494341505323;
  if (v2 != 4)
  {
    v8 = 0x4F545F50414E5323;
    v7 = 0xED0000444952475FLL;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE00534544495547;
  v10 = 0x5F5245544E454323;
  if (v2 != 2)
  {
    v10 = 0x55475F4547444523;
    v9 = 0xEC00000053454449;
  }

  if (*v1)
  {
    v4 = 0x49485F4854414D23;
    v3 = 0xEB0000000053544ELL;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_10000DCFC()
{
  result = qword_10002C7A0;
  if (!qword_10002C7A0)
  {
    sub_100001CCC(&qword_10002C7A8, qword_100020370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7A0);
  }

  return result;
}

unint64_t sub_10000DD70()
{
  v1 = *v0;
  v2 = 35;
  if (v1 == 6)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x474E494341505323;
  if (v1 != 4)
  {
    v4 = 0x4F545F50414E5323;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x5F5245544E454323;
  if (v1 != 2)
  {
    v5 = 0x55475F4547444523;
  }

  if (*v0)
  {
    v2 = 0x49485F4854414D23;
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

uint64_t sub_10000DE9C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_10000DEF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000DEF4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000291A8;
  v6._object = a2;
  v4 = sub_10001CB08(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10000DF40()
{
  v0 = sub_100004158(&qword_10002C7B8, &qword_100020460);

  return TupleWidget.init(_:)(v0, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000DFC8();
  sub_10001C9C8();
  return 0;
}

unint64_t sub_10000DFC8()
{
  result = qword_10002C7B0;
  if (!qword_10002C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7B0);
  }

  return result;
}

unint64_t sub_10000E04C()
{
  result = qword_10002C7C0;
  if (!qword_10002C7C0)
  {
    sub_100001CCC(&qword_10002C7C8, &qword_100020468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7C0);
  }

  return result;
}

uint64_t sub_10000E0DC@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_100004158(&qword_10002C448, &unk_10001F460);
  v27 = *(v1 - 8);
  v2 = *(v27 + 64);
  __chkstk_darwin(v1);
  v4 = &v27 - v3;
  v5 = sub_100004158(&qword_10002C450, &unk_10001EF70);
  v6 = *(v5 - 8);
  v28 = v5;
  v29 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_100004158(&qword_10002C458, &unk_10001F470);
  v11 = *(v10 - 8);
  v30 = v10;
  v31 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = sub_100004158(&qword_10002C460, &qword_10001EF80);
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  swift_getKeyPath();
  sub_10000CEE8();
  sub_10001CA78();
  sub_10001C9D8();
  v20 = sub_100004AD0();
  sub_10001CA08();

  (*(v27 + 8))(v4, v1);
  sub_10001C9D8();
  v35 = v1;
  v36 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v28;
  sub_10001C9E8();

  (*(v29 + 8))(v9, v22);
  v35 = v22;
  v36 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v30;
  sub_10001CA18();
  (*(v31 + 8))(v14, v24);
  v35 = v24;
  v36 = v23;
  swift_getOpaqueTypeConformance2();
  v25 = v32;
  sub_10001C9F8();
  return (*(v33 + 8))(v19, v25);
}

uint64_t sub_10000E5A0@<X0>(uint64_t a1@<X8>)
{
  sub_10001C9D8();
  result = sub_10001CA28();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_10000E624()
{
  result = qword_10002C7E0;
  if (!qword_10002C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7E0);
  }

  return result;
}

uint64_t sub_10000E6BC()
{
  v0 = sub_10001C9A8();
  sub_1000041D8(v0, qword_100032618);
  sub_1000041A0(v0, qword_100032618);
  return sub_10001C998();
}

uint64_t sub_10000E720()
{
  v0 = sub_100004158(&qword_10002C440, &unk_10001FA10);
  sub_1000041D8(v0, qword_100032630);
  v1 = sub_1000041A0(v0, qword_100032630);
  sub_10001C728();
  v2 = sub_10001C738();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10000E7E0()
{
  result = swift_getKeyPath();
  qword_100032648 = result;
  return result;
}

uint64_t sub_10000E808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return _swift_task_switch(sub_10000E82C, 0, 0);
}

uint64_t sub_10000E82C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_10001C558();
  v3 = *(v0 + 16);
  *(v0 + 24) = v3;
  *(v0 + 72) = v3;
  sub_10001C558();
  *(v0 + 145) = *(v0 + 144);
  if (qword_10002C2A0 != -1)
  {
    swift_once();
  }

  v4 = qword_100032648;
  *(v0 + 80) = qword_100032648;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v7 = sub_1000042E4(&qword_10002C890, &qword_10002C898, &qword_100020A18);
  *(v0 + 96) = v7;
  *v6 = v0;
  v6[1] = sub_10000E990;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 145, v4, &type metadata for Bool, v7);
}

uint64_t sub_10000E990()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v5 = sub_100002468;
  }

  else
  {
    v5 = sub_10000EAE4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000EAE4()
{
  v1 = v0[7];
  sub_10001C558();
  v2 = v0[4];
  v0[5] = v2;
  v3 = qword_100032648;
  v0[14] = v2;
  v0[15] = v3;
  v4 = async function pointer to AppEntity._value<A, B>(for:)[1];

  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_10000228C;
  v6 = v0[12];

  return AppEntity._value<A, B>(for:)(v0 + 146, v3, v6);
}

uint64_t (*sub_10000EBBC(uint64_t *a1))()
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
  v4 = *v1;
  *(v3 + 32) = sub_10001C548();
  return sub_100002590;
}

uint64_t (*sub_10000EC30(uint64_t *a1))()
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
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_10001C548();
  return sub_1000043F0;
}

uint64_t sub_10000ECA4()
{
  if (qword_10002C2A0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10000ED04()
{
  result = qword_10002C7F8;
  if (!qword_10002C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7F8);
  }

  return result;
}

unint64_t sub_10000ED5C()
{
  result = qword_10002C800;
  if (!qword_10002C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C800);
  }

  return result;
}

uint64_t sub_10000EE34@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C290 != -1)
  {
    swift_once();
  }

  v2 = sub_10001C9A8();
  v3 = sub_1000041A0(v2, qword_100032618);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000EEDC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C298 != -1)
  {
    swift_once();
  }

  v2 = sub_100004158(&qword_10002C440, &unk_10001FA10);
  v3 = sub_1000041A0(v2, qword_100032630);

  return sub_100004380(v3, a1);
}

uint64_t sub_10000EF60(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002A68;

  return sub_10000E808(a1, v5, v4);
}

uint64_t sub_10000F00C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000FF28();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10000F054()
{
  result = qword_10002C808;
  if (!qword_10002C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C808);
  }

  return result;
}

unint64_t sub_10000F0AC()
{
  result = qword_10002C810;
  if (!qword_10002C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C810);
  }

  return result;
}

uint64_t sub_10000F120()
{
  if (qword_10002C220 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  *v1 = sub_100018B38(1) & 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000F1EC()
{
  if (qword_10002C220 != -1)
  {
    swift_once();
  }

  v1 = qword_100032508;
  *(v0 + 16) = *(v0 + 17);
  [v1 setObject:sub_10001CB28() forKey:@"CRLDisplayEdgeGuides"];
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000F2C4()
{
  v0 = sub_100004158(&qword_10002C408, &qword_10001F3C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v15 - v2;
  v4 = sub_100004158(&qword_10002C3F0, &qword_10001EE80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_10001C9A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  if (qword_10002C2B0 != -1)
  {
    swift_once();
  }

  v12 = sub_10001C948();
  sub_1000041A0(v12, qword_100032668);
  swift_beginAccess();
  sub_10001C938();
  swift_endAccess();
  sub_10001C998();
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_10001C758();
  v13 = sub_10001C768();
  (*(*(v13 - 8) + 56))(v3, 0, 1, v13);
  sub_10001C998();
  return sub_10001C788();
}

uint64_t sub_10000F580()
{
  v0 = sub_100004158(&qword_10002C820, &qword_1000206D8);
  sub_1000041D8(v0, qword_100032650);
  sub_1000041A0(v0, qword_100032650);
  sub_100004A7C();
  return sub_10001C7C8();
}

uint64_t sub_10000F604(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_10001C9A8() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10000F694, 0, 0);
}

uint64_t sub_10000F694()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100004158(&qword_10002C7F0, qword_100020500);
  sub_10001C998();
  sub_1000042E4(&qword_10002C890, &qword_10002C898, &qword_100020A18);
  *v2 = sub_10001C988();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10000F7B8()
{
  v0 = sub_10001C948();
  sub_1000041D8(v0, qword_100032668);
  sub_1000041A0(v0, qword_100032668);
  return sub_10001C928();
}

uint64_t sub_10000F824()
{
  sub_10000F054();

  return sub_10001C918();
}

uint64_t sub_10000F8CC()
{
  v0 = qword_10002C7D0;

  return v0;
}

unint64_t sub_10000F908()
{
  result = qword_10002C828;
  if (!qword_10002C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C828);
  }

  return result;
}

unint64_t sub_10000F960()
{
  result = qword_10002C830;
  if (!qword_10002C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C830);
  }

  return result;
}

unint64_t sub_10000F9B8()
{
  result = qword_10002C838;
  if (!qword_10002C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C838);
  }

  return result;
}

uint64_t sub_10000FA50@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C2A8 != -1)
  {
    swift_once();
  }

  v2 = sub_100004158(&qword_10002C820, &qword_1000206D8);
  v3 = sub_1000041A0(v2, qword_100032650);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000FB04()
{
  sub_10001038C();
  v1 = sub_10001C8E8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10000FB74()
{
  result = qword_10002C848;
  if (!qword_10002C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C848);
  }

  return result;
}

unint64_t sub_10000FBCC()
{
  result = qword_10002C850;
  if (!qword_10002C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C850);
  }

  return result;
}

unint64_t sub_10000FC24()
{
  result = qword_10002C858;
  if (!qword_10002C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C858);
  }

  return result;
}

unint64_t sub_10000FC7C()
{
  result = qword_10002C860;
  if (!qword_10002C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C860);
  }

  return result;
}

uint64_t sub_10000FCD0@<X0>(uint64_t *a1@<X8>)
{
  sub_100004A7C();
  result = sub_10001C538();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000FD10@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C2B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10001C948();
  v3 = sub_1000041A0(v2, qword_100032668);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_10000FE14(uint64_t a1)
{
  v2 = sub_10000F054();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000FE64()
{
  result = qword_10002C878;
  if (!qword_10002C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C878);
  }

  return result;
}

uint64_t sub_10000FEBC(uint64_t a1)
{
  v2 = sub_10000FC7C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000FF28()
{
  v0 = sub_100004158(&qword_10002C3E0, &unk_10001EE70);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v35 = &v27 - v2;
  v36 = sub_10001C8D8();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004158(&qword_10002C3E8, &unk_1000213D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_100004158(&qword_10002C3F0, &qword_10001EE80);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_10001C9A8();
  v34 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v28 = sub_100004158(&qword_10002C880, &qword_1000209F8);
  sub_10001C998();
  v21 = *(v19 + 56);
  v32 = v19 + 56;
  v33 = v21;
  v21(v17, 1, 1, v18);
  v38 = 0;
  v22 = sub_10001C518();
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v29 = v3 + 104;
  v30 = v24;
  v24(v6);
  sub_10000F054();
  v28 = sub_10001C598();
  sub_100004158(&qword_10002C400, &unk_10001EE90);
  sub_10001C998();
  v33(v17, 1, 1, v34);
  v37 = 2;
  v25 = sub_10001CAD8();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v30(v6, v31, v36);
  sub_10001C5A8();
  return v28;
}

unint64_t sub_10001038C()
{
  result = qword_10002C888;
  if (!qword_10002C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C888);
  }

  return result;
}

uint64_t sub_100010428@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_100004158(&qword_10002C448, &unk_10001F460);
  v27 = *(v1 - 8);
  v2 = *(v27 + 64);
  __chkstk_darwin(v1);
  v4 = &v27 - v3;
  v5 = sub_100004158(&qword_10002C450, &unk_10001EF70);
  v6 = *(v5 - 8);
  v28 = v5;
  v29 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_100004158(&qword_10002C458, &unk_10001F470);
  v11 = *(v10 - 8);
  v30 = v10;
  v31 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = sub_100004158(&qword_10002C460, &qword_10001EF80);
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  swift_getKeyPath();
  sub_10001096C();
  sub_10001CA78();
  sub_10001C9D8();
  v20 = sub_100004AD0();
  sub_10001CA08();

  (*(v27 + 8))(v4, v1);
  sub_10001C9D8();
  v35 = v1;
  v36 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v28;
  sub_10001C9E8();

  (*(v29 + 8))(v9, v22);
  v35 = v22;
  v36 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v30;
  sub_10001CA18();
  (*(v31 + 8))(v14, v24);
  v35 = v24;
  v36 = v23;
  swift_getOpaqueTypeConformance2();
  v25 = v32;
  sub_10001C9F8();
  return (*(v33 + 8))(v19, v25);
}

uint64_t sub_1000108EC@<X0>(uint64_t a1@<X8>)
{
  sub_10001C9D8();
  result = sub_10001CA28();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_10001096C()
{
  result = qword_10002C8A0;
  if (!qword_10002C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C8A0);
  }

  return result;
}

uint64_t sub_1000109CC@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_10001CA58();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_100004158(&qword_10002C8A8, &qword_100020B78);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  __chkstk_darwin(v3);
  v6 = &v29 - v5;
  v7 = sub_100004158(&qword_10002C8B0, &qword_100020B80);
  v8 = *(v7 - 8);
  v30 = v7;
  v31 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  v12 = sub_100004158(&qword_10002C8B8, &qword_100020B88);
  v13 = *(v12 - 8);
  v32 = v12;
  v33 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  v17 = sub_100004158(&qword_10002C8C0, &qword_100020B90);
  v18 = *(v17 - 8);
  v34 = v17;
  v35 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v29 - v20;
  swift_getKeyPath();
  sub_10001CA48();
  sub_100011474();
  sub_1000114C8();
  sub_10001151C();
  sub_10001CA68();
  sub_10001C9D8();
  v22 = sub_100011570();
  sub_10001CA08();

  (*(v29 + 8))(v6, v3);
  sub_10001C9D8();
  v37 = v3;
  v38 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v30;
  sub_10001C9E8();

  (*(v31 + 8))(v11, v24);
  v37 = v24;
  v38 = OpaqueTypeConformance2;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = v32;
  sub_10001CA18();
  (*(v33 + 8))(v16, v26);
  v37 = v26;
  v38 = v25;
  swift_getOpaqueTypeConformance2();
  v27 = v34;
  sub_10001C9F8();
  return (*(v35 + 8))(v21, v27);
}

uint64_t sub_100010F24@<X0>(uint64_t a1@<X8>)
{
  sub_10001C9D8();
  result = sub_10001CA28();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100010FA0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100010FD8(*a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_100010FD8(unsigned __int8 a1)
{
  v2 = sub_100004158(&qword_10002C8E8, &unk_100020BC0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23 - v4;
  v6 = sub_100004158(&qword_10002C3F0, &qword_10001EE80);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v23 - v8;
  v10 = sub_10001C9A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10002C2F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_100032718;
  if (*(qword_100032718 + 16) && (v16 = sub_10001A890(a1), (v17 & 1) != 0))
  {
    v18 = v16;
    v19 = *(v15 + 56);
    v20 = sub_10001C7A8();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v5, v19 + *(v21 + 72) * v18, v20);
    (*(v21 + 56))(v5, 0, 1, v20);
  }

  else
  {
    v20 = sub_10001C7A8();
    (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  }

  sub_10001C7A8();
  if ((*(*(v20 - 8) + 48))(v5, 1, v20))
  {
    sub_1000115D4(v5, &qword_10002C8E8, &unk_100020BC0);
    swift_endAccess();
    (*(v11 + 56))(v9, 1, 1, v10);
    sub_10001C998();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      sub_1000115D4(v9, &qword_10002C3F0, &qword_10001EE80);
    }
  }

  else
  {
    sub_10001C778();
    sub_1000115D4(v5, &qword_10002C8E8, &unk_100020BC0);
    swift_endAccess();
    (*(v11 + 56))(v9, 0, 1, v10);
    (*(v11 + 32))(v14, v9, v10);
  }

  return sub_10001CA38();
}

unint64_t sub_100011474()
{
  result = qword_10002C8C8;
  if (!qword_10002C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C8C8);
  }

  return result;
}

unint64_t sub_1000114C8()
{
  result = qword_10002C8D0;
  if (!qword_10002C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C8D0);
  }

  return result;
}

unint64_t sub_10001151C()
{
  result = qword_10002C8D8;
  if (!qword_10002C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C8D8);
  }

  return result;
}

unint64_t sub_100011570()
{
  result = qword_10002C8E0;
  if (!qword_10002C8E0)
  {
    sub_100001CCC(&qword_10002C8A8, &qword_100020B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C8E0);
  }

  return result;
}

uint64_t sub_1000115D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004158(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100011634()
{
  sub_100001CCC(&qword_10002C8C0, &qword_100020B90);
  sub_100001CCC(&qword_10002C8B8, &qword_100020B88);
  sub_100001CCC(&qword_10002C8B0, &qword_100020B80);
  sub_100001CCC(&qword_10002C8A8, &qword_100020B78);
  sub_100011570();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100011758()
{
  result = qword_10002C900;
  if (!qword_10002C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C900);
  }

  return result;
}

uint64_t sub_1000117F0()
{
  v0 = sub_10001C9A8();
  sub_1000041D8(v0, qword_100032680);
  sub_1000041A0(v0, qword_100032680);
  return sub_10001C998();
}

uint64_t sub_100011854()
{
  v0 = sub_100004158(&qword_10002C440, &unk_10001FA10);
  sub_1000041D8(v0, qword_100032698);
  v1 = sub_1000041A0(v0, qword_100032698);
  sub_10001C728();
  v2 = sub_10001C738();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100011914()
{
  result = swift_getKeyPath();
  qword_1000326B0 = result;
  return result;
}

uint64_t sub_10001193C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return _swift_task_switch(sub_100011960, 0, 0);
}

uint64_t sub_100011960()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_10001C558();
  v3 = v0[2];
  v0[3] = v3;
  v0[9] = v3;
  sub_10001C558();
  if (qword_10002C2C8 != -1)
  {
    swift_once();
  }

  v4 = qword_1000326B0;
  v0[10] = qword_1000326B0;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  v0[11] = v6;
  v7 = sub_1000042E4(&qword_10002CA60, &qword_10002CA68, &qword_100021428);
  v0[12] = v7;
  *v6 = v0;
  v6[1] = sub_100011AB8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 18, v4, &type metadata for MathPaperSettingEntity.Mode, v7);
}

uint64_t sub_100011AB8()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v5 = sub_100002468;
  }

  else
  {
    v5 = sub_100011C0C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100011C0C()
{
  v1 = v0[7];
  sub_10001C558();
  v2 = v0[4];
  v0[5] = v2;
  v3 = qword_1000326B0;
  v0[14] = v2;
  v0[15] = v3;
  v4 = async function pointer to AppEntity._value<A, B>(for:)[1];

  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_100011CE4;
  v6 = v0[12];

  return AppEntity._value<A, B>(for:)(v0 + 145, v3, v6);
}

uint64_t sub_100011CE4()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v5 = sub_100002480;
  }

  else
  {
    v5 = sub_100011E38;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100011E38()
{
  v1 = *(v0 + 48);
  *(v0 + 146) = *(v0 + 145);
  sub_100013A04();
  sub_10001C528();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t (*sub_100011EC0(uint64_t *a1))()
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
  v4 = *v1;
  *(v3 + 32) = sub_10001C548();
  return sub_100002590;
}

uint64_t (*sub_100011F34(uint64_t *a1))()
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
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_10001C548();
  return sub_1000043F0;
}

uint64_t sub_100011FA8()
{
  if (qword_10002C2C8 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100012008()
{
  result = qword_10002C918;
  if (!qword_10002C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C918);
  }

  return result;
}

unint64_t sub_100012060()
{
  result = qword_10002C920;
  if (!qword_10002C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C920);
  }

  return result;
}

uint64_t sub_10001214C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C2C0 != -1)
  {
    swift_once();
  }

  v2 = sub_100004158(&qword_10002C440, &unk_10001FA10);
  v3 = sub_1000041A0(v2, qword_100032698);
  return sub_100014A90(v3, a1, &qword_10002C440, &unk_10001FA10);
}

uint64_t sub_1000121DC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002A68;

  return sub_10001193C(a1, v5, v4);
}

uint64_t sub_100012288@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000145DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000122D0()
{
  result = qword_10002C928;
  if (!qword_10002C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C928);
  }

  return result;
}

unint64_t sub_100012328()
{
  result = qword_10002C930;
  if (!qword_10002C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C930);
  }

  return result;
}

uint64_t sub_10001239C()
{
  if (qword_10002C220 != -1)
  {
    swift_once();
  }

  v1 = sub_100018D10(4);
  if (v1 >= 3)
  {
    v3 = 1;
  }

  else
  {
    v3 = v1;
  }

  if (v2)
  {
    v3 = 0;
  }

  **(v0 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100012474()
{
  if (qword_10002C220 != -1)
  {
    swift_once();
  }

  v1 = qword_100032508;
  *(v0 + 16) = *(v0 + 24);
  [v1 setObject:sub_10001CB28() forKey:@"CRLMathRecognitionMode"];
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001254C()
{
  v0 = sub_100004158(&qword_10002C408, &qword_10001F3C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v19 - v2;
  v4 = sub_100004158(&qword_10002C3F0, &qword_10001EE80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = sub_10001C9A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  if (qword_10002C2D8 != -1)
  {
    swift_once();
  }

  v12 = sub_10001C948();
  sub_1000041A0(v12, qword_1000326D0);
  swift_beginAccess();
  sub_10001C938();
  swift_endAccess();
  sub_10001C998();
  v14 = *(v9 + 56);
  v13 = v9 + 56;
  v14(v7, 0, 1, v8);
  sub_10001C758();
  v15 = sub_10001C768();
  (*(*(v15 - 8) + 56))(v3, 0, 1, v15);
  sub_100004158(&qword_10002C410, &qword_10001EEA0);
  v16 = *(v13 + 16);
  v17 = (*(v13 + 24) + 32) & ~*(v13 + 24);
  *(swift_allocObject() + 16) = xmmword_10001E940;
  sub_10001C998();
  sub_10001C998();
  sub_10001C998();
  sub_10001C998();
  return sub_10001C788();
}

uint64_t sub_1000128B8()
{
  v0 = sub_100004158(&qword_10002C940, &qword_100020DA8);
  sub_1000041D8(v0, qword_1000326B8);
  sub_1000041A0(v0, qword_1000326B8);
  sub_10001151C();
  return sub_10001C7C8();
}

uint64_t sub_10001293C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_10001C9A8() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000129CC, 0, 0);
}

uint64_t sub_1000129CC()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100004158(&qword_10002C910, qword_100020BD0);
  sub_10001C998();
  sub_1000042E4(&qword_10002CA60, &qword_10002CA68, &qword_100021428);
  sub_100011474();
  *v2 = sub_10001C978();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100012B24()
{
  v0 = sub_100004158(&qword_10002CA70, &qword_100021430);
  sub_1000041D8(v0, qword_1000326E8);
  sub_1000041A0(v0, qword_1000326E8);
  sub_1000122D0();
  return sub_10001C918();
}

uint64_t sub_100012BA8@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C2E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100004158(&qword_10002CA70, &qword_100021430);
  v3 = sub_1000041A0(v2, qword_1000326E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100012CA0()
{
  v0 = qword_10002C8F0;

  return v0;
}

unint64_t sub_100012CDC()
{
  result = qword_10002C948;
  if (!qword_10002C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C948);
  }

  return result;
}

unint64_t sub_100012D34()
{
  result = qword_10002C950;
  if (!qword_10002C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C950);
  }

  return result;
}

unint64_t sub_100012D8C()
{
  result = qword_10002C958;
  if (!qword_10002C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C958);
  }

  return result;
}

uint64_t sub_100012E24@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C2D0 != -1)
  {
    swift_once();
  }

  v2 = sub_100004158(&qword_10002C940, &qword_100020DA8);
  v3 = sub_1000041A0(v2, qword_1000326B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100012ED8()
{
  sub_100014A30();
  v1 = sub_10001C8E8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100012F48()
{
  result = qword_10002C968;
  if (!qword_10002C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C968);
  }

  return result;
}

unint64_t sub_100012FA0()
{
  result = qword_10002C970;
  if (!qword_10002C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C970);
  }

  return result;
}

unint64_t sub_100012FF8()
{
  result = qword_10002C978;
  if (!qword_10002C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C978);
  }

  return result;
}

unint64_t sub_100013050()
{
  result = qword_10002C980;
  if (!qword_10002C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C980);
  }

  return result;
}

uint64_t sub_1000130A4@<X0>(uint64_t *a1@<X8>)
{
  sub_10001151C();
  result = sub_10001C538();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000130E4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C2D8 != -1)
  {
    swift_once();
  }

  v2 = sub_10001C948();
  v3 = sub_1000041A0(v2, qword_1000326D0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1000131E8(uint64_t a1)
{
  v2 = sub_1000122D0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100013238()
{
  result = qword_10002C998;
  if (!qword_10002C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C998);
  }

  return result;
}

uint64_t sub_100013290(uint64_t a1)
{
  v2 = sub_100013050();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100013300(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10001C948();
  sub_1000041D8(v3, a2);
  sub_1000041A0(v3, a2);
  return sub_10001C928();
}

uint64_t sub_100013360()
{
  sub_100004158(&qword_10002CA30, &qword_1000213F0);
  v0 = sub_100004158(&qword_10002CA38, &qword_1000213F8);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10001E940;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_10001C748();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_10001C748();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_10001C748();
  v8 = sub_100014400(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100032718 = v8;
  return result;
}

uint64_t sub_100013500()
{
  v0 = sub_100004158(&qword_10002CA50, &qword_100021408);
  sub_1000041D8(v0, qword_100032720);
  sub_1000041A0(v0, qword_100032720);
  sub_100011474();
  return sub_10001C878();
}

unint64_t sub_10001359C()
{
  result = qword_10002C9A0;
  if (!qword_10002C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9A0);
  }

  return result;
}

Swift::Int sub_1000135F0()
{
  v1 = *v0;
  sub_10001CB38();
  sub_10001CB48(v1);
  return sub_10001CB58();
}

Swift::Int sub_100013664()
{
  v1 = *v0;
  sub_10001CB38();
  sub_10001CB48(v1);
  return sub_10001CB58();
}

uint64_t *sub_1000136A8@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1000136C8()
{
  result = qword_10002C9A8;
  if (!qword_10002C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9A8);
  }

  return result;
}

uint64_t sub_10001371C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C2F8 != -1)
  {
    swift_once();
  }

  v2 = sub_100004158(&qword_10002CA50, &qword_100021408);
  v3 = sub_1000041A0(v2, qword_100032720);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1000137D4()
{
  result = qword_10002C9B0;
  if (!qword_10002C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9B0);
  }

  return result;
}

unint64_t sub_10001382C()
{
  result = qword_10002C9B8;
  if (!qword_10002C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9B8);
  }

  return result;
}

unint64_t sub_100013884()
{
  result = qword_10002C9C0;
  if (!qword_10002C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9C0);
  }

  return result;
}

uint64_t sub_1000138E4()
{
  sub_1000149DC();
  v1 = sub_10001C7B8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100013954()
{
  result = qword_10002C9C8;
  if (!qword_10002C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9C8);
  }

  return result;
}

unint64_t sub_1000139AC()
{
  result = qword_10002C9D0;
  if (!qword_10002C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9D0);
  }

  return result;
}

unint64_t sub_100013A04()
{
  result = qword_10002C9D8;
  if (!qword_10002C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9D8);
  }

  return result;
}

unint64_t sub_100013A5C()
{
  result = qword_10002C9E0;
  if (!qword_10002C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9E0);
  }

  return result;
}

uint64_t sub_100013AE8@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_1000041A0(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100013C04(uint64_t a1)
{
  v2 = sub_100011474();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100013C54()
{
  result = qword_10002C9E8;
  if (!qword_10002C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9E8);
  }

  return result;
}

unint64_t sub_100013CAC()
{
  result = qword_10002C9F0;
  if (!qword_10002C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9F0);
  }

  return result;
}

unint64_t sub_100013D04()
{
  result = qword_10002C9F8;
  if (!qword_10002C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9F8);
  }

  return result;
}

uint64_t sub_100013D58()
{
  if (qword_10002C2F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_100013DD0(uint64_t a1)
{
  v2 = sub_100013A5C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for MathPaperSettingEntity.Mode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MathPaperSettingEntity.Mode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100014024(uint64_t a1)
{
  v2 = sub_100004158(&qword_10002C698, &qword_100021470);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100004158(&qword_10002CA78, &qword_100021478);
    v8 = sub_10001CAF8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100014A90(v10, v6, &qword_10002C698, &qword_100021470);
      v12 = *v6;
      result = sub_10001A84C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10001C7A8();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_10001420C(uint64_t a1)
{
  v2 = sub_100004158(&qword_10002C6B8, &qword_100021480);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100004158(&qword_10002CA80, &qword_100021488);
    v8 = sub_10001CAF8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100014A90(v10, v6, &qword_10002C6B8, &qword_100021480);
      v12 = *v6;
      result = sub_10001A84C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100004158(&qword_10002CA88, &unk_100021490);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_100014400(uint64_t a1)
{
  v2 = sub_100004158(&qword_10002CA38, &qword_1000213F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100004158(&qword_10002CA40, &qword_100021400);
    v8 = sub_10001CAF8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_100014A90(v10, v6, &qword_10002CA38, &qword_1000213F8);
      v12 = *v6;
      result = sub_10001A890(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10001C7A8();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

uint64_t sub_1000145DC()
{
  v31 = sub_10001C8D8();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100004158(&qword_10002C3E8, &unk_1000213D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v23 - v8;
  v10 = sub_100004158(&qword_10002C3F0, &qword_10001EE80);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v23 - v12;
  v14 = sub_10001C9A8();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_100004158(&qword_10002CA20, &qword_1000213E0);
  sub_10001C998();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v33 = 0;
  v18 = sub_10001C518();
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23[1] = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_1000122D0();
  v26 = sub_10001C598();
  sub_100004158(&qword_10002CA28, &qword_1000213E8);
  sub_10001C998();
  v28(v13, 1, 1, v29);
  v32 = 3;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_100011474();
  sub_10001C588();
  return v26;
}

unint64_t sub_1000149DC()
{
  result = qword_10002CA48;
  if (!qword_10002CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA48);
  }

  return result;
}

unint64_t sub_100014A30()
{
  result = qword_10002CA58;
  if (!qword_10002CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA58);
  }

  return result;
}

uint64_t sub_100014A90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004158(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100014B10(uint64_t a1)
{
  v30 = a1;
  v32 = sub_100004158(&qword_10002CB58, &qword_100021800);
  v1 = *(v32 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v32);
  v4 = &v22 - v3;
  v5 = sub_100004158(&qword_10002CB60, &qword_100021808);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100018388();
  sub_10001C6C8();
  v34._countAndFlagsBits = 0x20796D206E65704FLL;
  v34._object = 0xE800000000000000;
  sub_10001C6B8(v34);
  swift_getKeyPath();
  v7 = sub_100005D00();
  sub_10001C5F8();

  sub_10001C6A8();

  v35._countAndFlagsBits = 0x676E697474657320;
  v35._object = 0xE800000000000000;
  sub_10001C6B8(v35);
  sub_10001C6D8();
  v28 = sub_10001C628();
  v8 = v1 + 8;
  v33 = *(v1 + 8);
  v9 = v32;
  v33(v4, v32);
  v31 = v8;
  sub_10001C6C8();
  v36._countAndFlagsBits = 0x20656D20776F6853;
  v36._object = 0xEB0000000020796DLL;
  sub_10001C6B8(v36);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v37._countAndFlagsBits = 0x676E697474657320;
  v37._object = 0xE800000000000000;
  sub_10001C6B8(v37);
  sub_10001C6D8();
  v27 = sub_10001C628();
  v33(v4, v9);
  sub_10001C6C8();
  v38._object = 0x800000010001E5A0;
  v38._countAndFlagsBits = 0xD000000000000015;
  sub_10001C6B8(v38);
  swift_getKeyPath();
  v29 = v7;
  sub_10001C5F8();

  sub_10001C6A8();

  v39._countAndFlagsBits = 0x676E697474657320;
  v39._object = 0xE800000000000000;
  sub_10001C6B8(v39);
  sub_10001C6D8();
  v26 = sub_10001C628();
  v10 = v32;
  v33(v4, v32);
  sub_10001C6C8();
  v40._countAndFlagsBits = 0xD000000000000017;
  v40._object = 0x800000010001E5C0;
  sub_10001C6B8(v40);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  sub_10001C6B8(v41);
  sub_10001C6D8();
  v25 = sub_10001C628();
  v11 = v10;
  v12 = v33;
  v33(v4, v11);
  sub_10001C6C8();
  v42._countAndFlagsBits = 0xD000000000000016;
  v42._object = 0x800000010001E5E0;
  sub_10001C6B8(v42);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  sub_10001C6B8(v43);
  sub_10001C6D8();
  v24 = sub_10001C628();
  v12(v4, v32);
  sub_10001C6C8();
  v44._countAndFlagsBits = 0x206E65704FLL;
  v44._object = 0xE500000000000000;
  sub_10001C6B8(v44);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v45._countAndFlagsBits = 0x676E697474657320;
  v45._object = 0xE800000000000000;
  sub_10001C6B8(v45);
  sub_10001C6D8();
  v23 = sub_10001C628();
  v13 = v32;
  v33(v4, v32);
  sub_10001C6C8();
  v46._countAndFlagsBits = 0x2077656956;
  v46._object = 0xE500000000000000;
  sub_10001C6B8(v46);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v47._countAndFlagsBits = 0x676E697474657320;
  v47._object = 0xE800000000000000;
  sub_10001C6B8(v47);
  sub_10001C6D8();
  v22 = sub_10001C628();
  v14 = v33;
  v33(v4, v13);
  sub_10001C6C8();
  v48._countAndFlagsBits = 0x20656D20656B6154;
  v48._object = 0xEB00000000206F74;
  sub_10001C6B8(v48);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v49._countAndFlagsBits = 0x676E697474657320;
  v49._object = 0xE800000000000000;
  sub_10001C6B8(v49);
  sub_10001C6D8();
  v15 = sub_10001C628();
  v14(v4, v13);
  sub_100004158(&qword_10002CB68, &unk_100021810);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10001FA20;
  v17 = v27;
  *(v16 + 32) = v28;
  *(v16 + 40) = v17;
  v18 = v25;
  *(v16 + 48) = v26;
  *(v16 + 56) = v18;
  v19 = v23;
  *(v16 + 64) = v24;
  *(v16 + 72) = v19;
  *(v16 + 80) = v22;
  *(v16 + 88) = v15;
  v20 = sub_10001C618();

  return v20;
}

uint64_t sub_10001540C()
{
  v0 = sub_10001C648();
  v1 = sub_10001C648();
  v2 = sub_10001C648();
  v3 = sub_10001C648();
  v4 = sub_10001C648();
  v5 = sub_10001C648();
  sub_100004158(&qword_10002CAA0, &qword_100021550);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000214A0;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = sub_10001C638();

  return v7;
}

uint64_t sub_10001556C()
{
  v0 = sub_10001C608();
  v24 = *(v0 - 8);
  v25 = v0;
  v1 = *(v24 + 64);
  __chkstk_darwin(v0);
  v22 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100004158(&qword_10002CB40, &qword_100021798);
  v28 = *(v26 - 8);
  v3 = *(v28 + 64);
  __chkstk_darwin(v26);
  v5 = &v19 - v4;
  v6 = sub_100004158(&qword_10002CB48, &qword_1000217A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  sub_100018820();
  sub_10001C6C8();
  v29._countAndFlagsBits = 544499027;
  v29._object = 0xE400000000000000;
  sub_10001C6B8(v29);
  swift_getKeyPath();
  v27 = sub_10001896C();
  sub_10001C5F8();

  sub_10001C6A8();

  v30._countAndFlagsBits = 32;
  v30._object = 0xE100000000000000;
  sub_10001C6B8(v30);
  swift_getKeyPath();
  v21 = sub_10000432C();
  sub_10001C5F8();

  sub_10001C6A8();

  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_10001C6B8(v31);
  sub_10001C6D8();
  v23 = sub_10001C628();
  v8 = v28 + 8;
  v20 = *(v28 + 8);
  v20(v5, v26);
  v28 = v8;
  sub_10001C6C8();
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  sub_10001C6B8(v32);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v33._countAndFlagsBits = 32;
  v33._object = 0xE100000000000000;
  sub_10001C6B8(v33);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v34._countAndFlagsBits = 544108320;
  v34._object = 0xE400000000000000;
  sub_10001C6B8(v34);
  v10 = v24;
  v9 = v25;
  v11 = v22;
  (*(v24 + 104))(v22, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v25);
  sub_10001C698();
  (*(v10 + 8))(v11, v9);
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_10001C6B8(v35);
  sub_10001C6D8();
  v25 = sub_10001C628();
  v12 = v26;
  v13 = v20;
  v20(v5, v26);
  sub_10001C6C8();
  v36._countAndFlagsBits = 0x206E727554;
  v36._object = 0xE500000000000000;
  sub_10001C6B8(v36);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v37._countAndFlagsBits = 32;
  v37._object = 0xE100000000000000;
  sub_10001C6B8(v37);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_10001C6B8(v38);
  sub_10001C6D8();
  v14 = sub_10001C628();
  v13(v5, v12);
  sub_100004158(&qword_10002CB50, &qword_1000217D0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10001E940;
  v16 = v25;
  *(v15 + 32) = v23;
  *(v15 + 40) = v16;
  *(v15 + 48) = v14;
  v17 = sub_10001C618();

  return v17;
}

uint64_t sub_100015BB0()
{
  v0 = sub_10001C608();
  v24 = *(v0 - 8);
  v25 = v0;
  v1 = *(v24 + 64);
  __chkstk_darwin(v0);
  v22 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100004158(&qword_10002CB20, &qword_100021730);
  v28 = *(v26 - 8);
  v3 = *(v28 + 64);
  __chkstk_darwin(v26);
  v5 = &v19 - v4;
  v6 = sub_100004158(&qword_10002CB28, &qword_100021738);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  sub_10000E624();
  sub_10001C6C8();
  v29._countAndFlagsBits = 544499027;
  v29._object = 0xE400000000000000;
  sub_10001C6B8(v29);
  swift_getKeyPath();
  v27 = sub_10000FC24();
  sub_10001C5F8();

  sub_10001C6A8();

  v30._countAndFlagsBits = 32;
  v30._object = 0xE100000000000000;
  sub_10001C6B8(v30);
  swift_getKeyPath();
  v21 = sub_10000432C();
  sub_10001C5F8();

  sub_10001C6A8();

  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_10001C6B8(v31);
  sub_10001C6D8();
  v23 = sub_10001C628();
  v8 = v28 + 8;
  v20 = *(v28 + 8);
  v20(v5, v26);
  v28 = v8;
  sub_10001C6C8();
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  sub_10001C6B8(v32);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v33._countAndFlagsBits = 32;
  v33._object = 0xE100000000000000;
  sub_10001C6B8(v33);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v34._countAndFlagsBits = 544108320;
  v34._object = 0xE400000000000000;
  sub_10001C6B8(v34);
  v10 = v24;
  v9 = v25;
  v11 = v22;
  (*(v24 + 104))(v22, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v25);
  sub_10001C698();
  (*(v10 + 8))(v11, v9);
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_10001C6B8(v35);
  sub_10001C6D8();
  v25 = sub_10001C628();
  v12 = v26;
  v13 = v20;
  v20(v5, v26);
  sub_10001C6C8();
  v36._countAndFlagsBits = 0x206E727554;
  v36._object = 0xE500000000000000;
  sub_10001C6B8(v36);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v37._countAndFlagsBits = 32;
  v37._object = 0xE100000000000000;
  sub_10001C6B8(v37);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_10001C6B8(v38);
  sub_10001C6D8();
  v14 = sub_10001C628();
  v13(v5, v12);
  sub_100004158(&qword_10002CB30, &qword_100021768);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10001E940;
  v16 = v25;
  *(v15 + 32) = v23;
  *(v15 + 40) = v16;
  *(v15 + 48) = v14;
  v17 = sub_10001C618();

  return v17;
}

uint64_t sub_1000161F0(uint64_t a1)
{
  v2 = sub_10001C608();
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = *(v27 + 64);
  __chkstk_darwin(v2);
  v25 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100004158(&qword_10002CB08, &qword_1000216C8);
  v32 = *(v30 - 8);
  v5 = *(v32 + 64);
  __chkstk_darwin(v30);
  v7 = v23 - v6;
  v8 = sub_100004158(&qword_10002CB10, &qword_1000216D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  sub_10000B178();
  sub_10001C6C8();
  v34._countAndFlagsBits = 544499027;
  v34._object = 0xE400000000000000;
  sub_10001C6B8(v34);
  swift_getKeyPath();
  v31 = sub_10000C780();
  v23[0] = a1;
  sub_10001C5F8();

  sub_10001C6A8();

  v35._countAndFlagsBits = 32;
  v35._object = 0xE100000000000000;
  sub_10001C6B8(v35);
  swift_getKeyPath();
  v23[1] = sub_10000432C();
  sub_10001C5F8();

  sub_10001C6A8();

  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_10001C6B8(v36);
  v29 = v7;
  sub_10001C6D8();
  v26 = sub_10001C628();
  v10 = v32 + 8;
  v33 = *(v32 + 8);
  v11 = v30;
  v33(v7, v30);
  v32 = v10;
  sub_10001C6C8();
  v37._object = 0x800000010001E580;
  v37._countAndFlagsBits = 0xD000000000000011;
  sub_10001C6B8(v37);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_10001C6B8(v38);
  v12 = v29;
  sub_10001C6D8();
  v24 = sub_10001C628();
  v33(v12, v11);
  sub_10001C6C8();
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  sub_10001C6B8(v39);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v40._countAndFlagsBits = 32;
  v40._object = 0xE100000000000000;
  sub_10001C6B8(v40);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v41._countAndFlagsBits = 544108320;
  v41._object = 0xE400000000000000;
  sub_10001C6B8(v41);
  v14 = v27;
  v13 = v28;
  v15 = v25;
  (*(v27 + 104))(v25, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v28);
  sub_10001C698();
  (*(v14 + 8))(v15, v13);
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  sub_10001C6B8(v42);
  v16 = v29;
  sub_10001C6D8();
  v28 = sub_10001C628();
  v17 = v30;
  v33(v16, v30);
  sub_10001C6C8();
  v43._countAndFlagsBits = 0x206E727554;
  v43._object = 0xE500000000000000;
  sub_10001C6B8(v43);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v44._countAndFlagsBits = 32;
  v44._object = 0xE100000000000000;
  sub_10001C6B8(v44);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  sub_10001C6B8(v45);
  sub_10001C6D8();
  v18 = sub_10001C628();
  v33(v16, v17);
  sub_100004158(&qword_10002CB18, &qword_100021700);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000214B0;
  v20 = v24;
  *(v19 + 32) = v26;
  *(v19 + 40) = v20;
  *(v19 + 48) = v28;
  *(v19 + 56) = v18;
  v21 = sub_10001C618();

  return v21;
}

uint64_t sub_100016924(uint64_t a1)
{
  v2 = sub_10001C608();
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = *(v27 + 64);
  __chkstk_darwin(v2);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004158(&qword_10002CAF0, &qword_100021660);
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  v9 = sub_100004158(&qword_10002CAF8, &qword_100021668);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  sub_100011758();
  sub_10001C6C8();
  v35._countAndFlagsBits = 544499027;
  v35._object = 0xE400000000000000;
  sub_10001C6B8(v35);
  swift_getKeyPath();
  v25 = sub_100012FF8();
  sub_10001C5F8();

  sub_10001C6A8();

  v36._countAndFlagsBits = 544175136;
  v36._object = 0xE400000000000000;
  sub_10001C6B8(v36);
  swift_getKeyPath();
  v32 = sub_100013A04();
  sub_10001C5F8();

  sub_10001C6A8();

  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  sub_10001C6B8(v37);
  sub_10001C6D8();
  v11 = sub_10001C628();
  v12 = v34;
  v13 = *(v33 + 8);
  v33 += 8;
  v29 = v11;
  v30 = v13;
  v13(v8, v34);
  sub_10001C6C8();
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_10001C6B8(v38);
  swift_getKeyPath();
  v31 = a1;
  sub_10001C5F8();

  sub_10001C6A8();

  v39._countAndFlagsBits = 32;
  v39._object = 0xE100000000000000;
  sub_10001C6B8(v39);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v40._countAndFlagsBits = 544108320;
  v40._object = 0xE400000000000000;
  sub_10001C6B8(v40);
  v15 = v26;
  v14 = v27;
  v16 = v28;
  (*(v27 + 104))(v26, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v28);
  sub_10001C698();
  (*(v14 + 8))(v15, v16);
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  sub_10001C6B8(v41);
  sub_10001C6D8();
  v28 = sub_10001C628();
  v30(v8, v12);
  sub_10001C6C8();
  v42._countAndFlagsBits = 543519573;
  v42._object = 0xE400000000000000;
  sub_10001C6B8(v42);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v43._countAndFlagsBits = 32;
  v43._object = 0xE100000000000000;
  sub_10001C6B8(v43);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  sub_10001C6B8(v44);
  sub_10001C6D8();
  v27 = sub_10001C628();
  v17 = v30;
  v30(v8, v34);
  sub_10001C6C8();
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  sub_10001C6B8(v45);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v46._countAndFlagsBits = 0xD000000000000012;
  v46._object = 0x800000010001E520;
  sub_10001C6B8(v46);
  sub_10001C6D8();
  v26 = sub_10001C628();
  v17(v8, v34);
  sub_10001C6C8();
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  sub_10001C6B8(v47);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v48._object = 0x800000010001E540;
  v48._countAndFlagsBits = 0xD000000000000010;
  sub_10001C6B8(v48);
  sub_10001C6D8();
  v25 = sub_10001C628();
  v18 = v34;
  v17(v8, v34);
  sub_10001C6C8();
  v49._countAndFlagsBits = 0xD00000000000001FLL;
  v49._object = 0x800000010001E560;
  sub_10001C6B8(v49);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  sub_10001C6B8(v50);
  sub_10001C6D8();
  v19 = sub_10001C628();
  v17(v8, v18);
  sub_100004158(&qword_10002CB00, &qword_100021698);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000214A0;
  v21 = v28;
  *(v20 + 32) = v29;
  *(v20 + 40) = v21;
  v22 = v26;
  *(v20 + 48) = v27;
  *(v20 + 56) = v22;
  *(v20 + 64) = v25;
  *(v20 + 72) = v19;
  v23 = sub_10001C618();

  return v23;
}

uint64_t sub_1000171F0(uint64_t a1)
{
  v2 = sub_10001C608();
  v23 = *(v2 - 8);
  v24 = v2;
  v3 = *(v23 + 64);
  __chkstk_darwin(v2);
  v22 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100004158(&qword_10002CAD8, &qword_1000215F8);
  v29 = *(v27 - 8);
  v5 = *(v29 + 64);
  __chkstk_darwin(v27);
  v7 = v21 - v6;
  v8 = sub_100004158(&qword_10002CAE0, &qword_100021600);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  sub_10000785C();
  sub_10001C6C8();
  v30._countAndFlagsBits = 544499027;
  v30._object = 0xE400000000000000;
  sub_10001C6B8(v30);
  swift_getKeyPath();
  v21[1] = sub_100008E50();
  sub_10001C5F8();

  sub_10001C6A8();

  v31._countAndFlagsBits = 32;
  v31._object = 0xE100000000000000;
  sub_10001C6B8(v31);
  swift_getKeyPath();
  v28 = sub_10000432C();
  sub_10001C5F8();

  sub_10001C6A8();

  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  sub_10001C6B8(v32);
  sub_10001C6D8();
  v25 = sub_10001C628();
  v21[0] = *(v29 + 8);
  v29 += 8;
  v10 = v27;
  (v21[0])(v7, v27);
  sub_10001C6C8();
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_10001C6B8(v33);
  swift_getKeyPath();
  v26 = a1;
  sub_10001C5F8();

  sub_10001C6A8();

  v34._countAndFlagsBits = 32;
  v34._object = 0xE100000000000000;
  sub_10001C6B8(v34);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v35._countAndFlagsBits = 544108320;
  v35._object = 0xE400000000000000;
  sub_10001C6B8(v35);
  v12 = v22;
  v11 = v23;
  v13 = v24;
  (*(v23 + 104))(v22, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v24);
  sub_10001C698();
  (*(v11 + 8))(v12, v13);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_10001C6B8(v36);
  sub_10001C6D8();
  v24 = sub_10001C628();
  v14 = v21[0];
  (v21[0])(v7, v10);
  sub_10001C6C8();
  v37._countAndFlagsBits = 0x206E727554;
  v37._object = 0xE500000000000000;
  sub_10001C6B8(v37);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v38._countAndFlagsBits = 32;
  v38._object = 0xE100000000000000;
  sub_10001C6B8(v38);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  sub_10001C6B8(v39);
  sub_10001C6D8();
  v23 = sub_10001C628();
  v15 = v27;
  v14(v7, v27);
  sub_10001C6C8();
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  sub_10001C6B8(v40);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v41._object = 0x800000010001E500;
  v41._countAndFlagsBits = 0xD00000000000001CLL;
  sub_10001C6B8(v41);
  sub_10001C6D8();
  v16 = sub_10001C628();
  v14(v7, v15);
  sub_100004158(&qword_10002CAE8, &qword_100021630);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000214B0;
  v18 = v24;
  *(v17 + 32) = v25;
  *(v17 + 40) = v18;
  *(v17 + 48) = v23;
  *(v17 + 56) = v16;
  v19 = sub_10001C618();

  return v19;
}

uint64_t sub_1000178FC()
{
  v0 = sub_10001C648();
  sub_100004158(&qword_10002CAA0, &qword_100021550);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000214C0;
  *(v1 + 32) = v0;
  v2 = sub_10001C638();

  return v2;
}

uint64_t sub_100017980()
{
  v0 = sub_10001C608();
  v24 = *(v0 - 8);
  v25 = v0;
  v1 = *(v24 + 64);
  __chkstk_darwin(v0);
  v22 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100004158(&qword_10002CAC0, &qword_100021590);
  v28 = *(v26 - 8);
  v3 = *(v28 + 64);
  __chkstk_darwin(v26);
  v5 = &v19 - v4;
  v6 = sub_100004158(&qword_10002CAC8, &qword_100021598);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  sub_100001C34();
  sub_10001C6C8();
  v29._countAndFlagsBits = 544499027;
  v29._object = 0xE400000000000000;
  sub_10001C6B8(v29);
  swift_getKeyPath();
  v27 = sub_100003848();
  sub_10001C5F8();

  sub_10001C6A8();

  v30._countAndFlagsBits = 32;
  v30._object = 0xE100000000000000;
  sub_10001C6B8(v30);
  swift_getKeyPath();
  v21 = sub_10000432C();
  sub_10001C5F8();

  sub_10001C6A8();

  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_10001C6B8(v31);
  sub_10001C6D8();
  v23 = sub_10001C628();
  v8 = v28 + 8;
  v20 = *(v28 + 8);
  v20(v5, v26);
  v28 = v8;
  sub_10001C6C8();
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  sub_10001C6B8(v32);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v33._countAndFlagsBits = 32;
  v33._object = 0xE100000000000000;
  sub_10001C6B8(v33);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v34._countAndFlagsBits = 544108320;
  v34._object = 0xE400000000000000;
  sub_10001C6B8(v34);
  v10 = v24;
  v9 = v25;
  v11 = v22;
  (*(v24 + 104))(v22, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v25);
  sub_10001C698();
  (*(v10 + 8))(v11, v9);
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_10001C6B8(v35);
  sub_10001C6D8();
  v25 = sub_10001C628();
  v12 = v26;
  v13 = v20;
  v20(v5, v26);
  sub_10001C6C8();
  v36._countAndFlagsBits = 0x206E727554;
  v36._object = 0xE500000000000000;
  sub_10001C6B8(v36);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v37._countAndFlagsBits = 32;
  v37._object = 0xE100000000000000;
  sub_10001C6B8(v37);
  swift_getKeyPath();
  sub_10001C5F8();

  sub_10001C6A8();

  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_10001C6B8(v38);
  sub_10001C6D8();
  v14 = sub_10001C628();
  v13(v5, v12);
  sub_100004158(&qword_10002CAD0, &qword_1000215C8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10001E940;
  v16 = v25;
  *(v15 + 32) = v23;
  *(v15 + 40) = v16;
  *(v15 + 48) = v14;
  v17 = sub_10001C618();

  return v17;
}

uint64_t sub_100017FA0(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t))
{
  v6 = sub_10001C688();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  sub_10001C5F8();

  a4(v11);
  sub_10001C678();
  v12 = sub_10001C668();
  (*(v7 + 8))(v10, v6);
  sub_100004158(&qword_10002CAB8, &qword_100021588);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000214C0;
  *(v13 + 32) = v12;
  v14 = sub_10001C658();

  return v14;
}

uint64_t sub_100018140()
{
  v0 = sub_10001C648();
  sub_100004158(&qword_10002CAA0, &qword_100021550);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000214C0;
  *(v1 + 32) = v0;
  v2 = sub_10001C638();

  return v2;
}

uint64_t sub_1000181AC()
{
  v0 = sub_10001C648();
  sub_100004158(&qword_10002CAA0, &qword_100021550);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000214C0;
  *(v1 + 32) = v0;
  v2 = sub_10001C638();

  return v2;
}

uint64_t sub_100018238()
{
  v0 = sub_10001C5E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018388();
  sub_10001C5D8();
  v5 = sub_10001C5C8();
  (*(v1 + 8))(v4, v0);
  sub_100004158(&qword_10002CA98, &qword_100021548);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000214C0;
  *(v6 + 32) = v5;
  v7 = sub_10001C5B8();

  return v7;
}

unint64_t sub_100018388()
{
  result = qword_10002CA90;
  if (!qword_10002CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA90);
  }

  return result;
}

uint64_t sub_1000183DC()
{
  v0 = sub_10001C708();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10001BFE0();
  sub_100018388();
  sub_10001C718();
  v22 = sub_10001C6F8();
  v5 = *(v1 + 8);
  v5(v4, v0);
  v23 = sub_10001AD28();
  v24 = v6;
  sub_100018820();
  sub_10001C718();
  v7 = sub_10001C6F8();
  v5(v4, v0);
  v23 = sub_10000FF28();
  v24 = v8;
  sub_10000E624();
  sub_10001C718();
  v9 = sub_10001C6F8();
  v5(v4, v0);
  v23 = sub_10000CA84();
  v24 = v10;
  sub_10000B178();
  sub_10001C718();
  v11 = sub_10001C6F8();
  v5(v4, v0);
  v23 = sub_1000145DC();
  v24 = v12;
  sub_100011758();
  sub_10001C718();
  v13 = sub_10001C6F8();
  v5(v4, v0);
  v23 = sub_100009198();
  v24 = v14;
  sub_10000785C();
  sub_10001C718();
  v15 = sub_10001C6F8();
  v5(v4, v0);
  v23 = sub_100003CF4();
  v24 = v16;
  sub_100001C34();
  sub_10001C718();
  v17 = sub_10001C6F8();
  v5(v4, v0);
  sub_100004158(&qword_10002CAB0, &qword_100021558);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000214D0;
  *(v18 + 32) = v22;
  *(v18 + 40) = v7;
  *(v18 + 48) = v9;
  *(v18 + 56) = v11;
  *(v18 + 64) = v13;
  *(v18 + 72) = v15;
  *(v18 + 80) = v17;
  v19 = sub_10001C6E8();

  return v19;
}

unint64_t sub_100018820()
{
  result = qword_10002CAA8;
  if (!qword_10002CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CAA8);
  }

  return result;
}

uint64_t sub_100018874@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_10001C558();
  *a2 = v5;
  return result;
}

uint64_t sub_1000188BC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_10001C558();
  *a2 = v5;
  return result;
}

uint64_t sub_1000188F8(char *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;
  return sub_10001C568();
}

uint64_t sub_100018930(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;

  return sub_10001C568();
}

unint64_t sub_10001896C()
{
  result = qword_10002CB38;
  if (!qword_10002CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CB38);
  }

  return result;
}

uint64_t sub_1000189C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_10001C558();
  *a2 = v5;
  return result;
}

uint64_t sub_1000189FC(char *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;
  return sub_10001C568();
}

uint64_t sub_100018A34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_10001C558();
  *a2 = v5;
  return result;
}

uint64_t sub_100018A70(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_10001C568();
}

uint64_t sub_100018B38(char a1)
{
  v2 = v1;
  sub_100007840(a1);
  v4 = sub_10001CAA8();

  v5 = [v2 valueForKey:v4];

  if (v5)
  {
    sub_10001CAE8();
    swift_unknownObjectRelease();
    sub_10001A83C(v14, v16);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  sub_100004158(&qword_10002CC28, &qword_100021D50);
  if (swift_dynamicCast())
  {
    return v15;
  }

  v15 = 2;
  v7 = [objc_opt_self() defaultDefaults];
  v8 = sub_10001CA98();

  v9 = sub_100007840(a1);
  if (*(v8 + 16))
  {
    v11 = sub_10001A768(v9, v10);
    v13 = v12;

    if (v13)
    {
      sub_10001A7E0(*(v8 + 56) + 32 * v11, v14);

      goto LABEL_11;
    }
  }

  else
  {
  }

  memset(v14, 0, sizeof(v14));
LABEL_11:
  if (swift_dynamicCast())
  {
    return v17;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_100018D10(char a1)
{
  v2 = v1;
  sub_100007840(a1);
  v4 = sub_10001CAA8();

  v5 = [v2 valueForKey:v4];

  if (v5)
  {
    sub_10001CAE8();
    swift_unknownObjectRelease();
    sub_10001A83C(v14, v17);
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  sub_100004158(&qword_10002CC28, &qword_100021D50);
  if (swift_dynamicCast())
  {
    return v15;
  }

  v15 = 0;
  v16 = 1;
  v7 = [objc_opt_self() defaultDefaults];
  v8 = sub_10001CA98();

  v9 = sub_100007840(a1);
  if (*(v8 + 16))
  {
    v11 = sub_10001A768(v9, v10);
    v13 = v12;

    if (v13)
    {
      sub_10001A7E0(*(v8 + 56) + 32 * v11, v14);

      goto LABEL_11;
    }
  }

  else
  {
  }

  memset(v14, 0, sizeof(v14));
LABEL_11:
  if (swift_dynamicCast())
  {
    return v18;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100018EF4()
{
  v0 = sub_10001C9A8();
  sub_1000041D8(v0, qword_100032738);
  sub_1000041A0(v0, qword_100032738);
  return sub_10001C998();
}

uint64_t sub_100018F58()
{
  v0 = sub_100004158(&qword_10002C440, &unk_10001FA10);
  sub_1000041D8(v0, qword_100032750);
  v1 = sub_1000041A0(v0, qword_100032750);
  sub_10001C728();
  v2 = sub_10001C738();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100019018()
{
  result = swift_getKeyPath();
  qword_100032768 = result;
  return result;
}

uint64_t sub_100019040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return _swift_task_switch(sub_100019064, 0, 0);
}

uint64_t sub_100019064()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_10001C558();
  v3 = *(v0 + 16);
  *(v0 + 24) = v3;
  *(v0 + 72) = v3;
  sub_10001C558();
  *(v0 + 145) = *(v0 + 144);
  if (qword_10002C310 != -1)
  {
    swift_once();
  }

  v4 = qword_100032768;
  *(v0 + 80) = qword_100032768;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v7 = sub_1000042E4(&qword_10002CC18, &qword_10002CC20, &qword_100021D48);
  *(v0 + 96) = v7;
  *v6 = v0;
  v6[1] = sub_1000191C8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 145, v4, &type metadata for Bool, v7);
}

uint64_t sub_1000191C8()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v5 = sub_100002468;
  }

  else
  {
    v5 = sub_10001931C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001931C()
{
  v1 = v0[7];
  sub_10001C558();
  v2 = v0[4];
  v0[5] = v2;
  v3 = qword_100032768;
  v0[14] = v2;
  v0[15] = v3;
  v4 = async function pointer to AppEntity._value<A, B>(for:)[1];

  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_10000228C;
  v6 = v0[12];

  return AppEntity._value<A, B>(for:)(v0 + 146, v3, v6);
}

uint64_t (*sub_1000193F4(uint64_t *a1))()
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
  v4 = *v1;
  *(v3 + 32) = sub_10001C548();
  return sub_100002590;
}

uint64_t (*sub_100019468(uint64_t *a1))()
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
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_10001C548();
  return sub_1000043F0;
}

uint64_t sub_1000194DC()
{
  if (qword_10002C310 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10001953C()
{
  result = qword_10002CB90;
  if (!qword_10002CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CB90);
  }

  return result;
}

unint64_t sub_100019594()
{
  result = qword_10002CB98;
  if (!qword_10002CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CB98);
  }

  return result;
}

uint64_t sub_10001966C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C300 != -1)
  {
    swift_once();
  }

  v2 = sub_10001C9A8();
  v3 = sub_1000041A0(v2, qword_100032738);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100019714@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C308 != -1)
  {
    swift_once();
  }

  v2 = sub_100004158(&qword_10002C440, &unk_10001FA10);
  v3 = sub_1000041A0(v2, qword_100032750);

  return sub_100004380(v3, a1);
}

uint64_t sub_100019798(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002A68;

  return sub_100019040(a1, v5, v4);
}

uint64_t sub_100019844@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001AD28();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10001988C()
{
  result = qword_10002CBA0;
  if (!qword_10002CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CBA0);
  }

  return result;
}

unint64_t sub_1000198E4()
{
  result = qword_10002CBA8;
  if (!qword_10002CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CBA8);
  }

  return result;
}

uint64_t sub_100019958()
{
  if (qword_10002C220 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  *v1 = sub_100018B38(0) & 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100019A24()
{
  if (qword_10002C220 != -1)
  {
    swift_once();
  }

  v1 = qword_100032508;
  *(v0 + 16) = *(v0 + 17);
  [v1 setObject:sub_10001CB28() forKey:@"CRLDisplayCenterGuides"];
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100019AFC()
{
  v0 = sub_100004158(&qword_10002C408, &qword_10001F3C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v15 - v2;
  v4 = sub_100004158(&qword_10002C3F0, &qword_10001EE80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_10001C9A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  if (qword_10002C320 != -1)
  {
    swift_once();
  }

  v12 = sub_10001C948();
  sub_1000041A0(v12, qword_100032788);
  swift_beginAccess();
  sub_10001C938();
  swift_endAccess();
  sub_10001C998();
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_10001C758();
  v13 = sub_10001C768();
  (*(*(v13 - 8) + 56))(v3, 0, 1, v13);
  sub_10001C998();
  return sub_10001C788();
}

uint64_t sub_100019DB8()
{
  v0 = sub_100004158(&qword_10002CBB8, &qword_1000219F8);
  sub_1000041D8(v0, qword_100032770);
  sub_1000041A0(v0, qword_100032770);
  sub_10001096C();
  return sub_10001C7C8();
}

uint64_t sub_100019E3C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_10001C9A8() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100019ECC, 0, 0);
}

uint64_t sub_100019ECC()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100004158(&qword_10002CB88, qword_100021820);
  sub_10001C998();
  sub_1000042E4(&qword_10002CC18, &qword_10002CC20, &qword_100021D48);
  *v2 = sub_10001C988();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100019FF4()
{
  v0 = sub_10001C948();
  sub_1000041D8(v0, qword_100032788);
  sub_1000041A0(v0, qword_100032788);
  return sub_10001C928();
}

uint64_t sub_10001A064()
{
  sub_10001988C();

  return sub_10001C918();
}

uint64_t sub_10001A10C()
{
  v0 = qword_10002CB70;

  return v0;
}

unint64_t sub_10001A148()
{
  result = qword_10002CBC0;
  if (!qword_10002CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CBC0);
  }

  return result;
}

unint64_t sub_10001A1A0()
{
  result = qword_10002CBC8;
  if (!qword_10002CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CBC8);
  }

  return result;
}

unint64_t sub_10001A1F8()
{
  result = qword_10002CBD0;
  if (!qword_10002CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CBD0);
  }

  return result;
}

uint64_t sub_10001A290@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C318 != -1)
  {
    swift_once();
  }

  v2 = sub_100004158(&qword_10002CBB8, &qword_1000219F8);
  v3 = sub_1000041A0(v2, qword_100032770);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10001A344()
{
  sub_10001A714();
  v1 = sub_10001C8E8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10001A3B4()
{
  result = qword_10002CBE0;
  if (!qword_10002CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CBE0);
  }

  return result;
}

unint64_t sub_10001A40C()
{
  result = qword_10002CBE8;
  if (!qword_10002CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CBE8);
  }

  return result;
}

unint64_t sub_10001A468()
{
  result = qword_10002CBF0;
  if (!qword_10002CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CBF0);
  }

  return result;
}

uint64_t sub_10001A4BC@<X0>(uint64_t *a1@<X8>)
{
  sub_10001096C();
  result = sub_10001C538();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001A4FC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C320 != -1)
  {
    swift_once();
  }

  v2 = sub_10001C948();
  v3 = sub_1000041A0(v2, qword_100032788);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_10001A600(uint64_t a1)
{
  v2 = sub_10001988C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10001A650()
{
  result = qword_10002CC08;
  if (!qword_10002CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC08);
  }

  return result;
}

uint64_t sub_10001A6A8(uint64_t a1)
{
  v2 = sub_10001A468();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10001A714()
{
  result = qword_10002CC10;
  if (!qword_10002CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC10);
  }

  return result;
}

unint64_t sub_10001A768(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10001CB38();
  sub_10001CAC8();
  v6 = sub_10001CB58();

  return sub_10001A8FC(a1, a2, v6);
}

uint64_t sub_10001A7E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_10001A83C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10001A84C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = sub_10000D834();

  return sub_10001A9B4(a1, v4);
}

unint64_t sub_10001A890(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_10001CB38();
  sub_10001CB48(a1);
  v4 = sub_10001CB58();

  return sub_10001ACB8(a1, v4);
}

unint64_t sub_10001A8FC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10001CB18())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10001A9B4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = 0xE900000000000073;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v27 + 48) + v4);
      if (v7 > 3)
      {
        if (*(*(v27 + 48) + v4) > 5u)
        {
          if (v7 == 6)
          {
            v12 = 0x6E417463656C6573;
            v13 = 0xEF6C6C6F72635364;
          }

          else
          {
            v12 = 0x6564497465736572;
            v13 = 0xEF7265696669746ELL;
          }
        }

        else
        {
          v12 = v7 == 4 ? 0x47676E6963617073 : 0x72476F5470616E73;
          v13 = v7 == 4 ? 0xED00007365646975 : 0xEA00000000006469;
        }
      }

      else
      {
        v8 = 0xEA00000000007365;
        if (v7 == 2)
        {
          v9 = 0x75477265746E6563;
        }

        else
        {
          v9 = 0x6469754765676465;
        }

        if (v7 == 2)
        {
          v8 = 0xEC00000073656469;
        }

        v10 = *(*(v27 + 48) + v4) ? 0x746E69486874616DLL : 1953460082;
        v11 = *(*(v27 + 48) + v4) ? 0xE900000000000073 : 0xE400000000000000;
        v12 = *(*(v27 + 48) + v4) <= 1u ? v10 : v9;
        v13 = *(*(v27 + 48) + v4) <= 1u ? v11 : v8;
      }

      v14 = 0x6E417463656C6573;
      if (v6 != 6)
      {
        v14 = 0x6564497465736572;
      }

      v15 = 0xEF7265696669746ELL;
      if (v6 == 6)
      {
        v15 = 0xEF6C6C6F72635364;
      }

      v16 = 0x72476F5470616E73;
      if (v6 == 4)
      {
        v16 = 0x47676E6963617073;
      }

      v17 = 0xED00007365646975;
      if (v6 != 4)
      {
        v17 = 0xEA00000000006469;
      }

      if (v6 <= 5)
      {
        v14 = v16;
        v15 = v17;
      }

      v18 = 0xEA00000000007365;
      if (v6 == 2)
      {
        v19 = 0x75477265746E6563;
      }

      else
      {
        v19 = 0x6469754765676465;
      }

      if (v6 == 2)
      {
        v18 = 0xEC00000073656469;
      }

      if (v6)
      {
        v20 = 0x746E69486874616DLL;
      }

      else
      {
        v20 = 1953460082;
      }

      if (!v6)
      {
        v5 = 0xE400000000000000;
      }

      if (v6 <= 1)
      {
        v19 = v20;
        v18 = v5;
      }

      v21 = v6 <= 3 ? v19 : v14;
      v22 = v6 <= 3 ? v18 : v15;
      if (v12 == v21 && v13 == v22)
      {
        break;
      }

      v23 = sub_10001CB18();

      if ((v23 & 1) == 0)
      {
        v4 = (v4 + 1) & v25;
        v5 = 0xE900000000000073;
        if ((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10001ACB8(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_10001AD28()
{
  v0 = sub_100004158(&qword_10002C3E0, &unk_10001EE70);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v35 = &v27 - v2;
  v36 = sub_10001C8D8();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004158(&qword_10002C3E8, &unk_1000213D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_100004158(&qword_10002C3F0, &qword_10001EE80);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_10001C9A8();
  v34 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v28 = sub_100004158(&qword_10002CC30, &unk_100021D58);
  sub_10001C998();
  v21 = *(v19 + 56);
  v32 = v19 + 56;
  v33 = v21;
  v21(v17, 1, 1, v18);
  v38 = 0;
  v22 = sub_10001C518();
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v29 = v3 + 104;
  v30 = v24;
  v24(v6);
  sub_10001988C();
  v28 = sub_10001C598();
  sub_100004158(&qword_10002C400, &unk_10001EE90);
  sub_10001C998();
  v33(v17, 1, 1, v34);
  v37 = 2;
  v25 = sub_10001CAD8();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v30(v6, v31, v36);
  sub_10001C5A8();
  return v28;
}

uint64_t sub_10001B1D4@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_100004158(&qword_10002C448, &unk_10001F460);
  v27 = *(v1 - 8);
  v2 = *(v27 + 64);
  __chkstk_darwin(v1);
  v4 = &v27 - v3;
  v5 = sub_100004158(&qword_10002C450, &unk_10001EF70);
  v6 = *(v5 - 8);
  v28 = v5;
  v29 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_100004158(&qword_10002C458, &unk_10001F470);
  v11 = *(v10 - 8);
  v30 = v10;
  v31 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = sub_100004158(&qword_10002C460, &qword_10001EF80);
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  swift_getKeyPath();
  sub_10000423C();
  sub_10001CA78();
  sub_10001C9D8();
  v20 = sub_100004AD0();
  sub_10001CA08();

  (*(v27 + 8))(v4, v1);
  sub_10001C9D8();
  v35 = v1;
  v36 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v28;
  sub_10001C9E8();

  (*(v29 + 8))(v9, v22);
  v35 = v22;
  v36 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v30;
  sub_10001CA18();
  (*(v31 + 8))(v14, v24);
  v35 = v24;
  v36 = v23;
  swift_getOpaqueTypeConformance2();
  v25 = v32;
  sub_10001C9F8();
  return (*(v33 + 8))(v19, v25);
}

uint64_t sub_10001B698@<X0>(uint64_t a1@<X8>)
{
  sub_10001C9D8();
  result = sub_10001CA28();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_10001B720()
{
  result = qword_10002CC48;
  if (!qword_10002CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC48);
  }

  return result;
}

uint64_t sub_10001B7D0()
{
  v0 = sub_10001C9A8();
  sub_1000041D8(v0, qword_1000327A0);
  sub_1000041A0(v0, qword_1000327A0);
  return sub_10001C998();
}

uint64_t sub_10001B834@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_10001C558();
  *a1 = v5;
  return result;
}

uint64_t sub_10001B870(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_10001C568();
}

void (*sub_10001B8A8(uint64_t *a1))(void *a1)
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
  v4 = *v1;
  *(v3 + 32) = sub_10001C548();
  return sub_10000267C;
}

uint64_t sub_10001B920(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001C2F8();
  v5 = sub_10000696C();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10001B988()
{
  v0 = qword_10002CC38;

  return v0;
}

unint64_t sub_10001B9C4()
{
  result = qword_10002CC50;
  if (!qword_10002CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC50);
  }

  return result;
}

unint64_t sub_10001BA1C()
{
  result = qword_10002CC58;
  if (!qword_10002CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC58);
  }

  return result;
}

unint64_t sub_10001BA74()
{
  result = qword_10002CC60;
  if (!qword_10002CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC60);
  }

  return result;
}

uint64_t sub_10001BAE4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C328 != -1)
  {
    swift_once();
  }

  v2 = sub_10001C9A8();
  v3 = sub_1000041A0(v2, qword_1000327A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10001BB9C()
{
  v0 = sub_100004158(&qword_10002CC90, &qword_100022040);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_100004158(&qword_10002CC98, &qword_100022048);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_10001C818();
  v5._countAndFlagsBits = 0x206E65704FLL;
  v5._object = 0xE500000000000000;
  sub_10001C808(v5);
  swift_getKeyPath();
  sub_100004158(&qword_10002CCA0, &qword_100022078);
  sub_10001C7F8();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_10001C808(v6);
  sub_10001C828();
  return sub_10001C7E8();
}

uint64_t sub_10001BD30(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10001C2F8();
  v7 = sub_10001C34C();
  v8 = sub_10000696C();
  *v5 = v2;
  v5[1] = sub_10001BDFC;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_10001BDFC()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

uint64_t sub_10001BF04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001BFE0();
  *a1 = result;
  return result;
}

uint64_t sub_10001BF2C(uint64_t a1)
{
  v2 = sub_100018388();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10001BF7C()
{
  result = qword_10002CC68;
  if (!qword_10002CC68)
  {
    sub_100001CCC(&qword_10002CC70, &qword_100022030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC68);
  }

  return result;
}

uint64_t sub_10001BFE0()
{
  v21 = sub_10001C8D8();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004158(&qword_10002C3E8, &unk_1000213D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100004158(&qword_10002C3F0, &qword_10001EE80);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_10001C9A8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100004158(&qword_10002CC78, &qword_100022038);
  sub_10001C998();
  sub_10001C998();
  (*(v16 + 56))(v14, 0, 1, v15);
  v22 = 8;
  v18 = sub_10001C518();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_100004D08();
  return sub_10001C598();
}

unint64_t sub_10001C2F8()
{
  result = qword_10002CC80;
  if (!qword_10002CC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC80);
  }

  return result;
}

unint64_t sub_10001C34C()
{
  result = qword_10002CC88;
  if (!qword_10002CC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC88);
  }

  return result;
}

uint64_t sub_10001C3A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_10001C578();
  *a2 = result;
  return result;
}