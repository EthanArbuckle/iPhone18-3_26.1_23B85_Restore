id sub_3DF784(uint64_t a1)
{
  v3 = qword_DFE2F0;
  result = *&v1[qword_DFE2F0];
  if (result)
  {
    result = [result results];
    if (!result)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v5 = result;
    v6 = [result sectionAtIndex:a1];

    if (v6)
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7 && [v7 uniformCellType] == &dword_4 + 2)
      {
        v8 = &v1[qword_E03638];
        if ((v1[qword_E03638 + 16] & 1) == 0)
        {
          v22 = *v8;
          swift_unknownObjectRelease();
          return v22;
        }

        v32 = 1;
        v9 = qword_E03640;
        v10 = v1[qword_E03640];
        if (v10 != 2)
        {
          v32 = v10 & 1;
          if ((v10 & 1) == 0)
          {
            v21 = 1;
            v18 = 0;
            v19 = 0;
            v20 = 0;
            goto LABEL_22;
          }

          v18 = 0;
          goto LABEL_20;
        }

        v11 = *&v1[v3];
        if (!v11 || (v12 = [v11 results]) == 0)
        {
          v18 = 0;
          goto LABEL_20;
        }

        v13 = v12;
        v14 = swift_allocObject();
        *(v14 + 16) = &v32;
        v15 = swift_allocObject();
        *(v15 + 16) = sub_3E0D7C;
        *(v15 + 24) = v14;
        v31[4] = sub_3E12F8;
        v31[5] = v15;
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 1107296256;
        v31[2] = sub_1B7EB0;
        v31[3] = &block_descriptor_334;
        v16 = _Block_copy(v31);

        [v13 enumerateItemsInSectionAtIndex:a1 usingBlock:v16];
        _Block_release(v16);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          v1[v9] = v32;

          v18 = sub_3E0D7C;
          if ((v32 & 1) == 0)
          {
            v19 = 0;
            v20 = 0;
            v21 = 1;
LABEL_22:
            *v8 = v19;
            *(v8 + 1) = v20;
            v8[16] = v21;
            v30 = v19;
            swift_unknownObjectRelease();
            sub_17654(v18);
            return v30;
          }

LABEL_20:
          sub_3D2824();
          v24 = v23;
          v25 = [v1 traitCollection];
          v26 = sub_F6A78();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_AF82B0;
          *(inited + 32) = v26;

          sub_2F48A4(inited, v25, 0, 0);
          swift_setDeallocating();
          swift_arrayDestroy();
          [v25 displayScale];
          sub_AB3A00();
          v29 = v28;

          v21 = 0;
          v19 = v24;
          v20 = v29;
          goto LABEL_22;
        }

        __break(1u);
        goto LABEL_24;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

id sub_3DFB90(uint64_t a1)
{
  v3 = *(v1 + qword_DFE2F0);
  if (!v3)
  {
    return 0;
  }

  result = [v3 results];
  if (result)
  {
    v5 = result;
    v6 = [result sectionAtIndex:a1];

    if (v6)
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7 && (v8 = [v7 title]) != 0)
      {
        v9 = v8;
        v10 = sub_AB92A0();
        v12 = v11;
        swift_unknownObjectRelease();

        v13 = HIBYTE(v12) & 0xF;
        if ((v12 & 0x2000000000000000) == 0)
        {
          v13 = v10 & 0xFFFFFFFFFFFFLL;
        }

        if (v13)
        {
          return &dword_0 + 1;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_3DFC8C(void *a1)
{
  v2 = v1;
  v4 = sub_AB37F0();
  v5 = *(v2 + qword_DFE2F0);
  if (v5)
  {
    v6 = [v5 results];
    if (!v6)
    {
LABEL_19:
      __break(1u);
      return;
    }

    v7 = v6;
    v8 = [v6 sectionAtIndex:v4];

    if (v8)
    {
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9 && (v10 = [v9 title]) != 0)
      {
        v11 = v10;
        v12 = sub_AB92A0();
        v14 = v13;
        swift_unknownObjectRelease();

        v15 = HIBYTE(v14) & 0xF;
        if ((v14 & 0x2000000000000000) == 0)
        {
          v15 = v12 & 0xFFFFFFFFFFFFLL;
        }

        if (v15)
        {
          v16 = sub_AB37F0();
          v17 = sub_3DEB44(a1, v16);
          sub_3D4418();
          sub_AB37F0();
          v18 = sub_497570();
          [a1 music_inheritedLayoutInsets];
          [a1 bounds];
          if (v17)
          {
            if (v18 == 0x8000000000000000 && v17 == -1)
            {
              goto LABEL_18;
            }

            if (!__OFSUB__(v18 / v17, 1))
            {
              CGRectGetWidth(*&v19);
              [a1 bounds];
              sub_3D0F38(v23, v24);
              return;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

void _s16MusicApplication21JSShelfViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + qword_E03630) = 0;
  v1 = v0 + qword_E03638;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v0 + qword_E03640) = 2;
  *(v0 + direct field offset for JSShelfViewController.verticalStackItemPrefersTopHairline) = 1;
  *(v0 + direct field offset for JSShelfViewController.verticalStackItemPrefersTallerHeader) = 0;
  *(v0 + qword_E03658) = 0;
  *(v0 + qword_E03660) = 0;
  v2 = v0 + qword_E03668;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  v3 = v0 + qword_E03670;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v4 = v0 + qword_E03678;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  v5 = v0 + qword_E03680;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  v6 = v0 + qword_E03688;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  v7 = v0 + qword_E03690;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  v8 = v0 + qword_E03698;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = v0 + qword_E036A0;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  v10 = v0 + qword_E036A8;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  v11 = v0 + qword_E036B0;
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 1;
  v12 = v0 + qword_E036B8;
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  v13 = v0 + qword_E036C0;
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  v14 = v0 + qword_E036C8;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  v15 = v0 + qword_E036D0;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  v16 = v0 + qword_E036D8;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  v17 = v0 + qword_E036E0;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  v18 = v0 + qword_E036E8;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  v19 = v0 + qword_E036F0;
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 1;
  v20 = v0 + qword_E036F8;
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = 1;
  *(v0 + qword_E03700) = 0;
  *(v0 + qword_E03708) = 0;
  v21 = v0 + qword_E03710;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = v0 + qword_E03718;
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = (v0 + qword_E03720);
  *v23 = 0xD000000000000015;
  v23[1] = 0x8000000000B48DF0;
  *(v0 + qword_E03728) = 0;
  *(v0 + qword_E03730) = 0;
  *(v0 + qword_E03738) = 0;
  *(v0 + qword_E03740) = 2;
  *(v0 + qword_E03748) = _swiftEmptyDictionarySingleton;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_3E0194()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_125(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3E0224()
{

  return swift_deallocObject();
}

uint64_t sub_3E0284()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_3E02BC()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_3E0388()
{
  v1 = *(sub_AB3820() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_3CB3C0(v2, v3, v4);
}

uint64_t sub_3E046C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3E04B4(void *a1, uint64_t a2)
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  [a1 clearArtworkCatalogs];
  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    (*(result + 8))(ObjectType, result);
    v12 = v11;
    v13 = swift_getObjectType();
    (*(v6 + 16))(v8, a2, v5);
    sub_3E046C(&qword_DFAA90, &type metadata accessor for IndexPath);
    sub_ABAD10();
    (*(v12 + 120))(a1, v15, v13, v12);
    sub_8085C(v15);
    result = swift_unknownObjectRelease();
    if (*(v2 + qword_E03658))
    {

      sub_38E908(a2, a1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _s16MusicApplication21JSShelfViewControllerC010collectionD0_18didHighlightItemAtySo012UICollectionD0C_10Foundation9IndexPathVtF_0(void *a1)
{
  v2 = sub_AB3820();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_AB37B0() >= 1)
  {
    if (__OFSUB__(sub_AB37B0(), 1))
    {
      __break(1u);
    }

    else
    {
      sub_AB37F0();
      sub_AB37C0();
      isa = sub_AB3770().super.isa;
      (*(v3 + 8))(v5, v2);
      v7 = [a1 cellForItemAtIndexPath:isa];

      if (v7)
      {
        type metadata accessor for HorizontalLockupCollectionViewCell();
        v8 = swift_dynamicCastClass();
        if (v8)
        {
          v9 = *(v8 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customBottomSeparatorView);
          if (v9)
          {
            [v9 setHidden:1];
          }
        }
      }
    }
  }
}

void _s16MusicApplication21JSShelfViewControllerC010collectionD0_20didUnhighlightItemAtySo012UICollectionD0C_10Foundation9IndexPathVtF_0(void *a1)
{
  v2 = sub_AB3820();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_AB37B0() >= 1)
  {
    if (__OFSUB__(sub_AB37B0(), 1))
    {
      __break(1u);
    }

    else
    {
      sub_AB37F0();
      sub_AB37C0();
      isa = sub_AB3770().super.isa;
      (*(v3 + 8))(v5, v2);
      v7 = [a1 cellForItemAtIndexPath:isa];

      if (v7)
      {
        type metadata accessor for HorizontalLockupCollectionViewCell();
        v8 = swift_dynamicCastClass();
        if (v8 && (v9 = *(v8 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customBottomSeparatorView)) != 0 && *(v8 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_allowsCustomBottomSeparator) == 1)
        {
          v10 = v9;
          if ([v10 isHidden])
          {
            [v10 setHidden:0];
          }
        }

        else
        {
          v10 = v7;
        }
      }
    }
  }
}

uint64_t sub_3E09C8(uint64_t a1)
{
  *(a1 + 8) = sub_3E046C(&qword_E03820, type metadata accessor for JSShelfViewController);
  result = sub_3E046C(&qword_E03828, type metadata accessor for JSShelfViewController);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_3E0C08()
{

  return swift_deallocObject();
}

uint64_t sub_3E0C64()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_3E0CB8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_3E0CFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_3E0D84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_3E0DEC()
{

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_3E0E74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_3E0ED4()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_28Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_3E0FF0()
{

  return swift_deallocObject();
}

uint64_t sub_3E1058()
{

  return swift_deallocObject();
}

uint64_t sub_3E10B8()
{

  return swift_deallocObject();
}

uint64_t sub_3E1114()
{

  return swift_deallocObject();
}

uint64_t sub_3E1154(uint64_t a1)
{
  v3 = *(v1 + 24);
  sub_3B856C();
  return v3(a1);
}

uint64_t sub_3E119C()
{

  return swift_deallocObject();
}

uint64_t sub_3E11F0()
{

  return swift_deallocObject();
}

void TVShowCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v11 - 8);
  v13 = v70 - v12;
  v14 = &v5[OBJC_IVAR____TtC16MusicApplication10TVShowCell_title];
  *v14 = 0;
  *(v14 + 1) = 0xE000000000000000;
  v15 = &v5[OBJC_IVAR____TtC16MusicApplication10TVShowCell_subtitle];
  *v15 = 0;
  *(v15 + 1) = 0xE000000000000000;
  v16 = &v5[OBJC_IVAR____TtC16MusicApplication10TVShowCell_textComponents];
  *v16 = _s16MusicApplication10TVShowCellC14textComponents33_8C9A864756C05C79127AAB0A92CC6C03LLAC04TextF0AELLVvpfi_0();
  v16[1] = v17;
  v16[2] = v18;
  v80.receiver = v5;
  v80.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v80, "initWithFrame:", a1, a2, a3, a4);
  v20 = UIView.Corner.large.unsafeMutableAddressor();
  v21 = sub_ABA680();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v13, v20, v21);
  (*(v22 + 56))(v13, 0, 1, v21);
  BackgroundLockupCollectionViewCell.artworkCornerTreatment.setter(v13);
  v23 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent;

  v24 = UIView.Border.artwork.unsafeMutableAddressor();
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = v24[2];
  v28 = v27;
  sub_75E64(v25, v26, v27);

  v77 = v23;
  v29 = *&v19[v23];
  *(v29 + 24) = 0x70756B636F6CLL;
  *(v29 + 32) = 0xE600000000000000;

  v30 = *&v19[v23];
  v31 = *(v30 + 80);
  v32 = *(v30 + 88);
  *(v30 + 80) = *&v19[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkSize];

  sub_75614(v31, v32);

  v33 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v34 = *v33;
  v35 = v33[1];
  v37 = v33[2];
  v36 = v33[3];
  v39 = v33[5];
  v76 = v33[4];
  v38 = v76;
  v75 = v39;
  v40 = &v19[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkPlaceholder];
  swift_beginAccess();
  v41 = *(v40 + 1);
  v74 = *v40;
  v73 = v41;
  v42 = *(v40 + 3);
  v72 = *(v40 + 2);
  v71 = v42;
  v43 = *(v40 + 5);
  v70[2] = *(v40 + 4);
  v70[1] = v43;
  *v40 = v34;
  *(v40 + 1) = v35;
  *(v40 + 2) = v37;
  *(v40 + 3) = v36;
  *(v40 + 4) = v38;
  *(v40 + 5) = v39;
  v44 = v34;
  v45 = v35;
  v46 = v37;
  v47 = v36;
  v48 = v44;
  v49 = v45;
  v50 = v46;
  v51 = v47;
  sub_2F1C8(v74, v73, v72, v71);
  v52 = *&v19[v77];
  v53 = *(v52 + 168);
  v81[0] = *(v52 + 152);
  v81[1] = v53;
  v81[2] = *(v52 + 184);
  *(v52 + 152) = v34;
  *(v52 + 160) = v35;
  *(v52 + 168) = v37;
  *(v52 + 176) = v36;
  v54 = v75;
  *(v52 + 184) = v76;
  *(v52 + 192) = v54;
  v55 = v48;
  v56 = v49;
  v57 = v50;
  v58 = v51;
  v59 = v55;
  v60 = v56;
  v61 = v57;
  v62 = v58;
  sub_75948(v81);
  sub_B2A40(v81);

  v63 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkAspectRatio;
  swift_beginAccess();
  v64 = *&v19[v63];
  *&v19[v63] = 0x3FF7EDB6DB6DB6DBLL;
  v79 = v64;
  v78 = 0x3FF7EDB6DB6DB6DBLL;
  if (sub_AB38D0())
  {
    sub_34A210();
  }

  sub_3494CC(335.0, 224.0);
  v65 = *&v19[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_textStackView];

  v66 = *&v19[OBJC_IVAR____TtC16MusicApplication10TVShowCell_textComponents + 16];
  if (!(v66 >> 62))
  {
    v67 = *(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8));
    if (v67)
    {
      goto LABEL_5;
    }

LABEL_13:

    return;
  }

  v67 = sub_ABB060();
  if (!v67)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v67 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v67; ++i)
    {
      if ((v66 & 0xC000000000000001) != 0)
      {
        v69 = sub_36003C(i, v66);
      }

      else
      {
        v69 = *(v66 + 8 * i + 32);
      }

      TextStackView.add(_:)(v69);
    }
  }
}

void TVShowCell.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication10TVShowCell_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication10TVShowCell_subtitle);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication10TVShowCell_textComponents);
  *v3 = _s16MusicApplication10TVShowCellC14textComponents33_8C9A864756C05C79127AAB0A92CC6C03LLAC04TextF0AELLVvpfi_0();
  v3[1] = v4;
  v3[2] = v5;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_3E1A04(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication10TVShowCell_title];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication10TVShowCell_title];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication10TVShowCell_title + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication10TVShowCell_textComponents];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }
}

uint64_t sub_3E1B18(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication10TVShowCell_title] != result || *&v2[OBJC_IVAR____TtC16MusicApplication10TVShowCell_title + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication10TVShowCell_textComponents];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_3E1C14(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = sub_AB92A0();
  v10 = &a1[*a4];
  v11 = *v10;
  v12 = v10[1];
  *v10 = v9;
  v10[1] = v13;
  v14 = a3;
  v15 = a1;
  a5(v11, v12);
}

uint64_t sub_3E1CA8(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication10TVShowCell_subtitle];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication10TVShowCell_subtitle];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication10TVShowCell_subtitle + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication10TVShowCell_textComponents + 8];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }
}

uint64_t sub_3E1DC0(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication10TVShowCell_subtitle] != result || *&v2[OBJC_IVAR____TtC16MusicApplication10TVShowCell_subtitle + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication10TVShowCell_textComponents + 8];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t static TVShowCell.preferredHeight(traitCollection:width:)(void *a1)
{
  [a1 displayScale];

  return sub_AB3A00();
}

double static TVShowCell.artworkFittingSize(traitCollection:containerSize:layoutInsets:)(void *a1, double a2)
{
  [a1 displayScale];
  sub_AB3A00();
  return a2;
}

uint64_t sub_3E1F7C(uint64_t a1, uint64_t a2)
{
  v25 = sub_AB2E70();
  v4 = *(v25 - 8);
  __chkstk_darwin(v25);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_AB2F50();
  v7 = *(v23 - 8);
  __chkstk_darwin(v23);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_AB2F20();
  v10 = *(v24 - 8);
  v11 = __chkstk_darwin(v24);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  v16 = swift_projectBox();
  v26 = a1;
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA750);
  swift_allocObject();

  sub_AB3890();
  sub_AB3880();

  swift_beginAccess();
  v17 = v16;
  v18 = v23;
  (*(v7 + 16))(v9, v17, v23);
  v19 = v25;
  (*(v4 + 104))(v6, enum case for AttributedString.AttributeMergePolicy.keepNew(_:), v25);
  sub_AB2E40();
  (*(v4 + 8))(v6, v19);
  (*(v7 + 8))(v9, v18);
  sub_13C80(0, &unk_DECB20);
  v20 = v24;
  (*(v10 + 16))(v13, v15, v24);
  v21 = sub_ABA1C0();
  (*(v10 + 8))(v15, v20);
  return v21;
}

uint64_t sub_3E22BC()
{
}

uint64_t _s16MusicApplication10TVShowCellC14textComponents33_8C9A864756C05C79127AAB0A92CC6C03LLAC04TextF0AELLVvpfi_0()
{
  sub_13C80(0, &qword_DE6EE0);
  v0 = sub_ABA5A0();
  v1 = objc_opt_self();
  v2 = [v1 whiteColor];
  v3 = [v1 clearColor];
  *&v25[0] = v2;
  *(&v25[0] + 1) = v3;
  v25[1] = xmmword_AFF7A0;
  v25[2] = xmmword_B0D1A0;
  v26 = v0;
  v27 = 3;
  v28 = xmmword_B0D1B0;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v4 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v25);
  v5 = objc_opt_self();
  v18 = v2;
  v17 = v3;
  v16 = v0;
  sub_2F118(v25, v35);

  v15 = [v5 systemFontOfSize:9.0 weight:UIFontWeightRegular];
  v14 = [v1 whiteColor];
  v13 = [v1 clearColor];
  v6 = [objc_opt_self() defaultParagraphStyle];
  [v6 mutableCopy];

  sub_ABAB50();
  sub_13C80(0, &unk_E05360);
  swift_dynamicCast();
  v7 = v29;
  swift_unknownObjectRelease();
  [v7 setLineBreakMode:4];
  [v7 setAlignment:2];
  sub_AB2F50();
  v8 = swift_allocBox();
  sub_AB2F40();
  v35[0] = [v5 systemFontOfSize:9.0 weight:UIFontWeightRegular];
  sub_B4860();
  sub_AB2F70();
  v35[0] = [v1 whiteColor];
  sub_B48B4();
  sub_AB2F70();
  v35[0] = v7;
  sub_B4908();
  v9 = v7;
  sub_AB2F70();
  v19 = xmmword_B0D1C0;
  v20 = sub_3E290C;
  v21 = v8;
  v22 = xmmword_AFA860;
  v23 = xmmword_AF82C0;
  v24 = xmmword_B00180;
  swift_allocObject();
  v10 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, &v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF7C50;
  *(v11 + 32) = v10;
  *(v11 + 40) = v4;

  sub_2F118(&v19, v35);

  v29 = xmmword_B0D1C0;
  v30 = sub_3E290C;
  v31 = v8;
  v32 = xmmword_AFA860;
  v33 = xmmword_AF82C0;
  v34 = xmmword_B00180;
  sub_2F174(&v29);

  v35[0] = v2;
  v35[1] = v3;
  v36 = xmmword_AFF7A0;
  v37 = xmmword_B0D1A0;
  v38 = v0;
  v39 = 3;
  v40 = xmmword_B0D1B0;
  sub_2F174(v35);

  return v4;
}

uint64_t type metadata accessor for TVShowCell()
{
  result = qword_E045B8;
  if (!qword_E045B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_3E2914(void *a1)
{
  *(v1 + 248) = 0;
  *(v1 + 232) = 0u;
  *(v1 + 216) = 0u;
  *(v1 + 256) = *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor();
  *(v1 + 264) = 0x80000000;
  *(v1 + 272) = 0;

  v3 = a1;
  v4 = sub_3B04BC(v3);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = v4[29];
  v4[29] = sub_3E41A8;
  v4[30] = v5;

  sub_17654(v6);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_getKeyPath();
    swift_allocObject();
    swift_weakInit();
    v9 = sub_AB3080();

    v10 = v4[31];
    v4[31] = v9;
  }

  else
  {

    v11 = v4[31];
    v4[31] = 0;
  }

  return v4;
}

__n128 sub_3E2AB0@<Q0>(__n128 *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = [v4 traitCollection];
    }

    else
    {
      v6 = 0;
    }

    sub_3E3238(v6, v15);

    v9 = *(v3 + 216);
    if (v9)
    {

      v10 = v16;
      v9(v16, v3, v15);
      sub_17654(v9);
      sub_57748(v15);
    }

    else
    {

      v10 = v15;
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong() && (v7 = swift_unknownObjectWeakLoadStrong(), , v7))
    {
      v8 = [v7 traitCollection];
    }

    else
    {
      v8 = 0;
    }

    v10 = v16;
    sub_3B2060(v8, v16);
  }

  v11 = v10[5].n128_u64[0];
  v12 = v10[1];
  *a1 = *v10;
  a1[1] = v12;
  v13 = v10[3];
  a1[2] = v10[2];
  a1[3] = v13;
  result = v10[4];
  a1[4] = result;
  a1[5].n128_u64[0] = v11;
  return result;
}

void sub_3E2C4C()
{
  sub_17654(*(v0 + 216));
  sub_17654(*(v0 + 232));

  v1 = *(v0 + 272);
}

uint64_t sub_3E2C94()
{
  v1 = *(**(v0 + 256) + 224);

  v1(v0, &off_D104C8);

  v2 = *(v0 + 88);
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  swift_unknownObjectWeakDestroy();
  sub_17654(*(v0 + 32));
  sub_17654(*(v0 + 48));
  sub_17654(*(v0 + 64));

  sub_3B24D8(*(v0 + 96));
  sub_17654(*(v0 + 216));
  sub_17654(*(v0 + 232));

  return v0;
}

uint64_t sub_3E2D7C()
{
  sub_3E2C94();

  return swift_deallocClassInstance();
}

void sub_3E2DD4(uint64_t a1)
{
  v3 = *(v1 + 264);
  *(v1 + 264) = a1;
  if (!static CloudLibrary.Status.__derived_enum_equals(_:_:)(v3, a1))
  {
    v4 = *(v1 + 88);
    if (v4)
    {
      v5 = v4;
      sub_3B1D0C(v6);
      sub_3B15CC(v6);
      sub_57748(v6);
    }
  }
}

uint64_t sub_3E2E3C()
{
  v1 = *(v0 + 232);
  sub_307CC(v1);
  return v1;
}

uint64_t sub_3E2E70(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 216);
  *(v2 + 216) = a1;
  *(v2 + 224) = a2;
  return sub_17654(v3);
}

void sub_3E2E84(char a1)
{
  v2 = *(v1 + 24);
  sub_3B0720(a1, 0);
  v3 = *(v1 + 24);
  if (v2 != v3)
  {
    v4 = **(v1 + 256);
    if (v3)
    {
      (*(v4 + 216))(v1, &off_D104C8);
    }

    else
    {
      (*(v4 + 224))(v1, &off_D104C8);
    }

    sub_3B0720(*(v1 + 24), 1);
    v5 = *(v1 + 88);
    if (v5)
    {
      v6 = v5;
      sub_3B1D0C(v7);
      sub_3B15CC(v7);
      sub_57748(v7);
    }
  }
}

void sub_3E2F7C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 88);
    if (v1)
    {
      v2 = v1;
      sub_3B1D0C(v3);
      sub_3B15CC(v3);
      sub_57748(v3);
    }

    else
    {
    }
  }
}

void *sub_3E3014()
{
  v1 = v0;
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  __chkstk_darwin(v3 - 8);
  v4 = *(v0 + 264);
  if (v4 >> 30 == 1)
  {
    LODWORD(v5) = HIDWORD(*(v0 + 264));
    sub_AB91E0();
    sub_AB3550();
  }

  else
  {
    if (v4 >> 30 != 2 || v4 != 2147483652)
    {
      return 0;
    }

    sub_AB91E0();
    sub_AB3550();
    v5 = 0.0;
  }

  v7 = sub_AB9320();
  v9 = v8;
  if (v5 > 0.0)
  {
    v10 = LODWORD(v5);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v0 + 272);
  if (v11)
  {
    v12 = v11;
    LoadingView.title.setter(v7, v9);
    LoadingView.style.setter(v10 | ((v5 <= 0.0) << 32));
  }

  else
  {
    v13 = objc_allocWithZone(type metadata accessor for LoadingView());
    v14 = LoadingView.init(title:style:usesSubtitleTextColor:)(v7, v9, v10 | ((v5 <= 0.0) << 32), 1);
    v12 = *(v0 + 272);
    *(v1 + 272) = v14;
  }

  v6 = *(v1 + 272);
  v15 = v6;
  return v6;
}

void sub_3E3238(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  __chkstk_darwin(v5 - 8);
  v6 = sub_3E3014();
  if (v6)
  {
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v87 = 0u;
    v92 = v6;
    memset(v94, 0, sizeof(v94));
    v95 = v6;
    sub_576EC(&v87, v85);
    sub_57748(v94);
    v7 = v92;
    v9 = v90;
    v8 = v91;
    v11 = v88;
    v10 = v89;
    v12 = v87;
LABEL_44:
    *a2 = v12;
    *(a2 + 16) = v11;
    *(a2 + 32) = v10;
    *(a2 + 48) = v9;
    *(a2 + 64) = v8;
    *(a2 + 80) = v7;
    return;
  }

  sub_AB91E0();
  sub_AB3550();
  v66 = sub_AB9320();
  v70 = v13;
  static ApplicationCapabilities.shared.getter(v79);
  sub_70C54(v79);
  if (v80 == 2)
  {
  }

  else
  {
    v14 = sub_ABB3C0();

    if ((v14 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  static ApplicationCapabilities.shared.getter(v81);
  sub_70C54(v81);
  if (BYTE9(v81[0]))
  {
    static ApplicationCapabilities.shared.getter(v82);
    sub_70C54(v82);
    if ((BYTE2(v82[0]) & 1) == 0)
    {
      if (!a1 || (v20 = UITraitCollection.mediaPickerConfiguration.getter()) == 0 || (v21 = v20, v22 = MPMediaPickerConfiguration.supportsCloudLibrary.getter(), v21, (v22 & 1) != 0))
      {
        sub_AB91E0();
        sub_AB3550();
        v67 = sub_AB9320();
        v24 = v23;
        sub_AB91E0();
        sub_AB3550();
        v25 = sub_AB9320();
        v27 = v26;
        sub_AB91E0();
        sub_AB3550();
        v28 = sub_AB9320();
        v30 = v29;

        v31 = swift_allocObject();
        swift_weakInit();

        v32 = v24;
        v33 = v67;
        v34 = v28;
        v35 = 0;
        v36 = sub_3E4244;
LABEL_42:
        v46 = v36;
        v45 = 1;
        goto LABEL_43;
      }
    }
  }

LABEL_8:
  static ApplicationCapabilities.shared.getter(v83);
  sub_70C54(v83);
  if (v84 > 2u)
  {

    goto LABEL_40;
  }

  v15 = sub_ABB3C0();

  if (v15)
  {
LABEL_40:
    sub_AB91E0();
    sub_AB3550();
    v25 = sub_AB9320();
    v27 = v54;

    v34 = 0;
    v30 = 0;
    v45 = 0;
    v46 = 0;
    v31 = 0;
    v35 = 0;
    v33 = 0;
    v32 = 0;
    goto LABEL_43;
  }

  if (!a1)
  {
LABEL_19:
    static ApplicationCapabilities.shared.getter(v85);
    sub_70C54(v85);
    if (v86 == 2)
    {

      if (a1)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v47 = sub_ABB3C0();

      if (a1 && (v47 & 1) != 0)
      {
LABEL_32:
        v48 = UITraitCollection.mediaPickerConfiguration.getter();
        if (v48)
        {
          v49 = v48;
          if ((MPMediaPickerConfiguration.supportsCloudLibrary.getter() & 1) == 0)
          {
            sub_AB91E0();
            sub_AB3550();
            v69 = sub_AB9320();
            v56 = v55;
            sub_AB91E0();
            sub_AB3550();
            v25 = sub_AB9320();
            v27 = v57;
            sub_AB91E0();
            sub_AB3550();
            v58 = sub_AB9320();
            v30 = v59;

            v32 = v56;
            v33 = v69;
            v34 = v58;
            v31 = 0;
            v35 = 0;
            v36 = sub_3E40D8;
            goto LABEL_42;
          }
        }
      }
    }

    static ApplicationCapabilities.shared.getter(&v87);
    sub_70C54(&v87);
    if (v93 == 2)
    {

      goto LABEL_38;
    }

    v50 = sub_ABB3C0();

    if (v50)
    {
LABEL_38:
      static ApplicationCapabilities.shared.getter(v94);
      sub_70C54(v94);
      if (BYTE2(v94[0]))
      {
        sub_AB91E0();
        sub_AB3550();
        v25 = sub_AB9320();
        v27 = v51;
        sub_AB91E0();
        sub_AB3550();
        v52 = sub_AB9320();
        v30 = v53;

        v34 = v52;
        v31 = 0;
        v35 = 0;
        v33 = 0;
        v32 = 0;
        v36 = sub_3E40E0;
        goto LABEL_42;
      }

      goto LABEL_40;
    }

    goto LABEL_40;
  }

  v16 = a1;
  if ((UITraitCollection.legacyLibraryFilter.getter().rawValue & 2) == 0)
  {

    v17 = UITraitCollection.mediaPickerConfiguration.getter();
    if (v17)
    {
      v18 = v17;
      if ((MPMediaPickerConfiguration.supportsCloudLibrary.getter() & 1) == 0 && ([v18 showsItemsWithProtectedAssets] & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    v19 = UITraitCollection.mediaPickerConfiguration.getter();
    if (!v19)
    {
      goto LABEL_19;
    }

    v18 = v19;
    if ([v19 showsItemsWithProtectedAssets])
    {

      goto LABEL_19;
    }

LABEL_45:
    sub_AB91E0();
    sub_AB3550();
    v61 = sub_AB9320();
    v63 = v62;
    sub_AB91E0();
    sub_AB3550();
    v25 = sub_AB9320();
    v27 = v64;
    v30 = v70;

    v32 = v63;
    v33 = v61;
    v31 = 0;
    v35 = 0;
    v46 = sub_3E3EE4;
    v45 = 1;
    v34 = v66;
    goto LABEL_43;
  }

  v37 = v16;
  sub_AB91E0();
  sub_AB3550();
  v38 = sub_AB9320();
  v65 = v39;
  v68 = v38;
  sub_AB91E0();
  sub_AB3550();
  v25 = sub_AB9320();
  v27 = v40;
  v41 = sub_AB9260();
  v42 = [objc_opt_self() _systemImageNamed:v41];

  if (v42)
  {
    v43 = [objc_opt_self() configurationWithPointSize:36.0];
    v35 = [v42 imageWithSymbolConfiguration:v43];

    v44 = v35;

    v34 = 0;
    v30 = 0;
    v45 = 0;
    v46 = 0;
    v31 = 0;
    v32 = v65;
    v33 = v68;
LABEL_43:
    *&v72 = v33;
    *(&v72 + 1) = v32;
    *&v73 = v25;
    *(&v73 + 1) = v27;
    *&v74 = v35;
    *(&v74 + 1) = v34;
    *&v75 = v30;
    *(&v75 + 1) = v45;
    *&v76 = v46;
    *(&v76 + 1) = v31;
    v77 = 0;
    v78[0] = v33;
    v78[1] = v32;
    v78[2] = v25;
    v78[3] = v27;
    v78[4] = v35;
    v78[5] = v34;
    v78[6] = v30;
    v78[7] = v45;
    v78[8] = v46;
    v78[9] = v31;
    v78[10] = 0;
    v60 = v34;
    sub_576EC(&v72, &v71);
    sub_57748(v78);
    sub_3E4200(v60, v30);

    v7 = v77;
    v9 = v75;
    v8 = v76;
    v10 = v74;
    v12 = v72;
    v11 = v73;
    goto LABEL_44;
  }

  __break(1u);
}

void sub_3E3EE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    LSApplicationWorkspace.openiTunesStore(with:)(0, v2);
    sub_171590(v2);
  }

  else
  {
    v5 = sub_AB31C0();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    sub_171590(v2);
  }
}

uint64_t sub_3E3FD8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + 264);
    *(v1 + 264) = 2147483652;
    if (static CloudLibrary.Status.__derived_enum_equals(_:_:)(v2, 2147483652) || (v3 = *(v1 + 88)) == 0)
    {
    }

    else
    {
      v4 = v3;
      sub_3B1D0C(v7);
      sub_3B15CC(v7);
      sub_57748(v7);
    }
  }

  v5 = *(**CloudLibrary.StatusObserver.shared.unsafeMutableAddressor() + 208);

  v5(0, 0);
}

void sub_3E40E8(MusicCore::TabIdentifier_optional a1)
{
  v2 = [objc_opt_self() defaultWorkspace];
  if (v2)
  {
    v3 = v2;
    LSApplicationWorkspace.openMusic(tabIdentifier:)(a1);
  }
}

uint64_t sub_3E4170()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_3E41BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 traitCollection];
  *a2 = result;
  return result;
}

uint64_t sub_3E4200(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_3E424C()
{
  v1 = [objc_allocWithZone(type metadata accessor for JSDrivenViewController()) init];
  JSDrivenViewController.configure(pushSegue:)(v0);
  sub_4148FC(v11);
  if (v12 == (&dword_0 + 1))
  {
    sub_111898(v11);
    Strong = 0;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1611C(v11);
  }

  v3 = v1;
  [v3 setPlayActivityFeatureNameSourceViewController:Strong];
  sub_4148FC(v11);
  v4 = v12;
  if (v12 == (&dword_0 + 1))
  {
    sub_111898(v11);
  }

  else
  {
    sub_307CC(v12);
    sub_1611C(v11);
    if (v4)
    {
      v4(v3);
      sub_17654(v4);
    }
  }

  if (Strong)
  {
    v5 = Strong;
    v6 = UIViewController.inheritedPlayActivityRecommendationData(shouldIncludeForwardedRecommendationData:)(0);
    v8 = v7;

    if (v8 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = sub_AB3250().super.isa;
      sub_466A4(v6, v8);
    }

    [v3 setPlayActivityForwardedRecommendationData:isa];

    v10 = v5;
    sub_728FC(v3, Strong, 1, v10);

    v3 = v10;
  }

  else
  {
    [v3 setPlayActivityForwardedRecommendationData:0];
  }
}

char *sub_3E4408(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC16MusicApplication12ProgressView_progress] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication12ProgressView_isBlurBackgroundEnabled] = 0;
  v9 = OBJC_IVAR____TtC16MusicApplication12ProgressView_progressFillView;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC16MusicApplication12ProgressView_backgroundView;
  *&v4[v10] = [objc_allocWithZone(UIView) init];
  v26.receiver = v4;
  v26.super_class = type metadata accessor for ProgressView();
  v11 = objc_msgSendSuper2(&v26, "initWithFrame:", a1, a2, a3, a4);
  v12 = OBJC_IVAR____TtC16MusicApplication12ProgressView_progressFillView;
  v13 = *&v11[OBJC_IVAR____TtC16MusicApplication12ProgressView_progressFillView];
  v14 = v11;
  [v13 setFrame:{0.0, 0.0, 0.0, 0.0}];
  [*&v11[v12] setClipsToBounds:1];
  v15 = *&v11[v12];
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 whiteColor];
  [v17 setBackgroundColor:v18];

  [*&v11[v12] setAlpha:0.75];
  v19 = OBJC_IVAR____TtC16MusicApplication12ProgressView_backgroundView;
  [*&v14[OBJC_IVAR____TtC16MusicApplication12ProgressView_backgroundView] setFrame:{0.0, 0.0, 0.0, 0.0}];
  [*&v14[v19] setClipsToBounds:1];
  v20 = qword_DE6B68;
  v21 = *&v14[v19];
  if (v20 != -1)
  {
    swift_once();
  }

  [v21 setBackgroundColor:qword_E04898];

  v22 = *&v14[v19];
  v23 = v14;
  [v23 addSubview:v22];
  [v23 addSubview:*&v11[v12]];
  v24 = [v16 clearColor];
  [v23 setBackgroundColor:v24];

  [v23 setUserInteractionEnabled:0];
  return v23;
}

uint64_t sub_3E47F0(double a1)
{
  v2 = *&v1[OBJC_IVAR____TtC16MusicApplication12ProgressView_progress];
  *&v1[OBJC_IVAR____TtC16MusicApplication12ProgressView_progress] = a1;
  v5 = v2;
  result = sub_AB38D0();
  if (result)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

id sub_3E4860(id result)
{
  v2 = OBJC_IVAR____TtC16MusicApplication12ProgressView_isBlurBackgroundEnabled;
  if (v1[OBJC_IVAR____TtC16MusicApplication12ProgressView_isBlurBackgroundEnabled] != (result & 1))
  {
    v3 = OBJC_IVAR____TtC16MusicApplication12ProgressView_backgroundView;
    [*&v1[OBJC_IVAR____TtC16MusicApplication12ProgressView_backgroundView] removeFromSuperview];
    if (v1[v2] == 1)
    {
      v4 = [objc_opt_self() effectWithStyle:1];
      v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v4];

      v6 = sub_AB9260();
      [v5 _setGroupName:v6];
    }

    else
    {
      v5 = [objc_allocWithZone(UIView) init];
      if (qword_DE6B68 != -1)
      {
        swift_once();
      }

      [v5 setBackgroundColor:qword_E04898];
    }

    v7 = *&v1[v3];
    *&v1[v3] = v5;
    v8 = v5;

    [v1 insertSubview:v8 atIndex:0];
    [*&v1[v3] setClipsToBounds:1];
    v9 = *&v1[v3];

    return [v9 setUserInteractionEnabled:0];
  }

  return result;
}

void sub_3E4A20()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for ProgressView();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  [v9 displayScale];

  v10 = OBJC_IVAR____TtC16MusicApplication12ProgressView_backgroundView;
  [*&v0[OBJC_IVAR____TtC16MusicApplication12ProgressView_backgroundView] setFrame:{v2, v4, v6, v8}];
  v11 = [*&v0[v10] layer];
  v18.origin.x = v2;
  v18.origin.y = v4;
  v18.size.width = v6;
  v18.size.height = v8;
  CGRectGetHeight(v18);
  sub_AB3A00();
  [v11 setCornerRadius:?];

  v19.origin.x = v2;
  v19.origin.y = v4;
  v19.size.width = v6;
  v19.size.height = v8;
  CGRectGetWidth(v19);
  sub_AB3A00();
  v13 = v12;
  v14 = OBJC_IVAR____TtC16MusicApplication12ProgressView_progressFillView;
  v15 = *&v0[OBJC_IVAR____TtC16MusicApplication12ProgressView_progressFillView];
  v20.origin.x = v2;
  v20.origin.y = v4;
  v20.size.width = v6;
  v20.size.height = v8;
  [v15 setFrame:{0.0, 0.0, v13, CGRectGetHeight(v20)}];

  v16 = [*&v0[v14] layer];
  v21.origin.x = v2;
  v21.origin.y = v4;
  v21.size.width = v6;
  v21.size.height = v8;
  CGRectGetHeight(v21);
  sub_AB3A00();
  [v16 setCornerRadius:?];
}

void sub_3E4C6C()
{
  v0 = [objc_opt_self() lightGrayColor];
  v1 = [v0 colorWithAlphaComponent:0.8];

  qword_E04898 = v1;
}

id sub_3E4CD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProgressView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_3E4D7C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v60[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v60[-v15];
  v17 = &v4[OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_title];
  *v17 = 0;
  *(v17 + 1) = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_lockupImageArtworkCatalog] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_layoutStyle] = 1;
  v4[OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_containerStyle] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_artworkCachingReference] = 0;
  v18 = OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v20 = sub_80104(v19);

  *&v5[v18] = v20;
  v21 = OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_titleLabel;
  *&v5[v21] = [objc_allocWithZone(UILabel) init];
  v61.receiver = v5;
  v61.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v61, "initWithFrame:", a1, a2, a3, a4);
  v23 = [v22 layer];
  [v23 setAllowsGroupOpacity:0];

  v24 = v22;
  v25 = [v24 layer];
  [v25 setAllowsGroupBlending:0];

  v26 = OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_artworkComponent;

  v27 = UIView.Border.artwork.unsafeMutableAddressor();
  v28 = *v27;
  v29 = *(v27 + 8);
  v30 = v27[2];
  v31 = v30;
  sub_75E64(v28, v29, v30);

  v32 = *&v24[v26];

  v33 = UIView.Corner.medium.unsafeMutableAddressor();
  v34 = sub_ABA680();
  v35 = *(v34 - 8);
  (*(v35 + 16))(v16, v33, v34);
  (*(v35 + 56))(v16, 0, 1, v34);
  v36 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_89FAC(v32 + v36, v14);
  swift_beginAccess();
  sub_8A01C(v16, v32 + v36);
  swift_endAccess();
  sub_75AE8(v14);
  sub_8A08C(v14);
  sub_8A08C(v16);

  v37 = *&v24[v26];
  *(v37 + 24) = 0x70756B636F6CLL;
  *(v37 + 32) = 0xE600000000000000;

  v38 = *&v24[v26];
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = (v38 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v41 = *(v38 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  *v40 = sub_13B168;
  v40[1] = v39;

  sub_17654(v41);

  v42 = [v24 contentView];
  [v42 addSubview:*(*&v24[v26] + 112)];
  v43 = OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_titleLabel;
  [*&v24[OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_titleLabel] setAdjustsFontForContentSizeCategory:1];
  [*&v24[v43] setLineBreakStrategy:2];
  v44 = *&v24[v43];

  v45 = sub_AB9260();

  [v44 setText:v45];

  [v42 addSubview:*&v24[v43]];
  v46 = [v24 contentView];

  [v46 bounds];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;

  v55 = [*(*&v24[v26] + 112) layer];
  [v55 cornerRadius];
  v57 = v56;

  v58 = [objc_opt_self() effectWithRoundedRect:kCACornerCurveContinuous cornerRadius:v48 curve:{v50, v52, v54, v57}];
  [v24 setFocusEffect:v58];

  return v24;
}

uint64_t sub_3E5378(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x647261646E617473;
  }

  else
  {
    v3 = 0x6E656E696D6F7270;
  }

  if (v2)
  {
    v4 = 0xE900000000000074;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x647261646E617473;
  }

  else
  {
    v5 = 0x6E656E696D6F7270;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE900000000000074;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_3E5424()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_3E54AC()
{
  sub_AB93F0();
}

Swift::Int sub_3E5520()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_3E55A4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_CF0C78;
  v8._object = v3;
  v5 = sub_ABB140(v4, v8);

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

void sub_3E5604(uint64_t *a1@<X8>)
{
  v2 = 0x6E656E696D6F7270;
  if (*v1)
  {
    v2 = 0x647261646E617473;
  }

  v3 = 0xE900000000000074;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

id sub_3E5718()
{
  v1 = v0;
  v38.receiver = v0;
  v38.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v38, "layoutSubviews");
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v0 effectiveUserInterfaceLayoutDirection];
  v11 = *&v0[OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_artworkComponent];
  v12 = *(v11 + 80);
  v13 = *(v11 + 88);
  *(v11 + 80) = v8;
  *(v11 + 88) = v10;
  sub_75614(v12, v13);
  sub_76368(0, 0, 1);
  sub_ABA490();
  sub_76B28(v14, v15, v16, v17);
  v18 = *&v1[OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_titleLabel];

  v19 = sub_AB9260();

  [v18 setText:v19];

  v20 = [objc_opt_self() whiteColor];
  [v18 setTextColor:v20];

  if (v1[OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_containerStyle] - 1 <= 2)
  {
    sub_89F60();
    v21 = sub_ABA550();
    [v18 setFont:v21];
    goto LABEL_11;
  }

  if ((v1[OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_layoutStyle] & 1) == 0)
  {

    goto LABEL_7;
  }

  v22 = sub_ABB3C0();

  if (v22)
  {
LABEL_7:
    v28 = [v1 traitCollection];
    v29 = [v28 preferredContentSizeCategory];

    v25 = sub_ABA350();
    v26 = &UIFontTextStyleTitle3;
    v27 = &UIFontTextStyleSubheadline;
    goto LABEL_8;
  }

  v23 = [v1 traitCollection];
  v24 = [v23 preferredContentSizeCategory];

  v25 = sub_ABA350();
  v26 = &UIFontTextStyleSubheadline;
  v27 = &UIFontTextStyleBody;
LABEL_8:
  if (v25)
  {
    v26 = v27;
  }

  v30 = *v26;
  sub_89F60();
  v21 = v30;
  v31 = sub_ABA550();

  [v18 setFont:v31];
LABEL_11:

  [v18 setMaximumContentSizeCategory:UIContentSizeCategoryUnspecified];
  [v18 setNumberOfLines:2];
  v32 = [v1 traitCollection];
  v33 = [v32 preferredContentSizeCategory];

  LOBYTE(v32) = sub_ABA330();
  if (v32)
  {
    LODWORD(v34) = 1061997773;
    [v18 _setHyphenationFactor:v34];
  }

  [v18 sizeThatFits:{v8 + -12.0 + -12.0, 1.79769313e308}];
  v39.origin.x = v4;
  v39.origin.y = v6;
  v39.size.width = v8;
  v39.size.height = v10;
  MinX = CGRectGetMinX(v39);
  v40.origin.x = v4;
  v40.origin.y = v6;
  v40.size.width = v8;
  v40.size.height = v10;
  CGRectGetMaxY(v40);
  result = [v18 font];
  if (result)
  {
    v37 = result;
    [result descender];

    return [v18 setFrame:UIEdgeInsetsInsetRect_5(MinX)];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_3E5D00(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  ObjectType = swift_getObjectType();
  v13.receiver = a1;
  v13.super_class = ObjectType;
  v10 = *a4;
  v11 = a1;
  LOBYTE(v10) = objc_msgSendSuper2(&v13, v10);
  v12.receiver = v11;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, *a5, a3);
  sub_3E5D94(v10, a4);
}

void sub_3E5D94(char a1, SEL *a2)
{
  v4 = a1 & 1;
  ObjectType = swift_getObjectType();
  v11.receiver = v2;
  v11.super_class = ObjectType;
  if (objc_msgSendSuper2(&v11, *a2) != v4)
  {
    v6 = *(*&v2[OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_artworkComponent] + 112);
    v10.receiver = v2;
    v10.super_class = ObjectType;
    v7 = v6;
    v8 = 2;
    if ((objc_msgSendSuper2(&v10, "isHighlighted") & 1) == 0)
    {
      v9.receiver = v2;
      v9.super_class = ObjectType;
      if (objc_msgSendSuper2(&v9, "isSelected"))
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }
    }

    [v7 setDrawMode:v8];
  }
}

id sub_3E5E5C()
{

  v0 = sub_AB9260();

  return v0;
}

unint64_t sub_3E5F74()
{
  result = qword_E04948;
  if (!qword_E04948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E04948);
  }

  return result;
}

uint64_t sub_3E5FC8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_artworkCachingReference) = a1;

  *(*(v1 + OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_artworkComponent) + 16) = a1;
}

void sub_3E6078()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_lockupImageArtworkCatalog) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_layoutStyle) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_containerStyle) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_artworkCachingReference) = 0;
  v3 = OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v5 = sub_80104(v4);

  *(v1 + v3) = v5;
  v6 = OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_titleLabel;
  *(v1 + v6) = [objc_allocWithZone(UILabel) init];
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_3E61A0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_3E61E0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - v6;
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v2;
  v12 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0);
  if (!swift_dynamicCast())
  {
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    sub_12E1C(v32, &unk_E04550);
    v35[0] = 0;
    v35[1] = 0xE000000000000000;
    sub_ABAD90(165);
    v36._countAndFlagsBits = 0xD0000000000000A2;
    v36._object = 0x8000000000B5DA90;
    sub_AB94A0(v36);
    v26 = [v12 description];
    v27 = sub_AB92A0();
    v29 = v28;

    v37._countAndFlagsBits = v27;
    v37._object = v29;
    sub_AB94A0(v37);

    v38._countAndFlagsBits = 46;
    v38._object = 0xE100000000000000;
    sub_AB94A0(v38);
LABEL_10:
    result = sub_ABAFD0();
    __break(1u);
    return result;
  }

  sub_304128(v32, v35);
  (*&stru_1F8.segname[(swift_isaMask & *v12) + 16])(a2);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_12E1C(v7, &unk_DE8E20);
    *&v32[0] = 0;
    *(&v32[0] + 1) = 0xE000000000000000;
    sub_ABAD90(167);
    v39._object = 0x8000000000B5DB40;
    v39._countAndFlagsBits = 0xD000000000000014;
    sub_AB94A0(v39);
    sub_21B3B0();
    v40._countAndFlagsBits = sub_ABB330();
    sub_AB94A0(v40);

    v41._countAndFlagsBits = 0xD000000000000091;
    v41._object = 0x8000000000B5DB60;
    sub_AB94A0(v41);
    goto LABEL_10;
  }

  v13 = *(v9 + 32);
  v31 = v8;
  v14 = v13(v11, v7, v8);
  v15 = (*&stru_158.sectname[swift_isaMask & *v12])(v14);
  v16 = a2;
  if (v15 && (v17 = v15, v18 = [v15 results], v17, v18))
  {
    v19 = a1;
    isa = sub_AB3770().super.isa;
    v21 = [v18 itemAtIndexPath:isa];
  }

  else
  {
    v19 = a1;
    v21 = 0;
  }

  v22 = v35[4];
  v23 = __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  __chkstk_darwin(v23);
  v24 = (*(v22 + 16))(v21, v16, v11, v19, sub_3E0F5C);
  (*(v9 + 8))(v11, v31);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v35);
  return v24;
}

id sub_3E66EC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  __chkstk_darwin(v3 - 8);
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v7, "init");
  sub_3B4C14(1);
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v5 = sub_AB9260();

  [v4 setTitle:v5];

  return v4;
}

void sub_3E68D8()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v1 = [v0 presentingViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [(objc_class *)v1 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == &dword_0 + 2)
    {
      v5 = [v0 navigationItem];
      sub_13C80(0, &unk_DF12E0);
      sub_13C80(0, &unk_E05310);
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9.value.super.super.isa = sub_ABA7D0();
      v9.is_nil = 0;
      isa = sub_AB9F90(UIBarButtonSystemItemDone, v9, v10).super.super.isa;
      [v5 setRightBarButtonItem:{isa, 0, 0, 0, sub_3E8564, v6}];

      v2 = isa;
    }
  }
}

void sub_3E6A74()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong navigationController];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 viewControllers];
      sub_13C80(0, &qword_DE7500);
      v5 = sub_AB9760();
      if (v5 >> 62)
      {
        v6 = sub_ABB060();
      }

      else
      {
        v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
      }

      if (v6 < 2)
      {
        [v3 dismissViewControllerAnimated:1 completion:0];
      }

      else
      {
        v7 = [v3 popViewControllerAnimated:1];

        v1 = v3;
        v3 = v7;
      }

      v1 = v3;
    }
  }
}

void sub_3E6BBC()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v7 = v1;
    v2 = [v1 viewControllers];
    sub_13C80(0, &qword_DE7500);
    v3 = sub_AB9760();
    if (v3 >> 62)
    {
      v4 = sub_ABB060();
    }

    else
    {
      v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    }

    if (v4 < 2)
    {
      [v7 dismissViewControllerAnimated:1 completion:0];
      v6 = v7;
    }

    else
    {
      v5 = [v7 popViewControllerAnimated:1];

      v6 = v5;
    }
  }
}

void sub_3E6CF4(void *a1)
{
  v1 = a1;
  sub_3E68D8();
}

id sub_3E6D3C(void *a1)
{
  sub_3B316C(a1);
  type metadata accessor for ActionCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  static UICollectionReusableView.reuseIdentifier.getter();
  v3 = sub_AB9260();

  [a1 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v3];

  return [a1 setPrefetchingEnabled:0];
}

void sub_3E6DD0()
{
  v0 = [objc_allocWithZone(MPModelLibraryDownloadQueueRequest) init];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 kindWithVariants:3];
  [v2 setItemKind:v3];

  v4 = sub_AB9260();
  [v2 setLabel:v4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_AF8600;
  *(v5 + 32) = sub_AB92A0();
  *(v5 + 40) = v6;
  *(v5 + 48) = sub_AB92A0();
  *(v5 + 56) = v7;
  *(v5 + 64) = sub_AB92A0();
  *(v5 + 72) = v8;
  *(v5 + 80) = sub_AB92A0();
  *(v5 + 88) = v9;
  *(v5 + 96) = sub_AB92A0();
  *(v5 + 104) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_AF4EC0;
  *(v13 + 32) = sub_AB92A0();
  *(v13 + 40) = v14;
  isa = sub_AB9740().super.isa;
  v16 = objc_opt_self();
  v17 = [v16 propertySetWithProperties:isa];

  *(inited + 48) = v17;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_AF4EC0;
  *(v19 + 32) = sub_AB92A0();
  *(v19 + 40) = v20;
  v21 = sub_AB9740().super.isa;
  v22 = [v16 propertySetWithProperties:v21];

  *(inited + 72) = v22;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
  swift_arrayDestroy();
  v23 = objc_allocWithZone(MPPropertySet);
  v24 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v25 = sub_AB8FD0().super.isa;

  v26 = [v23 initWithProperties:v24 relationships:v25];

  sub_13C80(0, &unk_DE8EB0);
  v27 = sub_2BAFF8();
  v28 = [v26 propertySetByCombiningWithPropertySet:v27];

  [v2 setItemProperties:v28];
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_3E7F5C;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_126;
  v30 = _Block_copy(aBlock);

  [v2 performWithResponseHandler:v30];
  _Block_release(v30);
}

uint64_t sub_3E7294(void *a1, uint64_t a2, uint64_t a3)
{
  sub_13C80(0, &qword_DE8ED0);
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a1;
  v6 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3E7FBC, v5);
}

void sub_3E7338(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      v5 = a2;
      v6 = [v5 results];
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = v6;
      v8 = [v6 totalItemCount];

      if (!v8)
      {
        sub_3E6BBC();
        goto LABEL_8;
      }
    }

    v9 = a2;
    v5 = v4;
    sub_3B4724(a2);
LABEL_8:
  }
}

void sub_3E740C()
{
  v1 = v0;
  v2 = sub_AB3820();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 loadViewIfNeeded];
  v6 = *&v1[qword_DFE2F8];
  if (v6)
  {
    v7 = v6;
    sub_AB37C0();
    isa = sub_AB3770().super.isa;
    (*(v3 + 8))(v5, v2);
    v9 = [v7 cellForItemAtIndexPath:isa];

    if (v9)
    {
      type metadata accessor for ActionCell();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        sub_3E7564(v10);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_3E7564(char *a1)
{
  v3 = sub_AB35C0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_AB9250();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9230();
  __chkstk_darwin(v5 - 8);
  sub_AB9220();
  v26._countAndFlagsBits = 0x206C65636E6143;
  v26._object = 0xE700000000000000;
  sub_AB9210(v26);
  v6 = *(v1 + qword_DFE2F0);
  if (!v6)
  {
    v9 = 0;
    goto LABEL_5;
  }

  result = [v6 results];
  if (result)
  {
    v8 = result;
    v9 = [result totalItemCount];

LABEL_5:
    *&v25[0] = v9;
    sub_AB91F0();
    v27._countAndFlagsBits = 0x616F6C6E776F4420;
    v27._object = 0xEC00000029732864;
    sub_AB9210(v27);
    sub_AB9240();
    sub_AB3550();
    v10 = sub_AB9320();
    v11 = &a1[OBJC_IVAR____TtC16MusicApplication10ActionCell_title];
    *v11 = v10;
    v11[1] = v12;

    v13 = &a1[OBJC_IVAR____TtC16MusicApplication10ActionCell_textComponents];
    swift_beginAccess();
    v14 = sub_419344();
    swift_endAccess();
    v16 = *v11;
    v15 = v11[1];
    swift_beginAccess();
    *(v14 + 112) = v16;
    *(v14 + 120) = v15;

    sub_2EB704();

    [a1 setNeedsLayout];
    a1[OBJC_IVAR____TtC16MusicApplication10ActionCell_titleAlignment] = 3;
    swift_beginAccess();
    *(v13 + 8) = 3;
    v17 = sub_419344();
    sub_419F68(*(v13 + 8), v13[2], v25);
    swift_beginAccess();
    v19 = v17[3];
    v18 = v17[4];
    v20 = v17[6];
    v24[3] = v17[5];
    v24[4] = v20;
    v24[1] = v19;
    v24[2] = v18;
    v24[0] = v17[2];
    v21 = v25[4];
    v17[5] = v25[3];
    v17[6] = v21;
    v22 = v25[1];
    v17[2] = v25[0];
    v17[3] = v22;
    v17[4] = v25[2];
    sub_2F118(v25, &v23);
    sub_2F174(v24);
    sub_2EB2A8();
    swift_endAccess();
    sub_2F174(v25);
  }

  __break(1u);
  return result;
}

uint64_t sub_3E78C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IndexPath.safeItem.getter();
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  if (!v4)
  {
    v10 = *(v6 + 56);
    v11 = a2;
    v12 = 1;
    v13 = v5;

    return v10(v11, v12, 1, v13);
  }

  v14 = *(v5 - 8);
  (*(v6 + 16))(a2, a1, v5);
  v7 = IndexPath.safeItem.getter();
  v8 = __OFSUB__(v7, 1);
  result = v7 - 1;
  if (!v8)
  {
    IndexPath.safeItem.setter();
    v10 = *(v14 + 56);
    v11 = a2;
    v12 = 0;
    v13 = v5;

    return v10(v11, v12, 1, v13);
  }

  __break(1u);
  return result;
}

unint64_t sub_3E79E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_AB3820();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = IndexPath.safeItem.getter();
  v6 = __OFADD__(v5, 1);
  result = v5 + 1;
  if (!v6)
  {
    return IndexPath.safeItem.setter();
  }

  __break(1u);
  return result;
}

uint64_t sub_3E7A64(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_3E8300();

  return v6;
}

uint64_t sub_3E7AB8(uint64_t a1, uint64_t a2)
{
  if (sub_AB37B0())
  {

    return sub_3E61E0(a1, a2);
  }

  else
  {
    v5 = sub_3B3644(a2);
    sub_3E7564(v5);
    return v5;
  }
}

char *sub_3E7B34(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  if (sub_AB37B0())
  {
    v14 = sub_3E61E0(v11, v10);
  }

  else
  {
    v14 = sub_3B3644(v10);
    sub_3E7564(v14);
  }

  (*(v8 + 8))(v10, v7);

  return v14;
}

void sub_3E7C88(void *a1, uint64_t a2)
{
  sub_3B41F4(a1, a2);
  if (!sub_AB37B0())
  {
    v5 = [objc_opt_self() sharedManager];
    v2 = [v5 allMediaDownloadLibraryIdentifiers];
    sub_13C80(0, &qword_DF1300);
    v3 = sub_AB9760();
    sub_12BAF0(v3);
    isa = sub_AB9740().super.isa;

    [v5 cancelDownloads:isa];

    sub_3E6BBC();
  }
}

void sub_3E7DB4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_3E7C88(v11, v10);

  (*(v8 + 8))(v10, v7);
}

uint64_t type metadata accessor for DownloadQueueViewController()
{
  result = qword_E04978;
  if (!qword_E04978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3E7F24()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_126(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3E7F7C()
{

  return swift_deallocObject();
}

id sub_3E7FC4(char *a1, id a2)
{
  v4 = [a2 title];
  if (v4)
  {
    v5 = v4;
    v6 = sub_AB92A0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
  v10 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
  v11 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_title + 8];
  *v9 = v6;
  v9[1] = v8;
  sub_142858(v10, v11);

  v12 = [a2 artist];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 name];
    if (v14)
    {
      v15 = v14;
      v16 = sub_AB92A0();
      v18 = v17;

      goto LABEL_9;
    }
  }

  v16 = 0;
  v18 = 0xE000000000000000;
LABEL_9:
  v19 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
  v20 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
  v21 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8];
  *v19 = v16;
  v19[1] = v18;
  sub_142A70(v20, v21);

  v44[3] = sub_13C80(0, &unk_DE8EB0);
  v44[4] = &off_D179F8;
  v44[0] = a2;
  sub_140D18(v44, v41);
  v22 = v42;
  if (v42)
  {
    v23 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v24 = a2;
    v25 = sub_4CAA30(&off_CEFDE8, v22, v23);
    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  else
  {
    v26 = a2;
    sub_12E1C(v41, &unk_DE9C60);
    v25 = _swiftEmptyArrayStorage;
  }

  sub_178218(v25);

  sub_12E1C(v44, &unk_DE9C60);
  v27 = [a2 album];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 title];
    if (v29)
    {
      v30 = v29;
      v31 = sub_AB92A0();
      v33 = v32;

      goto LABEL_17;
    }
  }

  v31 = 0;
  v33 = 0xE000000000000000;
LABEL_17:
  v34 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle];
  v35 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle];
  v36 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle + 8];
  *v34 = v31;
  v34[1] = v33;
  sub_142D1C(v35, v36);

  v37 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle];
  *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle] = 0;
  sub_143510(v37);
  result = [a1 setSelectionStyle:0];
  a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_forceKeepLocalDownloadVisiblity] = 1;
  v39 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserver];
  if (v39)
  {
    v40 = *(v39 + 48);
    *(v39 + 48) = 1;
    if (v40 != 1)
    {
      sub_13C80(0, &qword_DE8ED0);
      swift_retain_n();
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_206F5C, v39);
    }
  }

  return result;
}

uint64_t sub_3E8300()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = *(v0 + qword_DFE2F0);
  if (!v8)
  {
    return 1;
  }

  v9 = [v8 results];
  if (!v9)
  {
    return 1;
  }

  v10 = v9;
  sub_AB3810();
  if (IndexPath.safeItem.getter())
  {
    (*(v2 + 16))(v7, v4, v1);
    v11 = IndexPath.safeItem.getter();
    v12 = __OFSUB__(v11, 1);
    result = v11 - 1;
    if (v12)
    {
LABEL_15:
      __break(1u);
      return result;
    }

    IndexPath.safeItem.setter();
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = *(v2 + 8);
  v15(v4, v1);
  (*(v2 + 56))(v7, v14, 1, v1);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_12E1C(v7, &unk_DE8E20);
    v16 = 0;
  }

  else
  {
    v17 = IndexPath.safeSection.getter();
    v15(v7, v1);
    v16 = [v10 numberOfItemsInSection:v17];
  }

  result = v16 + 1;
  if (__OFADD__(v16, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_3E856C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBDE8);
    v1 = sub_ABB0C0();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v24 = *(*(a1 + 56) + v11);
    v13 = v12;
    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_9ACFC((v25 + 8), v23);
    sub_9ACFC(v23, v25);
    sub_AB92A0();
    sub_ABB5C0();
    sub_AB93F0();
    v14 = sub_ABB610();

    v15 = -1 << v1[32];
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v6[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v6[8 * v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*&v6[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 6) + 8 * v9) = v13;
    result = sub_9ACFC(v25, (*(v1 + 7) + 32 * v9));
    ++*(v1 + 2);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_3E8814(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEE90);
    v2 = sub_ABB0C0();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_808B0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_9ACFC(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_9ACFC(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_9ACFC(v31, v32);
    result = sub_ABACF0(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_9ACFC(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_3E8ADC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEE90);
    v2 = sub_ABB0C0();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_9ACFC(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_9ACFC(v29, v30);
    result = sub_ABACF0(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_9ACFC(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_3E8DA4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E04F20);
    v2 = sub_ABB0C0();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_808B0(*(a1 + 56) + 32 * v13, v29);
        *&v28 = v15;
        *(&v28 + 1) = v16;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v17 = v28;
        sub_9ACFC(v27, &v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F8);
        swift_dynamicCast();
        sub_9ACFC(&v23, v25);
        sub_9ACFC(v25, v26);
        sub_9ACFC(v26, &v24);
        result = sub_2EBF88(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          result = sub_9ACFC(&v24, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v17;
          result = sub_9ACFC(&v24, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_3E9030(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEE90);
    v2 = sub_ABB0C0();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_9ACFC(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_9ACFC(v29, v30);
    result = sub_ABACF0(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_9ACFC(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_3E92E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEFE0);
    v2 = sub_ABB0C0();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        sub_9ACA0(*(a1 + 56) + 40 * v14, &v29);
        v27 = v17;
        v28 = v16;

        swift_dynamicCast();
        sub_9ACFC(&v23, v25);
        sub_9ACFC(v25, v26);
        sub_9ACFC(v26, &v24);
        result = sub_2EBF88(v17, v16);
        if (v18)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = sub_9ACFC(&v24, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v2[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          result = sub_9ACFC(&v24, (v2[7] + 32 * result));
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_3E9558(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEE90);
    v2 = sub_ABB0C0();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_9ACA0(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_9ACFC(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_9ACFC(v35, v24);
    result = sub_ABACF0(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_9ACFC(v24, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_3E9844(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEE90);
    v2 = sub_ABB0C0();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0A750);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_9ACFC(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_9ACFC(v29, v30);
    result = sub_ABACF0(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_9ACFC(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

char *sub_3E9B14(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_title];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_subtitle];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v4[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_isPlayable] = 1;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_additionalDescription];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v4[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_additionalDescriptionLayoutStyle] = 1;
  *&v4[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_badgeView] = 0;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_textComponents];
  sub_3EC838(v32);
  v13 = v32[1];
  *v12 = v32[0];
  *(v12 + 1) = v13;
  *(v12 + 4) = v33;
  *&v4[OBJC_IVAR____TtC16MusicApplication16SearchResultCell____lazy_storage___disclosureIndicator] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_kind] = 14;
  v31.receiver = v4;
  v31.super_class = type metadata accessor for SearchResultCell();
  v14 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  v15 = v14[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment];
  v14[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = 0;
  v16 = v14;
  v17 = v16;
  if (v15 == 1)
  {
    [v16 setNeedsLayout];
  }

  v18 = &v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets];
  type metadata accessor for UIEdgeInsets(0);
  v19 = *v18;
  v20 = *(v18 + 1);
  *v18 = xmmword_AF7C10;
  *(v18 + 1) = xmmword_B0D430;
  v29 = xmmword_AF7C10;
  v30 = xmmword_B0D430;
  v27 = v19;
  v28 = v20;
  if (sub_AB38D0())
  {
    [v17 setNeedsLayout];
  }

  sub_3EB950();
  v21 = *&v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
  v22 = *(v21 + 144);
  *(v21 + 144) = 2;
  if (v22 != 2)
  {
    v23 = *(v21 + 112);

    v24 = [v23 image];
    sub_788B8(v24);
  }

  v25 = [v17 layer];
  [v25 setAllowsGroupOpacity:0];

  return v17;
}

unint64_t sub_3E9DAC(char a1)
{
  result = 0xD000000000000016;
  switch(a1)
  {
    case 1:
    case 7:
      result = 0xD00000000000001CLL;
      break;
    case 2:
    case 5:
    case 12:
      result = 0xD000000000000015;
      break;
    case 3:
    case 6:
      result = 0xD000000000000018;
      break;
    case 4:
    case 11:
    case 14:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

double sub_3E9F34(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 8u || (v2 = 0.0, a2 != 3) && a2 != 5)
  {
    v3 = objc_opt_self();
    v4 = [v3 defaultMetrics];
    v5 = sub_ABA310();
    __chkstk_darwin(v5);
    sub_AB9EF0();
    v2 = v6;

    v7 = [v3 defaultMetrics];
    v8 = sub_ABA310();
    __chkstk_darwin(v8);
    sub_AB9EF0();
  }

  return v2;
}

uint64_t sub_3EA0F8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_3E9DAC(*a1);
  v5 = v4;
  if (v3 == sub_3E9DAC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_3EA180()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_3E9DAC(v1);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_3EA1E4()
{
  sub_3E9DAC(*v0);
  sub_AB93F0();
}

Swift::Int sub_3EA238()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_3E9DAC(v1);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_3EA298@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_3ED424(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_3EA2C8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_3E9DAC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_3EA330(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_title] != result || *&v2[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_title + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = OBJC_IVAR____TtC16MusicApplication16SearchResultCell_textComponents;
      swift_beginAccess();
      v5 = *&v2[v4];

      v6 = String.trim()();

      swift_beginAccess();
      v5[7] = v6;

      sub_2EB704();

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_3EA450(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_subtitle] != result || *&v2[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_subtitle + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = &v2[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_textComponents];
      swift_beginAccess();
      v5 = *(v4 + 1);

      v6 = String.trim()();

      swift_beginAccess();
      v5[7] = v6;

      sub_2EB704();

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_3EA548(char a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication16SearchResultCell_kind;
  v3 = v1[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_kind];
  v4 = sub_3E9DAC(a1);
  v6 = v5;
  if (v4 == sub_3E9DAC(v3) && v6 == v7)
  {
  }

  else
  {
    v9 = sub_ABB3C0();

    if ((v9 & 1) == 0)
    {
      v11 = v1[v2];
      v12 = [v1 traitCollection];
      v13 = sub_3E9F34(v12, v11);
      v15 = v14;

      v16 = &v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize];
      *v16 = v13;
      *(v16 + 1) = v15;
      v17 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
      v18 = *(v17 + 80);
      v19 = *(v17 + 88);
      *(v17 + 80) = v13;
      *(v17 + 88) = v15;
      return sub_75614(v18, v19);
    }
  }

  return result;
}

uint64_t sub_3EA6A0(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = sub_AB92A0();
  v10 = &a1[*a4];
  v11 = *v10;
  v12 = v10[1];
  *v10 = v9;
  v10[1] = v13;
  v14 = a3;
  v15 = a1;
  a5(v11, v12);
}

uint64_t sub_3EA734(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_additionalDescription];
  v4 = *&v2[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_additionalDescription + 8];
  if (v5 != result || v4 != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v7 = &v3[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_textComponents];
      if (v3[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_additionalDescriptionLayoutStyle] == 2)
      {
        swift_beginAccess();
        v8 = *(v7 + 3);
      }

      else
      {
        swift_beginAccess();
        v8 = *(v7 + 2);
      }

      v9 = String.trim()();

      swift_beginAccess();
      v8[7] = v9;

      sub_2EB704();

      return [v3 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_3EA86C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC16MusicApplication16SearchResultCell_additionalDescriptionLayoutStyle);
  *(v3 + OBJC_IVAR____TtC16MusicApplication16SearchResultCell_additionalDescriptionLayoutStyle) = a3;
  if (v6 != a3)
  {
    sub_3EB950();
  }

  v7 = (v3 + OBJC_IVAR____TtC16MusicApplication16SearchResultCell_additionalDescription);
  v8 = *(v3 + OBJC_IVAR____TtC16MusicApplication16SearchResultCell_additionalDescription);
  v9 = *(v3 + OBJC_IVAR____TtC16MusicApplication16SearchResultCell_additionalDescription + 8);
  *v7 = a1;
  v7[1] = a2;

  sub_3EA734(v8, v9);
}

void sub_3EA8F8()
{
  v1 = v0;
  v125.receiver = v0;
  v125.super_class = type metadata accessor for SearchResultCell();
  objc_msgSendSuper2(&v125, "layoutSubviews");
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v1 music_inheritedLayoutInsets];
  v12 = v11;
  v14 = v13;
  [v1 effectiveUserInterfaceLayoutDirection];
  v15 = v4;
  v16 = v10;
  v119 = UIEdgeInsetsInsetRect(v15, v6, v8, v10, v12, v14);
  v120 = v17;
  v19 = v18;
  rect = v20;
  v21 = &selRef__authenticateReturningError_;
  v22 = [v1 traitCollection];
  v23 = [v22 preferredContentSizeCategory];

  v24 = sub_ABA320();
  v25 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
  v26 = &selRef__authenticateReturningError_;
  [*(v25 + 112) frame];
  sub_ABA4A0();
  v31 = v29;
  v32 = v30;
  v118 = v16;
  if (v29 != 0.0 || v30 != 0.0)
  {
    v33 = v27;
    Width = CGRectGetWidth(*&v27);
    v35 = &v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets];
    sub_AB9E60();
    if (v24)
    {
      v37 = v120 + *v35;
      v126.origin.x = v33;
      v126.origin.y = v37;
      v126.size.width = v31;
      v126.size.height = v32;
      v120 = v120 + CGRectGetMaxY(v126);
      v127.origin.x = v33;
      v127.origin.y = v37;
      v127.size.width = v31;
      v127.size.height = v32;
      rect = rect - CGRectGetMaxY(v127);
      v16 = v118;
    }

    else
    {
      v123 = Width + v36;
      v38 = [v1 traitCollection];
      [v38 displayScale];

      v16 = v118;
      sub_ABA470();
      v31 = v39;
      v32 = v40;
      v119 = v119 + v123;
      v19 = v19 - v123;
    }

    sub_ABA490();
    sub_76B28(v41, v42, v43, v44);
  }

  sub_201644();
  if (v31 == 0.0 && v32 == 0.0)
  {
    v31 = v8;
    v32 = v16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_3EB850();
  sub_19AD0(&off_CEFF18);
  [v1 effectiveUserInterfaceLayoutDirection];
  v46 = *(inited + 16);
  if (v46)
  {
    v114 = v25;
    v117 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl;
    v116 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton;
    v115 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton;
    v47 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_showsContextMenu;
    v48 = 32;
    v49 = 0.0;
    v122 = v31;
    v124 = v32;
    while (1)
    {
      v50 = *(inited + v48);
      if (v50)
      {
        if (v50 == &dword_0 + 1)
        {
          if ((v1[v116] & 1) == 0)
          {
            goto LABEL_13;
          }

          v53 = *&v1[v115];
          if (!v53)
          {
            goto LABEL_13;
          }

          v54 = v53;
          [v54 sizeThatFits:{v31, v32}];
          v128.size.width = v55;
          v57 = v56;
          v128.origin.x = 0.0;
          v128.origin.y = 0.0;
          v128.size.height = v57;
          v58 = CGRectGetWidth(v128);
          if (v58 > 0.0)
          {
            v59 = v58;
          }

          else
          {
            v59 = 0.0;
          }

          goto LABEL_38;
        }

        if (v50 == &dword_0 + 2)
        {
          v51 = *&v1[v117];
          if (v51)
          {
            v52 = v51;
            if (([v52 isHidden] & 1) == 0)
            {
              v54 = v52;
              [v54 sizeThatFits:{v31, v32}];
              v139.size.width = v92;
              v57 = v93;
              v139.origin.x = 0.0;
              v139.origin.y = 0.0;
              v139.size.height = v57;
              v94 = CGRectGetWidth(v139);
              if (v94 > 0.0)
              {
                v59 = v94;
              }

              else
              {
                v59 = 0.0;
              }

LABEL_38:
              v140.origin.x = v119;
              v140.origin.y = v120;
              v140.size.width = v19;
              v140.size.height = rect;
              CGRectGetMaxX(v140);
              v141.origin.x = 0.0;
              v141.origin.y = 0.0;
              v141.size.width = v59;
              v141.size.height = v57;
              CGRectGetWidth(v141);
              v95 = [v1 v21[334]];
              [v95 displayScale];

              v113 = v57;
              sub_ABA470();
              v97 = v96;
              v99 = v98;
              v101 = v100;
              v103 = v102;
              v31 = v122;
              v32 = v124;
              sub_ABA490();
              [v54 setFrame:*&v113];
              v142.origin.x = v97;
              v142.origin.y = v99;
              v142.size.width = v101;
              v142.size.height = v103;
              v49 = v49 + CGRectGetWidth(v142) + 0.0;
              v143.origin.x = v97;
              v143.origin.y = v99;
              v143.size.width = v101;
              v143.size.height = v103;
              v74 = CGRectGetWidth(v143);

LABEL_39:
LABEL_40:
              v19 = v19 - v74;
              goto LABEL_13;
            }
          }
        }

        else
        {
          v75 = v50;
          if (([v75 isHidden] & 1) == 0)
          {
            v76 = v75;
            [v76 sizeThatFits:{v31, v32}];
            v134.size.width = v77;
            v79 = v78;
            v134.origin.x = 0.0;
            v134.origin.y = 0.0;
            v134.size.height = v79;
            v80 = CGRectGetWidth(v134);
            if (v80 > 0.0)
            {
              v81 = v80;
            }

            else
            {
              v81 = 0.0;
            }

            v135.origin.x = v119;
            v135.origin.y = v120;
            v135.size.width = v19;
            v135.size.height = rect;
            CGRectGetMaxX(v135);
            v136.origin.x = 0.0;
            v136.origin.y = 0.0;
            v136.size.width = v81;
            v136.size.height = v79;
            CGRectGetWidth(v136);
            v82 = v21;
            v83 = [v1 v21[334]];
            [v83 displayScale];

            v21 = v82;
            v112 = v79;
            sub_ABA470();
            v85 = v84;
            v87 = v86;
            v89 = v88;
            v91 = v90;
            v31 = v122;
            v32 = v124;
            sub_ABA490();
            [v76 setFrame:*&v112];
            v137.origin.x = v85;
            v137.origin.y = v87;
            v137.size.width = v89;
            v137.size.height = v91;
            v49 = v49 + CGRectGetWidth(v137) + 0.0;
            v138.origin.x = v85;
            v138.origin.y = v87;
            v138.size.width = v89;
            v138.size.height = v91;
            v74 = CGRectGetWidth(v138);
            sub_7FCC4(v50);
            sub_7FCC4(v50);
            goto LABEL_40;
          }

          sub_7FCC4(v50);
        }
      }

      else if (v1[v47])
      {
        v54 = sub_200934();
        [v54 sizeThatFits:{v31, v32}];
        v129.size.width = v60;
        v62 = v61;
        v129.origin.x = 0.0;
        v129.origin.y = 0.0;
        v129.size.height = v62;
        v63 = CGRectGetWidth(v129);
        if (v63 > 0.0)
        {
          v64 = v63;
        }

        else
        {
          v64 = 0.0;
        }

        v130.origin.x = v119;
        v130.origin.y = v120;
        v130.size.width = v19;
        v130.size.height = rect;
        CGRectGetMaxX(v130);
        v131.origin.x = 0.0;
        v131.origin.y = 0.0;
        v131.size.width = v64;
        v131.size.height = v62;
        CGRectGetWidth(v131);
        v65 = [v1 v21[334]];
        [v65 displayScale];

        v111 = v62;
        sub_ABA470();
        v67 = v66;
        v69 = v68;
        v71 = v70;
        v73 = v72;
        v31 = v122;
        v32 = v124;
        sub_ABA490();
        [v54 setFrame:*&v111];
        v132.origin.x = v67;
        v132.origin.y = v69;
        v132.size.width = v71;
        v132.size.height = v73;
        v49 = v49 + CGRectGetWidth(v132) + 0.0;
        v133.origin.x = v67;
        v133.origin.y = v69;
        v133.size.width = v71;
        v133.size.height = v73;
        v74 = CGRectGetWidth(v133);
        goto LABEL_39;
      }

LABEL_13:
      v48 += 8;
      if (!--v46)
      {

        v25 = v114;
        v26 = &selRef__authenticateReturningError_;
        goto LABEL_43;
      }
    }
  }

LABEL_43:
  v104 = *(v25 + 112);
  v105 = *&v1[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_badgeView];
  if (v105)
  {
    v106 = *(*&v105[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] + 16);
    v107 = v104;
    if (v106)
    {
      v108 = v105;
      [v108 v26[107]];
      CGRectGetWidth(v144);
    }
  }

  else
  {
    v109 = v104;
  }

  v110 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
  sub_ABA490();
  [v110 setFrame:?];

  sub_42AD60();
}

void sub_3EB490(id a1)
{
  v2 = v1;
  v33.receiver = v2;
  v33.super_class = type metadata accessor for SearchResultCell();
  objc_msgSendSuper2(&v33, "traitCollectionDidChange:", a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v4 = [v2 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_11:
    v12 = v2[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_kind];
    v13 = [v2 traitCollection];
    v14 = sub_3E9F34(v13, v12);
    v16 = v15;

    v17 = &v2[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize];
    *v17 = v14;
    *(v17 + 1) = v16;
    v18 = *&v2[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
    v19 = *(v18 + 80);
    v20 = *(v18 + 88);
    *(v18 + 80) = v14;
    *(v18 + 88) = v16;
    sub_75614(v19, v20);
    v21 = [v2 traitCollection];
    v22 = [v21 preferredContentSizeCategory];

    LOBYTE(v21) = sub_ABA320();
    if (v21)
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    v24 = &v2[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_textComponents];
    swift_beginAccess();
    v25 = *v24;
    swift_beginAccess();
    *(v25 + 88) = v23;

    sub_2EB2A8();

    v26 = *(v24 + 1);
    swift_beginAccess();
    *(v26 + 88) = v23;

    sub_2EB2A8();

    v27 = *(v24 + 3);
    swift_beginAccess();
    *(v27 + 88) = v23;

    sub_2EB2A8();

    v28 = *(v24 + 2);
    swift_beginAccess();
    *(v28 + 88) = v23;

    sub_2EB2A8();

    if ((v2[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_isPlayable] & 1) == 0)
    {
      v29 = sub_3EB850();
      v30 = [v2 traitCollection];
      v31 = [v30 preferredContentSizeCategory];

      v32 = sub_45B16C();
      [v29 setImage:v32];
    }

    return;
  }

  v6 = sub_AB92A0();
  v8 = v7;
  if (v6 == sub_AB92A0() && v8 == v9)
  {

    return;
  }

  v11 = sub_ABB3C0();

  if ((v11 & 1) == 0)
  {
    goto LABEL_11;
  }
}

id sub_3EB850()
{
  v1 = OBJC_IVAR____TtC16MusicApplication16SearchResultCell____lazy_storage___disclosureIndicator;
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication16SearchResultCell____lazy_storage___disclosureIndicator];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16MusicApplication16SearchResultCell____lazy_storage___disclosureIndicator];
  }

  else
  {
    v4 = [v0 traitCollection];
    v5 = [v4 preferredContentSizeCategory];

    v6 = sub_45B16C();
    v7 = [objc_allocWithZone(UIImageView) initWithImage:v6];

    v8 = [v0 contentView];
    [v8 addSubview:v7];

    v9 = *&v0[v1];
    *&v0[v1] = v7;
    v3 = v7;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_3EB950()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_textComponents];
  v3 = v1[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_additionalDescriptionLayoutStyle];
  swift_beginAccess();
  sub_3EBA98(v3);
  swift_endAccess();
  v4 = *(v2 + 4);
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];

  TextStackView.removeAll()();
  if (!(v4 >> 62))
  {
    v6 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:

    [v1 setNeedsLayout];
    return;
  }

  v6 = sub_ABB060();
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = sub_36003C(i, v4);
      }

      else
      {
        v8 = *(v4 + 8 * i + 32);
      }

      TextStackView.add(_:)(v8);
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_3EBA98(char a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_AF7C50;
  v5 = *v1;
  v6 = v1[1];
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  v9 = v4;
  if (a1)
  {

    sub_AB9730();
    if (*(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v9 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
  }

  else
  {
    v7 = v2[2];

    sub_1AF76C(0, 0, v7);
  }

  v2[4] = v9;
  return result;
}

void sub_3EBBD0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_AB35C0();
  __chkstk_darwin(v7 - 8);
  v8 = sub_AB9250();
  __chkstk_darwin(v8 - 8);
  v9 = sub_AB9230();
  __chkstk_darwin(v9 - 8);
  sub_AB9220();
  v54._countAndFlagsBits = 0x203A73636972794CLL;
  v54._object = 0xAB000000009C80E2;
  sub_AB9210(v54);
  v55._countAndFlagsBits = a1;
  v55._object = a2;
  v10 = 0x3E6B72616D3CLL;
  sub_AB9200(v55);
  v56._countAndFlagsBits = 10322146;
  v56._object = 0xA300000000000000;
  sub_AB9210(v56);
  sub_AB9240();
  sub_AB3550();
  sub_AB9320();
  sub_3E856C(a3);
  v11 = objc_allocWithZone(NSMutableAttributedString);
  v12 = sub_AB9260();
  type metadata accessor for Key(0);
  sub_3FB3C();
  isa = sub_AB8FD0().super.isa;

  v14 = [v11 initWithString:v12 attributes:isa];

  sub_ABAD90(18);

  v57._countAndFlagsBits = 0x3E6B72616D3CLL;
  v57._object = 0xE600000000000000;
  sub_AB94A0(v57);
  v58._countAndFlagsBits = 0x3F28293F2B2E2829;
  v58._object = 0xEA00000000003D3CLL;
  sub_AB94A0(v58);
  v59._countAndFlagsBits = 0x3E6B72616D2F3CLL;
  v59._object = 0xE700000000000000;
  sub_AB94A0(v59);
  v60._countAndFlagsBits = 41;
  v60._object = 0xE100000000000000;
  sub_AB94A0(v60);
  v15 = objc_allocWithZone(NSRegularExpression);
  v16 = sub_3ED260(4013864, 0xE300000000000000, 1);

  if (!v16)
  {

    return;
  }

  v17 = v16;
  v18 = sub_AB9500();

  v19 = sub_AB9260();
  v51 = v17;
  v20 = [v17 matchesInString:v19 options:0 range:{0, v18}];

  sub_13C80(0, &unk_E04F00);
  v21 = sub_AB9760();
  v22 = v21;
  if (!(v21 >> 62))
  {
    v23 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
    if (v23)
    {
      goto LABEL_6;
    }

LABEL_17:

    v37 = _swiftEmptyArrayStorage[2];
    if (!v37)
    {
LABEL_26:

      return;
    }

    goto LABEL_18;
  }

  v23 = sub_ABB060();
  if (!v23)
  {
    goto LABEL_17;
  }

LABEL_6:
  v52 = v20;
  sub_6D800(0, v23 & ~(v23 >> 63), 0);
  if ((v23 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    v25 = v22;
    v26 = v22 & 0xC000000000000001;
    v27 = v22;
    v28 = v23;
    do
    {
      if (v26)
      {
        v29 = sub_3616DC(v24, v25);
      }

      else
      {
        v29 = *(v25 + 8 * v24 + 32);
      }

      v30 = v29;
      v31 = [v29 range];
      v33 = v32;

      v35 = _swiftEmptyArrayStorage[2];
      v34 = _swiftEmptyArrayStorage[3];
      if (v35 >= v34 >> 1)
      {
        sub_6D800((v34 > 1), v35 + 1, 1);
      }

      ++v24;
      _swiftEmptyArrayStorage[2] = v35 + 1;
      v36 = &_swiftEmptyArrayStorage[2 * v35];
      v36[4] = v31;
      v36[5] = v33;
      v25 = v27;
    }

    while (v28 != v24);

    v10 = 0x3E6B72616D3CLL;
    v37 = _swiftEmptyArrayStorage[2];
    if (!v37)
    {
      goto LABEL_26;
    }

LABEL_18:
    v38 = &_swiftEmptyArrayStorage[2 * v37 + 3];
    while (v37 <= _swiftEmptyArrayStorage[2])
    {
      v40 = *(v38 - 1);
      v41 = *v38;
      v42 = sub_AB9420();
      v43 = v40 + v42;
      if (__OFADD__(v40, v42))
      {
        goto LABEL_28;
      }

      v44 = sub_AB9420();
      v45 = sub_AB9420();
      v46 = v44 + v45;
      if (__OFADD__(v44, v45))
      {
        goto LABEL_29;
      }

      v47 = v41 - v46;
      if (__OFSUB__(v41, v46))
      {
        goto LABEL_30;
      }

      v48 = v10;
      v49 = sub_AB9260();
      v50 = [v49 substringWithRange:{v43, v47}];

      if (!v50)
      {
        sub_AB92A0();
        v50 = sub_AB9260();
      }

      --v37;
      sub_3E856C(a4);
      v39 = sub_AB8FD0().super.isa;

      [v14 addAttributes:v39 range:{v40, v41}];

      [v14 replaceCharactersInRange:v40 withString:{v41, v50}];
      v38 -= 2;
      v10 = v48;
      if (!v37)
      {
        goto LABEL_26;
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

  __break(1u);
}

void sub_3EC288()
{

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication16SearchResultCell____lazy_storage___disclosureIndicator);
}

id sub_3EC358()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchResultCell()
{
  result = qword_E04EC8;
  if (!qword_E04EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSIdentifierSet.ContentKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JSIdentifierSet.ContentKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_3EC6A8()
{
  result = qword_E04ED8;
  if (!qword_E04ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E04EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E04ED8);
  }

  return result;
}

unint64_t sub_3EC710()
{
  result = qword_E04EE8;
  if (!qword_E04EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E04EE8);
  }

  return result;
}

unint64_t sub_3EC768()
{
  result = qword_E04EF0;
  if (!qword_E04EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E04EF0);
  }

  return result;
}

void *sub_3EC808()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication16SearchResultCell_badgeView);
  v2 = v1;
  return v1;
}

uint64_t sub_3EC838@<X0>(uint64_t *a1@<X8>)
{
  v1 = objc_opt_self();
  v32 = [v1 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v2 = qword_E718D8;
  v3 = objc_opt_self();
  v28 = v2;
  v31 = [v3 clearColor];
  v30 = [v1 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v29 = qword_E718C8;
  v4 = qword_E718C8;
  v27 = [v3 clearColor];
  v24 = [v1 preferredFontForTextStyle:UIFontTextStyleCaption2];
  v23 = [v3 tertiaryLabelColor];
  v26 = [v3 clearColor];
  v5 = [objc_opt_self() defaultParagraphStyle];
  [v5 mutableCopy];

  sub_ABAB50();
  sub_13C80(0, &unk_E05360);
  swift_dynamicCast();
  v6 = v68[0];
  swift_unknownObjectRelease();
  [v68[0] setLineBreakMode:4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFA730);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_AF8820;
  *(v7 + 32) = NSFontAttributeName;
  v8 = NSFontAttributeName;
  *(v7 + 40) = [v1 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  *(v7 + 48) = NSForegroundColorAttributeName;
  *(v7 + 56) = v4;
  *(v7 + 64) = NSParagraphStyleAttributeName;
  *(v7 + 72) = v6;
  v9 = NSForegroundColorAttributeName;
  v10 = NSParagraphStyleAttributeName;
  v22 = v6;
  v11 = sub_96A34(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFC590);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF4EC0;
  *(v12 + 32) = v9;
  v13 = v12 + 32;
  *(v12 + 40) = v28;
  v14 = sub_96A34(v12);
  swift_setDeallocating();
  sub_3ED1B0(v13);
  swift_deallocClassInstance();
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  *(v15 + 24) = v14;
  *&v51[0] = v28;
  *(&v51[0] + 1) = v31;
  v51[1] = xmmword_AF7C20;
  v52 = 0;
  v53 = 0;
  v54 = v32;
  v55 = 1;
  v56 = xmmword_AF7C30;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v21 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v51);
  *&v45[0] = v29;
  *(&v45[0] + 1) = v27;
  v45[1] = xmmword_AF7C20;
  v46 = 0;
  v47 = 0;
  v48 = v30;
  v49 = 1;
  v50 = xmmword_AF7C30;
  swift_allocObject();
  v16 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v45);
  *&v39[0] = v23;
  *(&v39[0] + 1) = v26;
  v39[1] = xmmword_AF7C20;
  v40 = 0;
  v41 = 0;
  v42 = v24;
  v43 = 1;
  v44 = xmmword_B03470;
  swift_allocObject();
  v17 = TextStackView.Component.init(identifier:labelProperties:)(0xD00000000000001CLL, 0x8000000000B633E0, v39);
  *&v33 = 0xD00000000000001ALL;
  *(&v33 + 1) = 0x8000000000B633C0;
  v34 = sub_3ED258;
  v35 = v15;
  v36 = xmmword_AFA860;
  v37 = xmmword_AF82C0;
  v38 = xmmword_AF7C30;
  swift_allocObject();
  v18 = TextStackView.Component.init(identifier:labelProperties:)(0xD000000000000010, 0x8000000000B63400, &v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_AF82E0;
  *(v19 + 32) = v21;
  *(v19 + 40) = v16;
  *(v19 + 48) = v17;
  sub_2F118(v51, v75);

  sub_2F118(v45, v75);

  sub_2F118(v39, v75);

  sub_2F118(&v33, v75);

  v57[0] = 0xD00000000000001ALL;
  v57[1] = 0x8000000000B633C0;
  v57[2] = sub_3ED258;
  v57[3] = v15;
  v58 = xmmword_AFA860;
  v59 = xmmword_AF82C0;
  v60 = xmmword_AF7C30;
  sub_2F174(v57);
  v61[0] = v23;
  v61[1] = v26;
  v62 = xmmword_AF7C20;
  v64 = 0;
  v63 = 0;
  v65 = v24;
  v66 = 1;
  v67 = xmmword_B03470;
  sub_2F174(v61);
  v68[0] = v29;
  v68[1] = v27;
  v69 = xmmword_AF7C20;
  v70 = 0;
  v71 = 0;
  v72 = v30;
  v73 = 1;
  v74 = xmmword_AF7C30;
  sub_2F174(v68);
  v75[0] = v28;
  v75[1] = v31;
  v76 = xmmword_AF7C20;
  v77 = 0;
  v78 = 0;
  v79 = v32;
  v80 = 1;
  v81 = xmmword_AF7C30;
  result = sub_2F174(v75);
  *a1 = v21;
  a1[1] = v16;
  a1[2] = v17;
  a1[3] = v18;
  a1[4] = v19;
  return result;
}

double sub_3ECF40(void *a1)
{
  sub_3EC838(v9);
  v2 = objc_opt_self();
  v3 = [v2 defaultMetrics];
  v4 = sub_ABA310();
  sub_AB9EF0();

  v5 = [v2 defaultMetrics];
  v6 = sub_ABA310();
  sub_AB9EF0();

  type metadata accessor for CGSize(0);
  if (sub_AB38D0() & 1) != 0 || (type metadata accessor for UIEdgeInsets(0), (sub_AB38D0()))
  {
    sub_AB9EC0();
  }

  sub_2F48A4(v9[4], a1, 0, 0);
  v7 = [a1 preferredContentSizeCategory];
  sub_ABA320();

  return -1.0;
}

uint64_t sub_3ED1B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFC590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3ED218()
{

  return swift_deallocObject();
}

id sub_3ED260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_AB9260();
  v11 = 0;
  v7 = [v4 initWithPattern:v6 options:a3 error:&v11];
  if (v7)
  {
    v8 = v11;
  }

  else
  {
    v9 = v11;
    sub_AB3050();

    swift_willThrow();
  }

  return v7;
}

void sub_3ED334()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication16SearchResultCell_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication16SearchResultCell_subtitle);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication16SearchResultCell_isPlayable) = 1;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication16SearchResultCell_additionalDescription);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication16SearchResultCell_additionalDescriptionLayoutStyle) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication16SearchResultCell_badgeView) = 0;
  v4 = v0 + OBJC_IVAR____TtC16MusicApplication16SearchResultCell_textComponents;
  sub_3EC838(v6);
  v5 = v6[1];
  *v4 = v6[0];
  *(v4 + 16) = v5;
  *(v4 + 32) = v7;
  *(v0 + OBJC_IVAR____TtC16MusicApplication16SearchResultCell____lazy_storage___disclosureIndicator) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_3ED424(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CF15A0;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v4;
  }
}

void sub_3ED470()
{
  v1 = v0;
  v2 = sub_AB2A90();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_AB31C0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  sub_3EDAEC(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_12E1C(v8, &unk_DF2AE0);
    sub_AB9F30();
    sub_13C80(0, &qword_DED8C0);
    v16 = sub_ABA980();
    sub_AB4A90();
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v13, v15, v9);
    sub_AB2A50();
    sub_AB2A20();
    sub_13C80(0, &unk_DF2B00);
    v17 = static ICUserIdentity.active.getter();
    v18 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v17];

    v19 = objc_allocWithZone(ICStoreURLRequest);
    v28 = v2;
    v20 = v19;
    v21 = v18;
    v22 = sub_AB2A30();
    v23 = [v20 initWithURLRequest:v22 requestContext:v21];

    sub_13C80(0, &qword_E07CC0);
    v24 = static ICURLSessionManager.musicSession.getter();
    v25 = swift_allocObject();
    *(v25 + 16) = v1;
    v26 = v1;
    ICURLSession.enqueueDataRequestRecordingPerformanceMetrics(_:_:)(v23, sub_3EDFE4, v25);

    (*(v3 + 8))(v5, v28);
    (*(v10 + 8))(v15, v9);
  }
}

void sub_3ED864(void *a1, uint64_t a2, char *a3)
{
  if (a1)
  {
    v5 = [a1 parsedBodyArray];
    if (v5)
    {
      v6 = v5;
      v7 = sub_AB9760();

      v8 = sub_12DD64(v7);

      if (v8)
      {
        v9 = v8[2];
        if (v9)
        {
          v10 = v8 + 4;
          v11 = _swiftEmptyArrayStorage;
          do
          {

            sub_3EDFEC(v14, &v23);

            v15 = v24;
            if (v24)
            {
              v16 = v23;
              v27 = v25;
              v28 = v26;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v11 = sub_6C7D0(0, *(v11 + 2) + 1, 1, v11);
              }

              v18 = *(v11 + 2);
              v17 = *(v11 + 3);
              if (v18 >= v17 >> 1)
              {
                v11 = sub_6C7D0((v17 > 1), v18 + 1, 1, v11);
              }

              *(v11 + 2) = v18 + 1;
              v12 = &v11[40 * v18];
              *(v12 + 4) = v16;
              *(v12 + 5) = v15;
              v13 = v27;
              *(v12 + 8) = v28;
              *(v12 + 3) = v13;
            }

            ++v10;
            --v9;
          }

          while (v9);
        }

        else
        {
          v11 = _swiftEmptyArrayStorage;
        }

        v21 = *&a3[OBJC_IVAR____TtC16MusicApplication44PersonalMixFeedbackQuestionsRequestOperation_responseHandler];

        v21(v11, 0);

        if (!a2)
        {
          goto LABEL_17;
        }

LABEL_14:
        v20 = sub_AB3040();
        goto LABEL_18;
      }
    }
  }

  v19 = *&a3[OBJC_IVAR____TtC16MusicApplication44PersonalMixFeedbackQuestionsRequestOperation_responseHandler];

  v19(_swiftEmptyArrayStorage, a2);

  if (a2)
  {
    goto LABEL_14;
  }

LABEL_17:
  v20 = 0;
LABEL_18:
  v22 = v20;
  [a3 finishWithError:?];
}

uint64_t sub_3EDAEC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E07D40);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_AB2CE0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB2C40();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_12E1C(v4, &unk_E07D40);
    v9 = sub_AB31C0();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v11._countAndFlagsBits = 0x646565662F31762FLL;
    v11._object = 0xEC0000006B636162;
    URLComponents.appendPath(_:)(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEA98);
    sub_AB2C10();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_AF4EC0;
    sub_AB2BE0();
    URLComponents.appendQueryItems(_:)(v12);

    sub_AB2C50();
    return (*(v6 + 8))(v8, v5);
  }
}

id sub_3EDDE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersonalMixFeedbackQuestionsRequestOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PersonalMixFeedbackQuestionsRequestOperation()
{
  result = qword_E04F58;
  if (!qword_E04F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3EDF04()
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

uint64_t sub_3EDFAC()
{

  return swift_deallocObject();
}

uint64_t sub_3EDFEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_ABAD10();
  if (!*(a1 + 16) || (v4 = sub_2EC004(v28), (v5 & 1) == 0))
  {
    result = sub_8085C(v28);
    goto LABEL_9;
  }

  sub_808B0(*(a1 + 56) + 32 * v4, v29);
  sub_8085C(v28);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_9:
    v7 = 0;
    v8 = 0;
    v12 = 0;
    v11 = 0;
    v13 = 0;
    goto LABEL_10;
  }

  v7 = 0x6E6F697473657571;
  v8 = 0xEA00000000006449;
  sub_ABAD10();
  if (*(a1 + 16) && (v9 = sub_2EC004(v28), (v10 & 1) != 0))
  {
    sub_808B0(*(a1 + 56) + 32 * v9, v29);
    sub_8085C(v28);
    if (swift_dynamicCast())
    {
      v12 = 0xD000000000000013;
      v11 = 0x8000000000B63520;
      goto LABEL_13;
    }
  }

  else
  {
    sub_8085C(v28);
  }

  v12 = 0;
  v11 = 0xE000000000000000;
LABEL_13:
  sub_ABAD10();
  if (*(a1 + 16) && (v14 = sub_2EC004(v28), (v15 & 1) != 0))
  {
    sub_808B0(*(a1 + 56) + 32 * v14, v29);
    sub_8085C(v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E27CA0);
    result = swift_dynamicCast();
    if (result)
    {
      v16 = MEMORY[0x736E6F6974707F];
      if (MEMORY[0x736E6F6974707F])
      {
        v13 = _swiftEmptyArrayStorage;
        v17 = 32;
        while (1)
        {
          v18 = *(v17 + 0x736E6F6974706FLL);

          sub_ABAD10();
          if (*(v18 + 16) && (v19 = sub_2EC004(v28), (v20 & 1) != 0))
          {
            sub_808B0(*(v18 + 56) + 32 * v19, v29);
            sub_8085C(v28);
            if (swift_dynamicCast())
            {
              sub_ABAD10();
              if (*(v18 + 16) && (v21 = sub_2EC004(v28), (v22 & 1) != 0))
              {
                sub_808B0(*(v18 + 56) + 32 * v21, v29);
                sub_8085C(v28);
                if (swift_dynamicCast())
                {
                  v26 = 0x8000000000B63540;
                  v27 = 0xD000000000000011;

LABEL_30:
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v13 = sub_6C6A8(0, *(v13 + 2) + 1, 1, v13);
                  }

                  v24 = *(v13 + 2);
                  v23 = *(v13 + 3);
                  if (v24 >= v23 >> 1)
                  {
                    v13 = sub_6C6A8((v23 > 1), v24 + 1, 1, v13);
                  }

                  *(v13 + 2) = v24 + 1;
                  v25 = &v13[32 * v24];
                  *(v25 + 4) = 0x64496E6F6974706FLL;
                  *(v25 + 5) = 0xE800000000000000;
                  *(v25 + 6) = v27;
                  *(v25 + 7) = v26;
                  goto LABEL_19;
                }
              }

              else
              {
                sub_8085C(v28);
              }

              v26 = 0xE000000000000000;
              v27 = 0;
              goto LABEL_30;
            }
          }

          else
          {
            sub_8085C(v28);
          }

LABEL_19:
          v17 += 8;
          if (!--v16)
          {

            goto LABEL_10;
          }
        }
      }
    }
  }

  else
  {
    result = sub_8085C(v28);
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_10:
  *a2 = v7;
  a2[1] = v8;
  a2[2] = v12;
  a2[3] = v11;
  a2[4] = v13;
  return result;
}

uint64_t sub_3EE46C(uint64_t a1, uint64_t a2)
{
  result = *&v2[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_title];
  if (result != a1 || *&v2[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_title + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v6 = sub_3EF960();

      v7 = sub_AB9260();

      [v6 setText:v7];

      v8 = *&v2[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView____lazy_storage___headerTitleLabel];

      v9 = sub_AB9260();
      v10 = [v9 _isNaturallyRTL];

      v11 = v10 ? 2 : 0;
      [v8 setTextAlignment:v11];

      result = [v2 setNeedsLayout];
      v12 = *&v2[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_layoutInvalidationHandler];
      if (v12)
      {

        v12(v2);

        return sub_17654(v12);
      }
    }
  }

  return result;
}

id sub_3EE5E8(void *a1)
{
  v2 = v1;
  v24.receiver = v1;
  v24.super_class = type metadata accessor for GroupedTextListView();
  objc_msgSendSuper2(&v24, "traitCollectionDidChange:", a1);
  v4 = sub_3EF960();
  sub_89F60();
  v5 = sub_ABA550();
  [v4 setFont:v5];

  v6 = &selRef__authenticateReturningError_;
  [v2 setNeedsLayout];
  v7 = &v2[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_layoutInvalidationHandler];
  v8 = *&v2[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_layoutInvalidationHandler];
  if (v8)
  {

    v8(v2);
    sub_17654(v8);
  }

  v9 = [v2 traitCollection];
  v10 = [v9 preferredContentSizeCategory];

  if (a1)
  {
    v11 = [a1 preferredContentSizeCategory];
    v12 = sub_AB92A0();
    v14 = v13;
    if (v12 == sub_AB92A0() && v14 == v15)
    {

      v6 = &selRef__authenticateReturningError_;
      goto LABEL_11;
    }

    v23 = sub_ABB3C0();

    v6 = &selRef__authenticateReturningError_;
    if (v23)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v16 = *&v2[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView____lazy_storage___headerTitleLabel];
  v17 = sub_ABA550();
  [v16 setFont:v17];

  [v2 setNeedsLayout];
  v18 = *v7;
  if (*v7)
  {

    v18(v2);
    sub_17654(v18);
  }

LABEL_11:
  v19 = [v2 traitCollection];
  v20 = [v19 horizontalSizeClass];

  if (!a1 || (result = [a1 horizontalSizeClass], v20 != result))
  {
    result = [v2 v6[281]];
    v22 = *v7;
    if (*v7)
    {

      v22(v2);
      return sub_17654(v22);
    }
  }

  return result;
}

void sub_3EE9E8(double a1, double a2)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  [v6 displayScale];
  v7 = [v6 horizontalSizeClass];
  [v2 music_inheritedLayoutInsets];
  v9 = v8;
  v11 = v10;
  [v2 bounds];
  v14 = UIEdgeInsetsInsetRect(v12, v13, a1, a2, v9, v11);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = *&v2[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_title + 8];
  if ((v21 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v22 = *&v2[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_title] & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v23 = sub_3EF960();
    v53.origin.x = v14;
    v53.origin.y = v16;
    v53.size.width = v18;
    v53.size.height = v20;
    [v23 sizeThatFits:{CGRectGetWidth(v53), 1.79769313e308}];
    v25 = v24;

    v54.origin.x = v14;
    v54.origin.y = v16;
    v54.size.width = v18;
    v54.size.height = v20;
    CGRectGetMinY(v54);
    sub_89F60();
    v26 = sub_ABA550();
    [v26 _scaledValueForValue:36.0];

    v27 = OBJC_IVAR____TtC16MusicApplication19GroupedTextListView____lazy_storage___headerTitleLabel;
    [*&v3[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView____lazy_storage___headerTitleLabel] _firstBaselineOffsetFromTop];
    sub_AB39F0();
    v55.origin.y = v28;
    v55.origin.x = v14;
    v55.size.width = v18;
    v55.size.height = v25;
    CGRectGetMaxY(v55);
    [*&v3[v27] _baselineOffsetFromBottom];
  }

  v29 = OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_stackViews;
  swift_beginAccess();
  v30 = *&v3[v29];
  if (!(v30 >> 62))
  {
    v31 = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8));
    if (v31)
    {
      goto LABEL_8;
    }

LABEL_23:
    v34 = _swiftEmptyArrayStorage;
    v35 = 0.0;
    v36 = 0.0;
    v43 = _swiftEmptyArrayStorage[2];
    if (!v43)
    {
LABEL_34:

      return;
    }

LABEL_24:
    v44 = *&v3[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_numberOfColumns];
    if (v43 < v44)
    {
      v44 = v43;
    }

    v45 = v36 / v44;
    v46 = (v34 + 32);
    if (v7 != &dword_0 + 1)
    {
      v45 = v35;
    }

    v47 = v43 - 1;
    v48 = 0.0;
    do
    {
      v49 = *v46++;
      v48 = v48 + v49;
    }

    while (v45 > v48 && v47-- != 0);
    goto LABEL_34;
  }

  v31 = sub_ABB060();
  if (!v31)
  {
    goto LABEL_23;
  }

LABEL_8:
  if (v31 >= 1)
  {
    rect = v14;
    v32 = v16;
    v51 = v7;

    v33 = 0;
    v34 = _swiftEmptyArrayStorage;
    v35 = 0.0;
    v36 = 0.0;
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v37 = sub_360398(v33, v30);
      }

      else
      {
        v37 = *(v30 + 8 * v33 + 32);
      }

      v38 = v37;
      [v37 layoutIfNeeded];
      v56.origin.x = rect;
      v56.origin.y = v32;
      v56.size.width = v18;
      v56.size.height = v20;
      [v38 sizeThatFits:{CGRectGetWidth(v56), 1.79769313e308}];
      v40 = v39;
      if (v35 <= v39)
      {
        v35 = v39;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_6C8F0(0, *(v34 + 2) + 1, 1, v34);
      }

      v42 = *(v34 + 2);
      v41 = *(v34 + 3);
      if (v42 >= v41 >> 1)
      {
        v34 = sub_6C8F0((v41 > 1), v42 + 1, 1, v34);
      }

      ++v33;
      *(v34 + 2) = v42 + 1;
      *&v34[8 * v42 + 32] = v40;

      v36 = v36 + v40;
    }

    while (v31 != v33);

    v7 = v51;
    v43 = *(v34 + 2);
    if (!v43)
    {
      goto LABEL_34;
    }

    goto LABEL_24;
  }

  __break(1u);
}

void sub_3EEEA8()
{
  v1 = v0;
  v84.receiver = v0;
  v84.super_class = type metadata accessor for GroupedTextListView();
  objc_msgSendSuper2(&v84, "layoutSubviews");
  v2 = [v0 traitCollection];
  [v2 displayScale];
  v4 = v3;
  [v0 music_inheritedLayoutInsets];
  v6 = v5;
  v8 = v7;
  [v0 bounds];
  v10 = v9;
  v82 = v12;
  v83 = v11;
  rect = v13;
  v14 = UIEdgeInsetsInsetRect(v11, v12, v13, v9, v6, v8);
  v79 = v15;
  v17 = v16;
  v19 = v18 + -16.0;
  v20 = &v0[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_title];

  v21 = sub_AB9260();
  v22 = [v21 _isNaturallyRTL];

  v23 = v1[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_wantsTopSeparator];
  v24 = sub_3EF8A0();
  v25 = v24;
  v78 = v14;
  if (v23 == 1)
  {
    v26 = [v24 isDescendantOfView:v1];

    if ((v26 & 1) == 0)
    {
      [v1 addSubview:*&v1[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView____lazy_storage___separator]];
    }

    [v1 bounds];
    v28 = v27;
    v30 = v29 - v8;
    v31 = 1.0 / v4;
    if (v22)
    {
      v85.origin.y = v82;
      v85.origin.x = v83;
      v85.size.width = rect;
      v85.size.height = v10;
      v76 = v19;
      v32 = v17;
      MaxX = CGRectGetMaxX(v85);
      v86.origin.x = v8;
      v86.origin.y = v28;
      v86.size.width = v30;
      v86.size.height = 1.0 / v4;
      v34 = MaxX - CGRectGetWidth(v86);
      v17 = v32;
      v19 = v76;
      v87.origin.x = v8;
      v87.origin.y = v28;
      v87.size.width = v30;
      v87.size.height = v31;
      v8 = v34 - CGRectGetMinX(v87);
    }

    [*&v1[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView____lazy_storage___separator] setFrame:{v8, v28, v30, v31}];
    v14 = v78;
    v35 = v31 + v79;
    v19 = v19 - v31;
  }

  else
  {
    [v24 removeFromSuperview];

    v35 = v79;
  }

  v36 = *(v20 + 1);
  if ((v36 & 0x2000000000000000) != 0)
  {
    v37 = HIBYTE(v36) & 0xF;
  }

  else
  {
    v37 = *v20 & 0xFFFFFFFFFFFFLL;
  }

  v38 = sub_3EF960();
  v39 = v38;
  if (v37)
  {
    v40 = [v38 isDescendantOfView:v1];

    if ((v40 & 1) == 0)
    {
      [v1 addSubview:*&v1[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView____lazy_storage___headerTitleLabel]];
    }

    v41 = OBJC_IVAR____TtC16MusicApplication19GroupedTextListView____lazy_storage___headerTitleLabel;
    v42 = *&v1[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView____lazy_storage___headerTitleLabel];
    v88.origin.x = v14;
    v88.origin.y = v35;
    v88.size.width = v17;
    v88.size.height = v19;
    [v42 sizeThatFits:{CGRectGetWidth(v88), 1.79769313e308}];
    v44 = v43;

    v89.origin.x = v14;
    v89.origin.y = v35;
    v89.size.width = v17;
    v89.size.height = v19;
    CGRectGetMinY(v89);
    sub_89F60();
    v45 = sub_ABA550();
    [v45 _scaledValueForValue:36.0];

    [*&v1[v41] _firstBaselineOffsetFromTop];
    sub_AB39F0();
    v47 = v46;
    if (v22)
    {
      v90.origin.y = v82;
      v90.origin.x = v83;
      v90.size.width = rect;
      v90.size.height = v10;
      v48 = CGRectGetMaxX(v90);
      v91.origin.x = v14;
      v91.origin.y = v47;
      v91.size.width = v17;
      v91.size.height = v44;
      v49 = v48 - CGRectGetWidth(v91);
      v92.origin.x = v14;
      v92.origin.y = v47;
      v92.size.width = v17;
      v92.size.height = v44;
      v50 = v49 - CGRectGetMinX(v92);
    }

    else
    {
      v50 = v14;
    }

    [*&v1[v41] setFrame:{v50, v47, v17, v44}];
    v93.origin.x = v50;
    v93.origin.y = v47;
    v93.size.width = v17;
    v93.size.height = v44;
    MaxY = CGRectGetMaxY(v93);
    [*&v1[v41] _baselineOffsetFromBottom];
    v35 = MaxY - v52;
  }

  else
  {
    [v38 removeFromSuperview];
  }

  v94.origin.x = v14;
  v94.origin.y = v35;
  v94.size.width = v17;
  v94.size.height = v19;
  Width = CGRectGetWidth(v94);
  v54 = *&v1[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_numberOfColumns];
  v55 = OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_stackViews;
  swift_beginAccess();
  v56 = *&v1[v55];
  if (v56 >> 62)
  {
    v57 = sub_ABB060();
    if (v57)
    {
      goto LABEL_21;
    }

LABEL_39:

    return;
  }

  v57 = *(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8));
  if (!v57)
  {
    goto LABEL_39;
  }

LABEL_21:
  if (v57 >= 1)
  {
    v75 = v17;
    v58 = (Width + v54 * -10.0) / v54;
    v77 = v19;
    v59 = v19 + -1.0;
    v60 = v56 & 0xC000000000000001;

    v80 = v35;
    v61 = v35;
    v62 = 0;
    if ((v56 & 0xC000000000000001) != 0)
    {
      goto LABEL_27;
    }

LABEL_28:
    for (i = *(v56 + 32 + 8 * v62); ; i = sub_360398(v62, v56))
    {
      v67 = i;
      v68 = v62 + 1;
      [v1 addSubview:{i, *&v75}];
      v98.origin.x = v14;
      v98.origin.y = v61;
      v98.size.width = v58;
      v98.size.height = v59;
      [v67 sizeThatFits:{CGRectGetWidth(v98), 100.0}];
      v70 = v69;
      if (v59 < v69)
      {
        v99.origin.x = v14;
        v99.origin.y = v61;
        v99.size.width = v58;
        v99.size.height = v59;
        v14 = v14 + CGRectGetWidth(v99) + 10.0;
        v100.origin.x = v78;
        v100.origin.y = v80;
        v100.size.width = v75;
        v100.size.height = v77;
        Height = CGRectGetHeight(v100);
        v72 = v14;
        if (v22)
        {
          v101.origin.y = v82;
          v101.origin.x = v83;
          v101.size.width = rect;
          v101.size.height = v10;
          v73 = CGRectGetMaxX(v101);
          v102.origin.x = v14;
          v102.origin.y = v80;
          v102.size.width = v58;
          v102.size.height = v70;
          v74 = v73 - CGRectGetWidth(v102);
          v103.origin.x = v14;
          v103.origin.y = v80;
          v103.size.width = v58;
          v103.size.height = v70;
          v72 = v74 - CGRectGetMinX(v103);
        }

        v59 = Height + -1.0 - v70;
        [v67 setFrame:{v72, v80, v58, v70}];

        v61 = v80 + v70;
        if (v57 - 1 == v62)
        {
LABEL_37:

          return;
        }

        ++v62;
        if (!v60)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v22)
        {
          v95.origin.y = v82;
          v95.origin.x = v83;
          v95.size.width = rect;
          v95.size.height = v10;
          v63 = CGRectGetMaxX(v95);
          v96.origin.x = v14;
          v96.origin.y = v61;
          v96.size.width = v58;
          v96.size.height = v70;
          v64 = v63 - CGRectGetWidth(v96);
          v97.origin.x = v14;
          v97.origin.y = v61;
          v97.size.width = v58;
          v97.size.height = v70;
          v65 = v64 - CGRectGetMinX(v97);
        }

        else
        {
          v65 = v14;
        }

        [v67 setFrame:{v65, v61, v58, v70}];

        v59 = v59 - v70;
        v61 = v61 + v70;
        ++v62;
        if (v57 == v68)
        {
          goto LABEL_37;
        }

        if (!v60)
        {
          goto LABEL_28;
        }
      }

LABEL_27:
      ;
    }
  }

  __break(1u);
}

uint64_t sub_3EF5F0()
{
  v1 = OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_stackViews;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (!(v3 >> 62))
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      return result;
    }

    goto LABEL_3;
  }

  result = sub_ABB060();
  v4 = result;
  if (result)
  {
LABEL_3:
    if (v4 < 1)
    {
      __break(1u);
      return result;
    }

    v5 = OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_textDrawingCache;

    v6 = v5;
    swift_beginAccess();
    v7 = 0;
    v20 = v4;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = sub_360398(v7, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = *(v0 + v6);
      v11 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
      swift_beginAccess();
      v12 = *&v9[v11];
      *&v9[v11] = v10;
      if (v12)
      {
        if (v12 != v10)
        {
          if (v10)
          {
LABEL_16:
            v14 = v0;
            v15 = qword_DE6828;
            swift_retain_n();
            if (v15 != -1)
            {
              swift_once();
            }

            v16 = static TextDrawing.Cache.didInvalidateNotification;
            v17 = swift_allocObject();
            swift_unknownObjectWeakInit();
            type metadata accessor for NotificationObserver();
            swift_allocObject();
            v18 = v16;

            v13 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v18, v10, 1, 1, sub_161628, v17);

            v0 = v14;
          }

          else
          {

            v13 = 0;
          }

          *&v9[OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCacheInvalidationNotificationObserver] = v13;

          v19 = OBJC_IVAR____TtC16MusicApplication13TextStackView_cacheKeyStackViewLayoutMetrics;
          swift_beginAccess();
          *&v9[v19] = _swiftEmptyDictionarySingleton;

          v4 = v20;
          goto LABEL_7;
        }
      }

      else
      {
        if (v10)
        {
          goto LABEL_16;
        }

        swift_retain_n();
      }

LABEL_7:
      if (v4 == ++v7)
      {
      }
    }
  }

  return result;
}

id sub_3EF8A0()
{
  v1 = OBJC_IVAR____TtC16MusicApplication19GroupedTextListView____lazy_storage___separator;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication19GroupedTextListView____lazy_storage___separator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication19GroupedTextListView____lazy_storage___separator);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    if (qword_DE6C70 != -1)
    {
      swift_once();
    }

    [v4 setBackgroundColor:qword_E718B0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_3EF960()
{
  v1 = OBJC_IVAR____TtC16MusicApplication19GroupedTextListView____lazy_storage___headerTitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication19GroupedTextListView____lazy_storage___headerTitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication19GroupedTextListView____lazy_storage___headerTitleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(UILabel) init];
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 clearColor];
    [v7 setBackgroundColor:v8];

    sub_89F60();
    v9 = sub_ABA550();
    [v7 setFont:v9];

    v10 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

unint64_t sub_3EFA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = _swiftEmptyArrayStorage;
  sub_3F05C0(1, v30);
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v6 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v30);
  swift_beginAccess();
  *(v6 + 112) = a1;
  *(v6 + 120) = a2;
  sub_2F118(v30, &v31);

  sub_2EB704();

  sub_AB9730();
  if (*(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v29 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  v7 = *(a3 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (a3 + 40);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;

      sub_3F05C0(0, &v31);
      v26 = 1835365481;
      v27 = 0xE400000000000000;
      v28 = v8;
      v36._countAndFlagsBits = sub_ABB330();
      sub_AB94A0(v36);

      v12 = v26;
      v13 = v27;
      v14 = swift_allocObject();
      v15 = v34;
      v16 = v34;
      v17 = v33;
      *(v14 + 64) = v33;
      *(v14 + 80) = v15;
      v18 = v35;
      *(v14 + 96) = v35;
      v19 = v31;
      v20 = v32;
      v21 = v32;
      *(v14 + 32) = v31;
      *(v14 + 48) = v20;
      *(v14 + 192) = v16;
      *(v14 + 208) = v18;
      *(v14 + 160) = v21;
      *(v14 + 176) = v17;
      *(v14 + 112) = 0;
      *(v14 + 128) = 0;
      *(v14 + 136) = 0;
      *(v14 + 120) = 0xE000000000000000;
      *(v14 + 224) = 0;
      *(v14 + 232) = 0xE000000000000000;
      *(v14 + 248) = 0;
      *(v14 + 256) = 0;
      *(v14 + 240) = 0;
      *(v14 + 16) = v12;
      *(v14 + 24) = v13;
      *(v14 + 144) = v19;
      swift_beginAccess();
      *(v14 + 112) = v11;
      *(v14 + 120) = v10;
      if (!v11 && v10 == 0xE000000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        sub_2F118(&v31, &v26);
        sub_2F118(&v31, &v26);
      }

      else
      {
        *(v14 + 224) = v11;
        *(v14 + 232) = v10;
        sub_2F118(&v31, &v26);

        sub_2F118(&v31, &v26);
        v22 = *(v14 + 240);
        if (v22)
        {

          v22(v23);
          sub_17654(v22);
        }
      }

      sub_AB9730();
      if (*(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v29 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      ++v8;
      sub_AB97F0();
      sub_2F174(&v31);

      v9 += 2;
    }

    while (v7 != v8);
  }

  v24 = v29;

  sub_2F174(v30);
  return v24;
}

uint64_t sub_3EFDE4()
{
  v3 = v0;
  v4 = OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_stackViews;
  swift_beginAccess();
  v5 = *&v4[v0];
  if (v5 >> 62)
  {
    goto LABEL_83;
  }

  v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v7 = OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_listGroups;
  v8 = *(*(v3 + OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_listGroups) + 16);
  if (v8 >= v6)
  {
    goto LABEL_25;
  }

  if (!v8)
  {
    goto LABEL_94;
  }

  v1 = *&v4[v3];
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_95;
  }

  if (*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)) < v8)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      type metadata accessor for TextStackView();
      swift_bridgeObjectRetain_n();
      v9 = 0;
      do
      {
        v10 = v9 + 1;
        sub_ABAE00(v9);
        v9 = v10;
      }

      while (v8 != v10);
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    if (v2)
    {
      v11 = sub_ABB070();
      v12 = v14;
      v2 = v15;
      v13 = v16;

      if ((v13 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v11 = v1 & 0xFFFFFFFFFFFFFF8;
      v12 = (v1 & 0xFFFFFFFFFFFFFF8) + 32;
      v13 = (2 * v8) | 1;
      if ((v13 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v1 = sub_ABB3F0();
    swift_unknownObjectRetain_n();
    v18 = swift_dynamicCastClass();
    if (!v18)
    {
      swift_unknownObjectRelease();
      v18 = _swiftEmptyArrayStorage;
    }

    v19 = v18[2];

    if (__OFSUB__(v13 >> 1, v2))
    {
      __break(1u);
LABEL_105:
      swift_unknownObjectRelease_n();
LABEL_16:
      sub_130D10(v11, v12, v2, v13);
      v8 = v17;
LABEL_23:
      swift_unknownObjectRelease();
      goto LABEL_24;
    }

    if (v19 != (v13 >> 1) - v2)
    {
      goto LABEL_105;
    }

    v8 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (!v8)
    {
      v8 = _swiftEmptyArrayStorage;
      goto LABEL_23;
    }

LABEL_24:
    *&v4[v3] = v8;

LABEL_25:
    v20 = *&v4[v3];
    if (v20 >> 62)
    {
      v21 = sub_ABB060();
      v20 = *&v4[v3];
    }

    else
    {
      v21 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
    }

    v64 = v4;
    v65 = v3;
    if (v21 < 1)
    {
      goto LABEL_37;
    }

    if (v20 >> 62)
    {
      v54 = sub_ABB060();
      v23 = v54 - 1;
      if (__OFSUB__(v54, 1))
      {
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }
    }

    else
    {
      v22 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
      v23 = v22 - 1;
      if (__OFSUB__(v22, 1))
      {
        goto LABEL_89;
      }
    }

    if (v23 < 0)
    {
      goto LABEL_90;
    }

    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_91;
    }

    v25 = *(v3 + v7);
    v26 = *(v25 + 16);
    if (v26 < v24)
    {
      goto LABEL_92;
    }

    if ((v24 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    result = sub_ABB060();
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    if (sub_ABB060() < v8)
    {
      goto LABEL_97;
    }
  }

  v57 = v7;
  if (v26 == v24)
  {

    goto LABEL_61;
  }

  sub_130C28(v25, v25 + 32, 0, (2 * v24) | 1);
  v24 = *(v27 + 16);
  if (v24)
  {
LABEL_61:
    v59 = v24;
    v61 = v27;
    v1 = 0;
    v63 = v27 + 32;
    do
    {
      if (v1 >= *(v27 + 16))
      {
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        v6 = sub_ABB060();
        goto LABEL_3;
      }

      v45 = (v63 + 24 * v1);
      v46 = *v45;
      v2 = v45[1];
      v47 = v45[2];
      v48 = *&v4[v3];
      if ((v48 & 0xC000000000000001) != 0)
      {

        v4 = sub_360398(v1, v48);
      }

      else
      {
        if (v1 >= *(&dword_10 + (v48 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_79;
        }

        v49 = *(v48 + 8 * v1 + 32);

        v4 = v49;
      }

      v50 = sub_3EFA78(v46, v2, v47);
      TextStackView.removeAll()();
      if (v50 >> 62)
      {
        v51 = sub_ABB060();
        if (!v51)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v51 = *(&dword_10 + (v50 & 0xFFFFFFFFFFFFFF8));
        if (!v51)
        {
          goto LABEL_62;
        }
      }

      if (v51 < 1)
      {
        goto LABEL_80;
      }

      for (i = 0; i != v51; ++i)
      {
        if ((v50 & 0xC000000000000001) != 0)
        {
          v53 = sub_36003C(i, v50);
        }

        else
        {
          v53 = *(v50 + 8 * i + 32);
        }

        TextStackView.add(_:)(v53);
      }

LABEL_62:
      ++v1;

      v27 = v61;
      v4 = v64;
      v3 = v65;
    }

    while (v1 != v59);
  }

  v20 = *&v4[v3];
  v7 = v57;
LABEL_37:
  v28 = *(*(v3 + v7) + 16);
  if (v20 >> 62)
  {
    result = sub_ABB060();
    if (result >= v28)
    {
      return result;
    }

LABEL_39:
    v30 = *&v4[v3];
    if (!(v30 >> 62))
    {
      v31 = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8));
      goto LABEL_41;
    }

LABEL_98:
    v31 = sub_ABB060();
LABEL_41:
    v62 = *(v3 + v7);
    v60 = *(v62 + 16);
    if (v60 <= v31)
    {
      __break(1u);
    }

    else if ((v31 & 0x8000000000000000) == 0)
    {
      if (!v31)
      {

        if (v60)
        {
LABEL_45:
          type metadata accessor for TextStackView();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v56 = OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_textDrawingCache;
          swift_beginAccess();
          v32 = 0;
          do
          {
            if (v32 >= *(v62 + 16))
            {
              goto LABEL_81;
            }

            v33 = (v62 + 32 + 24 * v32);
            v2 = v33[1];
            v34 = v33[2];
            v35 = *v33;
            v1 = objc_allocWithZone(ObjCClassFromMetadata);

            v4 = [v1 init];
            v36 = sub_3EFA78(v35, v2, v34);
            v37 = v36;
            if (v36 >> 62)
            {
              v38 = sub_ABB060();
              if (v38)
              {
LABEL_49:
                if (v38 < 1)
                {
                  goto LABEL_82;
                }

                for (j = 0; j != v38; ++j)
                {
                  if ((v37 & 0xC000000000000001) != 0)
                  {
                    v40 = sub_36003C(j, v37);
                  }

                  else
                  {
                    v40 = *(v37 + 8 * j + 32);
                  }

                  TextStackView.add(_:)(v40);
                }
              }
            }

            else
            {
              v38 = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8));
              if (v38)
              {
                goto LABEL_49;
              }
            }

            v3 = v65;
            v41 = *(v65 + v56);
            v42 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
            swift_beginAccess();
            v43 = *&v4[v42];
            *&v4[v42] = v41;
            swift_retain_n();
            sub_2E6210(v43);

            v44 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
            swift_beginAccess();
            v4[v44] = 0;

            v1 = v64;
            swift_beginAccess();
            v4 = v4;
            sub_AB9730();
            if (*(&dword_10 + (*(v3 + v1) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v3 + v1) & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_AB97A0();
            }

            ++v32;
            sub_AB97F0();
            swift_endAccess();
          }

          while (v32 != v60);
        }
      }

LABEL_101:
      sub_130C28(v62, v62 + 32, v31, (2 * v60) | 1);
      v60 = *(v55 + 16);
      v62 = v55;
      if (v60)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
    goto LABEL_101;
  }

  result = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
  if (result < v28)
  {
    goto LABEL_39;
  }

  return result;
}

void sub_3F05C0(char a1@<W0>, double *a2@<X8>)
{
  if (a1)
  {
    v3 = 24.0;
    if (qword_DE6C98 != -1)
    {
      swift_once();
    }

    v4 = &qword_E718D8;
  }

  else
  {
    v3 = 20.0;
    if (qword_DE6C88 != -1)
    {
      swift_once();
    }

    v4 = &qword_E718C8;
  }

  v5 = *v4;
  sub_89F60();
  v6 = v5;
  v7 = sub_ABA560();
  v8 = objc_opt_self();
  v9 = v6;
  v10 = [v8 clearColor];

  v11 = sub_AB9260();
  v12 = [v11 _isNaturallyRTL];

  *a2 = v6;
  *(a2 + 1) = v10;
  *(a2 + 2) = v12;
  *(a2 + 3) = 4;
  a2[4] = 0.0;
  a2[5] = 0.0;
  *(a2 + 6) = v7;
  *(a2 + 7) = 1;
  a2[8] = v3;
  a2[9] = 12.0;
}

void sub_3F083C()
{
  v1 = OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_listGroups;
  v26 = *(*(v0 + OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_listGroups) + 16);
  if (v26)
  {
    v2 = v0;
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    while (1)
    {
      v28 = v4;
      v5 = *(v2 + v1);
      if (v3 >= *(v5 + 16))
      {
        break;
      }

      v6 = v5 + 24 * v3;
      v29 = *(v6 + 32);
      v30 = *(v6 + 40);
      swift_bridgeObjectRetain_n();

      v31._countAndFlagsBits = 44;
      v31._object = 0xE100000000000000;
      sub_AB94A0(v31);

      v7 = *(v2 + v1);
      if (v3 >= *(v7 + 16))
      {
        goto LABEL_22;
      }

      v27 = v3;
      v8 = *(v7 + 24 * v3 + 48);
      v9 = *(v8 + 16);
      swift_bridgeObjectRetain_n();

      if (v9)
      {
        v10 = 0;
        v11 = (v8 + 40);
        v12 = _swiftEmptyArrayStorage;
        while (v10 < *(v8 + 16))
        {
          v13 = *(v11 - 1);
          v14 = *v11;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_6B0F0(0, *(v12 + 2) + 1, 1, v12);
          }

          v16 = *(v12 + 2);
          v15 = *(v12 + 3);
          if (v16 >= v15 >> 1)
          {
            v12 = sub_6B0F0((v15 > 1), v16 + 1, 1, v12);
          }

          ++v10;
          *(v12 + 2) = v16 + 1;
          v17 = &v12[16 * v16];
          *(v17 + 4) = v13;
          *(v17 + 5) = v14;
          v11 += 2;
          if (v9 == v10)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:

      swift_bridgeObjectRelease_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
      sub_2ECD4();
      v18 = sub_AB9140();
      v20 = v19;

      v32._countAndFlagsBits = v18;
      v32._object = v20;
      sub_AB94A0(v32);

      v4 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_6B0F0(0, *(v28 + 2) + 1, 1, v28);
      }

      v2 = v25;
      v22 = *(v4 + 2);
      v21 = *(v4 + 3);
      if (v22 >= v21 >> 1)
      {
        v4 = sub_6B0F0((v21 > 1), v22 + 1, 1, v4);
      }

      *(v4 + 2) = v22 + 1;
      v23 = &v4[16 * v22];
      *(v23 + 4) = v29;
      *(v23 + 5) = v30;
      v3 = v27 + 1;
      v1 = v24;
      if (v27 + 1 == v26)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }
}

id sub_3F0B2C(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_wantsTopSeparator] = 1;
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_title];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_listGroups] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_numberOfColumns] = 2;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_layoutInvalidationHandler];
  *v10 = 0;
  v10[1] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_textDrawingCache] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView____lazy_storage___separator] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView____lazy_storage___headerTitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_stackViews] = _swiftEmptyArrayStorage;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for GroupedTextListView();
  return objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
}

id sub_3F0C74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupedTextListView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_3F0DC8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_3EF5F0();
}

uint64_t (*sub_3F0E38(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_3F0E9C;
}

uint64_t sub_3F0E9C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_3EF5F0();
  }

  return result;
}

uint64_t sub_3F0ED0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

id sub_3F0F08(uint64_t a1)
{
  v1[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_wantsTopSeparator] = 1;
  v3 = &v1[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_title];
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *&v1[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_listGroups] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_numberOfColumns] = 2;
  v4 = &v1[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_layoutInvalidationHandler];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_textDrawingCache] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView____lazy_storage___separator] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView____lazy_storage___headerTitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_stackViews] = _swiftEmptyArrayStorage;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for GroupedTextListView();
  return objc_msgSendSuper2(&v6, "initWithCoder:", a1);
}

double sub_3F1110()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication20AccountButtonWrapper_button);
  if (v1)
  {
    [v1 intrinsicContentSize];
  }

  else
  {
    v2 = 0.0;
  }

  return fmax(v2, 34.0);
}

id sub_3F115C()
{
  result = *(v0 + OBJC_IVAR____TtC16MusicApplication20AccountButtonWrapper_button);
  if (result)
  {
    return [result intrinsicContentSize];
  }

  return result;
}

unint64_t sub_3F1298()
{
  result = qword_E05010;
  if (!qword_E05010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E05010);
  }

  return result;
}

void sub_3F12EC(void *a1)
{
  v3 = v1;
  v5 = sub_AB29F0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_AB2A00();
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &selRef_isMovingFromParentViewController;
  v11 = [a1 filterString];
  if (v11)
  {
    v2 = v11;
    v12 = sub_AB92A0();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v1[7] = v12;
  v1[8] = v14;

  v15 = v1[4];
  if ([v15 operationCount] < 2)
  {
    goto LABEL_26;
  }

  v14 = &selRef_isMovingFromParentViewController;
  v2 = [v15 operations];
  sub_13C80(0, &qword_DEBCB0);
  v16 = sub_AB9760();
  v10 = v16;
  if (v16 >> 62)
  {
    if (sub_ABB060())
    {
      goto LABEL_7;
    }

LABEL_39:

    v40 = v1[2];
    if (!v40)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!*(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_39;
  }

LABEL_7:
  v43 = v7;
  if ((v10 & 0xC000000000000001) != 0)
  {
    goto LABEL_43;
  }

  if (!*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
  {
    __break(1u);
    return;
  }

  for (i = *(v10 + 32); ; i = sub_361620(0, v10))
  {
    v18 = i;

    swift_beginAccess();
    v19 = v3[5];
    v44 = v18;
    v20 = sub_D13C8(v18, v19);
    if (v20)
    {
      v21 = v20;
      swift_endAccess();
      v10 = v14;
      v22 = [v21 v14[223]];
      if (v22)
      {
        v14 = v22;
        v42 = sub_AB92A0();
        v2 = v23;
      }

      else
      {

        v42 = 0;
        v2 = 0;
      }
    }

    else
    {
      swift_endAccess();
      v42 = 0;
      v2 = 0;
      v10 = v14;
    }

    v24 = [a1 *(v10 + 1784)];
    if (!v24)
    {
      if (!v2)
      {
        break;
      }

LABEL_24:

      goto LABEL_25;
    }

    v14 = v24;
    v10 = sub_AB92A0();
    v26 = v25;

    if (!v2)
    {
      if (!v26)
      {
        break;
      }

      goto LABEL_24;
    }

    if (!v26)
    {
      goto LABEL_24;
    }

    if (v42 == v10 && v2 == v26)
    {

      goto LABEL_36;
    }

    v14 = sub_ABB3C0();

    if (v14)
    {
      break;
    }

LABEL_25:
    v27 = v44;
    [v44 cancel];
    swift_beginAccess();
    v28 = v27;
    v29 = sub_27BD3C(v28);
    swift_endAccess();

LABEL_26:
    v30 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_3F2194;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_151E0;
    aBlock[3] = &block_descriptor_127;
    v31 = _Block_copy(aBlock);

    v6 = [a1 newOperationWithResponseHandler:v31];
    _Block_release(v31);
    [v15 addOperation:v6];
    swift_beginAccess();
    v32 = v3[5];
    if ((v32 & 0xC000000000000001) == 0)
    {
      v37 = v6;
      v38 = a1;
      goto LABEL_33;
    }

    if (v32 < 0)
    {
      v33 = v3[5];
    }

    else
    {
      v33 = v32 & 0xFFFFFFFFFFFFFF8;
    }

    v34 = v6;
    v35 = a1;
    v36 = sub_ABAFA0();
    if (!__OFADD__(v36, 1))
    {
      v3[5] = sub_426AD8(v33, v36 + 1);
LABEL_33:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v3[5];
      sub_94488(a1, v6, isUniquelyReferenced_nonNull_native);
      v3[5] = v45;

      swift_endAccess();
      return;
    }

    __break(1u);
LABEL_43:
    ;
  }

LABEL_36:
  v7 = v43;
  v40 = v3[2];
  if (v40)
  {
LABEL_40:

    sub_AB29E0();
    sub_3F2834(_swiftEmptyArrayStorage);
    sub_1A4764();
    sub_AB3030();
    v41 = sub_AB29C0();
    (*(v7 + 8))(v9, v6);
    v40(v41, 1);

    sub_17654(v40);
  }
}

void sub_3F18B4(void *a1, uint64_t a2)
{
  v81 = a2;
  v3 = sub_AB29F0();
  __chkstk_darwin(v3 - 8);
  v5 = v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB2A00();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v11 = Strong;
  if (!a1)
  {
    if (v81)
    {
      goto LABEL_37;
    }

    goto LABEL_46;
  }

  v12 = [a1 request];
  if (!v12)
  {
LABEL_36:
    if (v81)
    {
LABEL_37:
      v58 = v11[2];
      if (v58)
      {
        v59 = v81;
        swift_errorRetain();
        sub_307CC(v58);
        v58(v59, 1);

LABEL_53:
        v72 = v58;
        goto LABEL_54;
      }

      goto LABEL_55;
    }

    v60 = [a1 request];
    if (!v60)
    {
      goto LABEL_59;
    }

    v61 = v60;
    v62 = [v60 filterString];
    if (v62)
    {
      v63 = v9;
      v64 = v62;
      v65 = sub_AB92A0();
      v67 = v66;

      v68 = v11[8];
      if (v67)
      {
        if (!v68)
        {

          goto LABEL_51;
        }

        v86._countAndFlagsBits = v65;
        v86._object = v67;
        v69 = sub_AB9530(v86);

        if (v69)
        {
LABEL_51:
          v58 = v11[2];
          if (v58)
          {

            v58(a1, 0);
            goto LABEL_53;
          }

LABEL_55:

          return;
        }

LABEL_48:
        v70 = v11[2];
        if (v70)
        {

          sub_AB29E0();
          sub_3F2834(_swiftEmptyArrayStorage);
          sub_1A4764();
          sub_AB3030();
          v71 = sub_AB29C0();
          (*(v7 + 8))(v63, v6);
          v70(v71, 1);

          v72 = v70;
LABEL_54:
          sub_17654(v72);
          goto LABEL_55;
        }

        goto LABEL_55;
      }

LABEL_47:
      if (!v68)
      {
        goto LABEL_51;
      }

      goto LABEL_48;
    }

LABEL_46:
    v63 = v9;
    v68 = v11[8];
    goto LABEL_47;
  }

  v13 = v12;
  swift_beginAccess();
  v14 = v13;

  v16 = sub_3F2568(v15, v14);
  v74 = v14;

  v78 = a1;
  v79 = v6;
  v76 = v5;
  v77 = v7;
  v75 = v9;
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = sub_ABAF90() | 0x8000000000000000;
  }

  else
  {
    v21 = -1 << *(v16 + 32);
    v18 = ~v21;
    v17 = v16 + 64;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v19 = v23 & *(v16 + 64);
    v20 = v16;
  }

  v73[1] = v16;

  v24 = 0;
  v73[0] = v18;
  v25 = (v18 + 64) >> 6;
  v80 = v25;
  while (1)
  {
    v27 = v24;
    if ((v20 & 0x8000000000000000) == 0)
    {
      break;
    }

    v34 = sub_ABAFC0();
    if (!v34 || (v36 = v35, v84 = v34, sub_13C80(0, &qword_DEBCB0), swift_unknownObjectRetain(), v25 = v80, swift_dynamicCast(), v37 = v85, swift_unknownObjectRelease(), v84 = v36, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E02CC0), swift_dynamicCast(), v33 = v85, v32 = v37, swift_unknownObjectRelease(), v24 = v27, v83 = v19, !v32))
    {
LABEL_35:
      sub_2BB88();

      a1 = v78;
      v6 = v79;
      v7 = v77;
      v9 = v75;
      goto LABEL_36;
    }

LABEL_25:
    swift_beginAccess();
    v38 = v11[5];
    v82 = v32;
    if ((v38 & 0xC000000000000001) == 0)
    {
      v41 = v32;
      v52 = v33;
      v53 = sub_2ECAB0(v41);
      if (v54)
      {
        v55 = v53;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = v11[5];
        v84 = v57;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_3334FC();
          v57 = v84;
        }

        v26 = *(*(v57 + 56) + 8 * v55);
        sub_27DFEC(v55, v57);
        v11[5] = v57;
      }

LABEL_14:

      goto LABEL_15;
    }

    v39 = v32;
    if (v38 < 0)
    {
      v40 = v38;
    }

    else
    {
      v40 = v38 & 0xFFFFFFFFFFFFFF8;
    }

    v41 = v39;
    v42 = v33;
    if (!sub_ABAFB0())
    {
      goto LABEL_14;
    }

    v43 = v20;
    v44 = v17;
    v45 = v11;
    swift_unknownObjectRelease();

    v46 = sub_ABAFA0();
    v47 = sub_426AD8(v40, v46);

    v48 = sub_2ECAB0(v41);
    v50 = v49;

    if ((v50 & 1) == 0)
    {
      goto LABEL_58;
    }

    v51 = *(*(v47 + 56) + 8 * v48);
    sub_27DFEC(v48, v47);

    v11 = v45;
    v45[5] = v47;

    v17 = v44;
    v20 = v43;
    v25 = v80;
LABEL_15:
    swift_endAccess();

    v19 = v83;
  }

  v28 = v24;
  v29 = v19;
  if (v19)
  {
LABEL_21:
    v83 = (v29 - 1) & v29;
    v30 = (v24 << 9) | (8 * __clz(__rbit64(v29)));
    v31 = *(*(v20 + 56) + v30);
    v32 = *(*(v20 + 48) + v30);
    v33 = v31;
    if (!v32)
    {
      goto LABEL_35;
    }

    goto LABEL_25;
  }

  while (1)
  {
    v24 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v24 >= v25)
    {
      goto LABEL_35;
    }

    v29 = *(v17 + 8 * v24);
    ++v28;
    if (v29)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

uint64_t sub_3F1FA4()
{
  sub_17654(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_3F2090()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    type metadata accessor for JSContainerDetailModelRequest();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v6 = *(v7 + OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText);

      return v6;
    }

    return 0;
  }

  v2 = v1;
  v3 = v0;
  v4 = [v2 filterText];
  if (!v4)
  {

    return 0;
  }

  v5 = v4;
  v6 = sub_AB92A0();

  return v6;
}

uint64_t sub_3F215C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_127(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t *sub_3F21B4(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    sub_3F224C(v7, a2, a3);
    v10 = v9;

    return v10;
  }

  return result;
}

void sub_3F224C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 8 * v13);
    v15 = *(*(a3 + 56) + 8 * v13);
    sub_13C80(0, &qword_DFA720);
    v16 = v14;
    v17 = v15;
    v18 = sub_ABA790();

    if (v18)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        sub_2DEB54(a1, a2, v22, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_3F23B8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = a2;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v16 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), 8 * v6);
    v10 = v8;
    sub_3F224C((&v16 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a1);
    v12 = v11;

    if (v2)
    {

      swift_willThrow();
    }

    else
    {
    }
  }

  else
  {
    v14 = swift_slowAlloc();
    v15 = v8;
    v12 = sub_3F21B4(v14, v6, a1, v15);
  }

  return v12;
}

Swift::Int sub_3F2568(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = _swiftEmptyDictionarySingleton;
    sub_ABAF90();
    v4 = a2;
    v5 = sub_ABAFC0();
    if (v5)
    {
      v6 = v5;
      sub_13C80(0, &qword_DEBCB0);
      v7 = v6;
      do
      {
        v24 = v7;
        swift_dynamicCast();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E02CC0);
        swift_dynamicCast();
        if (!v25)
        {
          break;
        }

        sub_13C80(0, &qword_DFA720);
        v8 = v25;
        v9 = v24;
        v10 = sub_ABA790();

        if (v10)
        {
          v11 = _swiftEmptyDictionarySingleton[2];
          if (_swiftEmptyDictionarySingleton[3] <= v11)
          {
            sub_32C290(v11 + 1, 1);
          }

          v3 = _swiftEmptyDictionarySingleton;
          result = sub_ABA780(_swiftEmptyDictionarySingleton[5]);
          v13 = &_swiftEmptyDictionarySingleton[8];
          v14 = -1 << LOBYTE(_swiftEmptyDictionarySingleton[4]);
          v15 = result & ~v14;
          v16 = v15 >> 6;
          if (((-1 << v15) & ~_swiftEmptyDictionarySingleton[(v15 >> 6) + 8]) != 0)
          {
            v17 = __clz(__rbit64((-1 << v15) & ~_swiftEmptyDictionarySingleton[(v15 >> 6) + 8])) | v15 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v18 = 0;
            v19 = (63 - v14) >> 6;
            do
            {
              if (++v16 == v19 && (v18 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v20 = v16 == v19;
              if (v16 == v19)
              {
                v16 = 0;
              }

              v18 |= v20;
              v21 = v13[v16];
            }

            while (v21 == -1);
            v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          }

          *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
          *(_swiftEmptyDictionarySingleton[6] + 8 * v17) = v8;
          *(_swiftEmptyDictionarySingleton[7] + 8 * v17) = v9;
          ++_swiftEmptyDictionarySingleton[2];
        }

        else
        {
        }

        v7 = sub_ABAFC0();
      }

      while (v7);
    }

    sub_2BB88();
  }

  else
  {
    v23 = a2;
    v3 = sub_3F23B8(a1, v23);
  }

  return v3;
}

unint64_t sub_3F2834(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEFE0);
    v3 = sub_ABB0C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_3F2944(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2EBF88(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_9ACFC(&v15, (v3[7] + 32 * result));
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

uint64_t sub_3F2944(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_3F29C4(uint64_t a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v19 = *(a1 + 32);

  v20 = a2;
  v19(a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_3F2AB0(void *a1, void *a2, void *a3)
{
  v5 = [a1 layoutManager];
  sub_3F2B48(v5);

  v6 = [a3 traitCollection];
  [v6 displayScale];

  result = sub_AB3A00();
  *a2 = v8;
  return result;
}

uint64_t sub_3F2B48(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  [v1 bounds];
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  *(v4 + 32) = v7;
  *(v4 + 40) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = [a1 numberOfGlyphs];
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v9;
  aBlock[4] = sub_3F345C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_3F29C4;
  aBlock[3] = &block_descriptor_47_0;
  v12 = _Block_copy(aBlock);

  [a1 enumerateLineFragmentsForGlyphRange:0 usingBlock:{v10, v12}];
  _Block_release(v12);
  swift_beginAccess();
  if (*(v9 + 16) >= 1)
  {
    [a1 baselineOffsetForGlyphAtIndex:*(v9 + 16) - 1];
    [v2 textContainerInset];
    [v2 bounds];
    CGRectGetMaxY(v15);
    swift_beginAccess();
    CGRectGetMinY(*(v4 + 16));
  }
}

uint64_t sub_3F2D90(uint64_t a1, uint64_t a2)
{
  v5 = [v2 layoutManager];
  v6 = [v2 textContainer];
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = v2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_3F3270;
  *(v8 + 24) = v7;
  v13[4] = sub_3F328C;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_3F32B4;
  v13[3] = &block_descriptor_128;
  v9 = _Block_copy(v13);
  v10 = v5;
  v11 = v2;

  [v6 coordinateAccess:v9];
  _Block_release(v9);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

char *sub_3F2F3C()
{
  v1 = [v0 layoutManager];
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v0 textContainer];
  [v10 setSize:{v7, v9}];
  [v1 ensureGlyphsForGlyphRange:{0, objc_msgSend(v1, "numberOfGlyphs")}];
  [v1 ensureLayoutForBoundingRect:v10 inTextContainer:{v3, v5, v7, v9}];
  result = [v1 glyphRangeForBoundingRect:v10 inTextContainer:{v3, v5, v7, v9}];
  if (v12 < 1)
  {

    return 0;
  }

  v13 = &result[v12 - 1];
  if (__OFSUB__(&result[v12], 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (__OFADD__(v13, 1))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if ([v1 isValidGlyphIndex:&result[v12]])
  {

    return (&dword_0 + 1);
  }

  v14 = [v1 truncatedGlyphRangeInLineFragmentForGlyphAtIndex:v13];
  v16 = v15;
  v17 = sub_AB2A10();

  if (v14 == v17)
  {
    return 0;
  }

  return (v16 > 0);
}

void *sub_3F30EC(void *result, void *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v8 = result;
    v9 = [v8 widthTracksTextView];
    v10 = [v8 heightTracksTextView];
    v11 = [a2 delegate];
    [v8 setWidthTracksTextView:0];
    [v8 setHeightTracksTextView:0];
    if ([a2 allowsNonContiguousLayout])
    {
      [a2 ensureLayoutForTextContainer:v8];
    }

    a3(a5);
    [v8 setWidthTracksTextView:v9];
    [v8 setHeightTracksTextView:v10];
    [a2 setDelegate:v11];

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_3F3230()
{

  return swift_deallocObject();
}

void sub_3F32B4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v3(a2);
}

uint64_t block_copy_helper_128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3F3348(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, double *a13, uint64_t a14)
{
  type metadata accessor for CGRect(0);
  result = sub_AB38D0();
  if (result)
  {
    swift_beginAccess();
    a13[2] = a5;
    a13[3] = a6;
    a13[4] = a7;
    a13[5] = a8;
    result = swift_beginAccess();
    v22 = *(a14 + 16);
    v23 = __OFADD__(v22, a11);
    v24 = v22 + a11;
    if (v23)
    {
      __break(1u);
    }

    else
    {
      *(a14 + 16) = v24;
    }
  }

  return result;
}

uint64_t sub_3F341C()
{

  return swift_deallocObject();
}

char *sub_3F346C(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_lastSeenViewBounds];
  *v4 = 0u;
  v4[1] = 0u;
  v5 = &v1[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_selectedPhotoIdentifier];
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_artworkCachingReference;
  type metadata accessor for Artwork.CachingReference();
  *&v2[v6] = swift_allocObject();
  v7 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *&v2[v7] = TextDrawing.Cache.init()();
  *&v2[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_sections] = _swiftEmptyArrayStorage;
  v8 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_itemIndexMap;
  *&v2[v8] = sub_97678(_swiftEmptyArrayStorage);
  v2[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_noAuthentication] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_accountStoreDidChangeObserver] = 0;
  v9 = &v2[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_identifierTextFieldValue];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = &v2[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_passwordTextFieldValue];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  *&v2[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_maximumMeasuredDescriptionTextWidth] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userProfileObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_profilePerson] = 0;
  v11 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_greenTeaLogger;
  *&v2[v11] = [objc_allocWithZone(MusicAnalyticsGreenTeaLogger) init];
  v2[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userHasDeletedImage] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userSelectedImage] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_settingsViewModel] = a1;
  sub_13C80(0, &qword_DF0600);
  v12 = a1;
  v13 = static ICUserIdentityStore.activeAccountDSID.getter();
  v2[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_isAuthenticated] = v13 != 0;
  v29.receiver = v2;
  v29.super_class = type metadata accessor for JSSettingsViewController();
  v14 = objc_msgSendSuper2(&v29, "initWithNibName:bundle:", 0, 0);
  v15 = *&v14[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_settingsViewModel] + OBJC_IVAR____TtC11MusicJSCore19JSSettingsViewModel_delegate;
  swift_beginAccess();
  *(v15 + 8) = &off_D10ED0;
  swift_unknownObjectWeakAssign();
  if ((v14[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_noAuthentication] & 1) == 0)
  {
    v16 = ICUserIdentityStoreDidChangeNotification;
    v17 = objc_opt_self();
    v18 = v16;
    v19 = [v17 defaultIdentityStore];
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    *&v14[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_accountStoreDidChangeObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v18, v19, 1, 1, sub_404DD4, v20);
  }

  if (qword_DE67A8 != -1)
  {
    swift_once();
  }

  v21 = qword_E70D38;
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = v14;

  sub_8F874(v23, sub_404DDC, v22, v21);

  if (qword_DE67B8 != -1)
  {
    swift_once();
  }

  v24 = qword_E70D48;
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = v24;

  type metadata accessor for NotificationObserver();
  swift_allocObject();

  v27 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v26, 0, 1, 1, sub_404DE4, v25);

  *&v23[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userProfileObserver] = v27;

  return v23;
}

void sub_3F38F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_13C80(0, &qword_DF0600);
    v2 = static ICUserIdentityStore.activeAccountDSID.getter();
    v3 = v2;
    if ((v2 != 0) != v1[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_isAuthenticated])
    {
      v1[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_isAuthenticated] = v2 != 0;
      sub_400204();
    }
  }
}

void sub_3F39A0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_profilePerson);
    *(Strong + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_profilePerson) = a1;
    v5 = a1;

    sub_3FB798();
  }
}

void sub_3F3A18()
{
  v0 = sub_AB3820();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView);
    if (v6)
    {
      v7 = v6;
      v8 = [v7 indexPathsForVisibleItems];
      v9 = sub_AB9760();

      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = (*(v1 + 80) + 32) & ~*(v1 + 80);
        v26 = v9;
        v27 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_itemIndexMap;
        v12 = v9 + v11;
        swift_beginAccess();
        v14 = *(v1 + 16);
        v13 = v1 + 16;
        v30 = *(v13 + 56);
        v31 = v14;
        v15 = (v13 - 8);
        v28 = v7;
        v29 = v13;
        v14(v3, v12, v0);
        while (1)
        {
          isa = sub_AB3770().super.isa;
          v17 = [v7 cellForItemAtIndexPath:isa];

          if (!v17)
          {
            goto LABEL_6;
          }

          type metadata accessor for UserDetailsCell();
          v18 = swift_dynamicCastClass();
          if (!v18)
          {
            break;
          }

          v19 = v18;
          v20 = v5;
          v21 = *&v5[v27];
          v22 = *(v21 + 16);

          if (v22 && (v23 = sub_2EC048(v3), (v24 & 1) != 0))
          {
            v25 = *(*(v21 + 56) + 8 * v23);

            sub_3FF234(v19, v25);
            (*v15)(v3, v0);
          }

          else
          {
            (*v15)(v3, v0);
          }

          v5 = v20;
          v7 = v28;
LABEL_7:
          v12 += v30;
          if (!--v10)
          {
            goto LABEL_16;
          }

          v31(v3, v12, v0);
        }

LABEL_6:
        (*v15)(v3, v0);
        goto LABEL_7;
      }

LABEL_16:
    }
  }
}

id sub_3F3D0C()
{
  if (qword_DE67A8 != -1)
  {
    swift_once();
  }

  v1 = qword_E70D38;
  v5 = xmmword_AF82C0;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  v2 = v0;
  sub_40297C(&v5, v2, v1);

  v4.receiver = v2;
  v4.super_class = type metadata accessor for JSSettingsViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_3F3F7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF8600;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  isa = sub_AB9740().super.isa;
  v7 = [objc_opt_self() propertySetWithProperties:isa];

  qword_E716C0 = v7;
}

void sub_3F4084()
{
  v1 = v0;
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [objc_allocWithZone(type metadata accessor for TintColorObservingView()) initWithFrame:{v4, v6, v8, v10}];
  [v11 setAutoresizingMask:18];
  v12 = *&v1[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_textDrawingCache];
  v13 = [v11 tintColor];
  swift_beginAccess();
  v14 = *(v12 + 24);
  *(v12 + 24) = v13;
  v15 = v13;

  sub_10710C();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = &v11[OBJC_IVAR____TtC16MusicApplication22TintColorObservingView_tintColorDidChangeCallback];
  swift_beginAccess();
  v18 = *v17;
  *v17 = sub_404DCC;
  v17[1] = v16;

  sub_17654(v18);

  [v1 setView:v11];
}

void sub_3F4244(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_textDrawingCache);
    v4 = Strong;
    swift_beginAccess();
    v5 = *(v3 + 24);
    *(v3 + 24) = a1;
    v6 = a1;

    sub_10710C();
  }
}

void sub_3F4424()
{
  v1 = v0;
  v50 = sub_AB52A0();
  v2 = *(v50 - 1);
  __chkstk_darwin(v50);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_AB52B0();
  v5 = *(v49 - 8);
  __chkstk_darwin(v49);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB5290();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB5320();
  v47 = *(v12 - 8);
  v48 = v12;
  __chkstk_darwin(v12);
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for JSSettingsViewController();
  v52.receiver = v0;
  v52.super_class = v14;
  objc_msgSendSuper2(&v52, "viewDidLoad");
  sub_400204();
  v15 = *&v0[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_textDrawingCache];
  v16 = [v1 traitCollection];
  [v16 displayScale];
  v18 = v17;

  swift_beginAccess();
  *(v15 + 16) = v18;
  sub_106F0C();
  v19 = [v1 view];
  if (v19)
  {
    v20 = v19;
    [v19 music_setLayoutInsets:{0.0, 20.0, 0.0, 20.0}];
    (*(v9 + 104))(v11, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v8);
    sub_AB52C0();
    (*(v5 + 104))(v7, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v49);
    sub_AB52E0();
    (*(v2 + 104))(v4, enum case for UICollectionLayoutListConfiguration.FooterMode.supplementary(_:), v50);
    sub_AB52D0();
    v21 = objc_opt_self();
    v22 = [v21 defaultMetrics];
    v23 = [v1 traitCollection];
    v24 = sub_ABA310();
    sub_AB9EF0();

    sub_AB5300();
    sub_13C80(0, &unk_DF92A0);
    v25 = sub_ABA420();
    [v20 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = objc_allocWithZone(UICollectionView);
    v50 = v25;
    v35 = [v34 initWithFrame:v25 collectionViewLayout:{v27, v29, v31, v33}];
    [v35 setDataSource:v1];
    [v35 setDelegate:v1];
    v36 = v35;
    [v36 setAlwaysBounceVertical:1];
    v37 = [v1 view];
    if (v37)
    {
      v38 = v37;
      v39 = objc_opt_self();
      v40 = [v39 systemGroupedBackgroundColor];
      [v38 setBackgroundColor:v40];

      v41 = v36;
      v42 = [v39 clearColor];
      [v41 setBackgroundColor:v42];

      [v41 setKeyboardDismissMode:1];
      [v41 setAllowsFocus:(v1[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_noAuthentication] & 1) == 0];
      v43 = [v21 defaultMetrics];
      v44 = [v1 traitCollection];
      v45 = sub_ABA310();
      sub_AB9EF0();

      [v41 contentInset];
      [v41 setContentInset:?];

      type metadata accessor for UserDetailsCell();
      static UICollectionReusableView.reuseIdentifier.getter();
      UICollectionView.register<A>(_:reuseIdentifier:)();

      type metadata accessor for MenuCell();
      static UICollectionReusableView.reuseIdentifier.getter();
      UICollectionView.register<A>(_:reuseIdentifier:)();

      type metadata accessor for TextFieldCell();
      static UICollectionReusableView.reuseIdentifier.getter();
      UICollectionView.register<A>(_:reuseIdentifier:)();

      sub_13C80(0, &qword_DFE230);
      UICollectionView.register<A>(_:reuseIdentifier:)();
      type metadata accessor for HeaderFooterView();
      sub_AB92A0();
      UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

      sub_AB92A0();
      UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

      type metadata accessor for ButtonContainingCollectionReusableView();
      sub_AB92A0();
      static UICollectionReusableView.reuseIdentifier.getter();
      UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

      [v20 addSubview:v41];

      (*(v47 + 8))(v51, v48);
      v46 = *&v1[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView];
      *&v1[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView] = v41;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_3F4CF4(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v3 - 8);
  v5 = v32 - v4;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v32 - v11;
  v13 = type metadata accessor for JSSettingsViewController();
  v45.receiver = v1;
  v45.super_class = v13;
  objc_msgSendSuper2(&v45, "viewWillAppear:", a1 & 1);
  v14 = *&v1[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView];
  if (v14)
  {
    v15 = v14;
    v16 = [v15 indexPathsForSelectedItems];
    if (!v16)
    {

      (*(v7 + 56))(v5, 1, 1, v6);
LABEL_9:
      sub_12E1C(v5, &unk_DE8E20);
      goto LABEL_13;
    }

    v38 = v12;
    v17 = v16;
    v18 = sub_AB9760();

    if (*(v18 + 16))
    {
      (*(v7 + 16))(v5, v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
      v19 = 0;
    }

    else
    {
      v19 = 1;
    }

    (*(v7 + 56))(v5, v19, 1, v6);

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      goto LABEL_9;
    }

    v20 = v38;
    v37 = *(v7 + 32);
    v37(v38, v5, v6);
    v21 = [v1 transitionCoordinator];
    if (v21)
    {
      v35 = v21;
      v36 = v7 + 32;
      v22 = *(v7 + 16);
      v32[1] = v7 + 16;
      v33 = v22;
      v22(v10, v20, v6);
      v23 = *(v7 + 80);
      v32[0] = (v23 + 24) & ~v23;
      v24 = swift_allocObject();
      *(v24 + 16) = v15;
      v37((v24 + ((v23 + 24) & ~v23)), v10, v6);
      *(v24 + ((v23 + 24) & ~v23) + v8) = a1 & 1;
      v43 = sub_404BD4;
      v44 = v24;
      aBlock = _NSConcreteStackBlock;
      v40 = 1107296256;
      v41 = sub_CF24C;
      v42 = &block_descriptor_253;
      v34 = _Block_copy(&aBlock);
      v25 = v15;

      v26 = v38;
      v33(v10, v38, v6);
      v27 = swift_allocObject();
      *(v27 + 16) = v25;
      v37((v27 + v32[0]), v10, v6);
      v43 = sub_404D58;
      v44 = v27;
      aBlock = _NSConcreteStackBlock;
      v40 = 1107296256;
      v41 = sub_CF24C;
      v42 = &block_descriptor_259;
      v28 = _Block_copy(&aBlock);
      v29 = v25;

      v30 = v34;
      [v35 animateAlongsideTransition:v34 completion:v28];

      (*(v7 + 8))(v26, v6);
      _Block_release(v28);
      _Block_release(v30);
      swift_unknownObjectRelease();
    }

    else
    {
      isa = sub_AB3770().super.isa;
      [v15 deselectItemAtIndexPath:isa animated:a1 & 1];

      (*(v7 + 8))(v20, v6);
    }
  }

LABEL_13:
  sub_401268();
}

void sub_3F520C(void *a1, void *a2)
{
  if ([a1 isCancelled])
  {
    isa = sub_AB3770().super.isa;
    [a2 selectItemAtIndexPath:isa animated:0 scrollPosition:0];
  }
}

void sub_3F52E4()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for JSSettingsViewController();
  objc_msgSendSuper2(&v11, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (!v3)
    {
LABEL_9:
      __break(1u);
      return;
    }

    v4 = v3;
    [v3 bounds];
    [v2 setFrame:?];
  }

  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  [v5 bounds];
  v13.origin.x = v7;
  v13.origin.y = v8;
  v13.size.width = v9;
  v13.size.height = v10;
  v12 = *&v0[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_lastSeenViewBounds];
  *&v0[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_lastSeenViewBounds] = v13;
  if (!CGRectEqualToRect(v12, v13))
  {
    sub_3FEC1C(0);
  }
}

void sub_3F5440(void *a1)
{
  v2 = v1;
  v32.receiver = v1;
  v32.super_class = type metadata accessor for JSSettingsViewController();
  objc_msgSendSuper2(&v32, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_textDrawingCache];
  [v4 displayScale];
  v7 = v6;
  swift_beginAccess();
  *(v5 + 16) = v7;
  sub_106F0C();
  v8 = [v4 horizontalSizeClass];
  if (a1 && v8 == [a1 horizontalSizeClass])
  {
    v9 = [v4 preferredContentSizeCategory];
    v10 = [a1 preferredContentSizeCategory];
    v11 = sub_AB92A0();
    v13 = v12;
    if (v11 == sub_AB92A0() && v13 == v14)
    {

LABEL_34:

      return;
    }

    v15 = sub_ABB3C0();

    if (v15)
    {
      goto LABEL_34;
    }
  }

  [*(v5 + 64) removeAllObjects];
  [*(v5 + 80) removeAllObjects];
  if (*(v5 + 96))
  {
    *(v5 + 104) = 1;
  }

  else
  {
    v16 = [objc_opt_self() defaultCenter];
    if (qword_DE6828 != -1)
    {
      swift_once();
    }

    [v16 postNotificationName:static TextDrawing.Cache.didInvalidateNotification object:v5];
  }

  if (![v2 isViewLoaded])
  {
    goto LABEL_34;
  }

  v17 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_maximumMeasuredDescriptionTextWidth;
  *&v2[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_maximumMeasuredDescriptionTextWidth] = 0;
  if ((sub_AB38D0() & 1) == 0 || (v18 = *&v2[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView]) == 0)
  {
LABEL_28:
    v27 = *&v2[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView];
    if (v27)
    {
      v28 = [v27 collectionViewLayout];
      if (v28)
      {
        v29 = v28;
        [swift_getObjCClassFromObject() invalidationContextClass];
        swift_getObjCClassMetadata();
        sub_13C80(0, &unk_DFED50);
        if (swift_dynamicCastMetatype())
        {
          v30 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          [v29 invalidateLayoutWithContext:v30];

          v29 = v30;
        }
      }
    }

    sub_3FEC1C(1);
    goto LABEL_34;
  }

  v31 = v18;
  v19 = [v31 visibleCells];
  sub_13C80(0, &qword_DFE230);
  v20 = sub_AB9760();

  if (!(v20 >> 62))
  {
    v21 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
    if (v21)
    {
      goto LABEL_17;
    }

LABEL_27:

    goto LABEL_28;
  }

  v21 = sub_ABB060();
  if (!v21)
  {
    goto LABEL_27;
  }

LABEL_17:
  if (v21 >= 1)
  {
    for (i = 0; i != v21; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v23 = sub_360438(i, v20);
      }

      else
      {
        v23 = *(v20 + 8 * i + 32);
      }

      v24 = v23;
      type metadata accessor for TextFieldCell();
      v25 = swift_dynamicCastClass();
      if (v25)
      {
        v26 = v25;
        *(v25 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionTextMinimumWidth) = *&v2[v17];
        if (sub_AB38D0())
        {
          [v26 setNeedsLayout];
        }
      }
    }

    goto LABEL_27;
  }

  __break(1u);
}