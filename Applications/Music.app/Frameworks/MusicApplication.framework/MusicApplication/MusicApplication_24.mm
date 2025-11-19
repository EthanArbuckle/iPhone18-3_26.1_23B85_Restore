uint64_t sub_20575C(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    return v3 == 0;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 < 3)
  {
    return 0;
  }

  sub_13C80(0, &qword_DFA720);
  return sub_ABA790() & 1;
}

void sub_2057F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*&stru_3D8.segname[(swift_isaMask & *Strong) + 16])();
    v3 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalCompositeStatus + 32];
    if ((v3 & 0xFE) == 0xF8)
    {
      LOBYTE(v3) = 122;
    }

    if (v2)
    {
      if ((v3 & 0xFE) == 0x7A)
      {
        goto LABEL_14;
      }

      v4 = v3 >> 1;
      if ((v4 - 62) < 2 || (v4 - 126) < 2 || v4 != 125 && (v3 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }

    else if ((v3 & 0xFE) == 0x7A)
    {
LABEL_14:

      return;
    }

    v5 = &v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusControllableDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 1);
      swift_getObjectType();
      v7 = *(v6 + 8);
      v8 = v1;
      v7();
      swift_unknownObjectRelease();
    }

    goto LABEL_14;
  }
}

void sub_205970(uint64_t a1, uint64_t a2, uint64_t a3, double *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v69 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAAB0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v69 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v71 = v8;
    v17 = type metadata accessor for SymbolButton.Configuration(0);
    v73 = v17[17];
    v18 = *(a2 + v73);
    v19 = sub_BD4F8(a2);
    (*(&stru_3D8.size + (swift_isaMask & *v16)))(v19);
    v20 = *(v17 - 1);
    v21 = (*(v20 + 56))(v14, 0, 1, v17);
    v22 = (*&stru_3D8.segname[(swift_isaMask & *v16) + 16])(v21);
    v23 = *(a4 + 15);
    if ((v23 & 0xFE) == 0xF8)
    {
      __break(1u);
    }

    else
    {
      v24 = v22;
      v25 = v14;
      v26 = a4[14];
      v70 = *(a4 + 15);
      v27 = v23;
      v28 = *(a4 + 17);
      v72 = v25;
      sub_15F84(v25, v12, &unk_DFAAB0);
      v29 = *(v20 + 48);
      if (v29(v12, 1, v17) == 1)
      {
        v30 = v28;
        SymbolButton.Configuration.init()(a2);
        v31 = v29(v12, 1, v17);
        v32 = v28;
        if (v31 != 1)
        {
          sub_12E1C(v12, &unk_DFAAB0);
        }
      }

      else
      {
        sub_BD554(v12, a2);
        v33 = v28;
        v32 = v28;
      }

      v34 = v26;
      sub_25C978(v27, v24 & 1, v74);
      sub_BD438(v74, a2);
      v35 = SymbolButton.Configuration.platterMinimumSize.unsafeMutableAddressor();
      v37 = *v35;
      *(a2 + v17[13]) = *v35;
      if ((v27 & 0xFFFFFFFE) == 0x7A)
      {
        v38 = 0;
        v39 = v72;
      }

      else
      {
        v38 = 0;
        v40 = v27 >> 1;
        v39 = v72;
        if ((v40 - 125) >= 3 && (v40 - 62) >= 2)
        {
          if (v27 < 0)
          {
            v38 = 0;
          }

          else
          {
            if (v32)
            {
              v38 = v32;
            }

            else
            {
              v41 = objc_allocWithZone(type metadata accessor for CircularProgressView());
              v38 = CircularProgressView.init(size:)(0.0, 0.0);
            }

            v42 = v70;
            if (v70)
            {
              v34 = 0.0;
            }

            v43 = v32;
            v44 = v38;
            if (v24)
            {
              CircularProgressView.image.setter(0);
              if (v42 & 1 | (v34 <= 0.051))
              {
                v45 = 1;
              }

              else
              {
                v45 = *&v34;
              }

              if (v42 & 1 | (v34 <= 0.051))
              {
                v46 = 256;
              }

              else
              {
                v46 = 0;
              }
            }

            else
            {
              v47 = sub_AB9260();
              v48 = [objc_opt_self() systemImageNamed:v47];
              v69 = *&v34;
              v49 = v48;

              CircularProgressView.image.setter(v49);
              CircularProgressView.imageScale.setter(0.25);
              v46 = v70 & 1;
              v45 = v69;
            }

            CircularProgressView.setState(_:animated:)(v45, v46, 1);

            v50 = v44;
          }
        }
      }

      SymbolButton.CustomView.init(view:)(v38, v75, v37, v36);
      v51 = a2 + v17[10];
      sub_160B4(v75, v51, &qword_DED418);
      if (v24)
      {

        v52 = v17[9];
        sub_12E1C(a2 + v52, &unk_DFFBC0);
        v53 = sub_ABA680();
        (*(*(v53 - 8) + 56))(a2 + v52, 1, 1, v53);
        sub_3F9D0(*(a2 + 200), *(a2 + 208));
        *(a2 + 200) = xmmword_AF82C0;
        *(a2 + 216) = 0;
        *(a2 + 224) = 0;
        if (*v51)
        {
          __asm { FMOV            V0.2D, #8.0 }

          *(v51 + 8) = _Q0;
          *(v51 + 24) = _Q0;
        }
      }

      else
      {
        v59 = v71;
        sub_ABA670();
        v60 = sub_ABA680();
        (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
        sub_160B4(v59, a2 + v17[9], &unk_DFFBC0);
        if (*v51)
        {
          v61 = *&UIEdgeInsetsZero.bottom;
          *(v51 + 8) = *&UIEdgeInsetsZero.top;
          *(v51 + 24) = v61;
        }

        if (v38)
        {

          sub_3F9D0(*(a2 + 200), *(a2 + 208));
          *(a2 + 200) = xmmword_AF82C0;
          *(a2 + 216) = 0;
          *(a2 + 224) = 0;
        }

        else
        {
          v62 = SymbolButton.Background.tertiary.unsafeMutableAddressor();
          v72 = v32;
          v63 = *v62;
          v64 = v62[1];
          v65 = v62[3];
          v71 = v62[2];
          v66 = *(a2 + 200);
          v67 = *(a2 + 208);

          v68 = v64;
          sub_3F9D0(v66, v67);
          *(a2 + 200) = v63;
          *(a2 + 208) = v64;
          v32 = v72;
          *(a2 + 216) = v71;
          *(a2 + 224) = v65;
        }
      }

      sub_12E1C(v39, &unk_DFAAB0);

      *(a2 + v73) = v18;
    }
  }
}

id sub_206024()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HorizontalLockupCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HorizontalLockupCollectionViewCell()
{
  result = qword_DF8A48;
  if (!qword_DF8A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20627C()
{
  sub_7D678();
  if (v0 <= 0x3F)
  {
    sub_AB4F50();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_206408(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

unint64_t sub_206444()
{
  result = qword_DF8A58;
  if (!qword_DF8A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF8A58);
  }

  return result;
}

uint64_t sub_206498(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkCachingReference) = a1;

  *(*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent) + 16) = a1;
}

uint64_t sub_206538(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusControllableDelegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

__n128 sub_206588@<Q0>(uint64_t a1@<X8>)
{
  v2 = (v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalCompositeStatus);
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalCompositeStatus + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalCompositeStatus);
  *(a1 + 16) = v3;
  result = v2[2];
  *(a1 + 32) = result;
  return result;
}

void sub_2065A8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton);
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton) = a1;
  sub_203DB8(v2);
}

id sub_2065D0(id result)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isMediaPickerAddButtonSelected);
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isMediaPickerAddButtonSelected) = result;
  if (v2 != (result & 1))
  {
    if (*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton))
    {
      return [*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton) setSelected:result & 1];
    }
  }

  return result;
}

uint64_t sub_206624()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_imageDidChangeHandler);
  sub_307CC(v1);
  return v1;
}

void (*sub_206700(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*(&stru_478.reloff + (swift_isaMask & *v1)))();
  return sub_A8F90;
}

uint64_t sub_2067E4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (!a2)
  {
    if (a4)
    {
LABEL_10:
      v4 = 0;
      return v4 & 1;
    }

    goto LABEL_6;
  }

  if (a2 == 1)
  {
    if (a4 != 1)
    {
      goto LABEL_10;
    }

LABEL_6:
    sub_7FD28();
    v4 = sub_AB38E0();
    return v4 & 1;
  }

  if (a4 != 2 || a3)
  {
    goto LABEL_10;
  }

  v4 = 1;
  return v4 & 1;
}

void sub_206880(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkAccessoryStyle;
  v10 = *(v4 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkAccessoryStyle);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  sub_7FCB4(a1);
  sub_7FCC4(v10);
  type metadata accessor for ArtworkComponentImageView();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle;
    v13 = *(v11 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle);
    v14 = *(v11 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle + 8);
    v15 = *(v11 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle + 16);
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 16) = a3;
    v16 = *(v12 + 24);
    *(v12 + 24) = a4;
    sub_7FCB4(a1);
    sub_7D6F4(v13, v14, v15, v16);

    sub_7FCC4(v13);
  }
}

uint64_t sub_2069BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *&v4[v5];
  *&v4[v5] = a1;

  v7 = v4;
  sub_2E6210(v6);
}

void sub_206A84()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets);
  *v2 = xmmword_AFB140;
  v2[1] = xmmword_B03DC0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize) = vdupq_n_s64(0x4044000000000000uLL);
  v3 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkCornerTreatment;
  v4 = UIView.Corner.small.unsafeMutableAddressor();
  v5 = sub_ABA680();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1 + v3, v4, v5);
  (*(v6 + 56))(v1 + v3, 0, 1, v5);
  v7 = (v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder);
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkExplicitBackgroundColor) = 0;
  v8 = v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkAccessoryStyle;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  *(v8 + 24) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView) = 1;
  sub_AB4ED0();
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_allowsCustomBottomSeparator) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_allowsCustomTopSeparator) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment) = 0;
  v9 = v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment;
  *v9 = 0;
  *(v9 + 8) = 2;
  v10 = (v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_layoutInvalidationHandler);
  *v10 = 0;
  v10[1] = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_showsContextMenu) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell____lazy_storage___contextMenuButton) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell____lazy_storage___favoriteIndicator) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsCustomHandlingOfSeparatorInset) = 0;
  v11 = (v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_proposedHorizontalLockupSeparatorInset);
  v12 = *&UIEdgeInsetsZero.bottom;
  *v11 = *&UIEdgeInsetsZero.top;
  v11[1] = v12;
  v13 = (v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalCompositeStatus);
  *v13 = 0u;
  v13[1] = 0u;
  v13[2] = xmmword_B03DA0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusControllableDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isMediaPickerAddButtonSelected) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkCachingReference) = 0;
  v14 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v16 = sub_80104(v15);

  *(v1 + v14) = v16;
  v17 = (v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_imageDidChangeHandler);
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView;
  type metadata accessor for TextStackView();
  *(v1 + v18) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customTopSeparatorView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customBottomSeparatorView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_rowPosition) = 1;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserver) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserverBehaviorType) = 1;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_forceKeepLocalDownloadVisiblity) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_206E10()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_206E50()
{

  return swift_deallocObject();
}

id sub_206E88()
{
  v1 = 1.0;
  if (*(v0 + 16))
  {
    v1 = 0.0;
  }

  return [*(v0 + 24) setAlpha:v1];
}

uint64_t block_copy_helper_69(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_206ED8()
{

  return swift_deallocObject();
}

id sub_206F10()
{
  v1 = *(v0 + 16);
  [v1 setNeedsLayout];

  return [v1 layoutIfNeeded];
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication34HorizontalLockupCollectionViewCellC08TrailingF0O(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_206F94(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_206FF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void sub_2070F0()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for SearchableContainerViewController();
  objc_msgSendSuper2(&v13, "viewDidLoad");
  [*(*&v0[qword_DF8A70] + qword_DF8C40) setDelegate:v0];
  if (v0[qword_DF8A98])
  {
    v1 = &qword_DF8A78;
  }

  else
  {
    v1 = &qword_DF8A80;
  }

  v2 = *&v0[*v1];
  [v0 addChildViewController:v2];
  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v3;
  v5 = [v0 view];
  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  [v5 bounds];
  [v4 setFrame:?];

  v7 = [v2 view];
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  [v7 setAutoresizingMask:18];

  v9 = [v0 view];
  if (!v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  v11 = [v2 view];
  if (v11)
  {
    v12 = v11;
    [v10 addSubview:v11];

    [v2 didMoveToParentViewController:v0];
    return;
  }

LABEL_14:
  __break(1u);
}

void sub_20730C(void *a1)
{
  v1 = a1;
  sub_2070F0();
}

void sub_207354(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_2073B4(a3, &selRef_viewDidAppear_, 1);
}

uint64_t sub_2073B4(char a1, SEL *a2, char a3)
{
  v17.receiver = v3;
  v17.super_class = type metadata accessor for SearchableContainerViewController();
  objc_msgSendSuper2(&v17, *a2, a1 & 1);
  v7 = *(*&v3[qword_DF8A70] + qword_DF8C40);
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = result;
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 8);
    v13 = v7;
    v12(ObjectType, v10);
    v15 = v14;

    v16 = swift_getObjectType();
    (*(v15 + 16))(a3 & 1, v16, v15);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_207514(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_2073B4(a3, &selRef_viewDidDisappear_, 0);
}

id sub_207574(void *a1)
{
  v1 = a1;
  v2 = sub_2075B8();

  return v2;
}

id sub_2075B8()
{
  v1 = [*(v0 + qword_DF8A80) navigationItem];

  return v1;
}

id sub_2075F8(void *a1)
{
  v1 = a1;
  sub_207670();
  v3 = v2;

  if (v3)
  {
    v4 = sub_AB9260();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_207670()
{
  v1 = *(v0 + qword_DF8A80);
  v2 = [v1 title];
  if (v2)
  {
    v3 = v2;
    v4 = sub_AB92A0();
  }

  else
  {

    return 0;
  }

  return v4;
}

void sub_2076F0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_AB92A0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = a1;
  sub_207770(v4, v6);
}

void sub_207770(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + qword_DF8A80);
  if (a2)
  {
    v4 = v3;
    v6 = sub_AB9260();
  }

  else
  {
    v5 = v3;
    v6 = 0;
  }

  [v3 setTitle:v6];
}

void sub_207818(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v8 = a4;
  v7 = a1;
  sub_208A28();
}

void sub_207884(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_208A2C();
}

uint64_t sub_2078E4(uint64_t result)
{
  v2 = qword_DF8A90;
  if (*(v1 + qword_DF8A90) != (result & 1))
  {
    v3 = v1;
    sub_20833C();
    v4 = *(*(v1 + qword_DF8A70) + qword_DF8C40);
    swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      v4 = 0;
      v7 = 0;
    }

    else
    {
      v7 = v5;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 8);
      v10 = v4;
      v9(ObjectType, v7);
      v12 = v11;

      v13 = swift_getObjectType();
      (*(v12 + 16))(*(v3 + v2), v13, v12);
      swift_unknownObjectRelease();
    }

    v14 = *(v3 + qword_DF8A78);
    swift_getObjectType();
    v15 = swift_conformsToProtocol2();
    if (v15)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      v17 = v15;
      v18 = swift_getObjectType();
      v19 = *(v17 + 8);
      v20 = v14;
      v19(v18, v17);
      v22 = v21;

      if (v4)
      {
        v23 = swift_getObjectType();
        v24 = *(v7 + 8);
        swift_unknownObjectRetain();
        v25 = v24(v23, v7);
        v27 = v26;
        swift_unknownObjectRelease();
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      v28 = swift_getObjectType();
      (*(v22 + 40))(v25, v27, v28, v22);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_207B40(char a1)
{
  v2 = *(v1 + qword_DF8A90);
  *(v1 + qword_DF8A90) = a1;
  return sub_2078E4(v2);
}

void sub_207B58(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_208A54();
}

void sub_207BB8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_208A6C();
}

void sub_207C18(char a1)
{
  v2 = v1[qword_DF8A98];
  if (v2 != (a1 & 1))
  {
    v3 = v1;
    if (a1)
    {
      v4 = qword_DF8A78;
    }

    else
    {
      v4 = qword_DF8A80;
    }

    v5 = *&v1[v4];
    if (v2)
    {
      v6 = qword_DF8A78;
    }

    else
    {
      v6 = qword_DF8A80;
    }

    v7 = *&v3[v6];
    v48 = v5;
    sub_72C6C();
    v8 = v5;
    v9 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8DD0);
    if (swift_dynamicCast())
    {
      v10 = *(&v45 + 1);
      v11 = v46;
      __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
      v11[1](0, v10, v11);
      __swift_destroy_boxed_opaque_existential_0(&v44);
    }

    else
    {
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
      sub_208944(&v44);
    }

    v48 = v9;
    v12 = v9;
    if (swift_dynamicCast())
    {
      v13 = *(&v45 + 1);
      v14 = v46;
      __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
      v14[1](1, v13, v14);
      __swift_destroy_boxed_opaque_existential_0(&v44);
    }

    else
    {
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
      sub_208944(&v44);
    }

    [v8 setDefinesPresentationContext:0];
    [v12 setDefinesPresentationContext:1];
    v15 = [v12 parentViewController];
    if (!v15 || (v16 = v15, v17 = v3, v18 = sub_ABA790(), v16, v17, (v18 & 1) == 0))
    {
      [v3 addChildViewController:v12];
      v19 = [v3 view];
      if (!v19)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v20 = v19;
      v21 = [v12 view];
      if (!v21)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v22 = v21;
      [v20 addSubview:v21];

      v23 = [v12 view];
      if (!v23)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v24 = v23;
      v25 = [v3 view];
      if (!v25)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v26 = v25;
      [v25 bounds];
      [v24 setFrame:?];

      v27 = [v12 view];
      if (!v27)
      {
LABEL_32:
        __break(1u);
        return;
      }

      v28 = v27;
      [v27 setAutoresizingMask:18];
    }

    v29 = [v12 view];
    if (v29)
    {
      v30 = v29;
      [v29 setAlpha:0.0];

      v31 = [v12 view];
      if (v31)
      {
        v32 = v31;
        [v31 setHidden:0];

        v33 = objc_opt_self();
        v34 = swift_allocObject();
        v34[2] = v3;
        v34[3] = v8;
        v34[4] = v12;
        v46 = sub_2089B0;
        v47 = v34;
        *&v44 = _NSConcreteStackBlock;
        *(&v44 + 1) = 1107296256;
        *&v45 = sub_1B5EB4;
        *(&v45 + 1) = &block_descriptor_70;
        v35 = _Block_copy(&v44);
        v36 = v8;
        v37 = v12;
        v38 = v3;

        v39 = swift_allocObject();
        v39[2] = v37;
        v39[3] = v38;
        v39[4] = v36;
        v46 = sub_208A1C;
        v47 = v39;
        *&v44 = _NSConcreteStackBlock;
        *(&v44 + 1) = 1107296256;
        *&v45 = sub_1811AC;
        *(&v45 + 1) = &block_descriptor_18;
        v40 = _Block_copy(&v44);
        v41 = v36;
        v42 = v37;
        v43 = v38;

        [v33 animateWithDuration:2 delay:v35 options:v40 animations:0.35 completion:0.0];

        _Block_release(v40);
        _Block_release(v35);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }
}

void sub_208130(uint64_t a1, void *a2, void *a3)
{
  [*(a1 + qword_DF8A70) setShowsSearchResultsController:*(a1 + qword_DF8A98)];
  v5 = [a2 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  [v5 setAlpha:0.0];

  v7 = [a3 view];
  if (!v7)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 setAlpha:1.0];
}

void sub_208204(int a1, id a2, uint64_t a3, void *a4)
{
  [a2 didMoveToParentViewController:?];
  v5 = [a4 view];
  if (v5)
  {
    v6 = v5;
    [v5 setHidden:1];
  }

  else
  {
    __break(1u);
  }
}

void sub_208294(char a1)
{
  v2 = *(v1 + qword_DF8A98);
  *(v1 + qword_DF8A98) = a1 & 1;
  sub_207C18(v2);
}

Swift::Int sub_2082F0()
{
  sub_ABB5C0();
  LaunchURL.Resolver.PerformOption.hash(into:)(v2, *v0);
  return sub_ABB610();
}

void sub_20833C()
{
  if (*(v0 + qword_DF8A88))
  {
    v1 = *(v0 + qword_DF8A90);
  }

  else
  {
    v2 = v0;
    v3 = *(v0 + qword_DF8A70);
    v4 = UISearchController.searchText.getter();
    v6 = v5;

    if (!v6)
    {
      goto LABEL_8;
    }

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v1 = 1;
    }

    else
    {
LABEL_8:
      v1 = 0;
    }

    v0 = v2;
  }

  v8 = *(v0 + qword_DF8A98);
  *(v0 + qword_DF8A98) = v1;

  sub_207C18(v8);
}

id sub_2083FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_208A80(a3);

  return v5;
}

id sub_2084D8()
{
  v0 = sub_208BD8();

  return v0;
}

void sub_208514(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_208BE8();
}

id sub_2085BC()
{
  v2 = *(&stru_20.filesize + (swift_isaMask & *v0));
  v3 = *(&stru_20.nsects + (swift_isaMask & *v0));
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SearchableContainerViewController.SearchController();
  return objc_msgSendSuper2(&v4, "dealloc", v2, v3);
}

void sub_208644(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_208C18();
}

id sub_2086D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchableContainerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_208758(uint64_t a1)
{
  v2 = *(a1 + qword_DF8A80);
}

void sub_208898()
{
  *(v0 + qword_DF8A88) = 0;
  *(v0 + qword_DF8A90) = 0;
  *(v0 + qword_DF8A98) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_208944(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8DD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_4()
{

  return swift_deallocObject();
}

uint64_t sub_208A54()
{
  v1 = *(v0 + qword_DF8A90);
  *(v0 + qword_DF8A90) = 1;
  return sub_2078E4(v1);
}

uint64_t sub_208A6C()
{
  v1 = *(v0 + qword_DF8A90);
  *(v0 + qword_DF8A90) = 0;
  return sub_2078E4(v1);
}

id sub_208A80(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = swift_isaMask & *v1;
  v6 = *&stru_68.sectname[v5];
  *(v1 + qword_DF8C40) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = *(v5 + 80);
  v9 = *(&stru_20.nsects + (v4 & v3));
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SearchableContainerViewController.SearchController();
  return objc_msgSendSuper2(&v10, "initWithSearchResultsController:", a1, v8, v9, v6);
}

char *InlineSocialUpsellView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_title];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_subtitle];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_primaryButtonTitle];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_lockupImageArtworkCatalog] = 0;
  v14 = &v4[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_closeButtonHandler];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v4[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_primaryButtonHandler];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkCachingReference] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textDrawingCache] = 0;
  v16 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textStackView;
  type metadata accessor for TextStackView();
  *&v5[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v19 = sub_80104(v18);

  *&v5[v17] = v19;
  v20 = &v5[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textComponents];
  *v20 = _s16MusicApplication22InlineSocialUpsellViewC14textComponents33_6AA3EA120887548DCAAD9EE36D67F498LLAC04TextH0AELLVvpfi_0();
  v20[1] = v21;
  v20[2] = v22;
  *&v5[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView____lazy_storage___closeButton] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView____lazy_storage___primaryButton] = 0;
  v42.receiver = v5;
  v42.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  v24 = [v23 layer];
  [v24 setAllowsGroupOpacity:0];

  v25 = [v23 layer];
  [v25 setAllowsGroupBlending:0];

  v26 = qword_DE6C78;
  v27 = v23;
  if (v26 != -1)
  {
    swift_once();
  }

  [v27 setBackgroundColor:qword_E718B8];
  v28 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkComponent;
  v29 = *&v27[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkComponent];
  *(v29 + 24) = 0xD000000000000019;
  *(v29 + 32) = 0x8000000000B57F20;

  v30 = *&v27[v28];
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v32 = (v30 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v33 = *(v30 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  *v32 = sub_13B168;
  v32[1] = v31;

  sub_17654(v33);

  v34 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textStackView;
  v35 = *&v27[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textStackView];
  v36 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  *(v35 + v36) = 2;
  v37 = [v27 traitCollection];

  sub_209030(v37);
  [v27 addSubview:*(*&v27[v28] + 112)];
  [v27 addSubview:*&v27[v34]];
  sub_209400();
  v39 = v38;
  [v27 addSubview:v38];

  v40 = sub_2095D4();
  [v27 addSubview:v40];

  return v27;
}

void sub_209030(void *a1)
{
  v2 = v1;
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  __chkstk_darwin(v5 - 8);
  v6 = &v1[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textComponents];
  swift_beginAccess();
  sub_20B854(a1);
  swift_endAccess();
  v7 = *(v6 + 2);

  TextStackView.removeAll()();
  if (!(v7 >> 62))
  {
    v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_10:

    v11 = sub_2095D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA930);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_AF4EC0;
    sub_AB91E0();
    sub_AB3550();
    v13 = sub_AB9320();
    v32 = v14;
    v33 = v13;
    sub_20C3FC(v34);
    v30 = v34[1];
    v31 = v34[0];
    v29 = v35;
    v28 = v36;
    v15 = v37;
    v27 = v38;
    v26 = v39;
    v16 = objc_opt_self();
    v17 = [v16 defaultMetrics];
    v18 = sub_ABA310();
    sub_AB9EF0();
    v20 = v19;

    v21 = [v16 defaultMetrics];
    v22 = sub_ABA310();
    sub_AB9EF0();
    v24 = v23;

    *(v12 + 32) = 0x656C746974;
    *(v12 + 40) = 0xE500000000000000;
    *(v12 + 48) = v33;
    *(v12 + 56) = v32;
    *(v12 + 64) = v31;
    *(v12 + 72) = v30;
    *(v12 + 80) = v29;
    *(v12 + 88) = v28;
    *(v12 + 96) = v15;
    *(v12 + 104) = v27;
    *(v12 + 112) = v26;
    *(v12 + 120) = v20;
    *(v12 + 128) = v24;
    v25 = *&v11[OBJC_IVAR____TtC16MusicApplication15MultilineButton_lineComponents];
    *&v11[OBJC_IVAR____TtC16MusicApplication15MultilineButton_lineComponents] = v12;
    sub_45677C(v25);

    [v2 setNeedsLayout];
    return;
  }

  v8 = sub_ABB060();
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = sub_36003C(i, v7);
      }

      else
      {
        v10 = *(v7 + 8 * i + 32);
      }

      TextStackView.add(_:)(v10);
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_209400()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView____lazy_storage___closeButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView____lazy_storage___closeButton);
  if (v2)
  {
    goto LABEL_6;
  }

  v3 = objc_opt_self();
  v4 = [v3 buttonWithType:1];
  [v3 easyTouchDefaultHitRectInsets];
  [v4 setHitRectInsets:?];
  v5 = objc_opt_self();
  v6 = sub_AB9260();
  if (qword_DE6AF0 != -1)
  {
    swift_once();
  }

  v7 = [v5 imageNamed:v6 inBundle:qword_E71620 compatibleWithTraitCollection:0];

  if (v7)
  {
    [v4 setImage:v7 forState:0];

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = sub_13C80(0, &qword_E0BC00);
    v10 = v0;
    ControlEventHandling<>.on(_:handler:)(64, sub_20CEC8, v8, v9);

    v11 = *(v0 + v1);
    *(v10 + v1) = v4;
    v4;

    v2 = 0;
LABEL_6:
    v12 = v2;
    return;
  }

  __break(1u);
}

char *sub_2095D4()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView____lazy_storage___primaryButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView____lazy_storage___primaryButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView____lazy_storage___primaryButton);
  }

  else
  {
    v4 = sub_20C130();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_209688(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_title];
  swift_beginAccess();
  result = a1;
  if (*v5 != a1 || *(v5 + 1) != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v8 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textComponents;
      swift_beginAccess();
      v9 = *&v2[v8];

      v10 = String.trim()();

      swift_beginAccess();
      v9[7] = v10;

      sub_2EB704();

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t InlineSocialUpsellView.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_title];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  v8 = v6 == a1 && v7 == a2;
  if (!v8 && (sub_ABB3C0() & 1) == 0)
  {
    v9 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textComponents;
    swift_beginAccess();
    v10 = *&v2[v9];

    v11 = String.trim()();

    swift_beginAccess();
    v10[7] = v11;

    sub_2EB704();

    [v2 setNeedsLayout];
  }
}

void (*InlineSocialUpsellView.title.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_title;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_20996C;
}

uint64_t sub_209984(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_subtitle];
  swift_beginAccess();
  result = a1;
  if (*v5 != a1 || *(v5 + 1) != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v8 = &v2[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textComponents];
      swift_beginAccess();
      v9 = *(v8 + 1);

      v10 = String.trim()();

      swift_beginAccess();
      v9[7] = v10;

      sub_2EB704();

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t InlineSocialUpsellView.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_subtitle];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  v8 = v6 == a1 && v7 == a2;
  if (!v8 && (sub_ABB3C0() & 1) == 0)
  {
    v9 = &v2[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textComponents];
    swift_beginAccess();
    v10 = *(v9 + 1);

    v11 = String.trim()();

    swift_beginAccess();
    v10[7] = v11;

    sub_2EB704();

    [v2 setNeedsLayout];
  }
}

void (*InlineSocialUpsellView.subtitle.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_subtitle;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_209C70;
}

void sub_209C88(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v7 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v8 = *(*a1 + 32);
  v9 = (v7 + v6);
  v11 = *v9;
  v10 = v9[1];
  *v9 = v5;
  v9[1] = v8;
  if (a2)
  {

    a3(v11, v10);
  }

  else
  {
    a3(v11, v10);
  }

  free(v4);
}

uint64_t sub_209D30(uint64_t a1, uint64_t a2)
{
  v5 = sub_AB35C0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_AB9250();
  __chkstk_darwin(v6 - 8);
  v7 = (v2 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_primaryButtonTitle);
  result = swift_beginAccess();
  v9 = v7[1];
  if (!a2)
  {
    if (!v9)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!v9 || (*v7 == a1 ? (v10 = v9 == a2) : (v10 = 0), !v10 && (result = sub_ABB3C0(), (result & 1) == 0)))
  {
LABEL_10:
    v11 = sub_2095D4();
    if (v7[1])
    {

      v12 = String.trim()();
      countAndFlagsBits = v12._countAndFlagsBits;
      object = v12._object;
    }

    else
    {
      sub_AB91E0();
      sub_AB3550();
      countAndFlagsBits = sub_AB9320();
      object = v15;
    }

    v16 = &v11[OBJC_IVAR____TtC16MusicApplication15SubtitledButton_title];
    v17 = *&v11[OBJC_IVAR____TtC16MusicApplication15SubtitledButton_title];
    v18 = *&v11[OBJC_IVAR____TtC16MusicApplication15SubtitledButton_title + 8];
    *v16 = countAndFlagsBits;
    v16[1] = object;
    v19 = countAndFlagsBits == v17 && object == v18;
    if (!v19 && (sub_ABB3C0() & 1) == 0)
    {
      sub_458374();
    }
  }

  return result;
}

uint64_t InlineSocialUpsellView.primaryButtonTitle.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_primaryButtonTitle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t InlineSocialUpsellView.primaryButtonTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_primaryButtonTitle);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_209D30(v6, v7);
}

void (*InlineSocialUpsellView.primaryButtonTitle.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_primaryButtonTitle;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_20A094;
}

void sub_20A094(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = (v5 + v4);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v6;
  if (a2)
  {

    sub_209D30(v9, v8);
  }

  else
  {
    sub_209D30(v9, v8);
  }

  free(v2);
}

void *InlineSocialUpsellView.lockupImageArtworkCatalog.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_lockupImageArtworkCatalog;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void InlineSocialUpsellView.lockupImageArtworkCatalog.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_lockupImageArtworkCatalog;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_74EA4(a1);
}

void (*InlineSocialUpsellView.lockupImageArtworkCatalog.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_lockupImageArtworkCatalog;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_20A26C;
}

void sub_20A26C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + v3[4]);
    v5 = v4;
    sub_74EA4(v4);
  }

  free(v3);
}

uint64_t sub_20A35C(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_307CC(*v2);
  return v3;
}

uint64_t sub_20A3C0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  *v6 = a1;
  v6[1] = a2;
  return sub_17654(v7);
}

uint64_t InlineSocialUpsellView.artworkCachingReference.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkCachingReference;
  swift_beginAccess();
  *(v1 + v3) = a1;

  *(*(v1 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkComponent) + 16) = a1;
}

void (*InlineSocialUpsellView.artworkCachingReference.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkCachingReference;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_20A58C;
}

void sub_20A58C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    *(*(v3[3] + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkComponent) + 16) = *(v3[3] + v3[4]);
  }

  free(v3);
}

uint64_t InlineSocialUpsellView.textDrawingCache.setter(uint64_t a1)
{
  sub_20C8F0(a1);
}

void (*InlineSocialUpsellView.textDrawingCache.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textDrawingCache;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_20A6C4;
}

void sub_20A6C4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textStackView);
    v6 = *(v4 + v3[4]);
    v7 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v8 = *(v5 + v7);
    *(v5 + v7) = v6;
    swift_retain_n();
    sub_2E6210(v8);
  }

  free(v3);
}

void (*InlineSocialUpsellView.frame.modify(uint64_t *a1))(objc_super **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 208) = v1;
  ObjectType = swift_getObjectType();
  v4[13].super_class = ObjectType;
  v4[6].receiver = v1;
  v4[6].super_class = ObjectType;
  objc_msgSendSuper2(v4 + 6, "frame");
  v4->receiver = v6;
  v4->super_class = v7;
  v4[1].receiver = v8;
  v4[1].super_class = v9;
  return sub_20A8C0;
}

id sub_20A8EC(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, *a1);
}

void sub_20A9B8(SEL *a1, SEL *a2, double a3, double a4, double a5, double a6)
{
  v9 = v6;
  ObjectType = swift_getObjectType();
  v38.receiver = v9;
  v38.super_class = ObjectType;
  objc_msgSendSuper2(&v38, *a1);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v37.receiver = v9;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, *a2, a3, a4, a5, a6);
  type metadata accessor for CGRect(0);
  v33 = v16;
  v34 = v18;
  v35 = v20;
  v36 = v22;
  v32.receiver = v9;
  v32.super_class = ObjectType;
  objc_msgSendSuper2(&v32, *a1);
  v28 = v23;
  v29 = v24;
  v30 = v25;
  v31 = v26;
  if (sub_AB38D0())
  {
    v27 = [v9 traitCollection];
    sub_209030(v27);
  }
}

void (*InlineSocialUpsellView.bounds.modify(uint64_t *a1))(objc_super **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 208) = v1;
  ObjectType = swift_getObjectType();
  v4[13].super_class = ObjectType;
  v4[6].receiver = v1;
  v4[6].super_class = ObjectType;
  objc_msgSendSuper2(v4 + 6, "bounds");
  v4->receiver = v6;
  v4->super_class = v7;
  v4[1].receiver = v8;
  v4[1].super_class = v9;
  return sub_20AB80;
}

void sub_20AB94(objc_super **a1, char a2, SEL *a3, SEL *a4)
{
  v6 = *a1;
  v8 = *&(*a1)->receiver;
  v7 = *&(*a1)->super_class;
  v10 = *&(*a1)[1].receiver;
  v9 = *&(*a1)[1].super_class;
  receiver = (*a1)[13].receiver;
  super_class = (*a1)[13].super_class;
  v13 = *a1;
  if (a2)
  {
    v13[7].receiver = receiver;
    v6[7].super_class = super_class;
    objc_msgSendSuper2(v13 + 7, *a3);
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v6[8].receiver = receiver;
    v6[8].super_class = super_class;
    objc_msgSendSuper2(v6 + 8, *a4, v8, v7, v10, v9);
    type metadata accessor for CGRect(0);
    v6[9].receiver = receiver;
    v6[2].receiver = v15;
    v6[2].super_class = v17;
    v6[3].receiver = v19;
    v6[3].super_class = v21;
    v6[9].super_class = super_class;
    objc_msgSendSuper2(v6 + 9, *a3);
  }

  else
  {
    v13[10].receiver = receiver;
    v6[10].super_class = super_class;
    objc_msgSendSuper2(v13 + 10, *a3);
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v6[11].receiver = receiver;
    v6[11].super_class = super_class;
    objc_msgSendSuper2(v6 + 11, *a4, v8, v7, v10, v9);
    type metadata accessor for CGRect(0);
    v6[12].receiver = receiver;
    v6[2].receiver = v27;
    v6[2].super_class = v29;
    v6[3].receiver = v31;
    v6[3].super_class = v33;
    v6[12].super_class = super_class;
    objc_msgSendSuper2(v6 + 12, *a3);
  }

  v6[4].receiver = v22;
  v6[4].super_class = v23;
  v6[5].receiver = v24;
  v6[5].super_class = v25;
  if (sub_AB38D0())
  {
    v34 = [v6[13].receiver traitCollection];
    sub_209030(v34);
  }

  free(v6);
}

Swift::Void __swiftcall InlineSocialUpsellView.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v80.receiver = v0;
  v80.super_class = ObjectType;
  objc_msgSendSuper2(&v80, "layoutSubviews");
  v3 = [v0 traitCollection];
  [v3 displayScale];
  [v0 music_inheritedLayoutInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_20B258(v3);
  v71 = v11;
  v73 = v10;
  v68 = v12;
  v65 = v13;
  [v0 effectiveUserInterfaceLayoutDirection];
  v79.receiver = v0;
  v79.super_class = ObjectType;
  objc_msgSendSuper2(&v79, "bounds");
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [v3 horizontalSizeClass];
  v22 = UIEdgeInsetsInsetRect(v15, v17, v19, v21, v5, v7);
  v75 = v23;
  rect = v24;
  v66 = v25;
  v26 = *&v0[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkComponent];
  v27 = [v3 horizontalSizeClass];
  v28 = 366.0;
  v29 = *(v26 + 80);
  v30 = *(v26 + 88);
  if (v27 == &dword_0 + 2)
  {
    v28 = 452.0;
  }

  *(v26 + 80) = v28;
  *(v26 + 88) = v28;
  sub_75614(v29, v30);
  v31 = sub_76368(0, 0, 1);
  v33 = v32;
  v34 = v71 + 0.0;
  v72 = v31 - v65;
  v74 = v73 + 0.0;
  sub_ABA490();
  v69 = v33;
  if (sub_76B28(v35, v36, v37, v38))
  {
    v81.origin.x = v34;
    v81.size.width = v72;
    v81.origin.y = v74;
    v81.size.height = v33;
    v22 = v65 + CGRectGetMaxX(v81);
    v39 = v19 - v22 - v9;
  }

  else
  {
    v39 = rect;
  }

  v40 = v66 - v68;
  v41 = v22;
  v64 = v22;
  v42 = v75;
  recta = v39;
  v43 = v66 - v68;
  Width = CGRectGetWidth(*(&v39 - 2));
  v45 = *&v1[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textStackView];
  [v45 sizeThatFits:{fmin(Width, 250.0), v66 - v68}];
  v63 = v46;
  sub_ABA470();
  v48 = v47;
  v67 = v49;
  v51 = v50;
  v53 = v52;
  v54 = sub_2095D4();
  v78.receiver = v54;
  v78.super_class = type metadata accessor for SubtitledButton();
  objc_msgSendSuper2(&v78, "sizeThatFits:", recta, v40, v63);

  sub_AB3A00();
  v70 = v51 - v55;
  v82.origin.x = v64;
  v82.origin.y = v75;
  v82.size.width = recta;
  v82.size.height = v40;
  CGRectGetMinX(v82);
  v83.origin.x = v48;
  v83.origin.y = v70;
  v83.size.width = v53;
  v83.size.height = v67;
  CGRectGetMaxY(v83);
  v56 = *&v1[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView____lazy_storage___primaryButton];
  sub_ABA490();
  [v56 setFrame:?];

  sub_ABA490();
  [v45 setFrame:?];
  v85.origin.x = 0.0;
  v85.origin.y = 0.0;
  v85.size.width = 0.0;
  v85.size.height = 0.0;
  v84.origin.x = v34;
  v84.size.height = v69;
  v84.size.width = v72;
  v84.origin.y = v74;
  LOBYTE(v45) = CGRectIntersectsRect(v84, v85);
  sub_209400();
  v58 = v57;
  sub_20BFDC(v45 ^ 1);
  v60 = v59;
  [v58 setImage:v59 forState:0];

  v61 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView____lazy_storage___closeButton;
  [*&v1[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView____lazy_storage___closeButton] sizeThatFits:{recta, v40}];
  v62 = *&v1[v61];
  sub_ABA490();
  [v62 setFrame:?];
}

uint64_t sub_20B258(void *a1)
{
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "bounds");
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = [a1 horizontalSizeClass];
  if (result == 2)
  {
    v13.origin.x = v4;
    v13.origin.y = v6;
    v13.size.width = v8;
    v13.size.height = v10;
    CGRectGetWidth(v13);
    sub_471A4();
    result = sub_AB38F0();
    if ((result & 1) == 0)
    {
      v14.origin.x = v4;
      v14.origin.y = v6;
      v14.size.width = v8;
      v14.size.height = v10;
      CGRectGetWidth(v14);
      return sub_AB38F0();
    }
  }

  return result;
}

double InlineSocialUpsellView.sizeThatFits(_:)(double a1)
{
  v3 = [v1 traitCollection];
  InlineSocialUpsellView.preferredHeight(traitCollection:containerWidth:)(v3, a1);

  return a1;
}

uint64_t InlineSocialUpsellView.preferredHeight(traitCollection:containerWidth:)(void *a1, double a2)
{
  v9 = _s16MusicApplication22InlineSocialUpsellViewC14textComponents33_6AA3EA120887548DCAAD9EE36D67F498LLAC04TextH0AELLVvpfi_0();
  v10 = v4;
  v11 = v5;
  sub_20B854(a1);
  sub_2F48A4(v11, a1, 0, 0);
  v6 = sub_2095D4();
  v8.receiver = v6;
  v8.super_class = type metadata accessor for SubtitledButton();
  objc_msgSendSuper2(&v8, "sizeThatFits:", a2, 1.79769313e308);

  [a1 horizontalSizeClass];
}

Swift::Void __swiftcall InlineSocialUpsellView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (!isa || v4 != [(objc_class *)isa horizontalSizeClass])
  {
LABEL_8:
    v14 = [v1 traitCollection];
    sub_209030(v14);

    return;
  }

  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = [(objc_class *)isa preferredContentSizeCategory];
  v8 = sub_AB92A0();
  v10 = v9;
  if (v8 != sub_AB92A0() || v10 != v11)
  {
    v13 = sub_ABB3C0();

    if (v13)
    {
      return;
    }

    goto LABEL_8;
  }
}

uint64_t sub_20B854(void *a1)
{
  v2 = [a1 preferredContentSizeCategory];
  v3 = sub_ABA310();
  v4 = sub_ABA330();

  sub_13C80(0, &qword_DE6EE0);
  v5 = sub_ABA550();
  v73 = v4;
  if (v4)
  {
    v6 = [a1 preferredContentSizeCategory];
    v7 = sub_ABA590();

    v5 = v7;
  }

  v8 = qword_DE6C98;
  v9 = v5;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_E718D8;
  v11 = objc_opt_self();
  v12 = v10;
  v67 = v11;
  v13 = [v11 clearColor];
  v14 = objc_opt_self();
  v72 = v12;
  v71 = v13;
  v70 = v9;
  v15 = [v14 defaultMetrics];
  v16 = sub_ABA310();
  sub_AB9EF0();
  v18 = v17;

  if ([a1 horizontalSizeClass] == &dword_0 + 2)
  {
    if (v73)
    {
      v19 = 3;
    }

    else
    {
      v19 = 0;
    }

    v20 = *v74;
    v65 = v10;
    *&v94 = v10;
    *(&v94 + 1) = v13;
    v95 = xmmword_AF7C20;
    v96 = 0uLL;
    v66 = v9;
    *&v97 = v9;
    v63 = v19;
    *(&v97 + 1) = v19;
    v98 = v18;
    swift_beginAccess();
    v22 = v20[3];
    v21 = v20[4];
    v23 = v20[6];
    v102 = v20[5];
    v103 = v23;
    v100 = v22;
    v101 = v21;
    v99 = v20[2];
    v20[5] = v97;
    v20[6] = v18;
    v24 = v95;
    v20[2] = v94;
    v20[3] = v24;
    v20[4] = v96;
    sub_2F118(&v94, &v89);
    sub_2F174(&v99);
    sub_2EB2A8();
    v25 = sub_ABA560();
    v64 = v13;
    if (v73)
    {
      v26 = [a1 preferredContentSizeCategory];
      v27 = sub_ABA590();

      v25 = v27;
    }

    v28 = qword_DE6C88;
    v29 = v25;
    if (v28 != -1)
    {
      swift_once();
    }

    v61 = qword_E718C8;
    v30 = qword_E718C8;
    v31 = [v67 clearColor];
    v69 = v30;
    v68 = v31;
    v62 = v29;
    v32 = [v14 defaultMetrics];
    v33 = sub_ABA310();
    sub_AB9EF0();
    v35 = v34;

    v36 = [v14 defaultMetrics];
    v37 = sub_ABA310();
    sub_AB9EF0();
    v39 = v38;

    v40 = v74[1];
    if (v73)
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    *&v75 = v61;
    *(&v75 + 1) = v31;
    v76 = xmmword_AF7C20;
    v77 = 0uLL;
    *&v78 = v29;
    *(&v78 + 1) = v41;
    *&v79 = v35;
    *(&v79 + 1) = v39;
    swift_beginAccess();
    v43 = v40[3];
    v42 = v40[4];
    v44 = v40[6];
    v80[3] = v40[5];
    v80[4] = v44;
    v80[2] = v42;
    v80[0] = v40[2];
    v80[1] = v43;
    v45 = v79;
    v40[5] = v78;
    v40[6] = v45;
    v46 = v76;
    v40[2] = v75;
    v40[3] = v46;
    v40[4] = v77;
    sub_2F118(&v75, &v89);
    sub_2F174(v80);
    sub_2EB2A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_AF7C50;
    *(v47 + 32) = v20;
    *(v47 + 40) = v40;

    v81[0] = v61;
    v81[1] = v31;
    v82 = xmmword_AF7C20;
    v83 = 0;
    v84 = 0;
    v85 = v29;
    v86 = v41;
    v87 = v35;
    v88 = v39;
    sub_2F174(v81);
    *&v89 = v65;
    *(&v89 + 1) = v64;
    v90 = xmmword_AF7C20;
    v91 = 0uLL;
    *&v92 = v66;
    *(&v92 + 1) = v63;
    v93 = v18;
    sub_2F174(&v89);

    v74[2] = v47;
  }

  else
  {
    v49 = [v14 defaultMetrics];
    v50 = sub_ABA310();
    sub_AB9EF0();
    v52 = v51;

    if (v73)
    {
      v53 = 4;
    }

    else
    {
      v53 = 0;
    }

    v54 = *v74;
    *&v89 = v10;
    *(&v89 + 1) = v13;
    v90 = xmmword_AF7C20;
    v91 = 0uLL;
    *&v92 = v9;
    *(&v92 + 1) = v53;
    *&v93 = v18;
    *(&v93 + 1) = v52;
    swift_beginAccess();
    v56 = v54[3];
    v55 = v54[4];
    v57 = v54[6];
    v97 = v54[5];
    v98 = v57;
    v95 = v56;
    v96 = v55;
    v94 = v54[2];
    v58 = v93;
    v54[5] = v92;
    v54[6] = v58;
    v59 = v90;
    v54[2] = v89;
    v54[3] = v59;
    v54[4] = v91;
    sub_2F118(&v89, &v99);
    sub_2F174(&v94);
    sub_2EB2A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_AF82B0;
    *(v60 + 32) = v54;

    *&v99 = v10;
    *(&v99 + 1) = v13;
    v100 = xmmword_AF7C20;
    v101 = 0uLL;
    *&v102 = v9;
    *(&v102 + 1) = v53;
    *&v103 = v18;
    *(&v103 + 1) = v52;
    sub_2F174(&v99);

    v74[2] = v60;
  }

  return result;
}

void sub_20BFDC(char a1)
{
  v2 = objc_opt_self();
  if ((a1 & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = sub_AB9260();
  if (qword_DE6AF0 != -1)
  {
    swift_once();
  }

  v2 = [v2 imageNamed:v3 inBundle:qword_E71620 compatibleWithTraitCollection:0];

  if (!v2)
  {
    __break(1u);
LABEL_6:
    v4 = sub_AB9260();
    if (qword_DE6AF0 != -1)
    {
      swift_once();
    }

    v5 = [v2 imageNamed:v4 inBundle:qword_E71620 compatibleWithTraitCollection:0];

    if (!v5)
    {
      __break(1u);
    }
  }
}

char *sub_20C130()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for SubtitledButton();
  v3 = [objc_allocWithZone(v2) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = &v3[OBJC_IVAR____TtC16MusicApplication15MultilineButton_contentEdgeInsets];
  type metadata accessor for UIEdgeInsets(0);
  *v4 = xmmword_B04330;
  *(v4 + 1) = xmmword_B04330;
  v18 = xmmword_B04330;
  v19 = xmmword_B04330;
  v5 = v3;
  if (sub_AB38D0())
  {
    [v5 setNeedsLayout];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA930);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_AF4EC0;
  sub_AB91E0();
  sub_AB3550();
  v7 = sub_AB9320();
  v9 = v8;
  sub_20C3FC(&v18);
  v10 = v19;
  v11 = *(&v19 + 1);
  v12 = v20;
  v13 = v21;
  v14 = v22;
  *(v6 + 32) = 0x656C746974;
  *(v6 + 40) = 0xE500000000000000;
  *(v6 + 48) = v7;
  *(v6 + 56) = v9;
  *(v6 + 64) = v18;
  *(v6 + 80) = v10;
  *(v6 + 88) = v11;
  *(v6 + 96) = v12;
  *(v6 + 104) = v13;
  *(v6 + 112) = v14;
  *(v6 + 120) = xmmword_B04340;
  v15 = *&v5[OBJC_IVAR____TtC16MusicApplication15MultilineButton_lineComponents];
  *&v5[OBJC_IVAR____TtC16MusicApplication15MultilineButton_lineComponents] = v6;
  sub_45677C(v15);

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  ControlEventHandling<>.on(_:handler:)(64, sub_20CEA4, v16, v2);

  return v5;
}

void sub_20C3FC(uint64_t a1@<X8>)
{
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = sub_ABA310();
  v6 = sub_ABA330();

  if (v6)
  {
    sub_13C80(0, &qword_DE6EE0);
    v7 = [v1 traitCollection];
    v8 = [v7 preferredContentSizeCategory];

    v9 = sub_ABA590();
  }

  else
  {
    v9 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  }

  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 blackColor];
  v13 = [v10 clearColor];
  v14 = [v10 whiteColor];

  *a1 = v14;
  *(a1 + 8) = v13;
  *(a1 + 16) = 3;
  *(a1 + 24) = 4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v11;
}

void sub_20C5E0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = (Strong + *a3);
    swift_beginAccess();
    v7 = *v6;
    if (*v6)
    {
      sub_307CC(v7);

      v7();
      sub_17654(v7);
    }

    else
    {
    }
  }
}

uint64_t sub_20C7BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkCachingReference;
  swift_beginAccess();
  *(v1 + v3) = a1;

  *(*(v1 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkComponent) + 16) = a1;
}

void (*sub_20C880(uint64_t **a1))(void *a1)
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
  v2[4] = InlineSocialUpsellView.textDrawingCache.modify(v2);
  return sub_A8F90;
}

uint64_t sub_20C8F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *(v4 + v5) = a1;

  sub_2E6210(v6);
}

uint64_t _s16MusicApplication22InlineSocialUpsellViewC14textComponents33_6AA3EA120887548DCAAD9EE36D67F498LLAC04TextH0AELLVvpfi_0()
{
  sub_13C80(0, &qword_DE6EE0);
  v0 = sub_ABA550();
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v1 = qword_E718D8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  *&v22[0] = v1;
  *(&v22[0] + 1) = v4;
  v22[1] = xmmword_AF7C20;
  v23 = 0;
  v24 = 0;
  v25 = v0;
  v26 = 0;
  v27 = xmmword_B008B0;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v22);
  v15 = v3;
  v14 = v4;
  v13 = v0;
  sub_2F118(v22, v35);

  v6 = sub_ABA560();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v7 = qword_E718C8;
  v8 = qword_E718C8;
  v9 = [v2 clearColor];
  *&v16[0] = v7;
  *(&v16[0] + 1) = v9;
  v16[1] = xmmword_AF7C20;
  v17 = 0;
  v18 = 0;
  v19 = v6;
  v20 = 2;
  v21 = xmmword_B04350;
  swift_allocObject();
  v10 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF7C50;
  *(v11 + 32) = v5;
  *(v11 + 40) = v10;
  sub_2F118(v16, v35);

  v28[0] = v7;
  v28[1] = v9;
  v29 = xmmword_AF7C20;
  v30 = 0;
  v31 = 0;
  v32 = v6;
  v33 = 2;
  v34 = xmmword_B04350;
  sub_2F174(v28);
  v35[0] = v1;
  v35[1] = v4;
  v36 = xmmword_AF7C20;
  v37 = 0;
  v38 = 0;
  v39 = v0;
  v40 = 0;
  v41 = xmmword_B008B0;
  sub_2F174(v35);
  return v5;
}

uint64_t sub_20CCB0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void _s16MusicApplication22InlineSocialUpsellViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_subtitle);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_primaryButtonTitle);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_lockupImageArtworkCatalog) = 0;
  v5 = (v0 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_closeButtonHandler);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_primaryButtonHandler);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkCachingReference) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textDrawingCache) = 0;
  v7 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textStackView;
  type metadata accessor for TextStackView();
  *(v1 + v7) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v10 = sub_80104(v9);

  *(v1 + v8) = v10;
  v11 = (v1 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textComponents);
  *v11 = _s16MusicApplication22InlineSocialUpsellViewC14textComponents33_6AA3EA120887548DCAAD9EE36D67F498LLAC04TextH0AELLVvpfi_0();
  v11[1] = v12;
  v11[2] = v13;
  *(v1 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView____lazy_storage___closeButton) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView____lazy_storage___primaryButton) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_20CF18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v58 = sub_AB6640();
  __chkstk_darwin(v58);
  v57 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8E70);
  __chkstk_darwin(v59);
  v54 = &v49 - v4;
  v5 = sub_AB5730();
  v51 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8E78);
  v53 = *(v52 - 8);
  __chkstk_darwin(v52);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8E80);
  __chkstk_darwin(v10);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8E88);
  v49 = v13;
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8E90);
  v17 = *(v16 - 8);
  v55 = v16;
  v56 = v17;
  __chkstk_darwin(v16);
  v50 = &v49 - v18;
  *v12 = sub_AB6440();
  *(v12 + 1) = 0x4024000000000000;
  v12[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8E98);
  sub_20D658(v2, &v12[*(v19 + 44)]);
  v20 = sub_AB6BB0();
  KeyPath = swift_getKeyPath();
  v22 = &v12[*(v10 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  sub_AB6BD0();
  sub_20E254();
  sub_AB6F80();
  sub_12E1C(v12, &qword_DF8E80);
  v23 = sub_AB74D0();
  v24 = swift_getKeyPath();
  v25 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8EB8) + 36)];
  *v25 = v24;
  v25[1] = v23;
  v26 = swift_getKeyPath();
  v27 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8EC0) + 36)];
  *v27 = v26;
  v27[8] = 1;
  v28 = sub_AB6A90();
  v29 = &v15[*(v13 + 36)];
  *v29 = v28;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  v29[40] = 1;
  sub_AB5720();
  v31 = *v2;
  v30 = *(v2 + 8);
  v67 = *(v2 + 24);
  v32 = *(v2 + 48);
  v68 = *(v2 + 40);
  v69 = v67;
  v33 = swift_allocObject();
  v34 = *(v2 + 16);
  *(v33 + 16) = *v2;
  *(v33 + 32) = v34;
  *(v33 + 48) = *(v2 + 32);
  *(v33 + 64) = *(v2 + 48);
  v35 = v31;
  sub_307CC(v30);
  sub_20E3D0(&v69, &v64);

  sub_AB78E0();
  (*(v51 + 8))(v7, v5);

  sub_AB57E0();
  v36 = sub_20E440();
  v37 = sub_36A00(&qword_DF8EE0, &qword_DF8E78);
  v38 = v50;
  v39 = v49;
  v40 = v52;
  sub_AB71D0();
  (*(v53 + 8))(v9, v40);
  sub_12E1C(v15, &qword_DF8E88);
  sub_AB67A0();
  v41 = v54;
  sub_AB57C0();
  v64 = v67;
  v65 = v68;
  v66 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8EE8);
  sub_AB58B0();
  v42 = v62;
  v43 = v63;
  v44 = v59;
  v45 = v41 + *(v59 + 44);
  *v45 = v61;
  *(v45 + 8) = v42;
  *(v45 + 16) = v43;
  v46 = (v41 + *(v44 + 48));
  *v46 = sub_20E1FC;
  v46[1] = 0;
  sub_AB57E0();
  *&v64 = v39;
  *(&v64 + 1) = v40;
  v65 = v36;
  v66 = v37;
  swift_getOpaqueTypeConformance2();
  sub_36A00(&qword_DF8EF0, &qword_DF8E70);
  v47 = v55;
  sub_AB71D0();
  sub_12E1C(v41, &qword_DF8E70);
  return (*(v56 + 8))(v38, v47);
}

uint64_t sub_20D658@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v82 = sub_AB4780();
  v3 = *(v82 - 8);
  __chkstk_darwin(v82);
  v5 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB818);
  __chkstk_darwin(v9 - 8);
  v11 = &v81 - v10;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB820);
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v13 = &v81 - v12;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8EF8);
  __chkstk_darwin(v83);
  v15 = &v81 - v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8F00);
  __chkstk_darwin(v84);
  v17 = &v81 - v16;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8F08);
  v90 = *(v92 - 8);
  __chkstk_darwin(v92);
  v19 = &v81 - v18;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8F10);
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v87 = &v81 - v20;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8F18);
  v21 = __chkstk_darwin(v85);
  v95 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v81 - v24;
  __chkstk_darwin(v23);
  v94 = &v81 - v26;
  *&v93 = a1;
  *&v97 = *a1;
  v27 = [v97 hasLoadedValueForKey:MPModelPropertyArtistArtwork];
  v28 = 0;
  if (v27)
  {
    v28 = [v97 artworkCatalog];
  }

  ArtworkImage.ViewModel.init(_:)(v28, v11);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8F20);
  (*(*(v29 - 8) + 56))(v8, 7, 11, v29);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, v107);
  v30 = v82;
  (*(v3 + 104))(v5, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v82);
  static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v11, v8, v107, v5, v13);
  (*(v3 + 8))(v5, v30);
  sub_20E678(v8);
  sub_12E1C(v11, &qword_DEB818);
  sub_AB7A30();
  sub_AB5970();
  (*(v86 + 32))(v15, v13, v88);
  v31 = &v15[*(v83 + 36)];
  v32 = v107[4];
  *v31 = v107[3];
  *(v31 + 1) = v32;
  *(v31 + 2) = v107[5];
  sub_36B0C(v15, v17, &qword_DF8EF8);
  v33 = v84;
  v34 = &v17[*(v84 + 36)];
  *v34 = 0;
  *(v34 + 4) = 257;
  v35 = sub_20E6D4();
  View.corner(_:)();
  sub_12E1C(v17, &qword_DF8F00);
  Border.artwork.unsafeMutableAddressor();

  *&v103 = v33;
  *(&v103 + 1) = v35;
  swift_getOpaqueTypeConformance2();
  v36 = v87;
  v37 = v92;
  View.border(_:corner:)();
  (*(v90 + 8))(v19, v37);

  sub_AB7480();
  v38 = sub_AB74C0();

  (*(v89 + 32))(v25, v36, v91);
  v39 = &v25[*(v85 + 36)];
  *v39 = v38;
  *(v39 + 8) = xmmword_AFB2E0;
  *(v39 + 3) = 0x4000000000000000;
  v40 = v94;
  sub_36B0C(v25, v94, &qword_DF8F18);
  v41 = v93;
  if (*(v93 + 8))
  {
    v42 = v97;
    if ([v97 hasLoadedValueForKey:MPModelPropertyArtistName] && (v43 = objc_msgSend(v42, "name")) != 0)
    {
      v44 = v43;
      v45 = sub_AB92A0();
      v47 = v46;
    }

    else
    {
      v45 = 0;
      v47 = 0xE000000000000000;
    }

    *&v103 = v45;
    *(&v103 + 1) = v47;
    sub_36A48();
    v48 = sub_AB6F20();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    sub_89F60();
    v55 = sub_ABA550();
    v56 = [objc_opt_self() configurationWithFont:v55 scale:1];

    LODWORD(v99) = sub_AB6760();
    Text.withChevron<A>(_:tintColor:)(v56, v48, v50, v52 & 1, v54, &v103);

    sub_36B74(v48, v50, v52 & 1);

    v57 = v103;
    v58 = v104;
    v59 = *(&v104 + 1);
    v60 = *(v41 + 40);
    v99 = *(v41 + 24);
    v100 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8EE8);
    sub_AB58A0();
    v61 = 0x3FF0000000000000;
    if (v98)
    {
      v61 = 0x3FE0000000000000;
    }

    v99 = v57;
    *&v100 = v58;
    *(&v100 + 1) = v59;
    v101 = v61;
    v102 = 0;
  }

  else
  {
    v62 = v97;
    if ([v97 hasLoadedValueForKey:MPModelPropertyArtistName] && (v63 = objc_msgSend(v62, "name")) != 0)
    {
      v64 = v63;
      v65 = sub_AB92A0();
      v67 = v66;
    }

    else
    {
      v65 = 0;
      v67 = 0xE000000000000000;
    }

    *&v103 = v65;
    *(&v103 + 1) = v67;
    sub_36A48();
    *&v99 = sub_AB6F20();
    *(&v99 + 1) = v68;
    *&v100 = v69 & 1;
    *(&v100 + 1) = v70;
    v101 = 0;
    v102 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8F38);
  sub_20E804();
  sub_AB6610();
  v97 = v104;
  v93 = v103;
  v71 = v105;
  v72 = v106;
  v73 = v95;
  sub_20E888(v40, v95);
  v74 = v96;
  sub_20E888(v73, v96);
  v75 = v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8F48) + 48);
  v76 = v97;
  v77 = v93;
  *v75 = v93;
  *(v75 + 16) = v76;
  *(v75 + 32) = v71;
  *(v75 + 40) = v72;
  v78 = v77;
  v79 = v76;
  sub_20E8F8(v77, *(&v77 + 1), v76);
  sub_12E1C(v40, &qword_DF8F18);
  sub_20E934(v78, *(&v78 + 1), v79);
  return sub_12E1C(v73, &qword_DF8F18);
}

unint64_t sub_20E254()
{
  result = qword_DF8EA0;
  if (!qword_DF8EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF8E80);
    sub_36A00(&qword_DF8EA8, &qword_DF8EB0);
    sub_36A00(&qword_DEB890, &qword_DEB898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF8EA0);
  }

  return result;
}

uint64_t sub_20E348()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20E3A0()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_20E3D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20E440()
{
  result = qword_DF8EC8;
  if (!qword_DF8EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF8E88);
    sub_20E4CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF8EC8);
  }

  return result;
}

unint64_t sub_20E4CC()
{
  result = qword_DF8ED0;
  if (!qword_DF8ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF8EC0);
    sub_20E584();
    sub_36A00(&qword_DEDBF8, &qword_DFE960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF8ED0);
  }

  return result;
}

unint64_t sub_20E584()
{
  result = qword_DF8ED8;
  if (!qword_DF8ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF8EB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF8E80);
    sub_20E254();
    swift_getOpaqueTypeConformance2();
    sub_36A00(&qword_DEB780, &qword_DEB788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF8ED8);
  }

  return result;
}

uint64_t sub_20E678(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkImage.Placeholder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20E6D4()
{
  result = qword_DF8F28;
  if (!qword_DF8F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF8F00);
    sub_20E760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF8F28);
  }

  return result;
}

unint64_t sub_20E760()
{
  result = qword_DF8F30;
  if (!qword_DF8F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF8EF8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF8F30);
  }

  return result;
}

unint64_t sub_20E804()
{
  result = qword_DF8F40;
  if (!qword_DF8F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF8F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF8F40);
  }

  return result;
}

uint64_t sub_20E888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8F18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E8F8(uint64_t a1, uint64_t a2, char a3)
{
  sub_AFF30(a1, a2, a3 & 1);
}

uint64_t sub_20E934(uint64_t a1, uint64_t a2, char a3)
{
  sub_36B74(a1, a2, a3 & 1);
}

uint64_t sub_20E970()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF8E90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF8E70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF8E88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF8E78);
  sub_20E440();
  sub_36A00(&qword_DF8EE0, &qword_DF8E78);
  swift_getOpaqueTypeConformance2();
  sub_36A00(&qword_DF8EF0, &qword_DF8E70);
  return swift_getOpaqueTypeConformance2();
}

void sub_20EB58(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10.receiver = v2;
  v10.super_class = type metadata accessor for JSMenuModelRequest();
  objc_msgSendSuper2(&v10, "copyWithZone:", a1);
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_808B0(a2, v9);
  if (swift_dynamicCast())
  {
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication18JSMenuModelRequest_menuViewModel];
    v6 = *&v8[OBJC_IVAR____TtC16MusicApplication18JSMenuModelRequest_menuViewModel];
    *&v8[OBJC_IVAR____TtC16MusicApplication18JSMenuModelRequest_menuViewModel] = v5;
    v7 = v5;
  }
}

uint64_t sub_20EC7C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_13C80(0, &qword_DE8ED0);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  v13 = a4;

  v14 = a1;
  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_20FF40, v12);
}

uint64_t sub_20ED5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v13 = *(*a1 + 152);

  v14 = a5;
  swift_errorRetain();
  v13(a2, sub_AAED4, v12);
}

void sub_20EFFC(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC16MusicApplication27JSMenuModelRequestOperation_request];
  v2 = *&v1[OBJC_IVAR____TtC16MusicApplication18JSMenuModelRequest_menuViewModel];
  if (v2)
  {
    v74 = a1;
    v75 = v2;
    v3 = [v1 sectionProperties];
    v4 = &off_DF9000;
    if (v3)
    {
      v5 = v3;
      v6 = type metadata accessor for JSModelMenuSectionBuilder();
      v7 = objc_allocWithZone(v6);
      v7[OBJC_IVAR____TtC16MusicApplication25JSModelMenuSectionBuilder_initializedProperties] = 2;
      *&v7[OBJC_IVAR____TtC16MusicApplication25JSModelMenuSectionBuilder_requestedProperties] = v5;
      v96.receiver = v7;
      v96.super_class = v6;
      v8 = objc_msgSendSuper2(&v96, "init");
    }

    else
    {
      v8 = 0;
    }

    v73 = v1;
    v9 = [v1 itemProperties];
    p_vtable = &OBJC_METACLASS____TtC16MusicApplication20AccountButtonWrapper.vtable;
    if (v9)
    {
      v11 = v9;
      v12 = type metadata accessor for JSModelMenuItemBuilder();
      v13 = objc_allocWithZone(v12);
      *&v13[OBJC_IVAR____TtC16MusicApplication22JSModelMenuItemBuilder_initializedProperties] = 2;
      *&v13[OBJC_IVAR____TtC16MusicApplication22JSModelMenuItemBuilder_requestedProperties] = v11;
      v97.receiver = v13;
      v97.super_class = v12;
      v94 = objc_msgSendSuper2(&v97, "init");
    }

    else
    {
      v94 = 0;
    }

    v93 = [objc_allocWithZone(MPMutableSectionedCollection) init];
    v92 = [objc_allocWithZone(MPMutableSectionedCollection) init];
    v14 = JSMenu.sections.getter();
    v15 = v14;
    if (v14 >> 62)
    {
      goto LABEL_49;
    }

    for (i = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
    {
      v17 = 0;
      v82 = v15 & 0xC000000000000001;
      v78 = v15 & 0xFFFFFFFFFFFFFF8;
      v77 = v15 + 32;
      v91 = &v100;
      v76 = @"MusicModelPropertyMenuSectionTitle";
      v87 = @"MusicModelPropertyMenuItemTitle";
      v86 = @"MusicModelRelationshipMenuItemSubmenu";
      v81 = v8;
      v80 = v15;
      v79 = i;
      while (1)
      {
        while (1)
        {
          if (v82)
          {
            v18 = sub_35FCC4(v17, v15);
          }

          else
          {
            if (v17 >= *(v78 + 16))
            {
              goto LABEL_48;
            }

            v18 = *(v77 + 8 * v17);
          }

          v19 = v18;
          if (__OFADD__(v17++, 1))
          {
            goto LABEL_45;
          }

          if (v8)
          {
            break;
          }

          if (v17 == i)
          {
            goto LABEL_50;
          }
        }

        v21 = v4[180];
        if (v8[v21] == 2)
        {
          v22 = *&v8[OBJC_IVAR____TtC16MusicApplication25JSModelMenuSectionBuilder_requestedProperties];
          v23 = [v22 properties];
          v24 = sub_AB9B40();

          v25 = sub_AB92A0();
          v27 = sub_4DFDA8(v25, v26, v24);
          v29 = v28;
          v31 = v30;

          sub_F01A0(v27, v29, v31);
          v8[v21] = v31 != -1;
        }

        v90 = objc_opt_self();
        v15 = [v90 emptyIdentifierSet];
        v4 = &v72;
        __chkstk_darwin(v15);
        v70 = v8;
        v71 = v19;
        v32 = objc_allocWithZone(MusicModelMenuSection);
        v33 = swift_allocObject();
        *(v33 + 16) = sub_20FDEC;
        *(v33 + 24) = v69;
        v102 = sub_57B84;
        v103 = v33;
        aBlock = _NSConcreteStackBlock;
        v99 = 1107296256;
        v100 = sub_41A314;
        v101 = &block_descriptor_71;
        v34 = _Block_copy(&aBlock);

        v35 = [v32 initWithIdentifiers:v15 block:v34];
        _Block_release(v34);

        LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

        if (v32)
        {
          goto LABEL_46;
        }

        [v92 appendSection:v19];
        v83 = v35;
        [v93 appendSection:v35];
        v15 = OBJC_IVAR____TtC11MusicJSCore13JSMenuSection_items;
        swift_beginAccess();
        v36 = *&v19[v15];
        v37 = v36 >> 62 ? sub_ABB060() : *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8));
        v8 = v94;
        v85 = v17;
        v84 = v19;
        if (v37)
        {
          break;
        }

LABEL_12:

        v8 = v81;
        v4 = &off_DF9000;
        v15 = v80;
        i = v79;
        v17 = v85;
        if (v85 == v79)
        {
          goto LABEL_50;
        }
      }

      if (v37 < 1)
      {
        goto LABEL_47;
      }

      v95 = v36 & 0xC000000000000001;

      v15 = 0;
      v89 = v36;
      v88 = v37;
      while (!v95)
      {
        v38 = *(v36 + 8 * v15 + 32);
        if (v8)
        {
          goto LABEL_32;
        }

LABEL_27:
        ++v15;

        if (v37 == v15)
        {
          goto LABEL_12;
        }
      }

      v38 = sub_36085C(v15, v36);
      if (!v8)
      {
        goto LABEL_27;
      }

LABEL_32:
      v39 = p_vtable[119];
      if (v39[v8] == 2)
      {
        v40 = OBJC_IVAR____TtC16MusicApplication22JSModelMenuItemBuilder_requestedProperties;
        v41 = *&v8[OBJC_IVAR____TtC16MusicApplication22JSModelMenuItemBuilder_requestedProperties];
        v42 = [v41 properties];
        v43 = sub_AB9B40();

        v44 = sub_AB92A0();
        v46 = sub_4DFDA8(v44, v45, v43);
        v48 = v47;
        p_vtable = v49;

        sub_F01A0(v46, v48, p_vtable);
        v50 = *&v8[v40];
        v51 = [v50 relationships];
        sub_13C80(0, &qword_DEA550);
        v52 = sub_AB8FF0();

        v53 = sub_AB92A0();
        if (*(v52 + 16))
        {
          sub_2EBF88(v53, v54);
          v56 = v55;

          if (v56)
          {
            v57 = 256;
          }

          else
          {
            v57 = 0;
          }
        }

        else
        {

          v57 = 0;
        }

        v8 = v94;
        *&v39[v94] = v57 | (p_vtable != 0xFF);
      }

      v58 = [v90 emptyIdentifierSet];
      __chkstk_darwin(v58);
      v4 = v69;
      v70 = v8;
      v71 = v38;
      v59 = objc_allocWithZone(MusicModelMenuItem);
      v60 = swift_allocObject();
      *(v60 + 16) = sub_20FE1C;
      *(v60 + 24) = v69;
      v102 = sub_C3FB8;
      v103 = v60;
      aBlock = _NSConcreteStackBlock;
      v99 = 1107296256;
      v100 = sub_41A314;
      v101 = &block_descriptor_23_0;
      v61 = _Block_copy(&aBlock);

      v8 = [v59 initWithIdentifiers:v58 block:v61];
      _Block_release(v61);

      LOBYTE(v59) = swift_isEscapingClosureAtFileLocation();

      if ((v59 & 1) == 0)
      {
        [v92 appendItem:v38];
        v62 = v8;
        [v93 appendItem:v62];

        p_vtable = (&OBJC_METACLASS____TtC16MusicApplication20AccountButtonWrapper + 24);
        v8 = v94;
        v36 = v89;
        v37 = v88;
        goto LABEL_27;
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      ;
    }

LABEL_50:

    v63 = objc_allocWithZone(type metadata accessor for JSMenuModelResponse());
    v64 = v73;
    v65 = v92;
    v66 = sub_20FB60(v64, v65);
    v67 = v93;
    [v66 setResults:v93];
    v68 = v74;
    (*&v74[OBJC_IVAR____TtC16MusicApplication27JSMenuModelRequestOperation_responseHandler])(v66, 0);
    [v68 finish];
  }

  else
  {
    __break(1u);
  }
}

char *sub_20FB60(char *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC16MusicApplication19JSMenuModelResponse_sectionsDidChangeNotificationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication19JSMenuModelResponse_jsResults] = a2;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for JSMenuModelResponse();
  v5 = a2;
  result = objc_msgSendSuper2(&v15, "initWithRequest:", a1);
  if (result)
  {
    v7 = result;
    v8 = *&a1[OBJC_IVAR____TtC16MusicApplication18JSMenuModelRequest_menuViewModel];
    v9 = v8;
    v10 = v7;
    v11 = *JSMenu.sectionsDidChangeNotification.unsafeMutableAddressor();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v13 = v11;

    v14 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v13, v8, 1, 1, sub_B5984, v12);

    *&v10[OBJC_IVAR____TtC16MusicApplication19JSMenuModelResponse_sectionsDidChangeNotificationObserver] = v14;

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20FD04(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_20FDAC()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20FE24()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_20FE5C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_20FE94()
{

  return swift_deallocObject();
}

uint64_t sub_20FEE8()
{

  return swift_deallocObject();
}

uint64_t sub_20FF50()
{

  return swift_deallocObject();
}

id sub_20FFB0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v9 = [v4 mediaLibrary];
  [v8 setMediaLibrary:v9];

  v10 = v8;
  [v10 setItemKind:a2];
  [v10 setFilteringOptions:{objc_msgSend(v4, "filteringOptions")}];
  [v10 setItemProperties:a3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF82B0;
  *(v11 + 32) = [a1 identifiers];
  sub_13C80(0, &unk_DE8180);
  isa = sub_AB9740().super.isa;

  [v10 setAllowedItemIdentifiers:isa];

  return v10;
}

void sub_2101B8(uint64_t a1, uint64_t a2)
{
  if ((JSContainerDetail.containerDetailedResponseIsReady.getter() & 1) == 0)
  {
    return;
  }

  v4 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerStoreItemMetadata;
  swift_beginAccess();
  v5 = *(a2 + v4);
  if (!v5)
  {
    return;
  }

  v6 = objc_allocWithZone(MPMediaLibraryAlbumAppData);
  v7 = v5;
  v8 = &selRef__authenticateReturningError_;
  v49 = [v6 init];
  if (JSContainerDetail.hasMusicKitResponse.getter())
  {
    v9 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerDetailMusicKitRelationshipsResponse;
    swift_beginAccess();
    v10 = *(a2 + v9);
    if (v10)
    {
      *&v50 = 0x736B63617274;
      *(&v50 + 1) = 0xE600000000000000;

      sub_ABAD10();
      if (*(v10 + 16) && (v11 = sub_2EC004(&aBlock), (v12 & 1) != 0))
      {
        sub_808B0(*(v10 + 56) + 32 * v11, &v51);
        sub_8085C(&aBlock);
      }

      else
      {
        sub_8085C(&aBlock);
        v51 = 0u;
        v52 = 0u;
      }

      if (*(&v52 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
        if (swift_dynamicCast())
        {
          v13 = aBlock;
          *&v50 = 1635017060;
          *(&v50 + 1) = 0xE400000000000000;
          sub_ABAD10();
          if (*(v13 + 16) && (v14 = sub_2EC004(&aBlock), (v15 & 1) != 0))
          {
            sub_808B0(*(v13 + 56) + 32 * v14, &v51);
            sub_8085C(&aBlock);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E27CA0);
            if (swift_dynamicCast())
            {
              v16 = v50;
              v17 = *(v50 + 16);
              if (v17)
              {
                v48 = v7;
                v18 = v17 - 1;
                v19 = 32;
                v20 = &type metadata for String;
                while (1)
                {
                  v21 = *(v16 + v19);
                  *&v50 = 25705;
                  *(&v50 + 1) = 0xE200000000000000;

                  sub_ABAD10();
                  if (!*(v21 + 16) || (v22 = v20, v23 = sub_2EC004(&aBlock), (v24 & 1) == 0))
                  {
                    sub_8085C(&aBlock);
LABEL_28:

                    if (!v18)
                    {
                      goto LABEL_35;
                    }

                    goto LABEL_29;
                  }

                  sub_808B0(*(v21 + 56) + 32 * v23, &v51);
                  sub_8085C(&aBlock);
                  if ((swift_dynamicCast() & 1) == 0)
                  {
                    goto LABEL_28;
                  }

                  *&v50 = 1635018093;
                  *(&v50 + 1) = 0xE400000000000000;
                  sub_ABAD10();
                  if (!*(v21 + 16))
                  {
                    break;
                  }

                  v25 = sub_2EC004(&aBlock);
                  if ((v26 & 1) == 0)
                  {
                    break;
                  }

                  sub_808B0(*(v21 + 56) + 32 * v25, &v51);
                  sub_8085C(&aBlock);
                  if ((swift_dynamicCast() & 1) == 0)
                  {
                    goto LABEL_31;
                  }

                  v27 = v50;
                  *&v50 = 0x6972616C75706F70;
                  *(&v50 + 1) = 0xEA00000000007974;
                  sub_ABAD10();
                  if (*(v27 + 16) && (v28 = sub_2EC004(&aBlock), (v29 & 1) != 0))
                  {
                    sub_808B0(*(v27 + 56) + 32 * v28, &v51);
                    sub_8085C(&aBlock);
                    if (swift_dynamicCast())
                    {
                      v46 = [objc_allocWithZone(NSNumber) initWithDouble:*&v50];
                      v30 = sub_AB9260();
                      v47 = MPStoreItemMetadataInt64NormalizeStoreIDValue();

                      [v49 setSongPopularity:v46 forAdamID:v47];

                      v20 = v22;
                      if (!v18)
                      {
                        goto LABEL_35;
                      }

                      goto LABEL_29;
                    }
                  }

                  else
                  {
                    sub_8085C(&aBlock);
                  }

                  v20 = v22;
                  if (!v18)
                  {
LABEL_35:

                    v7 = v48;
                    goto LABEL_58;
                  }

LABEL_29:
                  --v18;
                  v19 += 8;
                }

                sub_8085C(&aBlock);
LABEL_31:

                if (!v18)
                {
                  goto LABEL_35;
                }

                goto LABEL_29;
              }

LABEL_64:

              goto LABEL_65;
            }
          }

          else
          {
            sub_8085C(&aBlock);
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      v51 = 0u;
      v52 = 0u;
    }

    sub_9BC10(&v51);
  }

LABEL_40:
  v31 = [v7 childStoreItemMetadatas];
  if (!v31)
  {
    goto LABEL_65;
  }

  v32 = v31;
  sub_13C80(0, &unk_DF43D0);
  v33 = sub_AB9760();

  if (v33 >> 62)
  {
    if (sub_ABB060() < 1)
    {
      goto LABEL_64;
    }

    v34 = sub_ABB060();
    if (!v34)
    {
      goto LABEL_64;
    }

    if (v34 < 1)
    {
      __break(1u);
      goto LABEL_64;
    }
  }

  else
  {
    v34 = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8));
    if (!v34)
    {
      goto LABEL_64;
    }
  }

  v35 = 0;
  v36 = v34 - 1;
  if ((v33 & 0xC000000000000001) == 0)
  {
    goto LABEL_45;
  }

LABEL_44:
  for (i = sub_3608C4(v35, v33); ; i = *(v33 + 8 * v35 + 32))
  {
    v38 = i;
    v39 = [i popularity];
    if (v39)
    {
      break;
    }

    if (v36 == v35)
    {
      goto LABEL_57;
    }

LABEL_55:
    ++v35;
    if ((v33 & 0xC000000000000001) != 0)
    {
      goto LABEL_44;
    }

LABEL_45:
    ;
  }

  v40 = v39;
  if ([v38 storeID])
  {
    sub_ABAB50();
    sub_9ACFC(&v50, &v51);
    swift_unknownObjectRelease();
    if (*(&v52 + 1))
    {
      sub_9ACFC(&v51, &aBlock);
      __swift_project_boxed_opaque_existential_1(&aBlock, v55);
      sub_ABB3A0();
      v41 = MPStoreItemMetadataInt64NormalizeStoreIDValue();
      swift_unknownObjectRelease();
      [v49 setSongPopularity:v40 forAdamID:v41];
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      goto LABEL_54;
    }
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
  }

  sub_9BC10(&v51);
LABEL_54:

  if (v36 != v35)
  {
    goto LABEL_55;
  }

LABEL_57:

LABEL_58:
  v8 = &selRef__authenticateReturningError_;
LABEL_65:
  v42 = [objc_allocWithZone(MPModelLibraryAlbumAppDataChangeRequest) v8[124]];
  [v42 setModelObject:a1];
  [v42 setAlbumAppData:v49];
  v56 = UIScreen.Dimensions.size.getter;
  v57 = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v54 = sub_2109D8;
  v55 = &block_descriptor_15_1;
  v43 = _Block_copy(&aBlock);
  v44 = [v42 newOperationWithResponseHandler:v43];
  _Block_release(v43);
  v45 = [objc_opt_self() sharedDeviceLibraryController];
  [v45 addOperation:v44];
}

void sub_2109D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_210AB4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v8 = [v3 mediaLibrary];
  [v7 setMediaLibrary:v8];

  v9 = v7;
  [v9 setItemKind:a2];
  [v9 setItemProperties:a3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_AF82B0;
  *(v10 + 32) = [a1 identifiers];
  sub_13C80(0, &unk_DE8180);
  isa = sub_AB9740().super.isa;

  [v9 setAllowedItemIdentifiers:isa];

  [v9 setFilteringOptions:{objc_msgSend(v3, "filteringOptions")}];
  v12 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) init];
  [v12 setRequest:v9];

  v13 = [objc_allocWithZone(MPCPlaybackIntent) init];
  [v13 setTracklistToken:v12];
  [v13 setTracklistSource:3];

  return v13;
}

void (*sub_211068(uint64_t a1, void *a2))()
{
  result = [v2 results];
  if (result)
  {
    v5 = result;
    isa = sub_AB3770().super.isa;
    v7 = [v5 itemAtIndexPath:isa];

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8 && (v9 = v8, [v8 type] == &dword_0 + 1) && (v10 = objc_msgSend(v9, "song")) != 0)
    {
      v11 = v10;
      v12 = [v10 album];
      if (v12)
      {
        v13 = v12;
        objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata());
        v14 = v13;
        v15 = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v14);
        if (v15)
        {
          v16 = v15;
          v17 = swift_allocObject();
          v17[2] = v16;
          v17[3] = v14;
          v17[4] = a2;
          v18 = a2;
          swift_unknownObjectRelease();

          return sub_2126B8;
        }

        swift_unknownObjectRelease();
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

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21120C(void *a1, void *a2, void *a3)
{
  type metadata accessor for JSContainerDetailComponentController();
  v6 = a2;
  v7 = JSContainerDetailComponentController.__allocating_init(containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(a1, 0, 1, UIScreen.Dimensions.size.getter, 0);
  if (!v7)
  {
    v8 = v6;
    v7 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v8, 0, 1, UIScreen.Dimensions.size.getter, 0);
    if (!v7)
    {
      objc_opt_self();
      v34 = swift_dynamicCastObjCClass();
      if (v34)
      {
        v35 = v34;
        v36 = MPModelPropertyPlaylistType;
        v37 = v8;
        if ([v35 hasLoadedValueForKey:v36] && objc_msgSend(v35, "type") == &dword_8 + 1)
        {
          v9 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0);
          v10 = *&v9[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];

          goto LABEL_4;
        }
      }

      sub_ABAFD0();
      __break(1u);
      return;
    }
  }

  v9 = v7;
  v10 = *(v7 + OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail);
LABEL_4:
  v11 = v9;
  v12 = type metadata accessor for JSContainerDetailModelRequest();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
  *v14 = 0;
  v14[1] = 0;
  v13[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
  *&v13[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
  v13[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
  *&v13[v15] = v10;
  v44.receiver = v13;
  v44.super_class = v12;
  v16 = v10;
  v17 = objc_msgSendSuper2(&v44, "init");
  if ((v16[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind] & 0xFE) == 2)
  {
    sub_13C80(0, &qword_DE8E90);
    v18 = v17;
    v19 = static MPModelAlbum.defaultMusicKind.getter();
    [v18 setSectionKind:v19];

    v20 = [objc_opt_self() kindWithVariants:3];
    v21 = v20;
  }

  else
  {
    sub_13C80(0, &qword_DE9C10);
    v20 = static MPModelPlaylistEntry.defaultMusicKind.getter();
    v22 = objc_opt_self();
    v21 = v17;
    v23 = [v22 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v20 options:0];
    [v21 setSectionKind:v23];

    v18 = v20;
  }

  [v17 setItemKind:v20];

  v24 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_prominentItemIdentifiers;
  swift_beginAccess();
  v25 = *&v16[v24];
  v26 = v25;

  v27 = JSViewModel.playActivityRecommendationData.getter();
  v29 = v28;
  sub_466A4(0, 0xF000000000000000);
  v46[0] = v17;
  v46[1] = v10;
  v46[2] = a2;
  v46[3] = 0;
  v46[4] = v9;
  v46[5] = 0;
  v46[6] = v25;
  v47 = 0;
  *v48 = *v45;
  *&v48[3] = *&v45[3];
  v49 = v27;
  v50 = v29;
  v39[0] = v17;
  v39[1] = v10;
  v39[2] = a2;
  v39[3] = 0;
  v39[4] = v9;
  v39[5] = 0;
  v39[6] = v25;
  v40 = 0;
  *&v41[3] = *&v45[3];
  *v41 = *v45;
  v42 = v27;
  v43 = v29;
  sub_70EB0(v46, v38);
  sub_70F0C(v39);
  v30 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController());
  sub_70EB0(v46, v38);
  v31 = sub_2D72DC(v46);
  v32 = [a3 navigationController];
  if (v32)
  {
    v33 = v32;
    [v32 pushViewController:v31 animated:1];
    sub_70F0C(v46);

    v31 = v33;
  }

  else
  {
    sub_70F0C(v46);
  }
}

void (*sub_211710(uint64_t a1, void *a2))()
{
  v5 = [v2 results];
  if (!v5)
  {
    __break(1u);
    goto LABEL_40;
  }

  v6 = v5;
  isa = sub_AB3770().super.isa;
  v8 = [v6 itemAtIndexPath:isa];

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9 && (v10 = v9, [v9 type] == &dword_0 + 1) && (v11 = objc_msgSend(v10, "song")) != 0)
  {
    v12 = v11;
    v13 = [v11 album];
    if (v13)
    {
      v14 = v13;
      if ([v12 isLibraryAdded])
      {
        v15 = [objc_allocWithZone(MPModelLibraryRequest) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_AF82B0;
        *(v16 + 32) = v14;
        sub_13C80(0, &qword_DEDE20);
        v17 = v14;
        v18 = sub_AB9740().super.isa;

        [v15 setScopedContainers:v18];

        v19 = [objc_opt_self() kindWithVariants:3];
        v20 = [objc_opt_self() kindWithSongKind:v19];
        [v15 setSectionKind:v20];

        [v15 setItemKind:v19];
        v77 = [v12 identifiers];
        type metadata accessor for JSContainerDetailComponentController();
        v21 = v17;
        v22 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v21, 0, 1, UIScreen.Dimensions.size.getter, 0);
        if (v22)
        {
          v23 = v22;
          v24 = *&v22[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
          v25 = v24;
        }

        else
        {
          objc_opt_self();
          v23 = swift_dynamicCastObjCClass();
          if (v23)
          {
            v72 = MPModelPropertyPlaylistType;
            v75 = v21;
            if ([v23 hasLoadedValueForKey:v72] && objc_msgSend(v23, "type") == &dword_8 + 1)
            {
              v23 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0);
              v24 = *&v23[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
            }

            else
            {

              v24 = 0;
              v23 = 0;
            }
          }

          else
          {
            v24 = 0;
          }
        }

        if (v24)
        {
          v59 = JSViewModel.playActivityRecommendationData.getter();
          v61 = v60;
        }

        else
        {
          v59 = 0;
          v61 = 0xF000000000000000;
        }

        sub_466A4(0, 0xF000000000000000);
        v82 = v15;
        *&v83 = v24;
        *(&v83 + 1) = v14;
        *&v84 = 0;
        *(&v84 + 1) = v23;
        *&v85 = 0;
        *(&v85 + 1) = v77;
        v86 = 0;
        *&v88 = v59;
        *(&v88 + 1) = v61;
        v89 = v15;
        v90 = v24;
        v91 = v14;
        v92 = 0;
        v93 = v23;
        v94 = 0;
        v95 = v77;
        v96 = 0;
        v98 = v59;
        v99 = v61;
        sub_70EB0(&v82, v81);
        sub_70F0C(&v89);
        v57 = v86;
        v76 = v85;
        v80 = v88;
        v70 = v83;
        v73 = v84;
        v58 = v82;
        goto LABEL_34;
      }

      v27 = objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata());
      v28 = v14;
      v29 = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v28);
      if (v29)
      {
        v30 = v29;
        v78 = [v12 identifiers];
        type metadata accessor for JSContainerDetailComponentController();
        v71 = v30;
        v31 = JSContainerDetailComponentController.__allocating_init(containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v71, 0, 1, UIScreen.Dimensions.size.getter, 0);
        v74 = v28;
        if (v31 || (v32 = v28, (v31 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v32, 0, 1, UIScreen.Dimensions.size.getter, 0)) != 0))
        {
          v33 = v31;
          v34 = *(v31 + OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail);
          goto LABEL_17;
        }

        objc_opt_self();
        v64 = swift_dynamicCastObjCClass();
        if (!v64)
        {
          goto LABEL_41;
        }

        v65 = v64;
        v66 = MPModelPropertyPlaylistType;
        v3 = v32;
        if ([v65 hasLoadedValueForKey:v66] && objc_msgSend(v65, "type") == &dword_8 + 1)
        {
          v33 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0);
          v34 = *&v33[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];

LABEL_17:
          v35 = type metadata accessor for JSContainerDetailModelRequest();
          v36 = objc_allocWithZone(v35);
          v37 = &v36[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
          *v37 = 0;
          v37[1] = 0;
          v36[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
          swift_unknownObjectWeakInit();
          v38 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
          *&v36[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
          v36[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
          *&v36[v38] = v34;
          v100.receiver = v36;
          v100.super_class = v35;
          v69 = v34;
          v39 = v34;
          v68 = v78;
          v67 = v33;
          v40 = objc_msgSendSuper2(&v100, "init");
          if ((v39[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind] & 0xFE) == 2)
          {
            sub_13C80(0, &qword_DE8E90);
            v41 = v40;
            v42 = static MPModelAlbum.defaultMusicKind.getter();
            [v41 setSectionKind:v42];

            v43 = [objc_opt_self() kindWithVariants:3];
            [v41 setItemKind:v43];

            v44 = v68;
            if (v68)
            {
LABEL_19:
              v45 = v78;
LABEL_27:

              v54 = JSViewModel.playActivityRecommendationData.getter();
              v56 = v55;
              sub_466A4(0, 0xF000000000000000);
              v82 = v40;
              *&v83 = v69;
              *(&v83 + 1) = v14;
              *&v84 = 0;
              *(&v84 + 1) = v33;
              *&v85 = 0;
              *(&v85 + 1) = v45;
              v86 = 0;
              *v87 = v101[0];
              *&v87[3] = *(v101 + 3);
              *&v88 = v54;
              *(&v88 + 1) = v56;
              v89 = v40;
              v90 = v69;
              v91 = v14;
              v92 = 0;
              v93 = v33;
              v94 = 0;
              v95 = v45;
              v96 = 0;
              *&v97[3] = *(v101 + 3);
              *v97 = v101[0];
              v98 = v54;
              v99 = v56;
              sub_70EB0(&v82, v81);
              sub_70F0C(&v89);
              v57 = v86;
              v76 = v85;
              v80 = v88;
              v70 = v83;
              v73 = v84;
              v58 = v82;
LABEL_34:
              v62 = swift_allocObject();
              *(v62 + 16) = v58;
              *(v62 + 24) = v70;
              *(v62 + 40) = v73;
              *(v62 + 56) = v76;
              *(v62 + 72) = v57;
              *(v62 + 73) = v89;
              *(v62 + 76) = *(&v89 + 3);
              *(v62 + 80) = v80;
              *(v62 + 96) = a2;
              v63 = a2;
              swift_unknownObjectRelease();
              return sub_212664;
            }
          }

          else
          {
            sub_13C80(0, &qword_DE9C10);
            v46 = static MPModelPlaylistEntry.defaultMusicKind.getter();
            v47 = objc_opt_self();
            v48 = v40;
            v49 = [v47 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v46 options:0];
            [v48 setSectionKind:v49];

            [v48 setItemKind:v46];
            v44 = v68;
            if (v68)
            {
              goto LABEL_19;
            }
          }

          v50 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_prominentItemIdentifiers;
          v79 = v33;
          v51 = v40;
          v52 = v44;
          swift_beginAccess();
          v45 = *&v39[v50];
          v53 = v45;
          v44 = v52;
          v40 = v51;
          v33 = v79;
          goto LABEL_27;
        }

LABEL_40:

LABEL_41:
        result = sub_ABAFD0();
        __break(1u);
        return result;
      }

      swift_unknownObjectRelease();
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

  return 0;
}

void sub_2120E0(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController());
  sub_70EB0(a1, &v8);
  v5 = sub_2D72DC(a1);
  v6 = [a2 navigationController];
  if (v6)
  {
    v7 = v6;
    [v6 pushViewController:v5 animated:1];

    v5 = v7;
  }
}

id sub_21219C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(char *, id), uint64_t a6)
{
  v11 = sub_AB3820();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v15 = a3;
  v16 = a4;
  v17 = a1;
  v18 = a5(v14, v16);
  v20 = v19;

  (*(v12 + 8))(v14, v11);
  if (v18)
  {
    aBlock[4] = v18;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = a6;
    v21 = _Block_copy(aBlock);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

uint64_t sub_21257C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t block_copy_helper_72(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2125DC()
{
  v1 = *(v0 + 88);
  if (v1 >> 60 != 15)
  {
    sub_466B8(*(v0 + 80), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_212670()
{

  return swift_deallocObject();
}

char *sub_212798()
{
  v1 = v0;
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v68 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB9250();
  __chkstk_darwin(v4 - 8);
  v67 = sub_AB5290();
  v5 = *(v67 - 8);
  __chkstk_darwin(v67);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB5320();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_requestController;
  sub_212FF0(v110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF9298);
  swift_allocObject();
  *&v0[v12] = RequestResponse.Controller.init(request:)(v110);
  v13 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_filterOptionsController;
  v14 = objc_allocWithZone(type metadata accessor for LibraryFilterOptionsController());
  *&v0[v13] = sub_4F4944(9u);
  v15 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_sortOptionsController;
  type metadata accessor for SortOptionsController();
  swift_allocObject();
  *&v0[v15] = sub_225174(&off_CF0C00, 0, 0);
  *&v0[OBJC_IVAR____TtC16MusicApplication19SongsViewController_indexBarController] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication19SongsViewController____lazy_storage___contentFilteringController] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication19SongsViewController_mediaPickerAddController] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication19SongsViewController_addKeepLocalController] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication19SongsViewController____lazy_storage___noContentStateController] = 0;
  v16 = &v0[OBJC_IVAR____TtC16MusicApplication19SongsViewController_lastKnownViewBounds];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v17 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *&v0[v17] = TextDrawing.Cache.init()();
  v18 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_artworkCachingReference;
  type metadata accessor for Artwork.CachingReference();
  *&v1[v18] = swift_allocObject();
  v19 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_artworkPrefetchingController;
  *&v1[v19] = [objc_allocWithZone(type metadata accessor for old_ArtworkPrefetchingController()) init];
  sub_13C80(0, &unk_DF92A0);
  (*(v5 + 104))(v7, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v67);
  sub_AB52C0();
  v20 = sub_ABA420();
  (*(v9 + 8))(v11, v8);
  v21 = type metadata accessor for SongsViewController();
  v109.receiver = v1;
  v109.super_class = v21;
  v22 = objc_msgSendSuper2(&v109, "initWithCollectionViewLayout:", v20);

  v23 = v22;
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v24 = sub_AB9260();

  [v23 setTitle:v24];

  v25 = objc_opt_self();
  v26 = [v25 currentDevice];
  v27 = [v26 userInterfaceIdiom];

  if (!v27)
  {
    v28 = sub_AB9260();
    [v23 setRestorationIdentifier:v28];
  }

  v29 = [v25 currentDevice];
  v30 = [v29 userInterfaceIdiom];

  if (!v30)
  {
    _s16MusicApplication16RestorationClassCMa_1();
    [v23 setRestorationClass:swift_getObjCClassFromMetadata()];
  }

  v31 = sub_AB9260();
  [v23 setPlayActivityFeatureName:v31];

  v32 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_requestController;
  v33 = *&v23[OBJC_IVAR____TtC16MusicApplication19SongsViewController_requestController];
  v34 = *(*&v23[OBJC_IVAR____TtC16MusicApplication19SongsViewController_sortOptionsController] + 96);
  swift_beginAccess();
  v35 = *(v33 + 16);
  v36 = *(v33 + 32);
  v37 = *(v33 + 48);
  v38 = *(v33 + 64);
  v39 = *(v33 + 96);
  v110[4] = *(v33 + 80);
  v110[5] = v39;
  v110[2] = v37;
  v110[3] = v38;
  v40 = *(v33 + 112);
  v41 = *(v33 + 128);
  v42 = *(v33 + 144);
  v111 = *(v33 + 160);
  v110[7] = v41;
  v110[8] = v42;
  v110[6] = v40;
  v110[0] = v35;
  v110[1] = v36;
  v43 = *(v33 + 32);
  v105 = *(v33 + 16);
  v106 = v43;
  v107 = *(v33 + 48);
  v108 = *(v33 + 64);
  v44 = *(v33 + 128);
  v101 = *(v33 + 112);
  v102 = v44;
  v103 = *(v33 + 144);
  v104 = *(v33 + 160);
  v45 = *(v33 + 96);
  v99 = *(v33 + 80);
  v100 = v45;

  sub_15F84(v110, &v89, &unk_DF9270);

  v89 = v105;
  v90 = v106;
  v91 = v107;
  *&v92 = v108;
  *(&v92 + 1) = v34;
  v95 = v101;
  v96 = v102;
  v97 = v103;
  v98 = v104;
  v93 = v99;
  v94 = v100;
  RequestResponse.Controller.request.setter(&v89);

  v68 = v32;
  v46 = *&v23[v32];

  v47 = [v23 traitCollection];

  v48 = *&v23[OBJC_IVAR____TtC16MusicApplication19SongsViewController_filterOptionsController];
  if (v48[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption])
  {
    v49 = v48[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_contentType];
    if (v49 > 8)
    {
      v50 = 0x800000;
    }

    else
    {
      v50 = qword_B046E8[v49];
    }
  }

  else
  {
    v51 = v48;
    v50 = *MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
  }

  swift_beginAccess();
  v52 = *(v46 + 16);
  v53 = *(v46 + 32);
  v54 = *(v46 + 48);
  v55 = *(v46 + 64);
  v56 = *(v46 + 96);
  v93 = *(v46 + 80);
  v94 = v56;
  v91 = v54;
  v92 = v55;
  v57 = *(v46 + 112);
  v58 = *(v46 + 128);
  v59 = *(v46 + 144);
  v98 = *(v46 + 160);
  v96 = v58;
  v97 = v59;
  v95 = v57;
  v89 = v52;
  v90 = v53;
  v60 = v52;
  v61 = *(v46 + 40);
  v62 = *(v46 + 72);
  v86 = *(v46 + 56);
  v87 = v62;
  v88 = *(v46 + 88);
  v84 = *(v46 + 24);
  v85 = v61;
  v81 = *(v46 + 105);
  v82 = *(v46 + 121);
  v83[0] = *(v46 + 137);
  *(v83 + 15) = *(v46 + 152);
  sub_15F84(&v89, &v69, &unk_DF9270);
  v63 = UITraitCollection.mediaLibrary.getter();

  v64.rawValue = UITraitCollection.combinedLibraryRequestFilter.getter().rawValue;
  v71 = v85;
  v72 = v86;
  v73 = v87;
  v80 = 0;
  v69 = v63;
  v70 = v84;
  v74 = v88;
  v75 = v64.rawValue | v50;
  v76 = 0;
  v77 = v81;
  v78 = v82;
  v79[0] = v83[0];
  *(v79 + 15) = *(v83 + 15);
  RequestResponse.Controller.request.setter(&v69);

  RequestResponse.Controller.setNeedsReload(_:)(0, 0);

  return v23;
}

id sub_212FF0@<X0>(uint64_t a1@<X8>)
{
  [objc_opt_self() kindWithVariants:1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_AFFB00;
  *(v2 + 32) = sub_AB92A0();
  *(v2 + 40) = v3;
  *(v2 + 48) = sub_AB92A0();
  *(v2 + 56) = v4;
  *(v2 + 64) = sub_AB92A0();
  *(v2 + 72) = v5;
  *(v2 + 80) = sub_AB92A0();
  *(v2 + 88) = v6;
  *(v2 + 96) = sub_AB92A0();
  *(v2 + 104) = v7;
  *(v2 + 112) = sub_AB92A0();
  *(v2 + 120) = v8;
  *(v2 + 128) = sub_AB92A0();
  *(v2 + 136) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF4EC0;
  *(v12 + 32) = sub_AB92A0();
  *(v12 + 40) = v13;
  isa = sub_AB9740().super.isa;
  v15 = objc_opt_self();
  v16 = [v15 propertySetWithProperties:isa];

  *(inited + 48) = v16;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_AF4EC0;
  *(v18 + 32) = sub_AB92A0();
  *(v18 + 40) = v19;
  v20 = sub_AB9740().super.isa;
  v21 = [v15 propertySetWithProperties:v20];

  *(inited + 72) = v21;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
  swift_arrayDestroy();
  v22 = objc_allocWithZone(MPPropertySet);
  v23 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v24 = sub_AB8FD0().super.isa;

  v25 = [v22 initWithProperties:v23 relationships:v24];

  sub_13C80(0, &unk_DE8EB0);
  v26 = sub_2BAFF8();
  v27 = [v25 propertySetByCombiningWithPropertySet:v26];

  v28 = sub_10F414();
  v29 = [v27 propertySetByCombiningWithPropertySet:v28];

  UIScreen.Dimensions.size.getter(v30);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  result = [objc_opt_self() deviceMediaLibrary];
  if (result)
  {
    v40 = result;
    UIView.Border.init(thickness:color:)();
    *&v49 = v41;
    *(&v49 + 1) = v42;
    LibraryModelRequest.init(library:section:item:scopedContainers:filter:itemRange:)(v40, 0, 0, 0, 0, v32, v34, v36, &v63, v38, v44, v43 & 1, v49, 0, 1);
    v73 = v72;
    sub_12E1C(&v73, &unk_DEE6F0);
    v57 = v69;
    v58 = v70;
    v53 = v65;
    v54 = v66;
    v55 = v67;
    v56 = v68;
    v51 = v63;
    v52 = v64;
    v60[6] = v69;
    v60[7] = v70;
    v60[2] = v65;
    v60[3] = v66;
    *v59 = v71;
    v60[4] = v67;
    v60[5] = v68;
    *&v59[8] = xmmword_B04660;
    v61 = v71;
    v60[0] = v63;
    v60[1] = v64;
    v62 = xmmword_B04660;
    sub_15F84(&v51, v50, &unk_DF9270);
    result = sub_12E1C(v60, &unk_DF9270);
    v45 = v58;
    *(a1 + 96) = v57;
    *(a1 + 112) = v45;
    *(a1 + 128) = *v59;
    *(a1 + 144) = *&v59[16];
    v46 = v54;
    *(a1 + 32) = v53;
    *(a1 + 48) = v46;
    v47 = v56;
    *(a1 + 64) = v55;
    *(a1 + 80) = v47;
    v48 = v52;
    *a1 = v51;
    *(a1 + 16) = v48;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_213578()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  __chkstk_darwin(v2 - 8);
  v3 = OBJC_IVAR____TtC16MusicApplication19SongsViewController____lazy_storage___contentFilteringController;
  if (*&v0[OBJC_IVAR____TtC16MusicApplication19SongsViewController____lazy_storage___contentFilteringController])
  {
    v4 = *&v0[OBJC_IVAR____TtC16MusicApplication19SongsViewController____lazy_storage___contentFilteringController];
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    v5 = sub_AB9320();
    v7 = v6;
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v8 = v0;
    v4 = sub_4309D4(v5, v7);

    *&v0[v3] = v4;
  }

  return v4;
}

void *sub_21370C()
{
  v1 = OBJC_IVAR____TtC16MusicApplication19SongsViewController____lazy_storage___noContentStateController;
  if (*&v0[OBJC_IVAR____TtC16MusicApplication19SongsViewController____lazy_storage___noContentStateController])
  {
    v2 = *&v0[OBJC_IVAR____TtC16MusicApplication19SongsViewController____lazy_storage___noContentStateController];
  }

  else
  {
    v2 = sub_213774(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

void *sub_213774(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    type metadata accessor for LibraryNoContentStateController();
    swift_allocObject();
    v3 = sub_3E2914(v2);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v3[6];
    v3[6] = sub_21A664;
    v3[7] = v4;

    sub_17654(v5);

    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = v3[27];
    v3[27] = sub_21A66C;
    v3[28] = v6;

    sub_17654(v7);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2138B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!(_swiftEmptyArrayStorage >> 62) || !sub_ABB060())
    {
      return &_swiftEmptySetSingleton;
    }

    sub_118B4(_swiftEmptyArrayStorage);
    return v6;
  }

  v1 = Strong;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF82B0;
  result = [v1 collectionView];
  if (result)
  {
    *(inited + 32) = result;
    sub_118B4(inited);
    v5 = v4;
    swift_setDeallocating();
    swift_arrayDestroy();

    return v5;
  }

  __break(1u);
  return result;
}

void sub_2139CC(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v5 = Strong;
  v6 = sub_213578();

  v7 = (*(v6 + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v8 = v7[1];
  if (!v8)
  {

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v9 = *v7;

  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v9 & 0xFFFFFFFFFFFFLL;
  }

  v11 = v10 != 0;
LABEL_8:
  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12 && (v13 = v12, v14 = *(v12 + OBJC_IVAR____TtC16MusicApplication19SongsViewController_filterOptionsController), v13, sub_4F4414(v11, v31), v14, *(&v31[0] + 1) != 1))
  {
    v17 = v33;
    v15 = v34;
    v16 = v32;
    v22 = v31[3];
    v23 = v31[2];
    v20 = v31[1];
    v21 = v31[0];
  }

  else
  {
    if (v11)
    {
      if (qword_DE6BD0 != -1)
      {
        swift_once();
      }

      v29[3] = xmmword_E717A8;
      v29[4] = xmmword_E717B8;
      v29[1] = xmmword_E71788;
      v29[2] = xmmword_E71798;
      v29[0] = xmmword_E71778;
      v15 = qword_E717C8;
      v30 = qword_E717C8;
      v17 = *(&xmmword_E717B8 + 1);
      v16 = xmmword_E717B8;
      v26 = xmmword_E71798;
      v27 = xmmword_E717A8;
      v24 = xmmword_E71778;
      v25 = xmmword_E71788;
      v18 = v29;
      v19 = &v28;
    }

    else
    {
      v17 = *(a1 + 72);
      v15 = *(a1 + 80);
      v16 = *(a1 + 64);
      v26 = *(a1 + 32);
      v27 = *(a1 + 48);
      v24 = *a1;
      v25 = *(a1 + 16);
      v19 = v29;
      v18 = a1;
    }

    sub_576EC(v18, v19);
    v21 = v24;
    v20 = v25;
    v23 = v26;
    v22 = v27;
  }

  *a2 = v21;
  *(a2 + 16) = v20;
  *(a2 + 32) = v23;
  *(a2 + 48) = v22;
  *(a2 + 64) = v16;
  *(a2 + 72) = v17;
  *(a2 + 80) = v15;
}

void sub_213BBC(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v4);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(&aBlock);
  v7 = aBlock;

  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = v7;
  v9 = [v8 request];
  v10 = v8;
  if (!v9)
  {
LABEL_12:

LABEL_13:
    v25 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v25 - 8) + 56))(a1, 1, 1, v25);
    return;
  }

  v11 = v9;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {

    v10 = v11;
    goto LABEL_12;
  }

  v13 = v12;
  v14 = RequestResponse.Controller.revision.getter();
  v16 = *(v14 + 112);
  v15 = *(v14 + 120);

  if (!v15)
  {
    goto LABEL_14;
  }

  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
LABEL_14:

    v24 = 0;
    goto LABEL_15;
  }

  [v13 setFilterText:0];
  *&v36[0] = _swiftEmptyArrayStorage;
  v18 = [v8 results];

  v31 = v18;
  if (!v18)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v36;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_140FE8;
  *(v20 + 24) = v19;
  v30 = v19;
  v34 = sub_57B9C;
  v35 = v20;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v33 = sub_48D644;
  *(&v33 + 1) = &block_descriptor_73;
  v21 = _Block_copy(&aBlock);

  v22 = v31;
  [v31 enumerateItemIdentifiersUsingBlock:v21];
  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
    goto LABEL_20;
  }

  sub_13C80(0, &unk_DE8180);

  isa = sub_AB9740().super.isa;

  [v13 setAllowedItemIdentifiers:isa];

  v24 = sub_140FE8;
LABEL_15:
  v26 = [v13 playbackIntentWithStartItemIdentifiers:0];
  if (v26)
  {
    *v6 = v26;
    swift_storeEnumTagMultiPayload();
    v34 = 0;
    aBlock = 0u;
    v33 = 0u;
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    v27 = v2;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v6, &aBlock, 3, 0, 0, 1, 0, 1, a1, v2, v36);

    v28 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v28 - 8) + 56))(a1, 0, 1, v28);
  }

  else
  {
    v29 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v29 - 8) + 56))(a1, 1, 1, v29);
  }

  sub_17654(v24);
}

void sub_21407C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v4);
  v6 = (v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v33);
  v7 = *&v33[0];

  if (v7)
  {
    v8 = [v7 results];
    if (v8)
    {
      v9 = v8;
      isa = sub_AB3770().super.isa;
      v11 = [v9 itemAtIndexPath:isa];

      v12 = [objc_allocWithZone(MPModelLibraryRequest) init];
      *&v33[0] = 0x203A676E6F53;
      *(&v33[0] + 1) = 0xE600000000000000;
      v13 = v12;
      v14 = [v11 title];
      if (v14)
      {
        v15 = v14;
        v16 = sub_AB92A0();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      *&v31[0] = v16;
      *(&v31[0] + 1) = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0);
      v35._countAndFlagsBits = sub_AB9350();
      sub_AB94A0(v35);

      v20 = sub_AB9260();

      [v13 setLabel:v20];

      v21 = [objc_opt_self() kindWithVariants:1];
      [v13 setItemKind:v21];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_AF82B0;
      v23 = v11;
      *(v22 + 32) = [v23 identifiers];
      sub_13C80(0, &unk_DE8180);
      v24 = sub_AB9740().super.isa;

      [v13 setAllowedItemIdentifiers:v24];

      v25 = [v2 traitCollection];
      UITraitCollection.configure<A, B>(libraryRequest:)(v13);

      v26 = [v23 identifiers];
      v27 = [v13 playbackIntentWithStartItemIdentifiers:v26];

      if (v27)
      {
        *v6 = v27;
        swift_storeEnumTagMultiPayload();
        v34 = 0;
        memset(v33, 0, sizeof(v33));
        v32 = 0;
        memset(v31, 0, sizeof(v31));
        v28 = v2;
        PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v6, v33, 3, 0, 0, 1, 0, 1, a1, v2, v31);

        v29 = type metadata accessor for PlaybackIntentDescriptor(0);
        (*(*(v29 - 8) + 56))(a1, 0, 1, v29);
      }

      else
      {
        v30 = type metadata accessor for PlaybackIntentDescriptor(0);
        (*(*(v30 - 8) + 56))(a1, 1, 1, v30);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v19 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
  }
}

void sub_214524(void *a1, uint64_t a2, uint64_t a3, const char **a4, char a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for SongsViewController();
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(a5);
}

id sub_2146D0()
{
  v1 = v0;
  v2 = sub_AB52B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB5290();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SongsViewController();
  v84.receiver = v1;
  v84.super_class = v10;
  objc_msgSendSuper2(&v84, "viewDidLoad");
  result = [v1 view];
  if (result)
  {
    v12 = result;
    v78 = v6;
    v79 = v3;
    v80 = v2;
    if (qword_DE6C58 != -1)
    {
      swift_once();
    }

    v13 = qword_E71898;
    [v12 setBackgroundColor:qword_E71898];

    v14 = *&v1[OBJC_IVAR____TtC16MusicApplication19SongsViewController_artworkPrefetchingController];
    *(v14 + OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_cachingReference) = *&v1[OBJC_IVAR____TtC16MusicApplication19SongsViewController_artworkCachingReference];

    swift_unknownObjectRelease();
    v15 = (v14 + OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_defaultCatalogMetricsProviding);
    v16 = *(v14 + OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_defaultCatalogMetricsProviding);
    *v15 = sub_215344;
    v15[1] = 0;
    sub_17654(v16);
    result = [v1 collectionView];
    if (result)
    {
      v17 = result;
      [result setBackgroundColor:v13];
      [v17 setAlwaysBounceVertical:1];
      [v17 setAllowsFocus:1];
      [v17 setRemembersLastFocusedIndexPath:1];
      type metadata accessor for SongCell();
      static UICollectionReusableView.reuseIdentifier.getter();
      v81 = v17;
      UICollectionView.register<A>(_:reuseIdentifier:)();

      type metadata accessor for PlayIntentControlsReusableView();
      sub_AB92A0();
      static UICollectionReusableView.reuseIdentifier.getter();
      v18 = v81;
      UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

      [v18 setPrefetchDataSource:v14];
      [v18 _setShouldPrefetchCellsWhenPerformingReloadData:1];
      sub_AB5320();
      v19 = swift_allocBox();
      (*(v7 + 104))(v9, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v78);
      sub_AB52C0();
      (v79)[13](v5, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v80);
      sub_AB52E0();
      sub_AB5300();
      *(swift_allocObject() + 16) = v1;
      v20 = v1;
      sub_AB5310();
      v21 = objc_allocWithZone(UICollectionViewCompositionalLayout);
      aBlock[4] = sub_21B780;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_496F34;
      aBlock[3] = &block_descriptor_78;
      v22 = _Block_copy(aBlock);
      v80 = v19;

      v23 = [v21 initWithSectionProvider:v22];
      _Block_release(v22);

      v79 = v23;
      [v18 setCollectionViewLayout:v23];
      v24 = [v20 navigationItem];
      v25 = [v24 rightBarButtonItems];
      if (v25)
      {
        v26 = v25;
        sub_13C80(0, &unk_DF12E0);
        v27 = sub_AB9760();

        v24 = v26;
      }

      else
      {
        v27 = _swiftEmptyArrayStorage;
      }

      v82 = v27;
      v28 = *&v20[OBJC_IVAR____TtC16MusicApplication19SongsViewController_filterOptionsController];
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = (v28 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOptionDidChange);
      v31 = *(v28 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOptionDidChange);
      *v30 = sub_21B788;
      v30[1] = v29;

      sub_17654(v31);

      v32 = *&v20[OBJC_IVAR____TtC16MusicApplication19SongsViewController_sortOptionsController];
      v33 = sub_4F46B0();
      sub_13C80(0, &qword_DF1D50);
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      *(v35 + 24) = v32;

      isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, (&dword_0 + 1), 0, sub_14176C, v35).super.super.isa;

      UIBarButtonItem.primaryActionKind.setter(isa, 1);

      v37 = *(v28 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController____lazy_storage___filterBarButtonItem);
      sub_AB9730();
      if (*(&dword_10 + (v82 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v82 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
      v38 = [v20 navigationItem];
      sub_13C80(0, &unk_DF12E0);
      v39 = sub_AB9740().super.isa;

      [v38 setRightBarButtonItems:v39 animated:0];

      v40 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v41 = v32[8];
      v32[8] = sub_21B7D4;
      v32[9] = v40;

      sub_17654(v41);

      v42 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v43 = v32[6];
      v32[6] = sub_141790;
      v32[7] = v42;

      sub_17654(v43);

      type metadata accessor for ModelResponseIndexBarController();
      v44 = swift_allocObject();
      *(v44 + 24) = 0;
      *(v44 + 32) = 0;
      *(v44 + 40) = 100;
      swift_unknownObjectWeakInit();
      *(v44 + 56) = _swiftEmptyArrayStorage;
      *(v44 + 64) = 0;
      *(v44 + 72) = 0;
      *(v44 + 80) = 0;
      *(v44 + 88) = 1;
      v45 = v81;
      *(v44 + 16) = v81;
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakAssign();
      v47 = v45;
      if (Strong)
      {
        v48 = Strong;

        sub_381368(v49, v48);
      }

      v50 = sub_381260();
      if (v50)
      {
        v51 = v50;
        v52 = swift_unknownObjectWeakLoadStrong();
        if (v52)
        {
          if (*(v44 + 32) == 1)
          {
            v78 = v52;
            v53 = *(v51 + 16);
            if (v53)
            {
              v77 = Strong;
              aBlock[0] = _swiftEmptyArrayStorage;

              sub_ABAEC0();
              v54 = objc_opt_self();
              v76[1] = v51;
              v55 = v51 + 40;
              do
              {

                v56 = sub_AB9260();
                v57 = [v54 keyCommandWithInput:v56 modifierFlags:0 action:"indexKeyCommandHandler:"];

                sub_ABAE90();
                sub_ABAED0();
                sub_ABAEE0();
                sub_ABAEA0();
                v55 += 16;
                --v53;
              }

              while (v53);
              v58 = aBlock[0];
              v45 = v81;
              Strong = v77;
            }

            else
            {

              v58 = _swiftEmptyArrayStorage;
            }

            sub_380230(v58);

            Strong = v78;
LABEL_21:

            *&v20[OBJC_IVAR____TtC16MusicApplication19SongsViewController_indexBarController] = v44;

            v59 = [v20 traitCollection];
            v60 = UITraitCollection.isMediaPicker.getter();

            if (v60)
            {
              v61 = [v20 navigationController];
              if (v61)
              {
                v62 = v61;
                type metadata accessor for MediaPickerNavigationController();
                if (swift_dynamicCastClass())
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2D0);
                  v63 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  *(v63 + 24) = 0;
                  *(v63 + 32) = 0;
                  swift_unknownObjectWeakAssign();
                  v64 = v45;

                  v65 = *(v63 + 24);
                  *(v63 + 24) = v45;

                  v66 = v63;
                  v67 = &OBJC_IVAR____TtC16MusicApplication19SongsViewController_mediaPickerAddController;
LABEL_27:
                  *&v20[*v67] = v66;

                  v68 = *&v20[OBJC_IVAR____TtC16MusicApplication19SongsViewController_requestController];
                  v69 = RequestResponse.Controller.revision.getter();
                  sub_219A44(v69);

                  v70 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v71 = (v68 + *(*v68 + 128));
                  swift_beginAccess();
                  v72 = *v71;
                  *v71 = sub_21B7DC;
                  v71[1] = v70;

                  sub_17654(v72);

                  v73 = sub_213578();

                  v74 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v75 = *(v73 + 88);
                  *(v73 + 88) = sub_21B7E4;
                  *(v73 + 96) = v74;

                  sub_17654(v75);
                }
              }
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF9280);
            swift_allocObject();
            v66 = sub_2F5AFC(v45);
            v67 = &OBJC_IVAR____TtC16MusicApplication19SongsViewController_addKeepLocalController;
            goto LABEL_27;
          }
        }
      }

      sub_380230(_swiftEmptyArrayStorage);
      goto LABEL_21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_215344(int a1, id a2)
{
  v3 = [a2 traitCollection];
  [v3 displayScale];

  v4 = [a2 traitCollection];
  [a2 bounds];
  [a2 music_inheritedLayoutInsets];
  sub_14C0F8(v4, 0, &v7);
  v5 = v7;

  return v5;
}

id sub_215410@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_AB5180();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  result = [a2 collectionView];
  if (result)
  {
    v8 = result;
    sub_14D1D8(result, 1);

    sub_AB5140();
    return sub_AB5160();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2154F4(uint64_t a1, void *a2)
{
  v4 = sub_AB5320();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = sub_AB5170();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = swift_projectBox();
  v13 = &enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
  if (a1)
  {
    v13 = &enum case for UIListSeparatorConfiguration.Visibility.visible(_:);
  }

  (*(v9 + 104))(v11, *v13, v8);
  swift_beginAccess();
  v14 = sub_AB5270();
  sub_AB5130();
  v14(v29, 0);
  swift_endAccess();
  sub_13C80(0, &qword_DF0D20);
  swift_beginAccess();
  (*(v5 + 16))(v7, v12, v4);
  v15 = sub_ABA400();
  (*(v5 + 8))(v7, v4);
  if (a1 || (v16 = [a2 traitCollection], v17 = UITraitCollection.isMediaPicker.getter(), v16, v17))
  {
    sub_13C80(0, &qword_DF9290);
    isa = sub_AB9740().super.isa;
    [v15 setBoundarySupplementaryItems:isa];
  }

  else
  {
    v20 = [v15 boundarySupplementaryItems];
    sub_13C80(0, &qword_DF9290);
    v21 = sub_AB9760();
    v22 = v21;
    if (v21 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
    {
      v24 = 0;
      while (1)
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v25 = sub_361458(v24, v22);
        }

        else
        {
          if (v24 >= *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_18;
          }

          v25 = *(v22 + 8 * v24 + 32);
        }

        v26 = v25;
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        [v25 setPinToVisibleBounds:0];

        ++v24;
        if (v27 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_20:
  }

  return v15;
}

void sub_2158A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[OBJC_IVAR____TtC16MusicApplication19SongsViewController_requestController];
    v3 = [Strong traitCollection];
    v4 = *&v1[OBJC_IVAR____TtC16MusicApplication19SongsViewController_filterOptionsController];
    if (*(v4 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption))
    {
      v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_contentType);
      if (v5 > 8)
      {
        v7 = 0x800000;
        goto LABEL_8;
      }

      v6 = &qword_B046E8[v5];
    }

    else
    {
      v6 = MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
    }

    v7 = *v6;
LABEL_8:
    swift_beginAccess();
    v8 = *(v2 + 16);
    v33[1] = *(v2 + 32);
    v9 = *(v2 + 48);
    v10 = *(v2 + 64);
    v11 = *(v2 + 96);
    v33[4] = *(v2 + 80);
    v33[5] = v11;
    v33[2] = v9;
    v33[3] = v10;
    v12 = *(v2 + 112);
    v13 = *(v2 + 128);
    v14 = *(v2 + 144);
    v34 = *(v2 + 160);
    v33[7] = v13;
    v33[8] = v14;
    v33[6] = v12;
    v33[0] = v8;
    v15 = v8;
    v16 = *(v2 + 40);
    v17 = *(v2 + 72);
    v40 = *(v2 + 56);
    v41 = v17;
    v42 = *(v2 + 88);
    v38 = *(v2 + 24);
    v39 = v16;
    v18 = *(v2 + 121);
    v35 = *(v2 + 105);
    v36 = v18;
    v37[0] = *(v2 + 137);
    *(v37 + 15) = *(v2 + 152);
    sub_15F84(v33, &v21, &unk_DF9270);
    v19 = UITraitCollection.mediaLibrary.getter();

    v20.rawValue = UITraitCollection.combinedLibraryRequestFilter.getter().rawValue;
    v23 = v39;
    v24 = v40;
    v25 = v41;
    v22 = v38;
    v29 = v35;
    v32 = 0;
    v21 = v19;
    v26 = v42;
    v27 = v20.rawValue | v7;
    v28 = 0;
    v30 = v36;
    *v31 = v37[0];
    *&v31[15] = *(v37 + 15);
    RequestResponse.Controller.request.setter(&v21);
  }
}

uint64_t sub_215AA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC16MusicApplication19SongsViewController_requestController);
    v5 = result;

    swift_beginAccess();
    v6 = *(v4 + 16);
    v7 = *(v4 + 32);
    v8 = *(v4 + 48);
    v9 = *(v4 + 64);
    v10 = *(v4 + 96);
    v26[4] = *(v4 + 80);
    v26[5] = v10;
    v26[2] = v8;
    v26[3] = v9;
    v11 = *(v4 + 112);
    v12 = *(v4 + 128);
    v13 = *(v4 + 144);
    v27 = *(v4 + 160);
    v26[7] = v12;
    v26[8] = v13;
    v26[6] = v11;
    v26[0] = v6;
    v26[1] = v7;
    v14 = *(v4 + 32);
    v34 = *(v4 + 16);
    v35 = v14;
    v36 = *(v4 + 48);
    v37 = *(v4 + 64);
    v15 = *(v4 + 128);
    v30 = *(v4 + 112);
    v31 = v15;
    v32 = *(v4 + 144);
    v33 = *(v4 + 160);
    v16 = *(v4 + 96);
    v28 = *(v4 + 80);
    v29 = v16;
    sub_15F84(v26, v17, &unk_DF9270);

    v17[0] = v34;
    v17[1] = v35;
    v17[2] = v36;
    v18 = v37;
    v19 = a2;
    v22 = v30;
    v23 = v31;
    v24 = v32;
    v25 = v33;
    v20 = v28;
    v21 = v29;
    RequestResponse.Controller.request.setter(v17);
  }

  return result;
}

void sub_215C08(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_219A44(a2);
  }
}

uint64_t sub_215C64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC16MusicApplication19SongsViewController_requestController);
    v6 = Strong;

    swift_beginAccess();
    v7 = *(v5 + 128);
    v25 = *(v5 + 112);
    v26 = v7;
    v27 = *(v5 + 144);
    v28 = *(v5 + 160);
    v8 = *(v5 + 64);
    v21 = *(v5 + 48);
    v22 = v8;
    v9 = *(v5 + 96);
    v23 = *(v5 + 80);
    v24 = v9;
    v10 = *(v5 + 32);
    v19 = *(v5 + 16);
    v20 = v10;

    sub_15F84(&v19, v13, &unk_DF9270);

    v13[2] = v21;
    v13[3] = v22;
    v13[4] = v23;
    v13[5] = v24;
    v13[0] = v19;
    v13[1] = v20;
    v16 = v26;
    v17 = v27;
    v18 = v28;
    v14 = a1;
    v15 = a2;
    RequestResponse.Controller.request.setter(v13);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;

    RequestResponse.Controller.setNeedsReload(_:)(0, 0);
  }

  return result;
}

void sub_215E30(void *a1)
{
  v2 = v1;
  v84.receiver = v1;
  v84.super_class = type metadata accessor for SongsViewController();
  objc_msgSendSuper2(&v84, "traitCollectionDidChange:", a1);
  v4 = *&v1[OBJC_IVAR____TtC16MusicApplication19SongsViewController_requestController];
  v5 = [v1 traitCollection];
  v6 = *&v1[OBJC_IVAR____TtC16MusicApplication19SongsViewController_filterOptionsController];
  v61 = a1;
  if ((*(v6 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption) & 1) == 0)
  {
    v8 = MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
    goto LABEL_5;
  }

  v7 = *(v6 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_contentType);
  if (v7 <= 8)
  {
    v8 = &qword_B046E8[v7];
LABEL_5:
    v9 = *v8;
    goto LABEL_7;
  }

  v9 = 0x800000;
LABEL_7:
  swift_beginAccess();
  v10 = *(v4 + 16);
  v74[1] = *(v4 + 32);
  v11 = *(v4 + 48);
  v12 = *(v4 + 64);
  v13 = *(v4 + 96);
  v74[4] = *(v4 + 80);
  v74[5] = v13;
  v74[2] = v11;
  v74[3] = v12;
  v14 = *(v4 + 112);
  v15 = *(v4 + 128);
  v16 = *(v4 + 144);
  v75 = *(v4 + 160);
  v74[7] = v15;
  v74[8] = v16;
  v74[6] = v14;
  v74[0] = v10;
  v17 = v10;
  v18 = *(v4 + 40);
  v19 = *(v4 + 72);
  v81 = *(v4 + 56);
  v82 = v19;
  v83 = *(v4 + 88);
  v79 = *(v4 + 24);
  v80 = v18;
  v20 = *(v4 + 121);
  v76 = *(v4 + 105);
  v77 = v20;
  v78[0] = *(v4 + 137);
  *(v78 + 15) = *(v4 + 152);
  sub_15F84(v74, &v62, &unk_DF9270);
  v21 = UITraitCollection.mediaLibrary.getter();

  v22.rawValue = UITraitCollection.combinedLibraryRequestFilter.getter().rawValue;
  v64 = v80;
  v65 = v81;
  v66 = v82;
  v63 = v79;
  v70 = v76;
  v73 = 0;
  v62 = v21;
  v67 = v83;
  v68 = v22.rawValue | v9;
  v69 = 0;
  v71 = v77;
  *v72 = v78[0];
  *&v72[15] = *(v78 + 15);
  RequestResponse.Controller.request.setter(&v62);

  v23 = [v1 navigationItem];
  v24 = [v1 traitCollection];
  v25 = sub_2B51D8();
  v27 = v26;

  sub_387430(v25, v27);
  v28 = [v2 traitCollection];
  v29 = [v28 horizontalSizeClass];

  if (!a1 || v29 != [a1 horizontalSizeClass])
  {
    goto LABEL_13;
  }

  v30 = [v2 traitCollection];
  v31 = [v30 preferredContentSizeCategory];

  v32 = [a1 preferredContentSizeCategory];
  v33 = sub_AB92A0();
  v35 = v34;
  if (v33 == sub_AB92A0() && v35 == v36)
  {

    goto LABEL_21;
  }

  v37 = sub_ABB3C0();

  if ((v37 & 1) == 0)
  {
LABEL_13:
    v38 = *&v2[OBJC_IVAR____TtC16MusicApplication19SongsViewController_textDrawingCache];
    [*(v38 + 64) removeAllObjects];
    [*(v38 + 80) removeAllObjects];
    if (*(v38 + 96))
    {
      *(v38 + 104) = 1;
    }

    else
    {
      v39 = [objc_opt_self() defaultCenter];
      if (qword_DE6828 != -1)
      {
        swift_once();
      }

      [v39 postNotificationName:static TextDrawing.Cache.didInvalidateNotification object:v38];
    }

    if ([v2 isViewLoaded])
    {
      v40 = [v2 collectionView];
      if (v40)
      {
        v41 = v40;
        v42 = [v40 collectionViewLayout];

        [v42 invalidateLayout];
      }
    }
  }

LABEL_21:
  if ([v2 isViewLoaded])
  {
    v43 = [v2 traitCollection];
    v44 = UITraitCollection.isMediaPicker.getter();

    if (!a1 || UITraitCollection.isMediaPicker.getter() != v44)
    {
      v45 = [v2 collectionView];
      if (v45)
      {
        v46 = v45;
        v47 = [v2 traitCollection];
        v48 = UITraitCollection.isMediaPicker.getter();

        if (v48)
        {

          v49 = 0;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF9280);
          swift_allocObject();
          v49 = sub_2F5AFC(v46);
        }

        *&v2[OBJC_IVAR____TtC16MusicApplication19SongsViewController_addKeepLocalController] = v49;
      }
    }
  }

  v50 = [v2 traitCollection];
  v51 = UITraitCollection.isMediaPicker.getter();

  if (v51)
  {
    v52 = [v2 navigationController];
    if (v52)
    {
      v53 = v52;
      type metadata accessor for MediaPickerNavigationController();
      if (swift_dynamicCastClass())
      {
        v54 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_mediaPickerAddController;
        if (!*&v2[OBJC_IVAR____TtC16MusicApplication19SongsViewController_mediaPickerAddController])
        {
          v57 = v53;
          v58 = [v2 collectionView];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2D0);
          v59 = swift_allocObject();
          swift_unknownObjectWeakInit();
          *(v59 + 24) = 0;
          *(v59 + 32) = 0;
          swift_unknownObjectWeakAssign();

          v60 = *(v59 + 24);
          *(v59 + 24) = v58;

          *&v2[v54] = v59;
          goto LABEL_36;
        }
      }
    }
  }

  v55 = [v2 traitCollection];
  v56 = UITraitCollection.isMediaPicker.getter();

  if (v56)
  {
    return;
  }

  *&v2[OBJC_IVAR____TtC16MusicApplication19SongsViewController_mediaPickerAddController] = 0;
LABEL_36:
}

void sub_216544(int a1, id a2)
{
  if ([a2 isViewLoaded])
  {
    v3 = [a2 collectionView];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 collectionViewLayout];

      [v5 invalidateLayout];
    }
  }
}

void sub_216728(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  Width = CGRectGetWidth(*&v4[OBJC_IVAR____TtC16MusicApplication19SongsViewController_lastKnownViewBounds]);
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  v12 = CGRectGetWidth(v14);
  if ((sub_AB38D0() & 1) != 0 && [v4 isViewLoaded])
  {
    v9 = [v4 collectionView];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 collectionViewLayout];

      [v11 invalidateLayout];
    }
  }
}

void sub_216990()
{
  v1 = v0;
  type metadata accessor for SongCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  v2 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();

  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v62);

  v3 = v62[0];
  if (v62[0])
  {
    v4 = [v62[0] results];

    if (!v4)
    {
      __break(1u);
      return;
    }

    isa = sub_AB3770().super.isa;
    v6 = [v4 itemAtIndexPath:isa];

    if (v6)
    {
      v7 = *(v1 + OBJC_IVAR____TtC16MusicApplication19SongsViewController_textDrawingCache);
      v8 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
      swift_beginAccess();
      *&v2[v8] = v7;
      swift_retain_n();
      v9 = v2;

      v10 = *&v9[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
      v11 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
      swift_beginAccess();
      v12 = *&v10[v11];
      *&v10[v11] = v7;

      v13 = v10;
      sub_2E6210(v12);

      v14 = *(v1 + OBJC_IVAR____TtC16MusicApplication19SongsViewController_artworkCachingReference);
      *&v9[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkCachingReference] = v14;

      *(*&v9[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent] + 16) = v14;

      v15 = [v6 title];
      if (v15)
      {
        v16 = v15;
        v17 = sub_AB92A0();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0xE000000000000000;
      }

      v20 = &v9[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
      v21 = *&v9[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
      v22 = *&v9[OBJC_IVAR____TtC16MusicApplication8SongCell_title + 8];
      *v20 = v17;
      v20[1] = v19;
      sub_142858(v21, v22);

      v23 = [v6 artist];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 name];
        if (v25)
        {
          v26 = v25;
          v27 = sub_AB92A0();
          v29 = v28;

          goto LABEL_12;
        }
      }

      v27 = 0;
      v29 = 0xE000000000000000;
LABEL_12:
      v30 = &v9[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
      v31 = *&v9[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
      v32 = *&v9[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8];
      *v30 = v27;
      v30[1] = v29;
      sub_142A70(v31, v32);

      v33 = [v6 album];
      if (v33)
      {
        v34 = v33;
        v35 = [v33 title];
        if (v35)
        {
          v36 = v35;
          v37 = sub_AB92A0();
          v39 = v38;

LABEL_17:
          v40 = &v9[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle];
          v41 = *&v9[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle];
          v42 = *&v9[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle + 8];
          *v40 = v37;
          v40[1] = v39;
          sub_142D1C(v41, v42);

          v43 = [v6 isFavorite];
          v44 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite;
          v45 = v9[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite];
          v9[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite] = v43;
          if (v43 != v45)
          {
            sub_201644();
            v46 = sub_200954();
            [v46 setHidden:(v9[v44] & 1) == 0];

            v43 = v9[v44];
          }

          if (v45 != v43)
          {
            sub_14B200();
          }

          v47 = *&v9[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle];
          *&v9[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle] = 0;
          sub_143510(v47);
          v48 = &v9[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment];
          v49 = *&v9[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment];
          v50 = v9[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment + 8];
          *v48 = 0;
          v48[8] = 0;
          if (v50 || (v62[0] = 0, *v59 = v49, sub_7FD28(), (sub_AB38E0() & 1) == 0))
          {
            [v9 setNeedsLayout];
          }

          v51 = [objc_opt_self() currentDevice];
          v52 = [v51 userInterfaceIdiom];

          if (v52)
          {
            [v6 duration];
            sub_142E58(v53);
          }

          v62[3] = sub_13C80(0, &unk_DE8EB0);
          v62[4] = &off_D179F8;
          v62[0] = v6;
          sub_15F84(v62, v59, &unk_DE9C60);
          v54 = v60;
          if (v60)
          {
            v55 = v61;
            __swift_project_boxed_opaque_existential_1(v59, v60);
            v56 = v6;
            v57 = sub_4CAA30(&off_CEF8C8, v54, v55);
            __swift_destroy_boxed_opaque_existential_0(v59);
          }

          else
          {
            v58 = v6;
            sub_12E1C(v59, &unk_DE9C60);
            v57 = _swiftEmptyArrayStorage;
          }

          sub_178218(v57);

          sub_12E1C(v62, &unk_DE9C60);
          return;
        }
      }

      v37 = 0;
      v39 = 0xE000000000000000;
      goto LABEL_17;
    }
  }
}

void sub_217080(uint64_t a1, uint64_t a2, void *a3)
{
  object = v3;
  v7 = sub_AB35C0();
  __chkstk_darwin(v7 - 8);
  v8 = sub_AB9250();
  __chkstk_darwin(v8 - 8);
  v9 = sub_AB9230();
  __chkstk_darwin(v9 - 8);
  if (sub_AB92A0() != a2 || v10 != a3)
  {
    v12 = sub_ABB3C0();

    if (v12)
    {
      goto LABEL_8;
    }

    v44[1] = 0;
    v44[2] = 0xE000000000000000;
    sub_ABAD90(66);
    v45._countAndFlagsBits = 0xD000000000000026;
    v45._object = 0x8000000000B58540;
    sub_AB94A0(v45);
    v46._countAndFlagsBits = a2;
    v46._object = a3;
    sub_AB94A0(v46);
    v47._object = 0x8000000000B58570;
    v47._countAndFlagsBits = 0xD000000000000018;
    sub_AB94A0(v47);
    sub_AB3820();
    sub_21B3B0();
    v48._countAndFlagsBits = sub_ABB330();
    object = v48._object;
    sub_AB94A0(v48);

    sub_ABAFD0();
    __break(1u);
  }

LABEL_8:
  type metadata accessor for PlayIntentControlsReusableView();
  static UICollectionReusableView.reuseIdentifier.getter();
  v13 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();

  v14 = *&object[OBJC_IVAR____TtC16MusicApplication19SongsViewController_textDrawingCache];
  *&v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_textDrawingCache] = v14;
  swift_retain_n();

  v15 = *&v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_textStackView];
  v16 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v17 = *(v15 + v16);
  *(v15 + v16) = v14;
  swift_retain_n();
  sub_2E6210(v17);

  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v44);

  v18 = v44[0];
  if (v44[0])
  {
    v19 = [v44[0] results];

    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = [v19 totalItemCount];
  }

  else
  {
    v20 = 0;
  }

  sub_AB9220();
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  sub_AB9210(v49);
  v44[0] = v20;
  sub_AB91F0();
  v50._countAndFlagsBits = 0x297328676E6F7320;
  v50._object = 0xE800000000000000;
  sub_AB9210(v50);
  sub_AB9240();
  sub_AB3550();
  v21 = sub_AB9320();
  v22 = &v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_title];
  *v22 = v21;
  v22[1] = v23;

  sub_413638();
  v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shouldHide] = v20 == 0;
  [v13 setHidden:?];
  v24 = v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isBottomHairlineHidden];
  v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isBottomHairlineHidden] = 1;
  if ((v24 & 1) == 0)
  {
    [*&v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_bottomHairlineView] setHidden:1];
  }

  v25 = v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isTopHairlineHidden];
  v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isTopHairlineHidden] = 1;
  if ((v25 & 1) == 0)
  {
    [*&v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_topHairlineView] setHidden:1];
  }

  v26 = [object traitCollection];
  v27 = [v26 horizontalSizeClass];

  if (v27 != &dword_0 + 2)
  {
    v28 = *&object[OBJC_IVAR____TtC16MusicApplication19SongsViewController_indexBarController];
    if (!v28 || *(v28 + 32) != 1)
    {
      v43 = v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_trailingHairlineAlignment];
      v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_trailingHairlineAlignment] = 0;
      if (v43 != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  v29 = v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_trailingHairlineAlignment];
  v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_trailingHairlineAlignment] = 1;
  if ((v29 & 1) == 0)
  {
LABEL_20:
    [v13 setNeedsLayout];
  }

LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA940);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_AF4EC0;
  *(v30 + 32) = 0;
  v31 = [object traitCollection];
  v32 = [v31 horizontalSizeClass];

  if (v32 == &dword_0 + 2)
  {
    v30 = sub_6B7E4(&dword_0 + 1, 2, 1, v30);
    *(v30 + 16) = 2;
    *(v30 + 33) = 1;
  }

  v33 = *&v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_userInterfaceComponents];
  *&v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_userInterfaceComponents] = v30;
  if ((sub_12D0A4(v30, v33) & 1) == 0)
  {
    sub_413EB8();
    [v13 setNeedsLayout];
  }

  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = v13;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_21B448;
  *(v36 + 24) = v35;
  v37 = &v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_playHandler];
  v38 = *&v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_playHandler];
  *v37 = sub_140E00;
  v37[1] = v36;
  v39 = v13;

  sub_17654(v38);
  sub_413EB8();
  [v39 setNeedsLayout];

  v40 = swift_allocObject();
  *(v40 + 16) = sub_21B448;
  *(v40 + 24) = v35;
  v41 = &v39[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shuffleHandler];
  v42 = *&v39[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shuffleHandler];
  *v41 = sub_140E2C;
  v41[1] = v40;

  sub_17654(v42);
  sub_413EB8();
  [v39 setNeedsLayout];
}

void sub_217820(uint64_t a1, uint64_t a2, void *a3)
{
  v60 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v4 - 8);
  v59 = &v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v6 - 8);
  v8 = &v58 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v9 - 8);
  v11 = &v58 - v10;
  v12 = type metadata accessor for PlaybackIntentDescriptor(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v61 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v62 = &v58 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v58 - v19;
  __chkstk_darwin(v18);
  v22 = &v58 - v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v24 = Strong;
  v25 = sub_AB3820();
  (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  sub_213BBC(v11);
  sub_12E1C(v8, &unk_DE8E20);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    sub_12E1C(v11, &unk_DEA510);
    return;
  }

  v26 = v22;
  sub_140E58(v11, v22);
  v27 = v24;
  [a3 bounds];
  v73[0] = a3;
  v73[1] = v28;
  v73[2] = v29;
  v73[3] = v30;
  v73[4] = v31;
  v74 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v73, 15, v65);
  v69[0] = v65[0];
  v69[1] = v65[1];
  v70 = v66;
  v71 = v67;
  v72 = v68;
  v32 = v27;
  v33 = a3;
  v58 = v32;
  PresentationSource.init(viewController:position:)(v32, v69, v64);
  if (qword_DE6838 != -1)
  {
    swift_once();
  }

  sub_21B7EC(v22, v20, type metadata accessor for PlaybackIntentDescriptor);
  v34 = v62;
  sub_21B7EC(v20, v62, type metadata accessor for PlaybackIntentDescriptor);
  v35 = v61;
  sub_21B7EC(v20, v61, type metadata accessor for PlaybackIntentDescriptor);
  v36 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v37 = (v14 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  sub_140E58(v20, v38 + v36);
  v39 = v60;
  *(v38 + v37) = v60;
  v40 = sub_10AC20(0);
  v41 = sub_10CB1C(0, 0, v40);
  ExplicitRestrictionsController.shared.unsafeMutableAddressor();

  ExplicitRestrictionsController.explicitContentIsAllowed.getter();

  if (v41)
  {
    goto LABEL_7;
  }

  if (v40 > 4)
  {
    if (v40 <= 6)
    {
      if (v40 != (&dword_4 + 1))
      {
        v56 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_15F28(v64, v63);
        v57 = swift_allocObject();
        v57[2] = v56;
        v57[3] = 0;
        sub_17704(v63, (v57 + 4));
        v57[16] = sub_21B5C4;
        v57[17] = v38;

        sub_10DB34(sub_111AA8, v57);

        goto LABEL_8;
      }

      v54 = sub_10FB2C(0, 0);
      v55 = v54;
      goto LABEL_29;
    }

    if (v40 == (&dword_4 + 3))
    {
LABEL_33:
      sub_1101F4(0, v64);
      goto LABEL_8;
    }

    if (v40 == &dword_8)
    {
      v50 = sub_AB9990();
      v51 = v59;
      (*(*(v50 - 8) + 56))(v59, 1, 1, v50);
      sub_15F28(v64, v63);
      sub_AB9940();
      v52 = sub_AB9930();
      v53 = swift_allocObject();
      *(v53 + 16) = v52;
      *(v53 + 24) = &protocol witness table for MainActor;
      sub_17704(v63, v53 + 32);
      sub_DBDC8(0, 0, v51, &unk_AF79B0, v53);

      goto LABEL_8;
    }

    if (v40 == (&dword_8 + 1))
    {
      sub_10FFD8();
      goto LABEL_8;
    }

LABEL_35:
    sub_21B854(v35, type metadata accessor for PlaybackIntentDescriptor);
    sub_21B854(v34, type metadata accessor for PlaybackIntentDescriptor);
    v63[0] = v40;
    sub_ABB450();
    __break(1u);
    return;
  }

  if (v40 > 1)
  {
    if (v40 == (&dword_0 + 2))
    {
      sub_10F978();
      goto LABEL_8;
    }

    if (v40 == (&dword_0 + 3))
    {
      static Alert.cellularRestrictedAlert(model:)(0, v63);
    }

    else
    {
      static Alert.networkUnavailableAlert(model:traitCollection:)(0, 0, v63);
    }

    v55 = Alert.uiAlertController.getter();
    sub_111904(v63);
    v54 = v55;
LABEL_29:
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v54, 1, 1, 0, 0);
    UIViewController.dismiss(after:)(480.0);

    goto LABEL_9;
  }

  if (v40)
  {
    if (v40 == (&dword_0 + 1))
    {
      goto LABEL_33;
    }

    goto LABEL_35;
  }

LABEL_7:
  v43 = PlaybackIntentDescriptor.intent.getter(v42);
  [v43 setShuffleMode:v39];

  v45 = PlaybackIntentDescriptor.intent.getter(v44);
  [v45 setRepeatMode:0];

  sub_37D3DC(0);
LABEL_8:

LABEL_9:
  sub_21B854(v35, type metadata accessor for PlaybackIntentDescriptor);
  sub_21B854(v34, type metadata accessor for PlaybackIntentDescriptor);
  v46 = v58;
  v47 = [v58 navigationItem];

  v48 = [v47 searchController];
  if (v48)
  {
    v49 = v48;

    v47 = [v49 searchBar];
    [v47 resignFirstResponder];
  }

  sub_1611C(v64);
  sub_21B854(v26, type metadata accessor for PlaybackIntentDescriptor);
}

void sub_218100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 1)
  {
    v4 = PlaybackIntentDescriptor.intent.getter(a1);
    [v4 setShuffleMode:a3];

    v6 = PlaybackIntentDescriptor.intent.getter(v5);
    [v6 setRepeatMode:0];

    sub_37D3DC(0);
  }
}

uint64_t sub_218364@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  result = __chkstk_darwin(v7 - 8);
  v10 = &v13 - v9;
  if (!*(v3 + OBJC_IVAR____TtC16MusicApplication19SongsViewController_indexBarController))
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
    sub_AB3810();
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

void sub_218710()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_21876C();
  }
}

void sub_21876C()
{
  v1 = v0;
  sub_21A4D8();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [v2 album];

  if (!v4)
  {
    return;
  }

  sub_21A4D8();
  if (!v5)
  {
    return;
  }

  v33 = v5;
  v6 = [v5 album];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MPModelLibraryRequest) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_AF82B0;
    *(v9 + 32) = v7;
    sub_13C80(0, &qword_DEDE20);
    v10 = v7;
    isa = sub_AB9740().super.isa;

    [v8 setScopedContainers:isa];

    v12 = objc_opt_self();
    v13 = objc_opt_self();
    v14 = v8;
    v15 = [v13 kindWithVariants:1];
    v16 = [v12 kindWithSongKind:v15];

    [v14 setSectionKind:v16];
    v17 = [v13 kindWithVariants:1];
    [v14 setItemKind:v17];

    v18 = [v1 traitCollection];
    UITraitCollection.configure<A, B>(libraryRequest:)(v14);

    v19 = [v33 identifiers];
    type metadata accessor for JSContainerDetailComponentController();
    v20 = v10;
    v21 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v20, 0, 1, UIScreen.Dimensions.size.getter, 0);
    if (v21)
    {
      v22 = v21;
      v23 = *&v21[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
LABEL_7:
      v24 = JSViewModel.playActivityRecommendationData.getter();
      v26 = v25;
LABEL_17:
      sub_466A4(0, 0xF000000000000000);
      v39[0] = v14;
      v39[1] = v23;
      v39[2] = v7;
      v39[3] = 0;
      v39[4] = v22;
      v39[5] = 0;
      v39[6] = v19;
      v40 = 1;
      v41 = v24;
      v42 = v26;
      v35[0] = v14;
      v35[1] = v23;
      v35[2] = v7;
      v35[3] = 0;
      v35[4] = v22;
      v35[5] = 0;
      v35[6] = v19;
      v36 = 1;
      v37 = v24;
      v38 = v26;
      sub_70EB0(v39, v34);
      sub_70F0C(v35);
      v29 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController());
      sub_70EB0(v39, v34);
      v30 = sub_2D72DC(v39);
      v31 = [v1 navigationController];
      if (v31)
      {
        v32 = v31;
        [v31 pushViewController:v30 animated:1];
        sub_70F0C(v39);
      }

      else
      {
        sub_70F0C(v39);
      }

      return;
    }

    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (v22)
    {
      v27 = MPModelPropertyPlaylistType;
      v28 = v20;
      if ([v22 hasLoadedValueForKey:v27] && objc_msgSend(v22, "type") == &dword_8 + 1)
      {
        v22 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0);
        v23 = *&v22[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];

        goto LABEL_7;
      }

      v22 = 0;
    }

    v23 = 0;
    v24 = 0;
    v26 = 0xF000000000000000;
    goto LABEL_17;
  }
}

void sub_218FF8(void *a1, uint64_t a2)
{
  v3 = v2;
  v52 = a2;
  v50 = a1;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v7 - 8);
  v9 = &v46 - v8;
  v10 = type metadata accessor for PlaybackIntentDescriptor(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v53);

  v14 = v53[0];
  if (v53[0])
  {
    v48 = v5;
    v51 = v3;
    v15 = [v53[0] results];

    if (v15)
    {
      isa = sub_AB3770().super.isa;
      v17 = [v15 itemAtIndexPath:isa];

      v49 = v17;
      if (v17)
      {
        v18 = v51;
        v19 = [v51 traitCollection];
        v20 = UITraitCollection.isMediaPicker.getter();

        if (v20)
        {
          sub_21407C(v9);
          if ((*(v11 + 48))(v9, 1, v10) == 1)
          {

            sub_12E1C(v9, &unk_DEA510);
            return;
          }

          sub_140E58(v9, v13);
          v30 = sub_AB3770().super.isa;
          v23 = v50;
          v31 = [v50 cellForItemAtIndexPath:v30];

          if (v31)
          {
            type metadata accessor for SongCell();
            v32 = swift_dynamicCastClass();
            if (!v32)
            {
            }
          }

          else
          {
            v32 = 0;
          }

          v38 = v49;
          if (*&v18[OBJC_IVAR____TtC16MusicApplication19SongsViewController_mediaPickerAddController])
          {
            if (v32)
            {
              v40 = &off_D02738;
            }

            else
            {
              v40 = 0;
            }

            v41 = v32;
            v18 = v51;
            sub_3B97D0(v13, v38, v32, v40);

            sub_21B854(v13, type metadata accessor for PlaybackIntentDescriptor);
          }

          else
          {
            sub_21B854(v13, type metadata accessor for PlaybackIntentDescriptor);
          }
        }

        else
        {
          v21 = v52;
          v22 = sub_AB3770().super.isa;
          v23 = v50;
          v24 = [v50 cellForItemAtIndexPath:v22];

          if (v24)
          {
            sub_D5958(v54);
            v47 = v54[0];
            v46 = v54[1];
            v25 = v55;
            v26 = v56;
            v27 = v57;

            v28 = v46;
            v29 = v47;
          }

          else
          {
            v25 = 0;
            v27 = 0;
            v29 = 0uLL;
            v26 = 255;
            v28 = 0uLL;
          }

          v58[0] = v29;
          v58[1] = v28;
          v59 = v25;
          v60 = v26;
          v61 = v27;
          v33 = v51;
          PresentationSource.init(viewController:position:)(v33, v58, v53);
          if (qword_DE6838 != -1)
          {
            swift_once();
          }

          v34 = v48;
          (*(v48 + 16))(&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v4);
          v35 = (*(v34 + 80) + 24) & ~*(v34 + 80);
          v36 = swift_allocObject();
          *(v36 + 16) = v33;
          (*(v34 + 32))(v36 + v35, &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
          v37 = v33;
          v38 = v49;
          v39 = v49;
          sub_1109D4(v38, 0, 0, 1, v53, sub_21A8D0, v36);
          sub_1611C(v53);

          v18 = v51;
        }

        v42 = [v18 navigationItem];
        v43 = [v42 searchController];

        if (v43)
        {
          v44 = [v43 searchBar];

          [v44 resignFirstResponder];
        }

        v45 = sub_AB3770().super.isa;
        [v23 deselectItemAtIndexPath:v45 animated:1];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_219650(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for PlaybackIntentDescriptor(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v18 = &v21 - v17;
  if (v4 == 1)
  {
    v19 = sub_AB3820();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v11, a3, v19);
    (*(v20 + 56))(v11, 0, 1, v19);
    sub_213BBC(v18);
    sub_12E1C(v11, &unk_DE8E20);
    sub_15F84(v18, v15, &unk_DEA510);
    if ((*(v6 + 48))(v15, 1, v5) == 1)
    {
      sub_12E1C(v18, &unk_DEA510);
    }

    else
    {
      sub_140E58(v15, v8);
      sub_37D3DC(0);
      sub_21B854(v8, type metadata accessor for PlaybackIntentDescriptor);
      v15 = v18;
    }

    return sub_12E1C(v15, &unk_DEA510);
  }

  return result;
}

uint64_t sub_219A44(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v4 - 8);
  v83 = &v71 - v5;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v82 = &v71 - v11;
  v12 = (*&v1[OBJC_IVAR____TtC16MusicApplication19SongsViewController_artworkPrefetchingController] + OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_catalogProviding);
  v13 = *v12;
  *v12 = 0;
  v12[1] = 0;
  sub_17654(v13);
  v14 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_indexBarController;
  v15 = *&v1[OBJC_IVAR____TtC16MusicApplication19SongsViewController_indexBarController];
  if (v15)
  {
    v16 = *(v15 + 24);
    *(v15 + 24) = 0;

    sub_380968();
  }

  v17 = [v2 collectionView];
  [v17 reloadData];

  swift_beginAccess();
  if ((*(a1 + 176) & 1) == 0)
  {
    v24 = *(a1 + 168);
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    v26 = *v12;
    *v12 = sub_21A5D4;
    v12[1] = v25;
    sub_21A5DC(v24, 0);
    v78 = v24;
    sub_17654(v26);
    v27 = *&v2[v14];
    if (v27)
    {
      v28 = *(v27 + 24);
      *(v27 + 24) = v24;
      sub_21A5DC(v24, 0);
      sub_21A5DC(v24, 0);

      sub_380968();
      sub_21A5E8(v24, 0);
    }

    v29 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_addKeepLocalController;
    v30 = *&v2[OBJC_IVAR____TtC16MusicApplication19SongsViewController_addKeepLocalController];
    if (v30)
    {
      v31 = *(v30 + 96);
      *(v30 + 96) = v24;
      sub_21A5DC(v24, 0);
    }

    v81 = v10;
    v32 = *&v2[OBJC_IVAR____TtC16MusicApplication19SongsViewController_mediaPickerAddController];
    if (v32)
    {
      v33 = *(v32 + 32);
      *(v32 + 32) = v24;
      sub_21A5DC(v24, 0);
    }

    v34 = *&v2[v29];
    if (v34)
    {
      v75 = v24;
      v35 = v34[11];

      v36 = [v35 indexPathsForVisibleItems];
      v37 = sub_AB9760();

      v38 = *(v37 + 16);
      if (v38)
      {
        v71 = v37;
        v72 = v2;
        v40 = *(v7 + 16);
        v39 = v7 + 16;
        v41 = v37 + ((*(v39 + 64) + 32) & ~*(v39 + 64));
        v85 = *(v39 + 56);
        v86 = v40;
        v77 = (v39 + 16);
        v84 = (v39 - 8);
        v79 = (v39 + 40);
        v80 = (v39 + 32);
        v42 = v82;
        v40(v82, v41, v6);
        while (1)
        {
          v43 = v34[6];
          if (!v43 || (, v44 = v43(v34, v42), v46 = v45, sub_17654(v43), !v44))
          {
            (*v84)(v42, v6);
            goto LABEL_21;
          }

          v47 = v34[8];
          if (!v47)
          {
            break;
          }

          v48 = v6;
          v49 = v83;
          v47(v34, v44, v46);
          v50 = v47;
          v51 = v49;
          v6 = v48;
          sub_17654(v50);
          if ((*v80)(v51, 1, v48) == 1)
          {
            v42 = v82;
            (*v84)(v82, v6);
LABEL_29:
            sub_12E1C(v51, &unk_DE8E20);
LABEL_35:
            swift_unknownObjectRelease();
            goto LABEL_21;
          }

          (*v77)(v81, v51, v48);
          v52 = v34[4];
          if (!v52 || (, v53 = v52(v81), sub_17654(v52), !v53))
          {
            ObjectType = swift_getObjectType();
            (*(v46 + 16))(0, 0, ObjectType, v46);
            (*(v46 + 32))(0, 0, ObjectType, v46);
            v56 = *v84;
            (*v84)(v81, v6);
            v42 = v82;
            v56(v82, v6);
            goto LABEL_35;
          }

          v74 = v53;
          v76 = [v53 relativeModelObjectForStoreLibraryPersonalization];
          if (v76)
          {
            swift_unknownObjectRetain();
            v73 = v34;
            v54 = &off_CF2AC8;
          }

          else
          {
            v73 = 0;
            v54 = 0;
          }

          v42 = v82;
          v57 = swift_getObjectType();
          (*(v46 + 16))(v73, v54, v57, v46);
          (*(v46 + 32))(v76, 0, v57, v46);
          v58 = *v84;
          (*v84)(v81, v6);
          v58(v42, v6);
          swift_unknownObjectRelease();

LABEL_21:
          v41 += v85;
          if (!--v38)
          {

            v2 = v72;
            goto LABEL_40;
          }

          v86(v42, v41, v6);
        }

        (*v84)(v42, v6);
        v51 = v83;
        (*v79)(v83, 1, 1, v6);
        goto LABEL_29;
      }

LABEL_40:
      v24 = v75;
    }

    sub_21370C();
    sub_21A5DC(v24, 0);
    v59 = v78;
    sub_3E2E84([v78 isEmpty]);

    v60 = sub_213578();
    v61 = [v59 isEmpty];
    sub_21A5E8(v24, 0);
    if (v61)
    {
      v62 = (*(*&v2[OBJC_IVAR____TtC16MusicApplication19SongsViewController____lazy_storage___contentFilteringController] + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
      v63 = v62[1];
      if (v63)
      {
        v64 = *v62 & 0xFFFFFFFFFFFFLL;
        if ((v63 & 0x2000000000000000) != 0)
        {
          v65 = HIBYTE(v63) & 0xF;
        }

        else
        {
          v65 = v64;
        }

        v66 = v65 != 0;
        v67 = *(v60 + 64);
        *(v60 + 64) = v66;
        if (((v67 ^ v66) & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v70 = *(v60 + 64);
        *(v60 + 64) = 0;
        if ((v70 & 1) == 0)
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
      v68 = *(v60 + 64);
      *(v60 + 64) = 1;
      if (v68)
      {
LABEL_50:
        sub_21A5E8(v24, 0);
      }
    }

    sub_430320();
    goto LABEL_50;
  }

  v18 = *&v2[v14];
  if (v18)
  {
    v19 = *(v18 + 24);
    *(v18 + 24) = 0;

    sub_380968();
  }

  v20 = *&v2[OBJC_IVAR____TtC16MusicApplication19SongsViewController_addKeepLocalController];
  if (v20)
  {
    v21 = *(v20 + 96);
    *(v20 + 96) = 0;
  }

  v22 = *&v2[OBJC_IVAR____TtC16MusicApplication19SongsViewController_mediaPickerAddController];
  if (v22)
  {
    v23 = *(v22 + 32);
    *(v22 + 32) = 0;
  }

  sub_21370C();
  sub_3E2E84(0);
}

id sub_21A288(int a1, int a2, id a3)
{
  result = [a3 results];
  if (result)
  {
    v4 = result;
    isa = sub_AB3770().super.isa;
    v6 = [v4 itemAtIndexPath:isa];

    v7 = [v6 artworkCatalog];
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21A3A0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_21A4D8()
{
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(&v3);

  v0 = v3;
  if (v3)
  {
    v1 = [v3 results];

    if (v1)
    {
      isa = sub_AB3770().super.isa;
      [v1 itemAtIndexPath:isa];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_21A59C()
{

  return swift_deallocObject();
}

id sub_21A5DC(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_21A5E8(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t block_copy_helper_73(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21A62C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_21A674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  if (v4 && (, v6 = v4(a2), sub_17654(v4), v6))
  {
    v10 = [v6 relativeModelObjectForStoreLibraryPersonalization];
    if (v10)
    {
      swift_unknownObjectRetain();
      v7 = &off_CF2AC8;
    }

    else
    {
      v7 = 0;
    }

    *(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusControllableDelegate + 8) = v7;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_2009DC(v10, 0);
  }

  else
  {
    *(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusControllableDelegate + 8) = 0;
    swift_unknownObjectWeakAssign();
    v8 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserver;
    v9 = *(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserver);
    if (v9)
    {
      *(v9 + 32) = UIScreen.Dimensions.size.getter;
      *(v9 + 40) = 0;
    }

    *(a1 + v8) = 0;

    memset(v11, 0, 32);
    v11[2] = xmmword_B03DA0;
    sub_2019A4(v11, 0);
  }
}

uint64_t sub_21A80C()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21A8D0(unsigned __int8 a1)
{
  v3 = *(sub_AB3820() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_219650(a1, v4, v5);
}

void sub_21A944()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_requestController;
  sub_212FF0(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF9298);
  swift_allocObject();
  *(v0 + v2) = RequestResponse.Controller.init(request:)(v10);
  v3 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_filterOptionsController;
  v4 = objc_allocWithZone(type metadata accessor for LibraryFilterOptionsController());
  *(v0 + v3) = sub_4F4944(9u);
  v5 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_sortOptionsController;
  type metadata accessor for SortOptionsController();
  swift_allocObject();
  *(v0 + v5) = sub_225174(&off_CF0C28, 0, 0);
  *(v0 + OBJC_IVAR____TtC16MusicApplication19SongsViewController_indexBarController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication19SongsViewController____lazy_storage___contentFilteringController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication19SongsViewController_mediaPickerAddController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication19SongsViewController_addKeepLocalController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication19SongsViewController____lazy_storage___noContentStateController) = 0;
  v6 = (v0 + OBJC_IVAR____TtC16MusicApplication19SongsViewController_lastKnownViewBounds);
  *v6 = 0u;
  v6[1] = 0u;
  v7 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(v0 + v7) = TextDrawing.Cache.init()();
  v8 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_artworkCachingReference;
  type metadata accessor for Artwork.CachingReference();
  *(v1 + v8) = swift_allocObject();
  v9 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_artworkPrefetchingController;
  *(v1 + v9) = [objc_allocWithZone(type metadata accessor for old_ArtworkPrefetchingController()) init];
  sub_ABAFD0();
  __break(1u);
}

void sub_21AB04()
{
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(&v2);

  v0 = v2;
  if (v2)
  {
    v1 = [v2 results];

    if (v1)
    {
      [v1 numberOfSections];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_21AB98(uint64_t a1)
{
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(&v4);

  v2 = v4;
  if (v4)
  {
    v3 = [v4 results];

    if (v3)
    {
      [v3 numberOfItemsInSection:a1];
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_21AC44()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication19SongsViewController_indexBarController);
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

void sub_21ACB8(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  aBlock[0] = [a1 identifier];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF9250);
  v14 = swift_dynamicCast();
  v15 = *(v8 + 56);
  if (v14)
  {
    v15(v6, 0, 1, v7);
    v22 = a2;
    v16 = *(v8 + 32);
    v16(v13, v6, v7);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v8 + 16))(v11, v13, v7);
    v18 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    v16((v19 + v18), v11, v7);
    aBlock[4] = sub_21B34C;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_43_3;
    v20 = _Block_copy(aBlock);

    [v22 addAnimations:v20];
    (*(v8 + 8))(v13, v7);
    _Block_release(v20);
  }

  else
  {
    v15(v6, 1, 1, v7);
    sub_12E1C(v6, &unk_DE8E20);
    [a2 setPreferredCommitStyle:0];
  }
}

void sub_21AFEC(void *a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for SongCell();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(&v27);

    v9 = v27;
    if (!v27)
    {
      goto LABEL_9;
    }

    v10 = [v27 results];

    if (!v10)
    {
      __break(1u);
      return;
    }

    isa = sub_AB3770().super.isa;
    v12 = [v10 itemAtIndexPath:isa];

    if (!v12)
    {
LABEL_9:

      return;
    }

    v13 = *(v3 + OBJC_IVAR____TtC16MusicApplication19SongsViewController_addKeepLocalController);
    if (v13)
    {
      v14 = v8;

      sub_21A674(v7, a2, v13);
    }

    v15 = v8;
    v16 = [v12 artworkCatalog];
    v17 = *(v7 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
    *(v7 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v16;
    v18 = v16;

    sub_74EA4(v16);
    v19 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_mediaPickerAddController;
    if (*(v3 + OBJC_IVAR____TtC16MusicApplication19SongsViewController_mediaPickerAddController))
    {

      v20 = sub_2FBF94(v12);
    }

    else
    {
      v20 = 0;
    }

    v21 = *(v7 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton);
    *(v7 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton) = v20 & 1;
    sub_203DB8(v21);
    if (*(v3 + v19))
    {

      v22 = sub_304104(v12);

      v23 = *(v7 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isMediaPickerAddButtonSelected);
      *(v7 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isMediaPickerAddButtonSelected) = v22 & 1;
      if ((v22 & 1) == v23)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v22 = 0;
      v24 = *(v7 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isMediaPickerAddButtonSelected);
      *(v7 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isMediaPickerAddButtonSelected) = 0;
      if ((v24 & 1) == 0)
      {
LABEL_17:

        return;
      }
    }

    v25 = *(v7 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton);
    if (v25)
    {
      v26 = v25;
      [v26 setSelected:v22 & 1];

      return;
    }

    goto LABEL_17;
  }
}

uint64_t sub_21B288()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_21B34C()
{
  sub_AB3820();

  sub_218710();
}

unint64_t sub_21B3B0()
{
  result = qword_DF9260;
  if (!qword_DF9260)
  {
    sub_AB3820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF9260);
  }

  return result;
}

uint64_t sub_21B408()
{

  return swift_deallocObject();
}

uint64_t sub_21B450()
{

  return swift_deallocObject();
}

uint64_t sub_21B488()
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

void sub_21B5C4(uint64_t a1)
{
  v3 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_218100(a1, v1 + v4, v5);
}

uint64_t sub_21B660()
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

uint64_t sub_21B6DC()
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

uint64_t sub_21B794()
{

  return swift_deallocObject();
}

uint64_t sub_21B7EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B854(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21B8E0(char *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_initializedProperties;
  if (v2[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_initializedProperties] == 2)
  {
    v6 = *&v2[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_requestedProperties];
    v7 = [v6 properties];
    v8 = sub_AB9B40();

    v9 = sub_AB92A0();
    v11 = sub_4DFDA8(v9, v10, v8);
    v13 = v12;
    v15 = v14;

    sub_F01A0(v11, v13, v15);
    v2[v5] = v15 != -1;
  }

  v16 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_storeItemMetadata;
  swift_beginAccess();
  v17 = *&a1[v16];
  if (!v17)
  {
    return 0;
  }

  v18 = *&v2[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_storePlatformPersonBuilder];
  v19 = v17;
  v20 = [v18 modelObjectWithStoreItemMetadata:v19 userIdentity:a2];
  if (!v20)
  {

    return 0;
  }

  v21 = v20;
  v22 = [v20 identifiers];
  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  *(v23 + 24) = a1;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_F01B8;
  *(v24 + 24) = v23;
  aBlock[4] = sub_57B84;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_74;
  v25 = _Block_copy(aBlock);
  v26 = v2;
  v27 = a1;

  v28 = [v21 copyWithIdentifiers:v22 block:v25];

  _Block_release(v25);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v28;
  }

  __break(1u);
  return result;
}

id sub_21BBA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v6 = *(a2 + OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_initializedProperties);
    if (v6 == 2)
    {
      __break(1u);
    }

    else if (v6)
    {
      v7 = OBJC_IVAR____TtC11MusicJSCore15JSSocialProfile_pendingRequestsCount;
      v8 = result;
      swift_beginAccess();
      return [v8 setPendingRequestsCount:*(a3 + v7)];
    }
  }

  return result;
}

id sub_21BC7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSModelSocialPersonProfileBuilder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for JSModelSocialPersonProfileBuilder.InitializedProperties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_21BDD0()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21BE38(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  v5 = OBJC_IVAR____TtC16MusicApplication31JSModelSearchLandingItemBuilder_initializedProperties;
  if (*(v2 + OBJC_IVAR____TtC16MusicApplication31JSModelSearchLandingItemBuilder_initializedProperties) == 2)
  {
    v57 = a1;
    v58 = a2;
    v56 = OBJC_IVAR____TtC16MusicApplication31JSModelSearchLandingItemBuilder_requestedProperties;
    v6 = *(v2 + OBJC_IVAR____TtC16MusicApplication31JSModelSearchLandingItemBuilder_requestedProperties);
    v7 = [v6 properties];
    v8 = sub_AB9B40();

    v9 = sub_AB92A0();
    v11 = sub_4DFDA8(v9, v10, v8);
    v13 = v12;
    v15 = v14;

    sub_F01A0(v11, v13, v15);
    v16 = sub_AB92A0();
    v18 = sub_4DFDA8(v16, v17, v8);
    v20 = v19;
    v22 = v21;

    sub_F01A0(v18, v20, v22);
    v23 = sub_AB92A0();
    v25 = sub_4DFDA8(v23, v24, v8);
    v27 = v26;
    v29 = v28;

    sub_F01A0(v25, v27, v29);
    v30 = sub_AB92A0();
    v32 = sub_4DFDA8(v30, v31, v8);
    v34 = v33;
    v36 = v35;

    sub_F01A0(v32, v34, v36);
    v37 = *(v2 + v56);
    v38 = [v37 relationships];
    sub_119B5C();
    v39 = sub_AB8FF0();

    v40 = sub_AB92A0();
    if (*(v39 + 16))
    {
      sub_2EBF88(v40, v41);
      v43 = v42;
    }

    else
    {
      v43 = 0;
    }

    v44 = ~v29 != 0;
    v45 = ~v22 != 0;
    v46 = ~v15 != 0;

    v47 = v2 + v5;
    *v47 = (v45 << 16) | (v46 << 8) | (v44 << 24) | v43 & 1;
    *(v47 + 4) = ((v45 << 16) | (v46 << 8) | (v44 << 24) | ((v36 != -1) << 32)) >> 32;

    v4 = v57;
    v3 = v58;
  }

  v60 = 1;
  v48 = [objc_opt_self() emptyIdentifierSet];
  __chkstk_darwin(v48);
  v55[2] = v2;
  v55[3] = v4;
  v55[4] = v3;
  v55[5] = &v60;
  v49 = objc_allocWithZone(MusicModelSearchLandingItem);
  v50 = swift_allocObject();
  *(v50 + 16) = sub_21C8D8;
  *(v50 + 24) = v55;
  aBlock[4] = sub_57B84;
  aBlock[5] = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_75;
  v51 = _Block_copy(aBlock);

  v52 = [v49 initWithIdentifiers:v48 block:v51];
  _Block_release(v51);

  LOBYTE(v51) = swift_isEscapingClosureAtFileLocation();

  if (v51)
  {
    __break(1u);
  }

  else
  {
    v54 = [objc_allocWithZone(MPStoreLibraryPersonalizationContentDescriptor) initWithModel:v52 personalizationStyle:v60];

    return v54;
  }

  return result;
}

void sub_21C280(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  objc_opt_self();
  v9 = swift_dynamicCastObjCClassUnconditional();
  v10 = OBJC_IVAR____TtC16MusicApplication31JSModelSearchLandingItemBuilder_initializedProperties;
  v11 = *(a2 + OBJC_IVAR____TtC16MusicApplication31JSModelSearchLandingItemBuilder_initializedProperties);
  if (v11 == 2)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v12 = v9;
  if (v11)
  {

    sub_4D3314(a3, a4);
    v14 = v13;
    v16 = v15;

    [v12 setContentItem:v14];
    if (v14)
    {

      *a5 = v16;
    }
  }

  v17 = *(a2 + v10) | (*(a2 + v10 + 4) << 32);
  if (*(a2 + v10) == 2)
  {
    goto LABEL_19;
  }

  if ((*(a2 + v10) & 0x100) != 0)
  {
    swift_beginAccess();

    v18 = sub_AB9260();

    [v12 setTitleText:v18];

    v17 = *(a2 + v10) | (*(a2 + v10 + 4) << 32);
  }

  if (v17 == 2)
  {
    goto LABEL_20;
  }

  if ((v17 & 0x1000000) != 0)
  {
    swift_beginAccess();
    v19 = sub_AB9260();

    [v12 setDisplayStyle:v19];

    v17 = *(a2 + v10) | (*(a2 + v10 + 4) << 32);
  }

  if (v17 == 2)
  {
    goto LABEL_21;
  }

  if ((v17 & 0x100000000) != 0)
  {
    v20 = OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_isFeatured;
    swift_beginAccess();
    [v12 setIsFeatured:*(a3 + v20)];
    LODWORD(v17) = *(a2 + v10);
  }

  if (v17 == 2)
  {
    goto LABEL_22;
  }

  if ((v17 & 0x10000) != 0)
  {
    v21 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_backgroundArtwork;
    swift_beginAccess();
    v22 = *(a3 + v21);
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = a3;
    aBlock[4] = sub_21C94C;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_119878;
    aBlock[3] = &block_descriptor_20_1;
    v24 = _Block_copy(aBlock);
    v25 = v22;
    v26 = a3;

    [v12 setBackgroundArtworkCatalogBlock:v24];
    _Block_release(v24);
  }
}

id sub_21C600(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = ICStoreArtworkInfoCropStyleFCCrop270;
    v4 = a2;
    v5 = JSArtwork.artworkCatalog(defaultCropStyle:)(v3);

    return v5;
  }

  else
  {
    v7 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_storeItemMetadata;
    swift_beginAccess();
    v9 = *(a3 + v7);
    if (v9)
    {
      v10 = v9;
      v11 = [v10 brickEditorialArtworkRequestToken];
      if (v11)
      {
        v12 = v11;
        v13 = objc_opt_self();
        v14 = v12;
        result = [v13 sharedStoreArtworkDataSource];
        if (result)
        {
          v15 = result;
          v16 = objc_allocWithZone(MPArtworkCatalog);
          v17 = v14;
          v18 = [v16 initWithToken:v17 dataSource:v15];

          return v18;
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_21C778()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSModelSearchLandingItemBuilder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for JSModelSearchLandingItemBuilder.InitializedProperties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
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

uint64_t storeEnumTagSinglePayload for JSModelSearchLandingItemBuilder.InitializedProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t block_copy_helper_75(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21C90C()
{

  return swift_deallocObject();
}

id sub_21C954(void *a1)
{
  v2 = v1;
  v3 = &v1[OBJC_IVAR____TtC16MusicApplication31JSModelSearchLandingItemBuilder_initializedProperties];
  v3[4] = 0;
  *v3 = 2;
  *&v1[OBJC_IVAR____TtC16MusicApplication31JSModelSearchLandingItemBuilder_requestedProperties] = a1;
  v4 = [a1 relationships];
  sub_119B5C();
  v5 = sub_AB8FF0();
  v6 = sub_AB92A0();
  if (*(v5 + 16) && (v8 = sub_2EBF88(v6, v7), (v9 & 1) != 0))
  {
    v10 = *(*(v5 + 56) + 8 * v8);
  }

  else
  {

    v10 = [objc_opt_self() emptyPropertySet];
  }

  type metadata accessor for JSModelMediaContentItemBuilder();
  v11 = swift_allocObject();
  v11[4] = 0;
  v11[2] = v10;
  result = [objc_allocWithZone(MPModelStoreBrowseContentItemBuilder) initWithRequestedPropertySet:v10];
  if (result)
  {
    v11[3] = result;
    *&v2[OBJC_IVAR____TtC16MusicApplication31JSModelSearchLandingItemBuilder_contentItemBuilder] = v11;
    v13.receiver = v2;
    v13.super_class = type metadata accessor for JSModelSearchLandingItemBuilder();
    return objc_msgSendSuper2(&v13, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21CAF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

uint64_t sub_21CB48(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return v2;
}

uint64_t sub_21CBD4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MetricsPageProperties();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_21CC40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

uint64_t sub_21CCC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

uint64_t sub_21CD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_ABA9C0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19[-v13 - 8];
  sub_21D790(a3, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BD0);
  v15 = swift_dynamicCast();
  (*(*(AssociatedTypeWitness - 8) + 56))(v14, v15 ^ 1u, 1, AssociatedTypeWitness);
  v16 = (*(a5 + 64))(a1, a2, v14, a4, a5);
  (*(v12 + 8))(v14, v11);
  return v16;
}

uint64_t sub_21CF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CF70(a1, a2, a3, WitnessTable);
}

uint64_t sub_21CF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v14[-v9 - 8];
  swift_getAssociatedTypeWitness();
  v11 = swift_dynamicCastUnknownClassUnconditional();
  sub_9ACA0(a2, v14);
  swift_dynamicCast();
  (*(a4 + 48))(v11, v10, a3, a4);
  return (*(v8 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_21D12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21D198(a1, a2, a3, WitnessTable);
}

uint64_t sub_21D198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v14[-v9 - 8];
  swift_getAssociatedTypeWitness();
  v11 = swift_dynamicCastUnknownClassUnconditional();
  sub_9ACA0(a2, v14);
  swift_dynamicCast();
  (*(a4 + 56))(v11, v10, a3, a4);
  return (*(v8 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_21D354(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21D3B4(a1, a2, WitnessTable);
}

uint64_t sub_21D3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = &v13[-v8 - 8];
  sub_9ACA0(a1, v13);
  swift_dynamicCast();
  v10 = (*(a3 + 72))(v9, a2, a3);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return v10;
}

uint64_t sub_21D53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CD14(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_21D5B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21D618(a1, a2, WitnessTable);
}

uint64_t sub_21D618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = &v12[-v8 - 8];
  sub_9ACA0(a1, v12);
  swift_dynamicCast();
  (*(a3 + 80))(v9, a2, a3);
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}

uint64_t sub_21D790(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D800(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

uint64_t sub_21D874(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

uint64_t sub_21D8C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

uint64_t sub_21D91C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

uint64_t sub_21D970(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

uint64_t sub_21D9C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

uint64_t sub_21DA18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

uint64_t sub_21DA6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

uint64_t sub_21DAC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

uint64_t sub_21DB14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

uint64_t sub_21DB68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

void sub_21DC54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10.receiver = v2;
  v10.super_class = type metadata accessor for JSTVShowEpisodeDetailModelRequest();
  objc_msgSendSuper2(&v10, "copyWithZone:", a1);
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_808B0(a2, v9);
  if (swift_dynamicCast())
  {
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication33JSTVShowEpisodeDetailModelRequest_tvShowEpisodeDetail];
    v6 = *&v8[OBJC_IVAR____TtC16MusicApplication33JSTVShowEpisodeDetailModelRequest_tvShowEpisodeDetail];
    *&v8[OBJC_IVAR____TtC16MusicApplication33JSTVShowEpisodeDetailModelRequest_tvShowEpisodeDetail] = v5;
    v7 = v5;
  }
}

uint64_t sub_21DD78(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_60044();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  v13 = a4;

  v14 = a1;
  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_21ED20, v12);
}

uint64_t sub_21DE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v13 = *(*a1 + 152);

  v14 = a5;
  swift_errorRetain();
  v13(a2, sub_AAED4, v12);
}

void sub_21E0E8(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC16MusicApplication42JSTVShowEpisodeDetailModelRequestOperation_request];
  v2 = *&v1[OBJC_IVAR____TtC16MusicApplication33JSTVShowEpisodeDetailModelRequest_tvShowEpisodeDetail];
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = v2;
  v5 = [v1 itemProperties];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [v1 itemKind];
  if (!v7)
  {

LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  v8 = v7;
  [v7 modelClass];

  swift_getObjCClassMetadata();
  v9 = [swift_getObjCClassFromMetadata() requiredStoreLibraryPersonalizationProperties];
  v10 = [v6 propertySetByCombiningWithPropertySet:v9];

  v11 = objc_allocWithZone(type metadata accessor for JSModelTVShowEpisodeDetailItemBuilder());
  v12 = sub_37E18C(v10);

LABEL_7:
  v13 = [objc_allocWithZone(MPMutableSectionedCollection) init];
  v14 = sub_AB9260();
  [v13 appendSection:v14];

  v15 = [objc_allocWithZone(MPMutableSectionedCollection) init];
  v16 = sub_AB9260();
  [v15 appendSection:v16];

  v17 = JSTVShowEpisodeDetail.item.getter();
  if (!v17)
  {
LABEL_12:
    v22 = [objc_allocWithZone(MPStoreLibraryPersonalizationRequest) initWithUnpersonalizedRequest:v1 unpersonalizedContentDescriptors:v13];
    [v22 setRepresentedObjects:v15];
    v23 = swift_allocObject();
    *(v23 + 16) = v1;
    *(v23 + 24) = a1;
    v27[4] = sub_21EC34;
    v27[5] = v23;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 1107296256;
    v27[2] = sub_151E0;
    v27[3] = &block_descriptor_27_1;
    v24 = _Block_copy(v27);
    v25 = v1;
    v26 = a1;

    [v22 performWithResponseHandler:v24];
    _Block_release(v24);

    return;
  }

  v18 = v17;
  if (!v12)
  {
LABEL_11:

    goto LABEL_12;
  }

  v19 = [a1 userIdentity];
  if (v19)
  {
    v20 = v19;
    v21 = sub_37D5B4(v18, v19);

    [v15 appendItem:v18];
    [v13 appendItem:v21];

    v18 = v21;
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
}

void sub_21E414(void *a1, uint64_t a2, void *a3, char *a4)
{
  if (a1 && (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) != 0))
  {
    v8 = v7;
    objc_allocWithZone(type metadata accessor for JSTVShowEpisodeDetailModelResponse());
    v9 = a1;
    v13 = sub_21E670(a3, v8);
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplication42JSTVShowEpisodeDetailModelRequestOperation_responseHandler];
    v11 = v13;
    v12 = v13;
  }

  else
  {
    v12 = 0;
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplication42JSTVShowEpisodeDetailModelRequestOperation_responseHandler];
  }

  v14 = v12;
  v10();

  [a4 finish];
}

char *sub_21E670(char *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC16MusicApplication34JSTVShowEpisodeDetailModelResponse_itemDidChangeNotificationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication34JSTVShowEpisodeDetailModelResponse_personalizationResponseInvalidationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication34JSTVShowEpisodeDetailModelResponse_personalizationResponse] = a2;
  v4 = a2;
  v5 = [v4 representedObjectResults];
  if (!v5)
  {
    v5 = [objc_allocWithZone(MPSectionedCollection) init];
  }

  *&v2[OBJC_IVAR____TtC16MusicApplication34JSTVShowEpisodeDetailModelResponse_jsResults] = v5;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for JSTVShowEpisodeDetailModelResponse();
  result = objc_msgSendSuper2(&v22, "initWithRequest:", a1);
  if (result)
  {
    v7 = result;
    v8 = v4;
    v9 = v7;
    v10 = [v8 results];
    [v9 setResults:v10];

    v21 = a1;
    v11 = *&a1[OBJC_IVAR____TtC16MusicApplication33JSTVShowEpisodeDetailModelRequest_tvShowEpisodeDetail];
    v12 = v11;
    v13 = *JSTVShowEpisodeDetail.itemsDidChangeNotification.unsafeMutableAddressor();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v15 = v9;
    v16 = v12;
    *&v15[OBJC_IVAR____TtC16MusicApplication34JSTVShowEpisodeDetailModelResponse_itemDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v13, v11, 1, 1, sub_AAF10, v14);

    v17 = MPModelResponseDidInvalidateNotification;
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = v8;
    v20 = v17;

    swift_allocObject();
    *&v15[OBJC_IVAR____TtC16MusicApplication34JSTVShowEpisodeDetailModelResponse_personalizationResponseInvalidationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v20, v8, 1, 1, sub_AADB4, v18);

    LOBYTE(v18) = [v19 isValid];

    if ((v18 & 1) == 0)
    {
      [v15 _invalidate];
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21EA9C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_21EB64()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t block_copy_helper_76(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21EBB4()
{

  return swift_deallocObject();
}

uint64_t sub_21EBF4()
{

  return swift_deallocObject();
}

uint64_t sub_21EC3C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21EC74()
{

  return swift_deallocObject();
}

uint64_t sub_21ECC8()
{

  return swift_deallocObject();
}

uint64_t sub_21ED30()
{

  return swift_deallocObject();
}

void sub_21ED84(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  v4 = *(a2 + OBJC_IVAR____TtC16MusicApplication25JSModelMenuSectionBuilder_initializedProperties);
  if (v4 == 2)
  {
    __break(1u);
  }

  else if (v4)
  {
    v5 = v3;
    swift_beginAccess();

    v6 = sub_AB9260();

    [v5 setTitle:v6];
  }
}

id sub_21EE90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSModelMenuSectionBuilder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_21F090()
{
  v28.receiver = v0;
  v28.super_class = type metadata accessor for JSGroupedTextListViewController();
  objc_msgSendSuper2(&v28, "viewDidLoad");
  result = [v0 view];
  if (result)
  {
    v2 = result;
    if (qword_DE6C58 != -1)
    {
      swift_once();
    }

    [v2 setBackgroundColor:qword_E71898];
    v3 = OBJC_IVAR____TtC16MusicApplication31JSGroupedTextListViewController_textListView;
    v4 = *&v0[OBJC_IVAR____TtC16MusicApplication31JSGroupedTextListViewController_viewModel];
    v5 = *&stru_108.sectname[swift_isaMask & *v4];
    v6 = *&v0[OBJC_IVAR____TtC16MusicApplication31JSGroupedTextListViewController_textListView];
    v7 = v5();
    v8 = &v6[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_title];
    v9 = *&v6[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_title];
    v10 = *&v6[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_title + 8];
    *v8 = v7;
    v8[1] = v11;
    sub_3EE46C(v9, v10);

    v12 = *&v0[v3];
    v13 = v0[OBJC_IVAR____TtC16MusicApplication31JSGroupedTextListViewController_verticalStackItemPrefersTopHairline];
    v14 = v12[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_wantsTopSeparator];
    v12[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_wantsTopSeparator] = v13;
    if (v13 != v14)
    {
      v15 = v12;
      [v15 setNeedsLayout];
      v16 = *&v15[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_layoutInvalidationHandler];
      if (v16)
      {

        v16(v15);
        sub_17654(v16);
      }
    }

    v17 = *&v0[v3];
    *&v17[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_listGroups] = sub_21FA38(v4);

    sub_3EFDE4();
    [v17 setNeedsLayout];
    v18 = *&v17[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_layoutInvalidationHandler];
    if (v18)
    {

      v18(v17);
      sub_17654(v18);
    }

    v19 = *&v0[v3];
    v20 = *&v0[OBJC_IVAR____TtC16MusicApplication31JSGroupedTextListViewController_textDrawingCache];
    v21 = OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_textDrawingCache;
    swift_beginAccess();
    *&v19[v21] = v20;
    swift_retain_n();
    v22 = v19;

    sub_3EF5F0();

    [v2 addSubview:*&v0[v3]];
    v23 = *&v0[v3];
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = &v23[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_layoutInvalidationHandler];
    v26 = *&v23[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_layoutInvalidationHandler];
    *v25 = sub_21FC7C;
    v25[1] = v24;
    v27 = v23;

    sub_17654(v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}