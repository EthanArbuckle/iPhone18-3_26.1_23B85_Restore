void sub_38DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 200), 8);
  _Block_object_dispose((v39 - 112), 8);
  _Unwind_Resume(a1);
}

id UITableViewCellDisclosureChevronImage()
{
  v0 = objc_opt_new();
  v1 = [v0 _disclosureChevronImage:0];

  return v1;
}

uint64_t _s12NowPlayingUI0aB21MediaPlayerControllerC19primaryArtworkTrace33_BD6C381424466E5C12AE14FFAD22DB62LL18PodcastsFoundation0I0_pvpfi_0()
{
  v0 = sub_14243C();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1423FC();
  sub_144C2C();
  sub_141F8C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t variable initialization expression of NowPlayingMediaPlayerController.playerStylePublisher()
{
  sub_140D5C();
  __chkstk_darwin();
  (*(v1 + 104))(&v3 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for NowPlayingPlayerStyle.mini(_:));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C00F0);
  swift_allocObject();
  return sub_14260C();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t variable initialization expression of NowPlayingMediaPlayerController.selectedContentSubject()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1DA0);
  __chkstk_darwin();
  v1 = &v4 - v0;
  v2 = sub_1417CC();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0100);
  swift_allocObject();
  return sub_14260C();
}

char *variable initialization expression of NowPlayingMediaPlayerController.miniPlayerSublineController()
{
  type metadata accessor for NowPlayingMiniPlayerSublineController(0);
  v0 = swift_allocObject();
  type metadata accessor for NowPlayingMiniPlayerSublineViewModel(0);
  *(v0 + 2) = 0;
  *(v0 + 3) = 0;
  swift_allocObject();
  v1 = sub_76918();
  *(v0 + 5) = 0;
  *(v0 + 6) = 0;
  *(v0 + 4) = v1;
  v2 = OBJC_IVAR____TtC12NowPlayingUI37NowPlayingMiniPlayerSublineController____lazy_storage___miniPlayerSubtitle;
  v3 = sub_1415DC();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = OBJC_IVAR____TtC12NowPlayingUI37NowPlayingMiniPlayerSublineController____lazy_storage___viewProvider;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0108);
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  return v0;
}

uint64_t sub_542C(void (*a1)(void), uint64_t (*a2)(void))
{
  a1(0);
  swift_allocObject();
  return a2();
}

uint64_t variable initialization expression of NowPlayingMediaPlayerController.$__lazy_storage_$_viewProvider@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C0110);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_54F4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C2B00) + 36);
  v15 = sub_141C9C();
  (*(*(v15 - 8) + 16))(v14, a1, v15);
  *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0120) + 36)) = a2;
  *a7 = a3;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5 & 1;
  *(a7 + 24) = a6;
  sub_63AC(a3, a4, a5 & 1);
}

uint64_t sub_55E8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>, float a7@<S0>)
{
  *a6 = a2;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4 & 1;
  *(a6 + 24) = a5;
  *(a6 + 32) = a7;
  *(a6 + 36) = a1;
  sub_63AC(a2, a3, a4 & 1);
}

uint64_t sub_5644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != 4)
  {
    sub_14367C();
  }

  return sub_1438EC();
}

uint64_t sub_5714()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1434FC();

    return sub_142C6C();
  }

  else
  {
    sub_142D3C();
    swift_getWitnessTable();
    sub_14334C();
    sub_142C6C();
    sub_1450CC();
    swift_getWitnessTable();
    sub_142D3C();
    swift_getWitnessTable();
    sub_14334C();
    return sub_142C6C();
  }
}

uint64_t sub_5878()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1434FC();
    sub_142C6C();
  }

  else
  {
    sub_142D3C();
    swift_getWitnessTable();
    sub_14334C();
    sub_142C6C();
    sub_1450CC();
    swift_getWitnessTable();
    sub_142D3C();
    swift_getWitnessTable();
    sub_14334C();
    sub_142C6C();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

double variable initialization expression of NowPlayingContextInteractionDelegate.episodeController@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id variable initialization expression of BaseTabBarController.accessoryView()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 init];
}

id variable initialization expression of BaseTabBarController.separator()
{
  v0 = [objc_allocWithZone(UIView) init];
  v1 = [objc_opt_self() _barHairlineShadowColor];
  [v0 setBackgroundColor:v1];

  return v0;
}

uint64_t variable initialization expression of TickerSlider._colorScheme@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0128);

  return swift_storeEnumTagMultiPayload();
}

double variable initialization expression of NowPlayingPlaybackControlsViewModel.sliderSelectedPlaybackRate()
{
  sub_141F5C();
  sub_141EDC();
  return v0;
}

uint64_t variable initialization expression of NowPlayingPlaybackControlsViewModel.playbackRatePublisher()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C0130);
  swift_allocObject();
  return sub_1425DC();
}

uint64_t variable initialization expression of NowPlayingPlaybackControlsViewModel.isScrollingPublisher()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C92C0);
  swift_allocObject();
  return sub_14260C();
}

uint64_t variable initialization expression of NowPlayingPlaybackControlsViewModel.animationViewModel()
{
  type metadata accessor for NowPlayingSpeedControlsAnimationViewModel(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = xmmword_149810;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 56) = _Q0;
  _s12NowPlayingUI0aB25PlaybackControlsViewModelC22__observationRegistrar33_BBABE4AA5745F1C18638BEFD3E39EDD411Observation0qI0Vvpfi_0();
  return v0;
}

uint64_t sub_5DA0(uint64_t a1, id *a2)
{
  result = sub_1448BC();
  *a2 = 0;
  return result;
}

uint64_t sub_5E18(uint64_t a1, id *a2)
{
  v3 = sub_1448CC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_5E98@<X0>(void *a1@<X8>)
{
  sub_1448DC();
  v2 = sub_14489C();

  *a1 = v2;
  return result;
}

BOOL sub_5EF0(void *a1, uint64_t *a2)
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

uint64_t sub_5F54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1448DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_5F80@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_5FA4(uint64_t a1)
{
  v2 = sub_6814(&qword_1C0430, type metadata accessor for Key);
  v3 = sub_6814(&qword_1C0438, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_6060(uint64_t a1)
{
  v2 = sub_6814(&qword_1C0308, type metadata accessor for Name);
  v3 = sub_6814(&qword_1C0310, type metadata accessor for Name);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_611C@<X0>(void *a1@<X8>)
{
  v2 = sub_14489C();

  *a1 = v2;
  return result;
}

uint64_t sub_6164(uint64_t a1)
{
  v2 = sub_6814(&qword_1C0318, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_6814(&qword_1C0320, type metadata accessor for NSKeyValueChangeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_6220()
{
  sub_1448DC();
  v0 = sub_14497C();

  return v0;
}

uint64_t sub_625C()
{
  sub_1448DC();
  sub_14492C();
}

Swift::Int sub_62B0()
{
  sub_1448DC();
  sub_14545C();
  sub_14492C();
  v0 = sub_1454AC();

  return v0;
}

uint64_t sub_6324()
{
  v0 = sub_1448DC();
  v2 = v1;
  if (v0 == sub_1448DC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1453BC();
  }

  return v5 & 1;
}

uint64_t sub_63AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_65A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_65C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_665C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_66B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_6728(uint64_t a1, int a2)
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

uint64_t sub_6748(uint64_t result, int a2, int a3)
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

uint64_t sub_6814(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_6AE0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_6BA8()
{
  _s24LoadingStatusCoordinatorCMa();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(NSHashTable) initWithOptions:5 capacity:0];
  result = [objc_allocWithZone(NSMapTable) initWithKeyOptions:5 valueOptions:0 capacity:0];
  *(v0 + 24) = result;
  qword_1D1728 = v0;
  return result;
}

void sub_6C2C(uint64_t a1)
{
  p_ivar_lyt = &SongCell.ivar_lyt;
  [*(v1 + 16) removeObject:a1];
  v4 = sub_139F90(_swiftEmptyArrayStorage);
  v87 = v4;
  v79 = v1;
  v5 = [*(v1 + 24) keyEnumerator];
  v74 = v5;
  v83 = a1;
  if ([v5 nextObject])
  {
    while (1)
    {
      sub_14514C();
      swift_unknownObjectRelease();
      sub_7828(v86, &v84);
      sub_77DC();
      if (swift_dynamicCast())
      {
        v6 = v85;
        v7 = [*(v79 + 24) objectForKey:v85];
        if (v7)
        {
          v8 = v7;
          v9 = v87;
          if ((v87 & 0xC000000000000001) != 0)
          {
            if (v87 < 0)
            {
              v10 = v87;
            }

            else
            {
              v10 = v87 & 0xFFFFFFFFFFFFFF8;
            }

            v11 = sub_1452CC();
            if (__OFADD__(v11, 1))
            {
              goto LABEL_73;
            }

            v9 = sub_7550(v10, v11 + 1);
            v87 = v9;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v84 = v9;
          v13 = sub_F7D28(v6);
          v15 = *(v9 + 16);
          v16 = (v14 & 1) == 0;
          v17 = __OFADD__(v15, v16);
          v18 = v15 + v16;
          if (v17)
          {
            goto LABEL_72;
          }

          v19 = v14;
          if (*(v9 + 24) < v18)
          {
            sub_13546C(v18, isUniquelyReferenced_nonNull_native);
            v13 = sub_F7D28(v6);
            if ((v19 & 1) != (v20 & 1))
            {
              goto LABEL_75;
            }

            goto LABEL_19;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_19:
            v21 = v84;
            if ((v19 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v22 = v13;
            sub_138CFC();
            v13 = v22;
            v5 = v74;
            v21 = v84;
            if ((v19 & 1) == 0)
            {
LABEL_22:
              v21[(v13 >> 6) + 8] |= 1 << v13;
              *(v21[6] + 8 * v13) = v6;
              *(v21[7] + 8 * v13) = v8;
              __swift_destroy_boxed_opaque_existential_0(v86);
              v23 = v21[2];
              v17 = __OFADD__(v23, 1);
              v24 = v23 + 1;
              if (v17)
              {
                goto LABEL_74;
              }

              v21[2] = v24;
              v87 = v21;
              goto LABEL_5;
            }
          }

          *(v21[7] + 8 * v13) = v8;

          __swift_destroy_boxed_opaque_existential_0(v86);
          v87 = v21;
          goto LABEL_5;
        }

        sub_AEA20(v6);
      }

      __swift_destroy_boxed_opaque_existential_0(v86);
LABEL_5:
      if (![v5 nextObject])
      {
        v4 = v87;
        p_ivar_lyt = (&SongCell + 16);
        break;
      }
    }
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    if (sub_1452CC() <= 0)
    {
      goto LABEL_66;
    }

    v25 = sub_1452BC();
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v4 = v25 | 0x8000000000000000;
  }

  else
  {
    if (!*(v4 + 16))
    {
      goto LABEL_66;
    }

    v29 = -1 << *(v4 + 32);
    v26 = v4 + 64;
    v27 = ~v29;
    v30 = -v29;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v28 = v31 & *(v4 + 64);
  }

  v32 = 0;
  v81 = _swiftEmptyArrayStorage;
  v33 = (v27 + 64) >> 6;
  v75 = v33;
  v72 = v26;
  v73 = v4;
  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_37;
  }

LABEL_43:
  v43 = sub_1452EC();
  if (!v43 || (v45 = v44, v85 = v43, sub_77DC(), swift_dynamicCast(), v42 = v84, v85 = v45, _s24LoadingStatusCoordinatorC12ObserverListCMa(), swift_dynamicCast(), v82 = v84, v34 = v32, v38 = v28, !v42))
  {
LABEL_62:
    sub_7774();
    v68 = v81[2];
    if (v68)
    {
      v69 = v81 + 5;
      do
      {
        v70 = *(v69 - 1);

        v70(v71);

        v69 += 2;
        --v68;
      }

      while (v68);

      v5 = v74;
      goto LABEL_67;
    }

LABEL_66:

LABEL_67:

    return;
  }

  while (1)
  {
    v77 = v42;
    v78 = v38;
    swift_beginAccess();
    v46 = v82[2];
    v47 = *(v46 + 16);
    v80 = (v46 + 16);
    if (v47)
    {
      v76 = v34;

      v48 = -v47;
      v49 = v47 - 1;
      v50 = 24 * v47 + 32;
      v51 = v80;
      v52 = v81;
      v53 = &selRef_addSublayer_;
      do
      {
        if (!v48)
        {
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        if (v49 >= *v51)
        {
          goto LABEL_69;
        }

        v56 = *(v51 + v50 - 40);
        v57 = *(v51 + v50 - 32);
        v58 = *(v51 + v50 - 24);

        [v58 p:v83 ivar:?lyt[413]];
        if (![v58 v53[186]])
        {
          swift_beginAccess();
          v59 = v82[2];
          v60 = swift_isUniquelyReferenced_nonNull_native();
          v82[2] = v59;
          if ((v60 & 1) == 0)
          {
            v59 = sub_9F040(v59);
            v82[2] = v59;
          }

          v61 = *(v59 + 2);
          if (v49 >= v61)
          {
            goto LABEL_70;
          }

          v62 = v61 - 1;
          v63 = v52;
          v64 = *&v59[v50 - 8];
          memmove(&v59[v50 - 24], &v59[v50], 24 * (v48 + v61));
          *(v59 + 2) = v62;
          v82[2] = v59;
          swift_endAccess();

          v52 = v63;

          v65 = swift_allocObject();
          *(v65 + 16) = v56;
          *(v65 + 24) = v57;
          v66 = v63[2];

          v67 = swift_isUniquelyReferenced_nonNull_native();
          if (!v67 || v66 >= v52[3] >> 1)
          {
            v52 = sub_133E2C(v67, v66 + 1, 1, v52);
          }

          p_ivar_lyt = &SongCell.ivar_lyt;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C06B8);
          swift_arrayDestroy();
          v54 = v52[2];
          memmove(v52 + 6, v52 + 4, 16 * v54);
          v52[2] = v54 + 1;
          v52[4] = sub_77B4;
          v52[5] = v65;
          v53 = &selRef_addSublayer_;
          v51 = v80;
        }

        --v49;
        v50 -= 24;
      }

      while (!__CFADD__(v48++, 1));
      v81 = v52;

      v4 = v73;
      if (!*(v82[2] + 16))
      {
        v5 = v74;
        v26 = v72;
        v34 = v76;
        goto LABEL_36;
      }

      v32 = v76;
      v28 = v78;
      v5 = v74;
      v33 = v75;
      v26 = v72;
      if ((v73 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
LABEL_36:
      v35 = *(v79 + 24);
      [v35 removeObjectForKey:v77];

      v32 = v34;
      v28 = v78;
      v33 = v75;
      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }
    }

LABEL_37:
    v36 = v32;
    v37 = v28;
    v34 = v32;
    if (!v28)
    {
      break;
    }

LABEL_41:
    v38 = (v37 - 1) & v37;
    v39 = (v34 << 9) | (8 * __clz(__rbit64(v37)));
    v40 = v5;
    v41 = *(*(v4 + 56) + v39);
    v42 = *(*(v4 + 48) + v39);
    v82 = v41;
    v5 = v40;

    if (!v42)
    {
      goto LABEL_62;
    }
  }

  while (1)
  {
    v34 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v34 >= v33)
    {
      goto LABEL_62;
    }

    v37 = *(v26 + 8 * v34);
    ++v36;
    if (v37)
    {
      goto LABEL_41;
    }
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  sub_1453EC();
  __break(1u);
}

uint64_t sub_73E4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_741C()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_74B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_7500(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

Swift::Int sub_7550(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C06C0);
    v2 = sub_14534C();
    v19 = v2;
    sub_1452BC();
    v3 = sub_1452EC();
    if (v3)
    {
      v4 = v3;
      sub_77DC();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        _s24LoadingStatusCoordinatorC12ObserverListCMa();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_13546C(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_144FEC(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1452EC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_777C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_77DC()
{
  result = qword_1C89D0;
  if (!qword_1C89D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C89D0);
  }

  return result;
}

uint64_t sub_7828(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

id sub_78E0()
{
  *(v0 + 24) = 0;
  v1 = [objc_opt_self() mainScreen];
  [v1 scale];
  v3 = v2;

  *(v0 + 32) = v3;
  if (qword_1BFFE8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (!qword_1D1830)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!qword_1D1840)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = qword_1D1840;
  if (![v5 isViewLoaded])
  {

    goto LABEL_10;
  }

  result = [v5 view];
  if (result)
  {
    v6 = result;
    v7 = [result tintColor];

    v8 = v7;
    if (v7)
    {
LABEL_11:
      *(v0 + 40) = v8;
      _s5CacheC3KeyCMa();
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      *(v9 + 24) = 0xE000000000000000;
      *(v9 + 32) = xmmword_14A330;
      *(v9 + 48) = sub_8E7C;
      *(v9 + 56) = 0;
      *(v9 + 80) = 0x80000000;
      *(v9 + 96) = xmmword_14A340;
      *(v9 + 112) = 0x4030000000000000;
      *(v9 + 120) = 0;
      *(v9 + 128) = 0;
      *(v9 + 136) = 0;
      *(v0 + 56) = v9;
      sub_9918();
      *(v0 + 72) = v10;
      *(v0 + 80) = 0;
      *(v0 + 88) = 0;
      *(v0 + 96) = 0;
      *(v0 + 16) = *(v0 + 32);
      v11 = *(v0 + 40);
      v12 = *(v0 + 24);
      *(v0 + 24) = v11;
      v13 = v11;

      v14 = [objc_allocWithZone(NSCache) init];
      *(v0 + 48) = v14;
      [v14 setTotalCostLimit:200000];
      v15 = [objc_allocWithZone(NSCache) init];
      *(v0 + 64) = v15;
      [v15 setCountLimit:50];
      return v0;
    }

LABEL_10:
    v8 = [objc_opt_self() systemBlueColor];
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
  return result;
}

id sub_7B2C()
{
  result = [objc_allocWithZone(NSCache) init];
  qword_1C06C8 = result;
  return result;
}

NSString *sub_7B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, void *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v178 = a4;
  v12 = sub_14095C();
  v13 = *(v12 - 8);
  v171 = v12;
  v172 = v13;
  __chkstk_darwin(v12);
  v170 = &v162 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0B50);
  v16 = __chkstk_darwin(v15 - 8);
  *&v175 = &v162 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v162 - v19;
  __chkstk_darwin(v18);
  v22 = &v162 - v21;
  v23 = v6[4];
  v24 = v6[5];
  v25 = v6[6];
  v27 = v6[7];
  v26 = v6[8];
  v173 = v6[9];
  v174 = v26;
  v177 = a1;
  *(v27 + 16) = a1;
  *(v27 + 24) = a2;
  v28 = v24;

  v29 = *(v27 + 64);
  v30 = *(v27 + 80);
  v31 = *(v27 + 112);
  v201[4] = *(v27 + 96);
  v201[5] = v31;
  v201[2] = v29;
  v201[3] = v30;
  v32 = *(v27 + 48);
  v201[0] = *(v27 + 32);
  v201[1] = v32;
  v33 = a3[2];
  v34 = a3[3];
  v35 = a3[5];
  *(v27 + 96) = a3[4];
  *(v27 + 112) = v35;
  v36 = a3[1];
  *(v27 + 32) = *a3;
  *(v27 + 48) = v36;
  *(v27 + 64) = v33;
  *(v27 + 80) = v34;
  sub_9724(a3, &v185);
  sub_9780(v201);
  *(v27 + 128) = a5;
  *(v27 + 136) = a6;
  v37 = [v25 objectForKey:v27];
  if (v37)
  {
    v38 = v37;

    v39 = v38[6];
    v189 = v38[5];
    v190 = v39;
    v40 = v38[8];
    v191 = v38[7];
    v192 = v40;
    v41 = v38[2];
    v185 = v38[1];
    v186 = v41;
    v42 = v38[4];
    v187 = v38[3];
    v188 = v42;
    sub_9AD8(&v185, v184);

    v44 = *(&v192 + 1);
    v45 = v192;
    v47 = *(&v191 + 1);
    v46 = *&v191;
    v48 = *(&v189 + 1);
    v49 = v189;
    v50 = *(&v190 + 1);
    v51 = *&v190;
    v52 = *(&v188 + 1);
    v53 = *&v188;
    v55 = *(&v187 + 1);
    v54 = v187;
    v57 = *(&v185 + 1);
    v56 = v185;
    v58 = v186;
    LOBYTE(v59) = BYTE8(v186);
LABEL_64:
    LOBYTE(v185) = v59;
    v161 = v178;
    *v178 = v56;
    v161[1] = v57;
    v161[2] = v58;
    *(v161 + 24) = v59;
    v161[4] = v54;
    v161[5] = v55;
    *(v161 + 6) = v53;
    *(v161 + 7) = v52;
    v161[8] = v49;
    *(v161 + 9) = v48;
    *(v161 + 10) = v51;
    *(v161 + 11) = v50;
    *(v161 + 12) = v46;
    *(v161 + 13) = v47;
    v161[14] = v45;
    v161[15] = v44;
    return result;
  }

  v60 = v173;
  v61 = v174;
  v163 = v22;
  v164 = v20;
  v176 = a2;
  v166 = v25;
  v169 = v28;
  v62 = a3[1];
  v193 = *a3;
  v194 = v62;
  v63 = a3[3];
  v195 = a3[2];
  v196 = v63;
  v64 = v63;
  if ((v63 & 0x80000000) != 0)
  {
    *&v196 = v196 & 0xFFFFFFFF7FFFFFFFLL;
    v65 = v194;
    sub_9724(a3, &v185);

    v66 = v65(v177, v176);
    v67 = [v66 MTMPU_tallestFontFromAttributes];

    v68 = 0;
    v173 = 0;
    v69 = 0;
  }

  else
  {
    v162 = v196;
    v70 = v194;
    v197 = v193;
    v198 = v194;
    v71 = v195;
    v199 = v195;
    v200 = v196;
    v72 = a3[3];
    v182[2] = a3[2];
    v183 = v72;
    v73 = a3[1];
    v182[0] = *a3;
    v182[1] = v73;
    *&v183 = v183 & 0xFFFFFFFF7FFFFFFFLL;
    v74 = v173;
    v75 = v173[1];
    v76 = v173[2];
    v77 = v173[3];
    v184[3] = v173[4];
    v184[1] = v76;
    v184[2] = v77;
    v184[0] = v75;
    v78 = v196;
    v173[1] = v193;
    v60[2] = v70;
    v60[3] = v71;
    v60[4] = v78;
    sub_9674(v182, &v185);
    sub_9674(&v193, &v185);
    sub_96D0(v184);
    v79 = v61;
    v80 = [v61 objectForKey:v74];
    v81 = v169;
    if (v80 && (v82 = v80, *&v185 = 0, type metadata accessor for Key(0), sub_9D20(&qword_1C0430, type metadata accessor for Key), sub_1447FC(), v82, v185))
    {
      v69 = v185;
    }

    else
    {
      v83 = sub_94594(v81);
      _s5CacheC17AttributesWrapperCMa();
      v84 = swift_allocObject();
      v85 = v198;
      v84[1] = v197;
      v84[2] = v85;
      v86 = v200;
      v84[3] = v199;
      v84[4] = v86;
      sub_9724(a3, &v185);
      type metadata accessor for Key(0);
      sub_9D20(&qword_1C0430, type metadata accessor for Key);
      v69 = v83;
      isa = sub_1447EC().super.isa;
      [v79 setObject:isa forKey:v84];
    }

    v66 = sub_948A8(v196, v177, v176);
    v88 = *(a3 + 8);
    v173 = v89;
    if (v88 < 2)
    {

      v68 = 0;
    }

    else
    {
      v90 = v193;

      v91 = [v90 textStyle];
      v68 = v91 == &dword_0 + 2 || v91 == &dword_0 + 1;
    }

    v64 = v162;
    v93 = v193;
    v67 = [v93 preferredFont];
    sub_9780(a3);
  }

  v94 = objc_allocWithZone(NSStringDrawingContext);
  v174 = v67;
  v95 = [v94 init];
  [v95 setWantsBaselineOffset:1];
  [v95 setWantsNumberOfLineFragments:1];
  v96 = *(a3 + 8);
  [v95 setMaximumNumberOfLines:v96];
  [v95 setWrapsForTruncationMode:v96 != 1];
  if (a5 >= 0.0)
  {
    v99 = sub_141AFC();
    v98 = v176;
    if (v99)
    {
      v97 = 5.99231045e307;
    }

    else
    {
      if (qword_1BFF20 != -1)
      {
        swift_once();
      }

      v97 = 5.99231045e307;
      if ((sub_141AFC() & 1) == 0 && a5 <= 5.99231045e307)
      {
        v97 = 5.99231045e307;
        if ((sub_141AFC() & 1) == 0)
        {
          v97 = a5;
        }
      }
    }
  }

  else
  {
    v97 = 5.99231045e307;
    v98 = v176;
  }

  if (a6 < 0.0 || (sub_141AFC() & 1) != 0)
  {
    v100 = 5.99231045e307;
  }

  else
  {
    if (qword_1BFF20 != -1)
    {
      swift_once();
    }

    v100 = 5.99231045e307;
    if ((sub_141AFC() & 1) == 0 && a6 <= 5.99231045e307)
    {
      v100 = 5.99231045e307;
      if ((sub_141AFC() & 1) == 0)
      {
        v100 = a6;
      }
    }
  }

  [v95 setCachesLayout:1];
  v165 = a3;
  if ((v64 & 0x80000000) != 0)
  {
    v54 = v95;
    [v66 boundingRectWithSize:1 options:v95 context:{v97, v100}];
  }

  else
  {

    v101 = sub_14489C();

    sub_94D00(v69);

    type metadata accessor for Key(0);
    v102 = v66;
    sub_9D20(&qword_1C0430, type metadata accessor for Key);
    v103 = sub_1447EC().super.isa;

    v54 = v95;
    [v101 boundingRectWithSize:1 options:v103 attributes:v95 context:{v97, v100}];

    v66 = v102;
    v98 = v176;
  }

  v104 = *&v175;
  v105 = v164;
  sub_141ACC();
  if (v97 < v106)
  {
    v106 = v97;
  }

  v175 = v106;
  sub_141ACC();
  if (v100 < v107)
  {
    v107 = v100;
  }

  if (v68)
  {
    v108 = v107 + 2.0;
  }

  else
  {
    v108 = v107;
  }

  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  left = UIEdgeInsetsZero.left;
  *v182 = UIEdgeInsetsZero.top;
  v179 = right;
  v180 = bottom;
  v167 = a5;
  v168 = a6;
  if (!v174)
  {
LABEL_63:
    v59 = (v64 >> 31) & 1;
    [v54 baselineOffset];
    v141 = v140;
    sub_141ABC();
    v143 = v142;
    [v54 firstBaselineOffset];
    v44 = v23;
    v145 = v143 - v141 + v144;
    sub_141ACC();
    v46 = v145 + v146;
    sub_141ACC();
    v47 = v108 - v143 - v147;
    v171 = [v54 numberOfLineFragments];
    v48 = left;
    v49 = *&v182[0];
    v50 = v179;
    v51 = v180;
    *&v185 = v66;
    *(&v185 + 1) = v173;
    *&v186 = v69;
    BYTE8(v186) = (v64 & 0x80000000) != 0;
    v55 = 1;
    *&v187 = v54;
    *(&v187 + 1) = 1;
    *&v188 = v175;
    *(&v188 + 1) = v108;
    *&v189 = *&v182[0];
    *(&v189 + 1) = left;
    *&v190 = v180;
    *(&v190 + 1) = v179;
    *&v191 = v46;
    *(&v191 + 1) = v47;
    *&v192 = v171;
    *(&v192 + 1) = v44;
    _s5CacheC14ContextWrapperCMa();
    v148 = swift_allocObject();
    v172 = v66;
    v149 = v148;
    v150 = v190;
    v148[5] = v189;
    v148[6] = v150;
    v151 = v192;
    v148[7] = v191;
    v148[8] = v151;
    v152 = v186;
    v148[1] = v185;
    v148[2] = v152;
    v153 = v188;
    v148[3] = v187;
    v148[4] = v153;
    _s5CacheC3KeyCMa();
    v154 = swift_allocObject();
    v58 = v69;
    v155 = v176;
    *(v154 + 16) = v177;
    *(v154 + 24) = v155;
    v156 = v165;
    v157 = v165[3];
    *(v154 + 64) = v165[2];
    *(v154 + 80) = v157;
    v158 = v156[5];
    *(v154 + 96) = v156[4];
    *(v154 + 112) = v158;
    v159 = v156[1];
    *(v154 + 32) = *v156;
    *(v154 + 48) = v159;
    v160 = v168;
    *(v154 + 128) = v167;
    *(v154 + 136) = v160;

    sub_9724(v156, v184);
    sub_9AD8(&v185, v184);
    v57 = v173;
    [v166 setObject:v149 forKey:v154 cost:sub_14493C()];

    sub_9B34(v172, v57, v58, v59);
    v56 = v172;

    v45 = v171;
    v52 = v108;
    v53 = v175;
    goto LABEL_64;
  }

  v111 = v98;
  v112 = CTFontCopySystemUIFontExcessiveLineHeightCharacterSet();
  if (v112)
  {
    v113 = v112;
    sub_14094C();

    v114 = 0;
  }

  else
  {
    v114 = 1;
  }

  v116 = v171;
  v115 = v172;
  (*(v172 + 7))(v105, v114, 1, v171);
  v117 = v105;
  v118 = v115;
  v119 = v163;
  sub_9B84(v117, v163);
  sub_9BF4(v119, v104);
  if (v118[6](v104, 1, v116) == 1)
  {
    sub_9C64(v119);

    sub_9C64(v104);
    goto LABEL_63;
  }

  v120 = v170;
  v118[4](v170, v104, v116);
  *&v185 = v177;
  *(&v185 + 1) = v111;
  v121 = v118;
  v122 = v120;
  sub_9CCC();
  sub_14510C();
  if (v123)
  {

    (v121[1])(v120, v116);
    sub_9C64(v163);
    goto LABEL_63;
  }

  v124 = v174;
  if (qword_1BFEC8 != -1)
  {
    swift_once();
  }

  v125 = [qword_1C06C8 objectForKey:v124];
  if (v125)
  {
    v126 = v125;
    v202 = UIEdgeInsetsFromString(v125);
    top = v202.top;
    v128 = v202.left;
    v129 = v202.bottom;
    v130 = v202.right;

    left = v128;
    *v182 = top;
    v179 = v130;
    v180 = v129;
LABEL_62:
    sub_141ACC();
    v175 = v175 + v137;
    sub_141ACC();
    v139 = v138;

    (*(v172 + 1))(v122, v171);
    sub_9C64(v163);
    v108 = v108 + v139;
    goto LABEL_63;
  }

  CTFontGetLanguageAwareOutsets();
  v132 = left;
  v131 = *v182;
  v133 = v179;
  v134 = v180;
  v135 = qword_1C06C8;
  v203.top = v131;
  v203.left = v132;
  v203.bottom = v134;
  v203.right = v133;
  result = NSStringFromUIEdgeInsets(v203);
  if (result)
  {
    v136 = result;
    [v135 setObject:result forKey:v124];

    goto LABEL_62;
  }

  __break(1u);
  return result;
}

NSString sub_8958()
{
  result = sub_14489C();
  qword_1D1730 = result;
  return result;
}

id *sub_8990()
{

  return v0;
}

uint64_t sub_89E0()
{
  sub_8990();

  return swift_deallocClassInstance();
}

uint64_t sub_8ABC(uint64_t a1)
{
  if (a1)
  {
    _s5CacheC17AttributesWrapperCMa();
    swift_unknownObjectRetain();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      if (v2 == v1)
      {
        swift_unknownObjectRelease();
        v8 = 1;
      }

      else
      {
        v3 = v1[4];
        v11[2] = v1[3];
        v11[3] = v3;
        v4 = v1[2];
        v11[0] = v1[1];
        v11[1] = v4;
        v5 = v2[1];
        v6 = v2[2];
        v7 = v2[4];
        v12[2] = v2[3];
        v12[3] = v7;
        v12[0] = v5;
        v12[1] = v6;
        sub_9674(v11, v10);
        sub_9674(v12, v10);
        v8 = sub_94FA8(v11, v12);
        swift_unknownObjectRelease();
        sub_96D0(v12);
        sub_96D0(v11);
      }
    }

    else
    {
      swift_unknownObjectRelease();
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_8BBC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

Swift::Int sub_8C34()
{
  v1 = *v0;
  sub_14545C();
  v2 = v1[2];
  v6[0] = v1[1];
  v6[1] = v2;
  v3 = v1[4];
  v6[2] = v1[3];
  v6[3] = v3;
  sub_9674(v6, v5);
  sub_950A4();
  sub_96D0(v6);
  return sub_1454AC();
}

uint64_t sub_8CA4()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 64);
  v6[2] = *(*v0 + 48);
  v6[3] = v3;
  v6[0] = v1;
  v6[1] = v2;
  sub_9674(v6, &v5);
  sub_950A4();
  return sub_96D0(v6);
}

Swift::Int sub_8D00()
{
  sub_14545C();
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 64);
  v6[2] = *(*v0 + 48);
  v6[3] = v3;
  v6[0] = v1;
  v6[1] = v2;
  sub_9674(v6, v5);
  sub_950A4();
  sub_96D0(v6);
  return sub_1454AC();
}

uint64_t sub_8D6C(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == *a2)
  {
    v10 = 1;
  }

  else
  {
    v4 = v2[1];
    v5 = v2[2];
    v6 = v2[4];
    v13[2] = v2[3];
    v13[3] = v6;
    v13[0] = v4;
    v13[1] = v5;
    v7 = v3[1];
    v8 = v3[2];
    v9 = v3[4];
    v14[2] = v3[3];
    v14[3] = v9;
    v14[0] = v7;
    v14[1] = v8;
    sub_9674(v13, v12);
    sub_9674(v14, v12);
    v10 = sub_94FA8(v13, v14);
    sub_96D0(v14);
    sub_96D0(v13);
  }

  return v10 & 1;
}

uint64_t sub_8E04()
{
  v1 = v0[6];
  v6[4] = v0[5];
  v6[5] = v1;
  v2 = v0[8];
  v6[6] = v0[7];
  v6[7] = v2;
  v3 = v0[2];
  v6[0] = v0[1];
  v6[1] = v3;
  v4 = v0[4];
  v6[2] = v0[3];
  v6[3] = v4;
  sub_9A84(v6);
  return swift_deallocClassInstance();
}

id sub_8E7C()
{
  v0 = objc_allocWithZone(NSAttributedString);
  v1 = sub_14489C();
  v2 = [v0 initWithString:v1];

  return v2;
}

uint64_t sub_8F20(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_16;
  }

  _s5CacheC3KeyCMa();
  swift_unknownObjectRetain();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    goto LABEL_15;
  }

  if (v2 != v1)
  {
    if (*(v1 + 16) != *(v2 + 16) || *(v1 + 24) != *(v2 + 24))
    {
      v4 = v2;
      v5 = sub_1453BC();
      v2 = v4;
      if ((v5 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v6 = *(v1 + 112);
    v22 = *(v1 + 96);
    v23 = v6;
    v7 = *(v1 + 80);
    v20 = *(v1 + 64);
    v21 = v7;
    v8 = *(v1 + 48);
    v18 = *(v1 + 32);
    v19 = v8;
    v9 = *(v2 + 64);
    v10 = *(v2 + 80);
    v11 = *(v2 + 96);
    v29 = *(v2 + 112);
    v12 = *(v2 + 48);
    v24 = *(v2 + 32);
    v25 = v12;
    v27 = v10;
    v28 = v11;
    v26 = v9;
    if ((v21 & 0x80000000) != 0)
    {
      if ((BYTE3(v27) & 0x80) == 0)
      {
        goto LABEL_15;
      }

      if (v18 == v24)
      {
        sub_9724(&v24, v17);
        sub_9724(&v18, v17);
      }

      else
      {
        v15 = sub_1453BC();
        sub_9724(&v24, v17);
        sub_9724(&v18, v17);
        if ((v15 & 1) == 0)
        {
LABEL_25:
          swift_unknownObjectRelease();
          sub_9780(&v24);
          sub_9780(&v18);
          goto LABEL_16;
        }
      }
    }

    else
    {
      v30[0] = v18;
      v30[1] = v19;
      v30[2] = v20;
      v30[3] = v21;
      if ((v27 & 0x80000000) != 0)
      {
        goto LABEL_15;
      }

      v31[0] = v24;
      v31[1] = v25;
      v31[2] = v26;
      v31[3] = v27;
      sub_9724(&v24, v17);
      sub_9724(&v18, v17);
      if ((sub_94FA8(v30, v31) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    if (v22 != v28 || (sub_141AFC() & 1) == 0)
    {
      goto LABEL_25;
    }

    v16 = sub_141AFC();
    sub_9780(&v24);
    sub_9780(&v18);
    if (v16)
    {
      v13 = sub_144F5C();
      swift_unknownObjectRelease();
      return v13 & 1;
    }

LABEL_15:
    swift_unknownObjectRelease();
LABEL_16:
    v13 = 0;
    return v13 & 1;
  }

  swift_unknownObjectRelease();
  v13 = 1;
  return v13 & 1;
}

uint64_t sub_9184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();

  LOBYTE(a4) = a4(a3);
  swift_unknownObjectRelease();

  return a4 & 1;
}

uint64_t sub_91E8()
{

  sub_9A08(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

Swift::Int sub_9258()
{
  sub_14545C();
  sub_14492C();
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  if ((*(v0 + 80) & 0x80000000) != 0)
  {
    v3 = sub_14497C();
    sub_14546C(~v3);
  }

  else
  {
    sub_950A4();
  }

  sub_14546C(v2);
  sub_14546C(v1);
  v4 = sub_141ADC();
  sub_14546C(v4);
  v5 = sub_141ADC();
  sub_14546C(v5);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  sub_14549C(*&v6);
  if (v7 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v7;
  }

  sub_14549C(*&v8);
  return sub_1454AC();
}

void sub_9384()
{
  v1 = *v0;

  sub_14492C();

  v2 = *(v1 + 32);
  v3 = *(v1 + 80);
  v12 = *(v1 + 64);
  v13 = v3;
  v4 = *(v1 + 112);
  v14 = *(v1 + 96);
  v15 = v4;
  v5 = *(v1 + 48);
  v10 = v2;
  v11 = v5;
  if ((v13 & 0x80000000) != 0)
  {
    sub_9724(&v10, v9);
    v6 = sub_14497C();
    sub_14546C(~v6);
  }

  else
  {
    v9[6] = __PAIR128__(*(&v2 + 1), v10);
    v9[7] = v11;
    v9[8] = v12;
    v9[9] = v13;
    sub_9724(&v10, v9);
    sub_950A4();
  }

  sub_14546C(v14);
  sub_14546C(*(&v14 + 1));
  v7 = sub_141ADC();
  sub_14546C(v7);
  v8 = sub_141ADC();
  sub_14546C(v8);
  sub_9780(&v10);
  sub_97D4(*(v1 + 128), *(v1 + 136));
}

Swift::Int sub_94A0()
{
  sub_14545C();
  v1 = *v0;

  sub_14492C();

  v2 = *(v1 + 32);
  v3 = *(v1 + 80);
  v17 = *(v1 + 64);
  v18 = v3;
  v4 = *(v1 + 112);
  v19 = *(v1 + 96);
  v20 = v4;
  v5 = *(v1 + 48);
  v15 = v2;
  v16 = v5;
  if ((v18 & 0x80000000) != 0)
  {
    sub_9724(&v15, v10);
    v6 = sub_14497C();
    sub_14546C(~v6);
  }

  else
  {
    v11 = __PAIR128__(*(&v2 + 1), v15);
    v12 = v16;
    v13 = v17;
    v14 = v18;
    sub_9724(&v15, v10);
    sub_950A4();
  }

  sub_14546C(v19);
  sub_14546C(*(&v19 + 1));
  v7 = sub_141ADC();
  sub_14546C(v7);
  v8 = sub_141ADC();
  sub_14546C(v8);
  sub_9780(&v15);
  sub_97D4(*(v1 + 128), *(v1 + 136));
  return sub_1454AC();
}

void sub_97D4(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  sub_14549C(*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  sub_14549C(*&v3);
}

uint64_t sub_9824(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v19 = v2;
  v20 = v3;
  v6 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v6 || (sub_1453BC()) && (v7 = *(a1 + 80), v17[2] = *(a1 + 64), v17[3] = v7, v8 = *(a1 + 112), v17[4] = *(a1 + 96), v17[5] = v8, v9 = *(a1 + 48), v17[0] = *(a1 + 32), v17[1] = v9, v10 = *(a2 + 80), v18[2] = *(a2 + 64), v18[3] = v10, v11 = *(a2 + 112), v18[4] = *(a2 + 96), v18[5] = v11, v12 = *(a2 + 48), v18[0] = *(a2 + 32), v18[1] = v12, sub_9724(v17, v16), sub_9724(v18, v16), v13 = sub_CD494(v17, v18), sub_9780(v18), sub_9780(v17), (v13))
  {
    v14 = sub_144F5C();
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

double sub_9918()
{
  v0 = [objc_opt_self() fontDescriptorWithTextStyle:0];
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v1 clearColor];
  v4 = [v0 typeSafeCopy];

  _s5CacheC17AttributesWrapperCMa();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  *(v5 + 32) = v3;
  *(v5 + 40) = 0;
  *(v5 + 48) = 4;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  result = 0.0000305175781;
  *(v5 + 68) = 0x3F00000000000000;
  *(v5 + 76) = 1065353216;
  return result;
}

void sub_9A08(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7 < 0)
  {
  }

  else
  {
  }
}

void sub_9B34(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_9B84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0B50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_9BF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9C64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_9CCC()
{
  result = qword_1C0B58;
  if (!qword_1C0B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C0B58);
  }

  return result;
}

uint64_t sub_9D20(unint64_t *a1, void (*a2)(uint64_t))
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

void CompositeComponentItem.hash(into:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_141ADC();
  }

  sub_14546C(v6);
  sub_14546C([a2 hash]);
}

uint64_t static CompositeComponentItem.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a1 != a5)
  {
    return 0;
  }

  if (a4)
  {
    return (a8 & 1) != 0;
  }

  if (a8)
  {
    return 0;
  }

  return sub_141AFC();
}

Swift::Int CompositeComponentItem.hashValue.getter(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_14545C();
  v6 = 0;
  if ((a4 & 1) == 0)
  {
    v6 = sub_141ADC();
  }

  sub_14546C(v6);
  sub_14546C([a1 hash]);
  return sub_1454AC();
}

Swift::Int sub_9E64()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  sub_14545C();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    v3 = sub_141ADC();
  }

  sub_14546C(v3);
  sub_14546C([v1 hash]);
  return sub_1454AC();
}

void sub_9EE0()
{
  v1 = *v0;
  if (*(v0 + 24))
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_141ADC();
  }

  sub_14546C(v2);
  sub_14546C([v1 hash]);
}

Swift::Int sub_9F38()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  sub_14545C();
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_141ADC();
  }

  sub_14546C(v3);
  sub_14546C([v1 hash]);
  return sub_1454AC();
}

uint64_t sub_9FB4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a2 + 24);
  v4 = *(a1 + 24);
  if (v4 & 1) != 0 || (v3)
  {
    return v4 & v3;
  }

  else
  {
    return sub_141AFC();
  }
}

uint64_t sub_9FF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); *(v3 - 3) == *(i - 3); i += 32)
    {
      if (*v3)
      {
        if (!*i)
        {
          return 0;
        }
      }

      else if ((*i & 1) != 0 || (sub_141AFC() & 1) == 0)
      {
        return 0;
      }

      v3 += 32;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_A09C(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 16);
  if (v8 != *(a2 + 16))
  {
    return 0;
  }

  if (!v8 || a1 == a2)
  {
    return 1;
  }

  v49 = v7;
  v50 = v6;
  v51 = v5;
  v52 = v4;
  v53 = v2;
  v54 = v3;
  v9 = (a1 + 32);
  v10 = (a2 + 32);
  v11 = v8 - 1;
  while (1)
  {
    v12 = v9[5];
    v39 = v9[4];
    v40 = v12;
    v41 = v9[6];
    v13 = v9[1];
    v35 = *v9;
    v36 = v13;
    v14 = v9[3];
    v37 = v9[2];
    v38 = v14;
    v15 = v10[1];
    v42 = *v10;
    v43 = v15;
    v16 = v10[2];
    v17 = v10[3];
    v18 = v10[6];
    v47 = v10[5];
    *v48 = v18;
    v19 = v10[4];
    v45 = v17;
    v46 = v19;
    v44 = v16;
    if (v35 != v42 && (sub_1453BC() & 1) == 0 || v36 != v43 && (sub_1453BC() & 1) == 0)
    {
      return 0;
    }

    v29 = v11;
    v20 = v37;
    v21 = v38;
    v33 = BYTE8(v38);
    v32 = v39;
    v22 = *(&v40 + 1);
    v23 = v44;
    v24 = v45;
    v25 = BYTE8(v45);
    v26 = v46;
    v30 = v47;
    v31 = v40;
    v27 = *(&v47 + 1);
    if (v37 == v44)
    {
      sub_102A8(&v35, v34);
      sub_102A8(&v42, v34);
      if (!*(&v20 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_102A8(&v35, v34);
      sub_102A8(&v42, v34);
      if (![v20 isEqual:v23])
      {
        goto LABEL_35;
      }

      if (!*(&v20 + 1))
      {
LABEL_17:
        if (*(&v23 + 1))
        {
          goto LABEL_35;
        }

        goto LABEL_18;
      }
    }

    if (!*(&v23 + 1) || *(&v20 + 1) != *(&v23 + 1) && ![*(&v20 + 1) isEqual:*(&v23 + 1)])
    {
LABEL_35:
      sub_10304(&v42);
      sub_10304(&v35);
      return 0;
    }

LABEL_18:
    if (v21)
    {
      if (!v24 || v21 != v24 && ![v21 isEqual:v24])
      {
        goto LABEL_35;
      }
    }

    else if (v24)
    {
      goto LABEL_35;
    }

    if (v33 != v25 || v32 != v26 || (sub_141AFC() & 1) == 0)
    {
      goto LABEL_35;
    }

    sub_10304(&v42);
    sub_10304(&v35);
    if (v22 != v27 || v31 != v30 || *&v41 != v48[0] || *(&v41 + 1) != v48[1])
    {
      return 0;
    }

    if (!v29)
    {
      return 1;
    }

    v11 = v29 - 1;
    v10 += 7;
    v9 += 7;
  }
}

Swift::Int CompositeComponentGroup.hashValue.getter(uint64_t a1)
{
  sub_14545C();
  sub_14546C(*(a1 + 16));
  return sub_1454AC();
}

Swift::Int sub_A3B8()
{
  v1 = *v0;
  sub_14545C();
  sub_14546C(*(v1 + 16));
  return sub_1454AC();
}

Swift::Int sub_A430()
{
  v1 = *v0;
  sub_14545C();
  sub_14546C(*(v1 + 16));
  return sub_1454AC();
}

unint64_t sub_A478()
{
  result = qword_1C0B60;
  if (!qword_1C0B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C0B60);
  }

  return result;
}

unint64_t sub_A4D0()
{
  result = qword_1C0B68;
  if (!qword_1C0B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C0B68);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_A544(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_A58C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_A5F0()
{
  v1 = v0;

  v3 = sub_9E074(v2);

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 40);
    do
    {
      v6 = *v5;
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 40);
      swift_unknownObjectRetain_n();
      v8(0, ObjectType, v6);
      v9 = (*(v6 + 16))(ObjectType, v6);
      v10 = [v1 view];
      if (v10)
      {
        v11 = v10;
        if ([v1 isViewLoaded])
        {
          if ([v9 isDescendantOfView:v11])
          {
            [v9 removeFromSuperview];
          }

          v12 = (*(v6 + 8))(ObjectType, v6);
          swift_unknownObjectWeakAssign();
          sub_12BAAC();

          v11 = v12;
        }
      }

      [v9 setHidden:0];
      if ((*(v6 + 24))(ObjectType, v6))
      {
        (*(v6 + 32))([v1 isEditing], 0, ObjectType, v6);
      }

      (*(v6 + 48))(0, ObjectType, v6);
      swift_unknownObjectRelease_n();

      v5 += 4;
      --v4;
    }

    while (v4);
  }

  v13 = *&v1[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_collectionView];
  if (v13)
  {
    v14 = type metadata accessor for CompositeCollectionView();
    v22.receiver = v13;
    v22.super_class = v14;
    v15 = v13;
    objc_msgSendSuper2(&v22, "setDataSource:", 0);
    sub_BD5C0();
    v21.receiver = v15;
    v21.super_class = v14;
    objc_msgSendSuper2(&v21, "setDelegate:", 0);
    sub_BD800();
    v20.receiver = v15;
    v20.super_class = v14;
    v16 = objc_msgSendSuper2(&v20, "collectionViewLayout");
    type metadata accessor for CompositeCollectionViewLayout();
    swift_dynamicCastClassUnconditional();
    type metadata accessor for CompositeCollectionViewCountData();
    swift_allocObject();
    v17 = sub_9E240(_swiftEmptyArrayStorage);
    sub_C2818(v17);
  }

  v18 = type metadata accessor for CompositeCollectionViewController();
  v23.receiver = v1;
  v23.super_class = v18;
  return objc_msgSendSuper2(&v23, "dealloc");
}

id sub_A9C8(char a1, char a2)
{
  v5 = [v2 isEditing];
  v15.receiver = v2;
  v15.super_class = type metadata accessor for CompositeCollectionViewController();
  objc_msgSendSuper2(&v15, "setEditing:animated:", a1 & 1, a2 & 1);
  v6 = *&v2[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_collectionView];
  if (v6)
  {
    [v6 mt_setEditing:a1 & 1];
  }

  result = [v2 isEditing];
  if (v5 != result)
  {

    v9 = sub_9E074(v8);

    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = (v9 + 40);
      do
      {
        v12 = *v11;
        ObjectType = swift_getObjectType();
        v14 = *(v12 + 32);
        swift_unknownObjectRetain();
        v14(a1 & 1, a2 & 1, ObjectType, v12);
        swift_unknownObjectRelease();
        v11 += 4;
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

void sub_AB60()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = type metadata accessor for CompositeCollectionViewController();
  objc_msgSendSuper2(&v24, "viewDidLayoutSubviews");
  if (*&v0[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_shouldIgnoreLayoutFromTraitCollectionChangeCount])
  {
    v0[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_didIgnoreLayout] = 1;
    return;
  }

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = v2;
  [v2 bounds];
  v4 = OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_collectionView;
  v5 = *&v0[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_collectionView];
  if (!v5)
  {
LABEL_23:
    __break(1u);
    return;
  }

  [v5 setFrame:?];
  if (v0[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_needsCountDataUpdate] == 1)
  {
    v0[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_needsCountDataUpdate] = 0;
    v6 = *&v0[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData];

    v7 = sub_9E1E0();
    v8 = *(v7 + 16);
    if (v8)
    {
      v22 = v6;
      sub_92B4C(0, v8, 0);
      v9 = 32;
      do
      {
        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        v23 = *(v7 + v9);
        swift_unknownObjectRetain();
        if (v11 >= v10 >> 1)
        {
          sub_92B4C((v10 > 1), v11 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v11 + 1;
        *&_swiftEmptyArrayStorage[2 * v11 + 4] = v23;
        v9 += 32;
        --v8;
      }

      while (v8);

      v6 = v22;
    }

    else
    {
    }

    type metadata accessor for CompositeCollectionViewCountData();
    swift_allocObject();

    v13 = sub_9E240(v12);
    v14 = *&v1[v4];
    if (v14)
    {
      v15 = v14;
      if ([v3 _isInAWindow] & 1) != 0 && (v16 = objc_msgSend(v3, "layer"), v17 = objc_msgSend(v16, "hasBeenCommitted"), v16, (v17))
      {
        v18 = swift_allocObject();
        v18[2] = v1;
        v18[3] = v13;
        v18[4] = v6;
        v18[5] = v15;
        v19 = swift_allocObject();
        v19[2] = v13;
        v19[3] = _swiftEmptyArrayStorage;
        v19[4] = v1;
        v20 = v1;
        swift_retain_n();

        v15 = v15;
        v21 = v20;
        sub_BC770(sub_15270, v18, sub_152C4, v19);
      }

      else
      {

        sub_AEE0(0, v1, v13, v6);
        [v15 reloadData];
      }
    }

    else
    {
      sub_AEE0(0, v1, v13, v6);
      sub_D0D4(v13, _swiftEmptyArrayStorage, v1);
    }
  }
}

uint64_t sub_AEE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v209 = a1;
  v7 = sub_140B0C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v208 = &v185 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D70);
  v10 = __chkstk_darwin(v198);
  v207 = &v185 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v185 - v12;
  v14 = sub_140B7C();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v190 = &v185 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v201 = &v185 - v19;
  v20 = __chkstk_darwin(v18);
  v202 = &v185 - v21;
  v22 = __chkstk_darwin(v20);
  v189 = &v185 - v23;
  __chkstk_darwin(v22);
  v188 = &v185 - v24;
  v25 = OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData;
  *(a2 + OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData) = a3;

  v26 = *(a2 + OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_collectionView);
  v193 = v25;
  if (v26)
  {
    v27 = type metadata accessor for CompositeCollectionView();
    v214.receiver = v26;
    v214.super_class = v27;
    v28 = objc_msgSendSuper2(&v214, "collectionViewLayout");
    type metadata accessor for CompositeCollectionViewLayout();
    swift_dynamicCastClassUnconditional();

    sub_C2818(v29);
  }

  v30 = sub_9E1E0();
  v199 = a2;

  v31 = sub_9E1E0();

  v32 = sub_C338(v31, v30);

  v197 = *(v32 + 16);
  if (!v197)
  {
  }

  v196 = v32 + 32;
  swift_beginAccess();
  v33 = 0;
  v211 = (v8 + 8);
  v195 = (v15 + 8);
  v205 = v7;
  v210 = v14;
  v192 = v32;
  v200 = a4;
  v191 = v13;
  while (1)
  {
    if (v33 >= *(v32 + 16))
    {
      goto LABEL_122;
    }

    v204 = v33;
    v35 = v196 + 56 * v33;
    v36 = *(v35 + 24);
    v37 = *(v35 + 32);
    v38 = *(v35 + 40);
    v39 = *(v35 + 48);
    v40 = *(v35 + 8) == 1;
    v206 = v37;
    if (v40)
    {
      v41 = *v35;
      v42 = v199;
      v203 = v38;
      if (v41)
      {
        v43 = v39;
        if (v41 == 1)
        {
          v44 = v193;
          swift_unknownObjectRetain_n();

          v45 = v206;
          v194 = sub_9EA88(v36, v206, v203, v43);

          v46 = *(v42 + v44);
          swift_beginAccess();
          v47 = *(v46 + 32);
          v48 = *(v47 + 16);

          if (v48)
          {

            v49 = sub_F7DD8(v36, v45, v203, v43);
            if (v50)
            {
              v51 = *(*(v47 + 56) + 8 * v49);

              goto LABEL_78;
            }
          }

          ObjectType = swift_getObjectType();
          v102 = (*(v45 + 8))(ObjectType, v45);
          v103 = [v102 dataSource];
          v186 = v102;
          if (v103)
          {
            v104 = v103;
            if ([v103 respondsToSelector:"numberOfSectionsInCollectionView:"])
            {
              v187 = [v104 numberOfSectionsInCollectionView:v102];
            }

            else
            {
              v187 = (&dword_0 + 1);
            }

            swift_unknownObjectRelease();
          }

          else
          {
            v187 = (&dword_0 + 1);
          }

          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v213 = *(v46 + 32);
          v115 = v213;
          *(v46 + 32) = 0x8000000000000000;
          v116 = sub_F7DD8(v36, v45, v203, v43);
          v118 = v115[2];
          v119 = (v117 & 1) == 0;
          v120 = __OFADD__(v118, v119);
          v121 = v118 + v119;
          if (v120)
          {
            goto LABEL_134;
          }

          v122 = v117;
          v123 = v46;
          if (v115[3] >= v121)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v182 = v116;
              sub_138FC4();
              v116 = v182;
            }
          }

          else
          {
            sub_1359A4(v121, isUniquelyReferenced_nonNull_native);
            v116 = sub_F7DD8(v36, v206, v203, v43);
            if ((v122 & 1) != (v124 & 1))
            {
              goto LABEL_139;
            }
          }

          v125 = v43;
          v126 = v203;
          v127 = v213;
          if (v122)
          {
            v51 = v187;
            *(v213[7] + 8 * v116) = v187;
          }

          else
          {
            v213[(v116 >> 6) + 8] |= 1 << v116;
            v128 = v127[6] + 32 * v116;
            v129 = v206;
            *v128 = v36;
            *(v128 + 8) = v129;
            *(v128 + 16) = v126;
            *(v128 + 24) = v125;
            v51 = v187;
            *(v127[7] + 8 * v116) = v187;
            v130 = v127[2];
            v120 = __OFADD__(v130, 1);
            v131 = v130 + 1;
            if (v120)
            {
              goto LABEL_137;
            }

            v127[2] = v131;
            swift_unknownObjectRetain();
          }

          *(v123 + 32) = v127;
          swift_endAccess();

          v32 = v192;
LABEL_78:
          v132 = v188;
          if (__OFADD__(v194, v51))
          {
            goto LABEL_128;
          }

          if (v51 + v194 < v194)
          {
            goto LABEL_130;
          }

          sub_140B1C();
          v134 = v209;
          if (v209)
          {
            sub_140B3C(v133);
            v136 = v135;
            [v134 insertSections:v135];
            swift_unknownObjectRelease_n();

LABEL_118:
            (*v195)(v132, v14);
            goto LABEL_6;
          }

LABEL_117:
          swift_unknownObjectRelease_n();
          goto LABEL_118;
        }

        v93 = v193;
        swift_unknownObjectRetain_n();

        v94 = v206;
        v194 = sub_9EA88(v36, v206, v203, v43);

        v95 = *(v42 + v93);
        swift_beginAccess();
        v96 = *(v95 + 32);
        v97 = *(v96 + 16);

        if (v97)
        {

          v98 = sub_F7DD8(v36, v94, v203, v43);
          if (v99)
          {
            v100 = *(*(v96 + 56) + 8 * v98);

LABEL_113:
            if (__OFADD__(v194, v100))
            {
              goto LABEL_127;
            }

            if (v100 + v194 < v194)
            {
              goto LABEL_132;
            }

            v132 = v190;
            sub_140B1C();
            v179 = v209;
            if (v209)
            {
              sub_140B3C(v178);
              v181 = v180;
              [v179 reloadSections:v180];
            }

            goto LABEL_117;
          }
        }

        v109 = swift_getObjectType();
        v110 = (*(v94 + 8))(v109, v94);
        v111 = [v110 dataSource];
        v186 = v110;
        if (v111)
        {
          v112 = v111;
          if ([v111 respondsToSelector:"numberOfSectionsInCollectionView:"])
          {
            v187 = [v112 numberOfSectionsInCollectionView:v110];
          }

          else
          {
            v187 = (&dword_0 + 1);
          }

          swift_unknownObjectRelease();
        }

        else
        {
          v187 = (&dword_0 + 1);
        }

        swift_beginAccess();
        v161 = swift_isUniquelyReferenced_nonNull_native();
        v213 = *(v95 + 32);
        v162 = v213;
        *(v95 + 32) = 0x8000000000000000;
        v163 = sub_F7DD8(v36, v94, v203, v43);
        v165 = v162[2];
        v166 = (v164 & 1) == 0;
        v120 = __OFADD__(v165, v166);
        v167 = v165 + v166;
        if (v120)
        {
          goto LABEL_135;
        }

        v168 = v164;
        v169 = v95;
        if (v162[3] >= v167)
        {
          if ((v161 & 1) == 0)
          {
            v183 = v163;
            sub_138FC4();
            v163 = v183;
          }
        }

        else
        {
          sub_1359A4(v167, v161);
          v163 = sub_F7DD8(v36, v206, v203, v43);
          if ((v168 & 1) != (v170 & 1))
          {
            goto LABEL_139;
          }
        }

        v171 = v43;
        v172 = v203;
        v173 = v213;
        if (v168)
        {
          v100 = v187;
          *(v213[7] + 8 * v163) = v187;
        }

        else
        {
          v213[(v163 >> 6) + 8] |= 1 << v163;
          v174 = v173[6] + 32 * v163;
          v175 = v206;
          *v174 = v36;
          *(v174 + 8) = v175;
          *(v174 + 16) = v172;
          *(v174 + 24) = v171;
          v100 = v187;
          *(v173[7] + 8 * v163) = v187;
          v176 = v173[2];
          v120 = __OFADD__(v176, 1);
          v177 = v176 + 1;
          if (v120)
          {
            goto LABEL_138;
          }

          v173[2] = v177;
          swift_unknownObjectRetain();
        }

        *(v169 + 32) = v173;
        swift_endAccess();

        v32 = v192;
        goto LABEL_113;
      }

      v82 = swift_unknownObjectRetain_n();
      v83 = v206;
      LODWORD(v194) = v39;
      v84 = v200;
      v85 = sub_9EA88(v82, v206, v38, v39);
      v86 = *(v84 + 32);
      if (*(v86 + 16))
      {
        v87 = v85;

        v88 = sub_F7DD8(v36, v83, v203, v194);
        if (v89)
        {
          v90 = *(*(v86 + 56) + 8 * v88);

          v91 = v87;
          v92 = v90;
LABEL_95:
          if (__OFADD__(v91, v92))
          {
            goto LABEL_129;
          }

          if (&v92[v91] < v91)
          {
            goto LABEL_131;
          }

          v156 = v189;
          sub_140B1C();
          v158 = v209;
          if (v209)
          {
            sub_140B3C(v157);
            v160 = v159;
            [v158 deleteSections:v159];
          }

          swift_unknownObjectRelease_n();
          (*v195)(v156, v14);
          goto LABEL_6;
        }

        v83 = v206;
        v85 = v87;
      }

      v186 = v85;
      v105 = swift_getObjectType();
      v106 = (*(v83 + 8))(v105, v83);
      v107 = [v106 dataSource];
      if (v107)
      {
        v108 = v107;
        if ([v107 respondsToSelector:"numberOfSectionsInCollectionView:"])
        {
          v187 = [v108 numberOfSectionsInCollectionView:v106];
        }

        else
        {
          v187 = (&dword_0 + 1);
        }

        v113 = v36;
        swift_unknownObjectRelease();
      }

      else
      {
        v113 = v36;
        v187 = (&dword_0 + 1);
      }

      v137 = v200;
      swift_beginAccess();
      v138 = swift_isUniquelyReferenced_nonNull_native();
      v213 = *(v137 + 32);
      v139 = v213;
      *(v137 + 32) = 0x8000000000000000;
      v141 = sub_F7DD8(v113, v83, v203, v194);
      v142 = v139[2];
      v143 = (v140 & 1) == 0;
      v144 = v142 + v143;
      if (__OFADD__(v142, v143))
      {
        goto LABEL_133;
      }

      v145 = v140;
      if (v139[3] >= v144)
      {
        v147 = v106;
        if ((v138 & 1) == 0)
        {
          sub_138FC4();
        }

        v148 = v113;
        v151 = v213;
        if ((v145 & 1) == 0)
        {
LABEL_88:
          v151[(v141 >> 6) + 8] |= 1 << v141;
          v152 = v151[6] + 32 * v141;
          v153 = v206;
          *v152 = v148;
          *(v152 + 8) = v153;
          *(v152 + 16) = v203;
          *(v152 + 24) = v194;
          v92 = v187;
          *(v151[7] + 8 * v141) = v187;
          v154 = v151[2];
          v120 = __OFADD__(v154, 1);
          v155 = v154 + 1;
          if (v120)
          {
            goto LABEL_136;
          }

          v151[2] = v155;
          swift_unknownObjectRetain();
          goto LABEL_94;
        }
      }

      else
      {
        v146 = v83;
        v147 = v106;
        sub_1359A4(v144, v138);
        v148 = v113;
        v149 = sub_F7DD8(v113, v146, v203, v194);
        if ((v145 & 1) != (v150 & 1))
        {
          goto LABEL_139;
        }

        v141 = v149;
        v151 = v213;
        if ((v145 & 1) == 0)
        {
          goto LABEL_88;
        }
      }

      v92 = v187;
      *(v151[7] + 8 * v141) = v187;
LABEL_94:
      *(v200 + 32) = v151;
      swift_endAccess();

      v32 = v192;
      v91 = v186;
      goto LABEL_95;
    }

    v52 = swift_unknownObjectRetain();
    v53 = v39;
    v54 = sub_9EA88(v52, v37, v38, v39);
    v55 = sub_9E8F0(v36, v37, v38, v53);
    if (__OFADD__(v54, v55))
    {
      goto LABEL_123;
    }

    if (v55 + v54 < v54)
    {
      break;
    }

    sub_140B1C();

    v56 = sub_9EA88(v36, v206, v38, v53);

    v194 = v36;
    v57 = sub_9E8F0(v36, v206, v38, v53);

    if (__OFADD__(v56, v57))
    {
      goto LABEL_125;
    }

    if (v57 + v56 < v56)
    {
      goto LABEL_126;
    }

    sub_140B1C();
    sub_140B2C();
    sub_152D0(&qword_1C0D78, &type metadata accessor for IndexSet);
    v58 = _swiftEmptyArrayStorage;
    v59 = v208;
    while (1)
    {
      sub_144B9C();
      sub_152D0(&qword_1C0D80, &type metadata accessor for IndexSet.Index);
      v60 = sub_14486C();
      v61 = *v211;
      (*v211)(v59, v7);
      if (v60)
      {
        break;
      }

      v62 = sub_144BCC();
      v64 = *v63;
      v62(v212, 0);
      sub_144BAC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_13407C(0, *(v58 + 2) + 1, 1, v58);
      }

      v66 = *(v58 + 2);
      v65 = *(v58 + 3);
      if (v66 >= v65 >> 1)
      {
        v58 = sub_13407C((v65 > 1), v66 + 1, 1, v58);
      }

      *(v58 + 2) = v66 + 1;
      *&v58[8 * v66 + 32] = v64;
    }

    v203 = v58;
    sub_15340(v13, &qword_1C0D70);
    v67 = v207;
    sub_140B2C();
    v68 = *(v198 + 36);
    sub_144B9C();
    v69 = sub_14486C();
    v61(v59, v7);
    v70 = _swiftEmptyArrayStorage;
    if ((v69 & 1) == 0)
    {
      v206 = v68;
      do
      {
        v75 = sub_144BCC();
        v77 = *v76;
        v75(v212, 0);
        sub_144BAC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_13407C(0, *(v70 + 2) + 1, 1, v70);
        }

        v79 = *(v70 + 2);
        v78 = *(v70 + 3);
        if (v79 >= v78 >> 1)
        {
          v70 = sub_13407C((v78 > 1), v79 + 1, 1, v70);
        }

        *(v70 + 2) = v79 + 1;
        *&v70[8 * v79 + 32] = v77;
        v67 = v207;
        v80 = v208;
        sub_144B9C();
        v7 = v205;
        v81 = sub_14486C();
        v61(v80, v7);
      }

      while ((v81 & 1) == 0);
    }

    sub_15340(v67, &qword_1C0D70);
    v71 = v203;
    if (*(v70 + 2) >= *(v203 + 16))
    {
      v72 = *(v203 + 16);
    }

    else
    {
      v72 = *(v70 + 2);
    }

    v73 = v209;
    v13 = v191;
    if (v72)
    {
      for (i = 0; v72 != i; ++i)
      {
        if (v73)
        {
          if (i >= *(v71 + 16))
          {
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (i >= *(v70 + 2))
          {
            goto LABEL_121;
          }

          [v209 moveSection:*(v71 + 32 + 8 * i) toSection:*&v70[8 * i + 32]];
          v73 = v209;
        }
      }
    }

    swift_unknownObjectRelease();
    v34 = *v195;
    v14 = v210;
    (*v195)(v201, v210);
    v34(v202, v14);

    v32 = v192;
LABEL_6:
    v33 = v204 + 1;
    if (v204 + 1 == v197)
    {
    }
  }

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
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  result = sub_1453EC();
  __break(1u);
  return result;
}

unint64_t sub_C338(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = *(a2 + 16);
  v110 = a1;
  v4 = *(a1 + 16);
  v5 = sub_10494(_swiftEmptyArrayStorage, v4 + 1, &qword_1C0D98);
  v6 = sub_10494(v5, v3 + 1, &qword_1C0D90);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_142;
  }

  while (1)
  {
    v111 = v6;
    v102 = v4;
    v101 = v3;
    *&v109 = v2;
    if (!v3)
    {
      break;
    }

    v7 = 0;
    v2 += 56;
    v8 = v6 + 40;
    v9 = _swiftEmptyArrayStorage;
    while (1)
    {
      v4 = *(v2 - 8);
      v10 = *v2;
      v112 = *(v2 - 24);
      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_134180(0, v9[2] + 1, 1, v9);
      }

      v3 = v9[2];
      v11 = v9[3];
      if (v3 >= v11 >> 1)
      {
        v9 = sub_134180((v11 > 1), v3 + 1, 1, v9);
      }

      v12 = v7 + 1;
      v9[2] = v3 + 1;
      v13 = &v9[7 * v3];
      v13[4] = 0;
      *(v13 + 40) = 1;
      v13[6] = v7;
      *(v13 + 7) = v112;
      v13[9] = v4;
      *(v13 + 80) = v10;
      v6 = *(v111 + 16);

      if (v7 + 1 >= v6)
      {
        goto LABEL_133;
      }

      v14 = *(v8 + 8 * v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v8 + 8 * v7) = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_9F068(v14);
        *(v8 + 8 * v7) = v14;
      }

      v4 = v102;
      v3 = v101;
      if (!v14[2])
      {
        break;
      }

      v14[4] = v9;

      v2 += 32;
      ++v7;
      if (v3 == v12)
      {
        goto LABEL_13;
      }
    }

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
    v6 = sub_9F07C(v6);
  }

LABEL_13:

  if (!v4)
  {

    v26 = v111;
    goto LABEL_85;
  }

  v3 = 0;
  v98 = v110 + 32;
  v100 = (v111 + 32);
  v2 = v110 + 56;
  v16 = _swiftEmptyArrayStorage;
  do
  {
    v17 = *(v2 - 8);
    v18 = *v2;
    v112 = *(v2 - 24);
    swift_unknownObjectRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_134180(0, v16[2] + 1, 1, v16);
    }

    v20 = v16[2];
    v19 = v16[3];
    if (v20 >= v19 >> 1)
    {
      v16 = sub_134180((v19 > 1), v20 + 1, 1, v16);
    }

    v16[2] = v20 + 1;
    v21 = &v16[7 * v20];
    v21[4] = 1;
    *(v21 + 40) = 1;
    v21[6] = v3;
    *(v21 + 7) = v112;
    v21[9] = v17;
    *(v21 + 80) = v18;
    v6 = *(v111 + 16);

    if (!v6)
    {
      goto LABEL_135;
    }

    v22 = v100;
    v23 = *v100;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    *v22 = v23;
    if ((v24 & 1) == 0)
    {
      v23 = sub_9F068(v23);
      *v100 = v23;
    }

    v6 = v3 + 1;
    if (v3 + 1 >= v23[2])
    {
      goto LABEL_136;
    }

    v23[v3 + 5] = v16;

    v2 += 32;
    ++v3;
  }

  while (v4 != v6);

  v26 = v111;
  v3 = v101;
  if (!v101)
  {
LABEL_85:
    if (v3 >= *(v26 + 16))
    {
      __break(1u);
    }

    else
    {
      v68 = *(v26 + 8 * v3 + 32);
      if (v4 < *(v68 + 16))
      {
        v69 = *(v68 + 8 * v4 + 32);

LABEL_88:

        return v69;
      }
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v27 = 0;
  v97 = v109 + 32;
  v108 = v101 - 1;
  v96 = v111 + 40;
  v28 = 1;
  while (2)
  {
    v3 = 0;
    v99 = v27;
    v29 = v98 + 32 * v27;
    v30 = *v29;
    v104 = *(v29 + 8);
    v31 = *(v29 + 16);
    LODWORD(v105) = *(v29 + 24);
    v103 = v31;
    v110 = v28 - 1;
    v2 = v96;
    v4 = v97;
    v107 = v28;
    while (1)
    {
      v32 = *v4;
      v33 = *(v4 + 16);
      v34 = *(v4 + 24);
      if (*v4 == v30)
      {
        if (*(v4 + 24))
        {
          if (v105)
          {
            goto LABEL_71;
          }
        }

        else if ((v105 & 1) == 0)
        {
          v109 = *v4;
          v63 = v33;
          v64 = sub_141AFC();
          v33 = v63;
          v32 = v109;
          if (v64)
          {
LABEL_71:
            v6 = *(v26 + 16);
            if (v3 >= v6)
            {
              goto LABEL_137;
            }

            v65 = *(v2 - 8);
            if (v110 >= *(v65 + 16))
            {
              goto LABEL_138;
            }

            v39 = *(v65 + 8 * v110 + 32);

            if (v3 + 1 >= v6)
            {
              goto LABEL_139;
            }

            v53 = *v2;
            v66 = swift_isUniquelyReferenced_nonNull_native();
            *v2 = v53;
            if ((v66 & 1) == 0)
            {
              v53 = sub_9F068(v53);
              *v2 = v53;
            }

            if (v28 >= v53[2])
            {
              goto LABEL_140;
            }

            goto LABEL_77;
          }
        }
      }

      v35 = *(v26 + 16);
      if (v3 >= v35)
      {
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        v69 = _swiftEmptyArrayStorage;
LABEL_126:

        goto LABEL_88;
      }

      v36 = *(v2 - 8);
      if (v28 >= *(v36 + 16))
      {
        goto LABEL_122;
      }

      if (v3 + 1 >= v35)
      {
        goto LABEL_123;
      }

      v37 = *v2;
      if (v28 > *(*v2 + 16))
      {
        goto LABEL_124;
      }

      *&v112 = v3 + 1;
      v6 = v30;
      v38 = v36 + 32;
      v39 = *(v38 + 8 * v28);
      v40 = *(v37 + 8 * v110 + 32);
      v41 = *(v38 + 8 * v110);
      v42 = v39[2];
      v43 = v40[2];
      v44 = v41[2];
      if (v43 >= v42)
      {
        v45 = v39[2];
      }

      else
      {
        v45 = v40[2];
      }

      if (v44 >= v45)
      {
        v44 = v45;
      }

      if (v42 == v44)
      {
        v106 = v4;
        v46 = v33;
        v109 = v32;

        swift_unknownObjectRetain();
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v4 = v111;
        if ((v47 & 1) == 0)
        {
          v39 = sub_134180(0, v42 + 1, 1, v39);
        }

        v49 = v39[2];
        v48 = v39[3];
        v30 = v6;
        v50 = v109;
        if (v49 >= v48 >> 1)
        {
          v67 = sub_134180((v48 > 1), v49 + 1, 1, v39);
          v51 = v46;
          v50 = v109;
          v39 = v67;
        }

        else
        {
          v51 = v46;
        }

        v39[2] = v49 + 1;
        v52 = &v39[7 * v49];
        v52[4] = 0;
        *(v52 + 40) = 1;
        v52[6] = v3;
        *(v52 + 7) = v50;
        v52[9] = v51;
        *(v52 + 80) = v34;
        if (v112 >= *(v4 + 16))
        {
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
          goto LABEL_134;
        }

        v26 = v4;
        v53 = *v2;
        v54 = swift_isUniquelyReferenced_nonNull_native();
        *v2 = v53;
        if ((v54 & 1) == 0)
        {
          v53 = sub_9F068(v53);
          *v2 = v53;
        }

        v28 = v107;
        v4 = v106;
        if (v107 >= v53[2])
        {
          goto LABEL_128;
        }
      }

      else if (v43 == v44)
      {

        v30 = v6;
        swift_unknownObjectRetain();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_134180(0, v40[2] + 1, 1, v40);
        }

        v26 = v111;
        v6 = v40[2];
        v55 = v40[3];
        if (v6 >= v55 >> 1)
        {
          v39 = sub_134180((v55 > 1), v6 + 1, 1, v40);
        }

        else
        {
          v39 = v40;
        }

        v39[2] = v6 + 1;
        v56 = &v39[7 * v6];
        v56[4] = 1;
        *(v56 + 40) = 1;
        v56[6] = v110;
        v56[7] = v30;
        v57 = v103;
        v56[8] = v104;
        v56[9] = v57;
        *(v56 + 80) = v105;
        v28 = v107;
        if (v112 >= *(v26 + 16))
        {
          goto LABEL_129;
        }

        v53 = *v2;
        v58 = swift_isUniquelyReferenced_nonNull_native();
        *v2 = v53;
        if ((v58 & 1) == 0)
        {
          v53 = sub_9F068(v53);
          *v2 = v53;
        }

        if (v28 >= v53[2])
        {
          goto LABEL_131;
        }
      }

      else
      {

        v30 = v6;
        swift_unknownObjectRetain();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_134180(0, v41[2] + 1, 1, v41);
        }

        v28 = v107;
        v6 = v41[2];
        v59 = v41[3];
        if (v6 >= v59 >> 1)
        {
          v39 = sub_134180((v59 > 1), v6 + 1, 1, v41);
        }

        else
        {
          v39 = v41;
        }

        v39[2] = v6 + 1;
        v60 = &v39[7 * v6];
        v60[4] = 2;
        *(v60 + 40) = 1;
        v60[6] = v3;
        v60[7] = v30;
        v61 = v103;
        v60[8] = v104;
        v60[9] = v61;
        *(v60 + 80) = v105;
        v26 = v111;
        if (v112 >= *(v111 + 16))
        {
          goto LABEL_130;
        }

        v53 = *v2;
        v62 = swift_isUniquelyReferenced_nonNull_native();
        *v2 = v53;
        if ((v62 & 1) == 0)
        {
          v53 = sub_9F068(v53);
          *v2 = v53;
        }

        if (v28 >= v53[2])
        {
          goto LABEL_132;
        }
      }

LABEL_77:
      v53[v28 + 4] = v39;

      if (v108 == v3)
      {
        break;
      }

      ++v3;
      v4 += 32;
      v2 += 8;
    }

    if (v28 != v102)
    {
      v27 = v99 + 1;
      ++v28;
      continue;
    }

    break;
  }

  if (v101 < *(v26 + 16))
  {
    v70 = v100[v101];
    if (v102 >= v70[2])
    {
      goto LABEL_148;
    }

    v71 = v70[v102 + 4];
    v2 = *(v71 + 16);

    v107 = v2;
    if (v2)
    {
      v4 = 0;
      v106 = 0;
      v73 = (v71 + 80);
      v69 = _swiftEmptyArrayStorage;
      v105 = v71;
      while (1)
      {
        if (v4 >= *(v71 + 16))
        {
          goto LABEL_141;
        }

        v76 = *(v73 - 6);
        v3 = *(v73 - 40);
        v77 = *(v73 - 4);
        v78 = *(v73 - 3);
        v80 = *(v73 - 2);
        v79 = *(v73 - 1);
        v81 = *v73;
        v113 = v69;
        v114 = v76;
        v115 = v3;
        v116 = v77;
        v117 = v78;
        v118 = v80;
        v119 = v79;
        v120 = v81;
        v110 = v80;
        *&v109 = v79;
        LODWORD(v108) = v81;
        *&v112 = v76;
        if (v3 != 1 || v76 >= 2)
        {
          break;
        }

        __chkstk_darwin(v72);
        v93[2] = v84;
        v94 = 1;
        v95 = &v114;
        swift_unknownObjectRetain();

        v85 = v106;
        result = sub_D408(sub_15318, v93, v69);
        v106 = v85;
        if (v86)
        {
          swift_unknownObjectRetain();
          v82 = v69;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v82 = sub_134180(0, v69[2] + 1, 1, v69);
          }

          v2 = v82[2];
          v87 = v82[3];
          v6 = v2 + 1;
          v71 = v105;
          if (v2 >= v87 >> 1)
          {
            v82 = sub_134180((v87 > 1), v2 + 1, 1, v82);
          }

          v3 = 1;
          goto LABEL_94;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_145;
        }

        if (result >= v69[2])
        {
          goto LABEL_146;
        }

        v88 = v69[7 * result + 6];
        if (v112)
        {
          v89 = v77;
        }

        else
        {
          v89 = v69[7 * result + 6];
        }

        if (!v112)
        {
          v88 = v77;
        }

        *&v112 = v88;
        v90 = result;
        swift_unknownObjectRetain();
        sub_9DE64(v90, v121);
        sub_15340(v121, &qword_1C0D88);
        v91 = v113;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_134180(0, v91[2] + 1, 1, v91);
        }

        v2 = v91[2];
        v92 = v91[3];
        v6 = v2 + 1;
        if (v2 >= v92 >> 1)
        {
          v91 = sub_134180((v92 > 1), v2 + 1, 1, v91);
        }

        v3 = 0;
        v69 = v91;
        v77 = v89;
        v71 = v105;
LABEL_95:
        v69[2] = v6;
        v74 = &v69[7 * v2];
        v74[4] = v112;
        ++v4;
        *(v74 + 40) = v3;
        v74[6] = v77;
        v74[7] = v78;
        v75 = v109;
        v74[8] = v110;
        v74[9] = v75;
        *(v74 + 80) = v108;
        v72 = swift_unknownObjectRelease();
        v73 += 56;
        if (v107 == v4)
        {
          goto LABEL_126;
        }
      }

      swift_unknownObjectRetain_n();

      v82 = v69;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = sub_134180(0, v69[2] + 1, 1, v69);
      }

      v2 = v82[2];
      v83 = v82[3];
      v6 = v2 + 1;
      if (v2 >= v83 >> 1)
      {
        v82 = sub_134180((v83 > 1), v2 + 1, 1, v82);
      }

LABEL_94:
      v69 = v82;
      goto LABEL_95;
    }

    goto LABEL_125;
  }

LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

void sub_D0D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_9E1E0();
  v5 = *(v4 + 16);
  if (v5)
  {
    sub_92B4C(0, v5, 0);
    v6 = 32;
    do
    {
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      v26 = *(v4 + v6);
      swift_unknownObjectRetain();
      if (v8 >= v7 >> 1)
      {
        sub_92B4C((v7 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      *&_swiftEmptyArrayStorage[2 * v8 + 4] = v26;
      v6 += 32;
      --v5;
    }

    while (v5);

    v9 = *(a2 + 16);
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  else
  {

    v9 = *(a2 + 16);
    if (!v9)
    {
LABEL_25:

      return;
    }
  }

  v10 = 0;
  v11 = _swiftEmptyArrayStorage[2];
  v27 = a2 + 32;
  v24 = &_swiftEmptyArrayStorage[4];
  while (1)
  {
    v12 = (v27 + 16 * v10);
    v13 = *v12;
    v14 = v12[1];
    if (v11)
    {
      break;
    }

LABEL_17:
    ObjectType = swift_getObjectType();
    v19 = *(v14 + 40);
    swift_unknownObjectRetain();
    v19(0, ObjectType, v14);
    v20 = (*(v14 + 16))(ObjectType, v14);
    v21 = [a3 view];
    if (v21)
    {
      v22 = v21;
      if ([a3 isViewLoaded])
      {
        if ([v20 isDescendantOfView:v22])
        {
          [v20 removeFromSuperview];
        }

        v23 = (*(v14 + 8))(ObjectType, v14);
        swift_unknownObjectWeakAssign();
        sub_12BAAC();

        v22 = v23;
      }
    }

    [v20 setHidden:{0, v24}];
    if ((*(v14 + 24))(ObjectType, v14))
    {
      (*(v14 + 32))([a3 isEditing], 0, ObjectType, v14);
    }

    (*(v14 + 48))(0, ObjectType, v14);
    swift_unknownObjectRelease();

LABEL_11:
    if (++v10 == v9)
    {
      goto LABEL_25;
    }
  }

  v15 = _swiftEmptyArrayStorage[2];
  v16 = v24;
  v17 = v11;
  while (v15)
  {
    if (*v16 == v13)
    {
      goto LABEL_11;
    }

    --v15;
    v16 += 2;
    if (!--v17)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_D408(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 40); ; i += 56)
  {
    v8 = *i;
    v9 = *(i + 1);
    v10 = *(i + 4);
    v11 = i[40];
    v14 = *(i - 1);
    v15 = v8;
    v16 = v9;
    v17 = *(i + 1);
    v18 = v10;
    v19 = v11;
    swift_unknownObjectRetain();
    v12 = a1(&v14);
    swift_unknownObjectRelease();
    if (v3 || (v12 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

void sub_D53C()
{
  v1 = v0;
  v65.receiver = v0;
  v65.super_class = type metadata accessor for CompositeCollectionViewController();
  objc_msgSendSuper2(&v65, "viewDidLoad");

  v3 = sub_9E074(v2);

  v4 = *(v3 + 16);
  p_ivar_lyt = &SongCell.ivar_lyt;
  v6 = &OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_compositeCollectionView;
  if (v4)
  {
    v59 = OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_collectionView;
    v7 = (v3 + 40);
    v8 = &SongCell.ivar_lyt;
    do
    {
      v9 = *v7;
      swift_unknownObjectRetain_n();
      v10 = [v1 p_ivar_lyt[423]];
      if (v10)
      {
        v11 = v10;
        if ([v1 v8[419]])
        {
          v12 = v6;
          ObjectType = swift_getObjectType();
          v14 = (*(v9 + 8))(ObjectType, v9);
          v15 = *&v1[v59];
          swift_unknownObjectWeakAssign();
          v16 = v15;
          sub_12BAAC();

          p_ivar_lyt = (&SongCell + 16);
          v17 = ObjectType;
          v6 = v12;
          v18 = (*(v9 + 16))(v17, v9);
          [v11 addSubview:v18];

          v8 = (&SongCell + 16);
          [v11 setNeedsLayout];
        }
      }

      swift_unknownObjectRelease_n();
      v7 += 4;
      --v4;
    }

    while (v4);
  }

  v19 = [v1 p_ivar_lyt[423]];
  if (!v19)
  {
    __break(1u);
    goto LABEL_22;
  }

  v20 = v19;
  [v19 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = [objc_allocWithZone(type metadata accessor for CompositeCollectionViewLayout()) init];
  v30 = type metadata accessor for CompositeCollectionView();
  v31 = [objc_allocWithZone(v30) initWithFrame:v29 collectionViewLayout:{v22, v24, v26, v28}];

  v64.receiver = v31;
  v64.super_class = v30;
  v32 = v31;
  objc_msgSendSuper2(&v64, "setDataSource:", v1);
  sub_BD5C0();
  v63.receiver = v32;
  v63.super_class = v30;
  objc_msgSendSuper2(&v63, "setDelegate:", v1);
  sub_BD800();
  [v32 setPrefetchDataSource:v1];

  [v32 setAlwaysBounceVertical:1];
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 whiteColor];
  [v34 setBackgroundColor:v35];

  [v34 _setSafeAreaInsetsFrozen:1];
  v36 = [v1 p_ivar_lyt[423]];
  if (!v36)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v37 = v36;
  [v36 addSubview:v34];

  v38 = OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_collectionView;
  v39 = *&v1[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_collectionView];
  *&v1[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_collectionView] = v34;
  v60 = v38;
  if (v39)
  {
    if (v34 == v39)
    {
LABEL_20:

      return;
    }

    v57 = v39;
    v61.receiver = v39;
    v61.super_class = v30;
    v40 = v34;
    v41 = objc_msgSendSuper2(&v61, "collectionViewLayout");
    swift_dynamicCastClassUnconditional();
    type metadata accessor for CompositeCollectionViewCountData();
    swift_allocObject();
    v42 = sub_9E240(_swiftEmptyArrayStorage);
    sub_C2818(v42);

    v38 = v60;

    v43 = *&v1[v60];
  }

  else
  {
    v57 = 0;
    v44 = v34;
    v43 = v34;
  }

  if (!v43)
  {
    goto LABEL_23;
  }

  v62.receiver = v43;
  v62.super_class = v30;

  v45 = objc_msgSendSuper2(&v62, "collectionViewLayout");
  swift_dynamicCastClassUnconditional();

  sub_C2818(v46);

  v58 = sub_9E1E0();
  v47 = *(v58 + 16);
  if (v47)
  {
    v48 = (v58 + 40);
    do
    {
      v49 = *v48;
      v50 = swift_getObjectType();
      v51 = *(v49 + 8);
      swift_unknownObjectRetain();
      v52 = v51(v50, v49);
      v38 = v60;
      v53 = v52;
      v54 = *&v1[v60];
      swift_unknownObjectWeakAssign();
      v55 = v54;
      sub_12BAAC();
      swift_unknownObjectRelease();

      v48 += 4;
      --v47;
    }

    while (v47);
  }

  v56 = *&v1[v38];
  if (v56)
  {
    [v56 reloadData];

    v39 = v57;
    goto LABEL_20;
  }

LABEL_24:
  __break(1u);
}

void sub_DB18(uint64_t a1, void *a2)
{
  v3 = v2;
  if (![v2 isViewLoaded] || (v6 = objc_msgSend(v2, "traitCollection"), sub_15160(), v7 = sub_144FFC(), v6, (v7 & 1) != 0))
  {
    v28.receiver = v3;
    v28.super_class = type metadata accessor for CompositeCollectionViewController();
    objc_msgSendSuper2(&v28, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
    return;
  }

  v8 = *&v3[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_shouldIgnoreLayoutFromTraitCollectionChangeCount];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *&v3[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_shouldIgnoreLayoutFromTraitCollectionChangeCount] = v10;
  v11 = *&v3[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_collectionView];
  if (v11)
  {
    v12 = *(v11 + OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_layoutSubviewsIgnoreCount);
    v9 = __OFADD__(v12, 1);
    v13 = v12 + 1;
    if (!v9)
    {
      *(v11 + OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_layoutSubviewsIgnoreCount) = v13;
      v27.receiver = v3;
      v27.super_class = type metadata accessor for CompositeCollectionViewController();
      objc_msgSendSuper2(&v27, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v15 + 24) = v3;
      v25 = sub_1549C;
      v26 = v15;
      v21 = _NSConcreteStackBlock;
      v22 = 1107296256;
      v23 = sub_DC658;
      v24 = &block_descriptor;
      v16 = _Block_copy(&v21);

      v17 = v3;

      v18 = swift_allocObject();
      *(v18 + 16) = v14;
      *(v18 + 24) = v17;
      v25 = sub_15218;
      v26 = v18;
      v21 = _NSConcreteStackBlock;
      v22 = 1107296256;
      v23 = sub_DC658;
      v24 = &block_descriptor_62;
      v19 = _Block_copy(&v21);

      v20 = v17;

      [a2 animateAlongsideTransition:v16 completion:v19];
      _Block_release(v19);
      _Block_release(v16);

      return;
    }

    goto LABEL_9;
  }

LABEL_10:
  __break(1u);
}

void sub_DDB4(uint64_t a1, _BYTE *a2)
{
  swift_beginAccess();
  if (*(a1 + 16))
  {
    return;
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
  v4 = OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_shouldIgnoreLayoutFromTraitCollectionChangeCount;
  v5 = *&a2[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_shouldIgnoreLayoutFromTraitCollectionChangeCount];
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  *&a2[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_shouldIgnoreLayoutFromTraitCollectionChangeCount] = v7;
  v8 = *&a2[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_collectionView];
  if (!v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = *&v8[OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_layoutSubviewsIgnoreCount];
  v6 = __OFSUB__(v9, 1);
  v10 = v9 - 1;
  if (v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *&v8[OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_layoutSubviewsIgnoreCount] = v10;
  if (!v10 && v8[OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_didIgnoreLayoutSubviews] == 1)
  {
    v8[OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_didIgnoreLayoutSubviews] = 1;
    [v8 setNeedsLayout];
  }

  if (!*&a2[v4] && a2[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_didIgnoreLayout] == 1)
  {
    a2[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_didIgnoreLayout] = 0;
    v11 = [a2 view];
    if (v11)
    {
      v12 = v11;
      [v11 setNeedsLayout];

      return;
    }

LABEL_16:
    __break(1u);
  }
}

id sub_DFB4(uint64_t a1, int64_t a2)
{

  sub_9E3E8(a2, 0, 0, 0, v13);
  v4 = v13[0];

  if (v4)
  {
    v5 = v13[4];
    v6 = v13[1];
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 8);
    swift_unknownObjectRetain();
    v9 = v8(ObjectType, v6);
    sub_15340(v13, &qword_1C0D60);
    v10 = [v9 dataSource];

    if (v10)
    {
      v11 = [v10 collectionView:a1 numberOfItemsInSection:v5];
      sub_15340(v13, &qword_1C0D60);
      swift_unknownObjectRelease();
      return v11;
    }

    sub_15340(v13, &qword_1C0D60);
  }

  return 0;
}

uint64_t sub_E55C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = sub_140C2C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  v12 = a3;
  v13 = a1;
  LOBYTE(a5) = a5(v11);

  (*(v9 + 8))(v11, v8);
  return a5 & 1;
}

uint64_t sub_E678(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v8 = sub_140C2C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  v12 = a3;
  v13 = a1;
  sub_12CAC(v11, a5);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_E7A4(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v8 = sub_140C2C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  v12 = a3;
  v13 = a1;
  LOBYTE(a5) = sub_137C4(v11, a5);

  (*(v9 + 8))(v11, v8);
  return a5 & 1;
}

uint64_t sub_E8CC(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v8 = sub_140C2C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  v12 = a3;
  v13 = a1;
  a5(v11);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_E9EC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, SEL *a6)
{
  v10 = sub_140C2C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  sub_142E4(v15, v13, a6);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_EB20(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  sub_140C2C();
  v8 = sub_1449DC();
  v9 = a3;
  v10 = a1;
  sub_14844(v8, a5);
}

uint64_t sub_EBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v162 = a3;
  v140 = a1;
  v156 = a4;
  v6 = sub_140C2C();
  v158 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v144 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v145 = &v139 - v10;
  v11 = __chkstk_darwin(v9);
  v143 = &v139 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v139 - v14;
  v16 = __chkstk_darwin(v13);
  v148 = &v139 - v17;
  __chkstk_darwin(v16);
  v151 = &v139 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50);
  v20 = __chkstk_darwin(v19 - 8);
  v154 = (&v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __chkstk_darwin(v20);
  v149 = &v139 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v139 - v25;
  __chkstk_darwin(v24);
  v28 = &v139 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58);
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v142 = &v139 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v147 = &v139 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v139 - v36;
  __chkstk_darwin(v35);
  v39 = (&v139 - v38);
  v153 = v4;
  v152 = OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData;
  v163 = v30;
  v160 = *(v30 + 7);
  v161 = v40;
  (v160)(v26, 1, 1);

  v41 = sub_140C0C();
  if (v41 == 2)
  {
    v42 = sub_140BFC();
  }

  else if (v41 <= 0)
  {
    v42 = sub_14093C();
  }

  else
  {
    v42 = sub_140C3C();
  }

  v155 = a2;
  v141 = v15;
  v150 = v37;
  sub_9E3E8(v42, 0, 0, 0, v164);
  v43 = v164[0];
  v159 = v6;
  v157 = v39;
  if (v164[0])
  {
    v44 = v164[2];
    v146 = v164[1];
    v45 = v165;
    if (sub_140C0C() >= 2)
    {
      v49 = sub_140C0C();
      if (v49 == 2)
      {
        sub_140BEC();
      }

      else if (v49 <= 2)
      {
        sub_14093C();
      }

      else
      {
        sub_140C3C();
      }

      v47 = v161;
      v46 = v151;
      sub_140BDC();
    }

    else
    {
      v46 = v151;
      sub_140C1C();
      v47 = v161;
    }

    sub_15340(v26, &qword_1C0D50);
    v50 = *(v47 + 48);
    v51 = v146;
    *v26 = v43;
    *(v26 + 1) = v51;
    *(v26 + 2) = v44;
    v26[24] = v45 & 1;
    v48 = v158;
    v6 = v159;
    (*(v158 + 32))(&v26[v50], v46, v159);
    (v160)(v26, 0, 1, v47);
    v39 = v157;
  }

  else
  {

    v48 = v158;
    v47 = v161;
  }

  sub_10358(v26, v28, &qword_1C0D50);
  v52 = v163 + 48;
  v53 = *(v163 + 6);
  if (v53(v28, 1, v47) != 1)
  {
    sub_10358(v28, v39, &qword_1C0D58);
    v54 = v154;
    (v160)(v154, 1, 1, v47);

    v55 = sub_140C0C();
    if (v55 == 2)
    {
      v56 = sub_140BFC();
    }

    else if (v55 <= 0)
    {
      v56 = sub_14093C();
    }

    else
    {
      v56 = sub_140C3C();
    }

    sub_9E3E8(v56, 0, 0, 0, v166);
    v57 = v166[0];
    v163 = v52;
    if (v166[0])
    {
      v58 = v166[2];
      v151 = v166[1];
      v59 = v167;
      if (sub_140C0C() >= 2)
      {
        v62 = sub_140C0C();
        if (v62 == 2)
        {
          sub_140BEC();
        }

        else if (v62 <= 2)
        {
          sub_14093C();
        }

        else
        {
          sub_140C3C();
        }

        v61 = v161;
        v60 = v148;
        sub_140BDC();
      }

      else
      {
        v60 = v148;
        sub_140C1C();
        v61 = v161;
      }

      v63 = v154;
      sub_15340(v154, &qword_1C0D50);
      v64 = *(v61 + 48);
      v65 = v151;
      *v63 = v57;
      *(v63 + 1) = v65;
      *(v63 + 2) = v58;
      LOBYTE(v65) = v59 & 1;
      v54 = v63;
      *(v63 + 24) = v65;
      v6 = v159;
      (*(v48 + 32))(v63 + v64, v60, v159);
      (v160)(v63, 0, 1, v61);
      v39 = v157;
    }

    else
    {

      v6 = v159;
      v61 = v161;
    }

    v66 = v149;
    sub_10358(v54, v149, &qword_1C0D50);
    if (v53(v66, 1, v61) == 1)
    {
      sub_15340(v66, &qword_1C0D50);
      sub_15340(v39, &qword_1C0D58);
      return (*(v48 + 16))(v156, v162, v6);
    }

    v67 = v150;
    sub_10358(v66, v150, &qword_1C0D58);
    v68 = v147;
    sub_103C0(v39, v147);
    v69 = *(v68 + 8);
    v70 = *(v61 + 48);
    ObjectType = swift_getObjectType();
    v163 = (*(v69 + 8))(ObjectType, v69);
    swift_unknownObjectRelease();
    v72 = *(v48 + 8);
    v72(v68 + v70, v6);
    sub_103C0(v67, v68);
    v73 = *(v68 + 8);
    v74 = *(v61 + 48);
    v75 = swift_getObjectType();
    v76 = (*(v73 + 8))(v75, v73);
    v77 = v163;
    swift_unknownObjectRelease();
    v154 = v72;
    v72(v68 + v74, v6);
    v160 = v76;
    if (v76 == v77)
    {
      v87 = [v77 delegate];
      if (v87)
      {
        v88 = v87;
        if ([v87 respondsToSelector:"collectionView:targetIndexPathForMoveFromItemAtIndexPath:toProposedIndexPath:"])
        {
          sub_103C0(v39, v68);
          swift_unknownObjectRelease();
          v89 = v161;
          v90 = *(v161 + 48);
          isa = sub_140B9C().super.isa;
          v92 = v154;
          v154(v68 + v90, v6);
          v93 = v150;
          sub_103C0(v150, v68);
          swift_unknownObjectRelease();
          v94 = *(v89 + 48);
          v95 = sub_140B9C().super.isa;
          v92(v68 + v94, v6);
          v96 = [v88 collectionView:v163 targetIndexPathForMoveFromItemAtIndexPath:isa toProposedIndexPath:v95];

          sub_140BAC();
          v97 = *v93;
          v98 = *(v93 + 8);
          v99 = *(v93 + 16);
          v100 = *(v93 + 24);

          v101 = sub_140C0C();
          if (v101 == 2)
          {
            v102 = sub_140BFC();
          }

          else if (v101 <= 0)
          {
            v102 = sub_14093C();
          }

          else
          {
            v102 = sub_140C3C();
          }

          v131 = v102;
          result = sub_9EA88(v97, v98, v99, v100);
          v132 = v131 + result;
          if (!__OFADD__(v131, result))
          {
            v133 = v141;
            v134 = sub_140C0C();
            v135 = v159;
            v136 = v150;
            if (v134 == 2)
            {
              v137 = sub_140BFC();
            }

            else if (v134 <= 0)
            {
              v137 = sub_14093C();
            }

            else
            {
              v137 = sub_140C3C();
            }

            if (v132 == v137)
            {

              swift_unknownObjectRelease();
              (*(v158 + 32))(v156, v133, v135);
            }

            else
            {
              if (sub_140C0C() >= 2)
              {
                v138 = sub_140C0C();
                if (v138 == 2)
                {
                  sub_140BEC();
                }

                else if (v138 <= 2)
                {
                  sub_14093C();
                }

                else
                {
                  sub_140C3C();
                }

                sub_140BDC();
              }

              else
              {
                sub_140C1C();
              }

              swift_unknownObjectRelease();

              v154(v133, v135);
            }

            sub_15340(v136, &qword_1C0D58);
            v130 = v157;
            return sub_15340(v130, &qword_1C0D58);
          }

LABEL_110:
          __break(1u);
          return result;
        }

        swift_unknownObjectRelease();
        v77 = v163;
      }

      sub_15340(v150, &qword_1C0D58);
      sub_15340(v39, &qword_1C0D58);
      v48 = v158;
      return (*(v48 + 16))(v156, v162, v6);
    }

    v78 = sub_140BFC();
    if (v78 >= sub_140BFC())
    {
      v103 = *v39;
      v104 = v39[1];
      v105 = v39;
      v106 = v39[2];
      v107 = *(v105 + 24);

      v108 = sub_9E8F0(v103, v104, v106, v107);

      v109 = v105;
      v110 = v142;
      sub_103C0(v109, v142);
      v111 = *(v110 + 8);
      v112 = swift_getObjectType();
      v113 = (*(v111 + 8))(v112, v111);
      swift_unknownObjectRelease();
      v114 = [v113 dataSource];

      if (v114)
      {
        v115 = [v114 collectionView:v140 numberOfItemsInSection:v108];
        swift_unknownObjectRelease();
      }

      else
      {
        v115 = 0;
      }

      v154(v110 + *(v161 + 48), v159);
      result = v115 - 1;
      if (!__OFSUB__(v115, 1))
      {
        v86 = v150;
        if (!__OFSUB__(v108, 1))
        {
          sub_140BDC();

          v118 = sub_140C0C();
          if (v118 == 2)
          {
            v119 = sub_140BFC();
          }

          else if (v118 <= 0)
          {
            v119 = sub_14093C();
          }

          else
          {
            v119 = sub_140C3C();
          }

          v122 = v119;
          result = sub_9EA88(v103, v104, v106, v107);
          v120 = v122 + result;
          if (!__OFADD__(v122, result))
          {
            v121 = &v168;
LABEL_69:
            v123 = *(v121 - 32);
            v124 = sub_140C0C();
            v125 = v159;
            v126 = v157;
            if (v124 == 2)
            {
              if (v120 == sub_140BFC())
              {
LABEL_71:

                v127 = v158;
                v128 = v143;
                (*(v158 + 32))(v143, v123, v125);
LABEL_85:
                (*(v127 + 32))(v156, v128, v125);
                sub_15340(v86, &qword_1C0D58);
                v130 = v126;
                return sub_15340(v130, &qword_1C0D58);
              }
            }

            else if (v124 <= 0)
            {
              if (v120 == sub_14093C())
              {
                goto LABEL_71;
              }
            }

            else if (v120 == sub_140C3C())
            {
              goto LABEL_71;
            }

            if (sub_140C0C() > 1)
            {
              v129 = sub_140C0C();
              if (v129 == 2)
              {
                sub_140BEC();
              }

              else if (v129 <= 2)
              {
                sub_14093C();
              }

              else
              {
                sub_140C3C();
              }

              v128 = v143;
              sub_140BDC();
            }

            else
            {
              v128 = v143;
              sub_140C1C();
            }

            v154(v123, v125);
            v127 = v158;
            goto LABEL_85;
          }

          goto LABEL_109;
        }

LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      __break(1u);
    }

    else
    {
      sub_140BDC();
      v79 = *v39;
      v80 = v39[1];
      v81 = v39;
      v82 = v39[2];
      v83 = *(v81 + 24);

      v84 = sub_140C0C();
      if (v84 == 2)
      {
        v85 = sub_140BFC();
        v86 = v150;
      }

      else
      {
        v86 = v150;
        if (v84 <= 0)
        {
          v116 = sub_14093C();
        }

        else
        {
          v116 = sub_140C3C();
        }

        v85 = v116;
      }

      result = sub_9EA88(v79, v80, v82, v83);
      v120 = v85 + result;
      if (!__OFADD__(v85, result))
      {
        v121 = &v169;
        goto LABEL_69;
      }
    }

    __break(1u);
    goto LABEL_108;
  }

  sub_15340(v28, &qword_1C0D50);
  return (*(v48 + 16))(v156, v162, v6);
}

uint64_t sub_FE54(void *a1)
{

  v1 = sub_9E1E0();

  v10 = *(v1 + 16);
  if (v10)
  {
    v3 = 0;
    v4 = v1 + 56;
    while (v3 < *(v1 + 16))
    {
      v6 = *(v4 - 24);
      v5 = *(v4 - 16);
      ObjectType = swift_getObjectType();
      v8 = *(v5 + 8);
      swift_unknownObjectRetain_n();
      v9 = v8(ObjectType, v5);

      swift_unknownObjectRelease();
      if (v9 == a1)
      {

        return v6;
      }

      result = swift_unknownObjectRelease();
      ++v3;
      v4 += 32;
      if (v10 == v3)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return 0;
  }

  return result;
}

id sub_FF90(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v3[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_didIgnoreLayout] = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_shouldIgnoreLayoutFromTraitCollectionChangeCount] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_needsCountDataUpdate] = 1;
  v7 = OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData;
  type metadata accessor for CompositeCollectionViewCountData();
  swift_allocObject();
  *&v3[v7] = sub_9E240(_swiftEmptyArrayStorage);
  *&v3[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_componentGroups] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_collectionView] = 0;
  if (a2)
  {
    v8 = sub_14489C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for CompositeCollectionViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_10118(void *a1)
{
  v1[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_didIgnoreLayout] = 0;
  *&v1[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_shouldIgnoreLayoutFromTraitCollectionChangeCount] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_needsCountDataUpdate] = 1;
  v3 = OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData;
  type metadata accessor for CompositeCollectionViewCountData();
  swift_allocObject();
  *&v1[v3] = sub_9E240(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_componentGroups] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_collectionView] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CompositeCollectionViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_10358(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_103C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_10494(void *result, uint64_t a2, uint64_t *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v4 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v5 = sub_144A1C();
    v6 = v5;
    *(v5 + 16) = a2;
    *(v5 + 32) = v4;
    v7 = a2 - 1;
    if (v7)
    {
      v8 = (v5 + 40);
      do
      {
        *v8++ = v4;

        --v7;
      }

      while (v7);
    }

    return v6;
  }

  return result;
}

char *sub_10528()
{

  v0 = sub_9E1E0();
  v1 = *(v0 + 16);
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v0 + 32 * v1;
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  swift_unknownObjectRetain();

  v7 = sub_9EA88(v3, v4, v5, v6);
  v8 = sub_9E8F0(v3, v4, v5, v6);
  swift_unknownObjectRelease();

  result = &v8[v7];
  if (__OFADD__(v7, v8))
  {
    __break(1u);
LABEL_5:

    return 0;
  }

  return result;
}

uint64_t sub_105F4(uint64_t a1)
{
  v2 = sub_140C2C();
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  __chkstk_darwin(v2);
  v50 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v44 - v16;
  v49 = *(v12 + 56);
  v49(v8, 1, 1, v11);

  v18 = sub_140C0C();
  v51 = a1;
  if (v18 == 2)
  {
    v19 = sub_140BFC();
  }

  else if (v18 <= 0)
  {
    v19 = sub_14093C();
  }

  else
  {
    v19 = sub_140C3C();
  }

  sub_9E3E8(v19, 0, 0, 0, v57);
  v20 = v57[0];
  if (v57[0])
  {
    v45 = v10;
    v21 = v17;
    v47 = v57[2];
    v48 = v57[1];
    v46 = v58;
    v22 = v59;
    if (sub_140C0C() >= 2)
    {
      v44 = v22;
      v25 = sub_140C0C();
      if (v25 == 2)
      {
        sub_140BEC();
        v23 = v50;
        v17 = v21;
      }

      else
      {
        v17 = v21;
        if (v25 <= 2)
        {
          sub_14093C();
        }

        else
        {
          sub_140C3C();
        }

        v23 = v50;
      }

      v10 = v45;
      sub_140BDC();
    }

    else
    {
      v23 = v50;
      sub_140C1C();
      v17 = v21;
      v10 = v45;
    }

    sub_15340(v8, &qword_1C0D50);
    v26 = *(v11 + 48);
    v27 = v47;
    v28 = v48;
    *v8 = v20;
    *(v8 + 1) = v28;
    *(v8 + 2) = v27;
    v8[24] = v46 & 1;
    v24 = v52;
    (*(v53 + 32))(&v8[v26], v23, v52);
    v49(v8, 0, 1, v11);
  }

  else
  {

    v24 = v52;
  }

  sub_10358(v8, v10, &qword_1C0D50);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_15340(v10, &qword_1C0D50);
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_1451EC(60);
    v60._countAndFlagsBits = 0xD000000000000039;
    v60._object = 0x8000000000160D20;
    sub_14494C(v60);
    v54 = sub_140BFC();
    v61._countAndFlagsBits = sub_14538C();
    sub_14494C(v61);

    v62._countAndFlagsBits = 46;
    v62._object = 0xE100000000000000;
    sub_14494C(v62);
  }

  else
  {
    sub_10358(v10, v17, &qword_1C0D58);
    sub_103C0(v17, v15);
    v29 = *(v15 + 1);
    v30 = *(v11 + 48);
    ObjectType = swift_getObjectType();
    v32 = (*(v29 + 8))(ObjectType, v29);
    swift_unknownObjectRelease();
    v33 = *(v53 + 8);
    v33(&v15[v30], v24);
    v34 = [v32 dataSource];
    if (v34)
    {
      v35 = v34;
      sub_103C0(v17, v15);
      swift_unknownObjectRelease();
      v36 = *(v11 + 48);
      isa = sub_140B9C().super.isa;
      v33(&v15[v36], v24);
      v38 = [v35 collectionView:v32 cellForItemAtIndexPath:isa];
      swift_unknownObjectRelease();

      sub_15340(v17, &qword_1C0D58);
      return v38;
    }

    v55 = 0;
    v56 = 0xE000000000000000;
    sub_1451EC(59);
    v63._object = 0x8000000000160DA0;
    v63._countAndFlagsBits = 0xD00000000000001ALL;
    sub_14494C(v63);
    v40 = [v32 description];
    v41 = sub_1448DC();
    v43 = v42;

    v64._countAndFlagsBits = v41;
    v64._object = v43;
    sub_14494C(v64);

    v65._countAndFlagsBits = 0xD00000000000001FLL;
    v65._object = 0x8000000000160DC0;
    sub_14494C(v65);
  }

  result = sub_1452FC();
  __break(1u);
  return result;
}

uint64_t sub_10C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a1;
  v5 = sub_140C2C();
  v58 = *(v5 - 8);
  v59 = v5;
  __chkstk_darwin(v5);
  v55 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v49 - v18;
  v54 = *(v14 + 56);
  v54(v10, 1, 1, v13);

  v20 = sub_140C0C();
  v57 = a3;
  if (v20 == 2)
  {
    v21 = sub_140BFC();
  }

  else if (v20 <= 0)
  {
    v21 = sub_14093C();
  }

  else
  {
    v21 = sub_140C3C();
  }

  v56 = a2;
  sub_9E3E8(v21, 1, v60, a2, v64);
  v22 = v64[0];
  if (v64[0])
  {
    v50 = v12;
    v23 = v19;
    v52 = v64[2];
    v53 = v64[1];
    v51 = v65;
    v24 = v66;
    if (sub_140C0C() >= 2)
    {
      v49[1] = v24;
      v26 = sub_140C0C();
      if (v26 == 2)
      {
        sub_140BEC();
        v25 = v55;
        v19 = v23;
      }

      else
      {
        v19 = v23;
        if (v26 <= 2)
        {
          sub_14093C();
        }

        else
        {
          sub_140C3C();
        }

        v25 = v55;
      }

      v12 = v50;
      sub_140BDC();
    }

    else
    {
      v25 = v55;
      sub_140C1C();
      v19 = v23;
      v12 = v50;
    }

    sub_15340(v10, &qword_1C0D50);
    v27 = *(v13 + 48);
    v28 = v52;
    v29 = v53;
    *v10 = v22;
    *(v10 + 1) = v29;
    *(v10 + 2) = v28;
    v10[24] = v51 & 1;
    (*(v58 + 32))(&v10[v27], v25, v59);
    v54(v10, 0, 1, v13);
  }

  else
  {
  }

  sub_10358(v10, v12, &qword_1C0D50);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_15340(v12, &qword_1C0D50);
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_1451EC(60);
    v67._countAndFlagsBits = 0xD000000000000039;
    v67._object = 0x8000000000160D20;
    sub_14494C(v67);
    v43 = sub_140C0C();
    if (v43 == 2)
    {
      v44 = sub_140BFC();
    }

    else if (v43 <= 0)
    {
      v44 = sub_14093C();
    }

    else
    {
      v44 = sub_140C3C();
    }

    v61 = v44;
    v71._countAndFlagsBits = sub_14538C();
    sub_14494C(v71);

    v72._countAndFlagsBits = 46;
    v72._object = 0xE100000000000000;
    sub_14494C(v72);
  }

  else
  {
    sub_10358(v12, v19, &qword_1C0D58);
    sub_103C0(v19, v17);
    v30 = *(v17 + 1);
    v31 = *(v13 + 48);
    ObjectType = swift_getObjectType();
    v33 = (*(v30 + 8))(ObjectType, v30);
    swift_unknownObjectRelease();
    v34 = v59;
    v35 = *(v58 + 8);
    v35(&v17[v31], v59);
    v36 = [v33 dataSource];
    if (v36)
    {
      v37 = v36;
      v38 = sub_14489C();
      sub_103C0(v19, v17);
      swift_unknownObjectRelease();
      v39 = *(v13 + 48);
      isa = sub_140B9C().super.isa;
      v35(&v17[v39], v34);
      v41 = [v37 collectionView:v33 viewForSupplementaryElementOfKind:v38 atIndexPath:isa];
      swift_unknownObjectRelease();

      sub_15340(v19, &qword_1C0D58);
      return v41;
    }

    v62 = 0;
    v63 = 0xE000000000000000;
    sub_1451EC(59);
    v68._object = 0x8000000000160DA0;
    v68._countAndFlagsBits = 0xD00000000000001ALL;
    sub_14494C(v68);
    v45 = [v33 description];
    v46 = sub_1448DC();
    v48 = v47;

    v69._countAndFlagsBits = v46;
    v69._object = v48;
    sub_14494C(v69);

    v70._countAndFlagsBits = 0xD00000000000001FLL;
    v70._object = 0x8000000000160DC0;
    sub_14494C(v70);
  }

  result = sub_1452FC();
  __break(1u);
  return result;
}

id sub_11328()
{
  v0 = sub_140C2C();
  v46 = *(v0 - 8);
  v47 = v0;
  __chkstk_darwin(v0);
  v44 = &v38[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v38[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v38[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v45 = &v38[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v43 = &v38[-v12];
  v13 = *(v9 + 56);
  v13(v5, 1, 1, v8);

  v14 = sub_140C0C();
  if (v14 == 2)
  {
    v15 = sub_140BFC();
  }

  else if (v14 <= 0)
  {
    v15 = sub_14093C();
  }

  else
  {
    v15 = sub_140C3C();
  }

  sub_9E3E8(v15, 0, 0, 0, v48);
  v16 = v48[0];
  if (v48[0])
  {
    v41 = v48[1];
    v42 = v13;
    v40 = v48[2];
    v39 = v49;
    if (sub_140C0C() >= 2)
    {
      v20 = sub_140C0C();
      if (v20 == 2)
      {
        sub_140BEC();
      }

      else if (v20 <= 2)
      {
        sub_14093C();
      }

      else
      {
        sub_140C3C();
      }

      v17 = v44;
      sub_140BDC();
    }

    else
    {
      v17 = v44;
      sub_140C1C();
    }

    v18 = v47;

    sub_15340(v5, &qword_1C0D50);
    v21 = *(v8 + 48);
    v22 = v40;
    v23 = v41;
    *v5 = v16;
    *(v5 + 1) = v23;
    *(v5 + 2) = v22;
    v5[24] = v39 & 1;
    v19 = v46;
    (*(v46 + 32))(&v5[v21], v17, v18);
    v42(v5, 0, 1, v8);
  }

  else
  {

    v19 = v46;
    v18 = v47;
  }

  sub_10358(v5, v7, &qword_1C0D50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_15340(v7, &qword_1C0D50);
  }

  else
  {
    v24 = v43;
    sub_10358(v7, v43, &qword_1C0D58);
    v25 = v45;
    sub_103C0(v24, v45);
    v26 = *(v25 + 1);
    v27 = *(v8 + 48);
    ObjectType = swift_getObjectType();
    v29 = (*(v26 + 8))(ObjectType, v26);
    swift_unknownObjectRelease();
    v30 = *(v19 + 8);
    v30(&v25[v27], v18);
    v31 = [v29 dataSource];
    if (v31)
    {
      v32 = v31;
      if ([v31 respondsToSelector:"collectionView:canMoveItemAtIndexPath:"])
      {
        v33 = v45;
        sub_103C0(v24, v45);
        swift_unknownObjectRelease();
        v34 = *(v8 + 48);
        isa = sub_140B9C().super.isa;
        v30(&v33[v34], v18);
        v36 = [v32 collectionView:v29 canMoveItemAtIndexPath:isa];
        swift_unknownObjectRelease();

        sub_15340(v24, &qword_1C0D58);
        return v36;
      }

      sub_15340(v24, &qword_1C0D58);

      swift_unknownObjectRelease();
    }

    else
    {
      sub_15340(v24, &qword_1C0D58);
    }
  }

  return 0;
}

uint64_t sub_11888(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v83 = sub_140C2C();
  v85 = *(v83 - 8);
  v3 = __chkstk_darwin(v83);
  v75 = &v70[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v6 = &v70[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50);
  v8 = __chkstk_darwin(v7 - 8);
  v81 = &v70[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v78 = &v70[-v11];
  v12 = __chkstk_darwin(v10);
  v14 = &v70[-v13];
  __chkstk_darwin(v12);
  v16 = &v70[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v74 = &v70[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v19);
  v79 = &v70[-v22];
  __chkstk_darwin(v21);
  v82 = &v70[-v23];
  v76 = OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData;
  v77 = v2;
  v84 = *(v18 + 7);
  v84(v14, 1, 1, v17);

  v24 = sub_140C0C();
  if (v24 == 2)
  {
    v25 = sub_140BFC();
  }

  else if (v24 <= 0)
  {
    v25 = sub_14093C();
  }

  else
  {
    v25 = sub_140C3C();
  }

  sub_9E3E8(v25, 0, 0, 0, v87);
  v26 = v87[0];
  if (v87[0])
  {
    isa = v18;
    v73 = v87[1];
    v72 = v87[2];
    v71 = v88;
    if (sub_140C0C() >= 2)
    {
      v28 = sub_140C0C();
      if (v28 == 2)
      {
        sub_140BEC();
      }

      else if (v28 <= 2)
      {
        sub_14093C();
      }

      else
      {
        sub_140C3C();
      }

      sub_140BDC();
    }

    else
    {
      sub_140C1C();
    }

    sub_15340(v14, &qword_1C0D50);
    v29 = *(v17 + 48);
    v30 = v73;
    *v14 = v26;
    *(v14 + 1) = v30;
    *(v14 + 2) = v72;
    v14[24] = v71 & 1;
    v31 = v6;
    v27 = v83;
    (*(v85 + 32))(&v14[v29], v31, v83);
    v84(v14, 0, 1, v17);
    v18 = isa;
  }

  else
  {

    v27 = v83;
  }

  sub_10358(v14, v16, &qword_1C0D50);
  v34 = *(v18 + 6);
  v32 = (v18 + 48);
  v33 = v34;
  if (v34(v16, 1, v17) == 1)
  {
    v35 = &qword_1C0D50;
    v36 = v16;
  }

  else
  {
    isa = v32;
    v37 = v82;
    sub_10358(v16, v82, &qword_1C0D58);
    v38 = v79;
    sub_103C0(v37, v79);
    v39 = *(v38 + 1);
    v40 = *(v17 + 48);
    ObjectType = swift_getObjectType();
    v73 = (*(v39 + 8))(ObjectType, v39);
    swift_unknownObjectRelease();
    v72 = *(v85 + 8);
    v72(&v38[v40], v27);
    v84(v81, 1, 1, v17);

    v42 = sub_140C0C();
    if (v42 == 2)
    {
      v43 = sub_140BFC();
    }

    else if (v42 <= 0)
    {
      v43 = sub_14093C();
    }

    else
    {
      v43 = sub_140C3C();
    }

    sub_9E3E8(v43, 0, 0, 0, v89);
    v44 = v89[0];
    if (v89[0])
    {
      v46 = v89[1];
      v45 = v89[2];
      LODWORD(v77) = v90;
      if (sub_140C0C() >= 2)
      {
        v49 = sub_140C0C();
        if (v49 == 2)
        {
          sub_140BEC();
        }

        else if (v49 <= 2)
        {
          sub_14093C();
        }

        else
        {
          sub_140C3C();
        }

        v47 = v75;
        sub_140BDC();
      }

      else
      {
        v47 = v75;
        sub_140C1C();
      }

      v48 = v81;
      sub_15340(v81, &qword_1C0D50);
      v50 = *(v17 + 48);
      *v48 = v44;
      *(v48 + 1) = v46;
      *(v48 + 2) = v45;
      v48[24] = v77 & 1;
      v27 = v83;
      (*(v85 + 32))(&v48[v50], v47, v83);
      v84(v48, 0, 1, v17);
      v38 = v79;
    }

    else
    {

      v48 = v81;
    }

    v51 = v48;
    v52 = v78;
    sub_10358(v51, v78, &qword_1C0D50);
    v53 = v33(v52, 1, v17);
    v54 = v72;
    if (v53 == 1)
    {
      sub_15340(v82, &qword_1C0D58);

      v35 = &qword_1C0D50;
      v36 = v52;
    }

    else
    {
      v55 = v74;
      sub_10358(v52, v74, &qword_1C0D58);
      sub_103C0(v55, v38);
      v56 = *(v38 + 1);
      v57 = *(v17 + 48);
      v58 = swift_getObjectType();
      v59 = (*(v56 + 8))(v58, v56);
      swift_unknownObjectRelease();
      v54(&v38[v57], v27);
      v60 = v73;
      if (v73 == v59 && (v62 = [v73 dataSource]) != 0)
      {
        v63 = v62;
        if ([v62 respondsToSelector:"collectionView:moveItemAtIndexPath:toIndexPath:"])
        {
          sub_103C0(v82, v38);
          swift_unknownObjectRelease();
          v64 = v38;
          v65 = *(v17 + 48);
          v66 = v60;
          isa = sub_140B9C().super.isa;
          v54((v64 + v65), v27);
          sub_103C0(v74, v64);
          swift_unknownObjectRelease();
          v67 = *(v17 + 48);
          v68 = sub_140B9C().super.isa;
          v54((v64 + v67), v27);
          v69 = isa;
          [v63 collectionView:v66 moveItemAtIndexPath:isa toIndexPath:v68];

          swift_unknownObjectRelease();
          v55 = v74;
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }

      sub_15340(v55, &qword_1C0D58);
      v36 = v82;
      v35 = &qword_1C0D58;
    }
  }

  return sub_15340(v36, v35);
}

uint64_t sub_12190()
{
  v0 = sub_140C2C();
  v49 = *(v0 - 8);
  __chkstk_darwin(v0);
  v47 = &v41[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v41[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v41[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v45 = &v41[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v48 = &v41[-v12];
  v46 = *(v9 + 56);
  v46(v5, 1, 1, v8);

  v13 = sub_140C0C();
  v50 = v0;
  if (v13 == 2)
  {
    v14 = sub_140BFC();
  }

  else if (v13 <= 0)
  {
    v14 = sub_14093C();
  }

  else
  {
    v14 = sub_140C3C();
  }

  sub_9E3E8(v14, 0, 0, 0, v52);
  v15 = v52[0];
  if (v52[0])
  {
    v43 = v52[2];
    v44 = v52[1];
    v42 = v53;
    if (sub_140C0C() >= 2)
    {
      v19 = sub_140C0C();
      if (v19 == 2)
      {
        sub_140BEC();
      }

      else if (v19 <= 2)
      {
        sub_14093C();
      }

      else
      {
        sub_140C3C();
      }

      v16 = v47;
      sub_140BDC();
    }

    else
    {
      v16 = v47;
      sub_140C1C();
    }

    v18 = v49;

    sub_15340(v5, &qword_1C0D50);
    v20 = *(v8 + 48);
    v21 = v43;
    v22 = v44;
    *v5 = v15;
    *(v5 + 1) = v22;
    *(v5 + 2) = v21;
    v5[24] = v42 & 1;
    v17 = v50;
    (*(v18 + 32))(&v5[v20], v16, v50);
    v46(v5, 0, 1, v8);
  }

  else
  {

    v18 = v49;
    v17 = v50;
  }

  sub_10358(v5, v7, &qword_1C0D50);
  v23 = (*(v9 + 48))(v7, 1, v8);
  v24 = v48;
  if (v23 != 1)
  {
    sub_10358(v7, v48, &qword_1C0D58);
    v27 = v45;
    sub_103C0(v24, v45);
    v28 = *(v27 + 1);
    v29 = *(v8 + 48);
    ObjectType = swift_getObjectType();
    v31 = (*(v28 + 8))(ObjectType, v28);
    swift_unknownObjectRelease();
    v32 = *(v18 + 8);
    v32(&v27[v29], v17);
    v33 = v31;
    if ([v33 dataSource])
    {
      v51 = &OBJC_PROTOCOL___UICollectionViewDataSource_Private;
      v34 = swift_dynamicCastObjCProtocolConditional();
      if (!v34)
      {

        swift_unknownObjectRelease();
LABEL_26:
        v25 = &qword_1C0D58;
        v26 = v24;
        goto LABEL_27;
      }

      v35 = v34;
      if ([v34 respondsToSelector:"_collectionView:canEditItemAtIndexPath:"])
      {
        v36 = v45;
        sub_103C0(v24, v45);
        swift_unknownObjectRelease();
        v37 = *(v8 + 48);
        isa = sub_140B9C().super.isa;
        v32(&v36[v37], v17);
        v39 = [v35 _collectionView:v33 canEditItemAtIndexPath:isa];
        swift_unknownObjectRelease();

        sub_15340(v24, &qword_1C0D58);
        return v39;
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_26;
  }

  v25 = &qword_1C0D50;
  v26 = v7;
LABEL_27:
  sub_15340(v26, v25);
  return 1;
}

id sub_12714()
{
  v0 = sub_140C2C();
  v48 = *(v0 - 8);
  __chkstk_darwin(v0);
  v46 = &v40[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v40[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v40[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v44 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v47 = &v40[-v12];
  v45 = *(v9 + 56);
  v45(v5, 1, 1, v8);

  v13 = sub_140C0C();
  v49 = v0;
  if (v13 == 2)
  {
    v14 = sub_140BFC();
  }

  else if (v13 <= 0)
  {
    v14 = sub_14093C();
  }

  else
  {
    v14 = sub_140C3C();
  }

  sub_9E3E8(v14, 0, 0, 0, v50);
  v15 = v50[0];
  if (v50[0])
  {
    v42 = v50[2];
    v43 = v50[1];
    v41 = v51;
    if (sub_140C0C() >= 2)
    {
      v19 = sub_140C0C();
      if (v19 == 2)
      {
        sub_140BEC();
      }

      else if (v19 <= 2)
      {
        sub_14093C();
      }

      else
      {
        sub_140C3C();
      }

      v16 = v46;
      sub_140BDC();
    }

    else
    {
      v16 = v46;
      sub_140C1C();
    }

    v18 = v48;

    sub_15340(v5, &qword_1C0D50);
    v20 = *(v8 + 48);
    v21 = v42;
    v22 = v43;
    *v5 = v15;
    *(v5 + 1) = v22;
    *(v5 + 2) = v21;
    v5[24] = v41 & 1;
    v17 = v49;
    (*(v18 + 32))(&v5[v20], v16, v49);
    v45(v5, 0, 1, v8);
  }

  else
  {

    v18 = v48;
    v17 = v49;
  }

  sub_10358(v5, v7, &qword_1C0D50);
  v23 = (*(v9 + 48))(v7, 1, v8);
  v24 = v47;
  if (v23 == 1)
  {
    sub_15340(v7, &qword_1C0D50);
    return 0;
  }

  else
  {
    sub_10358(v7, v47, &qword_1C0D58);
    v26 = v44;
    sub_103C0(v24, v44);
    v27 = *(v26 + 1);
    v28 = *(v8 + 48);
    ObjectType = swift_getObjectType();
    v30 = (*(v27 + 8))(ObjectType, v27);
    swift_unknownObjectRelease();
    v31 = *(v18 + 8);
    v31(&v26[v28], v17);
    v32 = v30;
    v33 = [v32 mt_isEditing];
    v34 = &selRef__allowsSelectionDuringEditing;
    if (!v33)
    {
      v34 = &selRef_allowsSelection;
    }

    v25 = [v32 *v34];
    v35 = [v32 delegate];

    if (v35)
    {
      if ((v25 & 1) != 0 && [v35 respondsToSelector:"collectionView:shouldSelectItemAtIndexPath:"])
      {
        v36 = v44;
        sub_103C0(v24, v44);
        swift_unknownObjectRelease();
        v37 = *(v8 + 48);
        isa = sub_140B9C().super.isa;
        v31(&v36[v37], v17);
        v25 = [v35 collectionView:v32 shouldSelectItemAtIndexPath:isa];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      sub_15340(v24, &qword_1C0D58);
    }

    else
    {
      sub_15340(v24, &qword_1C0D58);
    }
  }

  return v25;
}

void sub_12CAC(uint64_t a1, SEL *a2)
{
  v42 = a2;
  v48 = sub_140C2C();
  v2 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v38[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v38[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v46 = &v38[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v43 = &v38[-v14];
  v44 = *(v11 + 56);
  v44(v7, 1, 1, v10);

  v15 = sub_140C0C();
  if (v15 == 2)
  {
    v16 = sub_140BFC();
  }

  else if (v15 <= 0)
  {
    v16 = sub_14093C();
  }

  else
  {
    v16 = sub_140C3C();
  }

  sub_9E3E8(v16, 0, 0, 0, v49);
  v17 = v49[0];
  if (v49[0])
  {
    v47 = v2;
    v40 = v49[2];
    v41 = v49[1];
    v39 = v50;
    if (sub_140C0C() >= 2)
    {
      v20 = sub_140C0C();
      if (v20 == 2)
      {
        sub_140BEC();
      }

      else if (v20 <= 2)
      {
        sub_14093C();
      }

      else
      {
        sub_140C3C();
      }

      v18 = v45;
      sub_140BDC();
    }

    else
    {
      v18 = v45;
      sub_140C1C();
    }

    v19 = v48;

    sub_15340(v7, &qword_1C0D50);
    v21 = *(v10 + 48);
    v22 = v40;
    v23 = v41;
    *v7 = v17;
    *(v7 + 1) = v23;
    *(v7 + 2) = v22;
    v7[24] = v39 & 1;
    v2 = v47;
    (*(v47 + 32))(&v7[v21], v18, v19);
    v44(v7, 0, 1, v10);
  }

  else
  {

    v19 = v48;
  }

  sub_10358(v7, v9, &qword_1C0D50);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_15340(v9, &qword_1C0D50);
  }

  else
  {
    v24 = v43;
    sub_10358(v9, v43, &qword_1C0D58);
    v25 = v46;
    sub_103C0(v24, v46);
    v26 = *(v25 + 1);
    v27 = *(v10 + 48);
    ObjectType = swift_getObjectType();
    v29 = (*(v26 + 8))(ObjectType, v26);
    swift_unknownObjectRelease();
    v30 = v2 + 8;
    v31 = *(v2 + 8);
    v47 = v30;
    v31(&v25[v27], v19);
    v32 = [v29 delegate];
    if (v32)
    {
      v33 = v32;
      v34 = v42;
      if ([v32 respondsToSelector:*v42])
      {
        v35 = v46;
        sub_103C0(v24, v46);
        swift_unknownObjectRelease();
        v36 = *(v10 + 48);
        isa = sub_140B9C().super.isa;
        v31(&v35[v36], v19);
        [v33 *v34];
        swift_unknownObjectRelease();

        sub_15340(v24, &qword_1C0D58);
      }

      else
      {
        sub_15340(v24, &qword_1C0D58);

        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_15340(v24, &qword_1C0D58);
    }
  }
}

void sub_13214()
{
  v0 = sub_140C2C();
  v47 = *(v0 - 8);
  v48 = v0;
  __chkstk_darwin(v0);
  v44 = &v39[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v39[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v39[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v45 = &v39[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v46 = &v39[-v12];
  v13 = *(v9 + 56);
  v13(v5, 1, 1, v8);

  v14 = sub_140C0C();
  if (v14 == 2)
  {
    v15 = sub_140BFC();
  }

  else if (v14 <= 0)
  {
    v15 = sub_14093C();
  }

  else
  {
    v15 = sub_140C3C();
  }

  sub_9E3E8(v15, 0, 0, 0, v49);
  v16 = v49[0];
  if (v49[0])
  {
    v42 = v49[1];
    v43 = v13;
    v41 = v49[2];
    v40 = v50;
    if (sub_140C0C() >= 2)
    {
      v20 = sub_140C0C();
      if (v20 == 2)
      {
        sub_140BEC();
      }

      else if (v20 <= 2)
      {
        sub_14093C();
      }

      else
      {
        sub_140C3C();
      }

      v17 = v44;
      sub_140BDC();
    }

    else
    {
      v17 = v44;
      sub_140C1C();
    }

    v18 = v48;

    sub_15340(v5, &qword_1C0D50);
    v21 = *(v8 + 48);
    v22 = v41;
    v23 = v42;
    *v5 = v16;
    *(v5 + 1) = v23;
    *(v5 + 2) = v22;
    v5[24] = v40 & 1;
    v19 = v47;
    (*(v47 + 32))(&v5[v21], v17, v18);
    v43(v5, 0, 1, v8);
  }

  else
  {

    v19 = v47;
    v18 = v48;
  }

  sub_10358(v5, v7, &qword_1C0D50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_15340(v7, &qword_1C0D50);
  }

  else
  {
    v24 = v46;
    sub_10358(v7, v46, &qword_1C0D58);
    v25 = v45;
    sub_103C0(v24, v45);
    v26 = *(v25 + 1);
    v27 = *(v8 + 48);
    ObjectType = swift_getObjectType();
    v29 = (*(v26 + 8))(ObjectType, v26);
    swift_unknownObjectRelease();
    v30 = *(v19 + 8);
    v30(&v25[v27], v18);
    v31 = [v29 delegate];
    if (v31)
    {
      v32 = v31;
      if ([v31 respondsToSelector:"collectionView:didSelectItemAtIndexPath:"])
      {
        v33 = v45;
        sub_103C0(v24, v45);
        swift_unknownObjectRelease();
        v34 = *(v8 + 48);
        isa = sub_140B9C().super.isa;
        v30(&v33[v34], v18);
        [v29 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

        v36 = v46;
        sub_103C0(v46, v33);
        swift_unknownObjectRelease();
        v37 = *(v8 + 48);
        v38 = sub_140B9C().super.isa;
        v30(&v33[v37], v18);
        [v32 collectionView:v29 didSelectItemAtIndexPath:v38];
        swift_unknownObjectRelease();

        sub_15340(v36, &qword_1C0D58);
      }

      else
      {
        sub_15340(v24, &qword_1C0D58);

        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_15340(v24, &qword_1C0D58);
    }
  }
}

uint64_t sub_137C4(uint64_t a1, SEL *a2)
{
  v44 = a2;
  v50 = sub_140C2C();
  v2 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v40[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v40[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v48 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v45 = &v40[-v14];
  v46 = *(v11 + 56);
  v46(v7, 1, 1, v10);

  v15 = sub_140C0C();
  if (v15 == 2)
  {
    v16 = sub_140BFC();
  }

  else if (v15 <= 0)
  {
    v16 = sub_14093C();
  }

  else
  {
    v16 = sub_140C3C();
  }

  sub_9E3E8(v16, 0, 0, 0, v51);
  v17 = v51[0];
  if (v51[0])
  {
    v49 = v2;
    v42 = v51[2];
    v43 = v51[1];
    v41 = v52;
    if (sub_140C0C() >= 2)
    {
      v20 = sub_140C0C();
      if (v20 == 2)
      {
        sub_140BEC();
      }

      else if (v20 <= 2)
      {
        sub_14093C();
      }

      else
      {
        sub_140C3C();
      }

      v18 = v47;
      sub_140BDC();
    }

    else
    {
      v18 = v47;
      sub_140C1C();
    }

    v19 = v50;

    sub_15340(v7, &qword_1C0D50);
    v21 = *(v10 + 48);
    v22 = v42;
    v23 = v43;
    *v7 = v17;
    *(v7 + 1) = v23;
    *(v7 + 2) = v22;
    v7[24] = v41 & 1;
    v2 = v49;
    (*(v49 + 32))(&v7[v21], v18, v19);
    v46(v7, 0, 1, v10);
  }

  else
  {

    v19 = v50;
  }

  sub_10358(v7, v9, &qword_1C0D50);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_15340(v9, &qword_1C0D50);
  }

  else
  {
    v24 = v45;
    sub_10358(v9, v45, &qword_1C0D58);
    v25 = v48;
    sub_103C0(v24, v48);
    v26 = *(v25 + 1);
    v27 = *(v10 + 48);
    ObjectType = swift_getObjectType();
    v29 = (*(v26 + 8))(ObjectType, v26);
    swift_unknownObjectRelease();
    v30 = v2 + 8;
    v31 = *(v2 + 8);
    v49 = v30;
    v31(&v25[v27], v19);
    v32 = [v29 delegate];
    if (v32)
    {
      v33 = v32;
      v34 = v44;
      if ([v32 respondsToSelector:*v44])
      {
        v35 = v48;
        sub_103C0(v24, v48);
        swift_unknownObjectRelease();
        v36 = *(v10 + 48);
        isa = sub_140B9C().super.isa;
        v31(&v35[v36], v19);
        v38 = [v33 *v34];
        swift_unknownObjectRelease();

        sub_15340(v24, &qword_1C0D58);
        return v38;
      }

      sub_15340(v24, &qword_1C0D58);

      swift_unknownObjectRelease();
    }

    else
    {
      sub_15340(v24, &qword_1C0D58);
    }
  }

  return 1;
}

void sub_13D38()
{
  v0 = sub_140C2C();
  v47 = *(v0 - 8);
  v48 = v0;
  __chkstk_darwin(v0);
  v44 = &v39[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v39[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v39[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v45 = &v39[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v46 = &v39[-v12];
  v13 = *(v9 + 56);
  v13(v5, 1, 1, v8);

  v14 = sub_140C0C();
  if (v14 == 2)
  {
    v15 = sub_140BFC();
  }

  else if (v14 <= 0)
  {
    v15 = sub_14093C();
  }

  else
  {
    v15 = sub_140C3C();
  }

  sub_9E3E8(v15, 0, 0, 0, v49);
  v16 = v49[0];
  if (v49[0])
  {
    v42 = v49[1];
    v43 = v13;
    v41 = v49[2];
    v40 = v50;
    if (sub_140C0C() >= 2)
    {
      v20 = sub_140C0C();
      if (v20 == 2)
      {
        sub_140BEC();
      }

      else if (v20 <= 2)
      {
        sub_14093C();
      }

      else
      {
        sub_140C3C();
      }

      v17 = v44;
      sub_140BDC();
    }

    else
    {
      v17 = v44;
      sub_140C1C();
    }

    v18 = v48;

    sub_15340(v5, &qword_1C0D50);
    v21 = *(v8 + 48);
    v22 = v41;
    v23 = v42;
    *v5 = v16;
    *(v5 + 1) = v23;
    *(v5 + 2) = v22;
    v5[24] = v40 & 1;
    v19 = v47;
    (*(v47 + 32))(&v5[v21], v17, v18);
    v43(v5, 0, 1, v8);
  }

  else
  {

    v19 = v47;
    v18 = v48;
  }

  sub_10358(v5, v7, &qword_1C0D50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_15340(v7, &qword_1C0D50);
  }

  else
  {
    v24 = v46;
    sub_10358(v7, v46, &qword_1C0D58);
    v25 = v45;
    sub_103C0(v24, v45);
    v26 = *(v25 + 1);
    v27 = *(v8 + 48);
    ObjectType = swift_getObjectType();
    v29 = (*(v26 + 8))(ObjectType, v26);
    swift_unknownObjectRelease();
    v30 = *(v19 + 8);
    v30(&v25[v27], v18);
    v31 = [v29 delegate];
    if (v31)
    {
      v32 = v31;
      if ([v31 respondsToSelector:"collectionView:didDeselectItemAtIndexPath:"])
      {
        v33 = v45;
        sub_103C0(v24, v45);
        swift_unknownObjectRelease();
        v34 = *(v8 + 48);
        isa = sub_140B9C().super.isa;
        v30(&v33[v34], v18);
        [v29 deselectItemAtIndexPath:isa animated:0];

        v36 = v46;
        sub_103C0(v46, v33);
        swift_unknownObjectRelease();
        v37 = *(v8 + 48);
        v38 = sub_140B9C().super.isa;
        v30(&v33[v37], v18);
        [v32 collectionView:v29 didDeselectItemAtIndexPath:v38];
        swift_unknownObjectRelease();

        sub_15340(v36, &qword_1C0D58);
      }

      else
      {
        sub_15340(v24, &qword_1C0D58);

        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_15340(v24, &qword_1C0D58);
    }
  }
}

void sub_142E4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v41 = a3;
  v36 = a1;
  v46 = sub_140C2C();
  v3 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v42 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v43 = &v36 - v15;
  v44 = *(v12 + 56);
  v44(v8, 1, 1, v11);

  v16 = sub_140C0C();
  if (v16 == 2)
  {
    v17 = sub_140BFC();
  }

  else if (v16 <= 0)
  {
    v17 = sub_14093C();
  }

  else
  {
    v17 = sub_140C3C();
  }

  sub_9E3E8(v17, 0, 0, 0, v47);
  v18 = v47[0];
  if (v47[0])
  {
    v39 = v47[1];
    v40 = v3;
    v38 = v47[2];
    v37 = v48;
    if (sub_140C0C() >= 2)
    {
      v20 = sub_140C0C();
      if (v20 == 2)
      {
        sub_140BEC();
      }

      else if (v20 <= 2)
      {
        sub_14093C();
      }

      else
      {
        sub_140C3C();
      }

      v19 = v45;
      sub_140BDC();
    }

    else
    {
      v19 = v45;
      sub_140C1C();
    }

    sub_15340(v8, &qword_1C0D50);
    v21 = *(v11 + 48);
    v22 = v38;
    v23 = v39;
    *v8 = v18;
    *(v8 + 1) = v23;
    *(v8 + 2) = v22;
    v8[24] = v37 & 1;
    v3 = v40;
    (*(v40 + 32))(&v8[v21], v19, v46);
    v44(v8, 0, 1, v11);
  }

  else
  {
  }

  sub_10358(v8, v10, &qword_1C0D50);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_15340(v10, &qword_1C0D50);
  }

  else
  {
    v24 = v43;
    sub_10358(v10, v43, &qword_1C0D58);
    v25 = v42;
    sub_103C0(v24, v42);
    v26 = *(v25 + 8);
    v27 = *(v11 + 48);
    ObjectType = swift_getObjectType();
    v29 = (*(v26 + 8))(ObjectType, v26);
    swift_unknownObjectRelease();
    v30 = *(v3 + 8);
    v30(v25 + v27, v46);
    v31 = [v29 delegate];
    if (v31)
    {
      v32 = v31;
      v33 = v41;
      if ([v31 respondsToSelector:*v41])
      {
        sub_103C0(v24, v25);
        swift_unknownObjectRelease();
        v34 = *(v11 + 48);
        isa = sub_140B9C().super.isa;
        v30(v25 + v34, v46);
        [v32 *v33];
        swift_unknownObjectRelease();

        sub_15340(v24, &qword_1C0D58);
      }

      else
      {
        sub_15340(v24, &qword_1C0D58);

        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_15340(v24, &qword_1C0D58);
    }
  }
}

uint64_t sub_14844(uint64_t a1, SEL *a2)
{
  v79 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v79 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v82 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v81 = &v79 - v14;
  v15 = __chkstk_darwin(v13);
  v98 = &v79 - v16;
  __chkstk_darwin(v15);
  v80 = &v79 - v17;
  v18 = sub_140C2C();
  v19 = __chkstk_darwin(v18);
  v83 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v22 = __chkstk_darwin(v21);
  v26 = &v79 - v25;
  v27 = *(a1 + 16);
  v89 = v9;
  v90 = v22;
  v84 = v23;
  v85 = v10;
  if (v27)
  {
    v88 = v24;
    v29 = *(v23 + 16);
    v28 = v23 + 16;
    v94 = v29;
    v30 = a1 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
    v31 = *(v28 + 56);
    v32 = (v10 + 56);
    v92 = (v28 - 8);
    v93 = v31;
    v95 = v28;
    v96 = OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData;
    v86 = (v28 + 16);
    v91 = (v10 + 48);
    v33 = _swiftEmptyArrayStorage;
    v97 = v8;
    v87 = (v10 + 56);
    v34 = v22;
    do
    {
      v103 = v33;
      v94(v26, v30, v34);
      v102 = *v32;
      v102(v6, 1, 1, v9);

      v35 = sub_140C0C();
      v36 = v9;
      v37 = v34;
      if (v35 == 2)
      {
        v38 = sub_140BFC();
      }

      else if (v35 <= 0)
      {
        v38 = sub_14093C();
      }

      else
      {
        v38 = sub_140C3C();
      }

      sub_9E3E8(v38, 0, 0, 0, v104);
      v39 = v104[0];
      if (v104[0])
      {
        v100 = v104[2];
        v101 = v104[1];
        v99 = v105;
        if (sub_140C0C() >= 2)
        {
          v41 = sub_140C0C();
          if (v41 == 2)
          {
            sub_140BEC();
          }

          else if (v41 <= 2)
          {
            sub_14093C();
          }

          else
          {
            sub_140C3C();
          }

          v40 = v88;
          sub_140BDC();
        }

        else
        {
          v40 = v88;
          sub_140C1C();
        }

        sub_15340(v6, &qword_1C0D50);
        v42 = v90;
        (*v92)(v26, v90);
        v9 = v89;
        v43 = *(v89 + 48);
        v44 = v100;
        v45 = v101;
        *v6 = v39;
        *(v6 + 1) = v45;
        v34 = v42;
        *(v6 + 2) = v44;
        v6[24] = v99 & 1;
        (*v86)(&v6[v43], v40, v42);
        v32 = v87;
        v102(v6, 0, 1, v9);
      }

      else
      {

        v34 = v37;
        (*v92)(v26, v37);
        v9 = v36;
      }

      v46 = v97;
      sub_10358(v6, v97, &qword_1C0D50);
      v47 = (*v91)(v46, 1, v9) == 1;
      v33 = v103;
      if (v47)
      {
        sub_15340(v46, &qword_1C0D50);
      }

      else
      {
        sub_10358(v46, v98, &qword_1C0D58);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_134470(0, v33[2] + 1, 1, v33);
        }

        v49 = v33[2];
        v48 = v33[3];
        if (v49 >= v48 >> 1)
        {
          v33 = sub_134470(v48 > 1, v49 + 1, 1, v33);
        }

        v33[2] = v49 + 1;
        sub_10358(v98, v33 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v49, &qword_1C0D58);
      }

      v30 += v93;
      --v27;
    }

    while (v27);
  }

  else
  {
    v33 = _swiftEmptyArrayStorage;
    v34 = v22;
  }

  v50 = v33[2];
  if (!v50)
  {
  }

  v51 = v9;
  v52 = v33 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
  v53 = v80;
  sub_103C0(v52, v80);
  v55 = *v53;
  v54 = *(v53 + 1);
  v56 = v34;
  v57 = v84;
  (*(v84 + 8))(&v53[*(v51 + 48)], v56);
  ObjectType = swift_getObjectType();
  v59 = v33;
  v60 = *(v54 + 8);
  swift_unknownObjectRetain();
  v61 = v60(ObjectType, v54);
  v102 = v55;
  swift_unknownObjectRelease();
  v62 = [v61 prefetchDataSource];
  if (v62)
  {
    v63 = v62;
    v103 = v59;
    if ([v62 respondsToSelector:*v79])
    {
      v100 = v63;
      v101 = v61;
      v64 = *(v85 + 72);
      v65 = (v57 + 32);
      v66 = _swiftEmptyArrayStorage;
      v67 = v90;
      v68 = v83;
      do
      {
        v69 = v81;
        sub_103C0(v52, v81);
        v70 = v69;
        v71 = v82;
        sub_10358(v70, v82, &qword_1C0D58);
        swift_unknownObjectRelease();
        v72 = *v65;
        (*v65)(v68, v71 + *(v89 + 48), v67);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_134448(0, v66[2] + 1, 1, v66);
        }

        v74 = v66[2];
        v73 = v66[3];
        if (v74 >= v73 >> 1)
        {
          v66 = sub_134448(v73 > 1, v74 + 1, 1, v66);
        }

        v66[2] = v74 + 1;
        v75 = v66 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v74;
        v68 = v83;
        v67 = v90;
        v72(v75, v83, v90);
        v52 += v64;
        --v50;
      }

      while (v50);

      isa = sub_1449CC().super.isa;

      v78 = v101;
      [v100 *v79];
      swift_unknownObjectRelease();

      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return swift_unknownObjectRelease();
}

unint64_t sub_15160()
{
  result = qword_1C0D68;
  if (!qword_1C0D68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C0D68);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_55Tm()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_15220()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1527C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_152D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_15340(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_153A0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, unint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        v12 = a3 != a9;
        v17 = a7 < 2;
LABEL_18:
        v16 = a8 ^ 1 | v17 | v12;
        goto LABEL_19;
      }

      v12 = a3 != a9;
      v13 = a7 == 1;
    }

    else
    {
      v12 = a3 != a9;
      v13 = a7 == 0;
    }

    v17 = !v13;
    goto LABEL_18;
  }

  if (a8)
  {
    return 0;
  }

  v16 = a1 != a7 || a3 != a9;
LABEL_19:
  v18 = v16 | a6;
  v19 = (v16 ^ (v16 | a6)) & a12;
  if (v18 & 1) != 0 || (a12)
  {
    return v19 & 1;
  }

  else
  {
    return sub_141AFC() & 1;
  }
}

uint64_t sub_154A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DC8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DD0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v22 - v9;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DD8);
  __chkstk_darwin(v24);
  v12 = &v22 - v11;
  v26 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DE0);
  sub_1D4A4(&qword_1C0DE8, &qword_1C0DE0);
  sub_14130C();
  sub_1D4A4(&qword_1C0DF0, &qword_1C0DC8);
  sub_14383C();
  (*(v4 + 8))(v6, v3);
  v23 = sub_143EAC();
  v14 = v13;
  LOBYTE(v3) = sub_1441DC();
  LOBYTE(v4) = sub_14422C();
  v15 = sub_1441EC();
  v28 = *(v2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DF8);
  sub_143CBC();
  v16 = v27;
  v17 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0E00) + 36)];
  *v17 = v3 & 1;
  v17[1] = v4 & 1;
  v17[2] = v15 & 1;
  *(v17 + 1) = v16;
  *(v17 + 2) = v23;
  *(v17 + 3) = v14;
  v18 = sub_143F1C();
  v19 = &v10[*(v8 + 44)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0E08);
  sub_14423C();
  *v19 = v18;
  sub_1D19C(v10, v12, &qword_1C0DD0);
  v20 = &v12[*(v24 + 36)];
  *v20 = sub_160BC;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = 0;
  sub_15340(v10, &qword_1C0DD0);
  sub_1ACF0();
  sub_143AFC();
  return sub_15340(v12, &qword_1C0DD8);
}

uint64_t sub_1584C@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v39 = sub_14416C();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0E40);
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0E48);
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = __chkstk_darwin(v8);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v43 = &v34 - v12;
  if (*(a1 + 4))
  {
    __chkstk_darwin(v11);
    *(&v34 - 2) = a1;
    type metadata accessor for NowPlayingMediaPlayerController();
    type metadata accessor for ChaptersList();
    sub_1AF64(&qword_1C0E58, type metadata accessor for NowPlayingMediaPlayerController);
    sub_1AF64(&qword_1C0E60, type metadata accessor for ChaptersList);

    sub_14117C();
    v13 = swift_allocObject();
    v14 = a1[1];
    v13[1] = *a1;
    v13[2] = v14;
    v15 = a1[3];
    v13[3] = a1[2];
    v13[4] = v15;
    sub_1B00C(a1, v44);
    sub_1D4A4(&qword_1C0E68, &qword_1C0E40);
    v16 = v36;
    sub_14384C();

    (*(v35 + 8))(v7, v16);
    v17 = *a1;
    swift_retain_n();
    sub_14423C();
    v36 = sub_14403C();
    v18 = *(v37 + 8);
    v19 = v39;
    v18(v4, v39);
    v20 = sub_1441FC();
    sub_14423C();
    v21 = sub_14404C();
    v18(v4, v19);
    v23 = v40;
    v22 = v41;
    v24 = *(v40 + 16);
    v25 = v38;
    v26 = v43;
    v24(v38, v43, v41);
    v27 = v42;
    v24(v42, v25, v22);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0E70);
    v29 = &v27[*(v28 + 48)];
    v30 = v36;
    *v29 = v17;
    *(v29 + 1) = v30;
    v29[16] = v20 & 1;
    v31 = &v27[*(v28 + 64)];
    *v31 = v17;
    *(v31 + 1) = v21;
    v32 = *(v23 + 8);
    swift_retain_n();

    v32(v26, v22);

    return (v32)(v25, v22);
  }

  else
  {
    type metadata accessor for NowPlayingMediaPlayerController();
    sub_1AF64(&qword_1C0E50, type metadata accessor for NowPlayingMediaPlayerController);
    result = sub_142DAC();
    __break(1u);
  }

  return result;
}

uint64_t sub_15D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ChaptersList();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 16);

  if (sub_1441EC())
  {
    *v7 = *a1;
    sub_14427C();
    sub_1AF64(&qword_1C0E88, &type metadata accessor for QueueViewModel);

    v7[1] = sub_142B9C();
    v7[2] = v8;
    sub_14157C();
    sub_1AF64(&qword_1C0E90, &type metadata accessor for NowPlayingViewModel.PlaybackPosition);
    v7[3] = sub_142B9C();
    v7[4] = v9;
    v10 = *(v4 + 28);
    *(v7 + v10) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0E98);
    swift_storeEnumTagMultiPayload();
    sub_1C810(v7, a2, type metadata accessor for ChaptersList);
    v11 = 0;
  }

  else
  {
    sub_15340(&v13, &qword_1C0E80);
    v11 = 1;
  }

  return (*(v5 + 56))(a2, v11, 1, v4);
}

uint64_t sub_15FDC(uint64_t result, double a2, double a3)
{
  if (a2 > 0.0)
  {
    v12[1] = v6;
    v12[2] = v5;
    v12[7] = v3;
    v12[8] = v4;
    if (a3 > 0.0)
    {
      v10 = *(result + 48);
      v11 = v10;
      v12[0] = *(&v10 + 1);
      sub_1D19C(v12, &v9, &qword_1C0E78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DF8);
      sub_143CBC();
      v8 = v9;
      if (v9 <= a3)
      {
        v8 = a3;
      }

      v10 = v11;
      v9 = v8;
      sub_143CCC();
      return sub_15340(&v11, &qword_1C0DF8);
    }
  }

  return result;
}

void sub_160BC()
{
  v4 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];

  v0 = sub_14489C();

  v1 = [v4 BOOLForKey:v0];

  if ((v1 & 1) == 0)
  {
    isa = sub_144A7C().super.super.isa;

    v3 = sub_14489C();

    [v4 setValue:isa forKey:v3];
  }
}

uint64_t sub_161F8@<X0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v37 = a1;
  v36 = a2;
  v4 = sub_14354C();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1432EC();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0EB0);
  v28 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0EB8);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0EC0);
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v16 = &v27 - v15;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0EC8);
  v17 = *(v35 - 8);
  __chkstk_darwin(v35);
  v19 = &v27 - v18;
  v38[3] = &type metadata for HoveringChapterPicker;
  v38[4] = sub_1B34C();
  v20 = swift_allocObject();
  v38[0] = v20;
  *(v20 + 16) = "MediaCoreUI";
  *(v20 + 24) = 11;
  *(v20 + 32) = 2;
  *(v20 + 40) = "HoveringChapterPicker";
  *(v20 + 48) = 21;
  *(v20 + 56) = 2;
  v21 = sub_141B2C();
  __swift_destroy_boxed_opaque_existential_0(v38);
  if (v21)
  {
    if ((v37 & 1) == 0)
    {
      v22 = 1;
      return (*(v17 + 56))(v36, v22, 1, v35);
    }

LABEL_6:
    sub_14337C();
    sub_1432DC();
    sub_1D4A4(&qword_1C0ED8, &qword_1C0EB0);
    sub_143A8C();
    (*(v30 + 8))(v8, v32);
    (*(v28 + 8))(v11, v9);
    v23 = &v14[*(v12 + 36)];
    *v23 = 0;
    *(v23 + 1) = a3;
    sub_14353C();
    v24 = sub_1B3B0();
    sub_143A7C();
    (*(v33 + 8))(v6, v34);
    sub_15340(v14, &qword_1C0EB8);
    v38[0] = v12;
    v38[1] = v24;
    swift_getOpaqueTypeConformance2();
    v25 = v31;
    sub_143A3C();
    (*(v29 + 8))(v16, v25);
    sub_10358(v19, v36, &qword_1C0EC8);
    v22 = 0;
    return (*(v17 + 56))(v36, v22, 1, v35);
  }

  v22 = 1;
  if (~v37 & 0x10100) != 0 && (v37)
  {
    goto LABEL_6;
  }

  return (*(v17 + 56))(v36, v22, 1, v35);
}

uint64_t sub_167C0@<X0>(uint64_t a1@<X8>)
{
  sub_1430EC();
  v2 = sub_1437DC();
  v4 = v3;
  v6 = v5;
  sub_1436AC();
  v7 = sub_1437CC();
  v9 = v8;
  v11 = v10;

  sub_1B4AC(v2, v4, v6 & 1);

  v12 = sub_1437BC();
  v14 = v13;
  v16 = v15;
  sub_1B4AC(v7, v9, v11 & 1);

  sub_14338C();
  v17 = sub_14378C();
  v19 = v18;
  LOBYTE(v9) = v20;
  v22 = v21;
  sub_1B4AC(v12, v14, v16 & 1);

  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v22;
  return result;
}

uint64_t sub_16948@<X0>(uint64_t *a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0EE8);
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  __chkstk_darwin(v1);
  v4 = &v25 - v3;
  sub_1430EC();
  v5 = sub_1437DC();
  v7 = v6;
  v9 = v8;
  sub_1436AC();
  v10 = sub_1437CC();
  v12 = v11;
  v14 = v13;

  sub_1B4AC(v5, v7, v9 & 1);

  sub_14295C();
  swift_getOpaqueTypeConformance2();
  v15 = v26;
  v16 = sub_14378C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_1B4AC(v10, v12, v14 & 1);

  result = (*(v27 + 8))(v4, v15);
  v24 = v28;
  *v28 = v16;
  v24[1] = v18;
  *(v24 + 16) = v20 & 1;
  v24[3] = v22;
  return result;
}

uint64_t sub_16B78@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 1))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *v1;
  if (*(v1 + 2))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return sub_161F8(v3 | v4, a1, v1[1]);
}

uint64_t sub_16BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F50);
  v35 = *(v8 - 8);
  v36 = v8;
  __chkstk_darwin(v8);
  v34 = v29 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F58);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v29 - v12;
  v37 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F00);
  sub_1D4A4(&qword_1C0F08, &qword_1C0F00);
  if (sub_144B8C())
  {
    v37 = a2;
    v14 = swift_allocObject();
    v32 = v29;
    v33 = a4;
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;
    *(v14 + 32) = a3 & 1;
    v31 = a3 & 1;
    __chkstk_darwin(v14);
    v29[3] = v28;
    v29[2] = type metadata accessor for HardQueueHeaderView(0);
    v29[1] = type metadata accessor for RowContent(0);
    v29[0] = sub_1AF64(&qword_1C0F60, type metadata accessor for HardQueueHeaderView);
    v15 = sub_1D4A4(&qword_1C0F18, &qword_1C0F00);
    v30 = v10;
    v16 = v15;
    v17 = a1;
    v18 = sub_1AF64(&qword_1C0F20, type metadata accessor for RowContent);
    v19 = sub_1AF64(&qword_1C0F28, type metadata accessor for RowContent);
    v20 = sub_1AF64(&qword_1C0F30, &type metadata accessor for QueueModel.Episode);

    v28[3] = v19;
    v28[4] = v20;
    v28[1] = v16;
    v28[2] = v18;
    v28[0] = v29[0];
    v21 = v34;
    sub_14176C();
    v22 = swift_allocObject();
    *(v22 + 16) = v17;
    *(v22 + 24) = a2;
    *(v22 + 32) = v31;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1B99C;
    *(v23 + 24) = v22;
    (*(v35 + 32))(v13, v21, v36);
    v24 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F68) + 36)];
    *v24 = sub_1DCD0;
    *(v24 + 1) = v23;
    v25 = v30;
    v13[*(v30 + 36)] = 1;
    v26 = v33;
    sub_10358(v13, v33, &qword_1C0F58);
    (*(v11 + 56))(v26, 0, 1, v25);
  }

  else
  {

    return (*(v11 + 56))(a4, 1, 1, v10);
  }
}

uint64_t sub_17094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for RowContent(0);
  v7 = v6[5];
  v8 = sub_14413C();
  (*(*(v8 - 8) + 16))(&a3[v7], a1, v8);
  *a3 = a2;
  a3[v6[6]] = 1;
  a3[v6[7]] = 1;
  v9 = &a3[v6[8]];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = v6[9];
  *&a3[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F40);
  swift_storeEnumTagMultiPayload();
  v11 = &a3[v6[10]];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = v6[11];
  *&a3[v12] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F48);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_171EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = *(a2 + 16);
  *(a4 + 8) = a1;
  *(a4 + 16) = a3;

  sub_143CAC();
  *(a4 + 24) = v7;
  *(a4 + 32) = v8;
  v5 = *(type metadata accessor for HardQueueHeaderView(0) + 32);
  *(a4 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F70);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_17298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0EF0);
  v26 = *(v6 - 8);
  v27 = v6;
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0EF8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v28 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F00);
  sub_1D4A4(&qword_1C0F08, &qword_1C0F00);
  if (sub_144B8C())
  {
    v28 = a2;
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    v24 = type metadata accessor for RowContent(0);
    v23 = sub_1B4EC();
    v21 = sub_1D4A4(&qword_1C0F18, &qword_1C0F00);
    v22 = v8;
    v14 = a1;
    sub_1AF64(&qword_1C0F20, type metadata accessor for RowContent);
    v25 = a3;
    sub_1AF64(&qword_1C0F28, type metadata accessor for RowContent);
    sub_1AF64(&qword_1C0F30, &type metadata accessor for QueueModel.Episode);

    v15 = v22;
    sub_14176C();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = a2;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1DCCC;
    *(v17 + 24) = v16;
    (*(v26 + 32))(v12, v15, v27);
    v18 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F38) + 36)];
    *v18 = sub_1B7D8;
    *(v18 + 1) = v17;
    v12[*(v9 + 36)] = 1;
    v19 = v25;
    sub_10358(v12, v25, &qword_1C0EF8);
    (*(v10 + 56))(v19, 0, 1, v9);
  }

  else
  {

    return (*(v10 + 56))(a3, 1, 1, v9);
  }
}

uint64_t sub_176F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for RowContent(0);
  v7 = v6[5];
  v8 = sub_14413C();
  (*(*(v8 - 8) + 16))(&a3[v7], a1, v8);
  *a3 = a2;
  a3[v6[6]] = 0;
  a3[v6[7]] = 1;
  v9 = &a3[v6[8]];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = v6[9];
  *&a3[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F40);
  swift_storeEnumTagMultiPayload();
  v11 = &a3[v6[10]];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = v6[11];
  *&a3[v12] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F48);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_17854@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v105 = a1;
  v110 = a2;
  v2 = sub_14332C();
  v103 = *(v2 - 8);
  v104 = v2;
  __chkstk_darwin(v2);
  v102 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0EE8);
  __chkstk_darwin(v85);
  v84 = &v80 - v4;
  v5 = sub_14317C();
  v100 = *(v5 - 8);
  v101 = v5;
  v6 = __chkstk_darwin(v5);
  v97 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v96 = &v80 - v8;
  v94 = type metadata accessor for HardQueueHeaderView(0);
  v86 = *(v94 - 8);
  __chkstk_darwin(v94);
  v87 = v9;
  v88 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1220);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v90 = &v80 - v10;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1268);
  __chkstk_darwin(v91);
  v89 = &v80 - v11;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1270);
  __chkstk_darwin(v98);
  v99 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1278);
  v107 = *(v13 - 8);
  v108 = v13;
  __chkstk_darwin(v13);
  v95 = &v80 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1280);
  v16 = __chkstk_darwin(v15 - 8);
  v109 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v80 - v18;
  sub_1430EC();
  LOWORD(v79._object) = 256;
  v20 = sub_1437DC();
  v22 = v21;
  v24 = v23;
  sub_1436AC();
  v25 = sub_1437CC();
  v27 = v26;
  v29 = v28;

  sub_1B4AC(v20, v22, v24 & 1);

  v30 = sub_1437BC();
  v32 = v31;
  v34 = v33;
  v35 = v27;
  v36 = v105;
  sub_1B4AC(v25, v35, v29 & 1);

  sub_143BFC();
  v37 = sub_14377C();
  v39 = v38;
  v106 = v40;
  v42 = v41;

  sub_1B4AC(v30, v32, v34 & 1);

  if (*(v36 + 16) == 1)
  {
    v80 = v37;
    v81 = v39;
    v82 = v42;
    v83 = v19;
    sub_1430EC();
    v43 = v88;
    sub_1D204(v36, v88, type metadata accessor for HardQueueHeaderView);
    v44 = (*(v86 + 80) + 16) & ~*(v86 + 80);
    v45 = swift_allocObject();
    sub_1C810(v43, v45 + v44, type metadata accessor for HardQueueHeaderView);
    v46 = v90;
    sub_143D1C();
    v47 = [objc_opt_self() mainBundle];
    v79._countAndFlagsBits = 0x8000000000160FB0;
    v116._object = 0x8000000000160F90;
    v116._countAndFlagsBits = 0xD000000000000017;
    v117.value._countAndFlagsBits = 0;
    v117.value._object = 0;
    v48.super.isa = v47;
    v118._countAndFlagsBits = 0;
    v118._object = 0xE000000000000000;
    sub_1409DC(v116, v117, v48, v118, v79);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C9410);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_14A710;
    v50 = *v36;
    *(v49 + 56) = &type metadata for Int;
    *(v49 + 64) = &protocol witness table for Int;
    *(v49 + 32) = v50;
    v51 = sub_1448AC();
    v53 = v52;

    v114 = v51;
    v115 = v53;
    v54 = *(v36 + 32);
    v112 = *(v36 + 24);
    v113 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290);
    v55 = sub_143CDC();
    __chkstk_darwin(v55);
    sub_1D4A4(&qword_1C1218, &qword_1C1220);
    sub_9CCC();
    v56 = v93;
    v57 = v89;
    sub_143A0C();

    (*(v92 + 8))(v46, v56);
    v58 = sub_1436AC();
    KeyPath = swift_getKeyPath();
    v60 = v57;
    v61 = &v57[*(v91 + 36)];
    *v61 = KeyPath;
    v61[1] = v58;
    v62 = v96;
    sub_FA518(v96);
    v64 = v100;
    v63 = v101;
    v65 = v97;
    (*(v100 + 104))(v97, enum case for ColorSchemeContrast.standard(_:), v101);
    LOBYTE(v58) = sub_14316C();
    v66 = *(v64 + 8);
    v66(v65, v63);
    v66(v62, v63);
    if (v58)
    {
      sub_14295C();
      swift_getOpaqueTypeConformance2();
    }

    else
    {
      v111 = sub_143B9C();
    }

    v67 = sub_142AAC();
    v19 = v83;
    v69 = v107;
    v68 = v108;
    v70 = v99;
    sub_10358(v60, v99, &qword_1C1268);
    *(v70 + *(v98 + 36)) = v67;
    v71 = v102;
    sub_14331C();
    sub_1D2AC();
    sub_1AF64(&qword_1C12B8, &type metadata accessor for BorderlessButtonStyle);
    v72 = v95;
    v73 = v104;
    sub_1438AC();
    (*(v103 + 8))(v71, v73);
    sub_15340(v70, &qword_1C1270);
    (*(v69 + 32))(v19, v72, v68);
    (*(v69 + 56))(v19, 0, 1, v68);
    v42 = v82;
    v39 = v81;
    v37 = v80;
  }

  else
  {
    (*(v107 + 56))(v19, 1, 1, v108);
  }

  v74 = v109;
  sub_1D19C(v19, v109, &qword_1C1280);
  v75 = v110;
  *v110 = v37;
  v75[1] = v39;
  v76 = v106 & 1;
  *(v75 + 16) = v106 & 1;
  v75[3] = v42;
  v75[4] = 0;
  *(v75 + 40) = 1;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1288);
  sub_1D19C(v74, v75 + *(v77 + 64), &qword_1C1280);
  sub_63AC(v37, v39, v76);

  sub_15340(v19, &qword_1C1280);
  sub_15340(v74, &qword_1C1280);
  sub_1B4AC(v37, v39, v76);
}

uint64_t sub_184A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-v3];
  if (*a1 >= 5)
  {
    v10 = *(a1 + 32);
    v11[16] = *(a1 + 24);
    v12 = v10;
    v11[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290);
    return sub_143CCC();
  }

  else
  {
    v5 = *(a1 + 8);
    v6 = sub_144ADC();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    sub_144ABC();

    v7 = sub_144AAC();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v5;
    sub_43CFC(0, 0, v4, &unk_14AF80, v8);
  }
}

uint64_t sub_1861C(uint64_t a1)
{
  v2 = type metadata accessor for HardQueueHeaderView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1238);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  sub_1430EC();
  sub_1428EC();
  v8 = sub_1428FC();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_1D204(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HardQueueHeaderView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1C810(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for HardQueueHeaderView);
  return sub_143D0C();
}

uint64_t sub_18830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = *(a1 + 8);
  v6 = sub_144ADC();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_144ABC();

  v7 = sub_144AAC();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v5;
  sub_43CFC(0, 0, v4, &unk_14AF78, v8);
}

uint64_t sub_18958()
{
  v1 = sub_14315C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1250);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  *v7 = sub_14307C();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1258);
  sub_17854(v0, &v7[*(v8 + 44)]);
  sub_14314C();
  sub_1D4A4(&qword_1C1260, &qword_1C1250);
  sub_143ACC();
  (*(v2 + 8))(v4, v1);
  return sub_15340(v7, &qword_1C1250);
}

uint64_t sub_18B18()
{
  v0 = sub_14315C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_14318C();
  v10 = 1;
  sub_18DD4(&v21);
  v17 = v27;
  v18 = v28;
  v13 = v23;
  v14 = v24;
  v15 = v25;
  v16 = v26;
  v11 = v21;
  v12 = v22;
  v20[5] = v26;
  v20[6] = v27;
  v20[7] = v28;
  v20[8] = v29;
  v20[1] = v22;
  v20[2] = v23;
  v20[3] = v24;
  v20[4] = v25;
  v19 = v29;
  v20[0] = v21;
  sub_1D19C(&v11, &v7, &qword_1C1190);
  sub_15340(v20, &qword_1C1190);
  *&v9[103] = v17;
  *&v9[87] = v16;
  *&v9[39] = v13;
  *&v9[23] = v12;
  *&v9[119] = v18;
  *&v9[135] = v19;
  *&v9[55] = v14;
  *&v9[71] = v15;
  *&v9[7] = v11;
  *&v8[97] = *&v9[96];
  *&v8[113] = *&v9[112];
  *&v8[129] = *&v9[128];
  *&v8[33] = *&v9[32];
  *&v8[49] = *&v9[48];
  *&v8[65] = *&v9[64];
  *&v8[81] = *&v9[80];
  *&v8[1] = *v9;
  v7 = v4;
  v8[0] = v10;
  *&v8[144] = *(&v19 + 1);
  *&v8[17] = *&v9[16];
  sub_14314C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1198);
  sub_1D4A4(&qword_1C11A0, &qword_1C1198);
  sub_143ACC();
  (*(v1 + 8))(v3, v0);
  v29 = *&v8[112];
  v30 = *&v8[128];
  v31 = *&v8[144];
  v25 = *&v8[48];
  v26 = *&v8[64];
  v27 = *&v8[80];
  v28 = *&v8[96];
  v21 = v7;
  v22 = *v8;
  v23 = *&v8[16];
  v24 = *&v8[32];
  return sub_15340(&v21, &qword_1C1198);
}

__n128 sub_18DD4@<Q0>(uint64_t a1@<X8>)
{
  sub_1430EC();
  v2 = sub_1437DC();
  v4 = v3;
  v6 = v5;
  sub_1436AC();
  v7 = sub_1437CC();
  v9 = v8;
  v11 = v10;

  sub_1B4AC(v2, v4, v6 & 1);

  v12 = sub_1437BC();
  v14 = v13;
  v16 = v15;
  sub_1B4AC(v7, v9, v11 & 1);

  sub_143BFC();
  v17 = sub_14377C();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_1B4AC(v12, v14, v16 & 1);

  sub_143EBC();
  sub_142D4C();
  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v21 & 1;
  *(a1 + 24) = v23;
  *(a1 + 96) = v29;
  *(a1 + 112) = v30;
  *(a1 + 128) = v31;
  *(a1 + 32) = v25;
  *(a1 + 48) = v26;
  result = v28;
  *(a1 + 64) = v27;
  *(a1 + 80) = v28;
  return result;
}

uint64_t sub_18FC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v102 = a1;
  v78 = sub_140A3C();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C11A8);
  __chkstk_darwin(v4 - 8);
  v101 = &v75 - v5;
  *&v98 = sub_14354C();
  *&v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RowContent(0);
  v8 = v7 - 8;
  v88 = *(v7 - 8);
  v87 = *(v88 + 64);
  __chkstk_darwin(v7);
  v85 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_142C0C();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v75 - v15;
  v17 = sub_14413C();
  v80 = v17;
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v20;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C11B0);
  __chkstk_darwin(v89);
  v86 = &v75 - v21;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C11B8);
  v93 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = &v75 - v22;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C11C0);
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v90 = &v75 - v23;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C11C8);
  __chkstk_darwin(v99);
  v100 = &v75 - v24;
  (*(v18 + 16))(v20, v2 + *(v8 + 28), v17);
  v104 = v2;
  v105 = sub_14411C();
  v106 = v25;
  sub_9CCC();
  v83 = sub_1437EC();
  v82 = v26;
  v79 = v27;
  v81 = v28;
  sub_FA564(v16);
  (*(v11 + 104))(v14, enum case for LayoutDirection.rightToLeft(_:), v10);
  LOBYTE(v8) = sub_142BFC();
  v29 = *(v11 + 8);
  v29(v14, v10);
  v29(v16, v10);
  v30 = sub_AF1B8();
  v32 = v31;
  v109.value._countAndFlagsBits = v30;
  v109.value._object = v32;
  v33 = sub_1440FC(v8 & 1, v109);
  v35 = v34;

  v105 = v33;
  v106 = v35;
  sub_1437EC();
  v36 = v85;
  sub_1D204(v2, v85, type metadata accessor for RowContent);
  v37 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v38 = swift_allocObject();
  sub_1C810(v36, v38 + v37, type metadata accessor for RowContent);
  sub_14460C();
  sub_1AF64(&qword_1C11D0, &type metadata accessor for Artwork);
  sub_1AF64(&qword_1C11D8, &type metadata accessor for QueueModel.Episode);
  v39 = v86;
  sub_14144C();
  v40 = sub_143EAC();
  v42 = v41;
  v43 = v89;
  v44 = (v39 + *(v89 + 36));
  sub_1440CC();
  v44[5] = [objc_allocWithZone(UIView) init];
  v44[6] = v40;
  v44[7] = v42;
  v103 = v2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C11E0);
  v46 = sub_1C8AC();
  v47 = sub_1C990();
  v48 = v91;
  sub_14393C();
  sub_15340(v39, &qword_1C11B0);
  v49 = v96;
  sub_14353C();
  v105 = v43;
  v106 = v45;
  v107 = v46;
  v108 = v47;
  v50 = v90;
  swift_getOpaqueTypeConformance2();
  v51 = v92;
  sub_143A7C();
  (*(v97 + 8))(v49, v98);
  (*(v93 + 8))(v48, v51);
  v52 = sub_14365C();
  sub_1A580();
  v54 = v53;
  v55 = 0uLL;
  v56 = 0uLL;
  if ((v53 & 1) == 0)
  {
    sub_14290C();
    *(&v56 + 1) = v57;
    *(&v55 + 1) = v58;
  }

  v97 = v56;
  v98 = v55;
  v59 = v100;
  (*(v94 + 32))(v100, v50, v95);
  v60 = v59 + *(v99 + 36);
  *v60 = v52;
  v61 = v98;
  *(v60 + 24) = v97;
  *(v60 + 8) = v61;
  *(v60 + 40) = v54 & 1;
  v62 = sub_14412C();
  v65 = v62;
  if (!v64)
  {
    v105 = v62;
    sub_1CB9C();
    v65 = sub_14513C();
    goto LABEL_7;
  }

  if (v64 != 1)
  {
LABEL_7:
    v71 = v63;
    goto LABEL_8;
  }

  v66 = v63;
  v67 = [v62 URIRepresentation];
  v68 = v76;
  sub_140A2C();

  v69 = sub_140A0C();
  v71 = v70;
  (*(v77 + 8))(v68, v78);
  sub_1CB78(v65, v66, 1);
  v65 = v69;
LABEL_8:
  sub_141B3C();
  v105 = v65;
  v106 = v71;
  sub_1AF64(&qword_1C1228, &type metadata accessor for EpisodeEntity);
  v72 = v101;
  sub_14091C();
  v73 = sub_14092C();
  (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
  sub_1CA40();
  sub_1437FC();
  sub_15340(v72, &qword_1C11A8);
  return sub_15340(v59, &qword_1C11C8);
}

uint64_t sub_19B5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1240);
  __chkstk_darwin(v0 - 8);
  v2 = v8 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1248);
  __chkstk_darwin(v3 - 8);
  v5 = v8 - v4;
  type metadata accessor for RowContent(0);
  sub_19CD4(v5);
  v6 = sub_14214C();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_143E9C();
  return sub_1445FC();
}

uint64_t sub_19CD4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_141DCC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1440EC();
  v4 = [v3 metadataObject];

  if (v4)
  {
    v5 = [v4 podcastEpisode];

    if (v5)
    {
      v6 = [v5 showArtworkTemplateURL];
      if (v6)
      {
        v7 = v6;
        sub_1448DC();

        v8 = [v5 podcast];
        if (v8)
        {
          v9 = v8;
          v10 = [v8 identifiers];

          v11 = [v10 library];
          if (v11)
          {
            v12 = [v11 databaseID];
            swift_unknownObjectRelease();
            sub_1448DC();
          }
        }

        sub_141DBC();
        sub_141DFC();
        sub_141DDC();

        v16 = sub_141DEC();
        return (*(*(v16 - 8) + 56))(a1, 0, 1, v16);
      }
    }
  }

  v13 = sub_141DEC();
  v14 = *(*(v13 - 8) + 56);

  return v14(a1, 1, 1, v13);
}

uint64_t sub_19FC0(char *a1)
{
  v2 = sub_14413C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = *a1;
  v10 = *(type metadata accessor for RowContent(0) + 20);
  v11 = sub_144ADC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  (*(v3 + 16))(v5, &a1[v10], v2);
  sub_144ABC();

  v12 = sub_144AAC();
  v13 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = &protocol witness table for MainActor;
  *(v14 + 4) = v9;
  (*(v3 + 32))(&v14[v13], v5, v2);
  sub_C8D08(0, 0, v8, &unk_14AED8, v14);
}

uint64_t sub_1A1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RowContent(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1238);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1220);
  __chkstk_darwin(v11);
  v14 = v22 - v13;
  if (*(a1 + *(v5 + 36)) == 1)
  {
    v23 = v12;
    v15 = sub_1430EC();
    v22[1] = v16;
    v22[2] = v15;
    sub_1428EC();
    v17 = sub_1428FC();
    (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
    sub_1D204(a1, v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RowContent);
    v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v19 = swift_allocObject();
    sub_1C810(v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for RowContent);
    sub_143D0C();
    (*(v23 + 32))(a2, v14, v11);
    return (*(v23 + 56))(a2, 0, 1, v11);
  }

  else
  {
    v21 = *(v12 + 56);

    return v21(a2, 1, 1, v11);
  }
}

void sub_1A504()
{
  type metadata accessor for RowContent(0);
  sub_141B5C();
  v0 = sub_1440EC();
  sub_141B4C();
}

uint64_t sub_1A580()
{
  v1 = sub_142FFC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F48);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C10C0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = type metadata accessor for RowContent(0);
  if ((*(v0 + *(v14 + 24)) & 1) == 0)
  {
    v16 = v14;
    sub_1D19C(v0 + *(v14 + 44), v7, &qword_1C0F48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10358(v7, v13, &unk_1C10C0);
    }

    else
    {
      sub_144C4C();
      v17 = sub_1435DC();
      sub_1423BC();

      sub_142FEC();
      swift_getAtKeyPath();

      (*(v2 + 8))(v4, v1);
    }

    v18 = sub_1411CC();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v13, 1, v18) != 1)
    {
      sub_1D19C(v13, v11, &unk_1C10C0);
      v20 = (*(v19 + 88))(v11, v18);
      if (v20 == enum case for DeviceMetrics.Layout.compact(_:))
      {
        v21 = v0 + *(v16 + 40);
        v22 = *v21;
        if (*(v21 + 8) == 1)
        {
          v23 = *v21;
        }

        else
        {

          sub_144C4C();
          v24 = sub_1435DC();
          sub_1423BC();

          sub_142FEC();
          swift_getAtKeyPath();
          sub_1C804(v22, 0);
          (*(v2 + 8))(v4, v1);
          v23 = v29;
        }

        v15 = v23 + -13.5;
        goto LABEL_15;
      }

      if (v20 == enum case for DeviceMetrics.Layout.regular(_:))
      {
        v15 = 16.0;
        goto LABEL_15;
      }

      if (v20 == enum case for DeviceMetrics.Layout.regularExtended(_:))
      {
        v26 = v0 + *(v16 + 40);
        v15 = *v26;
        if ((*(v26 + 8) & 1) == 0)
        {

          sub_144C4C();
          v27 = sub_1435DC();
          sub_1423BC();

          sub_142FEC();
          swift_getAtKeyPath();
          sub_1C804(*&v15, 0);
          (*(v2 + 8))(v4, v1);
          v15 = v29;
        }

        goto LABEL_15;
      }

      (*(v19 + 8))(v11, v18);
    }

    v15 = 0.0;
LABEL_15:
    sub_15340(v13, &unk_1C10C0);
    return *&v15;
  }

  v15 = 0.0;
  return *&v15;
}

uint64_t sub_1AA90(uint64_t a1)
{
  v2 = sub_142C0C();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_142EDC();
}

id sub_1AB6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextMenuInteractionView.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1ABDC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1AC24(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1ACF0()
{
  result = qword_1C0E10;
  if (!qword_1C0E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C0DD8);
    sub_1AD7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C0E10);
  }

  return result;
}

unint64_t sub_1AD7C()
{
  result = qword_1C0E18;
  if (!qword_1C0E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C0DD0);
    sub_1AE34();
    sub_1D4A4(&qword_1C0E38, &qword_1C0E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C0E18);
  }

  return result;
}

unint64_t sub_1AE34()
{
  result = qword_1C0E20;
  if (!qword_1C0E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C0E00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C0DC8);
    sub_1D4A4(&qword_1C0DF0, &qword_1C0DC8);
    swift_getOpaqueTypeConformance2();
    sub_1D4A4(&qword_1C0E28, &qword_1C0E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C0E20);
  }

  return result;
}

uint64_t sub_1AF64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AFAC()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t getEnumTagSinglePayload for NowPlayingQueuePlaceholderIfEmpty(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NowPlayingQueuePlaceholderIfEmpty(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B0F8(uint64_t *a1, int a2)
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

uint64_t sub_1B140(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B1A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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