uint64_t Lyrics.StateManager.deinit()
{
  sub_100B31D7C(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state, type metadata accessor for Lyrics.StateManager.State);

  sub_1000095E8(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song, &qword_1011B16C8);
  sub_1000095E8(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation, &qword_1011B1808);
  sub_1000095E8(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration, &qword_1011B1810);
  sub_1000095E8(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__metricsPage, &qword_1011B1818);

  v1 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t Lyrics.StateManager.__deallocating_deinit()
{
  Lyrics.StateManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO2eeoiySbAH_AHtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[4])
  {
    if (*(a2 + 32))
    {
      return *a2 == v3;
    }

    return 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = v3 == *a2 && a1[1] == *(a2 + 8);
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_100B6BF90(v5, v7) & 1) == 0)
  {
    return 0;
  }

  if (v8)
  {
    v10 = v6 == v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (v6)
  {
    return v11;
  }

  else
  {
    return v8 == 0;
  }
}

uint64_t _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO5ErrorO21__derived_enum_equalsySbAL_ALtFZ_0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        sub_100009F78(0, &unk_1011B7C00);
        return static NSObject.== infix(_:_:)() & 1;
      }

      return 0;
    }

    if (a1)
    {
      return a4 == 2 && a3 == 1;
    }

    return a4 == 2 && !a3;
  }

  else
  {
    if (a4)
    {
      return 0;
    }

    return a3 == a1;
  }
}

uint64_t _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Song();
  v41 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v40 - v8;
  v9 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = sub_10010FC20(&qword_1011B1DF0);
  __chkstk_darwin(v15 - 8);
  v17 = &v40 - v16;
  v19 = &v40 + *(v18 + 56) - v16;
  sub_100B31D14(a1, &v40 - v16, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_100B31D14(a2, v19, type metadata accessor for Lyrics.StateManager.State.Loading);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100B31D14(v17, v14, type metadata accessor for Lyrics.StateManager.State.Loading);
    v30 = *v14;
    v31 = v14[8];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100B32DB0(v30, v31);
      goto LABEL_11;
    }

    v32 = *v19;
    v33 = v19[8];
    if (v31)
    {
      if (v31 == 1)
      {
        if (v33 == 1)
        {
          v34 = *v19;
          sub_100009F78(0, &unk_1011B7C00);
          v35 = static NSObject.== infix(_:_:)();
          sub_100B32DB0(v34, 1);
          sub_100B32DB0(v30, 1);
          if ((v35 & 1) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_9;
        }

        sub_100B32DB0(v32, v33);
        v32 = v30;
        LOBYTE(v33) = 1;
      }

      else if (v30)
      {
        if (v33 == 2 && v32 == 1)
        {
          goto LABEL_9;
        }
      }

      else if (v33 == 2 && v32 == 0)
      {
        goto LABEL_9;
      }
    }

    else if (!v19[8])
    {
      if (v32 != v30)
      {
        goto LABEL_33;
      }

LABEL_9:
      sub_100B31D7C(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
      v28 = 1;
      return v28 & 1;
    }

    sub_100B32DB0(v32, v33);
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_1000095E8(v17, &qword_1011B1DF0);
LABEL_34:
    v28 = 0;
    return v28 & 1;
  }

  sub_100B31D14(v17, v11, type metadata accessor for Lyrics.StateManager.State.Loading);
  v21 = *(v11 + 1);
  v42[0] = *v11;
  v42[1] = v21;
  v43 = v11[32];
  v22 = *(sub_10010FC20(&qword_1011B17F8) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v41 + 8))(&v11[v22], v4);
    sub_100B32D80(v42);
    goto LABEL_11;
  }

  v23 = *(v19 + 1);
  v44[0] = *v19;
  v44[1] = v23;
  v45 = v19[32];
  v24 = v41;
  v25 = *(v41 + 32);
  v26 = &v11[v22];
  v27 = v40;
  v25(v40, v26, v4);
  v25(v6, &v19[v22], v4);
  if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO2eeoiySbAH_AHtFZ_0(v42, v44) & 1) == 0)
  {
    sub_100B32D80(v44);
    sub_100B32D80(v42);
    v36 = *(v24 + 8);
    v36(v6, v4);
    v36(v27, v4);
LABEL_33:
    sub_100B31D7C(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    goto LABEL_34;
  }

  v28 = static Song.== infix(_:_:)();
  sub_100B32D80(v44);
  sub_100B32D80(v42);
  v29 = *(v24 + 8);
  v29(v6, v4);
  v29(v27, v4);
  sub_100B31D7C(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
  return v28 & 1;
}

BOOL _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V23__derived_struct_equalsySbAH_AHtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011B4900);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_10010FC20(&qword_1011B4F30);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v27 = v5;
  v14 = type metadata accessor for Lyrics.StateManager.State(0);
  v15 = *(v14 + 20);
  v16 = a1 + v15;
  v17 = a2 + v15;
  if ((static ScenePhase.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v18 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  if (*(v16 + *(v18 + 20)) != *(v17 + *(v18 + 20)) || *(v16 + *(v18 + 24)) != *(v17 + *(v18 + 24)))
  {
    return 0;
  }

  v19 = *(v14 + 24);
  v20 = *(v11 + 48);
  sub_1000089F8(a1 + v19, v13, &qword_1011B4900);
  sub_1000089F8(a2 + v19, &v13[v20], &qword_1011B4900);
  v21 = v27;
  v22 = *(v27 + 48);
  if (v22(v13, 1, v4) == 1)
  {
    if (v22(&v13[v20], 1, v4) == 1)
    {
      sub_1000095E8(v13, &qword_1011B4900);
      return 1;
    }

    goto LABEL_10;
  }

  sub_1000089F8(v13, v10, &qword_1011B4900);
  if (v22(&v13[v20], 1, v4) == 1)
  {
    (*(v21 + 8))(v10, v4);
LABEL_10:
    sub_1000095E8(v13, &qword_1011B4F30);
    return 0;
  }

  (*(v21 + 32))(v7, &v13[v20], v4);
  sub_100B32BB0(&qword_1011B4F60, &type metadata accessor for Date);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v21 + 8);
  v25(v7, v4);
  v25(v10, v4);
  sub_1000095E8(v13, &qword_1011B4900);
  return (v24 & 1) != 0;
}

uint64_t sub_100B31D14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B31D7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100B31DF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Song();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011B16C8);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_10010FC20(&qword_1011B1DF8);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1000089F8(a1, &v21 - v12, &qword_1011B16C8);
  sub_1000089F8(a2, &v13[v15], &qword_1011B16C8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1000089F8(v13, v10, &qword_1011B16C8);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_100B32BB0(&qword_1011B1DE0, &type metadata accessor for Song);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1000095E8(v13, &qword_1011B16C8);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1000095E8(v13, &qword_1011B1DF8);
    v17 = 1;
    return v17 & 1;
  }

  sub_1000095E8(v13, &qword_1011B16C8);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_100B321D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002F3F4;

  return sub_100B2A668();
}

uint64_t sub_100B32284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void sub_100B322F4()
{
  type metadata accessor for Lyrics.StateManager.State(319);
  if (v0 <= 0x3F)
  {
    sub_100B32624(319, &qword_1011B1858, &type metadata accessor for Song);
    if (v1 <= 0x3F)
    {
      sub_100B32624(319, &qword_1011B1860, type metadata accessor for Lyrics.Translation);
      if (v2 <= 0x3F)
      {
        sub_100B32624(319, &qword_1011B1868, type metadata accessor for Lyrics.Transliteration);
        if (v3 <= 0x3F)
        {
          sub_100B32624(319, &unk_1011B1870, type metadata accessor for MetricsEvent.Page);
          if (v4 <= 0x3F)
          {
            type metadata accessor for ObservationRegistrar();
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_100B3256C()
{
  type metadata accessor for Lyrics.StateManager.State.Loading(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Lyrics.StateManager.State.Display(319);
    if (v1 <= 0x3F)
    {
      sub_100B32624(319, &unk_1011B1C48, &type metadata accessor for Date);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100B32624(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100B32678()
{
  sub_100B326E4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_100B326E4()
{
  if (!qword_1011B1D00)
  {
    type metadata accessor for Song();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1011B1D00);
    }
  }
}

uint64_t sub_100B3274C(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_100B327A0()
{
  result = type metadata accessor for ScenePhase();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 initializeWithCopy for HitMyRectButton.HitRectAdjustment(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for HitMyRectButton.HitRectAdjustment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for HitMyRectButton.HitRectAdjustment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_100B328E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_100009648(a1, v4);
}

uint64_t sub_100B329A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_100009648(a1, v4);
}

uint64_t sub_100B32A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {

    v5 = vars8;
  }
}

uint64_t sub_100B32AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

uint64_t sub_100B32B00(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B1818);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100B32B70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) = v2;
  v4 = v2;
}

uint64_t sub_100B32BB0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100B32C18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader) = v2;
  v4 = v2;
}

uint64_t sub_100B32C58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_1001F91D8(a1, v4);
}

uint64_t sub_100B32D10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B4900);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100B32DB0(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

uint64_t sub_100B32DC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_100B28434();
}

uint64_t sub_100B32E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B32EDC(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_100B32F20(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

char *VocalsAttenuationSlider.init(frame:)(double a1, double a2, double a3, double a4)
{
  v30.receiver = v4;
  v30.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v10 = static AccessibilityIdentifier.named(_:)(0xD000000000000017, 0x8000000100E65300);
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v10, v11);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v12 = qword_10121B340;
  LOBYTE(v50[0]) = 1;
  *&v33 = 0x6F68706F7263694DLL;
  *(&v33 + 1) = 0xEA0000000000656ELL;
  *&v34 = qword_10121B340;
  *(&v34 + 1) = 0x3FF0000000000000;
  v35 = 0;
  v36 = 0;
  v37 = 0x3FF0000000000000;
  v38 = 0;
  *&v39 = 0;
  *(&v39 + 1) = _swiftEmptyArrayStorage;
  v40 = 0;
  v41 = 0;
  v42 = 1;
  v43 = v33;
  v44 = v34;
  v49 = 1;
  v47 = v39;
  v48 = 0u;
  v13 = &v9[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition];
  v45 = 0u;
  v46 = 0x3FF0000000000000uLL;
  swift_beginAccess();
  v14 = *v13;
  v15 = *(v13 + 2);
  v31[1] = *(v13 + 1);
  v31[2] = v15;
  v31[0] = v14;
  v16 = *(v13 + 3);
  v17 = *(v13 + 4);
  v18 = *(v13 + 5);
  v32 = v13[96];
  v31[4] = v17;
  v31[5] = v18;
  v31[3] = v16;
  v20 = *(v13 + 4);
  v19 = *(v13 + 5);
  v21 = *(v13 + 3);
  v51 = v13[96];
  v50[4] = v20;
  v50[5] = v19;
  v50[3] = v21;
  v22 = *v13;
  v23 = *(v13 + 2);
  v50[1] = *(v13 + 1);
  v50[2] = v23;
  v50[0] = v22;
  v24 = v48;
  *(v13 + 4) = v47;
  *(v13 + 5) = v24;
  v13[96] = v49;
  v25 = v44;
  *v13 = v43;
  *(v13 + 1) = v25;
  v26 = v46;
  *(v13 + 2) = v45;
  *(v13 + 3) = v26;
  v27 = v12;
  sub_100B3336C(v31, v29);
  sub_100B03E90(&v33, v29);
  sub_100B333DC(v50);
  sub_100C00EF4(v31);
  sub_100B333DC(v31);
  sub_10002A428(&v33);

  return v9;
}

void VocalsAttenuationSlider.accessibilitySliderCurrentPercentageValue.getter()
{
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) > *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue))
  {
    __break(1u);
  }
}

uint64_t sub_100B3336C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B1E08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B333DC(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B1E08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100B33468()
{
  sub_100B34B2C();
  result = AnyTransition.init<A>(_:)();
  static AnyTransition.glowTextReveal = result;
  return result;
}

uint64_t *AnyTransition.glowTextReveal.unsafeMutableAddressor()
{
  if (qword_1011B0598 != -1)
  {
    swift_once();
  }

  return &static AnyTransition.glowTextReveal;
}

uint64_t static AnyTransition.glowTextReveal.getter()
{
  if (qword_1011B0598 != -1)
  {
    swift_once();
  }
}

uint64_t GlowTextRevealTransition.body(content:phase:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (TransitionPhase.isIdentity.getter())
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = sub_10010FC20(&qword_1011B1E38);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = sub_10010FC20(&qword_1011B1E40);
  *(a2 + *(result + 36)) = v4;
  return result;
}

uint64_t (*GlowTextRevealEffectRenderer.animatableData.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_100B34B80;
}

uint64_t GlowTextRevealEffectRenderer.draw(layout:in:)(uint64_t a1, uint64_t *a2, double a3)
{
  v63 = a2;
  v62 = type metadata accessor for GraphicsContext.Filter();
  v56 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_10010FC20(&qword_1011B1E48);
  v64 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v49 - v6;
  v71 = type metadata accessor for Text.Layout.Line();
  v55 = *(v71 - 8);
  __chkstk_darwin(v71);
  v60 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v52 = &v49 - v9;
  v10 = sub_10010FC20(&qword_1011B1E50);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v49 - v14);
  v16 = type metadata accessor for Text.Layout();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10010FC20(&qword_1011B1E58);
  __chkstk_darwin(v20 - 8);
  v22 = &v49 - v21;
  v23 = sub_10010FC20(&qword_1011B1E60);
  v24 = v23 - 8;
  __chkstk_darwin(v23);
  v26 = &v49 - v25;
  v68 = sub_100B33E38(a1, a3);
  (*(v17 + 16))(v22, a1, v16);
  v27 = v22;
  v28 = v26;
  (*(v17 + 32))(v19, v27, v16);
  sub_100B34248(&qword_1011B1E68);
  dispatch thunk of Sequence.makeIterator()();
  v50 = *(v24 + 44);
  *&v26[v50] = 0;
  v29 = *(sub_10010FC20(&qword_1011B1E70) + 36);
  v30 = sub_100B34248(&qword_1011B1E78);
  v66 = 0;
  v51 = (v55 + 16);
  v70 = (v55 + 32);
  v31 = v64;
  v64 += 6;
  v65 = (v31 + 7);
  v54 = (v56 + 8);
  v53 = (v55 + 8);
  v56 = v29;
  v55 = v30;
  v59 = v15;
  v58 = v16;
  v57 = v12;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*(v28 + v29) == v73[0])
    {
      v32 = 1;
      v33 = v69;
      goto LABEL_6;
    }

    v34 = dispatch thunk of Collection.subscript.read();
    v35 = v52;
    v36 = v71;
    (*v51)(v52);
    v34(v73, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v33 = v69;
    v37 = v70;
    v38 = *(v69 + 48);
    v40 = v66;
    v39 = v67;
    *v67 = v66;
    result = (*v37)(&v39[v38], v35, v36);
    if (__OFADD__(v40, 1))
    {
      break;
    }

    v66 = v40 + 1;
    *(v28 + v50) = v40 + 1;
    sub_10003D17C(v67, v12, &qword_1011B1E48);
    v32 = 0;
LABEL_6:
    (*v65)(v12, v32, 1, v33);
    sub_10003D17C(v12, v15, &qword_1011B1E50);
    if ((*v64)(v15, 1, v33) == 1)
    {
      sub_100B3428C(v28);
    }

    v42 = *v15;
    v43 = v15 + *(v33 + 48);
    v44 = v60;
    (*v70)(v60, v43, v71);
    v73[0] = *v63;
    __chkstk_darwin(v73[0]);
    *(&v49 - 4) = a3;
    v45 = v68;
    *(&v49 - 3) = v44;
    *(&v49 - 2) = v45;
    *(&v49 - 1) = v42;

    v46 = GraphicsContext.clipToLayer(opacity:options:content:)();
    v72 = v73[0];
    __chkstk_darwin(v46);
    *(&v49 - 4) = a3;
    *(&v49 - 3) = v44;
    *(&v49 - 2) = v45;
    *(&v49 - 1) = v42;
    v12 = v57;

    GraphicsContext.clipToLayer(opacity:options:content:)();
    v47 = v61;
    static GraphicsContext.Filter.blur(radius:options:)();
    GraphicsContext.addFilter(_:options:)();
    (*v54)(v47, v62);
    GraphicsContext.draw(_:options:)();
    GraphicsContext.draw(_:options:)();

    v48 = v44;
    v15 = v59;
    (*v53)(v48, v71);
    v29 = v56;
  }

  __break(1u);
  return result;
}

char *sub_100B33E38(uint64_t a1, double a2)
{
  v33 = type metadata accessor for Text.Layout.Line();
  v4 = *(v33 - 8);
  __chkstk_darwin(v33);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Text.Layout();
  sub_100B34248(&qword_1011B1E78);
  v7 = dispatch thunk of Collection.count.getter();
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v9 = v7;
    v34 = _swiftEmptyArrayStorage;
    sub_100BFA3A4(0, v7 & ~(v7 >> 63), 0);
    v8 = v34;
    dispatch thunk of Collection.startIndex.getter();
    if (v9 < 0)
    {
      goto LABEL_24;
    }

    v32 = (v4 + 16);
    do
    {
      v10 = dispatch thunk of Collection.subscript.read();
      v11 = v33;
      (*v32)(v6);
      v10(v40, 0);
      Text.Layout.Line.typographicBounds.getter();
      v41.origin.x = v35;
      v41.size.width = v37;
      v41.origin.y = v36 - v38;
      v41.size.height = v38 + v39;
      Width = CGRectGetWidth(v41);
      (*(v4 + 8))(v6, v11);
      v34 = v8;
      v13 = a1;
      v15 = v8[2];
      v14 = v8[3];
      if (v15 >= v14 >> 1)
      {
        sub_100BFA3A4((v14 > 1), v15 + 1, 1);
        v8 = v34;
      }

      v8[2] = v15 + 1;
      *&v8[v15 + 4] = Width;
      dispatch thunk of Collection.formIndex(after:)();
      --v9;
      a1 = v13;
    }

    while (v9);
  }

  v16 = v8[2];
  if (!v16)
  {
    v18 = 0.0;
    goto LABEL_16;
  }

  if (v16 <= 3)
  {
    v17 = 0;
    v18 = 0.0;
LABEL_14:
    v21 = v16 - v17;
    v22 = &v8[v17 + 4];
    do
    {
      v23 = *v22++;
      v18 = v18 + v23;
      --v21;
    }

    while (v21);
    goto LABEL_16;
  }

  v17 = v16 & 0x7FFFFFFFFFFFFFFCLL;
  v19 = (v8 + 6);
  v18 = 0.0;
  v20 = v16 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v18 = v18 + *(v19 - 2) + *(v19 - 1) + *v19 + v19[1];
    v19 += 4;
    v20 -= 4;
  }

  while (v20);
  if (v16 != v17)
  {
    goto LABEL_14;
  }

LABEL_16:
  sub_10010FC20(&qword_1011B1EB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = 0;
  if (v16)
  {
    v25 = 0;
    while (v25 < v8[2])
    {
      v26 = *&v8[v25 + 4];
      v27 = v25 + 1;
      v28 = *(inited + 8 * v25 + 32);
      v29 = *(inited + 24);
      if (v25 + 1 >= v29 >> 1)
      {
        inited = sub_100BF9AA8((v29 > 1), v25 + 2, 1, inited);
      }

      *(inited + 16) = v25 + 2;
      *(inited + 8 * v25++ + 40) = v26 / v18 + v28;
      if (v16 == v27)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

LABEL_22:

  v40[0] = inited;
  v30 = sub_100B34420(0, v16, v40, a2);

  return v30;
}

uint64_t sub_100B34248(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Text.Layout();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100B3428C(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B1E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100B3434C(uint64_t result, uint64_t (*a2)(void, uint64_t, double))
{
  v3 = v2[5];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v2[4];
    if (*(v4 + 16) > v3)
    {
      return a2(v2[3], result, *(v4 + 8 * v3 + 32));
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100B343CC()
{
  result = qword_1011B1E80;
  if (!qword_1011B1E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1E80);
  }

  return result;
}

char *sub_100B34420(char *result, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_18;
  }

  v5 = result;
  result = _swiftEmptyArrayStorage;
  if (v4)
  {
    result = sub_100BFA384(0, v4 & ~(v4 >> 63), 0);
    if (a2 < v5 || v4 < 0)
    {
      goto LABEL_19;
    }

    result = _swiftEmptyArrayStorage;
    v9 = v5;
    while (a2 != v9)
    {
      if (v5 < 0)
      {
        goto LABEL_15;
      }

      v10 = *(*a3 + 16);
      if (v9 >= v10)
      {
        goto LABEL_16;
      }

      v11 = v9 + 1;
      if (v9 + 1 >= v10)
      {
        goto LABEL_17;
      }

      v12 = *a3 + 8 * v9;
      v13 = *(v12 + 32);
      v14 = *(v12 + 40);
      v17 = result;
      v16 = *(result + 2);
      v15 = *(result + 3);
      if (v16 >= v15 >> 1)
      {
        sub_100BFA384((v15 > 1), v16 + 1, 1);
        result = v17;
      }

      *(result + 2) = v16 + 1;
      *&result[8 * v16 + 32] = (a4 - v13) / (v14 - v13);
      v9 = v11;
      if (a2 == v11)
      {
        return result;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

double sub_100B345B4(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*sub_100B345C0(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_100B345EC;
}

double sub_100B345EC(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

unint64_t sub_100B34620()
{
  result = qword_1011B1E88;
  if (!qword_1011B1E88)
  {
    sub_1001109D0(&qword_1011B1E40);
    sub_100020674(&qword_1011B1E90, &qword_1011B1E38);
    sub_100020674(&qword_1011B1E98, &qword_1011B1EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1E88);
  }

  return result;
}

uint64_t sub_100B34704()
{
  v0 = type metadata accessor for GraphicsContext.Shading();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B1EB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100EBDC20;
  *(v4 + 32) = static Color.white.getter();
  *(v4 + 40) = static Color.clear.getter();
  Gradient.init(colors:)();
  Text.Layout.Line.typographicBounds.getter();
  Text.Layout.Line.typographicBounds.getter();
  Text.Layout.Line.typographicBounds.getter();
  *&v10.origin.x = v6[13];
  *&v10.size.width = v6[15];
  v10.origin.y = *&v6[14] - v7;
  v10.size.height = v7 + v8;
  CGRectInset(v10, -14.0, 0.0);
  Path.init(_:)();
  static GraphicsContext.Shading.linearGradient(_:startPoint:endPoint:options:)();

  GraphicsContext.fill(_:with:style:)();
  sub_100338684(v9);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100B348E0()
{
  v0 = type metadata accessor for GraphicsContext.Shading();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B1EA8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100EBEF50;
  static Color.clear.getter();
  *(v4 + 32) = Gradient.Stop.init(color:location:)();
  *(v4 + 40) = v5;
  static Color.white.getter();
  *(v4 + 48) = Gradient.Stop.init(color:location:)();
  *(v4 + 56) = v6;
  static Color.white.getter();
  *(v4 + 64) = Gradient.Stop.init(color:location:)();
  *(v4 + 72) = v7;
  static Color.clear.getter();
  *(v4 + 80) = Gradient.Stop.init(color:location:)();
  *(v4 + 88) = v8;
  Gradient.init(stops:)();
  Text.Layout.Line.typographicBounds.getter();
  Text.Layout.Line.typographicBounds.getter();
  Text.Layout.Line.typographicBounds.getter();
  *&v14.origin.x = v10[13];
  *&v14.size.width = v10[15];
  v14.origin.y = *&v10[14] - v11;
  v14.size.height = v11 + v12;
  CGRectInset(v14, -57.5, 0.0);
  Path.init(_:)();
  static GraphicsContext.Shading.linearGradient(_:startPoint:endPoint:options:)();

  GraphicsContext.fill(_:with:style:)();
  sub_100338684(v13);
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_100B34B2C()
{
  result = qword_1011B1EC0;
  if (!qword_1011B1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1EC0);
  }

  return result;
}

double Corner.radius(in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
    return *&a1;
  }

  Width = CGRectGetWidth(*&a2);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  Height = CGRectGetHeight(v14);
  if (Height >= Width)
  {
    Height = Width;
  }

  return Height * 0.5;
}

void Corner.hash(into:)(uint64_t a1, Swift::UInt64 a2, Swift::UInt a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      String.hash(into:)();
      if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = 0;
      }

      Hasher._combine(_:)(v5);
    }

    else
    {

      String.hash(into:)();
    }
  }

  else
  {
    String.hash(into:)();
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    Hasher._combine(_:)(v7);
    Hasher._combine(_:)(a3);
  }
}

BOOL static Corner.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return *&a1 == *&a4;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  return *&a1 == *&a4 && a2 == a5;
}

Swift::Int Corner.hashValue.getter(Swift::UInt64 a1, Swift::UInt a2, char a3)
{
  Hasher.init(_seed:)();
  Corner.hash(into:)(v7, a1, a2, a3);
  return Hasher._finalize()();
}

Swift::Int sub_100B34DB4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Corner.hash(into:)(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int sub_100B34E1C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Corner.hash(into:)(v5, v1, v2, v3);
  return Hasher._finalize()();
}

uint64_t sub_100B34E74(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    v5 = *a1 == v2;
    if (v4 != 1)
    {
      v5 = 0;
    }

    v6 = v3 | *&v2;
    v8 = v4 == 2 && v6 == 0;
    if (*(a1 + 16) == 1)
    {
      return v5;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      v10 = 0;
    }

    else
    {
      v10 = *(a1 + 8) == v3;
    }

    v11 = v10;
    if (*a1 == *a2)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t static Border.__derived_struct_equals(_:_:)(double a1, double a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, unsigned __int8 a6)
{
  v7 = a4;
  v8 = static Color.== infix(_:_:)() & (a1 == a2);
  if (v7 == a6)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void Border.hash(into:)(double a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  Color.hash(into:)();
  v6 = 0.0;
  if (a1 != 0.0)
  {
    v6 = a1;
  }

  Hasher._combine(_:)(*&v6);
  Hasher._combine(_:)(a4);
}

Swift::Int Border.hashValue.getter(double a1, uint64_t a2, unsigned __int8 a3)
{
  Hasher.init(_seed:)();
  Color.hash(into:)();
  v5 = 0.0;
  if (a1 != 0.0)
  {
    v5 = a1;
  }

  Hasher._combine(_:)(*&v5);
  Hasher._combine(_:)(a3);
  return Hasher._finalize()();
}

void sub_100B35014()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Color.hash(into:)();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  Hasher._combine(_:)(*&v3);
  Hasher._combine(_:)(v2);
}

Swift::Int sub_100B35074()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher.init(_seed:)();
  Color.hash(into:)();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  Hasher._combine(_:)(*&v3);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

BOOL sub_100B350F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = static Color.== infix(_:_:)();
  result = 0;
  if ((v6 & 1) != 0 && v2 == v4)
  {
    return v3 == v5;
  }

  return result;
}

void Shadow.hash(into:)()
{
  Color.hash(into:)();
  v1 = v0[1];
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  v2 = v0[2];
  v3 = v0[3];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  if (v3 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v3;
  }

  Hasher._combine(_:)(*&v4);
  v5 = v0[4];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  Hasher._combine(_:)(*&v5);
}

Swift::Int Shadow.hashValue.getter()
{
  Hasher.init(_seed:)();
  Shadow.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100B3529C()
{
  Hasher.init(_seed:)();
  Shadow.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_100B352D8(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  v10 = static Color.== infix(_:_:)();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v3 == v7 && v5 == v9)
  {
    return v4 == v8;
  }

  return result;
}

uint64_t sub_100B35390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v8 = sub_10010FC20(&qword_1011B1F08);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = sub_10010FC20(&qword_1011B1F10);
  v10 = a2 + *(result + 36);
  *v10 = v5;
  *(v10 + 8) = v6;
  *(v10 + 16) = v7;
  *(v10 + 24) = 0;
  *(v10 + 32) = 256;
  return result;
}

uint64_t sub_100B3548C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (!*(v2 + 16))
  {
    v6 = 0.5;
    goto LABEL_5;
  }

  v5 = 0.0;
  if (*(v2 + 16) == 1)
  {
    v6 = -0.5;
LABEL_5:
    v5 = *(v2 + 1) * v6;
  }

  v8 = v2[3];
  v7 = v2[4];
  v9 = *(v2 + 40);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();

  v10 = static Alignment.center.getter();
  v12 = v11;
  v13 = static Alignment.center.getter();
  v15 = v14;
  *&v27 = v8;
  *(&v27 + 1) = v7;
  LOBYTE(v28) = v9;
  *(&v28 + 1) = v5;
  v29 = v24;
  v30 = v25;
  *&v31 = v26;
  *(&v31 + 1) = v4;
  LOWORD(v32) = 256;
  *(&v32 + 1) = v10;
  *&v33 = v12;
  *(&v33 + 1) = v13;
  v34 = v14;
  v16 = sub_10010FC20(&qword_1011B1F18);
  (*(*(v16 - 8) + 16))(a2, a1, v16);
  v17 = a2 + *(sub_10010FC20(&qword_1011B1F20) + 36);
  v18 = v32;
  *(v17 + 64) = v31;
  *(v17 + 80) = v18;
  *(v17 + 96) = v33;
  *(v17 + 112) = v34;
  v19 = v28;
  *v17 = v27;
  *(v17 + 16) = v19;
  v20 = v30;
  *(v17 + 32) = v29;
  *(v17 + 48) = v20;
  v35[0] = v8;
  v35[1] = v7;
  v36 = v9;
  v37 = v5;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v41 = v4;
  v42 = 256;
  v43 = v10;
  v44 = v12;
  v45 = v13;
  v46 = v15;
  sub_1000089F8(&v27, &v23, &qword_1011B1F28);
  return sub_1000095E8(v35, &qword_1011B1F28);
}

uint64_t View.shadow(_:corner:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *v5 = *a1;
  *&v5[8] = *(a1 + 8);
  *&v5[24] = *(a1 + 24);
  *&v5[40] = a2;
  *&v5[48] = a3;
  v5[56] = a4;

  View.modifier<A>(_:)();
  v6[0] = *v5;
  v6[1] = *&v5[16];
  v7[0] = *&v5[32];
  *(v7 + 9) = *&v5[41];
  return sub_100B37228(v6);
}

uint64_t sub_100B35764@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_10010FC20(&qword_1011B1F50);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v36[-v9];
  v11 = *(a1 + 48);
  v39 = *(a1 + 40);
  v37 = *(a1 + 56);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  sub_100B37878(a1, v49);
  v16 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  LOBYTE(v49[0]) = 0;
  v25 = *(v5 + 44);
  v26 = enum case for BlendMode.destinationOut(_:);
  v27 = type metadata accessor for BlendMode();
  (*(*(v27 - 8) + 104))(&v10[v25], v26, v27);
  v28 = v39;
  *v10 = v39;
  *(v10 + 1) = v11;
  v29 = v11;
  v38 = v11;
  LOBYTE(v11) = v37;
  v10[16] = v37;
  *(v10 + 3) = 0;
  sub_1000089F8(v10, v7, &qword_1011B1F50);
  *&v42 = v28;
  *(&v42 + 1) = v29;
  LOBYTE(v43) = v11;
  *(&v43 + 1) = *v41;
  HIDWORD(v43) = *&v41[3];
  v44 = 0;
  *&v45 = v12;
  *(&v45 + 1) = v13;
  *&v46 = v14;
  *(&v46 + 1) = v15;
  LOBYTE(v47) = v16;
  *(&v47 + 1) = *v40;
  DWORD1(v47) = *&v40[3];
  *(&v47 + 1) = v18;
  *&v48[0] = v20;
  *(&v48[0] + 1) = v22;
  *&v48[1] = v24;
  BYTE8(v48[1]) = 0;
  v30 = v43;
  *a2 = v42;
  a2[1] = v30;
  v31 = v45;
  v32 = v46;
  *(a2 + 89) = *(v48 + 9);
  v33 = v48[0];
  a2[4] = v47;
  a2[5] = v33;
  a2[2] = v31;
  a2[3] = v32;
  v34 = sub_10010FC20(&qword_1011B1F58);
  sub_1000089F8(v7, a2 + *(v34 + 48), &qword_1011B1F50);
  sub_1000089F8(&v42, v49, &qword_1011B1F60);
  sub_1000095E8(v10, &qword_1011B1F50);
  sub_1000095E8(v7, &qword_1011B1F50);
  v49[0] = v39;
  v49[1] = v38;
  v50 = v11;
  *v51 = *v41;
  *&v51[3] = *&v41[3];
  v52 = 0;
  v53 = v12;
  v54 = v13;
  v55 = v14;
  v56 = v15;
  v57 = v16;
  *v58 = *v40;
  *&v58[3] = *&v40[3];
  v59 = v18;
  v60 = v20;
  v61 = v22;
  v62 = v24;
  v63 = 0;
  return sub_1000095E8(v49, &qword_1011B1F60);
}

uint64_t sub_100B35B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v16[0] = *v2;
  v16[1] = v5;
  v17[0] = v2[2];
  *(v17 + 9) = *(v2 + 41);
  v6 = static Alignment.center.getter();
  v8 = v7;
  v9 = (a2 + *(sub_10010FC20(&qword_1011B1F30) + 36));
  *v9 = static Alignment.center.getter();
  v9[1] = v10;
  v11 = sub_10010FC20(&qword_1011B1F38);
  sub_100B35764(v16, (v9 + *(v11 + 44)));
  v12 = (v9 + *(sub_10010FC20(&qword_1011B1F40) + 36));
  *v12 = v6;
  v12[1] = v8;
  v13 = sub_10010FC20(&qword_1011B1F48);
  v14 = *(*(v13 - 8) + 16);

  return v14(a2, a1, v13);
}

uint64_t sub_100B35CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[0] = a1;
  v18[1] = a2;
  v3 = type metadata accessor for HighlightHoverEffect();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_1011B1F68);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  v10 = *v2;
  v11 = v2[1];
  v12 = *(v2 + 16);
  v13 = *(v2 + 3);
  v15 = v18 + *(v14 + 36) - v8;
  sub_10010FC20(&qword_1011B1F70);
  static ContentShapeKinds.hoverEffect.getter();
  *v15 = v10;
  *(v15 + 1) = v11;
  v15[16] = v12;
  *(v15 + 3) = -v13;
  v15[32] = 0;
  v16 = sub_10010FC20(&qword_1011B1F78);
  (*(*(v16 - 8) + 16))(v9, v18[0], v16);
  static CustomHoverEffect<>.highlight.getter();
  sub_100B378B0();
  sub_100B37994();
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v4 + 8))(v6, v3);
  return sub_1000095E8(v9, &qword_1011B1F68);
}

void sub_100B35ECC(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _OWORD *a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>, CGFloat a9@<D4>)
{
  LODWORD(v48) = a3;
  v46 = a2;
  *&v47 = a1;
  v49 = a4;
  v14 = sub_10010FC20(&qword_1011B2030);
  __chkstk_darwin(v14 - 8);
  v16 = &v43 - v15;
  v17 = type metadata accessor for Edge.Corner.Style();
  v43 = *(v17 - 8);
  __chkstk_darwin(v17);
  v18 = type metadata accessor for ConcentricRectangle();
  v44 = *(v18 - 8);
  v45 = v18;
  __chkstk_darwin(v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for RoundedCornerStyle();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Capsule();
  __chkstk_darwin(v25 - 8);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for RoundedRectangle._Inset();
  v29 = __chkstk_darwin(v28);
  v31 = &v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v48)
  {
    v33 = v46;
    if (v46 == -1)
    {
      v40 = type metadata accessor for RoundedRectangle();
      (*(v22 + 104))(&v31[*(v40 + 20)], enum case for RoundedCornerStyle.continuous(_:), v21);
      v41 = v47;
      *v31 = v47;
      *(v31 + 1) = v41;
      *&v31[*(v28 + 20)] = a9;
      RoundedRectangle._Inset.path(in:)();
      v47 = v50;
      v48 = v51;
      v32 = v52;
      sub_100B37F64(v31, &type metadata accessor for RoundedRectangle._Inset);
    }

    else
    {
      v34 = *&v47;
      v54.origin.x = a5;
      v54.origin.y = a6;
      v54.size.width = a7;
      v54.size.height = a8;
      v55 = CGRectInset(v54, a9, a9);
      v35 = [objc_opt_self() bezierPathWithRoundedRect:v33 byRoundingCorners:v55.origin.x cornerRadii:{v55.origin.y, v55.size.width, v55.size.height, v34, v34}];
      v36 = [v35 CGPath];
      Path.init(_:)();
      v47 = v50;
      v48 = v51;
      v32 = v52;
    }

    goto LABEL_8;
  }

  if (v48 == 1)
  {
    static Edge.Corner.Style.fixed(_:)();
    (*(v43 + 56))(v16, 0, 1, v17);
    static Edge.Corner.Style.concentric(minimum:)();
    sub_1000095E8(v16, &qword_1011B2030);
    ConcentricRectangle.init(corners:isUniform:)();
    v53.origin.x = a5;
    v53.origin.y = a6;
    v53.size.width = a7;
    v53.size.height = a8;
    CGRectInset(v53, a9, a9);
    ConcentricRectangle.path(in:)();
    v47 = v50;
    v48 = v51;
    v32 = v52;
    (*(v44 + 8))(v20, v45);
LABEL_8:
    v39 = v47;
    v38 = v48;
    goto LABEL_9;
  }

  v37 = *(v22 + 104);
  v37(v27, enum case for RoundedCornerStyle.continuous(_:), v21, v29);
  (v37)(v24, enum case for RoundedCornerStyle.circular(_:), v21);
  static RoundedCornerStyle.== infix(_:_:)();
  (*(v22 + 8))(v24, v21);
  sub_100B37F64(v27, &type metadata accessor for Capsule);
  Capsule._Inset.path(in:)();
  v39 = v50;
  v38 = v51;
  v32 = v52;
LABEL_9:
  v42 = v49;
  *v49 = v39;
  v42[1] = v38;
  *(v42 + 32) = v32;
}

double sub_100B3644C@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 16);
  result = *(v2 + 24) + a2;
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = result;
  return result;
}

double sub_100B3646C@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_100B35ECC(*v5, *(v5 + 8), *(v5 + 16), v9, a2, a3, a4, a5, *(v5 + 24));
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

void (*sub_100B364BC(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_100260668;
}

uint64_t sub_100B36544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B37EB8();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100B365A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B37EB8();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100B3660C(uint64_t a1)
{
  v2 = sub_100B37EB8();

  return Shape.body.getter(a1, v2);
}

void sub_100B36658()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_1011B1EC8 = v1 == 6;
}

uint64_t sub_100B366BC()
{
  if (qword_1011B05A0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4008000000000000;
  if (byte_1011B1EC8)
  {
    v0 = 0x4018000000000000;
  }

  static Corner.extraSmall = v0;
  unk_10121B6C0 = -1;
  byte_10121B6C8 = 0;
  return result;
}

uint64_t *Corner.extraSmall.unsafeMutableAddressor()
{
  if (qword_1011B05A8 != -1)
  {
    swift_once();
  }

  return &static Corner.extraSmall;
}

uint64_t static Corner.extraSmall.getter()
{
  if (qword_1011B05A8 != -1)
  {
    swift_once();
  }

  return static Corner.extraSmall;
}

uint64_t sub_100B367D8()
{
  if (qword_1011B05A0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4014000000000000;
  if (byte_1011B1EC8)
  {
    v0 = 0x4020000000000000;
  }

  static Corner.small = v0;
  *algn_10121B6D8 = -1;
  byte_10121B6E0 = 0;
  return result;
}

uint64_t *Corner.small.unsafeMutableAddressor()
{
  if (qword_1011B05B0 != -1)
  {
    swift_once();
  }

  return &static Corner.small;
}

uint64_t static Corner.small.getter()
{
  if (qword_1011B05B0 != -1)
  {
    swift_once();
  }

  return static Corner.small;
}

uint64_t sub_100B368F4()
{
  if (qword_1011B05A0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4020000000000000;
  if (byte_1011B1EC8)
  {
    v0 = 0x4024000000000000;
  }

  static Corner.medium = v0;
  unk_10121B6F0 = -1;
  byte_10121B6F8 = 0;
  return result;
}

uint64_t *Corner.medium.unsafeMutableAddressor()
{
  if (qword_1011B05B8 != -1)
  {
    swift_once();
  }

  return &static Corner.medium;
}

uint64_t static Corner.medium.getter()
{
  if (qword_1011B05B8 != -1)
  {
    swift_once();
  }

  return static Corner.medium;
}

uint64_t sub_100B36A10()
{
  if (qword_1011B05A0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4024000000000000;
  if (byte_1011B1EC8)
  {
    v0 = 0x4030000000000000;
  }

  static Corner.large = v0;
  *algn_10121B708 = -1;
  byte_10121B710 = 0;
  return result;
}

uint64_t *Corner.large.unsafeMutableAddressor()
{
  if (qword_1011B05C0 != -1)
  {
    swift_once();
  }

  return &static Corner.large;
}

uint64_t static Corner.large.getter()
{
  if (qword_1011B05C0 != -1)
  {
    swift_once();
  }

  return static Corner.large;
}

uint64_t sub_100B36B2C()
{
  if (qword_1011B05A0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x402C000000000000;
  if (byte_1011B1EC8)
  {
    v0 = 0x4038000000000000;
  }

  static Corner.extraLarge = v0;
  unk_10121B720 = -1;
  byte_10121B728 = 0;
  return result;
}

uint64_t *Corner.extraLarge.unsafeMutableAddressor()
{
  if (qword_1011B05C8 != -1)
  {
    swift_once();
  }

  return &static Corner.extraLarge;
}

uint64_t static Corner.extraLarge.getter()
{
  if (qword_1011B05C8 != -1)
  {
    swift_once();
  }

  return static Corner.extraLarge;
}

uint64_t sub_100B36C48()
{
  v0 = objc_allocWithZone(UIColor);
  v3[4] = sub_100B36D24;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_10003640C;
  v3[3] = &unk_1010E34A8;
  v1 = _Block_copy(v3);
  [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  result = Color.init(uiColor:)();
  static Border.artwork = result;
  qword_10121B738 = 0x3FE0000000000000;
  byte_10121B740 = 0;
  return result;
}

id sub_100B36D24(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = dbl_100EFDBD0[v1 == 1];
  v4 = &selRef_blackColor;
  if (v1 != 1)
  {
    v4 = &selRef_whiteColor;
  }

  v5 = [v2 *v4];
  v6 = [v5 colorWithAlphaComponent:v3];

  return v6;
}

uint64_t *Border.artwork.unsafeMutableAddressor()
{
  if (qword_1011B05D0 != -1)
  {
    swift_once();
  }

  return &static Border.artwork;
}

double static Border.artwork.getter()
{
  if (qword_1011B05D0 != -1)
  {
    swift_once();
  }

  v0 = *&qword_10121B738;

  return v0;
}

double sub_100B36E88()
{
  static Color.black.getter();
  v0 = Color.opacity(_:)();

  static Shadow.shallow = v0;
  unk_10121B750 = xmmword_100EFDBE0;
  result = 2.0;
  unk_10121B760 = xmmword_100EFDBF0;
  return result;
}

uint64_t *Shadow.shallow.unsafeMutableAddressor()
{
  if (qword_1011B05D8 != -1)
  {
    swift_once();
  }

  return &static Shadow.shallow;
}

uint64_t static Shadow.shallow.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B05D8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.shallow;
  *(a1 + 8) = unk_10121B750;
  *(a1 + 24) = unk_10121B760;
}

double sub_100B36FBC()
{
  static Color.black.getter();
  v0 = Color.opacity(_:)();

  static Shadow.intermediate = v0;
  unk_10121B778 = xmmword_100EC40A0;
  result = 15.0;
  unk_10121B788 = xmmword_100EFDC00;
  return result;
}

uint64_t *Shadow.intermediate.unsafeMutableAddressor()
{
  if (qword_1011B05E0 != -1)
  {
    swift_once();
  }

  return &static Shadow.intermediate;
}

uint64_t static Shadow.intermediate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B05E0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.intermediate;
  *(a1 + 8) = unk_10121B778;
  *(a1 + 24) = unk_10121B788;
}

double sub_100B370F4()
{
  static Color.black.getter();
  v0 = Color.opacity(_:)();

  static Shadow.deep = v0;
  *algn_10121B7A0 = xmmword_100EFDC10;
  result = 25.0;
  *&algn_10121B7A0[16] = xmmword_100EFDC20;
  return result;
}

uint64_t *Shadow.deep.unsafeMutableAddressor()
{
  if (qword_1011B05E8 != -1)
  {
    swift_once();
  }

  return &static Shadow.deep;
}

uint64_t static Shadow.deep.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B05E8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.deep;
  *(a1 + 8) = *algn_10121B7A0;
  *(a1 + 24) = *&algn_10121B7A0[16];
}

unint64_t sub_100B3725C()
{
  result = qword_1011B1ED0;
  if (!qword_1011B1ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1ED0);
  }

  return result;
}

unint64_t sub_100B372B4()
{
  result = qword_1011B1ED8;
  if (!qword_1011B1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1ED8);
  }

  return result;
}

unint64_t sub_100B3730C()
{
  result = qword_1011B1EE0;
  if (!qword_1011B1EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1EE0);
  }

  return result;
}

unint64_t sub_100B37364()
{
  result = qword_1011B1EE8;
  if (!qword_1011B1EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1EE8);
  }

  return result;
}

uint64_t sub_100B373B8(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

unint64_t sub_100B37410()
{
  result = qword_1011B1EF0;
  if (!qword_1011B1EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1EF0);
  }

  return result;
}

unint64_t sub_100B37464()
{
  result = qword_1011B4A20;
  if (!qword_1011B4A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4A20);
  }

  return result;
}

unint64_t sub_100B374B8()
{
  result = qword_1011B1EF8;
  if (!qword_1011B1EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1EF8);
  }

  return result;
}

uint64_t sub_100B3750C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  type metadata accessor for ModifiedContent();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_100B3757C()
{
  result = qword_1011B1F00;
  if (!qword_1011B1F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1F00);
  }

  return result;
}

__n128 sub_100B375D0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100B375E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100B37638(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100B37698(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_100B376E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100B37740(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100B37754(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_100B3779C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100B378B0()
{
  result = qword_1011B1F80;
  if (!qword_1011B1F80)
  {
    sub_1001109D0(&qword_1011B1F68);
    sub_100020674(&qword_1011B1F88, &qword_1011B1F78);
    sub_100020674(&qword_1011B1F90, &qword_1011B1F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1F80);
  }

  return result;
}

unint64_t sub_100B37994()
{
  result = qword_1011B1F98;
  if (!qword_1011B1F98)
  {
    type metadata accessor for HighlightHoverEffect();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1F98);
  }

  return result;
}

uint64_t sub_100B379EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 32))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100B37A34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_100B37A88()
{
  result = qword_1011B1FA0;
  if (!qword_1011B1FA0)
  {
    sub_1001109D0(&qword_1011B1F10);
    sub_100B37B40();
    sub_100020674(&qword_1011B1FC0, &qword_1011B1FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1FA0);
  }

  return result;
}

unint64_t sub_100B37B40()
{
  result = qword_1011B1FA8;
  if (!qword_1011B1FA8)
  {
    sub_1001109D0(&qword_1011B1FB0);
    sub_100020674(&qword_1011B1FB8, &qword_1011B1F08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1FA8);
  }

  return result;
}

unint64_t sub_100B37BF8()
{
  result = qword_1011B1FD0;
  if (!qword_1011B1FD0)
  {
    sub_1001109D0(&qword_1011B1F20);
    sub_100020674(&qword_1011B1FD8, &qword_1011B1F18);
    sub_100020674(&qword_1011B1FE0, &qword_1011B1F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1FD0);
  }

  return result;
}

unint64_t sub_100B37CDC()
{
  result = qword_1011B1FE8;
  if (!qword_1011B1FE8)
  {
    sub_1001109D0(&qword_1011B1F30);
    sub_100020674(&qword_1011B1FF0, &qword_1011B1F48);
    sub_100020674(&qword_1011B1FF8, &qword_1011B1F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1FE8);
  }

  return result;
}

unint64_t sub_100B37E08()
{
  result = qword_1011B2010;
  if (!qword_1011B2010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2010);
  }

  return result;
}

unint64_t sub_100B37E60()
{
  result = qword_1011B2018;
  if (!qword_1011B2018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2018);
  }

  return result;
}

unint64_t sub_100B37EB8()
{
  result = qword_1011B2020;
  if (!qword_1011B2020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2020);
  }

  return result;
}

unint64_t sub_100B37F10()
{
  result = qword_1011B2028;
  if (!qword_1011B2028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2028);
  }

  return result;
}

uint64_t sub_100B37F64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_100B37FCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      CGFloat._bridgeToObjectiveC()();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

char *sub_100B38074(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_100BFA364(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        _s3__C7CGColorCMa_1(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100BFA364((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100016270(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      _s3__C7CGColorCMa_1(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100BFA364((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100016270(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_100B38240(uint64_t a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100B3BC4C(AssociatedTypeWitness, AssociatedTypeWitness);
  swift_allocObject();
  v5 = static Array._adoptStorage(_:count:)();
  v6 = a2[7];
  v6(a1, a2);
  v6(a1, a2);
  v7 = a2[8];
  v7(a1, a2);
  v7(a1, a2);
  v8 = a2[9];
  v8(a1, a2);
  v8(a1, a2);
  type metadata accessor for Array();
  return v5;
}

double sub_100B383EC()
{
  v4 = *v0 / (*v0 + 60.0);
  v3 = (1.0 - v4) * 0.5;
  sub_10010FC20(&qword_1011B1EB8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100EBCED0;
  *(v1 + 32) = 0;
  *(v1 + 40) = v3;
  *(v1 + 48) = vaddq_f64(vmulq_n_f64(xmmword_100EFDC30, v4), vdupq_lane_s64(*&v3, 0));
  result = 1.0 - v3;
  *(v1 + 64) = 1.0 - v3;
  *(v1 + 72) = 0x3FF0000000000000;
  return result;
}

double sub_100B3849C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4();
  v9 = v5 / ((v4)(a1, a2) + 60.0);
  v8 = (1.0 - v9) * 0.5;
  sub_10010FC20(&qword_1011B1EB8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100EBCED0;
  *(v6 + 32) = 0;
  *(v6 + 40) = v8;
  *(v6 + 48) = vaddq_f64(vmulq_n_f64(xmmword_100EFDC30, v9), vdupq_lane_s64(*&v8, 0));
  result = 1.0 - v8;
  *(v6 + 64) = 1.0 - v8;
  *(v6 + 72) = 0x3FF0000000000000;
  return result;
}

void *sub_100B38594(uint64_t a1, void *a2)
{
  v4 = sub_100B38240(a1, a2);
  sub_100B3849C(a1, a2);
  v6 = sub_100B38608(v4, v5);

  return v6;
}

void *sub_100B38608(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  result = sub_100BFA3C4(0, v6, 0);
  v27 = v4;
  v28 = v5;
  if (v6)
  {
    v8 = a1 + 32;
    v9 = a2 + 32;
    v10 = v6;
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_21;
      }

      result = Gradient.Stop.init(color:location:)();
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        v26 = result;
        v15 = v11;
        sub_100BFA3C4((v12 > 1), v13 + 1, 1);
        v11 = v15;
        result = v26;
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      --v5;
      v14[4] = result;
      v14[5] = v11;
      --v4;
      v9 += 8;
      v8 += 8;
      if (!--v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_11:
    v16 = v27;
    v17 = v28;
    if (v27 <= v28)
    {
      return _swiftEmptyArrayStorage;
    }

    while (v6 < v16)
    {
      v18 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_23;
      }

      if (v17 != v6)
      {
        if (v6 >= v17)
        {
          goto LABEL_24;
        }

        result = Gradient.Stop.init(color:location:)();
        v21 = _swiftEmptyArrayStorage[2];
        v20 = _swiftEmptyArrayStorage[3];
        if (v21 >= v20 >> 1)
        {
          v23 = v16;
          v24 = result;
          v25 = v19;
          sub_100BFA3C4((v20 > 1), v21 + 1, 1);
          v19 = v25;
          result = v24;
          v16 = v23;
          v17 = v28;
        }

        _swiftEmptyArrayStorage[2] = v21 + 1;
        v22 = &_swiftEmptyArrayStorage[2 * v21];
        v22[4] = result;
        v22[5] = v19;
        ++v6;
        if (v18 != v16)
        {
          continue;
        }
      }

      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100B38814@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v27 = *a1;
  v28 = v3;
  v29 = *(a1 + 32);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  Path.strokedPath(_:)();
  sub_100B3C794(v24);
  v4 = static Color.white.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  Path.strokedPath(_:)();
  sub_100B3C794(v25);
  v5 = static Color.white.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  Path.strokedPath(_:)();
  sub_100B3C794(v26);
  v6 = static Color.white.getter();
  v30[0] = v21;
  v30[1] = v22;
  *&v31 = v23;
  *(&v31 + 1) = v4;
  LOWORD(v32) = 256;
  *(&v32 + 1) = 0x3FE0000000000000;
  v33 = 0;
  v10[0] = 0;
  v8 = v31;
  v9 = v32;
  v34[0] = v18;
  v34[1] = v19;
  *&v35 = v20;
  *(&v35 + 1) = v5;
  LOWORD(v36) = 256;
  *(&v36 + 1) = 0x4000000000000000;
  v37 = 0;
  *&v10[8] = v18;
  v10[72] = 0;
  *&v10[56] = v36;
  *&v10[40] = v35;
  *&v10[24] = v19;
  v38 = v15;
  v39 = v16;
  *&v40 = v17;
  *(&v40 + 1) = v6;
  LOWORD(v41) = 256;
  *(a2 + 208) = 0;
  *(&v41 + 1) = 0x4018000000000000;
  v42 = 0;
  v13 = v40;
  v14 = v41;
  v11 = v38;
  v12 = v39;
  *a2 = v21;
  *(a2 + 16) = v22;
  *(a2 + 64) = *v10;
  *(a2 + 80) = *&v10[16];
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 128) = *&v10[64];
  *(a2 + 144) = v11;
  *(a2 + 96) = *&v10[32];
  *(a2 + 112) = *&v10[48];
  *(a2 + 176) = v13;
  *(a2 + 192) = v14;
  *(a2 + 160) = v12;
  v43[0] = v15;
  v43[1] = v16;
  v44 = v17;
  v45 = v6;
  v46 = 256;
  v47 = 0x4018000000000000;
  v48 = 0;
  sub_1000089F8(v30, v55, &qword_1011B2360);
  sub_1000089F8(v34, v55, &qword_1011B2360);
  sub_1000089F8(&v38, v55, &qword_1011B2360);
  sub_1000095E8(v43, &qword_1011B2360);
  v49[0] = v18;
  v49[1] = v19;
  v50 = v20;
  v51 = v5;
  v52 = 256;
  v53 = 0x4000000000000000;
  v54 = 0;
  sub_1000095E8(v49, &qword_1011B2360);
  v55[0] = v21;
  v55[1] = v22;
  v56 = v23;
  v57 = v4;
  v58 = 256;
  v59 = 0x3FE0000000000000;
  v60 = 0;
  return sub_1000095E8(v55, &qword_1011B2360);
}

double sub_100B38AF8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v18[0] = *v1;
  v18[1] = v3;
  v19 = *(v1 + 32);
  v4 = static Alignment.center.getter();
  v6 = v5;
  sub_100B38814(v18, &v36);
  v30 = v46;
  v31 = v47;
  v32 = v48;
  v26 = v42;
  v27 = v43;
  v28 = v44;
  v29 = v45;
  v22 = v38;
  v23 = v39;
  v24 = v40;
  v25 = v41;
  v20 = v36;
  v21 = v37;
  v34[10] = v46;
  v34[11] = v47;
  v34[12] = v48;
  v34[6] = v42;
  v34[7] = v43;
  v34[8] = v44;
  v34[9] = v45;
  v34[2] = v38;
  v34[3] = v39;
  v34[4] = v40;
  v34[5] = v41;
  v33 = v49;
  v35 = v49;
  v34[0] = v36;
  v34[1] = v37;
  sub_1000089F8(&v20, v17, &qword_1011B2350);
  sub_1000095E8(v34, &qword_1011B2350);
  v46 = v30;
  v47 = v31;
  v48 = v32;
  v49 = v33;
  v42 = v26;
  v43 = v27;
  v44 = v28;
  v45 = v29;
  v38 = v22;
  v39 = v23;
  v40 = v24;
  v41 = v25;
  v36 = v20;
  v37 = v21;
  v7 = *(sub_10010FC20(&qword_1011B2358) + 36);
  v8 = enum case for BlendMode.plusLighter(_:);
  v9 = type metadata accessor for BlendMode();
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  *a1 = v4;
  *(a1 + 8) = v6;
  v10 = v47;
  *(a1 + 176) = v46;
  *(a1 + 192) = v10;
  *(a1 + 208) = v48;
  *(a1 + 224) = v49;
  v11 = v43;
  *(a1 + 112) = v42;
  *(a1 + 128) = v11;
  v12 = v45;
  *(a1 + 144) = v44;
  *(a1 + 160) = v12;
  v13 = v39;
  *(a1 + 48) = v38;
  *(a1 + 64) = v13;
  v14 = v41;
  *(a1 + 80) = v40;
  *(a1 + 96) = v14;
  result = *&v36;
  v16 = v37;
  *(a1 + 16) = v36;
  *(a1 + 32) = v16;
  return result;
}

uint64_t sub_100B38CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a1;
  v19 = a3;
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_1001109D0(&qword_1011B2368);
  v5 = type metadata accessor for ModifiedContent();
  v17 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  v20 = *(a2 + 16);
  v21 = v3;
  static Alignment.center.getter();
  sub_10010FC20(&qword_1011B2370);
  WitnessTable = swift_getWitnessTable();
  sub_100B3C4D4(&qword_1011B2378, &qword_1011B2370, &unk_100F02038, sub_100B3C7F4);
  View.mask<A>(alignment:_:)();
  v12 = sub_100020674(&qword_1011B2388, &qword_1011B2368);
  v22 = WitnessTable;
  v23 = v12;
  v13 = swift_getWitnessTable();
  sub_100B5B86C(v7, v5, v13);
  v14 = *(v17 + 8);
  v14(v7, v5);
  sub_100B5B86C(v10, v5, v13);
  return (v14)(v10, v5);
}

double sub_100B38F94@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_100B38594(a1, a2);
  (*(a2 + 40))(&v11, a1, a2);
  (*(a2 + 48))(&v10, a1, a2);
  Gradient.init(stops:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v6 = *(a2 + 32);
  v6(a1, a2);
  v6(a1, a2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v7 = v15;
  *(a3 + 32) = v14;
  *(a3 + 48) = v7;
  *(a3 + 64) = v16;
  *(a3 + 80) = v17;
  result = *&v12;
  v9 = v13;
  *a3 = v12;
  *(a3 + 16) = v9;
  return result;
}

uint64_t sub_100B39104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = type metadata accessor for RoundedCornerStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a2 + *(sub_10010FC20(&qword_1011B20D0) + 36));
  v13 = type metadata accessor for RoundedRectangle();
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = *(v9 + 104);
  v15(v12 + *(v13 + 20), enum case for RoundedCornerStyle.continuous(_:), v8);
  *v12 = a4;
  v12[1] = a4;
  *(v12 + *(sub_10010FC20(&unk_1011B5680) + 36)) = 256;
  v16 = sub_10010FC20(&qword_1011B20D8);
  v17 = *(*(v16 - 8) + 16);
  v46 = a2;
  v17(a2, a1, v16);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = (a2 + *(sub_10010FC20(&qword_1011B20E0) + 36));
  v19 = v50;
  *v18 = v49;
  v18[1] = v19;
  v18[2] = v51;
  v20 = static Alignment.center.getter();
  v44 = v21;
  v45 = v20;
  v15(v11, v14, v8);
  Path.init(roundedRect:cornerRadius:style:)();
  v23 = v52;
  v22 = v53;
  v24 = v54;
  v25 = v55;
  LOBYTE(a2) = v56;
  v26 = static Color.white.getter();
  v43 = v26;
  v27 = static Color.clear.getter();
  static Color.white.getter();
  v28 = Color.opacity(_:)();

  *&v57 = v23;
  *(&v57 + 1) = v22;
  *&v58 = v24;
  *(&v58 + 1) = v25;
  LOBYTE(v59) = a2;
  *(&v59 + 1) = v48[0];
  DWORD1(v59) = *(v48 + 3);
  *(&v59 + 1) = a3;
  v60 = 0uLL;
  __asm { FMOV            V0.2D, #1.0 }

  v42 = _Q0;
  v61 = _Q0;
  *&v62 = v26;
  *(&v62 + 1) = v27;
  v34 = v44;
  v35 = v45;
  *&v63 = v28;
  *(&v63 + 1) = v45;
  v64 = v44;
  v36 = sub_10010FC20(&qword_1011B20E8);
  v37 = v46 + *(v36 + 36);
  v38 = v62;
  *(v37 + 64) = v61;
  *(v37 + 80) = v38;
  *(v37 + 96) = v63;
  *(v37 + 112) = v64;
  v39 = v58;
  *v37 = v57;
  *(v37 + 16) = v39;
  v40 = v60;
  *(v37 + 32) = v59;
  *(v37 + 48) = v40;
  v65[0] = v23;
  v65[1] = v22;
  v65[2] = v24;
  v65[3] = v25;
  v66 = a2;
  *&v67[3] = *(v48 + 3);
  *v67 = v48[0];
  v68 = a3;
  v69 = 0;
  v70 = 0;
  v71 = v42;
  v72 = v43;
  v73 = v27;
  v74 = v28;
  v75 = v35;
  v76 = v34;
  sub_1000089F8(&v57, &v47, &qword_1011B20F0);
  return sub_1000095E8(v65, &qword_1011B20F0);
}

uint64_t sub_100B39498(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_100B3BCC0(v7, v8) & 1;
}

uint64_t sub_100B39524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for RoundedCornerStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_1011B2120);
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = __chkstk_darwin(v7);
  v24 = &v24 - v9;
  v10 = *a1;
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = *(v4 + 104);
  v12(v6, enum case for RoundedCornerStyle.continuous(_:), v3, v8);
  Path.init(roundedRect:cornerRadius:style:)();
  v36 = v39[0];
  v37 = v39[1];
  v38 = v40;
  (v12)(v6, v11, v3);
  Path.init(roundedRect:cornerRadius:style:)();
  v13 = static Color.white.getter();
  v14 = static Color.clear.getter();
  static Color.white.getter();
  v15 = Color.opacity(_:)();

  v44[0] = v41;
  v44[1] = v42;
  v45 = v43;
  v28 = v41;
  v29 = v42;
  LOBYTE(v30) = v43;
  v46 = 0x3FF0000000000000;
  v47 = 0;
  v48 = 0;
  v49 = 0x3FF0000000000000;
  v50 = 0;
  v51 = 0;
  sub_100B3BA08(v44, v33);
  Path.addPath(_:transform:)();
  sub_100338684(&v41);
  *&v33[0] = 0;
  *(v33 + 8) = v28;
  *(&v33[1] + 8) = v29;
  BYTE8(v33[2]) = v30;
  *(&v33[2] + 9) = v52[0];
  HIDWORD(v33[2]) = *(v52 + 3);
  *&v34 = v10;
  *(&v34 + 1) = v13;
  *&v35 = v14;
  *(&v35 + 1) = v15;
  v28 = *(a1 + 64);
  LOBYTE(v29) = *(a1 + 80);
  sub_10010FC20(&qword_1011B5F50);
  Binding.wrappedValue.getter();
  v16 = swift_allocObject();
  v17 = *(a1 + 80);
  v16[5] = *(a1 + 64);
  v16[6] = v17;
  *(v16 + 105) = *(a1 + 89);
  v18 = *(a1 + 16);
  v16[1] = *a1;
  v16[2] = v18;
  v19 = *(a1 + 48);
  v16[3] = *(a1 + 32);
  v16[4] = v19;
  sub_100B3BA6C(a1, &v28);
  sub_10010FC20(&qword_1011B2128);
  sub_10010FC20(&qword_1011B2130);
  sub_100B3BAA4();
  sub_100B3BAF8();
  sub_100020674(&qword_1011B2168, &qword_1011B2130);
  v20 = v24;
  View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:)();

  v30 = v33[2];
  v31 = v34;
  v32 = v35;
  v28 = v33[0];
  v29 = v33[1];
  sub_100B3BBDC(&v28);
  sub_100338684(v39);
  v33[0] = *(a1 + 88);
  LOBYTE(v33[1]) = *(a1 + 104);
  Binding.wrappedValue.getter();
  if (v36)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = v27;
  (*(v25 + 32))(v27, v20, v26);
  result = sub_10010FC20(&qword_1011B2170);
  *(v22 + *(result + 36)) = v21;
  return result;
}

uint64_t sub_100B399DC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[3];
  v14[2] = a2[2];
  v14[3] = v6;
  v14[4] = a2[4];
  v7 = a2[1];
  v14[0] = *a2;
  v14[1] = v7;
  v8 = sub_10010FC20(&qword_1011B2150);
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  v9 = (a3 + *(sub_10010FC20(&qword_1011B2128) + 36));
  v10 = a2[3];
  v9[2] = a2[2];
  v9[3] = v10;
  v9[4] = a2[4];
  v11 = a2[1];
  *v9 = *a2;
  v9[1] = v11;
  return sub_100B3BC14(v14, &v13);
}

uint64_t sub_100B39AB4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_10010FC20(&qword_1011B2130);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v17 = v16 - v8;
  v16[1] = swift_getKeyPath();
  v19 = a1;
  sub_10010FC20(&qword_1011B2178);
  v9 = sub_1001109D0(&qword_1011B2180);
  v10 = sub_1001109D0(&qword_1011B2188);
  v11 = sub_100020674(&qword_1011B2190, &qword_1011B2180);
  v12 = sub_100020674(&qword_1011B2198, &qword_1011B2188);
  v20 = &type metadata for Double;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  swift_getOpaqueTypeConformance2();
  KeyframeTrack.init(_:content:)();
  sub_100020674(&qword_1011B2168, &qword_1011B2130);
  v13 = v17;
  static KeyframesBuilder.buildExpression<A>(_:)();
  v14 = *(v4 + 8);
  v14(v6, v3);
  static KeyframesBuilder.buildPartialBlock<A>(first:)();
  static KeyframesBuilder.buildFinalResult<A>(_:)();
  v14(v6, v3);
  return (v14)(v13, v3);
}

uint64_t sub_100B39D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for Spring();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10010FC20(&qword_1011B2188);
  v5 = *(v4 - 8);
  v29 = v4;
  v30 = v5;
  __chkstk_darwin(v4);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v28 = &v23 - v8;
  v9 = sub_10010FC20(&qword_1011B2180);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v24 = &v23 - v14;
  v32 = *(a1 + 16);
  v33 = *(a1 + 32);
  sub_10010FC20(&qword_1011B21A0);
  Binding.wrappedValue.getter();
  MoveKeyframe.init(_:)();
  sub_100020674(&qword_1011B2190, &qword_1011B2180);
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v15 = *(v10 + 8);
  v25 = v10 + 8;
  v26 = v15;
  v15(v12, v9);
  v32 = *(a1 + 40);
  v33 = *(a1 + 56);
  Binding.wrappedValue.getter();
  Spring.init(mass:stiffness:damping:allowOverDamping:)();
  *&v32 = 0;
  BYTE8(v32) = 0;
  v16 = v27;
  SpringKeyframe.init(_:duration:spring:startVelocity:)();
  sub_100020674(&qword_1011B2198, &qword_1011B2188);
  v18 = v28;
  v17 = v29;
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v19 = *(v30 + 8);
  v19(v16, v17);
  v20 = v24;
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v21 = v26;
  v26(v12, v9);
  v19(v18, v17);
  return v21(v20, v9);
}

double sub_100B3A184@<D0>(double *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  v15 = *(v1 + 8);
  v16 = v4;
  v17 = *(v1 + 40);
  v5 = *(v1 + 48);
  fmod(v3, 360.0);
  Path.trimmedPath(from:to:)();
  *&v6 = COERCE_DOUBLE(Path.currentPoint.getter());
  v8 = v7;
  v10 = v9;
  sub_100338684(v14);
  v11 = *&v6;
  v12 = v8;
  if (v10)
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  result = v11 / v5;
  *a1 = result;
  a1[1] = v12 / v5;
  return result;
}

double sub_100B3A250@<D0>(double *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  v15 = *(v1 + 8);
  v16 = v4;
  v17 = *(v1 + 40);
  v5 = *(v1 + 48);
  fmod(v3, 360.0);
  Path.trimmedPath(from:to:)();
  *&v6 = COERCE_DOUBLE(Path.currentPoint.getter());
  v8 = v7;
  v10 = v9;
  sub_100338684(v14);
  v11 = *&v6;
  v12 = v8;
  if (v10)
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  result = v11 / v5;
  *a1 = result;
  a1[1] = v12 / v5;
  return result;
}

uint64_t sub_100B3A334(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_100B3BD5C(v8, v9) & 1;
}

uint64_t sub_100B3A390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[5];
  v24[4] = v2[4];
  v25[0] = v5;
  *(v25 + 9) = *(v2 + 89);
  v6 = v2[1];
  v24[0] = *v2;
  v24[1] = v6;
  v7 = v2[3];
  v24[2] = v2[2];
  v24[3] = v7;
  v8 = *(&v24[0] + 1);
  v9 = (a2 + *(sub_10010FC20(&qword_1011B20F8) + 36));
  v10 = *(type metadata accessor for RoundedRectangle() + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = type metadata accessor for RoundedCornerStyle();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  *v9 = *(&v24[0] + 1);
  *(v9 + 1) = v8;
  *&v9[*(sub_10010FC20(&unk_1011B5680) + 36)] = 256;
  v13 = sub_10010FC20(&qword_1011B2100);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v14 = (a2 + *(sub_10010FC20(&qword_1011B2108) + 36));
  *v14 = v21;
  v14[1] = v22;
  v14[2] = v23;
  v15 = static Alignment.center.getter();
  v17 = v16;
  v18 = a2 + *(sub_10010FC20(&qword_1011B2110) + 36);
  sub_100B39524(v24, v18);
  result = sub_10010FC20(&qword_1011B2118);
  v20 = (v18 + *(result + 36));
  *v20 = v15;
  v20[1] = v17;
  return result;
}

uint64_t View.animatedGlow(length:cornerRadius:initialRotation:rotation:animate:isHidden:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, char a14)
{
  *&v15 = a9;
  *(&v15 + 1) = a10;
  *&v16 = a1;
  *(&v16 + 1) = a2;
  *&v17 = a11;
  *(&v17 + 1) = a3;
  *&v18 = a4;
  *(&v18 + 1) = a12;
  *&v19 = a5;
  *(&v19 + 1) = a6;
  v20[0] = a7;
  *&v20[8] = a8;
  *&v20[16] = a13;
  v20[24] = a14;

  View.modifier<A>(_:)();
  v21[4] = v19;
  v22[0] = *v20;
  *(v22 + 9) = *&v20[9];
  v21[0] = v15;
  v21[1] = v16;
  v21[2] = v17;
  v21[3] = v18;
  return sub_100B3A698(v21);
}

void sub_100B3A6C8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer] = 0;
  v31.receiver = v4;
  v31.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  sub_100B3A964(0.5);
  sub_100B3A964(1.0);
  sub_100B3A964(4.0);
  v11 = [objc_allocWithZone(CAGradientLayer) init];
  v12 = OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer;
  v13 = *&v10[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer];
  *&v10[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer] = v11;
  v14 = v11;

  if (!v14)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_100B3AE40(v32);
  sub_100B3B234(v32);
  [v14 setStartPoint:{v33, v34}];

  v15 = *&v10[v12];
  if (!v15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v16 = v15;
  sub_100B3AE40(v35);
  sub_100B3B234(v35);
  [v16 setEndPoint:{v36, v37}];

  v17 = *&v10[v12];
  if (v17)
  {
    v18 = v17;
    sub_100B3AE40(v38);
    sub_10010FC20(&qword_1011B5630);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBEE70;
    v20 = v39;
    *(inited + 32) = v39;
    *(inited + 40) = v20;
    v21 = v40;
    *(inited + 48) = v40;
    *(inited + 56) = v21;
    v22 = v41;
    *(inited + 64) = v41;
    *(inited + 72) = v22;
    v23 = v20;
    v24 = v21;
    v25 = v22;
    v26 = v23;
    v27 = v24;
    v28 = v25;
    sub_100B3B234(v38);
    sub_100B38074(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v18 setColors:isa];

    v30 = [v10 layer];
    [v30 setMask:*&v10[v12]];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_100B3A964(double a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(UIView) init];
  v5 = UIView.forAutolayout.getter();

  v6 = [v5 layer];
  [v6 setBorderWidth:a1];

  v7 = [v5 layer];
  v8 = [objc_opt_self() whiteColor];
  v9 = [v8 CGColor];

  [v7 setBorderColor:v9];
  v10 = [v5 layer];
  [v10 setCornerCurve:kCACornerCurveContinuous];

  v11 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v11 setValue:isa forKey:kCAFilterInputRadius];

  v13 = [v5 layer];
  sub_10010FC20(&qword_1011B21B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100EBC6B0;
  *(v14 + 56) = sub_100009F78(0, &qword_1011B21B8);
  *(v14 + 32) = v11;
  v15 = v11;
  v16 = Array._bridgeToObjectiveC()().super.isa;

  [v13 setFilters:v16];

  v17 = [v5 layer];
  [v17 setCompositingFilter:kCAFilterPlusL];

  [v2 addSubview:v5];
  v18 = objc_opt_self();
  sub_10010FC20(&qword_1011B5630);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100EBDC10;
  v20 = [v5 topAnchor];
  v21 = [v2 topAnchor];
  v22 = a1 * -0.5;
  v23 = [v20 constraintEqualToAnchor:v21 constant:a1 * -0.5];

  *(v19 + 32) = v23;
  v24 = [v5 bottomAnchor];
  v25 = [v2 bottomAnchor];
  v26 = a1 * 0.5;
  v27 = [v24 constraintEqualToAnchor:v25 constant:v26];

  *(v19 + 40) = v27;
  v28 = [v5 leadingAnchor];
  v29 = [v2 leadingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:v22];

  *(v19 + 48) = v30;
  v31 = [v5 trailingAnchor];
  v32 = [v2 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:v26];

  *(v19 + 56) = v33;
  sub_100009F78(0, qword_1011B21C0);
  v34 = Array._bridgeToObjectiveC()().super.isa;

  [v18 activateConstraints:v34];
}

__n128 sub_100B3AE40@<Q0>(uint64_t a1@<X8>)
{
  [v1 bounds];
  Width = CGRectGetWidth(v17);
  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  v6 = [v5 CGColor];

  v7 = [v4 clearColor];
  v8 = [v7 CGColor];

  v9 = [v4 whiteColor];
  v10 = [v9 colorWithAlphaComponent:0.4];

  v11 = [v10 CGColor];
  *a1 = Width;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 24) = result;
  *(a1 + 40) = v6;
  *(a1 + 48) = v8;
  *(a1 + 56) = v11;
  return result;
}

Swift::Void __swiftcall GlowView.layoutSubviews()()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  v1 = OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer;
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  [v0 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_100B3AE40(v20);
  sub_100B3B234(v20);
  sub_100B3AE40(v21);
  sub_100B3B234(v21);
  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  v24 = CGRectInset(v23, -30.0, -30.0);
  [v3 setFrame:{v24.origin.x, v24.origin.y, v24.size.width, v24.size.height}];

  v12 = *&v0[v1];
  if (!v12)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v13 = v12;
  sub_100B3AE40(v22);
  sub_100B383EC();
  v15 = v14;
  sub_100B3B234(v22);
  v16 = *(v15 + 16);
  if (v16)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    sub_100009F78(0, &qword_1011B3A00);
    v17 = 32;
    do
    {
      NSNumber.init(floatLiteral:)(*(v15 + v17));
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v17 += 8;
      --v16;
    }

    while (v16);
  }

  sub_100009F78(0, &qword_1011B3A00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 setLocations:isa];
}

uint64_t GlowView.updateCorners(_:)(uint64_t a1)
{
  v2 = type metadata accessor for UIView.Corner.Radius();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_1011B7710);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for UIView.Corner();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a1, v8, &qword_1011B7710);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000095E8(v8, &qword_1011B7710);
  }

  (*(v10 + 32))(v12, v8, v9);
  UIView.Corner.radius.getter();
  v14 = v28;
  [v28 bounds];
  UIView.Corner.Radius.value(in:)();
  v16 = v15;
  (*(v3 + 8))(v5, v2);
  v17 = [v14 subviews];
  sub_100009F78(0, &qword_1011B7C10);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = v10;
  v27 = v9;
  v25 = v12;
  if (v18 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v20 = 0;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v21 = *(v18 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v24 = [v21 layer];
      [v24 setCornerRadius:v16];

      ++v20;
      if (v23 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return (*(v26 + 8))(v25, v27);
}

id sub_100B3B634@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = v2;
  return v2;
}

id sub_100B3B640@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return v2;
}

id sub_100B3B64C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = v2;
  return v2;
}

uint64_t sub_100B3B658(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_100B3BE2C(v7, v8) & 1;
}

unint64_t sub_100B3B6D8()
{
  result = qword_1011B2068;
  if (!qword_1011B2068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2068);
  }

  return result;
}

uint64_t sub_100B3B72C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  type metadata accessor for ModifiedContent();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_100B3B79C()
{
  result = qword_1011B2070;
  if (!qword_1011B2070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2070);
  }

  return result;
}

__n128 sub_100B3B7F0(uint64_t a1, uint64_t a2)
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

__n128 sub_100B3B814(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100B3B840(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100B3B888(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100B3B904(uint64_t a1)
{
  result = sub_100B3B6D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100B3B92C(uint64_t a1)
{
  result = sub_100B3B79C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100B3B954(uint64_t a1)
{
  result = sub_100B3B97C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100B3B97C()
{
  result = qword_1011B20C8;
  if (!qword_1011B20C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B20C8);
  }

  return result;
}

unint64_t sub_100B3BAA4()
{
  result = qword_1011B2138;
  if (!qword_1011B2138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2138);
  }

  return result;
}

unint64_t sub_100B3BAF8()
{
  result = qword_1011B2140;
  if (!qword_1011B2140)
  {
    sub_1001109D0(&qword_1011B2128);
    sub_100020674(&qword_1011B2148, &qword_1011B2150);
    sub_100020674(&qword_1011B2158, &qword_1011B2160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2140);
  }

  return result;
}

uint64_t sub_100B3BC4C(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_10010FC20(&qword_1011B5630);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage();
  }
}

uint64_t sub_100B3BCC0(double *a1, double *a2)
{
  if (*a1 != *a2 || (static UnitPoint.== infix(_:_:)() & 1) == 0 || (static UnitPoint.== infix(_:_:)() & 1) == 0 || (static Color.== infix(_:_:)() & 1) == 0 || (static Color.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Color.== infix(_:_:)();
}

uint64_t sub_100B3BD5C(double *a1, double *a2)
{
  if (*a1 != *a2 || (static Path.== infix(_:_:)() & 1) == 0 || a1[6] != a2[6] || (static Color.== infix(_:_:)() & 1) == 0 || (static Color.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Color.== infix(_:_:)();
}

uint64_t sub_100B3BE2C(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3] && a1[4] == a2[4] && (_s3__C7CGColorCMa_1(0), sub_100B3BF1C(), (static _CFObject.== infix(_:_:)() & 1) != 0) && (static _CFObject.== infix(_:_:)() & 1) != 0)
  {
    return static _CFObject.== infix(_:_:)() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100B3BF1C()
{
  result = qword_1011B21A8;
  if (!qword_1011B21A8)
  {
    _s3__C7CGColorCMa_1(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B21A8);
  }

  return result;
}

uint64_t sub_100B3BF74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100B3BFBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100B3C01C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100B3C0A4(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 5)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 sub_100B3C0C0(uint64_t a1, uint64_t a2)
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

uint64_t sub_100B3C0DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100B3C124(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t sub_100B3C188(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 33))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100B3C1D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_100B3C228()
{
  result = qword_1011B2248;
  if (!qword_1011B2248)
  {
    sub_1001109D0(&qword_1011B20E8);
    sub_100B3C4D4(&qword_1011B2250, &qword_1011B20E0, &unk_100F01C08, sub_100B3C30C);
    sub_100020674(&qword_1011B2270, &qword_1011B20F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2248);
  }

  return result;
}

unint64_t sub_100B3C30C()
{
  result = qword_1011B2258;
  if (!qword_1011B2258)
  {
    sub_1001109D0(&qword_1011B20D0);
    sub_100020674(&qword_1011B2260, &qword_1011B20D8);
    sub_100020674(&qword_1011B2268, &unk_1011B5680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2258);
  }

  return result;
}

unint64_t sub_100B3C3F0()
{
  result = qword_1011B2278;
  if (!qword_1011B2278)
  {
    sub_1001109D0(&qword_1011B2110);
    sub_100B3C4D4(&qword_1011B2280, &qword_1011B2108, &unk_100F01C30, sub_100B3C558);
    sub_100020674(&qword_1011B2298, &qword_1011B2118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2278);
  }

  return result;
}

uint64_t sub_100B3C4D4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100B3C558()
{
  result = qword_1011B2288;
  if (!qword_1011B2288)
  {
    sub_1001109D0(&qword_1011B20F8);
    sub_100020674(&qword_1011B2290, &qword_1011B2100);
    sub_100020674(&qword_1011B2268, &unk_1011B5680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2288);
  }

  return result;
}

unint64_t sub_100B3C63C(uint64_t a1)
{
  result = sub_100B3C664();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100B3C664()
{
  result = qword_1011B22F0;
  if (!qword_1011B22F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B22F0);
  }

  return result;
}

unint64_t sub_100B3C6B8(uint64_t a1)
{
  result = sub_100B3C6E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100B3C6E0()
{
  result = qword_1011B2348;
  if (!qword_1011B2348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2348);
  }

  return result;
}

unint64_t sub_100B3C7F4()
{
  result = qword_1011B2380;
  if (!qword_1011B2380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2380);
  }

  return result;
}

unint64_t sub_100B3C848()
{
  result = qword_1011B2390;
  if (!qword_1011B2390)
  {
    sub_1001109D0(&qword_1011B2358);
    sub_100020674(&qword_1011B2398, &qword_1011B23A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2390);
  }

  return result;
}

uint64_t HostedScenePhaseSupport.init(label:)(uint64_t a1, uint64_t a2, char a3)
{
  sub_10010FC20(&qword_1011B23A8);
  State.init(wrappedValue:)();
  type metadata accessor for HostedScenePhaseModel();
  swift_allocObject();
  sub_100B3D08C(a1, a2, a3);
  State.init(wrappedValue:)();
  return v7;
}

uint64_t property wrapper backing initializer of NoticePresentingResolverModifier.windowScene()
{
  sub_10010FC20(&qword_1011B23A8);
  State.init(wrappedValue:)();
  return v1;
}

uint64_t type metadata accessor for HostedScenePhaseModel()
{
  result = qword_1011B2478;
  if (!qword_1011B2478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t property wrapper backing initializer of HostedScenePhaseSupport.model()
{
  type metadata accessor for HostedScenePhaseModel();
  State.init(wrappedValue:)();
  return v1;
}

uint64_t HostedScenePhaseSupport.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a2;
  v34 = a6;
  v11 = sub_10010FC20(&qword_1011B23B0);
  v31 = v11;
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = static Alignment.center.getter();
  v16 = v15;
  v38 = a4;
  v39 = a5;
  v33 = sub_10010FC20(&qword_1011B23B8);
  State.projectedValue.getter();
  v30 = v36;
  v17 = v37;
  v18 = sub_10010FC20(&qword_1011B23C0);
  (*(*(v18 - 8) + 16))(v13, a1, v18);
  v19 = &v13[*(sub_10010FC20(&qword_1011B23C8) + 36)];
  *v19 = v30;
  *(v19 + 2) = v17;
  *(v19 + 3) = v14;
  *(v19 + 4) = v16;
  KeyPath = swift_getKeyPath();
  *&v36 = a2;
  *(&v36 + 1) = a3;
  sub_10010FC20(&qword_1011B23D0);
  State.wrappedValue.getter();
  v21 = v38;
  swift_getKeyPath();
  *&v36 = v21;
  sub_100B3F70C(&qword_1011B23E0, type metadata accessor for HostedScenePhaseModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v23 = &v13[*(v11 + 36)];
  v24 = *(sub_10010FC20(&qword_1011B23F0) + 28);
  v25 = type metadata accessor for ScenePhase();
  (*(*(v25 - 8) + 16))(v23 + v24, v21 + v22, v25);

  *v23 = KeyPath;
  v38 = a4;
  v39 = a5;
  State.wrappedValue.getter();
  v26 = v35;
  v38 = v35;
  v27 = swift_allocObject();
  v27[2] = v32;
  v27[3] = a3;
  v27[4] = a4;
  v27[5] = a5;

  v28 = a4;
  sub_10010FC20(&qword_1011B23A8);
  sub_100B3DE10();
  sub_100B3DFAC();
  View.onChange<A>(of:initial:_:)();

  return sub_1000095E8(v13, &qword_1011B23B0);
}

uint64_t sub_100B3CE14(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.scenePhase.setter();
}

void sub_100B3CEDC()
{
  sub_10010FC20(&qword_1011B23D0);
  State.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_100B3E1E8(Strong);
}

uint64_t View.hostedScenePhaseSupport(label:)(uint64_t a1, uint64_t a2, char a3)
{
  sub_10010FC20(&qword_1011B23A8);
  State.init(wrappedValue:)();
  type metadata accessor for HostedScenePhaseModel();
  swift_allocObject();
  sub_100B3D08C(a1, a2, a3);
  State.init(wrappedValue:)();
  View.modifier<A>(_:)();
}

uint64_t sub_100B3D08C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  v9 = enum case for ScenePhase.inactive(_:);
  v10 = type metadata accessor for ScenePhase();
  (*(*(v10 - 8) + 104))(v4 + v8, v9, v10);
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers) = _swiftEmptyArrayStorage;
  ObservationRegistrar.init()();
  if (qword_1011B05F0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000060E4(v11, static Logger.scenes);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136446210;
    v16 = StaticString.description.getter();
    v18 = sub_100010744(v16, v17, &v20);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "[ScenePhaseSupport:%{public}s] Init", v14, 0xCu);
    sub_10000959C(v15);
  }

  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  return v4;
}

uint64_t sub_100B3D288(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ScenePhase();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_100B3F70C(&qword_1011B25D8, &type metadata accessor for ScenePhase);
  v14[0] = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, v7, v4);
    swift_endAccess();
    sub_100B3D84C();
    v10(v7, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_100B3F70C(&qword_1011B23E0, type metadata accessor for HostedScenePhaseModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_100B3D544()
{
  v1 = v0;
  if (qword_1011B05F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, static Logger.scenes);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20[0] = v6;
    *v5 = 136446210;
    v7 = StaticString.description.getter();
    v9 = sub_100010744(v7, v8, v20);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[ScenePhaseSupport:%{public}s] Deallocated — Removing notifications", v5, 0xCu);
    sub_10000959C(v6);
  }

  v10 = *(v1 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = objc_opt_self();
    v13 = v10 + 32;

    do
    {
      sub_10000DD18(v13, v20);
      v14 = [v12 defaultCenter];
      sub_10000954C(v20, v20[3]);
      [v14 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
      sub_10000959C(v20);
      v13 += 32;
      --v11;
    }

    while (v11);
  }

  v15 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  v16 = type metadata accessor for ScenePhase();
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  swift_unknownObjectWeakDestroy();

  v17 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel___observationRegistrar;
  v18 = type metadata accessor for ObservationRegistrar();
  (*(*(v18 - 8) + 8))(v1 + v17, v18);
  return v1;
}

uint64_t sub_100B3D7F8()
{
  sub_100B3D544();

  return swift_deallocClassInstance();
}

void sub_100B3D84C()
{
  v1 = v0;
  v2 = type metadata accessor for ScenePhase();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011B05F0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, static Logger.scenes);

  v18 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = StaticString.description.getter();
    v11 = sub_100010744(v9, v10, &v20);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    swift_getKeyPath();
    v19 = v0;
    sub_100B3F70C(&qword_1011B23E0, type metadata accessor for HostedScenePhaseModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v12 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v12, v2);
    v13 = String.init<A>(describing:)();
    v15 = sub_100010744(v13, v14, &v20);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v18, v7, "[ScenePhaseSupport:%{public}s] scenePhase changed: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v16 = v18;
  }
}

uint64_t sub_100B3DB48@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_100B3F70C(&qword_1011B23E0, type metadata accessor for HostedScenePhaseModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v4 = type metadata accessor for ScenePhase();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_100B3DC40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100B3F70C(&qword_1011B23E0, type metadata accessor for HostedScenePhaseModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v5 = type metadata accessor for ScenePhase();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_100B3DD38(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_100B3D288(v5);
}

unint64_t sub_100B3DE10()
{
  result = qword_1011B23F8;
  if (!qword_1011B23F8)
  {
    sub_1001109D0(&qword_1011B23B0);
    sub_100B3DEC8();
    sub_100020674(&qword_1011B2420, &qword_1011B23F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B23F8);
  }

  return result;
}

unint64_t sub_100B3DEC8()
{
  result = qword_1011B2400;
  if (!qword_1011B2400)
  {
    sub_1001109D0(&qword_1011B23C8);
    sub_100020674(&qword_1011B2408, &qword_1011B23C0);
    sub_100020674(&qword_1011B2410, &qword_1011B2418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2400);
  }

  return result;
}

unint64_t sub_100B3DFAC()
{
  result = qword_1011B2428;
  if (!qword_1011B2428)
  {
    sub_1001109D0(&qword_1011B23A8);
    sub_100B3F70C(&qword_1011B2430, sub_100B3E060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2428);
  }

  return result;
}

unint64_t sub_100B3E060()
{
  result = qword_1011B2438;
  if (!qword_1011B2438)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011B2438);
  }

  return result;
}

uint64_t sub_100B3E0AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScenePhase();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  (*(v5 + 24))(a1 + v9, v8, v4);
  swift_endAccess();
  sub_100B3D84C();
  return (*(v5 + 8))(v8, v4);
}

void sub_100B3E1E8(void *a1)
{
  v2 = sub_10010FC20(&qword_1011B25E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v29 - v3;
  v5 = type metadata accessor for ScenePhase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a1)
    {
      sub_100B3E060();
      v11 = a1;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  if (qword_1011B05F0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000060E4(v13, static Logger.scenes);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v16 = 136446466;
    v17 = StaticString.description.getter();
    v30 = v4;
    v19 = sub_100010744(v17, v18, &v32);
    v29 = v8;
    v20 = v19;

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v31 = swift_unknownObjectWeakLoadStrong();
    sub_10010FC20(&qword_1011B23A8);
    v21 = String.init<A>(describing:)();
    v23 = sub_100010744(v21, v22, &v32);
    v4 = v30;

    *(v16 + 14) = v23;
    v8 = v29;
    _os_log_impl(&_mh_execute_header, v14, v15, "[ScenePhaseSupport:%{public}s] windowScene changed: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
  }

  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = [v24 activationState];

    v27 = &enum case for ScenePhase.background(_:);
    v28 = &enum case for ScenePhase.active(_:);
    if (v26)
    {
      v28 = &enum case for ScenePhase.inactive(_:);
    }

    if (v26 != 2)
    {
      v27 = v28;
    }

    (*(v6 + 104))(v4, *v27, v5);
    (*(v6 + 56))(v4, 0, 1, v5);
    (*(v6 + 32))(v8, v4, v5);
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    (*(v6 + 104))(v8, enum case for ScenePhase.inactive(_:), v5);
  }

  sub_100B3D288(v8);
  sub_100B3E5F0();
}

uint64_t sub_100B3E5F0()
{
  v1 = v0;
  v2 = type metadata accessor for ScenePhase();
  v91 = *(v2 - 8);
  v92 = v2;
  __chkstk_darwin(v2);
  v88 = v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v3;
  v93 = sub_10010FC20(&qword_1011B25C0);
  v4 = *(v93 - 8);
  __chkstk_darwin(v93);
  v87 = (v82 - v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_1011B05F0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000060E4(v8, static Logger.scenes);

    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = v11;
    v13 = os_log_type_enabled(v10, v11);
    v90 = v9;
    if (v13)
    {
      v14 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v14 = 136446466;
      v15 = StaticString.description.getter();
      v17 = sub_100010744(v15, v16, &aBlock);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2082;
      v18 = v9;
      v19 = [v18 description];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = sub_100010744(v20, v22, &aBlock);

      *(v14 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v10, v12, "[ScenePhaseSupport:%{public}s] Setting up notification observers for scene %{public}s)", v14, 0x16u);
      swift_arrayDestroy();
    }

    sub_10010FC20(&qword_1011B25C8);
    v24 = *(v4 + 72);
    v25 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v96 = 6;
    v26 = swift_allocObject();
    v82[2] = v26;
    v27 = v26 + v25;
    v28 = v92;
    v29 = v93;
    v30 = *(v93 + 48);
    v95 = UISceneDidActivateNotification;
    *(v26 + v25) = UISceneDidActivateNotification;
    v31 = v91 + 104;
    v32 = *(v91 + 104);
    v32(v26 + v25 + v30, enum case for ScenePhase.active(_:), v28);
    v33 = *(v29 + 48);
    v94 = UISceneWillConnectNotification;
    *(v27 + v24) = UISceneWillConnectNotification;
    v34 = enum case for ScenePhase.inactive(_:);
    v32(v27 + v24 + v33, enum case for ScenePhase.inactive(_:), v28);
    v35 = (v27 + 2 * v24);
    v36 = *(v29 + 48);
    v84 = UISceneWillDeactivateNotification;
    *v35 = UISceneWillDeactivateNotification;
    v32(v35 + v36, v34, v28);
    v37 = (v27 + 3 * v24);
    v38 = *(v29 + 48);
    v83 = UISceneWillEnterForegroundNotification;
    *v37 = UISceneWillEnterForegroundNotification;
    v32(v37 + v38, v34, v28);
    v39 = (v27 + 4 * v24);
    v40 = *(v29 + 48);
    *v39 = UISceneDidDisconnectNotification;
    v41 = enum case for ScenePhase.background(_:);
    v32(v39 + v40, enum case for ScenePhase.background(_:), v28);
    v85 = v24;
    v42 = (v27 + 5 * v24);
    v43 = *(v29 + 48);
    *v42 = UISceneDidEnterBackgroundNotification;
    v32(v42 + v43, v41, v28);
    v102 = _swiftEmptyArrayStorage;
    v44 = v95;
    v45 = v94;
    v46 = v84;
    v47 = v83;
    v48 = UISceneDidDisconnectNotification;
    v49 = UISceneDidEnterBackgroundNotification;
    sub_100BFA364(0, 6, 0);
    v50 = v102;
    v84 = objc_opt_self();
    v83 = objc_opt_self();
    v82[5] = v31 - 88;
    v82[4] = v31 - 72;
    v82[3] = &v98;
    v82[1] = v27;
    v51 = v27;
    v86 = v1;
    v53 = v91;
    v52 = v92;
    do
    {
      v95 = v50;
      v54 = v87;
      sub_100B3F628(v51, v87);
      v55 = *v54;
      v56 = *(v93 + 48);
      v94 = [v84 defaultCenter];
      v57 = [v83 mainQueue];
      v58 = swift_allocObject();
      swift_weakInit();
      v59 = v88;
      (*(v53 + 16))(v88, v54 + v56, v52);
      v60 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = v58;
      *(v61 + 24) = v55;
      (*(v53 + 32))(v61 + v60, v59, v52);
      v100 = sub_100B3F698;
      v101 = v61;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v98 = sub_100B3F240;
      ObjectType = &unk_1010E3A48;
      v62 = _Block_copy(&aBlock);
      v63 = v55;

      v64 = v94;
      v65 = [(NSString *)v94 addObserverForName:v63 object:v90 queue:v57 usingBlock:v62];
      v66 = v62;
      v50 = v95;
      _Block_release(v66);

      ObjectType = swift_getObjectType();
      *&aBlock = v65;
      sub_1000095E8(v54, &qword_1011B25C0);
      v102 = v50;
      v68 = v50[2];
      v67 = v50[3];
      if (v68 >= v67 >> 1)
      {
        sub_100BFA364((v67 > 1), v68 + 1, 1);
        v50 = v102;
      }

      v50[2] = (v68 + 1);
      sub_100016270(&aBlock, &v50[4 * v68 + 4]);
      v69 = v86;
      v51 += v85;
      --v96;
    }

    while (v96);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v70 = *(v69 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers);
    *(v69 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers) = v50;
    sub_100B3F554(v70);
  }

  else
  {
    if (qword_1011B05F0 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_1000060E4(v72, static Logger.scenes);

    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = v1;
      v77 = swift_slowAlloc();
      *&aBlock = v77;
      *v75 = 136446210;
      v78 = StaticString.description.getter();
      v80 = sub_100010744(v78, v79, &aBlock);

      *(v75 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v73, v74, "[ScenePhaseSupport:%{public}s] Removing notification observers", v75, 0xCu);
      sub_10000959C(v77);
      v1 = v76;
    }

    v81 = *(v1 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers);
    *(v1 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers) = _swiftEmptyArrayStorage;
    sub_100B3F554(v81);
  }
}

uint64_t sub_100B3EF84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for ScenePhase();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1011B05F0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000060E4(v11, static Logger.scenes);
    v12 = a3;

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = a3;
      v16 = v15;
      v29 = swift_slowAlloc();
      *v16 = 136446466;
      v17 = StaticString.description.getter();
      v27 = a4;
      v19 = sub_100010744(v17, v18, &v29);
      v26 = v6;
      v20 = v19;

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      v28 = v25;
      v21 = v12;
      sub_10010FC20(&qword_1011B25D0);
      v22 = String.init<A>(describing:)();
      v24 = sub_100010744(v22, v23, &v29);
      a4 = v27;

      *(v16 + 14) = v24;
      v6 = v26;
      _os_log_impl(&_mh_execute_header, v13, v14, "[ScenePhaseSupport:%{public}s] Received notification %{public}s)", v16, 0x16u);
      swift_arrayDestroy();
    }

    (*(v7 + 16))(v9, a4, v6);
    sub_100B3D288(v9);
  }

  return result;
}

uint64_t sub_100B3F240(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t static Logger.scenes.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B05F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000060E4(v2, static Logger.scenes);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100B3F410()
{
  result = type metadata accessor for ScenePhase();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_100B3F500()
{
  result = qword_1011B25B8;
  if (!qword_1011B25B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B25B8);
  }

  return result;
}

uint64_t sub_100B3F554(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = objc_opt_self();
    v4 = v2 + 32;
    do
    {
      sub_10000DD18(v4, v6);
      v5 = [v3 defaultCenter];
      sub_10000954C(v6, v6[3]);
      [v5 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
      result = sub_10000959C(v6);
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_100B3F628(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B25C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B3F698(uint64_t a1)
{
  v3 = *(type metadata accessor for ScenePhase() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100B3EF84(a1, v4, v5, v6);
}

uint64_t sub_100B3F70C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t WindowSceneResolver.windowScene.getter()
{
  sub_10010FC20(&qword_1011B25E8);
  Binding.wrappedValue.getter();
  return v1;
}

void (*WindowSceneResolver.windowScene.modify(void *a1, uint64_t a2, uint64_t a3, void *a4))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x60uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[9] = a3;
  v8[10] = a4;
  v8[8] = a2;
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v10 = a4;

  v9[11] = sub_10010FC20(&qword_1011B25E8);
  Binding.wrappedValue.getter();
  return sub_100B3F8DC;
}

void sub_100B3F8DC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  *(v2 + 24) = *(*a1 + 64);
  v4 = *(v2 + 48);
  *(v2 + 56) = v4;
  v5 = *(v2 + 80);
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  if (a2)
  {
    v6 = v4;
    Binding.wrappedValue.setter();
  }

  else
  {
    Binding.wrappedValue.setter();
  }

  free(v2);
}

uint64_t WindowSceneResolver.$windowScene.getter()
{
  sub_10010FC20(&qword_1011B25E8);
  Binding.projectedValue.getter();
  return v1;
}

id WindowSceneResolver.makeUIView(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v20 = a3;
  v21 = a4;
  sub_10010FC20(&qword_1011B25E8);
  Binding.projectedValue.getter();
  v4 = v17;
  v5 = v18;
  v6 = type metadata accessor for WindowSceneResolver.View();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV11MusicCoreUI19WindowSceneResolver4View__boundWindowScene];
  *v8 = v16;
  *(v8 + 1) = v4;
  *(v8 + 2) = v5;
  v15.receiver = v7;
  v15.super_class = v6;

  v9 = v5;
  v10 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor:v13];

  [v12 setUserInteractionEnabled:0];

  return v12;
}

Swift::Void __swiftcall WindowSceneResolver.View.willMove(toWindow:)(UIWindow_optional toWindow)
{
  isa = toWindow.value.super.super.super.isa;
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "willMoveToWindow:", isa);
  v3 = [(objc_class *)isa windowScene];
  sub_10010FC20(&qword_1011B25E8);
  Binding.wrappedValue.setter();
}

void sub_100B3FD5C()
{
  v1 = *(v0 + OBJC_IVAR____TtCV11MusicCoreUI19WindowSceneResolver4View__boundWindowScene + 16);
}

unint64_t sub_100B3FDBC()
{
  result = qword_1011B25F8;
  if (!qword_1011B25F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B25F8);
  }

  return result;
}

uint64_t sub_100B3FE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B3FF8C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100B3FEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B3FF8C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100B3FF40()
{
  sub_100B3FF8C();
  UIViewRepresentable.body.getter();
  __break(1u);
}

__n128 initializeBufferWithCopyOfBuffer for SymbolButton.Animation(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

unint64_t sub_100B3FF8C()
{
  result = qword_1011B2628;
  if (!qword_1011B2628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2628);
  }

  return result;
}

uint64_t NoticePresenter.__allocating_init()()
{
  v0 = swift_allocObject();
  NoticePresenter.init()();
  return v0;
}

uint64_t sub_100B40018(uint64_t a1)
{
  v3 = sub_10010FC20(&qword_1011B2668);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_1000089F8(v1 + v6, v5, &qword_1011B2668);
  v7 = sub_100B44788(v5, a1);
  sub_1000095E8(v5, &qword_1011B2668);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000089F8(a1, v5, &qword_1011B2668);
    swift_beginAccess();
    sub_100B45934(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_1000095E8(a1, &qword_1011B2668);
}

uint64_t NoticePresenter.configuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  sub_10002FB70(v1 + v3, v8);
  v4 = _s11MusicCoreUI15NoticePresenterC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(v8, a1);
  sub_10002FF10(v8);
  if (v4)
  {
    sub_10002FB70(a1, v8);
    sub_10002FB70(v1 + v3, v7);
    swift_beginAccess();
    sub_10002FBA8(v8, v1 + v3);
    swift_endAccess();
    sub_10002FBE0(v7);
    sub_10002FF10(v7);
    sub_10002FF10(v8);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v8[0] = v1;
    sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return sub_10002FF10(a1);
}

uint64_t sub_100B403C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  return sub_1000089F8(v3 + v4, a2, &qword_1011B2668);
}

uint64_t sub_100B40498(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B2668);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_1000089F8(a1, &v6 - v3, &qword_1011B2668);
  return sub_100B40018(v4);
}

uint64_t NoticePresenter.notice.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  return sub_1000089F8(v5 + v3, a1, &qword_1011B2668);
}

uint64_t sub_100B4061C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_100B459C0(a2, a1 + v4);
  return swift_endAccess();
}

Swift::Void __swiftcall NoticePresenter.dismiss(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_1011B2668);
  __chkstk_darwin(v4 - 8);
  v6 = &v13[-v5];
  swift_getKeyPath();
  v15 = v1;
  sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_1000089F8(v2 + v7, v6, &qword_1011B2668);
  v8 = type metadata accessor for Notice(0);
  LODWORD(v7) = (*(*(v8 - 8) + 48))(v6, 1, v8);
  sub_1000095E8(v6, &qword_1011B2668);
  if (v7 != 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v13[-16] = v2;
    *&v13[-8] = 0;
    v14 = v2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (a1)
    {
      static Animation.default.getter();
    }

    withAnimation<A>(_:_:)();

    swift_getKeyPath();
    v14 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v10 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
    v11 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
    if (v11)
    {
      *(v11 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) = 0;
    }

    swift_getKeyPath();
    v14 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v2 + v10))
    {
      sub_100009F78(0, &qword_1011B4F00);
      v12 = static OS_dispatch_queue.main.getter();

      OS_dispatch_queue.asyncAfter(_:block:)(sub_100B44780, v2);
    }
  }
}

uint64_t sub_100B409D0()
{
  v0 = sub_10010FC20(&qword_1011B2668);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  v3 = type metadata accessor for Notice(0);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return sub_100B40018(v2);
}

void sub_100B40A98(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B2668);
  __chkstk_darwin(v2 - 8);
  v4 = v7 - v3;
  swift_getKeyPath();
  v7[1] = a1;
  sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_1000089F8(a1 + v5, v4, &qword_1011B2668);
  v6 = type metadata accessor for Notice(0);
  LODWORD(v5) = (*(*(v6 - 8) + 48))(v4, 1, v6);
  sub_1000095E8(v4, &qword_1011B2668);
  if (v5 == 1)
  {
    sub_100B41C8C(0);
  }
}

uint64_t NoticePresenter.present(_:internalOnly:)(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Notice(0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Notice.variant(_:)(a1, v6);
  _s11MusicCoreUI15NoticePresenterC7present_12internalOnlyy0aB00D0V_SbtF_0(v6, a2);
  return sub_100543D10(v6);
}

void sub_100B40CBC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v10[0] = a1;
  sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow))
  {
    v4 = [objc_allocWithZone(type metadata accessor for NoticePresenter.PassthroughWindow()) initWithWindowScene:a2];
    [v4 setWindowLevel:UIWindowLevelStatusBar];
    swift_getKeyPath();
    v10[0] = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
    swift_beginAccess();
    sub_10002FB70(a1 + v5, v10);
    v6 = objc_allocWithZone(type metadata accessor for NoticePresenter.UIRootViewController());

    v8 = sub_100B44A28(v7, v10);

    [v4 setRootViewController:v8];

    [v4 makeKeyAndVisible];
    [v4 resignKeyWindow];
    v9 = v4;
    sub_100B41C8C(v4);
  }
}

void sub_100B40E98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B2668);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  sub_100B4584C(a2, &v19 - v5);
  v7 = type metadata accessor for Notice(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  sub_100B40018(v6);
  swift_getKeyPath();
  v20 = a1;
  sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
  v9 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  if (v9)
  {
    v10 = [v9 rootViewController];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for NoticePresenter.UIRootViewController();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = [v12 view];

        if (!v13)
        {
          __break(1u);
          goto LABEL_15;
        }

        [v13 setNeedsLayout];
        v11 = v13;
      }
    }
  }

  swift_getKeyPath();
  v20 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(a1 + v8);
  if (v14)
  {
    v15 = [v14 rootViewController];
    if (v15)
    {
      v16 = v15;
      type metadata accessor for NoticePresenter.UIRootViewController();
      v17 = swift_dynamicCastClass();
      if (!v17)
      {
LABEL_12:

        return;
      }

      v18 = [v17 view];

      if (v18)
      {
        [v18 layoutIfNeeded];
        v16 = v18;
        goto LABEL_12;
      }

LABEL_15:
      __break(1u);
    }
  }
}

uint64_t sub_100B41114()
{
  swift_getKeyPath();
  sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100B411C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem);
}

uint64_t sub_100B41274()
{
  swift_getKeyPath();
  sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100B41340(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem);
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem) = a2;
  if (!v2)
  {
  }

  dispatch thunk of DispatchWorkItem.cancel()();
}

uint64_t NoticePresenter.Configuration.init(edge:padding:insets:)(char a1, double a2, double a3, double a4, double a5, double a6)
{
  result = swift_unknownObjectWeakInit();
  *(result + 8) = a1;
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 32) = a4;
  *(result + 40) = a5;
  *(result + 48) = a6;
  return result;
}

uint64_t NoticePresenter.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  return sub_10002FB70(v5 + v3, a1);
}

uint64_t sub_100B414C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  return sub_10002FB70(v3 + v4, a2);
}

uint64_t sub_100B4158C(uint64_t a1, uint64_t a2)
{
  sub_10002FB70(a2, v6);
  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  sub_10002FB70(a1 + v3, v5);
  swift_beginAccess();
  sub_10002FBA8(v6, a1 + v3);
  swift_endAccess();
  sub_10002FBE0(v5);
  sub_10002FF10(v5);
  return sub_10002FF10(v6);
}

uint64_t NoticePresenter.willPresentHandler.getter()
{
  swift_getKeyPath();
  sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_100030444(*v1);
  return v2;
}

uint64_t sub_100B41770@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = (v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_1004303F0;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  return sub_100030444(v5);
}

uint64_t sub_100B4187C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_100733E3C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100030444(v1);
  sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_100020438(v4);
}

void (*NoticePresenter.willPresentHandler.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_100B4163C();
  return sub_100B41B10;
}

void *sub_100B41B1C()
{
  swift_getKeyPath();
  sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  v2 = v1;
  return v1;
}

id sub_100B41BCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  *a2 = v4;

  return v4;
}

void sub_100B41C8C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
  v5 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  if (v5)
  {
    if (a1)
    {
      type metadata accessor for NoticePresenter.PassthroughWindow();
      v6 = v5;
      v7 = a1;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        v9 = *(v2 + v4);
        goto LABEL_8;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (a1)
  {
    goto LABEL_6;
  }

  v9 = 0;
  v7 = 0;
LABEL_8:
  *(v2 + v4) = a1;
  swift_getKeyPath();
  sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter);
  v11 = v7;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v9)
  {
    v12 = *(v2 + v4);
    if (!v12 || (type metadata accessor for NoticePresenter.PassthroughWindow(), v13 = v12, v9 = v9, v14 = static NSObject.== infix(_:_:)(), v9, v13, (v14 & 1) == 0))
    {
      [v9 resignKeyWindow];
    }
  }

  else
  {
  }
}

void sub_100B41ED4(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
  v5 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow) = a2;
  swift_getKeyPath();
  sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter);
  v6 = a2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v5)
  {
    v7 = *(a1 + v4);
    if (!v7 || (type metadata accessor for NoticePresenter.PassthroughWindow(), v8 = v7, v5 = v5, v9 = static NSObject.== infix(_:_:)(), v5, v8, (v9 & 1) == 0))
    {
      [v5 resignKeyWindow];
    }
  }
}

uint64_t NoticePresenter.deinit()
{
  sub_1000095E8(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice, &qword_1011B2668);

  sub_10002FF10(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration);
  sub_100020438(*(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler));

  v1 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NoticePresenter.__deallocating_deinit()
{
  sub_1000095E8(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice, &qword_1011B2668);

  sub_10002FF10(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration);
  sub_100020438(*(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler));

  v1 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t View.noticePresenting(_:configurator:)()
{
  sub_10010FC20(&qword_1011B23A8);
  State.init(wrappedValue:)();
  View.modifier<A>(_:)();
}

__n128 NoticePresentingResolverModifier.init(noticePresenter:configurator:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_10010FC20(&qword_1011B23A8);
  State.init(wrappedValue:)();
  result = v13;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = v13;
  return result;
}

uint64_t NoticePresentingResolverModifier.noticePresenter.getter()
{
  sub_10010FC20(&qword_1011B2678);
  Binding.wrappedValue.getter();
  return v1;
}

void (*NoticePresentingResolverModifier.noticePresenter.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  v3[10] = *v1;
  v3[11] = v6;
  v7 = v1[2];
  v3[12] = v7;
  v3[6] = v5;
  v3[7] = v7;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_100595444((v3 + 6), (v3 + 3));

  sub_1000089F8((v4 + 7), (v4 + 3), &qword_1011B2680);
  v4[13] = sub_10010FC20(&qword_1011B2678);
  Binding.wrappedValue.getter();
  return sub_100B424CC;
}

void sub_100B424CC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v2[3] = *(*a1 + 80);
  v2[9] = v2[8];
  v4 = v2[12];
  v2[4] = v3;
  v2[5] = v4;
  if (a2)
  {

    Binding.wrappedValue.setter();
    sub_100B4556C((v2 + 6));

    sub_1000095E8((v2 + 7), &qword_1011B2680);
  }

  else
  {
    Binding.wrappedValue.setter();
    sub_100B4556C((v2 + 6));

    sub_1000095E8((v2 + 7), &qword_1011B2680);
  }

  free(v2);
}

uint64_t NoticePresentingResolverModifier.$noticePresenter.getter()
{
  sub_10010FC20(&qword_1011B2678);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t NoticePresentingResolverModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v23 = a2;
  v5 = sub_10010FC20(&qword_1011B2688);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = static Alignment.center.getter();
  v10 = v9;
  v12 = v2[6];
  v28[0] = v2[5];
  v11 = v28[0];
  v28[1] = v12;
  sub_10010FC20(&qword_1011B23B8);
  State.projectedValue.getter();
  v22 = v26;
  v13 = v27;
  v14 = sub_10010FC20(&qword_1011B2690);
  (*(*(v14 - 8) + 16))(v7, a1, v14);
  v15 = &v7[*(v5 + 36)];
  *v15 = v22;
  *(v15 + 2) = v13;
  *(v15 + 3) = v8;
  *(v15 + 4) = v10;
  *&v26 = v11;
  *(&v26 + 1) = v12;
  State.wrappedValue.getter();
  v16 = v28[0];
  v25 = v28[0];
  *&v26 = v12;
  v17 = *v3;
  v18 = v3[3];
  v29 = v3[2];
  v30 = v17;
  v28[0] = v11;
  v19 = swift_allocObject();
  v20 = *(v3 + 1);
  *(v19 + 16) = *v3;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(v3 + 2);
  *(v19 + 64) = v3[6];
  sub_100595444(&v30, v24);

  sub_1000089F8(&v29, v24, &qword_1011B2680);
  sub_100030444(v18);
  sub_1000089F8(v28, v24, &qword_1011B23A8);
  sub_1000089F8(&v26, v24, &qword_1011B2698);
  sub_10010FC20(&qword_1011B23A8);
  sub_100B455C8();
  sub_100B3DFAC();
  View.onChange<A>(of:initial:_:)();

  return sub_1000095E8(v7, &qword_1011B2688);
}

uint64_t sub_100B428AC(uint64_t a1, void **a2, __int128 *a3)
{
  v4 = *a2;
  v5 = *(a3 + 3);
  if (!v5)
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  if (!v4)
  {
    goto LABEL_6;
  }

  sub_100030444(*(a3 + 3));
  v6 = v4;
  v7 = UIWindowScene.noticePresenter.getter();
  swift_getKeyPath();
  *&v12 = v7;
  sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  sub_10002FB70(v7 + v8, &v12);

  v5(&v12);
  UIWindowScene.noticePresenter.getter();
  sub_10002FB70(&v12, v11);
  NoticePresenter.configuration.setter(v11);
  sub_100020438(v5);

  sub_10002FF10(&v12);
LABEL_5:
  v9 = UIWindowScene.noticePresenter.getter();
LABEL_7:
  v12 = *a3;
  v13 = *(a3 + 2);
  v11[0] = v9;
  sub_10010FC20(&qword_1011B2678);
  return Binding.wrappedValue.setter();
}

__n128 sub_100B42A64@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_1011B2958);
  __chkstk_darwin(v3 - 8);
  v5 = v11 - v4;
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = sub_10010FC20(&qword_1011B2960);
  sub_100B42BC0(v1, &v5[*(v6 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v5, a1, &qword_1011B2958);
  v7 = a1 + *(sub_10010FC20(&qword_1011B2968) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_100B42BC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v95 = a2;
  v93 = sub_10010FC20(&qword_1011B2970);
  v94 = *(v93 - 8);
  __chkstk_darwin(v93);
  v4 = &KeyPath - v3;
  v5 = sub_10010FC20(&qword_1011B2668);
  __chkstk_darwin(v5 - 8);
  v7 = &KeyPath - v6;
  v8 = type metadata accessor for Notice(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&qword_1011B2978);
  __chkstk_darwin(v12 - 8);
  v14 = &KeyPath - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v87 = &KeyPath - v16;
  v88 = a1[4];
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v92 = v100;
  v91 = v102;
  v90 = v104;
  v89 = v105;
  v114 = 1;
  v113 = v101;
  v112 = v103;
  v17 = a1[1];
  v86 = *a1;
  v106 = v86;
  v107 = v17;
  v85 = v17;
  sub_10010FC20(&qword_1011B2980);
  State.wrappedValue.getter();
  v18 = v99;
  swift_getKeyPath();
  v106 = v18;
  sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_1000089F8(v18 + v19, v7, &qword_1011B2668);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000095E8(v7, &qword_1011B2668);
    v20 = 1;
    v21 = v87;
    v22 = v93;
  }

  else
  {
    v84 = v11;
    sub_10035AEF0(v7, v11);
    sub_100B4584C(v11, v4);
    v23 = type metadata accessor for NoticeView(0);
    v24 = &v4[v23[5]];
    *v24 = swift_getKeyPath();
    *(v24 + 1) = 0;
    *(v24 + 8) = 0;
    v25 = &v4[v23[6]];
    v111 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v26 = v107;
    *v25 = v106;
    *(v25 + 1) = v26;
    v27 = &v4[v23[7]];
    LOBYTE(v111) = 0;
    GestureState.init(wrappedValue:)();
    v28 = v107;
    v29 = v108;
    *v27 = v106;
    *(v27 + 1) = v28;
    *(v27 + 1) = v29;
    v30 = &v4[v23[8]];
    LOBYTE(v111) = 0;
    State.init(wrappedValue:)();
    v31 = v107;
    *v30 = v106;
    *(v30 + 1) = v31;
    LOBYTE(v30) = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = &v4[*(sub_10010FC20(&qword_1011B2990) + 36)];
    *v40 = v30;
    *(v40 + 1) = v33;
    *(v40 + 2) = v35;
    *(v40 + 3) = v37;
    *(v40 + 4) = v39;
    v40[40] = 0;
    LOBYTE(v30) = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = &v4[*(sub_10010FC20(&qword_1011B2998) + 36)];
    *v49 = v30;
    *(v49 + 1) = v42;
    *(v49 + 2) = v44;
    *(v49 + 3) = v46;
    *(v49 + 4) = v48;
    v49[40] = 0;
    LOBYTE(v30) = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v58 = &v4[*(sub_10010FC20(&qword_1011B29A0) + 36)];
    *v58 = v30;
    *(v58 + 1) = v51;
    *(v58 + 2) = v53;
    *(v58 + 3) = v55;
    *(v58 + 4) = v57;
    v58[40] = 0;
    static AnyTransition.opacity.getter();
    static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
    AnyTransition.animation(_:)();

    static UnitPoint.center.getter();
    static AnyTransition.scale(scale:anchor:)();
    static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
    AnyTransition.animation(_:)();

    static UnitPoint.center.getter();
    static AnyTransition.scale(scale:anchor:)();
    static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
    AnyTransition.animation(_:)();

    static AnyTransition.asymmetric(insertion:removal:)();

    v59 = AnyTransition.combined(with:)();

    *&v4[*(sub_10010FC20(&qword_1011B29A8) + 36)] = v59;
    KeyPath = swift_getKeyPath();
    v111 = v85;
    type metadata accessor for MainActor();

    sub_1000089F8(&v111, &v106, &qword_1011B29B0);
    v60 = static MainActor.shared.getter();
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = &protocol witness table for MainActor;
    v62 = *(a1 + 1);
    *(v61 + 32) = *a1;
    *(v61 + 48) = v62;
    *(v61 + 64) = *(a1 + 2);

    sub_1000089F8(&v111, &v106, &qword_1011B29B0);
    v63 = static MainActor.shared.getter();
    v64 = swift_allocObject();
    *(v64 + 16) = v63;
    *(v64 + 24) = &protocol witness table for MainActor;
    v65 = *(a1 + 1);
    *(v64 + 32) = *a1;
    *(v64 + 48) = v65;
    *(v64 + 64) = *(a1 + 2);
    Binding.init(get:set:)();
    sub_100543D10(v84);
    v66 = v106;
    v67 = v107;
    v68 = v108;
    v69 = v93;
    v70 = &v4[*(v93 + 36)];
    *v70 = KeyPath;
    *(v70 + 1) = v66;
    *(v70 + 2) = v67;
    v70[24] = v68;
    v21 = v87;
    sub_10003D17C(v4, v87, &qword_1011B2970);
    v20 = 0;
    v22 = v69;
  }

  (*(v94 + 56))(v21, v20, 1, v22);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v94 = v106;
  v93 = v108;
  v88 = v109;
  v87 = v110;
  v98 = 1;
  v97 = v107;
  v96 = BYTE8(v108);
  v71 = v114;
  v72 = v113;
  v73 = v112;
  sub_1000089F8(v21, v14, &qword_1011B2978);
  v74 = v98;
  v75 = v97;
  v76 = v96;
  v77 = v95;
  *v95 = 0;
  *(v77 + 8) = v71;
  v77[2] = v92;
  *(v77 + 24) = v72;
  v77[4] = v91;
  *(v77 + 40) = v73;
  v78 = v89;
  v77[6] = v90;
  v77[7] = v78;
  v79 = sub_10010FC20(&qword_1011B2988);
  sub_1000089F8(v14, v77 + *(v79 + 48), &qword_1011B2978);
  v80 = v77 + *(v79 + 64);
  *v80 = 0;
  v80[8] = v74;
  *(v80 + 2) = v94;
  v80[24] = v75;
  *(v80 + 4) = v93;
  v80[40] = v76;
  v81 = v87;
  *(v80 + 6) = v88;
  *(v80 + 7) = v81;
  sub_1000095E8(v21, &qword_1011B2978);
  return sub_1000095E8(v14, &qword_1011B2978);
}

uint64_t sub_100B4363C@<X0>(__int128 *a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = sub_10010FC20(&qword_1011B2668);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v11 = *a1;
  sub_10010FC20(&qword_1011B2980);
  State.wrappedValue.getter();
  v7 = v12;
  swift_getKeyPath();
  *&v11 = v7;
  sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_1000089F8(v7 + v8, v6, &qword_1011B2668);

  v9 = type metadata accessor for Notice(0);
  LOBYTE(v8) = (*(*(v9 - 8) + 48))(v6, 1, v9) != 1;
  result = sub_1000095E8(v6, &qword_1011B2668);
  *a2 = v8;
  return result;
}

_BYTE *sub_100B437FC(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    sub_10010FC20(&qword_1011B2980);
    State.wrappedValue.getter();
    NoticePresenter.dismiss(_:)(1);
  }

  return result;
}

void NoticePresenter.Configuration.insets.setter(double a1, double a2, double a3, double a4)
{
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = a4;
}

id sub_100B438F0(uint64_t a1, double a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = type metadata accessor for NoticePresenter.PassthroughWindow();
  result = objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, a2, a3);
  if (*(v3 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) != 1)
  {
    goto LABEL_6;
  }

  if (result)
  {
    v8 = result;
    v9 = [v3 rootViewController];
    result = v8;
    if (!v9)
    {
      goto LABEL_6;
    }

    result = [v9 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v11 = [v8 isDescendantOfView:result];

    result = v8;
    if ((v11 & 1) == 0)
    {
LABEL_6:

      return 0;
    }
  }

  return result;
}

id sub_100B43BF4(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration;
  swift_beginAccess();
  sub_10002FBA8(a1, v4);
  swift_endAccess();
  if (![v1 isViewLoaded])
  {
    return sub_10002FF10(a1);
  }

  Edge.Set.init(_:)();
  v5 = _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(*(v4 + 16));
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = dispatch thunk of UIHostingController.rootView.modify();
  v13[2] = v5;
  *(v13 + 3) = v7;
  *(v13 + 4) = v9;
  *(v13 + 5) = v11;
  v12(&v17, 0);
  result = [v1 view];
  if (result)
  {
    v15 = result;
    [result setNeedsLayout];

    result = [v2 view];
    if (result)
    {
      v16 = result;
      [result layoutIfNeeded];

      return sub_10002FF10(a1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100B43E7C()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = type metadata accessor for NoticePresenter.UIRootViewController();
  objc_msgSendSuper2(&v23, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController];
  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor:v5];

  v6 = &v1[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration];
  swift_beginAccess();
  Edge.Set.init(_:)();
  v7 = _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v6[2]);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = dispatch thunk of UIHostingController.rootView.modify();
  v15[2] = v7;
  *(v15 + 3) = v9;
  *(v15 + 4) = v11;
  *(v15 + 5) = v13;
  v14(v22, 0);
  v16 = [v1 view];
  if (!v16)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v17 = v16;
  v18 = [v2 view];
  if (!v18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v19 = v18;
  [v17 addSubview:v18];

  v20 = [v2 view];
  if (v20)
  {
    v21 = v20;
    [v20 layoutIfNeeded];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_100B44090()
{
  v42.receiver = v0;
  v42.super_class = type metadata accessor for NoticePresenter.UIRootViewController();
  objc_msgSendSuper2(&v42, "viewDidLayoutSubviews");
  v1 = [v0 view];
  if (!v1)
  {
    goto LABEL_14;
  }

  v2 = v1;
  [v1 bounds];

  v3 = &v0[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration];
  swift_beginAccess();
  v4 = [v0 view];
  if (!v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  [v4 effectiveUserInterfaceLayoutDirection];

  CGRect.inset(by:for:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100B45910;
  *(v16 + 24) = v15;
  aBlock[4] = sub_100029B94;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010E3D68;
  v17 = _Block_copy(aBlock);
  v18 = v0;

  [v14 performWithoutAnimation:v17];
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = *&v18[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController];
  dispatch thunk of UIHostingController.sizeThatFits(in:)();
  v22 = v21;
  v23 = [v18 traitCollection];
  [v23 displayScale];

  v40 = v22;
  CGRect.centeringAlong(axes:bounds:scale:)();
  MinX = v24;
  MinY = v26;
  v29 = v28;
  v31 = v30;
  v32 = v7;
  v33 = v9;
  v34 = v11;
  v35 = v13;
  if (v3[8] > 1u)
  {
    if (v3[8] == 2)
    {
      MaxY = CGRectGetMaxY(*&v32);
      v43.origin.x = MinX;
      v43.origin.y = MinY;
      v43.size.width = v29;
      v43.size.height = v31;
      MinY = MaxY - CGRectGetHeight(v43);
    }

    else
    {
      MaxX = CGRectGetMaxX(*&v32);
      v44.origin.x = MinX;
      v44.origin.y = MinY;
      v44.size.width = v29;
      v44.size.height = v31;
      MinX = MaxX - CGRectGetWidth(v44);
    }
  }

  else if (v3[8])
  {
    MinX = CGRectGetMinX(*&v32);
  }

  else
  {
    MinY = CGRectGetMinY(*&v32);
  }

  v38 = [v20 view];
  if (v38)
  {
    v39 = v38;
    [v38 setFrame:{MinX, MinY, v29, v31}];

    return;
  }

LABEL_16:
  __break(1u);
}

void sub_100B44468(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController);
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 setNeedsLayout];

  v4 = [v1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 layoutIfNeeded];
}

id sub_100B445A4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id UIViewController.noticePresenter.getter()
{
  if ([v0 isViewLoaded])
  {
    result = [v0 view];
    if (result)
    {
      v2 = result;
      v3 = [result window];
      if (v3 && (v4 = v3, v5 = [v3 windowScene], v4, v5))
      {
        v6 = UIWindowScene.noticePresenter.getter();

        return v6;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    result = [v0 parentViewController];
    if (result)
    {
      v7 = result;
      v8 = UIViewController.noticePresenter.getter();

      return v8;
    }
  }

  return result;
}

uint64_t sub_100B44788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10010FC20(&qword_1011B2668);
  __chkstk_darwin(v8 - 8);
  v10 = (&v20 - v9);
  v11 = sub_10010FC20(&qword_1011B29B8);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1000089F8(a1, &v20 - v12, &qword_1011B2668);
  sub_1000089F8(a2, &v13[v15], &qword_1011B2668);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1000089F8(v13, v10, &qword_1011B2668);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_10035AEF0(&v13[v15], v7);
      v18 = static Notice.== infix(_:_:)(v10, v7);
      sub_100543D10(v7);
      sub_100543D10(v10);
      sub_1000095E8(v13, &qword_1011B2668);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_100543D10(v10);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1000095E8(v13, &qword_1011B29B8);
    v17 = 1;
    return v17 & 1;
  }

  sub_1000095E8(v13, &qword_1011B2668);
  v17 = 0;
  return v17 & 1;
}

char *sub_100B44A28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v6 - 8);
  *&v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController__noticePresenter] = a1;
  v7 = &v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration];
  sub_10002FB70(a2, &v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration]);
  swift_beginAccess();
  swift_retain_n();
  Edge.Set.init(_:)();
  v8 = _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v7[2]);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v30 = a1;
  type metadata accessor for NoticePresenter();
  State.init(wrappedValue:)();
  v26 = v8;
  v27 = v10;
  v28 = v12;
  v29 = v14;
  v15 = objc_allocWithZone(sub_10010FC20(&qword_1011B29C0));
  *&v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController] = UIHostingController.init(rootView:)();
  v25.receiver = v3;
  v25.super_class = type metadata accessor for NoticePresenter.UIRootViewController();
  v16 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
  v17 = OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController;
  v18 = *&v16[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController];
  v19 = v16;
  v20 = v18;
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  v21 = *&v16[v17];
  v22 = v19;
  [v22 addChildViewController:v21];
  v23 = *&v16[v17];
  [v23 didMoveToParentViewController:v22];

  sub_10002FF10(a2);
  return v22;
}

_BYTE *_s11MusicCoreUI15NoticePresenterC7present_12internalOnlyy0aB00D0V_SbtF_0(uint64_t a1, char a2)
{
  v3 = v2;
  v50 = a1;
  v48 = type metadata accessor for DispatchTime();
  v5 = *(v48 - 8);
  __chkstk_darwin(v48);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v44 - v9;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v11);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Notice(0);
  v14 = *(v49 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v49);
  if ((a2 & 1) == 0 || (result = DeviceCapabilities.isInternalInstall.unsafeMutableAddressor(), *result == 1))
  {
    v44[1] = v11;
    v44[2] = v13;
    v45 = v7;
    v46 = v10;
    v47 = v5;
    swift_getKeyPath();
    aBlock = v3;
    sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = (v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
    swift_beginAccess();
    v18 = *v17;
    v19 = &qword_1011B2000;
    if (*v17)
    {
      v44[0] = v14;
      swift_getKeyPath();
      aBlock = v3;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      aBlock = v3;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      v20 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
      swift_beginAccess();
      sub_10002FB70(v3 + v20, &aBlock);
      v18(&aBlock);
      sub_100020438(v18);
      sub_10002FB70(v3 + v20, v52);
      swift_beginAccess();
      v21 = v3 + v20;
      v19 = &qword_1011B2000;
      sub_10002FBA8(&aBlock, v21);
      swift_endAccess();
      sub_10002FBE0(v52);
      sub_10002FF10(v52);
      sub_10002FF10(&aBlock);
      aBlock = v3;
      v14 = v44[0];
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();
    }

    swift_getKeyPath();
    aBlock = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v22 = v19[200];
    swift_beginAccess();
    sub_10002FB70(v3 + v22, &aBlock);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_10002FF10(&aBlock);
    if (Strong)
    {
      sub_100B40CBC(v3, Strong);
    }

    swift_getKeyPath();
    aBlock = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v24 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
    v25 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
    if (v25)
    {
      *(v25 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) = 1;
    }

    swift_getKeyPath();
    aBlock = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v26 = *(v3 + v24);
    if (v26)
    {
      [v26 makeKeyAndVisible];
    }

    v27 = objc_opt_self();
    sub_100B4584C(v50, v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v3;
    sub_10035AEF0(v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
    v30 = swift_allocObject();
    *(v30 + 16) = sub_100B45A30;
    *(v30 + 24) = v29;
    v57 = sub_10018A020;
    v58 = v30;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_100029B9C;
    v56 = &unk_1010E3DE0;
    v31 = _Block_copy(&aBlock);

    [v27 performWithoutAnimation:v31];
    _Block_release(v31);
    LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

    if (v27)
    {
      __break(1u);
    }

    else
    {
      v32 = v49;
      v33 = (v50 + *(v49 + 36));
      if ((v33[1] & 1) == 0)
      {
        v34 = *v33;
        v35 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
        [v35 notificationOccurred:v34];
      }

      if (*(v50 + *(v32 + 40)) == 1)
      {
        v57 = sub_100B45A94;
        v58 = v3;
        aBlock = _NSConcreteStackBlock;
        v54 = 1107296256;
        v55 = sub_10002BC98;
        v56 = &unk_1010E3E08;
        _Block_copy(&aBlock);
        v51 = _swiftEmptyArrayStorage;
        sub_10002FB28(&qword_1011B1148, &type metadata accessor for DispatchWorkItemFlags);

        sub_10010FC20(&qword_1011B1150);
        sub_100020674(&qword_1011B1158, &qword_1011B1150);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        type metadata accessor for DispatchWorkItem();
        swift_allocObject();
        v36 = DispatchWorkItem.init(flags:block:)();

        sub_100009F78(0, &qword_1011B4F00);
        v37 = static OS_dispatch_queue.main.getter();
        v38 = v45;
        static DispatchTime.now()();
        v39 = v46;
        + infix(_:_:)();
        v40 = *(v47 + 8);
        v41 = v38;
        v42 = v48;
        v40(v41, v48);
        OS_dispatch_queue.asyncAfter(deadline:execute:)();

        v40(v39, v42);
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        v44[-2] = v3;
        v44[-1] = v36;
        aBlock = v3;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }
  }

  return result;
}

unint64_t sub_100B455C8()
{
  result = qword_1011B26A0;
  if (!qword_1011B26A0)
  {
    sub_1001109D0(&qword_1011B2688);
    sub_100020674(&qword_1011B26A8, &qword_1011B2690);
    sub_100020674(&qword_1011B2410, &qword_1011B2418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B26A0);
  }

  return result;
}

uint64_t sub_100B456D0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100B456E8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100B45714(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 56))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100B45758(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_100B457CC()
{
  result = qword_1011B2950;
  if (!qword_1011B2950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2950);
  }

  return result;
}

uint64_t sub_100B4584C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B458BC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100B45934(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B2668);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B459C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B2668);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100B45A30()
{
  v1 = *(type metadata accessor for Notice(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_100B40E98(v2, v3);
}

unint64_t sub_100B45A9C()
{
  result = qword_1011B29C8;
  if (!qword_1011B29C8)
  {
    sub_1001109D0(&qword_1011B2968);
    sub_100020674(&qword_1011B29D0, &qword_1011B2958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B29C8);
  }

  return result;
}

uint64_t NoticeView.init(notice:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NoticeView(0);
  v5 = a2 + v4[5];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v6 = (a2 + v4[6]);
  State.init(wrappedValue:)();
  *v6 = v10;
  v6[1] = v11;
  v7 = a2 + v4[7];
  GestureState.init(wrappedValue:)();
  *v7 = v10;
  *(v7 + 8) = v11;
  *(v7 + 16) = v12;
  v8 = a2 + v4[8];
  State.init(wrappedValue:)();
  *v8 = v10;
  *(v8 + 8) = v11;
  return sub_100B4A81C(a1, a2, type metadata accessor for Notice);
}

uint64_t EnvironmentValues.noticeDismissal.getter()
{
  sub_100B45EBC();
  EnvironmentValues.subscript.getter();
  return v1;
}

double sub_100B45D10@<D0>(uint64_t a1@<X8>)
{
  sub_100B45EBC();
  EnvironmentValues.subscript.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_100B45D68(uint64_t *a1)
{
  sub_100B46188(*a1, a1[1]);
  sub_100B45EBC();
  return EnvironmentValues.subscript.setter();
}

unint64_t sub_100B45EBC()
{
  result = qword_1011B29D8;
  if (!qword_1011B29D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B29D8);
  }

  return result;
}

uint64_t sub_100B45F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NoticeView.dismiss.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for NoticeView(0) + 20);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  if (*(v5 + 17) == 1)
  {
    sub_100B46188(*v5, v7);
  }

  else
  {

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100B46138(v6, v7, v8, 0);
    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_100B46138(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_100B46144(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_100B46144(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100B46188(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t NoticeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v117 = a1;
  v116 = sub_10010FC20(&qword_1011B29E0);
  __chkstk_darwin(v116);
  v115 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v114 = &v111 - v5;
  v142 = type metadata accessor for DynamicTypeSize();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v139 = &v111 - v8;
  v113 = sub_10010FC20(&qword_1011B29E8);
  __chkstk_darwin(v113);
  v112 = &v111 - v9;
  v137 = type metadata accessor for TapGesture();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v135 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for NoticeView(0);
  v124 = *(v149 - 8);
  __chkstk_darwin(v149);
  v147 = v11;
  v148 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin(v122);
  v121 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_10010FC20(&qword_1011B29F0);
  __chkstk_darwin(v138);
  v134 = &v111 - v13;
  v14 = type metadata accessor for NoticeView.Content(0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10010FC20(&qword_1011B29F8);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v111 - v20;
  v22 = sub_10010FC20(&qword_1011B2A00);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v25 = &v111 - v24;
  *&v119 = sub_10010FC20(&qword_1011B2A08);
  __chkstk_darwin(v119);
  v27 = &v111 - v26;
  v120 = sub_10010FC20(&qword_1011B2A10);
  __chkstk_darwin(v120);
  v29 = &v111 - v28;
  v146 = sub_10010FC20(&qword_1011B2A18);
  __chkstk_darwin(v146);
  v145 = &v111 - v30;
  v131 = sub_10010FC20(&qword_1011B2A20);
  v128 = *(v131 - 8);
  __chkstk_darwin(v131);
  v125 = &v111 - v31;
  v132 = sub_10010FC20(&qword_1011B2A28);
  v129 = *(v132 - 8);
  __chkstk_darwin(v132);
  v126 = &v111 - v32;
  v123 = sub_10010FC20(&qword_1011B2A30);
  __chkstk_darwin(v123);
  v130 = &v111 - v33;
  v127 = sub_10010FC20(&qword_1011B2A38);
  __chkstk_darwin(v127);
  v133 = &v111 - v34;
  v144 = sub_10010FC20(&qword_1011B2A40);
  __chkstk_darwin(v144);
  v143 = &v111 - v35;
  v36 = v2;
  sub_100B4A884(v2, v17, type metadata accessor for Notice);
  *&v17[*(v15 + 36)] = swift_getKeyPath();
  sub_10010FC20(&unk_1011B3D50);
  swift_storeEnumTagMultiPayload();
  *&v17[*(v15 + 40)] = swift_getKeyPath();
  sub_10010FC20(&unk_1011B0910);
  swift_storeEnumTagMultiPayload();
  *&v157 = 0x4041000000000000;
  sub_100B4A774();
  ScaledMetric.init(wrappedValue:)();
  *&v157 = 0x4010000000000000;
  sub_100B4A7C8();
  ScaledMetric.init(wrappedValue:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100B4A81C(v17, v21, type metadata accessor for NoticeView.Content);
  v37 = &v21[*(v19 + 44)];
  v38 = v162;
  *(v37 + 4) = v161;
  *(v37 + 5) = v38;
  *(v37 + 6) = v163;
  v39 = v158;
  *v37 = v157;
  *(v37 + 1) = v39;
  v40 = v160;
  *(v37 + 2) = v159;
  *(v37 + 3) = v40;
  v41 = &v25[*(v23 + 44)];
  static Material.regular.getter();
  LOBYTE(v23) = static Edge.Set.all.getter();
  v41[*(sub_10010FC20(&qword_1011B2A58) + 36)] = v23;
  sub_10003D17C(v21, v25, &qword_1011B29F8);
  if (qword_1011B05C8 != -1)
  {
    swift_once();
  }

  v42 = static Corner.extraLarge;
  v43 = unk_10121B720;
  v44 = byte_10121B728;
  sub_10003D17C(v25, v27, &qword_1011B2A00);
  v45 = &v27[*(v119 + 36)];
  *v45 = v42;
  *(v45 + 1) = v43;
  v45[16] = v44;
  v46 = v2 + *(v149 + 28);
  v47 = *v46;
  v48 = *(v46 + 8);
  v49 = *(v46 + 16);
  v50 = *(v46 + 24);
  LOBYTE(v153) = *v46;
  v154 = v48;
  v155 = v49;
  v156 = v50;
  sub_10010FC20(&qword_1011B2A60);
  GestureState.wrappedValue.getter();
  if (v150)
  {
    v51 = 0.4;
  }

  else
  {
    v51 = 1.0;
  }

  sub_10003D17C(v27, v29, &qword_1011B2A08);
  *&v29[*(v120 + 36)] = v51;
  v52 = static Animation.easeIn(duration:)();
  LOBYTE(v153) = v47;
  v154 = v48;
  v155 = v49;
  v156 = v50;
  GestureState.wrappedValue.getter();
  v53 = v150;
  v54 = v29;
  v55 = v145;
  sub_10003D17C(v54, v145, &qword_1011B2A10);
  v56 = v55 + *(v146 + 36);
  *v56 = v52;
  *(v56 + 8) = v53;
  static CoordinateSpaceProtocol<>.local.getter();
  v57 = v134;
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  LOBYTE(v153) = v47;
  v154 = v48;
  v155 = v49;
  v156 = v50;
  GestureState.projectedValue.getter();
  LODWORD(v121) = v150;
  v120 = v151;
  v119 = v152;
  v118 = v36;
  v58 = v148;
  v122 = type metadata accessor for NoticeView;
  sub_100B4A884(v36, v148, type metadata accessor for NoticeView);
  v59 = (*(v124 + 80) + 16) & ~*(v124 + 80);
  v60 = swift_allocObject();
  v124 = type metadata accessor for NoticeView;
  sub_100B4A81C(v58, v60 + v59, type metadata accessor for NoticeView);
  v61 = sub_10010FC20(&qword_1011B2A68);
  v62 = v57 + *(v61 + 44);
  *v62 = v121;
  *(v62 + 8) = v120;
  *(v62 + 16) = v119;
  v63 = (v57 + *(v61 + 48));
  *v63 = sub_100B4A8EC;
  v63[1] = v60;
  v64 = v135;
  TapGesture.init(count:)();
  sub_100B4A884(v36, v58, type metadata accessor for NoticeView);
  v65 = swift_allocObject();
  sub_100B4A81C(v58, v65 + v59, type metadata accessor for NoticeView);
  v66 = swift_allocObject();
  *(v66 + 16) = sub_100B4AB70;
  *(v66 + 24) = v65;
  v67 = v138;
  v68 = v137;
  Gesture.onEnded(_:)();

  (*(v136 + 8))(v64, v68);
  static GestureMask.all.getter();
  v69 = sub_100B4AB88();
  v70 = sub_100020674(&qword_1011B2AB8, &qword_1011B29F0);
  v71 = v125;
  v72 = v146;
  v73 = v145;
  View.gesture<A>(_:including:)();
  sub_1000095E8(v57, &qword_1011B29F0);
  sub_1000095E8(v73, &qword_1011B2A18);
  v74 = v118;
  v75 = v148;
  sub_100B4A884(v118, v148, v122);
  v76 = swift_allocObject();
  sub_100B4A81C(v75, v76 + v59, v124);
  type metadata accessor for Notice(0);
  v153 = v72;
  v154 = v67;
  v155 = v69;
  v156 = v70;
  swift_getOpaqueTypeConformance2();
  sub_100B4AF4C(&qword_1011B2AC0, type metadata accessor for Notice);
  v77 = v126;
  v78 = v131;
  View.onChange<A>(of:initial:_:)();

  (*(v128 + 8))(v71, v78);
  v79 = v130;
  v80 = &v130[*(v123 + 36)];
  sub_10010FC20(&qword_1011B2AC8);
  static ContentTransition.opacity.getter();
  *v80 = swift_getKeyPath();
  (*(v129 + 32))(v79, v77, v132);
  v81 = (v74 + *(v149 + 24));
  v82 = *v81;
  v83 = v81[1];
  v153 = v82;
  v154 = v83;
  sub_10010FC20(&qword_1011B2AD0);
  State.wrappedValue.getter();
  v84 = v150;
  static UnitPoint.center.getter();
  v86 = v85;
  v88 = v87;
  v89 = v79;
  v90 = v133;
  sub_10003D17C(v89, v133, &qword_1011B2A30);
  v91 = (v90 + *(v127 + 36));
  *v91 = v84;
  v91[1] = v84;
  v91[2] = v86;
  v91[3] = v88;
  static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  v92 = Animation.delay(_:)();

  v93 = v143;
  v94 = &v143[*(v144 + 36)];
  v95 = sub_10010FC20(&qword_1011B2AD8);
  sub_100B4A884(v74, v94 + *(v95 + 36), type metadata accessor for Notice);
  *v94 = v92;
  sub_10003D17C(v90, v93, &qword_1011B2A38);
  v96 = v141;
  v97 = *(v141 + 104);
  v98 = v139;
  v99 = v142;
  v97(v139, enum case for DynamicTypeSize.xSmall(_:), v142);
  v100 = v140;
  v97(v140, enum case for DynamicTypeSize.accessibility2(_:), v99);
  sub_100B4AF4C(&qword_1011B1658, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v102 = v98;
    v103 = *(v96 + 32);
    v104 = v114;
    v103(v114, v102, v99);
    v105 = v116;
    v103((v104 + *(v116 + 48)), v100, v99);
    v106 = v115;
    sub_1000089F8(v104, v115, &qword_1011B29E0);
    v107 = *(v105 + 48);
    v108 = v112;
    v103(v112, v106, v99);
    v109 = *(v96 + 8);
    v109(v106 + v107, v99);
    sub_10003D17C(v104, v106, &qword_1011B29E0);
    v103((v108 + *(v113 + 36)), (v106 + *(v105 + 48)), v99);
    v109(v106, v99);
    sub_100B4B064();
    sub_100020674(&qword_1011B2B08, &qword_1011B29E8);
    v110 = v143;
    View.dynamicTypeSize<A>(_:)();
    sub_1000095E8(v108, &qword_1011B29E8);
    return sub_1000095E8(v110, &qword_1011B2A40);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100B475A0(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Notice(0);
  if ((*(a4 + *(result + 40)) & 1) != 0 || *(a4 + *(result + 32)) && (type metadata accessor for NoticeView(0), sub_10010FC20(&qword_1011B2DD8), result = State.wrappedValue.getter(), (v7 & 1) == 0))
  {
    *a2 = 1;
  }

  return result;
}

uint64_t sub_100B4763C(uint64_t a1)
{
  type metadata accessor for NoticeView(0);
  sub_10010FC20(&qword_1011B2DD8);
  State.wrappedValue.getter();
  if ((v5 & 1) == 0)
  {
    State.wrappedValue.setter();
    v2 = *(a1 + *(type metadata accessor for Notice(0) + 32));
    if (v2)
    {
      v2();
    }
  }

  result = type metadata accessor for Notice(0);
  if (*(a1 + *(result + 40)) == 1)
  {
    result = NoticeView.dismiss.getter();
    if (v4)
    {
      sub_10010FC20(&qword_1011B5F50);
      Binding.wrappedValue.setter();
    }
  }

  return result;
}

void sub_100B4777C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for NoticeView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  v11 = a3;
  withAnimation<A>(_:_:)();

  sub_1000270A8();
  v7 = static OS_dispatch_queue.main.getter();
  sub_100B4A884(a3, &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for NoticeView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_100B4A81C(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8, type metadata accessor for NoticeView);
  OS_dispatch_queue.asyncAfter(_:block:)(sub_100B4C204, v9);
}

uint64_t sub_100B47928()
{
  static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  withAnimation<A>(_:_:)();
}

uint64_t sub_100B479B0()
{
  type metadata accessor for NoticeView(0);
  sub_10010FC20(&qword_1011B2AD0);
  return State.wrappedValue.setter();
}

uint64_t sub_100B47A38@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_1011B3D50);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for NoticeView.Content(0);
  sub_1000089F8(v1 + *(v10 + 28), v9, &unk_1011B3D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100B47C40@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_1011B0910);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for NoticeView.Content(0);
  sub_1000089F8(v1 + *(v10 + 32), v9, &unk_1011B0910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for LayoutDirection();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

__n128 sub_100B47E48@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_1011B2CB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for DynamicTypeSize();
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Notice(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100B4A884(v1, v11, type metadata accessor for Notice);
  sub_100B47A38(v8);
  sub_100B4B81C(v11, v8, v19);
  if (sub_100B4802C())
  {
    v12 = static VerticalAlignment.top.getter();
  }

  else
  {
    v12 = static VerticalAlignment.center.getter();
  }

  v13 = v20;
  *v5 = v12;
  *(v5 + 1) = v13;
  v5[16] = 0;
  v14 = sub_10010FC20(&qword_1011B2CB8);
  sub_100B48240(v1, v19, &v5[*(v14 + 44)]);
  v15 = static Edge.Set.all.getter();
  sub_10003D17C(v5, a1, &qword_1011B2CB0);
  v16 = a1 + *(sub_10010FC20(&qword_1011B2CC0) + 36);
  *v16 = v15;
  result = v19[0];
  *(v16 + 24) = v19[1];
  *(v16 + 8) = result;
  *(v16 + 40) = 0;
  return result;
}

BOOL sub_100B4802C()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011B2D90);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for DynamicTypeSize();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100B47A38(v8);
  v9 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v10 = type metadata accessor for Notice(0);
    v11 = (v1 + *(v10 + 28));
    v12 = v11[1];
    if (v12)
    {
      v13 = *v11 & 0xFFFFFFFFFFFFLL;
      if ((v12 & 0x2000000000000000) != 0 ? HIBYTE(v12) & 0xF : v13)
      {
        sub_1000089F8(v1 + *(v10 + 20), v4, &qword_1011B2D90);
        v15 = type metadata accessor for Notice.Thumbnail(0);
        if ((*(*(v15 - 8) + 48))(v4, 1, v15) != 1)
        {
          v17 = swift_getEnumCaseMultiPayload() == 1;
          sub_100B4C180(v4, type metadata accessor for Notice.Thumbnail);
          return v17;
        }

        sub_1000095E8(v4, &qword_1011B2D90);
      }
    }
  }

  return 0;
}

uint64_t sub_100B48240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v44 = a3;
  v40 = a1;
  v4 = sub_10010FC20(&qword_1011B2CC8);
  __chkstk_darwin(v4 - 8);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v40 - v7;
  v9 = sub_10010FC20(&qword_1011B2CD0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  v13 = sub_10010FC20(&qword_1011B2CD8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v40 - v15;
  v17 = sub_10010FC20(&qword_1011B2CE0);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v41 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v40 - v21;
  __chkstk_darwin(v23);
  v25 = &v40 - v24;
  sub_100B4868C(a1, v12);
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  v26 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v28 = &v12[*(sub_10010FC20(&qword_1011B2CE8) + 36)];
  *v28 = KeyPath;
  v28[1] = v26;
  *&v12[*(v10 + 44)] = static HierarchicalShapeStyle.primary.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v12, v16, &qword_1011B2CD0);
  v29 = &v16[*(v14 + 44)];
  v30 = v50;
  *(v29 + 4) = v49;
  *(v29 + 5) = v30;
  *(v29 + 6) = v51;
  v31 = v46;
  *v29 = v45;
  *(v29 + 1) = v31;
  v32 = v48;
  *(v29 + 2) = v47;
  *(v29 + 3) = v32;
  sub_10003D17C(v16, v22, &qword_1011B2CD8);
  v33 = &v22[*(v18 + 44)];
  *v33 = 0x3FF0000000000000;
  *(v33 + 4) = 0;
  sub_10003D17C(v22, v25, &qword_1011B2CE0);
  *v8 = static HorizontalAlignment.leading.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v34 = sub_10010FC20(&qword_1011B2CF0);
  sub_100B490C8(v40, v43, &v8[*(v34 + 44)]);
  v35 = v41;
  sub_1000089F8(v25, v41, &qword_1011B2CE0);
  v36 = v42;
  sub_1000089F8(v8, v42, &qword_1011B2CC8);
  v37 = v44;
  sub_1000089F8(v35, v44, &qword_1011B2CE0);
  v38 = sub_10010FC20(&qword_1011B2CF8);
  sub_1000089F8(v36, v37 + *(v38 + 48), &qword_1011B2CC8);
  sub_1000095E8(v8, &qword_1011B2CC8);
  sub_1000095E8(v25, &qword_1011B2CE0);
  sub_1000095E8(v36, &qword_1011B2CC8);
  return sub_1000095E8(v35, &qword_1011B2CE0);
}

uint64_t sub_100B4868C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v62 = sub_10010FC20(&qword_1011B2D58);
  __chkstk_darwin(v62);
  v4 = &v46 - v3;
  v63 = sub_10010FC20(&qword_1011B2D60);
  __chkstk_darwin(v63);
  v6 = &v46 - v5;
  v50 = type metadata accessor for CircularProgressView.LineStyle();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011B2D68);
  __chkstk_darwin(v8);
  v51 = &v46 - v9;
  v61 = sub_10010FC20(&qword_1011B2D70);
  __chkstk_darwin(v61);
  v54 = &v46 - v10;
  v55 = type metadata accessor for Artwork();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v60 = &v46 - v13;
  v14 = sub_10010FC20(&qword_1011B2D78);
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  v57 = sub_10010FC20(&qword_1011B2D80);
  __chkstk_darwin(v57);
  v58 = (&v46 - v17);
  v18 = sub_10010FC20(&qword_1011B2D88);
  __chkstk_darwin(v18);
  v59 = &v46 - v19;
  v20 = sub_10010FC20(&qword_1011B2D90);
  __chkstk_darwin(v20 - 8);
  v22 = (&v46 - v21);
  v23 = *(type metadata accessor for Notice(0) + 20);
  v52 = a1;
  sub_1000089F8(a1 + v23, v22, &qword_1011B2D90);
  v24 = type metadata accessor for Notice.Thumbnail(0);
  if ((*(*(v24 - 8) + 48))(v22, 1, v24) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_100B4BE64();
    _ConditionalContent<>.init(storage:)();
    v25 = &qword_1011B2D60;
    sub_1000089F8(v6, v16, &qword_1011B2D60);
    swift_storeEnumTagMultiPayload();
    sub_100B4BF20();
    sub_100B4C0F4();
    _ConditionalContent<>.init(storage:)();
    v26 = v6;
LABEL_9:
    v42 = v25;
    return sub_1000095E8(v26, v42);
  }

  v46 = v16;
  v56 = v18;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    *v58 = *v22;
    swift_storeEnumTagMultiPayload();
    sub_100B4BFAC();

    v41 = v59;
    _ConditionalContent<>.init(storage:)();
    v25 = &qword_1011B2D88;
    sub_1000089F8(v41, v46, &qword_1011B2D88);
    swift_storeEnumTagMultiPayload();
    sub_100B4BF20();
    sub_100B4C0F4();
    _ConditionalContent<>.init(storage:)();

    v26 = v41;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
    static Color.white.getter();
    (*(v48 + 104))(v49, enum case for CircularProgressView.LineStyle.round(_:), v50);
    LOBYTE(v65) = 1;
    v43 = v51;
    CircularProgressView.init(value:trackColor:lineWidth:lineStyle:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v44 = (v43 + *(v8 + 36));
    v45 = v66;
    *v44 = v65;
    v44[1] = v45;
    v44[2] = v67;
    sub_1000089F8(v43, v4, &qword_1011B2D68);
    swift_storeEnumTagMultiPayload();
    sub_100B4BE64();
    _ConditionalContent<>.init(storage:)();
    sub_1000089F8(v6, v46, &qword_1011B2D60);
    swift_storeEnumTagMultiPayload();
    sub_100B4BF20();
    sub_100B4C0F4();
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v6, &qword_1011B2D60);
    v26 = v43;
    v42 = &qword_1011B2D68;
    return sub_1000095E8(v26, v42);
  }

  v62 = v14;
  v28 = v53;
  v29 = v60;
  v30 = v55;
  (*(v53 + 32))(v60, v22, v55);
  (*(v28 + 16))(v47, v29, v30);
  type metadata accessor for NoticeView.Content(0);
  sub_10010FC20(&qword_1011B2BD8);
  ScaledMetric.wrappedValue.getter();
  v31 = v54;
  ArtworkImage.init(_:height:)();
  sub_10010FC20(&qword_1011B2BE0);
  ScaledMetric.wrappedValue.getter();
  v32 = v65;
  v33 = v31 + *(sub_10010FC20(&qword_1011B2DC0) + 36);
  *v33 = v32;
  *(v33 + 8) = -1;
  *(v33 + 16) = 0;
  if (qword_1011B05D0 != -1)
  {
    swift_once();
  }

  v34 = static Border.artwork;
  v35 = qword_10121B738;
  v36 = byte_10121B740;
  ScaledMetric.wrappedValue.getter();
  v37 = v65;
  v38 = v31 + *(v61 + 36);
  *v38 = v34;
  *(v38 + 8) = v35;
  *(v38 + 16) = v36;
  *(v38 + 24) = v37;
  *(v38 + 32) = -1;
  *(v38 + 40) = 0;
  sub_1000089F8(v31, v58, &qword_1011B2D70);
  swift_storeEnumTagMultiPayload();
  sub_100B4BFAC();

  v39 = v59;
  _ConditionalContent<>.init(storage:)();
  sub_1000089F8(v39, v46, &qword_1011B2D88);
  swift_storeEnumTagMultiPayload();
  sub_100B4BF20();
  sub_100B4C0F4();
  _ConditionalContent<>.init(storage:)();
  sub_1000095E8(v39, &qword_1011B2D88);
  sub_1000095E8(v31, &qword_1011B2D70);
  return (*(v28 + 8))(v60, v30);
}

uint64_t sub_100B490C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v59 = a2;
  v65 = a3;
  v66 = type metadata accessor for Font.Leading();
  v63 = *(v66 - 8);
  __chkstk_darwin(v66);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_1011B2D00);
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v75 = &v59 - v7;
  v74 = sub_10010FC20(&qword_1011B2D08);
  __chkstk_darwin(v74);
  v79 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v72 = &v59 - v10;
  __chkstk_darwin(v11);
  v78 = &v59 - v12;
  v13 = *(type metadata accessor for Notice(0) + 28);
  v73 = a1;
  v14 = (a1 + v13);
  v15 = v14[1];
  if (v15)
  {
    *&v81 = *v14;
    *(&v81 + 1) = v15;
    sub_1000098E0();

    v16 = Text.init<A>(_:)();
    v18 = v17;
    v20 = v19;
    static Font.footnote.getter();
    v21 = Text.font(_:)();
    v23 = v22;
    v25 = v24;

    sub_10011895C(v16, v18, v20 & 1);

    LODWORD(v81) = static HierarchicalShapeStyle.secondary.getter();
    v26 = Text.foregroundStyle<A>(_:)();
    v28 = v27;
    LOBYTE(v16) = v29;
    v31 = v30;
    sub_10011895C(v21, v23, v25 & 1);

    KeyPath = swift_getKeyPath();
    v71 = v26;
    v70 = v28;
    v67 = v16 & 1;
    sub_10021D0C0(v26, v28, v16 & 1);
    v69 = v31;

    v68 = KeyPath;

    v64 = 2;
  }

  else
  {
    v71 = 0;
    v70 = 0;
    v67 = 0;
    v69 = 0;
    v68 = 0;
    v64 = 0;
  }

  sub_100B497D8(v73, &v81);
  v80 = *(&v81 + 1);
  v33 = v81;
  v34 = v83;
  v61 = v82;
  v60 = v84;
  v35 = v85;
  static Font.subheadline.getter();
  v36 = v63;
  v37 = v66;
  (*(v63 + 104))(v5, enum case for Font.Leading.tight(_:), v66);
  Font.leading(_:)();

  v38 = v5;
  v39 = v34;
  v40 = v61;
  v41 = v37;
  v42 = v60;
  (*(v36 + 8))(v38, v41);
  static Font.Weight.semibold.getter();
  v43 = Font.weight(_:)();

  v44 = swift_getKeyPath();
  v92 = v35;
  v62 = v33;
  *&v81 = v33;
  *(&v81 + 1) = v80;
  v82 = v40;
  v83 = v39;
  v63 = v39;
  v84 = v42;
  LODWORD(v66) = v35;
  v85 = v35;
  v86 = v90;
  v87 = v91;
  v88 = v44;
  v89 = v43;
  if (sub_100B4802C())
  {
    type metadata accessor for NoticeView.Content(0);
    sub_10010FC20(&qword_1011B2BD8);
    ScaledMetric.wrappedValue.getter();
  }

  sub_10010FC20(&qword_1011B2D10);
  sub_100B4BBCC();
  v45 = v75;
  View.bodyHeadOutdent(_:)();
  sub_100B4BE10(v62, v80, v40, v63, v42, v66);

  v46 = swift_getKeyPath();
  v47 = v72;
  (*(v76 + 32))(v72, v45, v77);
  v48 = v47 + *(v74 + 36);
  *v48 = v46;
  *(v48 + 8) = 4;
  *(v48 + 16) = 0;
  v49 = v78;
  sub_10003D17C(v47, v78, &qword_1011B2D08);
  v50 = v79;
  sub_1000089F8(v49, v79, &qword_1011B2D08);
  v51 = v71;
  v52 = v65;
  v53 = v70;
  *v65 = v71;
  v52[1] = v53;
  v54 = v67;
  v55 = v69;
  v52[2] = v67;
  v52[3] = v55;
  v56 = v64;
  v52[4] = v68;
  v52[5] = v56;
  *(v52 + 48) = 0;
  v57 = sub_10010FC20(&qword_1011B2D50);
  sub_1000089F8(v50, v52 + *(v57 + 48), &qword_1011B2D08);
  sub_1005812CC(v51, v53, v54, v55);
  sub_10058131C(v51, v53, v54, v55);
  sub_1000095E8(v49, &qword_1011B2D08);
  sub_1000095E8(v50, &qword_1011B2D08);
  return sub_10058131C(v51, v53, v54, v55);
}

void sub_100B497D8(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v132 = a2;
  v3 = type metadata accessor for Locale.Language();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v130 = &v124[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for LayoutDirection();
  v131 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v124[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v124[-v10];
  v12 = sub_10010FC20(&qword_1011B1478);
  __chkstk_darwin(v12 - 8);
  v14 = &v124[-v13];
  v15 = type metadata accessor for Notice(0);
  if (*(a1 + *(v15 + 32)))
  {
    v128 = v3;
    sub_100B47A38(v14);
    v16 = type metadata accessor for DynamicTypeSize();
    (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
    v17 = UIContentSizeCategory.init(_:)();
    v18 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v17];

    v19 = objc_opt_self();
    v20 = v18;
    v21 = [v19 preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline compatibleWithTraitCollection:v20];
    v22 = [v21 fontDescriptorWithSymbolicTraits:32770];

    v129 = v4;
    if (v22)
    {

      v23 = [objc_opt_self() fontWithDescriptor:v22 size:0.0];
    }

    else
    {
      v23 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline compatibleWithTraitCollection:v20];
      v22 = v20;
    }

    v24 = v23;

    v25 = [objc_opt_self() configurationWithFont:v24 scale:1];
    v26 = String._bridgeToObjectiveC()();
    v27 = [objc_opt_self() systemImageNamed:v26 withConfiguration:v25];

    if (v27)
    {
      v28 = [v27 imageWithRenderingMode:2];

      v29 = v129;
      if (v28)
      {
        sub_100B47C40(v11);
        v30 = v131;
        (v131)[13](v8, enum case for LayoutDirection.rightToLeft(_:), v6);
        v31 = static LayoutDirection.== infix(_:_:)();
        v32 = v30[1];
        v32(v8, v6);
        v32(v11, v6);
        v127 = v28;
        if (v31)
        {
          v33 = objc_opt_self();
          v34 = (a1 + *(v15 + 24));
          v36 = *v34;
          v35 = v34[1];
          v37 = String._bridgeToObjectiveC()();
          v38 = [v33 dominantLanguageForString:v37];

          if (v38)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v39 = v130;
            Locale.Language.init(identifier:)();
            v40 = Locale.Language.characterDirection.getter();
            (*(v29 + 8))(v39, v128);
            if (v40 == 1)
            {
              v41 = v28;
              Image.init(uiImage:)();
              v42 = Text.init(_:)();
              v44 = v43;
              v131 = v38;
              v46 = v45;
              LODWORD(v136) = static HierarchicalShapeStyle.secondary.getter();
              v47 = Text.foregroundStyle<A>(_:)();
              v49 = v48;
              v51 = v50;
              sub_10011895C(v42, v44, v46 & 1);

              String.nonBreakingSpace.unsafeMutableAddressor();

              v130 = static Text.+ infix(_:_:)();
              v129 = v52;
              LODWORD(v126) = v53;
              v128 = v54;

              sub_10011895C(v47, v49, v51 & 1);

              *&v136 = v36;
              *(&v136 + 1) = v35;
              sub_1000098E0();

              v55 = Text.init<A>(_:)();
              v57 = v56;
              v59 = v58;
              LODWORD(v136) = static HierarchicalShapeStyle.primary.getter();
              v60 = Text.foregroundStyle<A>(_:)();
              v62 = v61;
              LOBYTE(v42) = v63;
              sub_10011895C(v55, v57, v59 & 1);

              v64 = v130;
              v65 = v129;
              v66 = static Text.+ infix(_:_:)();
              v68 = v67;
              v125 = v69;
              v71 = v70;
              sub_10011895C(v60, v62, v42 & 1);

              sub_10011895C(v64, v65, v126 & 1);

              LOBYTE(v42) = v125 & 1;
              *&v133 = v66;
              *(&v133 + 1) = v68;
              *&v134 = v125 & 1;
              *(&v134 + 1) = v71;
              LOBYTE(v135) = 0;
              sub_10021D0C0(v66, v68, v125 & 1);

              sub_10021D0C0(v66, v68, v42);

              _ConditionalContent<>.init(storage:)();

              sub_10011895C(v66, v68, v42);

              sub_10011895C(v66, v68, v42);

LABEL_15:
              v134 = v137;
              v133 = v136;
              v135 = v138;
              sub_10010FC20(&qword_1011B2D40);
              sub_100B4BD94();
              _ConditionalContent<>.init(storage:)();

              v86 = v136;
              v87 = v137;
              goto LABEL_16;
            }
          }
        }

        v88 = (a1 + *(v15 + 24));
        v89 = v88[1];
        *&v136 = *v88;
        *(&v136 + 1) = v89;
        sub_1000098E0();

        v90 = Text.init<A>(_:)();
        v92 = v91;
        v94 = v93;
        LODWORD(v136) = static HierarchicalShapeStyle.primary.getter();
        v95 = Text.foregroundStyle<A>(_:)();
        v97 = v96;
        v99 = v98;
        sub_10011895C(v90, v92, v94 & 1);

        String.nonBreakingSpace.unsafeMutableAddressor();

        v131 = static Text.+ infix(_:_:)();
        v130 = v100;
        LODWORD(v128) = v101;
        v129 = v102;

        sub_10011895C(v95, v97, v99 & 1);

        v103 = v28;
        Image.init(uiImage:)();
        v104 = Text.init(_:)();
        v106 = v105;
        v108 = v107;
        LODWORD(v136) = static HierarchicalShapeStyle.secondary.getter();
        v109 = Text.foregroundStyle<A>(_:)();
        v111 = v110;
        LOBYTE(v92) = v112;
        sub_10011895C(v104, v106, v108 & 1);

        v113 = v131;
        v114 = v130;
        v126 = static Text.+ infix(_:_:)();
        v116 = v115;
        v118 = v117;
        v120 = v119;
        sub_10011895C(v109, v111, v92 & 1);

        sub_10011895C(v113, v114, v128 & 1);

        *&v133 = v126;
        *(&v133 + 1) = v116;
        *&v134 = v118 & 1;
        *(&v134 + 1) = v120;
        LOBYTE(v135) = 1;
        _ConditionalContent<>.init(storage:)();
        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  v72 = (a1 + *(v15 + 24));
  v73 = v72[1];
  *&v136 = *v72;
  *(&v136 + 1) = v73;
  sub_1000098E0();

  v74 = Text.init<A>(_:)();
  v76 = v75;
  v78 = v77;
  LODWORD(v136) = static HierarchicalShapeStyle.primary.getter();
  v79 = Text.foregroundStyle<A>(_:)();
  v81 = v80;
  v83 = v82;
  v85 = v84;
  sub_10011895C(v74, v76, v78 & 1);

  *&v133 = v79;
  *(&v133 + 1) = v81;
  *&v134 = v83 & 1;
  *(&v134 + 1) = v85;
  v135 = 256;
  sub_10010FC20(&qword_1011B2D40);
  sub_100B4BD94();
  _ConditionalContent<>.init(storage:)();
  v86 = v136;
  v87 = v137;
LABEL_16:
  v121 = v138;
  v122 = v139;
  v123 = v132;
  *v132 = v86;
  v123[1] = v87;
  *(v123 + 32) = v121;
  *(v123 + 33) = v122;
}

uint64_t NoticeDismissal.presented.getter()
{
  sub_10010FC20(&qword_1011B5F50);
  Binding.wrappedValue.getter();
  return v1;
}

void (*NoticeDismissal.presented.modify(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x48uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 19) = a4 & 1;
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *v8 = a2;
  *(v8 + 8) = a3;
  *(v8 + 16) = a4 & 1;

  *(v9 + 64) = sub_10010FC20(&qword_1011B5F50);
  Binding.wrappedValue.getter();
  return sub_100B4A4FC;
}

void sub_100B4A4FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 56);
  *(*a1 + 24) = *(*a1 + 48);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  Binding.wrappedValue.setter();

  free(v1);
}

uint64_t NoticeDismissal.$presented.getter()
{
  sub_10010FC20(&qword_1011B5F50);
  Binding.projectedValue.getter();
  return v1;
}

void sub_100B4A5C8(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void (*EnvironmentValues.noticeDismissal.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = sub_100B45EBC();
  EnvironmentValues.subscript.getter();
  v5 = *(v4 + 40);
  *v4 = *(v4 + 24);
  *(v4 + 16) = v5;
  return sub_100B4A678;
}

void sub_100B4A678(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v3[3] = v4;
  v6 = *(v3 + 16);
  v3[4] = v5;
  *(v3 + 40) = v6;
  if (a2)
  {
    sub_100B46188(v4, v5);
    EnvironmentValues.subscript.setter();
    sub_100B46144(*v3, v3[1]);
  }

  else
  {
    EnvironmentValues.subscript.setter();
  }

  free(v3);
}

unint64_t sub_100B4A774()
{
  result = qword_1011B2A48;
  if (!qword_1011B2A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2A48);
  }

  return result;
}

unint64_t sub_100B4A7C8()
{
  result = qword_1011B2A50;
  if (!qword_1011B2A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2A50);
  }

  return result;
}

uint64_t sub_100B4A81C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B4A884(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B4A8EC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = *(type metadata accessor for NoticeView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_100B475A0(a1, a2, a3, v8);
}

uint64_t sub_100B4A974()
{
  v1 = type metadata accessor for NoticeView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = type metadata accessor for Notice(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for Notice.Thumbnail(0);
  if (!(*(*(v5 - 8) + 48))(v2 + v4, 1, v5))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v8 = type metadata accessor for Artwork();
      (*(*(v8 - 8) + 8))(v2 + v4, v8);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  if (*(v2 + *(v3 + 32)))
  {
  }

  sub_100B46138(*(v2 + *(v1 + 20)), *(v2 + *(v1 + 20) + 8), *(v2 + *(v1 + 20) + 16), *(v2 + *(v1 + 20) + 17));

  return swift_deallocObject();
}

unint64_t sub_100B4AB88()
{
  result = qword_1011B2A70;
  if (!qword_1011B2A70)
  {
    sub_1001109D0(&qword_1011B2A18);
    sub_100B4AC40();
    sub_100020674(&qword_1011B2AA8, &qword_1011B2AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2A70);
  }

  return result;
}

unint64_t sub_100B4AC40()
{
  result = qword_1011B2A78;
  if (!qword_1011B2A78)
  {
    sub_1001109D0(&qword_1011B2A10);
    sub_100B4ACCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2A78);
  }

  return result;
}

unint64_t sub_100B4ACCC()
{
  result = qword_1011B2A80;
  if (!qword_1011B2A80)
  {
    sub_1001109D0(&qword_1011B2A08);
    sub_100B4AD58();
    sub_100B37410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2A80);
  }

  return result;
}

unint64_t sub_100B4AD58()
{
  result = qword_1011B2A88;
  if (!qword_1011B2A88)
  {
    sub_1001109D0(&qword_1011B2A00);
    sub_100B4AE10();
    sub_100020674(&qword_1011B2AA0, &qword_1011B2A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2A88);
  }

  return result;
}

unint64_t sub_100B4AE10()
{
  result = qword_1011B2A90;
  if (!qword_1011B2A90)
  {
    sub_1001109D0(&qword_1011B29F8);
    sub_100B4AF4C(&qword_1011B2A98, type metadata accessor for NoticeView.Content);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2A90);
  }

  return result;
}

void sub_100B4AECC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for NoticeView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_100B4777C(a1, a2, v6);
}

uint64_t sub_100B4AF4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100B4AF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_100B4B064()
{
  result = qword_1011B2AE0;
  if (!qword_1011B2AE0)
  {
    sub_1001109D0(&qword_1011B2A40);
    sub_100B4B11C();
    sub_100020674(&qword_1011B2B00, &qword_1011B2AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2AE0);
  }

  return result;
}

unint64_t sub_100B4B11C()
{
  result = qword_1011B2AE8;
  if (!qword_1011B2AE8)
  {
    sub_1001109D0(&qword_1011B2A38);
    sub_100B4B1A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2AE8);
  }

  return result;
}

unint64_t sub_100B4B1A8()
{
  result = qword_1011B2AF0;
  if (!qword_1011B2AF0)
  {
    sub_1001109D0(&qword_1011B2A30);
    sub_1001109D0(&qword_1011B2A20);
    type metadata accessor for Notice(255);
    sub_1001109D0(&qword_1011B2A18);
    sub_1001109D0(&qword_1011B29F0);
    sub_100B4AB88();
    sub_100020674(&qword_1011B2AB8, &qword_1011B29F0);
    swift_getOpaqueTypeConformance2();
    sub_100B4AF4C(&qword_1011B2AC0, type metadata accessor for Notice);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_1011B2AF8, &qword_1011B2AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2AF0);
  }

  return result;
}

void sub_100B4B3CC()
{
  type metadata accessor for Notice(319);
  if (v0 <= 0x3F)
  {
    sub_100B4B504();
    if (v1 <= 0x3F)
    {
      sub_100B4B568(319, &qword_1011B2B88, &type metadata for Double, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_100B4B568(319, &qword_1011B2B90, &type metadata for Bool, &type metadata accessor for GestureState);
        if (v3 <= 0x3F)
        {
          sub_100B4B568(319, &unk_1011B2B98, &type metadata for Bool, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100B4B504()
{
  if (!qword_1011B2B78)
  {
    sub_1001109D0(&qword_1011B2B80);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1011B2B78);
    }
  }
}

void sub_100B4B568(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_100B4B5F0()
{
  type metadata accessor for Notice(319);
  if (v0 <= 0x3F)
  {
    sub_100B4B73C(319, &qword_1011B2C60, sub_100B4A774);
    if (v1 <= 0x3F)
    {
      sub_100B4B73C(319, &qword_1011B2C68, sub_100B4A7C8);
      if (v2 <= 0x3F)
      {
        sub_100B4B79C(319, &qword_1011B4260, &type metadata accessor for DynamicTypeSize);
        if (v3 <= 0x3F)
        {
          sub_100B4B79C(319, &qword_1011B2C70, &type metadata accessor for LayoutDirection);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100B4B73C(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for ScaledMetric();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100B4B79C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100B4B81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v6 = sub_10010FC20(&qword_1011B2D90);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Notice(0);
  sub_1000089F8(a1 + *(v9 + 20), v8, &qword_1011B2D90);
  v10 = type metadata accessor for Notice.Thumbnail(0);
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    sub_1000095E8(v8, &qword_1011B2D90);
    v11 = 0;
  }

  else
  {
    v11 = swift_getEnumCaseMultiPayload() == 1;
    sub_100B4C180(v8, type metadata accessor for Notice.Thumbnail);
  }

  v12 = type metadata accessor for DynamicTypeSize();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 88))(a2, v12);
  if (v14 == enum case for DynamicTypeSize.xSmall(_:) || v14 == enum case for DynamicTypeSize.small(_:))
  {
    result = sub_100B4C180(a1, type metadata accessor for Notice);
    v17 = 6.0;
    if (!v11)
    {
      v17 = 0.0;
    }

    v18 = 4.0;
    v19 = 12.0;
    if (v11)
    {
      v20 = 12.0;
    }

    else
    {
      v20 = 4.0;
    }
  }

  else
  {
    if (v14 == enum case for DynamicTypeSize.medium(_:) || v14 == enum case for DynamicTypeSize.large(_:) || v14 == enum case for DynamicTypeSize.xLarge(_:))
    {
      goto LABEL_29;
    }

    if (v14 != enum case for DynamicTypeSize.xxLarge(_:) && v14 != enum case for DynamicTypeSize.xxxLarge(_:) && v14 != enum case for DynamicTypeSize.accessibility1(_:) && v14 != enum case for DynamicTypeSize.accessibility2(_:) && v14 != enum case for DynamicTypeSize.accessibility3(_:) && v14 != enum case for DynamicTypeSize.accessibility4(_:) && v14 != enum case for DynamicTypeSize.accessibility5(_:))
    {
      (*(v13 + 8))(a2, v12);
LABEL_29:
      if (v11)
      {
        v20 = 10.0;
      }

      else
      {
        v20 = 12.0;
      }

      v23 = *(a1 + *(v9 + 32));
      sub_100030444(v23);
      result = sub_100B4C180(a1, type metadata accessor for Notice);
      if (v23)
      {
        result = sub_100020438(v23);
        v19 = 19.0;
      }

      else
      {
        v19 = 20.0;
      }

      v18 = 4.0;
      if (v11)
      {
        v17 = 10.0;
      }

      else
      {
        v17 = 4.0;
      }

      goto LABEL_41;
    }

    result = sub_100B4C180(a1, type metadata accessor for Notice);
    v17 = 10.0;
    if (!v11)
    {
      v17 = 6.0;
    }

    v19 = 20.0;
    v20 = 12.0;
    v18 = 8.0;
  }

LABEL_41:
  *a3 = v18;
  a3[1] = v20;
  a3[2] = v18;
  a3[3] = v19;
  a3[4] = v17;
  return result;
}

unint64_t sub_100B4BBCC()
{
  result = qword_1011B2D18;
  if (!qword_1011B2D18)
  {
    sub_1001109D0(&qword_1011B2D10);
    sub_100B4BC84();
    sub_100020674(&unk_1011B48B0, &qword_1011B2D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2D18);
  }

  return result;
}

unint64_t sub_100B4BC84()
{
  result = qword_1011B2D20;
  if (!qword_1011B2D20)
  {
    sub_1001109D0(&qword_1011B2D28);
    sub_100B4BD08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2D20);
  }

  return result;
}

unint64_t sub_100B4BD08()
{
  result = qword_1011B2D30;
  if (!qword_1011B2D30)
  {
    sub_1001109D0(&qword_1011B2D38);
    sub_100B4BD94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2D30);
  }

  return result;
}