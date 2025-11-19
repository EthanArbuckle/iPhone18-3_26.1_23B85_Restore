uint64_t sub_88DBF8()
{

  return swift_deallocObject();
}

id sub_88DC30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  *&v1[v3] = v2;
  return [v1 layoutIfNeeded];
}

id sub_88DCAC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_88DE18()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_226(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_88DE90()
{

  return swift_deallocObject();
}

void sub_88DEE8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow) = 0;
}

double sub_88DF00@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_88DF58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_88DFAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_88E004(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_88E068(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E0B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_88E0D8()
{
  result = qword_E1DAE8;
  if (!qword_E1DAE8)
  {
    sub_13C80(255, &qword_E1DAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1DAE8);
  }

  return result;
}

uint64_t objectdestroy_52Tm()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

void sub_88E1E4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView;
  v3 = [objc_allocWithZone(UIStackView) init];
  v4 = UIView.forAutolayout.getter();

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack;
  v6 = [objc_allocWithZone(UIView) init];
  v7 = UIView.forAutolayout.getter();

  *(v1 + v5) = v7;
  v8 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack;
  v9 = [objc_allocWithZone(UIView) init];
  v10 = UIView.forAutolayout.getter();

  *(v1 + v8) = v10;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint) = 0;
  v11 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_feedbackGenerator;
  *(v1 + v11) = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:0];
  v12 = v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds);
  *v13 = 0u;
  v13[1] = 0u;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer) = 0;
  v14 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  *(v1 + v14) = [objc_allocWithZone(UILayoutGuide) init];
  v15 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  v16 = objc_opt_self();
  *(v1 + v15) = [v16 whiteColor];
  v17 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  *(v1 + v17) = [v16 systemFillColor];
  v18 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  if (qword_E16910 != -1)
  {
    swift_once();
  }

  *(v1 + v18) = static UIColor.MusicTint.normal;
  v19 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  *(v1 + v19) = Int.seconds.getter(0);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking) = 0;
  v20 = v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_cancelledHandler);
  *v22 = 0;
  v22[1] = 0;
  sub_ABAFD0();
  __break(1u);
}

unint64_t SymbolButton.CustomView.init(view:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>, int64x2_t a3@<Q0>, int64x2_t a4@<Q1>)
{
  a3.i64[0] = 0;
  *a2 = result;
  a4.i64[0] = result;
  v4 = vdupq_lane_s64(vmvnq_s8(vceqq_s64(a4, a3)).i64[0], 0);
  v5 = vandq_s8(*&UIEdgeInsetsZero.bottom, v4);
  v6 = 0x3FF0000000000000;
  *(a2 + 8) = vandq_s8(*&UIEdgeInsetsZero.top, v4);
  if (!result)
  {
    v6 = 0;
  }

  *(a2 + 24) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = 0;
  return result;
}

BOOL sub_88E520(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_ABB5C0();
  v4 = qword_B343E8[a1];
  sub_ABB5D0(v4);
  v5 = sub_ABB610();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = qword_B343E8[*(*(a2 + 48) + v7)];
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_88E600(uint64_t a1, uint64_t a2)
{
  v3 = sub_AB8B70();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_8A3D54(&qword_E1AD20, &type metadata accessor for Playlist.Collaborator), v7 = sub_AB90D0(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_8A3D54(&qword_E1AD28, &type metadata accessor for Playlist.Collaborator);
      v15 = sub_AB91C0();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t SymbolButton.updateConfigurationIfNeeded(_:animation:)(uint64_t a1, uint64_t a2, id a3, uint64_t a4, int a5)
{
  v6 = v5;
  v77 = a5;
  v78 = a4;
  v76 = a2;
  v75 = sub_AB4EB0();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D170);
  __chkstk_darwin(v10 - 8);
  v12 = &v70 - v11;
  v13 = type metadata accessor for SymbolButton.Configuration(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v12, &qword_E1D170);
  v17 = *(v14 + 48);
  if (v17(v12, 1, v13) == 1)
  {
    v18 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_8A3C84(&v6[v18], v16, type metadata accessor for SymbolButton.Configuration);
    if (v17(v12, 1, v13) != 1)
    {
      sub_12E1C(v12, &qword_E1D170);
    }
  }

  else
  {
    sub_8A3CEC(v12, v16, type metadata accessor for SymbolButton.Configuration);
  }

  v19 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment;
  swift_beginAccess();
  if (v6[v19])
  {
    sub_3F9D0(*(v16 + 25), *(v16 + 26));
    *(v16 + 200) = xmmword_AF82C0;
    *(v16 + 27) = 0;
    *(v16 + 28) = 0;
  }

  v20 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden;
  swift_beginAccess();
  v21 = &selRef__authenticateReturningError_;
  if ((v6[v20] & 1) != 0 || *&v16[*(v13 + 68)] != 0.0)
  {
    [v6 state];
    v22 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled;
    swift_beginAccess();
    v23 = v6[v22];
    v79 = v13;
    v72 = v19;
    if (v23 & 1) != 0 || (v24 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted, swift_beginAccess(), (v6[v24]) || (v25 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected, swift_beginAccess(), v6[v25] == 1))
    {
      if ((v6[v19] & 1) == 0)
      {
        v70 = v22;
        v71 = a3;
        if (qword_E16C28 != -1)
        {
          swift_once();
        }

        v27 = static SymbolButton.Background.normal;
        v26 = qword_E73EA8;
        v29 = qword_E73EB0;
        v28 = qword_E73EB8;
        v30 = *(v16 + 25);
        v31 = *(v16 + 26);

        v32 = v26;
        sub_3F9D0(v30, v31);
        *(v16 + 25) = v27;
        *(v16 + 26) = v26;
        *(v16 + 27) = v29;
        *(v16 + 28) = v28;
        a3 = v71;
        v13 = v79;
        v21 = &selRef__authenticateReturningError_;
        v22 = v70;
      }

      v33 = [v6 v21[334]];
      v34 = [v33 userInterfaceIdiom];

      if (v34 == &dword_4 + 2)
      {
        v35 = objc_opt_self();
        v36 = [v35 labelColor];

        *(v16 + 14) = v36;
        v13 = v79;
        v37 = [v35 labelColor];

        *(v16 + 22) = v37;
      }

      *&v16[*(v13 + 68)] = 0x3FF0000000000000;
      v19 = v72;
    }

    if (([v6 state] & 2) != 0 && v6[v22] == 1)
    {
      *&v16[*(v13 + 68)] = 0x3FD0000000000000;
    }

    if ([v6 state])
    {
      v38 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted;
      swift_beginAccess();
      v39 = v79;
      if (v6[v38] == 1)
      {
        if ((v6[v19] & 1) == 0)
        {
          v71 = a3;
          if (qword_E16C30 != -1)
          {
            swift_once();
          }

          v40 = static SymbolButton.Background.highlighted;
          v41 = qword_E73EC8;
          v42 = qword_E73ED8;
          v70 = qword_E73ED0;
          v43 = *(v16 + 25);
          v44 = *(v16 + 26);

          v45 = v41;
          sub_3F9D0(v43, v44);
          *(v16 + 25) = v40;
          *(v16 + 26) = v41;
          *(v16 + 27) = v70;
          *(v16 + 28) = v42;
          a3 = v71;
          v39 = v79;
          v21 = &selRef__authenticateReturningError_;
        }

        v46 = *(v39 + 68);
        *&v16[v46] = 0x3FE0000000000000;
        v47 = [v6 v21[334]];
        v48 = [v47 userInterfaceIdiom];

        v49 = v48 == &dword_4 + 2;
        v19 = v72;
        if (v49)
        {
          v50 = objc_opt_self();
          v51 = [v50 labelColor];

          *(v16 + 14) = v51;
          v52 = [v50 labelColor];

          *(v16 + 22) = v52;
          *&v16[v46] = 0x3FF0000000000000;
          if ([v6 showsMenuAsPrimaryAction])
          {
            if ([v6 isContextMenuInteractionEnabled])
            {
              v71 = v52;
              v53 = v51;
              if ((v6[v19] & 1) == 0)
              {
                sub_3F9D0(*(v16 + 25), *(v16 + 26));
                *(v16 + 25) = 0x3FF0000000000000;
                *(v16 + 26) = 0;
                *(v16 + 27) = 0;
                *(v16 + 28) = 0;
              }

              v54 = [v50 blackColor];

              *(v16 + 14) = v54;
              v55 = [v50 blackColor];

              *(v16 + 22) = v55;
            }
          }
        }
      }
    }

    if (([v6 state] & 4) != 0)
    {
      v56 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected;
      swift_beginAccess();
      v57 = v6[v56];
      v58 = v79;
      if (v57 == 1)
      {
        if ((v6[v19] & 1) == 0)
        {
          sub_3F9D0(*(v16 + 25), *(v16 + 26));
          *(v16 + 25) = 0x3FF0000000000000;
          *(v16 + 26) = 0;
          *(v16 + 27) = 0;
          *(v16 + 28) = 0;
        }

        v59 = *(v58 + 68);
        *&v16[v59] = 0x3FF0000000000000;
        v60 = [v6 v21[334]];
        v61 = [v60 userInterfaceIdiom];

        if (v61 == &dword_4 + 2)
        {
          v62 = objc_opt_self();
          v63 = [v62 blackColor];

          *(v16 + 14) = v63;
          v64 = [v62 blackColor];

          *(v16 + 22) = v64;
        }

        else if ([v6 state])
        {
          *&v16[v59] = 0x3FE0000000000000;
        }
      }
    }
  }

  v65 = &v6[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider];
  swift_beginAccess();
  v66 = *v65;
  if (*v65)
  {

    v67 = [v6 v21[334]];
    v68 = v73;
    sub_AB4E90();
    [v6 isEnabled];
    sub_AB4E40();
    [v6 isSelected];
    sub_AB4E60();
    [v6 isHighlighted];
    sub_AB4E80();
    v66(v68, v16);
    sub_17654(v66);
    (*(v74 + 8))(v68, v75);
  }

  SymbolButton.setConfiguration(_:animation:updates:)(v16, v76, a3, v78, v77 & 1, _swiftEmptyArrayStorage);
  return sub_8A1B6C(v16, type metadata accessor for SymbolButton.Configuration);
}

__n128 static SymbolButton.Material.with(_:)@<Q0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v6 = 0uLL;
  v7 = 0;
  v8 = 2;
  v9 = 0uLL;
  a1(&v6);
  v3 = v7;
  v4 = v8;
  result = v9;
  *a2 = v6;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = result;
  return result;
}

double static SymbolButton.Symbol.with(_:)@<D0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v9 = 0uLL;
  v13 = 0uLL;
  v17 = 0;
  *&v16[7] = 0;
  *&v10 = 0;
  *(&v10 + 1) = UIFontTextStyleSubheadline;
  *&v11 = 0;
  BYTE8(v11) = 1;
  v12 = xmmword_B283E0;
  v14[0] = -1;
  *&v14[16] = 0;
  *&v14[24] = 0x3FF0000000000000;
  *&v14[1] = *v16;
  v15 = 0;
  v4 = UIFontTextStyleSubheadline;
  a1(&v9);
  v5 = *v14;
  *(a2 + 64) = v13;
  *(a2 + 80) = v5;
  *(a2 + 96) = *&v14[16];
  *(a2 + 112) = v15;
  v6 = v10;
  *a2 = v9;
  *(a2 + 16) = v6;
  result = *&v11;
  v8 = v12;
  *(a2 + 32) = v11;
  *(a2 + 48) = v8;
  return result;
}

__n128 static SymbolButton.Title.with(_:)@<Q0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v7 = 0uLL;
  v8.n128_u64[0] = UIFontTextStyleSubheadline;
  v8.n128_f64[1] = UIFontWeightSemibold;
  v9 = 0uLL;
  v10 = 0x3FF0000000000000uLL;
  LOBYTE(v11) = 0;
  *(&v11 + 1) = 0;
  v4 = UIFontTextStyleSubheadline;
  a1(&v7);
  v5 = v10;
  *(a2 + 32) = v9;
  *(a2 + 48) = v5;
  *(a2 + 64) = v11;
  result = v8;
  *a2 = v7;
  *(a2 + 16) = result;
  return result;
}

uint64_t static SymbolButton.Background.with(_:)(void (*a1)(uint64_t *))
{
  v2 = 0x3FF0000000000000;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  a1(&v2);
  return v3;
}

char *SymbolButton.__allocating_init(configuration:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_8A0278(a1, a2, a3);
  sub_17654(a2);
  return v8;
}

char *SymbolButton.init(configuration:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_8A0278(a1, a2, a3);
  sub_17654(a2);
  return v4;
}

void sub_88F4DC(void *a1)
{
  if ([a1 sender])
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      v1 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler];
      swift_beginAccess();
      v2 = *v1;
      if (*v1)
      {

        v2();

        sub_17654(v2);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_12E1C(v6, &qword_E1E0B0);
  }
}

id SymbolButton._monochromaticTreatment.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SymbolButton(0);
  return objc_msgSendSuper2(&v2, "_monochromaticTreatment");
}

void SymbolButton._monochromaticTreatment.setter(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SymbolButton(0);
  objc_msgSendSuper2(&v5, "_setMonochromaticTreatment:", a1);
  v3 = sub_898004();
  [v3 _setMonochromaticTreatment:{objc_msgSend(v1, "_monochromaticTreatment")}];

  v4 = sub_897E8C();
  [v4 _setMonochromaticTreatment:{objc_msgSend(v1, "_monochromaticTreatment")}];
}

uint64_t SymbolButton.debugLabel.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t SymbolButton.debugLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t SymbolButton.configurationProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D170);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = (v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider);
  swift_beginAccess();
  v9 = *v8;
  *v8 = a1;
  v8[1] = a2;
  sub_307CC(a1);
  sub_17654(v9);
  v10 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  SymbolButton.updateConfigurationIfNeeded(_:animation:)(v7, 0, 0, 0, 1);
  sub_17654(a1);
  return sub_12E1C(v7, &qword_E1D170);
}

void (*SymbolButton.configurationProvider.modify(uint64_t *a1))(void **a1, char a2)
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
  *(v3 + 24) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D170) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  *(v4 + 32) = v6;
  swift_beginAccess();
  return sub_88FB4C;
}

void sub_88FB4C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[4];
  if ((a2 & 1) == 0)
  {
    v5 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v4, 0, 0, 0, 1);
    sub_12E1C(v4, &qword_E1D170);
  }

  free(v4);

  free(v3);
}

uint64_t SymbolButton.configurationState.getter()
{
  v1 = [v0 traitCollection];
  sub_AB4E90();
  [v0 isEnabled];
  sub_AB4E40();
  [v0 isSelected];
  sub_AB4E60();
  [v0 isHighlighted];
  return sub_AB4E80();
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenHighlighted.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*SymbolButton.automaticallyAdjustsAlphaWhenHighlighted.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D170) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_8A459C;
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenSelected.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_88FEB0(char a1, uint64_t *a2)
{
  v5 = a1 & 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D170);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = *a2;
  result = swift_beginAccess();
  v11 = *(v2 + v9);
  *(v2 + v9) = a1;
  if (v11 != v5)
  {
    v12 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v8, 0, 0, 0, 1);
    return sub_12E1C(v8, &qword_E1D170);
  }

  return result;
}

uint64_t (*SymbolButton.automaticallyAdjustsAlphaWhenSelected.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D170) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_8A459C;
}

void sub_8900A8(void ***a1)
{
  v1 = *a1;
  v2 = (*a1)[5];
  v3 = (*a1)[3];
  v4 = *(*a1 + 48);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    v6 = v1[4];
    v7 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v6, 0, 0, 0, 1);
    sub_12E1C(v6, &qword_E1D170);
  }

  free(v1[4]);

  free(v1);
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenDisabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*SymbolButton.automaticallyAdjustsAlphaWhenDisabled.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D170) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_8A459C;
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenHidden.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*SymbolButton.automaticallyAdjustsAlphaWhenHidden.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D170) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_8A459C;
}

uint64_t SymbolButton.prefersSolariumTreatment.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*SymbolButton.prefersSolariumTreatment.modify(uint64_t *a1))(void ***)
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
  *(v3 + 24) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D170) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_8904E8;
}

uint64_t SymbolButton.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  return sub_8A3C84(v1 + v3, a1, type metadata accessor for SymbolButton.Configuration);
}

void (*SymbolButton.configuration.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 24) = v1;
  v5 = *(*(type metadata accessor for SymbolButton.Configuration(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 32) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 32) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 40) = v6;
  v8 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_8A3C84(v1 + v8, v7, type metadata accessor for SymbolButton.Configuration);
  return sub_8906BC;
}

void sub_8906BC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    sub_8A3C84(*(*a1 + 40), v3, type metadata accessor for SymbolButton.Configuration);
    SymbolButton.setConfiguration(_:animation:updates:)(v3, 0, 0, 0, 1, _swiftEmptyArrayStorage);
    sub_8A1B6C(v3, type metadata accessor for SymbolButton.Configuration);
  }

  else
  {
    SymbolButton.setConfiguration(_:animation:updates:)(*(*a1 + 40), 0, 0, 0, 1, _swiftEmptyArrayStorage);
  }

  sub_8A1B6C(v4, type metadata accessor for SymbolButton.Configuration);
  free(v4);
  free(v3);

  free(v2);
}

uint64_t *SymbolButton.Background.normal.unsafeMutableAddressor()
{
  if (qword_E16C28 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.normal;
}

uint64_t *SymbolButton.Background.highlighted.unsafeMutableAddressor()
{
  if (qword_E16C30 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.highlighted;
}

uint64_t SymbolButton.Update.alongside.getter()
{
  v1 = *v0;
  sub_307CC(*v0);
  return v1;
}

uint64_t SymbolButton.Update.alongside.setter(uint64_t a1, uint64_t a2)
{
  result = sub_17654(*v2);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SymbolButton.Update.completion.setter(uint64_t a1, uint64_t a2)
{
  result = sub_17654(*(v2 + 32));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SymbolButton.Update.init(alongside:animationOptions:completion:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  *(a5 + 24) = a7;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

void SymbolButton.setConfiguration(_:animation:updates:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v171 = a6;
  LODWORD(v170) = a5;
  v164 = a4;
  v162 = *&a3;
  v168 = *&a2;
  ObjectType = swift_getObjectType();
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E175C8);
  __chkstk_darwin(v174);
  v9 = &v158 - v8;
  v10 = sub_AB3470();
  v172 = *(v10 - 8);
  v173 = v10;
  __chkstk_darwin(v10);
  v12 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SymbolButton.Configuration(0);
  v165 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v175 = &v158 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v169 = &v158 - v17;
  v18 = __chkstk_darwin(v16);
  v167 = &v158 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v158 - v21;
  v166 = v23;
  __chkstk_darwin(v20);
  v25 = &v158 - v24;
  v26 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_8A3C84(v6 + v26, v25, type metadata accessor for SymbolButton.Configuration);
  v27 = a1;
  v28 = _s11MusicCoreUI12SymbolButtonC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(a1, v25);
  v29 = 0;
  if (v28)
  {
    goto LABEL_62;
  }

  sub_8A3C84(v27, v22, type metadata accessor for SymbolButton.Configuration);
  swift_beginAccess();
  v159 = v22;
  v160 = v6;
  sub_2580A4(v22, v6 + v26);
  swift_endAccess();
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v161 = sub_AB3440();
  v176 = v30;
  v172[1](v12, v173);
  v31 = *(v13 + 36);
  v32 = *(v174 + 12);
  v174 = v25;
  sub_15F84(&v25[v31], v9, &qword_E1DB50);
  sub_15F84(v27 + v31, &v9[v32], &qword_E1DB50);
  v33 = sub_ABA680();
  v34 = *(*(v33 - 8) + 48);
  v35 = v34(v9, 1, v33);
  v36 = v34(&v9[v32], 1, v33);
  v37 = v27;
  if (v35 == 1)
  {
    if (v36 != 1)
    {
      sub_12E1C(&v9[v32], &qword_E1DB50);
LABEL_6:
      sub_12E1C(v9, &qword_E1DB50);
      v38 = v160;
      *(v160 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated) = 1;
      v39 = v176;
      goto LABEL_8;
    }
  }

  else if (v36 == 1)
  {
    goto LABEL_6;
  }

  sub_12E1C(v9, &qword_E175C8);
  v39 = v176;
  v38 = v160;
LABEL_8:
  v172 = v13;
  [v38 invalidateIntrinsicContentSize];
  [v38 accessibilityUpdateSymbolButton];
  v40 = *(v37 + 8);
  v177 = v37;
  if (v40)
  {
    v41 = *(v37 + 16);
    v42 = sub_AB9260();
    v43 = objc_opt_self();
    v44 = [v43 _systemImageNamed:v42];

    if (!v44)
    {
      v45 = sub_AB9260();
      v44 = [v43 imageNamed:v45 inBundle:v41];
    }
  }

  else
  {
    v44 = 0;
  }

  [v38 setLargeContentImage:v44];

  v46 = [v38 window];
  if (!v46 || (v46, (v170 & 1) != 0) || (v47 = v168, v168 <= 0.0))
  {
    v60 = v177;
    if (qword_E16908 != -1)
    {
      swift_once();
    }

    v61 = sub_AB4BC0();
    v62 = __swift_project_value_buffer(v61, qword_E73898);
    v63 = v175;
    sub_8A3C84(v60, v175, type metadata accessor for SymbolButton.Configuration);
    v64 = v38;

    v65 = sub_AB4BA0();
    v66 = sub_AB9F20();

    v67 = os_log_type_enabled(v65, v66);
    v173 = v62;
    if (v67)
    {
      v68 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      *&aBlock = v170;
      *v68 = 136446722;
      v69 = &v64[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
      swift_beginAccess();
      v70 = v69[1];
      if (v70)
      {
        v71 = *v69;
        v72 = v70;
      }

      else
      {
        v73 = v64;
        v74 = [v73 description];
        v71 = sub_AB92A0();
        v72 = v75;

        v63 = v175;
      }

      v76 = sub_7AB3E0(v71, v72, &aBlock);

      *(v68 + 4) = v76;
      *(v68 + 12) = 2082;
      *(v68 + 14) = sub_7AB3E0(v161, v39, &aBlock);
      *(v68 + 22) = 2082;
      v77 = SymbolButton.Configuration.description.getter();
      v79 = v78;
      sub_8A1B6C(v63, type metadata accessor for SymbolButton.Configuration);
      v80 = sub_7AB3E0(v77, v79, &aBlock);

      *(v68 + 24) = v80;
      _os_log_impl(&dword_0, v65, v66, "[%{public}s] UpdateID=%{public}s — Applying new configuration=%{public}s", v68, 0x20u);
      swift_arrayDestroy();

      v60 = v177;
    }

    else
    {

      sub_8A1B6C(v63, type metadata accessor for SymbolButton.Configuration);
    }

    sub_8993E0(v60);
    v81 = *(v171 + 16);
    v25 = v174;
    if (v81)
    {
      v82 = v171 + 72;
      while (1)
      {
        v83 = *(v82 - 40);
        v84 = *(v82 - 8);
        if (v83)
        {
          break;
        }

        sub_307CC(v84);
        if (v84)
        {
          goto LABEL_35;
        }

LABEL_30:
        v82 += 48;
        sub_17654(v83);
        if (!--v81)
        {
          goto LABEL_36;
        }
      }

      sub_307CC(v84);
      sub_307CC(v83);
      v83(v64);
      if (!v84)
      {
        goto LABEL_30;
      }

LABEL_35:
      v84(v64);
      sub_17654(v84);
      goto LABEL_30;
    }

LABEL_36:
    v85 = *(v25 + 5);
    v191[4] = *(v25 + 4);
    v191[5] = v85;
    v191[6] = *(v25 + 6);
    v192 = *(v25 + 14);
    v86 = *(v25 + 1);
    v191[0] = *v25;
    v191[1] = v86;
    v87 = *(v25 + 3);
    v191[2] = *(v25 + 2);
    v191[3] = v87;
    v88 = v177;
    v89 = *v177;
    v90 = v177[1];
    v91 = v177[3];
    v195 = v177[2];
    v196 = v91;
    aBlock = v89;
    v194 = v90;
    v92 = v177[4];
    v93 = v177[5];
    v94 = v177[6];
    v200 = *(v177 + 14);
    v198 = v93;
    v199 = v94;
    v197 = v92;
    if (_s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(v191, &aBlock))
    {
      goto LABEL_48;
    }

    v95 = *(v25 + 15);
    v96 = *(v25 + 16);
    v97 = *(v25 + 152);
    v180 = *(v25 + 136);
    v181 = v97;
    v182 = *(v25 + 168);
    v98 = v25[184];
    v179[0] = v95;
    v179[1] = v96;
    v183 = v98;
    *v184 = *(v25 + 185);
    v99 = *(v25 + 24);
    v100 = *(v88 + 120);
    v101 = *(v88 + 128);
    v102 = *(v88 + 152);
    v186 = *(v88 + 136);
    v187 = v102;
    v188 = *(v88 + 168);
    v103 = *(v88 + 184);
    *&v184[7] = v99;
    v185[0] = v100;
    v185[1] = v101;
    v189 = v103;
    *v190 = *(v88 + 185);
    *&v190[7] = *(v88 + 192);
    if (sub_8A0BB4(v179, v185))
    {
      goto LABEL_48;
    }

    if (v101)
    {
      if ((((*&v96 != 0) & (v98 ^ 1) ^ v103) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (((*&v96 != 0) & (v98 ^ 1)) != 0)
    {
      goto LABEL_48;
    }

    v104 = *(v172 + 10);
    v105 = *&v25[v104];
    v106 = *(v88 + v104);
    if (v105)
    {
      if (v105 != v106)
      {
        goto LABEL_48;
      }

LABEL_47:
      if ((*&v25[*(v172 + 11) + 16] == 1) == (*(v88 + *(v172 + 11) + 16) == 1))
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (!v106)
    {
      goto LABEL_47;
    }

LABEL_48:
    [v64 setNeedsLayout];
LABEL_49:
    v107 = v64;

    v108 = sub_AB4BA0();
    v109 = sub_AB9F20();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v178[0] = swift_slowAlloc();
      *v110 = 136446466;
      v111 = &v107[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
      swift_beginAccess();
      if (v111[1])
      {
        v112 = *v111;
        v113 = v111[1];
      }

      else
      {
        v114 = [v107 description];
        v112 = sub_AB92A0();
        v113 = v115;
      }

      v116 = sub_7AB3E0(v112, v113, v178);

      *(v110 + 4) = v116;
      *(v110 + 12) = 2082;
      v117 = sub_7AB3E0(v161, v176, v178);

      *(v110 + 14) = v117;
      _os_log_impl(&dword_0, v108, v109, "[%{public}s] UpdateID=%{public}s — Updated ✅", v110, 0x16u);
      swift_arrayDestroy();

      v29 = 0;
      v25 = v174;
    }

    else
    {

      v29 = 0;
    }

    goto LABEL_62;
  }

  v48 = v177;
  if (qword_E16908 != -1)
  {
    swift_once();
  }

  v49 = sub_AB4BC0();
  __swift_project_value_buffer(v49, qword_E73898);
  v50 = v167;
  sub_8A3C84(v48, v167, type metadata accessor for SymbolButton.Configuration);
  v51 = v38;

  v52 = sub_AB4BA0();
  LODWORD(v53) = sub_AB9F20();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    *&aBlock = v175;
    *v54 = 136446722;
    v55 = &v51[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
    swift_beginAccess();
    v56 = v55[1];
    v57 = v169;
    if (v56)
    {
      v58 = *v55;
      v59 = v56;
    }

    else
    {
      v118 = v51;
      v119 = [v118 description];
      LODWORD(v173) = v53;
      v53 = v119;
      v58 = sub_AB92A0();
      v59 = v120;

      v50 = v167;
      LOBYTE(v53) = v173;
    }

    v121 = sub_7AB3E0(v58, v59, &aBlock);

    *(v54 + 4) = v121;
    *(v54 + 12) = 2082;
    *(v54 + 14) = sub_7AB3E0(v161, v39, &aBlock);
    *(v54 + 22) = 2082;
    v122 = SymbolButton.Configuration.description.getter();
    v123 = v50;
    v125 = v124;
    sub_8A1B6C(v123, type metadata accessor for SymbolButton.Configuration);
    v126 = sub_7AB3E0(v122, v125, &aBlock);

    *(v54 + 24) = v126;
    _os_log_impl(&dword_0, v52, v53, "[%{public}s] UpdateID=%{public}s — Animating to new configuration=%{public}s", v54, 0x20u);
    swift_arrayDestroy();

    v48 = v177;
  }

  else
  {

    sub_8A1B6C(v50, type metadata accessor for SymbolButton.Configuration);
    v57 = v169;
  }

  v127 = *&v51[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount];
  v128 = v127 + 1;
  v129 = v159;
  if (__OFADD__(v127, 1))
  {
    __break(1u);
  }

  else
  {
    *&v51[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount] = v128;
    if (v128 != v127)
    {
      sub_899E58();
    }

    v130 = swift_allocObject();
    v170 = v130;
    *(v130 + 16) = _swiftEmptyArrayStorage;
    v173 = v130 + 16;
    v175 = objc_opt_self();
    v172 = v51;
    v25 = v174;
    sub_8A3C84(v174, v129, type metadata accessor for SymbolButton.Configuration);
    sub_8A3C84(v48, v57, type metadata accessor for SymbolButton.Configuration);
    v131 = *(v165 + 80);
    v132 = (v131 + 16) & ~v131;
    v165 = v166 + v131;
    v133 = (v166 + v131 + v132) & ~v131;
    v166 += 7;
    v167 = v131;
    v134 = (v166 + v133) & 0xFFFFFFFFFFFFFFF8;
    v135 = swift_allocObject();
    sub_8A3CEC(v129, v135 + v132, type metadata accessor for SymbolButton.Configuration);
    sub_8A3CEC(v57, v135 + v133, type metadata accessor for SymbolButton.Configuration);
    v137 = v172;
    v136 = v173;
    *(v135 + v134) = v172;
    *(v135 + ((v134 + 15) & 0xFFFFFFFFFFFFFFF8)) = v136;
    v138 = swift_allocObject();
    *(v138 + 16) = sub_8A14A4;
    *(v138 + 24) = v135;
    v173 = v135;
    *&v195 = sub_70638;
    *(&v195 + 1) = v138;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v168 = COERCE_DOUBLE(&v194);
    *&v194 = sub_1822E0;
    *(&v194 + 1) = &block_descriptor_227;
    v139 = _Block_copy(&aBlock);
    v172 = v137;

    [v175 performWithoutAnimation:v139];
    _Block_release(v139);
    LOBYTE(v139) = swift_isEscapingClosureAtFileLocation();

    if ((v139 & 1) == 0)
    {
      v140 = v162;
      v141 = v167;
      v142 = ~v167;
      v143 = v159;
      sub_8A3C84(v177, v159, type metadata accessor for SymbolButton.Configuration);
      sub_8A3C84(v25, v169, type metadata accessor for SymbolButton.Configuration);
      v144 = (v141 + 24) & v142;
      v145 = (v165 + v144) & v142;
      v146 = (v166 + v145) & 0xFFFFFFFFFFFFFFF8;
      v147 = swift_allocObject();
      v148 = v172;
      *(v147 + 16) = v172;
      sub_8A3CEC(v143, v147 + v144, type metadata accessor for SymbolButton.Configuration);
      sub_8A3CEC(v169, v147 + v145, type metadata accessor for SymbolButton.Configuration);
      v149 = v170;
      v150 = v171;
      *(v147 + v146) = v170;
      *(v147 + ((v146 + 15) & 0xFFFFFFFFFFFFFFF8)) = v150;
      *&v195 = sub_8A1908;
      *(&v195 + 1) = v147;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v194 = sub_1B5EB4;
      *(&v194 + 1) = &block_descriptor_19_4;
      v151 = _Block_copy(&aBlock);
      v152 = v148;

      v153 = swift_allocObject();
      v153[2] = v149;
      v153[3] = v152;
      v154 = v161;
      v153[4] = v150;
      v153[5] = v154;
      v155 = ObjectType;
      v153[6] = v176;
      v153[7] = v155;
      *&v195 = sub_8A1A04;
      *(&v195 + 1) = v153;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v194 = sub_1811AC;
      *(&v194 + 1) = &block_descriptor_25_2;
      v156 = _Block_copy(&aBlock);
      v157 = v152;

      [v175 animateKeyframesWithDuration:v164 delay:v151 options:v156 animations:v47 completion:v140];
      _Block_release(v156);
      _Block_release(v151);

      v29 = sub_8A14A4;
LABEL_62:
      sub_8A1B6C(v25, type metadata accessor for SymbolButton.Configuration);
      sub_17654(v29);
      return;
    }
  }

  __break(1u);
}

void sub_891BF8(uint64_t a1, __int128 *a2, char *a3, char **a4)
{
  v4 = a3;
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 96);
  v174 = *(a1 + 80);
  v175 = v9;
  v176 = *(a1 + 112);
  v10 = *(a1 + 32);
  v170 = *(a1 + 16);
  v171 = v10;
  v11 = *(a1 + 64);
  v172 = *(a1 + 48);
  v173 = v11;
  v169[0] = v7;
  v169[1] = v8;
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[3];
  v177[2] = a2[2];
  v177[3] = v14;
  v177[0] = v12;
  v177[1] = v13;
  v15 = a2[4];
  v16 = a2[5];
  v17 = a2[6];
  v178 = *(a2 + 14);
  v177[5] = v16;
  v177[6] = v17;
  v177[4] = v15;
  if (_s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(v169, v177))
  {
    v18 = sub_897E8C();
    v19 = a2[5];
    v166[4] = a2[4];
    v166[5] = v19;
    v167 = a2[6];
    v168 = *(a2 + 14);
    v20 = a2[1];
    v166[0] = *a2;
    v166[1] = v20;
    v21 = a2[3];
    v166[2] = a2[2];
    v166[3] = v21;
    v22 = type metadata accessor for SymbolButton.ImageView();
    v156.receiver = objc_allocWithZone(v22);
    v156.super_class = v22;
    v23 = objc_msgSendSuper2(&v156, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v23 setAdjustsImageSizeForAccessibilityContentSizeCategory:0];
    [v23 setContentMode:4];
    sub_89B984(v166);
    v24 = [v18 preferredSymbolConfiguration];
    [v23 setPreferredSymbolConfiguration:v24];

    [v18 frame];
    [v23 setFrame:?];

    v25 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView;
    v26 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView];
    *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView] = v23;
    v27 = v23;

    [v27 setAlpha:0.0];
    v28 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
    v29 = *&a3[v25];
    if (([v29 isDescendantOfView:v28] & 1) == 0)
    {
      [v28 addSubview:v29];
    }

    if (!v8 && *(&v166[0] + 1))
    {
      [a3 setNeedsLayout];
      [a3 layoutIfNeeded];
    }

    v30 = *(&v167 + 1);
    v31 = *&a3[v25];
    v32 = *a4;
    v33 = v31;
    v34 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_8A51A0(0, *(v32 + 2) + 1, 1, v32);
      *a4 = v32;
    }

    v37 = *(v32 + 2);
    v36 = *(v32 + 3);
    v4 = a3;
    if (v37 >= v36 >> 1)
    {
      *a4 = sub_8A51A0((v36 > 1), v37 + 1, 1, v32);
    }

    v38 = *a4;
    *(v38 + 2) = v37 + 1;
    v39 = &v38[88 * v37];
    *(v39 + 4) = v31;
    *(v39 + 5) = v30;
    *(v39 + 6) = 0;
    *(v39 + 7) = 0;
    *(v39 + 8) = 0;
    *(v39 + 9) = v34;
    *(v39 + 5) = xmmword_AF82C0;
    *(v39 + 12) = 0;
    *(v39 + 13) = 0;
    v39[112] = 0;
  }

  v40 = *(a1 + 136);
  v41 = *(a1 + 168);
  v164[2] = *(a1 + 152);
  v164[3] = v41;
  v42 = *(a1 + 184);
  v164[0] = *(a1 + 120);
  v164[1] = v40;
  v43 = *(a2 + 136);
  v44 = *(a2 + 168);
  v165[2] = *(a2 + 152);
  v165[3] = v44;
  v165[4] = *(a2 + 184);
  v45 = *(a2 + 120);
  v165[1] = v43;
  v164[4] = v42;
  v165[0] = v45;
  if (sub_8A0BB4(v164, v165))
  {
    v46 = sub_898004();
    v47 = *(a2 + 136);
    v48 = *(a2 + 168);
    v161[2] = *(a2 + 152);
    v162 = v48;
    v163 = *(a2 + 184);
    v161[0] = *(a2 + 120);
    v161[1] = v47;
    v49 = objc_allocWithZone(type metadata accessor for SymbolButton.Label());
    sub_8A1A84(v161, v160);
    v50 = sub_89BBC8(v161);
    v51 = [v46 font];
    [v50 setFont:v51];

    v52 = v50;
    v53 = v46;
    [v53 frame];
    [v52 setFrame:?];

    v54 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel;
    v55 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel];
    *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel] = v52;
    v56 = v52;

    [v56 setAlpha:0.0];
    v57 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
    v58 = *&v4[v54];
    if (([v58 isDescendantOfView:v57] & 1) == 0)
    {
      [v57 addSubview:v58];
    }

    v59 = v162;
    v60 = *&v4[v54];
    v61 = *(a1 + 136);
    v62 = *(a1 + 168);
    v159[2] = *(a1 + 152);
    v159[3] = v62;
    v63 = *(a1 + 184);
    v159[0] = *(a1 + 120);
    v159[1] = v61;
    v64 = *(a2 + 136);
    v65 = *(a2 + 168);
    v160[2] = *(a2 + 152);
    v160[3] = v65;
    v160[4] = *(a2 + 184);
    v66 = *(a2 + 120);
    v160[1] = v64;
    v159[4] = v63;
    v160[0] = v66;
    v67 = v60;
    v68 = sub_8A1C18(v159, v160);
    v69 = *a4;
    v70 = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v69;
    if ((v70 & 1) == 0)
    {
      v69 = sub_8A51A0(0, *(v69 + 2) + 1, 1, v69);
      *a4 = v69;
    }

    v72 = *(v69 + 2);
    v71 = *(v69 + 3);
    v4 = a3;
    if (v72 >= v71 >> 1)
    {
      *a4 = sub_8A51A0((v71 > 1), v72 + 1, 1, v69);
    }

    v73 = *a4;
    *(v73 + 2) = v72 + 1;
    v74 = &v73[88 * v72];
    *(v74 + 4) = v60;
    *(v74 + 5) = v59;
    *(v74 + 6) = 0;
    *(v74 + 7) = 0;
    *(v74 + 8) = 0;
    *(v74 + 9) = v53;
    *(v74 + 5) = xmmword_AF82C0;
    *(v74 + 12) = 0;
    *(v74 + 13) = 0;
    v74[112] = v68 & 1;
  }

  v75 = type metadata accessor for SymbolButton.Configuration(0);
  v76 = *(v75 + 40);
  v77 = *(a1 + v76);
  v78 = a2 + v76;
  v79 = *(a2 + v76);
  if (v77)
  {
    if (v77 == v79)
    {
      goto LABEL_47;
    }

    if (!v79)
    {
      v153 = v75;
      v80 = 0;
      v151 = 1;
      goto LABEL_26;
    }
  }

  else if (!v79)
  {
    goto LABEL_47;
  }

  v153 = v75;
  v81 = v79;
  v151 = 0;
  v80 = v79;
LABEL_26:
  v82 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView;
  v83 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView];
  *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView] = v80;
  v84 = v80;

  v85 = a3;
  if (v80)
  {
    v86 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
    if ([v86 isDescendantOfView:v86])
    {
      [v86 insertSubview:v84 aboveSubview:v86];
    }

    else
    {

      if (([v84 isDescendantOfView:v86] & 1) == 0)
      {
        [v86 addSubview:v84];
      }
    }

    v85 = a3;
    sub_8982F0();
  }

  v87 = *&v85[v82];
  if (v87)
  {
    [v87 setAlpha:0.0];
  }

  sub_8982F0();
  [*&v85[v82] layoutIfNeeded];
  if ((v151 & 1) == 0)
  {
    v89 = v79;
    if (v79)
    {
      v88 = *(v78 + 40);
      if (v77)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v88 = 0;
      if (v77)
      {
        goto LABEL_39;
      }
    }

LABEL_41:
    v91 = 0;
    goto LABEL_42;
  }

  v79 = 0;
  v88 = 0;
  if (!v77)
  {
    goto LABEL_41;
  }

LABEL_39:
  v90 = v77;
  v91 = 1;
LABEL_42:
  v92 = *a4;
  v93 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v92;
  if ((v93 & 1) == 0)
  {
    v92 = sub_8A51A0(0, *(v92 + 2) + 1, 1, v92);
    *a4 = v92;
  }

  v95 = *(v92 + 2);
  v94 = *(v92 + 3);
  if (v95 >= v94 >> 1)
  {
    v92 = sub_8A51A0((v94 > 1), v95 + 1, 1, v92);
    *a4 = v92;
  }

  *(v92 + 2) = v95 + 1;
  v96 = &v92[88 * v95];
  *(v96 + 4) = v79;
  *(v96 + 5) = v88;
  *(v96 + 6) = 0;
  *(v96 + 7) = 0;
  *(v96 + 8) = 0;
  *(v96 + 9) = v77;
  *(v96 + 10) = 0;
  *(v96 + 11) = v91;
  *(v96 + 12) = 0;
  *(v96 + 13) = 0;
  v96[112] = 0;
  v4 = a3;
  v75 = v153;
LABEL_47:
  v97 = *(v75 + 44);
  v98 = *(a1 + v97 + 16);
  v99 = (a2 + v97);
  v100 = v99[2];
  if (v98 == 1)
  {
    if (v100 == &dword_0 + 1)
    {
      return;
    }

    v105 = *v99;
    v104 = v99[1];
    v101 = &v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v102 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v106 = type metadata accessor for SymbolButton.BadgeView();
    v107 = objc_allocWithZone(v106);
    v152 = OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView;
    v108 = objc_allocWithZone(UIView);
    if (v102)
    {
      v109 = v102;
      sub_8A1B3C(v105, v104, v100);
      v110 = v105;
      v111 = [v108 init];
      v112 = objc_opt_self();
      v113 = [v112 blackColor];
      [v111 setBackgroundColor:v113];

      v114 = [v111 layer];
      [v114 setCompositingFilter:kCAFilterDestOut];

      *&v107[v152] = v111;
      v115 = &v107[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration];
      *v115 = v110;
      v115[1] = v104;
      v115[2] = v100;
      v158.receiver = v107;
      v158.super_class = v106;
      v116 = v100;
      v117 = objc_msgSendSuper2(&v158, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v118 = v116;
      if (!v100)
      {
        v118 = [v112 tintColor];
      }

      v119 = v116;
      [v117 setBackgroundColor:v118];

      [v117 setAlpha:*&v104];
      [*&v117[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] setAlpha:*&v104];
      sub_89C304();
      v120 = v110;
    }

    else
    {
      v150 = v100;
      v121 = [v108 init];
      v122 = v105;
      v123 = v121;
      v124 = objc_opt_self();
      v125 = [v124 blackColor];
      [v123 setBackgroundColor:v125];

      v126 = [v123 layer];
      [v126 setCompositingFilter:kCAFilterDestOut];

      *&v107[v152] = v123;
      v127 = &v107[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration];
      *v127 = v122;
      v127[1] = v104;
      v127[2] = v100;
      v157.receiver = v107;
      v157.super_class = v106;
      v128 = v150;
      v117 = objc_msgSendSuper2(&v157, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v129 = v128;
      if (!v100)
      {
        v129 = [v124 tintColor];
      }

      v130 = v128;
      [v117 setBackgroundColor:v129];

      [v117 setAlpha:*&v104];
      [*&v117[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] setAlpha:*&v104];
      sub_89C304();
      sub_7AFD34(v122, v104, v100);
      v120 = v122;
    }

    v131 = *v101;
    *v101 = v117;
    v132 = v117;
    sub_89810C(v131);

    if (*v101)
    {
      [*v101 setAlpha:0.0];
      if (*v101)
      {
        v133 = *v101;
        v134 = [a3 traitCollection];
        v135 = [v134 userInterfaceIdiom];

        if (v135 == &dword_4 + 2)
        {
          v136 = 12.0;
        }

        else
        {
          v136 = 8.0;
        }

        [a3 bounds];
        MaxX = CGRectGetMaxX(v179);
        v180.origin.x = 0.0;
        v180.origin.y = 0.0;
        v180.size.width = v136;
        v180.size.height = v136;
        v138 = MaxX - CGRectGetWidth(v180) + 1.0;
        [a3 bounds];
        [v133 setFrame:{v138, CGRectGetMinY(v181) + -1.0, v136, v136}];
      }
    }

    sub_7AFD34(v120, v104, v100);
    v98 = 1;
  }

  else
  {
    if (v100 != &dword_0 + 1)
    {
      return;
    }

    v101 = &v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v102 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView] = 0;
    v103 = v102;
    sub_89810C(v102);

    v104 = 0;
  }

  v139 = *v101;
  if (*v101)
  {
    v140 = v104;
  }

  else
  {
    v140 = 0;
  }

  if (*v101)
  {
    v141 = v98 != 1;
  }

  else
  {
    v141 = 0;
  }

  v142 = *a4;
  v143 = v139;
  v144 = v102;
  v145 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v142;
  if ((v145 & 1) == 0)
  {
    v142 = sub_8A51A0(0, *(v142 + 2) + 1, 1, v142);
    *a4 = v142;
  }

  v147 = *(v142 + 2);
  v146 = *(v142 + 3);
  if (v147 >= v146 >> 1)
  {
    *a4 = sub_8A51A0((v146 > 1), v147 + 1, 1, v142);
  }

  v148 = *a4;
  *(v148 + 2) = v147 + 1;
  v149 = &v148[88 * v147];
  *(v149 + 4) = v139;
  *(v149 + 5) = v140;
  *(v149 + 6) = v141;
  *(v149 + 7) = 0;
  *(v149 + 8) = 0;
  *(v149 + 9) = v102;
  *(v149 + 10) = 0;
  *(v149 + 11) = v102 != 0;
  *(v149 + 12) = 0;
  *(v149 + 13) = 0;
  v149[112] = 0;
}

uint64_t sub_892950(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v81 = a5;
  v9 = type metadata accessor for SymbolButton.Configuration(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9 - 8);
  v13 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v68 - v14;
  v74 = objc_opt_self();
  sub_8A3C84(a2, v15, type metadata accessor for SymbolButton.Configuration);
  sub_8A3C84(a3, v13, type metadata accessor for SymbolButton.Configuration);
  v16 = *(v10 + 80);
  v17 = (v16 + 24) & ~v16;
  v18 = (v11 + v16 + v17) & ~v16;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  sub_8A3CEC(v15, v19 + v17, type metadata accessor for SymbolButton.Configuration);
  sub_8A3CEC(v13, v19 + v18, type metadata accessor for SymbolButton.Configuration);
  *(v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v87 = sub_8A41A8;
  v88 = v19;
  aBlock = _NSConcreteStackBlock;
  v84 = 1107296256;
  v85 = sub_1B5EB4;
  v86 = &block_descriptor_255;
  v20 = _Block_copy(&aBlock);
  v21 = a1;
  v82 = a4;

  [v74 addKeyframeWithRelativeStartTime:v20 relativeDuration:0.0 animations:1.0];
  _Block_release(v20);
  v22 = *(v81 + 16);
  if (v22)
  {
    v23 = (v81 + 40);
    do
    {
      v24 = *(v23 - 1);
      if (v24)
      {
        v25 = *(v23 + 3);
        v27 = v23[1];
        v26 = v23[2];
        v28 = *v23;
        v29 = swift_allocObject();
        *(v29 + 2) = v24;
        v29[3] = v28;
        *(v29 + 4) = v21;
        v87 = sub_C3964;
        v88 = v29;
        aBlock = _NSConcreteStackBlock;
        v84 = 1107296256;
        v85 = sub_1B5EB4;
        v86 = &block_descriptor_261_0;
        v30 = _Block_copy(&aBlock);
        sub_307CC(v24);
        v31 = v21;
        sub_307CC(v24);
        sub_307CC(v25);

        [v74 addKeyframeWithRelativeStartTime:v30 relativeDuration:v27 animations:v26];
        sub_17654(v25);
        _Block_release(v30);
        sub_17654(v24);
      }

      v23 += 6;
      --v22;
    }

    while (v22);
  }

  v32 = v82;
  swift_beginAccess();
  v33 = v32[2];
  v34 = *(v33 + 16);
  v69 = v33;

  v68 = v34;
  if (!v34)
  {
  }

  v36 = 0;
  v72 = &v85;
  v37 = v69 + 56;
  while (v36 < *(v69 + 16))
  {
    v48 = *(v37 - 24);
    v47 = *(v37 - 16);
    v49 = *(v37 - 8);
    v50 = *v37;
    v51 = *(v37 + 8);
    v52 = *(v37 + 16);
    v54 = *(v37 + 24);
    v53 = *(v37 + 32);
    v55 = *(v37 + 40);
    v81 = *(v37 + 48);
    v56 = *(v37 + 56);
    v82 = v48;
    if ((v48 == 0) | v49 & 1)
    {
      v57 = 1.0;
    }

    else
    {
      v57 = *&v47;
    }

    v80 = v52;
    v79 = v47;
    v78 = v53;
    v77 = v54;
    v76 = v49;
    v75 = v50;
    v73 = v56;
    if (v52)
    {
      v92 = v53 & 1;
      if (v56)
      {
        v58 = 1.0;
      }

      else
      {
        v58 = 0.5;
      }

      v70 = v51;
      v59 = v47;
      v60 = swift_allocObject();
      *(v60 + 16) = v52;
      *(v60 + 24) = v54;
      *(v60 + 32) = v92;
      *(v60 + 33) = *v91;
      *(v60 + 36) = *&v91[3];
      v61 = v81;
      *(v60 + 40) = v55;
      *(v60 + 48) = v61;
      v87 = sub_8A42C0;
      v88 = v60;
      aBlock = _NSConcreteStackBlock;
      v84 = 1107296256;
      v85 = sub_1B5EB4;
      v86 = &block_descriptor_273_1;
      v62 = _Block_copy(&aBlock);
      v71 = v36;
      v63 = v62;
      v64 = v50;
      v65 = v70;
      sub_8A3D9C(v82, v59, v49, v64);
      sub_8A3D9C(v52, v54, v53, v55);
      sub_8A3D9C(v52, v54, v53, v55);
      v66 = v52;
      sub_307CC(v55);

      [v74 addKeyframeWithRelativeStartTime:v63 relativeDuration:0.0 animations:v58];
      v67 = v63;
      v36 = v71;
      _Block_release(v67);

      sub_17654(v55);
      if (v82)
      {
LABEL_8:
        v38 = v76;
        v90 = v76 & 1;
        if (v73)
        {
          v39 = 1.0;
        }

        else
        {
          v39 = 0.5;
        }

        if (v73)
        {
          v40 = 0.0;
        }

        else
        {
          v40 = 0.5;
        }

        v41 = swift_allocObject();
        v42 = v82;
        v43 = v79;
        *(v41 + 16) = v82;
        *(v41 + 24) = v43;
        *(v41 + 32) = v90;
        *(v41 + 33) = *v89;
        *(v41 + 36) = *&v89[3];
        v44 = v75;
        *(v41 + 40) = v75;
        *(v41 + 48) = v65;
        *(v41 + 56) = v57;
        v87 = sub_8A4250;
        v88 = v41;
        aBlock = _NSConcreteStackBlock;
        v84 = 1107296256;
        v85 = sub_1B5EB4;
        v86 = &block_descriptor_267_0;
        v45 = _Block_copy(&aBlock);
        sub_8A3D9C(v42, v43, v38, v44);
        v46 = v42;
        sub_307CC(v44);

        [v74 addKeyframeWithRelativeStartTime:v45 relativeDuration:v40 animations:v39];
        _Block_release(v45);

        sub_17654(v44);
        goto LABEL_15;
      }
    }

    else
    {
      sub_8A3D9C(v82, v47, v49, v50);
      sub_8A3D9C(0, v54, v53, v55);
      v65 = v51;
      if (v82)
      {
        goto LABEL_8;
      }
    }

    v82 = 0;
    v43 = v79;
    v38 = v76;
    v44 = v75;
LABEL_15:
    ++v36;
    sub_8A3DE4(v82, v43, v38, v44);
    result = sub_8A3DE4(v80, v77, v78, v55);
    v37 += 88;
    if (v68 == v36)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_893150(char *a1, uint64_t a2, char **a3, char *a4)
{
  v123 = a4;
  v124 = a1;
  v7 = v130;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
  __chkstk_darwin(v8 - 8);
  v126 = &v121 - v9;
  v128 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v128);
  v11 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SymbolButton.Metrics(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 traitCollection];
  sub_898ED8(v14);
  sub_8A1B6C(v14, type metadata accessor for SymbolButton.Metrics);
  sub_8A3C84(a2, v11, type metadata accessor for SymbolButton.Configuration);
  sub_898510(v11, v15, v14);
  v129 = v14;
  sub_899180(v14);
  v16 = *&a1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView];
  v17 = *(a2 + 248);
  v137[0] = *(a2 + 232);
  v137[1] = v17;
  v137[2] = *(a2 + 264);
  v122 = v16;
  sub_89B0B4(v137);
  v127 = *&a1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
  v18 = *(a2 + 200);
  v19 = *(a2 + 208);
  if (v19 == &dword_0 + 1)
  {
    v121 = *(a2 + 216);
    v125 = v18;
    if (qword_E16BF8 != -1)
    {
      goto LABEL_56;
    }

    goto LABEL_3;
  }

  v20 = *(a2 + 200);
  v23 = *(a2 + 224);
  v24 = *(a2 + 208);
  v21 = v24;
  v22 = *(a2 + 216);
LABEL_5:
  sub_8A1AF4(v18, v19);
  sub_89B530(v21, v20, v22, v23);

  v25 = *(a3 + 17);
  v26 = *(a3 + 21);
  *(v7 + 31) = *(a3 + 19);
  *(v7 + 32) = v26;
  v27 = *(a3 + 23);
  *(v7 + 29) = *(a3 + 15);
  *(v7 + 30) = v25;
  v28 = *(a2 + 152);
  *(v7 + 35) = *(a2 + 136);
  *(v7 + 36) = v28;
  v29 = *(a2 + 184);
  *(v7 + 37) = *(a2 + 168);
  *(v7 + 38) = v29;
  v30 = *(a2 + 120);
  *(v7 + 33) = v27;
  *(v7 + 34) = v30;
  v31 = sub_8A0BB4(&v135, v136);
  v32 = v124;
  if ((v31 & 1) == 0)
  {
    v33 = sub_898004();
    v34 = *(a2 + 136);
    *(v7 + 24) = *(a2 + 120);
    *(v7 + 25) = v34;
    v35 = *(a2 + 168);
    *(v7 + 26) = *(a2 + 152);
    *(v7 + 27) = v35;
    *(v7 + 28) = *(a2 + 184);
    v36 = v134[0];
    v37 = v134[1];
    sub_89BD50(v134);

    if (v37)
    {
      v38 = HIBYTE(v37) & 0xF;
      if ((v37 & 0x2000000000000000) == 0)
      {
        v38 = v36 & 0xFFFFFFFFFFFFLL;
      }

      if (v38)
      {
        v39 = sub_AB9260();
        [v32 setAccessibilityLabel:v39];
      }
    }
  }

  v40 = *(a3 + 5);
  *(v7 + 12) = *(a3 + 4);
  *(v7 + 13) = v40;
  *(v7 + 14) = *(a3 + 6);
  v132[14] = a3[14];
  v41 = *(a3 + 1);
  *(v7 + 8) = *a3;
  *(v7 + 9) = v41;
  v42 = *(a3 + 3);
  *(v7 + 10) = *(a3 + 2);
  *(v7 + 11) = v42;
  v43 = *a2;
  v44 = *(a2 + 16);
  v45 = *(a2 + 48);
  *(v7 + 18) = *(a2 + 32);
  *(v7 + 19) = v45;
  *(v7 + 16) = v43;
  *(v7 + 17) = v44;
  v46 = *(a2 + 64);
  v47 = *(a2 + 80);
  v48 = *(a2 + 96);
  v133[14] = *(a2 + 112);
  *(v7 + 21) = v47;
  *(v7 + 22) = v48;
  *(v7 + 20) = v46;
  if (!_s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(v132, v133))
  {
    v49 = sub_897E8C();
    v50 = *(a2 + 80);
    *(v7 + 4) = *(a2 + 64);
    *(v7 + 5) = v50;
    *(v7 + 6) = *(a2 + 96);
    v131 = *(a2 + 112);
    v51 = *(a2 + 16);
    v130[0] = *a2;
    v130[1] = v51;
    v52 = *(a2 + 48);
    v130[2] = *(a2 + 32);
    v130[3] = v52;
    sub_89B984(v130);
  }

  v53 = *(v128 + 44);
  v54 = (a2 + v53);
  v55 = *(a2 + v53 + 16);
  if (v55 != &dword_0 + 1 && *(a3 + v53 + 16) != &dword_0 + 1)
  {
    v56 = *&v32[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    if (v56)
    {
      v57 = *v54;
      a3 = v54[1];
      if (v55)
      {
        v58 = v56;
        v59 = v55;
        v60 = v55;
      }

      else
      {
        v61 = objc_opt_self();
        v62 = v56;
        sub_8A1B3C(v57, a3, 0);
        v60 = [v61 tintColor];
        v59 = 0;
      }

      sub_8A1B3C(v57, a3, v55);
      v63 = v59;
      [v56 setBackgroundColor:v60];

      [v56 setAlpha:*&a3];
      [*&v56[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] setAlpha:*&a3];
      sub_89C304();
      sub_7AFD34(v57, a3, v55);
    }
  }

  v64 = [v122 contentView];
  v65 = *(a2 + 280);
  v19 = *(a2 + 288);
  v7 = *(a2 + 296);
  v66 = v7;
  UIView.border.setter(v65, v19, v7);

  [v32 setAlpha:*(a2 + *(v128 + 68))];
  v67 = v129;
  sub_898ED8(v129);
  sub_89A320(v67);
  sub_8A1B6C(v67, type metadata accessor for SymbolButton.Metrics);
  v68 = [v32 superview];
  [v68 layoutIfNeeded];

  [v32 layoutIfNeeded];
  if (v32[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated] == 1)
  {
    v121 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated;
    v69 = v122;
    [v122 _setAllowsGroupFiltering:1];
    v70 = [v69 contentView];
    v71 = [v70 subviews];

    sub_13C80(0, &qword_E1E050);
    v72 = sub_AB9760();

    v129 = v72;
    if (v72 >> 62)
    {
      v73 = sub_ABB060();
    }

    else
    {
      v73 = *(&dword_10 + (v129 & 0xFFFFFFFFFFFFFF8));
    }

    a2 = v128;
    v127 = &v32[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration];
    swift_beginAccess();
    if (v73)
    {
      v74 = 0;
      v75 = v129 & 0xC000000000000001;
      v7 = (v129 & 0xFFFFFFFFFFFFFF8);
      a3 = &selRef_format;
      v125 = v129 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v75)
        {
          v76 = sub_ABAE20();
        }

        else
        {
          if (v74 >= v7[2])
          {
            goto LABEL_55;
          }

          v76 = *(v129 + 8 * v74 + 32);
        }

        v77 = v76;
        v19 = (v74 + 1);
        if (__OFADD__(v74, 1))
        {
          goto LABEL_54;
        }

        type metadata accessor for SymbolButton.Label();
        if (([v77 a3[22]] & 1) == 0)
        {
          v78 = a3;
          v79 = *(v127 + *(a2 + 76));
          if (v79 == 2)
          {
            v80 = v127 + *(a2 + 36);
            v81 = v126;
            sub_15F84(v80, v126, &qword_E1DB50);
            v82 = sub_ABA680();
            LOBYTE(v79) = (*(*(v82 - 8) + 48))(v81, 1, v82) != 1;
            v83 = v81;
            a2 = v128;
            v7 = v125;
            sub_12E1C(v83, &qword_E1DB50);
          }

          [v77 setClipsToBounds:v79 & 1];
          a3 = v78;
        }

        ++v74;
      }

      while (v19 != v73);
    }

    *(v124 + v121) = 0;
  }

  v84 = v123;
  swift_beginAccess();
  v85 = *(v84 + 2);
  v86 = v85[2];
  v124 = v85;

  v123 = v86;
  if (v86)
  {
    v19 = 0;
    v87 = (v124 + 7);
    do
    {
      if (v19 >= v124[2])
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        swift_once();
LABEL_3:
        swift_beginAccess();
        v20 = *&static SymbolButton.Background.clear;
        v21 = qword_E73E18;
        v22 = qword_E73E20;
        v23 = qword_E73E28;

        v24 = v21;
        v18 = v125;
        goto LABEL_5;
      }

      v93 = *(v87 - 3);
      v92 = *(v87 - 2);
      v94 = *(v87 - 1);
      a3 = *v87;
      v95 = v87[2];
      v96 = v87[3];
      v97 = v87[4];
      v128 = v87[1];
      v129 = v96;
      v98 = v87[5];
      v7 = v87[6];
      v126 = v94;
      v127 = a3;
      v125 = v92;
      if (v93)
      {
        if (a3)
        {
          sub_8A3D9C(v93, v92, v94, a3);
          sub_8A3D9C(v95, v129, v97, v98);
          v99 = [v122 contentView];
          v121 = v7;
          v100 = v97;
          v101 = v99;
          [v99 bounds];
          v103 = v102;
          v105 = v104;
          v107 = v106;
          v109 = v108;

          a2 = v98;
          (a3)(v103, v105, v107, v109);
          v97 = v100;
          v7 = v121;
          [v93 setFrame:?];
          if (!v95)
          {
            goto LABEL_38;
          }
        }

        else
        {
          sub_8A3D9C(v93, v92, v94, 0);
          a2 = v98;
          sub_8A3D9C(v95, v129, v97, v98);
          if (!v95)
          {
LABEL_38:
            sub_8A3DE4(v93, v125, v126, v127);
            v88 = 0;
            v89 = v129;
            v90 = v97;
            goto LABEL_39;
          }
        }
      }

      else
      {
        sub_8A3D9C(0, v92, v94, a3);
        sub_8A3D9C(v95, v129, v97, v98);
        a2 = v98;
        if (!v95)
        {
          goto LABEL_38;
        }
      }

      if (!a2)
      {
        sub_8A3DE4(v93, v125, v126, v127);
        v88 = v95;
        v89 = v129;
        v90 = v97;
        v91 = 0;
        goto LABEL_40;
      }

      v110 = v97;
      v111 = [v122 contentView];
      [v111 bounds];
      v113 = v112;
      v115 = v114;
      v117 = v116;
      v119 = v118;

      (a2)(v113, v115, v117, v119);
      [v95 setFrame:?];
      sub_8A3DE4(v93, v125, v126, v127);
      v88 = v95;
      v89 = v129;
      v90 = v110;
LABEL_39:
      v91 = a2;
LABEL_40:
      sub_8A3DE4(v88, v89, v90, v91);
      ++v19;
      v87 += 11;
    }

    while (v123 != v19);
  }
}

uint64_t *SymbolButton.Background.clear.unsafeMutableAddressor()
{
  if (qword_E16BF8 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.clear;
}

void sub_893C84(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  swift_beginAccess();
  v8 = *(a2 + 16);
  v9 = *(v8 + 16);
  v40 = v8;

  v39 = v9;
  if (v9)
  {
    v10 = 0;
    v6 = (v40 + 56);
    while (v10 < *(v40 + 16))
    {
      v11 = v6[2];
      if (v11)
      {
        v13 = *(v6 - 1);
        v12 = *v6;
        v15 = v6[3];
        v14 = v6[4];
        v16 = v6[5];
        v41 = *(v6 - 2);
        v42 = *(v6 - 3);
        sub_8A3D9C(v42, v41, v13, *v6);
        sub_8A3D9C(v11, v15, v14, v16);
        if ([v11 isDescendantOfView:a3])
        {
          [v11 removeFromSuperview];
        }

        sub_8A3DE4(v42, v41, v13, v12);
        sub_8A3DE4(v11, v15, v14, v16);
      }

      ++v10;
      v6 += 11;
      if (v39 == v10)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_9:

  v10 = a3;
  v17 = *(a4 + 16);
  if (v17)
  {
    v18 = a4 + 72;
    do
    {
      v19 = *(v18 - 8);
      if (v19)
      {
        v20 = *(v18 - 40);
        sub_307CC(v20);
        sub_307CC(v19);
        v19(a3);
        sub_17654(v20);
        sub_17654(v19);
      }

      v18 += 48;
      --v17;
    }

    while (v17);
  }

  v21 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount];
  v22 = v21 - 1;
  if (__OFSUB__(v21, 1))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_18;
  }

  *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount] = v22;
  v6 = a6;
  if (v22 != v21)
  {
    sub_899E58();
  }

  if (qword_E16908 != -1)
  {
    goto LABEL_26;
  }

LABEL_18:
  v23 = sub_AB4BC0();
  __swift_project_value_buffer(v23, qword_E73898);
  v24 = v10;

  v25 = sub_AB4BA0();
  v26 = sub_AB9F20();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v27 = 136446466;
    v28 = &v24[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
    swift_beginAccess();
    v29 = v28[1];
    if (v29)
    {
      v30 = *v28;
      v31 = v29;
    }

    else
    {
      v32 = [v24 description];
      v30 = sub_AB92A0();
      v31 = v33;
    }

    v34 = sub_7AB3E0(v30, v31, &v43);

    *(v27 + 4) = v34;
    *(v27 + 12) = 2082;
    *(v27 + 14) = sub_7AB3E0(a5, v6, &v43);
    _os_log_impl(&dword_0, v25, v26, "[%{public}s] UpdateID=%{public}s — Updated ✅", v27, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t SymbolButton.Configuration.background.getter()
{
  v1 = *(v0 + 200);
  sub_8A1AF4(v1, *(v0 + 208));
  return v1;
}

uint64_t SymbolButton.Configuration.background.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_3F9D0(*(v4 + 200), *(v4 + 208));
  *(v4 + 200) = a1;
  *(v4 + 208) = a2;
  *(v4 + 216) = a3;
  *(v4 + 224) = a4;
  return result;
}

uint64_t SymbolButton.Configuration.border.getter()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 296);
  return v1;
}

void SymbolButton.Configuration.border.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 280) = a1;
  *(v3 + 288) = a2;
  *(v3 + 296) = a3;
}

uint64_t SymbolButton.Configuration.badge.getter()
{
  v1 = v0 + *(type metadata accessor for SymbolButton.Configuration(0) + 44);
  v2 = *v1;
  sub_8A1B3C(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

void SymbolButton.Configuration.badge.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + *(type metadata accessor for SymbolButton.Configuration(0) + 44);
  sub_7AFD34(*v7, *(v7 + 8), *(v7 + 16));
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
}

uint64_t SymbolButton.Configuration.symbolToTextSpacing.setter(double a1)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t SymbolButton.Configuration.minimumSize.setter(double a1, double a2)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  v6 = (v2 + *(result + 52));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t SymbolButton.Configuration.maximumImageSize.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  v8 = v3 + *(result + 56);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t SymbolButton.Configuration.contentInsets.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  v10 = (v4 + *(result + 60));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t SymbolButton.Configuration.accessibility.getter()
{
  v1 = (v0 + *(type metadata accessor for SymbolButton.Configuration(0) + 64));
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 1);
  v5 = v3;
  return v2;
}

void SymbolButton.Configuration.accessibility.setter(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + *(type metadata accessor for SymbolButton.Configuration(0) + 64);

  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
}

UIContentSizeCategory sub_8948E4()
{
  static SymbolButton.Configuration.Accessibility.forBarButtonItem = 1;
  qword_E73DF8 = UIContentSizeCategoryLarge;
  unk_E73E00 = UIContentSizeCategoryExtraLarge;
  byte_E73E08 = 1;
  v0 = UIContentSizeCategoryLarge;

  return UIContentSizeCategoryExtraLarge;
}

char *SymbolButton.Configuration.Accessibility.forBarButtonItem.unsafeMutableAddressor()
{
  if (qword_E16BF0 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Configuration.Accessibility.forBarButtonItem;
}

uint64_t static SymbolButton.Configuration.Accessibility.forBarButtonItem.getter()
{
  if (qword_E16BF0 != -1)
  {
    swift_once();
  }

  v0 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v1 = unk_E73E00;
  v2 = qword_E73DF8;
  v3 = v1;
  return v0;
}

uint64_t SymbolButton.Configuration.alpha.setter(double a1)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

void *SymbolButton.Configuration.tint.getter()
{
  v1 = *(v0 + *(type metadata accessor for SymbolButton.Configuration(0) + 72));
  v2 = v1;
  return v1;
}

void SymbolButton.Configuration.tint.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolButton.Configuration(0) + 72);

  *(v1 + v3) = a1;
}

uint64_t SymbolButton.Configuration.shouldClipToBounds.setter(char a1)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

void SymbolButton.Configuration.init()(uint64_t a1@<X8>)
{
  HIBYTE(v30) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = UIFontTextStyleSubheadline;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = xmmword_B283E0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *(a1 + 81) = v30;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x3FF0000000000000;
  *(a1 + 112) = 0;
  v2 = UIFontTextStyleSubheadline;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = v2;
  *(a1 + 144) = UIFontWeightSemibold;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0x3FF0000000000000;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 232) = 1;
  v3 = type metadata accessor for SymbolButton.Configuration(0);
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  v4 = v3[9];
  v5 = sub_ABA680();
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = a1 + v3[10];
  *(v6 + 48) = 0;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *v6 = 0u;
  v7 = (a1 + v3[11]);
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 1;
  *(a1 + v3[12]) = 0x4010000000000000;
  *(a1 + v3[13]) = vdupq_n_s64(0x4040000000000000uLL);
  v8 = a1 + v3[14];
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = (a1 + v3[15]);
  v10 = *&NSDirectionalEdgeInsetsZero.bottom;
  *v9 = *&NSDirectionalEdgeInsetsZero.top;
  v9[1] = v10;
  v11 = a1 + v3[16];
  *v11 = 1;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(a1 + v3[17]) = 0x3FF0000000000000;
  *(a1 + v3[18]) = 0;
  *(a1 + v3[19]) = 2;
  v12 = qword_E16C28;
  v13 = v2;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_E73EB8;
  *(a1 + 200) = static SymbolButton.Background.normal;
  v28 = qword_E73EA8;
  *(a1 + 208) = *&qword_E73EA8;
  *(a1 + 224) = v14;
  v15 = objc_opt_self();

  v16 = v28;
  v17 = [v15 currentTraitCollection];
  v18 = [v17 userInterfaceIdiom];

  if (v18 == &dword_4 + 2)
  {
    if (qword_E16C38 != -1)
    {
      swift_once();
    }

    v19 = static SymbolButton.Material.xr;
    v20 = qword_E73EE8;
    v21 = qword_E73EF0;
    v29 = qword_E73EF0;
    v22 = byte_E73EF8;
    v24 = qword_E73F00;
    v23 = unk_E73F08;
    *(a1 + 232) = static SymbolButton.Material.xr;
    *(a1 + 240) = v20;
    *(a1 + 248) = v21;
    *(a1 + 256) = v22;
    *(a1 + 264) = v24;
    *(a1 + 272) = v23;

    v25 = v19;
    v26 = v20;

    v27 = v29;
  }
}

uint64_t *SymbolButton.Material.xr.unsafeMutableAddressor()
{
  if (qword_E16C38 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Material.xr;
}

uint64_t SymbolButton.Symbol.offset.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 64) = result;
  *(v3 + 72) = a2;
  *(v3 + 80) = a3;
  return result;
}

void *SymbolButton.Symbol.tint.getter()
{
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

BOOL sub_895008(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return _s11MusicCoreUI12SymbolButtonC0D0V23__derived_struct_equalsySbAE_AEtFZ_0(v12, v14);
}

BOOL sub_8950B4(_OWORD *a1, __int128 *a2)
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
  return _s11MusicCoreUI12SymbolButtonC5TitleV23__derived_struct_equalsySbAE_AEtFZ_0(v8, v9);
}

id sub_895158()
{
  result = [objc_opt_self() clearColor];
  static SymbolButton.Background.clear = 0x3FF0000000000000;
  qword_E73E18 = result;
  qword_E73E20 = 0;
  qword_E73E28 = 0;
  return result;
}

uint64_t static SymbolButton.Background.clear.getter()
{
  if (qword_E16BF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_E73E18;
  v1 = qword_E73E18;

  return v0;
}

uint64_t static SymbolButton.Background.clear.setter(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (qword_E16BF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = qword_E73E18;
  static SymbolButton.Background.clear = *&a4;
  qword_E73E18 = a1;
  qword_E73E20 = a2;
  qword_E73E28 = a3;
}

uint64_t (*static SymbolButton.Background.clear.modify())()
{
  if (qword_E16BF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void SymbolButton.Material.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
}

BOOL sub_8953CC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s11MusicCoreUI12SymbolButtonC8MaterialV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v8);
}

void SyncedLyricsViewController.BottomViewMetadata.insets.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

void *SymbolButton.CustomView.tint.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void *static SymbolButton.CustomView.with(_:configurator:)@<X0>(void *result@<X0>, uint64_t (*a2)(void **)@<X1>, uint64_t a3@<X8>)
{
  if (result)
  {
    v11 = result;
    v5 = *&UIEdgeInsetsZero.bottom;
    v12 = *&UIEdgeInsetsZero.top;
    v13 = v5;
    v14 = 0x3FF0000000000000uLL;
    v6 = result;
    result = a2(&v11);
    v7 = v11;
    v8 = v12;
    v9 = v13;
    v10 = v14;
  }

  else
  {
    v7 = 0;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 24) = v9;
  *(a3 + 40) = v10;
  return result;
}

uint64_t sub_8954F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s11MusicCoreUI12SymbolButtonC10CustomViewV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7) & 1;
}

uint64_t static SymbolButton.Badge.with(_:)(void (*a1)(__int128 *))
{
  v2 = xmmword_B283F0;
  v3 = 0;
  a1(&v2);
  return v3;
}

Swift::Void __swiftcall SymbolButton.layoutSubviews()()
{
  v1 = v0;
  v2 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v2);
  v4 = &v139 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_ABA620();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SymbolButton.Metrics(0);
  __chkstk_darwin(v6);
  v8 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v139 - v10;
  __chkstk_darwin(v12);
  v14 = &v139 - v13;
  v15 = type metadata accessor for SymbolButton(0);
  v152.receiver = v0;
  v152.super_class = v15;
  objc_msgSendSuper2(&v152, "layoutSubviews");
  v16 = *&v0[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView];
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView] bounds];
  [v16 setFrame:?];
  v17 = [v16 contentView];
  [v17 bounds];
  v19 = v18;

  sub_898ED8(v14);
  v20 = *&v14[v6[12] + 16];
  [v1 effectiveUserInterfaceLayoutDirection];
  [v1 contentHorizontalAlignment];
  v143 = v2;
  v151 = v19;
  if ([v1 contentVerticalAlignment] == &dword_0 + 2)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v20;
  }

  [v1 effectiveUserInterfaceLayoutDirection];
  sub_ABA4B0();
  v146 = v22;
  v24 = v23;
  v148 = v25;
  v149 = v26;
  sub_8A1B6C(v14, type metadata accessor for SymbolButton.Metrics);
  sub_898ED8(v11);
  v27 = *&v11[v6[8]];
  sub_8A1B6C(v11, type metadata accessor for SymbolButton.Metrics);
  v28 = sub_897E8C();
  sub_898ED8(v8);
  v29 = &v8[v6[11]];
  v30 = *v29;
  v31 = *(v29 + 1);
  v32 = v29[16];
  sub_8A1B6C(v8, type metadata accessor for SymbolButton.Metrics);
  if (v32)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = v30;
  }

  if (v32)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v31;
  }

  [v28 sizeThatFits:{v33, v34}];
  v151 = v35;
  v37 = v36;

  v38 = &v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration];
  swift_beginAccess();
  if (!*(v38 + 128) || (*(v38 + 184) & 1) != 0)
  {
    v45 = sub_898004();
    [v45 frame];
    v47 = v49;
    v145 = v50;
  }

  else
  {
    v39 = v146;
    v159.origin.x = v146;
    v159.origin.y = v24;
    v40 = v148;
    v159.size.width = v148;
    v41 = v149;
    v159.size.height = v149;
    Width = CGRectGetWidth(v159);
    v160.origin.x = 0.0;
    v160.origin.y = 0.0;
    v160.size.width = v151;
    v160.size.height = v37;
    v43 = Width - (v27 + CGRectGetWidth(v160));
    v161.origin.x = v39;
    v161.origin.y = v24;
    v161.size.width = v40;
    v161.size.height = v41;
    Height = CGRectGetHeight(v161);
    v45 = sub_898004();
    [v45 sizeThatFits:{v43, Height}];
    v47 = v46;
    v145 = v48;
  }

  v51 = &selRef__authenticateReturningError_;
  v52 = &selRef_createSharedSessionWithIdentity_intentHandler_;
  v144 = v27;
  v147 = v47;
  if (*(v38 + 8))
  {
    v162.origin.x = 0.0;
    v162.origin.y = 0.0;
    v53 = v151;
    v162.size.width = v151;
    v162.size.height = v37;
    v54 = CGRectGetWidth(v162) + 0.0;
    v163.origin.x = 0.0;
    v163.origin.y = 0.0;
    v163.size.height = 0.0;
    v163.size.width = v54;
    v55 = CGRectGetHeight(v163);
    v164.origin.x = 0.0;
    v164.origin.y = 0.0;
    v164.size.width = v53;
    v164.size.height = v37;
    v56 = CGRectGetHeight(v164);
    if (v55 <= v56)
    {
      v55 = v56;
    }
  }

  else
  {
    v54 = 0.0;
    v55 = 0.0;
  }

  v57 = v146;
  if (*(v38 + 128))
  {
    if ((*(v38 + 184) & 1) == 0)
    {
      v165.origin.x = 0.0;
      v165.origin.y = 0.0;
      v58 = v147;
      v165.size.width = v147;
      v59 = v145;
      v165.size.height = v145;
      v54 = v54 + CGRectGetWidth(v165);
      v166.origin.x = 0.0;
      v166.origin.y = 0.0;
      v166.size.width = v54;
      v166.size.height = v55;
      v55 = CGRectGetHeight(v166);
      v167.origin.x = 0.0;
      v167.origin.y = 0.0;
      v167.size.width = v58;
      v167.size.height = v59;
      v60 = CGRectGetHeight(v167);
      if (v55 <= v60)
      {
        v55 = v60;
      }
    }
  }

  v61 = *(v38 + 8);
  v150 = v37;
  if (v61 && *(v38 + 128) && !*(v38 + 184))
  {
    v54 = v144 + v54;
  }

  v62 = [v1 contentHorizontalAlignment];
  MinY = 0.0;
  MinX = 0.0;
  if (v62 <= 5)
  {
    if (((1 << v62) & 9) != 0)
    {
      v168.origin.x = v57;
      v168.origin.y = v24;
      v168.size.width = v148;
      v168.size.height = v149;
      CGRectGetMidX(v168);
      v169.origin.x = 0.0;
      v169.origin.y = 0.0;
      v169.size.width = v54;
      v169.size.height = v55;
      CGRectGetWidth(v169);
      v69 = [v1 traitCollection];
      [v69 displayScale];

      sub_AB3A00();
      MinX = v70;
    }

    else
    {
      v65 = v57;
      v66 = v24;
      v67 = v148;
      v68 = v149;
      if (((1 << v62) & 0x12) != 0)
      {
        MinX = CGRectGetMinX(*&v65);
      }

      else
      {
        MaxX = CGRectGetMaxX(*&v65);
        v170.origin.x = 0.0;
        v170.origin.y = 0.0;
        v170.size.width = v54;
        v170.size.height = v55;
        MinX = MaxX - CGRectGetWidth(v170);
      }
    }
  }

  v72 = [v1 contentVerticalAlignment];
  if (v72 > 1)
  {
    if (v72 == &dword_0 + 2)
    {
      v176.origin.x = v57;
      v176.origin.y = v24;
      v176.size.width = v148;
      v176.size.height = v149;
      MaxY = CGRectGetMaxY(v176);
      v177.origin.y = 0.0;
      v177.origin.x = MinX;
      v177.size.width = v54;
      v177.size.height = v55;
      MinY = MaxY - CGRectGetHeight(v177);
    }

    else if (v72 == &dword_0 + 3)
    {
      v172.origin.x = v57;
      v172.origin.y = v24;
      v73 = v148;
      v172.size.width = v148;
      v74 = v149;
      v172.size.height = v149;
      MinY = CGRectGetMinY(v172);
      v173.origin.x = v57;
      v173.origin.y = v24;
      v173.size.width = v73;
      v173.size.height = v74;
      v55 = CGRectGetHeight(v173);
    }
  }

  else if (v72)
  {
    if (v72 == &dword_0 + 1)
    {
      v171.origin.x = v57;
      v171.origin.y = v24;
      v171.size.width = v148;
      v171.size.height = v149;
      MinY = CGRectGetMinY(v171);
    }
  }

  else
  {
    v174.origin.x = v57;
    v174.origin.y = v24;
    v174.size.width = v148;
    v174.size.height = v149;
    CGRectGetMidY(v174);
    v175.origin.y = 0.0;
    v175.origin.x = MinX;
    v175.size.width = v54;
    v175.size.height = v55;
    CGRectGetHeight(v175);
    v75 = [v1 traitCollection];
    [v75 displayScale];

    sub_AB3A00();
    MinY = v76;
  }

  v78 = MinX;
  if (*(v38 + 8))
  {
    v178.origin.x = MinX;
    v178.origin.y = MinY;
    v178.size.width = v151;
    v178.size.height = v150;
    v78 = v144 + CGRectGetMaxX(v178);
  }

  v79 = [v1 contentVerticalAlignment];
  if (v79 == &dword_0 + 3)
  {
    v183.origin.x = MinX;
    v183.origin.y = MinY;
    v183.size.width = v54;
    v183.size.height = v55;
    v150 = CGRectGetHeight(v183);
    v184.origin.x = MinX;
    v184.origin.y = MinY;
    v184.size.width = v54;
    v184.size.height = v55;
    v84 = CGRectGetHeight(v184);
    v82 = MinY;
    v83 = v147;
  }

  else if (v79)
  {
    v82 = MinY;
    v83 = v147;
    v84 = v145;
  }

  else
  {
    v179.origin.x = MinX;
    v179.origin.y = MinY;
    v179.size.width = v54;
    v179.size.height = v55;
    CGRectGetMidY(v179);
    v180.origin.x = MinX;
    v180.origin.y = MinY;
    v180.size.width = v151;
    v180.size.height = v150;
    CGRectGetHeight(v180);
    v80 = [v1 traitCollection];
    [v80 displayScale];

    sub_AB3A00();
    v82 = v81;
    v181.origin.x = MinX;
    v181.origin.y = MinY;
    v181.size.width = v54;
    v181.size.height = v55;
    CGRectGetMidY(v181);
    v182.origin.x = v78;
    v182.origin.y = MinY;
    v83 = v147;
    v182.size.width = v147;
    v84 = v145;
    v182.size.height = v145;
    CGRectGetHeight(v182);
    v52 = &selRef_createSharedSessionWithIdentity_intentHandler_;
    v85 = [v1 traitCollection];
    [v85 displayScale];

    sub_AB3A00();
    MinY = v86;
  }

  v87 = sub_898004();
  if ([v1 v52[499]] == &dword_4 || objc_msgSend(v1, v52[499]) == &dword_4 + 1)
  {
    v156 = 0u;
    v157 = 0u;
    v158 = 1;
    sub_ABA480();
    v78 = v88;
    MinY = v89;
    v83 = v90;
    v84 = v91;
  }

  [v87 setFrame:{v78, MinY, v83, v84}];

  if (*(v38 + 128))
  {
    if ((*(v38 + 184) & 1) == 0)
    {
      v92 = [*&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView] image];
      if (v92)
      {
        v93 = v92;
        sub_898ED8(v11);
        v94 = *&v11[v6[7]];
        sub_8A1B6C(v11, type metadata accessor for SymbolButton.Metrics);
        v95 = [v93 imageByApplyingSymbolConfiguration:v94];

        if (v95)
        {
          sub_ABA750();
          v51 = &selRef__authenticateReturningError_;
          if ((v96 & 1) == 0)
          {
            v97 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel;
            [*&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel] frame];
            CGRectGetMinY(v185);
            [*&v1[v97] _firstLineBaseline];
            v186.origin.x = MinX;
            v186.origin.y = v82;
            v186.size.width = v151;
            v186.size.height = v150;
            CGRectGetHeight(v186);
          }
        }

        else
        {
          v51 = &selRef__authenticateReturningError_;
        }

        v52 = &selRef_createSharedSessionWithIdentity_intentHandler_;
      }
    }
  }

  sub_898ED8(v11);
  sub_8A1B6C(v11, type metadata accessor for SymbolButton.Metrics);
  sub_ABA4E0();
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v106 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView];
  if ([v1 v52[499]] == &dword_4 || objc_msgSend(v1, v52[499]) == &dword_4 + 1)
  {
    v153 = 0u;
    v154 = 0u;
    v155 = 1;
    sub_ABA480();
  }

  else
  {
    v107 = v99;
    v108 = v101;
    v109 = v103;
    v110 = v105;
  }

  v111 = v143;
  [v106 v51[262]];

  sub_8982F0();
  v112 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
  if (v112)
  {
    v113 = v112;
    v114 = [v1 traitCollection];
    v115 = [v114 userInterfaceIdiom];

    v116 = v115 == &dword_4 + 2;
    v51 = &selRef__authenticateReturningError_;
    if (v116)
    {
      v117 = 12.0;
    }

    else
    {
      v117 = 8.0;
    }

    [v1 bounds];
    v118 = CGRectGetMaxX(v187);
    v188.origin.x = 0.0;
    v188.origin.y = 0.0;
    v188.size.width = v117;
    v188.size.height = v117;
    v119 = v118 - CGRectGetWidth(v188) + 1.0;
    [v1 bounds];
    [v113 setFrame:{v119, CGRectGetMinY(v189) + -1.0, v117, v117}];
  }

  v120 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
  v121 = [v16 contentView];
  [v121 bounds];
  v123 = v122;
  v125 = v124;
  v127 = v126;
  v129 = v128;

  [v120 v51[262]];
  sub_8A3C84(v38, v4, type metadata accessor for SymbolButton.Configuration);
  v130 = *(v111 + 36);
  v131 = sub_ABA680();
  if ((*(*(v131 - 8) + 48))(&v4[v130], 1, v131))
  {
    v132 = type metadata accessor for SymbolButton.Configuration;
    v133 = v4;
  }

  else
  {
    v134 = v140;
    sub_ABA650();
    sub_8A1B6C(v4, type metadata accessor for SymbolButton.Configuration);
    v135 = v141;
    v136 = v142;
    v137 = (*(v141 + 88))(v134, v142);
    v138 = enum case for UIView.Corner.Radius.rounded(_:);
    (*(v135 + 8))(v134, v136);
    if (v137 != v138)
    {
      return;
    }

    sub_898ED8(v11);
    sub_89A320(v11);
    v132 = type metadata accessor for SymbolButton.Metrics;
    v133 = v11;
  }

  sub_8A1B6C(v133, v132);
}

Swift::Void __swiftcall SymbolButton.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3 = type metadata accessor for SymbolButton.Metrics(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SymbolButton.Configuration(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D170);
  __chkstk_darwin(v13 - 8);
  v15 = &v19 - v14;
  v16 = type metadata accessor for SymbolButton(0);
  v20.receiver = v1;
  v20.super_class = v16;
  objc_msgSendSuper2(&v20, "traitCollectionDidChange:", isa);
  (*(v7 + 56))(v15, 1, 1, v6);
  SymbolButton.updateConfigurationIfNeeded(_:animation:)(v15, 0, 0, 0, 1);
  sub_12E1C(v15, &qword_E1D170);
  v17 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_8A3C84(v1 + v17, v12, type metadata accessor for SymbolButton.Configuration);
  v18 = [v1 traitCollection];
  sub_898ED8(v5);
  sub_8A1B6C(v5, type metadata accessor for SymbolButton.Metrics);
  sub_8A3C84(v12, v9, type metadata accessor for SymbolButton.Configuration);
  sub_898510(v9, v18, v5);
  sub_8A1B6C(v12, type metadata accessor for SymbolButton.Configuration);
  sub_899180(v5);
}

double SymbolButton.intrinsicContentSize.getter()
{
  v1 = type metadata accessor for SymbolButton.Metrics(0);
  __chkstk_darwin(v1);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v35 - v5;
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  sub_898ED8(&v35 - v11);
  sub_8A1B6C(v12, type metadata accessor for SymbolButton.Metrics);
  sub_ABA3C0();
  v14 = v13;
  sub_898ED8(v12);
  sub_8A1B6C(v12, type metadata accessor for SymbolButton.Metrics);
  sub_ABA3D0();
  v15 = v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  if (!*(v15 + 8))
  {
    v23 = 0.0;
    if (!*(v15 + 128))
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  sub_898ED8(v9);
  v16 = &v9[v1[11]];
  v17 = *v16;
  v18 = v16[16];
  sub_8A1B6C(v9, type metadata accessor for SymbolButton.Metrics);
  v19 = sub_897E8C();
  [v19 intrinsicContentSize];
  v21 = v20;

  if (v17 >= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v17;
  }

  if (v18)
  {
    v22 = v21;
  }

  v23 = v22 + 0.0;
  if (*(v15 + 128))
  {
LABEL_10:
    if ((*(v15 + 184) & 1) == 0)
    {
      v24 = sub_898004();
      [v24 intrinsicContentSize];
      v26 = v25;

      v23 = v23 + v26;
    }
  }

LABEL_12:
  if (*(v15 + 8) && *(v15 + 128) && (*(v15 + 184) & 1) == 0)
  {
    sub_898ED8(v12);
    v27 = *&v12[v1[8]];
    sub_8A1B6C(v12, type metadata accessor for SymbolButton.Metrics);
    v23 = v23 + v27;
  }

  v28 = *(v15 + *(type metadata accessor for SymbolButton.Configuration(0) + 40));
  if (v28)
  {
    [v28 intrinsicContentSize];
    if (v29 > v23)
    {
      v23 = v29;
    }
  }

  v30 = v14 + 0.0;
  sub_898ED8(v6);
  v31 = *&v6[v1[10]];
  sub_8A1B6C(v6, type metadata accessor for SymbolButton.Metrics);
  if (v23 > v31)
  {
    v32 = v23;
  }

  else
  {
    v32 = v31;
  }

  v33 = v30 + v32;
  sub_898ED8(v3);
  sub_8A1B6C(v3, type metadata accessor for SymbolButton.Metrics);
  return v33;
}

Swift::Void __swiftcall SymbolButton.tintColorDidChange()()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SymbolButton(0);
  v7.receiver = v0;
  v7.super_class = v4;
  objc_msgSendSuper2(&v7, "tintColorDidChange");
  v5 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_8A3C84(v0 + v5, v3, type metadata accessor for SymbolButton.Configuration);
  sub_8993E0(v3);
  sub_8A1B6C(v3, type metadata accessor for SymbolButton.Configuration);
}

double SymbolButton.hitRectMinimumSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize;
  swift_beginAccess();
  return *v1;
}

uint64_t SymbolButton.hitRectMinimumSize.setter(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

double SymbolButton.hitRect()()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for SymbolButton(0);
  objc_msgSendSuper2(&v15, "hitRect");
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = &v0[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize];
  swift_beginAccess();
  v10 = *v9;
  v16.origin.x = v2;
  v16.origin.y = v4;
  v16.size.width = v6;
  v16.size.height = v8;
  Width = CGRectGetWidth(v16);
  if (Width > v10)
  {
    v10 = Width;
  }

  v17.origin.x = v2;
  v17.origin.y = v4;
  v17.size.width = v6;
  v17.size.height = v8;
  CGRectGetHeight(v17);
  sub_ABA4C0();
  v13 = v12 - v10 * 0.5;
  sub_ABA4C0();
  return v13;
}

id SymbolButton.isHighlighted.setter(char a1)
{
  v3 = type metadata accessor for SymbolButton(0);
  v7.receiver = v1;
  v7.super_class = v3;
  v4 = objc_msgSendSuper2(&v7, "isHighlighted");
  v6.receiver = v1;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, "setHighlighted:", a1 & 1);
  return sub_8972BC(v4);
}

id sub_8972BC(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D170);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &aBlock - v6;
  result = [v2 isHighlighted];
  if (result != v3)
  {
    v9 = [v2 traitCollection];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == &dword_4 + 2)
    {
      v11 = objc_opt_self();
      if ([v11 areAnimationsEnabled])
      {
        if ([v2 isHighlighted])
        {
          v12 = swift_allocObject();
          *(v12 + 16) = v2;
          v29 = sub_8A3C54;
          v30 = v12;
          aBlock = _NSConcreteStackBlock;
          v26 = 1107296256;
          v27 = sub_1B5EB4;
          v28 = &block_descriptor_239;
          v13 = _Block_copy(&aBlock);
          v14 = v2;

          v15 = swift_allocObject();
          *(v15 + 16) = v14;
          v29 = sub_8A3C7C;
          v30 = v15;
          aBlock = _NSConcreteStackBlock;
          v26 = 1107296256;
          v27 = sub_1811AC;
          v28 = &block_descriptor_245_0;
          v16 = _Block_copy(&aBlock);
          v17 = v14;

          [v11 animateWithDuration:0x20000 delay:v13 options:v16 animations:0.1 completion:0.0];
          _Block_release(v16);
          _Block_release(v13);
        }

        else
        {
          sub_13C80(0, &qword_E1E050);
          sub_13C80(0, &qword_E1E078);
          v18 = UISpringTimingParameters.init(dampingRatio:response:)(0.7, 0.4);
          v19 = swift_allocObject();
          *(v19 + 16) = v2;
          v20 = v2;
          static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v18, 0, sub_8A3C34, v19, 0, 0, 0.0);
        }
      }
    }

    v21 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
    v22 = [objc_opt_self() areAnimationsEnabled];
    if (v22)
    {
      v23 = 0x3FD0000000000000;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = 3075;
    }

    else
    {
      v24 = 0;
    }

    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v7, v23, 0, v24, v22 ^ 1);
    return sub_12E1C(v7, &qword_E1D170);
  }

  return result;
}

id sub_897668(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView);
  CGAffineTransformMakeScale(&v4, a2, a2);
  return [v2 setTransform:&v4];
}

void sub_8976C8(int a1, id a2)
{
  if ([a2 showsMenuAsPrimaryAction] && objc_msgSend(a2, "isContextMenuInteractionEnabled"))
  {
    sub_13C80(0, &qword_E1E050);
    sub_13C80(0, &qword_E1E078);
    v5 = UISpringTimingParameters.init(dampingRatio:response:)(0.7, 0.4);
    v3 = swift_allocObject();
    *(v3 + 16) = a2;
    v4 = a2;
    static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v5, 0, sub_8A4584, v3, 0, 0, 0.0);
  }
}

id sub_897818(void *a1, uint64_t a2, uint64_t (*a3)(void), SEL *a4)
{
  v6.receiver = a1;
  v6.super_class = a3(0);
  return objc_msgSendSuper2(&v6, *a4);
}

id sub_89786C(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SymbolButton(0);
  return objc_msgSendSuper2(&v4, *a1);
}

id sub_8979A8(char a1, SEL *a2, SEL *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D170);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for SymbolButton(0);
  v18.receiver = v3;
  v18.super_class = v10;
  v11 = objc_msgSendSuper2(&v18, *a2);
  v17.receiver = v3;
  v17.super_class = v10;
  objc_msgSendSuper2(&v17, *a3, a1 & 1);
  result = [v3 *a2];
  if (v11 != result)
  {
    v13 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    v14 = [objc_opt_self() areAnimationsEnabled];
    if (v14)
    {
      v15 = 0x3FD0000000000000;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = 3075;
    }

    else
    {
      v16 = 0;
    }

    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v9, v15, 0, v16, v14 ^ 1);
    return sub_12E1C(v9, &qword_E1D170);
  }

  return result;
}

Swift::Void __swiftcall SymbolButton.setEnabled(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  if (animated)
  {

    [v2 setEnabled:_];
  }

  else
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = _;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_8A1C04;
    *(v6 + 24) = v5;
    v10[4] = sub_710F8;
    v10[5] = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1822E0;
    v10[3] = &block_descriptor_43_12;
    v7 = _Block_copy(v10);
    v8 = v2;

    [v4 performWithoutAnimation:v7];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t sub_897CE0(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_897D68(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id sub_897E8C()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView);
  }

  else
  {
    v4 = v0;
    v5 = v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    v6 = *(v5 + 80);
    v18[4] = *(v5 + 64);
    v18[5] = v6;
    v18[6] = *(v5 + 96);
    v19 = *(v5 + 112);
    v7 = *(v5 + 16);
    v18[0] = *v5;
    v18[1] = v7;
    v8 = *(v5 + 48);
    v18[2] = *(v5 + 32);
    v18[3] = v8;
    v9 = type metadata accessor for SymbolButton.ImageView();
    v10 = objc_allocWithZone(v9);
    sub_8A1A14(v18, v17);
    v16.receiver = v10;
    v16.super_class = v9;
    v11 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v11 setAdjustsImageSizeForAccessibilityContentSizeCategory:0];
    [v11 setContentMode:4];
    sub_89B984(v18);
    sub_878C88(v18);

    v12 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView);
    if (([v11 isDescendantOfView:v12] & 1) == 0)
    {
      [v12 addSubview:v11];
    }

    v13 = *(v4 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

id sub_898004()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel);
  }

  else
  {
    v4 = v0;
    v5 = v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    v6 = *(v5 + 136);
    v7 = *(v5 + 168);
    v15[2] = *(v5 + 152);
    v15[3] = v7;
    v15[4] = *(v5 + 184);
    v15[0] = *(v5 + 120);
    v15[1] = v6;
    v8 = objc_allocWithZone(type metadata accessor for SymbolButton.Label());
    sub_8A1A84(v15, v14);
    v9 = sub_89BBC8(v15);
    v10 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView);
    if (([v9 isDescendantOfView:v10] & 1) == 0)
    {
      [v10 addSubview:v9];
    }

    v11 = *(v4 + v1);
    *(v4 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

void sub_89810C(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView;
  v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    [v3 removeFromSuperview];
    v5 = *&v2[v4];
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  if (a1)
  {
    type metadata accessor for SymbolButton.BadgeView();
    v6 = v5;
    v3 = v3;
    v7 = sub_ABA790();

    if (v7)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  v8 = *&v2[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView];
  v17 = v5;
  [v8 insertSubview:? aboveSubview:?];
  v9 = *&v2[v4];
  if (v9)
  {
    v10 = v9;
    v11 = [v2 traitCollection];
    v12 = [v11 userInterfaceIdiom];

    if (v12 == &dword_4 + 2)
    {
      v13 = 12.0;
    }

    else
    {
      v13 = 8.0;
    }

    [v2 bounds];
    MaxX = CGRectGetMaxX(v19);
    v20.origin.x = 0.0;
    v20.origin.y = 0.0;
    v20.size.width = v13;
    v20.size.height = v13;
    v15 = MaxX - CGRectGetWidth(v20) + 1.0;
    [v2 bounds];
    [v10 setFrame:{v15, CGRectGetMinY(v21) + -1.0, v13, v13}];

    v16 = v10;
  }

  else
  {
    v16 = v17;
  }
}

void sub_8982F0()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView);
    v6 = v4;
    v7 = [v5 contentView];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_8A3C84(v0 + v16, v3, type metadata accessor for SymbolButton.Configuration);
    v17 = &v3[*(v1 + 40)];
    if (*v17)
    {
      v18 = (v17 + 8);
    }

    else
    {
      v18 = &UIEdgeInsetsZero;
    }

    if (*v17)
    {
      p_left = (v17 + 16);
    }

    else
    {
      p_left = &UIEdgeInsetsZero.left;
    }

    v20 = *p_left;
    top = v18->top;
    sub_8A1B6C(v3, type metadata accessor for SymbolButton.Configuration);
    [v6 setFrame:{UIEdgeInsetsInsetRect(v9, v11, v13, v15, top, v20)}];
  }
}

id sub_8984D4()
{
  result = [objc_opt_self() defaultMetrics];
  qword_E1DAF0 = result;
  return result;
}

uint64_t sub_898510@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
  __chkstk_darwin(v6 - 8);
  v75 = &v74 - v7;
  v8 = type metadata accessor for SymbolButton.Metrics(0);
  v9 = v8[5];
  v10 = sub_ABA680();
  v11 = *(*(v10 - 8) + 56);
  v81 = v9;
  v11(&a3[v9], 1, 1, v10);
  v12 = &a3[v8[11]];
  *v12 = 0;
  *(v12 + 1) = 0;
  v76 = v12;
  v12[16] = 1;
  v13 = type metadata accessor for SymbolButton.Configuration(0);
  v14 = (a1 + v13[16]);
  v77 = *v14;
  v80 = a2;
  if (v77 == 1)
  {
    v15 = [a2 preferredContentSizeCategory];
    v16 = *(v14 + 1);
    if (v16)
    {
      v17 = v16;
      v18 = sub_ABA350();
      if (v18)
      {
        v19 = v15;
      }

      else
      {
        v19 = v17;
      }

      if (v18)
      {
        v15 = v17;
      }
    }

    v20 = *(v14 + 2);
    if (v20)
    {
      v21 = v20;
      if (sub_ABA340())
      {

        goto LABEL_15;
      }
    }

    v21 = v15;
  }

  else
  {
    v21 = UIContentSizeCategoryLarge;
  }

LABEL_15:
  v22 = objc_opt_self();
  v79 = v21;
  v23 = [v22 traitCollectionWithPreferredContentSizeCategory:v21];
  *a3 = v23;
  v24 = objc_opt_self();
  v25 = *(a1 + 136);
  v74 = v23;
  v26 = v23;
  v27 = [v24 preferredFontDescriptorWithTextStyle:v25 compatibleWithTraitCollection:v26];
  v28 = objc_opt_self();
  v78 = v27;
  [v27 pointSize];
  *&a3[v8[6]] = [v28 systemFontOfSize:? weight:?];
  if (*(a1 + 40))
  {
    v29 = [v24 preferredFontDescriptorWithTextStyle:*(a1 + 24) compatibleWithTraitCollection:v26];
    [v29 pointSize];
    v31 = [objc_opt_self() configurationWithPointSize:*(a1 + 48) weight:*(a1 + 56) scale:v30];
  }

  else
  {
    v31 = [objc_opt_self() configurationWithPointSize:*(a1 + 48) weight:*(a1 + 56) scale:*(a1 + 32)];
  }

  *&a3[v8[7]] = v31;
  *&a3[v8[8]] = *(a1 + v13[12]);
  v32 = *(a1 + 80);
  v33 = v80;
  if (v32 == 255)
  {
    *&a3[v8[9]] = UIOffsetZero;
    if (v77)
    {
      goto LABEL_23;
    }

LABEL_29:

    v66 = (a1 + v13[15]);
    v67 = &a3[v8[12]];
    v68 = v66[1];
    *v67 = *v66;
    *(v67 + 1) = v68;
    *&a3[v8[10]] = *(a1 + v13[13]);
    v69 = a1 + v13[14];
    LOBYTE(v67) = *(v69 + 16);
    v70 = *v69;
    v71 = v76;
    *v76 = v70;
    *(v71 + 16) = v67;
    v72 = v13[9];
    v73 = v81;
    sub_12E1C(&a3[v81], &qword_E1DB50);
    sub_15F84(a1 + v72, &a3[v73], &qword_E1DB50);
    return sub_8A1B6C(a1, type metadata accessor for SymbolButton.Configuration);
  }

  v34 = *(a1 + 72);
  if ((v32 & 1) == 0)
  {
    [v80 displayScale];
    sub_ABA900();
    v63 = &a3[v8[9]];
    *v63 = v64;
    *(v63 + 1) = v65;
    if (v77)
    {
      goto LABEL_23;
    }

    goto LABEL_29;
  }

  v35 = &a3[v8[9]];
  *v35 = *(a1 + 64);
  *(v35 + 1) = v34;
  if (!v77)
  {
    goto LABEL_29;
  }

LABEL_23:
  if (qword_E16C00 != -1)
  {
    swift_once();
  }

  v36 = qword_E1DAF0;
  v37 = (a1 + v13[15]);
  v38 = v37[1];
  v39 = v37[2];
  v40 = v37[3];
  [qword_E1DAF0 scaledValueForValue:v26 compatibleWithTraitCollection:*v37];
  v42 = v41;
  [v36 scaledValueForValue:v26 compatibleWithTraitCollection:v38];
  v44 = v43;
  [v36 scaledValueForValue:v26 compatibleWithTraitCollection:v39];
  v46 = v45;
  [v36 scaledValueForValue:v26 compatibleWithTraitCollection:v40];
  v47 = &a3[v8[12]];
  *v47 = v42;
  *(v47 + 1) = v44;
  *(v47 + 2) = v46;
  *(v47 + 3) = v48;
  v49 = (a1 + v13[13]);
  v50 = v49[1];
  [v36 scaledValueForValue:v26 compatibleWithTraitCollection:*v49];
  v52 = v51;
  [v36 scaledValueForValue:v26 compatibleWithTraitCollection:v50];
  v53 = &a3[v8[10]];
  *v53 = v52;
  *(v53 + 1) = v54;
  v55 = a1 + v13[14];
  if ((*(v55 + 16) & 1) == 0)
  {
    v56 = *(v55 + 8);
    [v36 scaledValueForValue:v26 compatibleWithTraitCollection:*v55];
    v58 = v57;
    [v36 scaledValueForValue:v26 compatibleWithTraitCollection:v56];
    v59 = v76;
    *v76 = v58;
    *(v59 + 1) = v60;
    *(v59 + 16) = 0;
  }

  v61 = v75;
  sub_898B44(a1 + v13[9], v74, v75);

  sub_8A1B6C(a1, type metadata accessor for SymbolButton.Configuration);
  return sub_160B4(v61, &a3[v81], &qword_E1DB50);
}

uint64_t sub_898B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v29 = a3;
  v27 = sub_ABA620();
  v4 = *(v27 - 8);
  v5 = __chkstk_darwin(v27);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
  __chkstk_darwin(v10 - 8);
  v12 = v25 - v11;
  v13 = sub_ABA680();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  sub_15F84(a1, v12, &qword_E1DB50);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_12E1C(v12, &qword_E1DB50);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_ABA650();
    v17 = v27;
    v18 = (*(v4 + 88))(v9, v27);
    if (v18 == enum case for UIView.Corner.Radius.value(_:))
    {
      v19 = v18;
      (*(v4 + 96))(v9, v17);
      v20 = *v9;
      v21 = v9[8];
      v22 = v29;
      (*(v14 + 16))(v29, v16, v13);
      [v25[1] scaledValueForValue:v26 compatibleWithTraitCollection:v20];
      *v7 = v23;
      v7[8] = v21;
      (*(v4 + 104))(v7, v19, v17);
      sub_ABA660();
      (*(v14 + 8))(v16, v13);
      return (*(v14 + 56))(v22, 0, 1, v13);
    }

    (*(v14 + 8))(v16, v13);
    (*(v4 + 8))(v9, v17);
  }

  return sub_15F84(v28, v29, &qword_E1DB50);
}

uint64_t sub_898ED8@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E058);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v17 - v10;
  v12 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___metrics;
  swift_beginAccess();
  sub_15F84(v1 + v12, v11, &qword_E1E058);
  v13 = type metadata accessor for SymbolButton.Metrics(0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_8A3CEC(v11, a1, type metadata accessor for SymbolButton.Metrics);
  }

  sub_12E1C(v11, &qword_E1E058);
  v15 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_8A3C84(v1 + v15, v5, type metadata accessor for SymbolButton.Configuration);
  sub_898510(v5, [v1 traitCollection], a1);
  sub_8A3C84(a1, v9, type metadata accessor for SymbolButton.Metrics);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_160B4(v9, v1 + v12, &qword_E1E058);
  return swift_endAccess();
}

uint64_t sub_899180(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E058);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for SymbolButton.Metrics(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = (&v16 - v11);
  sub_898ED8(&v16 - v11);
  sub_8A3C84(a1, v5, type metadata accessor for SymbolButton.Metrics);
  (*(v7 + 56))(v5, 0, 1, v6);
  v13 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___metrics;
  swift_beginAccess();
  sub_160B4(v5, v1 + v13, &qword_E1E058);
  swift_endAccess();
  sub_898ED8(v10);
  v14 = sub_89F1A0(v10, v12);
  sub_8A1B6C(v10, type metadata accessor for SymbolButton.Metrics);
  if ((v14 & 1) == 0)
  {
    sub_898ED8(v10);
    sub_89A1E8();
    sub_8A1B6C(v10, type metadata accessor for SymbolButton.Metrics);
    [v1 invalidateIntrinsicContentSize];
    [v1 setNeedsLayout];
  }

  sub_8A1B6C(a1, type metadata accessor for SymbolButton.Metrics);
  return sub_8A1B6C(v12, type metadata accessor for SymbolButton.Metrics);
}

id sub_8993E0(uint64_t a1)
{
  v3 = type metadata accessor for SymbolButton.Metrics(0);
  __chkstk_darwin(v3 - 8);
  v111 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for SymbolButton.Configuration(0);
  v5 = __chkstk_darwin(v112);
  v110 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v102 - v7;
  if (qword_E16908 != -1)
  {
    swift_once();
  }

  v9 = sub_AB4BC0();
  __swift_project_value_buffer(v9, qword_E73898);
  sub_8A3C84(a1, v8, type metadata accessor for SymbolButton.Configuration);
  v10 = v1;
  v11 = sub_AB4BA0();
  v12 = sub_AB9F20();

  v13 = os_log_type_enabled(v11, v12);
  v113 = v10;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v118 = v15;
    *v14 = 136446466;
    v16 = &v10[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
    swift_beginAccess();
    v17 = v16[1];
    if (v17)
    {
      v18 = *v16;
      v19 = v17;
    }

    else
    {
      v20 = v10;
      v109 = v15;
      v21 = v20;
      v22 = [v20 description];
      v18 = sub_AB92A0();
      v19 = v23;
    }

    v24 = sub_7AB3E0(v18, v19, &v118);

    *(v14 + 4) = v24;
    *(v14 + 12) = 2082;
    v25 = SymbolButton.Configuration.description.getter();
    v27 = v26;
    sub_8A1B6C(v8, type metadata accessor for SymbolButton.Configuration);
    v28 = sub_7AB3E0(v25, v27, &v118);

    *(v14 + 14) = v28;
    _os_log_impl(&dword_0, v11, v12, "[%{public}s] Applying configuration=%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_8A1B6C(v8, type metadata accessor for SymbolButton.Configuration);
  }

  v29 = v113;
  v30 = *&v113[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView];
  v31 = *(a1 + 248);
  v126[0] = *(a1 + 232);
  v126[1] = v31;
  v126[2] = *(a1 + 264);
  sub_89B0B4(v126);
  v32 = [v30 contentView];
  v33 = *(a1 + 280);
  v34 = *(a1 + 288);
  v35 = *(a1 + 296);
  v36 = v35;
  UIView.border.setter(v33, v34, v35);

  v109 = *&v29[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
  v37 = *(a1 + 200);
  v38 = *(a1 + 208);
  if (v38 == &dword_0 + 1)
  {
    if (qword_E16BF8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v39 = *&static SymbolButton.Background.clear;
    v40 = qword_E73E18;
    v41 = qword_E73E20;
    v42 = qword_E73E28;

    v43 = v40;
  }

  else
  {
    v39 = *(a1 + 200);
    v42 = *(a1 + 224);
    v43 = *(a1 + 208);
    v40 = v43;
    v41 = *(a1 + 216);
  }

  sub_8A1AF4(v37, v38);
  sub_89B530(v40, v39, v41, v42);

  v44 = v113;
  v45 = sub_897E8C();
  v46 = *(a1 + 80);
  v122 = *(a1 + 64);
  v123 = v46;
  v124 = *(a1 + 96);
  v125 = *(a1 + 112);
  v47 = *(a1 + 16);
  v118 = *a1;
  v119 = v47;
  v48 = *(a1 + 48);
  v120 = *(a1 + 32);
  v121 = v48;
  sub_89B984(&v118);

  v49 = sub_898004();
  v50 = *(a1 + 136);
  v117[0] = *(a1 + 120);
  v117[1] = v50;
  v51 = *(a1 + 168);
  v117[2] = *(a1 + 152);
  v117[3] = v51;
  v117[4] = *(a1 + 184);
  v52 = v117[0];
  sub_89BD50(v117);

  if (*(&v52 + 1))
  {
    v53 = HIBYTE(*(&v52 + 1)) & 0xFLL;
    if ((*(&v52 + 1) & 0x2000000000000000) == 0)
    {
      v53 = v52 & 0xFFFFFFFFFFFFLL;
    }

    if (v53)
    {
      v54 = sub_AB9260();
      [v44 setAccessibilityLabel:v54];
    }
  }

  v55 = (a1 + *(v112 + 44));
  v56 = v55[2];
  p_name = (&JSDateDescriptor + 24);
  v109 = v52;
  if (v56 == &dword_0 + 1)
  {
    v58 = *&v44[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    *&v44[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView] = 0;
    sub_89810C(v58);
  }

  else
  {
    v59 = *v55;
    v60 = v55[1];
    v61 = *&v60;
    v62 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView;
    v63 = *&v44[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v107 = v60;
    v108 = v59;
    if (v63)
    {
      v64 = v56;
      v65 = v44;
      v66 = v63;
      v67 = v63;
    }

    else
    {
      v106 = type metadata accessor for SymbolButton.BadgeView();
      v68 = objc_allocWithZone(v106);
      v105 = OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView;
      v69 = objc_allocWithZone(UIView);
      v104 = v56;
      v70 = [v69 init];
      v103 = objc_opt_self();
      v71 = v59;
      v72 = [v103 blackColor];
      [v70 setBackgroundColor:v72];

      v73 = [v70 layer];
      [v73 setCompositingFilter:kCAFilterDestOut];

      *&v68[v105] = v70;
      v74 = &v68[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration];
      *v74 = v71;
      v74[1] = v60;
      v74[2] = v56;
      v114.receiver = v68;
      v114.super_class = v106;
      v75 = v104;
      v76 = v60;
      v67 = objc_msgSendSuper2(&v114, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v77 = v75;
      if (!v56)
      {
        v77 = [v103 tintColor];
      }

      v78 = v75;
      [v67 setBackgroundColor:v77];

      [v67 setAlpha:v61];
      [*&v67[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] setAlpha:v61];
      sub_89C304();
      sub_7AFD34(v108, v76, v56);

      v66 = 0;
      v65 = v113;
      v63 = *&v113[v62];
    }

    *&v65[v62] = v67;
    v79 = v67;
    v80 = v66;
    sub_89810C(v63);

    v81 = *&v65[v62];
    v44 = v65;
    if (v81)
    {
      p_name = &JSDateDescriptor.name;
      if (v56)
      {
        v82 = v81;
        v83 = v56;
        v84 = v56;
      }

      else
      {
        v85 = objc_opt_self();
        v86 = v81;
        v84 = [v85 tintColor];
        v83 = 0;
      }

      v87 = v83;
      [v81 setBackgroundColor:v84];

      [v81 setAlpha:v61];
      [*&v81[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] setAlpha:v61];
      sub_89C304();
      sub_7AFD34(v108, v107, v56);
    }

    else
    {
      sub_7AFD34(v108, v107, v56);
      p_name = (&JSDateDescriptor + 24);
    }
  }

  v88 = v112;
  v89 = a1 + *(v112 + 40);
  v90 = *(v89 + 16);
  v115[0] = *v89;
  v115[1] = v90;
  v115[2] = *(v89 + 32);
  v116 = *(v89 + 48);
  sub_899FE4(v115);
  [v44 p_name[463]];
  [v44 setTintColor:*(a1 + v88[18])];
  v91 = [v44 traitCollection];
  v92 = v111;
  sub_898ED8(v111);
  sub_8A1B6C(v92, type metadata accessor for SymbolButton.Metrics);
  v93 = v110;
  sub_8A3C84(a1, v110, type metadata accessor for SymbolButton.Configuration);
  sub_898510(v93, v91, v92);
  sub_899180(v92);
  sub_898ED8(v92);
  sub_89A320(v92);
  sub_8A1B6C(v92, type metadata accessor for SymbolButton.Metrics);
  sub_899E58();
  [v44 setShowsLargeContentViewer:*(a1 + v88[16] + 24)];
  if (*(&v52 + 1))
  {
    v94 = sub_AB9260();
  }

  else
  {
    v94 = 0;
  }

  v95 = *(&v118 + 1);
  [v44 setLargeContentTitle:v94];

  if (v95)
  {
    v96 = sub_AB9260();
    v97 = objc_opt_self();
    v98 = [v97 _systemImageNamed:v96];

    if (!v98)
    {
      v99 = v119;
      v100 = sub_AB9260();
      v98 = [v97 imageNamed:v100 inBundle:v99];
    }
  }

  else
  {
    v98 = 0;
  }

  [v44 setLargeContentImage:v98];

  return [v44 setScalesLargeContentImage:1];
}

void sub_899E58()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView);
  if (!*(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount))
  {
    v6 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_8A3C84(v0 + v6, v3, type metadata accessor for SymbolButton.Configuration);
    if (*(v3 + 29) == 1)
    {
      sub_8A1B6C(v3, type metadata accessor for SymbolButton.Configuration);
    }

    else
    {
      v7 = *(v3 + 34);

      sub_8A1B6C(v3, type metadata accessor for SymbolButton.Configuration);
      if (v7)
      {
        v8 = sub_AB9260();

LABEL_10:
        [v4 _setGroupName:v8];

        return;
      }
    }

    v8 = 0;
    goto LABEL_10;
  }

  v5 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView);

  [v5 _setGroupName:0];
}

void **sub_899FE4(void **result)
{
  v2 = v1;
  v3 = result;
  v4 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView;
  v5 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView);
  v6 = *result;
  if (!*result)
  {
    if (!v5)
    {
      return result;
    }

LABEL_10:
    if ([v5 isDescendantOfView:v2])
    {
      [*(v2 + v4) removeFromSuperview];
    }

    v8 = v6;
    if (!v6)
    {
      v15 = *(v2 + v4);
      *(v2 + v4) = 0;
      v16 = 0;

      result = *(v2 + v4);
      if (!result)
      {
        return result;
      }

      v14 = 1.0;
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  v7 = v6;
  v8 = v7;
  if (v5)
  {
    sub_13C80(0, &qword_E1E050);
    v9 = v5;
    v10 = sub_ABA790();

    if (v10)
    {
      result = *(v2 + v4);
      if (!result)
      {
        return result;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v5 = *(v2 + v4);
  if (v5)
  {
    goto LABEL_10;
  }

LABEL_13:
  v11 = *(v2 + v4);
  *(v2 + v4) = v6;
  v12 = v8;

  v13 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView);
  if ([v13 isDescendantOfView:v13])
  {
    [v13 insertSubview:v12 aboveSubview:v13];
  }

  else
  {

    if (([v12 isDescendantOfView:v13] & 1) == 0)
    {
      [v13 addSubview:v12];
    }
  }

  sub_8982F0();

  result = *(v2 + v4);
  if (result)
  {
LABEL_18:
    v14 = *(v3 + 5);
LABEL_21:
    [result setAlpha:v14];
    result = *(v2 + v4);
    if (result)
    {
      if (v6)
      {
        v17 = v3[6];
      }

      else
      {
        v17 = 0;
      }

      return [result setTintColor:v17];
    }
  }

  return result;
}

uint64_t sub_89A1E8()
{
  v0 = type metadata accessor for SymbolButton.Metrics(0);
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_897E8C();
  sub_898ED8(v3);
  v5 = *&v3[*(v1 + 36)];
  sub_8A1B6C(v3, type metadata accessor for SymbolButton.Metrics);
  [v4 setPreferredSymbolConfiguration:v5];

  v6 = sub_898004();
  sub_898ED8(v3);
  v7 = *&v3[*(v1 + 32)];
  sub_8A1B6C(v3, type metadata accessor for SymbolButton.Metrics);
  [v6 setFont:v7];

  sub_898ED8(v3);
  sub_89A320(v3);
  return sub_8A1B6C(v3, type metadata accessor for SymbolButton.Metrics);
}

uint64_t sub_89A320(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
  v4 = __chkstk_darwin(v3 - 8);
  v46 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v42 - v7;
  __chkstk_darwin(v6);
  v10 = &v42 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView);
  v12 = *(type metadata accessor for SymbolButton.Metrics(0) + 20);
  sub_15F84(a1 + v12, v10, &qword_E1DB50);
  sub_ABA6A0();
  v44 = v1;
  sub_15F84(a1 + v12, v10, &qword_E1DB50);
  sub_ABA6A0();
  v13 = [v11 contentView];
  v14 = [v13 clipsToBounds];

  if (v14)
  {
    sub_15F84(a1 + v12, v8, &qword_E1DB50);
    v15 = sub_ABA680();
    v16 = (*(*(v15 - 8) + 48))(v8, 1, v15);
    sub_12E1C(v8, &qword_E1DB50);
    if (v16 != 1)
    {
      v17 = [v11 contentView];
      [v17 setClipsToBounds:0];
    }
  }

  v18 = v44;
  if (*(v44 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated) == 1)
  {
    v43 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated;
    [v11 _setAllowsGroupFiltering:1];
    v19 = [v11 contentView];
    v20 = [v19 subviews];

    sub_13C80(0, &qword_E1E050);
    v21 = sub_AB9760();

    if (v21 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)); ; i = sub_ABB060())
    {
      v23 = v18 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
      swift_beginAccess();
      if (!i)
      {
        break;
      }

      v24 = 0;
      v25 = v21 & 0xC000000000000001;
      v26 = v21 & 0xFFFFFFFFFFFFFF8;
      v18 = &selRef_format;
      v45 = v21 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v25)
        {
          v27 = sub_ABAE20();
        }

        else
        {
          if (v24 >= *(v26 + 16))
          {
            goto LABEL_22;
          }

          v27 = *(v21 + 8 * v24 + 32);
        }

        v28 = v27;
        v29 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        type metadata accessor for SymbolButton.Label();
        if (([v28 v18[22]] & 1) == 0)
        {
          v30 = type metadata accessor for SymbolButton.Configuration(0);
          v31 = v23[*(v30 + 76)];
          if (v31 == 2)
          {
            v32 = &v23[*(v30 + 36)];
            v33 = v25;
            v34 = v21;
            v35 = i;
            v36 = v23;
            v37 = v18;
            v38 = v46;
            sub_15F84(v32, v46, &qword_E1DB50);
            v39 = sub_ABA680();
            LOBYTE(v31) = (*(*(v39 - 8) + 48))(v38, 1, v39) != 1;
            v40 = v38;
            v18 = v37;
            v23 = v36;
            i = v35;
            v21 = v34;
            v25 = v33;
            v26 = v45;
            sub_12E1C(v40, &qword_E1DB50);
          }

          [v28 setClipsToBounds:v31 & 1];
        }

        ++v24;
        if (v29 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_19:

    *(v44 + v43) = 0;
  }

  return sub_89A79C();
}

uint64_t sub_89A79C()
{
  v1 = v0;
  v2 = sub_ABA620();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SymbolButton.Configuration(0);
  v7 = __chkstk_darwin(v6);
  v36 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E080);
  __chkstk_darwin(v11 - 8);
  v13 = &v29 - v12;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v14 = [v0 traitCollection];
  v15 = [v14 userInterfaceIdiom];

  if (v15 == &dword_4 + 2)
  {
    *(&v40 + 1) = sub_AB4D90();
    v41 = &protocol witness table for UIHoverHighlightEffect;
    __swift_allocate_boxed_opaque_existential_0(&v39);
    sub_AB4CA0();
  }

  else
  {
    *(&v40 + 1) = sub_AB4D20();
    v41 = &protocol witness table for UIHoverLiftEffect;
    __swift_allocate_boxed_opaque_existential_0(&v39);
    sub_AB4C90();
  }

  sub_12E1C(&v42, &qword_E1E088);
  v42 = v39;
  v43 = v40;
  v44 = v41;
  sub_15F84(&v42, &v37, &qword_E1E088);
  if (v38)
  {
    v29 = v3;
    v30 = v2;
    v35 = v13;
    sub_70DF8(&v37, &v39);
    v33 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView];
    v32 = v41;
    v16 = __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
    v31 = &v29;
    __chkstk_darwin(v16);
    (*(v18 + 16))(&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_8A3C84(&v1[v19], v10, type metadata accessor for SymbolButton.Configuration);
    v34 = v6;
    v20 = *(v6 + 36);
    v21 = sub_ABA680();
    v22 = *(*(v21 - 8) + 48);
    if (v22(&v10[v20], 1, v21))
    {
      sub_8A1B6C(v10, type metadata accessor for SymbolButton.Configuration);
      sub_AB4CB0();
    }

    else
    {
      sub_ABA650();
      sub_8A1B6C(v10, type metadata accessor for SymbolButton.Configuration);
      [v1 bounds];
      sub_ABA610();
      (*(v29 + 8))(v5, v30);
    }

    v24 = v36;
    sub_8A3C84(&v1[v19], v36, type metadata accessor for SymbolButton.Configuration);
    if (v22((v24 + *(v34 + 36)), 1, v21))
    {
      v25 = 0;
    }

    else
    {
      v25 = sub_ABA5D0();
    }

    v26 = v35;
    sub_13C80(0, &qword_E1E090);
    sub_8A1B6C(v24, type metadata accessor for SymbolButton.Configuration);
    sub_AB9EE0(v25);
    sub_AB53B0();
    v27 = sub_AB53C0();
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    v28 = sub_AB9ED0();
    [v33 setHoverStyle:v28];

    sub_12E1C(&v42, &qword_E1E088);
    return __swift_destroy_boxed_opaque_existential_0(&v39);
  }

  else
  {
    sub_12E1C(&v37, &qword_E1E088);
    [v1 setHoverStyle:0];
    return sub_12E1C(&v42, &qword_E1E088);
  }
}

void sub_89B0B4(uint64_t a1)
{
  v2 = v1;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  [v2 setEffect:0];
  v6 = *a1;
  if (*a1 < 2uLL)
  {
    sub_13C80(0, &qword_E1E098);
    isa = sub_AB9740().super.isa;
    [v2 setBackgroundEffects:isa];

    if (*a1 == 1)
    {
LABEL_6:
      sub_13C80(0, &qword_E1E098);
      v8.super.isa = sub_AB9740().super.isa;
      [v2 setContentEffects:v8.super.isa];
      goto LABEL_12;
    }

    v5 = *(a1 + 8);
    if (!v5)
    {
      goto LABEL_4;
    }

LABEL_8:
    v12 = v5;
    v13 = [v2 backgroundEffects];
    sub_13C80(0, &qword_E1E098);
    v14 = sub_AB9760();

    sub_AB9730();
    if (*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v14 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    v15 = sub_AB9740().super.isa;

    [v2 setBackgroundEffects:v15];

    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF82B0;
  *(v9 + 32) = v6;
  sub_13C80(0, &qword_E1E098);
  v10 = v6;
  v11 = sub_AB9740().super.isa;

  [v2 setBackgroundEffects:v11];

  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (*a1 == 1)
  {
    goto LABEL_6;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_AF82B0;
  *(v16 + 32) = v4;
  sub_13C80(0, &qword_E1E098);
  v17 = v4;
  v8.super.isa = sub_AB9740().super.isa;

  [v2 setContentEffects:v8.super.isa];

LABEL_12:
  v18 = [v2 contentView];
  v19 = [v18 layer];

  [v19 setAllowsGroupBlending:0];
}

id sub_89B480(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_89B530(void *a1, double a2, uint64_t a3, NSString a4)
{
  v8 = [v4 layer];
  if (a4)
  {
    a4 = sub_AB9260();
  }

  [v8 setCompositingFilter:a4];

  swift_unknownObjectRelease();
  v9 = &v4[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  v10 = *&v4[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  v11 = *&v4[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration + 8];
  *v9 = a1;
  v9[1] = a2;
  if (!a1)
  {
    a1 = v10;
    if (!v10)
    {
      if (v11 == a2)
      {
        v14 = 0;
        goto LABEL_11;
      }

LABEL_10:
      sub_89B6F0();
      v14 = v10;
      goto LABEL_11;
    }

LABEL_9:
    v15 = a1;
    goto LABEL_10;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

  sub_13C80(0, &qword_E1AD80);
  v12 = a1;
  v16 = v10;
  v13 = sub_ABA790();

  v14 = v16;
  if ((v13 & 1) == 0 || v11 != a2)
  {
    goto LABEL_10;
  }

LABEL_11:
  v17 = v14;
}

void sub_89B6F0()
{
  v1 = &v0[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  v2 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  }

  else
  {
    v3 = [objc_opt_self() tintColor];
  }

  v4 = *(v1 + 1);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = objc_allocWithZone(UIColor);
  v11[4] = sub_8A437C;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_119878;
  v11[3] = &block_descriptor_279;
  v7 = _Block_copy(v11);
  v8 = v2;
  v9 = v3;
  v10 = [v6 initWithDynamicProvider:v7];
  _Block_release(v7);

  [v0 setBackgroundColor:v10];
}

id sub_89B850(uint64_t a1, id a2, double a3)
{
  v4 = [a2 resolvedColorWithTraitCollection:a1];
  [v4 alphaComponent];
  v6 = [v4 colorWithAlphaComponent:v5 * a3];

  return v6;
}

id sub_89B984(double *a1)
{
  if (*(a1 + 1))
  {
    v3 = sub_AB9260();
    v4 = objc_opt_self();
    v5 = [v4 _systemImageNamed:v3];

    if (!v5)
    {
      v6 = *(a1 + 2);
      v7 = sub_AB9260();
      v5 = [v4 imageNamed:v7 inBundle:v6];
    }
  }

  else
  {
    v5 = 0;
  }

  [v1 setImage:v5];

  v8 = [v1 layer];
  if (*(a1 + 12))
  {
    v9 = sub_AB9260();
  }

  else
  {
    v9 = 0;
  }

  [v8 setCompositingFilter:v9];

  swift_unknownObjectRelease();
  v10 = [v1 layer];
  [v10 setAllowsGroupOpacity:0];

  [v1 setTintColor:*(a1 + 14)];
  v11 = a1[13];

  return [v1 setAlpha:v11];
}

id sub_89BBC8(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SymbolButton.Label();
  v3 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v3 setLineBreakMode:5];
  v4 = v3;
  [v4 setNumberOfLines:1];
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor:v5];

  [v4 setAdjustsFontForContentSizeCategory:0];
  [v4 setClipsToBounds:0];

  [v4 _setTextColorFollowsTintColor:1];
  sub_89BD50(a1);
  sub_878CDC(a1);

  return v4;
}

id sub_89BD50(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v3 = sub_AB9260();
  }

  else
  {
    v3 = 0;
  }

  [v1 setText:v3];

  v4 = [v1 layer];
  if (*(a1 + 40))
  {
    v5 = sub_AB9260();
  }

  else
  {
    v5 = 0;
  }

  [v4 setCompositingFilter:v5];

  swift_unknownObjectRelease();
  v6 = [v1 layer];
  [v6 setAllowsGroupOpacity:0];

  [v1 setTintColor:*(a1 + 56)];
  [v1 setSizingRule:*(a1 + 72)];
  v7 = 0.0;
  if ((*(a1 + 64) & 1) == 0)
  {
    v7 = *(a1 + 48);
  }

  return [v1 setAlpha:v7];
}

void sub_89C304()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  [v1 bounds];
  v5 = OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration;
  sub_AB9EA0();
  sub_ABA530();
  v7 = v6;
  v9 = v8;
  [v1 frame];
  v11 = v10 - *&v1[v5];
  [v1 frame];
  v13 = v12 - *&v1[v5];
  v14 = *&v1[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView];
  [v14 setFrame:{v11, v13, v7, v9}];
  sub_ABA670();
  v15 = sub_ABA680();
  (*(*(v15 - 8) + 56))(v4, 0, 1, v15);
  sub_ABA6A0();
  v16 = [v1 superview];
  [v16 insertSubview:v14 belowSubview:v1];
}

Swift::Void __swiftcall SymbolButton.configureForToolbar(_:)(UITraitCollection a1)
{
  v2 = type metadata accessor for SymbolButton.Configuration(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v27 - v7;
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  v29 = v1;
  sub_8A3C84(v1 + v11, v8, type metadata accessor for SymbolButton.Configuration);
  if (qword_E16BF0 != -1)
  {
    swift_once();
  }

  v12 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v13 = qword_E73DF8;
  v14 = unk_E73E00;
  v15 = byte_E73E08;
  sub_8A3C84(v8, v5, type metadata accessor for SymbolButton.Configuration);
  v16 = *(v2 + 64);
  v28 = v2;
  v17 = &v5[v16];
  v18 = *&v5[v16 + 8];
  v19 = v13;
  v20 = v14;

  *v17 = v12;
  *(v17 + 1) = v13;
  *(v17 + 2) = v14;
  v17[24] = v15;
  v21 = UITraitCollection.supportedMaterials.getter();
  LOBYTE(v13) = sub_4731E0(1, v21);

  if (v13)
  {
    v22 = [objc_opt_self() labelColor];
    sub_8A1B6C(v8, type metadata accessor for SymbolButton.Configuration);
    v23 = *(v28 + 72);

    *&v5[v23] = v22;
    sub_3F9D0(*(v5 + 25), *(v5 + 26));
    *(v5 + 200) = xmmword_AF82C0;
    *(v5 + 27) = 0;
    *(v5 + 28) = 0;
  }

  else
  {
    sub_8A1B6C(v8, type metadata accessor for SymbolButton.Configuration);
  }

  sub_8A3CEC(v5, v10, type metadata accessor for SymbolButton.Configuration);
  v24 = v29;
  SymbolButton.setConfiguration(_:animation:updates:)(v10, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  sub_8A1B6C(v10, type metadata accessor for SymbolButton.Configuration);
  v25 = UITraitCollection.supportedMaterials.getter();
  v26 = sub_4731E0(1, v25);

  if (v26)
  {
    [v24 _setMonochromaticTreatment:2];
  }
}

double SymbolButton.Configuration.forBarButtonItem(_:)@<D0>(uint64_t a1@<X8>)
{
  if (qword_E16BF0 != -1)
  {
    swift_once();
  }

  v3 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v4 = qword_E73DF8;
  v5 = unk_E73E00;
  v6 = byte_E73E08;
  sub_8A3C84(v1, a1, type metadata accessor for SymbolButton.Configuration);
  v7 = type metadata accessor for SymbolButton.Configuration(0);
  v8 = a1 + *(v7 + 64);
  v9 = *(v8 + 8);
  v10 = v4;
  v11 = v5;

  *v8 = v3;
  *(v8 + 8) = v4;
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  v12 = UITraitCollection.supportedMaterials.getter();
  v13 = sub_4731E0(1, v12);

  if (v13)
  {
    v15 = [objc_opt_self() labelColor];
    v16 = *(v7 + 72);

    *(a1 + v16) = v15;
    sub_3F9D0(*(a1 + 200), *(a1 + 208));
    result = 0.0;
    *(a1 + 200) = xmmword_AF82C0;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
  }

  return result;
}

int64x2_t sub_89C99C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
  __chkstk_darwin(v0 - 8);
  v2 = v21 - v1;
  v3 = type metadata accessor for SymbolButton.Configuration(0);
  __swift_allocate_value_buffer(v3, static SymbolButton.Configuration.contextualAction);
  v4 = __swift_project_value_buffer(v3, static SymbolButton.Configuration.contextualAction);
  SymbolButton.Configuration.init()(v4);
  v24[0] = 0;
  v24[1] = 0;
  *&v23[7] = 0uLL;
  v25[0] = UIFontTextStyleSubheadline;
  v5 = UIFontTextStyleSubheadline;
  sub_12E1C(v24, &qword_E1DBB0);
  v6 = [objc_opt_self() currentTraitCollection];
  v7 = [v6 userInterfaceIdiom];

  v8 = v7 == &dword_4 + 2;
  if (v7 == &dword_4 + 2)
  {
    v9 = 5;
  }

  else
  {
    v9 = 6;
  }

  v10 = &UIFontTextStyleTitle3;
  if (!v8)
  {
    v10 = &UIFontTextStyleCallout;
  }

  v11 = *v10;
  sub_8A1B6C(v25, _s3__C9TextStyleVMa_0);
  v12 = *v4;
  v13 = *(v4 + 16);
  v14 = *(v4 + 48);
  v21[2] = *(v4 + 32);
  v21[3] = v14;
  v21[0] = v12;
  v21[1] = v13;
  v15 = *(v4 + 64);
  v16 = *(v4 + 80);
  v17 = *(v4 + 96);
  v22 = *(v4 + 112);
  v21[5] = v16;
  v21[6] = v17;
  v21[4] = v15;
  *v4 = xmmword_B28400;
  *(v4 + 16) = 0;
  *(v4 + 24) = v11;
  *(v4 + 32) = 0;
  *(v4 + 40) = 1;
  *(v4 + 48) = v9;
  *(v4 + 56) = 2;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = -1;
  v18 = *v23;
  *(v4 + 96) = *&v23[15];
  *(v4 + 104) = 0x3FF0000000000000;
  *(v4 + 81) = v18;
  *(v4 + 112) = 0;
  sub_878C88(v21);
  sub_ABA670();
  v19 = sub_ABA680();
  (*(*(v19 - 8) + 56))(v2, 0, 1, v19);
  sub_160B4(v2, v4 + *(v3 + 36), &qword_E1DB50);
  result = vdupq_n_s64(0x4040000000000000uLL);
  *(v4 + *(v3 + 52)) = result;
  return result;
}

uint64_t sub_89CC44(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

uint64_t sub_89CCC8()
{
  v0 = type metadata accessor for SymbolButton.Configuration(0);
  v1 = __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v1);
  v6 = &v21 - v5;
  __swift_allocate_value_buffer(v4, static SymbolButton.Configuration.barButtonContextualAction);
  v22 = __swift_project_value_buffer(v0, static SymbolButton.Configuration.barButtonContextualAction);
  if (qword_E16C08 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, static SymbolButton.Configuration.contextualAction);
  sub_8A3C84(v7, v6, type metadata accessor for SymbolButton.Configuration);
  v8 = [objc_opt_self() currentTraitCollection];
  if (qword_E16BF0 != -1)
  {
    swift_once();
  }

  v9 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v10 = qword_E73DF8;
  v11 = unk_E73E00;
  v12 = byte_E73E08;
  sub_8A3C84(v6, v3, type metadata accessor for SymbolButton.Configuration);
  v13 = &v3[*(v0 + 64)];
  v14 = *(v13 + 1);
  v15 = v10;
  v16 = v11;

  *v13 = v9;
  *(v13 + 1) = v10;
  *(v13 + 2) = v11;
  v13[24] = v12;
  v17 = UITraitCollection.supportedMaterials.getter();
  LOBYTE(v10) = sub_4731E0(1, v17);

  if (v10)
  {
    v18 = [objc_opt_self() labelColor];
    v19 = *(v0 + 72);

    *&v3[v19] = v18;
    sub_3F9D0(*(v3 + 25), *(v3 + 26));
    *(v3 + 200) = xmmword_AF82C0;
    *(v3 + 27) = 0;
    *(v3 + 28) = 0;
  }

  sub_8A3CEC(v3, v22, type metadata accessor for SymbolButton.Configuration);

  return sub_8A1B6C(v6, type metadata accessor for SymbolButton.Configuration);
}

uint64_t sub_89CFB8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for SymbolButton.Configuration(0);
  v6 = __swift_project_value_buffer(v5, a2);
  return sub_8A3C84(v6, a3, type metadata accessor for SymbolButton.Configuration);
}

char *SymbolButton.Configuration.adding(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v14 = *(a1 + 24);
  v12 = a1[5];
  v13 = a1[4];
  sub_8A3C84(v2, a2, type metadata accessor for SymbolButton.Configuration);
  v8 = a2[29];
  v10 = a2[31];
  v11 = a2[30];
  v19 = v6;
  v17 = v7;
  v18 = v5;
  v16 = *(a1 + 2);
  sub_15F84(&v19, v15, &qword_E1DBA8);
  sub_15F84(&v18, v15, &qword_E1DBA8);
  sub_15F84(&v17, v15, &qword_E1DBA8);
  sub_15F84(&v16, v15, &qword_E1DBB0);
  result = sub_3FA8C(v8, v11, v10);
  a2[29] = v6;
  a2[30] = v5;
  a2[31] = v7;
  a2[32] = v14;
  a2[33] = v13;
  a2[34] = v12;
  return result;
}

double SymbolButton.Configuration.removingMaterial()@<D0>(uint64_t a1@<X8>)
{
  sub_8A3C84(v1, a1, type metadata accessor for SymbolButton.Configuration);
  sub_3FA8C(*(a1 + 232), *(a1 + 240), *(a1 + 248));
  *(a1 + 232) = 1;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0;
  return result;
}

uint64_t SymbolButton.Configuration.adding(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_8A3C84(v5, a5, type metadata accessor for SymbolButton.Configuration);
  v11 = a5[25];
  v12 = a5[26];
  sub_8A1AF4(a1, a2);
  result = sub_3F9D0(v11, v12);
  a5[25] = a1;
  a5[26] = a2;
  a5[27] = a3;
  a5[28] = a4;
  return result;
}

double SymbolButton.Configuration.removingBackground()@<D0>(uint64_t a1@<X8>)
{
  sub_8A3C84(v1, a1, type metadata accessor for SymbolButton.Configuration);
  sub_3F9D0(*(a1 + 200), *(a1 + 208));
  result = 0.0;
  *(a1 + 200) = xmmword_AF82C0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  return result;
}

void SymbolButton.Configuration.withAccessibility(_:)(char a1@<W0>, void *a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_8A3C84(v5, a5, type metadata accessor for SymbolButton.Configuration);
  v11 = a5 + *(type metadata accessor for SymbolButton.Configuration(0) + 64);
  v12 = *(v11 + 8);
  v13 = a2;
  v14 = a3;

  *v11 = a1;
  *(v11 + 8) = a2;
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
}

uint64_t *SymbolButton.Background.tertiary.unsafeMutableAddressor()
{
  if (qword_E16C20 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.tertiary;
}

uint64_t SymbolButton.Configuration.forUberNavigationBar(withMaterial:background:groupName:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v50 = a7;
  v51 = a3;
  v48 = a6;
  v49 = a2;
  v52 = a4;
  v53 = a5;
  LODWORD(v56) = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
  __chkstk_darwin(v11 - 8);
  v55 = &v47 - v12;
  v13 = type metadata accessor for SymbolButton.Configuration(0);
  v14 = __chkstk_darwin(v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v47 - v17;
  v19 = [objc_opt_self() currentTraitCollection];
  if (qword_E16BF0 != -1)
  {
    swift_once();
  }

  v20 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v21 = qword_E73DF8;
  v22 = unk_E73E00;
  v23 = byte_E73E08;
  sub_8A3C84(v9, v18, type metadata accessor for SymbolButton.Configuration);
  v24 = *(v13 + 64);
  v54 = v13;
  v25 = &v18[v24];
  v26 = *&v18[v24 + 8];
  v27 = v21;
  v28 = v22;

  *v25 = v20;
  *(v25 + 1) = v21;
  *(v25 + 2) = v22;
  v25[24] = v23;
  v29 = UITraitCollection.supportedMaterials.getter();
  v30 = sub_4731E0(1, v29);

  if (v30)
  {
    v31 = [objc_opt_self() labelColor];

    v32 = v54;
    v33 = *(v54 + 72);

    *&v18[v33] = v31;
    sub_3F9D0(*(v18 + 25), *(v18 + 26));
    *(v18 + 200) = xmmword_AF82C0;
    *(v18 + 27) = 0;
    *(v18 + 28) = 0;
  }

  else
  {

    v32 = v54;
  }

  sub_8A3CEC(v18, a8, type metadata accessor for SymbolButton.Configuration);
  v34 = v55;
  sub_ABA670();
  v35 = sub_ABA680();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  sub_160B4(v34, a8 + *(v32 + 36), &qword_E1DB50);

  *(a8 + 280) = 0;
  *(a8 + 288) = 0;
  *(a8 + 296) = 0;
  if (v56)
  {
    v56 = [objc_opt_self() effectWithStyle:16];
    sub_8A3C84(a8, v16, type metadata accessor for SymbolButton.Configuration);
    v36 = *(v16 + 29);
    v37 = *(v16 + 30);
    v38 = *(v16 + 31);
    v39 = v50;

    sub_3FA8C(v36, v37, v38);
    *(v16 + 29) = v56;
    *(v16 + 30) = 0;
    *(v16 + 31) = 0;
    *(v16 + 32) = 2;
    *(v16 + 33) = v48;
    *(v16 + 34) = v39;
    sub_8A1B6C(a8, type metadata accessor for SymbolButton.Configuration);
    sub_8A3C84(v16, a8, type metadata accessor for SymbolButton.Configuration);
    sub_3F9D0(*(a8 + 200), *(a8 + 208));
    *(a8 + 200) = xmmword_AF82C0;
    *(a8 + 216) = 0;
    *(a8 + 224) = 0;
  }

  else
  {
    sub_8A3C84(a8, v16, type metadata accessor for SymbolButton.Configuration);
    sub_3FA8C(*(v16 + 29), *(v16 + 30), *(v16 + 31));
    *(v16 + 29) = 1;
    *(v16 + 15) = 0u;
    *(v16 + 16) = 0u;
    *(v16 + 34) = 0;
    sub_8A1B6C(a8, type metadata accessor for SymbolButton.Configuration);
    sub_8A3C84(v16, a8, type metadata accessor for SymbolButton.Configuration);
    v40 = *(a8 + 200);
    v41 = *(a8 + 208);
    v42 = v49;
    v44 = v51;
    v43 = v52;
    v45 = v53;
    sub_8A1AF4(v49, v51);
    sub_3F9D0(v40, v41);
    *(a8 + 200) = v42;
    *(a8 + 208) = v44;
    *(a8 + 216) = v43;
    *(a8 + 224) = v45;
  }

  return sub_8A1B6C(v16, type metadata accessor for SymbolButton.Configuration);
}

uint64_t SymbolButton.Configuration.forPromotionalParallaxNavigationBar(withMaterial:background:backgroundAlpha:groupName:)@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v50 = a7;
  v51 = a8;
  v58 = a1;
  v59 = a6;
  v53 = a5;
  v54 = a3;
  v55 = a4;
  v52 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
  __chkstk_darwin(v12 - 8);
  v57 = &v49 - v13;
  v14 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v20 = [objc_opt_self() currentTraitCollection];
  if (qword_E16BF0 != -1)
  {
    swift_once();
  }

  v21 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v23 = qword_E73DF8;
  v22 = unk_E73E00;
  v24 = byte_E73E08;
  sub_8A3C84(v10, v19, type metadata accessor for SymbolButton.Configuration);
  v25 = &v19[*(v14 + 64)];
  v56 = v14;
  v26 = *(v25 + 1);
  v27 = v23;
  v28 = v22;

  *v25 = v21;
  *(v25 + 1) = v23;
  *(v25 + 2) = v22;
  v25[24] = v24;
  v29 = UITraitCollection.supportedMaterials.getter();
  v30 = sub_4731E0(1, v29);

  v31 = &unk_AF8000;
  if (v30)
  {
    v32 = [objc_opt_self() labelColor];

    v33 = v56;
    v34 = *(v56 + 72);

    *&v19[v34] = v32;
    sub_3F9D0(*(v19 + 25), *(v19 + 26));
    *(v19 + 200) = xmmword_AF82C0;
    *(v19 + 27) = 0;
    *(v19 + 28) = 0;
  }

  else
  {

    v33 = v56;
  }

  sub_8A3CEC(v19, a9, type metadata accessor for SymbolButton.Configuration);
  v35 = v57;
  sub_ABA670();
  v36 = sub_ABA680();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  sub_160B4(v35, a9 + *(v33 + 36), &qword_E1DB50);

  *(a9 + 280) = 0;
  *(a9 + 288) = 0;
  *(a9 + 296) = 0;
  if (v58)
  {
    v37 = [objc_opt_self() effectWithStyle:16];
    sub_8A3C84(a9, v16, type metadata accessor for SymbolButton.Configuration);
    v38 = *(v16 + 29);
    v39 = *(v16 + 30);
    v40 = *(v16 + 31);
    v41 = v51;

    sub_3FA8C(v38, v39, v40);
    *(v16 + 29) = v37;
    *(v16 + 30) = 0;
    *(v16 + 31) = 0;
    *(v16 + 32) = 2;
    *(v16 + 33) = v50;
    *(v16 + 34) = v41;
    v31 = &unk_AF8000;
  }

  else
  {
    sub_8A3C84(a9, v16, type metadata accessor for SymbolButton.Configuration);
    sub_3FA8C(*(v16 + 29), *(v16 + 30), *(v16 + 31));
    *(v16 + 29) = 1;
    *(v16 + 15) = 0u;
    *(v16 + 16) = 0u;
    *(v16 + 34) = 0;
  }

  sub_2580A4(v16, a9);
  sub_8A3C84(a9, v16, type metadata accessor for SymbolButton.Configuration);
  v42 = *(v16 + 25);
  v43 = *(v16 + 26);
  if (v59)
  {
    sub_3F9D0(*(v16 + 25), *(v16 + 26));
    *(v16 + 200) = v31[44];
    *(v16 + 27) = 0;
    *(v16 + 28) = 0;
  }

  else
  {
    v44 = v55;

    v45 = v52;
    v46 = v52;
    sub_3F9D0(v42, v43);
    v47 = v54;
    *(v16 + 25) = v53;
    *(v16 + 26) = v45;
    *(v16 + 27) = v47;
    *(v16 + 28) = v44;
  }

  return sub_2580A4(v16, a9);
}

void *SymbolButton.Background.withAlpha(_:)(void *a1)
{

  v2 = a1;
  return a1;
}

uint64_t SymbolButton.Configuration.withAlpha(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_8A3C84(v2, a1, type metadata accessor for SymbolButton.Configuration);
  result = type metadata accessor for SymbolButton.Configuration(0);
  *(a1 + *(result + 68)) = a2;
  return result;
}

id sub_89DDC4()
{
  result = [objc_opt_self() secondarySystemFillColor];
  static SymbolButton.Background.secondary = 0x3FF0000000000000;
  qword_E73E68 = result;
  qword_E73E70 = 0;
  qword_E73E78 = 0;
  return result;
}

uint64_t *SymbolButton.Background.secondary.unsafeMutableAddressor()
{
  if (qword_E16C18 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.secondary;
}

uint64_t static SymbolButton.Background.secondary.getter()
{
  if (qword_E16C18 != -1)
  {
    swift_once();
  }

  v0 = qword_E73E68;
  v1 = qword_E73E68;

  return v0;
}

id sub_89DEE8()
{
  result = [objc_opt_self() tertiarySystemFillColor];
  static SymbolButton.Background.tertiary = 0x3FF0000000000000;
  qword_E73E88 = result;
  qword_E73E90 = 0;
  qword_E73E98 = 0;
  return result;
}

uint64_t static SymbolButton.Background.tertiary.getter()
{
  if (qword_E16C20 != -1)
  {
    swift_once();
  }

  v0 = qword_E73E88;
  v1 = qword_E73E88;

  return v0;
}

id sub_89DFBC()
{
  if (qword_E16C20 != -1)
  {
    swift_once();
  }

  static SymbolButton.Background.normal = static SymbolButton.Background.tertiary;
  *&qword_E73EA8 = *&qword_E73E88;
  qword_E73EB8 = qword_E73E98;
  v1 = qword_E73E88;

  return v1;
}

uint64_t static SymbolButton.Background.normal.getter()
{
  if (qword_E16C28 != -1)
  {
    swift_once();
  }

  v0 = qword_E73EA8;
  v1 = qword_E73EA8;

  return v0;
}

id sub_89E0DC()
{
  if (qword_E16C18 != -1)
  {
    swift_once();
  }

  static SymbolButton.Background.highlighted = static SymbolButton.Background.secondary;
  *&qword_E73EC8 = *&qword_E73E68;
  qword_E73ED8 = qword_E73E78;
  v1 = qword_E73E68;

  return v1;
}

uint64_t static SymbolButton.Background.highlighted.getter()
{
  if (qword_E16C30 != -1)
  {
    swift_once();
  }

  v0 = qword_E73EC8;
  v1 = qword_E73EC8;

  return v0;
}

id sub_89E1FC()
{
  result = [objc_opt_self() effectWithStyle:7];
  qword_E73EE8 = 0;
  qword_E73EF0 = 0;
  static SymbolButton.Material.xr = result;
  byte_E73EF8 = 2;
  qword_E73F00 = 0;
  unk_E73F08 = 0;
  return result;
}

uint64_t static SymbolButton.Material.xr.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_E16C38 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v1 = static SymbolButton.Material.xr;
  v2 = qword_E73EE8;
  v3 = qword_E73EF0;
  v4 = byte_E73EF8;
  v5 = qword_E73F00;
  v6 = unk_E73F08;
  *a1 = static SymbolButton.Material.xr;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  v7 = v1;
  v8 = v2;
  v9 = v3;
}

uint64_t sub_89E2F4()
{
  v0 = sub_ABA680();
  __swift_allocate_value_buffer(v0, static UIView.Corner.capsule);
  __swift_project_value_buffer(v0, static UIView.Corner.capsule);
  return sub_ABA670();
}

uint64_t sub_89E364()
{
  v0 = sub_ABA680();
  __swift_allocate_value_buffer(v0, static UIView.Corner.roundedRect);
  __swift_project_value_buffer(v0, static UIView.Corner.roundedRect);
  return sub_ABA600();
}

id SymbolButton.withProvider(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D170);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = &v12[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider];
  swift_beginAccess();
  v8 = *v7;
  *v7 = a1;
  v7[1] = a2;

  sub_17654(v8);
  v9 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  SymbolButton.updateConfigurationIfNeeded(_:animation:)(v6, 0, 0, 0, 1);
  sub_12E1C(v6, &qword_E1D170);
  v10 = v12;

  return v10;
}

id SymbolButton.withConfiguration(_:)(uint64_t a1)
{
  v2 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v2 - 8);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8A3C84(a1, v4, type metadata accessor for SymbolButton.Configuration);
  SymbolButton.setConfiguration(_:animation:updates:)(v4, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  sub_8A1B6C(v4, type metadata accessor for SymbolButton.Configuration);
  v5 = v7[1];

  return v5;
}

id sub_89E65C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_13C80(0, &qword_E1E070);
  v2 = sub_AB9760();

  v3 = v1(v2);

  return v3;
}

BOOL _s11MusicCoreUI12SymbolButtonC0D0V23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_ABB3C0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    sub_13C80(0, &qword_E1E0A8);
    v9 = v8;
    v10 = v7;
    v11 = sub_ABA790();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v12 = sub_AB92A0();
  v14 = v13;
  if (v12 == sub_AB92A0() && v14 == v15)
  {
  }

  else
  {
    v16 = sub_ABB3C0();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v18 = *(a1 + 80);
  v19 = *(a2 + 80);
  if (v18 == 255)
  {
    if (v19 != 255)
    {
      return 0;
    }
  }

  else
  {
    v20 = *(a2 + 64);
    v33 = *(a1 + 64);
    v34 = v18;
    if (v19 == 255)
    {
      return 0;
    }

    v31 = v20;
    v32 = v19 & 1;
    _s3__C8UIOffsetVMa_0(0);
    v22 = v21;
    sub_8A3D54(&qword_E1E0A0, _s3__C8UIOffsetVMa_0);
    if ((static DisplayUnit.__derived_enum_equals(_:_:)(&v33, &v31, v22) & 1) == 0)
    {
      return 0;
    }
  }

  v23 = *(a1 + 96);
  v24 = *(a2 + 96);
  if (v23)
  {
    if (!v24 || (*(a1 + 88) != *(a2 + 88) || v23 != v24) && (sub_ABB3C0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (*(a1 + 104) == *(a2 + 104))
  {
    v25 = *(a1 + 112);
    v26 = *(a2 + 112);
    if (v25)
    {
      if (!v26)
      {
        return 0;
      }

      sub_13C80(0, &qword_E1AD80);
      v27 = v26;
      v28 = v25;
      v29 = sub_ABA790();

      return (v29 & 1) != 0;
    }

    if (!v26)
    {
      return 1;
    }
  }

  return 0;
}

BOOL _s11MusicCoreUI12SymbolButtonC10BackgroundV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  if (a7 != a8)
  {
    return 0;
  }

  if (a1)
  {
    if (!a4)
    {
      return 0;
    }

    v9 = a2;
    v10 = a3;
    v11 = a6;
    v12 = a5;
    sub_13C80(0, &qword_E1AD80);
    v14 = a4;
    v15 = a1;
    v16 = sub_ABA790();

    a2 = v9;
    a3 = v10;
    a5 = v12;
    a6 = v11;
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  if (a3)
  {
    return a6 && (a2 == a5 && a3 == a6 || (sub_ABB3C0() & 1) != 0);
  }

  return !a6;
}

uint64_t _s11MusicCoreUI12SymbolButtonC10CustomViewV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_13C80(0, &unk_E1E040);
  if ((sub_ABA790() & 1) != 0 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    v5 = v4 && *(a1 + 32) == *(a2 + 32);
    if (v5 && *(a1 + 40) == *(a2 + 40))
    {
      v6 = *(a1 + 48);
      v7 = *(a2 + 48);
      if (v6)
      {
        if (v7)
        {
          sub_13C80(0, &qword_E1AD80);
          v8 = v7;
          v9 = v6;
          v10 = sub_ABA790();

          if (v10)
          {
            return 1;
          }
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _s11MusicCoreUI12SymbolButtonC13ConfigurationV13AccessibilityV23__derived_struct_equalsySbAG_AGtFZ_0(int a1, uint64_t a2, uint64_t a3, char a4, int a5, void *a6, void *a7, char a8)
{
  if ((a1 ^ a5))
  {
    return 0;
  }

  if (a2)
  {
    if (!a6)
    {
      goto LABEL_17;
    }

    v10 = a3;
    v11 = a7;
    v12 = a4;
    v13 = a8;
    v14 = sub_AB92A0();
    v16 = v15;
    if (v14 == sub_AB92A0() && v16 == v17)
    {

      a8 = v13;
      a4 = v12;
      a7 = v11;
      a3 = v10;
    }

    else
    {
      v18 = sub_ABB3C0();

      a8 = v13;
      a4 = v12;
      a7 = v11;
      a3 = v10;
      if ((v18 & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (a6)
  {
    goto LABEL_17;
  }

  if (a3)
  {
    if (a7)
    {
      v19 = a4;
      v20 = a8;
      v21 = a7;
      v22 = sub_AB92A0();
      v24 = v23;
      if (v22 == sub_AB92A0() && v24 == v25)
      {

        a8 = v20;
        a4 = v19;
LABEL_20:
        v26 = a4 ^ a8 ^ 1;
        return v26 & 1;
      }

      v27 = sub_ABB3C0();

      a8 = v20;
      a4 = v19;
      if (v27)
      {
        goto LABEL_20;
      }
    }
  }

  else if (!a7)
  {
    goto LABEL_20;
  }

LABEL_17:
  v26 = 0;
  return v26 & 1;
}

BOOL _s11MusicCoreUI12SymbolButtonC5TitleV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_ABB3C0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = sub_AB92A0();
  v9 = v8;
  if (v7 == sub_AB92A0() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_ABB3C0();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v13 = *(a1 + 40);
  v14 = *(a2 + 40);
  if (v13)
  {
    if (!v14 || (*(a1 + 32) != *(a2 + 32) || v13 != v14) && (sub_ABB3C0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v15 = *(a1 + 56);
  v16 = *(a2 + 56);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (!v16)
  {
    return 0;
  }

  sub_13C80(0, &qword_E1AD80);
  v17 = v16;
  v18 = v15;
  v19 = sub_ABA790();

  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  if ((*(a1 + 64) ^ *(a2 + 64)))
  {
    return 0;
  }

  return *(a1 + 72) == *(a2 + 72);
}

BOOL _s11MusicCoreUI12SymbolButtonC8MaterialV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_13C80(0, &qword_E1E098);
    v6 = v5;
    v7 = v4;
    v8 = sub_ABA790();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    sub_13C80(0, &qword_E1E098);
    v11 = v10;
    v12 = v9;
    v13 = sub_ABA790();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  v15 = *(a2 + 16);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    sub_13C80(0, &qword_E1E098);
    v16 = v15;
    v17 = v14;
    v18 = sub_ABA790();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v19 = *(a1 + 24);
  v20 = *(a2 + 24);
  if (v19 == 2)
  {
    if (v20 != 2)
    {
      return 0;
    }

    goto LABEL_21;
  }

  result = 0;
  if (v20 != 2 && ((v20 ^ v19) & 1) == 0)
  {
LABEL_21:
    v22 = *(a1 + 40);
    v23 = *(a2 + 40);
    if (v22)
    {
      return v23 && (*(a1 + 32) == *(a2 + 32) && v22 == v23 || (sub_ABB3C0() & 1) != 0);
    }

    return !v23;
  }

  return result;
}

BOOL _s11MusicCoreUI12SymbolButtonC5BadgeV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  if (a3 != a5 || a4 != a6)
  {
    return 0;
  }

  if (a1)
  {
    if (a2)
    {
      sub_13C80(0, &qword_E1AD80);
      v10 = a2;
      v11 = a1;
      v12 = sub_ABA790();

      if (v12)
      {
        return 1;
      }
    }

    return 0;
  }

  return !a2;
}

uint64_t sub_89F1A0(void **a1, void **a2)
{
  v4 = sub_ABA680();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E175C8);
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  v48 = a1;
  v14 = *a1;
  v15 = a2;
  v16 = *a2;
  if (v14)
  {
    if (!v16)
    {
      goto LABEL_24;
    }

    sub_13C80(0, &unk_E1DF00);
    v17 = v16;
    v18 = v14;
    v19 = sub_ABA790();

    if ((v19 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v16)
  {
    goto LABEL_24;
  }

  v47 = type metadata accessor for SymbolButton.Metrics(0);
  v20 = *(v47 + 20);
  v21 = *(v11 + 48);
  sub_15F84(v48 + v20, v13, &qword_E1DB50);
  v22 = v15 + v20;
  v23 = v15;
  sub_15F84(v22, &v13[v21], &qword_E1DB50);
  v24 = *(v5 + 48);
  if (v24(v13, 1, v4) == 1)
  {
    if (v24(&v13[v21], 1, v4) == 1)
    {
      sub_12E1C(v13, &qword_E1DB50);
      goto LABEL_13;
    }

LABEL_11:
    sub_12E1C(v13, &qword_E175C8);
    goto LABEL_24;
  }

  sub_15F84(v13, v10, &qword_E1DB50);
  if (v24(&v13[v21], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_11;
  }

  (*(v5 + 32))(v7, &v13[v21], v4);
  sub_8A3D54(&qword_E175D0, &type metadata accessor for UIView.Corner);
  v25 = sub_AB91C0();
  v26 = *(v5 + 8);
  v26(v7, v4);
  v26(v10, v4);
  v23 = v15;
  sub_12E1C(v13, &qword_E1DB50);
  if ((v25 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_13:
  sub_13C80(0, &unk_E1E040);
  v28 = v47;
  v27 = v48;
  if ((sub_ABA790() & 1) == 0 || (sub_ABA790() & 1) == 0)
  {
    goto LABEL_24;
  }

  v29 = v28[8];
  v30 = *(v27 + v29);
  v31 = *(v23 + v29);
  v32 = 0;
  if (v30 == v31)
  {
    v33 = v28[9];
    v34 = v27 + v33;
    v35 = *(v27 + v33);
    v36 = (v23 + v33);
    if (v35 == *v36 && *(v34 + 8) == v36[1])
    {
      v32 = 0;
      v37 = v28[10];
      v38 = v27 + v37;
      v39 = *(v27 + v37);
      v40 = (v23 + v37);
      if (v39 == *v40 && *(v38 + 8) == v40[1])
      {
        v41 = v28[11];
        v42 = (v27 + v41);
        v43 = *(v27 + v41 + 16);
        v44 = (v23 + v41);
        v45 = *(v23 + v41 + 16);
        if (v43)
        {
          if ((v45 & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_28:
          v32 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v27 + v28[12]), *(v23 + v28[12])), vceqq_f64(*(v27 + v28[12] + 16), *(v23 + v28[12] + 16)))));
          return v32 & 1;
        }

        if (v45)
        {
LABEL_24:
          v32 = 0;
          return v32 & 1;
        }

        v32 = 0;
        if (*v42 == *v44 && v42[1] == v44[1])
        {
          goto LABEL_28;
        }
      }
    }
  }

  return v32 & 1;
}

uint64_t _s11MusicCoreUI12SymbolButtonC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, __int128 *a2)
{
  v4 = sub_ABA680();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
  __chkstk_darwin(v8 - 8);
  v10 = &v139 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E175C8);
  __chkstk_darwin(v11);
  v13 = (&v139 - v12);
  v14 = *(a1 + 80);
  v163[4] = *(a1 + 64);
  v163[5] = v14;
  v163[6] = *(a1 + 96);
  v164 = *(a1 + 112);
  v15 = *(a1 + 16);
  v163[0] = *a1;
  v163[1] = v15;
  v16 = *(a1 + 48);
  v163[2] = *(a1 + 32);
  v163[3] = v16;
  v17 = *a2;
  v18 = a2[1];
  v19 = a2[3];
  v165[2] = a2[2];
  v165[3] = v19;
  v165[0] = v17;
  v165[1] = v18;
  v20 = a2[4];
  v21 = a2[5];
  v22 = a2[6];
  v166 = *(a2 + 14);
  v165[5] = v21;
  v165[6] = v22;
  v165[4] = v20;
  if (!_s11MusicCoreUI12SymbolButtonC0D0V23__derived_struct_equalsySbAE_AEtFZ_0(v163, v165))
  {
    return 0;
  }

  v23 = *(a1 + 136);
  v24 = *(a1 + 168);
  v161[2] = *(a1 + 152);
  v161[3] = v24;
  v25 = *(a1 + 184);
  v161[0] = *(a1 + 120);
  v161[1] = v23;
  v26 = *(a2 + 136);
  v27 = *(a2 + 168);
  v162[2] = *(a2 + 152);
  v162[3] = v27;
  v162[4] = *(a2 + 184);
  v28 = *(a2 + 120);
  v162[1] = v26;
  v161[4] = v25;
  v162[0] = v28;
  if (!_s11MusicCoreUI12SymbolButtonC5TitleV23__derived_struct_equalsySbAE_AEtFZ_0(v161, v162))
  {
    return 0;
  }

  v146 = v10;
  v147 = v11;
  v149 = v5;
  v150 = v13;
  v145 = v7;
  v148 = v4;
  v29 = *(a1 + 200);
  v30 = *(a1 + 208);
  v31 = *(a1 + 224);
  v32 = *(a2 + 25);
  v33 = *(a2 + 26);
  v35 = *(a2 + 27);
  v34 = *(a2 + 28);
  if (v30 == &dword_0 + 1)
  {
    if (v33 == &dword_0 + 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    sub_8A1AF4(*(a2 + 25), *(a2 + 26));
    sub_8A1AF4(v29, v30);
    sub_3F9D0(v29, v30);
    sub_3F9D0(v32, v33);
    return 0;
  }

  if (v33 == &dword_0 + 1)
  {
    goto LABEL_7;
  }

  v36 = *(a2 + 25);
  v37 = *(a1 + 216);
  sub_8A1AF4(v36, *(a2 + 26));
  sub_8A1AF4(v29, v30);
  v38 = _s11MusicCoreUI12SymbolButtonC10BackgroundV23__derived_struct_equalsySbAE_AEtFZ_0(v30, v37, v31, v33, v35, v34, *&v29, *&v36);

  sub_3F9D0(v29, v30);
  if (!v38)
  {
    return 0;
  }

LABEL_9:
  v40 = *(a1 + 232);
  v39 = *(a1 + 240);
  v41 = *(a1 + 248);
  v42 = *(a1 + 256);
  v44 = *(a1 + 264);
  v43 = *(a1 + 272);
  v46 = *(a2 + 29);
  v45 = *(a2 + 30);
  v48 = *(a2 + 31);
  v47 = *(a2 + 32);
  v49 = *(a2 + 33);
  v50 = *(a2 + 34);
  if (v40 == &dword_0 + 1)
  {
    if (v46 == &dword_0 + 1)
    {
      goto LABEL_17;
    }

LABEL_13:
    v51 = *(a2 + 29);
    v52 = *(a1 + 240);
    v53 = *(a2 + 30);
    v143 = *(a2 + 32);
    v144 = v45;
    v54 = v41;
    v55 = v48;
    v142 = v49;
    sub_8A42E4(v51, v53, v48);
    sub_8A42E4(v40, v52, v54);
    sub_3FA8C(v40, v52, v54);
    sub_3FA8C(v46, v144, v55);
    return 0;
  }

  if (v46 == &dword_0 + 1)
  {
    goto LABEL_13;
  }

  v157[0] = *(a2 + 29);
  v157[1] = v45;
  v157[2] = v48;
  v158 = v47;
  v159 = v49;
  v160 = v50;
  v153[0] = v40;
  v153[1] = v39;
  v153[2] = v41;
  v154 = v42;
  v155 = v44;
  v156 = v43;
  v140 = v48;
  v141 = v39;
  v144 = v45;
  v57 = v41;
  sub_8A42E4(v46, v45, v48);
  sub_8A42E4(v40, v141, v57);
  LODWORD(v143) = _s11MusicCoreUI12SymbolButtonC8MaterialV23__derived_struct_equalsySbAE_AEtFZ_0(v153, v157);

  sub_3FA8C(v40, v141, v57);
  if ((v143 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v58 = *(a1 + 296);
  v59 = *(a2 + 37);
  if (v58)
  {
    v60 = v150;
    if (!v59)
    {
      return 0;
    }

    v61 = *(a1 + 280);
    v62 = *(a1 + 288);
    v63 = *(a2 + 35);
    v64 = *(a2 + 36);
    v65 = v59;
    LOBYTE(v152[0]) = v64 & 1;
    v66 = static UIView.Border.__derived_struct_equals(_:_:)(v61, v62 & 1, v58, v63, v64 & 1);

    if ((v66 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v60 = v150;
    if (v59)
    {
      return 0;
    }
  }

  v67 = type metadata accessor for SymbolButton.Configuration(0);
  v68 = *(v67 + 36);
  v69 = *(v147 + 48);
  sub_15F84(a1 + v68, v60, &qword_E1DB50);
  sub_15F84(a2 + v68, v60 + v69, &qword_E1DB50);
  v70 = v148;
  v71 = *(v149 + 48);
  if (v71(v60, 1, v148) == 1)
  {
    if (v71(v60 + v69, 1, v70) == 1)
    {
      sub_12E1C(v60, &qword_E1DB50);
      goto LABEL_29;
    }

LABEL_27:
    sub_12E1C(v60, &qword_E175C8);
    return 0;
  }

  v72 = v146;
  sub_15F84(v60, v146, &qword_E1DB50);
  if (v71(v60 + v69, 1, v70) == 1)
  {
    (*(v149 + 8))(v72, v70);
    goto LABEL_27;
  }

  v150 = v67;
  v73 = v149;
  v74 = v60 + v69;
  v75 = v145;
  (*(v149 + 32))(v145, v74, v70);
  sub_8A3D54(&qword_E175D0, &type metadata accessor for UIView.Corner);
  v76 = sub_AB91C0();
  v77 = *(v73 + 8);
  v77(v75, v70);
  v77(v72, v70);
  v67 = v150;
  sub_12E1C(v60, &qword_E1DB50);
  if ((v76 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v150 = v67;
  v78 = *(v67 + 40);
  v80 = *(a1 + v78);
  v79 = *(a1 + v78 + 8);
  v82 = *(a1 + v78 + 16);
  v81 = *(a1 + v78 + 24);
  v84 = *(a1 + v78 + 32);
  v83 = *(a1 + v78 + 40);
  v85 = *(a1 + v78 + 48);
  v86 = a2 + v78;
  v88 = *v86;
  v87 = *(v86 + 8);
  v90 = *(v86 + 16);
  v89 = *(v86 + 24);
  v92 = *(v86 + 32);
  v91 = *(v86 + 40);
  v93 = *(v86 + 48);
  if (!v80)
  {
    if (!v88)
    {
      v142 = *(v86 + 16);
      v143 = v87;
      v144 = v89;
      v139 = v92;
      v140 = v91;
      v108 = v83;
      v109 = v85;
      sub_7AFD44(0, v79, v82, v81, v84, v83, v85);
      sub_7AFD44(0, v143, v142, v144, v139, v140, v93);
      sub_7A5818(0, v79, v82, v81, v84, v108, v109);
      goto LABEL_36;
    }

LABEL_34:
    v100 = v79;
    v146 = v79;
    v147 = v82;
    v101 = v87;
    v102 = v82;
    v103 = v90;
    v104 = v89;
    v148 = v84;
    v149 = v83;
    v105 = v92;
    v106 = v84;
    v107 = v91;
    v145 = v85;
    sub_7AFD44(v80, v100, v102, v81, v106, v83, v85);
    sub_7AFD44(v88, v101, v103, v104, v105, v107, v93);
    sub_7A5818(v80, v146, v147, v81, v148, v149, v145);
    sub_7A5818(v88, v101, v103, v104, v105, v107, v93);
    return 0;
  }

  if (!v88)
  {
    goto LABEL_34;
  }

  v152[0] = *v86;
  v152[1] = v87;
  v152[2] = v90;
  v152[3] = v89;
  v152[4] = v92;
  v152[5] = v91;
  v152[6] = v93;
  v151[0] = v80;
  v151[1] = v79;
  v151[2] = v82;
  v151[3] = v81;
  v151[4] = v84;
  v151[5] = v83;
  v151[6] = v85;
  v146 = v79;
  v147 = v82;
  v142 = v90;
  v143 = v87;
  v94 = v79;
  v95 = v82;
  v141 = v81;
  v144 = v89;
  v145 = v85;
  v148 = v84;
  v149 = v83;
  v96 = v92;
  v97 = v91;
  sub_7AFD44(v80, v94, v95, v81, v84, v83, v85);
  v99 = v142;
  v98 = v143;
  sub_7AFD44(v88, v143, v142, v144, v96, v97, v93);
  LODWORD(v140) = _s11MusicCoreUI12SymbolButtonC10CustomViewV23__derived_struct_equalsySbAE_AEtFZ_0(v151, v152);
  sub_7A5818(v88, v98, v99, v144, v96, v97, v93);
  sub_7A5818(v80, v146, v147, v141, v148, v149, v145);
  if ((v140 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  v110 = v150;
  v111 = v150[11];
  v112 = (a1 + v111);
  v113 = *(a1 + v111 + 16);
  v114 = a2 + v111;
  v115 = *(v114 + 16);
  if (v113 == &dword_0 + 1)
  {
    if (v115 != &dword_0 + 1)
    {
      return 0;
    }
  }

  else
  {
    if (v115 == &dword_0 + 1)
    {
      return 0;
    }

    result = 0;
    v124 = *v112;
    v125 = *v114;
    if (*v112 != *v114)
    {
      return result;
    }

    v126 = v112[1];
    v127 = *(v114 + 8);
    if (*&v126 != *&v127)
    {
      return result;
    }

    if (v113)
    {
      if (!v115)
      {
        return 0;
      }

      sub_13C80(0, &qword_E1AD80);
      sub_8A1B3C(v125, v127, v115);
      sub_8A1B3C(v124, v126, v113);
      v128 = sub_ABA790();
      sub_7AFD34(v124, v126, v113);
      sub_7AFD34(v125, v127, v115);
      v110 = v150;
      if ((v128 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v110 = v150;
      if (v115)
      {
        return 0;
      }
    }
  }

  if (*(a1 + v110[12]) != *(a2 + v110[12]))
  {
    return 0;
  }

  result = 0;
  v116 = v110[13];
  v117 = a1 + v116;
  v118 = *(a1 + v116);
  v119 = (a2 + v116);
  if (v118 == *v119 && *(v117 + 8) == v119[1])
  {
    v120 = v150[14];
    v121 = (a1 + v120);
    v122 = *(a1 + v120 + 16);
    v123 = a2 + v120;
    if (v122)
    {
      if ((*(v123 + 16) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_56;
    }

    if (*(v123 + 16))
    {
      return 0;
    }

    result = 0;
    if (*v121 == *v123 && v121[1] == *(v123 + 8))
    {
LABEL_56:
      if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + v150[15]), *(a2 + v150[15])), vceqq_f64(*(a1 + v150[15] + 16), *(a2 + v150[15] + 16))))))
      {
        v129 = v150[16];
        if ((_s11MusicCoreUI12SymbolButtonC13ConfigurationV13AccessibilityV23__derived_struct_equalsySbAG_AGtFZ_0(*(a1 + v129), *(a1 + v129 + 8), *(a1 + v129 + 16), *(a1 + v129 + 24), *(a2 + v129), *(a2 + v129 + 8), *(a2 + v129 + 16), *(a2 + v129 + 24)) & 1) != 0 && *(a1 + v150[17]) == *(a2 + v150[17]))
        {
          v130 = v150[18];
          v131 = *(a1 + v130);
          v132 = *(a2 + v130);
          if (v131)
          {
            if (v132)
            {
              sub_13C80(0, &qword_E1AD80);
              v133 = v132;
              v134 = v131;
              v135 = sub_ABA790();

              if (v135)
              {
LABEL_64:
                v136 = v150[19];
                v137 = *(a1 + v136);
                v138 = *(a2 + v136);
                if (v137 == 2)
                {
                  if (v138 == 2)
                  {
                    return 1;
                  }
                }

                else if (v138 != 2 && ((v138 ^ v137) & 1) == 0)
                {
                  return 1;
                }
              }
            }
          }

          else if (!v132)
          {
            goto LABEL_64;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

UIFontTextStyle sub_8A0228@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = UIFontTextStyleSubheadline;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = xmmword_B283E0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x3FF0000000000000;
  *(a1 + 112) = 0;
  return UIFontTextStyleSubheadline;
}

char *sub_8A0278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v60 = a2;
  v62 = a1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
  __chkstk_darwin(v5 - 8);
  v58 = &v57 - v6;
  v59 = type metadata accessor for SymbolButton.Metrics(0);
  v7 = *(v59 - 8);
  __chkstk_darwin(v59);
  v63 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler];
  *v11 = 0;
  v11[1] = 0;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment] = 0;
  *&v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount] = 0;
  *&v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize] = vdupq_n_s64(0x4040000000000000uLL);
  v12 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu];
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView;
  *&v4[v13] = [objc_allocWithZone(UIView) init];
  v14 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView;
  v68 = 1;
  v15 = type metadata accessor for SymbolButton.MaterialView();
  v69 = 0u;
  v70 = 0u;
  v71 = 0;
  v67.receiver = objc_allocWithZone(v15);
  v67.super_class = v15;
  v16 = objc_msgSendSuper2(&v67, "initWithEffect:", 0);
  sub_89B0B4(&v68);

  *&v4[v14] = v16;
  v17 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView;
  if (qword_E16BF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = *&static SymbolButton.Background.clear;
  v20 = qword_E73E18;
  v19 = qword_E73E20;
  v21 = qword_E73E28;
  v22 = type metadata accessor for SymbolButton.BackgroundView();
  v23 = objc_allocWithZone(v22);
  v24 = &v23[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  *v24 = 0;
  *(v24 + 1) = 0x3FF0000000000000;
  v66.receiver = v23;
  v66.super_class = v22;
  v25 = v20;

  v26 = objc_msgSendSuper2(&v66, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_89B530(v20, v18, v19, v21);
  sub_89B6F0();

  *&v4[v17] = v26;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView] = 0;
  (*(v7 + 56))(&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___metrics], 1, 1, v59);
  v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated] = 1;
  v27 = v62;
  sub_8A3C84(v62, &v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration], type metadata accessor for SymbolButton.Configuration);
  swift_beginAccess();
  v28 = *v11;
  v29 = v60;
  v30 = v61;
  *v11 = v60;
  v11[1] = v30;
  sub_307CC(v29);
  sub_17654(v28);
  v31 = type metadata accessor for SymbolButton(0);
  v65.receiver = v4;
  v65.super_class = v31;
  v32 = objc_msgSendSuper2(&v65, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v33 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView;
  v34 = *&v32[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView];
  v35 = v32;
  [v34 setAutoresizingMask:18];
  v36 = *&v32[v33];
  [v35 bounds];
  [v36 setFrame:?];

  [v35 addSubview:*&v32[v33]];
  v37 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView;
  [*&v32[v33] addSubview:*&v35[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView]];
  v38 = [*&v35[v37] contentView];
  v39 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView;
  [v38 addSubview:*&v35[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView]];

  v40 = *&v35[v39];
  type metadata accessor for SymbolButton.Label();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v42 = v40;
  if (([v42 isKindOfClass:ObjCClassFromMetadata] & 1) == 0)
  {
    v43 = &v35[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration];
    swift_beginAccess();
    v44 = type metadata accessor for SymbolButton.Configuration(0);
    v45 = v43[*(v44 + 76)];
    if (v45 == 2)
    {
      v46 = &v43[*(v44 + 36)];
      v47 = v58;
      sub_15F84(v46, v58, &qword_E1DB50);
      v48 = sub_ABA680();
      LOBYTE(v45) = (*(*(v48 - 8) + 48))(v47, 1, v48) != 1;
      sub_12E1C(v47, &qword_E1DB50);
    }

    [v42 setClipsToBounds:v45 & 1];
  }

  sub_8993E0(v27);
  v49 = v63;
  sub_898ED8(v63);
  sub_89A1E8();
  sub_8A1B6C(v49, type metadata accessor for SymbolButton.Metrics);
  sub_13C80(0, &qword_E17A80);
  *(swift_allocObject() + 16) = ObjectType;
  v50 = sub_ABA7D0();
  [v35 addAction:v50 forControlEvents:64];

  v51 = UIAccessibilityTraitButton;
  v52 = v35;
  v53 = [v52 accessibilityTraits];
  if ((v51 & ~v53) != 0)
  {
    v54 = v51;
  }

  else
  {
    v54 = 0;
  }

  [v52 setAccessibilityTraits:v54 | v53];

  v55 = [objc_allocWithZone(UIPointerInteraction) initWithDelegate:v52];
  [v52 addInteraction:v55];

  sub_8A1B6C(v27, type metadata accessor for SymbolButton.Configuration);
  return v52;
}

BOOL _s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[3];
  if (!v3)
  {
    v9 = a2[3];
LABEL_9:
    v10 = v9 == 0;
    return !v10;
  }

  v6 = *a1;
  v5 = a1[1];
  v7 = a2[3];

  if (!v7)
  {
    if (!v5)
    {
      return 1;
    }

    goto LABEL_14;
  }

  v8 = a2[1];
  if (v5)
  {
    if (v8)
    {
      if (v6 == *a2 && v5 == v8)
      {
      }

      else
      {
        v12 = sub_ABB3C0();

        if ((v12 & 1) == 0)
        {
          return 1;
        }
      }

      goto LABEL_18;
    }

LABEL_14:

    return 1;
  }

  if (v8)
  {
    return 1;
  }

LABEL_18:
  v13 = v3;
  v14 = v7;
  v15 = sub_AB92A0();
  v17 = v16;
  if (v15 == sub_AB92A0() && v17 == v18)
  {

    goto LABEL_22;
  }

  v19 = sub_ABB3C0();

  if ((v19 & 1) == 0)
  {
    return 1;
  }

LABEL_22:
  v9 = a1[3];
  if (!a2[3])
  {
    goto LABEL_9;
  }

  if (!v9 || a1[6] != a2[6])
  {
    return 1;
  }

  v10 = a1[7] == a2[7];
  return !v10;
}

uint64_t sub_8A0BB4(double *a1, uint64_t a2)
{
  v3 = *(a1 + 2);
  if (!v3)
  {
    if (*(a2 + 16))
    {
      goto LABEL_29;
    }

    v10 = 0;
LABEL_25:
    v19 = v10 != 0;
    return v19 & 1;
  }

  v5 = *(a1 + 7);
  v7 = *a1;
  v6 = *(a1 + 1);
  v8 = *(a2 + 16);

  if (!v8)
  {
    if (!v6)
    {
      goto LABEL_29;
    }

    goto LABEL_11;
  }

  v9 = *(a2 + 8);
  if (v6)
  {
    if (v9)
    {
      if (*&v7 == *a2 && v6 == v9)
      {
      }

      else
      {
        v11 = sub_ABB3C0();

        if ((v11 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_15;
    }

LABEL_11:

    goto LABEL_29;
  }

  if (v9)
  {
    goto LABEL_29;
  }

LABEL_15:
  v12 = v3;
  v13 = v8;
  v14 = sub_AB92A0();
  v16 = v15;
  if (v14 == sub_AB92A0() && v16 == v17)
  {
  }

  else
  {
    v18 = sub_ABB3C0();

    if ((v18 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v10 = *(a1 + 2);
  if (!*(a2 + 16))
  {
    goto LABEL_25;
  }

  v19 = 1;
  if (v10 && a1[3] == *(a2 + 24))
  {
    v20 = *(a2 + 56);
    v21 = v5;
    v22 = v20;
    v23 = v22;
    if (v5)
    {
      if (v20)
      {
        sub_13C80(0, &qword_E1AD80);
        v24 = sub_ABA790();

        v19 = v24 ^ 1;
        return v19 & 1;
      }
    }

    else
    {
      if (!v20)
      {
        v19 = 0;
        return v19 & 1;
      }
    }

LABEL_29:
    v19 = 1;
  }

  return v19 & 1;
}

void _s11MusicCoreUI12SymbolButtonC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize) = vdupq_n_s64(0x4040000000000000uLL);
  v5 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView;
  *(v1 + v6) = [objc_allocWithZone(UIView) init];
  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView;
  v24 = 1;
  v8 = type metadata accessor for SymbolButton.MaterialView();
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  v23.receiver = objc_allocWithZone(v8);
  v23.super_class = v8;
  v9 = objc_msgSendSuper2(&v23, "initWithEffect:", 0);
  sub_89B0B4(&v24);

  *(v1 + v7) = v9;
  v10 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView;
  if (qword_E16BF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = *&static SymbolButton.Background.clear;
  v13 = qword_E73E18;
  v12 = qword_E73E20;
  v14 = qword_E73E28;
  v15 = type metadata accessor for SymbolButton.BackgroundView();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  *v17 = 0;
  *(v17 + 1) = 0x3FF0000000000000;
  v22.receiver = v16;
  v22.super_class = v15;
  v18 = v13;

  v19 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_89B530(v13, v11, v12, v14);
  sub_89B6F0();

  *(v1 + v10) = v19;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView) = 0;
  v20 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___metrics;
  v21 = type metadata accessor for SymbolButton.Metrics(0);
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated) = 1;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_8A10EC()
{

  return swift_deallocObject();
}

uint64_t sub_8A1124()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v27 = v0;
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 208);
  if (v6 != &dword_0 + 1)
  {
  }

  v7 = *(v5 + 232);
  if (v7 != &dword_0 + 1)
  {
  }

  v26 = v4;
  v8 = v4 + v2;

  v9 = v1[9];
  v10 = sub_ABA680();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v13 = v8 + v3;
  v14 = (v5 + v1[10]);
  if (*v14)
  {
  }

  v15 = v13 & ~v2;
  v16 = *(v5 + v1[11] + 16);
  if (v16 != &dword_0 + 1)
  {
  }

  v17 = v5 + v1[16];

  v18 = v27 + v15;

  v19 = *(v27 + v15 + 208);
  if (v19 != &dword_0 + 1)
  {
  }

  v20 = *(v18 + 232);
  if (v20 != &dword_0 + 1)
  {
  }

  v21 = v1[9];
  if (!v12(v18 + v21, 1, v10))
  {
    (*(v11 + 8))(v18 + v21, v10);
  }

  v22 = (v18 + v1[10]);
  if (*v22)
  {
  }

  v23 = *(v18 + v1[11] + 16);
  if (v23 != &dword_0 + 1)
  {
  }

  v24 = v18 + v1[16];

  return swift_deallocObject();
}

void sub_8A14A4()
{
  v1 = *(type metadata accessor for SymbolButton.Configuration(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  v8 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_891BF8(v0 + v4, (v0 + v5), v7, v8);
}

uint64_t block_copy_helper_227(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_8A1574()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  v25 = *(*(v1 - 1) + 80);
  v2 = (v25 + 24) & ~v25;
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;

  v5 = *(v0 + v2 + 208);
  if (v5 != &dword_0 + 1)
  {
  }

  v6 = *(v4 + 232);
  if (v6 != &dword_0 + 1)
  {
  }

  v7 = v3 + v25;

  v8 = v1[9];
  v9 = sub_ABA680();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v4 + v8, 1, v9))
  {
    (*(v10 + 8))(v4 + v8, v9);
  }

  v12 = v7 + v2;
  v13 = (v4 + v1[10]);
  if (*v13)
  {
  }

  v14 = v12 & ~v25;
  v15 = *(v4 + v1[11] + 16);
  if (v15 != &dword_0 + 1)
  {
  }

  v16 = v4 + v1[16];

  v17 = v0 + v14;

  v18 = *(v0 + v14 + 208);
  if (v18 != &dword_0 + 1)
  {
  }

  v19 = *(v17 + 232);
  if (v19 != &dword_0 + 1)
  {
  }

  v20 = v1[9];
  if (!v11(v17 + v20, 1, v9))
  {
    (*(v10 + 8))(v17 + v20, v9);
  }

  v21 = (v17 + v1[10]);
  if (*v21)
  {
  }

  v22 = *(v17 + v1[11] + 16);
  if (v22 != &dword_0 + 1)
  {
  }

  v23 = v17 + v1[16];

  return swift_deallocObject();
}

uint64_t sub_8A1908()
{
  v1 = *(type metadata accessor for SymbolButton.Configuration(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  v8 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v0 + 16);

  return sub_892950(v9, v0 + v4, v0 + v5, v7, v8);
}

uint64_t sub_8A19B4()
{

  return swift_deallocObject();
}

void sub_8A1AF4(uint64_t a1, char *a2)
{
  if (a2 != &dword_0 + 1)
  {

    v3 = a2;
  }
}

char *sub_8A1B3C(uint64_t a1, uint64_t a2, char *a3)
{
  if (a3 != &dword_0 + 1)
  {
    return a3;
  }

  return result;
}

uint64_t sub_8A1B6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_8A1BCC()
{

  return swift_deallocObject();
}

uint64_t sub_8A1C18(double *a1, uint64_t a2)
{
  v3 = *(a1 + 2);
  if (!v3)
  {
    return !*(a2 + 16);
  }

  v6 = *a1;
  v5 = *(a1 + 1);
  v7 = *(a2 + 16);

  if (!v7)
  {
    if (!v5)
    {
      return 0;
    }

    goto LABEL_11;
  }

  v8 = *(a2 + 8);
  if (v5)
  {
    if (v8)
    {
      if (*&v6 == *a2 && v5 == v8)
      {
      }

      else
      {
        v9 = sub_ABB3C0();

        if ((v9 & 1) == 0)
        {
          return 0;
        }
      }

      goto LABEL_15;
    }

LABEL_11:

    return 0;
  }

  if (v8)
  {
    return 0;
  }

LABEL_15:
  v10 = v3;
  v11 = v7;
  v12 = sub_AB92A0();
  v14 = v13;
  if (v12 == sub_AB92A0() && v14 == v15)
  {

    goto LABEL_19;
  }

  v16 = sub_ABB3C0();

  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v17 = *(a1 + 2);
  if (!*(a2 + 16))
  {
    return !v17;
  }

  result = 0;
  if (v17 && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  return result;
}

id _s11MusicCoreUI12SymbolButtonC22contextMenuInteraction_016configurationForG10AtLocationSo09UIContextG13ConfigurationCSgSo0mgH0C_So7CGPointVtF_0()
{
  v1 = &v0[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu];
  swift_beginAccess();
  v2 = *v1;
  if (!*v1)
  {
    return 0;
  }

  v3 = v1[1];
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v0;
  v5 = objc_opt_self();
  aBlock[4] = sub_8A3BCC;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_89E65C;
  aBlock[3] = &block_descriptor_230;
  v6 = _Block_copy(aBlock);
  sub_307CC(v2);
  sub_307CC(v2);
  v7 = v0;

  v8 = [v5 configurationWithIdentifier:0 previewProvider:0 actionProvider:v6];

  _Block_release(v6);
  [v8 setPreferredMenuElementOrder:2];
  sub_17654(v2);
  return v8;
}

id _s11MusicCoreUI12SymbolButtonC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0jG0C_So0J6RegionCtF_0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1E060);
  __chkstk_darwin(v3 - 8);
  v5 = &v93[-v4];
  v6 = sub_ABA620();
  v101 = *(v6 - 8);
  v102 = v6;
  __chkstk_darwin(v6);
  v100 = &v93[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_ABA680();
  v9 = *(v8 - 8);
  v108 = v8;
  v109 = v9;
  __chkstk_darwin(v8);
  v99 = &v93[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E175C8);
  __chkstk_darwin(v11);
  v13 = &v93[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
  __chkstk_darwin(v14 - 8);
  v16 = &v93[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v93[-v18];
  __chkstk_darwin(v20);
  v22 = &v93[-v21];
  v110 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v110);
  v103 = &v93[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v26 = &v93[-v25];
  __chkstk_darwin(v27);
  v29 = &v93[-v28];
  v30 = sub_AB4D00();
  v106 = *(v30 - 8);
  v107 = v30;
  __chkstk_darwin(v30);
  v104 = &v93[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v33 = __chkstk_darwin(v32).n128_u64[0];
  v105 = &v93[-v34];
  result = [a1 view];
  if (!result)
  {
    return result;
  }

  v36 = result;
  if (![v1 isUserInteractionEnabled])
  {

    return 0;
  }

  v98 = v36;
  v96 = v5;
  v97 = v1;
  v37 = v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_8A3C84(v37, v29, type metadata accessor for SymbolButton.Configuration);
  v38 = *(v29 + 29);
  if (v38 == &dword_0 + 1)
  {
    sub_8A1B6C(v29, type metadata accessor for SymbolButton.Configuration);
  }

  else
  {
    v39 = v38;
    sub_8A1B6C(v29, type metadata accessor for SymbolButton.Configuration);
    if (v38)
    {

      goto LABEL_10;
    }
  }

  if (*(v37 + 208) == 1 && !*(v37 + *(v110 + 40)))
  {
    goto LABEL_17;
  }

LABEL_10:
  v40 = [v97 traitCollection];
  v41 = [v40 userInterfaceIdiom];

  v95 = v37;
  if (v41 != &dword_4 + 2)
  {
LABEL_19:
    v59 = objc_allocWithZone(UITargetedPreview);
    v60 = [v59 initWithView:v98];
    v61 = [v60 parameters];
    v54 = &selRef__authenticateReturningError_;
    v51 = v97;
    [v97 bounds];
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v69 = v68;
    sub_8A3C84(v37, v26, type metadata accessor for SymbolButton.Configuration);
    if ((*(v109 + 48))(&v26[*(v110 + 36)], 1, v108))
    {
      sub_8A1B6C(v26, type metadata accessor for SymbolButton.Configuration);
      sub_AB4CB0();
      v71 = v70;
    }

    else
    {
      v72 = v100;
      sub_ABA650();
      sub_8A1B6C(v26, type metadata accessor for SymbolButton.Configuration);
      [v51 bounds];
      sub_ABA610();
      v71 = v73;
      (*(v101 + 8))(v72, v102);
    }

    v49 = v105;
    v48 = v106;
    v53 = v104;
    v74 = [objc_opt_self() bezierPathWithRoundedRect:v63 cornerRadius:{v65, v67, v69, v71}];
    [v61 setShadowPath:v74];

    *v49 = v60;
    v50 = &enum case for UIPointerEffect.lift(_:);
    v52 = v103;
    v37 = v95;
    goto LABEL_23;
  }

  sub_15F84(v37 + *(v110 + 36), v22, &qword_E1DB50);
  sub_ABA670();
  v42 = v108;
  v43 = v109;
  (*(v109 + 56))(v19, 0, 1, v108);
  v44 = *(v11 + 48);
  sub_15F84(v22, v13, &qword_E1DB50);
  sub_15F84(v19, &v13[v44], &qword_E1DB50);
  v45 = *(v43 + 48);
  if (v45(v13, 1, v42) == 1)
  {
    sub_12E1C(v19, &qword_E1DB50);
    sub_12E1C(v22, &qword_E1DB50);
    if (v45(&v13[v44], 1, v42) == 1)
    {
      sub_12E1C(v13, &qword_E1DB50);
      v37 = v95;
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  sub_15F84(v13, v16, &qword_E1DB50);
  if (v45(&v13[v44], 1, v42) == 1)
  {
    sub_12E1C(v19, &qword_E1DB50);
    sub_12E1C(v22, &qword_E1DB50);
    (*(v109 + 8))(v16, v42);
LABEL_16:
    sub_12E1C(v13, &qword_E175C8);
    v37 = v95;
    goto LABEL_17;
  }

  v55 = v109;
  v56 = &v13[v44];
  v57 = v99;
  (*(v109 + 32))(v99, v56, v42);
  sub_8A3D54(&qword_E175D0, &type metadata accessor for UIView.Corner);
  v94 = sub_AB91C0();
  v58 = *(v55 + 8);
  v58(v57, v42);
  sub_12E1C(v19, &qword_E1DB50);
  sub_12E1C(v22, &qword_E1DB50);
  v58(v16, v42);
  sub_12E1C(v13, &qword_E1DB50);
  v37 = v95;
  if (v94)
  {
    goto LABEL_19;
  }

LABEL_17:
  v46 = objc_allocWithZone(UITargetedPreview);
  v47 = [v46 initWithView:v98];
  v49 = v105;
  v48 = v106;
  *v105 = v47;
  v50 = &enum case for UIPointerEffect.highlight(_:);
  v51 = v97;
  v52 = v103;
  v53 = v104;
  v54 = &selRef__authenticateReturningError_;
LABEL_23:
  v75 = v107;
  (*(v48 + 104))(v49, *v50, v107);
  (*(v48 + 16))(v53, v49, v75);
  [v51 v54[56]];
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  sub_8A3C84(v37, v52, type metadata accessor for SymbolButton.Configuration);
  if ((*(v109 + 48))(v52 + *(v110 + 36), 1, v108))
  {
    sub_8A1B6C(v52, type metadata accessor for SymbolButton.Configuration);
    sub_AB4CB0();
    v85 = v84;
  }

  else
  {
    v86 = v100;
    sub_ABA650();
    sub_8A1B6C(v52, type metadata accessor for SymbolButton.Configuration);
    [v51 v54[56]];
    sub_ABA610();
    v85 = v87;
    (*(v101 + 8))(v86, v102);
  }

  sub_13C80(0, &qword_E17A68);
  v88 = v96;
  *v96 = v77;
  v88[1] = v79;
  v88[2] = v81;
  v88[3] = v83;
  v88[4] = v85;
  v89 = enum case for UIPointerShape.roundedRect(_:);
  v90 = sub_AB4CC0();
  v91 = *(v90 - 8);
  (*(v91 + 104))(v88, v89, v90);
  (*(v91 + 56))(v88, 0, 1, v90);
  v92 = sub_AB9F80();

  (*(v48 + 8))(v49, v75);
  return v92;
}

unint64_t sub_8A2B10(uint64_t a1)
{
  result = sub_8A2B38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_8A2B38()
{
  result = qword_E1DBB8;
  if (!qword_E1DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1DBB8);
  }

  return result;
}

unint64_t sub_8A2B8C(uint64_t a1)
{
  result = sub_8A2BB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_8A2BB4()
{
  result = qword_E1DBC0;
  if (!qword_E1DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1DBC0);
  }

  return result;
}

unint64_t sub_8A2C08(uint64_t a1)
{
  result = sub_8A2C30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_8A2C30()
{
  result = qword_E1DBC8;
  if (!qword_E1DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1DBC8);
  }

  return result;
}

unint64_t sub_8A2C88()
{
  result = qword_E1DBD0;
  if (!qword_E1DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1DBD0);
  }

  return result;
}

unint64_t sub_8A2CDC(uint64_t a1)
{
  result = sub_8A2D04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_8A2D04()
{
  result = qword_E1DBD8;
  if (!qword_E1DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1DBD8);
  }

  return result;
}

unint64_t sub_8A2D58(uint64_t a1)
{
  result = sub_8A2D80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_8A2D80()
{
  result = qword_E1DBE0;
  if (!qword_E1DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1DBE0);
  }

  return result;
}

void sub_8A2DDC()
{
  type metadata accessor for SymbolButton.Configuration(319);
  if (v0 <= 0x3F)
  {
    sub_8A3378(319, &qword_E1DC30, type metadata accessor for SymbolButton.Metrics);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for JSContainerDetail.LyricsSnippetData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for JSContainerDetail.LyricsSnippetData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_8A2FBC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_8A308C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_8A313C()
{
  sub_48C430(319, &qword_E1DCA0);
  if (v0 <= 0x3F)
  {
    sub_48C430(319, &qword_E1DCA8);
    if (v1 <= 0x3F)
    {
      sub_48C430(319, &unk_E1DCB0);
      if (v2 <= 0x3F)
      {
        sub_8A3378(319, &qword_E17548, &type metadata accessor for UIView.Corner);
        if (v3 <= 0x3F)
        {
          sub_48C430(319, &qword_E1DCC0);
          if (v4 <= 0x3F)
          {
            sub_48C430(319, &qword_E1DCC8);
            if (v5 <= 0x3F)
            {
              _s3__C6CGSizeVMa_0(319);
              if (v6 <= 0x3F)
              {
                sub_8A3378(319, &qword_E1DCD0, _s3__C6CGSizeVMa_0);
                if (v7 <= 0x3F)
                {
                  _s3__C23NSDirectionalEdgeInsetsVMa_0(319);
                  if (v8 <= 0x3F)
                  {
                    sub_6A729C(319, &unk_E1DCD8, &qword_E1AD80);
                    if (v9 <= 0x3F)
                    {
                      sub_48C430(319, &unk_E1DCE8);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_8A3378(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_ABA9C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_8A33CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t sub_8A3428(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_8A34BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_8A3504(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_8A3570(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_8A35B8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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