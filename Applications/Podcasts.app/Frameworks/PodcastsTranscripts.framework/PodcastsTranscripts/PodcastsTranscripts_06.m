unint64_t sub_904EC()
{
  result = qword_C8040;
  if (!qword_C8040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C8038);
    sub_905A4();
    sub_EA78(&qword_C8060, &qword_C8068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8040);
  }

  return result;
}

unint64_t sub_905A4()
{
  result = qword_C8048;
  if (!qword_C8048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C8050);
    sub_90664();
    sub_8DACC(&qword_C7FF8, 255, type metadata accessor for ViewContextEnvironmentSetter);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8048);
  }

  return result;
}

unint64_t sub_90664()
{
  result = qword_C8058;
  if (!qword_C8058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8058);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_906E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_9072C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_907A0()
{
  result = qword_C80C8;
  if (!qword_C80C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C80B8);
    sub_9082C();
    sub_908B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C80C8);
  }

  return result;
}

unint64_t sub_9082C()
{
  result = qword_C80D0;
  if (!qword_C80D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C80D8);
    sub_641E0();
    sub_65384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C80D0);
  }

  return result;
}

unint64_t sub_908B8()
{
  result = qword_C80F0;
  if (!qword_C80F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C80A0);
    sub_656EC();
    sub_8DACC(&unk_C8100, 255, type metadata accessor for SpeakerContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C80F0);
  }

  return result;
}

uint64_t sub_90978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_909E0(uint64_t a1)
{
  v2 = type metadata accessor for SpeakerContentView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_90A94()
{
  result = qword_C8118;
  if (!qword_C8118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_C8120);
    sub_907A0();
    sub_64E3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8118);
  }

  return result;
}

void sub_90BDC()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_38;
  }

  v3 = v2;
  v4 = [v2 window];

  if (!v4)
  {
    return;
  }

  v5 = [v1 parentViewController];
  if (v5)
  {
    v6 = v5;
    v103 = [v5 view];

    if (v103)
    {
      v7 = [v1 view];
      if (v7)
      {
        v8 = v7;
        v9 = [v1 view];
        if (v9)
        {
          v10 = v9;
          [v9 bounds];
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v18 = v17;

          [v8 convertRect:v103 toCoordinateSpace:{v12, v14, v16, v18}];
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v26 = v25;

          v27 = [v1 view];
          if (v27)
          {
            v28 = v27;
            v29 = [v27 window];

            if (v29)
            {
              [v29 bounds];
              Height = CGRectGetHeight(v105);

              v31 = Height * 0.06;
            }

            else
            {
              v31 = 0.0;
            }

            v33 = v22 + v31;
            v34 = sub_7D8E8();
            v35 = v4;
            [v35 bounds];
            v36 = 0.0;
            [v34 setFrame:{0.0, -v22, CGRectGetWidth(v106), v33}];

            v37 = sub_7D494();
            [v37 alpha];
            if (v38 == 1.0)
            {
              v39 = v37[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_pinnedLinkID + 32];

              if (v39 == 255)
              {
                v36 = 0.0;
              }

              else
              {
                v36 = 80.0;
              }
            }

            else
            {
            }

            v40 = sub_7D364();
            [v40 alpha];
            v42 = v41;

            if (v42 == 1.0)
            {
              v43 = v36 + 110.0;
            }

            else
            {
              v43 = v36;
            }

            [v103 bounds];
            MaxY = CGRectGetMaxY(v107);
            v108.origin.x = v20;
            v108.origin.y = v22;
            v108.size.width = v24;
            v108.size.height = v26;
            v45 = CGRectGetMaxY(v108);
            v46 = [v1 view];
            if (v46)
            {
              v47 = v46;
              v48 = [v46 window];

              if (v48)
              {
                [v48 bounds];
                v49 = CGRectGetHeight(v109);

                v50 = v49 * 0.06;
              }

              else
              {
                v50 = 0.0;
              }

              v101 = v33;
              v102 = v22;
              v51 = sub_7D274();
              v52 = [v1 view];
              if (v52)
              {
                v53 = v52;
                [v52 bounds];
                v55 = v54;
                v57 = v56;
                v59 = v58;
                v61 = v60;

                v110.origin.x = v55;
                v110.origin.y = v57;
                v110.size.width = v59;
                v110.size.height = v61;
                v62 = CGRectGetMaxY(v110);
                v63 = [v1 view];
                if (v63)
                {
                  v64 = v63;
                  v65 = v43 + MaxY - v45 + v50;
                  v66 = [v63 window];

                  if (v66)
                  {
                    [v66 bounds];
                    v67 = CGRectGetHeight(v111);

                    v68 = v67 * 0.06;
                  }

                  else
                  {
                    v68 = 0.0;
                  }

                  v69 = v62 - v68 - v43;
                  [v35 bounds];
                  v71 = v70;
                  v73 = v72;
                  v75 = v74;
                  v77 = v76;
                  v100 = v35;

                  v112.origin.x = v71;
                  v112.origin.y = v73;
                  v112.size.width = v75;
                  v112.size.height = v77;
                  v78 = 0.0;
                  [v51 setFrame:{0.0, v69, CGRectGetWidth(v112), v65}];

                  v79 = objc_opt_self();
                  [v79 begin];
                  [v79 setDisableActions:1];
                  v80 = sub_7FA90();
                  [*&v1[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___topGradientView] bounds];
                  [v80 setFrame:?];

                  v81 = *&v1[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___topGradientMask];
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6598);
                  v82 = swift_allocObject();
                  *(v82 + 16) = xmmword_9F050;
                  v83 = v102 / v101;
                  v84 = objc_allocWithZone(NSNumber);
                  v85 = v81;
                  *&v86 = v83;
                  *(v82 + 32) = [v84 initWithFloat:v86];
                  sub_91334();
                  *(v82 + 40) = sub_98438(1.0);
                  isa = sub_97FB8().super.isa;

                  [v85 setLocations:isa];

                  v88 = [v1 view];
                  if (v88)
                  {
                    v89 = v88;
                    v90 = [v88 window];

                    if (v90)
                    {
                      [v90 bounds];
                      v91 = CGRectGetHeight(v113);

                      v78 = v91 * 0.06;
                    }

                    v92 = sub_7FAB0();
                    [*&v1[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___bottomGradientView] bounds];
                    [v92 setFrame:?];

                    v93 = *&v1[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___bottomGradientMask];
                    v94 = swift_allocObject();
                    *(v94 + 16) = xmmword_9F050;
                    v95 = v93;
                    *(v94 + 32) = sub_98438(0.0);
                    v97 = objc_allocWithZone(NSNumber);
                    v96 = v78 / v65;
                    *&v98 = v96;
                    *(v94 + 40) = [v97 initWithFloat:v98];
                    v99 = sub_97FB8().super.isa;

                    [v95 setLocations:v99];

                    [v79 commit];
                    v32 = v103;
                    goto LABEL_34;
                  }

LABEL_44:
                  __break(1u);
                  return;
                }

LABEL_43:
                __break(1u);
                goto LABEL_44;
              }

LABEL_42:
              __break(1u);
              goto LABEL_43;
            }

LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

LABEL_38:
      __break(1u);
      goto LABEL_39;
    }
  }

  v32 = v4;
LABEL_34:
}

unint64_t sub_91334()
{
  result = qword_C8190;
  if (!qword_C8190)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C8190);
  }

  return result;
}

id sub_913A8(SEL *a1, SEL *a2)
{
  v4 = [objc_allocWithZone(CAGradientLayer) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C8198);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_A05E0;
  v6 = objc_opt_self();
  v7 = [v6 *a1];
  v8 = [v7 CGColor];

  type metadata accessor for CGColor(0);
  v10 = v9;
  *(v5 + 56) = v9;
  *(v5 + 32) = v8;
  v11 = [v6 *a2];
  v12 = [v11 CGColor];

  *(v5 + 88) = v10;
  *(v5 + 64) = v12;
  isa = sub_97FB8().super.isa;

  [v4 setColors:isa];

  return v4;
}

uint64_t sub_91554()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C8240);
  sub_915B0();
  return sub_96EE8();
}

unint64_t sub_915B0()
{
  result = qword_C8248;
  if (!qword_C8248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C8240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8248);
  }

  return result;
}

uint64_t NowPlayingViewModel.isTranscriptSelected.getter()
{
  v0 = sub_96238();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v22 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C8250);
  __chkstk_darwin(v3);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C8258);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  sub_961E8();
  if (qword_C4648 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v0, qword_C5178);
  swift_beginAccess();
  (*(v1 + 16))(v11, v15, v0);
  (*(v1 + 56))(v11, 0, 1, v0);
  v16 = *(v3 + 48);
  sub_91A54(v14, v5);
  sub_91A54(v11, &v5[v16]);
  v17 = *(v1 + 48);
  if (v17(v5, 1, v0) != 1)
  {
    sub_91A54(v5, v8);
    if (v17(&v5[v16], 1, v0) != 1)
    {
      v19 = v22;
      (*(v1 + 32))(v22, &v5[v16], v0);
      sub_91AC4();
      v18 = sub_97D98();
      v20 = *(v1 + 8);
      v20(v19, v0);
      sub_4C60(v11, &qword_C8258);
      sub_4C60(v14, &qword_C8258);
      v20(v8, v0);
      sub_4C60(v5, &qword_C8258);
      return v18 & 1;
    }

    sub_4C60(v11, &qword_C8258);
    sub_4C60(v14, &qword_C8258);
    (*(v1 + 8))(v8, v0);
    goto LABEL_8;
  }

  sub_4C60(v11, &qword_C8258);
  sub_4C60(v14, &qword_C8258);
  if (v17(&v5[v16], 1, v0) != 1)
  {
LABEL_8:
    sub_4C60(v5, &qword_C8250);
    v18 = 0;
    return v18 & 1;
  }

  sub_4C60(v5, &qword_C8258);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_91A54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C8258);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_91AC4()
{
  result = qword_C8260;
  if (!qword_C8260)
  {
    sub_96238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8260);
  }

  return result;
}

uint64_t DummySelectedContentProvider.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 1;
  return result;
}

uint64_t DummySelectedContentProvider.init()()
{
  result = v0;
  *(v0 + 16) = 1;
  return result;
}

uint64_t sub_91C38(__int128 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C52A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22[-v5];
  v7 = sub_96048();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a1 + 32);
  v12 = sub_782A0();
  v13 = *a1;
  v24 = a1[1];
  v23 = v13;
  v25 = v11;
  sub_96CD8();

  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v10, v6, v7);
    v14 = sub_96028();
    v15 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewModels;
    swift_beginAccess();
    v16 = *(v2 + v15);
    if (v16 >> 62)
    {
      if (v14 < sub_98778())
      {
LABEL_5:
        v17 = sub_96028();
        result = swift_beginAccess();
        v19 = *(v2 + v15);
        if ((v19 & 0xC000000000000001) == 0)
        {
          if ((v17 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v17 < *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
          {
            v20 = *(v19 + 8 * v17 + 32);

LABEL_9:
            swift_endAccess();
            (*(v8 + 8))(v10, v7);
            v21 = *(v20 + 16);
            if (!(v21 >> 61))
            {

              return v21;
            }

            return 0;
          }

          __break(1u);
          return result;
        }

        v20 = sub_986C8();
        goto LABEL_9;
      }
    }

    else if (v14 < *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_5;
    }

    (*(v8 + 8))(v10, v7);
    return 0;
  }

  sub_91EF4(v6);
  return 0;
}

uint64_t sub_91EF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C52A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.setTranscriptViewContextEnvironment()()
{
  v0 = type metadata accessor for ViewContextEnvironmentSetter();
  __chkstk_darwin(v0);
  v2 = (&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C8010);
  swift_storeEnumTagMultiPayload();
  v3 = v2 + *(v0 + 20);
  *v3 = swift_getKeyPath();
  v3[8] = 0;
  sub_97698();
  return sub_92DAC(v2);
}

uint64_t type metadata accessor for ViewContextEnvironmentSetter()
{
  result = qword_C83A8;
  if (!qword_C83A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_920A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_972C8();
  *a1 = result;
  return result;
}

uint64_t EnvironmentValues.transcriptViewContext.getter()
{
  sub_92E08();

  return sub_97308();
}

uint64_t sub_92188(uint64_t a1)
{
  sub_E304(a1, v3);
  sub_E304(v3, &v2);
  sub_92E08();
  sub_97318();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t EnvironmentValues.transcriptViewContext.setter(uint64_t a1)
{
  sub_E304(a1, v3);
  sub_92E08();
  sub_97318();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_92284(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C8400);
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - v4, a1, v3);
  return sub_97248();
}

_BYTE *TranscriptViewController.ViewContext.init(sizeClass:paddingInsets:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = *result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

void TranscriptViewController.ViewContext.paddingInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

double sub_923DC()
{
  qword_C8320 = &type metadata for TranscriptViewController.ViewContext;
  unk_C8328 = &protocol witness table for TranscriptViewController.ViewContext;
  v0 = swift_allocObject();
  qword_C8308 = v0;
  *(v0 + 16) = 0;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  return result;
}

uint64_t sub_9243C@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_C46E0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_E304(&qword_C8308, v2);
}

void (*EnvironmentValues.transcriptViewContext.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  *(v3 + 128) = sub_92E08();
  sub_97308();
  return sub_92540;
}

void sub_92540(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_E304(*a1, v2 + 40);
    sub_E304(v2 + 40, v2 + 80);
    sub_97318();
    __swift_destroy_boxed_opaque_existential_1(v2 + 40);
  }

  else
  {
    sub_E304(*a1, v2 + 40);
    sub_97318();
  }

  __swift_destroy_boxed_opaque_existential_1(v2);

  free(v2);
}

uint64_t sub_925F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v17 = sub_972F8();
  v4 = *(v17 - 8);
  __chkstk_darwin(v17);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C8010);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  KeyPath = swift_getKeyPath();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_C83F0) + 36);
  v19 = a2;
  v11 = (a2 + v10);
  v12 = sub_96188();
  v11[4] = v12;
  v11[5] = &protocol witness table for DeviceMetrics;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11 + 1);
  sub_4BF8(v2, v9, &unk_C8010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(v12 - 8) + 32))(boxed_opaque_existential_1, v9, v12);
  }

  else
  {
    sub_981C8();
    v14 = sub_973F8();
    sub_96A48();

    sub_972E8();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v17);
  }

  *v11 = KeyPath;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C83F8);
  return (*(*(v15 - 8) + 16))(v19, v20, v15);
}

double DeviceMetrics.paddingInsets.getter()
{
  v0 = sub_96168();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  sub_96178();
  sub_96148();
  v14 = v13;
  v15 = *(v1 + 8);
  v15(v12, v0);
  sub_96178();
  sub_96138();
  v15(v9, v0);
  sub_96178();
  sub_96158();
  v15(v6, v0);
  sub_96178();
  sub_96138();
  v15(v3, v0);
  return v14;
}

uint64_t DeviceMetrics.sizeClass.getter@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C8338);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  sub_96128();
  v8 = sub_96118();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_4BF8(v7, v4, &qword_C8338);
    v10 = (*(v9 + 88))(v4, v8);
    if (v10 != enum case for DeviceMetrics.Layout.compact(_:))
    {
      if (v10 == enum case for DeviceMetrics.Layout.regular(_:))
      {
        v11 = 1;
        goto LABEL_4;
      }

      if (v10 == enum case for DeviceMetrics.Layout.regularExtended(_:))
      {
        v11 = 2;
        goto LABEL_4;
      }

      (*(v9 + 8))(v4, v8);
    }
  }

  v11 = 0;
LABEL_4:
  *a1 = v11;
  return sub_92E5C(v7);
}

uint64_t sub_92C88(uint64_t a1)
{
  v2 = sub_96188();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_961A8();
}

uint64_t sub_92D54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_972C8();
  *a1 = result;
  return result;
}

uint64_t sub_92DAC(uint64_t a1)
{
  v2 = type metadata accessor for ViewContextEnvironmentSetter();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_92E08()
{
  result = qword_C8330;
  if (!qword_C8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8330);
  }

  return result;
}

uint64_t sub_92E5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C8338);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_92EC8()
{
  result = qword_C8340;
  if (!qword_C8340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8340);
  }

  return result;
}

uint64_t sub_92F98(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[40])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_92FDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_93038()
{
  type metadata accessor for ViewContextEnvironmentSetter();
  sub_97208();
  sub_930A4();
  return swift_getWitnessTable();
}

unint64_t sub_930A4()
{
  result = qword_C7FF8;
  if (!qword_C7FF8)
  {
    type metadata accessor for ViewContextEnvironmentSetter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7FF8);
  }

  return result;
}

uint64_t sub_93120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C8348);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_931FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C8348);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_932C4()
{
  sub_93380(319, &qword_C83B8, &type metadata accessor for DeviceMetrics);
  if (v0 <= 0x3F)
  {
    sub_93380(319, &unk_C83C0, &type metadata accessor for BaseObjectGraph);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_93380(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_970A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_93404()
{
  result = qword_C8408;
  if (!qword_C8408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C83F0);
    sub_EA78(&qword_C8410, &qword_C83F8);
    sub_EA78(&qword_C8418, &qword_C8420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8408);
  }

  return result;
}

uint64_t TranscriptTextView.isSearching.getter()
{
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts18TranscriptTextView_isSearching;
  swift_beginAccess();
  return *(v0 + v1);
}

id TranscriptTextView.__allocating_init(copyDelegate:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC19PodcastsTranscripts18TranscriptTextView_isSearching] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v9.receiver = v3;
  v9.super_class = v1;
  v4 = objc_msgSendSuper2(&v9, "initWithFrame:textContainer:", 0, 0.0, 0.0, 0.0, 0.0);
  [v4 setFindInteractionEnabled:1];
  v5 = v4;
  [v5 setEditable:0];
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor:v6];

  [v5 setAutocorrectionType:1];
  v7 = v5;
  [v7 setSelectable:1];
  [v7 setAlwaysBounceVertical:1];

  [v7 setDataDetectorTypes:7];
  [v7 setWritingToolsBehavior:-1];

  return v7;
}

id TranscriptTextView.init(copyDelegate:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC19PodcastsTranscripts18TranscriptTextView_isSearching] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v9, "initWithFrame:textContainer:", 0, 0.0, 0.0, 0.0, 0.0);
  [v4 setFindInteractionEnabled:1];
  v5 = v4;
  [v5 setEditable:0];
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor:v6];

  [v5 setAutocorrectionType:1];
  v7 = v5;
  [v7 setSelectable:1];
  [v7 setAlwaysBounceVertical:1];

  [v7 setDataDetectorTypes:7];
  [v7 setWritingToolsBehavior:-1];

  return v7;
}

uint64_t TranscriptTextView.copy(_:)(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_93F40(a1, v11);
    v4 = v12;
    if (v12)
    {
      v5 = __swift_project_boxed_opaque_existential_1(v11, v12);
      v6 = *(v4 - 8);
      v7 = __chkstk_darwin(v5);
      v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v6 + 16))(v9, v7);
      v10 = sub_98828();
      (*(v6 + 8))(v9, v4);
      __swift_destroy_boxed_opaque_existential_1(v11);
    }

    else
    {
      v10 = 0;
    }

    [v3 copy:v10];

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall TranscriptTextView.findInteraction(_:didBegin:)(UIFindInteraction _, UIFindSession didBegin)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  [v3 setIsSearching:1];
  v7 = [(objc_class *)_.super.isa searchText];
  if (v7)
  {
    v8 = v7;
    v9 = sub_97E08();
    v11 = v10;

    static TranscriptCopyUtility.truncate(_:includeEllipsis:)(v9, v11, 0);

    v12 = sub_97DC8();

    [(objc_class *)_.super.isa setSearchText:v12];
  }

  v13.receiver = v3;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "findInteraction:didBeginFindSession:", _.super.isa, didBegin.super.isa);
}

Swift::Void __swiftcall TranscriptTextView.findInteraction(_:didEnd:)(UIFindInteraction _, UIFindSession didEnd)
{
  ObjectType = swift_getObjectType();
  [v2 setIsSearching:0];
  [v2 becomeFirstResponder];
  v6.receiver = v2;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, "findInteraction:didEndFindSession:", _.super.isa, didEnd.super.isa);
}

id TranscriptTextView.__allocating_init(frame:textContainer:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 textContainer:{a2, a3, a4, a5}];

  return v7;
}

uint64_t sub_93F40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7D20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_93FBC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isSearching];
  *a2 = result;
  return result;
}

uint64_t static Dependencies.allDependencies()()
{
  v0 = sub_97BB8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_97958();
  type metadata accessor for NowPlayingAlignmentCoordinator(0);

  sub_97BA8();

  v4 = sub_97C48();

  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_9417C@<X0>(uint64_t *a1@<X8>)
{
  sub_97C78();
  sub_97C68();
  v2 = sub_407C();

  *a1 = v2;
  return result;
}

uint64_t static Dependencies.nowPlayingExtensionDependencies()()
{
  v0 = sub_97BB8();
  v36 = v0;
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v44 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v41 = &v29 - v4;
  __chkstk_darwin(v5);
  v40 = &v29 - v6;
  __chkstk_darwin(v7);
  v39 = &v29 - v8;
  __chkstk_darwin(v9);
  v42 = &v29 - v10;
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  __chkstk_darwin(v17);
  v43 = &v29 - v18;
  __chkstk_darwin(v19);
  v21 = &v29 - v20;
  sub_97958();
  sub_96098();
  v38 = sub_97C38();

  sub_97958();
  type metadata accessor for NowPlayingAlignmentCoordinator(0);

  sub_97BA8();

  v22 = sub_97C48();

  v23 = *(v1 + 8);
  v35 = v1 + 8;
  v37 = v23;
  v23(v21, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C8460);

  v34 = v21;
  sub_97BA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7F90);
  sub_97BA8();
  sub_97A48();
  v32 = v16;
  sub_97BA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C53D8);
  v31 = v13;
  sub_97BA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C6640);
  sub_97BA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7F80);
  sub_97BA8();
  type metadata accessor for TranscriptSyncingStateObserver();
  sub_97BA8();
  type metadata accessor for NowPlayingStoreTranscriptIdentifierProvider();
  sub_97BA8();
  type metadata accessor for ControlsInteractionTracker();
  sub_97BA8();

  v33 = v22;
  sub_97C58();

  sub_97C48();

  sub_97C48();

  sub_97C48();

  sub_97C48();

  sub_97C48();

  sub_97C48();

  sub_97C48();

  sub_97C48();

  v24 = v44;
  v30 = sub_97C48();

  v25 = v24;
  v26 = v36;
  v27 = v37;
  v37(v25, v36);
  v27(v41, v26);
  v27(v40, v26);
  v27(v39, v26);
  v27(v42, v26);
  v27(v31, v26);
  v27(v32, v26);
  v27(v43, v26);
  v27(v34, v26);
  return v30;
}

uint64_t sub_948B0@<X0>(uint64_t *a1@<X8>)
{
  sub_967B8();
  swift_allocObject();
  result = sub_967A8();
  *a1 = result;
  return result;
}

uint64_t sub_948F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_97B08();
  swift_allocObject();
  result = sub_97AF8();
  a1[3] = v2;
  a1[4] = &protocol witness table for DummyLibraryActionController;
  *a1 = result;
  return result;
}

uint64_t sub_94974@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_97CF8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_97CC8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_97C78();
  sub_97C68();
  v12[3] = sub_97CE8();
  v12[4] = &protocol witness table for NativeIntentDispatcher;
  __swift_allocate_boxed_opaque_existential_1(v12);
  sub_97CD8();
  (*(v7 + 104))(v9, enum case for IntentDispatchTimeout.none(_:), v6);
  (*(v3 + 104))(v5, enum case for PageIntentInstrumentation.notInstrumented(_:), v2);
  a1[3] = sub_96068();
  a1[4] = sub_94E68();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_96058();
}

double sub_94B58@<D0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for TranscriptViewController.ViewContext;
  a1[4] = &protocol witness table for TranscriptViewController.ViewContext;
  v2 = swift_allocObject();
  *a1 = v2;
  *(v2 + 16) = 0;
  result = 0.0;
  *(v2 + 24) = xmmword_A0A70;
  *(v2 + 40) = xmmword_A0A70;
  return result;
}

uint64_t sub_94BB8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DummyScrubPositionProvider();
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C8240);
  swift_allocObject();
  result = sub_96E18();
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &off_BEE18;
  *a1 = v3;
  return result;
}

uint64_t sub_94C9C@<X0>(void (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  sub_97C78();
  v6 = sub_97C68();
  a1(0);
  swift_allocObject();
  result = a2(v6);
  *a3 = result;
  return result;
}

uint64_t sub_94D30@<X0>(void (*a1)(void, __n128)@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4FD0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v14[-v9];
  a1(0, v8);
  v11 = swift_allocObject();
  v12 = *a2;
  v14[15] = 0;
  sub_96E58();
  result = (*(v7 + 32))(v11 + v12, v10, v6);
  *a3 = v11;
  return result;
}

unint64_t sub_94E68()
{
  result = qword_C8468;
  if (!qword_C8468)
  {
    sub_96068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8468);
  }

  return result;
}

uint64_t static TranscriptCopyUtility.truncate(_:includeEllipsis:)(uint64_t a1, unint64_t a2, char a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1;
  }

  v7 = 11;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) == 0)
  {
    v7 = 7;
  }

  v8 = v7 | (v6 << 16);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = v9;
  v11[4] = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6310);
  sub_26788();
  sub_EA78(&qword_C8470, &qword_C6310);
  sub_985C8();

  swift_beginAccess();
  sub_97F68();
  if (a3)
  {
    swift_beginAccess();
    if (*(v10 + 16) == 1)
    {
      sub_97E68();

      sub_97ED8();
      sub_98588();
    }
  }

  v12 = sub_97E68();

  return v12;
}

uint64_t sub_951A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = swift_beginAccess();
  v14 = *(a8 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a8 + 16) = v16;
    if (v16 == 200)
    {
      result = swift_beginAccess();
      *(a9 + 16) = a4;
    }

    else if (v16 >= 201)
    {
      result = swift_beginAccess();
      *(a10 + 16) = 1;
      *a7 = 1;
    }
  }

  return result;
}

uint64_t sub_95258()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t static TranscriptCopyUtility.prepare(_:episodeTitle:podcastTitle:releaseDate:shareURL:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = a6;
  v45 = a8;
  v40 = a5;
  v41 = a7;
  v43 = a4;
  v39 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_95F58();
  v46 = *(v13 - 8);
  v47 = v13;
  __chkstk_darwin(v13);
  v42 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C8478);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v39 - v17;
  v19 = sub_95D88();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50._countAndFlagsBits = a1;
  v50._object = a2;
  sub_95D78();
  sub_26788();
  v23 = sub_985B8();
  v25 = v24;
  (*(v20 + 8))(v22, v19);
  v26 = static TranscriptCopyUtility.truncate(_:includeEllipsis:)(v23, v25, 1);
  v28 = v27;

  v50._countAndFlagsBits = v26;
  v50._object = v28;
  v49 = 65532;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  sub_95880();
  sub_958D4();
  sub_95928();
  sub_98168();
  sub_96488();
  v48._countAndFlagsBits = 2570;
  v48._object = 0xE200000000000000;
  sub_EA78(&qword_C8498, &qword_C8478);
  sub_98168();
  (*(v16 + 8))(v18, v15);
  v48._countAndFlagsBits = 10256610;
  v48._object = 0xA300000000000000;
  sub_97EE8(v50);

  v51._countAndFlagsBits = 10322146;
  v51._object = 0xA300000000000000;
  sub_97EE8(v51);
  v50 = v48;
  if (v43 && v44)
  {
    v52._countAndFlagsBits = sub_9597C(v39, v43, v40, v44, v41);
    v48._countAndFlagsBits = 2570;
    v48._object = 0xE200000000000000;
    sub_97EE8(v52);

    sub_97EE8(v48);
  }

  sub_4BF8(v45, v12, &qword_C48D0);
  v30 = v46;
  v29 = v47;
  if ((*(v46 + 48))(v12, 1, v47) == 1)
  {
    sub_4C60(v12, &qword_C48D0);
  }

  else
  {
    v31 = v42;
    (*(v30 + 32))(v42, v12, v29);
    v48._countAndFlagsBits = 10;
    v48._object = 0xE100000000000000;
    v53._countAndFlagsBits = sub_95F28();
    sub_97EE8(v53);

    sub_97EE8(v48);

    (*(v30 + 8))(v31, v29);
  }

  v48._countAndFlagsBits = 10;
  v48._object = 0xE100000000000000;
  v32 = [objc_opt_self() mainBundle];
  v38._countAndFlagsBits = 0x80000000000A53F0;
  v54._object = 0x80000000000A53D0;
  v54._countAndFlagsBits = 0xD00000000000001ELL;
  v56.value._countAndFlagsBits = 0;
  v56.value._object = 0;
  v33.super.isa = v32;
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  v34 = sub_95E98(v54, v56, v33, v57, v38);
  v36 = v35;

  v55._countAndFlagsBits = v34;
  v55._object = v36;
  sub_97EE8(v55);

  sub_97EE8(v48);

  return v50._countAndFlagsBits;
}

unint64_t sub_95880()
{
  result = qword_C8480;
  if (!qword_C8480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8480);
  }

  return result;
}

unint64_t sub_958D4()
{
  result = qword_C8488;
  if (!qword_C8488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8488);
  }

  return result;
}

unint64_t sub_95928()
{
  result = qword_C8490;
  if (!qword_C8490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8490);
  }

  return result;
}

uint64_t sub_9597C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C84A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_95F98();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BF8(a5, v11, &unk_C84A0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_4C60(v11, &unk_C84A0);
    v16 = [objc_opt_self() mainBundle];
    v28._countAndFlagsBits = 0xE000000000000000;
    v31._countAndFlagsBits = 0x4F48535F4D4F5246;
    v31._object = 0xEC00000050455F57;
    v33.value._countAndFlagsBits = 0;
    v33.value._object = 0;
    v17.super.isa = v16;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    sub_95E98(v31, v33, v17, v35, v28);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6790);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_A05E0;
    *(v18 + 56) = &type metadata for String;
    v19 = sub_5A4AC();
    *(v18 + 32) = v30;
    *(v18 + 40) = a4;
    *(v18 + 96) = &type metadata for String;
    *(v18 + 104) = v19;
    *(v18 + 64) = v19;
    *(v18 + 72) = a1;
    *(v18 + 80) = a2;

    v20 = sub_97DD8();
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v21 = [objc_opt_self() mainBundle];
    v28._countAndFlagsBits = 0xE000000000000000;
    v32._object = 0x80000000000A5420;
    v32._countAndFlagsBits = 0xD000000000000011;
    v34.value._countAndFlagsBits = 0;
    v34.value._object = 0;
    v22.super.isa = v21;
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    v29 = sub_95E98(v32, v34, v22, v36, v28);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6790);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_A0AC0;
    *(v23 + 56) = &type metadata for String;
    v24 = sub_5A4AC();
    *(v23 + 32) = v30;
    *(v23 + 40) = a4;
    *(v23 + 96) = &type metadata for String;
    *(v23 + 104) = v24;
    *(v23 + 64) = v24;
    *(v23 + 72) = a1;
    *(v23 + 80) = a2;

    v25 = sub_95F88();
    *(v23 + 136) = &type metadata for String;
    *(v23 + 144) = v24;
    *(v23 + 112) = v25;
    *(v23 + 120) = v26;
    v20 = sub_97DD8();

    (*(v13 + 8))(v15, v12);
  }

  return v20;
}