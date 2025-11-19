double sub_495B60()
{
  v1 = &v0[qword_E09B80];
  if ((v0[qword_E09B80 + 16] & 1) == 0)
  {
    return *v1;
  }

  sub_494D44();
  v3 = v2;
  v4 = [v0 traitCollection];
  _s16MusicApplication9AlbumCellC20detailTextComponents33_697C9E9A5E5CEA31E6831E8C6D513A7BLLAC06DetailfG0AELLVvpfi_0();
  v6 = v5;

  sub_2F48A4(v6, v4, 0, 0);

  if (qword_DE6948 != -1)
  {
    swift_once();
  }

  [v4 displayScale];
  sub_AB3A00();
  v8 = v7;

  *v1 = v3;
  *(v1 + 1) = v8;
  v1[16] = 0;
  return v3;
}

void sub_495CA0(void *a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    if (*(*(sub_48E79C() + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text + 8))
    {

      v5 = sub_AB9260();
    }

    else
    {
      v5 = 0;
    }

    [a1 setFilterText:v5];
  }

  v6 = [v2 traitCollection];
  UITraitCollection.configure<A, B>(libraryRequest:)(a1);

  v7 = *&v3[qword_E09B38];
  if (v7 >= 2)
  {
    v8 = v7;
    v9 = [a1 scopedContainers];
    if (v9)
    {
      v10 = v9;
      sub_13C80(0, &qword_DEDE20);
      v11 = sub_AB9760();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_AF82B0;
      *(v12 + 32) = v8;
      v13 = v8;
      sub_19638(v11);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_AF82B0;
      *(v14 + 32) = v8;
      sub_13C80(0, &qword_DEDE20);
      v15 = v8;
    }

    isa = sub_AB9740().super.isa;

    [a1 setScopedContainers:isa];
    sub_31838(v7);
  }
}

id sub_495EF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v4);
  v6 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v1[qword_E09B38];
  if (v7 < 2)
  {
    v8 = type metadata accessor for PlaybackIntentDescriptor(0);
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }

  v11 = objc_allocWithZone(MPModelLibraryRequest);
  v12 = v7;
  v13 = [v11 init];
  v14 = v13;
  v15 = qword_DFE2F0;
  v16 = *&v2[qword_DFE2F0];
  if (v16)
  {
    v17 = v13;
    result = [v16 request];
    if (!result)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v18 = result;
    v19 = [result label];
  }

  else
  {
    v20 = v13;
    v19 = 0;
  }

  [v14 setLabel:v19];

  sub_13C80(0, &qword_DE9C10);
  v21 = static MPModelPlaylistEntry.defaultMusicKind.getter();
  v22 = objc_opt_self();
  v23 = [v22 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v21 options:0];
  [v14 setSectionKind:v23];

  v45 = _swiftEmptyArrayStorage;
  v24 = *&v2[v15];
  if (!v24)
  {
    v29 = 0;
    v38 = 0;
    goto LABEL_14;
  }

  v37 = a1;
  result = [v24 results];
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v25 = result;
  v26 = swift_allocObject();
  *(v26 + 16) = &v45;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_140FE8;
  *(v27 + 24) = v26;
  v38 = v26;
  v43 = sub_4974E4;
  v44 = v27;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v42 = sub_48D644;
  *(&v42 + 1) = &block_descriptor_141;
  v28 = _Block_copy(&aBlock);

  [v25 enumerateItemIdentifiersUsingBlock:v28];
  _Block_release(v28);
  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
    __break(1u);
    goto LABEL_19;
  }

  v29 = sub_140FE8;
  a1 = v37;
LABEL_14:
  sub_13C80(0, &unk_DE8180);

  isa = sub_AB9740().super.isa;

  [v14 setAllowedSectionIdentifiers:isa];

  [v14 setItemKind:v21];
  sub_13C80(0, &unk_DFDE50);

  v31 = sub_AB9740().super.isa;

  [v14 setSectionSortDescriptors:v31];

  v32 = [v2 traitCollection];
  UITraitCollection.configure<A, B>(libraryRequest:)(v14);

  v33 = [v14 playbackIntentWithStartItemIdentifiers:0];
  if (v33)
  {
    *v6 = v33;
    swift_storeEnumTagMultiPayload();
    v43 = 0;
    aBlock = 0u;
    v42 = 0u;
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    v34 = v2;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v6, &aBlock, 3, 0, 0, 1, 0, 1, a1, v2, v39);

    v35 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v35 - 8) + 56))(a1, 0, 1, v35);
  }

  else
  {

    v36 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v36 - 8) + 56))(a1, 1, 1, v36);
  }

  sub_31838(v7);
  return sub_17654(v29);
}

void sub_4964C8()
{
  if (*&v0[qword_E09B38] >= 2uLL)
  {
    v1 = v0;
    v2 = [v0 traitCollection];
    v3 = UITraitCollection.isMediaPicker.getter();

    if (!v3)
    {
      v12 = 0;
      v4 = *&v1[qword_DFE2F0];
      if (v4)
      {
        v5 = [v4 results];
        if (v5)
        {
          v6 = v5;
          v7 = swift_allocObject();
          *(v7 + 16) = &v12;
          v8 = swift_allocObject();
          *(v8 + 16) = sub_4974B4;
          *(v8 + 24) = v7;
          aBlock[4] = sub_3A7BB8;
          aBlock[5] = v8;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_48D4FC;
          aBlock[3] = &block_descriptor_150;
          v9 = _Block_copy(aBlock);

          [v6 enumerateItemsUsingBlock:v9];
          _Block_release(v9);
          LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

          if ((v9 & 1) == 0)
          {
            v4 = sub_4974B4;
            v10 = v12;
LABEL_8:
            *&v1[qword_E09B88] = v10;
            sub_17654(v4);
            return;
          }

          __break(1u);
        }

        __break(1u);
        return;
      }

      v10 = 0;
      goto LABEL_8;
    }
  }
}

char *sub_4966C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    result = [v5 type];
    if (result != &dword_0 + 3)
    {
      if (__OFADD__(*a4, 1))
      {
        __break(1u);
        return result;
      }

      ++*a4;
    }
  }

  return swift_unknownObjectRelease();
}

void sub_496774()
{

  sub_31838(*(v0 + qword_E09B38));

  sub_12E1C(v0 + qword_E09B60, &qword_E0A418);

  v1 = *(v0 + qword_E09B90);
}

id sub_49687C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_4968BC(uint64_t a1)
{

  sub_31838(*(a1 + qword_E09B38));

  sub_12E1C(a1 + qword_E09B60, &qword_E0A418);

  v2 = *(a1 + qword_E09B90);
}

uint64_t type metadata accessor for PlaylistsViewController()
{
  result = qword_E09BC8;
  if (!qword_E09BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_496A04()
{
  sub_496AF8();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_496AF8()
{
  if (!qword_E09BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_DF1330);
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_E09BD8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication23PlaylistsViewControllerC9ScopeKindO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_496B7C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 9))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_496BD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

id sub_496C3C()
{
  v1 = [*v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == &dword_0 + 1)
  {
    v3 = sub_49414C();
  }

  else
  {
    v3 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  }

  v4 = v3;
  sub_492904(v4);

  return v4;
}

double sub_496D18()
{
  v1 = *v0;
  v2 = [v1 traitCollection];
  v3 = [v2 horizontalSizeClass];

  v4 = [v1 traitCollection];
  v5 = v4;
  if (v3 == &dword_0 + 1)
  {

    return 64.0;
  }

  else
  {
    v6 = sub_495B60();
  }

  return v6;
}

double sub_496DC0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_49388C(a1, v8);
  v3 = v8[7];
  a2[6] = v8[6];
  a2[7] = v3;
  a2[8] = v9[0];
  *(a2 + 137) = *(v9 + 9);
  v4 = v8[3];
  a2[2] = v8[2];
  a2[3] = v4;
  v5 = v8[5];
  a2[4] = v8[4];
  a2[5] = v5;
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  a2[1] = v7;
  return result;
}

uint64_t sub_496EB0(uint64_t a1)
{
  *(a1 + 8) = sub_497890(&qword_E0A3B8, type metadata accessor for PlaylistsViewController);
  result = sub_497890(&qword_E0A3C0, type metadata accessor for PlaylistsViewController);
  *(a1 + 16) = result;
  return result;
}

id sub_496F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_496FB0(uint64_t a1)
{
  v2 = sub_AB5C70();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_AB6010();
}

unint64_t sub_497084()
{
  result = qword_E0A430;
  if (!qword_E0A430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0A428);
    sub_497890(&qword_E0A438, type metadata accessor for MediumPlaylistCell);
    sub_497890(&qword_E0A440, type metadata accessor for PlaceholderStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0A430);
  }

  return result;
}

uint64_t sub_4971A0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_4971D8()
{

  return swift_deallocObject();
}

uint64_t sub_497220()
{

  return swift_deallocObject();
}

uint64_t sub_497258()
{
  v1 = type metadata accessor for PlaybackIntentDescriptor(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = (v0 + v2);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_AB4C10();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + *(v1 + 28);
  if (*(v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v6 = v3 + *(v1 + 32);
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return swift_deallocObject();
}

uint64_t sub_497394()
{
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_497410()
{

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 128))
  {
  }

  return swift_deallocObject();
}

uint64_t block_copy_helper_150(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_497518()
{

  return swift_deallocObject();
}

id sub_497570()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  result = (*&stru_158.sectname[swift_isaMask & *v0])(v6);
  if (result)
  {
    v10 = result;
    v11 = [result results];

    if (v11)
    {
      sub_AB3810();
      (*&stru_1F8.segname[(swift_isaMask & *v0) + 16])(v4);
      v12 = *(v2 + 8);
      v12(v4, v1);
      if ((*(v2 + 48))(v8, 1, v1) == 1)
      {
        sub_12E1C(v8, &unk_DE8E20);
        v13 = 0;
      }

      else
      {
        v14 = IndexPath.safeSection.getter();
        v12(v8, v1);
        v13 = [v11 numberOfItemsInSection:v14];
      }

      return v13;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_4977D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0A418);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_497850()
{

  return swift_deallocObject();
}

uint64_t sub_497890(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_4978D8()
{
  type metadata accessor for CodableModelIdentity();
  v0 = sub_ABA710();
  if (!v0)
  {
    goto LABEL_6;
  }

  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication20CodableModelIdentity_model);

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {

LABEL_6:
    v10 = objc_allocWithZone(type metadata accessor for PlaylistsViewController());
    v11 = 0;
    v12 = 0;
    v13 = 0;
    return sub_48DDCC(v11, 0, v12, v13, 0);
  }

  v4 = v3;
  sub_13C80(0, &qword_DE8170);
  v5 = sub_ABA710();
  if (v5)
  {
    v6 = v5;
    v7 = sub_AB92A0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v14 = objc_allocWithZone(type metadata accessor for PlaylistsViewController());
  v11 = v4;
  v12 = v7;
  v13 = v9;
  return sub_48DDCC(v11, 0, v12, v13, 0);
}

void sub_497A24()
{
  *(v0 + qword_E09B28) = 0;
  *(v0 + qword_E09B30) = 0;
  *(v0 + qword_E09B48) = 0;
  *(v0 + qword_E09B50) = 0;
  *(v0 + qword_E09B58) = 0;
  v1 = qword_E09B60;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + qword_E09B68) = 0;
  *(v0 + qword_E09B70) = 0;
  *(v0 + qword_E09B78) = _swiftEmptyArrayStorage;
  v3 = v0 + qword_E09B80;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  *(v0 + qword_E09B88) = 0;
  *(v0 + qword_E09B90) = 0;
  *(v0 + qword_E09B98) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_497B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = *(v2 + qword_DFE2F0);
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = [v9 results];
  if (!v10)
  {
    (*(v5 + 8))(v7, v4);

LABEL_13:
    v16 = 0;
    return v16 & 1;
  }

  v11 = v10;

  isa = sub_AB3770().super.isa;
  v13 = [v11 itemAtIndexPath:isa];

  if (!v13)
  {
LABEL_12:
    (*(v5 + 8))(v7, v4);
    goto LABEL_13;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v15 = v14;
  if (([v14 userEditableComponents] & 1) != 0 && objc_msgSend(v15, "isOwner"))
  {
    v16 = UICollectionView.isDraggingCell(at:)() ^ 1;
  }

  else
  {
    v16 = 0;
  }

  (*(v5 + 8))(v7, v4);
  swift_unknownObjectRelease();
  return v16 & 1;
}

void sub_497D90(void *a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = UITraitCollection.isMediaPicker.getter();

  if (!v5 && *&v2[qword_E09B38] >= 2uLL)
  {
    if (*&v2[qword_E09B88])
    {
      v6 = [v2 traitCollection];
      [a1 bounds];
      v7 = [objc_opt_self() defaultMetrics];
      sub_AB9EF0();
    }
  }
}

uint64_t sub_497ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_497F3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_497FDC()
{
  result = qword_E0A458;
  if (!qword_E0A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0A458);
  }

  return result;
}

id sub_498060(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_propertyChangedObservingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_hasChanges] = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *&v1[v4] = TextDrawing.Cache.init()();
  v5 = OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceViewModel;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceViewModel] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel] = 0;
  v6 = OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_selectedItem;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_selectedItem] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_selectedItemIndex] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceSizingCell] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSizingCell] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController____lazy_storage___sizingFooterView] = 0;
  *&v1[v5] = a1;
  v7 = *&stru_108.segname[(swift_isaMask & *a1) - 8];
  v8 = a1;
  v9 = v7();
  v10 = *&v2[v6];
  *&v2[v6] = v9;

  v11 = [objc_allocWithZone(UICollectionViewTableLayout) init];
  [v11 _setShowsAdditionalSeparators:0];
  isa = sub_AB9740().super.isa;
  [v11 _setFloatingElementKinds:isa];

  v17.receiver = v2;
  v17.super_class = type metadata accessor for JSMultiChoiceViewController();
  v13 = objc_msgSendSuper2(&v17, "initWithCollectionViewLayout:", v11);
  v14 = *(&stru_108.size + (swift_isaMask & *v8));
  v15 = v13;
  v14(v13, &off_D16688);

  return v15;
}

id sub_498288(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_propertyChangedObservingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_hasChanges] = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *&v1[v4] = TextDrawing.Cache.init()();
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceViewModel] = 0;
  v5 = OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_selectedItem] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_selectedItemIndex] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceSizingCell] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSizingCell] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController____lazy_storage___sizingFooterView] = 0;
  *&v1[v5] = a1;
  v6 = objc_allocWithZone(UICollectionViewTableLayout);
  v7 = a1;
  v8 = [v6 init];
  [v8 _setShowsAdditionalSeparators:0];
  isa = sub_AB9740().super.isa;
  [v8 _setFloatingElementKinds:isa];

  v12.receiver = v2;
  v12.super_class = type metadata accessor for JSMultiChoiceViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithCollectionViewLayout:", v8);

  return v10;
}

void sub_498420()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = type metadata accessor for JSMultiChoiceViewController();
  objc_msgSendSuper2(&v25, "viewDidLoad");
  v2 = [v0 collectionView];
  if (!v2)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  [v2 _setAllowsSelectionDuringEditing:1];
  type metadata accessor for MultiChoiceCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for ToggleCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  sub_38EF30();
  UICollectionView.register<A>(_:reuseIdentifier:)();
  v4 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel];
  if (v4)
  {
    v5 = *(&stru_B8.reserved2 + (swift_isaMask & *v4));
    v6 = v4;
    v7 = v5();
    v9 = v8;

    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      type metadata accessor for JSMultiChoiceViewController.FooterView();
      sub_AB92A0();
      static UICollectionReusableView.reuseIdentifier.getter();
      UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();
    }

    else
    {
    }
  }

  [v3 setAlwaysBounceVertical:1];
  v11 = qword_DE6C58;
  v12 = v3;
  if (v11 != -1)
  {
    swift_once();
  }

  [v12 setBackgroundColor:qword_E71898];

  v13 = [v1 view];
  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = v13;
  v15 = [v1 viewBackgroundColor];
  [v14 setBackgroundColor:v15];

  v16 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_textDrawingCache];
  v17 = [v1 traitCollection];
  [v17 displayScale];
  v19 = v18;

  swift_beginAccess();
  *(v16 + 16) = v19;
  sub_106F0C();
  v20 = [v1 view];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 tintColor];
    swift_beginAccess();
    v23 = *(v16 + 24);
    *(v16 + 24) = v22;
    v24 = v22;

    sub_10710C();
    return;
  }

LABEL_15:
  __break(1u);
}

void sub_498890(void *a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for JSMultiChoiceViewController();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (!a1 || v4 != [a1 horizontalSizeClass])
  {
    goto LABEL_7;
  }

  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = [a1 preferredContentSizeCategory];
  v8 = sub_AB92A0();
  v10 = v9;
  if (v8 == sub_AB92A0() && v10 == v11)
  {

    return;
  }

  v12 = sub_ABB3C0();

  if ((v12 & 1) == 0)
  {
LABEL_7:
    sub_49A890();
  }
}

void sub_498A68(void *a1, double a2, double a3)
{
  v10.receiver = v3;
  v10.super_class = type metadata accessor for JSMultiChoiceViewController();
  objc_msgSendSuper2(&v10, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_49C1E0;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_CF24C;
  v9[3] = &block_descriptor_151;
  v8 = _Block_copy(v9);

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

void sub_498B7C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_49A890();
  }
}

unint64_t sub_498CFC(unint64_t a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceViewModel);
  if (!v4)
  {
    v44 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel);
    if (!v44)
    {
      sub_38EF30();
      return UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
    }

    type metadata accessor for ToggleCell();
    v6 = v44;
    static UICollectionReusableView.reuseIdentifier.getter();
    v5 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();

    v2 = &swift_isaMask;
    a1 = (*(&stru_B8.offset + (swift_isaMask & *v6)))(v45);
    result = sub_AB37B0();
    if ((a1 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        v46 = v1;
        v47 = *(a1 + 8 * result + 32);
LABEL_26:
        v48 = v47;

        v49 = v5[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isTopSeparatorHidden];
        v5[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isTopSeparatorHidden] = 1;
        v50 = v5;
        sub_C6178(v49);
        v51 = v50[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isBottomSeparatorHidden];
        v50[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isBottomSeparatorHidden] = 0;
        v52 = sub_C618C(v51);
        v53 = (*&stru_298.segname[*v2 & *v48])(v52);
        if (v54)
        {
          v55 = v53;
        }

        else
        {
          v55 = 0;
        }

        v56 = &v50[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title];
        v57 = *&v50[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title];
        v58 = *&v50[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title + 8];
        if (v54)
        {
          v59 = v54;
        }

        else
        {
          v59 = 0xE000000000000000;
        }

        *v56 = v55;
        v56[1] = v59;
        sub_C5AB0(v57, v58);

        v61 = (*(&stru_298.size + (*v2 & *v48)))(v60);
        if (v62)
        {
          v63 = v61;
        }

        else
        {
          v63 = 0;
        }

        if (v62)
        {
          v64 = v62;
        }

        else
        {
          v64 = 0xE000000000000000;
        }

        v65 = &v50[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle];
        v66 = *&v50[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle];
        v67 = *&v50[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle + 8];
        *v65 = v63;
        v65[1] = v64;
        sub_C5C64(v66, v67);

        v68 = *(v46 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_textDrawingCache);
        v69 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
        swift_beginAccess();
        *&v50[v69] = v68;
        swift_retain_n();
        v70 = v50;

        v71 = *&v70[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
        v72 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
        swift_beginAccess();
        v73 = *&v71[v72];
        *&v71[v72] = v68;

        v74 = v71;
        sub_2E6210(v73);

        v75 = (*(&stru_298.flags + (*v2 & *v48)))([v70 setSelectionStyle:0]);
        if ((v75 & 1) != v70[OBJC_IVAR____TtC16MusicApplication10ToggleCell__isToggled])
        {
          v70[OBJC_IVAR____TtC16MusicApplication10ToggleCell__isToggled] = v75 & 1;
          [*&v70[OBJC_IVAR____TtC16MusicApplication10ToggleCell_switchView] setOn:? animated:?];
        }

        *&v70[OBJC_IVAR____TtC16MusicApplication10ToggleCell_delegate + 8] = &off_D16698;
        swift_unknownObjectWeakAssign();

        return v70;
      }

      __break(1u);
      return result;
    }

LABEL_50:
    v46 = v1;
    v47 = sub_360AD8(result, a1);
    goto LABEL_26;
  }

  v5 = *(&stru_B8.flags + (swift_isaMask & *v4));
  v6 = v4;
  v7 = (v5)();
  result = sub_AB37B0();
  if ((v7 & 0xC000000000000001) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
    {
      v9 = *(v7 + 8 * result + 32);
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_50;
  }

  v9 = sub_361AB4(result, v7);
LABEL_6:
  v10 = v9;

  type metadata accessor for MultiChoiceCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  v11 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();

  v12 = sub_AB37B0() != 0;
  v13 = v11[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isTopSeparatorHidden];
  v11[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isTopSeparatorHidden] = v12;
  sub_C6178(v13);
  v14 = v11[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isBottomSeparatorHidden];
  v11[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isBottomSeparatorHidden] = 0;
  v15 = sub_C618C(v14);
  v16 = (*&stru_68.segname[swift_isaMask & *v10])(v15);
  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  v19 = &v11[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title];
  v20 = *&v11[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title];
  v21 = *&v11[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title + 8];
  if (v17)
  {
    v22 = v17;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  *v19 = v18;
  v19[1] = v22;
  sub_C5AB0(v20, v21);

  v24 = (*(&stru_68.size + (swift_isaMask & *v10)))(v23);
  if (v25)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  v28 = &v11[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle];
  v29 = *&v11[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle];
  v30 = *&v11[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle + 8];
  *v28 = v26;
  v28[1] = v27;
  sub_C5C64(v29, v30);

  v77 = v1;
  v31 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_textDrawingCache);
  v32 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  *&v11[v32] = v31;
  swift_retain_n();
  v33 = v11;

  v34 = *&v33[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
  v35 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v36 = *&v34[v35];
  *&v34[v35] = v31;

  v37 = v34;
  sub_2E6210(v36);

  v38 = *&stru_108.segname[(swift_isaMask & *v6) - 8];
  v39 = v10;
  v40 = v38();
  if (!v40)
  {

    goto LABEL_42;
  }

  v41 = v40;
  type metadata accessor for JSMultiChoiceItem();
  v42 = sub_ABA790();

  if ((v42 & 1) == 0)
  {
LABEL_42:
    v76 = v33[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isPicked];
    v33[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isPicked] = 0;
    sub_C5D5C(v76);
    goto LABEL_43;
  }

  v43 = v33[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isPicked];
  v33[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isPicked] = 1;
  sub_C5D5C(v43);
  *(v77 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_selectedItemIndex) = sub_AB37B0();
LABEL_43:
  v70 = v33;
  [v70 setSelectionStyle:0];

  return v70;
}

uint64_t sub_499608(uint64_t a1, uint64_t a2, void *a3)
{
  if (sub_AB92A0() != a2 || v6 != a3)
  {
    v8 = sub_ABB3C0();

    if (v8)
    {
      goto LABEL_8;
    }

    sub_ABAD90(23);

    v20._countAndFlagsBits = a2;
    v20._object = a3;
    sub_AB94A0(v20);
    sub_ABAFD0();
    __break(1u);
  }

LABEL_8:
  type metadata accessor for JSMultiChoiceViewController.FooterView();
  static UICollectionReusableView.reuseIdentifier.getter();
  v9 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();

  v10 = *(v3 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel);
  if (v10)
  {
    v11 = *(&stru_B8.reserved2 + (swift_isaMask & *v10));
    v12 = v10;
    v16 = v11(v12, v13, v14, v15);
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  sub_49ABE0(v16, v18);
  return v9;
}

void sub_499A70(id a1, uint64_t a2)
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceViewModel];
  if (v9)
  {
    v48 = v2;
    v10 = *(&stru_B8.flags + (swift_isaMask & *v9));
    v11 = v9;
    v12 = v10();
    v13 = sub_AB37B0();
    if ((v12 & 0xC000000000000001) != 0)
    {
      v14 = sub_361AB4(v13, v12);
LABEL_6:
      v15 = v14;

      v49 = a2;
      isa = sub_AB3770().super.isa;
      v17 = [a1 cellForItemAtIndexPath:isa];

      if (v17)
      {
        v47 = a1;
        type metadata accessor for MultiChoiceCell();
        v18 = swift_dynamicCastClass();
        if (v18)
        {
          v19 = v18;
          v45 = OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_selectedItemIndex;
          v46 = v15;
          sub_AB37F0();
          sub_AB37A0();
          v20 = sub_AB3770().super.isa;
          v6[1](v8, v5);
          v21 = [v47 cellForItemAtIndexPath:v20];

          if (v21)
          {
            v22 = swift_dynamicCastClass();
            v23 = v22;
            if (v22)
            {
              v24 = *(v22 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isPicked);
              *(v22 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isPicked) = 0;
              v25 = v21;
              sub_C5D5C(v24);
            }

            v26 = v48;
          }

          else
          {
            v23 = 0;
            v26 = v48;
          }

          v38 = *(v19 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isPicked);
          *(v19 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isPicked) = 1;
          sub_C5D5C(v38);
          v39 = sub_AB37B0();
          v40 = v46;
          *&v26[v45] = v39;
          v41 = *&stru_108.segname[swift_isaMask & *v11];
          v42 = v40;
          v41(v40);

          a1 = v47;
        }

        else
        {

          a1 = v47;
        }

        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v13 < *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
    {
      v14 = *(v12 + 8 * v13 + 32);
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_33;
  }

  v27 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel];
  if (!v27)
  {
LABEL_29:
    v43 = sub_AB3770().super.isa;
    [a1 deselectItemAtIndexPath:v43 animated:0];

    return;
  }

  v8 = v2;
  v6 = &swift_isaMask;
  v28 = *(&stru_B8.offset + (swift_isaMask & *v27));
  v11 = v27;
  v12 = v28();
  v13 = sub_AB37B0();
  if ((v12 & 0xC000000000000001) != 0)
  {
LABEL_33:
    v29 = sub_360AD8(v13, v12);
LABEL_17:
    v15 = v29;

    v31 = *(&stru_298.flags + (*v6 & *v15));
    v32 = (v31)(v30);
    (*(&stru_298.reserved2 + (*v6 & *v15)))((v32 & 1) == 0);
    v8[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_hasChanges] = 1;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_42FC20();
      swift_unknownObjectRelease();
    }

    v33 = sub_AB3770().super.isa;
    v34 = [a1 cellForItemAtIndexPath:v33];

    if (v34)
    {
      type metadata accessor for ToggleCell();
      v35 = swift_dynamicCastClass();
      if (v35)
      {
        v36 = v35;
        v37 = v31();
        if ((v37 & 1) != *(v36 + OBJC_IVAR____TtC16MusicApplication10ToggleCell__isToggled))
        {
          *(v36 + OBJC_IVAR____TtC16MusicApplication10ToggleCell__isToggled) = v37 & 1;
          [*(v36 + OBJC_IVAR____TtC16MusicApplication10ToggleCell_switchView) setOn:? animated:?];
        }
      }

      goto LABEL_29;
    }

LABEL_28:

    goto LABEL_29;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
  {
    v29 = *(v12 + 8 * v13 + 32);
    goto LABEL_17;
  }

  __break(1u);
}

unint64_t sub_49A43C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = sub_AB3820();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v15;
  swift_unknownObjectRetain();
  v17 = [v3 collectionView];
  if (!v17)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
LABEL_8:
    sub_11525C(v10);
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v18 = v17;
  v19 = [v17 indexPathForCell:v16];

  if (v19)
  {
    sub_AB3790();

    (*(v12 + 56))(v8, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v8, 1, 1, v11);
  }

  sub_1766C(v8, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_8;
  }

  (*(v12 + 32))(v14, v10, v11);
  v21 = *&v3[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel];
  if (!v21)
  {
    (*(v12 + 8))(v14, v11);
    goto LABEL_9;
  }

  v28 = v3;
  v22 = *(&stru_B8.offset + (swift_isaMask & *v21));
  v23 = v21;
  v24 = v22();
  result = sub_AB37B0();
  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = sub_360AD8(result, v24);
    goto LABEL_18;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (result >= *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v25 = *(v24 + 8 * result + 32);
LABEL_18:
  v26 = v25;

  (*(&stru_298.reserved2 + (swift_isaMask & *v26)))(a3 & 1);
  (*(v12 + 8))(v14, v11);
  swift_unknownObjectRelease();

  v3 = v28;
LABEL_10:
  v3[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_hasChanges] = 1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_42FC20();
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_49A80C()
{
  v1 = OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController____lazy_storage___sizingFooterView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController____lazy_storage___sizingFooterView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController____lazy_storage___sizingFooterView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for JSMultiChoiceViewController.FooterView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_49A890()
{
  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceSizingCell];
  *&v0[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceSizingCell] = 0;

  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSizingCell];
  *&v0[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSizingCell] = 0;

  if ([v0 isViewLoaded])
  {
    v3 = [v0 collectionView];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 collectionViewLayout];
      [v5 invalidateLayout];

      isa = [v4 indexPathsForVisibleItems];
      if (!isa)
      {
        sub_AB3820();
        sub_AB9760();
        isa = sub_AB9740().super.isa;
      }

      sub_AB3820();
      if (*(sub_AB9760() + 16))
      {
        [v4 reloadItemsAtIndexPaths:isa];
      }
    }
  }
}

char *sub_49A9F8(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtCC16MusicApplication27JSMultiChoiceViewControllerP33_A8E569B24FF6D407321C1DADBD6A2E9610FooterView_text];
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  v10 = OBJC_IVAR____TtCC16MusicApplication27JSMultiChoiceViewControllerP33_A8E569B24FF6D407321C1DADBD6A2E9610FooterView_label;
  v11 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  [v11 setTextColor:qword_E718C8];
  v12 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v11 setFont:v12];

  [v11 setNumberOfLines:0];
  [v11 setTextAlignment:4];
  *&v4[v10] = v11;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for JSMultiChoiceViewController.FooterView();
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  [v13 addSubview:*&v13[OBJC_IVAR____TtCC16MusicApplication27JSMultiChoiceViewControllerP33_A8E569B24FF6D407321C1DADBD6A2E9610FooterView_label]];
  return v13;
}

uint64_t sub_49ABE0(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtCC16MusicApplication27JSMultiChoiceViewControllerP33_A8E569B24FF6D407321C1DADBD6A2E9610FooterView_text];
  v5 = *&v2[OBJC_IVAR____TtCC16MusicApplication27JSMultiChoiceViewControllerP33_A8E569B24FF6D407321C1DADBD6A2E9610FooterView_text];
  v6 = *&v2[OBJC_IVAR____TtCC16MusicApplication27JSMultiChoiceViewControllerP33_A8E569B24FF6D407321C1DADBD6A2E9610FooterView_text + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (!v7 && (sub_ABB3C0() & 1) == 0)
  {
    v8 = *&v2[OBJC_IVAR____TtCC16MusicApplication27JSMultiChoiceViewControllerP33_A8E569B24FF6D407321C1DADBD6A2E9610FooterView_label];

    String.trim()();

    v9 = sub_AB9260();

    [v8 setText:v9];

    [v2 setNeedsLayout];
  }
}

void sub_49ACDC()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for JSMultiChoiceViewController.FooterView();
  objc_msgSendSuper2(&v15, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 music_inheritedLayoutInsets];
  v10 = v9;
  v12 = v11;
  [v0 effectiveUserInterfaceLayoutDirection];
  UIEdgeInsetsInsetRect(v2, v4, v6, v8, v10, v12);
  v13 = OBJC_IVAR____TtCC16MusicApplication27JSMultiChoiceViewControllerP33_A8E569B24FF6D407321C1DADBD6A2E9610FooterView_label;
  [*&v0[OBJC_IVAR____TtCC16MusicApplication27JSMultiChoiceViewControllerP33_A8E569B24FF6D407321C1DADBD6A2E9610FooterView_label] _firstBaselineOffsetFromTop];
  v14 = *&v0[v13];
  sub_ABA490();
  [v14 setFrame:?];
}

id sub_49AFFC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_49B138()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_hasChanges) = 0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_42FC20();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_49B1A0()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_hasChanges) = 1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_42FC20();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_49B208()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_propertyChangedObservingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_hasChanges) = 0;
  v1 = OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(v0 + v1) = TextDrawing.Cache.init()();
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_selectedItem) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_selectedItemIndex) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceSizingCell) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSizingCell) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController____lazy_storage___sizingFooterView) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_49B310()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceViewModel);
  if (v1)
  {
    v2 = *(&stru_B8.flags + (swift_isaMask & *v1));
    v3 = v1;
    v4 = v2();
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel);
    if (!v5)
    {
      return 0;
    }

    v6 = *(&stru_B8.offset + (swift_isaMask & *v5));
    v3 = v5;
    v4 = v6();
  }

  if (v4 >> 62)
  {
    v7 = sub_ABB060();
  }

  else
  {
    v7 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  }

  return v7;
}

void sub_49B414(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v32 = a1;
  v5 = [v4 tableViewCell];
  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = v5;
  [v5 _setDrawsSeparatorAtTopOfSection:0];

  v7 = [v4 tableViewCell];
  if (!v7)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = v7;
  [v7 _setDrawsSeparatorAtBottomOfSection:0];

  v9 = [v4 tableViewCell];
  if (!v9)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v10 = v9;
  [v9 setSeparatorStyle:0];

  type metadata accessor for ToggleCell();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel);
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = v11;
  v14 = *(&stru_B8.offset + (swift_isaMask & *v12));
  v32 = v32;
  v15 = v12;
  v16 = v14();
  v17 = sub_AB37B0();
  if ((v16 & 0xC000000000000001) != 0)
  {
    v18 = sub_360AD8(v17, v16);
    goto LABEL_11;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v17 >= *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = *(v16 + 8 * v17 + 32);
LABEL_11:
  v19 = v18;

  v20 = *(&stru_108.flags + (swift_isaMask & *v19));
  v21 = v19;
  v22 = v20();
  if (v22)
  {
    v23 = v22;

    v24 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle;
    swift_beginAccess();
    v25 = *&v23[v24];
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = ICStoreArtworkInfoCropStyleBoundedBox;
    }

    v27 = v32;
    v28 = v25;
    v29 = JSArtwork.artworkCatalog(defaultCropStyle:)(v26);

    v30 = *(v13 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
    *(v13 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v29;
    v31 = v29;

    sub_74EA4(v29);
    return;
  }

LABEL_15:
}

double sub_49B730(void *a1)
{
  v2 = v1;
  [a1 music_inheritedLayoutInsets];
  v5 = v4;
  v7 = v6;
  [a1 bounds];
  v8 = CGRectGetWidth(v94) - v5 - v7;
  v9 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceViewModel];
  if (v9)
  {
    v10 = *(&stru_B8.flags + (swift_isaMask & *v9));
    v11 = v9;
    v10();
    sub_AB37E0();
    v12 = type metadata accessor for JSMultiChoiceItem();
    Array.subscript.getter(v12, v93);
    v13 = v93[0];
    if (v93[0])
    {

      v14 = OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceSizingCell;
      if (*&v2[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceSizingCell])
      {
        v15 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceSizingCell];
        v16 = v15;
      }

      else
      {
        type metadata accessor for MultiChoiceCell();
        v26 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v27 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_textDrawingCache];
        v28 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
        swift_beginAccess();
        *&v26[v28] = v27;
        swift_retain_n();
        v29 = v26;

        v30 = *&v29[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
        v31 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
        swift_beginAccess();
        v32 = *&v30[v31];
        *&v30[v31] = v27;

        v33 = v30;
        sub_2E6210(v32);

        v34 = *&v2[v14];
        *&v2[v14] = v29;
        v35 = v29;

        v16 = v35;
        v15 = 0;
      }

      v36 = (*&stru_68.segname[swift_isaMask & *v13])(v15);
      if (v37)
      {
        v38 = v36;
      }

      else
      {
        v38 = 0;
      }

      v39 = &v16[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title];
      v40 = *&v16[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title];
      v41 = *&v16[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title + 8];
      if (v37)
      {
        v42 = v37;
      }

      else
      {
        v42 = 0xE000000000000000;
      }

      *v39 = v38;
      v39[1] = v42;
      sub_C5AB0(v40, v41);

      v44 = (*(&stru_68.size + (swift_isaMask & *v13)))(v43);
      if (v45)
      {
        v46 = v44;
      }

      else
      {
        v46 = 0;
      }

      if (v45)
      {
        v47 = v45;
      }

      else
      {
        v47 = 0xE000000000000000;
      }

      v48 = &v16[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle];
      v49 = *&v16[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle];
      v50 = *&v16[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle + 8];
      *v48 = v46;
      v48[1] = v47;
      sub_C5C64(v49, v50);

      v51 = [v2 traitCollection];
      v18 = (*&stru_658.segname[(swift_isaMask & *v16) + 8])(v8);

      return v18;
    }
  }

  v17 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel];
  v18 = 0.0;
  if (v17)
  {
    v19 = *(&stru_B8.offset + (swift_isaMask & *v17));
    v20 = v17;
    v19();
    sub_AB37E0();
    v21 = type metadata accessor for JSToggleSelectorItem();
    Array.subscript.getter(v21, v93);
    v22 = v93[0];
    if (v93[0])
    {

      v23 = OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSizingCell;
      v24 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSizingCell];
      if (v24)
      {
        v25 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSizingCell];
      }

      else
      {
        type metadata accessor for ToggleCell();
        v52 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v53 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_textDrawingCache];
        v54 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
        swift_beginAccess();
        *&v52[v54] = v53;
        swift_retain_n();
        v55 = v52;

        v56 = *&v55[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
        v57 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
        swift_beginAccess();
        v58 = *&v56[v57];
        *&v56[v57] = v53;

        v59 = v56;
        sub_2E6210(v58);

        v60 = *&v2[v23];
        *&v2[v23] = v55;
        v61 = v55;

        v25 = v61;
        v24 = 0;
      }

      v62 = *&stru_298.segname[swift_isaMask & *v22];
      v63 = v24;
      v64 = v25;
      v65 = v62();
      if (v66)
      {
        v67 = v65;
      }

      else
      {
        v67 = 0;
      }

      v68 = &v64[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title];
      v69 = *&v64[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title];
      v70 = *&v64[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title + 8];
      if (v66)
      {
        v71 = v66;
      }

      else
      {
        v71 = 0xE000000000000000;
      }

      *v68 = v67;
      v68[1] = v71;
      sub_C5AB0(v69, v70);

      v73 = (*(&stru_298.size + (swift_isaMask & *v22)))(v72);
      if (v74)
      {
        v75 = v73;
      }

      else
      {
        v75 = 0;
      }

      if (v74)
      {
        v76 = v74;
      }

      else
      {
        v76 = 0xE000000000000000;
      }

      v77 = &v64[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle];
      v78 = *&v64[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle];
      v79 = *&v64[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle + 8];
      *v77 = v75;
      v77[1] = v76;
      sub_C5C64(v78, v79);

      v80 = *(&stru_108.flags + (swift_isaMask & *v22));
      v81 = v22;
      v82 = v80();

      if (v82)
      {
        v83 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle;
        swift_beginAccess();
        v84 = *&v82[v83];
        if (v84)
        {
          v85 = *&v82[v83];
        }

        else
        {
          v85 = ICStoreArtworkInfoCropStyleBoundedBox;
          v84 = 0;
        }

        v86 = v84;
        v87 = JSArtwork.artworkCatalog(defaultCropStyle:)(v85);

        v88 = *&v64[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog];
        *&v64[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog] = v87;
        v89 = v87;

        sub_74EA4(v87);
      }

      v90 = [v2 traitCollection];
      sub_156754(v8);
      v18 = v91;
    }

    else
    {
    }
  }

  return v18;
}

double sub_49BEA4(void *a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel;
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel);
  v4 = 20.0;
  if (v3)
  {
    v5 = v1;
    v7 = *(&stru_B8.reserved2 + (swift_isaMask & *v3));
    v8 = v3;
    v9 = v7();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v13 = sub_49A80C();
      v14 = *(v5 + v2);
      if (v14)
      {
        v15 = *(&stru_B8.reserved2 + (swift_isaMask & *v14));
        v16 = v14;
        v17 = v15();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0xE000000000000000;
      }

      sub_49ABE0(v17, v19);

      v20 = *(v5 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController____lazy_storage___sizingFooterView);
      [a1 bounds];
      [v20 sizeThatFits:{v21, v22}];
      v24 = v23;

      return v24 + 30.0;
    }

    else
    {
    }
  }

  return v4;
}

void sub_49C044()
{
  v1 = (v0 + OBJC_IVAR____TtCC16MusicApplication27JSMultiChoiceViewControllerP33_A8E569B24FF6D407321C1DADBD6A2E9610FooterView_text);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = OBJC_IVAR____TtCC16MusicApplication27JSMultiChoiceViewControllerP33_A8E569B24FF6D407321C1DADBD6A2E9610FooterView_label;
  v3 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  [v3 setTextColor:qword_E718C8];
  v4 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v3 setFont:v4];

  [v3 setNumberOfLines:0];
  [v3 setTextAlignment:4];
  *(v0 + v2) = v3;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_49C1A8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_151(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_49C200(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_layoutStyle] = 0;
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_title];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_subtitle];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_additionalDescription];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = sub_49D368(0);
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_textComponents];
  *v13 = v12;
  v13[1] = v14;
  v13[2] = v15;
  v13[3] = v16;
  v63.receiver = v4;
  v63.super_class = type metadata accessor for MusicVideoHorizontalCell(0);
  v17 = objc_msgSendSuper2(&v63, "initWithFrame:", a1, a2, a3, a4);
  v18 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[2];
  v22 = v18[3];
  v59 = v18[5];
  v60 = v18[4];
  v23 = &v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v61 = *&v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v58 = *&v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
  v57 = *&v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
  v56 = *&v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
  *v23 = *v18;
  v23[1] = v20;
  v23[2] = v21;
  v23[3] = v22;
  v23[4] = v60;
  v23[5] = v59;
  v24 = v19;
  v25 = v20;
  v26 = v21;
  v27 = v22;
  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = v27;
  sub_2F1C8(v61, v58, v57, v56);
  v62 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent;
  v32 = *&v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
  v33 = *(v32 + 168);
  v64[0] = *(v32 + 152);
  v64[1] = v33;
  v64[2] = *(v32 + 184);
  *(v32 + 152) = v19;
  *(v32 + 160) = v20;
  *(v32 + 168) = v21;
  *(v32 + 176) = v22;
  *(v32 + 184) = v60;
  *(v32 + 192) = v59;
  v34 = v28;
  v35 = v29;
  v36 = v30;
  v37 = v31;
  v38 = v34;
  v39 = v35;
  v40 = v36;
  v41 = v37;
  sub_75948(v64);
  sub_12E1C(v64, &unk_DF8690);

  v42 = v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment];
  v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = 0;
  if (v42 == 1)
  {
    [v17 setNeedsLayout];
  }

  v43 = &v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets];
  type metadata accessor for UIEdgeInsets(0);
  *v43 = 0x4010000000000000;
  *(v43 + 8) = xmmword_AFB130;
  *(v43 + 3) = 0x4026000000000000;
  if (sub_AB38D0())
  {
    [v17 setNeedsLayout];
  }

  *&v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize] = xmmword_B11F60;
  v44 = *&v17[v62];
  v45 = *(v44 + 80);
  v46 = *(v44 + 88);
  *(v44 + 80) = xmmword_B11F60;
  sub_75614(v45, v46);
  v47 = *&v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];

  v48 = *&v17[OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_textComponents + 24];
  if (!(v48 >> 62))
  {
    v49 = *(&dword_10 + (v48 & 0xFFFFFFFFFFFFFF8));
    if (v49)
    {
      goto LABEL_7;
    }

LABEL_15:

LABEL_16:
    v52 = objc_opt_self();
    v53 = v17;
    v54 = [v52 whiteColor];
    [v53 setBackgroundColor:v54];

    v55 = [objc_allocWithZone(UIView) initWithFrame:{a1, a2, a3, a4}];
    [v53 setBackgroundView:v55];

    return;
  }

  v49 = sub_ABB060();
  if (!v49)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (v49 >= 1)
  {

    for (i = 0; i != v49; ++i)
    {
      if ((v48 & 0xC000000000000001) != 0)
      {
        v51 = sub_36003C(i, v48);
      }

      else
      {
        v51 = *(v48 + 8 * i + 32);
      }

      TextStackView.add(_:)(v51);
    }

    goto LABEL_16;
  }

  __break(1u);
}

void sub_49CA04(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtCC16MusicApplication24MusicVideoHorizontalCell21TVShowEpisodeListCell_releaseDate;
  v10 = sub_AB3430();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v23.receiver = v4;
  v23.super_class = type metadata accessor for MusicVideoHorizontalCell.TVShowEpisodeListCell(0);
  v11 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  v12 = sub_49D368(1);
  v13 = &v11[OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_textComponents];
  *v13 = v12;
  v13[1] = v14;
  v13[2] = v15;
  v13[3] = v16;

  v17 = v13[3];
  v18 = *&v11[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];

  TextStackView.removeAll()();
  if (v17 >> 62)
  {
    v19 = sub_ABB060();
    if (!v19)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v19 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
    if (!v19)
    {
      goto LABEL_10;
    }
  }

  if (v19 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v19; ++i)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v21 = sub_36003C(i, v17);
    }

    else
    {
      v21 = *(v17 + 8 * i + 32);
    }

    TextStackView.add(_:)(v21);
  }

LABEL_10:

  v22 = v11[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment];
  v11[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = 1;
  if ((v22 & 1) == 0)
  {
    [v11 setNeedsLayout];
  }
}

uint64_t sub_49CCF4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  __chkstk_darwin(v2 - 8);
  v4 = &v19[-v3];
  v5 = sub_AB3430();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtCC16MusicApplication24MusicVideoHorizontalCell21TVShowEpisodeListCell_releaseDate;
  swift_beginAccess();
  sub_2EC64(v1 + v9, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_12E1C(v4, &unk_E01230);
  }

  (*(v6 + 32))(v8, v4, v5);
  if (qword_DE6CB8 != -1)
  {
    swift_once();
  }

  v11 = qword_E718F8;
  isa = sub_AB3370().super.isa;
  v13 = [v11 stringFromDate:isa];

  v14 = sub_AB92A0();
  v16 = v15;
  v17 = (v1 + OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_subtitle);
  *v17 = v14;
  v17[1] = v15;

  v18 = *(v1 + OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_textComponents + 8);
  swift_beginAccess();
  *(v18 + 112) = v14;
  *(v18 + 120) = v16;

  sub_2EB704();
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_49D004()
{
}

id sub_49D0B8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_49D244()
{
  sub_2EB24();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_49D2F8()
{
  result = qword_E0A588;
  if (!qword_E0A588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0A588);
  }

  return result;
}

uint64_t sub_49D368(char a1)
{
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle:UIFontTextStyleBody];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v3 = qword_E718D8;
  v4 = objc_opt_self();
  v5 = v3;
  v19 = [v4 clearColor];
  v18 = [v1 preferredFontForTextStyle:UIFontTextStyleCaption1];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v6 = qword_E718C8;
  v7 = qword_E718C8;
  v8 = [v4 clearColor];
  v9 = v7;
  v10 = [v1 preferredFontForTextStyle:UIFontTextStyleCaption1];
  v11 = [v4 clearColor];
  *&v53[0] = v3;
  *(&v53[0] + 1) = v19;
  v53[1] = xmmword_AF7C20;
  v54 = 0;
  v55 = 0;
  v56 = v2;
  v57 = 1;
  v58 = xmmword_AF7C30;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v12 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v53);
  *&v47[0] = v6;
  *(&v47[0] + 1) = v8;
  v47[1] = xmmword_AF7C20;
  v48 = 0;
  v49 = 0;
  v50 = v18;
  v51 = 1;
  v52 = xmmword_AF7C30;
  swift_allocObject();
  v13 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v47);
  *&v41[0] = v6;
  *(&v41[0] + 1) = v11;
  v41[1] = xmmword_AF7C20;
  v42 = 0;
  v43 = 0;
  v44 = v10;
  v45 = 1;
  v46 = xmmword_AF7C30;
  swift_allocObject();
  v14 = TextStackView.Component.init(identifier:labelProperties:)(0xD000000000000015, 0x8000000000B63370, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_AF82E0;
  if (a1)
  {
    *(v15 + 32) = v13;
    *(v15 + 40) = v12;
  }

  else
  {
    *(v15 + 32) = v12;
    *(v15 + 40) = v13;
  }

  *(v15 + 48) = v14;
  v20[0] = v6;
  v20[1] = v11;
  v21 = xmmword_AF7C20;
  v22 = 0;
  v23 = 0;
  v24 = v10;
  v25 = 1;
  v26 = xmmword_AF7C30;
  sub_2F118(v53, v34);
  sub_2F118(v47, v34);
  sub_2F118(v41, v34);

  sub_2F174(v20);
  v27[0] = v6;
  v27[1] = v8;
  v28 = xmmword_AF7C20;
  v29 = 0;
  v30 = 0;
  v31 = v18;
  v32 = 1;
  v33 = xmmword_AF7C30;
  sub_2F174(v27);
  v34[0] = v3;
  v34[1] = v19;
  v35 = xmmword_AF7C20;
  v36 = 0;
  v37 = 0;
  v38 = v2;
  v39 = 1;
  v40 = xmmword_AF7C30;
  sub_2F174(v34);
  return v12;
}

double sub_49D760(void *a1)
{
  sub_49D368(0);
  v3 = v2;
  type metadata accessor for CGSize(0);
  if ((sub_AB38D0() & 1) == 0)
  {
    type metadata accessor for UIEdgeInsets(0);
    sub_AB38D0();
  }

  sub_2F48A4(v3, a1, 0, 0);

  return -1.0;
}

void sub_49D8B4(int a1)
{
  v2 = *(v1 + 17);
  *(v1 + 17) = a1;
  if (v2 != (a1 & 1))
  {
    v3 = *(v1 + 160);
    v4 = v3[OBJC_IVAR____TtC16MusicApplication12SocialButton_appearance];
    if (v4 != 2 && ((v4 ^ a1) & 1) != 0)
    {
      v3[OBJC_IVAR____TtC16MusicApplication12SocialButton_appearance] = a1 & 1;
      v5 = v3;
      sub_4ED6EC();
    }
  }
}

void sub_49D948(id a1)
{
  v2 = *(v1 + 88);
  *(v1 + 88) = a1;
  if (!a1)
  {
    if (!v2)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!v2)
  {
    a1 = a1;
LABEL_8:
    v7 = a1;
    goto LABEL_9;
  }

  v6 = a1;
  sub_49F7E4();
  v7 = v6;
  v3 = v2;
  v4 = sub_ABA790();

  if ((v4 & 1) == 0)
  {
LABEL_9:
    sub_49E994();
    sub_49EB38(512);

    v5 = v2;
    goto LABEL_10;
  }

  v5 = v7;
LABEL_10:
}

void sub_49DA1C()
{
  v1 = v0;
  v2 = sub_AB3430();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v89 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  v90 = v5;
  v91 = v6;
  __chkstk_darwin(v5);
  v88 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v8);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v82 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v82 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v20 - 8);
  v22 = &v82 - v21;
  v23 = *(v1 + 88);
  if (!v23)
  {
    return;
  }

  v85 = v3;
  v86 = v10;
  v24 = v2;
  v87 = v22;
  v25 = v8;
  v26 = *(v1 + 56);
  v27 = v23;
  if (v26)
  {
    sub_307CC(v26);
    v26(v1);
    sub_3FC30(v26);
  }

  static ApplicationCapabilities.shared.getter(v107);
  v28 = v108;

  sub_70C54(v107);
  v29 = sub_472A84(3, v28);

  if ((v29 & 1) == 0)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v33 = *(v1 + 48);
      ObjectType = swift_getObjectType();
      (*(v33 + 8))(&v99, v1, ObjectType, v33);
      swift_unknownObjectRelease();
    }

    else
    {
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v103 = 1;
      v104 = 0;
      v105 = 0;
      v106 = 0;
    }

    v37 = *JSBridge.shared.unsafeMutableAddressor();
    sub_15F84(&v99, v98, &unk_DEA520);
    v38 = swift_allocObject();
    *(v38 + 16) = 4;
    *(v38 + 24) = 0u;
    *(v38 + 40) = 0u;
    *(v38 + 56) = -1;
    sub_111814(v98, v38 + 64);
    *(v38 + 160) = 0;
    *(v38 + 168) = 0;
    v39 = *&stru_B8.segname[(swift_isaMask & *v37) + 16];
    v40 = v37;
    v39(sub_111884, v38);

    sub_12E1C(&v99, &unk_DEA520);

    return;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v30 = *(v1 + 32);
    v31 = swift_getObjectType();
    v32 = swift_allocObject();
    swift_weakInit();
    (*(v30 + 24))(v23, v1, sub_49F614, v32, v31, v30);
    swift_unknownObjectRelease();

    return;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v35 = *(v1 + 48);
    v36 = swift_getObjectType();
    (*(v35 + 8))(&v99, v1, v36, v35);
    swift_unknownObjectRelease();
  }

  else
  {
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v103 = 1;
    v104 = 0;
    v105 = 0;
    v106 = 0;
  }

  v41 = v25;
  if (*(v1 + 97) != 1)
  {
    if (qword_DE6BE8 != -1)
    {
      swift_once();
    }

    sub_43E6CC(v23, &v99, 0, 0);

    goto LABEL_29;
  }

  v42 = v24;
  sub_15F84(&v99, &v94, &unk_DEA520);
  if (v97 == 1)
  {
    sub_12E1C(&v99, &unk_DEA520);

    sub_12E1C(&v94, &unk_DEA520);
    return;
  }

  sub_17704(&v94, v98);
  if (qword_DE67A8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DED7C8);
  UnfairLock.locked<A>(_:)(sub_49F834);
  v43 = v94;
  v44 = v91;
  if (!v94 || (v45 = OBJC_IVAR____TtC11MusicJSCore15JSSocialProfile_editProfileLink, swift_beginAccess(), v46 = *&v43[v45], v84 = v46, v43, !v46))
  {

    sub_1611C(v98);
LABEL_29:
    sub_12E1C(&v99, &unk_DEA520);
    return;
  }

  v83 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v47 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v92, 0, sizeof(v92));
  v93 = 0;
  (*(*(v47 - 8) + 56))(v87, 1, 1, v47);
  sub_15F84(v92, &v94, &unk_DE8E30);
  v48 = *(&v95 + 1);
  v82 = v23;
  if (v48)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
    v49 = _s30CollectionViewSelectionHandlerVMa();
    v50 = swift_dynamicCast();
    v51 = *(v49 - 8);
    (*(v51 + 56))(v13, v50 ^ 1u, 1, v49);
    if ((*(v51 + 48))(v13, 1, v49) != 1)
    {
      v52 = &v13[*(v49 + 20)];
      v53 = v90;
      (*(v44 + 16))(v19, v52, v90);
      sub_2D6C0(v13, _s30CollectionViewSelectionHandlerVMa);
      v54 = v53;
      v55 = 0;
      goto LABEL_32;
    }
  }

  else
  {
    sub_12E1C(&v94, &unk_DE8E30);
    v56 = _s30CollectionViewSelectionHandlerVMa();
    (*(*(v56 - 8) + 56))(v13, 1, 1, v56);
  }

  sub_12E1C(v13, &qword_E037A0);
  v55 = 1;
  v54 = v90;
LABEL_32:
  (*(v44 + 56))(v19, v55, 1, v54);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v58 = Strong, sub_12B2FC(), v60 = v59, v62 = v61, v58, v60))
  {
    v63 = swift_getObjectType();
    (*(v62 + 8))(v63, v62);
    v65 = v64;
    swift_unknownObjectRelease();
    sub_15F84(v19, v17, &unk_DE8E20);
    v66 = v90;
    if ((*(v44 + 48))(v17, 1, v90) == 1)
    {
      sub_12E1C(v17, &unk_DE8E20);
      v94 = 0u;
      v95 = 0u;
      v96 = 0;
    }

    else
    {
      v68 = *(v44 + 32);
      v91 = v65;
      v68(v88, v17, v66);
      sub_2D668();
      v65 = v91;
      sub_ABAD10();
    }

    v69 = swift_getObjectType();
    v70 = v89;
    sub_3B8F68();
    v67 = sub_21CCAC(1, v70, &v94, v69, v65);
    (*(v85 + 8))(v70, v42);
    sub_12E1C(&v94, &qword_DF2BD0);
    sub_12E1C(v19, &unk_DE8E20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v19, &unk_DE8E20);
    v67 = 0;
  }

  v71 = swift_unknownObjectWeakLoadStrong();
  if (v71)
  {
    v72 = v71;
    sub_12AFE8();
    v74 = v73;
  }

  else
  {
    v74 = 0;
  }

  sub_15F28(v98, &v94);
  v75 = v86;
  sub_15F84(v92, (v86 + 104), &unk_DE8E30);
  v76 = v87;
  sub_15F84(v87, v75 + *(v41 + 28), &unk_DEA510);
  *v75 = 0u;
  *(v75 + 16) = 0u;
  *(v75 + 32) = 0u;
  *(v75 + 48) = 0u;
  *(v75 + 64) = 1;
  *(v75 + 72) = 0;
  *(v75 + 80) = 0;
  *(v75 + 88) = 0;
  sub_2D594(&v94, v75);
  *(v75 + 96) = v23;
  v77 = *v83;
  *(&v95 + 1) = v41;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v94);
  sub_2D604(v75, boxed_opaque_existential_0);
  v79 = v82;
  v80 = v77;
  v81 = v84;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v84, 0, v67, v74, &v94);

  sub_12E1C(v76, &unk_DEA510);
  sub_12E1C(v92, &unk_DE8E30);
  sub_1611C(v98);
  sub_12E1C(&v99, &unk_DEA520);
  sub_2D6C0(v75, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v94, &unk_DE8E40);
}

uint64_t sub_49E680()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_49DA1C();
  }

  return result;
}

uint64_t sub_49E6D8()
{
  v1 = v0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    *(v0 + 136) = 0;

    v2 = 0;
  }

  else
  {
    if (qword_DE67B8 != -1)
    {
      swift_once();
    }

    v3 = qword_DE67A8;
    v4 = qword_E70D48;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = qword_E70D38;
    v6 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();

    *(v1 + 136) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v4, v5, 1, 1, sub_49F830, v6);

    if (qword_DE6BF0 != -1)
    {
      swift_once();
    }

    v7 = qword_DE6BE8;
    v8 = qword_E71828;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = qword_E71820;
    v10 = swift_allocObject();
    swift_weakInit();
    swift_allocObject();

    v2 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v8, v9, 1, 1, sub_49F620, v10);
  }

  *(v1 + 144) = v2;
}

id sub_49E930()
{
  if (qword_DE6BE0 != -1)
  {
    swift_once();
  }

  v1 = qword_E71818;
  qword_E71A80 = qword_E71818;

  return v1;
}

void sub_49E994()
{
  v1 = v0;
  v2 = v0[20];
  if (v0[14])
  {
    v3 = v0[15];
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = &v2[OBJC_IVAR____TtC16MusicApplication12SocialButton_title];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication12SocialButton_title];
  v7 = *&v2[OBJC_IVAR____TtC16MusicApplication12SocialButton_title + 8];
  *v5 = v3;
  *(v5 + 1) = v4;
  v8 = v2;
  sub_4EC5B8(v6, v7);

  v9 = *(v1 + 96);
  if ((v9 - 1) > 1)
  {
    v11 = v1[20];
    v13 = v11[OBJC_IVAR____TtC16MusicApplication12SocialButton_appearance];
    v11[OBJC_IVAR____TtC16MusicApplication12SocialButton_appearance] = 2;
    if (v13 == 2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = *(v1 + 17);
    v11 = v1[20];
    v12 = v11[OBJC_IVAR____TtC16MusicApplication12SocialButton_appearance];
    v11[OBJC_IVAR____TtC16MusicApplication12SocialButton_appearance] = v10;
    if (v12 != 2 && ((v10 ^ v12) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v14 = v11;
  sub_4ED6EC();

LABEL_10:
  v15 = v1[20];
  if (*(v1 + 97))
  {
    [v15 setHidden:(v1[2] & 1) == 0];
    [v1[20] setEnabled:*(v1 + 16)];
  }

  else
  {
    [v15 setEnabled:v9 != 4];
    [v1[20] setHidden:v9 == 4];
  }

  v16 = v1[20];
  [v16 setHidden:{objc_msgSend(v16, "isEnabled") ^ 1}];
}

void sub_49EB38(int a1)
{
  v2 = v1;
  LODWORD(v3) = a1;
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v59 = &v55[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_AB9250();
  __chkstk_darwin(v6 - 8);
  v58 = &v55[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + 88);
  if ((v3 & 0xFF00) != 0x200)
  {
    v13 = (v3 >> 8) & 1;
    v14 = v8;
    goto LABEL_5;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v1 + 32);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 16);
    v12 = v8;
    LODWORD(v3) = v11(v8, v1, ObjectType, v9);
    swift_unknownObjectRelease();
    v13 = (v3 >> 8) & 1;
    goto LABEL_5;
  }

  if (v8)
  {
    v34 = v8;
    v35 = [v34 identifiers];
    v36 = [v35 universalStore];

    if (v36)
    {
      v37 = [v36 socialProfileID];
      if (v37)
      {
        v38 = v37;
        v39 = sub_AB92A0();
        v41 = v40;

        swift_unknownObjectRelease();
        goto LABEL_34;
      }

      swift_unknownObjectRelease();
    }

    v39 = 0;
    v41 = 0xE000000000000000;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

LABEL_34:
  if (qword_DE67A8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DED7C8);
  UnfairLock.locked<A>(_:)(sub_199998);
  v49 = v60;
  if (!v60)
  {
    if (v41)
    {
      goto LABEL_43;
    }

LABEL_46:
    v13 = 1;
    if (v8)
    {
      goto LABEL_50;
    }

LABEL_47:
    LOBYTE(v3) = 4;
    goto LABEL_5;
  }

  v50 = JSSocialProfile.profileID.getter();
  v52 = v51;

  if (!v41)
  {
    if (v52)
    {
      v13 = 0;
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (!v52)
  {
LABEL_43:
    v13 = 0;
    goto LABEL_49;
  }

  if (v39 == v50 && v41 == v52)
  {

    v13 = 1;
  }

  else
  {
    v13 = sub_ABB3C0();
  }

LABEL_49:

  if (!v8)
  {
    goto LABEL_47;
  }

LABEL_50:
  if (v13)
  {
    v13 = 1;
    LOBYTE(v3) = 4;
  }

  else
  {
    v53 = qword_DE6BE8;
    v54 = v8;
    if (v53 != -1)
    {
      swift_once();
    }

    LOBYTE(v3) = sub_43D6A8(v54);

    v13 = 0;
  }

LABEL_5:
  if (!swift_unknownObjectWeakLoadStrong() || ((v57 = v8, v15 = *(v2 + 32), v16 = swift_getObjectType(), v17 = *(v2 + 88), v18 = *(v15 + 8), (v13 & 1) == 0) ? (v19 = 0) : (v19 = 256), v20 = v19 & 0xFFFFFF00 | v3, v21 = v17, v56 = v13, v22 = v3, v3 = v21, v23 = v15, v8 = v57, v24 = v18(v17, v20, v2, v16, v23), v26 = v25, v28 = v27, v30 = v29, swift_unknownObjectRelease(), v3, LOBYTE(v3) = v22, LOBYTE(v13) = v56, !v26))
  {
    if (v13)
    {
      v31 = 1953064005;
      v26 = 0xE400000000000000;
      v32 = v3;
LABEL_12:
      sub_AB91E0();
      sub_AB3550();
      LOBYTE(v3) = v32;
      v28 = sub_AB9320();
      v30 = v33;
      v24 = v31 | 0x20;
      goto LABEL_28;
    }

    if (v3 <= 1u)
    {
      if (v3)
      {
        v26 = 0xE900000000000064;
        v42 = 0x6574736575716552;
      }

      else
      {
        v42 = 0x776F6C6C6F46;
        v26 = 0xE600000000000000;
      }

      sub_AB91E0();
      sub_AB3550();
      v28 = sub_AB9320();
      v30 = v43;
      v24 = v42 | 0x20;
    }

    else
    {
      if (v3 == 2)
      {
        v26 = 0xE900000000000067;
        v31 = 0x6E69776F6C6C6F46;
        v32 = v3;
        goto LABEL_12;
      }

      if (v3 == 3)
      {
        v31 = 0x6B636F6C626E55;
        v26 = 0xE700000000000000;
        v32 = v3;
        goto LABEL_12;
      }

      v24 = 0;
      v26 = 0;
      v28 = 0;
      v30 = 0;
    }
  }

LABEL_28:
  v44 = *(v2 + 104);
  v45 = *(v2 + 112);
  *(v2 + 104) = v24;
  *(v2 + 112) = v26;
  *(v2 + 120) = v28;
  *(v2 + 128) = v30;
  sub_344D0C(v44, v45);
  v46 = *(v2 + 96);
  v47 = *(v2 + 97);
  *(v2 + 96) = v3;
  *(v2 + 97) = v13 & 1;
  if (v47)
  {
    v48 = 256;
  }

  else
  {
    v48 = 0;
  }

  sub_49F138(v48 | v46);
}

void sub_49F138(__int16 a1)
{
  v2 = *(v1 + 96);
  if (v2 == 4)
  {
    v3 = a1 == 4;
  }

  else
  {
    v3 = v2 == a1;
  }

  v4 = !v3;
  if ((v4 | *(v1 + 97) ^ ((a1 & 0x100) >> 8)))
  {
    sub_49E994();
    v5 = *(v1 + 72);
    if (v5)
    {

      v5(v1);

      sub_3FC30(v5);
    }
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();

    sub_49E994();
  }
}

uint64_t sub_49F210(__int16 a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_49EB38(a1 & 0x1FF);
  }

  return result;
}

uint64_t sub_49F270(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    if (v3 != 4)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  return a1[1] ^ a2[1] ^ 1u;
}

uint64_t sub_49F2AC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_49EB38(512);
  }

  return result;
}

uint64_t sub_49F308()
{
  sub_176DC(v0 + 24);
  sub_176DC(v0 + 40);
  sub_3FC30(*(v0 + 56));
  sub_3FC30(*(v0 + 72));

  sub_344D0C(*(v0 + 104), *(v0 + 112));

  return v0;
}

uint64_t sub_49F374()
{
  sub_49F308();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ApplicationCapabilities.Tabs.Configuration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
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

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ApplicationCapabilities.Tabs.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
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
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_49F530()
{
  v1 = *(v0 + 56);
  if (v1 != 255)
  {
    sub_1117C4(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v1 & 1);
  }

  if (*(v0 + 128) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v2 = *(v0 + 112);
    if (v2 != 255)
    {
      sub_17774(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), v2);
    }

    if (*(v0 + 128))
    {
    }

    if (*(v0 + 144))
    {
    }
  }

  if (*(v0 + 160))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_49F5DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_49F63C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 16) = 1;
  *(v4 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 88) = 0;
  *(v4 + 72) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 96) = 4;
  v7 = type metadata accessor for SocialButton();
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 152) = 0;
  *(v4 + 160) = [objc_allocWithZone(v7) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v4 + 48) = a3;
  swift_unknownObjectWeakAssign();
  [*(v4 + 160) setHidden:1];
  v8 = *(v4 + 160);
  v9 = v8[OBJC_IVAR____TtC16MusicApplication12SocialButton_controlSize];
  v8[OBJC_IVAR____TtC16MusicApplication12SocialButton_controlSize] = a1 & 1;
  if (v9 != (a1 & 1))
  {
    v10 = v8;
    sub_4ED6EC();
  }

  v11 = *(v4 + 160);
  v12 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for ControlEventHandler();
  swift_allocObject();
  *(v4 + 152) = ControlEventHandler.init<A>(control:events:handler:)(v11, 64, sub_49F7DC, v12, v7);

  sub_49E6D8();
  return v4;
}

unint64_t sub_49F7E4()
{
  result = qword_DED7C0;
  if (!qword_DED7C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DED7C0);
  }

  return result;
}

uint64_t sub_49F84C()
{
  v1 = v0;
  v11[0] = sub_ABA140();
  v2 = *(v11[0] - 8);
  __chkstk_darwin(v11[0]);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_ABA100();
  __chkstk_darwin(v5);
  v6 = sub_AB7C50();
  __chkstk_darwin(v6 - 8);
  sub_60044();
  sub_AB7C30();
  v11[1] = _swiftEmptyArrayStorage;
  sub_305780();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01270);
  sub_3057D8();
  sub_ABABB0();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11[0]);
  *(v0 + 16) = sub_ABA180();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  v7 = *ApplicationCapabilities.NotificationNames.activeAccountDidChange.unsafeMutableAddressor();
  v8 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  v9 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  *(v1 + 40) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v7, v8, 1, 1, sub_4A1368, v9);

  if (qword_DE6838 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_49FB2C()
{
  v0 = sub_AB7C50();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB7C10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_AB7C00();
    aBlock[4] = sub_4A1370;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_36_2;
    v10 = _Block_copy(aBlock);

    sub_AB7C30();
    sub_ABA160();
    (*(v1 + 8))(v3, v0);
    (*(v5 + 8))(v7, v4);
    _Block_release(v10);
  }

  return result;
}

uint64_t sub_49FD68()
{
  type metadata accessor for UserAuthenticationRequestCoordinator();
  v0 = swift_allocObject();
  result = sub_49F84C();
  qword_E71A88 = v0;
  return result;
}

void sub_49FDA4(char a1, void (*a2)(void, id), uint64_t a3)
{
  v6 = sub_AB35C0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_AB9250();
  __chkstk_darwin(v7 - 8);
  static ApplicationCapabilities.shared.getter(v42);
  v8 = v43;

  sub_70C54(v42);
  v9 = sub_472A84(8, v8);

  if ((v9 & 1) == 0)
  {
    v16 = objc_allocWithZone(NSError);
    v17 = sub_AB9260();
    v18 = [v16 initWithDomain:v17 code:0 userInfo:0];

    if (a2)
    {
      v19 = v18;
      a2(0, v18);

      v18 = v19;
    }

    goto LABEL_22;
  }

  v39 = v3;
  v10 = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
  if (v10)
  {
    v38 = v10;
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    sub_60044();

    static OS_dispatch_queue.syncOnMainIfNeeded(_:)(sub_4A138C, v11);

    swift_beginAccess();
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = objc_allocWithZone(AKAppleIDAuthenticationInAppContext);
      v14 = v12;
      v15 = [v13 init];
      [v15 setPresentingViewController:v14];
    }

    else
    {
      v15 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
    }

    v20 = *(v39 + 32);
    if (v20)
    {
      v21 = *(v39 + 32);
    }

    else
    {
      v22 = [objc_allocWithZone(ACAccountStore) init];
      v23 = [objc_allocWithZone(AIDAServiceOwnersManager) initWithAccountStore:v22];
      v21 = [v23 accountForService:AIDAServiceTypeStore];

      if (!v21)
      {
LABEL_18:
        [v15 setAuthenticationType:sub_4A0B78(a1)];
        [v15 setServiceType:2];
        [v15 setShouldAllowAppleIDCreation:1];
        v30 = [v15 username];
        if (v30)
        {
          v31 = v30;
          sub_AB92A0();
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        [v15 setIsUsernameEditable:v33 == 0];
        sub_AB91E0();
        sub_AB3550();
        sub_AB9320();
        v34 = sub_AB9260();

        [v15 setTitle:v34];

        v35 = swift_allocObject();
        swift_weakInit();
        v36 = swift_allocObject();
        *(v36 + 16) = a2;
        *(v36 + 24) = a3;
        *(v36 + 32) = v35;
        *(v36 + 40) = a1;
        aBlock[4] = sub_4A1178;
        aBlock[5] = v36;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_4A0FA4;
        aBlock[3] = &block_descriptor_152;
        v37 = _Block_copy(aBlock);
        v18 = v15;
        sub_307CC(a2);

        [v38 authenticateWithContext:v18 completion:v37];

        _Block_release(v37);

LABEL_22:

        return;
      }

      v20 = 0;
    }

    v24 = v20;
    v25 = [v21 username];
    [v15 setUsername:v25];

    v26 = [v21 ams_DSID];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 stringValue];
      if (v28)
      {
        v29 = v28;
      }

      else
      {
        sub_AB92A0();
        v29 = sub_AB9260();
      }
    }

    else
    {
      v29 = 0;
    }

    [v15 setDSID:v29];

    goto LABEL_18;
  }

  __break(1u);
}

void sub_4A03E8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_4A08BC(a1, a2 == 0);
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    sub_60044();

    static OS_dispatch_queue.syncOnMainIfNeeded(_:)(sub_4A1248, v9);

    swift_beginAccess();
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = [objc_allocWithZone(AMSUIAuthenticateTask) initWithRequest:v8 presentingViewController:v10];
      if (!a2)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v11 = [objc_allocWithZone(AMSAuthenticateTask) initWithRequest:v8];
      if (!a2)
      {
LABEL_28:
        v22 = [v11 performAuthentication];
        v23 = swift_allocObject();
        *(v23 + 16) = a3;
        *(v23 + 24) = a4;
        aBlock[4] = sub_4A1264;
        aBlock[5] = v23;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_151E0;
        aBlock[3] = &block_descriptor_20_5;
        v24 = _Block_copy(aBlock);
        sub_307CC(a3);

        [v22 addFinishBlock:v24];

        _Block_release(v24);

        return;
      }
    }

    sub_AB92A0();
    sub_ABAD10();
    if (*(a2 + 16) && (v13 = sub_2EC004(aBlock), (v14 & 1) != 0))
    {
      sub_808B0(*(a2 + 56) + 32 * v13, v25);
      sub_8085C(aBlock);
      if (swift_dynamicCast())
      {
        v15 = sub_AB9260();

LABEL_15:
        [v11 setUsername:v15];

        sub_AB92A0();
        sub_ABAD10();
        if (*(a2 + 16) && (v16 = sub_2EC004(aBlock), (v17 & 1) != 0))
        {
          sub_808B0(*(a2 + 56) + 32 * v16, v25);
          sub_8085C(aBlock);
          if (swift_dynamicCast())
          {
            v18 = sub_AB9260();

LABEL_21:
            [v11 setPassword:v18];

            sub_AB92A0();
            sub_ABAD10();
            if (*(a2 + 16) && (v19 = sub_2EC004(aBlock), (v20 & 1) != 0))
            {
              sub_808B0(*(a2 + 56) + 32 * v19, v25);
              sub_8085C(aBlock);
              if (swift_dynamicCast())
              {
                v21 = sub_AB9260();

LABEL_27:
                [v11 setAltDSID:v21];

                goto LABEL_28;
              }
            }

            else
            {
              sub_8085C(aBlock);
            }

            v21 = 0;
            goto LABEL_27;
          }
        }

        else
        {
          sub_8085C(aBlock);
        }

        v18 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      sub_8085C(aBlock);
    }

    v15 = 0;
    goto LABEL_15;
  }

  sub_60044();
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  sub_307CC(a3);
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_4A1210, v12);
}

id sub_4A08BC(char a1, char a2)
{
  if (!a1)
  {
    return 0;
  }

  v5 = [objc_allocWithZone(AMSAuthenticateOptions) init];
  [v5 setAuthenticationType:sub_4A0B78(a1)];
  if (a2)
  {
    v6 = *(v2 + 32);
    v7 = v6;
    if (!v6)
    {
      v8 = [objc_allocWithZone(ACAccountStore) init];
      v9 = [objc_allocWithZone(AIDAServiceOwnersManager) initWithAccountStore:v8];
      v7 = [v9 accountForService:AIDAServiceTypeStore];
    }

    v10 = objc_allocWithZone(AMSAuthenticateRequest);
    v11 = v6;
    v12 = [v10 initWithAccount:v7 options:v5];

    v5 = v7;
  }

  else
  {
    v12 = [objc_allocWithZone(AMSAuthenticateRequest) initWithAccount:0 options:v5];
  }

  return v12;
}

uint64_t sub_4A0A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 != 0;
  sub_60044();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  *(v8 + 32) = v7;
  *(v8 + 40) = a2;
  sub_307CC(a3);
  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_4A12B4, v8);
}

void sub_4A0AD0(uint64_t a1)
{
  sub_D5B6C();
  if (!v2)
  {
    memset(v6, 0, sizeof(v6));
    v7 = 1;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_5;
  }

  v3 = v2;
  static PresentationSource.topmost(in:)(v6);

  if (v7 == 1)
  {
LABEL_5:
    sub_111898(v6);
    Strong = 0;
    goto LABEL_6;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1611C(v6);
LABEL_6:
  swift_beginAccess();
  v5 = *(a1 + 16);
  *(a1 + 16) = Strong;
}

uint64_t sub_4A0B78(char a1)
{
  v3 = sub_AB7CC0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.notOnQueue(_:), v3);
  v8 = v7;
  v9 = sub_AB7CF0();
  result = (*(v4 + 8))(v6, v3);
  if (v9)
  {
    v18 = 1;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = &v18;
    *(v11 + 32) = v1;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_4A1324;
    *(v12 + 24) = v11;
    aBlock[4] = sub_2D4D0;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1822E0;
    aBlock[3] = &block_descriptor_32_1;
    v13 = _Block_copy(aBlock);

    dispatch_sync(v8, v13);
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v15 = v18;

      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_4A0DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_60044();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = a6;
  *(v12 + 56) = a1;
  swift_errorRetain();
  sub_307CC(a3);

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_4A11F8, v12);
}

uint64_t sub_4A0E9C(uint64_t result, void (*a2)(void, uint64_t), uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (result)
  {
    if (a2)
    {
      v8 = result;
      swift_errorRetain();
      a2(0, v8);
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      if (a6)
      {
        a6 = sub_3E9844(a6);
      }

      sub_4A03E8(a5, a6, a2, a3);
    }

    else if (a2)
    {
      return (a2)(0, 0);
    }
  }

  return result;
}

uint64_t sub_4A0FA4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0A750);
    v4 = sub_AB8FF0();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_4A1054()
{

  return swift_deallocClassInstance();
}

uint64_t sub_4A10C0()
{

  return swift_deallocObject();
}

uint64_t sub_4A10F8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_4A1130()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t block_copy_helper_152(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_4A11A0()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_4A1210()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0, 0);
  }

  return result;
}

uint64_t sub_4A126C()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_4A12B4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32), *(v0 + 40));
  }

  return result;
}

uint64_t sub_4A12EC()
{

  return swift_deallocObject();
}

void sub_4A1324()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 == 3)
  {
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v3 = *(v0 + 32);
    if ((*(v3 + 24) & 1) == 0)
    {
      *(v3 + 24) = 1;
LABEL_5:
      *v2 = 0;
    }
  }
}

void sub_4A1370()
{
  *(v0 + 24) = 0;
  v1 = *(v0 + 32);
  *(v0 + 32) = 0;
}

uint64_t sub_4A13A0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = sub_AB9C70();
  if (!v19)
  {
    return sub_AB97C0();
  }

  v41 = v19;
  v45 = sub_ABAF10();
  v32 = sub_ABAF20();
  sub_ABAEB0(v41);
  result = sub_AB9C60();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_AB9D80();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_ABAF00();
      result = sub_AB9CB0();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_4A17C0(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, double a7)
{
  v16 = a1;
  v13[16] = a4;
  v13[17] = a3;
  v14 = a2;
  v15 = a7;
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = sub_4A38D4;
  v12[5] = v13;
  type metadata accessor for PrincipalImpressionTracker.History();
  v7 = sub_AB9080();
  v8 = type metadata accessor for JSImpression();
  WitnessTable = swift_getWitnessTable();
  return sub_4A13A0(sub_4A38E8, v12, v7, v8, &type metadata for Never, WitnessTable, &protocol witness table for Never, v10);
}

void sub_4A18B4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  byte_E71A90 = sub_4A1924() & 1;
}

uint64_t sub_4A1924()
{
  v1[0] = 0xD00000000000001ALL;
  v1[1] = 0x8000000000B66F70;
  sub_36A48();
  NSUserDefaults.subscript.getter(v1, &v2);
  if (v3)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return LOBYTE(v1[0]);
    }
  }

  else
  {
    sub_9BC10(&v2);
    return 0;
  }

  return result;
}

uint64_t sub_4A19BC(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_27:
    v3 = sub_ABB060();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = _swiftEmptyArrayStorage;
      while (1)
      {
        v22 = v5;
        v6 = v4;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v7 = sub_35FC58(v6, a1);
          }

          else
          {
            if (v6 >= *(v2 + 16))
            {
              goto LABEL_26;
            }

            v7 = *(a1 + 8 * v6 + 32);
          }

          v8 = v7;
          v4 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v9 = *&v7[OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields];
          strcpy(v23, "impressionId");
          BYTE5(v23[1]) = 0;
          HIWORD(v23[1]) = -5120;
          sub_ABAD10();
          if (*(v9 + 16))
          {
            v10 = sub_2EC004(v24);
            if (v11)
            {
              break;
            }
          }

          sub_8085C(v24);
LABEL_6:

          ++v6;
          if (v4 == v3)
          {
            v5 = v22;
            goto LABEL_23;
          }
        }

        sub_808B0(*(v9 + 56) + 32 * v10, v25);
        sub_8085C(v24);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_6;
        }

        v21 = v23[0];
        v12 = v22;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v12 = sub_6ABB0(0, v22[2] + 1, 1, v22);
        }

        v15 = v12[2];
        v14 = v12[3];
        v16 = v12;
        if (v15 >= v14 >> 1)
        {
          v16 = sub_6ABB0((v14 > 1), v15 + 1, 1, v12);
        }

        v16[2] = v15 + 1;
        v17 = &v16[2 * v15];
        v5 = v16;
        v17[4] = v21;
        v17[5] = v8;
        if (v4 == v3)
        {
LABEL_23:
          if (!v5[2])
          {
            goto LABEL_29;
          }

LABEL_24:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFF008);
          v18 = sub_ABB0C0();
          goto LABEL_30;
        }
      }
    }
  }

  if (_swiftEmptyArrayStorage[2])
  {
    goto LABEL_24;
  }

LABEL_29:
  v18 = &_swiftEmptyDictionarySingleton;
LABEL_30:
  v24[0] = v18;

  sub_4A3098(v19, 1, v24);

  return v24[0];
}

uint64_t sub_4A1C70@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(*a1 + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
  sub_ABAD10();
  if (!*(v5 + 16) || (v6 = sub_2EC004(v11), (v7 & 1) == 0))
  {
    result = sub_8085C(v11);
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  sub_808B0(*(v5 + 56) + 32 * v6, v12);
  sub_8085C(v11);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_8;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_8;
  }

  result = sub_2F5A90(0xD000000000000012);
  if ((v9 & 1) == 0)
  {
    goto LABEL_8;
  }

  v10 = *(*(a2 + 56) + 8 * result);
  result = v10;
LABEL_9:
  *a3 = v10;
  return result;
}

uint64_t sub_4A1D7C@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_97420(_swiftEmptyArrayStorage);
  v5 = OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields;
  v6 = *(v3 + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
  *&v31 = 25705;
  *(&v31 + 1) = 0xE200000000000000;
  sub_ABAD10();
  if (*(v6 + 16) && (v7 = sub_2EC004(&v32), (v8 & 1) != 0))
  {
    sub_808B0(*(v6 + 56) + 32 * v7, v34);
    sub_8085C(&v32);
    if (swift_dynamicCast())
    {
      v33 = &type metadata for String;
      v32 = v31;
      sub_9ACFC(&v32, v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v31 = v4;
      sub_9330C(v34, 25705, 0xE200000000000000, isUniquelyReferenced_nonNull_native);
    }
  }

  else
  {
    sub_8085C(&v32);
  }

  v10 = *(v3 + v5);
  *&v31 = 1701667182;
  *(&v31 + 1) = 0xE400000000000000;
  sub_ABAD10();
  if (*(v10 + 16) && (v11 = sub_2EC004(&v32), (v12 & 1) != 0))
  {
    sub_808B0(*(v10 + 56) + 32 * v11, v34);
    sub_8085C(&v32);
    if (swift_dynamicCast())
    {
      v33 = &type metadata for String;
      v32 = v31;
      sub_9ACFC(&v32, v34);
      v13 = swift_isUniquelyReferenced_nonNull_native();
      *&v31 = v4;
      sub_9330C(v34, 1701667182, 0xE400000000000000, v13);
    }
  }

  else
  {
    sub_8085C(&v32);
  }

  v14 = *(v3 + v5);
  strcpy(&v31, "impressionType");
  HIBYTE(v31) = -18;
  sub_ABAD10();
  if (*(v14 + 16) && (v15 = sub_2EC004(&v32), (v16 & 1) != 0))
  {
    sub_808B0(*(v14 + 56) + 32 * v15, v34);
    sub_8085C(&v32);
    if (swift_dynamicCast())
    {
      v33 = &type metadata for String;
      v32 = v31;
      sub_9ACFC(&v32, v34);
      v17 = swift_isUniquelyReferenced_nonNull_native();
      *&v31 = v4;
      sub_9330C(v34, 0x6E6F697461636F6CLL, 0xEC00000065707954, v17);
    }
  }

  else
  {
    sub_8085C(&v32);
  }

  v18 = *(v3 + v5);
  *&v31 = 0x6973736572706D69;
  *(&v31 + 1) = 0xEF7865646E496E6FLL;
  sub_ABAD10();
  if (*(v18 + 16) && (v19 = sub_2EC004(&v32), (v20 & 1) != 0))
  {
    sub_808B0(*(v18 + 56) + 32 * v19, v34);
    sub_8085C(&v32);
    if (swift_dynamicCast())
    {
      v33 = &type metadata for Int;
      *&v32 = v31;
      sub_9ACFC(&v32, v34);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      *&v31 = v4;
      sub_9330C(v34, 0xD000000000000010, 0x8000000000B66470, v21);
    }
  }

  else
  {
    sub_8085C(&v32);
  }

  v22 = *(v3 + v5);
  *&v31 = 1684957547;
  *(&v31 + 1) = 0xE400000000000000;
  sub_ABAD10();
  if (*(v22 + 16) && (v23 = sub_2EC004(&v32), (v24 & 1) != 0))
  {
    sub_808B0(*(v22 + 56) + 32 * v23, v34);
    sub_8085C(&v32);
    if (swift_dynamicCast())
    {
      v33 = &type metadata for String;
      v32 = v31;
      sub_9ACFC(&v32, v34);
      v25 = swift_isUniquelyReferenced_nonNull_native();
      *&v31 = v4;
      sub_9330C(v34, 1684957547, 0xE400000000000000, v25);
    }
  }

  else
  {
    sub_8085C(&v32);
  }

  v26 = *(v3 + v5);
  *&v31 = 0xD000000000000013;
  *(&v31 + 1) = 0x8000000000B5B050;
  sub_ABAD10();
  if (*(v26 + 16) && (v27 = sub_2EC004(&v32), (v28 & 1) != 0))
  {
    sub_808B0(*(v26 + 56) + 32 * v27, v34);
    sub_8085C(&v32);
    result = swift_dynamicCast();
    if (result)
    {
      v33 = &type metadata for String;
      v32 = v31;
      sub_9ACFC(&v32, v34);
      v30 = swift_isUniquelyReferenced_nonNull_native();
      *&v31 = v4;
      result = sub_9330C(v34, 0xD000000000000013, 0x8000000000B5B050, v30);
    }
  }

  else
  {
    result = sub_8085C(&v32);
  }

  *a2 = v4;
  return result;
}

id sub_4A232C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v9 = *(a4 + 128);
  v47 = *(a4 + 112);
  v48 = v9;
  *v49 = *(a4 + 144);
  *&v49[9] = *(a4 + 153);
  v10 = *(a4 + 64);
  v43 = *(a4 + 48);
  v44 = v10;
  v11 = *(a4 + 96);
  v45 = *(a4 + 80);
  v46 = v11;
  v12 = *(a4 + 32);
  v41 = *(a4 + 16);
  v42 = v12;
  v13 = sub_27AB70();
  strcpy(&v36, "impressionId");
  BYTE13(v36) = 0;
  HIWORD(v36) = -5120;
  sub_ABAD10();
  v14 = *(a4 + 176);
  v37 = &type metadata for Int;
  *&v36 = v14;
  sub_9ACFC(&v36, v38);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_913C0(v38, v39, isUniquelyReferenced_nonNull_native);
  sub_8085C(v39);
  v16 = v13;
  v40 = v13;
  if ((*(a4 + 192) & 1) == 0)
  {
    v17 = *(a4 + 184);
    *&v36 = 0xD000000000000012;
    *(&v36 + 1) = 0x8000000000B5D560;
    sub_ABAD10();
    v37 = &type metadata for Int;
    *&v36 = v17;
    sub_9ACFC(&v36, v38);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_913C0(v38, v39, v18);
    sub_8085C(v39);
    v40 = v16;
  }

  v19 = *(a4 + 193);
  if (v19 != 2)
  {
    strcpy(&v36, "motionActive");
    BYTE13(v36) = 0;
    HIWORD(v36) = -5120;
    sub_ABAD10();
    v37 = &type metadata for Bool;
    LOBYTE(v36) = v19 & 1;
    sub_9ACFC(&v36, v38);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_913C0(v38, v39, v20);
    sub_8085C(v39);
    *&v36 = 0x76416E6F69746F6DLL;
    *(&v36 + 1) = 0xEF656C62616C6961;
    sub_ABAD10();
    v37 = &type metadata for Bool;
    LOBYTE(v36) = v19 & 1;
    sub_9ACFC(&v36, v38);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_913C0(v38, v39, v21);
    sub_8085C(v39);
    v40 = v16;
  }

  if (v44 != 2)
  {
    v50 = v44;
    *&v36 = 0x76416E6F69746F6DLL;
    *(&v36 + 1) = 0xEF656C62616C6961;
    sub_ABAD10();
    sub_ABAD10();
    if (*(v16 + 16) && (v22 = sub_2EC004(&v36), (v23 & 1) != 0))
    {
      sub_808B0(*(v16 + 56) + 32 * v22, v38);
      sub_8085C(&v36);
      if (swift_dynamicCast())
      {
        v24 = 1;
LABEL_12:
        v37 = &type metadata for Bool;
        LOBYTE(v36) = v24 & 1;
        sub_9ACFC(&v36, v38);
        v25 = v40;
        v26 = swift_isUniquelyReferenced_nonNull_native();
        sub_913C0(v38, v39, v26);
        sub_8085C(v39);
        v16 = v25;
        v40 = v25;
        goto LABEL_13;
      }
    }

    else
    {
      sub_8085C(&v36);
    }

    v24 = v50 & a5;
    goto LABEL_12;
  }

LABEL_13:
  if (a6)
  {
    *&v36 = 0x6973736572706D69;
    *(&v36 + 1) = 0xEF73656D69546E6FLL;
    sub_ABAD10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA840);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_AF4EC0;
    sub_AB33D0();
    *(v27 + 32) = Double.toMillisecondsInServerTime.getter(v28);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDD70);
    *&v36 = v27;
    sub_9ACFC(&v36, v38);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_913C0(v38, v39, v29);
    sub_8085C(v39);
    v30 = v16;
    v40 = v16;
  }

  else
  {
    swift_beginAccess();

    sub_4A28A4(v31, a1);

    v30 = v40;
  }

  v32 = *(&v45 + 1);
  objc_allocWithZone(type metadata accessor for JSImpression());
  v33 = v32;
  return JSImpression.init(fields:jsObject:)(v30, v32);
}

uint64_t sub_4A28A4(uint64_t a1, double a2)
{
  type metadata accessor for PrincipalImpressionTracker.History.Event();
  if (sub_AB9850())
  {
    v38 = 0.0;
    v4 = 0;
    v35 = a2;
    v5 = a1 + 40;
    v6 = 0.0;
    v7 = 1;
    v8 = 1;
    v36 = _swiftEmptyArrayStorage;
    v37 = _swiftEmptyArrayStorage;
    while (1)
    {
      v12 = sub_AB97E0();
      sub_AB9790();
      if ((v12 & 1) == 0)
      {
        sub_ABAE10();
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_71;
      }

      v14 = *(v5 - 8);
      v15 = *v5;
      if (!static LaunchURL.Resolver.PerformOption.__derived_enum_equals(_:_:)(v15, 0))
      {
        v9 = static LaunchURL.Resolver.PerformOption.__derived_enum_equals(_:_:)(v15, 1);
        v10 = v14;
        v11 = v38;
        if (v8)
        {
          v10 = v38;
        }

        if (v9)
        {
          v11 = v10;
        }

        v38 = v11;
        if (v9)
        {
          v7 = v8 & v7;
        }

        else
        {
          v7 = v7;
        }

        goto LABEL_10;
      }

      if (v8)
      {
        v8 = 0;
        v6 = v14;
      }

      else if (v7)
      {
        v8 = 0;
        v7 = 1;
      }

      else
      {
        if (v14 - v38 >= 0.0166666667)
        {
          if (v38 - v6 > 0.0166666667)
          {
            v12 = sub_4A36D8(v6, v38);

            v8 = v37;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_6A7D8(0, v37[2] + 1, 1, v37);
            }

            v7 = *(v8 + 16);
            v16 = *(v8 + 24);
            if (v7 >= v16 >> 1)
            {
              v8 = sub_6A7D8((v16 > 1), v7 + 1, 1, v8);
            }

            *(v8 + 16) = v7 + 1;
            *(v8 + 8 * v7 + 32) = v12;
            if (!*(v12 + 16))
            {
              goto LABEL_72;
            }

            v17 = sub_2EBF88(100, 0xE100000000000000);
            if ((v18 & 1) == 0)
            {
              goto LABEL_73;
            }

            if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_74;
            }

            if (a2 <= -1.0)
            {
              goto LABEL_75;
            }

            if (a2 >= 1.84467441e19)
            {
              goto LABEL_76;
            }

            v37 = v8;
            if (*(*(v12 + 56) + 8 * v17) > v35)
            {
              if (!*(v12 + 16))
              {
                goto LABEL_83;
              }

              v19 = sub_2EBF88(115, 0xE100000000000000);
              if ((v20 & 1) == 0)
              {
                goto LABEL_84;
              }

              v34 = *(*(v12 + 56) + 8 * v19);

              v21 = v36;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v21 = sub_6A7C4(0, *(v36 + 2) + 1, 1, v36);
              }

              v23 = *(v21 + 2);
              v22 = *(v21 + 3);
              if (v23 >= v22 >> 1)
              {
                v36 = sub_6A7C4((v22 > 1), v23 + 1, 1, v21);
              }

              else
              {
                v36 = v21;
              }

              v38 = 0.0;
              v8 = 0;
              *(v36 + 2) = v23 + 1;
              *&v36[8 * v23 + 32] = v34;
              goto LABEL_40;
            }
          }

          v38 = 0.0;
          v8 = 0;
LABEL_40:
          v7 = 1;
          v6 = v14;
          goto LABEL_10;
        }

        v38 = 0.0;
        v8 = 0;
        v7 = 1;
      }

LABEL_10:
      ++v4;
      v5 += 16;
      if (v13 == sub_AB9850())
      {
        if (v8)
        {
          v7 = v36;
          v8 = v37;
          if (v37[2])
          {
            goto LABEL_47;
          }

          goto LABEL_44;
        }

        if (v7)
        {
          sub_AB33D0();
          v26 = v25;
        }

        else
        {
          v26 = v38;
        }

        v8 = v37;
        v12 = sub_4A36D8(v6, v26);

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_53:
          v5 = *(v8 + 16);
          v27 = *(v8 + 24);
          if (v5 >= v27 >> 1)
          {
            v8 = sub_6A7D8((v27 > 1), v5 + 1, 1, v8);
          }

          *(v8 + 16) = v5 + 1;
          *(v8 + 8 * v5 + 32) = v12;
          if (*(v12 + 16))
          {
            v28 = sub_2EBF88(100, 0xE100000000000000);
            if (v29)
            {
              if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (a2 > -1.0)
                {
                  if (a2 < 1.84467441e19)
                  {
                    if (*(*(v12 + 56) + 8 * v28) <= v35)
                    {

                      v7 = v36;
                      if (*(v8 + 16))
                      {
                        goto LABEL_47;
                      }

                      goto LABEL_44;
                    }

                    v7 = v36;
                    if (*(v12 + 16))
                    {
                      v30 = sub_2EBF88(115, 0xE100000000000000);
                      if (v31)
                      {
                        v5 = *(*(v12 + 56) + 8 * v30);

                        if (swift_isUniquelyReferenced_nonNull_native())
                        {
                          goto LABEL_64;
                        }

LABEL_87:
                        v7 = sub_6A7C4(0, *(v7 + 16) + 1, 1, v7);
LABEL_64:
                        v33 = *(v7 + 16);
                        v32 = *(v7 + 24);
                        if (v33 >= v32 >> 1)
                        {
                          v7 = sub_6A7C4((v32 > 1), v33 + 1, 1, v7);
                        }

                        *(v7 + 16) = v33 + 1;
                        *(v7 + 8 * v33 + 32) = v5;
                        if (*(v8 + 16))
                        {
                          goto LABEL_47;
                        }

LABEL_44:

                        if (!*(v7 + 16))
                        {
                        }

LABEL_48:
                        v39 = 0x6973736572706D69;
                        v40 = 0xEF73656D69546E6FLL;
                        sub_ABAD10();
                        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDD70);
                        v39 = v7;
                        return sub_2E4B68(&v39, v42);
                      }

LABEL_86:
                      __break(1u);
                      goto LABEL_87;
                    }

LABEL_85:
                    __break(1u);
                    goto LABEL_86;
                  }

LABEL_82:
                  __break(1u);
LABEL_83:
                  __break(1u);
LABEL_84:
                  __break(1u);
                  goto LABEL_85;
                }

LABEL_81:
                __break(1u);
                goto LABEL_82;
              }

LABEL_80:
              __break(1u);
              goto LABEL_81;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_80;
        }

LABEL_77:
        v8 = sub_6A7D8(0, *(v8 + 16) + 1, 1, v8);
        goto LABEL_53;
      }
    }
  }

  v8 = _swiftEmptyArrayStorage;
  v7 = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_44;
  }

LABEL_47:
  v40 = 0xEA00000000006F66;
  sub_ABAD10();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDD78);
  v39 = v8;
  sub_2E4B68(&v39, v42);
  if (*(v7 + 16))
  {
    goto LABEL_48;
  }
}

uint64_t sub_4A2F4C()
{
  type metadata accessor for UnfairLock();
  swift_allocObject();
  result = UnfairLock.init()();
  qword_E0A758 = result;
  return result;
}

void sub_4A2F8C()
{
  if (__OFADD__(qword_E0A760, 1))
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  if (qword_E0A760 != 0x7FFFFFFFFFFFFFFELL)
  {
    ++qword_E0A760;
    return;
  }

  qword_E0A760 = 0;
  if (qword_DE6888 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v0 = sub_AB4BC0();
  __swift_project_value_buffer(v0, qword_E70EB0);
  v1 = sub_AB4BA0();
  v2 = sub_AB9F30();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Coordinator ID reached maximum value.  Reset to zero to avoid overflow.", v3, 2u);
  }
}

uint64_t sub_4A3098(void *a1, char a2, void *a3)
{
  v42 = a1[2];
  if (!v42)
  {
  }

  v6 = a1[4];
  v5 = a1[5];
  v7 = *a3;
  v8 = sub_2F5A90(v6);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = v8;
  v14 = v9;
  v15 = v7[3];
  v16 = v5;
  if (v15 >= v12)
  {
    if (a2)
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_330E04();
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_29;
  }

  sub_327138(v12, a2 & 1);
  v17 = sub_2F5A90(v6);
  if ((v14 & 1) != (v18 & 1))
  {
LABEL_28:
    sub_ABB4C0();
    __break(1u);
LABEL_29:
    sub_ABAD90(30);
    v44._object = 0x8000000000B5D6F0;
    v44._countAndFlagsBits = 0xD00000000000001BLL;
    sub_AB94A0(v44);
    sub_ABAF70();
    v45._countAndFlagsBits = 39;
    v45._object = 0xE100000000000000;
    sub_AB94A0(v45);
    result = sub_ABAFD0();
    __break(1u);
    return result;
  }

  v13 = v17;
  if (v14)
  {
    goto LABEL_9;
  }

LABEL_12:
  v20 = *a3;
  *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
  *(v20[6] + 8 * v13) = v6;
  *(v20[7] + 8 * v13) = v16;
  v21 = v20[2];
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20[2] = v23;
  if (v42 != 1)
  {
    v24 = (a1 + 7);
    v25 = 1;
    while (v25 < a1[2])
    {
      v27 = *(v24 - 1);
      v26 = *v24;
      v28 = *a3;
      v29 = sub_2F5A90(v27);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        goto LABEL_25;
      }

      v34 = v29;
      v35 = v30;
      v36 = v28[3];
      v16 = v26;
      if (v36 < v33)
      {
        sub_327138(v33, 1);
        v37 = sub_2F5A90(v27);
        if ((v35 & 1) != (v38 & 1))
        {
          goto LABEL_28;
        }

        v34 = v37;
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v34 >> 6) + 64) |= 1 << v34;
      *(v39[6] + 8 * v34) = v27;
      *(v39[7] + 8 * v34) = v16;
      v40 = v39[2];
      v22 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v22)
      {
        goto LABEL_26;
      }

      ++v25;
      v39[2] = v41;
      v24 += 2;
      if (v42 == v25)
      {
      }
    }

    goto LABEL_27;
  }
}

void *sub_4A340C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v25 = _swiftEmptyArrayStorage;
    v4 = a1;

    sub_6D4F0(0, 0, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = v4;
    v24 = v6;
    sub_4A1D7C(&v24, &v23);

    v7 = v23;
    v9 = _swiftEmptyArrayStorage[2];
    v8 = _swiftEmptyArrayStorage[3];
    if (v9 >= v8 >> 1)
    {
      sub_6D4F0((v8 > 1), v9 + 1, 1);
      v5 = v25;
    }

    v5[2] = v9 + 1;
    v5[v9 + 4] = v7;
    v22 = a1;
    for (i = a1; ; i = v12)
    {
      v11 = i;
      sub_4A1C70(&v22, a2, &v23);

      v12 = v23;
      v13 = v23;

      if (!v12)
      {
        break;
      }

      v24 = v13;
      sub_4A1D7C(&v24, &v23);

      v14 = v23;
      v25 = v5;
      v16 = v5[2];
      v15 = v5[3];
      if (v16 >= v15 >> 1)
      {
        sub_6D4F0((v15 > 1), v16 + 1, 1);
        v5 = v25;
      }

      v5[2] = v16 + 1;
      v5[v16 + 4] = v14;
      v22 = v12;
    }
  }

  else
  {
    if (qword_DE6888 != -1)
    {
      swift_once();
    }

    v17 = sub_AB4BC0();
    __swift_project_value_buffer(v17, qword_E70EB0);
    v18 = sub_AB4BA0();
    v19 = sub_AB9F10();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "No clicked element was found. Please verify that the clicked element is tracked in the impression hierarchy", v20, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  return v5;
}

void *sub_4A365C(uint64_t a1, unint64_t a2)
{
  v3 = sub_4A19BC(a2);
  if (*(v3 + 16) && (v4 = sub_2F5A90(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    v7 = v6;
  }

  else
  {
    v6 = 0;
  }

  v8 = sub_4A340C(v6, v3);

  return v8;
}

uint64_t sub_4A36D8(double a1, double a2)
{
  v17 = sub_AB9020();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA850);
  sub_AB9030(3);
  v4 = Double.toMillisecondsInServerTime.getter(a1);
  v5 = Double.toMillisecondsInServerTime.getter(a2);
  v6 = v5 - v4;
  if (v5 >= v4)
  {
    v13 = v17;
  }

  else
  {
    v7 = v5;
    if (qword_DE6888 != -1)
    {
      swift_once();
    }

    v8 = sub_AB4BC0();
    __swift_project_value_buffer(v8, qword_E70EB0);
    v9 = sub_AB4BA0();
    v10 = sub_AB9F30();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134218240;
      *(v11 + 4) = a2;
      *(v11 + 12) = 2048;
      *(v11 + 14) = a1;
      _os_log_impl(&dword_0, v9, v10, "Overflow detected when subtracting %f %f. Reporting truncated duration value", v11, 0x16u);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_95214(v7, 101, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
    v13 = v17;
  }

  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_95214(v4, 115, 0xE100000000000000, v14);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_95214(v6, 100, 0xE100000000000000, v15);
  return v13;
}

uint64_t sub_4A38E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 32))(*a1, a1[1], a1[2]);
  *a2 = result;
  return result;
}

uint64_t sub_4A3934(uint64_t result)
{
  if (*(v1 + 81) != 1)
  {
    return result;
  }

  v2 = v1;
  v3 = result;
  v4 = sub_4A3ECC();
  if (*v5)
  {
    sub_1A5B0(v18, v3);
  }

  (v4)(v19, 0);
  result = swift_beginAccess();
  v6 = *(v1 + 112);
  if (!*(v6 + 16))
  {
    return result;
  }

  result = sub_2F5A90(v3);
  if ((v7 & 1) == 0)
  {
    return result;
  }

  v8 = *(*(v6 + 56) + 8 * result);
  v9 = *(v8 + 88);
  if (*(v8 + 144))
  {
    v10 = *(v8 + 16);
  }

  else
  {
    v10 = 0;
  }

  if (*(v8 + 144))
  {
    v11 = *(v8 + 24);
  }

  else
  {
    v11 = 0;
  }

  if (v9)
  {
    v12 = (v9 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v10 = *v12;
    v11 = v12[1];
  }

  else if (!v11)
  {
    v18[0] = *(v8 + 56);

    v10 = sub_ABB330();
    v11 = v17;
    goto LABEL_16;
  }

LABEL_16:
  swift_beginAccess();
  v13 = *(v2 + 104);
  if (*(v13 + 16))
  {

    v14 = sub_2EBF88(v10, v11);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 8 * v14);

      *(v16 + 193) = 1;
    }
  }

  else
  {
  }
}

uint64_t sub_4A3B1C(uint64_t a1, uint64_t (*a2)(_BYTE *))
{
  v4 = v2;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0B488);
  result = __chkstk_darwin(v10 - 8);
  v13 = v33 - v12;
  if (*(v2 + 81) == 1)
  {
    v14 = a2(v34);
    if (*v15)
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0B490);
      v17 = *(v16 + 48);
      (*(v7 + 16))(v9, a1, v6);
      v18 = sub_1C47C(&v13[v17], v9);
      v14(v34, 0);
      *v13 = v18 & 1;
      (*(*(v16 - 8) + 56))(v13, 0, 1, v16);
    }

    else
    {
      v14(v34, 0);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0B490);
      (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
    }

    sub_12E1C(v13, &qword_E0B488);
    result = swift_beginAccess();
    v20 = *(v4 + 112);
    if (*(v20 + 16))
    {

      v21 = sub_2EC048(a1);
      if ((v22 & 1) == 0)
      {
      }

      v23 = *(*(v20 + 56) + 8 * v21);

      v24 = *(v23 + 88);
      if (*(v23 + 144))
      {
        v25 = *(v23 + 16);
      }

      else
      {
        v25 = 0;
      }

      if (*(v23 + 144))
      {
        v26 = *(v23 + 24);
      }

      else
      {
        v26 = 0;
      }

      if (v24)
      {
        v27 = (v24 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
        v25 = *v27;
        v26 = v27[1];
      }

      else if (!v26)
      {
        v33[1] = *(v23 + 56);
        v25 = sub_ABB330();
        v26 = v32;
LABEL_18:
        swift_beginAccess();
        v28 = *(v4 + 104);
        if (*(v28 + 16))
        {

          v29 = sub_2EBF88(v25, v26);
          if (v30)
          {
            v31 = *(*(v28 + 56) + 8 * v29);

            *(v31 + 193) = 1;
          }
        }

        else
        {
        }
      }

      goto LABEL_18;
    }
  }

  return result;
}

id sub_4A3F1C()
{
  v1 = qword_DFE2B8;
  v2 = *(v0 + qword_DFE2B8);
  if (v2)
  {
    v3 = *(v0 + qword_DFE2B8);
  }

  else
  {
    v4 = sub_4A3F7C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_4A3F7C()
{
  if (qword_DE6838 != -1)
  {
    swift_once();
  }

  v7[5] = v0;
  v1 = qword_E70E48;
  v2 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0B478);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v7);
    if (qword_DE6830 != -1)
    {
      swift_once();
    }

    v3 = qword_E70E40;
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v5 = v1;
    *&v2[qword_DFE2B0] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v3, v1, 1, 1, sub_4BE4EC, v4);
  }

  return v1;
}

void sub_4A4110()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2F8138();
  }
}

id sub_4A4164()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v1 - 8);
  v63 = v54 - v2;
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v62 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v61 = v54 - v8;
  v9 = qword_DFE308;
  v10 = *(v0 + qword_DFE308);
  if (v10)
  {
    v11 = (*&stru_158.sectname[swift_isaMask & *v0])(v7);
    v12 = *(v10 + 96);
    *(v10 + 96) = v11;

    v13 = *(v0 + v9);
    if (v13)
    {
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = *(v13 + 64);
      *(v13 + 64) = sub_4BE3C0;
      *(v13 + 72) = v14;

      sub_17654(v15);

      v16 = *(v0 + v9);
      if (v16)
      {
        v17 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v18 = *(v16 + 48);
        *(v16 + 48) = sub_4BE3C8;
        *(v16 + 56) = v17;

        sub_17654(v18);

        v19 = *(v0 + v9);
        if (v19)
        {
          v20 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v21 = *(v19 + 32);
          *(v19 + 32) = sub_4BE3D0;
          *(v19 + 40) = v20;

          sub_17654(v21);
        }
      }
    }
  }

  result = [v0 isViewLoaded];
  if (result)
  {
    v23 = *(v0 + v9);
    if (v23)
    {
      v24 = v23[11];

      v25 = [v24 indexPathsForVisibleItems];
      v26 = sub_AB9760();

      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = *(v4 + 16);
        v29 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v54[1] = v26;
        v30 = v26 + v29;
        v65 = *(v4 + 72);
        v66 = v28;
        v31 = (v4 + 48);
        v58 = (v4 + 32);
        v64 = (v4 + 8);
        v32 = v4 + 16;
        v59 = (v32 + 40);
        v60 = v31;
        v33 = v61;
        v28(v61, v30, v3);
        while (1)
        {
          v34 = v23[6];
          if (!v34 || (, v35 = v34(v23, v33), v37 = v36, sub_17654(v34), !v35))
          {
            (*v64)(v33, v3);
            goto LABEL_11;
          }

          v38 = v23[8];
          if (!v38)
          {
            break;
          }

          v39 = v32;

          v40 = v3;
          v41 = v63;
          v38(v23, v35, v37);
          v42 = v38;
          v43 = v41;
          v3 = v40;
          sub_17654(v42);
          if ((*v60)(v43, 1, v40) == 1)
          {
            v44 = v61;
            (*v64)(v61, v40);
            v32 = v39;
            v33 = v44;
LABEL_19:
            sub_12E1C(v43, &unk_DE8E20);
LABEL_25:
            swift_unknownObjectRelease();
            goto LABEL_11;
          }

          (*v58)(v62, v43, v40);
          v45 = v23[4];
          v32 = v39;
          if (!v45 || (, v46 = v45(v62), sub_17654(v45), !v46))
          {
            ObjectType = swift_getObjectType();
            (*(v37 + 16))(0, 0, ObjectType, v37);
            (*(v37 + 32))(0, 0, ObjectType, v37);
            v50 = *v64;
            (*v64)(v62, v3);
            v33 = v61;
            v50(v61, v3);
            goto LABEL_25;
          }

          v47 = v62;
          v56 = v46;
          v57 = [v46 relativeModelObjectForStoreLibraryPersonalization];
          if (v57)
          {
            swift_unknownObjectRetain();
            v55 = v23;
            v48 = &off_CF2AC8;
          }

          else
          {
            v55 = 0;
            v48 = 0;
          }

          v51 = v47;
          v52 = swift_getObjectType();
          (*(v37 + 16))(v55, v48, v52, v37);
          (*(v37 + 32))(v57, 0, v52, v37);
          v53 = *v64;
          (*v64)(v51, v3);
          v33 = v61;
          v53(v61, v3);
          swift_unknownObjectRelease();

LABEL_11:
          v30 += v65;
          if (!--v27)
          {
          }

          v66(v33, v30, v3);
        }

        (*v64)(v33, v3);
        v43 = v63;
        (*v59)(v63, 1, 1, v3);
        goto LABEL_19;
      }
    }
  }

  return result;
}

void sub_4A48A0(uint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v25 - v8;
  v10 = sub_AB3820();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    (*(v11 + 56))(a2, 1, 1, v10);
    return;
  }

  v15 = v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v22 = *(v11 + 56);
    v22(v9, 1, 1, v10);
    swift_unknownObjectRetain();
LABEL_10:
    sub_12E1C(v9, &unk_DE8E20);
    swift_unknownObjectRelease();
    v22(a2, 1, 1, v10);
    return;
  }

  v17 = Strong;
  v25[1] = a1;
  swift_unknownObjectRetain();
  [v17 loadViewIfNeeded];
  v18 = *&v17[qword_DFE2F8];
  if (v18)
  {
    v19 = v18;

    v20 = [v19 indexPathForCell:v15];
    if (v20)
    {
      sub_AB3790();

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v22 = *(v11 + 56);
    v22(v7, v21, 1, v10);
    sub_1766C(v7, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      goto LABEL_10;
    }

    (*(v11 + 32))(v13, v9, v10);
    swift_beginAccess();
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v24 = v23;
      (*&stru_1F8.segname[(swift_isaMask & *v23) + 16])(v13);
      (*(v11 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      (*(v11 + 8))(v13, v10);
      v22(a2, 1, 1, v10);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

void *sub_4A4C5C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    (*&stru_1F8.segname[(swift_isaMask & *result) + 16])(a2);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_12E1C(v5, &unk_DE8E20);
    }

    else
    {
      v12 = (*(v7 + 32))(v9, v5, v6);
      v13 = (*&stru_158.sectname[swift_isaMask & *v11])(v12);
      if (v13 && (v14 = v13, v15 = [v13 results], v14, v15))
      {
        v16 = [v15 numberOfSections];
        if (sub_AB37F0() >= v16 || (v17 = [v15 numberOfItemsInSection:sub_AB37F0()], sub_AB37E0() >= v17))
        {
          (*(v7 + 8))(v9, v6);
        }

        else
        {
          isa = sub_AB3770().super.isa;
          v19 = [v15 itemAtIndexPath:isa];

          v20 = [v19 relativeModelObjectForStoreLibraryPersonalization];
          if (v20)
          {
            v21 = v20;
            swift_unknownObjectRelease();
            if ((*(&stru_248.size + (swift_isaMask & *v11)))(v21, v9))
            {
              result = [v11 loadViewIfNeeded];
              v22 = *(v11 + qword_DFE2F8);
              if (!v22)
              {
                __break(1u);
                return result;
              }

              v23 = v22;
              v24 = sub_AB3770().super.isa;
              v25 = [v23 cellForItemAtIndexPath:v24];
              (*(v7 + 8))(v9, v6);

              if (v25)
              {
                swift_getObjectType();
                v26 = swift_conformsToProtocol2();

                if (v26)
                {
                  return v25;
                }

                return 0;
              }
            }

            else
            {
              (*(v7 + 8))(v9, v6);
            }
          }

          else
          {
            (*(v7 + 8))(v9, v6);

            swift_unknownObjectRelease();
          }
        }
      }

      else
      {
        (*(v7 + 8))(v9, v6);
      }
    }

    return 0;
  }

  return result;
}

id sub_4A50FC(uint64_t a1)
{
  v1[qword_E0A768] = 1;
  v1[qword_E0A770] = 0;
  *&v1[qword_E0A778] = 0;
  *&v1[qword_E0A780] = 0;
  *&v1[qword_E0A788] = 0;
  v2 = &v1[qword_E0A798];
  *v2 = 0;
  v2[1] = 0;
  *&v1[qword_E0A7A0] = 0;
  v3 = &v1[qword_E0A7A8];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = &v1[qword_E0A7B0];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = &v1[qword_E0A7B8];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = &v1[qword_E0A7C0];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = &v1[qword_E0A7C8];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = &v1[qword_E0A7D0];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = &v1[qword_E0A7D8];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = &v1[qword_E0A7E0];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = &v1[qword_E0A7E8];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = &v1[qword_E0A7F0];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = &v1[qword_E0A7F8];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = &v1[qword_E0A800];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = &v1[qword_E0A808];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = &v1[qword_E0A810];
  *v16 = 0;
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = &v1[qword_E0A818];
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = &v1[qword_E0A820];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = 1;
  v1[qword_E0A828] = 2;
  *&v1[qword_E0A830] = 0;
  *&v1[qword_E0A838] = 0;
  *&v1[qword_E0A840] = 0;
  *&v1[qword_E0A848] = 0;
  v1[qword_E0A850] = 2;
  v1[qword_E0A858] = 3;
  v19 = &v1[qword_E0A860];
  *v19 = 0xD000000000000015;
  v19[1] = 0x8000000000B48DF0;
  *&v1[qword_E0A790] = a1;
  v21.receiver = v1;
  v21.super_class = type metadata accessor for JSGridViewController();
  return objc_msgSendSuper2(&v21, "init");
}

id sub_4A5394()
{
  swift_beginAccess();

  v0 = sub_AB9260();

  return v0;
}

Class sub_4A5424()
{
  v0 = JSViewModel.playActivityRecommendationData.getter();
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v3 = v0;
    v4 = v1;
    isa = sub_AB3250().super.isa;
    sub_466A4(v3, v4);
    v2 = isa;
  }

  return v2;
}

id sub_4A549C()
{
  v1 = v0;
  v27.receiver = v0;
  v27.super_class = type metadata accessor for JSGridViewController();
  objc_msgSendSuper2(&v27, "viewDidLoad");
  sub_3B4C14(1);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  v4 = [v1 viewBackgroundColor];
  [v3 setBackgroundColor:v4];

  result = [v1 loadViewIfNeeded];
  v5 = *&v1[qword_DFE2F8];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *&v1[qword_DFE2F0];
  type metadata accessor for CollectionViewArtworkVideoPlaybackController(0);
  swift_allocObject();
  v7 = v6;
  v8 = sub_389BA0(v5, v6);
  v9 = sub_4B28CC();
  v10 = *(v8 + 56);
  *(v9 + 80) = v10;
  swift_retain_n();
  if (v10 == 1)
  {
    *(v9 + 144) = 1;
  }

  swift_retain_n();

  v11 = [v1 traitCollection];
  v12 = [v11 horizontalSizeClass];

  *(v8 + 224) = v12 == &dword_0 + 2;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = *(v8 + 40);
  *(v8 + 40) = sub_4BEF84;
  *(v8 + 48) = v13;

  sub_17654(v14);

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = *(v8 + 80);
  *(v8 + 80) = sub_4BEF8C;
  *(v8 + 88) = v15;
  sub_17654(v16);

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = *(v8 + 96);
  *(v8 + 96) = sub_4BEF94;
  *(v8 + 104) = v17;
  sub_17654(v18);

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = *(v8 + 112);
  *(v8 + 112) = sub_4BEF9C;
  *(v8 + 120) = v19;
  sub_17654(v20);

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = *(v8 + 64);
  *(v8 + 64) = sub_4BEFA4;
  *(v8 + 72) = v21;
  sub_17654(v22);

  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = *(v8 + 128);
  *(v8 + 128) = sub_4BEFAC;
  *(v8 + 136) = v23;
  sub_17654(v24);

  *&v1[qword_E0A788] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E087F0);
  swift_allocObject();
  v25 = ArtworkVideoReportingController.init()();
  (*(*v25 + 136))(*(v8 + 56));
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(*v25 + 160))(sub_3E01FC, v26);

  *&v1[qword_E0A7A0] = v25;
}

uint64_t sub_4A58D8(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[qword_E0A7A0];
    if (v4)
    {

      (*(*v4 + 136))(a1 & 1);
    }

    else
    {
    }
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_4B28CC();

    *(v7 + 80) = a1 & 1;
    if (a1)
    {
      *(v7 + 144) = 1;
    }
  }

  return result;
}

void sub_4A59D0(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *&Strong[qword_E0A7A0];
    if (v6)
    {

      (*(*v6 + 192))(a1, a2 & 1);
    }

    else
    {
    }
  }
}

uint64_t sub_4A5A88(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[qword_E0A7A0];
    if (v4)
    {

      (*(*v4 + 216))(a1);
    }

    else
    {
    }
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_4B28CC();

    sub_4A3B1C(a1, sub_1287E8);
  }

  return result;
}

void sub_4A5B8C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[qword_E0A7A0];
    if (v4)
    {

      (*(*v4 + 224))(a1);
    }

    else
    {
    }
  }
}

void sub_4A5C38(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[qword_E0A7A0];
    if (v4)
    {

      (*(*v4 + 200))(a1);
    }

    else
    {
    }
  }
}

void sub_4A5CE4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[qword_E0A7A0];
    if (v4)
    {

      (*(*v4 + 208))(a1);
    }

    else
    {
    }
  }
}

void sub_4A5D90(void *a1)
{
  v1 = a1;
  sub_4A549C();
}

void sub_4A5DD8(int a1, char *a2)
{
  [a2 loadViewIfNeeded];
  v3 = *&a2[qword_DFE2F8];
  if (v3)
  {
    v4 = [v3 collectionViewLayout];
    sub_4B8734(v4, 1);
  }

  else
  {
    __break(1u);
  }
}

void sub_4A5E58(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v13.receiver = a1;
  v13.super_class = type metadata accessor for JSGridViewController();
  swift_unknownObjectRetain();
  v8 = v13.receiver;
  objc_msgSendSuper2(&v13, "viewWillTransitionToSize:withTransitionCoordinator:", a5, a2, a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v12[4] = sub_4BEF7C;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_CF24C;
  v12[3] = &block_descriptor_273;
  v10 = _Block_copy(v12);
  v11 = v8;

  [a5 animateAlongsideTransition:0 completion:v10];
  _Block_release(v10);
  swift_unknownObjectRelease();
}

void sub_4A5F94(void *a1)
{
  v2 = v1;
  v47 = sub_AB3820();
  v50 = *(v47 - 8);
  __chkstk_darwin(v47);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for JSGridViewController();
  v51.receiver = v2;
  v51.super_class = v6;
  objc_msgSendSuper2(&v51, "traitCollectionDidChange:", a1);
  if ([v2 isViewLoaded])
  {
    v7 = [v2 traitCollection];
    v8 = [v7 horizontalSizeClass];

    if (!a1 || v8 != [a1 horizontalSizeClass])
    {
      goto LABEL_8;
    }

    v9 = [v2 traitCollection];
    v10 = [v9 preferredContentSizeCategory];

    v11 = [a1 preferredContentSizeCategory];
    v12 = sub_AB92A0();
    v14 = v13;
    if (v12 == sub_AB92A0() && v14 == v15)
    {

      return;
    }

    v16 = sub_ABB3C0();

    if ((v16 & 1) == 0)
    {
LABEL_8:
      [v2 loadViewIfNeeded];
      v46 = qword_DFE2F8;
      v17 = *&v2[qword_DFE2F8];
      if (!v17)
      {
        goto LABEL_35;
      }

      v18 = [v17 collectionViewLayout];
      sub_4B8734(v18, 1);
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19)
      {
        v20 = v19;
        v21 = v18;
        sub_4A8388(v20);
      }

      [v2 loadViewIfNeeded];
      v22 = v47;
      v23 = *&v2[v46];
      if (v23)
      {
        v24 = v23;
        v25 = [v24 indexPathsForVisibleItems];
        v26 = sub_AB9760();

        v27 = *(v26 + 16);
        if (v27)
        {
          v28 = 0;
          v48 = v26 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
          v49 = qword_DFE2F0;
          v29 = (v50 + 8);
          while (1)
          {
            if (v28 >= *(v26 + 16))
            {
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

            (*(v50 + 16))(v5, v48 + *(v50 + 72) * v28, v22);
            if (!*&v2[v49])
            {
              goto LABEL_25;
            }

            type metadata accessor for JSGridModelResponse();
            v30 = swift_dynamicCastClass();
            if (!v30)
            {
              goto LABEL_25;
            }

            v31 = [v30 results];
            if (!v31)
            {
              goto LABEL_33;
            }

            v32 = v31;
            v33 = [v31 sectionAtIndex:sub_AB37F0()];

            if (!v33)
            {
              goto LABEL_25;
            }

            objc_opt_self();
            v34 = swift_dynamicCastObjCClass();
            if (!v34)
            {
              break;
            }

            v35 = [v34 uniformCellType];
            swift_unknownObjectRelease();
            if (v35 != &dword_4 + 3)
            {
              goto LABEL_25;
            }

            [v2 loadViewIfNeeded];
            v36 = *&v2[v46];
            if (!v36)
            {
              goto LABEL_34;
            }

            v37 = v2;
            v38 = v36;
            isa = sub_AB3770().super.isa;
            v40 = [v38 cellForItemAtIndexPath:isa];

            v2 = v37;
            v22 = v47;
            if (!v40)
            {
              goto LABEL_25;
            }

            sub_4B8D60();
            (*v29)(v5, v22);

LABEL_26:
            if (v27 == ++v28)
            {
              goto LABEL_27;
            }
          }

          swift_unknownObjectRelease();
LABEL_25:
          (*v29)(v5, v22);
          goto LABEL_26;
        }

LABEL_27:

        v41 = qword_E0A788;
        v42 = *&v2[qword_E0A788];
        if (v42)
        {

          v43 = [v2 traitCollection];
          v44 = [v43 horizontalSizeClass];

          *(v42 + 224) = v44 == &dword_0 + 2;

          if (*&v2[v41])
          {

            sub_38AC10();
          }
        }
      }

      else
      {
LABEL_36:
        __break(1u);
      }
    }
  }
}

void sub_4A64E8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_4A5F94(a3);
}

void sub_4A6554()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for JSGridViewController();
  objc_msgSendSuper2(&v5, "viewDidLayoutSubviews");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    sub_4B2F58(v3, v4);

    if (*&v0[qword_E0A788])
    {

      sub_38AC10();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_4A65F8(void *a1)
{
  v1 = a1;
  sub_4A6554();
}

void sub_4A6640(void *a1)
{
  v4.receiver = a1;
  v4.super_class = type metadata accessor for JSGridViewController();
  v1 = v4.receiver;
  objc_msgSendSuper2(&v4, "music_viewInheritedLayoutInsetsDidChange");
  [v1 loadViewIfNeeded];
  v2 = *&v1[qword_DFE2F8];
  if (v2)
  {
    v3 = [v2 collectionViewLayout];
    sub_4B8734(v3, 1);
  }

  else
  {
    __break(1u);
  }
}

void sub_4A66E4()
{
  v1 = v0;
  v2 = sub_AB3820();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v1 isViewLoaded])
  {
    return;
  }

  [v1 loadViewIfNeeded];
  v31 = qword_DFE2F8;
  v6 = *&v1[qword_DFE2F8];
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = v6;
  v30 = "";
  v8 = sub_AB9260();
  v9 = [v7 indexPathsForVisibleSupplementaryElementsOfKind:v8];

  v10 = sub_AB9760();
  v29 = *(v10 + 16);
  if (!v29)
  {
LABEL_15:

    return;
  }

  v11 = 0;
  v28 = v3 + 16;
  v26 = qword_E0A768;
  v27 = (v3 + 8);
  while (v11 < *(v10 + 16))
  {
    v12 = v10;
    v13 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11;
    v14 = v2;
    (*(v3 + 16))(v5, v13, v2);
    [v1 loadViewIfNeeded];
    v15 = *&v1[v31];
    if (!v15)
    {
      goto LABEL_18;
    }

    v16 = v1;
    v17 = v15;
    v18 = sub_AB9260();
    isa = sub_AB3770().super.isa;
    v20 = [v17 supplementaryViewForElementKind:v18 atIndexPath:isa];

    if (v20)
    {
      type metadata accessor for TitleSectionHeaderView();
      v21 = swift_dynamicCastClass();
      if (v21)
      {
        v22 = v21;
        v23 = v16[v26];
        v24 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_isTopHairlineVisible;
        swift_beginAccess();
        v22[v24] = v23;
        if (v23 != v22[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__isTopHairlineVisible])
        {
          v22[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__isTopHairlineVisible] = v23;
          [v22 setNeedsLayout];
        }

        v2 = v14;
        (*v27)(v5, v14);

        goto LABEL_7;
      }
    }

    v2 = v14;
    (*v27)(v5, v14);
LABEL_7:
    v1 = v16;
    ++v11;
    v10 = v12;
    if (v29 == v11)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_4A6A1C()
{
  v1 = v0;
  v2 = sub_AB3820();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v1 isViewLoaded])
  {
    return;
  }

  v29 = v2;
  [v1 loadViewIfNeeded];
  v34 = qword_DFE2F8;
  v6 = *&v1[qword_DFE2F8];
  if (!v6)
  {
    goto LABEL_30;
  }

  v7 = v6;
  v33 = "";
  v8 = sub_AB9260();
  v9 = [v7 indexPathsForVisibleSupplementaryElementsOfKind:v8];

  v10 = v29;
  v11 = sub_AB9760();

  v32 = *(v11 + 16);
  if (!v32)
  {
LABEL_25:

    return;
  }

  v12 = 0;
  v28 = qword_E0A770;
  v30 = (v3 + 8);
  v31 = v3 + 16;
  while (v12 < *(v11 + 16))
  {
    v13 = v11;
    (*(v3 + 16))(v5, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v10);
    [v1 loadViewIfNeeded];
    v14 = *&v1[v34];
    if (!v14)
    {
      goto LABEL_28;
    }

    v15 = v14;
    v16 = sub_AB9260();
    isa = sub_AB3770().super.isa;
    v18 = [v15 supplementaryViewForElementKind:v16 atIndexPath:isa];

    if (!v18)
    {
      goto LABEL_6;
    }

    type metadata accessor for TitleSectionHeaderView();
    v19 = swift_dynamicCastClass();
    if (!v19)
    {

LABEL_6:
      (*v30)(v5, v10);
      goto LABEL_7;
    }

    v20 = v1[v28];
    if (v20)
    {
      v21 = 2;
    }

    else
    {
      v21 = 1;
    }

    v22 = v19 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_compactLayoutStyle;
    swift_beginAccess();
    v23 = *v22;
    if (v20)
    {
      v24 = v23 ^ 2;
    }

    else
    {
      v24 = v23 ^ 1;
    }

    if (*(v22 + 16))
    {
      v25 = (v24 | *(v22 + 8)) == 0;
    }

    else
    {
      v25 = 0;
    }

    if (v25)
    {
      v10 = v29;
      (*v30)(v5, v29);
    }

    else
    {
      *v22 = v21;
      *(v22 + 8) = 0;
      *(v22 + 16) = 1;
      sub_1846A0();
      [v1 loadViewIfNeeded];
      v26 = *&v1[v34];
      v10 = v29;
      if (!v26)
      {
        goto LABEL_29;
      }

      v27 = [v26 collectionViewLayout];
      sub_4B8734(v27, 1);
      (*v30)(v5, v10);
    }

LABEL_7:
    ++v12;
    v11 = v13;
    if (v32 == v12)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_4A6DD8(void *a1)
{
  sub_3B316C(a1);
  v3 = [v1 viewBackgroundColor];
  [a1 setBackgroundColor:v3];

  [a1 setAlwaysBounceVertical:0];
  [a1 setAlwaysBounceHorizontal:0];
  [a1 setShowsHorizontalScrollIndicator:0];
  [a1 setShowsVerticalScrollIndicator:0];
  type metadata accessor for PlaylistCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for AlbumCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for RadioStationCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for TVShowCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for RankedMusicVideoVerticalCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for FeaturedMusicVideoVerticalCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for SongCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for PersonVerticalCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for PersonHorizontalCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for CuratorActivityCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for RadioShowCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for CustomRoomAlbumCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for CustomRoomMusicVideoCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for GridItemButtonCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for TVShowEpisodeCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for SocialPersonHorizontalCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for ShowcaseCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for FeaturedRadioShowCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for PosterCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  sub_13C80(0, &qword_DFE230);
  UICollectionView.register<A>(_:reuseIdentifier:)();
  type metadata accessor for TitleSectionHeaderView();
  sub_AB92A0();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

  type metadata accessor for SocialProfilesAccessoryView();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();
}

void sub_4A73A8()
{
  if ([v0 isViewLoaded])
  {

    sub_4B8938();
  }
}

id sub_4A73E8()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = UITraitCollection.isMediaPicker.getter();

  if (v3)
  {
    return 0;
  }

  v5 = *&v1[qword_DFE2F0];
  if (!v5)
  {
    return &dword_0 + 1;
  }

  result = [v5 results];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = [result sectionAtIndex:sub_AB37F0()];

  if (!v7)
  {
    return &dword_0 + 1;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8 && [v8 uniformCellType] != &dword_4 + 1)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass() != 0;
  }

  else
  {
    v9 = 1;
  }

  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_4A7520(uint64_t a1)
{
  v2 = qword_DFE308;
  *(v1 + qword_DFE308) = a1;

  sub_4A4164();

  v4 = *(v1 + v2);
  if (v4)
  {
    *(v4 + 24) = &off_D16BE0;

    return swift_unknownObjectWeakAssign();
  }

  return result;
}

void sub_4A75B0()
{
  v1 = *(v0 + qword_E0A790);
  v2 = type metadata accessor for JSGridModelRequest();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC16MusicApplication18JSGridModelRequest_gridViewModel] = v1;
  v81.receiver = v3;
  v81.super_class = v2;
  v4 = v1;
  v5 = objc_msgSendSuper2(&v81, "init");
  sub_13C80(0, &qword_E0B480);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = v5;
  v9 = [v7 kindWithModelClass:ObjCClassFromMetadata];
  [v8 setSectionKind:v9];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_AF8820;
  *(v10 + 32) = sub_AB92A0();
  *(v10 + 40) = v11;
  *(v10 + 48) = sub_AB92A0();
  *(v10 + 56) = v12;
  *(v10 + 64) = sub_AB92A0();
  *(v10 + 72) = v13;
  isa = sub_AB9740().super.isa;
  v15 = [objc_opt_self() propertySetWithProperties:isa];

  v78 = v8;
  [v8 setSectionProperties:v15];

  sub_13C80(0, &qword_DFC880);
  v16 = [v7 kindWithModelClass:swift_getObjCClassFromMetadata()];
  [v8 setItemKind:v16];

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_B122D0;
  *(v17 + 32) = sub_AB92A0();
  *(v17 + 40) = v18;
  *(v17 + 48) = sub_AB92A0();
  *(v17 + 56) = v19;
  *(v17 + 64) = sub_AB92A0();
  *(v17 + 72) = v20;
  *(v17 + 80) = sub_AB92A0();
  *(v17 + 88) = v21;
  *(v17 + 96) = sub_AB92A0();
  *(v17 + 104) = v22;
  *(v17 + 112) = sub_AB92A0();
  *(v17 + 120) = v23;
  *(v17 + 128) = sub_AB92A0();
  *(v17 + 136) = v24;
  *(v17 + 144) = sub_AB92A0();
  *(v17 + 152) = v25;
  *(v17 + 160) = sub_AB92A0();
  *(v17 + 168) = v26;
  *(v17 + 176) = sub_AB92A0();
  *(v17 + 184) = v27;
  *(v17 + 192) = sub_AB92A0();
  *(v17 + 200) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  v76 = inited;
  v77 = inited + 32;
  *(inited + 40) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_AF4EC0;
  *(v31 + 32) = sub_AB92A0();
  *(v31 + 40) = v32;
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_B122E0;
  *(v33 + 32) = sub_AB92A0();
  *(v33 + 40) = v34;
  v35 = sub_3DB858();
  sub_13C80(0, &qword_DE8E90);
  v36 = sub_2BAFF8();
  v37 = [v35 propertySetByCombiningWithPropertySet:v36];

  *(v33 + 48) = v37;
  *(v33 + 56) = sub_AB92A0();
  *(v33 + 64) = v38;
  v39 = sub_3DB858();
  v40 = sub_2BAFF8();
  v41 = [v39 propertySetByCombiningWithPropertySet:v40];

  *(v33 + 72) = v41;
  *(v33 + 80) = sub_AB92A0();
  *(v33 + 88) = v42;
  v43 = sub_3DBCF8();
  sub_13C80(0, &unk_DE8EA0);
  v44 = sub_2BAFF8();
  v45 = [v43 propertySetByCombiningWithPropertySet:v44];

  *(v33 + 96) = v45;
  *(v33 + 104) = sub_AB92A0();
  *(v33 + 112) = v46;
  v47 = sub_3DBCF8();
  v48 = sub_2BAFF8();
  v49 = [v47 propertySetByCombiningWithPropertySet:v48];

  *(v33 + 120) = v49;
  *(v33 + 128) = sub_AB92A0();
  *(v33 + 136) = v50;
  *(v33 + 144) = sub_3DC0D0();
  *(v33 + 152) = sub_AB92A0();
  *(v33 + 160) = v51;
  *(v33 + 168) = sub_3DC0D0();
  *(v33 + 176) = sub_AB92A0();
  *(v33 + 184) = v52;
  *(v33 + 192) = sub_3DC3BC();
  *(v33 + 200) = sub_AB92A0();
  *(v33 + 208) = v53;
  *(v33 + 216) = sub_3DC5B0();
  *(v33 + 224) = sub_AB92A0();
  *(v33 + 232) = v54;
  *(v33 + 240) = sub_3DC5B0();
  *(v33 + 248) = sub_AB92A0();
  *(v33 + 256) = v55;
  *(v33 + 264) = sub_3DC9FC();
  *(v33 + 272) = sub_AB92A0();
  *(v33 + 280) = v56;
  *(v33 + 288) = sub_3DC9FC();
  *(v33 + 296) = sub_AB92A0();
  *(v33 + 304) = v57;
  *(v33 + 312) = sub_3DCBF0();
  *(v33 + 320) = sub_AB92A0();
  *(v33 + 328) = v58;
  *(v33 + 336) = sub_3DCBF0();
  *(v33 + 344) = sub_AB92A0();
  *(v33 + 352) = v59;
  *(v33 + 360) = sub_3DD0AC();
  *(v33 + 368) = sub_AB92A0();
  *(v33 + 376) = v60;
  *(v33 + 384) = sub_3DD0AC();
  *(v33 + 392) = sub_AB92A0();
  *(v33 + 400) = v61;
  *(v33 + 408) = sub_3DD3D4();
  *(v33 + 416) = sub_AB92A0();
  *(v33 + 424) = v62;
  *(v33 + 432) = sub_3DD3D4();
  *(v33 + 440) = sub_AB92A0();
  *(v33 + 448) = v63;
  *(v33 + 456) = sub_3DD72C();
  *(v33 + 464) = sub_AB92A0();
  *(v33 + 472) = v64;
  *(v33 + 480) = sub_3DD72C();
  sub_96EA4(v33);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
  swift_arrayDestroy();
  v65 = objc_allocWithZone(MPPropertySet);
  v66 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v67 = sub_AB8FD0().super.isa;

  v68 = [v65 initWithProperties:v66 relationships:v67];

  *(v76 + 48) = v68;
  sub_96EA4(v76);
  swift_setDeallocating();
  sub_12E1C(v77, &unk_DE8E80);
  v69 = objc_allocWithZone(MPPropertySet);
  v70 = sub_AB9740().super.isa;

  v71 = sub_AB8FD0().super.isa;

  v72 = [v69 initWithProperties:v70 relationships:v71];

  [v78 setItemProperties:v72];
  v73 = swift_allocObject();
  *(v73 + 16) = v79;
  aBlock[4] = sub_4BE594;
  aBlock[5] = v73;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_253_0;
  v74 = _Block_copy(aBlock);
  v75 = v79;

  [v78 performWithResponseHandler:v74];
  _Block_release(v74);
}

uint64_t sub_4A7ED8(void *a1)
{
  sub_13C80(0, &qword_DE8ED0);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  v4 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_4BE5DC, v3);
}

void sub_4A7FA8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + qword_E0A828) = 2;
    v4 = Strong;
    v5 = a2;
    v6 = v4;
    sub_3B4724(a2);

    v7 = *&v6[qword_E0A788];
    if (v7)
    {
      v8 = *(v7 + 216);
      *(v7 + 216) = a2;
      v9 = v5;
    }

    if (*(sub_4B28CC() + 81) == 1)
    {
      v11 = sub_1287E8();
      if (*v10)
      {
        v12 = v10;

        *v12 = &_swiftEmptySetSingleton;
      }

      (v11)(v13, 0);
    }
  }
}

id sub_4A80BC(_BYTE *a1, void *a2)
{
  v3 = v2;
  v6 = v2[qword_E0A768];
  v7 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_isTopHairlineVisible;
  swift_beginAccess();
  a1[v7] = v6;
  if (v6 != a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__isTopHairlineVisible])
  {
    a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__isTopHairlineVisible] = v6;
    [a1 setNeedsLayout];
  }

  v8 = [a2 title];
  v9 = sub_AB92A0();
  v11 = v10;
  v12 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_title];
  swift_beginAccess();
  *v12 = v9;
  v12[1] = v11;

  v13 = *&a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 8];

  v14 = String.trim()();

  swift_beginAccess();
  v13[7] = v14;

  sub_2EB704();
  [a1 setNeedsLayout];

  TitleSectionHeaderView.titleMaximumNumberOfLines.setter(2);
  v15 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_regularLayoutStyle];
  swift_beginAccess();
  *v15 = xmmword_AF8610;
  v15[16] = 1;
  sub_1848CC();
  if (v3[qword_E0A770])
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  v17 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_compactLayoutStyle];
  swift_beginAccess();
  *v17 = v16;
  *(v17 + 1) = 0;
  v17[16] = 1;
  sub_1846A0();
  v18 = [v3 viewBackgroundColor];
  [a1 setBackgroundColor:v18];

  v19 = [a2 uniformCellType];
  v20 = v19 == &dword_4 + 3;
  v21 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_topHairlineLeadingAlignment;
  swift_beginAccess();
  v22 = a1[v21];
  a1[v21] = v20;
  if (v20 != v22)
  {
    [a1 setNeedsLayout];
  }

  v23 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_topHairlineTrailingAlignment;
  result = swift_beginAccess();
  v25 = a1[v23];
  a1[v23] = v20;
  if ((v19 == &dword_4 + 3) != v25)
  {
    return [a1 setNeedsLayout];
  }

  return result;
}

id sub_4A8388(id result)
{
  v2 = qword_E0A850;
  v1[qword_E0A850] = v1[qword_E0A828];
  v3 = qword_DFE2F8;
  if (*&v1[qword_DFE2F8])
  {
    sub_4B8734(result, 0);
    v4 = v1[v2];
    result = sub_4B306C();
    if (v4 == 2 || ((result ^ v4) & 1) != 0)
    {
      [v1 loadViewIfNeeded];
      result = *&v1[v3];
      if (result)
      {

        return [result reloadData];
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_4A8438(void *a1)
{
  v2 = *(v1 + qword_DFE2F0);
  if (!v2)
  {
    return;
  }

  type metadata accessor for JSGridModelResponse();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v26 = v2;
  v6 = [v5 results];
  if (!v6 || (v7 = v6, isa = sub_AB3770().super.isa, v9 = [v7 itemAtIndexPath:isa], v7, isa, !v9))
  {
    v21 = v26;
LABEL_24:

    return;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = [v10 contentItem];
    if (v11)
    {
      v25 = v11;
      v12 = MPModelStoreBrowseContentItem.kind.getter();
      if (v13 == 0xFF)
      {

LABEL_23:
        swift_unknownObjectRelease();
        v21 = v25;
        goto LABEL_24;
      }

      v14 = v12;
      v15 = v13;
      v16 = sub_3CE180(v12, v13);
      if (v16 >= 0x100u)
      {
        v17 = v16;
        type metadata accessor for HorizontalLockupCollectionViewCell();
        v18 = swift_dynamicCastClass();
        if (v18)
        {
          v19 = *&stru_248.segname[(swift_isaMask & *v18) + 16];
          v20 = a1;
          v19(v17 & 1);
LABEL_21:

          goto LABEL_22;
        }

        type metadata accessor for VerticalLockupCollectionViewCell();
        v22 = swift_dynamicCastClass();
        if (v22)
        {
          v23 = *(&stru_158.offset + (swift_isaMask & *v22));
          v20 = a1;
          v23(v17 & 1);
          goto LABEL_21;
        }

        type metadata accessor for TVShowEpisodeCell();
        v24 = swift_dynamicCastClass();
        if (v24)
        {
          *(v24 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_isDisabled) = v17 & 1;
          v20 = a1;
          sub_43ADD8();
          goto LABEL_21;
        }
      }

LABEL_22:

      sub_3EB30(v14, v15);
      goto LABEL_23;
    }
  }

  swift_unknownObjectRelease();
}

void sub_4A8714(char *a1, char **a2)
{
  v3 = v2;
  v1185 = type metadata accessor for CollectionViewCellArtworkComponentLoggingContext(0);
  __chkstk_darwin(v1185);
  v1186 = &v1174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1191 = sub_AB3820();
  v1189 = *(v1191 - 8);
  __chkstk_darwin(v1191);
  v1188 = v7;
  v1190 = &v1174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB35C0();
  __chkstk_darwin(v8 - 8);
  v9 = sub_AB9250();
  __chkstk_darwin(v9 - 8);
  v10 = sub_AB9230();
  __chkstk_darwin(v10 - 8);
  v11 = qword_DFE2F0;
  v12 = *(v2 + qword_DFE2F0);
  v1193 = a2;
  if (!v12)
  {
LABEL_23:
    v16 = 0;
    goto LABEL_49;
  }

  v13 = [v12 results];
  if (!v13)
  {
    __break(1u);
    goto LABEL_793;
  }

  v14 = v13;
  v15 = [v13 sectionAtIndex:sub_AB37F0()];

  if (v15)
  {
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = *(v3 + v11);
      if (v17)
      {
        goto LABEL_6;
      }

LABEL_25:
      a2 = v1193;
      goto LABEL_49;
    }

    swift_unknownObjectRelease();
    v17 = *(v3 + v11);
    if (!v17)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v16 = 0;
    v17 = *(v3 + v11);
    if (!v17)
    {
      goto LABEL_25;
    }
  }

LABEL_6:
  v1184 = a1;
  type metadata accessor for JSGridModelResponse();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    goto LABEL_28;
  }

  v19 = v18;
  v1187 = v16;
  v1192 = v3;
  v20 = v17;
  v21 = [v19 results];
  if (!v21 || (v22 = v21, v1183 = v19, v23 = sub_AB3770().super.isa, v24 = [v22 itemAtIndexPath:v23], v22, v23, !v24))
  {

    v3 = v1192;
LABEL_27:
    v16 = v1187;
LABEL_28:
    if (*(v3 + v11))
    {
      v43 = swift_dynamicCastClass();
      if (v43)
      {
        v44 = *(v43 + OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults);
        isa = sub_AB3770().super.isa;
        v46 = [v44 itemAtIndexPath:isa];

        if (v46)
        {
          type metadata accessor for JSGridItemButton();
          v47 = swift_dynamicCastClass();
          if (v47)
          {
            v48 = v47;
            v49 = v3;
            v50 = v1193;
            v51 = sub_3B3898(v1193);
            v52 = *(&stru_338.offset + (swift_isaMask & *v48));
            v53 = swift_unknownObjectRetain();
            v54 = v52(v53);
            v56 = sub_262ECC(v54, v55);
            v57 = (*(&stru_338.reserved2 + (swift_isaMask & *v48)))(v56);
            v59 = v58;
            swift_unknownObjectRelease();
            v60 = sub_263108(v57, v59);
            v61 = (*&stru_478.segname[swift_isaMask & *v48])(v60);
            v62 = j___s9MusicCore13StagedInstallV11isInstalledSbvg(v61 & 1);
            v1183 = v51;
            v63 = sub_2632E0(v62 & 1);
            v64 = (*(&stru_478.size + (swift_isaMask & *v48)))(v63);
            v65 = StagedInstall.isInstalled.getter(v64 & 1);
            sub_2631F4(v65 & 1);
            v66 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v67 = v1189;
            v68 = v16;
            v70 = v1190;
            v69 = v1191;
            (*(v1189 + 16))(v1190, v50, v1191);
            v71 = (*(v67 + 80) + 40) & ~*(v67 + 80);
            v72 = swift_allocObject();
            v1192 = v49;
            v73 = v72;
            *(v72 + 2) = v66;
            *(v72 + 3) = v48;
            v74 = v1184;
            *(v72 + 4) = v1184;
            v75 = v70;
            v16 = v68;
            (*(v67 + 32))(&v72[v71], v75, v69);
            swift_unknownObjectRetain();

            v76 = v74;
            v77 = v1183;
            sub_2640F0(sub_4BDFAC, v73);

            swift_unknownObjectRelease();
            v3 = v1192;
            a2 = v1193;

            v78 = v77;
LABEL_50:
            v101 = v78;
            goto LABEL_51;
          }

          swift_unknownObjectRelease();
        }
      }

      v79 = *(v3 + v11);
      if (v79)
      {
        v80 = swift_dynamicCastClass();
        if (v80)
        {
          v81 = v80;
          v82 = v3;
          v83 = v79;
          v84 = [v81 results];
          if (v84)
          {
            v85 = v84;
            a2 = v1193;
            v86 = sub_AB3770().super.isa;
            v87 = [v85 itemAtIndexPath:v86];

            if (v87)
            {
              objc_opt_self();
              v88 = swift_dynamicCastObjCClass();
              v3 = v82;
              if (v88 && v16 && (v89 = v88, j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v16 uniformCellType], 7)))
              {
                v90 = *&v81[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults];
                v91 = sub_AB3770().super.isa;
                v92 = [v90 itemAtIndexPath:v91];

                type metadata accessor for JSPosterItem();
                v93 = swift_dynamicCastClass();
                if (v93)
                {
                  v94 = v93;
                  v1192 = v92;
                  v1187 = v16;
                  v95 = sub_3B356C(a2);
                  v96 = [v89 titleText];
                  if (v96)
                  {
                    v97 = v96;
                    v98 = sub_AB92A0();
                    v100 = v99;
                  }

                  else
                  {
                    v98 = 0;
                    v100 = 0xE000000000000000;
                  }

                  sub_37AC4(v98, v100);
                  v251 = [v89 subtitleText];
                  if (v251)
                  {
                    v252 = v251;
                    v253 = sub_AB92A0();
                    v255 = v254;
                  }

                  else
                  {
                    v253 = 0;
                    v255 = 0xE000000000000000;
                  }

                  sub_37B14(v253, v255);
                  v256 = *(&stru_1F8.size + (swift_isaMask & *v94));
                  v257 = swift_unknownObjectRetain();
                  v258 = v256(v257);
                  v260 = v259;
                  swift_unknownObjectRelease();
                  if (v260)
                  {
                    v261 = v258;
                  }

                  else
                  {
                    v261 = 0;
                  }

                  v262 = 0xE000000000000000;
                  if (v260)
                  {
                    v263 = v260;
                  }

                  else
                  {
                    v263 = 0xE000000000000000;
                  }

                  sub_38508(v261, v263);
                  sub_39AC8(1);
                  v264 = [v89 descriptionText];
                  if (v264)
                  {
                    v265 = v264;
                    v266 = sub_AB92A0();
                    v262 = v267;
                  }

                  else
                  {
                    v266 = 0;
                  }

                  a2 = v1193;
                  sub_37CA8(v266, v262);
                  v268 = [v89 overlayTitleText];
                  if (v268)
                  {
                    v269 = v268;
                    v270 = sub_AB92A0();
                    v272 = v271;
                  }

                  else
                  {
                    v270 = 0;
                    v272 = 0xE000000000000000;
                  }

                  v3 = v82;
                  v273 = sub_37EC8(v270, v272);
                  v274 = (*(&stru_478.reloff + (swift_isaMask & *v94)))(v273);
                  v275 = sub_3863C(v274);
                  v276 = (*&stru_4C8.segname[(swift_isaMask & *v94) + 8])(v275);
                  sub_38720(v276);
                  v277 = (*(&stru_4C8.offset + (swift_isaMask & *v94)))();
                  sub_38A9C(v277);

                  swift_unknownObjectRelease();
                  v101 = v95;
                  swift_unknownObjectRelease();
                  v16 = v1187;
                  goto LABEL_51;
                }

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
              }

              else
              {

                swift_unknownObjectRelease();
              }
            }

            else
            {

              v3 = v82;
            }

            goto LABEL_49;
          }
        }
      }
    }

    a2 = v1193;
LABEL_49:
    sub_13C80(0, &qword_DFE230);
    v78 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
    goto LABEL_50;
  }

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  v3 = v1192;
  if (!v25)
  {

    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v26 = v25;
  v27 = [v25 contentItem];
  if (!v27)
  {
    swift_unknownObjectRelease();

    goto LABEL_27;
  }

  v1181 = v26;
  v1182 = v20;
  v1179 = v24;
  v28 = v27;
  v29 = MPModelStoreBrowseContentItem.kind.getter();
  if (v30 == 0xFF)
  {
    swift_unknownObjectRelease();

    v131 = v1182;
    goto LABEL_27;
  }

  v31 = v29;
  v1177 = v28;
  v1178 = v30;
  v32 = sub_3CE180(v29, v30);
  v33 = v1178;
  v1180 = v31;
  if (v1178 > 5u)
  {
    v132 = v1183;
    if (v1178 > 7u)
    {
      if (v1178 == 8)
      {

        a2 = v1193;
        v190 = v1187;
        if (v1187)
        {
          if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1187 uniformCellType], 5))
          {
            v191 = v32;
            v192 = sub_3B3820(a2);
            v193 = [v1181 headlineText];
            if (v193)
            {
              v194 = v193;
              v195 = sub_AB92A0();
              v197 = v196;
            }

            else
            {
              v195 = 0;
              v197 = 0xE000000000000000;
            }

            sub_BA224(v195, v197);
            v430 = [v1181 titleText];
            if (v430 || (v430 = [v1180 title]) != 0)
            {
              v431 = v430;
              v432 = sub_AB92A0();
              v434 = v433;
            }

            else
            {
              v432 = 0;
              v434 = 0xE000000000000000;
            }

            sub_BA428(v432, v434);
            v435 = [v1181 subtitleText];
            if (v435)
            {
              v436 = v435;
              v437 = sub_AB92A0();
              v439 = v438;
            }

            else
            {
              v437 = 0;
              v439 = 0xE000000000000000;
            }

            sub_BA588(v437, v439);
            *(&v1195 + 1) = sub_13C80(0, &unk_DE9C00);
            v1196 = &off_D17AC0;
            v440 = v1180;
            *&v1194 = v1180;
            v441 = 8;
            goto LABEL_241;
          }

          if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v190 uniformCellType], 7))
          {
            v307 = *&v132[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults];
            v308 = sub_AB3770().super.isa;
            [v307 itemAtIndexPath:v308];

            type metadata accessor for JSPosterItem();
            v309 = swift_dynamicCastClass();
            if (v309)
            {
              v310 = v309;
              v311 = sub_3B356C(a2);
              v312 = [v1181 titleText];
              if (v312)
              {
                v313 = v312;
                v314 = sub_AB92A0();
                v316 = v315;
              }

              else
              {
                v314 = 0;
                v316 = 0xE000000000000000;
              }

              sub_37AC4(v314, v316);
              v672 = [v1181 subtitleText];
              if (v672)
              {
                v673 = v672;
                v674 = sub_AB92A0();
                v676 = v675;
              }

              else
              {
                v674 = 0;
                v676 = 0xE000000000000000;
              }

              sub_37B14(v674, v676);
              v677 = [v1181 descriptionText];
              if (v677)
              {
                v678 = v677;
                v679 = sub_AB92A0();
                v681 = v680;
              }

              else
              {
                v679 = 0;
                v681 = 0xE000000000000000;
              }

              sub_37CA8(v679, v681);
              v682 = [v1181 overlayTitleText];
              if (v682)
              {
                v683 = v682;
                v684 = sub_AB92A0();
                v686 = v685;
              }

              else
              {
                v684 = 0;
                v686 = 0xE000000000000000;
              }

              sub_37EC8(v684, v686);
              v687 = *(&stru_1F8.size + (swift_isaMask & *v310));
              v688 = swift_unknownObjectRetain();
              v689 = v687(v688);
              v691 = v690;
              swift_unknownObjectRelease();
              if (v691)
              {
                v692 = v689;
              }

              else
              {
                v692 = 0;
              }

              if (v691)
              {
                v693 = v691;
              }

              else
              {
                v693 = 0xE000000000000000;
              }

              sub_38508(v692, v693);
              v694 = sub_39AC8(1);
              v695 = (*(&stru_478.reloff + (swift_isaMask & *v310)))(v694);
              v696 = sub_3863C(v695);
              v697 = (*&stru_4C8.segname[(swift_isaMask & *v310) + 8])(v696);
              sub_38720(v697);
              v698 = (*(&stru_4C8.offset + (swift_isaMask & *v310)))();
              v699 = v311;
              v700 = sub_38A9C(v698);
              v701 = *(&stru_4C8.reserved2 + (swift_isaMask & *v310));
              v702 = v701(v700);
              if (v702)
              {
                v703 = v702;
                v704 = (*&stru_298.sectname[swift_isaMask & *v702])();
                v706 = v705;
              }

              else
              {
                v704 = 0;
                v706 = 0;
              }

              v707 = sub_38F48(v704, v706);
              v708 = v701(v707);
              if (v708)
              {
                v709 = v708;
                v710 = (*&stru_298.segname[(swift_isaMask & *v708) + 8])();

                v711 = v710 & 1;
              }

              else
              {
                v711 = 2;
              }

              v3 = v1192;
              a2 = v1193;
              v156 = v699;
              sub_38F98(v711);
              v712 = (*&stru_518.segname[swift_isaMask & *v310])();
              sub_39C54(v712 & 1);

              swift_unknownObjectRelease();
              goto LABEL_657;
            }

            swift_unknownObjectRelease();
          }
        }

        v587 = sub_3B3880(a2);
        v588 = [v1181 headlineText];
        if (v588)
        {
          v589 = v588;
          v590 = sub_AB92A0();
          v592 = v591;
        }

        else
        {
          v590 = 0;
          v592 = 0xE000000000000000;
        }

        sub_43A61C(v590, v592);
        v593 = [v1181 titleText];
        if (v593 || (v593 = [v1180 title]) != 0)
        {
          v594 = v593;
          v595 = sub_AB92A0();
          v597 = v596;
        }

        else
        {
          v595 = 0;
          v597 = 0xE000000000000000;
        }

        sub_43A82C(v595, v597);
        v598 = [v1181 descriptionText];
        v1176 = v32;
        if (v598 || (v598 = [v1180 descriptionText]) != 0)
        {
          v599 = v1180;
          v600 = v598;
          v601 = sub_AB92A0();
          v603 = v602;
        }

        else
        {
          v599 = v1180;
          v601 = 0;
          v603 = 0xE000000000000000;
        }

        sub_43AAD8(v601, v603);
        v604 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v605 = v587;
        v607 = v1189;
        v606 = v1190;
        v608 = v1191;
        (*(v1189 + 16))(v1190, a2, v1191);
        v609 = (*(v607 + 80) + 24) & ~*(v607 + 80);
        v610 = (v1188 + v609 + 7) & 0xFFFFFFFFFFFFFFF8;
        v611 = swift_allocObject();
        *(v611 + 16) = v604;
        v612 = v607;
        v156 = v605;
        (*(v612 + 32))(v611 + v609, v606, v608);
        *(v611 + v610) = v1181;

        swift_unknownObjectRetain();
        sub_43ACC4(sub_4BE108, v611);

        v613 = [v599 playbackPosition];
        if (v613)
        {
          v614 = v613;
          [v613 bookmarkTime];
          v616 = v615;
        }

        else
        {
          v616 = 0.0;
        }

        v617 = v1176;
        v618 = v1180;
        [v1180 duration];
        sub_43ACE4(v616 / v619);
        v620 = [v618 playbackPosition];
        a2 = v1193;
        if (v620)
        {
          v621 = v620;
          v622 = [v620 hasBeenPlayed];
        }

        else
        {
          v622 = 0;
        }

        sub_43AD74(v622);
        sub_439D3C(v617 & 1);
        goto LABEL_656;
      }

      if (v1178 != 9)
      {
        if (v1178 != 12)
        {
          goto LABEL_117;
        }

        a2 = v1193;
        v133 = v1187;
        if (v1187)
        {
          if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1187 uniformCellType], 1))
          {
            v134 = sub_3B34DC(a2);
            v135 = sub_AB37F0();
            v35 = sub_4B808C(v135);
            if (v35)
            {
              v136 = sub_AB37B0();
              v41 = __OFADD__(v136, 1);
              v137 = v136 + 1;
              if (v41)
              {
                __break(1u);
                goto LABEL_75;
              }
            }

            else
            {
              v137 = 0;
            }

            AlbumCell.rank.setter(v137, (v35 & 1) == 0);
            v392 = [v1181 titleText];
            if (v392)
            {
              LOBYTE(v37) = v32;
            }

            else
            {
              v392 = [v1180 title];
              LOBYTE(v37) = v32;
              if (!v392)
              {
                v445 = 0;
                v447 = 0xE000000000000000;
                goto LABEL_245;
              }
            }

            v444 = v392;
            v445 = sub_AB92A0();
            v447 = v446;

LABEL_245:
            AlbumCell.title.setter(v445, v447);
            v448 = [v1181 subtitleText];
            if (v448)
            {
              v449 = v448;
              v450 = sub_AB92A0();
              v452 = v451;
            }

            else
            {
              v450 = 0;
              v452 = 0xE000000000000000;
            }

            AlbumCell.artistName.setter(v450, v452);
            *(&v1195 + 1) = sub_13C80(0, &unk_E03780);
            v1196 = &off_D17B10;
            v464 = v1180;
            *&v1194 = v1180;
            v465 = 12;
            goto LABEL_481;
          }

          if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v133 uniformCellType], 4))
          {
            v156 = sub_3B3850(a2);
            v323 = [v1181 titleText];
            if (v323 || (v323 = [v1180 title]) != 0)
            {
              v324 = v323;
              v325 = sub_AB92A0();
              v327 = v326;
            }

            else
            {
              v325 = 0;
              v327 = 0xE000000000000000;
            }

            sub_3E1A04(v325, v327);
            v328 = [v1181 subtitleText];
            if (!v328)
            {
              goto LABEL_174;
            }

            goto LABEL_512;
          }

          if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v133 uniformCellType], 5))
          {
            v191 = v32;
            v192 = sub_3B3820(a2);
            v401 = [v1181 headlineText];
            if (v401)
            {
              v402 = v401;
              v403 = sub_AB92A0();
              v405 = v404;
            }

            else
            {
              v403 = 0;
              v405 = 0xE000000000000000;
            }

            sub_BA224(v403, v405);
            v840 = [v1181 titleText];
            if (v840 || (v840 = [v1180 title]) != 0)
            {
              v841 = v840;
              v842 = sub_AB92A0();
              v844 = v843;
            }

            else
            {
              v842 = 0;
              v844 = 0xE000000000000000;
            }

            sub_BA428(v842, v844);
            v845 = [v1181 subtitleText];
            if (v845)
            {
              v846 = v845;
              v847 = sub_AB92A0();
              v849 = v848;
            }

            else
            {
              v847 = 0;
              v849 = 0xE000000000000000;
            }

            sub_BA588(v847, v849);
            *(&v1195 + 1) = sub_13C80(0, &unk_E03780);
            v1196 = &off_D17B10;
            v440 = v1180;
            *&v1194 = v1180;
            v441 = 12;
LABEL_241:
            sub_37C074(v440, v441);
            sub_3B8F50(&v1194, &off_CEFDE8);
            sub_12E1C(&v1194, &unk_DE9C60);
            v442 = 1;
LABEL_242:
            sub_BA6C4(v442);
            v443 = v192;
LABEL_361:
            v156 = v443;
            v640 = v191 & 1;
LABEL_362:
            sub_200620(v640);
LABEL_655:

            goto LABEL_656;
          }

          if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v133 uniformCellType], 7))
          {
            v503 = *&v132[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults];
            v504 = sub_AB3770().super.isa;
            [v503 itemAtIndexPath:v504];

            type metadata accessor for JSPosterItem();
            v505 = swift_dynamicCastClass();
            if (v505)
            {
              v349 = v505;
              v350 = sub_3B356C(a2);
              v506 = [v1181 titleText];
              if (v506)
              {
                v507 = v506;
                v508 = sub_AB92A0();
                v510 = v509;
              }

              else
              {
                v508 = 0;
                v510 = 0xE000000000000000;
              }

              sub_37AC4(v508, v510);
              v1034 = [v1181 subtitleText];
              if (v1034)
              {
                v1035 = v1034;
                v1036 = sub_AB92A0();
                v1038 = v1037;
              }

              else
              {
                v1036 = 0;
                v1038 = 0xE000000000000000;
              }

              sub_37B14(v1036, v1038);
              v915 = [v1181 descriptionText];
              if (v915)
              {
                goto LABEL_771;
              }

              v921 = 0;
              v922 = 0xE000000000000000;
              goto LABEL_773;
            }

            swift_unknownObjectRelease();
            v3 = v1192;
          }
        }

        v1176 = v32;
        v982 = sub_3B3880(a2);
        v983 = [v1181 headlineText];
        if (v983)
        {
          v984 = v983;
          v985 = sub_AB92A0();
          v987 = v986;
        }

        else
        {
          v985 = 0;
          v987 = 0xE000000000000000;
        }

        sub_43A61C(v985, v987);
        v988 = [v1181 titleText];
        if (v988 || (v988 = [v1180 title]) != 0)
        {
          v989 = v988;
          v990 = sub_AB92A0();
          v992 = v991;
        }

        else
        {
          v990 = 0;
          v992 = 0xE000000000000000;
        }

        sub_43A82C(v990, v992);
        v993 = [v1181 descriptionText];
        if (v993)
        {
          v994 = v993;
          v995 = sub_AB92A0();
          v997 = v996;
        }

        else
        {
          v995 = 0;
          v997 = 0xE000000000000000;
        }

        sub_43AAD8(v995, v997);
        v998 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v1000 = v1189;
        v999 = v1190;
        v1001 = v1191;
        (*(v1189 + 16))(v1190, a2, v1191);
        v1002 = (*(v1000 + 80) + 24) & ~*(v1000 + 80);
        v1003 = (v1188 + v1002 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1004 = swift_allocObject();
        *(v1004 + 16) = v998;
        (*(v1000 + 32))(v1004 + v1002, v999, v1001);
        *(v1004 + v1003) = v1181;
        swift_unknownObjectRetain();

        sub_43ACC4(sub_4BE018, v1004);

        v1005 = [v1180 playbackPosition];
        if (v1005)
        {
          v1006 = v1005;
          [v1005 bookmarkTime];
          v1008 = v1007;
        }

        else
        {
          v1008 = 0.0;
        }

        v1009 = v1176;
        v1010 = v1180;
        [v1180 duration];
        sub_43ACE4(v1008 / v1011);
        sub_439D3C(v1009 & 1);

        swift_unknownObjectRelease();
        v101 = v982;
        sub_3EB30(v1010, 12);

        a2 = v1193;
        v16 = v1187;
        goto LABEL_51;
      }

      a2 = v1193;
      v208 = v1187;
      if (v1187)
      {
        if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1187 uniformCellType], 1))
        {
          v134 = sub_3B34DC(a2);
          v209 = sub_AB37F0();
          v210 = sub_4B808C(v209);
          if (v210)
          {
            v211 = sub_AB37B0();
            v41 = __OFADD__(v211, 1);
            v212 = v211 + 1;
            if (v41)
            {
              __break(1u);
              goto LABEL_117;
            }
          }

          else
          {
            v212 = 0;
          }

          AlbumCell.rank.setter(v212, (v210 & 1) == 0);
          v393 = [v1181 titleText];
          if (v393)
          {
            LOBYTE(v37) = v32;
          }

          else
          {
            v393 = [v1180 title];
            LOBYTE(v37) = v32;
            if (!v393)
            {
              v454 = 0;
              v456 = 0xE000000000000000;
              goto LABEL_249;
            }
          }

          v453 = v393;
          v454 = sub_AB92A0();
          v456 = v455;

LABEL_249:
          AlbumCell.title.setter(v454, v456);
          v457 = [v1181 subtitleText];
          if (v457)
          {
            v458 = v457;
            v459 = sub_AB92A0();
            v461 = v460;

            v462 = v461;
            v463 = v459;
          }

          else
          {
            v463 = MPModelTVShow.localizedEpisodeCount.getter();
          }

          AlbumCell.artistName.setter(v463, v462);
          v1196 = 0;
          v1194 = 0u;
          v1195 = 0u;
          goto LABEL_482;
        }

        if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v208 uniformCellType], 5))
        {
          v331 = sub_3B3820(a2);
          v332 = [v1181 headlineText];
          v191 = v32;
          if (v332)
          {
            v333 = v332;
            v334 = sub_AB92A0();
            v336 = v335;
          }

          else
          {
            v334 = 0;
            v336 = 0xE000000000000000;
          }

          sub_BA224(v334, v336);
          v628 = [v1181 titleText];
          if (v628 || (v628 = [v1180 title]) != 0)
          {
            v629 = v628;
            v630 = sub_AB92A0();
            v632 = v631;
          }

          else
          {
            v630 = 0;
            v632 = 0xE000000000000000;
          }

          sub_BA428(v630, v632);
          v633 = [v1181 subtitleText];
          if (v633)
          {
            v634 = v633;
            v635 = sub_AB92A0();
            v637 = v636;

            v638 = v637;
            v639 = v635;
          }

          else
          {
            v639 = MPModelTVShow.localizedEpisodeCount.getter();
          }

          sub_BA588(v639, v638);
          v1196 = 0;
          v1194 = 0u;
          v1195 = 0u;
          sub_3B8F50(&v1194, &off_CEFDE8);
          sub_12E1C(&v1194, &unk_DE9C60);
          sub_BA6C4(1);
          v443 = v331;
          goto LABEL_361;
        }

        if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v208 uniformCellType], 7))
        {
          v406 = *&v132[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults];
          v407 = sub_AB3770().super.isa;
          [v406 itemAtIndexPath:v407];

          type metadata accessor for JSPosterItem();
          v408 = swift_dynamicCastClass();
          if (v408)
          {
            v349 = v408;
            v350 = sub_3B356C(a2);
            v409 = [v1181 titleText];
            if (v409)
            {
              v410 = v409;
              v411 = sub_AB92A0();
              v413 = v412;
            }

            else
            {
              v411 = 0;
              v413 = 0xE000000000000000;
            }

            sub_37AC4(v411, v413);
            v953 = [v1181 subtitleText];
            if (v953)
            {
              v954 = v953;
              v955 = sub_AB92A0();
              v957 = v956;
            }

            else
            {
              v955 = 0;
              v957 = 0xE000000000000000;
            }

            sub_37B14(v955, v957);
            v915 = [v1181 descriptionText];
            if (v915)
            {
              goto LABEL_771;
            }

            v921 = 0;
            v922 = 0xE000000000000000;
            goto LABEL_773;
          }

          swift_unknownObjectRelease();
        }
      }

      v156 = sub_3B3850(a2);
      v850 = [v1181 titleText];
      if (v850 || (v850 = [v1180 title]) != 0)
      {
        v851 = v850;
        v852 = sub_AB92A0();
        v854 = v853;
      }

      else
      {
        v852 = 0;
        v854 = 0xE000000000000000;
      }

      sub_3E1A04(v852, v854);
      v328 = [v1181 subtitleText];
      if (!v328)
      {
        goto LABEL_174;
      }

      goto LABEL_512;
    }

    if (v1178 == 6)
    {

      if (v1187 && j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1187 uniformCellType], 2))
      {
        a2 = v1193;
        v164 = sub_3B35B4(v1193);
        v165 = [v1181 titleText];
        if (v165 || (v165 = [v1180 name]) != 0)
        {
          v166 = v165;
          v167 = sub_AB92A0();
          v169 = v168;
        }

        else
        {
          v167 = 0;
          v169 = 0xE000000000000000;
        }

        sub_1FD7A8(v167, v169);
        sub_1FDACC(0, 0xE000000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03790);
        v170 = swift_allocObject();
        sub_3E127C(v170, 1);
        *(v171 + 8) = 0;
        *(v171 + 16) = 0;
        *v171 = 1;
        *(v171 + 24) = 0;
        UIScreen.Dimensions.size.getter(v172);
        v174 = v173;
        v175 = v164;
        v176 = sub_272D38(v174);
        v178 = v177;
        v180 = v179;
        v182 = v181;

        sub_361EF0(v176, v178, v180, v182);
        v156 = v175;
        sub_7FCC4(v176);
        VerticalLockupCollectionViewCell.isDisabled.setter(0);

        sub_1FDD00(&dword_0 + 2);
        swift_unknownObjectRelease();
        v3 = v1192;
      }

      else
      {
        v214 = sub_3B34F4(v1193);
        v215 = [v1181 titleText];
        if (v215 || (v215 = [v1180 name]) != 0)
        {
          v216 = v215;
          v217 = sub_AB92A0();
          v219 = v218;
        }

        else
        {
          v217 = 0;
          v219 = 0xE000000000000000;
        }

        sub_B1070(v217, v219);
        v220 = [v1181 subtitleText];
        if (v220 || (v220 = [v1180 handle]) != 0)
        {
          v221 = v220;
          v222 = sub_AB92A0();
          v224 = v223;
        }

        else
        {
          v222 = 0;
          v224 = 0xE000000000000000;
        }

        sub_B1194(v222, v224);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03790);
        v225 = swift_allocObject();
        sub_3E127C(v225, 1);
        *(v226 + 8) = 0;
        *(v226 + 16) = 0;
        *v226 = 1;
        *(v226 + 24) = 0;
        UIScreen.Dimensions.size.getter(v227);
        v229 = v228;
        v1184 = v214;

        v230 = sub_272D38(v229);
        v232 = v231;
        v234 = v233;
        v236 = v235;

        type metadata accessor for ArtworkComponentImageView();
        v237 = swift_dynamicCastClass();
        if (v237)
        {
          v238 = v237 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle;
          v239 = *(v237 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle);
          v240 = *(v237 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle + 8);
          v241 = *(v237 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle + 16);
          *v238 = v230;
          *(v238 + 8) = v232;
          *(v238 + 16) = v234;
          v242 = *(v238 + 24);
          *(v238 + 24) = v236;
          sub_7FCB4(v230);
          sub_7D6F4(v239, v240, v241, v242);
          sub_7FCC4(v239);
        }

        sub_7FCC4(v230);

        v156 = v1184;
        sub_200620(0);

        v243 = OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_relationshipButtonController;
        *(*&v156[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_relationshipButtonController] + 48) = &off_D16C30;
        v244 = v1192;
        swift_unknownObjectWeakAssign();
        v245 = v1180;
        sub_37C074(v1180, 6);

        sub_49D948(v245);

        swift_unknownObjectRelease();
        v246 = *&v156[v243];
        v247 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v248 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v249 = swift_allocObject();
        *(v249 + 16) = v247;
        *(v249 + 24) = v248;
        v250 = *(v246 + 56);
        *(v246 + 56) = sub_4BE204;
        *(v246 + 64) = v249;

        v3 = v244;
        sub_17654(v250);

        a2 = v1193;
      }

      goto LABEL_658;
    }

    if (v1178 != 7)
    {
      goto LABEL_117;
    }

    v145 = v1187;
    if (v1187)
    {
      if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1187 uniformCellType], 3))
      {

        if ([v1180 hasVideo])
        {
          a2 = v1193;
          v146 = sub_3B35FC(v1193);
          v147 = [v1181 headlineText];
          v148 = v32;
          if (v147)
          {
            v149 = v147;
            v150 = sub_AB92A0();
            v152 = v151;
          }

          else
          {
            v150 = 0;
            v152 = 0xE000000000000000;
          }

          sub_14D848(v150, v152);
          v522 = [v1180 title];
          if (v522)
          {
            v523 = v522;
            v524 = sub_AB92A0();
            v526 = v525;
          }

          else
          {
            v524 = 0;
            v526 = 0xE000000000000000;
          }

          sub_14DAA0(v524, v526);
          v559 = [v1180 artist];
          if (v559)
          {
            v560 = v559;
            v561 = [v559 name];
            if (v561)
            {
              v562 = v561;
              v563 = sub_AB92A0();
              v565 = v564;

              v566 = v565;
              v3 = v1192;
              v559 = v563;
LABEL_380:
              sub_14DD00(v559, v566);
              v658 = [v1181 descriptionText];
              if (v658)
              {
                v659 = v658;
                v660 = sub_AB92A0();
                v662 = v661;
              }

              else
              {
                v660 = 0;
                v662 = 0xE000000000000000;
              }

              sub_14DFF4(v660, v662);
              v663 = v146;
              v664 = v1180;
              [v1180 duration];
              sub_28FAC0(v665, 0);

              sub_14E270(v148 & 1);
              *(&v1195 + 1) = sub_13C80(0, &unk_DE8EB0);
              v1196 = &off_D179F8;
              *&v1194 = v664;
              sub_37C074(v664, 7);
              sub_3B8D88(&v1194, &off_CEFDE8);

              swift_unknownObjectRelease();
              sub_12E1C(&v1194, &unk_DE9C60);
LABEL_663:
              v101 = v663;
              v577 = v664;
              v578 = 7;
              goto LABEL_659;
            }

            v559 = 0;
          }

          v566 = 0xE000000000000000;
          goto LABEL_380;
        }

        a2 = v1193;
        v156 = sub_3B3554(v1193);
        v337 = sub_4B4A50();
        sub_4C5CB8(v337);
        sub_4C5DC0(0);
        *(&v1195 + 1) = sub_13C80(0, &unk_DE8EB0);
        v1196 = &off_D179F8;
        *&v1194 = v1180;
        v338 = v1180;
        sub_3B8D28(&v1194, &off_CEFDE8);
        sub_12E1C(&v1194, &unk_DE9C60);
        v339 = [v1181 headlineText];
        v340 = v32;
        if (v339)
        {
          v341 = v339;
          v342 = sub_AB92A0();
          v344 = v343;
        }

        else
        {
          v342 = 0;
          v344 = 0xE000000000000000;
        }

        sub_4C53F0(v342, v344);
        v554 = [v338 title];
        if (v554)
        {
          v555 = v554;
          v556 = sub_AB92A0();
          v558 = v557;
        }

        else
        {
          v556 = 0;
          v558 = 0xE000000000000000;
        }

        sub_4C5610(v556, v558);
        v579 = [v338 artist];
        if (v579)
        {
          v580 = v579;
          v581 = [v579 name];
          if (v581)
          {
            v582 = v581;
            v583 = sub_AB92A0();
            v585 = v584;

            v586 = v585;
            v579 = v583;
LABEL_386:
            sub_4C5820(v579, v586);
            v666 = [v1181 descriptionText];
            if (v666)
            {
              v667 = v666;
              v668 = sub_AB92A0();
              v670 = v669;
            }

            else
            {
              v668 = 0;
              v670 = 0xE000000000000000;
            }

            sub_4C5ACC(v668, v670);
            v671 = v340 & 1;
            goto LABEL_534;
          }

          v579 = 0;
        }

        v586 = 0xE000000000000000;
        goto LABEL_386;
      }

      if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v145 uniformCellType], 5))
      {

        a2 = v1193;
        v293 = sub_3B3820(v1193);
        v294 = [v1181 headlineText];
        v295 = v32;
        if (v294)
        {
          v296 = v294;
          v297 = sub_AB92A0();
          v299 = v298;
        }

        else
        {
          v297 = 0;
          v299 = 0xE000000000000000;
        }

        sub_BA224(v297, v299);
        v532 = [v1181 titleText];
        if (v532 || (v532 = [v1180 title]) != 0)
        {
          v533 = v532;
          v534 = sub_AB92A0();
          v536 = v535;
        }

        else
        {
          v534 = 0;
          v536 = 0xE000000000000000;
        }

        sub_BA428(v534, v536);
        v537 = [v1181 subtitleText];
        if (v537)
        {
          v538 = v537;
          v539 = sub_AB92A0();
          v541 = v540;
        }

        else
        {
          v570 = [v1180 artist];
          if (v570)
          {
            v571 = v570;
            v572 = [v570 name];
            if (v572)
            {
              v573 = v572;
              v539 = sub_AB92A0();
              v541 = v574;
            }

            else
            {

              v539 = 0;
              v541 = 0xE000000000000000;
            }

            v3 = v1192;
          }

          else
          {
            v539 = 0;
            v541 = 0xE000000000000000;
          }
        }

        sub_BA588(v539, v541);
        *(&v1195 + 1) = sub_13C80(0, &unk_DE8EB0);
        v1196 = &off_D179F8;
        v664 = v1180;
        *&v1194 = v1180;
        sub_37C074(v1180, 7);
        sub_3B8F50(&v1194, &off_CEF8C8);
        sub_12E1C(&v1194, &unk_DE9C60);
        sub_BA6C4([v664 hasVideo]);
        v663 = v293;
        sub_200620(v295 & 1);
        sub_200598([v664 isFavorite]);

        swift_unknownObjectRelease();
        goto LABEL_663;
      }

      if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v145 uniformCellType], 7))
      {
        v356 = *&v132[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults];
        v357 = v1193;
        v358 = sub_AB3770().super.isa;
        [v356 itemAtIndexPath:v358];

        type metadata accessor for JSPosterItem();
        v359 = swift_dynamicCastClass();
        if (v359)
        {
          v360 = v359;

          v361 = sub_3B356C(v357);
          v362 = [v1181 titleText];
          if (v362)
          {
            v363 = v362;
            v364 = sub_AB92A0();
            v366 = v365;
          }

          else
          {
            v364 = 0;
            v366 = 0xE000000000000000;
          }

          sub_37AC4(v364, v366);
          v905 = [v1181 subtitleText];
          if (v905)
          {
            v906 = v905;
            v907 = sub_AB92A0();
            v909 = v908;
          }

          else
          {
            v907 = 0;
            v909 = 0xE000000000000000;
          }

          sub_37B14(v907, v909);
          v916 = [v1181 descriptionText];
          if (v916)
          {
            v917 = v916;
            v918 = sub_AB92A0();
            v920 = v919;
          }

          else
          {
            v918 = 0;
            v920 = 0xE000000000000000;
          }

          sub_37CA8(v918, v920);
          v923 = [v1181 overlayTitleText];
          if (v923)
          {
            v924 = v923;
            v925 = sub_AB92A0();
            v927 = v926;
          }

          else
          {
            v925 = 0;
            v927 = 0xE000000000000000;
          }

          sub_37EC8(v925, v927);
          v928 = *(&stru_1F8.size + (swift_isaMask & *v360));
          v929 = swift_unknownObjectRetain();
          v930 = v928(v929);
          v932 = v931;
          swift_unknownObjectRelease();
          if (v932)
          {
            v933 = v930;
          }

          else
          {
            v933 = 0;
          }

          if (v932)
          {
            v934 = v932;
          }

          else
          {
            v934 = 0xE000000000000000;
          }

          sub_38508(v933, v934);
          v935 = sub_39AC8(1);
          v936 = (*(&stru_478.reloff + (swift_isaMask & *v360)))(v935);
          v937 = sub_3863C(v936);
          v938 = (*&stru_4C8.segname[(swift_isaMask & *v360) + 8])(v937);
          sub_38720(v938);
          v939 = (*(&stru_4C8.offset + (swift_isaMask & *v360)))();
          v940 = sub_38A9C(v939);
          v941 = *(&stru_4C8.reserved2 + (swift_isaMask & *v360));
          v942 = v941(v940);
          if (v942)
          {
            v943 = v942;
            v944 = (*&stru_298.sectname[swift_isaMask & *v942])();
            v946 = v945;
          }

          else
          {
            v944 = 0;
            v946 = 0;
          }

          v947 = sub_38F48(v944, v946);
          v948 = v941(v947);
          if (v948)
          {
            v949 = v948;
            v950 = (*&stru_298.segname[(swift_isaMask & *v948) + 8])();

            v951 = v950 & 1;
          }

          else
          {
            v951 = 2;
          }

          sub_38F98(v951);
          v952 = *&stru_518.segname[swift_isaMask & *v360];
          v156 = v361;
          goto LABEL_789;
        }

        swift_unknownObjectRelease();
      }
    }

    if ([v1180 hasVideo])
    {

      if (v1187 && j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1187 uniformCellType], 4))
      {
        v737 = v1180;
        a2 = v1193;
        v156 = sub_3B3850(v1193);
        v738 = [v1181 titleText];
        if (v738)
        {
          v739 = v738;
        }

        else
        {
          v864 = [v737 title];
          if (!v864)
          {
            v865 = 0;
            v867 = 0xE000000000000000;
            v3 = v1192;
            a2 = v1193;
LABEL_525:
            sub_3E1A04(v865, v867);
            v328 = [v1181 subtitleText];
            if (!v328)
            {
LABEL_174:
              v329 = 0;
              v330 = 0xE000000000000000;
LABEL_513:
              sub_3E1CA8(v329, v330);
LABEL_656:

              goto LABEL_657;
            }

LABEL_512:
            v855 = v328;
            v329 = sub_AB92A0();
            v330 = v856;

            goto LABEL_513;
          }

          v739 = v864;
          v3 = v1192;
          a2 = v1193;
        }

        v865 = sub_AB92A0();
        v867 = v866;

        goto LABEL_525;
      }

      a2 = v1193;
      v748 = sub_AB37F0();
      if (sub_4B808C(v748))
      {
        v134 = sub_3B362C(a2);
        v749 = sub_AB37B0();
        v41 = __OFADD__(v749, 1);
        v750 = (v749 + 1);
        if (!v41)
        {
          LOBYTE(v37) = v32;
          sub_42B3B0(v750, 0);
          v751 = [v1180 title];
          if (v751)
          {
            v752 = v751;
            v753 = sub_AB92A0();
            v755 = v754;
          }

          else
          {
            v753 = 0;
            v755 = 0xE000000000000000;
          }

          sub_42B4A8(v753, v755);
          v785 = [v1180 artist];
          if (v785)
          {
            v786 = v785;
            v787 = [v785 name];
            if (v787)
            {
              v788 = v787;
              v789 = sub_AB92A0();
              v791 = v790;

              v792 = v791;
              v785 = v789;
            }

            else
            {

              v785 = 0;
              v792 = 0xE000000000000000;
            }

            v3 = v1192;
          }

          else
          {
            v792 = 0xE000000000000000;
          }

          sub_42B754(v785, v792);
          *(&v1195 + 1) = sub_13C80(0, &unk_DE8EB0);
          v1196 = &off_D179F8;
          *&v1194 = v1180;
          sub_37C074(v1180, 7);
          sub_3B8DA0(&v1194, &off_CEFDE8);
          sub_12E1C(&v1194, &unk_DE9C60);
          goto LABEL_483;
        }

        goto LABEL_794;
      }

      v766 = v1180;
      v767 = sub_3B3614(a2);
      v768 = [v1181 titleText];
      if (v768)
      {
        v769 = v768;
        v770 = v32;
      }

      else
      {
        v770 = v32;
        v771 = [v766 title];
        if (!v771)
        {
          v772 = 0;
          v774 = 0xE000000000000000;
LABEL_454:
          sub_171DC0(v772, v774);
          v775 = [v1181 subtitleText];
          if (v775)
          {
            v776 = v775;
            v777 = sub_AB92A0();
            v779 = v778;

LABEL_753:
            v3 = v1192;
            a2 = v1193;
            sub_172064(v777, v779);
            *(&v1195 + 1) = sub_13C80(0, &unk_DE8EB0);
            v1196 = &off_D179F8;
            *&v1194 = v766;
            sub_37C074(v766, 7);
            sub_3B8C28(&v1194, &off_CEFDE8);
            sub_12E1C(&v1194, &unk_DE9C60);
            v1129 = v767;
            v817 = v770 & 1;
            v156 = v1129;
            goto LABEL_654;
          }

          v780 = [v766 artist];
          if (v780)
          {
            v781 = v780;
            v782 = [v780 name];
            if (v782)
            {
              v783 = v782;
              v777 = sub_AB92A0();
              v779 = v784;

              goto LABEL_753;
            }
          }

          v777 = 0;
          v779 = 0xE000000000000000;
          goto LABEL_753;
        }

        v769 = v771;
      }

      v772 = sub_AB92A0();
      v774 = v773;

      goto LABEL_454;
    }

    v1176 = v32;
    v740 = sub_3B3354(v1193);
    v741 = sub_AB37F0();
    v742 = sub_4B808C(v741);
    sub_14377C(v742 & 1 | 0x8000);
    v743 = [v1180 title];
    if (v743)
    {
      v744 = v743;
      v745 = sub_AB92A0();
      v747 = v746;
    }

    else
    {
      v745 = 0;
      v747 = 0xE000000000000000;
    }

    sub_142740(v745, v747);
    v756 = [v1181 subtitleText];
    if (v756)
    {
      v757 = v756;
      v758 = sub_AB92A0();
      v760 = v759;

      goto LABEL_543;
    }

    v761 = [v1180 artist];
    if (v761)
    {
      v762 = v761;
      v763 = [v761 name];
      if (v763)
      {
        v764 = v763;
        v758 = sub_AB92A0();
        v760 = v765;

        goto LABEL_543;
      }
    }

    v758 = 0;
    v760 = 0xE000000000000000;
LABEL_543:
    sub_142958(v758, v760);
    *(&v1195 + 1) = sub_13C80(0, &unk_DE8EB0);
    v1196 = &off_D179F8;
    *&v1194 = v1180;
    v870 = v1180;
    sub_3B8C10(&v1194, &off_CEF8C8);
    sub_12E1C(&v1194, &unk_DE9C60);
    v871 = [v870 album];
    v3 = v1192;
    if (v871)
    {
      v872 = v871;
      v873 = [v871 title];
      if (v873)
      {
        v874 = v873;
        v875 = sub_AB92A0();
        v877 = v876;

        v3 = v1192;
        v878 = v877;
        v132 = v1183;
        v871 = v875;
LABEL_548:
        sub_142C04(v871, v878);
        if ((v742 & 1) == 0)
        {
          v883 = v1182;

          a2 = v1193;
          goto LABEL_553;
        }

        v879 = sub_AB37B0();
        v41 = __OFADD__(v879, 1);
        v880 = v879 + 1;
        if (!v41)
        {
          sub_1438F0(v880, 0);
          v881 = [v132 results];

          if (!v881)
          {
LABEL_795:
            __break(1u);
            goto LABEL_796;
          }

          a2 = v1193;
          v882 = [v881 numberOfItemsInSection:sub_AB37F0()];

          sub_14391C(v882, 0);
          v883 = v1182;
LABEL_553:
          v884 = v740;
          sub_200878(1);
          sub_20085C(1);

          sub_143184([v870 isFavorite]);
          sub_143BBC(v1176 & 1);

          swift_unknownObjectRelease();
          v101 = v884;
          v577 = v1180;
          v578 = 7;
LABEL_659:
          sub_3EB30(v577, v578);

          v16 = v1187;
          goto LABEL_51;
        }

LABEL_793:
        __break(1u);
LABEL_794:
        __break(1u);
        goto LABEL_795;
      }

      v871 = 0;
    }

    v878 = 0xE000000000000000;
    goto LABEL_548;
  }

  v34 = v1181;
  v35 = v1183;
  if (v1178 > 2u)
  {
    if (v1178 != 3)
    {
      if (v1178 != 4)
      {
        if (v1178 == 5)
        {

          a2 = v1193;
          v36 = v1187;
          if (v1187)
          {
            if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1187 uniformCellType], 1))
            {
              LOBYTE(v37) = v32;
              v35 = sub_3B34DC(a2);
              v38 = sub_AB37F0();
              v39 = sub_4B808C(v38);
              if ((v39 & 1) == 0)
              {
                v42 = 0;
                goto LABEL_196;
              }

              v40 = sub_AB37B0();
              v41 = __OFADD__(v40, 1);
              v42 = v40 + 1;
              if (!v41)
              {
LABEL_196:
                AlbumCell.rank.setter(v42, (v39 & 1) == 0);
                v380 = [v1181 titleText];
                if (v380 || (v380 = [v1180 name]) != 0)
                {
                  v381 = v380;
                  v382 = sub_AB92A0();
                  v384 = v383;

                  v3 = v1192;
                }

                else
                {
                  v382 = 0;
                  v384 = 0xE000000000000000;
                }

                AlbumCell.title.setter(v382, v384);
                v385 = [v1181 subtitleText];
                if (v385 || (v385 = [v1180 shortEditorNotes]) != 0)
                {
                  v386 = v385;
                  v387 = sub_AB92A0();
                  v389 = v388;
                }

                else
                {
                  sub_AB91E0();
                  sub_5F26C();
                  v387 = sub_AB9320();
                  v389 = v641;
                }

                AlbumCell.artistName.setter(v387, v389);
                *(&v1195 + 1) = sub_13C80(0, &unk_E087D0);
                v1196 = &off_D17A98;
                v390 = v1180;
                *&v1194 = v1180;
                sub_37C074(v1180, 5);
                sub_3B8D10(&v1194, &off_CEFDE8);
                sub_12E1C(&v1194, &unk_DE9C60);
                v391 = j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v390 type], 3);
                goto LABEL_285;
              }

              __break(1u);
              goto LABEL_23;
            }

            if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v36 uniformCellType], 3))
            {
              v156 = sub_3B3554(a2);
              v317 = sub_4B4A50();
              sub_4C5CB8(v317);
              sub_4C5DC0(0);
              v318 = [v1181 headlineText];
              if (v318)
              {
                v319 = v318;
                v320 = sub_AB92A0();
                v322 = v321;
              }

              else
              {
                v320 = 0;
                v322 = 0xE000000000000000;
              }

              sub_4C53F0(v320, v322);
              v623 = [v1181 titleText];
              if (v623 || (v623 = [v1180 name]) != 0)
              {
                v624 = v623;
                v625 = sub_AB92A0();
                v627 = v626;
              }

              else
              {
                v625 = 0;
                v627 = 0xE000000000000000;
              }

              sub_4C5610(v625, v627);
              v419 = [v1181 subtitleText];
              if (!v419)
              {
                v421 = 0;
                v423 = 0xE000000000000000;
                goto LABEL_529;
              }

LABEL_227:
              v420 = v419;
              v421 = sub_AB92A0();
              v423 = v422;

LABEL_529:
              sub_4C5820(v421, v423);
              v486 = [v1181 descriptionText];
              goto LABEL_530;
            }

            if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v36 uniformCellType], 5))
            {
              v394 = v32;
              v395 = sub_3B3820(a2);
              v396 = [v1181 headlineText];
              if (v396)
              {
                v397 = v396;
                v398 = sub_AB92A0();
                v400 = v399;
              }

              else
              {
                v398 = 0;
                v400 = 0xE000000000000000;
              }

              v828 = v1180;
              sub_BA224(v398, v400);
              v829 = [v1181 titleText];
              if (v829 || (v829 = [v828 name]) != 0)
              {
                v830 = v829;
                v831 = sub_AB92A0();
                v833 = v832;
              }

              else
              {
                v831 = 0;
                v833 = 0xE000000000000000;
              }

              sub_BA428(v831, v833);
              v834 = [v1181 subtitleText];
              if (v834 || (v834 = [v828 shortEditorNotes]) != 0)
              {
                v835 = v834;
                v3 = v1192;
                a2 = v1193;
                v836 = sub_AB92A0();
                v838 = v837;
              }

              else
              {
                v836 = 0;
                v838 = 0xE000000000000000;
                v3 = v1192;
                a2 = v1193;
              }

              sub_BA588(v836, v838);
              *(&v1195 + 1) = sub_13C80(0, &unk_E087D0);
              v1196 = &off_D17A98;
              *&v1194 = v1180;
              sub_37C074(v1180, 5);
              sub_3B8F50(&v1194, &off_CEFDE8);
              sub_12E1C(&v1194, &unk_DE9C60);
              sub_BA6C4(0);
              v839 = v395;
              v640 = v394 & 1;
              v156 = v839;
              goto LABEL_362;
            }

            if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v36 uniformCellType], 6))
            {
              v495 = v32;
              v496 = v1180;
              v497 = sub_3B3584(a2);
              v498 = [v1181 headlineText];
              if (v498)
              {
                v499 = v498;
                v500 = sub_AB92A0();
                v502 = v501;
              }

              else
              {
                v500 = 0;
                v502 = 0xE000000000000000;
              }

              sub_233E78(v500, v502);
              v969 = [v1181 titleText];
              if (v969 || (v969 = [v496 name]) != 0)
              {
                v970 = v969;
                v971 = sub_AB92A0();
                v973 = v972;
              }

              else
              {
                v971 = 0;
                v973 = 0xE000000000000000;
              }

              sub_234088(v971, v973);
              v974 = [v1181 subtitleText];
              if (v974 || (v974 = [v496 shortEditorNotes]) != 0)
              {
                v975 = v974;
                v976 = sub_AB92A0();
                v978 = v977;
              }

              else
              {
                v976 = 0;
                v978 = 0xE000000000000000;
              }

              sub_234334(v976, v978);
              v156 = v497;
              sub_200878(0);
              sub_20085C(1);
              sub_200620(v495 & 1);

              [v156 music_setLayoutInsets:{-1.0, 0.0, -1.0, 0.0}];
              *(&v1195 + 1) = sub_13C80(0, &unk_E087D0);
              v1196 = &off_D17A98;
              *&v1194 = v496;
              v979 = v496;
              sub_3B8D40(&v1194, &off_CEFDE8);
              sub_12E1C(&v1194, &unk_DE9C60);
              if ([v1181 headlineColor] == &dword_0 + 1)
              {
                v968 = [(SEL *)v1192 view];
                if (v968)
                {
LABEL_628:
                  v980 = v968;
                  v981 = [v968 tintColor];
                  sub_235010(v981);

                  swift_unknownObjectRelease();
LABEL_791:
                  v3 = v1192;
                  a2 = v1193;
                  goto LABEL_658;
                }

LABEL_797:
                __break(1u);
                return;
              }

              goto LABEL_629;
            }

            if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v36 uniformCellType], 7))
            {
              v650 = *&v35[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults];
              v651 = sub_AB3770().super.isa;
              [v650 itemAtIndexPath:v651];

              type metadata accessor for JSPosterItem();
              v652 = swift_dynamicCastClass();
              if (v652)
              {
                v349 = v652;
                v350 = sub_3B356C(v1193);
                v653 = [v1181 titleText];
                if (v653)
                {
                  v654 = v653;
                  v655 = sub_AB92A0();
                  v657 = v656;
                }

                else
                {
                  v655 = 0;
                  v657 = 0xE000000000000000;
                }

                sub_37AC4(v655, v657);
                v1137 = [v1181 subtitleText];
                if (v1137)
                {
                  v1138 = v1137;
                  v1139 = sub_AB92A0();
                  v1141 = v1140;
                }

                else
                {
                  v1139 = 0;
                  v1141 = 0xE000000000000000;
                }

                sub_37B14(v1139, v1141);
                v915 = [v1181 descriptionText];
                if (!v915)
                {
                  v921 = 0;
                  v922 = 0xE000000000000000;
                  goto LABEL_773;
                }

                goto LABEL_771;
              }

              swift_unknownObjectRelease();
              v3 = v1192;
              a2 = v1193;
            }
          }

          v1117 = sub_3B359C(a2);
          v1118 = [v1181 titleText];
          if (v1118)
          {
            v1119 = v32;
          }

          else
          {
            v1118 = [v1180 name];
            v1119 = v32;
            if (!v1118)
            {
              v1121 = 0;
              v1123 = 0xE000000000000000;
LABEL_744:
              sub_B32CC(v1121, v1123);
              v1124 = [v1181 subtitleText];
              if (v1124 || (v1124 = [v1180 shortEditorNotes]) != 0)
              {
                v1125 = v1124;
                v1126 = sub_AB92A0();
                v1128 = v1127;
              }

              else
              {
                v1126 = 0;
                v1128 = 0xE000000000000000;
              }

              sub_B35F8(v1126, v1128);
              v156 = v1117;
              sub_200878(1);
              sub_20085C(1);
              sub_200620(v1119 & 1);

              *(&v1195 + 1) = sub_13C80(0, &unk_E087D0);
              v1196 = &off_D17A98;
              *&v1194 = v1180;
              sub_37C074(v1180, 5);
              sub_3B8D58(&v1194, &off_CEFDE8);
              goto LABEL_748;
            }
          }

          v1120 = v1118;
          v1121 = sub_AB92A0();
          v1123 = v1122;

          goto LABEL_744;
        }

LABEL_117:
        v213 = v1182;

        sub_13C80(0, &qword_DFE230);
        a2 = v1193;
        v156 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();

LABEL_657:
        swift_unknownObjectRelease();
LABEL_658:
        v101 = v156;
        v577 = v1180;
        v578 = v1178;
        goto LABEL_659;
      }

      v3 = &selRef__authenticateReturningError_;
      v198 = [v34 titleText];
      if (v198 || (v198 = [v1180 name]) != 0)
      {
        v199 = v198;
        v200 = sub_AB92A0();
        v202 = v201;

        v34 = v1181;
      }

      else
      {
        v200 = 0;
        v202 = 0xE000000000000000;
      }

      a2 = &selRef__authenticateReturningError_;
      v203 = [v34 subtitleText];
      if (v203)
      {
        v204 = v203;
        v205 = sub_AB92A0();
        v207 = v206;

LABEL_259:
        v466 = v1187;
        if (v1187)
        {
          v37 = &selRef_isMovingFromParentViewController;
          if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1187 uniformCellType], 3))
          {
            v1183 = v202;
            a2 = v1193;
            v467 = sub_3B3554(v1193);
            v3 = v1192;
            v468 = sub_4B4A50();
            sub_4C5CB8(v468);
            sub_4C5DC0(0);
            *(&v1195 + 1) = sub_13C80(0, &unk_DE8EA0);
            v1196 = &off_D17A48;
            *&v1194 = v1180;
            v469 = v1180;
            v470 = v467;
            sub_3B8D28(&v1194, &off_CEFDE8);
            sub_12E1C(&v1194, &unk_DE9C60);
            v471 = [v1181 headlineText];
            if (v471)
            {
              v472 = v32;
              v32 = v471;
              v473 = sub_AB92A0();
              v475 = v474;

              LOBYTE(v32) = v472;
            }

            else
            {
              v473 = 0;
              v475 = 0xE000000000000000;
            }

            sub_4C53F0(v473, v475);
            sub_4C5610(v200, v1183);
            v156 = v470;
            sub_4C5820(v205, v207);
            v486 = [v1181 descriptionText];
LABEL_530:
            v568 = v486;
            if (!v568)
            {
              v569 = 0;
              v567 = 0xE000000000000000;
              goto LABEL_533;
            }

            goto LABEL_531;
          }

          if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v466 uniformCellType], 1))
          {
            v37 = v32;
            a2 = v1193;
            v35 = sub_3B34DC(v1193);
            v476 = sub_AB37F0();
            v3 = v1192;
            LOBYTE(v32) = sub_4B808C(v476);
            if ((v32 & 1) == 0)
            {
              v478 = 0;
LABEL_284:
              AlbumCell.rank.setter(v478, (v32 & 1) == 0);
              AlbumCell.title.setter(v200, v202);
              AlbumCell.artistName.setter(v205, v207);
              *(&v1195 + 1) = sub_13C80(0, &unk_DE8EA0);
              v1196 = &off_D17A48;
              *&v1194 = v1180;
              sub_37C074(v1180, 4);
              sub_3B8D10(&v1194, &off_CEFDE8);
              sub_12E1C(&v1194, &unk_DE9C60);
              v391 = 0;
LABEL_285:
              AlbumCell.layoutStyle.setter(v391);
              v511 = v35;
LABEL_484:
              v156 = v511;
              v817 = v37 & 1;
LABEL_654:
              VerticalLockupCollectionViewCell.isDisabled.setter(v817);
              goto LABEL_655;
            }

            v466 = a2;
            v477 = sub_AB37B0();
            v41 = __OFADD__(v477, 1);
            v478 = v477 + 1;
            if (!v41)
            {
              goto LABEL_284;
            }

            __break(1u);
          }

          if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v466 v37[196]], 5))
          {
            v479 = v32;

            v480 = sub_3B3820(v1193);
            v481 = [v1181 headlineText];
            if (v481)
            {
              v482 = v481;
              v483 = sub_AB92A0();
              v485 = v484;
            }

            else
            {
              v483 = 0;
              v485 = 0xE000000000000000;
            }

            sub_BA224(v483, v485);
            sub_BA428(v200, v202);
            v857 = [v1181 a2[318]];
            v3 = v1192;
            if (v857)
            {
              v858 = v857;
              v859 = sub_AB92A0();
              v861 = v860;
            }

            else
            {
              v859 = 0;
              v861 = 0xE000000000000000;
            }

            a2 = v1193;
            sub_BA588(v859, v861);
            *(&v1195 + 1) = sub_13C80(0, &unk_DE8EA0);
            v1196 = &off_D17A48;
            v862 = v1180;
            *&v1194 = v1180;
            sub_37C074(v1180, 4);
            sub_3B8F50(&v1194, &off_CEF8C8);
            sub_12E1C(&v1194, &unk_DE9C60);
            sub_BA6C4(0);
            v863 = v480;
            sub_200620(v479 & 1);
            sub_200598([v862 isFavorite]);

            swift_unknownObjectRelease();
            v101 = v863;
            v577 = v862;
            goto LABEL_651;
          }

          if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v466 v37[196]], 7))
          {
            v512 = *&v35[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults];
            v513 = sub_AB3770().super.isa;
            v514 = [v512 itemAtIndexPath:v513];

            type metadata accessor for JSPosterItem();
            v1183 = v514;
            v515 = swift_dynamicCastClass();
            if (v515)
            {
              v516 = v515;

              v156 = sub_3B356C(v1193);
              v517 = [v1181 v3[332]];
              if (v517)
              {
                v518 = v517;
                v519 = sub_AB92A0();
                v521 = v520;
              }

              else
              {
                v519 = 0;
                v521 = 0xE000000000000000;
              }

              sub_37AC4(v519, v521);
              v1039 = [v1181 a2[318]];
              if (v1039)
              {
                v1040 = v1039;
                v1041 = sub_AB92A0();
                v1043 = v1042;
              }

              else
              {
                v1041 = 0;
                v1043 = 0xE000000000000000;
              }

              sub_37B14(v1041, v1043);
              v1044 = [v1181 descriptionText];
              if (v1044)
              {
                v1045 = v1044;
                v1046 = sub_AB92A0();
                v1048 = v1047;
              }

              else
              {
                v1046 = 0;
                v1048 = 0xE000000000000000;
              }

              sub_37CA8(v1046, v1048);
              v1049 = [v1181 overlayTitleText];
              if (v1049)
              {
                v1050 = v1049;
                v1051 = sub_AB92A0();
                v1053 = v1052;
              }

              else
              {
                v1051 = 0;
                v1053 = 0xE000000000000000;
              }

              sub_37EC8(v1051, v1053);
              v1054 = *(&stru_1F8.size + (swift_isaMask & *v516));
              v1055 = swift_unknownObjectRetain();
              v1056 = v1054(v1055);
              v1058 = v1057;
              swift_unknownObjectRelease();
              if (v1058)
              {
                v1059 = v1056;
              }

              else
              {
                v1059 = 0;
              }

              if (v1058)
              {
                v1060 = v1058;
              }

              else
              {
                v1060 = 0xE000000000000000;
              }

              sub_38508(v1059, v1060);
              v1061 = sub_39AC8(1);
              v1062 = (*(&stru_478.reloff + (swift_isaMask & *v516)))(v1061);
              v1063 = sub_3863C(v1062);
              v1064 = (*&stru_4C8.segname[(swift_isaMask & *v516) + 8])(v1063);
              sub_38720(v1064);
              v1065 = (*(&stru_4C8.offset + (swift_isaMask & *v516)))();
              v1066 = sub_38A9C(v1065);
              v1067 = *(&stru_4C8.reserved2 + (swift_isaMask & *v516));
              v1068 = v1067(v1066);
              if (v1068)
              {
                v1069 = v1068;
                v1070 = (*&stru_298.sectname[swift_isaMask & *v1068])();
                v1072 = v1071;
              }

              else
              {
                v1070 = 0;
                v1072 = 0;
              }

              v1073 = sub_38F48(v1070, v1072);
              v1074 = v1067(v1073);
              if (v1074)
              {
                v1075 = v1074;
                v1076 = (*&stru_298.segname[(swift_isaMask & *v1074) + 8])();

                v1077 = v1076 & 1;
              }

              else
              {
                v1077 = 2;
              }

              sub_38F98(v1077);
              v1078 = (*&stru_518.segname[swift_isaMask & *v516])();
              sub_39C54(v1078 & 1);

              swift_unknownObjectRelease();
              goto LABEL_790;
            }

            swift_unknownObjectRelease();
            v466 = v1187;
          }

          if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v466 v37[196]], 6))
          {
            v1012 = v32;
            v1013 = v1180;
            v16 = v466;

            v1014 = sub_3B3584(v1193);
            v1015 = [v1181 headlineText];
            if (v1015)
            {
              v1016 = v1015;
              v1017 = sub_AB92A0();
              v1019 = v1018;
            }

            else
            {
              v1017 = 0;
              v1019 = 0xE000000000000000;
            }

            sub_233E78(v1017, v1019);
            v1023 = [v1181 v3[332]];
            if (v1023)
            {
              v1024 = v1023;
              v1025 = sub_AB92A0();
              v1027 = v1026;
            }

            else
            {
              v1025 = 0;
              v1027 = 0xE000000000000000;
            }

            sub_234088(v1025, v1027);
            v1028 = [v1181 a2[318]];
            if (v1028)
            {
              v1029 = v1028;
              v1030 = sub_AB92A0();
              v1032 = v1031;
            }

            else
            {
              v1030 = 0;
              v1032 = 0xE000000000000000;
            }

            sub_234334(v1030, v1032);
            *(&v1195 + 1) = sub_13C80(0, &unk_DE8EA0);
            v1196 = &off_D17A48;
            *&v1194 = v1013;
            sub_37C074(v1013, 4);
            sub_3B8D40(&v1194, &off_CEFDE8);
            sub_12E1C(&v1194, &unk_DE9C60);
            v1033 = v1014;
            sub_200878(0);
            sub_20085C(1);
            [v1033 music_setLayoutInsets:{-1.0, 0.0, -1.0, 0.0}];
            sub_200620(v1012 & 1);

            swift_unknownObjectRelease();
            v101 = v1033;
            sub_3EB30(v1013, 4);

            v3 = v1192;
            a2 = v1193;
            goto LABEL_51;
          }
        }

        v3 = v1192;
        if (sub_4B306C())
        {
          a2 = v1193;
          v1020 = sub_3B3838(v1193);
          sub_1ABE74(v200, v202);
          sub_1AC118(v205, v207);
          v1021 = v1020;
          sub_200878(1);
          sub_20085C(1);
          sub_1AC36C(v32 & 1);
          v1022 = v1180;
          sub_200598([v1180 isFavorite]);

          swift_unknownObjectRelease();
          v101 = v1021;
          v577 = v1022;
LABEL_651:
          v578 = 4;
          goto LABEL_659;
        }

        a2 = v1193;
        v184 = sub_3B34DC(v1193);
        AlbumCell.title.setter(v200, v202);
        AlbumCell.artistName.setter(v205, v207);
        *(&v1195 + 1) = sub_13C80(0, &unk_DE8EA0);
        v1196 = &off_D17A48;
        *&v1194 = v1180;
        sub_37C074(v1180, 4);
        sub_3B8D10(&v1194, &off_CEFDE8);
        sub_12E1C(&v1194, &unk_DE9C60);
LABEL_653:
        AlbumCell.layoutStyle.setter(0);
        v156 = v184;
        v817 = v32 & 1;
        goto LABEL_654;
      }

      v278 = [v1180 curator];
      if (v278)
      {
        v279 = v278;
        v280 = [v278 name];
        if (v280)
        {
          v281 = v32;
          v282 = v280;
          v205 = sub_AB92A0();
          v207 = v283;

          v32 = v281;
          goto LABEL_259;
        }
      }

      v205 = 0;
      v207 = 0xE000000000000000;
      goto LABEL_259;
    }

    a2 = v1193;
    v183 = v1187;
    if (v1187)
    {
      if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1187 uniformCellType], 1))
      {
        v184 = sub_3B34DC(a2);
        v185 = [v1180 name];
        if (v185)
        {
          v186 = v32;
          v32 = v185;
          v187 = sub_AB92A0();
          v189 = v188;

          LOBYTE(v32) = v186;
        }

        else
        {
          v187 = 0;
          v189 = 0xE000000000000000;
        }

        AlbumCell.title.setter(v187, v189);
        AlbumCell.artistName.setter(0, 0xE000000000000000);
        goto LABEL_653;
      }

      if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v183 uniformCellType], 2))
      {
LABEL_724:
        v156 = sub_3B35B4(a2);
        sub_361EF0(0, 0, 0, 0);
        v1107 = [v1180 name];
        if (v1107)
        {
          v1108 = v1107;
          v1109 = sub_AB92A0();
          v1111 = v1110;
        }

        else
        {
          v1109 = 0;
          v1111 = 0xE000000000000000;
        }

        sub_1FD7A8(v1109, v1111);
        sub_1FDACC(0, 0xE000000000000000);
        v817 = v32 & 1;
        goto LABEL_654;
      }

      if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v183 uniformCellType], 5))
      {
        v191 = v32;
        v192 = sub_3B3820(a2);
        v375 = [v1181 headlineText];
        if (v375)
        {
          v376 = v375;
          v377 = sub_AB92A0();
          v379 = v378;
        }

        else
        {
          v377 = 0;
          v379 = 0xE000000000000000;
        }

        sub_BA224(v377, v379);
        v818 = [v1181 titleText];
        if (v818 || (v818 = [v1180 name]) != 0)
        {
          v819 = v818;
          v820 = sub_AB92A0();
          v822 = v821;
        }

        else
        {
          v820 = 0;
          v822 = 0xE000000000000000;
        }

        sub_BA428(v820, v822);
        v823 = [v1181 subtitleText];
        if (v823)
        {
          v824 = v823;
          v825 = sub_AB92A0();
          v827 = v826;
        }

        else
        {
          v825 = 0;
          v827 = 0xE000000000000000;
        }

        sub_BA588(v825, v827);
        v1196 = 0;
        v1194 = 0u;
        v1195 = 0u;
        sub_3B8F50(&v1194, &off_CEFDE8);
        sub_12E1C(&v1194, &unk_DE9C60);
        v442 = 0;
        goto LABEL_242;
      }

      if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v183 uniformCellType], 6))
      {
        v487 = v32;
        v488 = v1180;
        v489 = sub_3B3584(a2);
        v490 = [v1181 headlineText];
        if (v490)
        {
          v491 = v490;
          v492 = sub_AB92A0();
          v494 = v493;
        }

        else
        {
          v492 = 0;
          v494 = 0xE000000000000000;
        }

        sub_233E78(v492, v494);
        v958 = [v1181 titleText];
        if (v958 || (v958 = [v488 name]) != 0)
        {
          v959 = v958;
          v960 = sub_AB92A0();
          v962 = v961;
        }

        else
        {
          v960 = 0;
          v962 = 0xE000000000000000;
        }

        sub_234088(v960, v962);
        v963 = [v1181 subtitleText];
        if (v963)
        {
          v964 = v963;
          v965 = sub_AB92A0();
          v967 = v966;
        }

        else
        {
          v965 = 0;
          v967 = 0xE000000000000000;
        }

        sub_234334(v965, v967);
        v156 = v489;
        sub_200878(0);
        sub_20085C(1);
        sub_200620(v487 & 1);

        [v156 music_setLayoutInsets:{-1.0, 0.0, -1.0, 0.0}];
        if ([v1181 headlineColor] != &dword_0 + 1)
        {
LABEL_629:
          sub_235010(0);

LABEL_790:
          swift_unknownObjectRelease();
          goto LABEL_791;
        }

        v968 = [(SEL *)v1192 view];
        if (v968)
        {
          goto LABEL_628;
        }

LABEL_796:
        __break(1u);
        goto LABEL_797;
      }

      if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v183 uniformCellType], 7))
      {
        v642 = *&v35[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults];
        v643 = sub_AB3770().super.isa;
        [v642 itemAtIndexPath:v643];

        type metadata accessor for JSPosterItem();
        v644 = swift_dynamicCastClass();
        if (v644)
        {
          v349 = v644;
          v350 = sub_3B356C(v1193);
          v645 = [v1181 titleText];
          if (v645)
          {
            v646 = v645;
            v647 = sub_AB92A0();
            v649 = v648;
          }

          else
          {
            v647 = 0;
            v649 = 0xE000000000000000;
          }

          sub_37AC4(v647, v649);
          v1132 = [v1181 subtitleText];
          if (v1132)
          {
            v1133 = v1132;
            v1134 = sub_AB92A0();
            v1136 = v1135;
          }

          else
          {
            v1134 = 0;
            v1136 = 0xE000000000000000;
          }

          sub_37B14(v1134, v1136);
          v915 = [v1181 descriptionText];
          if (!v915)
          {
            v921 = 0;
            v922 = 0xE000000000000000;
            goto LABEL_773;
          }

LABEL_771:
          v1142 = v915;
          v921 = sub_AB92A0();
          v922 = v1143;

          goto LABEL_773;
        }

        swift_unknownObjectRelease();
        v3 = v1192;
        a2 = v1193;
      }
    }

    if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1180 curatorKind], 3))
    {
      LOBYTE(v37) = v32;
      if (sub_4B306C())
      {
        v1079 = sub_3B3838(a2);
        v1080 = [v1180 name];
        if (v1080)
        {
          v1081 = v1080;
          v1082 = sub_AB92A0();
          v1084 = v1083;
        }

        else
        {
          v1082 = 0;
          v1084 = 0xE000000000000000;
        }

        sub_1ABE74(v1082, v1084);
        sub_1AC118(0, 0xE000000000000000);
        v156 = v1079;
        sub_200878(1);
        sub_20085C(1);

        sub_1AC36C(v37 & 1);
        goto LABEL_656;
      }

      v1101 = sub_3B35CC(a2);
      v1102 = [v1180 name];
      if (v1102)
      {
        v1103 = v1102;
        v1104 = sub_AB92A0();
        v1106 = v1105;
      }

      else
      {
        v1104 = 0;
        v1106 = 0xE000000000000000;
      }

      CuratorActivityCell.title.setter(v1104, v1106);
      v511 = v1101;
      goto LABEL_484;
    }

    if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1180 curatorKind], 1))
    {
      v1085 = sub_3B35E4(a2);
      v1086 = [v1181 titleText];
      LOBYTE(v37) = v32;
      if (v1086 || (v1086 = [v1180 shortName]) != 0)
      {
        v1087 = v1086;
        v1088 = sub_AB92A0();
        v1090 = v1089;
      }

      else
      {
        v1088 = 0;
        v1090 = 0xE000000000000000;
      }

      RadioShowCell.title.setter(v1088, v1090);
      v1091 = [v1181 subtitleText];
      if (v1091 || (v1091 = [v1180 name]) != 0)
      {
        v1092 = v1091;
        v1093 = sub_AB92A0();
        v1095 = v1094;
      }

      else
      {
        v1093 = 0;
        v1095 = 0xE000000000000000;
      }

      RadioShowCell.subtitle.setter(v1093, v1095);
      v1096 = [v1181 overlayTitleText];
      if (v1096)
      {
        v1097 = v1096;
        v1098 = sub_AB92A0();
        v1100 = v1099;
      }

      else
      {
        v1098 = 0;
        v1100 = 0xE000000000000000;
      }

      RadioShowCell.overlayTitle.setter(v1098, v1100);
      v1112 = [v1181 overlaySubtitleText];
      if (v1112)
      {
        v1113 = v1112;
        v1114 = sub_AB92A0();
        v1116 = v1115;
      }

      else
      {
        v1114 = 0;
        v1116 = 0xE000000000000000;
      }

      RadioShowCell.overlaySubtitle.setter(v1114, v1116);
      v511 = v1085;
      goto LABEL_484;
    }

    goto LABEL_724;
  }

LABEL_75:
  if (v33)
  {
    if (v33 != 1)
    {
      goto LABEL_117;
    }

    a2 = v1193;
    v138 = v1187;
    if (v1187)
    {
      if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1187 uniformCellType], 1))
      {
        v139 = sub_3B34DC(a2);
        v140 = [v1180 name];
        if (v140)
        {
          v141 = v32;
          v32 = v140;
          v142 = sub_AB92A0();
          v144 = v143;

          LOBYTE(v32) = v141;
        }

        else
        {
          v142 = 0;
          v144 = 0xE000000000000000;
        }

        AlbumCell.title.setter(v142, v144);
        AlbumCell.artistName.setter(0, 0xE000000000000000);
        AlbumCell.layoutStyle.setter(0);
        v156 = v139;
        VerticalLockupCollectionViewCell.isDisabled.setter(v32 & 1);

        *(&v1195 + 1) = sub_13C80(0, &qword_DE8E78);
        v1196 = &off_D17A70;
        *&v1194 = v1180;
        sub_37C074(v1180, 1);
        sub_3B8D10(&v1194, &off_CEFDE8);
LABEL_748:

        swift_unknownObjectRelease();
        sub_12E1C(&v1194, &unk_DE9C60);
        goto LABEL_658;
      }

      if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v138 uniformCellType], 3))
      {
        v156 = sub_3B3554(v1193);
        v284 = sub_4B4A50();
        v285 = v284;
        sub_4C5CB8(v284);
        if (v285 == 2)
        {
          v286 = 0;
        }

        else
        {
          v286 = &dword_0 + 3;
        }

        sub_4C5DC0(v286);
        *(&v1195 + 1) = sub_13C80(0, &qword_DE8E78);
        v1196 = &off_D17A70;
        *&v1194 = v1180;
        v287 = v1180;
        sub_3B8D28(&v1194, &off_CEFDE8);
        sub_12E1C(&v1194, &unk_DE9C60);
        v288 = [v1181 headlineText];
        if (v288)
        {
          v289 = v32;
          v32 = v288;
          v290 = sub_AB92A0();
          v292 = v291;

          LOBYTE(v32) = v289;
        }

        else
        {
          v290 = 0;
          v292 = 0xE000000000000000;
        }

        sub_4C53F0(v290, v292);
        v527 = [v287 name];
        a2 = v1193;
        if (v527)
        {
          v528 = v527;
          v529 = sub_AB92A0();
          v531 = v530;
        }

        else
        {
          v529 = 0;
          v531 = 0xE000000000000000;
        }

        sub_4C5610(v529, v531);
        v567 = 0xE000000000000000;
        sub_4C5820(0, 0xE000000000000000);
        v568 = [v1181 descriptionText];
        if (!v568)
        {
          v569 = 0;
LABEL_533:
          sub_4C5ACC(v569, v567);
          v671 = v32 & 1;
LABEL_534:
          sub_4C5EA0(v671);
          goto LABEL_656;
        }

LABEL_531:
        v868 = v568;
        v569 = sub_AB92A0();
        v567 = v869;

        goto LABEL_533;
      }

      v345 = j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v138 uniformCellType], 7);
      a2 = v1193;
      if (v345)
      {
        v346 = *&v35[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults];
        v347 = sub_AB3770().super.isa;
        [v346 itemAtIndexPath:v347];

        type metadata accessor for JSPosterItem();
        v348 = swift_dynamicCastClass();
        if (v348)
        {
          v349 = v348;
          v350 = sub_3B356C(a2);
          v351 = [v1181 titleText];
          if (v351)
          {
            v352 = v351;
            v353 = sub_AB92A0();
            v355 = v354;
          }

          else
          {
            v353 = 0;
            v355 = 0xE000000000000000;
          }

          sub_37AC4(v353, v355);
          v900 = [v1181 subtitleText];
          if (v900)
          {
            v901 = v900;
            v902 = sub_AB92A0();
            v904 = v903;
          }

          else
          {
            v902 = 0;
            v904 = 0xE000000000000000;
          }

          sub_37B14(v902, v904);
          v915 = [v1181 descriptionText];
          if (v915)
          {
            goto LABEL_771;
          }

          v921 = 0;
          v922 = 0xE000000000000000;
LABEL_773:
          sub_37CA8(v921, v922);
          v1144 = [v1181 overlayTitleText];
          if (v1144)
          {
            v1145 = v1144;
            v1146 = sub_AB92A0();
            v1148 = v1147;
          }

          else
          {
            v1146 = 0;
            v1148 = 0xE000000000000000;
          }

          sub_37EC8(v1146, v1148);
          v1149 = *(&stru_1F8.size + (swift_isaMask & *v349));
          v1150 = swift_unknownObjectRetain();
          v1151 = v1149(v1150);
          v1153 = v1152;
          swift_unknownObjectRelease();
          if (v1153)
          {
            v1154 = v1151;
          }

          else
          {
            v1154 = 0;
          }

          if (v1153)
          {
            v1155 = v1153;
          }

          else
          {
            v1155 = 0xE000000000000000;
          }

          sub_38508(v1154, v1155);
          v1156 = sub_39AC8(1);
          v1157 = (*(&stru_478.reloff + (swift_isaMask & *v349)))(v1156);
          v1158 = sub_3863C(v1157);
          v1159 = (*&stru_4C8.segname[(swift_isaMask & *v349) + 8])(v1158);
          sub_38720(v1159);
          v1160 = (*(&stru_4C8.offset + (swift_isaMask & *v349)))();
          v1161 = sub_38A9C(v1160);
          v1162 = *(&stru_4C8.reserved2 + (swift_isaMask & *v349));
          v1163 = v1162(v1161);
          if (v1163)
          {
            v1164 = v1163;
            v1165 = (*&stru_298.sectname[swift_isaMask & *v1163])();
            v1167 = v1166;
          }

          else
          {
            v1165 = 0;
            v1167 = 0;
          }

          v1168 = sub_38F48(v1165, v1167);
          v1169 = v1162(v1168);
          if (v1169)
          {
            v1170 = v1169;
            v1171 = (*&stru_298.segname[(swift_isaMask & *v1169) + 8])();

            v1172 = v1171 & 1;
          }

          else
          {
            v1172 = 2;
          }

          v156 = v350;
          sub_38F98(v1172);
          v952 = *&stru_518.segname[swift_isaMask & *v349];
LABEL_789:
          v1173 = v952();
          sub_39C54(v1173 & 1);

          swift_unknownObjectRelease();
          goto LABEL_790;
        }

        swift_unknownObjectRelease();
      }
    }

    if (sub_4B306C())
    {
      v713 = sub_3B3868(a2);
      sub_15D33C(&dword_0 + 1);
      v714 = [v1181 titleText];
      v715 = v32;
      if (v714 || (v714 = [v1180 name]) != 0)
      {
        v716 = v714;
        v717 = sub_AB92A0();
        v719 = v718;
      }

      else
      {
        v717 = 0;
        v719 = 0xE000000000000000;
      }

      sub_15D360(v717, v719);
      v720 = [v1181 subtitleText];
      if (v720)
      {
        v721 = v720;
        v722 = sub_AB92A0();
        v724 = v723;
      }

      else
      {
        v722 = 0;
        v724 = 0xE000000000000000;
      }

      sub_15D488(v722, v724);
      v735 = v713;
      sub_200620(v715 & 1);
      v736 = v1180;
      sub_200598([v1180 isFavorite]);

      swift_unknownObjectRelease();
      v101 = v735;
      v577 = v736;
      v578 = 1;
      goto LABEL_659;
    }

    v156 = sub_3B35B4(a2);
    sub_361EF0(0, 0, 0, 0);
    sub_1FDD00(&dword_0 + 1);
    v725 = [v1181 titleText];
    if (v725 || (v725 = [v1180 name]) != 0)
    {
      v726 = v725;
      v727 = sub_AB92A0();
      v729 = v728;
    }

    else
    {
      v727 = 0;
      v729 = 0xE000000000000000;
    }

    sub_1FD7A8(v727, v729);
    v730 = [v1181 subtitleText];
    if (v730)
    {
      v731 = v730;
      v732 = sub_AB92A0();
      v734 = v733;
    }

    else
    {
      v732 = 0;
      v734 = 0xE000000000000000;
    }

    sub_1FDACC(v732, v734);
    VerticalLockupCollectionViewCell.isDisabled.setter(v32 & 1);

    *(&v1195 + 1) = sub_13C80(0, &qword_DE8E78);
    v1196 = &off_D17A70;
    *&v1194 = v1180;
    sub_37C074(v1180, 1);
    sub_3B8D70(&v1194, &off_CEFDE8);
    goto LABEL_748;
  }

  v153 = sub_3CAC50(v1180);
  v1175 = v154;
  a2 = v1193;
  v155 = v1187;
  if (!v1187)
  {
    goto LABEL_468;
  }

  if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1187 uniformCellType], 3))
  {
    v156 = sub_3B3554(a2);
    v157 = sub_4B4A50();
    sub_4C5CB8(v157);
    sub_4C5DC0(0);
    *(&v1195 + 1) = sub_13C80(0, &qword_DE8E90);
    v1196 = &off_D17A20;
    *&v1194 = v1180;
    v158 = v1180;
    sub_3B8D28(&v1194, &off_CEFDE8);
    sub_12E1C(&v1194, &unk_DE9C60);
    v159 = [v1181 headlineText];
    if (v159)
    {
      v160 = v32;
      v32 = v159;
      v161 = sub_AB92A0();
      v163 = v162;

      LOBYTE(v32) = v160;
    }

    else
    {
      v161 = 0;
      v163 = 0xE000000000000000;
    }

    sub_4C53F0(v161, v163);
    v414 = [v1181 titleText];
    if (v414)
    {
      v415 = v414;
      v153 = sub_AB92A0();
      v417 = v416;

      v418 = v417;
    }

    else
    {
      v418 = v1175;
    }

    sub_4C5610(v153, v418);
    v419 = [v1181 subtitleText];
    if (!v419)
    {
      v424 = [v158 artist];
      if (v424)
      {
        v425 = v424;
        v426 = v32;
        v427 = [v424 name];
        if (v427)
        {
          v428 = v427;
          v421 = sub_AB92A0();
          v423 = v429;
        }

        else
        {

          v421 = 0;
          v423 = 0xE000000000000000;
        }

        LOBYTE(v32) = v426;
      }

      else
      {
        v421 = 0;
        v423 = 0xE000000000000000;
      }

      goto LABEL_529;
    }

    goto LABEL_227;
  }

  if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v155 uniformCellType], 5))
  {
    v300 = v32;

    v301 = sub_3B3820(a2);
    v302 = [v1181 headlineText];
    if (v302)
    {
      v303 = v302;
      v304 = sub_AB92A0();
      v306 = v305;
    }

    else
    {
      v304 = 0;
      v306 = 0xE000000000000000;
    }

    sub_BA224(v304, v306);
    v542 = [v1181 titleText];
    if (v542 || (v542 = [v1180 title]) != 0)
    {
      v543 = v542;
      v544 = sub_AB92A0();
      v546 = v545;
    }

    else
    {
      v544 = 0;
      v546 = 0xE000000000000000;
    }

    sub_BA428(v544, v546);
    v547 = [v1181 subtitleText];
    v3 = v1192;
    if (v547)
    {
      v548 = v547;
      v549 = sub_AB92A0();
      v551 = v550;

      v552 = v551;
      v553 = v549;
    }

    else
    {
      sub_AB9220();
      v1197._countAndFlagsBits = 0;
      v1197._object = 0xE000000000000000;
      sub_AB9210(v1197);
      *&v1194 = [v1180 trackCount];
      sub_AB91F0();
      v1198._countAndFlagsBits = 0x297328676E6F7320;
      v1198._object = 0xE800000000000000;
      sub_AB9210(v1198);
      sub_AB9240();
      sub_5F26C();
      v553 = sub_AB9320();
    }

    sub_BA588(v553, v552);
    *(&v1195 + 1) = sub_13C80(0, &qword_DE8E90);
    v1196 = &off_D17A20;
    v575 = v1180;
    *&v1194 = v1180;
    sub_37C074(v1180, 0);
    sub_3B8F50(&v1194, &off_CEF8C8);
    sub_12E1C(&v1194, &unk_DE9C60);
    sub_BA6C4(0);
    v576 = v301;
    sub_200620(v300 & 1);
    sub_200598([v575 isFavorite]);

    swift_unknownObjectRelease();
    v101 = v576;
    v577 = v575;
    v578 = 0;
    goto LABEL_659;
  }

  if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v155 uniformCellType], 7))
  {
    v367 = *&v35[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults];
    v368 = sub_AB3770().super.isa;
    [v367 itemAtIndexPath:v368];

    type metadata accessor for JSPosterItem();
    v369 = swift_dynamicCastClass();
    if (v369)
    {
      v349 = v369;

      v350 = sub_3B356C(a2);
      v370 = [v1181 titleText];
      if (v370)
      {
        v371 = v370;
        v372 = sub_AB92A0();
        v374 = v373;
      }

      else
      {
        v372 = 0;
        v374 = 0xE000000000000000;
      }

      sub_37AC4(v372, v374);
      v910 = [v1181 subtitleText];
      if (v910)
      {
        v911 = v910;
        v912 = sub_AB92A0();
        v914 = v913;
      }

      else
      {
        v912 = 0;
        v914 = 0xE000000000000000;
      }

      sub_37B14(v912, v914);
      v915 = [v1181 descriptionText];
      if (v915)
      {
        goto LABEL_771;
      }

      v921 = 0;
      v922 = 0xE000000000000000;
      goto LABEL_773;
    }

    swift_unknownObjectRelease();
  }

  v793 = v1187;
  if (!j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1187 uniformCellType], 6))
  {
LABEL_468:
    v134 = sub_3B34DC(a2);
    v803 = sub_AB37F0();
    v804 = sub_4B808C(v803);
    if (v804)
    {
      v805 = sub_AB37B0();
      v41 = __OFADD__(v805, 1);
      v806 = v805 + 1;
      if (!v41)
      {
LABEL_473:
        LOBYTE(v37) = v32;
        AlbumCell.rank.setter(v806, (v804 & 1) == 0);
        AlbumCell.title.setter(v153, v1175);
        v807 = [v1181 subtitleText];
        if (v807)
        {
          v808 = v807;
          v809 = sub_AB92A0();
          v811 = v810;

LABEL_480:
          AlbumCell.artistName.setter(v809, v811);
          *(&v1195 + 1) = sub_13C80(0, &qword_DE8E90);
          v1196 = &off_D17A20;
          v464 = v1180;
          *&v1194 = v1180;
          v465 = 0;
LABEL_481:
          sub_37C074(v464, v465);
LABEL_482:
          sub_3B8D10(&v1194, &off_CEFDE8);
          sub_12E1C(&v1194, &unk_DE9C60);
          AlbumCell.layoutStyle.setter(0);
LABEL_483:
          v511 = v134;
          goto LABEL_484;
        }

        v812 = [v1180 artist];
        if (v812)
        {
          v813 = v812;
          v814 = [v812 name];
          if (v814)
          {
            v815 = v814;
            v809 = sub_AB92A0();
            v811 = v816;

            v3 = v1192;
            goto LABEL_480;
          }
        }

        v809 = 0;
        v811 = 0xE000000000000000;
        goto LABEL_480;
      }

      __break(1u);
    }

    v806 = 0;
    goto LABEL_473;
  }

  v794 = v32;
  v795 = v1180;
  v796 = v793;
  v797 = sub_3B3584(a2);
  v798 = [v1181 headlineText];
  if (v798)
  {
    v799 = v798;
    v800 = sub_AB92A0();
    v802 = v801;
  }

  else
  {
    v800 = 0;
    v802 = 0xE000000000000000;
  }

  sub_233E78(v800, v802);
  v885 = [v1181 titleText];
  if (v885)
  {
    v886 = v885;
    v153 = sub_AB92A0();
    v888 = v887;

    v889 = v888;
  }

  else
  {
    v889 = v1175;
  }

  sub_234088(v153, v889);
  v890 = [v1181 subtitleText];
  if (!v890)
  {
    v895 = [v795 artist];
    if (v895)
    {
      v896 = v895;
      v897 = [v895 name];
      if (v897)
      {
        v898 = v897;
        v892 = sub_AB92A0();
        v894 = v899;

        goto LABEL_759;
      }
    }

    v892 = 0;
    v894 = 0xE000000000000000;
    goto LABEL_759;
  }

  v891 = v890;
  v892 = sub_AB92A0();
  v894 = v893;

LABEL_759:
  sub_234334(v892, v894);
  *(&v1195 + 1) = sub_13C80(0, &qword_DE8E90);
  v1196 = &off_D17A20;
  *&v1194 = v795;
  sub_37C074(v795, 0);
  sub_3B8D40(&v1194, &off_CEF8C8);
  sub_12E1C(&v1194, &unk_DE9C60);
  v1130 = v797;
  sub_200878(0);
  sub_20085C(1);
  sub_200620(v794 & 1);
  sub_200598([v795 isFavorite]);

  v1131 = v1130;
  [v1131 music_setLayoutInsets:{-1.0, 0.0, -1.0, 0.0}];

  swift_unknownObjectRelease();
  v101 = v1131;
  sub_3EB30(v795, 0);

  v3 = v1192;
  a2 = v1193;
  v16 = v796;
LABEL_51:
  swift_getObjectType();
  v102 = swift_conformsToProtocol2();
  p_name = &JSDateDescriptor.name;
  if (v102 && v101)
  {
    v104 = v102;
    ObjectType = swift_getObjectType();
    v106 = v101;
    (*(v104 + 16))([(SEL *)v3 viewBackgroundColor], ObjectType, v104);
  }

  swift_getObjectType();
  v107 = swift_conformsToProtocol2();
  if (v107 && v101)
  {
    v108 = v107;
    v1181 = swift_getObjectType();
    v109 = *(v108 + 8);
    v1182 = (v108 + 8);
    v1183 = v109;
    v110 = (v109)(v1181, v108);
    v1187 = v16;
    v111 = v110;
    v112 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v113 = swift_allocObject();
    *(v113 + 24) = v108;
    swift_unknownObjectWeakInit();
    v114 = v1189;
    v1180 = *(v1189 + 16);
    v1184 = v101;
    v116 = v1190;
    v115 = v1191;
    (v1180)(v1190, a2, v1191);
    v117 = (*(v114 + 80) + 32) & ~*(v114 + 80);
    v118 = swift_allocObject();
    v1192 = v3;
    v119 = v118;
    *(v118 + 16) = v113;
    *(v118 + 24) = v112;
    (*(v114 + 32))(v118 + v117, v116, v115);
    v120 = (v111 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
    v121 = *(v111 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
    *v120 = sub_4BDE2C;
    v120[1] = v119;
    v3 = v1192;

    v122 = v121;
    v16 = v1187;
    a2 = v1193;
    sub_17654(v122);

    (v1180)(v116, a2, v115);
    v123 = v1184;
    v124 = v1186;
    v125 = v116;
    v101 = v1184;
    sub_74D38(v125, v1184, v1186);
    v126 = (v1183)(v1181, v108);
    *(&v1195 + 1) = v1185;
    v1196 = sub_4BDE90(&unk_E087E0, type metadata accessor for CollectionViewCellArtworkComponentLoggingContext);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v1194);
    sub_4BE210(v124, boxed_opaque_existential_0, type metadata accessor for CollectionViewCellArtworkComponentLoggingContext);
    v128 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_loggingContext;
    swift_beginAccess();
    v129 = v126 + v128;
    p_name = (&JSDateDescriptor + 24);
    sub_160B4(&v1194, v129, &unk_E03770);
    swift_endAccess();
  }

  else
  {
  }

  if (*(v3 + qword_E0A788))
  {

    sub_389E3C(a2, v101);
  }

  v130 = [v3 p_name[488]];
  [v101 setBackgroundColor:v130];
}