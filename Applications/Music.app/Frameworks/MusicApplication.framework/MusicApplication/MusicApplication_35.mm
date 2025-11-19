uint64_t sub_2F5600(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_2F5648(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2F56D4(uint64_t *a1, int a2)
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

uint64_t sub_2F571C(uint64_t result, int a2, int a3)
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

unint64_t sub_2F5780()
{
  result = qword_DFE1A8;
  if (!qword_DFE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFE1A8);
  }

  return result;
}

unint64_t sub_2F57D4()
{
  result = qword_DFE1B0;
  if (!qword_DFE1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFE1B0);
  }

  return result;
}

unint64_t sub_2F5828()
{
  result = qword_DFE1B8;
  if (!qword_DFE1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFE1B8);
  }

  return result;
}

uint64_t sub_2F587C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_2F58C4(_OWORD *a1)
{
  result = 0.0;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_2F58EC()
{
  result = qword_DFE1C0;
  if (!qword_DFE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFE1C0);
  }

  return result;
}

unint64_t sub_2F5940()
{
  result = qword_DFE1C8;
  if (!qword_DFE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFE1C8);
  }

  return result;
}

unint64_t sub_2F5994()
{
  result = qword_DFE1D0;
  if (!qword_DFE1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFE1D0);
  }

  return result;
}

unint64_t sub_2F59E8()
{
  result = qword_DFE1D8;
  if (!qword_DFE1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFE1D8);
  }

  return result;
}

uint64_t block_copy_helper_102(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2F5B1C(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 96) = 0;
  v5 = sub_1709C(a1);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = *(v5 + 32);
  *(v5 + 32) = a3;
  *(v5 + 40) = v6;
  swift_retain_n();

  sub_17654(v7);

  return v5;
}

uint64_t sub_2F5BBC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 96);
    if (v1)
    {
      v2 = v1;

      v3 = [v2 results];

      if (v3)
      {
        isa = sub_AB3770().super.isa;
        v5 = [v3 itemAtIndexPath:isa];

        return v5;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

Swift::Void __swiftcall BrowseCollectionViewController.configureCollectionView(_:)(UICollectionView a1)
{
  [(objc_class *)a1.super.super.super.super.isa setAlwaysBounceVertical:1];
  v3 = [v1 viewBackgroundColor];
  [(objc_class *)a1.super.super.super.super.isa setBackgroundColor:v3];

  [(objc_class *)a1.super.super.super.super.isa setKeyboardDismissMode:1];
  [(objc_class *)a1.super.super.super.super.isa setAllowsFocus:1];
  [(objc_class *)a1.super.super.super.super.isa setRemembersLastFocusedIndexPath:1];
  v10 = v1;
  type metadata accessor for BrowseCollectionViewController();
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0);
  if (swift_dynamicCast())
  {
    sub_12E1C(&v7, &unk_E04550);
    v5 = 1;
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    sub_12E1C(&v7, &unk_E04550);
    v10 = v4;
    v6 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE200);
    v5 = swift_dynamicCast();
    if ((v5 & 1) == 0)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
    }

    sub_12E1C(&v7, &qword_E04580);
  }

  [(objc_class *)a1.super.super.super.super.isa setPrefetchingEnabled:v5, v7, v8, v9, v10];
  [(objc_class *)a1.super.super.super.super.isa _setShouldPrefetchCellsWhenPerformingReloadData:1];
}

void *UICollectionView.dequeueReusableBrowseCell<A>(for:)()
{
  static UICollectionReusableView.reuseIdentifier.getter();
  v1 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();

  v2 = [v0 dataSource];
  if (!v2 || (v10[0] = v2, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04500), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE220), (swift_dynamicCast() & 1) == 0))
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    goto LABEL_6;
  }

  if (!*(&v8 + 1))
  {
LABEL_6:
    sub_12E1C(&v7, &unk_DFE210);
    return v1;
  }

  sub_70DF8(&v7, v10);
  v3 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v4 = *(v3 + 8);
  v5 = v1;
  v4();

  __swift_destroy_boxed_opaque_existential_0(v10);
  return v1;
}

void BrowseCollectionViewController.collectionView(_:willDisplay:forItemAt:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v70[1] = swift_isaMask & *v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v8 - 8);
  v10 = v70 - v9;
  v11 = sub_AB3820();
  v72 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v71 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v70 - v14;
  ObjectType = swift_getObjectType();
  v17 = swift_conformsToProtocol2();
  if (v3 && v17)
  {
    (*(v17 + 8))(ObjectType);
    v19 = v18;
    v20 = swift_getObjectType();
    (*(v72 + 16))(v15, a3, v11);
    sub_303F44(&qword_DFAA90, &type metadata accessor for IndexPath);
    sub_ABAD10();
    (*(v19 + 112))(a2, v76, v20, v19);
    sub_8085C(v76);
    swift_unknownObjectRelease();
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {
    goto LABEL_13;
  }

  v22 = v21;
  v23 = *(v3 + qword_DFE278);
  v24 = a2;
  if (v23 == 2)
  {
    LOBYTE(v23) = (*&stru_248.sectname[swift_isaMask & *v3])(a1) < 2;
  }

  v25 = [v22 tableViewCell];
  if (!v25)
  {
    __break(1u);
    goto LABEL_48;
  }

  v26 = v25;
  [v25 setTableViewStyle:1];

  v27 = [v22 tableViewCell];
  if (!v27)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v28 = v27;
  [v27 _setDrawsSeparatorAtTopOfSection:v23 & 1];

  v29 = [v22 tableViewCell];
  if (!v29)
  {
LABEL_49:
    __break(1u);
    return;
  }

  v30 = v29;
  v31 = *(v4 + qword_DFE280);
  if (v31 == 2)
  {
    LOBYTE(v31) = v23;
  }

  [v29 _setDrawsSeparatorAtBottomOfSection:v31 & 1];

LABEL_13:
  (*&stru_1F8.segname[(swift_isaMask & *v4) + 16])(a3);
  v32 = v72;
  if ((*(v72 + 48))(v10, 1, v11) == 1)
  {
    sub_12E1C(v10, &unk_DE8E20);
    return;
  }

  v33 = v71;
  (*(v32 + 32))(v71, v10, v11);
  v75 = v4;
  type metadata accessor for BrowseCollectionViewController();
  v34 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0);
  if (swift_dynamicCast())
  {
    v35 = sub_70DF8(v73, v76);
    v36 = (*&stru_158.sectname[swift_isaMask & *v34])(v35);
    if (v36 && (v37 = v36, v38 = [v36 results], v37, v38))
    {
      isa = sub_AB3770().super.isa;
      v40 = [v38 itemAtIndexPath:isa];
    }

    else
    {
      v40 = 0;
    }

    v42 = v77;
    v43 = v78;
    __swift_project_boxed_opaque_existential_1(v76, v77);
    (*(v43 + 48))(a2, v33, v40, v42, v43);
    swift_unknownObjectRelease();
    v41 = __swift_destroy_boxed_opaque_existential_0(v76);
  }

  else
  {
    v74 = 0;
    memset(v73, 0, sizeof(v73));
    v41 = sub_12E1C(v73, &unk_E04550);
  }

  v44 = (*&stru_158.sectname[swift_isaMask & *v34])(v41);
  if (!v44)
  {
    goto LABEL_27;
  }

  v45 = v44;
  v46 = [v44 results];

  if (!v46)
  {
    goto LABEL_28;
  }

  v47 = sub_AB3770().super.isa;
  v48 = [v46 itemAtIndexPath:v47];

  if (!v48)
  {
LABEL_27:
    v46 = 0;
    goto LABEL_28;
  }

  objc_opt_self();
  v46 = swift_dynamicCastObjCClass();
  if (!v46)
  {
    swift_unknownObjectRelease();
  }

LABEL_28:
  swift_getObjectType();
  v49 = swift_conformsToProtocol2();
  if (v49)
  {
    if (a2)
    {
      v50 = v49;
      v51 = (*(&stru_3D8.flags + (swift_isaMask & *v34)))();
      if (v51)
      {
        v52 = v51;
        v53 = swift_getObjectType();
        v54 = a2;
        sub_178C4(v54, v33, v52, v53, v50);
      }
    }
  }

  swift_getObjectType();
  v55 = swift_conformsToProtocol2();
  p_cache = &OBJC_METACLASS____TtC16MusicApplication13TextStackView.cache;
  if (!v55 || !a2)
  {
    goto LABEL_38;
  }

  v57 = v55;
  if (!*(v34 + qword_DFE298) || !v46)
  {
    v64 = a2;
    v65 = swift_getObjectType();
    (*(v57 + 16))(0, v65, v57);

LABEL_38:
    if (!v46)
    {
      (*(v32 + 8))(v33, v11);
      return;
    }

    v60 = v46;
    goto LABEL_40;
  }

  v58 = swift_getObjectType();
  v59 = a2;

  v60 = v46;
  v61 = sub_2FBDBC(v60);
  (*(v57 + 16))(v61 & 1, v58, v57);
  v62 = sub_2FC168(v60);
  v63 = v58;
  p_cache = (&OBJC_METACLASS____TtC16MusicApplication13TextStackView + 16);
  (*(v57 + 40))(v62, v63, v57);

  v32 = v72;

LABEL_40:
  if (*(p_cache[83] + v34))
  {

    v66 = sub_2FC35C(v60);

    if ((v66 & 1) == 0)
    {
      [a2 setUserInteractionEnabled:0];
      swift_getObjectType();
      v67 = swift_conformsToProtocol2();
      if (v67)
      {
        if (a2)
        {
          v68 = v67;
          v69 = swift_getObjectType();
          (*(v68 + 16))(1, v69, v68);
        }
      }
    }
  }

  (*(v32 + 8))(v71, v11);
}

void BrowseCollectionViewController.collectionView(_:performPrimaryActionForItemAt:)(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v5 - 8);
  v7 = v22 - v6;
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  type metadata accessor for BrowseCollectionViewController();
  v12 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_12E1C(v22, &unk_E04550);
LABEL_11:
    isa = sub_AB3770().super.isa;
    [a1 deselectItemAtIndexPath:isa animated:1];

    return;
  }

  sub_70DF8(v22, v25);
  (*&stru_1F8.segname[(swift_isaMask & *v12) + 16])(a2);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_12E1C(v7, &unk_DE8E20);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(v25);
    goto LABEL_11;
  }

  v13 = (*(v9 + 32))(v11, v7, v8);
  v14 = (*&stru_158.sectname[swift_isaMask & *v12])(v13);
  if (!v14)
  {
    v18 = 0;
    goto LABEL_9;
  }

  v15 = v14;
  v16 = [v14 results];

  if (v16)
  {
    v17 = sub_AB3770().super.isa;
    v18 = [v16 itemAtIndexPath:v17];

LABEL_9:
    v19 = v26;
    v20 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    (*(v20 + 72))(v18, v11, a2, v19, v20);
    (*(v9 + 8))(v11, v8);
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  __break(1u);
}

void *UICollectionView.dequeueReusableBrowseSupplementaryView<A>(elementKind:forIndexPath:)()
{
  static UICollectionReusableView.reuseIdentifier.getter();
  v1 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();

  v2 = [v0 dataSource];
  if (!v2 || (v10[0] = v2, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04500), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE220), (swift_dynamicCast() & 1) == 0))
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    goto LABEL_6;
  }

  if (!*(&v8 + 1))
  {
LABEL_6:
    sub_12E1C(&v7, &unk_DFE210);
    return v1;
  }

  sub_70DF8(&v7, v10);
  v3 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v4 = *(v3 + 8);
  v5 = v1;
  v4();

  __swift_destroy_boxed_opaque_existential_0(v10);
  return v1;
}

void sub_2F6E48(uint64_t a1)
{
  v2 = *(v1 + qword_DFE268);
  *(v1 + qword_DFE268) = a1;
}

void *BrowseCollectionViewController.modelResponse.getter()
{
  v0 = sub_3025B0();
  v1 = v0;
  return v0;
}

void BrowseCollectionViewController.modelResponse.setter(void *a1)
{
  v2 = v1;
  v3 = swift_isaMask & *v1;
  v4 = *(v2 + qword_DFE2F0);
  if (v4)
  {
    if (v4 != a1)
    {
      goto LABEL_6;
    }
  }

  else if (a1)
  {
    goto LABEL_6;
  }

  if (*(v2 + qword_DFE288) != 1)
  {
LABEL_24:

    return;
  }

LABEL_6:
  if (*(v2 + qword_DFE270) == 1)
  {
    v5 = *(v2 + qword_DFE268);
    *(v2 + qword_DFE268) = a1;

    return;
  }

  v6 = *(v2 + qword_DFE2E0);
  *(v2 + qword_DFE2E0) = a1;
  v36 = a1;
  v7 = a1;

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v10 = *(v3 + 80);
  *(v9 + 16) = v10;
  *(v9 + 24) = v8;

  if (([v2 isViewLoaded] & 1) == 0 && v36)
  {
    (*&stru_158.segname[(swift_isaMask & *v2) + 8])(v36, 0);
    v11 = *(v2 + qword_DFE290);
    if (v11)
    {
      v12 = *(v11 + 24);
      *(v11 + 24) = v36;
      v13 = v7;

      sub_380968();
    }

    v34 = v7;
    sub_302C9C(v36);

    v14 = *(v2 + qword_DFE290);
    if (v14)
    {
      v15 = *(v14 + 24);
      *(v14 + 24) = v36;
      v16 = v34;

      sub_380968();
    }

    v17 = (*(&stru_3D8.flags + (swift_isaMask & *v2)))();
    if (v17)
    {
      v18 = *(v17 + 96);
      *(v17 + 96) = v36;
      v19 = v34;
    }

    v20 = *(v2 + qword_DFE298);
    if (v20)
    {
      v21 = *(v20 + 32);
      *(v20 + 32) = v36;
      v22 = v34;
    }

    if (![v2 isViewLoaded])
    {
      goto LABEL_23;
    }

    sub_2FB0D8();
    [v2 loadViewIfNeeded];
    v23 = *(v2 + qword_DFE2F8);
    if (v23)
    {
      [v23 reloadData];
LABEL_23:
      sub_302CF0();

      a1 = v35;
      goto LABEL_24;
    }

LABEL_34:
    __break(1u);
    return;
  }

  [v2 loadViewIfNeeded];
  v24 = *(v2 + qword_DFE2F8);
  if (!v24)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v36)
  {
    v25 = *(v2 + qword_DFE2F0);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    v27[2] = v10;
    v27[3] = v26;
    v27[4] = v36;
    v27[5] = v24;
    v27[6] = sub_302BE4;
    v27[7] = v9;
    aBlock[4] = sub_302C74;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_780C4;
    aBlock[3] = &block_descriptor_103;
    v28 = _Block_copy(aBlock);
    v29 = v25;

    v30 = v7;
    v31 = v24;
    v32 = v30;
    v33 = v31;

    [v32 getChangeDetailsFromPreviousResponse:v29 completion:v28];

    _Block_release(v28);
  }

  else
  {
  }
}

void (*BrowseCollectionViewController.modelResponse.modify(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + qword_DFE2F0);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_2F7420;
}

void sub_2F7420(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    BrowseCollectionViewController.modelResponse.setter(v2);
  }

  else
  {
    BrowseCollectionViewController.modelResponse.setter(*a1);
  }
}

id BrowseCollectionViewController.collectionView.getter()
{
  v0 = sub_302BEC();

  return v0;
}

uint64_t sub_2F74DC()
{
  v1 = *(v0 + qword_DFE278);
  if (v1 == 2)
  {
    LOBYTE(v1) = (*&stru_248.sectname[swift_isaMask & *v0])() < 2;
  }

  return v1 & 1;
}

uint64_t sub_2F7584()
{
  sub_302664();
}

uint64_t BrowseCollectionViewController.convertToModelIndexPath(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_AB3820();
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t BrowseCollectionViewController.convertToPresentationIndexPath(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_AB3820();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

void *sub_2F7710()
{
  result = sub_4D39CC();
  if (result)
  {
    v1 = result;
    v2 = [result parentViewController];

    if (v2)
    {
      type metadata accessor for JSDrivenViewController();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
        v5 = v3;
        swift_beginAccess();
        v6 = *(v5 + v4);
        v7 = v6;

        return v6;
      }
    }

    return 0;
  }

  return result;
}

uint64_t BrowseCollectionViewController.wantsItemLibraryAddKeepLocalControl.getter()
{
  v1 = direct field offset for BrowseCollectionViewController.wantsItemLibraryAddKeepLocalControl;
  swift_beginAccess();
  return *(v0 + v1);
}

id BrowseCollectionViewController.wantsItemLibraryAddKeepLocalControl.setter(char a1)
{
  v3 = direct field offset for BrowseCollectionViewController.wantsItemLibraryAddKeepLocalControl;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return sub_2FFC9C(v4);
}

void (*BrowseCollectionViewController.wantsItemLibraryAddKeepLocalControl.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = direct field offset for BrowseCollectionViewController.wantsItemLibraryAddKeepLocalControl;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_2F78FC;
}

void sub_2F78FC(uint64_t a1)
{
  v1 = *a1;
  BrowseCollectionViewController.wantsItemLibraryAddKeepLocalControl.setter(*(*a1 + 32));

  free(v1);
}

BOOL BrowseCollectionViewController.wantsItemLibraryAddKeepLocalControl(for:at:)()
{
  v1 = [v0 traitCollection];
  v2 = UITraitCollection.isMediaPicker.getter();

  if (v2)
  {
    return 0;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  return swift_dynamicCastObjCClass() != 0;
}

uint64_t BrowseCollectionViewController._collectionView(_:indexPathForSectionIndexTitle:at:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  result = __chkstk_darwin(v7 - 8);
  v10 = &v13 - v9;
  if (!*(v3 + qword_DFE290))
  {
    v11 = sub_AB3820();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    goto LABEL_6;
  }

  if (a1)
  {

    sub_37FF08(a2, v10);

    v11 = sub_AB3820();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      (*(v12 + 32))(a3, v10, v11);
LABEL_8:
      sub_AB3820();
      return (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
    }

LABEL_6:
    sub_AB37C0();
    sub_AB3820();
    if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
    {
      sub_12E1C(v10, &unk_DE8E20);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

BOOL BrowseCollectionViewController.collectionView(_:shouldSelectItemAt:)()
{
  if (UICollectionView.isDraggingCell(at:)())
  {
    return 0;
  }

  else
  {
    v2 = [v0 traitCollection];
    v3 = UITraitCollection.isMediaPicker.getter();

    return !v3;
  }
}

uint64_t BrowseCollectionViewController.collectionView(_:canPerformPrimaryActionForItemAt:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = [v2 traitCollection];
  v6 = UITraitCollection.isMediaPicker.getter();

  if (v6)
  {
    v7 = BrowseCollectionViewController.isModelObjectSupportedByMediaPicker(at:)(a2) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = UICollectionView.isDraggingCell(at:)();
  result = 0;
  if ((v8 & 1) == 0 && (v7 & 1) == 0)
  {
    return [v3 isEditing] ^ 1;
  }

  return result;
}

Swift::Void __swiftcall BrowseCollectionViewController.scrollViewDidScroll(_:)(UIScrollView a1)
{
  [v1 loadViewIfNeeded];
  v2 = *&v1[qword_DFE2F8];
  if (!v2)
  {
    goto LABEL_19;
  }

  v3 = v2;
  v4 = [v3 visibleCells];
  sub_13C80(0, &qword_DFE230);
  v5 = sub_AB9760();

  if (v5 >> 62)
  {
    v6 = sub_ABB060();
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
LABEL_4:
      if (v6 >= 1)
      {
        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v10 = sub_360438(i, v5);
          }

          else
          {
            v10 = *(v5 + 8 * i + 32);
          }

          v15 = v10;
          v11 = v10;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE238);
          if (swift_dynamicCast())
          {
            sub_70DF8(v13, v16);
            v9 = v17;
            v8 = v18;
            __swift_project_boxed_opaque_existential_1(v16, v17);
            (*(v8 + 8))(a1.super.super.super.isa, v9, v8);

            __swift_destroy_boxed_opaque_existential_0(v16);
          }

          else
          {
            v14 = 0;
            memset(v13, 0, sizeof(v13));

            sub_12E1C(v13, &qword_DFE240);
          }
        }

        return;
      }

      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }
  }
}

Swift::Void __swiftcall BrowseCollectionViewController.configureReusableView(_:)(UICollectionReusableView a1)
{
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2 && a1.super.super.super.isa)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    v6 = a1.super.super.super.isa;

    v5(v7, ObjectType, v3);
  }

  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (v8 && a1.super.super.super.isa)
  {
    v9 = v8;
    v10 = swift_getObjectType();
    v11 = *(v9 + 16);
    v12 = a1.super.super.super.isa;

    v11(v13, v10, v9);
  }

  [(objc_class *)a1.super.super.super.isa setUserInteractionEnabled:1];
  swift_getObjectType();
  v14 = swift_conformsToProtocol2();
  if (v14)
  {
    if (a1.super.super.super.isa)
    {
      v15 = v14;
      v16 = swift_getObjectType();
      (*(v15 + 16))(0, v16, v15);
    }
  }
}

void sub_2F8138()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v1 - 8);
  v3 = &v32 - v2;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  if ([v0 isViewLoaded])
  {
    v37 = v3;
    [v0 loadViewIfNeeded];
    v11 = *(v0 + qword_DFE2F8);
    if (v11)
    {
      v38 = v11;
      v12 = [v38 indexPathsForVisibleItems];
      v13 = sub_AB9760();

      v14 = *(v13 + 16);
      if (v14)
      {
        v34 = v8;
        v15 = (swift_isaMask & *v0) + 536;
        v16 = *&stru_1F8.segname[(swift_isaMask & *v0) + 16];
        v18 = *(v5 + 16);
        v17 = v5 + 16;
        v40 = v18;
        v41 = v15;
        v19 = *(v17 + 64);
        v32 = v13;
        v20 = v13 + ((v19 + 32) & ~v19);
        v21 = (v17 + 32);
        v39 = *(v17 + 56);
        v33 = (v17 + 16);
        v22 = (v17 - 8);
        v23 = v37;
        v35 = v16;
        v36 = v17;
        v18(v10, v20, v4);
        while (1)
        {
          v16(v10);
          if ((*v21)(v23, 1, v4) == 1)
          {
            (*v22)(v10, v4);
            sub_12E1C(v23, &unk_DE8E20);
          }

          else
          {
            v24 = v23;
            v25 = v0;
            v26 = v34;
            (*v33)(v34, v24, v4);
            isa = sub_AB3770().super.isa;
            v28 = [v38 cellForItemAtIndexPath:{isa, v32}];

            if (v28)
            {
              v0 = v25;
              (*&stru_2E8.segname[(swift_isaMask & *v25) + 8])(v28, v26);
              v29 = *v22;
              (*v22)(v26, v4);
              v29(v10, v4);
            }

            else
            {
              v30 = *v22;
              (*v22)(v26, v4);
              v30(v10, v4);
              v0 = v25;
            }

            v23 = v37;
            v16 = v35;
          }

          v20 += v39;
          if (!--v14)
          {
            break;
          }

          v40(v10, v20, v4);
        }
      }

      else
      {

        v31 = v38;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall BrowseCollectionViewController.updateForPlayabilityChange()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v1 - 8);
  v3 = &v32 - v2;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  if ([v0 isViewLoaded])
  {
    v38 = v3;
    [v0 loadViewIfNeeded];
    v11 = *(v0 + qword_DFE2F8);
    if (v11)
    {
      v12 = v11;
      v13 = [v12 indexPathsForVisibleItems];
      v14 = sub_AB9760();

      v15 = *(v14 + 16);
      if (v15)
      {
        v37 = v12;
        v34 = v8;
        v16 = (swift_isaMask & *v0) + 536;
        v17 = *&stru_1F8.segname[(swift_isaMask & *v0) + 16];
        v19 = *(v5 + 16);
        v18 = v5 + 16;
        v40 = v19;
        v41 = v16;
        v20 = v14 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
        v21 = (v18 + 32);
        v39 = *(v18 + 56);
        v32 = v14;
        v33 = (v18 + 16);
        v22 = (v18 - 8);
        v23 = v38;
        v35 = v17;
        v36 = v18;
        v19(v10, v20, v4);
        while (1)
        {
          v17(v10);
          if ((*v21)(v23, 1, v4) == 1)
          {
            (*v22)(v10, v4);
            sub_12E1C(v23, &unk_DE8E20);
          }

          else
          {
            v24 = v23;
            v25 = v0;
            v26 = v34;
            (*v33)(v34, v24, v4);
            isa = sub_AB3770().super.isa;
            v28 = [v37 cellForItemAtIndexPath:{isa, v32}];

            if (v28)
            {
              v0 = v25;
              (*&stru_2E8.segname[(swift_isaMask & *v25) + 8])(v28, v26);
              v29 = *v22;
              (*v22)(v26, v4);
              v29(v10, v4);
            }

            else
            {
              v30 = *v22;
              (*v22)(v26, v4);
              v30(v10, v4);
              v0 = v25;
            }

            v23 = v38;
            v17 = v35;
          }

          v20 += v39;
          if (!--v15)
          {
            break;
          }

          v40(v10, v20, v4);
        }

        v31 = v37;
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2F8924(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BrowseCollectionViewController();
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0);
  if (!swift_dynamicCast())
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_12E1C(v13, &unk_E04550);
    return;
  }

  sub_70DF8(v13, v15);
  v6 = v16;
  v7 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v8 = (*&stru_158.sectname[swift_isaMask & *v5])();
  if (v8)
  {
    v9 = v8;
    v10 = [v8 results];

    if (!v10)
    {
      __break(1u);
      return;
    }

    isa = sub_AB3770().super.isa;
    v12 = [v10 itemAtIndexPath:isa];
  }

  else
  {
    v12 = 0;
  }

  (*(v7 + 40))(a1, a2, v12, v6, v7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v15);
}

void sub_2F8B18(double a1, double a2)
{
  v3 = (v2 + qword_DFE2A8);
  *v3 = a1;
  v3[1] = a2;
}

void sub_2F8BA4(uint64_t a1)
{
  v2 = *(v1 + qword_DFE2E0);
  *(v1 + qword_DFE2E0) = a1;
}

void sub_2F8BB8(uint64_t a1)
{
  v2 = *(v1 + qword_DFE2F8);
  *(v1 + qword_DFE2F8) = a1;
}

uint64_t sub_2F8BDC(uint64_t a1)
{
  *(v1 + qword_DFE308) = a1;

  sub_300B18();
}

void sub_2F8C38(void *a1, void *a2)
{
  v196 = a2;
  v227 = sub_AB36B0();
  v198 = *(v227 - 8);
  __chkstk_darwin(v227);
  v226 = &v186 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE3C0);
  v4 = __chkstk_darwin(v197);
  v6 = &v186 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v220 = (&v186 - v8);
  __chkstk_darwin(v7);
  v10 = &v186 - v9;
  v11 = sub_AB3730();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v188 = &v186 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v193 = &v186 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v186 - v18;
  v20 = __chkstk_darwin(v17);
  v192 = &v186 - v21;
  v22 = __chkstk_darwin(v20);
  v195 = &v186 - v23;
  v24 = __chkstk_darwin(v22);
  v191 = &v186 - v25;
  v26 = __chkstk_darwin(v24);
  v190 = &v186 - v27;
  v28 = __chkstk_darwin(v26);
  v194 = &v186 - v29;
  v30 = __chkstk_darwin(v28);
  v189 = &v186 - v31;
  __chkstk_darwin(v30);
  v33 = &v186 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v35 = __chkstk_darwin(v34 - 8);
  v209 = &v186 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v39 = &v186 - v38;
  __chkstk_darwin(v37);
  v208 = &v186 - v40;
  v41 = sub_AB3820();
  v222 = *(v41 - 8);
  v42 = __chkstk_darwin(v41);
  v216 = &v186 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v204 = &v186 - v45;
  v46 = __chkstk_darwin(v44);
  v47 = __chkstk_darwin(v46);
  v217 = &v186 - v48;
  v49 = __chkstk_darwin(v47);
  v205 = &v186 - v50;
  v51 = __chkstk_darwin(v49);
  v207 = &v186 - v52;
  v53 = __chkstk_darwin(v51);
  v218 = &v186 - v54;
  v55 = __chkstk_darwin(v53);
  v206 = &v186 - v56;
  __chkstk_darwin(v55);
  if (!a1)
  {
    return;
  }

  v215 = (&v186 - v57);
  v203 = v39;
  v219 = v6;
  v187 = v19;
  v200 = v12;
  v202 = v58;
  v59 = swift_allocObject();
  v60 = a1;
  v61 = sub_971EC(_swiftEmptyArrayStorage);
  v228 = v59;
  *(v59 + 16) = v61;
  v62 = [v60 deletedItemIndexPaths];
  v63 = *(sub_AB9760() + 16);

  v223 = v41;
  v201 = v60;
  v225 = v11;
  v199 = v33;
  if (v63)
  {
    v186 = [v60 deletedItemIndexPaths];
    v64 = sub_AB9760();
    v214 = *(v64 + 16);
    if (v214)
    {
      v65 = 0;
      v66 = 0;
      v212 = v222 + 16;
      v213 = (v222 + 8);
      v211 = (v222 + 48);
      v210 = (v222 + 32);
      v221 = _swiftEmptyArrayStorage;
      v67 = v208;
      while (v65 < *(v64 + 16))
      {
        v62 = v10;
        v63 = ((*(v222 + 80) + 32) & ~*(v222 + 80));
        v68 = v64;
        v69 = &v63[v64];
        v70 = *(v222 + 72);
        v71 = v41;
        v72 = v215;
        (*(v222 + 16))(v215, &v69[v70 * v65], v71);
        sub_302428(v72, v228, v224, v67);
        (*v213)(v72, v71);
        v41 = v71;
        if ((*v211)(v67, 1, v71) == 1)
        {
          sub_12E1C(v67, &unk_DE8E20);
          v10 = v62;
        }

        else
        {
          v73 = v67;
          v74 = *v210;
          v75 = v206;
          (*v210)(v206, v73, v71);
          v74(v218, v75, v71);
          v10 = v62;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v221 = sub_6AE4C(0, v221[2] + 1, 1, v221);
          }

          v77 = v221[2];
          v76 = v221[3];
          if (v77 >= v76 >> 1)
          {
            v221 = sub_6AE4C(v76 > 1, v77 + 1, 1, v221);
          }

          v78 = v221;
          v221[2] = v77 + 1;
          v41 = v223;
          v74(&v63[v78 + v77 * v70], v218, v223);
          v11 = v225;
          v67 = v208;
        }

        ++v65;
        v64 = v68;
        if (v214 == v65)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_95;
    }

    v66 = 0;
    v221 = _swiftEmptyArrayStorage;
LABEL_16:

    isa = sub_AB9740().super.isa;

    [v196 deleteItemsAtIndexPaths:isa];

    v33 = v199;
  }

  else
  {
    v66 = 0;
  }

  v80 = v201;
  v81 = [v201 deletedSections];
  sub_AB36D0();
  v82 = sub_AB36E0();
  v83 = v200;
  v84 = *(v200 + 8);
  v212 = v200 + 8;
  v211 = v84;
  (v84)(v33, v11);

  if (v82 < 1)
  {
    v10 = v211;
    v102 = v196;
  }

  else
  {
    v85 = [v80 deletedSections];
    v86 = v194;
    v221 = v85;
    sub_AB36D0();
    (*(v83 + 16))(v33, v86, v11);
    sub_303F44(&qword_DFE3C8, &type metadata accessor for IndexSet);
    sub_AB95A0();
    sub_303F44(&qword_DFE3D0, &type metadata accessor for IndexSet);
    v87 = (v198 + 8);
    v88 = _swiftEmptyArrayStorage;
    v89 = v226;
    while (1)
    {
      sub_AB9CA0();
      sub_303F44(&unk_DFE3D8, &type metadata accessor for IndexSet.Index);
      v90 = v227;
      v91 = sub_AB91C0();
      (*v87)(v89, v90);
      if (v91)
      {
        break;
      }

      v92 = sub_AB9D80();
      v94 = *v93;
      v92(&aBlock, 0);
      sub_AB9CB0();
      v95 = sub_301FBC(v94, v228, v224);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = sub_6AE9C(0, *(v88 + 2) + 1, 1, v88);
      }

      v97 = *(v88 + 2);
      v96 = *(v88 + 3);
      if (v97 >= v96 >> 1)
      {
        v88 = sub_6AE9C((v96 > 1), v97 + 1, 1, v88);
      }

      *(v88 + 2) = v97 + 1;
      *&v88[8 * v97 + 32] = v95;
      v11 = v225;
    }

    sub_12E1C(v10, &qword_DFE3C0);
    (v211)(v194, v11);

    sub_303F44(&qword_DE9C70, &type metadata accessor for IndexSet);
    v98 = v190;
    sub_ABABA0();
    v99 = *(v88 + 2);
    if (v99)
    {
      v100 = (v88 + 32);
      v41 = v223;
      v33 = v199;
      do
      {
        v101 = *v100++;
        v229 = v101;
        sub_ABAB80();
        --v99;
      }

      while (v99);
    }

    else
    {
      v41 = v223;
      v33 = v199;
    }

    v103 = v189;
    (*(v200 + 32))(v189, v98, v11);
    sub_AB36C0(v104);
    v106 = v105;
    v10 = v211;
    (v211)(v103, v11);
    v102 = v196;
    [v196 deleteSections:v106];
  }

  v107 = swift_allocObject();
  v108 = v228;
  v107[2] = v102;
  v107[3] = v108;
  v109 = v224;
  v107[4] = v224;
  v234 = sub_303DCC;
  v235 = v107;
  aBlock = _NSConcreteStackBlock;
  v231 = 1107296256;
  v232 = sub_3020F4;
  v233 = &block_descriptor_73;
  v110 = _Block_copy(&aBlock);
  v210 = v102;

  v221 = v109;

  v111 = v201;
  [v201 enumerateSectionMovesUsingBlock:v110];
  _Block_release(v110);
  v112 = [v111 insertedSections];
  sub_AB36D0();
  v113 = sub_AB36E0();
  (v10)(v33, v11);

  if (v113 >= 1)
  {
    v224 = 0;
    v114 = [v111 insertedSections];
    v115 = v195;
    v218 = v114;
    sub_AB36D0();
    (*(v200 + 16))(v33, v115, v11);
    sub_303F44(&qword_DFE3C8, &type metadata accessor for IndexSet);
    v116 = v220;
    sub_AB95A0();
    v62 = sub_303F44(&qword_DFE3D0, &type metadata accessor for IndexSet);
    v117 = (v198 + 8);
    v118 = _swiftEmptyArrayStorage;
    while (1)
    {
      v119 = v226;
      sub_AB9CA0();
      sub_303F44(&unk_DFE3D8, &type metadata accessor for IndexSet.Index);
      v65 = v11;
      v11 = v116;
      v10 = v227;
      v120 = sub_AB91C0();
      (*v117)(v119, v10);
      if (v120)
      {
        break;
      }

      v121 = sub_AB9D80();
      v41 = *v122;
      v121(&aBlock, 0);
      v63 = v65;
      sub_AB9CB0();
      v123 = sub_301FBC(v41, v228, v221);
      if (v224)
      {

        v185 = v11;
        goto LABEL_99;
      }

      v124 = v123;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v118 = sub_6AE9C(0, *(v118 + 2) + 1, 1, v118);
      }

      v11 = v65;
      v126 = *(v118 + 2);
      v125 = *(v118 + 3);
      if (v126 >= v125 >> 1)
      {
        v118 = sub_6AE9C((v125 > 1), v126 + 1, 1, v118);
      }

      *(v118 + 2) = v126 + 1;
      *&v118[8 * v126 + 32] = v124;
      v41 = v223;
      v116 = v220;
    }

    sub_12E1C(v11, &qword_DFE3C0);
    (v211)(v195, v65);

    sub_303F44(&qword_DE9C70, &type metadata accessor for IndexSet);
    v10 = v192;
    sub_ABABA0();
    v127 = *(v118 + 2);
    v11 = v65;
    if (v127)
    {
      v128 = (v118 + 32);
      v33 = v199;
      v66 = v224;
      do
      {
        v129 = *v128++;
        v229 = v129;
        sub_ABAB80();
        --v127;
      }

      while (v127);
    }

    else
    {
      v33 = v199;
      v66 = v224;
    }

    v130 = v191;
    (*(v200 + 32))(v191, v10, v11);
    sub_AB36C0(v131);
    v133 = v132;
    (v211)(v130, v11);
    [v210 insertSections:v133];
  }

  v134 = v201;
  v135 = [v201 insertedItemIndexPaths];
  v136 = *(sub_AB9760() + 16);

  if (!v136)
  {
    v145 = v210;
LABEL_62:
    v147 = swift_allocObject();
    v148 = v228;
    v147[2] = v145;
    v147[3] = v148;
    v149 = v221;
    v147[4] = v221;
    v234 = sub_303E48;
    v235 = v147;
    aBlock = _NSConcreteStackBlock;
    v231 = 1107296256;
    v232 = sub_3022B8;
    v233 = &block_descriptor_79;
    v150 = _Block_copy(&aBlock);
    v218 = v145;

    v221 = v149;

    v151 = v201;
    [v201 enumerateItemMovesUsingBlock:v150];
    _Block_release(v150);
    v152 = [v151 updatedSections];
    sub_AB36D0();
    v153 = sub_AB36E0();
    (v211)(v33, v11);

    if (v153 < 1)
    {
      v65 = v223;
      v41 = v209;
    }

    else
    {
      v154 = [v151 updatedSections];
      v155 = v193;
      v224 = v154;
      sub_AB36D0();
      (*(v200 + 16))(v33, v155, v11);
      sub_303F44(&qword_DFE3C8, &type metadata accessor for IndexSet);
      sub_AB95A0();
      v62 = sub_303F44(&qword_DFE3D0, &type metadata accessor for IndexSet);
      v10 = v198 + 8;
      v156 = _swiftEmptyArrayStorage;
      v41 = v226;
      while (1)
      {
        v63 = v219;
        sub_AB9CA0();
        sub_303F44(&unk_DFE3D8, &type metadata accessor for IndexSet.Index);
        v157 = v227;
        v158 = sub_AB91C0();
        (*v10)(v41, v157);
        if (v158)
        {
          break;
        }

        v159 = sub_AB9D80();
        v65 = *v160;
        v159(&aBlock, 0);
        sub_AB9CB0();
        v161 = sub_301FBC(v65, v228, v221);
        if (v66)
        {

          v185 = v219;
          goto LABEL_99;
        }

        v162 = v161;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v156 = sub_6AE9C(0, *(v156 + 2) + 1, 1, v156);
        }

        v164 = *(v156 + 2);
        v163 = *(v156 + 3);
        if (v164 >= v163 >> 1)
        {
          v156 = sub_6AE9C((v163 > 1), v164 + 1, 1, v156);
        }

        *(v156 + 2) = v164 + 1;
        *&v156[8 * v164 + 32] = v162;
        v11 = v225;
      }

      sub_12E1C(v63, &qword_DFE3C0);
      (v211)(v193, v11);

      sub_303F44(&qword_DE9C70, &type metadata accessor for IndexSet);
      v165 = v188;
      sub_ABABA0();
      v166 = *(v156 + 2);
      if (v166)
      {
        v167 = (v156 + 32);
        v65 = v223;
        v41 = v209;
        do
        {
          v168 = *v167++;
          v229 = v168;
          sub_ABAB80();
          --v166;
        }

        while (v166);
      }

      else
      {
        v65 = v223;
        v41 = v209;
      }

      v169 = v187;
      (*(v200 + 32))(v187, v165, v11);
      sub_AB36C0(v170);
      v172 = v171;
      (v211)(v169, v11);
      [v218 reloadSections:v172];
    }

    v173 = v201;
    v174 = [v201 updatedItemIndexPaths];
    v175 = *(sub_AB9760() + 16);

    if (!v175)
    {

      return;
    }

    v217 = [v173 updatedItemIndexPaths];
    v176 = sub_AB9760();
    v227 = *(v176 + 16);
    if (!v227)
    {
LABEL_92:

      v184 = sub_AB9740().super.isa;

      [v218 reloadItemsAtIndexPaths:v184];

      return;
    }

    v177 = 0;
    v10 = v222 + 8;
    v220 = (v222 + 48);
    v225 = v222 + 16;
    v226 = (v222 + 32);
    v63 = _swiftEmptyArrayStorage;
    v62 = v202;
    v219 = (v222 + 8);
    while (v177 < *(v176 + 16))
    {
      v178 = (*(v222 + 80) + 32) & ~*(v222 + 80);
      v11 = *(v222 + 72);
      (*(v222 + 16))(v62, v176 + v178 + v11 * v177, v65);
      sub_302428(v62, v228, v221, v41);
      if (v66)
      {
        goto LABEL_101;
      }

      (*v10)(v62, v65);
      if ((*v220)(v41, 1, v65) == 1)
      {
        sub_12E1C(v41, &unk_DE8E20);
      }

      else
      {
        v224 = 0;
        v179 = v176;
        v180 = *v226;
        v181 = v204;
        (*v226)(v204, v41, v65);
        v180(v216, v181, v65);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_6AE4C(0, *(v63 + 2) + 1, 1, v63);
        }

        v183 = *(v63 + 2);
        v182 = *(v63 + 3);
        v176 = v179;
        if (v183 >= v182 >> 1)
        {
          v63 = sub_6AE4C(v182 > 1, v183 + 1, 1, v63);
        }

        v10 = v219;
        *(v63 + 2) = v183 + 1;
        v65 = v223;
        v180(&v63[v178 + v183 * v11], v216, v223);
        v41 = v209;
        v62 = v202;
        v66 = v224;
      }

      if (v227 == ++v177)
      {
        goto LABEL_92;
      }
    }

    goto LABEL_96;
  }

  v208 = [v134 insertedItemIndexPaths];
  v65 = sub_AB9760();
  v220 = *(v65 + 16);
  if (!v220)
  {
LABEL_61:

    v146 = sub_AB9740().super.isa;

    v145 = v210;
    [v210 insertItemsAtIndexPaths:v146];

    v11 = v225;
    v33 = v199;
    goto LABEL_62;
  }

  v137 = 0;
  v218 = (v222 + 16);
  v11 = v222 + 8;
  v215 = (v222 + 48);
  v214 = (v222 + 32);
  v62 = _swiftEmptyArrayStorage;
  v138 = v203;
  v63 = v207;
  v213 = (v222 + 8);
  while (v137 < *(v65 + 16))
  {
    v139 = (*(v222 + 80) + 32) & ~*(v222 + 80);
    v10 = *(v222 + 72);
    (*(v222 + 16))(v63, v65 + v139 + v10 * v137, v41);
    sub_302428(v63, v228, v221, v138);
    if (v66)
    {
      goto LABEL_100;
    }

    (*v11)(v63, v41);
    if ((*v215)(v138, 1, v41) == 1)
    {
      sub_12E1C(v138, &unk_DE8E20);
    }

    else
    {
      v224 = 0;
      v140 = v65;
      v141 = *v214;
      v142 = v205;
      (*v214)(v205, v138, v41);
      v141(v217, v142, v41);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_6AE4C(0, v62[2] + 1, 1, v62);
      }

      v144 = v62[2];
      v143 = v62[3];
      v65 = v140;
      if (v144 >= v143 >> 1)
      {
        v62 = sub_6AE4C(v143 > 1, v144 + 1, 1, v62);
      }

      v11 = v213;
      v62[2] = v144 + 1;
      v41 = v223;
      v141(v62 + v139 + v144 * v10, v217, v223);
      v138 = v203;
      v63 = v207;
      v66 = v224;
    }

    if (v220 == ++v137)
    {
      goto LABEL_61;
    }
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);

  v185 = v10;
LABEL_99:
  sub_12E1C(v185, &qword_DFE3C0);

  __break(1u);

  (*v213)(v41, v10);

  __break(1u);
LABEL_100:

  (*v11)(v63, v41);

  __break(1u);
LABEL_101:

  (*v10)(v62, v65);

  __break(1u);
}

uint64_t sub_2FAA3C()
{
  type metadata accessor for BrowseCollectionViewController();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE3F0);
  if (swift_dynamicCast())
  {
    sub_70DF8(&v35, &v39);
    v2 = v41;
    v3 = v42;
    __swift_project_boxed_opaque_existential_1(&v39, v41);
    v4 = (*(v3 + 8))(v2, v3);
  }

  else
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    sub_12E1C(&v35, &qword_DFE3F8);
    v38 = v1;
    v5 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_19:
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      sub_12E1C(&v35, &unk_E04550);
LABEL_21:
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_ABAD90(211);
      v45._countAndFlagsBits = 0xD0000000000000A0;
      v45._object = 0x8000000000B5DF30;
      sub_AB94A0(v45);
      *&v35 = v5;
      swift_getWitnessTable();
      sub_ABB370();
      v46._object = 0x8000000000B5DFE0;
      v46._countAndFlagsBits = 0xD000000000000031;
      sub_AB94A0(v46);
      goto LABEL_22;
    }

    sub_70DF8(&v35, &v39);
    v6 = v41;
    v7 = v42;
    __swift_project_boxed_opaque_existential_1(&v39, v41);
    if (((*(v7 + 32))(v6, v7) & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v39);
      goto LABEL_21;
    }

    v8 = [objc_allocWithZone(UICollectionViewTableLayout) init];
    sub_2FB2C0(v8);
    v4 = v8;
  }

  v5 = v4;
  __swift_destroy_boxed_opaque_existential_0(&v39);
  v9 = [v1 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:v5 collectionViewLayout:{v12, v14, v16, v18}];
  v38 = v1;
  v20 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0);
  if (swift_dynamicCast())
  {
    sub_70DF8(&v35, &v39);
    v21 = v42;
    __swift_project_boxed_opaque_existential_1(&v39, v41);
    v22 = *(v21 + 8);
    v23 = v19;
    v24 = v19;
    v22();

    __swift_destroy_boxed_opaque_existential_0(&v39);
    goto LABEL_14;
  }

  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  sub_12E1C(&v35, &unk_E04550);
  v25 = [swift_getObjCClassFromMetadata() instanceMethodForSelector:"collectionView:cellForItemAtIndexPath:"];
  v26 = [v20 methodForSelector:"collectionView:cellForItemAtIndexPath:"];
  v23 = v19;
  if (!v25)
  {
    if (v26)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (v26 && v25 == v26)
  {
LABEL_12:
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_ABAD90(170);
    v43._countAndFlagsBits = 0xD0000000000000A7;
    v43._object = 0x8000000000B5E020;
    sub_AB94A0(v43);
    *&v35 = v20;
    swift_getWitnessTable();
    sub_ABB370();
    v44._countAndFlagsBits = 46;
    v44._object = 0xE100000000000000;
    sub_AB94A0(v44);
LABEL_22:
    result = sub_ABAFD0();
    __break(1u);
    return result;
  }

LABEL_14:
  v38 = v20;
  v27 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE3B0);
  if (swift_dynamicCast())
  {
    sub_70DF8(&v35, &v39);
    v28 = v42;
    __swift_project_boxed_opaque_existential_1(&v39, v41);
    v29 = *(v28 + 8);
    v30 = v23;
    v29();

    __swift_destroy_boxed_opaque_existential_0(&v39);
  }

  else
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    sub_12E1C(&v35, &qword_DFE3B8);
  }

  v31 = v23;
  [v31 setDataSource:v27];
  [v31 setDelegate:v27];
  [v31 setPrefetchDataSource:*(v27 + qword_DFE300)];
  (*&stru_1F8.segname[(swift_isaMask & *v27) + 8])(v31);

  v32 = v31;
  v33 = [v32 showsVerticalScrollIndicator];

  *(v27 + qword_DFE310) = v33;
  return v32;
}

void sub_2FB0D8()
{
  [v0 loadViewIfNeeded];
  v1 = *&v0[qword_DFE2F8];
  if (v1)
  {
    v2 = [v1 collectionViewLayout];
    v13 = v0;
    type metadata accessor for BrowseCollectionViewController();
    v3 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE3F0);
    if (swift_dynamicCast())
    {
      sub_70DF8(v11, v14);
      v4 = v15;
      v5 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      (*(v5 + 16))(v2, v4, v5);
      __swift_destroy_boxed_opaque_existential_0(v14);
    }

    else
    {
      v12 = 0;
      memset(v11, 0, sizeof(v11));
      sub_12E1C(v11, &qword_DFE3F8);
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        v8 = v2;
        sub_2FB2C0(v7);
      }
    }

    [v3 loadViewIfNeeded];
    v9 = *&v3[qword_DFE2F8];
    if (v9)
    {
      v10 = [v9 collectionViewLayout];
      [v10 invalidateLayout];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2FB2C0(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    [v4 music_inheritedLayoutInsets];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v5 bounds];
    v14 = CGRectGetWidth(v39) - v9 - v13;
    [v5 bounds];
    v15 = CGRectGetHeight(v40) - v7 - v11;
    v35 = v1;
    type metadata accessor for BrowseCollectionViewController();
    v16 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0);
    if (swift_dynamicCast())
    {
      sub_70DF8(&v32, v36);
      v17 = v37;
      v18 = v38;
      __swift_project_boxed_opaque_existential_1(v36, v37);
      (*(v18 + 24))(v3, v17, v18, v14, v15);
      if ((v20 & 1) == 0)
      {
        [a1 setRowHeight:v19];
      }

      __swift_destroy_boxed_opaque_existential_0(v36);
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      sub_12E1C(&v32, &unk_E04550);
    }

    v35 = v16;
    v21 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE3B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      sub_12E1C(&v32, &qword_DFE3B8);
LABEL_16:

      return;
    }

    sub_70DF8(&v32, v36);
    v22 = v37;
    v23 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v24 = (*(v23 + 24))(v3, v22, v23, v14, v15);
    if (v26)
    {
LABEL_15:
      __swift_destroy_boxed_opaque_existential_0(v36);
      goto LABEL_16;
    }

    v27 = v25;
    v28 = (*&stru_158.sectname[swift_isaMask & *v21])(v24);
    if (!v28)
    {
LABEL_14:
      [a1 setSectionHeaderHeight:0.0];
      goto LABEL_15;
    }

    v29 = v28;
    v30 = [v28 results];

    if (v30)
    {
      v31 = [v30 numberOfSections];

      if (v31 >= 2)
      {
        [a1 setSectionHeaderHeight:v27];
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2FB62C()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v3 = (*&stru_158.sectname[v2])();
  if (v3)
  {
    v4 = v3;
    if ([v3 isValid])
    {
      v5 = MPModelResponseDidInvalidateNotification;
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = swift_allocObject();
      *(v7 + 16) = *(v2 + 80);
      *(v7 + 24) = v6;
      type metadata accessor for NotificationObserver();
      swift_allocObject();
      v3 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v5, v4, 1, 1, sub_303D88, v7);
    }

    else
    {
      sub_2FB7A4();

      v3 = 0;
    }
  }

  *(v1 + qword_DFE2C8) = v3;
}

void sub_2FB7A4()
{
  if ((v0[qword_DFE2D0] & 1) == 0)
  {
    v0[qword_DFE2D8] = 1;
  }

  ObjectType = swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2 && v0[qword_DFE2D0] == 1)
  {
    v3 = *(v2 + 8);
    v4 = v2;
    v5 = v0;
    v3(ObjectType, v4);
  }
}

uint64_t BrowseCollectionViewController.collectionView(_:cellForItemAt:)(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v2;
  type metadata accessor for BrowseCollectionViewController();
  v11 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0);
  if (!swift_dynamicCast())
  {
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    sub_12E1C(v24, &unk_E04550);
    v27[0] = 0;
    v27[1] = 0xE000000000000000;
    sub_ABAD90(165);
    v28._countAndFlagsBits = 0xD0000000000000A2;
    v28._object = 0x8000000000B5DA90;
    sub_AB94A0(v28);
    *&v24[0] = v11;
    swift_getWitnessTable();
    sub_ABB370();
    v29._countAndFlagsBits = 46;
    v29._object = 0xE100000000000000;
    sub_AB94A0(v29);
LABEL_10:
    result = sub_ABAFD0();
    __break(1u);
    return result;
  }

  sub_70DF8(v24, v27);
  (*&stru_1F8.segname[(swift_isaMask & *v11) + 16])(a2);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_12E1C(v6, &unk_DE8E20);
    *&v24[0] = 0;
    *(&v24[0] + 1) = 0xE000000000000000;
    sub_ABAD90(167);
    v30._object = 0x8000000000B5DB40;
    v30._countAndFlagsBits = 0xD000000000000014;
    sub_AB94A0(v30);
    sub_303F44(&qword_DF9260, &type metadata accessor for IndexPath);
    v31._countAndFlagsBits = sub_ABB330();
    sub_AB94A0(v31);

    v32._countAndFlagsBits = 0xD000000000000091;
    v32._object = 0x8000000000B5DB60;
    sub_AB94A0(v32);
    goto LABEL_10;
  }

  v12 = (*(v8 + 32))(v10, v6, v7);
  v13 = (*&stru_158.sectname[swift_isaMask & *v11])(v12);
  if (v13 && (v14 = v13, v15 = [v13 results], v14, v15))
  {
    isa = sub_AB3770().super.isa;
    v17 = [v15 itemAtIndexPath:isa];
  }

  else
  {
    v17 = 0;
  }

  v18 = v27[4];
  v19 = __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  __chkstk_darwin(v19);
  v20 = (*(v18 + 16))(v17, a2, v10, v23, sub_303888);
  (*(v8 + 8))(v10, v7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v27);
  return v20;
}

uint64_t sub_2FBDBC(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v3 = Strong;
  v4 = *(Strong + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration);

  v5 = [a1 pickableObjectFor:{objc_msgSend(v4, "selectionMode")}];
  if (!v5)
  {

    v7 = 0;
    return v7 & 1;
  }

  v6 = v5;
  if (([v4 supportsUnavailableContent] & 1) == 0)
  {
    if (qword_DE6838 != -1)
    {
      swift_once();
    }

    if (sub_10AC20(a1) == 5)
    {

LABEL_8:
      v7 = 0;
      return v7 & 1;
    }
  }

  v8 = [v6 musicTypeIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = sub_AB92A0();
    v12 = v11;

    MPMediaPickerConfiguration.musicTypeIdentifiers.getter();
    v14 = v13;
    v17[0] = v10;
    v17[1] = v12;
    __chkstk_darwin(v13);
    v16[2] = v17;
    v7 = sub_1B39BC(sub_3040E8, v16, v14);
  }

  else
  {

    v7 = 1;
  }

  return v7 & 1;
}

uint64_t sub_2FBF94(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v3 = Strong;
  v4 = *(Strong + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration);

  v5 = [a1 pickableObjectFor:{objc_msgSend(v4, "selectionMode")}];
  if (!v5)
  {

    goto LABEL_11;
  }

  v6 = v5;
  if (([v4 supportsUnavailableContent] & 1) == 0)
  {
    if (qword_DE6838 != -1)
    {
      swift_once();
    }

    if (sub_10AC20(a1) == 5)
    {

LABEL_11:
      v14 = 0;
      return v14 & 1;
    }
  }

  v7 = [v6 musicTypeIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_AB92A0();
    v11 = v10;

    MPMediaPickerConfiguration.musicTypeIdentifiers.getter();
    v13 = v12;
    v17[0] = v9;
    v17[1] = v11;
    __chkstk_darwin(v12);
    v16[2] = v17;
    v14 = sub_1B39BC(sub_109BB0, v16, v13);
  }

  else
  {

    v14 = 1;
  }

  return v14 & 1;
}

BOOL sub_2FC168(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = *(Strong + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration);

  v5 = [v4 selectionMode];
  v6 = [a1 pickableObjectFor:v5];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {

    return 0;
  }

  v9 = v8;
  v21 = v7;
  v10 = [v7 identifiers];
  v11 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedItems;
  swift_beginAccess();
  v12 = *&v9[v11];
  if (v12 >> 62)
  {
LABEL_21:
    v13 = sub_ABB060();
  }

  else
  {
    v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
  }

  v14 = 0;
  do
  {
    v15 = v13 != v14;
    if (v13 == v14)
    {
      break;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = sub_3602FC(v14, v12);
    }

    else
    {
      if (v14 >= *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_20;
      }

      v16 = *(v12 + 8 * v14 + 32);
    }

    v17 = v16;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v18 = [v16 identifiers];
    v19 = [v18 intersectsSet:v10];

    ++v14;
  }

  while (!v19);

  return v15;
}

uint64_t sub_2FC35C(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration);

    if (sub_2FBDBC(a1))
    {

      return 1;
    }

    else
    {
      v5 = [a1 pickableObjectFor:0];
      if (v5)
      {
        v6 = v5;

        return 0;
      }

      else
      {
        v7 = [a1 pickableObjectFor:{objc_msgSend(v4, "selectionMode")}];

        return v7 == 0;
      }
    }
  }

  return result;
}

void BrowseCollectionViewController.prepareInitialContent(_:)(void (*a1)(void), uint64_t a2)
{
  if (*&v2[qword_DFE2F0] || (swift_getObjectType(), (v5 = swift_conformsToProtocol2()) == 0))
  {
    a1();
  }

  else
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v8 = qword_DFE260;
    swift_beginAccess();
    v9 = *&v2[v8];
    v10 = v2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v2[v8] = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_6AA00(0, v9[2] + 1, 1, v9);
      *&v2[v8] = v9;
    }

    v12 = v9[2];
    v13 = v9[3];
    v14 = v12 + 1;
    if (v12 >= v13 >> 1)
    {
      v17 = v9;
      v18 = v9[2];
      v19 = sub_6AA00((v13 > 1), v12 + 1, 1, v17);
      v12 = v18;
      v9 = v19;
    }

    v9[2] = v14;
    v15 = &v9[2 * v12];
    v15[4] = sub_2D4D0;
    v15[5] = v7;
    *&v2[v8] = v9;
    swift_endAccess();
    if ((v10[qword_DFE2C0] & 1) == 0)
    {
      v10[qword_DFE2C0] = 1;
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(ObjectType, v6);
    }
  }
}

id BrowseCollectionViewController.init()()
{
  v1 = v0;
  *&v0[qword_DFE268] = 0;
  v0[qword_DFE270] = 0;
  v0[qword_DFE278] = 2;
  v0[qword_DFE280] = 2;
  v0[qword_DFE288] = 0;
  *&v0[qword_DFE290] = 0;
  *&v0[qword_DFE298] = 0;
  v2 = direct field offset for BrowseCollectionViewController.textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *&v0[v2] = TextDrawing.Cache.init()();
  v0[qword_DFE2A0] = 1;
  v0[direct field offset for BrowseCollectionViewController.wantsItemLibraryAddKeepLocalControl] = 0;
  v3 = &v0[qword_DFE2A8];
  *v3 = 0;
  v3[1] = 0;
  *&v0[qword_DFE2B0] = 0;
  *&v0[qword_DFE2B8] = 0;
  v4 = qword_DFE250;
  type metadata accessor for Artwork.CachingReference();
  *&v1[v4] = swift_allocObject();
  v1[qword_DFE2C0] = 0;
  *&v1[qword_DFE260] = _swiftEmptyArrayStorage;
  *&v1[qword_DFE2C8] = 0;
  v1[qword_DFE2D0] = 0;
  v1[qword_DFE2D8] = 0;
  *&v1[qword_DFE2E0] = 0;
  v5 = qword_DFE2E8;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *&v1[v5] = UnfairLock.init()();
  *&v1[qword_DFE2F0] = 0;
  *&v1[qword_DFE2F8] = 0;
  v6 = qword_DFE300;
  *&v1[v6] = [objc_allocWithZone(type metadata accessor for old_ArtworkPrefetchingController()) init];
  *&v1[qword_DFE308] = 0;
  v1[qword_DFE310] = 1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for BrowseCollectionViewController();
  return objc_msgSendSuper2(&v8, "initWithNibName:bundle:", 0, 0);
}

id BrowseCollectionViewController.__deallocating_deinit()
{
  v1 = *&v0[qword_DFE2F8];
  if (v1)
  {
    v2 = v1;
    v3 = [v2 dataSource];
    if (v3)
    {
      v4 = v3;
      swift_unknownObjectRelease();
      if (v4 == v0)
      {
        [v2 setDataSource:0];
      }
    }

    v5 = [v2 delegate];
    if (v5)
    {
      v6 = v5;
      swift_unknownObjectRelease();
      if (v6 == v0)
      {
        [v2 setDelegate:0];
      }
    }

    v7 = [v2 prefetchDataSource];
    if (v7)
    {
      v8 = *&v0[qword_DFE300];
      v9 = v7;
      swift_unknownObjectRelease();
      if (v9 == v8)
      {
        [v2 setPrefetchDataSource:0];
      }
    }
  }

  v11.receiver = v0;
  v11.super_class = type metadata accessor for BrowseCollectionViewController();
  return objc_msgSendSuper2(&v11, "dealloc");
}

uint64_t sub_2FCA20(uint64_t a1)
{
}

void sub_2FCB3C(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v44 = a5;
  v45 = a6;
  v9 = sub_AB7C10();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB7C50();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = *&Strong[qword_DFE2E0];
    if (a3)
    {
      if (v18)
      {
        v19 = v18 == a3;
      }

      else
      {
        v19 = 0;
      }

      if (!v19)
      {
        goto LABEL_14;
      }

      v20 = Strong;
      if (a1)
      {
LABEL_9:
        v21 = swift_allocObject();
        v21[2] = v20;
        v21[3] = a3;
        v21[4] = a1;
        v21[5] = a4;
        v22 = swift_allocObject();
        *(v22 + 16) = sub_303FDC;
        *(v22 + 24) = v21;
        v50 = sub_36C08;
        v51 = v22;
        aBlock = _NSConcreteStackBlock;
        v47 = 1107296256;
        v48 = sub_1822E0;
        v49 = &block_descriptor_98;
        v23 = _Block_copy(&aBlock);
        v24 = a3;
        v25 = a4;
        v26 = a1;
        v27 = v20;

        v28 = swift_allocObject();
        v29 = v44;
        v30 = v45;
        v28[2] = v27;
        v28[3] = v29;
        v28[4] = v30;
        v50 = sub_304028;
        v51 = v28;
        aBlock = _NSConcreteStackBlock;
        v47 = 1107296256;
        v48 = sub_1811AC;
        v49 = &block_descriptor_104;
        v31 = _Block_copy(&aBlock);
        v32 = v27;

        [v25 performBatchUpdates:v23 completion:v31];

        _Block_release(v31);
        _Block_release(v23);

LABEL_13:
        Strong = v26;
        goto LABEL_14;
      }
    }

    else
    {
      if (v18)
      {
LABEL_14:

        return;
      }

      v20 = Strong;
      v33 = 0;
      if (a1)
      {
        goto LABEL_9;
      }
    }

    sub_13C80(0, &qword_DE8ED0);
    v43 = sub_ABA150();
    v34 = swift_allocObject();
    v42 = v20;
    v34[2] = v20;
    v34[3] = a3;
    v35 = v44;
    v36 = v45;
    v34[4] = a4;
    v34[5] = v35;
    v34[6] = v36;
    v50 = sub_303F34;
    v51 = v34;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_1B5EB4;
    v49 = &block_descriptor_88;
    v44 = _Block_copy(&aBlock);
    v37 = a3;
    v38 = a4;

    v39 = v42;

    sub_AB7C30();
    aBlock = _swiftEmptyArrayStorage;
    sub_303F44(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_D1010();
    sub_ABABB0();
    v26 = v43;
    v40 = v44;
    sub_ABA160();

    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
    _Block_release(v40);
    goto LABEL_13;
  }
}

void sub_2FD048(void *a1, void *a2, void *a3, void *a4)
{
  (*&stru_158.segname[(swift_isaMask & *a1) + 8])(a2, 1);
  v8 = *(a1 + qword_DFE290);
  if (v8)
  {
    v9 = *(v8 + 24);
    *(v8 + 24) = 0;

    sub_380968();
  }

  v10 = a2;
  sub_302C9C(a2);

  v12 = *(a1 + qword_DFE290);
  if (v12)
  {
    v13 = *(v12 + 24);
    *(v12 + 24) = a2;
    v14 = v10;

    sub_380968();
  }

  v15 = (*(&stru_3D8.flags + (swift_isaMask & *a1)))(v11);
  if (v15)
  {
    v16 = *(v15 + 96);
    *(v15 + 96) = a2;
    v17 = v10;
  }

  v18 = *(a1 + qword_DFE298);
  if (v18)
  {
    v19 = *(v18 + 32);
    *(v18 + 32) = a2;
    v20 = v10;
  }

  sub_2F8C38(a3, a4);
}

uint64_t sub_2FD1D4(void *a1, void *a2, void *a3, uint64_t (*a4)(uint64_t))
{
  (*&stru_158.segname[(swift_isaMask & *a1) + 8])(a2, 0);
  v8 = *(a1 + qword_DFE290);
  if (v8)
  {
    v9 = *(v8 + 24);
    *(v8 + 24) = 0;

    sub_380968();
  }

  v10 = a2;
  sub_302C9C(a2);

  v11 = *(a1 + qword_DFE298);
  if (v11)
  {
    v12 = *(v11 + 32);
    *(v11 + 32) = a2;
    v13 = v10;
  }

  v14 = (*(&stru_3D8.flags + (swift_isaMask & *a1)))();
  if (v14)
  {
    v15 = *(v14 + 96);
    *(v14 + 96) = a2;
    v16 = v10;
  }

  sub_2FB0D8();
  [a3 reloadData];
  v17 = *(a1 + qword_DFE290);
  if (v17)
  {
    v18 = *(v17 + 24);
    *(v17 + 24) = a2;
    v19 = v10;

    sub_380968();
  }

  return a4(1);
}

id sub_2FD394(void *a1)
{
  v1 = a1;
  v2 = sub_2FD3D8();

  return v2;
}

id sub_2FD3D8()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BrowseCollectionViewController();
  v1 = objc_msgSendSuper2(&v3, "viewBackgroundColor");

  return v1;
}

void sub_2FD448(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = a1;
  sub_303BE8(v5);
}

void sub_2FD4A0()
{
  if (![v0 isViewLoaded])
  {
    return;
  }

  [v0 loadViewIfNeeded];
  v1 = *&v0[qword_DFE2F8];
  if (!v1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2 = v1;
  v3 = [v0 viewBackgroundColor];
  [v2 setBackgroundColor:v3];

  [v0 loadViewIfNeeded];
  v4 = *&v0[qword_DFE2F8];
  if (!v4)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v5 visibleCells];
  sub_13C80(0, &qword_DFE230);
  v7 = sub_AB9760();

  if (v7 >> 62)
  {
    v8 = sub_ABB060();
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    if (v8)
    {
LABEL_6:
      if (v8 >= 1)
      {
        v9 = 0;
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = sub_360438(v9, v7);
          }

          else
          {
            v10 = *(v7 + 8 * v9 + 32);
          }

          ++v9;
          v11 = v10;
          v12 = [v0 viewBackgroundColor];
          [v11 setBackgroundColor:v12];
        }

        while (v8 != v9);
        goto LABEL_14;
      }

      __break(1u);
      goto LABEL_18;
    }
  }

LABEL_14:
}

uint64_t BrowseCollectionViewController.isModelObjectSupportedByMediaPicker(at:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*&stru_1F8.segname[(swift_isaMask & *v2) + 16])(a1);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_12E1C(v6, &unk_DE8E20);
LABEL_11:
    v19 = 0;
    return v19 & 1;
  }

  v11 = (*(v8 + 32))(v10, v6, v7);
  v12 = (*&stru_158.sectname[swift_isaMask & *v2])(v11);
  if (!v12 || (v13 = v12, v14 = [v12 results], v13, !v14) || (isa = sub_AB3770().super.isa, v16 = objc_msgSend(v14, "itemAtIndexPath:", isa), v14, isa, !v16))
  {
LABEL_10:
    (*(v8 + 8))(v10, v7);
    goto LABEL_11;
  }

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  if (!*(v2 + qword_DFE298))
  {
    (*(v8 + 8))(v10, v7);
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v18 = v17;

  v19 = sub_2FC35C(v18);
  (*(v8 + 8))(v10, v7);
  swift_unknownObjectRelease();

  return v19 & 1;
}

Swift::Void __swiftcall BrowseCollectionViewController.loadView()()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = [objc_opt_self() mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [objc_allocWithZone(type metadata accessor for TintColorObservingView()) initWithFrame:{v6, v8, v10, v12}];
  [v13 setAutoresizingMask:18];
  v14 = *&v1[direct field offset for BrowseCollectionViewController.textDrawingCache];
  v15 = [v13 tintColor];
  swift_beginAccess();
  v16 = *(v14 + 24);
  *(v14 + 24) = v15;
  v17 = v15;

  sub_10710C();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = *(&stru_20.filesize + (v3 & v2));
  *(v19 + 24) = v18;
  v20 = &v13[OBJC_IVAR____TtC16MusicApplication22TintColorObservingView_tintColorDidChangeCallback];
  swift_beginAccess();
  v21 = *v20;
  *v20 = sub_303B74;
  v20[1] = v19;

  sub_17654(v21);

  [v1 setView:v13];
}

void sub_2FDBC0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + direct field offset for BrowseCollectionViewController.textDrawingCache);
    v4 = Strong;
    swift_beginAccess();
    v5 = *(v3 + 24);
    *(v3 + 24) = a1;
    v6 = a1;

    sub_10710C();
  }
}

void sub_2FDC50(void *a1)
{
  v1 = a1;
  BrowseCollectionViewController.loadView()();
}

Swift::Void __swiftcall BrowseCollectionViewController.viewDidLoad()()
{
  v1 = v0;
  v2 = *(&stru_20.filesize + (swift_isaMask & *v0));
  v58.receiver = v0;
  v58.super_class = type metadata accessor for BrowseCollectionViewController();
  objc_msgSendSuper2(&v58, "viewDidLoad");
  v3 = [v0 navigationItem];
  v4 = &selRef__authenticateReturningError_;
  v5 = [v0 traitCollection];
  v6 = sub_2B51D8();
  v8 = v7;

  sub_387430(v6, v8);
  v9 = *(v1 + direct field offset for BrowseCollectionViewController.textDrawingCache);
  v10 = [v1 traitCollection];
  [v10 displayScale];
  v12 = v11;

  swift_beginAccess();
  *(v9 + 16) = v12;
  sub_106F0C();
  v13 = [v1 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_29;
  }

  v14 = v13;
  v15 = sub_2FAA3C();
  v16 = *(v1 + qword_DFE2F8);
  *(v1 + qword_DFE2F8) = v15;

  [v1 loadViewIfNeeded];
  if (!*(v1 + qword_DFE2F8))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v14 addSubview:?];
  v17 = direct field offset for BrowseCollectionViewController.wantsItemLibraryAddKeepLocalControl;
  swift_beginAccess();
  v18 = 0;
  if (*(v1 + v17) == 1)
  {
    [v1 loadViewIfNeeded];
    v19 = *(v1 + qword_DFE2F8);
    if (!v19)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_DFE320);
    swift_allocObject();
    v18 = sub_2F5B1C(v19, &unk_D0AB68, sub_303E54);
  }

  (*(&stru_3D8.reserved2 + (swift_isaMask & *v1)))(v18);
  v20 = *(v1 + qword_DFE300);
  *(v20 + OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_cachingReference) = *(v1 + qword_DFE250);

  swift_unknownObjectRelease();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v2;
  *(v22 + 24) = v21;
  v23 = (v20 + OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_catalogMetricsProviding);
  v24 = *(v20 + OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_catalogMetricsProviding);
  *v23 = sub_303B7C;
  v23[1] = v22;

  sub_17654(v24);

  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v2;
  *(v26 + 24) = v25;
  v27 = (v20 + OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_catalogProviding);
  v28 = *(v20 + OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_catalogProviding);
  *v27 = sub_303B84;
  v27[1] = v26;

  sub_17654(v28);

  [v1 loadViewIfNeeded];
  v29 = *(v1 + qword_DFE2F8);
  if (!v29)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  type metadata accessor for ModelResponseIndexBarController();
  v30 = swift_allocObject();
  *(v30 + 24) = 0;
  *(v30 + 32) = 0;
  *(v30 + 40) = 100;
  swift_unknownObjectWeakInit();
  *(v30 + 56) = _swiftEmptyArrayStorage;
  *(v30 + 64) = 0;
  *(v30 + 72) = 0;
  *(v30 + 80) = 0;
  *(v30 + 88) = 1;
  *(v30 + 16) = v29;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v32 = v29;
  if (Strong)
  {
    v33 = Strong;

    sub_381368(v34, v33);
  }

  v35 = sub_381260();
  if (v35)
  {
    v36 = v35;
    v37 = swift_unknownObjectWeakLoadStrong();
    if (v37)
    {
      if (*(v30 + 32) == 1)
      {
        v57 = v37;
        v38 = *(v36 + 16);
        if (v38)
        {

          sub_ABAEC0();
          v39 = objc_opt_self();
          v40 = v36 + 40;
          do
          {

            v41 = sub_AB9260();
            v42 = [v39 keyCommandWithInput:v41 modifierFlags:0 action:"indexKeyCommandHandler:"];

            sub_ABAE90();
            sub_ABAED0();
            sub_ABAEE0();
            sub_ABAEA0();
            v40 += 16;
            --v38;
          }

          while (v38);
          v4 = &selRef__authenticateReturningError_;
        }

        else
        {
        }

        sub_380230(_swiftEmptyArrayStorage);

        Strong = v57;
        goto LABEL_18;
      }
    }
  }

  sub_380230(_swiftEmptyArrayStorage);
LABEL_18:

  v43 = *&stru_158.sectname[swift_isaMask & *v1];
  v44 = v43();
  v45 = *(v30 + 24);
  *(v30 + 24) = v44;
  v46 = v44;

  sub_380968();
  *(v1 + qword_DFE290) = v30;

  v47 = [v1 v4[334]];
  LOBYTE(v46) = UITraitCollection.isMediaPicker.getter();

  if ((v46 & 1) == 0 || (v48 = [v1 navigationController]) == 0)
  {

    goto LABEL_24;
  }

  v49 = v48;
  type metadata accessor for MediaPickerNavigationController();
  if (!swift_dynamicCastClass())
  {

    return;
  }

  v50 = v49;
  [v1 loadViewIfNeeded];
  v51 = *(v1 + qword_DFE2F8);
  if (v51)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE318);
    v52 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v52 + 24) = 0;
    *(v52 + 32) = 0;
    swift_unknownObjectWeakAssign();
    v53 = v51;

    v54 = *(v52 + 24);
    *(v52 + 24) = v51;

    v55 = v43();
    v56 = *(v52 + 32);
    *(v52 + 32) = v55;

    *(v1 + qword_DFE298) = v52;

LABEL_24:

    return;
  }

LABEL_32:
  __break(1u);
}

double sub_2FE438(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&v22[0] = Strong;
    v6 = Strong;
    type metadata accessor for BrowseCollectionViewController();
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v25 = 0;
      memset(v24, 0, sizeof(v24));
    }

    v19[0] = v7;
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE200);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v23 = 0;
      memset(v22, 0, sizeof(v22));
    }

    sub_15F84(v24, &v17, &unk_E04550);
    if (v18)
    {
      sub_70DF8(&v17, v19);
      v9 = v20;
      v10 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      (*(v10 + 64))(a3, v9, v10);
    }

    else
    {
      sub_12E1C(&v17, &unk_E04550);
      sub_15F84(v22, &v17, &qword_E04580);
      if (!v18)
      {
        sub_12E1C(&v17, &qword_E04580);
        v12 = 0.0;
        goto LABEL_12;
      }

      sub_70DF8(&v17, v19);
      v13 = v20;
      v14 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v11 = (*(v14 + 16))(a3, v13, v14);
    }

    v12 = v11;
    __swift_destroy_boxed_opaque_existential_0(v19);
LABEL_12:
    v15 = [a2 traitCollection];
    [v15 displayScale];

    sub_12E1C(v22, &qword_E04580);
    sub_12E1C(v24, &unk_E04550);
    return v12;
  }

  return 0.0;
}

uint64_t sub_2FE6F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v6 - 8);
  v8 = &v34 - v7;
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v35 = a4;
    *(&v34 - 2) = __chkstk_darwin(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE3E8);
    UnfairLock.locked<A>(_:)(sub_303E70);
    v15 = *&v43[0];
    if (!*&v43[0])
    {

      return 0;
    }

    (*&stru_1F8.segname[(swift_isaMask & *v14) + 16])(a2);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

      v16 = &unk_DE8E20;
      v17 = v8;
LABEL_5:
      sub_12E1C(v17, v16);
LABEL_16:

      return 0;
    }

    (*(v10 + 32))(v12, v8, v9);
    v18 = [v15 results];
    if (!v18 || (v19 = v18, isa = sub_AB3770().super.isa, v21 = [v19 itemAtIndexPath:isa], v19, isa, !v21))
    {

      (*(v10 + 8))(v12, v9);
      goto LABEL_16;
    }

    *&v41[0] = v14;
    type metadata accessor for BrowseCollectionViewController();
    v22 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v44 = 0;
      memset(v43, 0, sizeof(v43));
    }

    v38[0] = v22;
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE200);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v42 = 0;
      memset(v41, 0, sizeof(v41));
    }

    sub_15F84(v43, &v36, &unk_E04550);
    if (v37)
    {
      sub_70DF8(&v36, v38);
      v24 = v39;
      v25 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      v35 = v23;
      v26 = *(v25 + 56);
      v27 = swift_unknownObjectRetain();
      v28 = v26(v27, v24, v25);
    }

    else
    {
      sub_12E1C(&v36, &unk_E04550);
      sub_15F84(v41, &v36, &qword_E04580);
      if (!v37)
      {

        swift_unknownObjectRelease();
        (*(v10 + 8))(v12, v9);
        sub_12E1C(&v36, &qword_E04580);
        sub_12E1C(v41, &qword_E04580);
        v16 = &unk_E04550;
        v17 = v43;
        goto LABEL_5;
      }

      sub_70DF8(&v36, v38);
      v29 = v39;
      v30 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      v35 = v23;
      v31 = *(v30 + 8);
      v32 = swift_unknownObjectRetain();
      v28 = v31(v32, v29, v30);
    }

    v33 = v28;

    swift_unknownObjectRelease();
    (*(v10 + 8))(v12, v9);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(v38);
    sub_12E1C(v41, &qword_E04580);
    sub_12E1C(v43, &unk_E04550);

    return v33;
  }

  return result;
}

void sub_2FEC70(void *a1)
{
  v1 = a1;
  BrowseCollectionViewController.viewDidLoad()();
}

Swift::Void __swiftcall BrowseCollectionViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for BrowseCollectionViewController();
  objc_msgSendSuper2(&v19, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v1 loadViewIfNeeded];
  v12 = *&v1[qword_DFE2F8];
  if (!v12)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v12 setFrame:{v5, v7, v9, v11}];
  if (sub_AB38D0())
  {
    sub_2FB0D8();
  }

  v13 = &v1[qword_DFE2A8];
  *v13 = v9;
  v13[1] = v11;
  ObjectType = swift_getObjectType();
  v15 = swift_conformsToProtocol2();
  if (v15)
  {
    (*(v15 + 8))(ObjectType, v15);
    v17 = v16;
    v18 = swift_getObjectType();
    (*(v17 + 96))(v18, v17);
    swift_unknownObjectRelease();
  }
}

void sub_2FEE78(void *a1)
{
  v1 = a1;
  BrowseCollectionViewController.viewDidLayoutSubviews()();
}

Swift::Void __swiftcall BrowseCollectionViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BrowseCollectionViewController();
  objc_msgSendSuper2(&v5, "viewWillAppear:", a1);
  v1[qword_DFE2D0] = 1;
  if (v1[qword_DFE2A0] == 1)
  {
    [v1 loadViewIfNeeded];
    v3 = *&v1[qword_DFE2F8];
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    UICollectionView.clearSelection(using:animated:)([v1 transitionCoordinator], a1);

    swift_unknownObjectRelease();
  }

  if (v1[qword_DFE2C0] != 1 || v1[qword_DFE2D8] == 1)
  {
    v1[qword_DFE2C0] = 1;
    v1[qword_DFE2D8] = 0;
    sub_2FB7A4();
  }
}

void sub_2FEFFC(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  BrowseCollectionViewController.viewWillAppear(_:)(a3);
}

Swift::Void __swiftcall BrowseCollectionViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BrowseCollectionViewController();
  objc_msgSendSuper2(&v3, "viewWillDisappear:", a1);
  *(v1 + qword_DFE2D0) = 0;
}

void sub_2FF0C8(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  BrowseCollectionViewController.viewWillDisappear(_:)(a3);
}

void sub_2FF12C(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  BrowseCollectionViewController.viewDidAppear(_:)(a3);
}

uint64_t sub_2FF190(char a1, SEL *a2, char a3)
{
  v12.receiver = v3;
  v12.super_class = type metadata accessor for BrowseCollectionViewController();
  objc_msgSendSuper2(&v12, *a2, a1 & 1);
  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    (*(result + 8))(ObjectType, result);
    v10 = v9;
    v11 = swift_getObjectType();
    (*(v10 + 16))(a3 & 1, v11, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2FF280(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  BrowseCollectionViewController.viewDidDisappear(_:)(a3);
}

Swift::Void __swiftcall BrowseCollectionViewController.setEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v5 = *(&stru_20.filesize + (swift_isaMask & *v2));
  v13.receiver = v2;
  v13.super_class = type metadata accessor for BrowseCollectionViewController();
  objc_msgSendSuper2(&v13, "setEditing:animated:", _, animated);
  [v2 loadViewIfNeeded];
  v6 = *(v2 + qword_DFE2F8);
  if (!v6)
  {
    goto LABEL_6;
  }

  if (animated)
  {
    [v6 setEditing:_];
    return;
  }

  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  *(v8 + 32) = _;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_303BC4;
  *(v9 + 24) = v8;
  v12[4] = sub_2D4D0;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1822E0;
  v12[3] = &block_descriptor_31;
  v10 = _Block_copy(v12);
  v11 = v6;

  [v7 performWithoutAnimation:v10];

  _Block_release(v10);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
LABEL_6:
    __break(1u);
  }
}

void sub_2FF4DC(void *a1, uint64_t a2, Swift::Bool a3, Swift::Bool a4)
{
  v6 = a1;
  BrowseCollectionViewController.setEditing(_:animated:)(a3, a4);
}

Swift::Void __swiftcall BrowseCollectionViewController.music_viewInheritedLayoutInsetsDidChange()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BrowseCollectionViewController();
  objc_msgSendSuper2(&v3, "music_viewInheritedLayoutInsetsDidChange");
  [v0 loadViewIfNeeded];
  v1 = *&v0[qword_DFE2F8];
  if (v1)
  {
    v2 = [v1 collectionViewLayout];
    [v2 invalidateLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_2FF5F0(void *a1)
{
  v1 = a1;
  BrowseCollectionViewController.music_viewInheritedLayoutInsetsDidChange()();
}

Swift::Void __swiftcall BrowseCollectionViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v44.receiver = v1;
  v44.super_class = type metadata accessor for BrowseCollectionViewController();
  objc_msgSendSuper2(&v44, "traitCollectionDidChange:", isa);
  v4 = [v1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  v6 = v5;
  if (isa)
  {
    v7 = [(objc_class *)isa preferredContentSizeCategory];
    v8 = sub_AB92A0();
    v10 = v9;
    if (v8 == sub_AB92A0() && v10 == v11)
    {

      goto LABEL_19;
    }

    v13 = sub_ABB3C0();

    if (v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v14 = *(v2 + direct field offset for BrowseCollectionViewController.textDrawingCache);
  [*(v14 + 64) removeAllObjects];
  [*(v14 + 80) removeAllObjects];
  if (*(v14 + 96))
  {
    *(v14 + 104) = 1;
  }

  else
  {
    v15 = [objc_opt_self() defaultCenter];
    if (qword_DE6828 != -1)
    {
      swift_once();
    }

    [v15 postNotificationName:static TextDrawing.Cache.didInvalidateNotification object:v14];
  }

  sub_2FB0D8();
  if ([v2 isViewLoaded])
  {
    [v2 loadViewIfNeeded];
    v16 = *(v2 + qword_DFE2F8);
    if (!v16)
    {
      __break(1u);
      goto LABEL_42;
    }

    [v16 reloadData];
  }

  sub_2FB7A4();
LABEL_19:
  v17 = *(v2 + direct field offset for BrowseCollectionViewController.textDrawingCache);
  [v4 displayScale];
  v19 = v18;
  swift_beginAccess();
  *(v17 + 16) = v19;
  sub_106F0C();
  v20 = *(v2 + qword_DFE2F0);
  if (!v20)
  {
    goto LABEL_30;
  }

  v21 = [v20 request];
  if (!v21)
  {
    goto LABEL_30;
  }

  v22 = v21;
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    v25.rawValue = UITraitCollection.legacyLibraryFilter.getter().rawValue;
    if (isa && v25.rawValue == UITraitCollection.legacyLibraryFilter.getter().rawValue)
    {
      v26 = UITraitCollection.mediaLibrary.getter();
      v27 = [v24 mediaLibrary];
      if (v27)
      {
        v28 = v27;
        sub_13C80(0, &qword_DF86B0);
        v29 = sub_ABA790();

        if (v29)
        {
          goto LABEL_29;
        }
      }

      else
      {
      }
    }

    sub_2FB7A4();
  }

LABEL_29:

LABEL_30:
  if (!UITraitCollection.isMediaPicker.getter())
  {
    goto LABEL_35;
  }

  v30 = [v2 navigationController];
  if (!v30)
  {
    goto LABEL_35;
  }

  v31 = v30;
  type metadata accessor for MediaPickerNavigationController();
  if (!swift_dynamicCastClass() || *(v2 + qword_DFE298))
  {

LABEL_35:
    if (UITraitCollection.isMediaPicker.getter())
    {
LABEL_38:
      v32 = [v2 navigationItem];
      v33 = [v2 traitCollection];
      v34 = sub_2B51D8();
      v36 = v35;

      sub_387430(v34, v36);
      return;
    }

    *(v2 + qword_DFE298) = 0;
LABEL_37:

    goto LABEL_38;
  }

  v37 = v31;
  [v2 loadViewIfNeeded];
  v38 = *(v2 + qword_DFE2F8);
  if (v38)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE318);
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v39 + 24) = 0;
    *(v39 + 32) = 0;
    swift_unknownObjectWeakAssign();
    v40 = v38;

    v41 = *(v39 + 24);
    *(v39 + 24) = v38;

    v42 = (*&stru_158.sectname[swift_isaMask & *v2])();
    v43 = *(v39 + 32);
    *(v39 + 32) = v42;

    *(v2 + qword_DFE298) = v39;
    goto LABEL_37;
  }

LABEL_42:
  __break(1u);
}

void sub_2FFB90(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  BrowseCollectionViewController.traitCollectionDidChange(_:)(v9);
}

id sub_2FFBFC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = _s16MusicApplication30BrowseCollectionViewControllerC16numberOfSections2inSiSo012UICollectionE0C_tF_0();

  return v6;
}

id sub_2FFC48(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_30336C();

  return v6;
}

id sub_2FFC9C(char a1)
{
  v2 = a1 & 1;
  v3 = direct field offset for BrowseCollectionViewController.wantsItemLibraryAddKeepLocalControl;
  result = swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    result = [v1 isViewLoaded];
    if (result)
    {
      if (*(v1 + v3) == 1)
      {
        result = [v1 loadViewIfNeeded];
        v5 = *(v1 + qword_DFE2F8);
        if (!v5)
        {
          __break(1u);
          return result;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(qword_DFE320);
        swift_allocObject();
        v6 = sub_2F5B1C(v5, &unk_D0AB68, sub_303E54);
      }

      else
      {
        v6 = 0;
      }

      return (*(&stru_3D8.reserved2 + (swift_isaMask & *v1)))(v6);
    }
  }

  return result;
}

id sub_2FFDCC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  v14 = BrowseCollectionViewController.collectionView(_:cellForItemAt:)(v11, v10);

  (*(v8 + 8))(v10, v7);

  return v14;
}

id sub_2FFEF4(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  v17 = sub_302674(v13, v12);

  (*(v10 + 8))(v12, v9);

  return v17;
}

uint64_t sub_30002C()
{
  v0 = sub_AB3820();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  (*(v1 + 8))(v3, v0);
  return 0;
}

Class sub_3000F8(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  v6 = _s16MusicApplication30BrowseCollectionViewControllerC19_sectionIndexTitles3forSaySSGSgSo012UICollectionE0CSg_tF_0();

  if (v6)
  {
    v7.super.isa = sub_AB9740().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

Class sub_30017C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  if (a4)
  {
    sub_AB92A0();
    a4 = v12;
  }

  v13 = a3;
  v14 = a1;
  BrowseCollectionViewController._collectionView(_:indexPathForSectionIndexTitle:at:)(a4, a5, v11);

  v15 = sub_AB3820();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v11, 1, v15);
  v18 = 0;
  if (v17 != 1)
  {
    isa = sub_AB3770().super.isa;
    (*(v16 + 8))(v11, v15);
    v18 = isa;
  }

  return v18;
}

void sub_3002F8(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  BrowseCollectionViewController.collectionView(_:willDisplay:forItemAt:)(v13, v14, v12);

  (*(v10 + 8))(v12, v9);
}

void sub_30041C(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  sub_303648(v14, v12);

  (*(v10 + 8))(v12, v9);
}

void sub_30053C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a5;
  v14 = a6;
  [a4 clearArtworkCatalogs];
  (*(v10 + 8))(v12, v9);
}

uint64_t sub_300654()
{
  v0 = sub_AB3820();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_30074C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(id, char *))
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a1;
  LOBYTE(a5) = a5(v13, v12);

  (*(v10 + 8))(v12, v9);
  return a5 & 1;
}

void sub_30086C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  BrowseCollectionViewController.collectionView(_:performPrimaryActionForItemAt:)(v11, v10);

  (*(v8 + 8))(v10, v7);
}

uint64_t sub_300994(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(char *))
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a1;
  LOBYTE(a5) = a5(v12);

  (*(v10 + 8))(v12, v9);
  return a5 & 1;
}

void sub_300AB0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  BrowseCollectionViewController.scrollViewDidScroll(_:)(v4);
}

id sub_300B18()
{
  v1 = swift_isaMask & *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v2 - 8);
  v68 = v59 - v3;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v67 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v66 = v59 - v9;
  v10 = qword_DFE308;
  v11 = *(v0 + qword_DFE308);
  if (v11)
  {
    v12 = (*(v1 + 344))(v8);
    v13 = *(v11 + 96);
    *(v11 + 96) = v12;

    v14 = *(v0 + v10);
    if (v14)
    {
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = swift_allocObject();
      v17 = *(v1 + 80);
      *(v16 + 16) = v17;
      *(v16 + 24) = v15;
      v18 = *(v14 + 64);
      *(v14 + 64) = sub_303D38;
      *(v14 + 72) = v16;

      sub_17654(v18);

      v19 = *(v0 + v10);
      if (v19)
      {
        v20 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v21 = swift_allocObject();
        *(v21 + 16) = v17;
        *(v21 + 24) = v20;
        v22 = *(v19 + 48);
        *(v19 + 48) = sub_303D40;
        *(v19 + 56) = v21;

        sub_17654(v22);

        v23 = *(v0 + v10);
        if (v23)
        {
          v24 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v25 = swift_allocObject();
          *(v25 + 16) = v17;
          *(v25 + 24) = v24;
          v26 = *(v23 + 32);
          *(v23 + 32) = sub_303D48;
          *(v23 + 40) = v25;

          sub_17654(v26);
        }
      }
    }
  }

  result = [v0 isViewLoaded];
  if (result)
  {
    v28 = *(v0 + v10);
    if (v28)
    {
      v29 = v28[11];

      v30 = [v29 indexPathsForVisibleItems];
      v31 = sub_AB9760();

      v32 = *(v31 + 16);
      if (v32)
      {
        v33 = *(v5 + 16);
        v34 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v59[1] = v31;
        v35 = v31 + v34;
        v70 = *(v5 + 72);
        v71 = v33;
        v36 = (v5 + 48);
        v63 = (v5 + 32);
        v69 = (v5 + 8);
        v37 = v5 + 16;
        v64 = (v37 + 40);
        v65 = v36;
        v38 = v66;
        v33(v66, v35, v4);
        while (1)
        {
          v39 = v28[6];
          if (!v39 || (, v40 = v39(v28, v38), v42 = v41, sub_17654(v39), !v40))
          {
            (*v69)(v38, v4);
            goto LABEL_11;
          }

          v43 = v28[8];
          if (!v43)
          {
            break;
          }

          v44 = v37;

          v45 = v4;
          v46 = v68;
          v43(v28, v40, v42);
          v47 = v43;
          v48 = v46;
          v4 = v45;
          sub_17654(v47);
          if ((*v65)(v48, 1, v45) == 1)
          {
            v49 = v66;
            (*v69)(v66, v45);
            v37 = v44;
            v38 = v49;
LABEL_19:
            sub_12E1C(v48, &unk_DE8E20);
LABEL_25:
            swift_unknownObjectRelease();
            goto LABEL_11;
          }

          (*v63)(v67, v48, v45);
          v50 = v28[4];
          v37 = v44;
          if (!v50 || (, v51 = v50(v67), sub_17654(v50), !v51))
          {
            ObjectType = swift_getObjectType();
            (*(v42 + 16))(0, 0, ObjectType, v42);
            (*(v42 + 32))(0, 0, ObjectType, v42);
            v55 = *v69;
            (*v69)(v67, v4);
            v38 = v66;
            v55(v66, v4);
            goto LABEL_25;
          }

          v52 = v67;
          v61 = v51;
          v62 = [v51 relativeModelObjectForStoreLibraryPersonalization];
          if (v62)
          {
            swift_unknownObjectRetain();
            v60 = v28;
            v53 = &off_CF2AC8;
          }

          else
          {
            v60 = 0;
            v53 = 0;
          }

          v56 = v52;
          v57 = swift_getObjectType();
          (*(v42 + 16))(v60, v53, v57, v42);
          (*(v42 + 32))(v62, 0, v57, v42);
          v58 = *v69;
          (*v69)(v56, v4);
          v38 = v66;
          v58(v66, v4);
          swift_unknownObjectRelease();

LABEL_11:
          v35 += v70;
          if (!--v32)
          {
          }

          v71(v38, v35, v4);
        }

        (*v69)(v38, v4);
        v48 = v68;
        (*v64)(v68, 1, 1, v4);
        goto LABEL_19;
      }
    }
  }

  return result;
}

void sub_3012AC(uint64_t a1@<X1>, char *a2@<X8>)
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

void *sub_301668(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
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
        if (sub_3038AC(v15))
        {
          isa = sub_AB3770().super.isa;
          v17 = [v15 itemAtIndexPath:isa];

          v18 = [v17 relativeModelObjectForStoreLibraryPersonalization];
          if (v18)
          {
            v19 = v18;
            swift_unknownObjectRelease();
            if ((*(&stru_248.size + (swift_isaMask & *v11)))(v19, v9))
            {
              result = [v11 loadViewIfNeeded];
              v20 = *(v11 + qword_DFE2F8);
              if (!v20)
              {
                __break(1u);
                return result;
              }

              v21 = v20;
              v22 = sub_AB3770().super.isa;
              v23 = [v21 cellForItemAtIndexPath:v22];
              (*(v7 + 8))(v9, v6);

              if (v23)
              {
                swift_getObjectType();
                v24 = swift_conformsToProtocol2();

                if (v24)
                {
                  return v23;
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

        else
        {
          (*(v7 + 8))(v9, v6);
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

void sub_301AD0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (*&stru_158.sectname[swift_isaMask & *Strong])();

    if (v4)
    {
      v5 = [v4 results];

      if (v5)
      {
        isa = sub_AB3770().super.isa;
        v7 = [v5 itemAtIndexPath:isa];

        if (v7)
        {
          v8 = [v7 relativeModelObjectForStoreLibraryPersonalization];
          if (v8)
          {
            v9 = v8;
            swift_beginAccess();
            v10 = swift_unknownObjectWeakLoadStrong();
            if (v10)
            {
              v11 = v10;
              v12 = (*(&stru_248.size + (swift_isaMask & *v10)))(v9, a1);

              swift_unknownObjectRelease();
              if ((v12 & 1) == 0)
              {
              }
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_301C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  swift_beginAccess();
  v29 = a2;
  v16 = *(a2 + 16);
  v17 = *(v16 + 16);
  v31 = a1;
  if (v17 && (v18 = sub_2EC048(a1), (v19 & 1) != 0))
  {
    v20 = a4;
    (*(v8 + 16))(v15, *(v16 + 56) + *(v8 + 72) * v18, v7);
    v21 = 0;
  }

  else
  {
    v20 = a4;
    v21 = 1;
  }

  v22 = *(v8 + 56);
  v22(v15, v21, 1, v7);
  swift_endAccess();
  v23 = *(v8 + 48);
  if (v23(v15, 1, v7) == 1)
  {
    (*(&stru_1F8.size + (swift_isaMask & *v28)))(v31);
    if (v23(v15, 1, v7) != 1)
    {
      sub_12E1C(v15, &unk_DE8E20);
    }
  }

  else
  {
    (*(v8 + 32))(v20, v15, v7);
  }

  v24 = *(v8 + 16);
  v25 = v30;
  v24(v30, v31, v7);
  v24(v13, v20, v7);
  v22(v13, 0, 1, v7);
  swift_beginAccess();
  sub_2E5064(v13, v25);
  return swift_endAccess();
}

uint64_t sub_301FBC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  sub_AB3810();
  sub_301C98(v9, a2, a3, v11);
  v12 = *(v6 + 8);
  v12(v9, v5);
  v13 = IndexPath.safeSection.getter();
  v12(v11, v5);
  return v13;
}

uint64_t sub_3020F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

void sub_302164(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v11 = sub_AB3820();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_301C98(a1, a5, a6, v14);
  isa = sub_AB3770().super.isa;
  v16 = *(v12 + 8);
  v16(v14, v11);
  sub_301C98(a2, a5, a6, v14);
  v17 = sub_AB3770().super.isa;
  v16(v14, v11);
  [a4 moveItemAtIndexPath:isa toIndexPath:v17];
}

void sub_3022B8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  v15 = *(a1 + 32);
  sub_AB3790();
  sub_AB3790();

  v16 = a2;
  v17 = a3;
  v15(v14, v12, a4);
  v18 = *(v9 + 8);
  v18(v12, v8);
  v18(v14, v8);
}

uint64_t sub_302428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  sub_301C98(a1, a2, a3, a4);
  v5 = sub_AB3820();
  return (*(*(v5 - 8) + 56))(a4, 0, 1, v5);
}

void sub_302494()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2FB7A4();
  }
}

void sub_302510(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_303C58();
}

id _s16MusicApplication30BrowseCollectionViewControllerC16numberOfSections2inSiSo012UICollectionE0C_tF_0()
{
  v1 = (*&stru_158.sectname[swift_isaMask & *v0])();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 results];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 numberOfSections];

  return v4;
}

uint64_t sub_302674(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v2;
  type metadata accessor for BrowseCollectionViewController();
  v11 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE3B0);
  if (!swift_dynamicCast())
  {
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    sub_12E1C(v27, &qword_DFE3B8);
    v30[0] = 0;
    v30[1] = 0xE000000000000000;
    sub_ABAD90(197);
    v33._countAndFlagsBits = 0xD0000000000000C2;
    v33._object = 0x8000000000B5E0D0;
    sub_AB94A0(v33);
    *&v27[0] = v11;
    swift_getWitnessTable();
    sub_ABB370();
    v34._countAndFlagsBits = 46;
    v34._object = 0xE100000000000000;
    sub_AB94A0(v34);
LABEL_10:
    result = sub_ABAFD0();
    __break(1u);
    return result;
  }

  sub_70DF8(v27, v30);
  (*&stru_1F8.segname[(swift_isaMask & *v11) + 16])(a2);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_12E1C(v6, &unk_DE8E20);
    *&v27[0] = 0;
    *(&v27[0] + 1) = 0xE000000000000000;
    sub_ABAD90(190);
    v35._object = 0x8000000000B5DB40;
    v35._countAndFlagsBits = 0xD000000000000014;
    sub_AB94A0(v35);
    sub_303F44(&qword_DF9260, &type metadata accessor for IndexPath);
    v36._countAndFlagsBits = sub_ABB330();
    sub_AB94A0(v36);

    v37._countAndFlagsBits = 0xD0000000000000A8;
    v37._object = 0x8000000000B5E1A0;
    sub_AB94A0(v37);
    goto LABEL_10;
  }

  (*(v8 + 32))(v10, v6, v7);
  v12 = v32;
  v24 = v31;
  v23 = __swift_project_boxed_opaque_existential_1(v30, v31);
  v13 = (*&stru_158.sectname[swift_isaMask & *v11])(v23);
  v26 = v7;
  if (v13 && (v14 = v13, v15 = [v13 results], v14, v15))
  {
    v16 = a2;
    v17 = [v15 sectionAtIndex:IndexPath.safeSection.getter()];
  }

  else
  {
    v16 = a2;
    v17 = 0;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  v19 = *(v12 + 16);
  v20 = v11;
  v21 = v19(v17, v16, v10, v25, sub_304134, v18, v24, v12);
  (*(v8 + 8))(v10, v26);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v30);
  return v21;
}

uint64_t sub_302BAC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_302BEC()
{
  [v0 loadViewIfNeeded];
  result = *&v0[qword_DFE2F8];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_302C24()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_103(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_302C9C(void *a1)
{
  v2 = *(v1 + qword_DFE2F0);
  *(v1 + qword_DFE2F0) = a1;
  v3 = a1;

  v4 = *(v1 + qword_DFE2E0);
  *(v1 + qword_DFE2E0) = 0;
}

uint64_t sub_302CF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v0 - 8);
  v2 = &v42 - v1;
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v42 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = sub_2FB62C();
    v13 = (*(&stru_3D8.flags + (swift_isaMask & *v11)))(v12);
    if (!v13)
    {
      goto LABEL_25;
    }

    v14 = v13;
    v15 = [*(v13 + 88) indexPathsForVisibleItems];
    v16 = sub_AB9760();

    v17 = v16;
    v18 = *(v16 + 16);
    if (v18)
    {
      v50 = v7;
      v52 = v2;
      v43 = v11;
      v55 = *(v4 + 16);
      v19 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v42 = v17;
      v20 = v17 + v19;
      v21 = *(v4 + 72);
      v47 = (v4 + 32);
      v53 = (v4 + 8);
      v54 = v21;
      v48 = (v4 + 56);
      v49 = (v4 + 48);
      v51 = v4 + 16;
      v55(v9, v17 + v19, v3);
      while (1)
      {
        v22 = v14[6];
        if (!v22 || (, v23 = v22(v14, v9), v25 = v24, sub_17654(v22), !v23))
        {
          (*v53)(v9, v3);
          goto LABEL_6;
        }

        v26 = v14[8];
        if (!v26)
        {
          break;
        }

        v27 = v52;
        v26(v14, v23, v25);
        sub_17654(v26);
        if ((*v49)(v27, 1, v3) == 1)
        {
          (*v53)(v9, v3);
LABEL_14:
          sub_12E1C(v27, &unk_DE8E20);
LABEL_20:
          swift_unknownObjectRelease();
          goto LABEL_6;
        }

        (*v47)(v50, v27, v3);
        v28 = v14[4];
        if (!v28 || (, v29 = v28(v50), sub_17654(v28), !v29))
        {
          ObjectType = swift_getObjectType();
          (*(v25 + 16))(0, 0, ObjectType, v25);
          (*(v25 + 32))(0, 0, ObjectType, v25);
          v32 = *v53;
          (*v53)(v50, v3);
          v32(v9, v3);
          goto LABEL_20;
        }

        v44 = v29;
        v46 = [v29 relativeModelObjectForStoreLibraryPersonalization];
        if (v46)
        {
          swift_unknownObjectRetain();
          v45 = v14;
          v30 = &off_CF2AC8;
        }

        else
        {
          v45 = 0;
          v30 = 0;
        }

        v33 = swift_getObjectType();
        (*(v25 + 16))(v45, v30, v33, v25);
        (*(v25 + 32))(v46, 0, v33, v25);
        v34 = *v53;
        (*v53)(v50, v3);
        v34(v9, v3);
        swift_unknownObjectRelease();

LABEL_6:
        v20 += v54;
        if (!--v18)
        {

          v11 = v43;
          goto LABEL_25;
        }

        v55(v9, v20, v3);
      }

      (*v53)(v9, v3);
      v27 = v52;
      (*v48)(v52, 1, 1, v3);
      goto LABEL_14;
    }

LABEL_25:
    (*&stru_158.segname[(swift_isaMask & *v11) + 16])();
    v35 = qword_DFE260;
    swift_beginAccess();
    v36 = *(v11 + v35);
    v37 = qword_DFE260;
    swift_beginAccess();
    *(v11 + v37) = _swiftEmptyArrayStorage;

    v38 = *(v36 + 16);
    if (v38)
    {
      v39 = v36 + 40;
      do
      {
        v40 = *(v39 - 8);

        v40(v41);

        v39 += 16;
        --v38;
      }

      while (v38);
    }
  }

  return result;
}

id sub_30336C()
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

void *_s16MusicApplication30BrowseCollectionViewControllerC19_sectionIndexTitles3forSaySSGSgSo012UICollectionE0CSg_tF_0()
{
  v1 = *(v0 + qword_DFE290);
  if (!v1 || *(v1 + 32) != 1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = sub_381260();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_303648(void *a1, uint64_t a2)
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  [a1 clearArtworkCatalogs];
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (v2)
    {
      v10 = result;
      ObjectType = swift_getObjectType();
      (*(v10 + 8))(ObjectType, v10);
      v13 = v12;
      v14 = swift_getObjectType();
      (*(v6 + 16))(v8, a2, v5);
      sub_303F44(&qword_DFAA90, &type metadata accessor for IndexPath);
      sub_ABAD10();
      (*(v13 + 120))(a1, v16, v14, v13);
      sub_8085C(v16);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_303808(uint64_t a1)
{
  v3 = [v1 traitCollection];
  v4 = UITraitCollection.isMediaPicker.getter();

  if (!v4)
  {
    return 1;
  }

  return BrowseCollectionViewController.isModelObjectSupportedByMediaPicker(at:)(a1);
}

BOOL sub_3038AC(void *a1)
{
  v2 = [a1 numberOfSections];
  if (sub_AB37F0() >= v2)
  {
    return 0;
  }

  v3 = [a1 numberOfItemsInSection:sub_AB37F0()];
  return sub_AB37E0() < v3;
}

void _s16MusicApplication30BrowseCollectionViewControllerC5coderACyxGSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  *(v0 + qword_DFE268) = 0;
  *(v0 + qword_DFE270) = 0;
  *(v0 + qword_DFE278) = 2;
  *(v0 + qword_DFE280) = 2;
  *(v0 + qword_DFE288) = 0;
  *(v0 + qword_DFE290) = 0;
  *(v0 + qword_DFE298) = 0;
  v2 = direct field offset for BrowseCollectionViewController.textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(v0 + v2) = TextDrawing.Cache.init()();
  *(v0 + qword_DFE2A0) = 1;
  *(v0 + direct field offset for BrowseCollectionViewController.wantsItemLibraryAddKeepLocalControl) = 0;
  v3 = (v0 + qword_DFE2A8);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + qword_DFE2B0) = 0;
  *(v0 + qword_DFE2B8) = 0;
  v4 = qword_DFE250;
  type metadata accessor for Artwork.CachingReference();
  *(v1 + v4) = swift_allocObject();
  *(v1 + qword_DFE2C0) = 0;
  *(v1 + qword_DFE260) = _swiftEmptyArrayStorage;
  *(v1 + qword_DFE2C8) = 0;
  *(v1 + qword_DFE2D0) = 0;
  *(v1 + qword_DFE2D8) = 0;
  *(v1 + qword_DFE2E0) = 0;
  v5 = qword_DFE2E8;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v1 + v5) = UnfairLock.init()();
  *(v1 + qword_DFE2F0) = 0;
  *(v1 + qword_DFE2F8) = 0;
  v6 = qword_DFE300;
  *(v1 + v6) = [objc_allocWithZone(type metadata accessor for old_ArtworkPrefetchingController()) init];
  *(v1 + qword_DFE308) = 0;
  *(v1 + qword_DFE310) = 1;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_303B3C()
{

  return swift_deallocObject();
}

uint64_t sub_303B8C()
{

  return swift_deallocObject();
}

void sub_303BE8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BrowseCollectionViewController();
  objc_msgSendSuper2(&v3, "setViewBackgroundColor:", a1);
  sub_2FD4A0();
}

uint64_t sub_303D50()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_303D90()
{

  return swift_deallocObject();
}

id sub_303DCC(uint64_t a1, uint64_t a2)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = sub_301FBC(a1, v5, v6);
  v8 = sub_301FBC(a2, v5, v6);

  return [v4 moveSection:v7 toSection:v8];
}

uint64_t sub_303E70@<X0>(uint64_t *a1@<X8>)
{
  result = (*&stru_158.sectname[swift_isaMask & **(v1 + 16)])();
  *a1 = result;
  return result;
}

uint64_t sub_303EE4()
{

  return swift_deallocObject();
}

uint64_t sub_303F44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_303F8C()
{

  return swift_deallocObject();
}

uint64_t sub_303FE8()
{

  return swift_deallocObject();
}

uint64_t sub_304028(uint64_t a1)
{
  v3 = *(v1 + 24);
  sub_2FB0D8();
  return v3(a1);
}

uint64_t sub_304070()
{

  return swift_deallocObject();
}

id sub_304138(uint64_t a1)
{
  v13 = a1;
  ObjectType = swift_getObjectType();
  v11 = sub_ABA140();
  v2 = *(v11 - 8);
  __chkstk_darwin(v11);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_ABA100();
  __chkstk_darwin(v5);
  v6 = sub_AB7C50();
  __chkstk_darwin(v6 - 8);
  v10 = OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_accessQueue;
  sub_60044();
  sub_AB7C30();
  v15 = _swiftEmptyArrayStorage;
  sub_305780();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01270);
  sub_3057D8();
  sub_ABABB0();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11);
  *&v1[v10] = sub_ABA180();
  *&v1[OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_matchedContacts] = 0;
  v1[OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_shouldSortOnboardedFriends] = 0;
  v1[OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_shouldSortNonOnboardedFriends] = 0;
  v7 = &v1[OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation__responseHandler];
  *v7 = 0;
  v7[1] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_contactStore] = v13;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_3043BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation__responseHandler);
  v4 = *(a1 + OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation__responseHandler);
  *v3 = a2;
  v3[1] = a3;
  sub_307CC(a2);

  return sub_17654(v4);
}

uint64_t sub_304410()
{
  if (qword_DE67A8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E05300);
  UnfairLock.locked<A>(_:)(sub_90048);
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_16D2C8(1, v2, sub_3058D4, v0);

  return sub_12E1C(v2, &unk_E05300);
}

void sub_304534(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (([Strong isCancelled] & 1) == 0)
    {
      sub_3045CC(a1, a2, a3, a4);
    }
  }
}

void sub_3045CC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {

    sub_304A58(a4);
    return;
  }

  if (a1 != 1)
  {
    v6 = sub_306630(a1, a2);
    if (v6)
    {
      v7 = v6;
      if (a3)
      {
        v31 = &_swiftEmptySetSingleton;
        v32 = &_swiftEmptySetSingleton;
        if (*(v6 + 16))
        {
          v8 = sub_2EBF88(0x73646E65697266, 0xE700000000000000);
          if (v9)
          {
            sub_15F84(*(v7 + 56) + 32 * v8, &v29, &unk_DE8E40);
            aBlock = v29;
            v26 = v30;
            if (*(&v30 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE458);
              if (swift_dynamicCast())
              {
                *&aBlock = &_swiftEmptySetSingleton;
                v10 = v4;
                v11 = sub_3062C0(v24, &aBlock);

                v12 = sub_2F3D04(v11);

                v32 = v12;
              }
            }

            else
            {
              sub_12E1C(&aBlock, &unk_DE8E40);
            }
          }
        }

        if (*(v7 + 16))
        {
          v13 = sub_2EBF88(0x73746361746E6F63, 0xE800000000000000);
          if (v14)
          {
            sub_15F84(*(v7 + 56) + 32 * v13, &v29, &unk_DE8E40);
            aBlock = v29;
            v26 = v30;
            if (*(&v30 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE458);
              if (swift_dynamicCast())
              {
                v15 = sub_304C90(v24, a3);
                v16 = sub_2F3D04(v15);

                v31 = v16;
              }
            }

            else
            {
              sub_12E1C(&aBlock, &unk_DE8E40);
            }
          }
        }

        v17 = *&v4[OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_accessQueue];
        v18 = swift_allocObject();
        v18[2] = v4;
        v18[3] = &v32;
        v18[4] = &v31;
        v18[5] = v7;
        v19 = swift_allocObject();
        *(v19 + 16) = sub_306B8C;
        *(v19 + 24) = v18;
        v27 = sub_36C08;
        v28 = v19;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v26 = sub_1822E0;
        *(&v26 + 1) = &block_descriptor_16_0;
        v20 = _Block_copy(&aBlock);
        v21 = v4;

        dispatch_sync(v17, v20);
        _Block_release(v20);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }

        else
        {
        }

        return;
      }
    }
  }

  v23 = [objc_allocWithZone(NSError) initWithDomain:MPStoreSocialErrorDomain code:-3000 userInfo:0];
  sub_304A58(v23);
}

uint64_t sub_304A58(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v20 = 0;
  v19 = 0;
  v18[0] = 0;
  v18[1] = 0;
  v4 = *&v1[OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_accessQueue];
  v5 = swift_allocObject();
  v5[2] = &v20;
  v5[3] = v1;
  v5[4] = &v19 + 1;
  v5[5] = &v19;
  v5[6] = v18;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_305874;
  *(v6 + 24) = v5;
  aBlock[4] = sub_2D4D0;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_104;
  v7 = _Block_copy(aBlock);
  v8 = v1;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v11 = v18[0];
    if (v18[0])
    {
      v12 = HIBYTE(v19);
      v13 = v19;
      sub_307CC(v18[0]);

      v11(v14, v12, v13, a1);

      sub_17654(v11);
    }

    if (a1)
    {
      v15 = sub_AB3040();
    }

    else
    {
      v15 = 0;
    }

    v16.receiver = v8;
    v16.super_class = ObjectType;
    objc_msgSendSuper2(&v16, "finishWithError:", v15);

    sub_17654(v18[0]);
  }

  return result;
}

uint64_t sub_304C90(uint64_t a1, uint64_t a2)
{
  v71 = &_swiftEmptySetSingleton;
  v2 = a2 + 56;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v59 = v6;
  for (i = v2; ; v2 = i)
  {
    if (!v5)
    {
      do
      {
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_27;
        }

        if (v8 >= v6)
        {

          v54 = v57;

          v55 = sub_3060A8(a1, v54, _swiftEmptyDictionarySingleton, &v71);

          swift_bridgeObjectRelease_n();

          return v55;
        }

        v5 = *(v2 + 8 * v8);
        ++v7;
      }

      while (!v5);
      v7 = v8;
    }

    v9 = (*(a2 + 48) + ((v7 << 13) | (__clz(__rbit64(v5)) << 7)));
    v11 = v9[4];
    v10 = v9[5];
    v12 = v9[6];
    v70 = v9[7];
    v13 = *v9;
    v14 = v9[1];
    v15 = v9[3];
    v65 = v9[2];
    v66 = v15;
    v68 = v10;
    v69 = v12;
    v67 = v11;
    v63 = v13;
    v64 = v14;
    v16 = *(&v70 + 1);
    v17 = *(*(&v70 + 1) + 16);
    sub_2B7BC(&v63, v62);
    if (v17)
    {
      break;
    }

LABEL_4:
    v5 &= v5 - 1;
    sub_2B818(&v63);
    v6 = v59;
  }

  v18 = v16 + 56;
  while (1)
  {
    v33 = *(v18 - 24);
    v32 = *(v18 - 16);

    sub_2B7BC(&v63, v62);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = sub_2EBF88(v33, v32);
    v37 = _swiftEmptyDictionarySingleton[2];
    v38 = (v36 & 1) == 0;
    v39 = __OFADD__(v37, v38);
    v40 = v37 + v38;
    if (v39)
    {
      break;
    }

    v41 = v36;
    if (_swiftEmptyDictionarySingleton[3] < v40)
    {
      sub_32D0D8(v40, isUniquelyReferenced_nonNull_native);
      v35 = sub_2EBF88(v33, v32);
      if ((v41 & 1) != (v42 & 1))
      {
        goto LABEL_28;
      }

LABEL_19:
      if (v41)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

    v53 = v35;
    sub_333964();
    v35 = v53;
    if (v41)
    {
LABEL_12:
      v19 = (_swiftEmptyDictionarySingleton[7] + (v35 << 7));
      v20 = v19[3];
      v22 = *v19;
      v21 = v19[1];
      v62[2] = v19[2];
      v62[3] = v20;
      v62[0] = v22;
      v62[1] = v21;
      v23 = v19[7];
      v25 = v19[4];
      v24 = v19[5];
      v62[6] = v19[6];
      v62[7] = v23;
      v62[4] = v25;
      v62[5] = v24;
      v26 = v63;
      v27 = v64;
      v28 = v66;
      v19[2] = v65;
      v19[3] = v28;
      *v19 = v26;
      v19[1] = v27;
      v29 = v67;
      v30 = v68;
      v31 = v70;
      v19[6] = v69;
      v19[7] = v31;
      v19[4] = v29;
      v19[5] = v30;
      sub_2B818(v62);

      swift_bridgeObjectRelease_n();
      goto LABEL_13;
    }

LABEL_20:
    _swiftEmptyDictionarySingleton[(v35 >> 6) + 8] |= 1 << v35;
    v43 = (_swiftEmptyDictionarySingleton[6] + 16 * v35);
    *v43 = v33;
    v43[1] = v32;
    v44 = (_swiftEmptyDictionarySingleton[7] + (v35 << 7));
    v46 = v69;
    v45 = v70;
    v47 = v68;
    v44[4] = v67;
    v44[5] = v47;
    v44[6] = v46;
    v44[7] = v45;
    v49 = v65;
    v48 = v66;
    v50 = v64;
    *v44 = v63;
    v44[1] = v50;
    v44[2] = v49;
    v44[3] = v48;
    v51 = _swiftEmptyDictionarySingleton[2];
    v39 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (v39)
    {
      goto LABEL_26;
    }

    _swiftEmptyDictionarySingleton[2] = v52;

LABEL_13:
    v18 += 40;
    if (!--v17)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_ABB4C0();
  __break(1u);
  return result;
}

uint64_t sub_304FE8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;

  *(a1 + OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_matchedContacts) = sub_338630(v7, v6);

  if (!*(a4 + 16))
  {
    goto LABEL_7;
  }

  result = sub_2EBF88(0xD00000000000001ALL, 0x8000000000B5E2C0);
  if ((v9 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_15F84(*(a4 + 56) + 32 * result, &v18, &unk_DE8E40);
  v20 = v18;
  v21 = v19;
  if (!*(&v19 + 1))
  {
    result = sub_12E1C(&v20, &unk_DE8E40);
    goto LABEL_7;
  }

  result = swift_dynamicCast();
  if (!result)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v10 = v17;
LABEL_8:
  v11 = OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_shouldSortOnboardedFriends;
  *(a1 + OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_shouldSortOnboardedFriends) = v10;
  if (*(a4 + 16))
  {
    result = sub_2EBF88(0xD00000000000001DLL, 0x8000000000B5E2E0);
    if (v12)
    {
      sub_15F84(*(a4 + 56) + 32 * result, &v18, &unk_DE8E40);
      v20 = v18;
      v21 = v19;
      if (*(&v19 + 1))
      {
        result = swift_dynamicCast();
        if (result)
        {
          v13 = v17;
          goto LABEL_15;
        }
      }

      else
      {
        result = sub_12E1C(&v20, &unk_DE8E40);
      }
    }
  }

  v13 = 0;
LABEL_15:
  *(a1 + OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_shouldSortNonOnboardedFriends) = v13;
  v14 = *(a1 + OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation__responseHandler);
  if (v14)
  {
    v15 = *(a1 + v11);
    sub_307CC(v14);

    v14(v16, v15, v13, 0);

    return sub_17654(v14);
  }

  return result;
}

double sub_305228@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X3>, _OWORD *a4@<X8>)
{
  v7 = *a1;
  if (*(*a1 + 16) && (v8 = sub_2EBF88(0xD000000000000011, 0x8000000000B54180), (v9 & 1) != 0))
  {
    sub_15F84(*(v7 + 56) + 32 * v8, &v51, &unk_DE8E40);
    v10 = &v51;
  }

  else
  {
    v51 = 0uLL;
    *&v52 = 0;
    *(&v52 + 1) = 1;
    sub_12E1C(&v51, &qword_DF2BD8);
    if (*(v7 + 16))
    {
      v11 = sub_2EBF88(0x72506C6169636F73, 0xEF6449656C69666FLL);
      if (v12)
      {
        sub_15F84(*(v7 + 56) + 32 * v11, &v48, &unk_DE8E40);
        sub_12E1C(&v48, &qword_DF2BD8);
        sub_16CCAC(0, 0, &v51);
        goto LABEL_7;
      }
    }

    v48 = 0uLL;
    v49 = 0;
    v50 = 1;
    v10 = &v48;
  }

  sub_12E1C(v10, &qword_DF2BD8);
  if (!*(v7 + 16))
  {
    goto LABEL_21;
  }

  v13 = sub_2EBF88(0xD000000000000011, 0x8000000000B54180);
  if ((v14 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_15F84(*(v7 + 56) + 32 * v13, &v40, &unk_DE8E40);
  v51 = v40;
  v52 = v41;
  if (!*(&v41 + 1))
  {
    sub_12E1C(&v51, &unk_DE8E40);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    sub_11F44(&v40);
    goto LABEL_22;
  }

  if (!*(a2 + 16) || (v15 = sub_2EBF88(*&v33[0], *(&v33[0] + 1)), (v16 & 1) == 0))
  {

    goto LABEL_21;
  }

  v17 = (*(a2 + 56) + (v15 << 7));
  v18 = v17[3];
  v20 = *v17;
  v19 = v17[1];
  v53 = v17[2];
  v54 = v18;
  v51 = v20;
  v52 = v19;
  v21 = v17[7];
  v23 = v17[4];
  v22 = v17[5];
  v57 = v17[6];
  v58 = v21;
  v55 = v23;
  v56 = v22;
  sub_2B7BC(&v51, &v40);

  v48 = v51;
  v24 = *(&v51 + 1);
  if (!*(&v51 + 1))
  {
LABEL_18:
    sub_2B818(&v51);
    goto LABEL_21;
  }

  v25 = v48;
  v26 = *a3;
  sub_15F84(&v48, &v40, &unk_DEE6F0);

  v27 = sub_472F00(v25, v24, v26);

  if (v27)
  {
    sub_12E1C(&v48, &unk_DEE6F0);
    goto LABEL_18;
  }

  sub_1A9FC(&v40, v25, v24);

LABEL_7:
  sub_3058DC(&v51, v7, v33);
  sub_2B818(&v51);
  v44 = v36;
  v45 = v37;
  v46 = v38;
  v47 = v39;
  v40 = v33[0];
  v41 = v33[1];
  v42 = v34;
  v43 = v35;
  UIScreen.Dimensions.size.getter(*&v34);
LABEL_22:
  v28 = v45;
  a4[4] = v44;
  a4[5] = v28;
  v29 = v47;
  a4[6] = v46;
  a4[7] = v29;
  v30 = v41;
  *a4 = v40;
  a4[1] = v30;
  result = *&v42;
  v32 = v43;
  a4[2] = v42;
  a4[3] = v32;
  return result;
}

uint64_t sub_3055B0(void *a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t *a5)
{
  *a1 = *(a2 + OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_matchedContacts);

  *a3 = *(a2 + OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_shouldSortOnboardedFriends);
  *a4 = *(a2 + OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_shouldSortNonOnboardedFriends);
  v9 = *(a2 + OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation__responseHandler);
  v10 = *(a2 + OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation__responseHandler + 8);
  v11 = *a5;
  *a5 = v9;
  a5[1] = v10;
  sub_307CC(v9);

  return sub_17654(v11);
}

unint64_t sub_305780()
{
  result = qword_DED790;
  if (!qword_DED790)
  {
    sub_ABA100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DED790);
  }

  return result;
}

unint64_t sub_3057D8()
{
  result = qword_DED7A0;
  if (!qword_DED7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E01270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DED7A0);
  }

  return result;
}

uint64_t sub_30583C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_104(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_30589C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

double sub_3058DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v74 = *a1;
  v44 = *(a1 + 16);
  v48 = *(a1 + 17);
  v72 = *(a1 + 18);
  v73 = *(a1 + 22);
  v6 = (a1 + 24);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = (a1 + 40);
  v45 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = (a1 + 72);
  v46 = *(a1 + 72);
  v47 = *(a1 + 40);
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  v15 = *(a1 + 104);
  v71 = *(a1 + 120);
  v69 = v14;
  v70 = v15;
  if (!*(a2 + 16))
  {
    sub_2B7BC(a1, &v57);
    goto LABEL_7;
  }

  sub_2B7BC(a1, &v57);
  v16 = sub_2EBF88(0x72506C6169636F73, 0xEF6449656C69666FLL);
  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_15F84(*(a2 + 56) + 32 * v16, &v49, &unk_DE8E40);
  v51 = v49;
  v52 = v50;
  if (*(&v50 + 1))
  {
    if (swift_dynamicCast())
    {
      v78 = *v12;
      v13 = *(&v57 + 1);
      v46 = v57;
      v18 = &unk_DEE6F0;
      v19 = &v78;
      goto LABEL_13;
    }

LABEL_7:
    if (!*(a2 + 16))
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  v18 = &unk_DE8E40;
  v19 = &v51;
LABEL_13:
  sub_12E1C(v19, v18);
  if (!*(a2 + 16))
  {
    goto LABEL_16;
  }

LABEL_8:
  v20 = sub_2EBF88(0x72616F426E4F7369, 0xEB00000000646564);
  if (v21)
  {
    sub_15F84(*(a2 + 56) + 32 * v20, &v51, &unk_DE8E40);
    v57 = v51;
    v58 = v52;
    if (*(&v52 + 1))
    {
      if (swift_dynamicCast())
      {
        v44 = v49;
      }
    }

    else
    {
      sub_12E1C(&v57, &unk_DE8E40);
    }
  }

LABEL_16:
  if (!*(a2 + 16))
  {
    goto LABEL_21;
  }

  v22 = sub_2EBF88(0x7461766972507369, 0xE900000000000065);
  if ((v23 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_15F84(*(a2 + 56) + 32 * v22, &v51, &unk_DE8E40);
  v57 = v51;
  v58 = v52;
  if (*(&v52 + 1))
  {
    if (swift_dynamicCast())
    {
      v48 = v49;
    }

LABEL_21:
    if (!*(a2 + 16))
    {
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  sub_12E1C(&v57, &unk_DE8E40);
  if (!*(a2 + 16))
  {
    goto LABEL_30;
  }

LABEL_22:
  v24 = sub_2EBF88(1701667182, 0xE400000000000000);
  if (v25)
  {
    sub_15F84(*(a2 + 56) + 32 * v24, &v51, &unk_DE8E40);
    v57 = v51;
    v58 = v52;
    if (!*(&v52 + 1))
    {
      v26 = &unk_DE8E40;
      v27 = &v57;
      goto LABEL_29;
    }

    if (swift_dynamicCast())
    {
      v77 = *v9;
      v45 = *(&v49 + 1);
      v47 = v49;
      v26 = &unk_DEE6F0;
      v27 = &v77;
LABEL_29:
      sub_12E1C(v27, v26);
    }
  }

LABEL_30:
  if (!*(a2 + 16))
  {
    goto LABEL_35;
  }

  v28 = sub_2EBF88(0x746867696577, 0xE600000000000000);
  if ((v29 & 1) == 0)
  {
    goto LABEL_35;
  }

  sub_15F84(*(a2 + 56) + 32 * v28, &v51, &unk_DE8E40);
  v57 = v51;
  v58 = v52;
  if (*(&v52 + 1))
  {
    if (swift_dynamicCast())
    {
      v10 = v49;
    }

LABEL_35:
    if (!*(a2 + 16))
    {
      goto LABEL_43;
    }

    goto LABEL_36;
  }

  sub_12E1C(&v57, &unk_DE8E40);
  if (!*(a2 + 16))
  {
    goto LABEL_43;
  }

LABEL_36:
  v30 = sub_2EBF88(0x49656C69666F7270, 0xEC0000006567616DLL);
  if (v31)
  {
    sub_15F84(*(a2 + 56) + 32 * v30, &v51, &unk_DE8E40);
    v57 = v51;
    v58 = v52;
    if (*(&v52 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
      if (swift_dynamicCast())
      {
        v76 = *(a1 + 64);
        sub_3E8814(v49);
        v32 = objc_allocWithZone(ICStoreArtworkInfo);
        isa = sub_AB8FD0().super.isa;
        v11 = [v32 initWithArtworkResponseDictionary:isa];

        sub_12E1C(&v76, &qword_DFE460);
      }
    }

    else
    {
      sub_12E1C(&v57, &unk_DE8E40);
    }
  }

LABEL_43:
  if (*(a2 + 16))
  {
    v34 = sub_2EBF88(0x6E6F73616572, 0xE600000000000000);
    if (v35)
    {
      sub_15F84(*(a2 + 56) + 32 * v34, &v51, &unk_DE8E40);
      v57 = v51;
      v58 = v52;
      if (*(&v52 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
        if (swift_dynamicCast())
        {
          v75 = *v6;
          v36 = v49;
          if (*(v49 + 16) && (v37 = sub_2EBF88(0xD000000000000010, 0x8000000000B50AF0), (v38 & 1) != 0) && (sub_808B0(*(v36 + 56) + 32 * v37, &v57), (swift_dynamicCast() & 1) != 0))
          {
            v8 = *(&v51 + 1);
            v7 = v51;
            sub_12E1C(&v75, &unk_DEE6F0);
          }

          else
          {
            sub_12E1C(&v75, &unk_DEE6F0);

            v7 = 0;
            v8 = 0;
          }
        }
      }

      else
      {
        sub_12E1C(&v57, &unk_DE8E40);
      }
    }
  }

  v51 = v74;
  *&v56[24] = v70;
  *&v56[8] = v69;
  v57 = v74;
  *(&v52 + 2) = v72;
  WORD3(v52) = v73;
  *&v56[40] = v71;
  LOBYTE(v52) = v44;
  LOBYTE(v58) = v44;
  BYTE1(v52) = v48;
  *(&v52 + 1) = v7;
  *&v53 = v8;
  *(&v53 + 1) = v47;
  *&v54 = v45;
  *(&v54 + 1) = v10;
  *&v55 = v11;
  *(&v55 + 1) = v46;
  *v56 = v13;
  BYTE1(v58) = v48;
  WORD3(v58) = v73;
  *(&v58 + 2) = v72;
  *(&v58 + 1) = v7;
  v59 = v8;
  v60 = v47;
  v61 = v45;
  v62 = v10;
  v63 = v11;
  v64 = v46;
  v65 = v13;
  v68 = v71;
  v67 = v70;
  v66 = v69;
  sub_2B7BC(&v51, &v49);
  sub_2B818(&v57);
  v39 = *v56;
  a3[4] = v55;
  a3[5] = v39;
  v40 = *&v56[32];
  a3[6] = *&v56[16];
  a3[7] = v40;
  v41 = v52;
  *a3 = v51;
  a3[1] = v41;
  result = *&v53;
  v43 = v54;
  a3[2] = v53;
  a3[3] = v43;
  return result;
}

char *sub_3060A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = a4;
  v8 = (a1 + 32);
  v9 = _swiftEmptyArrayStorage;
  v40 = a4;
  while (1)
  {
    v39[0] = *v8;

    sub_305228(v39, a3, v6, &v31);
    if (v4)
    {
      break;
    }

    v30[4] = v35;
    v30[5] = v36;
    v30[6] = v37;
    v30[7] = v38;
    v30[0] = v31;
    v30[1] = v32;
    v30[2] = v33;
    v30[3] = v34;
    if (sub_306BA8(v30) == 1)
    {
      v26 = v35;
      v27 = v36;
      v28 = v37;
      v29 = v38;
      v22 = v31;
      v23 = v32;
      v24 = v33;
      v25 = v34;
      sub_12E1C(&v22, &qword_DFE468);
    }

    else
    {
      v26 = v35;
      v27 = v36;
      v28 = v37;
      v29 = v38;
      v22 = v31;
      v23 = v32;
      v24 = v33;
      v25 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_6BF7C(0, *(v9 + 2) + 1, 1, v9);
      }

      v11 = *(v9 + 2);
      v10 = *(v9 + 3);
      if (v11 >= v10 >> 1)
      {
        v9 = sub_6BF7C((v10 > 1), v11 + 1, 1, v9);
      }

      v18 = v26;
      v19 = v27;
      v20 = v28;
      v21 = v29;
      v16 = v24;
      v17 = v25;
      v12 = v22;
      v15 = v23;
      *(v9 + 2) = v11 + 1;
      v13 = &v9[128 * v11];
      *(v13 + 4) = v16;
      *(v13 + 5) = v17;
      *(v13 + 3) = v15;
      *(v13 + 8) = v20;
      *(v13 + 9) = v21;
      *(v13 + 6) = v18;
      *(v13 + 7) = v19;
      *(v13 + 2) = v12;
      v6 = v40;
    }

    ++v8;
    if (!--v5)
    {
      return v9;
    }
  }

  return v9;
}

uint64_t sub_3062C0(uint64_t result, uint64_t *a2)
{
  v38 = a2;
  v2 = *(result + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  v5 = result + 32;
  v28 = *(result + 16);
  v29 = result + 32;
  do
  {
    v30 = v4;
    while (1)
    {
      if (v3 >= v2)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_34;
      }

      v7 = *(v5 + 8 * v3++);
      if (*(v7 + 16))
      {
        break;
      }

LABEL_6:
      if (v6 == v2)
      {
        return v4;
      }
    }

    v8 = sub_2EBF88(0x72506C6169636F73, 0xEF6449656C69666FLL);
    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }

    sub_15F84(*(v7 + 56) + 32 * v8, &v34, &unk_DE8E40);
    v31[0] = v34;
    v31[1] = v35;
    if (!*(&v35 + 1))
    {
      sub_12E1C(v31, &unk_DE8E40);
LABEL_5:

      goto LABEL_6;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_5;
    }

    v10 = v32;
    v11 = v33;
    v12 = *v38;
    if (!*(*v38 + 16))
    {
      goto LABEL_25;
    }

    sub_ABB5C0();

    sub_AB93F0();
    v13 = sub_ABB610();
    v14 = -1 << *(v12 + 32);
    v15 = v13 & ~v14;
    if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
    {
      v16 = ~v14;
      while (1)
      {
        v17 = (*(v12 + 48) + 16 * v15);
        v18 = *v17 == v10 && v17[1] == v11;
        if (v18 || (sub_ABB3C0() & 1) != 0)
        {
          break;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v2 = v28;
      v5 = v29;
      v4 = v30;
      goto LABEL_6;
    }

LABEL_24:

    v2 = v28;
    v4 = v30;
LABEL_25:
    sub_1A9FC(v31, v10, v11);

    sub_16CCAC(0, 0, v36);
    sub_3058DC(v36, v7, v37);
    sub_2B818(v36);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_6BF7C(0, *(v4 + 2) + 1, 1, v4);
      v4 = result;
    }

    v5 = v29;
    v20 = *(v4 + 2);
    v19 = *(v4 + 3);
    if (v20 >= v19 >> 1)
    {
      result = sub_6BF7C((v19 > 1), v20 + 1, 1, v4);
      v4 = result;
    }

    *(v4 + 2) = v20 + 1;
    v21 = &v4[128 * v20];
    v22 = v37[0];
    v23 = v37[1];
    v24 = v37[3];
    *(v21 + 4) = v37[2];
    *(v21 + 5) = v24;
    *(v21 + 2) = v22;
    *(v21 + 3) = v23;
    v25 = v37[4];
    v26 = v37[5];
    v27 = v37[7];
    *(v21 + 8) = v37[6];
    *(v21 + 9) = v27;
    *(v21 + 6) = v25;
    *(v21 + 7) = v26;
  }

  while (v6 != v2);
  return v4;
}

unint64_t sub_306630(unint64_t a1, uint64_t a2)
{
  if (a1 < 2 || !a2)
  {
    return 0;
  }

  v38 = v2;
  v39 = v3;
  v6 = sub_980A0(_swiftEmptyArrayStorage);
  v37 = v6;
  if (*(a1 + 16))
  {
    v7 = v6;
    v8 = sub_2EBF88(0x5473646E65697266, 0xEF776F6C6C6F466FLL);
    if (v9)
    {
      sub_808B0(*(a1 + 56) + 32 * v8, &v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BE0);
      if (swift_dynamicCast())
      {
        v10 = v33;
        if (*(v33 + 16) && (v11 = sub_2EBF88(0x74726F537965626FLL, 0xED0000726564724FLL), (v12 & 1) != 0))
        {
          sub_15F84(*(v33 + 56) + 32 * v11, &v35, &unk_DE8E40);
          v33 = v35;
          v34 = v36;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v32 = v7;
          sub_936D8(&v33, 0xD00000000000001ALL, 0x8000000000B5E2C0, isUniquelyReferenced_nonNull_native);
          v37 = v7;
        }

        else
        {
          sub_27B97C(0xD00000000000001ALL, 0x8000000000B5E2C0, &v35);
          sub_12E1C(&v35, &qword_DF2BD8);
        }

        if (*(v10 + 16))
        {
          v15 = sub_2EBF88(0x73646E65697266, 0xE700000000000000);
          if (v16)
          {
            sub_15F84(*(v10 + 56) + 32 * v15, &v33, &unk_DE8E40);
            v35 = v33;
            v36 = v34;
            if (*(&v34 + 1))
            {
              v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE458);
              if (swift_dynamicCast())
              {
                *&v35 = sub_16E7B8(v32, a2);
                *(&v36 + 1) = v17;
                v18 = v37;
                v19 = swift_isUniquelyReferenced_nonNull_native();
                *&v33 = v18;
                sub_936D8(&v35, 0x73646E65697266, 0xE700000000000000, v19);

                v37 = v33;
                goto LABEL_18;
              }
            }

            else
            {
              sub_12E1C(&v35, &unk_DE8E40);
            }
          }
        }
      }
    }
  }

LABEL_18:
  if (!*(a1 + 16))
  {
    return v37;
  }

  v20 = sub_2EBF88(0xD000000000000010, 0x8000000000B5E3C0);
  if ((v21 & 1) == 0)
  {
    return v37;
  }

  sub_808B0(*(a1 + 56) + 32 * v20, &v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return v37;
  }

  v22 = v33;
  if (*(v33 + 16) && (v23 = sub_2EBF88(0x74726F537965626FLL, 0xED0000726564724FLL), (v24 & 1) != 0))
  {
    sub_15F84(*(v22 + 56) + 32 * v23, &v35, &unk_DE8E40);
    v33 = v35;
    v34 = v36;
    v25 = v37;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v32 = v25;
    sub_936D8(&v33, 0xD00000000000001DLL, 0x8000000000B5E2E0, v26);
    v37 = v25;
  }

  else
  {
    sub_27B97C(0xD00000000000001DLL, 0x8000000000B5E2E0, &v35);
    sub_12E1C(&v35, &qword_DF2BD8);
  }

  if (!*(v22 + 16))
  {
    goto LABEL_31;
  }

  v27 = sub_2EBF88(0x73746361746E6F63, 0xE800000000000000);
  if ((v28 & 1) == 0)
  {
    goto LABEL_31;
  }

  sub_15F84(*(v22 + 56) + 32 * v27, &v33, &unk_DE8E40);
  v35 = v33;
  v36 = v34;
  if (!*(&v34 + 1))
  {
    sub_12E1C(&v35, &unk_DE8E40);
    goto LABEL_31;
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE458);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:

    return v37;
  }

  *&v35 = sub_16E7B8(v32, a2);
  *(&v36 + 1) = v29;
  v30 = v37;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  *&v33 = v30;
  sub_936D8(&v35, 0x73746361746E6F63, 0xE800000000000000, v31);

  return v33;
}

uint64_t sub_306B4C()
{

  return swift_deallocObject();
}

uint64_t sub_306BA8(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

NSString sub_306BCC()
{
  result = sub_AB9260();
  qword_E71470 = result;
  return result;
}

id Window.__allocating_init(windowScene:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithWindowScene:a1];

  return v3;
}

id Window.init(windowScene:)(void *a1)
{
  v2 = sub_307920(a1);

  return v2;
}

char *Window.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication6Window_screenDimensionsDidChangeHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication6Window_boundsSizeDidChangeHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication6Window_overrideTraitCollection] = 0;
  v12 = [objc_opt_self() mainScreen];
  v13 = UIScreen.dimensions.getter();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = &v5[OBJC_IVAR____TtC16MusicApplication6Window_lastSeenDimensions];
  *v20 = a3;
  v20[1] = a4;
  v20[2] = v13;
  *(v20 + 3) = v15;
  *(v20 + 4) = v17;
  *(v20 + 5) = v19;
  v32.receiver = v5;
  v32.super_class = type metadata accessor for Window();
  v21 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  v22 = [v21 screen];
  v23 = UIScreen.dimensions.getter();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = &v21[OBJC_IVAR____TtC16MusicApplication6Window_lastSeenDimensions];
  v30[2] = v23;
  *(v30 + 3) = v25;
  *(v30 + 4) = v27;
  *(v30 + 5) = v29;

  return v21;
}

void Window.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication6Window_screenDimensionsDidChangeHandler);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication6Window_boundsSizeDidChangeHandler);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication6Window_overrideTraitCollection) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_307000(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_307088(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id Window.rootElementScreen.getter()
{
  v1 = [v0 screen];

  return v1;
}

Swift::Void __swiftcall Window.sendEvent(_:)(UIEvent a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for Window();
  objc_msgSendSuper2(&v4, "sendEvent:", a1.super.isa);
  v3 = [objc_opt_self() defaultCenter];
  if (qword_DE6A88 != -1)
  {
    swift_once();
  }

  [v3 postNotificationName:qword_E71470 object:v1];
}

Swift::Void __swiftcall Window.layoutSubviews()()
{
  v1 = v0;
  v21.receiver = v0;
  v21.super_class = type metadata accessor for Window();
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v2 = [v0 screen];
  v3 = UIScreen.dimensions.getter();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = &v1[OBJC_IVAR____TtC16MusicApplication6Window_lastSeenDimensions];
  if ((static UIScreen.Dimensions.== infix(_:_:)() & 1) == 0)
  {
    v10[2] = v3;
    v10[3] = v5;
    v10[4] = v7;
    v10[5] = v9;
    v11 = &v1[OBJC_IVAR____TtC16MusicApplication6Window_screenDimensionsDidChangeHandler];
    swift_beginAccess();
    v12 = *v11;
    if (*v11)
    {

      v12(v13, v3, v5, v7, v9);
      sub_17654(v12);
    }
  }

  [v1 bounds];
  v15 = v14;
  v17 = v16;
  type metadata accessor for CGSize(0);
  if (sub_AB38D0())
  {
    *v10 = v15;
    v10[1] = v17;
    v18 = &v1[OBJC_IVAR____TtC16MusicApplication6Window_boundsSizeDidChangeHandler];
    swift_beginAccess();
    v19 = *v18;
    if (*v18)
    {

      v19(v20, v15, v17);
      sub_17654(v19);
    }
  }
}

Swift::Void __swiftcall Window._updateTraitsAndNotify(_:)(Swift::Bool a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication6Window_overrideTraitCollection];
  *&v1[OBJC_IVAR____TtC16MusicApplication6Window_overrideTraitCollection] = 0;

  v4.receiver = v1;
  v4.super_class = type metadata accessor for Window();
  objc_msgSendSuper2(&v4, "_updateWindowTraitsAndNotify:", a1);
}

Swift::Void __swiftcall Window.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication6Window_overrideTraitCollection];
  *&v1[OBJC_IVAR____TtC16MusicApplication6Window_overrideTraitCollection] = 0;

  v4.receiver = v1;
  v4.super_class = type metadata accessor for Window();
  objc_msgSendSuper2(&v4, "traitCollectionDidChange:", isa);
}

id Window.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Window();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_3077D4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void))
{
  v6 = (v4 + *a3);
  swift_beginAccess();
  v7 = *v6;
  a4(*v6, v6[1]);
  return v7;
}

uint64_t sub_30785C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v10 = (v6 + *a5);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = a1;
  v10[1] = a2;
  return a6(v11, v12);
}

id sub_307920(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC16MusicApplication6Window_screenDimensionsDidChangeHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC16MusicApplication6Window_boundsSizeDidChangeHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication6Window_overrideTraitCollection] = 0;
  v6 = [a1 effectiveGeometry];
  v7 = [v6 coordinateSpace];

  [v7 bounds];
  v9 = v8;
  v11 = v10;
  swift_unknownObjectRelease();
  v12 = [a1 screen];
  v13 = UIScreen.dimensions.getter();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = &v2[OBJC_IVAR____TtC16MusicApplication6Window_lastSeenDimensions];
  *v20 = v9;
  *(v20 + 1) = v11;
  v20[2] = v13;
  *(v20 + 3) = v15;
  *(v20 + 4) = v17;
  *(v20 + 5) = v19;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for Window();
  return objc_msgSendSuper2(&v22, "initWithWindowScene:", a1);
}

uint64_t sub_307A78(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_307A98(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

void sub_307AE0(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28F80C(v4);
  v5 = sub_307C20();
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() radioPlaybackIntentWithStation:v5];
    v8 = PlaybackIntentDescriptor.intent.getter(v7);
    [v8 setTracklistToken:{objc_msgSend(v7, "tracklistToken")}];
    swift_unknownObjectRelease();

    v10 = PlaybackIntentDescriptor.intent.getter(v9);
    [v10 setTracklistSource:1];

    sub_140E58(v4, a1);
  }

  else
  {
    sub_140E58(v4, a1);
  }
}

id sub_307C20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_AF85F0;
  *(v1 + 32) = sub_AB92A0();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_AB92A0();
  *(v1 + 56) = v3;
  sub_96EA4(_swiftEmptyArrayStorage);
  v4 = objc_allocWithZone(MPPropertySet);
  isa = sub_AB9740().super.isa;

  sub_119B5C();
  v6 = sub_AB8FD0().super.isa;

  v7 = [v4 initWithProperties:isa relationships:v6];

  v8 = OBJC_IVAR____TtC11MusicJSCore21JSRadioPlaybackIntent_radioStationStoreItemMetadata;
  swift_beginAccess();
  v9 = *(v0 + v8);
  if (!v9)
  {
    v18 = OBJC_IVAR____TtC11MusicJSCore21JSRadioPlaybackIntent_radioStationIdentifierSet;
    swift_beginAccess();
    v19 = *(v0 + v18);
    if (v19)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_AF4EC0;
      *(inited + 32) = sub_AB92A0();
      *(inited + 40) = v21;
      *(inited + 48) = v7;
      v22 = v7;
      v23 = v19;
      sub_96EA4(inited);
      swift_setDeallocating();
      sub_CB490(inited + 32);
      v24 = objc_allocWithZone(MPPropertySet);
      v25 = sub_AB9740().super.isa;
      v26 = sub_AB8FD0().super.isa;

      v27 = [v24 initWithProperties:v25 relationships:v26];

      v28 = (*&stru_158.sectname[swift_isaMask & *v23])(v27);
      if (v28)
      {
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();

        if (!v17)
        {
        }

        return v17;
      }
    }

    else
    {
    }

    return 0;
  }

  v10 = objc_allocWithZone(MPStoreModelRadioStationBuilder);
  v11 = v9;
  result = [v10 initWithRequestedPropertySet:v7];
  if (result)
  {
    v13 = result;
    v14 = objc_opt_self();
    v15 = v11;
    v16 = [v14 activeAccount];
    v17 = [v13 modelObjectWithStoreItemMetadata:v15 userIdentity:v16];

    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_307FCC()
{
  v1 = v0;
  v2 = sub_AB2A90();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v81 = v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB31C0();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v73 - v10;
  sub_AB3110();
  v84 = v11;
  sub_AB3110();
  v12 = *(v6 + 8);
  v77 = v9;
  v78 = v12;
  v79 = v6 + 8;
  v80 = v5;
  v12(v9, v5);
  v13 = sub_97E70(_swiftEmptyArrayStorage);
  *&v97 = 0x64496C61626F6C67;
  *(&v97 + 1) = 0xE800000000000000;
  sub_ABAD10();
  v14 = *&v1[OBJC_IVAR____TtC16MusicApplication39PersonalMixSendFeedbackRequestOperation_playlistGlobalID];
  v15 = *&v1[OBJC_IVAR____TtC16MusicApplication39PersonalMixSendFeedbackRequestOperation_playlistGlobalID + 8];
  v98 = &type metadata for String;
  *&v97 = v14;
  *(&v97 + 1) = v15;
  sub_9ACFC(&v97, v99);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v90 = v13;
  sub_913C0(v99, &v91, isUniquelyReferenced_nonNull_native);
  sub_8085C(&v91);
  v17 = v90;
  *&v97 = 0x6D616441676E6F73;
  *(&v97 + 1) = 0xEA00000000006449;
  sub_ABAD10();
  v18 = *&v1[OBJC_IVAR____TtC16MusicApplication39PersonalMixSendFeedbackRequestOperation_songStoreID];
  v19 = *&v1[OBJC_IVAR____TtC16MusicApplication39PersonalMixSendFeedbackRequestOperation_songStoreID + 8];
  v98 = &type metadata for String;
  *&v97 = v18;
  *(&v97 + 1) = v19;
  sub_9ACFC(&v97, v99);

  v20 = swift_isUniquelyReferenced_nonNull_native();
  v90 = v17;
  sub_913C0(v99, &v91, v20);
  sub_8085C(&v91);
  v21 = v90;
  *&v91 = 0x65736E6F70736572;
  *(&v91 + 1) = 0xE900000000000073;
  sub_ABAD10();
  v22 = *&v1[OBJC_IVAR____TtC16MusicApplication39PersonalMixSendFeedbackRequestOperation_choices];
  v23 = *(v22 + 16);
  v82 = v3;
  v83 = v2;
  if (v23)
  {
    v74 = v21;
    v75 = v6;
    v76 = v1;
    *&v99[0] = _swiftEmptyArrayStorage;

    sub_6D410(0, v23, 0);
    v24 = *&v99[0];
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEE90);
    v73[1] = v22;
    v25 = (v22 + 56);
    do
    {
      v88 = v23;
      v89 = v24;
      v26 = *v25;
      v27 = v25[1];

      v87 = v26;

      v86 = v27;

      *&v91 = sub_AB9260();
      sub_13C80(0, &qword_DFA720);
      sub_308C94();
      sub_ABAD10();
      v28 = sub_AB9260();
      v95[8] = swift_getObjectType();
      v95[5] = v28;
      *&v91 = sub_AB9260();
      sub_ABAD10();
      v29 = sub_AB9260();
      v96[8] = swift_getObjectType();
      v96[5] = v29;
      v30 = sub_ABB0C0();

      sub_308CFC(v95, &v91);
      v31 = sub_2EC004(&v91);
      if (v32)
      {
        goto LABEL_16;
      }

      *(v30 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v31;
      v33 = v30[6] + 40 * v31;
      v34 = v91;
      v35 = v92;
      *(v33 + 32) = v93;
      *v33 = v34;
      *(v33 + 16) = v35;
      sub_9ACFC(v94, (v30[7] + 32 * v31));
      v36 = v30[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_17;
      }

      v30[2] = v38;
      sub_308CFC(v96, &v91);
      v39 = sub_2EC004(&v91);
      if (v40)
      {
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
      }

      *(v30 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v39;
      v41 = v30[6] + 40 * v39;
      v42 = v91;
      v43 = v92;
      *(v41 + 32) = v93;
      *v41 = v42;
      *(v41 + 16) = v43;
      sub_9ACFC(v94, (v30[7] + 32 * v39));
      v44 = v30[2];
      v37 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v37)
      {
        goto LABEL_17;
      }

      v30[2] = v45;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBB90);
      swift_arrayDestroy();

      v24 = v89;
      *&v99[0] = v89;
      v47 = v89[2];
      v46 = v89[3];
      if (v47 >= v46 >> 1)
      {
        sub_6D410((v46 > 1), v47 + 1, 1);
        v24 = *&v99[0];
      }

      v25 += 9;
      v24[2] = v47 + 1;
      v24[v47 + 4] = v30;
      v23 = v88 - 1;
    }

    while (v88 != 1);

    v6 = v75;
    v1 = v76;
    v21 = v74;
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
  }

  *(&v92 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E27CA0);
  *&v91 = v24;
  sub_9ACFC(&v91, v99);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v90 = v21;
  sub_913C0(v99, &v97, v48);
  sub_8085C(&v97);
  v49 = objc_opt_self();
  isa = sub_AB8FD0().super.isa;

  *&v91 = 0;
  v51 = [v49 dataWithJSONObject:isa options:0 error:&v91];
  v52 = v91;

  if (v51)
  {
    v53 = sub_AB3260();
    v55 = v54;
  }

  else
  {
    sub_AB3050();

    swift_willThrow();

    v53 = 0;
    v55 = 0xF000000000000000;
  }

  v56 = v80;
  (*(v6 + 16))(v77, v84, v80);
  v57 = v81;
  sub_AB2A50();
  sub_AB2A20();
  v58 = sub_AB92A0();
  v60 = v59;
  v101._countAndFlagsBits = sub_AB92A0();
  v62 = v61;
  v100.value._countAndFlagsBits = v58;
  v100.value._object = v60;
  v101._object = v62;
  sub_AB2A80(v100, v101);

  sub_9007C(v53, v55);
  sub_AB2A70();
  sub_13C80(0, &unk_DF2B00);
  v63 = static ICUserIdentity.active.getter();
  v64 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v63];

  v65 = objc_allocWithZone(ICStoreURLRequest);
  v66 = v64;
  v67 = sub_AB2A30();
  v68 = [v65 initWithURLRequest:v67 requestContext:v66];

  sub_13C80(0, &qword_E07CC0);
  v69 = static ICURLSessionManager.musicSession.getter();
  v70 = swift_allocObject();
  *(v70 + 16) = v1;
  v71 = v1;
  ICURLSession.enqueueDataRequestRecordingPerformanceMetrics(_:_:)(v68, sub_308DA4, v70);

  sub_466A4(v53, v55);
  (*(v82 + 8))(v57, v83);
  v78(v84, v56);
}

void sub_308980(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *&a3[OBJC_IVAR____TtC16MusicApplication39PersonalMixSendFeedbackRequestOperation_responseHandler];

  v5(a2);

  if (a2)
  {
    v6 = sub_AB3040();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [a3 finishWithError:?];
}

id sub_308A98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersonalMixSendFeedbackRequestOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PersonalMixSendFeedbackRequestOperation()
{
  result = qword_DFE4E0;
  if (!qword_DFE4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_308BDC()
{
  result = sub_AB31C0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_308C94()
{
  result = qword_E24B10;
  if (!qword_E24B10)
  {
    sub_13C80(255, &qword_DFA720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E24B10);
  }

  return result;
}

uint64_t sub_308CFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBB90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_308D6C()
{

  return swift_deallocObject();
}

uint64_t sub_308E24(void **a1, void *a2)
{
  v3 = *a1;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  v6 = v3;
  JSApplication.performModalMessagePresentation(message:completionHandler:)(a2, sub_309498, v5);
}

void sub_308EE4(void *a1, uint64_t a2, void *a3)
{
  v5 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  if (a1)
  {
    memset(v28, 0, sizeof(v28));
    v29 = 1;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v21 = a3;
    if (Strong)
    {
      v12 = Strong;
      memset(v33, 0, sizeof(v33));
      v34 = 0;
      v35 = xmmword_AF7710;
      v13 = a1;
      PresentationSource.init(viewController:position:)(v12, v33, v27);
      sub_12E1C(v28, &unk_DEA520);
      sub_111814(v27, v28);
    }

    else
    {
      v14 = a1;
    }

    sub_15F84(v28, v27, &unk_DEA520);
    v15 = type metadata accessor for PlaybackIntentDescriptor(0);
    memset(v25, 0, sizeof(v25));
    v26 = 0;
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    sub_15F84(v27, v23, &unk_DEA520);
    sub_15F84(v25, (v7 + 104), &unk_DE8E30);
    sub_15F84(v10, &v7[*(v5 + 28)], &unk_DEA510);
    *v7 = 0u;
    *(v7 + 1) = 0u;
    *(v7 + 2) = 0u;
    *(v7 + 3) = 0u;
    *(v7 + 8) = 1;
    *(v7 + 9) = 0;
    *(v7 + 10) = 0;
    *(v7 + 11) = 0;
    v16 = v21;
    v17 = v21;
    sub_160B4(v23, v7, &unk_DEA520);
    *(v7 + 12) = 0;
    v22[3] = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
    sub_16050(v7, boxed_opaque_existential_0);
    sub_12E1C(v10, &unk_DEA510);
    sub_12E1C(v25, &unk_DE8E30);
    sub_12E1C(v27, &unk_DEA520);
    memset(v24, 0, 32);
    v23[1] = 0;
    v23[2] = 0;
    v23[0] = v16;
    sub_160B4(v22, v24, &unk_DE8E40);
    v19 = *JSSegueCoordinator.shared.unsafeMutableAddressor();
    JSSegueCoordinator.perform(segue:with:)(a1, v23);
    sub_12E1C(v28, &unk_DEA520);
    sub_16170(v23);
  }
}

id sub_309380()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSApplicationMessageGroup();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_3093D8()
{

  return swift_deallocObject();
}

uint64_t sub_309420()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_309458()
{

  return swift_deallocObject();
}

uint64_t sub_309500(uint64_t result, uint64_t a2, void *a3)
{
  if ((*(a3 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isLoading) & 1) == 0)
  {
    v5 = result;
    sub_13C80(0, &qword_DE8ED0);
    v6 = sub_ABA150();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = a3;

    v8 = a3;
    OS_dispatch_queue.asyncAfter(_:block:)(sub_30E3F4, v7);
  }

  return result;
}

id sub_3095CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_30E3FC(a1 + 16, v8);
  v4 = RequestResponse.Controller.revision.getter();
  sub_30E3FC(v4 + 16, v7);

  LOBYTE(a1) = _s16MusicApplication6SearchC21ResultSnapshotRequestV2eeoiySbAE_AEtFZ_0(v8, v7);
  sub_30E458(v7);
  result = sub_30E458(v8);
  if ((a1 & 1) == 0)
  {
    v6 = *(a2 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isLoading);
    *(a2 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isLoading) = 1;
    return sub_34DA84(v6);
  }

  return result;
}

uint64_t sub_309680(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = sub_AB3430();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050);
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - v6;
  v8 = type metadata accessor for MetricsPageProperties();
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Search.Event(0);
  v12 = __chkstk_darwin(v11);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v16 = &v37 - v15;
  sub_30CEC8(&v50);
  v41 = v52;
  v43 = v53;

  sub_30E458(&v50);
  v44 = a1;
  sub_30EEC4(a1, v16, type metadata accessor for Search.Event);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v17 = sub_208918();
    v18 = &off_D07940;
  }

  else
  {
    v17 = sub_208934();
    v18 = &off_D0C3F8;
  }

  v17;
  sub_30EFDC(v16, type metadata accessor for Search.Event);
  Search.resultSnapshotController.getter();
  RequestResponse.Controller.revision.getter();

  sub_30EEC4(v44, v14, type metadata accessor for Search.Event);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *(v46 + 9) = *(v14 + 25);
    v19 = v14[1];
    v45 = *v14;
    v46[0] = v19;
    if (BYTE8(v46[1]) != 255)
    {
      v20 = v14[1];
      v50 = *v14;
      v51[0] = v20;
      *(v51 + 9) = *(v14 + 25);
      goto LABEL_10;
    }

    sub_12E1C(&v45, &qword_DFE5D0);
  }

  else
  {
    sub_30EFDC(v14, type metadata accessor for Search.Event);
  }

  sub_30CB98(&v50);
LABEL_10:
  RequestResponse.Revision.content.getter(v7);
  v21 = sub_30C4B8();
  sub_475B48(v7, v21, v10);
  sub_12E1C(v7, &unk_E00050);
  v22 = v42;
  sub_15F84(v42, &v47, &qword_DF2BD0);
  if (*(&v48 + 1))
  {
    v45 = v47;
    v46[0] = v48;
    *&v46[1] = v49;
    ObjectType = swift_getObjectType();
    (v18[1])(ObjectType);
    v25 = v24;
    v26 = swift_getObjectType();
    v27 = (*(v25 + 128))(&v45, v26, v25);
    v29 = v28;
    swift_unknownObjectRelease();
    sub_486D08(v44, v10, v41, v43, v27, v29, 0);
    sub_8085C(&v45);
    sub_30EFDC(v10, type metadata accessor for MetricsPageProperties);
    sub_30E4AC(&v50);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(&v47, &qword_DF2BD0);
    v30 = swift_getObjectType();
    (v18[1])(v30);
    v32 = v31;
    v33 = swift_getObjectType();
    v34 = v38;
    sub_3B8F68();
    v35 = sub_21CCAC(1, v34, v22, v33, v32);
    (*(v39 + 8))(v34, v40);
    swift_unknownObjectRelease();
    sub_486D08(v44, v10, v41, v43, 1, 0, v35);
    sub_30EFDC(v10, type metadata accessor for MetricsPageProperties);
    sub_30E4AC(&v50);

    swift_unknownObjectRelease();
  }
}

id sub_309C24()
{
  v1 = *&stru_158.sectname[swift_isaMask & *v0];
  v36.receiver = v0;
  v36.super_class = type metadata accessor for SearchViewController();
  objc_msgSendSuper2(&v36, "viewDidLoad");
  result = [v0 view];
  if (result)
  {
    v3 = result;
    v4 = AccessibilityIdentifier.searchContentView.unsafeMutableAddressor();
    v5 = *v4;
    v6 = v4[1];
    sub_13C80(0, &qword_DF12A0);

    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v5, v6);

    v7 = [sub_208918() searchTextField];
    [v7 setAutocapitalizationType:0];

    sub_30D850();
    v8 = *(*(sub_208918() + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView) + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_sourceScopeBar);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    *(v10 + 24) = v9;
    v11 = &v8[OBJC_IVAR____TtCCC16MusicApplication6Search3Bar14SourceScopeBar_selectionHandler];
    v12 = *&v8[OBJC_IVAR____TtCCC16MusicApplication6Search3Bar14SourceScopeBar_selectionHandler];
    *v11 = sub_30EE80;
    v11[1] = v10;
    v13 = v8;

    sub_17654(v12);

    v14 = *(*(sub_208918() + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView) + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBar);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    *(v16 + 24) = v15;
    v17 = v14;
    sub_AB3950();

    v18 = sub_208934();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    *(v20 + 24) = v19;
    v21 = &v18[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onDidSelectItem];
    v22 = *&v18[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onDidSelectItem];
    *v21 = sub_30EE94;
    v21[1] = v20;
    v23 = v18;

    sub_17654(v22);

    v24 = sub_208934();
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v1;
    *(v26 + 24) = v25;
    v27 = &v24[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onAddKeepLocalControl];
    v28 = *&v24[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onAddKeepLocalControl];
    *v27 = sub_30EE9C;
    v27[1] = v26;
    v29 = v24;

    sub_17654(v28);

    v30 = sub_208934();
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_allocObject();
    *(v32 + 16) = v1;
    *(v32 + 24) = v31;
    v33 = &v30[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_contextActionsModelLoadingHandler];
    v34 = *&v30[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_contextActionsModelLoadingHandler];
    *v33 = sub_30EEA4;
    v33[1] = v32;
    v35 = v30;

    sub_17654(v34);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_30A044(char a1)
{
  v2 = type metadata accessor for Search.Event(0);
  __chkstk_darwin(v2);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    *v4 = a1 & 1;
    swift_storeEnumTagMultiPayload();
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_309680(v4, v15);
    sub_12E1C(v15, &qword_DF2BD0);
    sub_30EFDC(v4, type metadata accessor for Search.Event);
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = sub_208934();

    sub_3512A4();
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    sub_30C53C(a1 & 1);
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    sub_30CEC8(v15);
    v17 = 0;
    sub_30CF2C(v15);
  }

  v14 = [objc_opt_self() standardUserDefaults];
  NSUserDefaults.lastSelectedSearchSource.setter(a1 & 1);
}

void sub_30A244(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Search.Event(0);
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Search.ResultContext(0);
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_208934();
    v13 = v11;
    if (![v12 isViewLoaded])
    {
      goto LABEL_21;
    }

    v30 = a1;
    sub_30F0C8(a2, v46);
    v14 = sub_208934();
    v15 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
    swift_beginAccess();
    sub_30EEC4(v14 + v15, v9, type metadata accessor for Search.ResultContext);
    v16 = &v9[*(v7 + 28)];
    if (*v16)
    {
      sub_E8BA0((v16 + 8), &v39);
      sub_30EFDC(v9, type metadata accessor for Search.ResultContext);
      if (*(&v40 + 1))
      {
        sub_70DF8(&v39, v37);
LABEL_8:
        sub_15F84(v46, &v39, &unk_DFC5A0);
        sub_15F84(v37, &v42, &unk_DFC5A0);
        if (*(&v40 + 1))
        {
          sub_15F84(&v39, v34, &unk_DFC5A0);
          if (*(&v43 + 1))
          {
            v31 = v42;
            v32 = v43;
            v33 = v44;
            v17 = v35;
            v18 = v36;
            __swift_project_boxed_opaque_existential_1(v34, v35);
            v19 = (*(v18 + 8))(v17, v18);
            v21 = v20;
            v23 = *(&v32 + 1);
            v22 = v33;
            __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
            if (v19 == (*(v22 + 8))(v23, v22) && v21 == v24)
            {
              v25 = 1;
            }

            else
            {
              v25 = sub_ABB3C0();
            }

            sub_12E1C(v37, &unk_DFC5A0);
            sub_12E1C(v46, &unk_DFC5A0);

            sub_297350(&v31);
            sub_297350(v34);
            sub_12E1C(&v39, &unk_DFC5A0);
            a1 = v30;
            if ((v25 & 1) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_19;
          }

          sub_12E1C(v37, &unk_DFC5A0);
          sub_12E1C(v46, &unk_DFC5A0);
          sub_297350(v34);
        }

        else
        {
          sub_12E1C(v37, &unk_DFC5A0);
          sub_12E1C(v46, &unk_DFC5A0);
          if (!*(&v43 + 1))
          {
            sub_12E1C(&v39, &unk_DFC5A0);
            a1 = v30;
LABEL_19:
            v26 = [sub_208934() contentScrollView];
            if (v26)
            {
              v27 = v26;
              [v26 _scrollToTopIfPossible:1];
            }

            goto LABEL_21;
          }
        }

        sub_12E1C(&v39, &unk_DFE600);
        a1 = v30;
LABEL_21:
        sub_E8BA0(a2, v6);
        swift_storeEnumTagMultiPayload();
        v46[0] = a1;
        sub_ABAD10();
        sub_309680(v6, &v39);
        sub_12E1C(&v39, &qword_DF2BD0);
        sub_30EFDC(v6, type metadata accessor for Search.Event);
        v28 = sub_208934();

        sub_3512A4();
        sub_E8BA0(a2, v46);
        sub_30CEC8(&v39);
        sub_160B4(v46, &v45, &unk_E00060);
        sub_30CF2C(&v39);
        sub_30DF5C();

        return;
      }
    }

    else
    {
      sub_30EFDC(v9, type metadata accessor for Search.ResultContext);
      v39 = 0u;
      v40 = 0u;
      v41 = 0;
    }

    sub_12E1C(&v39, &unk_E00060);
    memset(v37, 0, sizeof(v37));
    v38 = 0;
    goto LABEL_8;
  }
}

void sub_30A7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Search.Recents.Result.Item(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040);
  __chkstk_darwin(v9 - 8);
  v53 = &v51 - v10;
  v57 = type metadata accessor for Search.Item(0);
  __chkstk_darwin(v57);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB3820();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for Search.Event(0);
  __chkstk_darwin(v58);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v51 = v8;
    v21 = sub_208918();
    v55 = v13;
    v56 = a1;
    v22 = v12;
    v23 = a1;
    v24 = v21;
    v54 = v20;
    [v24 resignFirstResponder];
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5E8);
    v26 = *(v25 + 48);
    v27 = a2;
    v28 = *(v25 + 64);
    v29 = v23;
    v30 = v22;
    sub_30EEC4(v29, v18, type metadata accessor for Search.Item);
    v18[v26] = 4;
    v52 = a3;
    sub_30EEC4(a3, &v18[v28], type metadata accessor for Search.ResultContext);
    v31 = type metadata accessor for Search.ResultContext(0);
    v32 = &v18[v28];
    v33 = v27;
    v34 = v54;
    (*(*(v31 - 8) + 56))(v32, 0, 1, v31);
    swift_storeEnumTagMultiPayload();
    (*(v14 + 16))(v16, v33, v55);
    sub_30EF2C(&qword_DFAA90, &type metadata accessor for IndexPath);
    sub_ABAD10();
    sub_309680(v18, v59);
    sub_12E1C(v59, &qword_DF2BD0);
    sub_30EFDC(v18, type metadata accessor for Search.Event);
    v35 = v56;
    sub_30EEC4(v56, v22, type metadata accessor for Search.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {

        v37 = v22;
        v38 = v53;
        sub_36B0C(v37, v53, &unk_E00040);
        sub_30AD70(v38, v52, v35);

        sub_12E1C(v38, &unk_E00040);
      }

      else
      {

        v48 = v51;
        sub_30EF74(v22, v51, type metadata accessor for Search.Recents.Result.Item);
        sub_30AD70(v48, v52, v35);

        sub_30EFDC(v48, type metadata accessor for Search.Recents.Result.Item);
      }
    }

    else
    {
      v39 = *(v22 + 8);
      v57 = *v30;
      v41 = v30[2];
      v40 = v30[3];
      v42 = sub_208918();
      v43 = [v42 text];
      if (v43)
      {
        v44 = v43;
        v45 = sub_AB92A0();
        v47 = v46;
      }

      else
      {

        v45 = 0;
        v47 = 0;
      }

      sub_30D0C4(v57, v39, v41, v40);
      v49 = sub_AB37B0();
      *v18 = 26;
      *(v18 + 1) = v49;
      v18[16] = 0;
      *(v18 + 3) = v45;
      *(v18 + 4) = v47;
      swift_storeEnumTagMultiPayload();
      v60 = 0;
      memset(v59, 0, sizeof(v59));
      sub_309680(v18, v59);
      sub_12E1C(v59, &qword_DF2BD0);
      sub_30EFDC(v18, type metadata accessor for Search.Event);
      v50 = sub_208934();

      sub_3512A4();
    }
  }
}

void sub_30AD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5F0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040);
  v10 = __chkstk_darwin(v9);
  v11 = __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v13 = (&v23 - v12);
  v14 = (a2 + *(type metadata accessor for Search.ResultContext(0) + 40));
  v15 = v14[2];
  if ((~v15 & 0x7000000000000007) == 0)
  {
    return;
  }

  v25 = v6;
  if ((v15 & 0x4000000000000000) != 0)
  {
    v24 = a1;
    v17 = *v14;
    v16 = v14[1];
    sub_30F03C(*v14, v16, v15);
    v18 = v17(a3);
    if ((~v20 & 0xF000000000000007) == 0)
    {

      sub_30F04C(v17, v16, v15);
      return;
    }

    v21 = v20;
    sub_30EEB0(v18, v19, v20);
    sub_30F04C(v17, v16, v15);
    v15 = v21;
    a1 = v24;
    v6 = v25;
  }

  sub_15F84(a1, v13, &unk_E00040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v13;
  }

  else
  {
    sub_36B0C(v13, v8, &qword_DFE5F0);
    v22 = SnapshotIdentifier.Lazy.object.getter(v6);
    sub_12E1C(v8, &qword_DFE5F0);
  }

  sub_30B2E8(v22, v15 < 0);
}

uint64_t sub_30B2E8(uint64_t a1, char a2)
{
  swift_beginAccess();
  v5 = *(v2 + 88);
  v6 = a2 & 1;

  v7 = sub_477E20(v6, v5);
  v9 = v8;
  v11 = v10;

  if ((~v11 & 0xF000000000000007) != 0)
  {
    v14 = &_s7LibraryVN;
    if (v11 >= 0)
    {
      v14 = &_s7CatalogVN;
    }

    v15 = &off_D00048;
    if (v11 < 0)
    {
      v15 = &off_D17228;
    }

    *(&v21 + 1) = v14;
    v22 = v15;

    sub_30EEB0(v7, v9, v11);
    *&v20 = v7;
    *(&v20 + 1) = v9;
    *&v21 = v11 & 0x7FFFFFFFFFFFFFFFLL;
    sub_70DF8(&v20, v23);
    v16 = v24;
    v17 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v18 = *(v17 + 24);
    v19 = sub_13C80(0, &qword_DEDE20);
    v18(a1, v19, v16, v17);
    return __swift_destroy_boxed_opaque_existential_0(v23);
  }

  else
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    sub_12E1C(&v20, &qword_DFE5E0);
    sub_30F074();
    swift_allocError();
    *v12 = v6;
    return swift_willThrow();
  }
}

void sub_30B4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Search.Event(0);
  __chkstk_darwin(v10);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5E8);
    v16 = *(v15 + 48);
    v17 = a1;
    v18 = a2;
    v19 = *(v15 + 64);
    sub_30EEC4(v17, v12, type metadata accessor for Search.Item);
    v12[v16] = 0;
    sub_30EEC4(a3, &v12[v19], type metadata accessor for Search.ResultContext);
    v20 = type metadata accessor for Search.ResultContext(0);
    (*(*(v20 - 8) + 56))(&v12[v19], 0, 1, v20);
    swift_storeEnumTagMultiPayload();
    (*(v7 + 16))(v9, v18, v6);
    sub_30EF2C(&qword_DFAA90, &type metadata accessor for IndexPath);
    sub_ABAD10();
    sub_309680(v12, v21);
    sub_12E1C(v21, &qword_DF2BD0);
    sub_30EFDC(v12, type metadata accessor for Search.Event);
  }
}

uint64_t sub_30B740(uint64_t a1, char a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(result + qword_DFE528);
    v12 = result;

    swift_beginAccess();
    v13 = *(v11 + 88);

    v14 = sub_477E20(a2 & 1, v13);
    v16 = v15;
    v18 = v17;

    if ((~v18 & 0xF000000000000007) != 0)
    {
      v20 = &_s7LibraryVN;
      if (v18 >= 0)
      {
        v20 = &_s7CatalogVN;
      }

      v21 = &off_D00048;
      if (v18 < 0)
      {
        v21 = &off_D17228;
      }

      *(&v25 + 1) = v20;
      v26 = v21;

      sub_30EEB0(v14, v16, v18);
      *&v24 = v14;
      *(&v24 + 1) = v16;
      *&v25 = v18 & 0x7FFFFFFFFFFFFFFFLL;
      sub_70DF8(&v24, v27);
      v22 = v28;
      v23 = v29;
      __swift_project_boxed_opaque_existential_1(v27, v28);
      (*(v23 + 40))(a1, a3, a4, a5, v22, v23);
      __swift_destroy_boxed_opaque_existential_0(v27);
    }

    else
    {
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      sub_12E1C(&v24, &qword_DFE5E0);
      sub_1CE268();
      swift_allocError();
      *v19 = 0;
      a4();
    }
  }

  return result;
}

void sub_30B940(void *a1)
{
  v1 = a1;
  sub_309C24();
}

void sub_30B988(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_30B9E8(a3, &selRef_viewWillAppear_, 1);
}

uint64_t sub_30B9E8(char a1, SEL *a2, char a3)
{
  v8.receiver = v3;
  v8.super_class = type metadata accessor for SearchViewController();
  objc_msgSendSuper2(&v8, *a2, a1 & 1);
  *(v3 + qword_DFE538) = a3;
  return sub_30CFAC();
}

void sub_30BA70(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_30B9E8(a3, &selRef_viewWillDisappear_, 0);
}

void sub_30BAD0(uint64_t a1)
{
  v2 = v1;
  v22.receiver = v1;
  v22.super_class = type metadata accessor for SearchViewController();
  objc_msgSendSuper2(&v22, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  if (a1)
  {
    v5 = UITraitCollection.mediaLibrary.getter();
    v6 = UITraitCollection.mediaLibrary.getter();
    if (v5)
    {
      sub_13C80(0, &qword_DF86B0);
      v7 = sub_ABA790();

      if (v7)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v6 = UITraitCollection.mediaLibrary.getter();
  }

LABEL_7:
  v8 = *&v2[qword_DFE528];
  v9 = UITraitCollection.mediaLibrary.getter();
  swift_beginAccess();
  sub_30E554(v8 + 16, &v20);
  objc_storeStrong(v21, v9);
  sub_4768E8();

  sub_30E554(v8 + 16, v19);
  swift_beginAccess();
  sub_30EDB4(&v20, v8 + 16);
  swift_endAccess();
  sub_476C14(v19);
  sub_30E5B0(v19);
  sub_30E5B0(&v20);
  [sub_208918() _setLocalOverrideTraitCollection:v4];
  if (!a1)
  {
    v11 = UITraitCollection.mediaPickerConfiguration.getter();
    goto LABEL_13;
  }

LABEL_8:
  v10 = UITraitCollection.mediaPickerConfiguration.getter();
  v11 = UITraitCollection.mediaPickerConfiguration.getter();
  if (v10)
  {
    if (v11)
    {
      v12 = v11;
      sub_13C80(0, &qword_DFE5D8);
      v13 = sub_ABA790();

      if (v13)
      {
        goto LABEL_16;
      }

LABEL_15:
      v14 = *&v2[qword_DFE528];
      v15 = UITraitCollection.mediaPickerConfiguration.getter();
      swift_beginAccess();
      sub_30E554(v14 + 16, &v20);
      v16 = v20;
      v17 = v15;

      v20 = v15;
      sub_4768E8();

      sub_30E554(v14 + 16, v19);
      swift_beginAccess();
      sub_30EDB4(&v20, v14 + 16);
      swift_endAccess();
      sub_476C14(v19);
      sub_30E5B0(v19);
      sub_30E5B0(&v20);
      rawValue = UITraitCollection.combinedLibraryRequestFilter.getter().rawValue;
      sub_30E554(v14 + 16, &v20);
      v21[1] = rawValue;
      sub_4768E8();
      sub_30E554(v14 + 16, v19);
      swift_beginAccess();
      sub_30EDB4(&v20, v14 + 16);
      swift_endAccess();
      sub_476C14(v19);

      sub_30E5B0(v19);
      sub_30E5B0(&v20);
      return;
    }

LABEL_14:

    goto LABEL_15;
  }

LABEL_13:
  v10 = v11;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_16:
}

void sub_30BE34(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_30BAD0(a3);
}

void sub_30BEA0(char a1)
{
  v2 = a1 & 1;
  v3 = type metadata accessor for Search.Event(0);
  __chkstk_darwin(v3);
  v5 = v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + qword_DFE518) != v2)
  {
    if (*(v1 + qword_DFE518))
    {
      sub_30CEC8(v8);

      v10 = 0;
      v11 = 0xE000000000000000;
      sub_30CF2C(v8);
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_30CEC8(v8);
      sub_160B4(v6, &v12, &unk_E00060);
      sub_30CF2C(v8);
      *v5 = 1;
      v5[40] = 0;
      swift_storeEnumTagMultiPayload();
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      sub_309680(v5, v8);
      sub_12E1C(v8, &qword_DF2BD0);
      sub_30EFDC(v5, type metadata accessor for Search.Event);
    }

    sub_30CFAC();
    sub_30DA34();
    sub_30D210();
  }
}

void sub_30C014(char a1)
{
  v2 = *(v1 + qword_DFE518);
  *(v1 + qword_DFE518) = a1;
  sub_30BEA0(v2);
}

void sub_30C02C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_30E834();
}

void sub_30C08C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_30E870();
}

uint64_t sub_30C0EC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB92A0();
  v9 = v8;
  v10 = a3;
  v11 = a4;
  v12 = a1;
  sub_30E8A8(v7, v9);
}

id sub_30C178(void *a1)
{
  v2 = type metadata accessor for Search.Event(0);
  __chkstk_darwin(v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 text];
  if (result)
  {
    v6 = result;
    v7 = sub_AB92A0();
    v9 = v8;

    *v4 = 3;
    swift_storeEnumTagMultiPayload();
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_309680(v4, &v11);
    sub_12E1C(&v11, &qword_DF2BD0);
    sub_30EFDC(v4, type metadata accessor for Search.Event);
    *v4 = 54;
    *(v4 + 1) = 0;
    v4[16] = 1;
    *(v4 + 3) = 0;
    *(v4 + 4) = 0;
    swift_storeEnumTagMultiPayload();
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_309680(v4, &v11);
    sub_12E1C(&v11, &qword_DF2BD0);
    sub_30EFDC(v4, type metadata accessor for Search.Event);
    v10 = sub_208934();
    sub_3512A4();

    sub_30D0C4(v7, v9, 0, 0);
  }

  return result;
}

void sub_30C344(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_30C178(v4);
}

void sub_30C3AC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_30EB40();
}

void sub_30C40C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_30EB44();
}

uint64_t sub_30C46C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = sub_30EC74();

  return a1 & 1;
}

uint64_t sub_30C4B8()
{
  LODWORD(v1) = *(sub_208918() + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_selectedSource);
  if (v1 == 2)
  {
    v1 = *(v0 + qword_DFE528);
    swift_beginAccess();
    sub_30E554(v1 + 16, v3);
    LOBYTE(v1) = Search.Configuration.defaultSource.getter();
    sub_30E5B0(v3);
  }

  return v1 & 1;
}

uint64_t sub_30C53C(char a1)
{
  v39 = sub_AB3430();
  v38 = *(v39 - 8);
  v2 = *(v38 + 64);
  v3 = __chkstk_darwin(v39);
  __chkstk_darwin(v3);
  v37 = &v35 - v4;
  v5 = sub_208918();
  v6 = a1 & 1;
  v5[OBJC_IVAR____TtCC16MusicApplication6Search3Bar_selectedSource] = v6;
  v7 = &v5[OBJC_IVAR____TtCC16MusicApplication6Search3Bar_barText];
  swift_beginAccess();
  v7[24] = v6;
  v8 = v5;
  sub_294A9C();
  v9 = *(*&v8[OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView] + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_sourceScopeBar);
  v10 = *&v9[OBJC_IVAR____TtCCC16MusicApplication6Search3Bar14SourceScopeBar_sources];
  v11 = v9;

  v12 = sub_469CF8(v6, v10);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    [v11 setSelectedSegment:v12];
  }

  sub_30CEC8(v40);
  v40[80] = v6;
  sub_30CF2C(v40);
  v15 = sub_208918();
  v16 = sub_29324C();

  v17 = sub_30C4B8();
  v36 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v2;
  if (v17)
  {
    v18 = sub_ABB3C0();
  }

  else
  {
    v18 = 1;
  }

  *(v16 + 145) = v18 & 1;
  v19 = v16[4];
  v20 = *(v19 + 16);

  if (v20)
  {
    v21 = 0;
    v22 = (v19 + 40);
    do
    {
      if (v21 >= *(v19 + 16))
      {
        __break(1u);
LABEL_22:
        swift_once();
        if (byte_E71A90)
        {
        }

LABEL_18:
        if (*(v16 + 145) & 1) != 0 && (sub_466F18())
        {
          v27 = v37;
          sub_AB3420();
          v28 = swift_allocObject();
          swift_weakInit();
          v29 = v38;
          v30 = v36;
          v31 = v39;
          (*(v38 + 16))(v36, v27, v39);
          v32 = (*(v29 + 80) + 24) & ~*(v29 + 80);
          v33 = swift_allocObject();
          *(v33 + 16) = v28;
          (*(v29 + 32))(v33 + v32, v30, v31);

          sub_48C6A0(sub_30E700, v33);
          (*(v29 + 8))(v27, v31);
        }
      }

      v25 = *v22;
      v26 = qword_DE6D68;
      swift_unknownObjectRetain();
      if (v26 == -1)
      {
        if (byte_E71A90)
        {
          goto LABEL_13;
        }
      }

      else
      {
        swift_once();
        if (byte_E71A90)
        {
LABEL_13:
          v23 = 0;
          goto LABEL_9;
        }
      }

      v23 = *(v16 + 145);
LABEL_9:
      ++v21;
      ObjectType = swift_getObjectType();
      (*(v25 + 16))(v23, ObjectType, v25);
      swift_unknownObjectRelease();
      v22 += 2;
    }

    while (v20 != v21);
  }

  if (qword_DE6D68 != -1)
  {
    goto LABEL_22;
  }

  if ((byte_E71A90 & 1) == 0)
  {
    goto LABEL_18;
  }
}

uint64_t *sub_30C9C8()
{
  v1 = qword_DFE530;
  if (*(v0 + qword_DFE530))
  {
    v2 = *(v0 + qword_DFE530);
  }

  else
  {
    v2 = sub_30CA30();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t *sub_30CA30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050);
  __chkstk_darwin(v0 - 8);
  v2 = &v7[-v1];
  v3 = type metadata accessor for MetricsPageProperties();
  __chkstk_darwin(v3 - 8);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_30CB98(v7);
  Search.resultSnapshotController.getter();
  RequestResponse.Controller.revision.getter();

  RequestResponse.Revision.content.getter(v2);

  sub_475B48(v2, 2, v5);
  sub_12E1C(v2, &unk_E00050);
  sub_30E4AC(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5C8);
  swift_allocObject();
  return MetricsEvent.PageRender.init(pageProperties:)(v5);
}

uint64_t sub_30CB98@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050);
  __chkstk_darwin(v2 - 8);
  v4 = &v17[-1] - v3;
  v5 = type metadata accessor for Search.ResultContext(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Search.resultSnapshotController.getter();
  v9 = RequestResponse.Controller.revision.getter();

  sub_30CEC8(&v16);
  v11 = v17[10];
  v10 = v17[11];

  sub_30E458(&v16);
  if ((*(v9 + 120) & 1) == 0)
  {
    if (sub_30C4B8())
    {
      v12 = sub_ABB3C0();

      if ((v12 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    else
    {
    }

    v13 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13)
    {
      goto LABEL_16;
    }

    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v14 = 2;
    goto LABEL_19;
  }

LABEL_2:
  RequestResponse.Revision.content.getter(v4);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    sub_30EF74(v4, v8, type metadata accessor for Search.ResultContext);
    if (!*&v8[*(v5 + 32)])
    {
      sub_30EFDC(v8, type metadata accessor for Search.ResultContext);
      goto LABEL_16;
    }

    sub_15F84(&v8[*(v5 + 28)], &v16, &unk_E00070);
    sub_30EFDC(v8, type metadata accessor for Search.ResultContext);
    if (v16)
    {
      sub_E8BA0(v17, a1);
      sub_30E500(&v16);
    }

    else
    {
      sub_12E1C(&v16, &unk_E00070);
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }

    v14 = 1;
LABEL_19:
    *(a1 + 40) = v14;
    goto LABEL_20;
  }

  sub_12E1C(v4, &unk_E00050);
LABEL_16:
  *a1 = 0;
  *(a1 + 40) = 0;
LABEL_20:
}

uint64_t sub_30CEC8@<X0>(uint64_t a1@<X8>)
{
  v2 = Search.resultSnapshotController.getter();
  swift_beginAccess();
  sub_30E3FC((v2 + 2), a1);
}

uint64_t sub_30CF2C(uint64_t a1)
{
  Search.resultSnapshotController.getter();
  sub_30E3FC(a1, v3);
  RequestResponse.Controller.request.setter(v3);
  sub_30E458(a1);
}

uint64_t sub_30CFAC()
{
  v1 = v0;
  v2 = sub_208918();
  v3 = [v2 text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_AB92A0();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    v9 = v8 != 0;
  }

  else
  {

    v9 = 0;
  }

  Search.recentlySearchedSnapshotController.getter();
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(*(v1 + qword_DFE538));

  Search.resultSnapshotController.getter();
  if (*(v1 + qword_DFE538) != 1 || (*(v1 + qword_DFE518) & 1) == 0)
  {
    v9 = 0;
  }

  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(v9);
}

void sub_30D0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_208918();
  if (!a4)
  {
  }

  v9 = v8;

  v10 = sub_AB9260();

  [v9 setText:v10];

  [sub_208918() resignFirstResponder];
  v11 = *(v4 + qword_DFE528);
  swift_beginAccess();
  sub_30E554(v11 + 16, v15);
  v12 = sub_30C4B8();
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v15[80] = v12;
  v16 = a1;
  v17 = a2;
  v18 = 1;

  sub_160B4(v13, v19, &unk_E00060);
  sub_30CF2C(v15);
  sub_30DF5C();
  sub_30D210();
}

void sub_30D210()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050);
  __chkstk_darwin(v2 - 8);
  v4 = &v44 - v3;
  v5 = *(v0 + qword_DFE528);
  swift_beginAccess();
  v6 = *(*(v5 + 80) + 16);
  v7 = sub_208918();
  v8 = [v7 text];
  if (v8)
  {
    v9 = v8;
    v10 = sub_AB92A0();
    v12 = v11;

    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v10 & 0xFFFFFFFFFFFFLL;
    }

    v14 = v13 == 0;
  }

  else
  {

    v14 = 1;
  }

  v15 = *(v1 + qword_DFE518);
  v16 = [sub_208918() isFirstResponder];
  if (v15 != 1)
  {
    [sub_208918() setShowsScopeBar:0 animated:1];
    return;
  }

  if (((v16 | v14) & 1) == 0)
  {
    Search.resultSnapshotController.getter();
    v18 = RequestResponse.Controller.revision.getter();

    RequestResponse.Revision.content.getter(v4);
    v19 = type metadata accessor for Search.ResultContext(0);
    if ((*(*(v19 - 8) + 48))(v4, 1, v19) == 1)
    {
      sub_12E1C(v4, &unk_E00050);
      memset(v52, 0, 48);
    }

    else
    {
      sub_15F84(&v4[*(v19 + 28)], v52, &unk_E00070);
      sub_30EFDC(v4, type metadata accessor for Search.ResultContext);
    }

    v20 = *(*(sub_208918() + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView) + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBar);
    sub_15F84(v52, v50, &unk_E00070);
    v21 = *&v50[0];
    v22 = v20;
    if (v21)
    {
      v44 = v18;

      sub_30E500(v50);
      v23 = *(v21 + 16);
      if (v23)
      {
        v24 = v21 + 32;
        v25 = _swiftEmptyArrayStorage;
        do
        {
          sub_E8BA0(v24, &v47);
          sub_70DF8(&v47, v45);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_6C088(0, *(v25 + 2) + 1, 1, v25);
          }

          v27 = *(v25 + 2);
          v26 = *(v25 + 3);
          if (v27 >= v26 >> 1)
          {
            v25 = sub_6C088((v26 > 1), v27 + 1, 1, v25);
          }

          *(v25 + 2) = v27 + 1;
          v28 = &v25[40 * v27];
          v29 = v45[0];
          v30 = v45[1];
          *(v28 + 8) = v46;
          *(v28 + 2) = v29;
          *(v28 + 3) = v30;
          v24 += 40;
          --v23;
        }

        while (v23);
      }

      v18 = v44;
    }

    else
    {
      sub_12E1C(v50, &unk_E00070);
    }

    sub_AB3970();

    v31 = *(*(sub_208918() + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView) + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBar);
    sub_15F84(v52, v50, &unk_E00070);
    if (*&v50[0])
    {
      sub_E8BA0(v50 + 8, &v47);
      v32 = v31;
      sub_30E500(v50);
      if (*(&v48 + 1))
      {
        sub_70DF8(&v47, v50);
        goto LABEL_29;
      }
    }

    else
    {
      v33 = v31;
      sub_12E1C(v50, &unk_E00070);
      v47 = 0u;
      v48 = 0u;
      v49 = 0;
    }

    sub_12E1C(&v47, &unk_E00060);
    memset(v50, 0, sizeof(v50));
    v51 = 0;
LABEL_29:
    sub_AB3930();
    sub_12E1C(v50, &unk_DFC5A0);

    if ((*(v18 + 120) & 1) != 0 || v52[0])
    {
      v37 = sub_208918();
      sub_15F84(v52, v50, &unk_E00070);
      v38 = *&v50[0];
      if (*&v50[0])
      {
        v39 = v37;

        sub_30E500(v50);
        v40 = *(v38 + 16);

        v41 = v40 != 0;
      }

      else
      {
        v43 = v37;
        sub_12E1C(v50, &unk_E00070);
        v41 = 0;
      }

      [v37 setShowsScopeBar:v41 animated:1];

      v17 = sub_208918();
      v42 = 1;
    }

    else
    {
      if (v6 < 2)
      {
        v36 = 0;
      }

      else
      {
        v34 = *(v18 + 112);
        v35 = *(v18 + 104) & 0xFFFFFFFFFFFFLL;
        if ((v34 & 0x2000000000000000) != 0)
        {
          v35 = HIBYTE(v34) & 0xF;
        }

        v36 = v35 != 0;
      }

      [sub_208918() setShowsScopeBar:v36 animated:1];
      v17 = sub_208918();
      v42 = 0;
    }

    sub_2935A0(v42, 1);
    sub_12E1C(v52, &unk_E00070);

    goto LABEL_42;
  }

  [sub_208918() setShowsScopeBar:v6 > 1 animated:1];
  v17 = sub_208918();
  sub_2935A0(0, 1);
LABEL_42:
}