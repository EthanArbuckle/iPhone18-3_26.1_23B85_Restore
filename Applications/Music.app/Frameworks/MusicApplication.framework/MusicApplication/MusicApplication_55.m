void sub_4AFD04()
{
  v0 = sub_AB3820();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v24[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v24[-v5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (!v9)
    {

      return;
    }

    v10 = v9;
    v11 = v8;
    [v11 loadViewIfNeeded];
    v12 = *&v11[qword_DFE2F8];
    if (!v12)
    {
      __break(1u);
      return;
    }

    v13 = [v12 indexPathForCell:v10];
    if (!v13)
    {

      return;
    }

    v14 = v13;
    sub_AB3790();

    (*(v1 + 32))(v6, v4, v0);
    v15 = *&v11[qword_DFE2F0];
    v16 = v15;

    if (v15)
    {
      type metadata accessor for JSGridModelResponse();
      v17 = swift_dynamicCastClass();
      if (!v17)
      {

LABEL_19:
        (*(v1 + 8))(v6, v0);
        return;
      }

      v18 = *(v17 + OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults);

      isa = sub_AB3770().super.isa;
      v20 = [v18 itemAtIndexPath:isa];

      if (v20)
      {
        type metadata accessor for JSGridItem();
        if (swift_dynamicCastClass())
        {
          v21 = [v10 window];
          if (v21)
          {
            v22 = v21;
            v23 = [v21 windowScene];

            if (v23)
            {
              sub_4154DC(v23);

              (*(v1 + 8))(v6, v0);
              swift_unknownObjectRelease();

              return;
            }
          }

          (*(v1 + 8))(v6, v0);
          swift_unknownObjectRelease();
          goto LABEL_15;
        }

        swift_unknownObjectRelease();
        goto LABEL_19;
      }
    }

    (*(v1 + 8))(v6, v0);
LABEL_15:
  }
}

void sub_4B0058(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(Strong + qword_DFE2F0);
    if (v13 && (type metadata accessor for JSGridModelResponse(), (v14 = swift_dynamicCastClass()) != 0))
    {
      v34 = a3;
      v15 = *(v14 + OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults);
      v33 = v13;
      isa = sub_AB3770().super.isa;
      v17 = [v15 itemAtIndexPath:isa];

      type metadata accessor for JSGridItem();
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        memset(v43, 0, sizeof(v43));
        v44 = 0;
        v45 = xmmword_AF7710;
        v31 = v18;
        v19 = v12;
        v32 = v19;
        PresentationSource.init(viewController:position:)(v19, v43, v40);
        v39 = 0;
        memset(v38, 0, sizeof(v38));
        v20 = [v34 contentItem];
        v21 = [v20 innerObject];

        swift_beginAccess();
        v22 = swift_unknownObjectWeakLoadStrong();
        __chkstk_darwin(v22);
        *(&v30 - 2) = v19;
        *(&v30 - 1) = a2;
        v23 = v31;
        sub_2641C4(v21, v22, sub_4BE20C, (&v30 - 4), v10);

        sub_15F84(v40, v36, &unk_DEA520);
        sub_15F84(v38, (v7 + 104), &unk_DE8E30);
        sub_15F84(v10, &v7[*(v5 + 28)], &unk_DEA510);
        *v7 = 0u;
        *(v7 + 1) = 0u;
        *(v7 + 2) = 0u;
        *(v7 + 3) = 0u;
        *(v7 + 8) = 1;
        *(v7 + 9) = 0;
        *(v7 + 10) = 0;
        *(v7 + 11) = 0;
        v24 = v34;
        v25 = v34;
        sub_160B4(v36, v7, &unk_DEA520);
        *(v7 + 12) = v24;
        v35[3] = v5;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v35);
        sub_4BE210(v7, boxed_opaque_existential_0, _s23MusicPerformanceContextVMa);
        sub_12E1C(v10, &unk_DEA510);
        sub_12E1C(v38, &unk_DE8E30);
        sub_12E1C(v40, &unk_DEA520);
        memset(v37, 0, 32);
        v36[1] = 0;
        v36[2] = 0;
        v36[0] = v23;
        sub_160B4(v35, v37, &unk_DE8E40);
        v27 = objc_allocWithZone(type metadata accessor for JSImplicitDefaultSegue());
        memset(v40, 0, sizeof(v40));
        v41 = 0;
        v42 = 3;
        *&v27[OBJC_IVAR____TtC11MusicJSCore7JSSegue_playbackIntent] = 0;
        v28 = JSObject.init(type:)(v40);
        v29 = *JSSegueCoordinator.shared.unsafeMutableAddressor();
        JSSegueCoordinator.perform(segue:with:)(v28, v36);

        sub_16170(v36);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

void sub_4B04C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + qword_DFE2F0);
    if (v12 && (type metadata accessor for JSGridModelResponse(), (v13 = swift_dynamicCastClass()) != 0))
    {
      v14 = *(v13 + OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults);
      v29 = v12;
      isa = sub_AB3770().super.isa;
      v16 = [v14 itemAtIndexPath:isa];

      type metadata accessor for JSGridItem();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v18 = v17;
        memset(v38, 0, sizeof(v38));
        v39 = 0;
        v40 = xmmword_AF7710;
        v28 = v11;
        PresentationSource.init(viewController:position:)(v28, v38, v35);
        v34 = 0;
        memset(v33, 0, sizeof(v33));
        v19 = [a3 contentItem];
        v20 = [v19 innerObject];

        swift_beginAccess();
        v21 = swift_unknownObjectWeakLoadStrong();
        sub_2641C4(v20, v21, static MPMediaLibraryFilteringOptions.none.getter, 0, v9);

        sub_15F84(v35, v31, &unk_DEA520);
        sub_15F84(v33, (v6 + 104), &unk_DE8E30);
        sub_15F84(v9, &v6[*(v4 + 28)], &unk_DEA510);
        *v6 = 0u;
        *(v6 + 1) = 0u;
        *(v6 + 2) = 0u;
        *(v6 + 3) = 0u;
        *(v6 + 8) = 1;
        *(v6 + 9) = 0;
        *(v6 + 10) = 0;
        *(v6 + 11) = 0;
        v22 = a3;
        sub_160B4(v31, v6, &unk_DEA520);
        *(v6 + 12) = a3;
        v30[3] = v4;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v30);
        sub_4BE210(v6, boxed_opaque_existential_0, _s23MusicPerformanceContextVMa);
        sub_12E1C(v9, &unk_DEA510);
        sub_12E1C(v33, &unk_DE8E30);
        sub_12E1C(v35, &unk_DEA520);
        memset(v32, 0, 32);
        v31[1] = 0;
        v31[2] = 0;
        v31[0] = v18;
        sub_160B4(v30, v32, &unk_DE8E40);
        v24 = objc_allocWithZone(type metadata accessor for JSImplicitDefaultSegue());
        memset(v35, 0, sizeof(v35));
        v36 = 0;
        v37 = 3;
        *&v24[OBJC_IVAR____TtC11MusicJSCore7JSSegue_playbackIntent] = 0;
        v25 = JSObject.init(type:)(v35);
        v26 = *JSSegueCoordinator.shared.unsafeMutableAddressor();
        JSSegueCoordinator.perform(segue:with:)(v25, v31);

        sub_16170(v31);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

void sub_4B08F0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if ((*(&stru_428.reserved2 + (swift_isaMask & *a2)))())
    {
      (*(v8 + 16))(&aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v7);
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v13 + 24) = a3;
      (*(v8 + 32))(v13 + v12, &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      aBlock[4] = sub_4BE344;
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_153;
      v14 = _Block_copy(aBlock);
      v15 = v11;
      v16 = a3;

      [v15 dismissViewControllerAnimated:1 completion:v14];
      _Block_release(v14);
    }

    else
    {
      sub_4B3468(a3, a4);
    }
  }
}

void sub_4B0B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(a1 + 24);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      swift_unknownObjectRelease();
      return;
    }

    v7 = Strong;
    ObjectType = swift_getObjectType();
    v9 = (*(v5 + 16))(ObjectType, v5);
    if (v9)
    {
      v10 = v9;
      v9();
      sub_17654(v10);
    }

    v11 = *((*(v5 + 8))(ObjectType, v5) + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 48);
    if (v11 == 255 || (v11 & 1) != 0)
    {
      swift_unknownObjectRelease();
    }

    else
    {

      v12 = *&v7[qword_E0A7A0];
      if (!v12)
      {
        swift_unknownObjectRelease();

        return;
      }

      v13 = *(*v12 + 184);

      v13(a3);
      swift_unknownObjectRelease();
    }
  }
}

id sub_4B0CD4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_4A8714(v11, v10);
  v15 = v14;

  (*(v8 + 8))(v10, v7);

  return v15;
}

uint64_t sub_4B0DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + qword_E0A860) == a2 && *(v4 + qword_E0A860 + 8) == a3;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
    type metadata accessor for SocialProfilesAccessoryView();
    static UICollectionReusableView.reuseIdentifier.getter();
    v8 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();

    [v8 setUserInteractionEnabled:0];
    return v8;
  }

  else
  {

    return sub_3DE1D8(a1, a4);
  }
}

id sub_4B0EF0(char *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB92A0();
  v15 = v14;
  sub_AB3790();
  v16 = v13 == *&a1[qword_E0A860] && v15 == *&a1[qword_E0A860 + 8];
  if (v16 || (sub_ABB3C0() & 1) != 0)
  {
    type metadata accessor for SocialProfilesAccessoryView();
    v28 = a3;
    v29 = v9;
    v17 = a4;
    v18 = a5;
    v19 = a1;
    static UICollectionReusableView.reuseIdentifier.getter();
    v20 = v28;
    v21 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();
    v22 = v19;

    v23 = v21;
    [v23 setUserInteractionEnabled:0];
    (*(v10 + 8))(v12, v29);

    v24 = v23;
  }

  else
  {
    v22 = a3;
    v25 = a4;
    v26 = a5;
    v23 = a1;
    v24 = sub_3DE1D8(v22, v12);
    (*(v10 + 8))(v12, v9);
  }

  return v24;
}

void sub_4B1128(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v6 - 8);
  v8 = &v44 - v7;
  v9 = type metadata accessor for PlaybackIntentDescriptor(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3B41F4(a1, a2);
  v13 = *&v2[qword_DFE2F0];
  if (!v13)
  {
    return;
  }

  type metadata accessor for JSGridModelResponse();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    return;
  }

  v47 = v10;
  v15 = v14;
  v16 = *(v14 + OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults);
  v49 = v13;
  isa = sub_AB3770().super.isa;
  v18 = [v16 itemAtIndexPath:isa];

  type metadata accessor for JSGridItem();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {

LABEL_14:

    swift_unknownObjectRelease();
    return;
  }

  v46 = v19;
  v48 = v18;
  v20 = [v15 results];
  if (!v20)
  {
    __break(1u);
    goto LABEL_32;
  }

  v21 = v20;
  v22 = sub_AB3770().super.isa;
  [v21 itemAtIndexPath:v22];

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (!v23)
  {

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v24 = v23;
  v25 = [v3 traitCollection];
  v26 = UITraitCollection.mediaPickerConfiguration.getter();

  if (v26)
  {
    v45 = v24;
    v27 = *&v3[qword_DFE298];
    if (v27)
    {

      v28 = [v26 selectionMode];
      v29 = [v45 pickableObjectFor:v28];
      if (v29)
      {
        v30 = v29;
        v31 = [v29 musicTypeIdentifier];
        if (v31)
        {
          v32 = v31;

          v33 = [v45 contentItem];
          v34 = [v33 innerObject];

          sub_2641C4(v34, v3, static MPMediaLibraryFilteringOptions.none.getter, 0, v8);
          if ((*(v47 + 48))(v8, 1, v9) == 1)
          {

            sub_12E1C(v8, &unk_DEA510);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            return;
          }

          v36 = v26;
          sub_4BE210(v8, v12, type metadata accessor for PlaybackIntentDescriptor);
          [v3 loadViewIfNeeded];
          v37 = *&v3[qword_DFE2F8];
          if (v37)
          {
            v38 = v37;
            v39 = sub_AB3770().super.isa;
            v40 = [v38 cellForItemAtIndexPath:v39];

            if (v40)
            {
              swift_getObjectType();
              v41 = swift_conformsToProtocol2();
              if (v41)
              {
                v42 = v41;
LABEL_29:
                sub_3B8FA0(v12, v45, v40, v42);
                v43 = sub_AB3770().super.isa;
                [a1 deselectItemAtIndexPath:v43 animated:1];

                sub_4BE48C(v12, type metadata accessor for PlaybackIntentDescriptor);
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
                return;
              }

              v40 = 0;
            }

            v42 = 0;
            goto LABEL_29;
          }

LABEL_32:
          __break(1u);
          return;
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  sub_4B3468(a1, a2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v35 = v49;
}

void sub_4B16E4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_4B1128(v11, v10);

  (*(v8 + 8))(v10, v7);
}

void sub_4B17F4(uint64_t a1, void *a2, uint64_t a3)
{
  sub_3B38B0(a1, a2, a3);
  sub_4B8D60();
  v6 = *(v3 + qword_E0A7A0);
  if (v6)
  {
    v7 = *(*v6 + 176);

    v7(a3);
  }

  type metadata accessor for ShowcaseCell();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton);
    *(v8 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton) = 0;
    v10 = a2;
    sub_203DB8(v9);
  }
}

void sub_4B18F4(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
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
  sub_4B17F4(v13, v14, v12);

  (*(v10 + 8))(v12, v9);
}

void sub_4B1A24(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
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
  sub_4BDAF8(v14, v12);

  (*(v10 + 8))(v12, v9);
}

void sub_4B1B44(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v10 = sub_AB3820();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_AB92A0();
  v16 = v15;
  sub_AB3790();
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a1;
  sub_4B3EE8(a4, v14, v16);
  (*(v11 + 8))(v13, v10);
}

void sub_4B1CC0(void *a1, uint64_t a2, void *a3, void *a4, void (*a5)(id, char *))
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a1;
  a5(v13, v12);

  (*(v10 + 8))(v12, v9);
}

double sub_4B1DD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a5;
  v12 = a1;
  sub_4B4D00();
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  v15 = CGSize.nonNegative()(v14);

  return v15;
}

double sub_4B1EF8(void *a1, uint64_t a2, void *a3, void *a4, unint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  sub_4BE8F4(a5);
  v12 = v11;

  return v12;
}

void sub_4B1F74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1;
  if (sub_4B83D0(a5))
  {
  }

  else
  {
    v7 = [v6 view];
    if (v7)
    {
      v8 = v7;
      [v7 music_inheritedLayoutInsets];
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_4B2028(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  sub_4BED84(a5);
  v12 = v11;

  return v12;
}

unint64_t sub_4B209C()
{
  result = JSGrid.sections.getter();
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_3;
    }

LABEL_13:

    goto LABEL_14;
  }

  v7 = result;
  v8 = sub_ABB060();
  result = v7;
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = sub_35FC8C(0, result);
    goto LABEL_6;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    v1 = *(result + 32);
LABEL_6:
    v2 = v1;

    v3 = OBJC_IVAR____TtC11MusicJSCore13JSGridSection_uniformCellType;
    swift_beginAccess();
    v4 = v2[v3];

    if (v4 <= 3)
    {
      goto LABEL_11;
    }

    if (v4 <= 5)
    {
      if (v4 == 4)
      {

        v5 = 0;
        return v5 & 1;
      }

LABEL_11:
      v6 = sub_ABB3C0();

      v5 = v6 ^ 1;
      return v5 & 1;
    }

    if (v4 == 6)
    {
      goto LABEL_11;
    }

LABEL_14:
    v5 = 1;
    return v5 & 1;
  }

  __break(1u);
  return result;
}

void sub_4B227C()
{
  v1 = *(v0 + qword_DFE2F0);
  if (v1)
  {
    type metadata accessor for JSGridModelResponse();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2;
      v4 = v1;
      v5 = [v3 results];
      if (v5)
      {
        v6 = v5;
        if ([v5 firstSection])
        {
          objc_opt_self();
          v7 = swift_dynamicCastObjCClass();
          if (!v7)
          {

            goto LABEL_16;
          }

          if ([v7 uniformCellType] == &dword_4 + 1)
          {
            v8 = [v3 results];

            if (!v8)
            {
              __break(1u);
              return;
            }

            v9 = [v8 totalItemCount];

            if (v9 >= 1)
            {
              v10 = swift_allocObject();
              *(v10 + 16) = 1;
              v11 = sub_4B8148(0, sub_4BE58C, v10);

              if (v11)
              {

                swift_unknownObjectRelease();
              }

              else
              {
                v12 = swift_allocObject();
                *(v12 + 16) = &off_CEFF78;
                sub_4B8148(0, sub_4BF00C, v12);

                swift_unknownObjectRelease();
              }

              return;
            }

LABEL_16:
            swift_unknownObjectRelease();
            return;
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }
  }
}

void *sub_4B24AC(void *a1, double a2)
{
  if (*&v2[qword_DFE2F0])
  {
    return 0;
  }

  if ([a1 horizontalSizeClass] == &dword_0 + 1)
  {
    if (v2[qword_E0A770])
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 4;
  }

  sub_18A8A8(a1, v6, 0, 1);
  v7 = v2;
  v8 = JSGrid.sections.getter();
  if (!(v8 >> 62))
  {
    if (*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_10;
    }

LABEL_35:

    goto LABEL_36;
  }

  v29 = v8;
  v30 = sub_ABB060();
  v8 = v29;
  if (!v30)
  {
    goto LABEL_35;
  }

LABEL_10:
  v9 = v7;
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = sub_35FC8C(0, v8);
  }

  else
  {
    if (!*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_41;
    }

    v10 = *(v8 + 32);
  }

  v11 = v10;

  v12 = OBJC_IVAR____TtC11MusicJSCore13JSGridSection_uniformCellType;
  swift_beginAccess();
  v13 = v11[v12];

  if (v13 <= 3)
  {
    if (v13 <= 1)
    {
      if (v13)
      {
        sub_4B785C();
        return *&a2;
      }

LABEL_23:
      sub_4B72AC();
      return *&a2;
    }

    if (v13 == 2)
    {
      goto LABEL_23;
    }

    v14 = &v7[qword_E0A800];
    if ((v9[qword_E0A800 + 16] & 1) == 0)
    {
      return *&a2;
    }

    sub_4B459C();
    v16 = v27;
    v17 = [v9 traitCollection];
    [v17 displayScale];
    sub_AB3A00();
    v19 = v28;
LABEL_31:

    *v14 = v16;
    *(v14 + 1) = v19;
    v14[16] = 0;
    return *&a2;
  }

  if (v13 > 5)
  {
    if (v13 == 6)
    {
      sub_4B7D64();
      return *&a2;
    }

LABEL_36:
    _s16MusicApplication9AlbumCellC20detailTextComponents33_697C9E9A5E5CEA31E6831E8C6D513A7BLLAC06DetailfG0AELLVvpfi_0();
    v32 = v31;

    sub_2F48A4(v32, a1, 0, 0);

    if (qword_DE6948 == -1)
    {
LABEL_37:
      [a1 displayScale];
      sub_AB3A00();

      return *&a2;
    }

LABEL_41:
    swift_once();
    goto LABEL_37;
  }

  if (v13 == 4)
  {
    v14 = &v7[qword_E0A810];
    if ((v9[qword_E0A810 + 16] & 1) == 0)
    {
      return *&a2;
    }

    [v9 loadViewIfNeeded];
    result = *&v9[qword_DFE2F8];
    if (result)
    {
      [result bounds];
      v16 = v15;
      v17 = [v9 traitCollection];
      sub_BCDCC(v17, v16);
      v19 = v18;
      goto LABEL_31;
    }

    __break(1u);
  }

  else
  {
    v20 = &v7[qword_E0A818];
    if ((v7[qword_E0A818 + 16] & 1) == 0)
    {
      return *&a2;
    }

    sub_4B4800();
    v22 = v21;
    [v7 loadViewIfNeeded];
    result = *&v7[qword_DFE2F8];
    if (result)
    {
      [result bounds];
      v23 = [v7 traitCollection];
      v24 = sub_234C6C(v23, v22);
      v26 = v25;

      *v20 = v24;
      *(v20 + 1) = v26;
      v20[16] = 0;
      return *&a2;
    }
  }

  __break(1u);
  return result;
}

void *sub_4B28CC()
{
  v1 = qword_E0A780;
  if (*&v0[qword_E0A780])
  {
    v2 = *&v0[qword_E0A780];
LABEL_5:

    return v2;
  }

  result = [v0 loadViewIfNeeded];
  v4 = *&v0[qword_DFE2F8];
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0B398);
    swift_allocObject();
    v2 = sub_2BEB90(v0, v4, 0, 1);
    *&v0[v1] = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double sub_4B2998@<D0>(_OWORD *a1@<X8>)
{
  if (!*(v1 + qword_DFE2F0))
  {
    goto LABEL_12;
  }

  type metadata accessor for JSGridModelResponse();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = *(v3 + OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults);
  isa = sub_AB3770().super.isa;
  v6 = [v4 itemAtIndexPath:isa];

  if (!v6)
  {
    goto LABEL_12;
  }

  type metadata accessor for JSGridItem();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
LABEL_12:
    sub_465CC(&v84);
    goto LABEL_13;
  }

  v8 = v7;
  v9 = (*&stru_3D8.segname[(swift_isaMask & *v7) - 8])();
  if (!v10)
  {
    v9 = (*(&stru_338.offset + (swift_isaMask & *v8)))(v9);
  }

  v11 = v9;
  v12 = v10;
  v47 = IndexPath.safeItem.getter();
  v13 = (*(&stru_B8.offset + (swift_isaMask & *v8)))();
  v46 = sub_27EE14(v13);

  v14 = sub_27EEA4(v8);
  v43 = v15;
  v44 = v14;
  if (!v12)
  {
    v16 = (*(&stru_B8.reserved2 + (swift_isaMask & *v8)))();
    if (v16)
    {
      v17 = v16;
      v18 = [v16 name];
      if (v18)
      {
        v19 = v18;
        v11 = sub_AB92A0();
        v12 = v20;

        goto LABEL_16;
      }
    }

    v11 = 0;
    v12 = 0;
  }

LABEL_16:
  v45 = v11;
  v26 = *(&stru_338.reserved2 + (swift_isaMask & *v8));
  v27 = swift_unknownObjectRetain_n();
  v28 = v26(v27);
  if (v29)
  {
    v30 = v29;
    v48 = v28;
  }

  else
  {
    v48 = (*(&stru_388.flags + (swift_isaMask & *v8)))(v28);
    v30 = v31;
  }

  v42 = v12;
  if (!(*&stru_428.sectname[swift_isaMask & *v8])())
  {
    goto LABEL_22;
  }

  type metadata accessor for JSGridSection();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    type metadata accessor for JSShelfSection();
    v32 = swift_dynamicCastClass();
    if (v32)
    {
      v33 = &OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_title;
      goto LABEL_25;
    }

    swift_unknownObjectRelease();
LABEL_22:
    v34 = swift_unknownObjectRelease();
    goto LABEL_29;
  }

  v33 = &OBJC_IVAR____TtC11MusicJSCore13JSGridSection_title;
LABEL_25:
  v35 = (v32 + *v33);
  swift_beginAccess();
  v37 = *v35;
  v36 = v35[1];

  swift_unknownObjectRelease();
  v34 = swift_unknownObjectRelease();
  v38 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v38 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {
    goto LABEL_30;
  }

LABEL_29:
  v37 = 0;
  v36 = 0;
LABEL_30:
  if (v30)
  {
    v39 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v39 = v48 & 0xFFFFFFFFFFFFLL;
    }

    if (v39)
    {
      v40 = v48;
    }

    else
    {

      v40 = 0;
      v30 = 0;
    }
  }

  else
  {
    v40 = 0;
  }

  v41 = (*&stru_1A8.sectname[swift_isaMask & *v8])(v34);
  swift_unknownObjectRelease();

  *&v49 = v44;
  *(&v49 + 1) = v43;
  *&v50 = v45;
  *(&v50 + 1) = v42;
  *&v51 = v8;
  *(&v51 + 1) = v47;
  LOBYTE(v52) = v41 != 0;
  BYTE1(v52) = 2;
  BYTE2(v52) = v46;
  *(&v52 + 1) = 0;
  *&v53 = 0;
  *(&v53 + 1) = v8;
  *&v54 = v37;
  *(&v54 + 1) = v36;
  *&v55 = v40;
  v56 = 0uLL;
  *(&v55 + 1) = v30;
  v57[0] = 1;
  *&v57[8] = 0;
  *&v57[16] = 0;
  v57[24] = 2;
  v58[0] = v44;
  v58[1] = v43;
  v58[2] = v45;
  v58[3] = v42;
  v58[4] = v8;
  v58[5] = v47;
  v59 = v41 != 0;
  v60 = 2;
  v61 = v46;
  v62 = 0;
  v63 = 0;
  v64 = v8;
  v65 = v37;
  v66 = v36;
  v67 = v40;
  v68 = v30;
  v69 = 0;
  v70 = 0;
  v71 = 1;
  v72 = 0;
  v73 = 0;
  v74 = 2;
  sub_465F4(&v49, &v84);
  sub_46650(v58);
  v81 = v55;
  v82 = v56;
  v83[0] = *v57;
  *(v83 + 9) = *&v57[9];
  v77 = v51;
  v78 = v52;
  v79 = v53;
  v80 = v54;
  v75 = v49;
  v76 = v50;
  UIScreen.Dimensions.size.getter(*&v49);
  v90 = v81;
  v91 = v82;
  v92[0] = v83[0];
  *(v92 + 9) = *(v83 + 9);
  v86 = v77;
  v87 = v78;
  v88 = v79;
  v89 = v80;
  v84 = v75;
  v85 = v76;
LABEL_13:
  v21 = v91;
  a1[6] = v90;
  a1[7] = v21;
  a1[8] = v92[0];
  *(a1 + 137) = *(v92 + 9);
  v22 = v87;
  a1[2] = v86;
  a1[3] = v22;
  v23 = v89;
  a1[4] = v88;
  a1[5] = v23;
  result = *&v84;
  v25 = v85;
  *a1 = v84;
  a1[1] = v25;
  return result;
}

void sub_4B2F58(double a1, double a2)
{
  v3 = &v2[qword_E0A798];
  v4 = *&v2[qword_E0A798];
  v5 = *&v2[qword_E0A798 + 8];
  *v3 = a1;
  v3[1] = a2;
  if (v4 != a1 || v5 != a2)
  {
    v7 = [v2 parentViewController];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for JSSplitWidgetViewController();
      v9 = swift_dynamicCastClass();

      if (v9)
      {
        [v2 loadViewIfNeeded];
        v10 = *&v2[qword_DFE2F8];
        if (v10)
        {
          v12 = [v10 collectionViewLayout];
          objc_opt_self();
          v11 = swift_dynamicCastObjCClass();
          if (v11)
          {
            sub_4B8734(v11, 1);
          }
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

id sub_4B306C()
{
  v1 = qword_E0A828;
  v2 = v0[qword_E0A828];
  if (v2 != 2)
  {
    return (v2 & 1);
  }

  v3 = [v0 traitCollection];
  if ([v3 horizontalSizeClass])
  {
    LOBYTE(v2) = [v3 horizontalSizeClass] == &dword_0 + 1;
  }

  else
  {
    result = [v0 view];
    if (!result)
    {
      goto LABEL_17;
    }

    v5 = result;
    [result bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v26.origin.x = v7;
    v26.origin.y = v9;
    v26.size.width = v11;
    v26.size.height = v13;
    LOBYTE(v2) = CGRectGetWidth(v26) < 650.0;
  }

  v14 = *&v0[qword_E0A790];
  v15 = OBJC_IVAR____TtC11MusicJSCore6JSGrid_adaptiveLayoutStyle;
  swift_beginAccess();
  if (*(v14 + v15) == 1)
  {
  }

  else
  {
    v16 = sub_ABB3C0();

    LOBYTE(v2) = v16 & v2;
  }

  v25 = 1;
  v17 = *&v0[qword_DFE2F0];
  if (!v17)
  {
    v19 = 0;
    goto LABEL_14;
  }

  v18 = v17;
  v19 = [v18 results];

  if (!v19)
  {
LABEL_14:
    v0[v1] = v2 & 1;

    sub_17654(v19);
    return (v2 & 1);
  }

  v20 = swift_allocObject();
  v20[2] = &v25;
  v20[3] = v0;
  v20[4] = &off_CEFB10;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_4BE534;
  *(v21 + 24) = v20;
  v24[4] = sub_3E12F8;
  v24[5] = v21;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1107296256;
  v24[2] = sub_1B7EB0;
  v24[3] = &block_descriptor_236_0;
  v22 = _Block_copy(v24);
  v23 = v0;

  [v19 enumerateSectionsUsingBlock:v22];
  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if ((v22 & 1) == 0)
  {
    LOBYTE(v2) = v25 & v2;
    v19 = sub_4BE534;
    goto LABEL_14;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_4B33C0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  if (*a4 == 1)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a6;

    v10 = sub_4B8148(a2, sub_4BE578, v9);
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10 & 1;
}

void sub_4B3468(void *a1, uint64_t a2)
{
  v3 = v2;
  v94 = a1;
  v5 = sub_AB3430();
  v91 = *(v5 - 8);
  __chkstk_darwin(v5);
  v90 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_AB3820();
  v95 = *(v92 - 8);
  __chkstk_darwin(v92);
  v88 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v8);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v79 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v15 = __chkstk_darwin(v14 - 8);
  v89 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v93 = &v79 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v18 - 8);
  v20 = &v79 - v19;
  v21 = *&v2[qword_DFE2F0];
  if (!v21)
  {
    return;
  }

  type metadata accessor for JSGridModelResponse();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    return;
  }

  v23 = v22;
  v81 = v5;
  v87 = v20;
  v85 = v8;
  v24 = *(v22 + OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults);
  v25 = v21;
  isa = sub_AB3770().super.isa;
  v27 = [v24 itemAtIndexPath:isa];

  type metadata accessor for JSGridItem();
  v86 = swift_dynamicCastClass();
  if (v86)
  {
    v83 = v25;
    v84 = v27;
    v28 = [v23 results];
    if (!v28)
    {
      __break(1u);
      return;
    }

    v29 = v28;
    v30 = sub_AB3770().super.isa;
    v31 = [v29 itemAtIndexPath:v30];

    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    if (!v32)
    {
      swift_unknownObjectRelease();
      v32 = 0;
    }

    v33 = v87;
    v34 = v32;
    v35 = [v32 contentItem];
    v36 = [v35 innerObject];

    __chkstk_darwin(v37);
    *(&v79 - 2) = v3;
    *(&v79 - 1) = a2;
    sub_2641C4(v36, v3, sub_4BEFE8, (&v79 - 2), v33);

    v82 = JSSegueCoordinator.shared.unsafeMutableAddressor();
    v38 = sub_AB3770().super.isa;
    v39 = [v94 cellForItemAtIndexPath:v38];

    if (v39)
    {
      sub_D5958(v101);
      v79 = v101[1];
      v80 = v101[0];
      v40 = v102;
      v41 = v103;
      v42 = v104;

      v44 = v79;
      v43 = v80;
    }

    else
    {
      v40 = 0;
      v42 = 0;
      v43 = 0uLL;
      v41 = 255;
      v44 = 0uLL;
    }

    v105[0] = v43;
    v105[1] = v44;
    v106 = v40;
    v107 = v41;
    v108 = v42;
    PresentationSource.init(viewController:position:)(v3, v105, v100);
    v45 = _s30CollectionViewSelectionHandlerVMa();
    v99[3] = v45;
    v99[4] = &off_CF7E60;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v99);
    v47 = *(v95 + 16);
    v48 = a2;
    v49 = v92;
    v47(boxed_opaque_existential_0 + *(v45 + 20), v48, v92);
    swift_unknownObjectWeakInit();
    sub_15F84(v99, &v96, &unk_DE8E30);
    v50 = *(&v97 + 1);
    v94 = v34;
    if (v50)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
      v51 = swift_dynamicCast();
      v52 = *(v45 - 8);
      (*(v52 + 56))(v13, v51 ^ 1u, 1, v45);
      if ((*(v52 + 48))(v13, 1, v45) != 1)
      {
        v47(v93, &v13[*(v45 + 20)], v49);
        sub_4BE48C(v13, _s30CollectionViewSelectionHandlerVMa);
        v53 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      sub_12E1C(&v96, &unk_DE8E30);
      (*(*(v45 - 8) + 56))(v13, 1, 1, v45);
    }

    sub_12E1C(v13, &qword_E037A0);
    v53 = 1;
LABEL_18:
    v54 = v95;
    v55 = v93;
    (*(v95 + 56))(v93, v53, 1, v49);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v57 = Strong, sub_12B2FC(), v59 = v58, v61 = v60, v57, v59))
    {
      ObjectType = swift_getObjectType();
      (*(v61 + 8))(ObjectType, v61);
      v64 = v63;
      swift_unknownObjectRelease();
      v65 = v89;
      sub_15F84(v55, v89, &unk_DE8E20);
      if ((*(v54 + 48))(v65, 1, v49) == 1)
      {
        sub_12E1C(v65, &unk_DE8E20);
        v96 = 0u;
        v97 = 0u;
        v98 = 0;
      }

      else
      {
        (*(v54 + 32))(v88, v65, v49);
        sub_4BDE90(&qword_DFAA90, &type metadata accessor for IndexPath);
        sub_ABAD10();
      }

      v67 = swift_getObjectType();
      v68 = v90;
      sub_3B8F68();
      v66 = sub_21CCAC(1, v68, &v96, v67, v64);
      (*(v91 + 8))(v68, v81);
      sub_12E1C(&v96, &qword_DF2BD0);
      sub_12E1C(v55, &unk_DE8E20);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_12E1C(v55, &unk_DE8E20);
      v66 = 0;
    }

    v69 = swift_unknownObjectWeakLoadStrong();
    if (v69)
    {
      v70 = v69;
      sub_12AFE8();
      v72 = v71;
    }

    else
    {
      v72 = 0;
    }

    sub_15F28(v100, &v96);
    sub_15F84(v99, (v10 + 104), &unk_DE8E30);
    v73 = v85;
    v74 = v87;
    sub_15F84(v87, &v10[*(v85 + 28)], &unk_DEA510);
    *v10 = 0u;
    *(v10 + 1) = 0u;
    *(v10 + 2) = 0u;
    *(v10 + 3) = 0u;
    *(v10 + 8) = 1;
    *(v10 + 9) = 0;
    *(v10 + 10) = 0;
    *(v10 + 11) = 0;
    sub_160B4(&v96, v10, &unk_DEA520);
    *(v10 + 12) = v34;
    v75 = *v82;
    *(&v97 + 1) = v73;
    v76 = __swift_allocate_boxed_opaque_existential_0(&v96);
    sub_2D604(v10, v76);
    v77 = v94;
    v78 = v75;
    JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v86, 0, v66, v72, &v96);

    sub_1611C(v100);
    sub_12E1C(v74, &unk_DEA510);
    sub_4BE48C(v10, _s23MusicPerformanceContextVMa);

    sub_12E1C(&v96, &unk_DE8E40);

    sub_12E1C(v99, &unk_DE8E30);
    swift_unknownObjectRelease();

    return;
  }

  swift_unknownObjectRelease();
}

void sub_4B3EE8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *&v3[qword_E0A860] == a2 && *&v3[qword_E0A860 + 8] == a3;
  if (v5 || (sub_ABB3C0() & 1) != 0)
  {
    if (a1)
    {
      type metadata accessor for SocialProfilesAccessoryView();
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = *&v3[qword_DFE2F0];
        if (v7)
        {
          v8 = v6;
          v9 = a1;
          v26 = v7;
          if (([v26 isEmpty] & 1) != 0 || !objc_msgSend(v26, "isValid"))
          {
            goto LABEL_16;
          }

          [v3 loadViewIfNeeded];
          v10 = *&v3[qword_DFE2F8];
          if (!v10)
          {
            __break(1u);
            goto LABEL_28;
          }

          v11 = v10;
          isa = sub_AB3770().super.isa;
          v25 = [v11 cellForItemAtIndexPath:isa];

          if (v25)
          {
            swift_getObjectType();
            v13 = swift_conformsToProtocol2();
            if (v13)
            {
              v14 = v13;
              type metadata accessor for PosterCell();
              v15 = swift_dynamicCastClass();
              if (v15)
              {
                v16 = v25;
                sub_39C70();
                v18 = v17;
              }

              else
              {
                v18 = 0;
              }

              v30 = 0;
              v31 = 0;
              v32 = v18;
              v33 = 0;
              v34 = v15 == 0;
              v20 = [v26 results];
              if (v20)
              {
                v21 = v20;
                v22 = sub_AB3770().super.isa;
                v23 = [v21 itemAtIndexPath:v22];

                v29 = v23;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E04518);
                if ((swift_dynamicCast() & 1) == 0)
                {
                  v28 = 0;
                  memset(v27, 0, sizeof(v27));
                }

                v24 = v25;
                sub_3AF4D0(v8, v27, v25, v14);

                sub_12E1C(v27, &unk_E04520);
                return;
              }

LABEL_28:
              __break(1u);
              return;
            }

            v19 = v25;
          }

          else
          {
LABEL_16:

            v19 = v26;
          }
        }
      }
    }
  }
}

void sub_4B41E0()
{
  v1 = [v0 traitCollection];
  [v1 displayScale];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [v1 horizontalSizeClass];
    [v3 music_inheritedLayoutInsets];
    v12.origin.x = v5;
    v12.origin.y = v7;
    v12.size.width = v9;
    v12.size.height = v11;
    CGRectGetWidth(v12);
    sub_471A4();
    sub_AB38F0();
    v13.origin.x = v5;
    v13.origin.y = v7;
    v13.size.width = v9;
    v13.size.height = v11;
    CGRectGetWidth(v13);
    sub_AB3A00();
  }

  else
  {
    __break(1u);
  }
}

void sub_4B4384()
{
  v1 = v0;
  [v0 loadViewIfNeeded];
  v2 = *&v0[qword_DFE2F8];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 traitCollection];
    v5 = v3;
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v4 horizontalSizeClass];
    v15.origin.x = v7;
    v15.origin.y = v9;
    v15.size.width = v11;
    v15.size.height = v13;
    CGRectGetWidth(v15);
    v16.origin.x = v7;
    v16.origin.y = v9;
    v16.size.width = v11;
    v16.size.height = v13;
    CGRectGetHeight(v16);
    [v5 music_inheritedLayoutInsets];

    v17.origin.x = v7;
    v17.origin.y = v9;
    v17.size.width = v11;
    v17.size.height = v13;
    CGRectGetWidth(v17);
    sub_471A4();
    sub_AB38F0();
    v14 = [v1 traitCollection];
    [v14 displayScale];

    v18.origin.x = v7;
    v18.origin.y = v9;
    v18.size.width = v11;
    v18.size.height = v13;
    CGRectGetWidth(v18);
    sub_AB3A00();
  }

  else
  {
    __break(1u);
  }
}

void sub_4B459C()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [v0 traitCollection];
  [v11 displayScale];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v13 = v12;
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  Width = CGRectGetWidth(v16);
  v14 = 0x408F400000000000;
  sub_471A4();
  if ((sub_AB38F0() & 1) == 0)
  {
    v17.origin.x = v4;
    v17.origin.y = v6;
    v17.size.width = v8;
    v17.size.height = v10;
    Width = CGRectGetWidth(v17);
    v14 = 0x4084500000000000;
    sub_AB38F0();
  }

  [v13 music_inheritedLayoutInsets];
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  CGRectGetWidth(v18);
  sub_AB38F0();
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  CGRectGetWidth(v19);
  sub_AB3A00();
}

void sub_4B4800()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [v0 traitCollection];
    v17.origin.x = v4;
    v17.origin.y = v6;
    v17.size.width = v8;
    v17.size.height = v10;
    Width = CGRectGetWidth(v17);
    v14 = 0x408F400000000000;
    sub_471A4();
    if (sub_AB38F0())
    {
      [v11 horizontalSizeClass];
    }

    [v0 loadViewIfNeeded];
    v12 = *&v0[qword_DFE2F8];
    if (v12)
    {
      [v12 music_inheritedLayoutInsets];
      v18.origin.x = v4;
      v18.origin.y = v6;
      v18.size.width = v8;
      v18.size.height = v10;
      v16 = CGRectGetWidth(v18);
      sub_AB38F0();
      v13 = [v0 traitCollection];
      [v13 displayScale];

      v19.origin.x = v4;
      v19.origin.y = v6;
      v19.size.width = v8;
      v19.size.height = v10;
      CGRectGetWidth(v19);
      sub_AB3A00();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_4B4A50()
{
  v1 = v0;
  result = [v0 loadViewIfNeeded];
  v3 = *&v0[qword_DFE2F8];
  if (v3)
  {
    v4 = v3;
    [v4 bounds];
    Width = CGRectGetWidth(v9);
    sub_471A4();
    if (sub_AB38F0())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = v1[qword_E0A858];
    v1[qword_E0A858] = v5;
    if (v6 != 3 && v6 != v5)
    {
      [v4 reloadData];
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_4B4B3C()
{
  v1 = [v0 traitCollection];
  [v0 loadViewIfNeeded];
  v2 = qword_DFE2F8;
  v3 = *&v0[qword_DFE2F8];
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v0 loadViewIfNeeded];
  v5 = *&v0[v2];
  if (v5)
  {
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = sub_45BBB8(v1, v6, v8, v10, v12);
    [v4 music_inheritedLayoutInsets];
    v16.origin.x = v7;
    v16.origin.y = v9;
    v16.size.width = v11;
    v16.size.height = v13;
    Width = CGRectGetWidth(v16);
    sub_471A4();
    sub_AB38F0();
    [v1 displayScale];
    v17.origin.x = v7;
    v17.origin.y = v9;
    v17.size.width = v11;
    v17.size.height = v13;
    CGRectGetWidth(v17);
    if (!__OFSUB__(v14, 1))
    {
      sub_AB3A00();

      return;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

void sub_4B4D00()
{
  v1 = v0;
  v2 = sub_AB4D10();
  __chkstk_darwin(v2);
  v3 = [v0 traitCollection];
  [v0 loadViewIfNeeded];
  v4 = qword_DFE2F8;
  v5 = *&v0[qword_DFE2F8];
  if (!v5)
  {
LABEL_264:
    __break(1u);
    goto LABEL_265;
  }

  [v5 music_inheritedLayoutInsets];
  v8 = qword_DFE2F0;
  v9 = *&v0[qword_DFE2F0];
  if (!v9)
  {
    v15 = 0;
    goto LABEL_10;
  }

  v10 = v7;
  v11 = v6;
  v12 = [v9 results];
  if (!v12)
  {
LABEL_265:
    __break(1u);
LABEL_266:
    __break(1u);
LABEL_267:
    __break(1u);
LABEL_268:
    __break(1u);
    goto LABEL_269;
  }

  v13 = v12;
  v14 = [v12 sectionAtIndex:sub_AB37F0()];

  if (!v14)
  {
    v15 = 0;
    v16 = *&v1[v8];
    if (v16)
    {
      goto LABEL_12;
    }

LABEL_10:

    return;
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
  }

  v16 = *&v1[v8];
  if (!v16)
  {
    goto LABEL_10;
  }

LABEL_12:
  v339 = v3;
  v17 = v16;
  v18 = [v17 results];
  if (!v18)
  {

    return;
  }

  v19 = v18;
  v337 = v4;
  v338 = v15;

  isa = sub_AB3770().super.isa;
  v21 = [v19 itemAtIndexPath:isa];

  if (!v21)
  {

LABEL_29:
    return;
  }

  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  v23 = v339;
  if (!v22)
  {
LABEL_28:

    swift_unknownObjectRelease();
    goto LABEL_29;
  }

  v336 = v22;
  if (v15)
  {
    v24 = [v15 uniformCellType];
    if (v24 > 3)
    {
      if (v24 > 5)
      {
        if (v24 != (&dword_4 + 2))
        {
          if (v24 == (&dword_4 + 3))
          {
            sub_4B7D64();
            [v339 horizontalSizeClass];
            [v339 displayScale];
            sub_AB3A00();

            swift_unknownObjectRelease();
            return;
          }

          goto LABEL_176;
        }

        v60 = &v1[qword_E0A818];
        if ((v1[qword_E0A818 + 16] & 1) == 0)
        {
LABEL_176:

          swift_unknownObjectRelease();
          return;
        }

        sub_4B4800();
        v62 = v61;
        [v1 loadViewIfNeeded];
        v63 = *&v1[v337];
        if (v63)
        {
          [v63 bounds];
          v64 = [v1 traitCollection];
          v65 = sub_234C6C(v64, v62);
          v67 = v66;

          *v60 = v65;
          *(v60 + 1) = v67;
          v60[16] = 0;

          swift_unknownObjectRelease();
          return;
        }

        goto LABEL_270;
      }

      if (v24 != &dword_4)
      {
        v40 = &v1[qword_E0A810];
        if (v1[qword_E0A810 + 16])
        {
          [v1 loadViewIfNeeded];
          v41 = *&v1[v337];
          if (!v41)
          {
LABEL_269:
            __break(1u);
LABEL_270:
            __break(1u);
            goto LABEL_271;
          }

          [v41 bounds];
          v43 = v42;
          v44 = [v1 traitCollection];
          sub_BCDCC(v44, v43);
          v46 = v45;

          *v40 = v43;
          *(v40 + 1) = v46;
          v40[16] = 0;
        }

        [v339 displayScale];
        [v339 horizontalSizeClass];
        sub_AB3A00();

        swift_unknownObjectRelease();
        return;
      }

      v54 = &v1[qword_E0A800];
      if (v1[qword_E0A800 + 16])
      {
        sub_4B459C();
        v56 = v55;
        v57 = [v1 traitCollection];
        [v57 displayScale];
        sub_AB3A00();
        v59 = v58;

        *v54 = v56;
        *(v54 + 1) = v59;
        v54[16] = 0;
      }

      [v339 displayScale];
      sub_AB3A00();

      swift_unknownObjectRelease();
      return;
    }

    if (v24 <= 1)
    {
      if (v24)
      {
        if (v24 != (&dword_0 + 1))
        {
          goto LABEL_176;
        }

        v25 = sub_AB37F0();
        v26 = *&v1[v8];
        if (!v26)
        {
          goto LABEL_175;
        }

        v27 = [v26 results];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 sectionAtIndex:v25];

          if (v29)
          {
            objc_opt_self();
            v30 = swift_dynamicCastObjCClass();
            if (v30)
            {
              v31 = [v30 isRankedList];
              swift_unknownObjectRelease();
              if (v31)
              {
                sub_4B73EC();
                goto LABEL_176;
              }
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }

LABEL_175:
          sub_4B72AC();
          goto LABEL_176;
        }

        goto LABEL_268;
      }

      goto LABEL_30;
    }

    if (v24 == (&dword_0 + 2))
    {
      sub_4B785C();
      sub_4B306C();

      swift_unknownObjectRelease();
      return;
    }

    v47 = [v336 contentItem];
    if (v47)
    {
      v48 = v47;
      if ([v47 itemType] == &dword_4 + 3 && (v49 = objc_msgSend(v48, "song")) != 0)
      {
        v50 = v49;
        if ([v49 hasVideo])
        {
          v335 = v50;
          v51 = qword_E0A838;
          v52 = *&v1[qword_E0A838];
          if (v52)
          {
            v53 = *&v1[qword_E0A838];
          }

          else
          {
            type metadata accessor for CustomRoomMusicVideoCell();
            v245 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
            v246 = *&v1[direct field offset for BrowseCollectionViewController.textDrawingCache];
            v247 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
            swift_beginAccess();
            *&v245[v247] = v246;
            swift_retain_n();
            v248 = v245;

            v249 = *&v248[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
            v250 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
            swift_beginAccess();
            v251 = *&v249[v250];
            *&v249[v250] = v246;

            v252 = v249;
            sub_2E6210(v251);

            v253 = *&v1[v51];
            *&v1[v51] = v248;
            v254 = v248;

            v53 = v254;
            v52 = 0;
          }

          v255 = v52;
          v256 = [v336 headlineText];
          if (v256)
          {
            v257 = v256;
            v258 = sub_AB92A0();
            v260 = v259;

            v261 = v258 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v261 = 0;
            v260 = 0xE000000000000000;
          }

          v262 = [v336 descriptionText];
          if (v262)
          {
            v263 = v262;
            v264 = sub_AB92A0();
            v266 = v265;

            v267 = v264 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v267 = 0;
            v266 = 0xE000000000000000;
          }

          [v1 loadViewIfNeeded];
          v268 = *&v1[v337];
          if (!v268)
          {
            goto LABEL_272;
          }

          v269 = &selRef__authenticateReturningError_;
          [v268 bounds];
          Width = CGRectGetWidth(v350);

          if ((v260 & 0x2000000000000000) != 0)
          {
            v271 = HIBYTE(v260) & 0xF;
          }

          else
          {
            v271 = v261;
          }

          if ((v266 & 0x2000000000000000) != 0)
          {
            v272 = HIBYTE(v266) & 0xF;
          }

          else
          {
            v272 = v267;
          }

          v273 = [v339 horizontalSizeClass];
          sub_14F78C(v339, v11, v10, Width);
          if (v271)
          {
            sub_14F8E0(v273, v342);
            sub_2F174(v342);
          }

          if (v273 == &dword_0 + 1)
          {
            swift_beginAccess();
            if (v272)
            {
LABEL_228:
              v274 = &v53[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_textComponents];
              swift_beginAccess();
              v343 = *v274;
              v344 = *(v274 + 1);
              v345 = *(v274 + 4);
              v346 = v345;

              sub_15F84(&v346, v340, &qword_DF1E78);
              v275 = v339;
              v276 = sub_14E664(v339);

              v269 = &selRef__authenticateReturningError_;

              sub_12E1C(&v346, &qword_DF1E78);
              goto LABEL_231;
            }
          }

          else if (v272)
          {
            goto LABEL_228;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
          v276 = swift_allocObject();
          *(v276 + 16) = xmmword_AF7C50;
          v277 = &v53[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_textComponents];
          swift_beginAccess();
          *(v276 + 32) = *(v277 + 1);
          *(v276 + 40) = *(v277 + 2);

          v275 = v339;
LABEL_231:
          sub_2F48A4(v276, v275, 0, 0);

          [v1 loadViewIfNeeded];
          v278 = *&v1[v337];
          if (v278)
          {
            v279 = v278;
            [v279 v269[56]];
            v281 = v280;
            v283 = v282;
            v285 = v284;
            v287 = v286;
            [v279 music_inheritedLayoutInsets];
            v289 = v288;
            v291 = v290;
            v351.origin.x = v281;
            v351.origin.y = v283;
            v351.size.width = v285;
            v351.size.height = v287;
            v292 = CGRectGetWidth(v351);

            sub_14F9EC(v275, v292 - v289 - v291, v11, v10);
            swift_unknownObjectRelease();

            return;
          }

          goto LABEL_273;
        }
      }

      else
      {
        v50 = v48;
      }
    }

    v78 = qword_E0A830;
    v79 = *&v1[qword_E0A830];
    if (v79)
    {
      v69 = *&v1[qword_E0A830];
    }

    else
    {
      type metadata accessor for CustomRoomAlbumCell();
      v102 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v103 = *&v1[direct field offset for BrowseCollectionViewController.textDrawingCache];
      v104 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
      swift_beginAccess();
      *&v102[v104] = v103;
      swift_retain_n();
      v105 = v102;

      v106 = *&v105[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
      v107 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
      swift_beginAccess();
      v108 = *&v106[v107];
      *&v106[v107] = v103;

      v109 = v106;
      sub_2E6210(v108);

      v110 = *&v1[v78];
      *&v1[v78] = v105;
      v111 = v105;

      v69 = v111;
      v79 = 0;
    }

    v112 = v79;
    v113 = [v336 headlineText];
    if (v113)
    {
      v114 = v113;
      v115 = sub_AB92A0();
      v117 = v116;

      v118 = v115 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v118 = 0;
      v117 = 0xE000000000000000;
    }

    v119 = [v336 descriptionText];
    if (v119)
    {
      v120 = v119;
      v121 = sub_AB92A0();
      v123 = v122;

      v124 = v121 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v124 = 0;
      v123 = 0xE000000000000000;
    }

    [v1 loadViewIfNeeded];
    v125 = *&v1[v337];
    if (!v125)
    {
      goto LABEL_267;
    }

    v126 = v125;
    [v126 bounds];
    v128 = v127;
    v130 = v129;
    v132 = v131;
    v134 = v133;
    [v126 music_inheritedLayoutInsets];
    v348.origin.x = v128;
    v348.origin.y = v130;
    v348.size.width = v132;
    v348.size.height = v134;
    CGRectGetWidth(v348);

    v135 = sub_4B4A50();

    if ((v117 & 0x2000000000000000) != 0)
    {
      v136 = HIBYTE(v117) & 0xF;
    }

    else
    {
      v136 = v118;
    }

    if ((v123 & 0x2000000000000000) != 0)
    {
      v137 = HIBYTE(v123) & 0xF;
    }

    else
    {
      v137 = v124;
    }

    if (v136)
    {
      swift_beginAccess();
    }

    v23 = v339;
    if (v135 == 2)
    {
      [v339 displayScale];
      sub_AB3A00();
      [v69 bounds];
      v139 = v138;
      v141 = v140;
      v143 = v142;
      v145 = v144;
      v146 = &v69[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
      swift_beginAccess();
      v349.origin.x = UIEdgeInsetsInsetRect(v139, v141, v143, v145, *v146, v146[1]);
      CGRectGetWidth(v349);
      [v339 displayScale];
      sub_AB3A00();
    }

    v147 = &v69[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
    swift_beginAccess();
    v148 = &v69[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_itemTextComponents];
    sub_4C6D80(v135, v69[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_textAlignment], v339, *&v69[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_itemTextComponents], *&v69[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_itemTextComponents + 8], *&v69[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_itemTextComponents + 16]);
    if (v137)
    {
      v149 = *(v148 + 3);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
      v149 = swift_allocObject();
      *(v149 + 16) = xmmword_AF7C50;
      *(v149 + 32) = *v148;
      *(v149 + 40) = *(v148 + 1);

      v23 = v339;
    }

    sub_2F48A4(v149, v23, 0, 0);
    if (v149 >> 62)
    {
      v150 = sub_ABB060();
      if (v150)
      {
LABEL_126:
        v151 = __OFSUB__(v150, 1);
        v152 = v150 - 1;
        if (v151)
        {
          __break(1u);
        }

        else if ((v149 & 0xC000000000000001) == 0)
        {
          if ((v152 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v152 < *(&dword_10 + (v149 & 0xFFFFFFFFFFFFFF8)))
          {

LABEL_131:

            swift_beginAccess();

            v23 = v339;
            goto LABEL_257;
          }

          __break(1u);
          goto LABEL_264;
        }

        sub_36003C(v152, v149);
        goto LABEL_131;
      }
    }

    else
    {
      v150 = *(&dword_10 + (v149 & 0xFFFFFFFFFFFFFF8));
      if (v150)
      {
        goto LABEL_126;
      }
    }

LABEL_257:

    if (v135 == 2)
    {
      [v23 displayScale];
      sub_AB3A00();
      [v69 bounds];
      v352.origin.x = UIEdgeInsetsInsetRect(v331, v332, v333, v334, *v147, v147[1]);
      CGRectGetWidth(v352);
      [v23 displayScale];
      sub_AB3A00();
    }

    goto LABEL_77;
  }

LABEL_30:
  if (*&v1[v8])
  {
    type metadata accessor for JSGridModelResponse();
    v32 = swift_dynamicCastClass();
    if (v32)
    {
      v33 = *(v32 + OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults);
      v34 = sub_AB3770().super.isa;
      v35 = [v33 itemAtIndexPath:v34];

      v23 = v339;
      if (v35)
      {
        type metadata accessor for JSGridItemButton();
        v36 = swift_dynamicCastClass();
        if (v36)
        {
          v37 = qword_E0A840;
          v38 = *&v1[qword_E0A840];
          if (v38)
          {
            v39 = *&v1[qword_E0A840];
          }

          else
          {
            v80 = v36;
            type metadata accessor for GridItemButtonCell();
            v81 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
            v82 = *(&stru_338.offset + (swift_isaMask & *v80));
            v83 = swift_unknownObjectRetain();
            v84 = v82(v83);
            v85 = v80;
            v86 = &v81[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonTitle];
            v87 = *&v81[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonTitle];
            v88 = *&v81[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonTitle + 8];
            *v86 = v84;
            v86[1] = v89;
            sub_262F1C(v87, v88);

            v91 = (*(&stru_338.reserved2 + (swift_isaMask & *v80)))(v90);
            v93 = v92;
            swift_unknownObjectRelease();
            v94 = sub_263108(v91, v93);
            v95 = (*&stru_478.segname[swift_isaMask & *v85])(v94);
            if (v81[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHorizontalAlignment])
            {
              v96 = 0x64657265746E6563;
            }

            else
            {
              v96 = 1952867692;
            }

            if (v81[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHorizontalAlignment])
            {
              v97 = 0xE800000000000000;
            }

            else
            {
              v97 = 0xE400000000000000;
            }

            v98 = v95 & 1;
            v81[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHorizontalAlignment] = v98;
            if (v98)
            {
              v99 = 0x64657265746E6563;
            }

            else
            {
              v99 = 1952867692;
            }

            if (v98)
            {
              v100 = 0xE800000000000000;
            }

            else
            {
              v100 = 0xE400000000000000;
            }

            if (v96 == v99 && v97 == v100)
            {
            }

            else
            {
              v172 = sub_ABB3C0();

              if ((v172 & 1) == 0)
              {
                v101 = [v81 setNeedsLayout];
              }
            }

            v173 = (*(&stru_478.size + (swift_isaMask & *v85)))(v101);
            if (v81[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_displayStyle])
            {
              v174 = 0x656B6F727473;
            }

            else
            {
              v174 = 1819044198;
            }

            if (v81[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_displayStyle])
            {
              v175 = 0xE600000000000000;
            }

            else
            {
              v175 = 0xE400000000000000;
            }

            v176 = v173 & 1;
            v81[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_displayStyle] = v176;
            if (v176)
            {
              v177 = 0x656B6F727473;
            }

            else
            {
              v177 = 1819044198;
            }

            if (v176)
            {
              v178 = 0xE600000000000000;
            }

            else
            {
              v178 = 0xE400000000000000;
            }

            if (v174 == v177 && v175 == v178)
            {
            }

            else
            {
              v179 = sub_ABB3C0();

              if ((v179 & 1) == 0)
              {
                sub_263DA8();
              }
            }

            v180 = *&v1[v37];
            *&v1[v37] = v81;
            v39 = v81;

            v38 = 0;
          }

          v181 = v39;
          v182 = v38;
          v183 = [v1 traitCollection];
          v184 = [v183 preferredContentSizeCategory];

          sub_ABA6C0();
          sub_AB4CD0();
          sub_ABA6D0();
          [v181 updateTraitsIfNeeded];

          [v1 loadViewIfNeeded];
          v185 = *&v1[v337];
          if (v185)
          {
            [v185 bounds];
            v187 = v186;
            v189 = v188;
            v190 = *&v181[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_actionButton];
            v191 = type metadata accessor for SubtitledButton();
            v341.receiver = v190;
            v341.super_class = v191;
            v192 = v190;
            objc_msgSendSuper2(&v341, "sizeThatFits:", v187, v189);

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            return;
          }

          goto LABEL_266;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  v68 = [v336 contentItem];
  if (!v68)
  {
    goto LABEL_28;
  }

  v69 = v68;
  v70 = MPModelStoreBrowseContentItem.kind.getter();
  v72 = v70;
  v73 = v338;
  if (v71 <= 5u)
  {
    if (v71 > 2u)
    {
      switch(v71)
      {
        case 3u:
          if ([v70 curatorKind] != &dword_0 + 3)
          {
            v193 = &v1[qword_E0A7E8];
            if (v1[qword_E0A7E8 + 16])
            {
              sub_494D44();
              v195 = v194;
              v196 = [v1 traitCollection];
              v197 = sub_1FE9B0(v196, 0, v195);

              *v193 = v195;
              v193[1] = v197;
              *(v193 + 16) = 0;
            }

            sub_4B306C();

            sub_3EB30(v72, 3);
            swift_unknownObjectRelease();

            return;
          }

          sub_4B79A0();
          sub_4B306C();

          v160 = v72;
          v161 = 3;
          break;
        case 4u:
          sub_4B71E8();
          sub_4B306C();

          v160 = v72;
          v161 = 4;
          break;
        case 5u:
          sub_4B7588();

          sub_3EB30(v72, 5);
          swift_unknownObjectRelease();

          return;
        default:
          goto LABEL_151;
      }

LABEL_147:
      sub_3EB30(v160, v161);

      swift_unknownObjectRelease();
      return;
    }

    if (v71)
    {
      if (v71 == 1)
      {
        sub_4B785C();
        sub_4B306C();

        sub_3EB30(v72, 1);
        swift_unknownObjectRelease();

        return;
      }

      goto LABEL_151;
    }

    v153 = sub_AB37F0();
    v154 = *&v1[v8];
    if (v154)
    {
      v155 = [v154 results];
      if (!v155)
      {
LABEL_271:
        __break(1u);
LABEL_272:
        __break(1u);
LABEL_273:
        __break(1u);
        return;
      }

      v156 = v155;
      v157 = [v155 sectionAtIndex:v153];

      v23 = v339;
      if (v157)
      {
        objc_opt_self();
        v158 = swift_dynamicCastObjCClass();
        if (v158)
        {
          v159 = [v158 isRankedList];
          swift_unknownObjectRelease();
          if (v159)
          {
            sub_4B73EC();
LABEL_209:

            sub_3EB30(v72, 0);
            swift_unknownObjectRelease();

            return;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }

    sub_4B72AC();
    goto LABEL_209;
  }

  if (v71 > 8u)
  {
    if (v71 == 9)
    {
      v165 = &v1[qword_E0A800];
      if (v1[qword_E0A800 + 16])
      {
        sub_4B459C();
        v167 = v166;
        v168 = [v1 traitCollection];
        [v168 displayScale];
        sub_AB3A00();
        v170 = v169;

        *v165 = v167;
        *(v165 + 1) = v170;
        v165[16] = 0;
      }

      [v23 displayScale];
      sub_AB3A00();

      sub_3EB30(v72, 9);
      swift_unknownObjectRelease();

      return;
    }

    if (v71 != 12)
    {
      if (v71 != 255)
      {
        goto LABEL_151;
      }

LABEL_77:

      swift_unknownObjectRelease();
      return;
    }

    if ([v23 horizontalSizeClass] != &dword_0 + 1)
    {
      sub_4B7B2C();
LABEL_241:
      [v23 displayScale];
      sub_AB3A00();

      v160 = v72;
      v161 = 12;
      goto LABEL_147;
    }

    v162 = qword_E0A848;
    v163 = *&v1[qword_E0A848];
    if (v163)
    {
      v164 = *&v1[qword_E0A848];
    }

    else
    {
      type metadata accessor for TVShowEpisodeCell();
      v198 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v199 = *&v1[direct field offset for BrowseCollectionViewController.textDrawingCache];
      v200 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textDrawingCache;
      swift_beginAccess();
      *&v198[v200] = v199;
      swift_retain_n();

      sub_43B328();

      v201 = *&v1[v162];
      *&v1[v162] = v198;
      v202 = v198;

      v73 = v338;
      v164 = v202;
      v163 = 0;
    }

    v203 = v72;
    v204 = v163;
    v205 = [v336 headlineText];
    if (v205)
    {
      v206 = v205;
      v207 = sub_AB92A0();
      v209 = v208;
    }

    else
    {
      v207 = 0;
      v209 = 0xE000000000000000;
    }

    v210 = &v164[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headline];
    v211 = *&v164[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headline];
    v212 = *&v164[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headline + 8];
    *v210 = v207;
    v210[1] = v209;
    sub_43A730(v211, v212);

    v213 = [v336 titleText];
    if (v213)
    {
      v214 = v213;
      v215 = sub_AB92A0();
      v217 = v216;

      v218 = HIBYTE(v217) & 0xF;
      if ((v217 & 0x2000000000000000) == 0)
      {
        v218 = v215 & 0xFFFFFFFFFFFFLL;
      }

      if (v218)
      {
LABEL_234:
        v293 = &v164[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_title];
        v294 = *&v164[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_title];
        v295 = *&v164[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_title + 8];
        *v293 = v215;
        v293[1] = v217;
        sub_43A944(v294, v295);

        v296 = [v336 descriptionText];
        if (v296)
        {
          v297 = v296;
          v298 = sub_AB92A0();
          v300 = v299;

          v301 = HIBYTE(v300) & 0xF;
          if ((v300 & 0x2000000000000000) == 0)
          {
            v301 = v298 & 0xFFFFFFFFFFFFLL;
          }

          if (v301)
          {
            goto LABEL_240;
          }
        }

        v298 = 0;
        v300 = 0xE000000000000000;
LABEL_240:
        v302 = &v164[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText];
        v303 = *&v164[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText];
        v304 = *&v164[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText + 8];
        *v302 = v298;
        v302[1] = v300;
        v305 = v164;
        sub_43ABF0(v303, v304);

        v307 = sub_4B41DC(v306);
        sub_43C3DC(v307);

        v23 = v339;
        v72 = v203;
        goto LABEL_241;
      }
    }

    v219 = [v203 title];
    if (v219)
    {
      v220 = v219;
      v215 = sub_AB92A0();
      v217 = v221;
    }

    else
    {
      v215 = 0;
      v217 = 0xE000000000000000;
    }

    goto LABEL_234;
  }

  if (v71 == 6)
  {
    sub_4B7C9C();

    sub_3EB30(v72, 6);
    swift_unknownObjectRelease();

    return;
  }

  if (v71 != 7)
  {
    if (v71 == 8)
    {
      if ([v23 horizontalSizeClass] != &dword_0 + 1)
      {
        sub_4B7B4C();
LABEL_254:
        [v23 displayScale];
        sub_AB3A00();

        v160 = v72;
        v161 = 8;
        goto LABEL_147;
      }

      v74 = v72;
      v75 = qword_E0A848;
      v76 = *&v1[qword_E0A848];
      if (v76)
      {
        v77 = *&v1[qword_E0A848];
      }

      else
      {
        type metadata accessor for TVShowEpisodeCell();
        v222 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v223 = *&v1[direct field offset for BrowseCollectionViewController.textDrawingCache];
        v224 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textDrawingCache;
        swift_beginAccess();
        *&v222[v224] = v223;
        swift_retain_n();

        sub_43B328();

        v225 = *&v1[v75];
        *&v1[v75] = v222;
        v226 = v222;

        v73 = v338;
        v77 = v226;
        v76 = 0;
      }

      v227 = v76;
      v228 = [v336 headlineText];
      if (v228)
      {
        v229 = v228;
        v230 = sub_AB92A0();
        v232 = v231;
      }

      else
      {
        v230 = 0;
        v232 = 0xE000000000000000;
      }

      v233 = &v77[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headline];
      v234 = *&v77[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headline];
      v235 = *&v77[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headline + 8];
      *v233 = v230;
      v233[1] = v232;
      sub_43A730(v234, v235);

      v236 = [v336 titleText];
      if (v236)
      {
        v237 = v236;
        v238 = sub_AB92A0();
        v240 = v239;

        v241 = HIBYTE(v240) & 0xF;
        if ((v240 & 0x2000000000000000) == 0)
        {
          v241 = v238 & 0xFFFFFFFFFFFFLL;
        }

        if (v241)
        {
LABEL_243:
          v308 = &v77[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_title];
          v309 = *&v77[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_title];
          v310 = *&v77[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_title + 8];
          *v308 = v238;
          v308[1] = v240;
          sub_43A944(v309, v310);

          v311 = [v336 descriptionText];
          if (v311)
          {
            v312 = v311;
            v313 = sub_AB92A0();
            v315 = v314;

            v316 = HIBYTE(v315) & 0xF;
            if ((v315 & 0x2000000000000000) == 0)
            {
              v316 = v313 & 0xFFFFFFFFFFFFLL;
            }

            if (v316)
            {
              v317 = &v77[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText];
              v318 = *&v77[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText];
              v319 = *&v77[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText + 8];
              *v317 = v313;
              v317[1] = v315;
              v320 = v77;
              sub_43ABF0(v318, v319);

LABEL_253:
              v330 = sub_4B41DC(v321);
              sub_43C3DC(v330);

              v23 = v339;
              v72 = v74;
              goto LABEL_254;
            }
          }

          v322 = [v74 descriptionText];
          if (v322)
          {
            v323 = v322;
            v324 = sub_AB92A0();
            v326 = v325;
          }

          else
          {
            v324 = 0;
            v326 = 0xE000000000000000;
          }

          v327 = &v77[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText];
          v328 = *&v77[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText];
          v329 = *&v77[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText + 8];
          *v327 = v324;
          v327[1] = v326;
          sub_43ABF0(v328, v329);

          v321 = v77;
          goto LABEL_253;
        }
      }

      v242 = [v74 title];
      if (v242)
      {
        v243 = v242;
        v238 = sub_AB92A0();
        v240 = v244;
      }

      else
      {
        v238 = 0;
        v240 = 0xE000000000000000;
      }

      goto LABEL_243;
    }

LABEL_151:
    v171 = v71;

    sub_3EB30(v72, v171);
    swift_unknownObjectRelease();

    return;
  }

  if ([v70 hasVideo])
  {
    sub_4B772C();
    [v23 displayScale];
    sub_AB3A00();
  }

  else
  {
    sub_4B7660();
    sub_14C0F8(v23, 0, v342);
  }

  sub_3EB30(v72, 7);
  swift_unknownObjectRelease();
}

void sub_4B71E8()
{
  v1 = &v0[qword_E0A7C0];
  if (v0[qword_E0A7C0 + 16])
  {
    if ((sub_4B306C() & 1) == 0)
    {
      v9 = sub_4B72AC();
      goto LABEL_7;
    }

    [v0 loadViewIfNeeded];
    v2 = *&v0[qword_DFE2F8];
    if (v2)
    {
      [v2 bounds];
      v4 = v3;
      v5 = [v0 traitCollection];
      sub_1ACC94(v5);
      v7 = v6;

      v8 = v7;
      v9 = v4;
LABEL_7:
      *v1 = v9;
      *(v1 + 1) = v8;
      v1[16] = 0;
      return;
    }

    __break(1u);
  }
}

double sub_4B72AC()
{
  v1 = &v0[qword_E0A7A8];
  if ((v0[qword_E0A7A8 + 16] & 1) == 0)
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

double sub_4B73EC()
{
  v1 = &v0[qword_E0A7B0];
  if ((v0[qword_E0A7B0 + 16] & 1) == 0)
  {
    return *v1;
  }

  sub_494D44();
  v3 = v2;
  v4 = [v0 traitCollection];
  _s16MusicApplication9AlbumCellC20detailTextComponents33_697C9E9A5E5CEA31E6831E8C6D513A7BLLAC06DetailfG0AELLVvpfi_0();
  v6 = v5;
  v11 = v5;

  v7 = sub_1AF620();
  if (v6 >> 62 && sub_ABB060() < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1AF76C(0, 0, v7);

  sub_2F48A4(v11, v4, 0, 0);

  if (qword_DE6948 != -1)
  {
LABEL_9:
    swift_once();
  }

  [v4 displayScale];
  sub_AB3A00();
  v9 = v8;

  *v1 = v3;
  *(v1 + 1) = v9;
  v1[16] = 0;
  return v3;
}

void sub_4B7588()
{
  v1 = &v0[qword_E0A7C8];
  if (v0[qword_E0A7C8 + 16])
  {
    [v0 loadViewIfNeeded];
    v2 = *&v0[qword_DFE2F8];
    if (v2)
    {
      v3 = v2;
      [v3 bounds];
      Width = CGRectGetWidth(v8);
      v5 = [v0 traitCollection];
      [v3 bounds];
      CGRectGetWidth(v9);
      sub_B4734(v5);
      v7 = v6;

      *v1 = Width;
      *(v1 + 1) = v7;
      v1[16] = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_4B7660()
{
  v1 = &v0[qword_E0A7D0];
  if (v0[qword_E0A7D0 + 16])
  {
    v2 = [v0 traitCollection];
    [v0 loadViewIfNeeded];
    v3 = *&v0[qword_DFE2F8];
    if (v3)
    {
      v4 = v3;
      [v4 bounds];
      Width = CGRectGetWidth(v9);
      v6 = sub_14CD64(v2, 0x8000u, Width);
      v8 = v7;

      *v1 = v6;
      *(v1 + 1) = v8;
      v1[16] = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_4B772C()
{
  v1 = &v0[qword_E0A7D8];
  if (v0[qword_E0A7D8 + 16])
  {
    sub_4B4384();
    v3 = v2;
    v4 = [v0 traitCollection];
    sub_42C174();
    v6 = sub_2F48A4(v5, v4, 0, 0);
    if (qword_DE6BB8 != -1)
    {
      swift_once();
    }

    v7 = *&xmmword_E05F98;
    v8 = *&qword_E05FA8;

    *v1 = v3;
    v1[1] = v3 / 1.77777778 + v6 + v7 + v8;
    *(v1 + 16) = 0;
  }
}

void sub_4B785C()
{
  v1 = &v0[qword_E0A7E0];
  if (v0[qword_E0A7E0 + 16])
  {
    if ((sub_4B306C() & 1) == 0)
    {
      sub_4B4B3C();
      v4 = v9;
      v10 = [v0 traitCollection];
      v11 = sub_1FE9B0(v10, 0, v4);

      v8 = v11;
      goto LABEL_7;
    }

    [v0 loadViewIfNeeded];
    v2 = *&v0[qword_DFE2F8];
    if (v2)
    {
      [v2 bounds];
      v4 = v3;
      v5 = [v0 traitCollection];
      sub_15E820();
      v7 = sub_2F48A4(v6, v5, 0, 0);

      v8 = fmax(v7, 80.0);
LABEL_7:
      *v1 = v4;
      v1[1] = v8;
      *(v1 + 16) = 0;
      return;
    }

    __break(1u);
  }
}

void sub_4B79A0()
{
  v1 = &v0[qword_E0A7F0];
  if (v0[qword_E0A7F0 + 16])
  {
    if ((sub_4B306C() & 1) == 0)
    {
      sub_494D44();
      v11 = v10;
      v12 = [v0 traitCollection];
      v13 = _s16MusicApplication19CuratorActivityCellC14textComponents33_92B4383430C9FCD6B56F80ACB14131BELLAC04TextG0AELLVvpfi_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_AF82B0;
      *(inited + 32) = v13;

      v15 = sub_2F48A4(inited, v12, 0, 0);

      swift_setDeallocating();
      swift_arrayDestroy();

      v9 = v11;
      v8 = v11 + v15 + 0.0;
      goto LABEL_7;
    }

    [v0 loadViewIfNeeded];
    v2 = *&v0[qword_DFE2F8];
    if (v2)
    {
      [v2 bounds];
      v4 = v3;
      v5 = [v0 traitCollection];
      sub_1ACC94(v5);
      v7 = v6;

      v8 = v7;
      v9 = v4;
LABEL_7:
      *v1 = v9;
      v1[1] = v8;
      *(v1 + 16) = 0;
      return;
    }

    __break(1u);
  }
}

void *sub_4B7B6C(void *result, double (*a2)(void))
{
  v3 = &v2[*result];
  if (v3[2])
  {
    v4 = a2();
    v5 = [v2 traitCollection];
    sub_43C4F8();
    v7 = sub_2F48A4(v6, v5, 0, 0);
    if (qword_DE6BD8 != -1)
    {
      swift_once();
    }

    v8 = *&xmmword_E07070;
    v9 = *&qword_E07080;

    *v3 = v4;
    v3[1] = v4 / 1.77777778 + v7 + v8 + v9;
    *(v3 + 16) = 0;
  }

  return result;
}

void sub_4B7C9C()
{
  v1 = &v0[qword_E0A808];
  if (v0[qword_E0A808 + 16])
  {
    v2 = [v0 traitCollection];
    [v0 loadViewIfNeeded];
    v3 = *&v0[qword_DFE2F8];
    if (v3)
    {
      v4 = v3;
      [v4 bounds];
      v6 = sub_B2768(v2, v5);
      v8 = v7;

      *v1 = v6;
      *(v1 + 1) = v8;
      v1[16] = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_4B7D64()
{
  v1 = &v0[qword_E0A820];
  if (v0[qword_E0A820 + 16])
  {
    [v0 loadViewIfNeeded];
    v2 = *&v0[qword_DFE2F8];
    if (v2)
    {
      v3 = v2;
      [v3 bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      [v3 music_inheritedLayoutInsets];
      v13 = v12;
      v15 = v14;
      v21.origin.x = v5;
      v21.origin.y = v7;
      v21.size.width = v9;
      v21.size.height = v11;
      Width = CGRectGetWidth(v21);

      v17 = Width - v13 - v15;
      v18 = [v0 traitCollection];
      [v18 horizontalSizeClass];
      [v18 displayScale];
      sub_AB3A00();
      v20 = v19;

      *v1 = v17;
      v1[1] = v20 + 20.0;
      *(v1 + 16) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_4B7EB4(uint64_t a1)
{
  v3 = [objc_allocWithZone(MPMutableSectionedCollection) init];
  v4 = sub_AB9260();
  [v3 appendSection:v4];

  v5 = *(v1 + qword_DFE2F0);
  if (!v5)
  {
    return v3;
  }

  v6 = [v5 results];
  if (!v6)
  {
    return v3;
  }

  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_3E0C5C;
  *(v9 + 24) = v8;
  v13[4] = sub_3E12F8;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1B7EB0;
  v13[3] = &block_descriptor_224;
  v10 = _Block_copy(v13);
  v11 = v3;

  [v7 enumerateItemsInSectionAtIndex:a1 usingBlock:v10];
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if ((v10 & 1) == 0)
  {
    return v3;
  }

  __break(1u);
  return result;
}

id sub_4B808C(uint64_t a1)
{
  result = *(v1 + qword_DFE2F0);
  if (result)
  {
    result = [result results];
    if (result)
    {
      v4 = result;
      v5 = [result sectionAtIndex:a1];

      if (v5)
      {
        objc_opt_self();
        v6 = swift_dynamicCastObjCClass();
        if (v6)
        {
          v7 = [v6 isRankedList];
        }

        else
        {
          v7 = 0;
        }

        swift_unknownObjectRelease();
        return v7;
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

  return result;
}

uint64_t sub_4B8148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
  v19 = 0;
  v4 = *(v3 + qword_DFE2F0);
  v5 = 0.0;
  if (!v4 || (v9 = v4, v10 = [v9 results], v9, !v10))
  {
    v16 = 0;
    v15 = 0.0;
    goto LABEL_6;
  }

  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = &v18;
  v11[5] = &v19;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_3E0C40;
  *(v12 + 24) = v11;
  v17[4] = sub_2E34E8;
  v17[5] = v12;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1B7EB0;
  v17[3] = &block_descriptor_214;
  v13 = _Block_copy(v17);

  [v10 enumerateItemsInSectionAtIndex:a1 usingBlock:v13];
  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    v15 = v18;
    v5 = v19;
    v16 = sub_3E0C40;
LABEL_6:
    sub_17654(v16);
    return v15 / v5 > 0.7;
  }

  __break(1u);
  return result;
}

uint64_t sub_4B8354(uint64_t a1, char a2)
{
  v3 = MPModelStoreBrowseContentItem.kind.getter();
  if (v4 == 255)
  {
    goto LABEL_5;
  }

  if (v4 != 7)
  {
    sub_3EB30(v3, v4);
LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v5 = v3;
  v6 = [v3 hasVideo];
  sub_3EB30(v5, 7);
  v7 = v6 ^ a2 ^ 1;
  return v7 & 1;
}

id sub_4B83D0(uint64_t a1)
{
  v3 = *&v1[qword_DFE2F0];
  if (!v3)
  {
    goto LABEL_15;
  }

  result = [v3 results];
  if (result)
  {
    v5 = result;
    v6 = [result sectionAtIndex:a1];

    if (!v6)
    {
      goto LABEL_15;
    }

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = v7;
    if ([v7 uniformCellType] == &dword_0 + 1 || objc_msgSend(v8, "uniformCellType") == &dword_0 + 3 || objc_msgSend(v8, "uniformCellType") == &dword_4)
    {
      swift_unknownObjectRelease();
      v9 = 0;
      return (v9 & 1);
    }

    if ([v8 uniformCellType] != &dword_4 + 2)
    {
LABEL_14:
      swift_unknownObjectRelease();
      goto LABEL_15;
    }

    result = [v1 view];
    if (result)
    {
      v10 = result;
      [result bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v19 = [v1 traitCollection];
      v23.origin.x = v12;
      v23.origin.y = v14;
      v23.size.width = v16;
      v23.size.height = v18;
      Width = CGRectGetWidth(v23);
      sub_471A4();
      if (sub_AB38F0())
      {
        v20 = [v19 horizontalSizeClass];

        swift_unknownObjectRelease();
        if (v20 == &dword_0 + 2)
        {
          v9 = 0;
          return (v9 & 1);
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }

LABEL_15:
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v9 = sub_4B8148(a1, sub_4BE3D8, v21);

      return (v9 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_4B8658()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (sub_4B306C())
    {
LABEL_3:

      return 1;
    }

    v2 = MPModelStoreBrowseContentItem.kind.getter();
    if (v3 == 5)
    {
      sub_3EB30(v2, 5);
      goto LABEL_3;
    }

    if (v3 != 255)
    {
      if (v3 == 7)
      {
        v4 = v2;
        v5 = [v2 hasVideo];
        sub_3EB30(v4, 7);

        return (v5 & 1) == 0;
      }

      sub_3EB30(v2, v3);
    }

    return 0;
  }

  return result;
}

void sub_4B8734(void *a1, char a2)
{
  v5 = v2 + qword_E0A7A8;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  v6 = v2 + qword_E0A7B0;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  v7 = v2 + qword_E0A7B8;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  v8 = v2 + qword_E0A7C0;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = v2 + qword_E0A7C8;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  v10 = v2 + qword_E0A7D0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  v11 = v2 + qword_E0A7D8;
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 1;
  v12 = v2 + qword_E0A7E0;
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  v13 = v2 + qword_E0A7F0;
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  v14 = v2 + qword_E0A7F8;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  v15 = v2 + qword_E0A800;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  v16 = v2 + qword_E0A808;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  v17 = v2 + qword_E0A810;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  v18 = v2 + qword_E0A818;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  v19 = v2 + qword_E0A820;
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 1;
  *(v2 + qword_E0A828) = 2;
  [swift_getObjCClassFromObject() invalidationContextClass];
  swift_getObjCClassMetadata();
  sub_13C80(0, &unk_DFED50);
  swift_dynamicCastMetatypeUnconditional();
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [a1 invalidateLayoutWithContext:?];
  if (a2)
  {
    sub_4B8938();
  }
}

void sub_4B8938()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v6 = __chkstk_darwin(v5 - 8);
  v43 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v42 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1D10);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = *&v0[qword_E0A860];
  v13 = *&v0[qword_E0A860 + 8];
  [v0 loadViewIfNeeded];
  v39 = v0;
  v14 = *&v0[qword_DFE2F8];
  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = v14;
  v37 = v13;
  v38 = v12;
  v16 = UICollectionView.visibleSupplementaryElements(of:)(v12, v13);
  v34 = v17;
  v35 = v18;

  v19 = 0;
  v32 = v2 + 16;
  v33 = v2;
  v20 = *(v16 + 16);
  v40 = (v2 + 56);
  v41 = v16;
  v21 = (v2 + 48);
  v22 = (v2 + 32);
  v23 = (v2 + 8);
  for (i = v20; ; v20 = i)
  {
    v24 = v42;
    if (v19 == v20)
    {
      v25 = 1;
      v19 = v20;
      goto LABEL_8;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v19 >= *(v16 + 16))
    {
      goto LABEL_14;
    }

    (*(v33 + 16))(v42, v16 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v19, v1);
    v25 = 0;
    ++v19;
LABEL_8:
    v26 = 1;
    (*v40)(v24, v25, 1, v1);
    v27 = v24;
    v28 = v43;
    sub_1766C(v27, v43);
    if ((*v21)(v28, 1, v1) != 1)
    {
      (*v22)(v4, v43, v1);
      v34(v4);
      (*v23)(v4, v1);
      v26 = 0;
    }

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1D20);
    (*(*(v29 - 8) + 56))(v11, v26, 1, v29);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1D20);
    if ((*(*(v30 - 8) + 48))(v11, 1, v30) == 1)
    {

      return;
    }

    v31 = *&v11[*(v30 + 48)];
    (*v22)(v4, v11, v1);
    sub_4B3EE8(v31, v38, v37);
    (*v23)(v4, v1);

    v16 = v41;
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_4B8D60()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v403 - v3;
  v5 = qword_DFE2F0;
  v6 = *&v0[qword_DFE2F0];
  if (v6)
  {
    v7 = [v6 results];
    if (!v7)
    {
      __break(1u);
      return;
    }

    v8 = v7;
    v9 = [v7 sectionAtIndex:sub_AB37F0()];

    if (v9)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v10 = *&v1[v5];
        if (!v10)
        {
          goto LABEL_29;
        }

LABEL_9:
        v422 = v6;
        v11 = v10;
        v12 = [v11 results];

        if (v12)
        {
          isa = sub_AB3770().super.isa;
          v14 = [v12 itemAtIndexPath:isa];

          if (v14)
          {
            objc_opt_self();
            v15 = swift_dynamicCastObjCClass();
            if (v15)
            {
              v16 = v15;
              v17 = &selRef_isMovingFromParentViewController;
              if (v422 && [v422 uniformCellType] == &dword_4 + 3)
              {
                type metadata accessor for PosterCell();
                v18 = swift_dynamicCastClass();
                if (v18)
                {
                  v19 = v18;
                  v20 = v14;
                  v21 = [v16 videoBackgroundArtworkCatalog];
                  v22 = *(v19 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_lockupVideoArtworkCatalog);
                  *(v19 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_lockupVideoArtworkCatalog) = v21;
                  v23 = v21;

                  v24 = v21;
                  v14 = v20;
                  sub_751F4(v24);
                  sub_45CBB4();
                }

                v25 = [v1 traitCollection];
                v26 = [v25 horizontalSizeClass];

                v27 = &selRef_editorialArtworkCatalog;
                if (v26 != &dword_0 + 2)
                {
                  v27 = &selRef_backgroundArtworkCatalog;
                }

                v421 = [v16 *v27];
                v17 = &selRef_isMovingFromParentViewController;
              }

              else
              {
                v421 = 0;
              }

              v28 = [v16 contentItem];
              if (v28)
              {
                v29 = v28;
                v420 = v16;
                v30 = MPModelStoreBrowseContentItem.kind.getter();
                if (v31 != 0xFF)
                {
                  v32 = v30;
                  LODWORD(v33) = v31;
                  type metadata accessor for FeaturedMaterialCell();
                  if (!swift_dynamicCastClass())
                  {
                    type metadata accessor for HorizontalLockupCollectionViewCell();
                    v34 = swift_dynamicCastClass();
                    v418 = v29;
                    v417 = v14;
                    v416 = v32;
                    if (v34)
                    {
                      v419 = v34;
                      v35 = [v29 innerObject];
                      if (v35)
                      {
                        v36 = v35;
                        MPModelObject.artworkPlaceholder.getter(&v423);

                        v37 = v427;
                        v38 = v426;
                        v39 = v425;
                        v40 = v424;
                        v41 = v423;
                        v42 = v423;
                        v43 = v424;
                        v413 = v425;
                      }

                      else
                      {
                        v50 = Artwork.Placeholder.music.unsafeMutableAddressor();
                        v42 = *v50;
                        v43 = v50[1];
                        v52 = v50[2];
                        v51 = v50[3];
                        v415 = *(v50 + 2);
                        v413 = v52;
                        v38 = v51;
                        v41 = v42;
                        v53 = v43;
                        v39 = v52;
                        v37 = v415;
                        v40 = v53;
                      }

                      v404 = v42;
                      v405 = v43;
                      v412 = v39;
                      v415 = v37;
                      v54 = &v419[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
                      v411 = *&v419[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
                      v410 = *&v419[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
                      v409 = *&v419[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
                      v408 = *&v419[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
                      v407 = *&v419[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 32];
                      v406 = *&v419[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 40];
                      *v54 = v42;
                      *(v54 + 1) = v43;
                      *(v54 + 2) = v39;
                      *(v54 + 3) = v38;
                      *(v54 + 2) = v37;
                      v55 = v41;
                      v56 = v40;
                      v57 = v413;
                      v58 = v38;
                      v59 = v55;
                      v60 = v56;
                      v61 = v57;
                      v413 = v58;
                      sub_2F1C8(v411, v410, v409, v408);
                      v62 = *&v419[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
                      v63 = *(v62 + 168);
                      v435[0] = *(v62 + 152);
                      v435[1] = v63;
                      v435[2] = *(v62 + 184);
                      v64 = v405;
                      *(v62 + 152) = v404;
                      *(v62 + 160) = v64;
                      *(v62 + 168) = v412;
                      *(v62 + 176) = v38;
                      *(v62 + 184) = v415;
                      v65 = v59;
                      v66 = v60;
                      v67 = v61;
                      v68 = v413;
                      sub_75948(v435);
                      sub_12E1C(v435, &unk_DF8690);

                      v29 = v418;
                      v32 = v416;
                      v17 = &selRef_isMovingFromParentViewController;
                    }

                    type metadata accessor for VerticalLockupCollectionViewCell();
                    v69 = swift_dynamicCastClass();
                    if (v69)
                    {
                      *&v415 = v69;
                      v70 = [v29 innerObject];
                      v414 = v33;
                      if (v70)
                      {
                        v71 = v70;
                        MPModelObject.artworkPlaceholder.getter(&v428);

                        v73 = v432;
                        v72 = v433;
                        v74 = v430;
                        v419 = v431;
                        v75 = v428;
                        v76 = v429;
                        v77 = v428;
                        v412 = v429;
                        v413 = v430;
                      }

                      else
                      {
                        v78 = Artwork.Placeholder.music.unsafeMutableAddressor();
                        v79 = *v78;
                        v80 = v78[1];
                        v81 = v78[3];
                        v73 = v78[4];
                        v72 = v78[5];
                        v74 = v78[2];
                        v413 = v74;
                        v419 = v81;
                        v77 = v79;
                        v75 = v79;
                        v76 = v80;
                        v412 = v80;
                      }

                      v82 = v415 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkPlaceholder;
                      swift_beginAccess();
                      v83 = *(v82 + 8);
                      v411 = *v82;
                      v410 = v83;
                      v84 = *(v82 + 24);
                      v409 = *(v82 + 16);
                      v408 = v84;
                      v85 = *(v82 + 40);
                      v407 = *(v82 + 32);
                      v406 = v85;
                      *v82 = v77;
                      *(v82 + 8) = v76;
                      v404 = v76;
                      v405 = v74;
                      *(v82 + 16) = v74;
                      v86 = v419;
                      *(v82 + 24) = v419;
                      v419 = v86;
                      *(v82 + 32) = v73;
                      *(v82 + 40) = v72;
                      v87 = v75;
                      v88 = v412;
                      v89 = v413;
                      v90 = v86;
                      v91 = v87;
                      v92 = v88;
                      v93 = v89;
                      v33 = v90;
                      sub_2F1C8(v411, v410, v409, v408);
                      v94 = *(v415 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
                      v95 = *(v94 + 168);
                      v434[0] = *(v94 + 152);
                      v434[1] = v95;
                      v434[2] = *(v94 + 184);
                      v96 = v404;
                      *(v94 + 152) = v77;
                      *(v94 + 160) = v96;
                      v97 = v419;
                      *(v94 + 168) = v405;
                      *(v94 + 176) = v97;
                      *(v94 + 184) = v73;
                      *(v94 + 192) = v72;
                      v98 = v91;
                      v99 = v92;
                      v100 = v93;
                      v101 = v33;
                      sub_75948(v434);
                      sub_12E1C(v434, &unk_DF8690);

                      v29 = v418;
                      v32 = v416;
                      v17 = &selRef_isMovingFromParentViewController;
                      LOBYTE(v33) = v414;
                    }
                  }

                  if (v33 <= 5u)
                  {
                    if (v33 > 2u)
                    {
                      if (v33 != 3)
                      {
                        if (v33 != 4)
                        {
                          v102 = v422;
                          if (v33 == 5)
                          {
                            v103 = v420;
                            if (v422)
                            {
                              if ([v422 v17[196]] == &dword_0 + 1)
                              {
                                type metadata accessor for AlbumCell();
                                v104 = swift_dynamicCastClass();
                                if (v104)
                                {
                                  v105 = v104;
                                  v106 = v32;
                                  v107 = [v103 backgroundArtworkCatalog];
                                  if (!v107)
                                  {
                                    goto LABEL_166;
                                  }

                                  goto LABEL_167;
                                }

                                goto LABEL_284;
                              }

                              if ([v422 v17[196]] == &dword_0 + 3)
                              {
                                type metadata accessor for CustomRoomAlbumCell();
                                v223 = swift_dynamicCastClass();
                                if (v223)
                                {
                                  v105 = v223;
                                  v106 = v32;
                                  v107 = [v103 backgroundArtworkCatalog];
                                  if (!v107)
                                  {
LABEL_166:
                                    v107 = [v106 artworkCatalog];
                                  }

LABEL_167:
                                  v224 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                                  swift_beginAccess();
                                  v225 = *(v105 + v224);
                                  *(v105 + v224) = v107;
                                  v226 = v107;

                                  sub_74EA4(v107);
                                  v125 = v106;
                                  v143 = 5;
                                  goto LABEL_355;
                                }

                                goto LABEL_284;
                              }

                              if ([v422 v17[196]] == &dword_4 + 1)
                              {
                                type metadata accessor for ShowcaseCell();
                                v274 = swift_dynamicCastClass();
                                if (v274)
                                {
                                  v275 = v274;
                                  v276 = [v103 backgroundArtworkCatalog];
                                  if (v276)
                                  {
LABEL_350:
                                    v340 = *(v275 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                                    *(v275 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v276;
                                    v339 = v32;
LABEL_351:
                                    v397 = v276;
                                    v398 = v276;

                                    sub_74EA4(v397);
                                    v125 = v339;
LABEL_354:
                                    v143 = 5;
                                    goto LABEL_355;
                                  }

LABEL_349:
                                  v276 = [v32 artworkCatalog];
                                  goto LABEL_350;
                                }

LABEL_284:

                                v341 = &v436;
LABEL_353:

                                v125 = v32;
                                goto LABEL_354;
                              }

                              if ([v422 v17[196]] == &dword_4 + 2)
                              {
                                type metadata accessor for FeaturedRadioShowCell();
                                v337 = swift_dynamicCastClass();
                                if (v337)
                                {
                                  v338 = v337;
                                  v339 = v32;
                                  v276 = [v103 backgroundArtworkCatalog];
                                  if (!v276)
                                  {
                                    v276 = [v32 artworkCatalog];
                                  }

                                  v340 = *(v338 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                                  *(v338 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v276;
                                  goto LABEL_351;
                                }

                                goto LABEL_284;
                              }

                              if ([v422 v17[196]] == &dword_4 + 3)
                              {
                                v387 = v32;
                                type metadata accessor for PosterCell();
                                v388 = swift_dynamicCastClass();
                                if (v388)
                                {
                                  v389 = v388;
                                  v390 = v421;
                                  if (!v421)
                                  {
                                    v390 = [v32 artworkCatalog];
                                  }

                                  v391 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                                  swift_beginAccess();
                                  v392 = *(v389 + v391);
                                  *(v389 + v391) = v390;
                                  v393 = v421;
                                  v394 = v390;

                                  sub_74EA4(v390);
                                  v395 = &v437;
                                }

                                else
                                {

                                  v395 = &v436;
                                }

                                v125 = v387;
                                v143 = 5;
                                goto LABEL_355;
                              }
                            }

                            type metadata accessor for RadioStationCell();
                            v396 = swift_dynamicCastClass();
                            if (!v396)
                            {

                              v341 = &v437;
                              goto LABEL_353;
                            }

                            v275 = v396;
                            v276 = [v103 backgroundArtworkCatalog];
                            if (v276)
                            {
                              goto LABEL_350;
                            }

                            goto LABEL_349;
                          }

                          goto LABEL_119;
                        }

                        v155 = [v32 artworkCatalog];
                        if (!v155)
                        {
                          v155 = [v32 tracksTiledArtworkCatalogWithRows:2 columns:2];
                        }

                        v156 = v420;
                        if (v422)
                        {
                          if ([v422 v17[196]] == &dword_0 + 3)
                          {
                            type metadata accessor for CustomRoomAlbumCell();
                            v157 = swift_dynamicCastClass();
                            if (v157)
                            {
                              v158 = v157;
                              v159 = v32;
                              v160 = [v156 backgroundArtworkCatalog];
                              if (!v160)
                              {
                                v161 = v155;
                                v160 = v155;
                              }

                              v162 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                              swift_beginAccess();
                              v163 = *(v158 + v162);
                              *(v158 + v162) = v160;
                              v164 = v160;

                              sub_74EA4(v160);
LABEL_310:

                              v125 = v159;
                              v143 = 4;
                              goto LABEL_355;
                            }

                            goto LABEL_305;
                          }

                          if ([v422 v17[196]] == &dword_4 + 1)
                          {
                            type metadata accessor for ShowcaseCell();
                            v233 = swift_dynamicCastClass();
                            if (v233)
                            {
LABEL_177:
                              v234 = v233;
                              v235 = v32;
                              v236 = [v156 backgroundArtworkCatalog];
                              if (!v236)
                              {
                                v237 = v155;
                                v236 = v155;
                              }

                              v238 = *(v234 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                              *(v234 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v236;
                              v239 = v236;

                              sub_74EA4(v236);
LABEL_304:

                              v125 = v235;
                              v143 = 4;
                              goto LABEL_355;
                            }

LABEL_305:

                            v355 = &v436;
LABEL_312:

                            v125 = v32;
                            v143 = 4;
                            goto LABEL_355;
                          }

                          if ([v422 v17[196]] == &dword_4 + 3)
                          {
                            type metadata accessor for PosterCell();
                            v284 = swift_dynamicCastClass();
                            if (v284)
                            {
                              v285 = v284;
                              v286 = v32;
                              v287 = v421;
                              if (!v421)
                              {
                                v288 = v155;
                                v287 = v155;
                              }

                              v289 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                              swift_beginAccess();
                              v290 = *(v285 + v289);
                              *(v285 + v289) = v287;
                              v291 = v421;
                              v292 = v287;

                              sub_74EA4(v287);
                              v125 = v286;
                              v143 = 4;
                              goto LABEL_355;
                            }

                            goto LABEL_305;
                          }

                          if ([v422 v17[196]] == &dword_4 + 2)
                          {
                            type metadata accessor for FeaturedRadioShowCell();
                            v233 = swift_dynamicCastClass();
                            if (v233)
                            {
                              goto LABEL_177;
                            }

                            goto LABEL_305;
                          }
                        }

                        if (sub_4B306C())
                        {
                          type metadata accessor for PlaylistCell();
                          v349 = swift_dynamicCastClass();
                          if (v349)
                          {
                            v350 = v349;
                            v235 = v32;
                            v351 = [v156 backgroundArtworkCatalog];
                            if (!v351)
                            {
                              v352 = v155;
                              v351 = v155;
                            }

                            v353 = *(v350 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                            *(v350 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v351;
                            v354 = v351;

                            sub_74EA4(v351);
                            goto LABEL_304;
                          }
                        }

                        else
                        {
                          type metadata accessor for AlbumCell();
                          v356 = swift_dynamicCastClass();
                          if (v356)
                          {
                            v357 = v356;
                            v159 = v32;
                            v358 = [v156 backgroundArtworkCatalog];
                            if (!v358)
                            {
                              v359 = v155;
                              v358 = v155;
                            }

                            v360 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                            swift_beginAccess();
                            v361 = *(v357 + v360);
                            *(v357 + v360) = v358;
                            v362 = v358;

                            sub_74EA4(v358);
                            goto LABEL_310;
                          }
                        }

                        v355 = &v437;
                        goto LABEL_312;
                      }

                      v144 = v29;
                      v145 = [v420 backgroundArtworkCatalog];
                      if (!v145)
                      {
                        v145 = [v32 editorialArtworkCatalog];
                      }

                      if (v422)
                      {
                        if ([v422 v17[196]] == &dword_0 + 1)
                        {
                          type metadata accessor for AlbumCell();
                          v146 = swift_dynamicCastClass();
                          if (!v146)
                          {
                            goto LABEL_278;
                          }

                          goto LABEL_329;
                        }

                        if ([v422 v17[196]] == &dword_0 + 2)
                        {
                          if (sub_4B306C())
                          {
                            type metadata accessor for PersonHorizontalCell();
                            v208 = swift_dynamicCastClass();
                            if (v208)
                            {
                              v209 = *(v208 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                              *(v208 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v145;
                              v210 = v32;
                              v211 = v145;

                              sub_74EA4(v145);
                              sub_15D5A0();

LABEL_331:
                              v378 = v210;
LABEL_340:
                              sub_3EB30(v378, 3);
                              goto LABEL_341;
                            }

LABEL_278:

LABEL_324:
                            v373 = &v436;
LABEL_339:

                            v378 = v32;
                            goto LABEL_340;
                          }

                          type metadata accessor for PersonVerticalCell();
                          v330 = swift_dynamicCastClass();
                          if (!v330)
                          {
                            goto LABEL_278;
                          }

                          v331 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                          v332 = v330;
                          swift_beginAccess();
                          v333 = *(v332 + v331);
                          *(v332 + v331) = v145;
                          v334 = v32;
                          v335 = v145;

                          sub_74EA4(v145);
                          sub_1FD4B0();

LABEL_337:
                          sub_3EB30(v334, 3);
LABEL_341:
                          swift_unknownObjectRelease();

                          return;
                        }

                        if ([v422 v17[196]] == &dword_4 + 1)
                        {
                          type metadata accessor for ShowcaseCell();
                          goto LABEL_277;
                        }

                        if ([v422 v17[196]] == &dword_4 + 2)
                        {
                          type metadata accessor for FeaturedRadioShowCell();
LABEL_277:
                          v336 = swift_dynamicCastClass();
                          if (!v336)
                          {
                            goto LABEL_278;
                          }

LABEL_323:
                          v371 = *(v336 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                          *(v336 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v145;
                          v372 = v145;

                          sub_74EA4(v145);
                          goto LABEL_324;
                        }

                        if ([v422 v17[196]] == &dword_4 + 3)
                        {
                          v363 = v32;
                          type metadata accessor for PosterCell();
                          v364 = swift_dynamicCastClass();
                          if (v364)
                          {
                            v365 = v364;
                            v366 = v421;
                            if (!v421)
                            {
                              v366 = [v32 editorialArtworkCatalog];
                            }

                            v367 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                            swift_beginAccess();
                            v368 = *(v365 + v367);
                            *(v365 + v367) = v366;
                            v369 = v421;
                            v370 = v366;

                            sub_74EA4(v366);
                          }

                          else
                          {
                          }

                          sub_3EB30(v363, 3);
                          goto LABEL_341;
                        }
                      }

                      if ([v32 curatorKind] == &dword_0 + 3)
                      {
                        if (sub_4B306C())
                        {
                          type metadata accessor for PlaylistCell();
                          v336 = swift_dynamicCastClass();
                          if (v336)
                          {
                            goto LABEL_323;
                          }

LABEL_338:

                          v373 = &v437;
                          goto LABEL_339;
                        }

                        type metadata accessor for CuratorActivityCell();
                      }

                      else
                      {
                        if ([v32 curatorKind] != &dword_0 + 1)
                        {
                          if (sub_4B306C())
                          {
                            type metadata accessor for PersonHorizontalCell();
                            v379 = swift_dynamicCastClass();
                            if (v379)
                            {
                              v380 = *(v379 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                              *(v379 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v145;
                              v210 = v32;
                              v381 = v145;

                              sub_74EA4(v145);
                              sub_15D5A0();

                              goto LABEL_330;
                            }
                          }

                          else
                          {
                            type metadata accessor for PersonVerticalCell();
                            v382 = swift_dynamicCastClass();
                            if (v382)
                            {
                              v383 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                              v384 = v382;
                              swift_beginAccess();
                              v385 = *(v384 + v383);
                              *(v384 + v383) = v145;
                              v334 = v32;
                              v386 = v145;

                              sub_74EA4(v145);
                              sub_1FD4B0();

                              goto LABEL_337;
                            }
                          }

                          goto LABEL_338;
                        }

                        type metadata accessor for RadioShowCell();
                      }

                      v146 = swift_dynamicCastClass();
                      if (v146)
                      {
LABEL_329:
                        v374 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                        v375 = v146;
                        swift_beginAccess();
                        v210 = v32;
                        v376 = *(v375 + v374);
                        *(v375 + v374) = v145;
                        v377 = v145;

                        sub_74EA4(v145);
LABEL_330:

                        goto LABEL_331;
                      }

                      goto LABEL_338;
                    }

                    if (v33)
                    {
                      v102 = v422;
                      if (v33 == 1)
                      {
                        v116 = v420;
                        if (!v422)
                        {
                          goto LABEL_134;
                        }

                        if ([v422 v17[196]] == &dword_0 + 3)
                        {
                          type metadata accessor for CustomRoomAlbumCell();
                          v117 = swift_dynamicCastClass();
                          if (v117)
                          {
                            v118 = v117;
                            v119 = [v116 backgroundArtworkCatalog];
                            if (!v119)
                            {
                              v119 = [v32 artworkCatalog];
                            }

                            v120 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                            swift_beginAccess();
                            v121 = v32;
                            v122 = *(v118 + v120);
                            *(v118 + v120) = v119;
                            v123 = v119;

                            sub_74EA4(v119);
                            sub_ABA670();
                            v124 = sub_ABA680();
                            (*(*(v124 - 8) + 56))(v4, 0, 1, v124);
                            VerticalLockupCollectionViewCell.artworkCornerTreatment.setter(v4);

                            v125 = v121;
                          }

                          else
                          {

                            v125 = v32;
                          }

                          goto LABEL_238;
                        }

                        if ([v422 v17[196]] == &dword_4 + 3)
                        {
                          type metadata accessor for PosterCell();
                          v182 = swift_dynamicCastClass();
                          if (v182)
                          {
                            v183 = v182;
                            v184 = v421;
                            if (!v421)
                            {
                              v184 = [v32 artworkCatalog];
                            }

                            v185 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                            swift_beginAccess();
                            v186 = *(v183 + v185);
                            *(v183 + v185) = v184;
                            v187 = v32;
                            v188 = v421;
                            v189 = v184;

                            sub_74EA4(v184);
                            v190 = &v437;
LABEL_189:

                            v125 = v187;
LABEL_238:
                            v143 = 1;
                            goto LABEL_355;
                          }

                          v254 = &v436;
                        }

                        else
                        {
LABEL_134:
                          if (sub_4B306C())
                          {
                            type metadata accessor for PersonHorizontalCell();
                            v191 = swift_dynamicCastClass();
                            if (v191)
                            {
                              v192 = v191;
                              v193 = [v116 backgroundArtworkCatalog];
                              if (!v193)
                              {
                                v193 = [v32 artworkCatalog];
                              }

                              v194 = *(v192 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                              *(v192 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v193;
                              v195 = v193;
                              v196 = v32;
                              v197 = v193;

                              sub_74EA4(v195);
                              sub_15D5A0();

                              v125 = v196;
                              v143 = 1;
                              goto LABEL_355;
                            }
                          }

                          else
                          {
                            type metadata accessor for PersonVerticalCell();
                            v247 = swift_dynamicCastClass();
                            if (v247)
                            {
                              v248 = v247;
                              v249 = [v116 backgroundArtworkCatalog];
                              if (!v249)
                              {
                                v249 = [v32 artworkCatalog];
                              }

                              v250 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                              swift_beginAccess();
                              v251 = *(v248 + v250);
                              *(v248 + v250) = v249;
                              v187 = v32;
                              v252 = v249;

                              sub_74EA4(v249);
                              sub_1FD4B0();

                              v190 = &v436;
                              goto LABEL_189;
                            }
                          }

                          v254 = &v437;
                        }

                        v125 = v32;
                        v143 = 1;
                        goto LABEL_355;
                      }

LABEL_119:

                      v125 = v32;
                      v143 = v33;
                      goto LABEL_355;
                    }

                    v132 = v420;
                    if (v422)
                    {
                      if ([v422 v17[196]] == &dword_0 + 3)
                      {
                        type metadata accessor for CustomRoomAlbumCell();
                        v133 = swift_dynamicCastClass();
                        if (v133)
                        {
                          v134 = v133;
                          v135 = v32;
                          v136 = [v132 backgroundArtworkCatalog];
                          if (!v136)
                          {
                            goto LABEL_267;
                          }

                          goto LABEL_268;
                        }

                        goto LABEL_269;
                      }

                      if ([v422 v17[196]] == &dword_4 + 1)
                      {
                        type metadata accessor for ShowcaseCell();
                        v201 = swift_dynamicCastClass();
                        if (v201)
                        {
                          v202 = v201;
                          v203 = [v132 backgroundArtworkCatalog];
                          if (!v203)
                          {
                            v203 = [v32 artworkCatalog];
                          }

                          v204 = *(v202 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                          *(v202 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v203;
                          v205 = v32;
LABEL_148:
                          v206 = v203;
                          v207 = v203;

                          sub_74EA4(v206);
                          v125 = v205;
LABEL_272:
                          v143 = 0;
                          goto LABEL_355;
                        }

                        goto LABEL_269;
                      }

                      if ([v422 v17[196]] == &dword_4 + 3)
                      {
                        type metadata accessor for PosterCell();
                        v266 = swift_dynamicCastClass();
                        if (v266)
                        {
                          v267 = v266;
                          v268 = v421;
                          if (!v421)
                          {
                            v268 = [v32 artworkCatalog];
                          }

                          v269 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                          swift_beginAccess();
                          v270 = *(v267 + v269);
                          *(v267 + v269) = v268;
                          v271 = v32;
                          v272 = v421;
                          v273 = v268;

                          sub_74EA4(v268);
                          v125 = v271;
                          v143 = 0;
                          goto LABEL_355;
                        }

                        goto LABEL_269;
                      }

                      if ([v422 v17[196]] == &dword_4 + 2)
                      {
                        type metadata accessor for FeaturedRadioShowCell();
                        v323 = swift_dynamicCastClass();
                        if (v323)
                        {
                          v324 = v323;
                          v205 = v32;
                          v203 = [v132 backgroundArtworkCatalog];
                          if (!v203)
                          {
                            v203 = [v32 artworkCatalog];
                          }

                          v204 = *(v324 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                          *(v324 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v203;
                          goto LABEL_148;
                        }

LABEL_269:

                        v329 = &v436;
LABEL_271:

                        v125 = v32;
                        goto LABEL_272;
                      }
                    }

                    type metadata accessor for AlbumCell();
                    v325 = swift_dynamicCastClass();
                    if (v325)
                    {
                      v134 = v325;
                      v135 = v32;
                      v136 = [v132 backgroundArtworkCatalog];
                      if (!v136)
                      {
LABEL_267:
                        v136 = [v135 artworkCatalog];
                      }

LABEL_268:
                      v326 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                      swift_beginAccess();
                      v327 = *(v134 + v326);
                      *(v134 + v326) = v136;
                      v328 = v136;

                      sub_74EA4(v136);
                      v125 = v135;
                      v143 = 0;
                      goto LABEL_355;
                    }

                    v329 = &v437;
                    goto LABEL_271;
                  }

                  v102 = v422;
                  if (v33 > 7u)
                  {
                    if (v33 != 8)
                    {
                      if (v33 != 9)
                      {
                        if (v33 != 12)
                        {
                          goto LABEL_119;
                        }

                        v108 = v420;
                        if (v422)
                        {
                          if ([v422 v17[196]] == &dword_0 + 1)
                          {
                            type metadata accessor for AlbumCell();
                            v109 = swift_dynamicCastClass();
                            if (v109)
                            {
                              v110 = v109;
                              v111 = v32;
                              v112 = [v108 backgroundArtworkCatalog];
                              if (!v112)
                              {
                                v112 = [v111 artworkCatalog];
                              }

                              v113 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                              swift_beginAccess();
                              v114 = *(v110 + v113);
                              *(v110 + v113) = v112;
                              v115 = v112;

                              goto LABEL_174;
                            }

                            goto LABEL_293;
                          }

                          if ([v422 v17[196]] == &dword_4)
                          {
                            type metadata accessor for TVShowCell();
                            v227 = swift_dynamicCastClass();
                            if (v227)
                            {
                              v228 = v227;
                              v111 = v32;
                              v229 = [v108 backgroundArtworkCatalog];
                              if (v229 || (v229 = [v108 editorialArtworkCatalog]) != 0)
                              {
                                v112 = v229;
                              }

                              else
                              {
                                v112 = [v32 editorialArtworkCatalog];
                              }

                              v230 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_lockupImageArtworkCatalog;
                              swift_beginAccess();
                              v231 = *(v228 + v230);
                              *(v228 + v230) = v112;
                              v232 = v112;

LABEL_174:
                              sub_74EA4(v112);

                              v125 = v111;
                              v143 = 12;
                              goto LABEL_355;
                            }

                            goto LABEL_293;
                          }

                          if ([v422 v17[196]] == &dword_4 + 1)
                          {
                            type metadata accessor for ShowcaseCell();
                            v277 = swift_dynamicCastClass();
                            if (v277)
                            {
                              v278 = v277;
                              v279 = [v108 editorialArtworkCatalog];
                              if (!v279)
                              {
                                v279 = [v32 editorialArtworkCatalog];
                              }

                              v280 = *(v278 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                              *(v278 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v279;
                              v281 = v32;
                              v282 = v279;
                              v283 = v279;

                              sub_74EA4(v282);
                              v125 = v281;
                              v143 = 12;
                              goto LABEL_355;
                            }

                            goto LABEL_293;
                          }

                          if ([v422 v17[196]] == &dword_4 + 3)
                          {
                            type metadata accessor for PosterCell();
                            v342 = swift_dynamicCastClass();
                            if (v342)
                            {
                              v343 = v342;
                              v344 = v32;
                              if (v421)
                              {
                                v345 = v421;
                              }

                              else
                              {
                                v345 = [v32 artworkCatalog];
                                v421 = 0;
                              }

                              v399 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                              swift_beginAccess();
                              v400 = *(v343 + v399);
                              *(v343 + v399) = v345;
                              v401 = v421;
                              v402 = v345;

                              sub_74EA4(v345);
                              v125 = v344;
                              v143 = 12;
                              goto LABEL_355;
                            }

                            goto LABEL_293;
                          }
                        }

                        type metadata accessor for TVShowEpisodeCell();
                        if (!swift_dynamicCastClass())
                        {

                          v348 = &v437;
                          goto LABEL_295;
                        }

                        v346 = [v108 backgroundArtworkCatalog];
                        if (!v346)
                        {
                          v346 = [v32 editorialArtworkCatalog];
                        }

                        v347 = v346;
                        sub_43CB7C(v346);

LABEL_293:
                        v348 = &v436;
LABEL_295:

                        v125 = v32;
                        v143 = 12;
                        goto LABEL_355;
                      }

                      v165 = v420;
                      if (v422)
                      {
                        if ([v422 v17[196]] == &dword_0 + 1)
                        {
                          type metadata accessor for AlbumCell();
                          v166 = swift_dynamicCastClass();
                          if (v166)
                          {
                            v167 = v166;
                            v168 = v32;
                            v169 = [v165 backgroundArtworkCatalog];
                            if (!v169)
                            {
                              v169 = [v168 artworkCatalog];
                            }

                            v170 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                            swift_beginAccess();
                            v171 = *(v167 + v170);
                            *(v167 + v170) = v169;
                            v172 = v169;

LABEL_233:
                            sub_74EA4(v169);

                            v125 = v168;
                            v143 = 9;
                            goto LABEL_355;
                          }

                          goto LABEL_234;
                        }

                        if ([v422 v17[196]] == &dword_4 + 1)
                        {
                          type metadata accessor for ShowcaseCell();
                          v240 = swift_dynamicCastClass();
                          if (v240)
                          {
                            v241 = v240;
                            v242 = [v165 backgroundArtworkCatalog];
                            if (!v242)
                            {
                              v242 = [v32 editorialArtworkCatalog];
                            }

                            v243 = *(v241 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                            *(v241 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v242;
                            v244 = v32;
                            v245 = v242;
                            v246 = v242;

                            sub_74EA4(v245);
                            v125 = v244;
                            v143 = 9;
                            goto LABEL_355;
                          }

                          goto LABEL_234;
                        }

                        if ([v422 v17[196]] == &dword_4 + 3)
                        {
                          type metadata accessor for PosterCell();
                          v293 = swift_dynamicCastClass();
                          if (v293)
                          {
                            v294 = v293;
                            v295 = v421;
                            if (!v421)
                            {
                              v295 = [v32 artworkCatalog];
                            }

                            v296 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                            swift_beginAccess();
                            v297 = *(v294 + v296);
                            *(v294 + v296) = v295;
                            v298 = v32;
                            v299 = v421;
                            v300 = v295;

                            sub_74EA4(v295);
                            v125 = v298;
                            v143 = 9;
                            goto LABEL_355;
                          }

LABEL_234:

                          v306 = &v436;
                          goto LABEL_236;
                        }
                      }

                      type metadata accessor for TVShowCell();
                      v301 = swift_dynamicCastClass();
                      if (v301)
                      {
                        v302 = v301;
                        v168 = v32;
                        v169 = [v165 backgroundArtworkCatalog];
                        if (!v169)
                        {
                          v169 = [v168 editorialArtworkCatalog];
                        }

                        v303 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_lockupImageArtworkCatalog;
                        swift_beginAccess();
                        v304 = *(v302 + v303);
                        *(v302 + v303) = v169;
                        v305 = v169;

                        goto LABEL_233;
                      }

                      v306 = &v437;
LABEL_236:

                      v125 = v32;
                      v143 = 9;
                      goto LABEL_355;
                    }

                    v147 = v420;
                    if (!v422)
                    {
                      goto LABEL_158;
                    }

                    if ([v422 v17[196]] == &dword_4 + 1)
                    {
                      type metadata accessor for ShowcaseCell();
                      v148 = swift_dynamicCastClass();
                      if (v148)
                      {
                        v149 = v148;
                        v150 = [v147 backgroundArtworkCatalog];
                        if (!v150)
                        {
                          v150 = [v32 artworkCatalog];
                        }

                        v151 = *(v149 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                        *(v149 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v150;
                        v152 = v32;
                        v153 = v150;
                        v154 = v150;

                        sub_74EA4(v153);
                        v125 = v152;
                        v143 = 8;
                        goto LABEL_355;
                      }

                      goto LABEL_162;
                    }

                    if ([v422 v17[196]] == &dword_4 + 3)
                    {
                      type metadata accessor for PosterCell();
                      v212 = swift_dynamicCastClass();
                      if (v212)
                      {
                        v213 = v212;
                        v214 = v421;
                        if (!v421)
                        {
                          v214 = [v32 artworkCatalog];
                        }

                        v215 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                        swift_beginAccess();
                        v216 = *(v213 + v215);
                        *(v213 + v215) = v214;
                        v217 = v32;
                        v218 = v421;
                        v219 = v214;

                        sub_74EA4(v214);
                        v125 = v217;
                        v143 = 8;
                        goto LABEL_355;
                      }
                    }

                    else
                    {
LABEL_158:
                      type metadata accessor for TVShowEpisodeCell();
                      if (!swift_dynamicCastClass())
                      {

                        v222 = &v437;
                        goto LABEL_193;
                      }

                      v220 = [v147 backgroundArtworkCatalog];
                      if (!v220)
                      {
                        v220 = [v32 artworkCatalog];
                      }

                      v221 = v220;
                      sub_43CB7C(v220);
                    }

LABEL_162:

                    v222 = &v436;
LABEL_193:

                    v125 = v32;
                    v143 = 8;
                    goto LABEL_355;
                  }

                  if (v33 == 6)
                  {
                    if (v422 && [v422 v17[196]] == &dword_0 + 2)
                    {
                      type metadata accessor for PersonVerticalCell();
                      v137 = swift_dynamicCastClass();
                      if (v137)
                      {
                        v138 = [v420 backgroundArtworkCatalog];
                        if (!v138)
                        {
                          v138 = [v32 artworkCatalog];
                        }

                        v139 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                        swift_beginAccess();
                        v140 = *(v137 + v139);
                        *(v137 + v139) = v138;
                        v141 = v32;
                        v142 = v138;

                        sub_74EA4(v138);
                        sub_1FD4B0();

                        v125 = v141;
                        v143 = 6;
                        goto LABEL_355;
                      }

                      v253 = &v436;
                    }

                    else
                    {
                      type metadata accessor for SocialPersonHorizontalCell();
                      v173 = swift_dynamicCastClass();
                      if (v173)
                      {
                        v174 = [v420 backgroundArtworkCatalog];
                        if (!v174)
                        {
                          v174 = [v32 artworkCatalog];
                        }

                        v175 = *(v173 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                        *(v173 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v174;
                        v176 = v174;
                        v177 = v32;
                        v178 = v174;

                        sub_74EA4(v176);
                        sub_B0D4C();

                        v125 = v177;
                        v143 = 6;
                        goto LABEL_355;
                      }

                      v253 = &v437;
                    }

                    v125 = v32;
                    v143 = 6;
LABEL_355:
                    sub_3EB30(v125, v143);
                    swift_unknownObjectRelease();

                    return;
                  }

                  if (v33 != 7)
                  {
                    goto LABEL_119;
                  }

                  if (v422)
                  {
                    v126 = [v422 v17[196]];
                    v127 = v420;
                    if (v126 == &dword_0 + 3)
                    {
                      if ([v32 hasVideo])
                      {
                        type metadata accessor for CustomRoomMusicVideoCell();
                        v128 = swift_dynamicCastClass();
                        if (v128)
                        {
                          v129 = v128;
                          v130 = v32;
                          v131 = [v127 backgroundArtworkCatalog];
                          if (!v131)
                          {
                            goto LABEL_243;
                          }

                          goto LABEL_244;
                        }
                      }

                      else
                      {
                        type metadata accessor for CustomRoomAlbumCell();
                        v255 = swift_dynamicCastClass();
                        if (v255)
                        {
                          v129 = v255;
                          v130 = v32;
                          v131 = [v127 backgroundArtworkCatalog];
                          if (!v131)
                          {
                            goto LABEL_243;
                          }

                          goto LABEL_244;
                        }
                      }

                      goto LABEL_202;
                    }

                    if ([v422 v17[196]] == &dword_4 + 1)
                    {
                      type metadata accessor for ShowcaseCell();
                      v198 = swift_dynamicCastClass();
                      if (v198)
                      {
                        v199 = v198;
                        v200 = [v127 backgroundArtworkCatalog];
                        if (!v200)
                        {
                          goto LABEL_256;
                        }

                        goto LABEL_257;
                      }

LABEL_202:

                      v265 = &v436;
LABEL_259:

                      v125 = v32;
                      v143 = 7;
                      goto LABEL_355;
                    }

                    if ([v422 v17[196]] == &dword_4 + 3)
                    {
                      type metadata accessor for PosterCell();
                      v256 = swift_dynamicCastClass();
                      if (!v256)
                      {
                        goto LABEL_202;
                      }

                      v257 = v256;
                      v258 = v421;
                      if (!v421)
                      {
                        v258 = [v32 artworkCatalog];
                      }

                      v259 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                      swift_beginAccess();
                      v260 = *(v257 + v259);
                      *(v257 + v259) = v258;
                      v261 = v32;
                      v262 = v421;
                      v263 = v258;

                      sub_74EA4(v258);
                      v264 = &v437;
LABEL_253:

                      v125 = v261;
                      v143 = 7;
                      goto LABEL_355;
                    }

                    if ([v32 hasVideo])
                    {
                      if ([v422 v17[196]] == &dword_4)
                      {
                        v261 = v32;
                        type metadata accessor for TVShowCell();
                        v311 = swift_dynamicCastClass();
                        if (v311)
                        {
                          v312 = v311;
                          v313 = [v420 backgroundArtworkCatalog];
                          if (!v313)
                          {
                            v313 = [v420 editorialArtworkCatalog];
                            if (!v313)
                            {
                              v313 = [v32 artworkCatalog];
                            }
                          }

                          v314 = v313;
                          v315 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_lockupImageArtworkCatalog;
                          swift_beginAccess();
                          v316 = *(v312 + v315);
                          *(v312 + v315) = v314;
                          v317 = v314;

                          sub_74EA4(v314);
                        }

                        v264 = &v436;
                        goto LABEL_253;
                      }

                      goto LABEL_125;
                    }
                  }

                  else
                  {
                    v179 = [v32 hasVideo];
                    v127 = v420;
                    if (v179)
                    {
LABEL_125:
                      v180 = sub_AB37F0();
                      if (sub_4B808C(v180))
                      {
                        type metadata accessor for RankedMusicVideoVerticalCell();
                        v181 = swift_dynamicCastClass();
                        if (v181)
                        {
                          v129 = v181;
                          v130 = v32;
                          v131 = [v127 backgroundArtworkCatalog];
                          if (!v131)
                          {
                            goto LABEL_243;
                          }

                          goto LABEL_244;
                        }
                      }

                      else
                      {
                        type metadata accessor for FeaturedMusicVideoVerticalCell();
                        v307 = swift_dynamicCastClass();
                        if (v307)
                        {
                          v129 = v307;
                          v130 = v32;
                          v131 = [v127 backgroundArtworkCatalog];
                          if (!v131)
                          {
LABEL_243:
                            v131 = [v130 artworkCatalog];
                          }

LABEL_244:
                          v308 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                          swift_beginAccess();
                          v309 = *(v129 + v308);
                          *(v129 + v308) = v131;
                          v310 = v131;

                          sub_74EA4(v131);
                          v125 = v130;
                          v143 = 7;
                          goto LABEL_355;
                        }
                      }

                      goto LABEL_258;
                    }
                  }

                  type metadata accessor for SongCell();
                  v318 = swift_dynamicCastClass();
                  if (v318)
                  {
                    v199 = v318;
                    v200 = [v127 backgroundArtworkCatalog];
                    if (!v200)
                    {
LABEL_256:
                      v200 = [v32 artworkCatalog];
                    }

LABEL_257:
                    v319 = *(v199 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                    *(v199 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v200;
                    v320 = v32;
                    v321 = v200;
                    v322 = v200;

                    sub_74EA4(v321);
                    v125 = v320;
                    v143 = 7;
                    goto LABEL_355;
                  }

LABEL_258:

                  v265 = &v437;
                  goto LABEL_259;
                }
              }

              if (v422)
              {
                if ([v422 v17[196]] == &dword_4 + 3)
                {
                  type metadata accessor for PosterCell();
                  v45 = swift_dynamicCastClass();
                  if (v45)
                  {
                    v46 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                    v47 = v45;
                    swift_beginAccess();
                    v48 = *(v47 + v46);
                    *(v47 + v46) = v421;
                    v49 = v421;

                    sub_74EA4(v421);
                    swift_unknownObjectRelease();

                    return;
                  }
                }

                swift_unknownObjectRelease();

                v44 = &v436;
              }

              else
              {
                swift_unknownObjectRelease();
                v44 = &v436;
              }

              goto LABEL_28;
            }

            swift_unknownObjectRelease();
          }
        }

        v44 = &v437;
LABEL_28:
        v6 = *(v44 - 32);
        goto LABEL_29;
      }

      swift_unknownObjectRelease();
    }

    v6 = 0;
    v10 = *&v1[v5];
    if (v10)
    {
      goto LABEL_9;
    }
  }

LABEL_29:
}

uint64_t sub_4BBF2C()
{
}

uint64_t sub_4BC00C(uint64_t a1)
{
}

uint64_t type metadata accessor for JSGridViewController()
{
  result = qword_E0A890;
  if (!qword_E0A890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_4BC220()
{
  v1 = (*v0 + qword_E0A860);
  v3 = *v1;
  v2 = v1[1];
  v4 = type metadata accessor for SocialProfilesFlowCollectionViewLayout();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC16MusicApplication38SocialProfilesFlowCollectionViewLayout_socialProfilesHelper];
  *v6 = v3;
  *(v6 + 1) = v2;
  v9.receiver = v5;
  v9.super_class = v4;

  v7 = objc_msgSendSuper2(&v9, "init");
  sub_4A8388(v7);

  return v7;
}

void sub_4BC3C8()
{
  v1 = *v0;
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

double sub_4BC474@<D0>(_OWORD *a1@<X8>)
{
  sub_4B2998(v7);
  v2 = v7[7];
  a1[6] = v7[6];
  a1[7] = v2;
  a1[8] = v8[0];
  *(a1 + 137) = *(v8 + 9);
  v3 = v7[3];
  a1[2] = v7[2];
  a1[3] = v3;
  v4 = v7[5];
  a1[4] = v7[4];
  a1[5] = v4;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  a1[1] = v6;
  return result;
}

id sub_4BC530(double a1, double a2, double a3, double a4)
{
  v16.receiver = v4;
  v16.super_class = type metadata accessor for SocialProfilesFlowCollectionViewLayout();
  result = objc_msgSendSuper2(&v16, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (result)
  {
    v10 = result;
    sub_13C80(0, &qword_E04510);
    v11 = sub_AB9760();

    v12 = *&v4[OBJC_IVAR____TtC16MusicApplication38SocialProfilesFlowCollectionViewLayout_socialProfilesHelper];
    v13 = *&v4[OBJC_IVAR____TtC16MusicApplication38SocialProfilesFlowCollectionViewLayout_socialProfilesHelper + 8];

    v15 = sub_3AF124(v14, v12, v13);

    sub_199C0(v15);
    return v11;
  }

  return result;
}

id sub_4BC6D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC16MusicApplication38SocialProfilesFlowCollectionViewLayout_socialProfilesHelper] == a1 && *&v2[OBJC_IVAR____TtC16MusicApplication38SocialProfilesFlowCollectionViewLayout_socialProfilesHelper + 8] == a2;
  if (!v4 && (sub_ABB3C0() & 1) == 0)
  {
    v11 = sub_AB9260();
    isa = sub_AB3770().super.isa;
    v13.receiver = v3;
    v13.super_class = type metadata accessor for SocialProfilesFlowCollectionViewLayout();
    v7 = objc_msgSendSuper2(&v13, "layoutAttributesForSupplementaryViewOfKind:atIndexPath:", v11, isa);

    goto LABEL_10;
  }

  v5 = sub_AB9260();
  v6 = sub_AB3770().super.isa;
  v7 = [objc_opt_self() layoutAttributesForSupplementaryViewOfKind:v5 withIndexPath:v6];

  v8 = sub_AB3770().super.isa;
  isa = [v2 layoutAttributesForItemAtIndexPath:v8];

  if (isa)
  {
    if (v7)
    {
      v10 = v7;
      [(objc_class *)isa frame];
      [v10 setFrame:?];

      return v7;
    }

LABEL_10:
  }

  return v7;
}

void *sub_4BC998(double a1, double a2, double a3, double a4)
{
  v18.receiver = v4;
  v18.super_class = type metadata accessor for SocialProfilesFlowCollectionViewLayout();
  v9 = objc_msgSendSuper2(&v18, "invalidationContextForBoundsChange:", a1, a2, a3, a4);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  [v10 setInvalidateFlowLayoutDelegateMetrics:1];
  v11 = [v4 collectionView];
  if (v11)
  {
    v12 = v11;
    v13 = sub_AB9260();
    v14 = [v12 indexPathsForVisibleSupplementaryElementsOfKind:v13];

    sub_AB3820();
    sub_AB9760();

    v15 = sub_AB9260();
    isa = sub_AB9740().super.isa;
    [v10 invalidateSupplementaryElementsOfKind:v15 atIndexPaths:isa];
  }

  return v10;
}

id sub_4BCBEC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_4BCCA8()
{
  result = qword_E0B390;
  if (!qword_E0B390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0B398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B390);
  }

  return result;
}

uint64_t sub_4BCD0C(uint64_t a1)
{
  *(a1 + 8) = sub_4BDE90(&qword_E0B3C8, type metadata accessor for JSGridViewController);
  result = sub_4BDE90(&qword_E0B3D0, type metadata accessor for JSGridViewController);
  *(a1 + 16) = result;
  return result;
}

void sub_4BCD90(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v75 = a3;
  v5 = sub_AB3430();
  v72 = *(v5 - 8);
  v73 = v5;
  __chkstk_darwin(v5);
  v71 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Metrics.Event.Action(0);
  __chkstk_darwin(v7);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Metrics.Event(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v74 = &v67 - v14;
  v15 = sub_AB3820();
  v77 = *(v15 - 8);
  v78 = v15;
  v16 = __chkstk_darwin(v15);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v67 - v20;
  __chkstk_darwin(v19);
  v23 = &v67 - v22;
  objc_opt_self();
  v79 = a1;
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {
    return;
  }

  v25 = *&v3[qword_DFE2F0];
  if (!v25)
  {
    return;
  }

  v26 = v24;
  swift_unknownObjectRetain();
  v76 = v25;
  [v3 loadViewIfNeeded];
  v27 = *&v3[qword_DFE2F8];
  if (!v27)
  {
    __break(1u);
    goto LABEL_38;
  }

  v28 = [v27 indexPathForCell:v26];
  v29 = v77;
  if (v28)
  {
    v30 = v28;
    sub_AB3790();

    v31 = v78;
    (*(v29 + 32))(v23, v21, v78);
    type metadata accessor for JSGridModelResponse();
    v32 = swift_dynamicCastClass();
    if (!v32)
    {

      (*(v29 + 8))(v23, v31);
      goto LABEL_23;
    }

    v70 = v3;
    v33 = *(v32 + OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults);
    isa = sub_AB3770().super.isa;
    v35 = [v33 itemAtIndexPath:isa];

    if (!v35)
    {
      (*(v29 + 8))(v23, v78);
      goto LABEL_25;
    }

    swift_getObjectType();
    v36 = swift_conformsToProtocol2();
    if (!v36)
    {

      swift_unknownObjectRelease();
      (*(v29 + 8))(v23, v78);
      goto LABEL_23;
    }

    v68 = v36;
    v69 = v35;
    v37 = [v76 results];
    if (v37)
    {
      v38 = v37;
      v39 = sub_AB3770().super.isa;
      v40 = [v38 itemAtIndexPath:v39];

      objc_opt_self();
      v41 = swift_dynamicCastObjCClass();
      if (!v41)
      {

        swift_unknownObjectRelease();
        (*(v29 + 8))(v23, v78);
        swift_unknownObjectRelease();
        goto LABEL_23;
      }

      v42 = [v41 contentItem];
      if (v42)
      {
        v43 = v42;
        v44 = [v42 innerObject];

        if (v44)
        {
          v45 = v75[32];
          if ((v45 & 0xFE) == 0x7A)
          {
LABEL_16:

            (*(v29 + 8))(v23, v78);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
LABEL_23:
            swift_unknownObjectRelease();
            return;
          }

          v46 = v45 >> 1;
          if (v46 <= 125)
          {
            if ((v46 - 62) < 2 || v46 == 125)
            {
              goto LABEL_16;
            }

            goto LABEL_32;
          }

          if (v46 == 127)
          {
            v75 = v40;
          }

          else
          {
            if (v46 != 126)
            {
LABEL_32:
              v75 = v40;
              goto LABEL_33;
            }

            v75 = v40;
          }

LABEL_33:
          swift_storeEnumTagMultiPayload();
          v48 = v10[6];
          v49 = v10[7];
          v50 = v10[8];
          sub_4BE210(v9, v13, type metadata accessor for Metrics.Event.Action);
          v13[v10[5]] = 0;
          *&v13[v48] = v44;
          *&v13[v49] = 0;
          *&v13[v50] = 0;
          v51 = v74;
          sub_4BE210(v13, v74, type metadata accessor for Metrics.Event);
          v52 = v44;
          sub_12B2FC();
          if (v54)
          {
            v55 = v53;
            ObjectType = swift_getObjectType();
            (*(v55 + 8))(ObjectType, v55);
            v58 = v57;
            swift_unknownObjectRelease();
            v59 = swift_getObjectType();
            v60 = v77;
            v61 = v78;
            (*(v77 + 16))(v18, v23, v78);
            sub_4BDE90(&qword_DFAA90, &type metadata accessor for IndexPath);
            sub_ABAD10();
            v62 = v71;
            sub_3B8F68();
            v63 = sub_21CCAC(1, v62, v80, v59, v58);
            (*(v72 + 8))(v62, v73);
            sub_12E1C(v80, &qword_DF2BD0);
            swift_unknownObjectRelease();
          }

          else
          {
            v63 = 0;
            v60 = v77;
            v61 = v78;
          }

          v64 = swift_getObjectType();
          sub_12AFE8();
          v66 = v65;
          (*(v68 + 8))(v51, v63, v65, v64);

          sub_4BE48C(v51, type metadata accessor for Metrics.Event);
          (*(v60 + 8))(v23, v61);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return;
        }
      }

      (*(v29 + 8))(v23, v78);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
LABEL_25:
      swift_unknownObjectRelease();

      return;
    }

LABEL_38:
    __break(1u);
    return;
  }

  swift_unknownObjectRelease();
  v47 = v76;
}

id sub_4BD5D4(void *a1)
{
  v2 = [a1 backgroundArtworkCatalog];
  v3 = [a1 contentItem];
  if (v3)
  {
    v4 = v3;
    v5 = MPModelStoreBrowseContentItem.kind.getter();
    if (v6 == 0xFF)
    {
LABEL_5:

      return v2;
    }

    if (v2)
    {
LABEL_4:
      sub_3EB30(v5, v6);
      goto LABEL_5;
    }

    if (v6 > 5u)
    {
      if (v6 <= 7u)
      {
        if (v6 == 6)
        {
          v13 = v5;
          v2 = [v5 artworkCatalog];
          v5 = v13;
          v6 = 6;
          goto LABEL_4;
        }

        if (v6 == 7)
        {
          v11 = v5;
          v2 = [v5 artworkCatalog];
          v5 = v11;
          v6 = 7;
          goto LABEL_4;
        }
      }

      else
      {
        switch(v6)
        {
          case 8u:
            v15 = v5;
            v2 = [v5 artworkCatalog];
            v5 = v15;
            v6 = 8;
            goto LABEL_4;
          case 9u:
            v18 = v5;
            v2 = [v5 editorialArtworkCatalog];
            v5 = v18;
            v6 = 9;
            goto LABEL_4;
          case 0xCu:
            v9 = v5;
            v2 = [v5 editorialArtworkCatalog];
            v5 = v9;
            v6 = 12;
            goto LABEL_4;
        }
      }
    }

    else if (v6 <= 2u)
    {
      if (!v6)
      {
        v12 = v5;
        v2 = [v5 artworkCatalog];
        v5 = v12;
        v6 = 0;
        goto LABEL_4;
      }

      if (v6 == 1)
      {
        v10 = v5;
        v2 = [v5 artworkCatalog];
        v5 = v10;
        v6 = 1;
        goto LABEL_4;
      }
    }

    else
    {
      switch(v6)
      {
        case 3u:
          v14 = v5;
          v2 = [v5 editorialArtworkCatalog];
          v5 = v14;
          v6 = 3;
          goto LABEL_4;
        case 4u:
          v16 = v5;
          v17 = [v5 artworkCatalog];
          if (!v17)
          {
            v17 = [v16 tracksTiledArtworkCatalogWithRows:2 columns:2];
          }

          v2 = v17;
          v5 = v16;
          v6 = 4;
          goto LABEL_4;
        case 5u:
          v8 = v5;
          v2 = [v5 artworkCatalog];
          v5 = v8;
          v6 = 5;
          goto LABEL_4;
      }
    }

    sub_3EB30(v5, v6);

    return 0;
  }

  return v2;
}

void sub_4BD880()
{
  *(v0 + qword_E0A768) = 1;
  *(v0 + qword_E0A770) = 0;
  *(v0 + qword_E0A778) = 0;
  *(v0 + qword_E0A780) = 0;
  *(v0 + qword_E0A788) = 0;
  v1 = (v0 + qword_E0A798);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + qword_E0A7A0) = 0;
  v2 = v0 + qword_E0A7A8;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  v3 = v0 + qword_E0A7B0;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v4 = v0 + qword_E0A7B8;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  v5 = v0 + qword_E0A7C0;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  v6 = v0 + qword_E0A7C8;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  v7 = v0 + qword_E0A7D0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  v8 = v0 + qword_E0A7D8;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = v0 + qword_E0A7E0;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  v10 = v0 + qword_E0A7E8;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  v11 = v0 + qword_E0A7F0;
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 1;
  v12 = v0 + qword_E0A7F8;
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  v13 = v0 + qword_E0A800;
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  v14 = v0 + qword_E0A808;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  v15 = v0 + qword_E0A810;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  v16 = v0 + qword_E0A818;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  v17 = v0 + qword_E0A820;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  *(v0 + qword_E0A828) = 2;
  *(v0 + qword_E0A830) = 0;
  *(v0 + qword_E0A838) = 0;
  *(v0 + qword_E0A840) = 0;
  *(v0 + qword_E0A848) = 0;
  *(v0 + qword_E0A850) = 2;
  *(v0 + qword_E0A858) = 3;
  v18 = (v0 + qword_E0A860);
  *v18 = 0xD000000000000015;
  v18[1] = 0x8000000000B48DF0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_4BDAF8(void *a1, uint64_t a2)
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
    sub_4BDE90(&qword_DFAA90, &type metadata accessor for IndexPath);
    sub_ABAD10();
    (*(v12 + 120))(a1, v15, v13, v12);
    sub_8085C(v15);
    result = swift_unknownObjectRelease();
    if (*(v2 + qword_E0A788))
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

uint64_t sub_4BDCF0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_4BDD28()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_4BDD60()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_4BDE2C()
{
  v1 = *(sub_AB3820() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_4B0B30(v2, v3, v4);
}

uint64_t sub_4BDE90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4BDED8()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_4BDFAC()
{
  v1 = *(sub_AB3820() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_4B08F0(v2, v3, v4, v5);
}

uint64_t objectdestroy_183Tm()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_4BE120(uint64_t (*a1)(uint64_t, unint64_t, uint64_t))
{
  v2 = *(sub_AB3820() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v4, v1 + v3, v5);
}

uint64_t sub_4BE1C4()
{

  return swift_deallocObject();
}

uint64_t sub_4BE210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_4BE278()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t block_copy_helper_153(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_4BE3E0()
{

  return swift_deallocObject();
}

uint64_t sub_4BE428()
{

  return swift_deallocObject();
}

uint64_t sub_4BE48C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_4BE4F4()
{

  return swift_deallocObject();
}

uint64_t sub_4BE540()
{

  return swift_deallocObject();
}

uint64_t sub_4BE59C()
{

  return swift_deallocObject();
}

void sub_4BE5E4(void *a1)
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

void sub_4BE74C(void *a1)
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

void sub_4BE8F4(unint64_t a1)
{
  v2 = v1;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = JSGrid.sections.getter();
  if ((v8 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)) > a1)
    {
      v9 = *(v8 + 8 * a1 + 32);
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_25;
  }

  v9 = sub_35FC8C(a1, v8);
LABEL_5:
  v10 = v9;
  v11 = &v9[OBJC_IVAR____TtC11MusicJSCore13JSGridSection_title];
  swift_beginAccess();
  v13 = *v11;
  v12 = *(v11 + 1);

  v14 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v14 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    return;
  }

  v15 = *&v1[qword_DFE2F0];
  if (!v15)
  {
    return;
  }

  v16 = [v15 results];
  if (!v16)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v17 = v16;
  v18 = [v16 sectionAtIndex:a1];

  if (v18)
  {
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (!v19)
    {
      swift_unknownObjectRelease();
      return;
    }

    v20 = v19;
    v21 = *&v2[qword_E0A778];
    v22 = &selRef__authenticateReturningError_;
    if (v21)
    {
      v23 = *&v2[qword_E0A778];
    }

    else
    {
      v44 = qword_E0A778;
      v45 = v19;
      v24 = [objc_allocWithZone(type metadata accessor for TitleSectionHeaderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v25 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_forSizing;
      swift_beginAccess();
      v24[v25] = 1;
      v23 = v24;
      [v23 setHidden:1];
      [v23 setUserInteractionEnabled:0];
      v26 = *&v2[direct field offset for BrowseCollectionViewController.textDrawingCache];
      v27 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textDrawingCache;
      swift_beginAccess();
      *&v23[v27] = v26;

      v22 = &selRef__authenticateReturningError_;

      v28 = [v2 view];
      if (!v28)
      {
LABEL_29:
        __break(1u);
        return;
      }

      v29 = v28;
      [v28 addSubview:v23];

      v30 = *&v2[v44];
      *&v2[v44] = v23;

      v21 = 0;
      v20 = v45;
    }

    v31 = v21;
    sub_AB3810();
    sub_4A80BC(v23, v20);
    (*(v5 + 8))(v7, v4);
    v32 = [v2 v22[342]];
    if (v32)
    {
      v33 = v32;
      [v32 music_inheritedLayoutInsets];
      v35 = v34;
      v37 = v36;

      [v2 loadViewIfNeeded];
      v38 = qword_DFE2F8;
      v39 = *&v2[qword_DFE2F8];
      if (v39)
      {
        [v39 bounds];
        Width = CGRectGetWidth(v46);
        v41 = v23;
        [v2 loadViewIfNeeded];
        v42 = *&v2[v38];
        if (v42)
        {
          [v42 bounds];
          [v41 setFrame:{0.0, 0.0, Width - v35 - v37, CGRectGetHeight(v47)}];

          [v41 layoutIfNeeded];
          swift_unknownObjectRelease();
          return;
        }

        goto LABEL_28;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }
}

uint64_t sub_4BED84(uint64_t a1)
{
  result = sub_4B83D0(a1);
  if ((result & 1) == 0)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = &off_CF1B00;
    v5 = sub_4B8148(a1, sub_4BF00C, v4);

    if ((v5 & 1) == 0)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = &off_CF1B30;
      v7 = sub_4B8148(a1, sub_4BF00C, v6);

      if (v7)
      {
        result = [v1 view];
        if (result)
        {
          v8 = result;
          [result bounds];
          v10 = v9;
          v12 = v11;
          v14 = v13;
          v16 = v15;

          v17.origin.x = v10;
          v17.origin.y = v12;
          v17.size.width = v14;
          v17.size.height = v16;
          CGRectGetWidth(v17);
          sub_471A4();
          return sub_AB38F0();
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}

BOOL sub_4BEF28(void *a1)
{
  v2 = *(v1 + 16);
  v3 = [a1 itemType];
  v4 = *(v2 + 16);
  v5 = (v2 + 32);
  do
  {
    v6 = v4;
    if (v4-- == 0)
    {
      break;
    }

    v8 = *v5++;
  }

  while (v3 != v8);
  return v6 != 0;
}

unint64_t sub_4BF024()
{
  result = qword_E0B4A8;
  if (!qword_E0B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B4A8);
  }

  return result;
}

unint64_t sub_4BF07C()
{
  result = qword_E0B4B0;
  if (!qword_E0B4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B4B0);
  }

  return result;
}

void *sub_4BF128(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3, uint64_t (*a4)(unint64_t, unint64_t))
{
  v6 = v4;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); ; i = sub_ABB060())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v17 = _swiftEmptyArrayStorage;
    sub_ABAEC0();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v11 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v12 = a4(j, a3);
      }

      else
      {
        if (j >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v12 = *(a3 + 8 * j + 32);
      }

      v5 = v12;
      v15 = v12;
      a1(&v16, &v15);
      if (v6)
      {
        goto LABEL_19;
      }

      v6 = 0;

      v5 = v16;
      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      sub_ABAEA0();
      if (v11 == i)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

void *sub_4BF2A8(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v13 = _swiftEmptyArrayStorage;
    sub_ABAEC0();
    v9 = (a3 + 32);
    while (1)
    {
      v10 = *v9++;
      v11 = v10;
      a1(&v12, &v11);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      sub_ABAEA0();
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_4BF394(void (*a1)(void *__return_ptr, char **), uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v29 = a3 & 0xC000000000000001;
  if ((a3 & 0xC000000000000001) == 0)
  {
    goto LABEL_8;
  }

  if (a3 < 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = (a3 & 0xFFFFFFFFFFFFFF8);
  }

  v8 = sub_ABAC50();
  result = _swiftEmptyArrayStorage;
  if (!v8)
  {
    return result;
  }

  v36 = _swiftEmptyArrayStorage;
  sub_ABAEC0();
  v33 = sub_ABAC00();
  v34 = v10;
  v35 = 1;
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    v8 = *(v7 + 16);
    result = _swiftEmptyArrayStorage;
    if (!v8)
    {
      return result;
    }

    v36 = _swiftEmptyArrayStorage;
    sub_ABAEC0();
    v11 = sub_ABABC0();
    v12 = *(v7 + 36);
    v33 = v11;
    v34 = v12;
    v35 = 0;
  }

  v13 = 0;
  v28 = v7 + 56;
  v27 = v7 + 64;
  while (v13 < v8)
  {
    if (__OFADD__(v13++, 1))
    {
      goto LABEL_36;
    }

    v16 = v8;
    v6 = v33;
    v5 = v34;
    LODWORD(v8) = v35;
    v17 = v7;
    sub_4C3A70(v33, v34, v35, v7);
    v4 = v18;
    v32 = v18;
    a1(v31, &v32);
    if (v3)
    {
      goto LABEL_40;
    }

    v4 = v31[0];
    sub_ABAE90();
    sub_ABAED0();
    sub_ABAEE0();
    result = sub_ABAEA0();
    if (v29)
    {
      if (!v8)
      {
        goto LABEL_41;
      }

      if (sub_ABAC20())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0B710);
      v14 = sub_AB9B80();
      sub_ABACB0();
      v14(v31, 0);
      v8 = v16;
      if (v13 == v16)
      {
LABEL_33:
        sub_E1798(v33, v34, v35);
        return v36;
      }
    }

    else
    {
      if (v8)
      {
        goto LABEL_42;
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }

      v19 = 1 << *(v7 + 32);
      if (v6 >= v19)
      {
        goto LABEL_37;
      }

      v20 = v6 >> 6;
      v21 = *(v28 + 8 * (v6 >> 6));
      if (((v21 >> v6) & 1) == 0)
      {
        goto LABEL_38;
      }

      if (*(v7 + 36) != v5)
      {
        goto LABEL_39;
      }

      v22 = v21 & (-2 << (v6 & 0x3F));
      if (v22)
      {
        v19 = __clz(__rbit64(v22)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v8 = v16;
      }

      else
      {
        v4 = (v20 << 6);
        v23 = v20 + 1;
        v24 = (v27 + 8 * v20);
        v8 = v16;
        while (v23 < (v19 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v4 += 64;
          ++v23;
          if (v26)
          {
            sub_E1798(v6, v5, 0);
            v19 = &v4[__clz(__rbit64(v25))];
            goto LABEL_31;
          }
        }

        sub_E1798(v6, v5, 0);
LABEL_31:
        v7 = v17;
      }

      v33 = v19;
      v34 = v5;
      v35 = 0;
      if (v13 == v8)
      {
        goto LABEL_33;
      }
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:

  sub_E1798(v6, v5, v8);

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_4BF700(uint64_t a1, uint64_t *a2)
{
  v17 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF20);
  v16 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  while (v9)
  {
    v13 = v12;
LABEL_10:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    sub_15F84(*(a1 + 48) + *(v16 + 72) * (v14 | (v13 << 6)), v6, &unk_DFEF20);
    sub_4C2464(v6, v17);
    result = sub_12E1C(v6, &unk_DFEF20);
    if (v2)
    {
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(a1 + 56 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_4BF8AC()
{
  sub_AB93F0();
}

uint64_t sub_4BF9E8()
{
  sub_AB93F0();
}

uint64_t sub_4BFB24(uint64_t result, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    v7 = (a4 + 32);
    while (1)
    {
      v8 = *v7++;
      v9 = v8;
      a2(&v10, &v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

uint64_t sub_4BFBA4(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    v5 = [a1 results];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 firstItem];

      if (v7)
      {
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          v9 = v8;
          swift_unknownObjectRetain();
          a3(v9, 0);
          return swift_unknownObjectRelease_n();
        }

        swift_unknownObjectRelease();
      }
    }
  }

  if (a2)
  {
    v11 = a2;
  }

  else
  {
    sub_1CE268();
    v11 = swift_allocError();
    *v12 = 2;
  }

  swift_errorRetain();
  a3(v11, 1);
}

uint64_t sub_4BFCDC@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v8 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - v11;
  type metadata accessor for Search.Item(0);
  sub_1D30D0();
  sub_4C457C(&qword_DF4FB0, type metadata accessor for Search.Item);
  sub_AB5110();
  if (v8 == 8)
  {
    if (!*(a3 + 16))
    {
      return (*(v10 + 32))(a4, v12, v9);
    }

    v6 = *(a3 + 32);
  }

  v44 = v6;
  v13._rawValue = &off_CF07E0;
  v14 = v12;
  sub_AB50D0(v13);
  v15 = v44;
  v16 = [a2 allSections];
  v42 = sub_13C80(0, &qword_DE8050);
  v17 = sub_AB9760();
  v18 = sub_4C00A8(v15, v17);

  if (v18[2])
  {
    v40 = a2;
    v41 = v9;
    v36 = v10;
    v37 = a4;
    v20 = 0;
    v21 = 50;
    if (v15)
    {
      v21 = 0;
    }

    v38 = v21;
    v39 = v12;
    v43 = v18;
    v24 = v18[7];
    v23 = (v18 + 7);
    v22 = v24;
    v25 = 1 << *(v23 - 24);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & v22;
    v28 = (v25 + 63) >> 6;
    if ((v26 & v22) != 0)
    {
      do
      {
        v29 = v20;
LABEL_15:
        v30 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        v31 = *(v43[6] + ((v29 << 9) | (8 * v30)));
        v46 = _swiftEmptyArrayStorage;
        __chkstk_darwin(result);
        *(&v36 - 4) = &v46;
        *(&v36 - 3) = v38;
        *(&v36 - 16) = v32;
        v33 = sub_13C80(0, &qword_DEDE20);
        v34 = sub_4C45FC();
        v35 = v40;
        static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierItems(from:inSection:using:)(v35, v31, sub_4C45F0, (&v36 - 6), v42, v33, v34);
        v45 = 3;
        v9 = v41;
        v14 = v39;
        sub_AB5090();
      }

      while (v27);
    }

    while (1)
    {
      v29 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v29 >= v28)
      {

        return (*(v36 + 32))(v37, v14, v9);
      }

      v27 = *&v23[8 * v29];
      ++v20;
      if (v27)
      {
        v20 = v29;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    (*(v10 + 32))(a4, v12, v9);
  }

  return result;
}

void *sub_4C00A8(int a1, unint64_t a2)
{
  v32 = &_swiftEmptySetSingleton;
  if (a2 >> 62)
  {
    goto LABEL_26;
  }

  v3 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  if (v3)
  {
    do
    {
      v4 = 0;
      v5 = a2 & 0xC000000000000001;
      v6 = a2 & 0xFFFFFFFFFFFFFF8;
      v24 = a2;
      v25 = a2 & 0xFFFFFFFFFFFFFF8;
      v29 = a2 + 32;
      v28 = a1;
      v26 = a2 & 0xC000000000000001;
      v27 = v3;
      while (1)
      {
        if (v5)
        {
          v7 = sub_361270(v4, v24);
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            goto LABEL_25;
          }

          v7 = *(v29 + 8 * v4);
        }

        v8 = v7;
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v10 = sub_4C1244(a1);
        v11 = [v8 itemKind];
        v12 = v11;
        if ((v10 & 0xC000000000000001) != 0)
        {
          v30 = v8;
          v13 = v11;
          v14 = sub_ABACA0();

          if ((v14 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          if (!*(v10 + 16))
          {

            goto LABEL_7;
          }

          v30 = v8;
          sub_13C80(0, &qword_DE7580);
          v15 = sub_ABA780(*(v10 + 40));
          v16 = -1 << *(v10 + 32);
          v17 = v15 & ~v16;
          if (((*(v10 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
LABEL_20:

            a1 = v28;
            v5 = v26;
            v3 = v27;
            v6 = v25;
            goto LABEL_7;
          }

          v18 = ~v16;
          while (1)
          {
            v19 = *(*(v10 + 48) + 8 * v17);
            v20 = sub_ABA790();

            if (v20)
            {
              break;
            }

            v17 = (v17 + 1) & v18;
            if (((*(v10 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          a1 = v28;
          v5 = v26;
          v3 = v27;
          v6 = v25;
        }

        sub_1A5B0(&v31, v4);
LABEL_6:

LABEL_7:
        ++v4;
        if (v9 == v3)
        {
          return v32;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v22 = a2;
      v23 = sub_ABB060();
      a2 = v22;
      v3 = v23;
    }

    while (v23);
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_4C0328(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = type metadata accessor for Search.Item(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a2, v14, &unk_E00040);
  swift_storeEnumTagMultiPayload();
  v15 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_6B884(0, v15[2] + 1, 1, v15);
    *a4 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_6B884(v17 > 1, v18 + 1, 1, v15);
    *a4 = v15;
  }

  v15[2] = v18 + 1;
  result = sub_1D3168(v14, v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v18);
  if ((a6 & 1) == 0 && *(*a4 + 16) >= a5)
  {
    *a3 = 1;
  }

  return result;
}

void *Library.Menu.Request.mediaPickerConfiguration.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_4C0508(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v7 = [objc_allocWithZone(MPModelLibrarySearchRequest) init];
  v8 = sub_AB9260();
  [v7 setLabel:v8];

  sub_15F84(v3 + 40, aBlock, &qword_DF4F58);
  v17[2] = aBlock;
  sub_4BFB24(_swiftEmptyArrayStorage, sub_4C46A8, v17, &off_CF1B58);
  sub_12E1C(aBlock, &qword_DF4F58);
  sub_13C80(0, &qword_DE8050);
  isa = sub_AB9740().super.isa;

  [v7 setScopes:isa];

  v10 = *(v3 + 24);
  v11 = v7;
  [v11 setMediaLibrary:v10];
  [v11 setFilteringOptions:*(v3 + 32)];

  v12 = sub_AB9260();
  [v11 setSearchString:v12];

  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_4C4704;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_311FA0;
  aBlock[3] = &block_descriptor_34_2;
  v14 = _Block_copy(aBlock);
  v15 = v11;

  v16 = [v15 newOperationWithResponseHandler:v14];
  _Block_release(v14);
  [(objc_class *)ModelRequestQueue.unsafeMutableAddressor()->super.isa addOperation:v16];
  a3[3] = sub_13C80(0, &qword_DEBCB0);
  a3[4] = &protocol witness table for NSOperation;

  *a3 = v16;
}

void sub_4C07CC(void *a1, void *a2, void *a3, void (*a4)(void *, uint64_t, uint64_t))
{
  if (a1)
  {
    v8 = [a1 results];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 allSections];
      sub_13C80(0, &qword_DE8050);
      v11 = sub_AB9760();
      v12 = sub_4C47D0(v11);

      v13 = sub_988FC(_swiftEmptyArrayStorage);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAA80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_AF4EC0;
      v15 = MPModelResponseDidInvalidateNotification;
      UIScreen.Dimensions.size.getter(COERCE_DOUBLE(1));
      *(v14 + 56) = &type metadata for NotificationTrigger;
      *(v14 + 64) = &protocol witness table for NotificationTrigger;
      *(v14 + 32) = v16;
      *(v14 + 40) = v17;
      type metadata accessor for BindingRequestResponseInvalidation();
      swift_allocObject();
      v18 = v9;

      v19 = v15;
      v20 = a1;
      v21 = BindingRequestResponseInvalidation.init(triggers:)(v14);
      v22 = sub_4C457C(&qword_DF4FA8, type metadata accessor for BindingRequestResponseInvalidation);
      v23 = 0;
      goto LABEL_17;
    }
  }

  if (!a2)
  {
    sub_4C4710();
    v18 = swift_allocError();
    *v32 = a3;
    v33 = a3;
    goto LABEL_13;
  }

  v24 = sub_AB3040();
  if ([v24 code] == &dword_4 + 2)
  {
    v25 = [v24 domain];
    v26 = sub_AB92A0();
    v28 = v27;
    if (v26 == sub_AB92A0() && v28 == v29)
    {
    }

    else
    {
      v31 = sub_ABB3C0();

      if ((v31 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    sub_4C4710();
    v18 = swift_allocError();
    *v34 = 0;
    swift_errorRetain();

    goto LABEL_16;
  }

LABEL_11:

  v18 = a2;
LABEL_13:
  swift_errorRetain();
  swift_errorRetain();
LABEL_16:
  v12 = 0;
  v13 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 1;
LABEL_17:
  v35[0] = v18;
  v35[1] = v12;
  v35[2] = v13;
  v35[3] = 0;
  v36 = v23;
  a4(v35, v21, v22);
  swift_unknownObjectRelease();
  sub_4C4764(v18, v12, v13, 0, v23);

  sub_4C4764(v18, v12, v13, 0, v23);
}

uint64_t sub_4C0B48@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_4C0508(sub_4C4664, v6, a3);
}

uint64_t sub_4C0C0C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x747369747261;
    v6 = 1735290739;
    if (a1 != 2)
    {
      v6 = 0x7473696C79616C70;
    }

    if (a1)
    {
      v5 = 0x6D75626C61;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x776F68537674;
    v2 = 0x646F736970457674;
    if (a1 != 7)
    {
      v2 = 0x6569766F6DLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x646956636973756DLL;
    if (a1 != 4)
    {
      v3 = 0x7265736F706D6F63;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_4C0D20()
{
  sub_ABB5C0();
  sub_4BF8AC();
  return sub_ABB610();
}

Swift::Int sub_4C0D70()
{
  sub_ABB5C0();
  sub_4BF8AC();
  return sub_ABB610();
}

uint64_t sub_4C0DB4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_4C4D54(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_4C0DE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_4C0C0C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_4C0E10(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_4C3F20();

  *a2 = v4;
}

uint64_t sub_4C0EFC()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  __chkstk_darwin(v1 - 8);
  sub_AB91E0();
  sub_AB3550();
  return sub_AB9320();
}

uint64_t sub_4C1104(char a1)
{
  if (a1)
  {
    v1 = sub_ABB3C0();
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t sub_4C1244(unsigned __int8 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 != 6)
      {
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_AF82E0;
        sub_13C80(0, &unk_DE8EC0);
        *(inited + 32) = static MPModelTVShow.defaultMusicKind.getter();
        sub_13C80(0, &unk_DE9C00);
        *(inited + 40) = static MPModelTVEpisode.defaultMusicKind.getter();
        sub_13C80(0, &unk_E03780);
        *(inited + 48) = static MPModelMovie.defaultMusicKind.getter();
        goto LABEL_18;
      }

      inited = swift_initStackObject();
      *(inited + 16) = xmmword_AF82B0;
      v21 = objc_opt_self();
      sub_13C80(0, &qword_DE8E90);
      v18 = static MPModelAlbum.defaultMusicKind.getter();
      v19 = [v21 kindWithAlbumKind:v18];
    }

    else
    {
      if (a1 != 4)
      {
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_AF82B0;
        v23 = [objc_opt_self() kindWithVariants:2];
        goto LABEL_16;
      }

      inited = swift_initStackObject();
      *(inited + 16) = xmmword_AF82B0;
      v17 = objc_opt_self();
      sub_13C80(0, &qword_DE9C10);
      v18 = static MPModelPlaylistEntry.defaultMusicKind.getter();
      v19 = [v17 kindWithPlaylistEntryKind:v18 options:0];
    }

    v22 = v19;

    *(inited + 32) = v22;
    goto LABEL_18;
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_AF82B0;
      sub_13C80(0, &qword_DE8E90);
      v20 = static MPModelAlbum.defaultMusicKind.getter();
LABEL_17:
      *(inited + 32) = v20;
      goto LABEL_18;
    }

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF82B0;
    v23 = [objc_opt_self() kindWithVariants:1];
LABEL_16:
    v20 = v23;
    goto LABEL_17;
  }

  if (a1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF82B0;
    sub_13C80(0, &qword_DE8E78);
    v20 = static MPModelArtist.defaultMusicKind.getter();
    goto LABEL_17;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF82B0;
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDE38);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_AFFB00;
  *(v4 + 32) = sub_AB92A0();
  *(v4 + 40) = v5;
  sub_13C80(0, &qword_DE8E78);
  *(v4 + 48) = static MPModelArtist.defaultMusicKind.getter();
  *(v4 + 56) = sub_AB92A0();
  *(v4 + 64) = v6;
  sub_13C80(0, &qword_DE8E90);
  *(v4 + 72) = static MPModelAlbum.defaultMusicKind.getter();
  *(v4 + 80) = sub_AB92A0();
  *(v4 + 88) = v7;
  *(v4 + 96) = [objc_opt_self() kindWithVariants:3];
  *(v4 + 104) = sub_AB92A0();
  *(v4 + 112) = v8;
  v9 = objc_opt_self();
  sub_13C80(0, &qword_DE9C10);
  v10 = static MPModelPlaylistEntry.defaultMusicKind.getter();
  v11 = [v9 kindWithPlaylistEntryKind:v10 options:0];

  *(v4 + 120) = v11;
  *(v4 + 128) = sub_AB92A0();
  *(v4 + 136) = v12;
  sub_13C80(0, &unk_DE8EC0);
  *(v4 + 144) = static MPModelTVShow.defaultMusicKind.getter();
  *(v4 + 152) = sub_AB92A0();
  *(v4 + 160) = v13;
  sub_13C80(0, &unk_DE9C00);
  *(v4 + 168) = static MPModelTVEpisode.defaultMusicKind.getter();
  *(v4 + 176) = sub_AB92A0();
  *(v4 + 184) = v14;
  sub_13C80(0, &unk_E03780);
  *(v4 + 192) = static MPModelMovie.defaultMusicKind.getter();
  sub_97B14(v4);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDE40);
  swift_arrayDestroy();
  sub_13C80(0, &qword_DE7580);
  isa = sub_AB8FD0().super.isa;

  v16 = [v3 kindWithRelationshipKinds:isa];

  *(inited + 32) = v16;
LABEL_18:
  sub_11F70(inited);
  v25 = v24;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v25;
}

uint64_t sub_4C1860@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_4C4DA0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_4C1890(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7368564;
  v5 = 0x7265736F706D6F63;
  v6 = 0xE900000000000073;
  if (v2 != 6)
  {
    v5 = 0x4D73776F68537674;
    v6 = 0xED0000736569766FLL;
  }

  v7 = 0x7473696C79616C70;
  v8 = 0xE900000000000073;
  if (v2 != 4)
  {
    v7 = 0x646956636973756DLL;
    v8 = 0xEB00000000736F65;
  }

  if (*v1 <= 5u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE600000000000000;
  v10 = 0x736D75626C61;
  if (v2 != 2)
  {
    v10 = 0x73676E6F73;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x73747369747261;
    v3 = 0xE700000000000000;
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
    v14 = v5;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v6;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_4C199C()
{
  v1 = *v0;
  v2 = 7368564;
  v3 = 0x7265736F706D6F63;
  if (v1 != 6)
  {
    v3 = 0x4D73776F68537674;
  }

  v4 = 0x7473696C79616C70;
  if (v1 != 4)
  {
    v4 = 0x646956636973756DLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x736D75626C61;
  if (v1 != 2)
  {
    v5 = 0x73676E6F73;
  }

  if (*v0)
  {
    v2 = 0x73747369747261;
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

uint64_t sub_4C1AAC()
{
  if (*v0)
  {
    return 0;
  }

  else
  {
    return 50;
  }
}

void sub_4C1ADC(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v63 = a2;
  v62 = a1;
  v70 = a3;
  v69 = sub_AB7C10();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_AB7C50();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_AB7C20();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF20);
  v71 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v9 = (&v59 - v8);
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v80 = UnfairLock.init()();
  v10 = *v3;
  v76 = v3 + 2;
  v11 = swift_allocObject();
  v12 = sub_9A004(_swiftEmptyArrayStorage);
  v81 = v11;
  *(v11 + 16) = v12;
  type metadata accessor for CompoundRequestResponseInvalidation();
  v79 = CompoundRequestResponseInvalidation.__allocating_init()();
  v92 = sub_9A238(_swiftEmptyArrayStorage);
  sub_4BF700(v10, &v92);
  v78 = dispatch_group_create();
  v13 = 0;
  v14 = v92;
  v15 = v92 + 64;
  v16 = 1 << *(v92 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v92 + 64);
  v19 = (v16 + 63) >> 6;
  v72 = &v88;
  v74 = v92 + 64;
  v73 = v19;
  v75 = v92;
  while (v18)
  {
LABEL_11:
    v33 = (v13 << 9) | (8 * __clz(__rbit64(v18)));
    v34 = *(*(v14 + 48) + v33);
    v35 = *(*(v14 + 56) + v33);
    v36 = objc_allocWithZone(MPModelLibraryRequest);
    v37 = v34;
    v38 = v35;
    v39 = v37;

    v84 = [v36 init];
    [v84 setItemKind:v39];
    v40 = *(v38 + 16);
    v82 = v38;
    v83 = v39;
    if (v40)
    {
      v77 = v18;
      aBlock = _swiftEmptyArrayStorage;
      sub_ABAEC0();
      v41 = v38 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
      v42 = *(v71 + 72);
      do
      {
        sub_15F84(v41, v9, &unk_DFEF20);
        v43 = *v9;
        sub_12E1C(v9, &unk_DFEF20);
        sub_ABAE90();
        sub_ABAED0();
        sub_ABAEE0();
        sub_ABAEA0();
        v41 += v42;
        --v40;
      }

      while (v40);
      v18 = v77;
      v39 = v83;
    }

    sub_13C80(0, &unk_DE8180);
    isa = sub_AB9740().super.isa;

    [v84 setAllowedItemIdentifiers:isa];

    sub_15F84(v76, &aBlock, &qword_DF4F58);
    v45 = v89;
    if (v89)
    {
      v20 = v90;
      __swift_project_boxed_opaque_existential_1(&aBlock, v89);
      v21 = v20[1](v39, v45, v20);
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
    }

    else
    {
      sub_12E1C(&aBlock, &qword_DF4F58);
      v21 = 0;
    }

    v22 = (v18 - 1) & v18;
    v23 = v84;
    [v84 setItemProperties:v21];

    v24 = v78;
    dispatch_group_enter(v78);
    v25 = swift_allocObject();
    v27 = v79;
    v26 = v80;
    v25[2] = v24;
    v25[3] = v26;
    v29 = v81;
    v28 = v82;
    v25[4] = v27;
    v25[5] = v28;
    v25[6] = v29;
    v90 = sub_4C4518;
    v91 = v25;
    aBlock = _NSConcreteStackBlock;
    v87 = 1107296256;
    v88 = sub_311FA0;
    v89 = &block_descriptor_18_1;
    v30 = _Block_copy(&aBlock);
    v31 = v24;
    v18 = v22;

    [v23 performWithResponseHandler:v30];
    _Block_release(v30);

    v15 = v74;
    v19 = v73;
    v14 = v75;
  }

  while (1)
  {
    v32 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v32 >= v19)
    {

      sub_13C80(0, &qword_DE8ED0);
      v46 = v60;
      v47 = v59;
      v48 = v61;
      (*(v60 + 104))(v59, enum case for DispatchQoS.QoSClass.userInteractive(_:), v61);
      v49 = sub_ABA190();
      (*(v46 + 8))(v47, v48);
      v50 = swift_allocObject();
      v51 = v62;
      v50[2] = v81;
      v50[3] = v51;
      v52 = v79;
      v50[4] = v63;
      v50[5] = v52;
      v90 = sub_4C4570;
      v91 = v50;
      aBlock = _NSConcreteStackBlock;
      v87 = 1107296256;
      v88 = sub_1B5EB4;
      v89 = &block_descriptor_24;
      v53 = _Block_copy(&aBlock);

      v54 = v64;
      sub_AB7C30();
      v85 = _swiftEmptyArrayStorage;
      sub_4C457C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
      sub_36A00(&qword_DF06D0, &unk_DE9C30);
      v55 = v67;
      v56 = v69;
      sub_ABABB0();
      v57 = v78;
      sub_ABA0F0();

      (*(v68 + 8))(v55, v56);
      (*(v65 + 8))(v54, v66);
      _Block_release(v53);

      v58 = v70;
      *(v70 + 32) = 0;
      *v58 = 0u;
      v58[1] = 0u;

      return;
    }

    v18 = *(v15 + 8 * v32);
    ++v13;
    if (v18)
    {
      v13 = v32;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_4C2464(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF20);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v28 - v6;
  v8 = *(a1 + 8);
  if (v8 > 3)
  {
    if (*(a1 + 8) > 5u)
    {
      if (v8 == 6)
      {
        sub_13C80(0, &unk_DE8EC0);
        v9 = static MPModelTVShow.defaultMusicKind.getter();
      }

      else if (v8 == 7)
      {
        sub_13C80(0, &unk_DE9C00);
        v9 = static MPModelTVEpisode.defaultMusicKind.getter();
      }

      else
      {
        sub_13C80(0, &unk_E03780);
        v9 = static MPModelMovie.defaultMusicKind.getter();
      }

      goto LABEL_17;
    }

    if (v8 == 4)
    {
      v9 = [objc_opt_self() kindWithVariants:2];
      goto LABEL_17;
    }

    v14 = objc_opt_self();
    sub_13C80(0, &qword_DE8E90);
    v11 = static MPModelAlbum.defaultMusicKind.getter();
    v12 = [v14 kindWithAlbumKind:v11];
LABEL_19:
    v13 = v12;

    goto LABEL_20;
  }

  if (*(a1 + 8) <= 1u)
  {
    if (*(a1 + 8))
    {
      sub_13C80(0, &qword_DE8E90);
      v9 = static MPModelAlbum.defaultMusicKind.getter();
    }

    else
    {
      sub_13C80(0, &qword_DE8E78);
      v9 = static MPModelArtist.defaultMusicKind.getter();
    }

    goto LABEL_17;
  }

  if (v8 != 2)
  {
    v10 = objc_opt_self();
    sub_13C80(0, &qword_DE9C10);
    v11 = static MPModelPlaylistEntry.defaultMusicKind.getter();
    v12 = [v10 kindWithPlaylistEntryKind:v11 options:0];
    goto LABEL_19;
  }

  v9 = [objc_opt_self() kindWithVariants:1];
LABEL_17:
  v13 = v9;
LABEL_20:
  v15 = *a2;
  if (*(*a2 + 16) && (v16 = sub_2ECCE8(v13), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  sub_15F84(a1, v7, &unk_DFEF20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_6D1E0(0, v18[2] + 1, 1, v18);
  }

  v20 = v18[2];
  v19 = v18[3];
  if (v20 >= v19 >> 1)
  {
    v18 = sub_6D1E0(v19 > 1, v20 + 1, 1, v18);
  }

  v18[2] = v20 + 1;
  sub_36B0C(v7, v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, &unk_DFEF20);
  if (v8 > 3)
  {
    if (v8 > 5)
    {
      if (v8 == 6)
      {
        sub_13C80(0, &unk_DE8EC0);
        v21 = static MPModelTVShow.defaultMusicKind.getter();
      }

      else if (v8 == 7)
      {
        sub_13C80(0, &unk_DE9C00);
        v21 = static MPModelTVEpisode.defaultMusicKind.getter();
      }

      else
      {
        sub_13C80(0, &unk_E03780);
        v21 = static MPModelMovie.defaultMusicKind.getter();
      }

      goto LABEL_44;
    }

    if (v8 == 4)
    {
      v21 = [objc_opt_self() kindWithVariants:2];
      goto LABEL_44;
    }

    v26 = objc_opt_self();
    sub_13C80(0, &qword_DE8E90);
    v23 = static MPModelAlbum.defaultMusicKind.getter();
    v24 = [v26 kindWithAlbumKind:v23];
LABEL_46:
    v25 = v24;

    goto LABEL_47;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      sub_13C80(0, &qword_DE8E90);
      v21 = static MPModelAlbum.defaultMusicKind.getter();
    }

    else
    {
      sub_13C80(0, &qword_DE8E78);
      v21 = static MPModelArtist.defaultMusicKind.getter();
    }

    goto LABEL_44;
  }

  if (v8 != 2)
  {
    v22 = objc_opt_self();
    sub_13C80(0, &qword_DE9C10);
    v23 = static MPModelPlaylistEntry.defaultMusicKind.getter();
    v24 = [v22 kindWithPlaylistEntryKind:v23 options:0];
    goto LABEL_46;
  }

  v21 = [objc_opt_self() kindWithVariants:1];
LABEL_44:
  v25 = v21;
LABEL_47:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *a2;
  *a2 = 0x8000000000000000;
  sub_95378(v18, v25, isUniquelyReferenced_nonNull_native);
  *a2 = v29;
}

void sub_4C2A2C(void *a1, int a2, dispatch_group_t group, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 && (v10 = [a1 results]) != 0)
  {
    v11 = v10;
    v16 = _swiftEmptyArrayStorage;
    __chkstk_darwin(v10);
    v15 = &v16;
    v12 = sub_13C80(0, &qword_DEDE20);
    v13 = static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierItems(from:using:)(v11, sub_4C45C4, v14, &type metadata for AnyHashable, v12, &protocol witness table for AnyHashable);
    __chkstk_darwin(v13);
    v14[0] = &v16;
    v14[1] = a6;
    v15 = (a7 + 16);
    UnfairLock.locked<A>(_:)(sub_4C45CC);

    dispatch_group_leave(group);
  }

  else
  {

    dispatch_group_leave(group);
  }
}

uint64_t sub_4C2BDC(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  sub_15F84(a2, &v15 - v8, &unk_E00040);
  v10 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_6D204(0, v10[2] + 1, 1, v10);
    *a4 = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_6D204(v12 > 1, v13 + 1, 1, v10);
    *a4 = v10;
  }

  v10[2] = v13 + 1;
  return sub_36B0C(v9, v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, &unk_E00040);
}

uint64_t sub_4C2D48(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v47 = a5;
  v54 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4F98);
  __chkstk_darwin(v8 - 8);
  v46 = v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF20);
  v49 = *(v10 - 8);
  v11 = __chkstk_darwin(v10 - 8);
  v45 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = (v41 - v14);
  v16 = __chkstk_darwin(v13);
  v44 = v41 - v17;
  __chkstk_darwin(v16);
  v43 = v41 - v18;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040);
  v19 = *(v56 - 8);
  __chkstk_darwin(v56);
  v21 = v41 - v20;
  v22 = MPModelResponseDidInvalidateNotification;
  type metadata accessor for BindingRequestResponseInvalidation();
  UIScreen.Dimensions.size.getter(v23);
  v55[3] = &type metadata for NotificationTrigger;
  v55[4] = &protocol witness table for NotificationTrigger;
  v55[0] = v24;
  v55[1] = v25;
  v26 = v22;
  v27 = a2;
  v28 = BindingRequestResponseInvalidation.__allocating_init(trigger:)(v55);
  v29 = sub_4C457C(&qword_DF4FA8, type metadata accessor for BindingRequestResponseInvalidation);
  CompoundRequestResponseInvalidation.append(_:)(v28, v29);

  result = *v54;
  v52 = *(*v54 + 16);
  if (v52)
  {
    v51 = result + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v48 = a4;
    v53 = *(a4 + 16);
    v50 = *(v19 + 72);
    v41[2] = v5;
    v42 = (v19 + 56);
    v41[1] = result;

    v31 = 0;
    do
    {
      v54 = v31;
      sub_15F84(v51 + v50 * v31, v21, &unk_E00040);
      if (v53)
      {
        v36 = v48 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
        v37 = *(v49 + 72);
        v38 = v53;
        while (1)
        {
          sub_15F84(v36, v15, &unk_DFEF20);
          v39 = *v15;
          v40 = SnapshotIdentifier.identifiers.getter(v56);
          LOBYTE(v39) = [v39 intersectsSet:v40];

          if (v39)
          {
            break;
          }

          sub_12E1C(v15, &unk_DFEF20);
          v36 += v37;
          if (!--v38)
          {
            goto LABEL_4;
          }
        }

        v32 = v44;
        sub_36B0C(v15, v44, &unk_DFEF20);
        v33 = v43;
        sub_36B0C(v32, v43, &unk_DFEF20);
        v34 = v45;
        sub_15F84(v33, v45, &unk_DFEF20);
        v35 = v46;
        sub_15F84(v21, v46, &unk_E00040);
        (*v42)(v35, 0, 1, v56);
        swift_beginAccess();
        sub_2E5BB4(v35, v34);
        swift_endAccess();
        sub_12E1C(v33, &unk_DFEF20);
      }

LABEL_4:
      v31 = (v54 + 1);
      sub_12E1C(v21, &unk_E00040);
    }

    while (v31 != v52);
  }

  return result;
}

uint64_t sub_4C3224(uint64_t a1, void (*a2)(uint64_t, unint64_t, void, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a1 + 16);

  v8 = sub_988FC(_swiftEmptyArrayStorage);
  v9 = sub_4C457C(&qword_DF4FE8, type metadata accessor for CompoundRequestResponseInvalidation);
  a2(v7, v8, 0, a4, v9);
}

uint64_t sub_4C32F8()
{
  v0 = qword_E0B498;

  return v0;
}

uint64_t sub_4C3330@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_4C1ADC(sub_1D2A44, v6, a3);
}

BOOL sub_4C33C0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_4C8ED8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {

    v8 = sub_4740B4(v4, v5);

    return v8 & 1;
  }

  return result;
}

unint64_t sub_4C344C(uint64_t a1)
{
  *(a1 + 8) = sub_4C347C();
  result = sub_4C34D0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_4C347C()
{
  result = qword_E0B598;
  if (!qword_E0B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B598);
  }

  return result;
}

unint64_t sub_4C34D0()
{
  result = qword_E0B5A0;
  if (!qword_E0B5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B5A0);
  }

  return result;
}

unint64_t sub_4C3524(uint64_t a1)
{
  result = sub_4C354C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_4C354C()
{
  result = qword_E0B5D8;
  if (!qword_E0B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B5D8);
  }

  return result;
}

unint64_t sub_4C35B0()
{
  result = qword_E0B620;
  if (!qword_E0B620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B620);
  }

  return result;
}

unint64_t sub_4C3604(uint64_t a1)
{
  result = sub_4C362C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_4C362C()
{
  result = qword_E0B698;
  if (!qword_E0B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B698);
  }

  return result;
}

unint64_t sub_4C3680(uint64_t a1)
{
  result = sub_4C36A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_4C36A8()
{
  result = qword_E0B6D0;
  if (!qword_E0B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B6D0);
  }

  return result;
}

unint64_t sub_4C36FC(void *a1)
{
  a1[1] = sub_4C3734();
  a1[2] = sub_4C3788();
  result = sub_4C37DC();
  a1[3] = result;
  return result;
}

unint64_t sub_4C3734()
{
  result = qword_E0B6D8;
  if (!qword_E0B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B6D8);
  }

  return result;
}

unint64_t sub_4C3788()
{
  result = qword_E0B6E0;
  if (!qword_E0B6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B6E0);
  }

  return result;
}

unint64_t sub_4C37DC()
{
  result = qword_E0B6E8;
  if (!qword_E0B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B6E8);
  }

  return result;
}

unint64_t sub_4C3834()
{
  result = qword_E0B6F0;
  if (!qword_E0B6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B6F0);
  }

  return result;
}

uint64_t sub_4C3890(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = sub_4C1244(*a2);
  v7[2] = a3;
  v5 = sub_4BF394(sub_4C4AF8, v7, v4);

  return sub_19D34(v5);
}

void sub_4C3924(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  sub_15F84(a2, v9, &qword_DF4F58);
  v5 = v10;
  if (v10)
  {
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v7 = (*(v6 + 8))(v4, v5, v6);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    sub_12E1C(v9, &qword_DF4F58);
    v7 = 0;
  }

  v8 = [objc_allocWithZone(MPModelLibrarySearchScope) initWithItemKind:v4 name:0 properties:v7];

  *a3 = v8;
}

uint64_t sub_4C3A20(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_4C3A70(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_ABAC70();
      sub_13C80(0, &qword_DE7580);
      swift_unknownObjectRetain();
      swift_dynamicCast();
      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_13C80(0, &qword_DE7580);
    if (sub_ABAC30() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_ABAC40();
    swift_unknownObjectRetain();
    swift_dynamicCast();
    v4 = v14;
    swift_unknownObjectRelease();
    v7 = sub_ABA780(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_ABA790();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

BOOL sub_4C3CC0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_ABB3C0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  sub_13C80(0, &qword_DFA720);
  if (sub_ABA790())
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  return 0;
}