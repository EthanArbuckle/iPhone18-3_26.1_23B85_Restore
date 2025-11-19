uint64_t sub_3CAC50(void *a1)
{
  v2 = [a1 title];
  if (v2)
  {
    v3 = v2;
    v4 = sub_AB92A0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  if ([a1 trackCount] > 1 || (v7 = objc_msgSend(a1, "representativeSong")) == 0)
  {
LABEL_10:
    if (v6)
    {
      return v4;
    }

LABEL_11:

    return 0;
  }

  v8 = v7;
  if (![v7 hasVideo])
  {

    goto LABEL_10;
  }

  v9 = [v8 title];
  if (!v9)
  {

    goto LABEL_11;
  }

  v10 = v9;
  v4 = sub_AB92A0();

  return v4;
}

void sub_3CAD64()
{
  v0 = sub_AB3820();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v22[-v5];
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

    v13 = v12;

    v14 = [v13 indexPathForCell:v10];
    if (!v14)
    {

      return;
    }

    sub_AB3790();

    (*(v1 + 32))(v6, v4, v0);
    if (*&v11[qword_DFE2F0])
    {
      type metadata accessor for JSShelfModelResponse();
      v15 = swift_dynamicCastClass();
      if (!v15)
      {

LABEL_19:
        (*(v1 + 8))(v6, v0);
        return;
      }

      v16 = *(v15 + OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults);
      isa = sub_AB3770().super.isa;
      v18 = [v16 itemAtIndexPath:isa];

      if (v18)
      {
        type metadata accessor for JSShelfItem();
        if (swift_dynamicCastClass())
        {
          v19 = [v10 window];
          if (v19)
          {
            v20 = v19;
            v21 = [v19 windowScene];

            if (v21)
            {
              sub_4154DC(v21);

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

void sub_3CB0B8()
{
  v0 = sub_AB3820();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v20[-v5];
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

    v13 = v12;

    v14 = [v13 indexPathForCell:v10];
    if (v14)
    {
      sub_AB3790();

      (*(v1 + 32))(v6, v4, v0);
      if (*&v11[qword_DFE2F0])
      {
        type metadata accessor for JSShelfModelResponse();
        v15 = swift_dynamicCastClass();
        if (!v15)
        {

LABEL_15:
          (*(v1 + 8))(v6, v0);

          return;
        }

        v16 = *(v15 + OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults);
        isa = sub_AB3770().super.isa;
        v18 = [v16 itemAtIndexPath:isa];

        if (v18)
        {
          type metadata accessor for JSShelfItem();
          v19 = swift_dynamicCastClass();
          if (v19)
          {
            (*&stru_478.sectname[swift_isaMask & *v19])();

            (*(v1 + 8))(v6, v0);
            swift_unknownObjectRelease();
            return;
          }

          swift_unknownObjectRelease();
          goto LABEL_15;
        }
      }

      (*(v1 + 8))(v6, v0);
    }
  }
}

void sub_3CB3C0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      v12 = *&v7[qword_E03660];
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

id sub_3CB564(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  JSShelfViewController.collectionView(_:cellForItemAt:)(v11, v10);
  v15 = v14;

  (*(v8 + 8))(v10, v7);

  return v15;
}

void JSShelfViewController.collectionView(_:performPrimaryActionForItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_AB3430();
  v120 = *(v6 - 8);
  v121 = v6;
  __chkstk_darwin(v6);
  v119 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  v124 = v8;
  v125 = v9;
  __chkstk_darwin(v8);
  v117 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v11);
  v13 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v14 - 8);
  v122 = &v105 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v17 = __chkstk_darwin(v16 - 8);
  v118 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v123 = &v105 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v105 - v24;
  v26 = type metadata accessor for PlaybackIntentDescriptor(0);
  v116 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = a1;
  v127 = a2;
  sub_3B41F4(a1, a2);
  v29 = *&v3[qword_DFE2F0];
  if (v29)
  {
    type metadata accessor for JSShelfModelResponse();
    v30 = swift_dynamicCastClass();
    if (v30)
    {
      v31 = v30;
      v115 = v23;
      v112 = v11;
      v113 = v13;
      v32 = *(v30 + OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults);
      v33 = v29;
      isa = sub_AB3770().super.isa;
      v35 = [v32 itemAtIndexPath:isa];

      type metadata accessor for JSShelfItem();
      v36 = swift_dynamicCastClass();
      if (v36)
      {
        v114 = v36;
        v111 = v33;
        v37 = [v31 results];
        if (!v37)
        {
          __break(1u);
          goto LABEL_50;
        }

        v38 = v37;
        v39 = sub_AB3770().super.isa;
        v40 = [v38 itemAtIndexPath:v39];

        objc_opt_self();
        v41 = swift_dynamicCastObjCClass();
        if (v41)
        {
          v42 = v41;
          v109 = v40;
          v43 = [v41 contentItem];
          v44 = [v43 innerObject];

          v45 = [v3 traitCollection];
          v46 = UITraitCollection.mediaPickerConfiguration.getter();

          v110 = v44;
          v108 = v42;
          if (v46)
          {
            v48 = *&v3[qword_DFE298];
            if (v48)
            {

              v49 = [v42 pickableObjectFor:{objc_msgSend(v46, "selectionMode")}];
              if (v49)
              {
                v50 = v49;
                *&v106 = v48;
                v51 = [v49 musicTypeIdentifier];
                if (v51)
                {
                  v52 = v51;

                  v53 = v110;
                  sub_2641C4(v110, v3, static MPMediaLibraryFilteringOptions.none.getter, 0, v25);
                  if ((v116[6])(v25, 1, v26) == 1)
                  {

                    swift_unknownObjectRelease();
                    sub_12E1C(v25, &unk_DEA510);
                    swift_unknownObjectRelease();

                    return;
                  }

                  sub_3E0D84(v25, v28, type metadata accessor for PlaybackIntentDescriptor);
                  [v3 loadViewIfNeeded];
                  v97 = *&v3[qword_DFE2F8];
                  if (v97)
                  {
                    v98 = v97;
                    v99 = sub_AB3770().super.isa;
                    v100 = [v98 cellForItemAtIndexPath:v99];

                    v101 = v111;
                    if (v100)
                    {
                      swift_getObjectType();
                      v102 = swift_conformsToProtocol2();
                      if (v102)
                      {
                        v103 = v102;
LABEL_48:
                        sub_3B8FA0(v28, v108, v100, v103);
                        v104 = sub_AB3770().super.isa;
                        [v126 deselectItemAtIndexPath:v104 animated:1];

                        swift_unknownObjectRelease();
                        sub_3E0E74(v28, type metadata accessor for PlaybackIntentDescriptor);
                        swift_unknownObjectRelease();

LABEL_40:
                        swift_unknownObjectRelease();
                        return;
                      }

                      v100 = 0;
                    }

                    v103 = 0;
                    goto LABEL_48;
                  }

LABEL_50:
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

            v44 = v110;
          }

          __chkstk_darwin(v47);
          v54 = v127;
          *(&v105 - 2) = v3;
          *(&v105 - 1) = v54;
          sub_2641C4(v44, v3, sub_3E0440, (&v105 - 2), v115);
          v116 = JSSegueCoordinator.shared.unsafeMutableAddressor();
          v55 = sub_AB3770().super.isa;
          v56 = [v126 cellForItemAtIndexPath:v55];

          v57 = v35;
          if (v56)
          {
            sub_D5958(v133);
            v105 = v133[1];
            v106 = v133[0];
            v58 = v134;
            v59 = v135;
            v60 = v136;

            v62 = v105;
            v61 = v106;
          }

          else
          {
            v58 = 0;
            v60 = 0;
            v61 = 0uLL;
            v59 = 255;
            v62 = 0uLL;
          }

          v63 = v123;
          v137[0] = v61;
          v137[1] = v62;
          v138 = v58;
          v139 = v59;
          v140 = v60;
          PresentationSource.init(viewController:position:)(v3, v137, v132);
          v64 = _s30CollectionViewSelectionHandlerVMa();
          v131[3] = v64;
          v131[4] = &off_CF7E60;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v131);
          v66 = v124;
          v67 = *(v125 + 16);
          v67(boxed_opaque_existential_0 + *(v64 + 20), v127, v124);
          swift_unknownObjectWeakInit();
          sub_15F84(v131, &v128, &unk_DE8E30);
          v68 = *(&v129 + 1);
          swift_unknownObjectRetain();
          v107 = v57;
          if (v68)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
            v69 = v122;
            v70 = swift_dynamicCast();
            v71 = *(v64 - 8);
            (*(v71 + 56))(v69, v70 ^ 1u, 1, v64);
            if ((*(v71 + 48))(v69, 1, v64) != 1)
            {
              v67(v63, v69 + *(v64 + 20), v66);
              sub_3E0E74(v69, _s30CollectionViewSelectionHandlerVMa);
              v72 = 0;
              goto LABEL_29;
            }
          }

          else
          {
            sub_12E1C(&v128, &unk_DE8E30);
            v69 = v122;
            (*(*(v64 - 8) + 56))(v122, 1, 1, v64);
          }

          sub_12E1C(v69, &qword_E037A0);
          v72 = 1;
LABEL_29:
          v73 = v125;
          (*(v125 + 56))(v63, v72, 1, v66);
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong && (v75 = Strong, sub_12B2FC(), v77 = v76, v79 = v78, v75, v77))
          {
            ObjectType = swift_getObjectType();
            (*(v79 + 8))(ObjectType, v79);
            v82 = v81;
            swift_unknownObjectRelease();
            v83 = v118;
            sub_15F84(v63, v118, &unk_DE8E20);
            if ((*(v73 + 48))(v83, 1, v66) == 1)
            {
              sub_12E1C(v83, &unk_DE8E20);
              v128 = 0u;
              v129 = 0u;
              v130 = 0;
            }

            else
            {
              (*(v73 + 32))(v117, v83, v66);
              sub_3E046C(&qword_DFAA90, &type metadata accessor for IndexPath);
              sub_ABAD10();
            }

            v85 = swift_getObjectType();
            v86 = v119;
            sub_AB3420();
            v84 = sub_21CCAC(1, v86, &v128, v85, v82);
            (*(v120 + 8))(v86, v121);
            sub_12E1C(&v128, &qword_DF2BD0);
            sub_12E1C(v63, &unk_DE8E20);
            swift_unknownObjectRelease();
          }

          else
          {
            sub_12E1C(v63, &unk_DE8E20);
            v84 = 0;
          }

          v87 = swift_unknownObjectWeakLoadStrong();
          if (v87)
          {
            v88 = v87;
            sub_12AFE8();
            v90 = v89;
          }

          else
          {
            v90 = 0;
          }

          sub_15F28(v132, &v128);
          v91 = v113;
          sub_15F84(v131, (v113 + 104), &unk_DE8E30);
          v92 = v112;
          v93 = v115;
          sub_15F84(v115, v91 + *(v112 + 28), &unk_DEA510);
          *v91 = 0u;
          *(v91 + 16) = 0u;
          *(v91 + 32) = 0u;
          *(v91 + 48) = 0u;
          *(v91 + 64) = 1;
          *(v91 + 72) = 0;
          *(v91 + 80) = 0;
          *(v91 + 88) = 0;
          sub_160B4(&v128, v91, &unk_DEA520);
          *(v91 + 96) = v108;
          v94 = *v116;
          *(&v129 + 1) = v92;
          v95 = __swift_allocate_boxed_opaque_existential_0(&v128);
          sub_3E0CFC(v91, v95, _s23MusicPerformanceContextVMa);
          swift_unknownObjectRetain();
          v96 = v94;
          JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v114, 0, v84, v90, &v128);

          swift_unknownObjectRelease();
          sub_1611C(v132);
          sub_12E1C(v93, &unk_DEA510);
          sub_3E0E74(v91, _s23MusicPerformanceContextVMa);

          sub_12E1C(&v128, &unk_DE8E40);

          sub_12E1C(v131, &unk_DE8E30);
          swift_unknownObjectRelease();

          goto LABEL_40;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_3CC4B0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  JSShelfViewController.collectionView(_:performPrimaryActionForItemAt:)(v11, v10);

  (*(v8 + 8))(v10, v7);
}

uint64_t JSShelfViewController.collectionView(_:viewForSupplementaryElementOfKind:at:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;

  v10._rawValue = &off_CEFD98;
  v17._countAndFlagsBits = a2;
  v17._object = a3;
  v11 = sub_ABB140(v10, v17);

  if (v11 == 1)
  {
    v12 = sub_3B458C(a2, a3, a4, type metadata accessor for CollectionViewSection.SectionHeaderView);
    v13 = IndexPath.safeSection.getter();
    sub_3D131C(v12, v13);
    return v12;
  }

  if (!v11)
  {
    v12 = sub_3B458C(a2, a3, a4, type metadata accessor for CollectionViewSection.SectionHeaderView);
    sub_3CF2F8(v12);
    return v12;
  }

  v14 = *(v5 + qword_E03720) == a2 && *(v5 + qword_E03720 + 8) == a3;
  if (v14 || (sub_ABB3C0() & 1) != 0)
  {
    type metadata accessor for SocialProfilesAccessoryView();
    static UICollectionReusableView.reuseIdentifier.getter();
    v12 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();

    [v12 setUserInteractionEnabled:0];
    return v12;
  }

  return sub_3DE1D8(a1, a4);
}

id sub_3CC76C(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB92A0();
  v15 = v14;
  sub_AB3790();
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a1;
  v20 = JSShelfViewController.collectionView(_:viewForSupplementaryElementOfKind:at:)(v16, v13, v15, v12);

  (*(v10 + 8))(v12, v9);

  return v20;
}

void JSShelfViewController.collectionView(_:willDisplay:forItemAt:)(uint64_t a1, void *a2, uint64_t a3)
{
  sub_3B38B0(a1, a2, a3);
  sub_3D6A78(a2);
  v6 = *(v3 + qword_E03660);
  if (v6)
  {
    v7 = *(*v6 + 176);

    v7(a3);
  }
}

void sub_3CC96C(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
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
  sub_3B38B0(v13, v14, v12);
  sub_3D6A78(v14);
  v17 = *&v16[qword_E03660];
  if (v17)
  {
    v18 = *(*v17 + 176);

    v18(v12);
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    (*(v10 + 8))(v12, v9);
  }
}

void sub_3CCB20(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
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
  sub_3E04B4(v14, v12);

  (*(v10 + 8))(v12, v9);
}

void sub_3CCC54(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
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
  sub_3D1618(a4, v14, v16);
  (*(v11 + 8))(v13, v10);
}

void sub_3CCDD8(void *a1, uint64_t a2, void *a3, void *a4, void (*a5)(id, char *))
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

uint64_t sub_3CCF40(uint64_t a1, uint64_t a2, BOOL *a3, _BYTE *a4)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6 && (v7 = [v6 descriptionText]) != 0)
  {
    v8 = v7;
    v9 = sub_AB92A0();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      *a4 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    result = swift_unknownObjectRelease();
  }

  *a3 = (*a4 & 1) == 0;
  return result;
}

double JSShelfViewController.collectionView(_:layout:sizeForShelfGlobalHeaderAtIndex:)(void *a1)
{
  [a1 bounds];
  sub_3D1144(v1, v2);
  v4 = v3;
  if ((sub_3D1B24() & 1) == 0)
  {
    sub_3CDF28();
    swift_beginAccess();
  }

  return v4;
}

void sub_3CD0B4()
{
  v1 = v0;
  v2 = sub_AB3820();
  v34 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v0 isViewLoaded])
  {
    return;
  }

  v28 = v2;
  [v0 loadViewIfNeeded];
  v33 = qword_DFE2F8;
  v5 = *&v0[qword_DFE2F8];
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = v5;
  v32 = "";
  v7 = sub_AB9260();
  v8 = [v6 indexPathsForVisibleSupplementaryElementsOfKind:v7];

  v9 = v28;
  v10 = sub_AB9760();

  v11 = *(v10 + 16);
  v27 = direct field offset for JSShelfViewController.verticalStackItemPrefersTopHairline;
  swift_beginAccess();
  v12 = &selRef__authenticateReturningError_;
  v31 = v11;
  if (!v11)
  {
LABEL_13:

    return;
  }

  v13 = 0;
  v29 = (v34 + 8);
  v30 = v34 + 16;
  while (v13 < *(v10 + 16))
  {
    v14 = v10;
    (*(v34 + 16))(v4, v10 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v13, v9);
    [v1 v12[171]];
    v15 = *&v1[v33];
    if (!v15)
    {
      goto LABEL_16;
    }

    v16 = v15;
    v17 = sub_AB9260();
    isa = sub_AB3770().super.isa;
    v19 = [v16 supplementaryViewForElementKind:v17 atIndexPath:isa];

    if (v19)
    {
      type metadata accessor for CollectionViewSection.SectionHeaderView(0);
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = v1;
        v22 = v1[v27];
        v23 = v20 + OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView_contentConfiguration;
        swift_beginAccess();
        v24 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
        *(v23 + *(v24 + 76)) = v22;
        v25 = sub_E34F8();
        swift_getObjectType();
        v35[3] = v24;
        v35[4] = sub_3E046C(&qword_DEE978, type metadata accessor for CollectionViewSection.ContentConfiguration);
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v35);
        sub_3E0CFC(v23, boxed_opaque_existential_0, type metadata accessor for CollectionViewSection.ContentConfiguration);
        v1 = v21;
        v9 = v28;
        v12 = &selRef__authenticateReturningError_;
        sub_AB4C70();
        (*v29)(v4, v9);

        goto LABEL_7;
      }
    }

    (*v29)(v4, v9);
LABEL_7:
    v10 = v14;
    if (v31 == ++v13)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t JSShelfViewController.verticalStackItemPrefersTopHairline.getter()
{
  v1 = direct field offset for JSShelfViewController.verticalStackItemPrefersTopHairline;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*JSShelfViewController.verticalStackItemPrefersTopHairline.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_3CD550;
}

void sub_3CD568()
{
  v1 = v0;
  v2 = sub_AB3820();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 isViewLoaded])
  {
    [v0 loadViewIfNeeded];
    v26 = qword_DFE2F8;
    v6 = *&v0[qword_DFE2F8];
    if (!v6)
    {
LABEL_19:
      __break(1u);
      return;
    }

    v7 = v6;
    v25 = "";
    v8 = sub_AB9260();
    v9 = [v7 indexPathsForVisibleSupplementaryElementsOfKind:v8];

    v10 = sub_AB9760();
    v24 = *(v10 + 16);
    if (v24)
    {
      v11 = 0;
      v22 = (v3 + 8);
      v23 = v3 + 16;
      while (v11 < *(v10 + 16))
      {
        v12 = v10;
        v13 = v2;
        (*(v3 + 16))(v5, v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v2);
        [v1 loadViewIfNeeded];
        v14 = *&v1[v26];
        if (!v14)
        {
          goto LABEL_17;
        }

        v15 = v14;
        v16 = sub_AB9260();
        isa = sub_AB3770().super.isa;
        v18 = [v15 supplementaryViewForElementKind:v16 atIndexPath:isa];

        if (v18)
        {
          type metadata accessor for CollectionViewSection.SectionHeaderView(0);
          v2 = v13;
          if (swift_dynamicCastClass())
          {
            [v1 loadViewIfNeeded];
            v19 = *&v1[v26];
            if (!v19)
            {
              goto LABEL_18;
            }

            v20 = [v19 collectionViewLayout];
            sub_3D94EC(v20, 1);
            (*v22)(v5, v13);
          }

          else
          {

            (*v22)(v5, v13);
          }
        }

        else
        {
          v2 = v13;
          (*v22)(v5, v13);
        }

        ++v11;
        v10 = v12;
        if (v24 == v11)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_14:
  }
}

uint64_t JSShelfViewController.verticalStackItemPrefersTallerHeader.getter()
{
  v1 = direct field offset for JSShelfViewController.verticalStackItemPrefersTallerHeader;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_3CD8F8(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  v7 = swift_beginAccess();
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t (*JSShelfViewController.verticalStackItemPrefersTallerHeader.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_3CD9B4;
}

uint64_t sub_3CD9CC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t JSShelfViewController.verticalStackItemPreferredBackgroundColor.getter()
{
  v0 = JSShelf.sections.getter();
  if (v0 >> 62)
  {
    v11 = v0;
    v12 = sub_ABB060();
    v0 = v11;
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_17:

    return 0;
  }

  if (!*(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((v0 & 0xC000000000000001) != 0)
  {
    v1 = sub_360280(0, v0);
  }

  else
  {
    if (!*(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_21;
    }

    v1 = *(v0 + 32);
  }

  v2 = v1;

  v3 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_uniformCellType;
  swift_beginAccess();
  v4 = v2[v3];

  if (v4 != 11)
  {
    if (JSShelfSection.UniformCellType.rawValue.getter(v4) == 0xD000000000000010 && 0x8000000000B4E210 == v5)
    {
    }

    else
    {
      v7 = sub_ABB3C0();

      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }

    if (qword_DE6CA8 == -1)
    {
LABEL_15:
      v8 = qword_E718E8;
      v9 = qword_E718E8;
      return v8;
    }

LABEL_21:
    swift_once();
    goto LABEL_15;
  }

  return 0;
}

uint64_t sub_3CDB98()
{
  result = sub_4D39CC();
  if (result)
  {
    v1 = result;
    type metadata accessor for JSVerticalStackViewController();
    v2 = swift_dynamicCastClass();
    if (v2 && (v3 = *(v2 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_headerItem)) != 0)
    {
      v4 = *&stru_298.segname[(swift_isaMask & *v3) + 8];
      v5 = v3;
      LOBYTE(v4) = v4();

      if (v4 > 1u)
      {

        return 1;
      }

      else
      {
        v6 = sub_ABB3C0();

        return v6 & 1;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_3CDCC4()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = &v0[qword_E03710];
  if (v0[qword_E03710 + 8])
  {
    [v0 loadViewIfNeeded];
    v6 = qword_DFE2F8;
    v7 = *&v0[qword_DFE2F8];
    if (!v7)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v8 = v7;
    [v0 loadViewIfNeeded];
    v9 = *&v0[v6];
    if (!v9)
    {
LABEL_26:
      __break(1u);
      return;
    }

    v10 = [v9 collectionViewLayout];
    v11 = [v8 numberOfSections];
    if ((v11 & 0x8000000000000000) != 0)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v12 = v8;
    v24 = v10;
    v25 = v5;
    if (v11)
    {
      v13 = 0;
      v14 = (v2 + 8);
      v15 = 0.0;
      v26 = v11;
      v27 = v12;
      while (1)
      {
        v16 = sub_3DEB44(v12, v13);
        v17 = v16 - 1;
        if (v16 >= 1)
        {
          v18 = v16;
          v19 = [v12 numberOfItemsInSection:{v13, v24}] / v16;
          if (v19 < 0)
          {
            goto LABEL_23;
          }

          if (v19)
          {
            break;
          }
        }

LABEL_7:
        ++v13;
        v12 = v27;
        if (v13 == v26)
        {
          goto LABEL_20;
        }
      }

      v20 = 0;
      while ((v20 * v18) >> 64 == (v20 * v18) >> 63)
      {
        if (__OFADD__(v20 * v18, v17))
        {
          goto LABEL_22;
        }

        ++v20;
        sub_AB37C0();
        sub_3CE20C();
        [swift_getObjCClassFromMetadata() visualContentInsets];
        v22 = v21;
        (*v14)(v4, v1);
        if (v15 <= v22)
        {
          v15 = v22;
        }

        if (v19 == v20)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v15 = 0.0;
LABEL_20:
    v23 = v25;
    *v25 = 28.0 - v15;
    *(v23 + 8) = 0;
  }
}

void sub_3CDF28()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = &v0[qword_E03718];
  if (v0[qword_E03718 + 8])
  {
    [v0 loadViewIfNeeded];
    v6 = qword_DFE2F8;
    v7 = *&v0[qword_DFE2F8];
    if (!v7)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v8 = v7;
    [v0 loadViewIfNeeded];
    v9 = *&v0[v6];
    if (!v9)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v10 = [v9 collectionViewLayout];
    v11 = [v8 numberOfSections];
    if ((v11 & 0x8000000000000000) != 0)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v12 = v8;
    v23 = v10;
    v24 = v5;
    if (v11)
    {
      v13 = 0;
      v14 = (v2 + 8);
      v15 = 0;
      v25 = v12;
      v26 = v11;
      while (1)
      {
        v16 = sub_3DEB44(v12, v13);
        v17 = v16 - 1;
        if (v16 >= 1)
        {
          v18 = v16;
          v19 = [v12 numberOfItemsInSection:{v13, v23}] / v16;
          if (v19 < 0)
          {
            goto LABEL_21;
          }

          if (v19)
          {
            break;
          }
        }

LABEL_7:
        if (++v13 == v26)
        {
          goto LABEL_18;
        }
      }

      v20 = 0;
      while ((v20 * v18) >> 64 == (v20 * v18) >> 63)
      {
        if (__OFADD__(v20 * v18, v17))
        {
          goto LABEL_20;
        }

        ++v20;
        sub_AB37C0();
        sub_3CE20C();
        [swift_getObjCClassFromMetadata() visualContentInsets];
        v15 = v21;
        (*v14)(v4, v1);
        if (v19 == v20)
        {
          v12 = v25;
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v15 = 0;
LABEL_18:
    v22 = v24;
    *v24 = v15;
    v22[8] = 0;
  }
}

uint64_t sub_3CE180(void *a1, unsigned __int8 a2)
{
  v2 = 0;
  if (a2 > 0xCu)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    if (((1 << a2) & 0x11A0) != 0)
    {
      v5 = sub_4A3F1C();
      v6 = sub_10AC20(a1);

      v4 = [a1 shouldVisuallyDisableFor:v6];
      v2 = 256;
    }
  }

  return v2 | v4;
}

id sub_3CE20C()
{
  v1 = qword_DFE2F0;
  v2 = *(v0 + qword_DFE2F0);
  if (!v2)
  {
    v7 = 0;
    goto LABEL_60;
  }

  v3 = v0;
  result = [v2 results];
  if (!result)
  {
    __break(1u);
    goto LABEL_219;
  }

  v5 = result;
  v6 = [result sectionAtIndex:sub_AB37F0()];

  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {
      swift_unknownObjectRelease();
    }

    v8 = *(v3 + v1);
    if (!v8)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v7 = 0;
    v8 = *(v3 + v1);
    if (!v8)
    {
      goto LABEL_60;
    }
  }

  v9 = v8;
  v10 = [v9 results];

  if (!v10)
  {
    goto LABEL_23;
  }

  isa = sub_AB3770().super.isa;
  v12 = [v10 itemAtIndexPath:isa];

  if (!v12)
  {
    goto LABEL_23;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13 || (v14 = [v13 contentItem]) == 0)
  {
    swift_unknownObjectRelease();
LABEL_23:
    v21 = *(v3 + v1);
    if (!v21)
    {
      goto LABEL_60;
    }

    goto LABEL_24;
  }

  v15 = v14;
  v16 = MPModelStoreBrowseContentItem.kind.getter();
  v18 = v16;
  if (v17 <= 6u)
  {
    if (v17 <= 3u)
    {
      if (v17)
      {
        if (v17 != 1)
        {
          if (v17 == 3)
          {
            if (v7)
            {
              if ([v7 uniformCellType] == &dword_0 + 3)
              {

                v19 = v18;
                v20 = 3;
LABEL_153:
                sub_3EB30(v19, v20);
                swift_unknownObjectRelease();

                return type metadata accessor for FeaturedRadioShowCell();
              }

              if ([v7 uniformCellType] == &dword_4 + 2)
              {

                v42 = v18;
                v43 = 3;
LABEL_107:
                sub_3EB30(v42, v43);
                swift_unknownObjectRelease();

LABEL_157:

                return type metadata accessor for FeaturedPlaylistCell();
              }
            }

            if ([v18 curatorKind] == &dword_0 + 3)
            {

              sub_3EB30(v18, 3);
              swift_unknownObjectRelease();

              return type metadata accessor for CuratorActivityCell();
            }

            v50 = [v18 curatorKind];

            sub_3EB30(v18, 3);
            swift_unknownObjectRelease();

            if (v50 == &dword_0 + 1)
            {

              return type metadata accessor for RadioShowCell();
            }

            goto LABEL_95;
          }

LABEL_90:
          v39 = v17;

          sub_3EB30(v18, v39);
          swift_unknownObjectRelease();

          return sub_13C80(0, &qword_DFE230);
        }

        if (v7)
        {
          if ([v7 uniformCellType] == &dword_4 + 3)
          {

            v37 = v18;
            v38 = 1;
LABEL_145:
            sub_3EB30(v37, v38);
            swift_unknownObjectRelease();

LABEL_146:

            return type metadata accessor for CustomRoomAlbumCell();
          }

          v49 = [v7 uniformCellType];

          sub_3EB30(v18, 1);
          swift_unknownObjectRelease();

          if (v49 != &dword_8 + 2)
          {
LABEL_95:

            return type metadata accessor for PersonVerticalCell();
          }

          goto LABEL_39;
        }

        v36 = 1;
LABEL_94:
        sub_3EB30(v16, v36);
        swift_unknownObjectRelease();

        goto LABEL_95;
      }

      if (v7)
      {
        if ([v7 uniformCellType] == &dword_0 + 1)
        {

          v34 = v18;
          v35 = 0;
          goto LABEL_86;
        }

        if ([v7 uniformCellType] == &dword_4 + 1)
        {

          v47 = v18;
          v48 = 0;
LABEL_166:
          sub_3EB30(v47, v48);
          swift_unknownObjectRelease();

          return type metadata accessor for FeaturedShowcaseCell();
        }

        if ([v7 uniformCellType] == &dword_4 + 3)
        {

          v37 = v18;
          v38 = 0;
          goto LABEL_145;
        }

        if ([v7 uniformCellType] == &dword_4 + 2)
        {

          v42 = v18;
          v43 = 0;
          goto LABEL_107;
        }

        if ([v7 uniformCellType] == &dword_8 + 3)
        {

          v16 = v18;
          v41 = 0;
          goto LABEL_100;
        }

        if ([v7 uniformCellType] == &dword_0 + 3)
        {

          v19 = v18;
          v20 = 0;
          goto LABEL_153;
        }
      }

      v70 = sub_AB37F0();
      v71 = sub_3D64F0(v70, &off_CF1478);

      sub_3EB30(v18, 0);
      swift_unknownObjectRelease();

      if ((v71 & 1) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_215;
    }

    if (v17 != 4)
    {
      if (v17 == 5)
      {
        if (v7)
        {
          if (([v7 uniformCellType] | 8) == 9)
          {

            v34 = v18;
            v35 = 5;
            goto LABEL_86;
          }

          if ([v7 uniformCellType] == &dword_0 + 3)
          {

            v19 = v18;
            v20 = 5;
            goto LABEL_153;
          }

          v53 = [v7 uniformCellType];

          sub_3EB30(v18, 5);
          swift_unknownObjectRelease();

          if (v53 == &dword_4 + 3)
          {
            goto LABEL_146;
          }

          goto LABEL_101;
        }

        v41 = 5;
LABEL_100:
        sub_3EB30(v16, v41);
        swift_unknownObjectRelease();

LABEL_101:

        return type metadata accessor for RadioStationCell();
      }

      if (v17 != 6)
      {
        goto LABEL_90;
      }

      if (!v7)
      {
        sub_3EB30(v16, 6);
        swift_unknownObjectRelease();

LABEL_115:

        return type metadata accessor for SocialPersonHorizontalCell();
      }

      if ([v7 uniformCellType] == &dword_0 + 2)
      {

        v16 = v18;
        v36 = 6;
        goto LABEL_94;
      }

      v46 = [v7 uniformCellType];

      sub_3EB30(v18, 6);
      swift_unknownObjectRelease();

      if (v46 != &dword_8)
      {
        goto LABEL_115;
      }

      goto LABEL_30;
    }

    if (v7)
    {
      if ([v7 uniformCellType] == &dword_0 + 1)
      {

        v34 = v18;
        v35 = 4;
        goto LABEL_86;
      }

      if ([v7 uniformCellType] == &dword_4 + 3)
      {

        v37 = v18;
        v38 = 4;
        goto LABEL_145;
      }

      if ([v7 uniformCellType] == &dword_0 + 3)
      {

        v19 = v18;
        v20 = 4;
        goto LABEL_153;
      }
    }

    v51 = sub_AB37F0();
    v52 = sub_3D64F0(v51, &off_CF14A0);

    sub_3EB30(v18, 4);
    swift_unknownObjectRelease();

    if ((v52 & 1) == 0)
    {
      goto LABEL_157;
    }

LABEL_215:

    return type metadata accessor for SongCell();
  }

  if (v17 > 0xBu)
  {
    if (v17 == 12)
    {
      if (v7)
      {
        if ([v7 uniformCellType] == &dword_0 + 1)
        {

          v34 = v18;
          v35 = 12;
          goto LABEL_86;
        }

        if ([v7 uniformCellType] != &dword_4)
        {
          if ([v7 uniformCellType] == &dword_4 + 1)
          {

            v47 = v18;
            v48 = 12;
            goto LABEL_166;
          }

          v61 = [v7 uniformCellType];

          v62 = v18;
          v63 = 12;
          goto LABEL_189;
        }

        v44 = v18;
        v45 = 12;
LABEL_132:
        sub_3EB30(v44, v45);
        swift_unknownObjectRelease();

        return type metadata accessor for FeaturedMusicVideoVerticalCell();
      }

      v40 = 12;
LABEL_208:
      sub_3EB30(v16, v40);
      swift_unknownObjectRelease();

      goto LABEL_209;
    }

    if (v17 == 13)
    {
      if (v7)
      {
        if ([v7 uniformCellType] == &dword_0 + 1)
        {

          v34 = v18;
          v35 = 13;
          goto LABEL_86;
        }

        if ([v7 uniformCellType] == &dword_4)
        {

          v44 = v18;
          v45 = 13;
          goto LABEL_132;
        }

        if ([v7 uniformCellType] == &dword_4 + 1)
        {

          v47 = v18;
          v48 = 13;
          goto LABEL_166;
        }

        v61 = [v7 uniformCellType];

        v62 = v18;
        v63 = 13;
        goto LABEL_189;
      }

      v40 = 13;
      goto LABEL_208;
    }

    if (v17 != 255)
    {
      goto LABEL_90;
    }

    swift_unknownObjectRelease();

    v21 = *(v3 + v1);
    if (!v21)
    {
LABEL_60:

      return sub_13C80(0, &qword_DFE230);
    }

LABEL_24:
    v22 = v21;
    v23 = [v22 results];

    if (v23)
    {
      v24 = sub_AB3770().super.isa;
      v25 = [v23 itemAtIndexPath:v24];

      if (v25)
      {
        objc_opt_self();
        v26 = swift_dynamicCastObjCClass();
        swift_unknownObjectRelease();
        if (v26)
        {
          if (v7 && [v7 uniformCellType] == &dword_8)
          {

LABEL_30:

            return type metadata accessor for SocialPersonVerticalCell();
          }
        }
      }
    }

    v27 = *(v3 + v1);
    if (v27)
    {
      v28 = v27;
      v29 = [v28 results];

      if (v29)
      {
        v30 = sub_AB3770().super.isa;
        v31 = [v29 itemAtIndexPath:v30];

        if (v31)
        {
          objc_opt_self();
          v32 = swift_dynamicCastObjCClass();
          swift_unknownObjectRelease();
          if (v32)
          {
            if (!v7)
            {
              return sub_13C80(0, &qword_DFE230);
            }

            v33 = [v7 uniformCellType];

            if (v33 != &dword_8 + 2)
            {
              return sub_13C80(0, &qword_DFE230);
            }

LABEL_39:

            return type metadata accessor for PosterCell();
          }
        }
      }
    }

    goto LABEL_60;
  }

  if (v17 != 7)
  {
    if (v17 != 8)
    {
      if (v17 != 9)
      {
        goto LABEL_90;
      }

      if (!v7)
      {
        goto LABEL_49;
      }

      if ([v7 uniformCellType] == &dword_0 + 1)
      {

LABEL_49:
        v34 = v18;
        v35 = 9;
LABEL_86:
        sub_3EB30(v34, v35);
        swift_unknownObjectRelease();

LABEL_87:

        return type metadata accessor for AlbumCell();
      }

      if ([v7 uniformCellType] != &dword_4)
      {
        if ([v7 uniformCellType] != &dword_4 + 1)
        {
          v54 = [v7 uniformCellType];

          sub_3EB30(v18, 9);
          swift_unknownObjectRelease();

          if (v54 == &dword_4 + 3)
          {
            goto LABEL_146;
          }

          goto LABEL_87;
        }

        v47 = v18;
        v48 = 9;
        goto LABEL_166;
      }

      v44 = v18;
      v45 = 9;
      goto LABEL_132;
    }

    if (v7)
    {
      if ([v7 uniformCellType] == &dword_0 + 1)
      {

        v34 = v18;
        v35 = 8;
        goto LABEL_86;
      }

      if ([v7 uniformCellType] == &dword_4)
      {

        v44 = v18;
        v45 = 8;
        goto LABEL_132;
      }

      if ([v7 uniformCellType] == &dword_4 + 1)
      {

        v47 = v18;
        v48 = 8;
        goto LABEL_166;
      }

      v61 = [v7 uniformCellType];

      v62 = v18;
      v63 = 8;
LABEL_189:
      sub_3EB30(v62, v63);
      swift_unknownObjectRelease();

      if (v61 == &dword_4 + 3)
      {
LABEL_190:

        return type metadata accessor for CustomRoomMusicVideoCell();
      }

      goto LABEL_209;
    }

    v40 = 8;
    goto LABEL_208;
  }

  if (v7)
  {
    if ([v7 uniformCellType] == &dword_0 + 1)
    {

      v34 = v18;
      v35 = 7;
      goto LABEL_86;
    }

    if ([v7 uniformCellType] == &dword_4)
    {

      v44 = v18;
      v45 = 7;
      goto LABEL_132;
    }

    if ([v7 uniformCellType] == &dword_4 + 1)
    {

      v47 = v18;
      v48 = 7;
      goto LABEL_166;
    }

    if ([v7 uniformCellType] == &dword_4 + 3)
    {
      v55 = [v18 hasVideo];

      sub_3EB30(v18, 7);
      swift_unknownObjectRelease();

      if (!v55)
      {
        goto LABEL_146;
      }

      goto LABEL_190;
    }
  }

  v56 = sub_AB37F0();
  v57 = *(v3 + v1);
  if (!v57)
  {
    goto LABEL_194;
  }

  v72 = v56;
  result = [v57 results];
  if (!result)
  {
LABEL_219:
    __break(1u);
    goto LABEL_220;
  }

  v58 = result;
  v73 = [result sectionAtIndex:v72];

  if (v73)
  {
    objc_opt_self();
    v59 = swift_dynamicCastObjCClass();
    if (v59)
    {
      v60 = [v59 isFeatured];
      swift_unknownObjectRelease();
      if (v60)
      {

        sub_3EB30(v18, 7);
        swift_unknownObjectRelease();

        return type metadata accessor for FeaturedSongCell();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

LABEL_194:
  if (![v18 hasVideo])
  {

    sub_3EB30(v18, 7);
    swift_unknownObjectRelease();

    goto LABEL_215;
  }

  v64 = sub_AB37F0();
  v65 = *(v3 + v1);
  if (!v65)
  {
    goto LABEL_207;
  }

  result = [v65 results];
  if (!result)
  {
LABEL_220:
    __break(1u);
    return result;
  }

  v66 = result;
  v67 = [result sectionAtIndex:v64];

  if (!v67)
  {
LABEL_207:

    v16 = v18;
    v40 = 7;
    goto LABEL_208;
  }

  objc_opt_self();
  v68 = swift_dynamicCastObjCClass();
  if (!v68)
  {
    swift_unknownObjectRelease();
    goto LABEL_207;
  }

  v69 = [v68 isRankedList];
  swift_unknownObjectRelease();

  sub_3EB30(v18, 7);
  swift_unknownObjectRelease();

  if ((v69 & 1) == 0)
  {
LABEL_209:

    return type metadata accessor for MusicVideoVerticalCell();
  }

  return type metadata accessor for RankedMusicVideoVerticalCell();
}

id sub_3CF2F8(void *a1)
{
  v128 = a1;
  v136 = sub_ABA680();
  v124 = *(v136 - 8);
  __chkstk_darwin(v136);
  v3 = &v113 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  v4 = __chkstk_darwin(v138);
  v115 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v113 - v7;
  __chkstk_darwin(v6);
  v10 = &v113 - v9;
  v137 = sub_3D1B24();
  v129 = v1;
  v11 = *&v1[qword_E03750];
  v12 = (v11 + OBJC_IVAR____TtC11MusicJSCore7JSShelf_supertitle);
  swift_beginAccess();
  v13 = v12[1];
  v127 = *v12;
  v14 = (v11 + OBJC_IVAR____TtC11MusicJSCore7JSShelf_title);
  swift_beginAccess();
  v15 = v14[1];
  v126 = *v14;
  v16 = (v11 + OBJC_IVAR____TtC11MusicJSCore7JSShelf_subtitle);
  swift_beginAccess();
  v17 = v16[1];
  v125 = *v16;
  v18 = OBJC_IVAR____TtC11MusicJSCore7JSShelf_contentArtwork;
  swift_beginAccess();
  v19 = *(v11 + v18);
  v131 = v10;
  v132 = v17;
  v130 = v11;
  v134 = v13;
  v135 = v3;
  v133 = v15;
  if (!v19)
  {

    v123 = 0;
LABEL_10:
    v28 = UIView.Corner.small.unsafeMutableAddressor();
    v27 = v124;
    (*(v124 + 16))(v3, v28, v136);
    goto LABEL_12;
  }

  v20 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle;
  swift_beginAccess();
  v21 = *&v19[v20];
  if (v21)
  {
    v22 = *&v19[v20];
  }

  else
  {
    v22 = ICStoreArtworkInfoCropStyleBoundedBox;
  }

  v23 = v19;
  v24 = v21;
  v123 = JSArtwork.artworkCatalog(defaultCropStyle:)(v22);

  v25 = *(v11 + v18);
  if (!v25)
  {
    v3 = v135;
    goto LABEL_10;
  }

  v26 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_treatment;
  swift_beginAccess();
  if (*(v25 + v26))
  {
    sub_ABA670();
    v27 = v124;
  }

  else
  {
    v29 = v25;
    v30 = UIView.Corner.small.unsafeMutableAddressor();
    v27 = v124;
    (*(v124 + 16))(v135, v30, v136);
  }

LABEL_12:
  sub_13C80(0, &qword_DE6EE0);
  v124 = sub_ABA550();
  v31 = objc_opt_self();
  v122 = [v31 secondaryLabelColor];
  v121 = sub_ABA580();
  v120 = [v31 labelColor];
  v119 = sub_ABA550();
  v114 = v31;
  v118 = [v31 secondaryLabelColor];
  v32 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v33 = *v32;
  v34 = v32[1];
  v35 = v32[2];
  v116 = v32[3];
  v117 = v33;
  v36 = v32[4];
  v37 = v32[5];
  v38 = v138;
  v40 = v135;
  v39 = v136;
  (*(v27 + 16))(&v8[*(v138 + 52)], v135, v136);
  v41 = *(v27 + 8);
  v42 = v33;
  v43 = v34;
  v44 = v35;
  v45 = v116;
  v41(v40, v39);
  v46 = v126;
  v47 = v134;
  *v8 = v127;
  *(v8 + 1) = v47;
  v48 = v125;
  v49 = v122;
  *(v8 + 2) = v124;
  *(v8 + 3) = v49;
  *(v8 + 4) = 1;
  v8[40] = 1;
  *(v8 + 6) = v46;
  v50 = v121;
  *(v8 + 7) = v133;
  *(v8 + 8) = v50;
  *(v8 + 9) = v120;
  *(v8 + 10) = 2;
  v8[88] = 1;
  *(v8 + 12) = v48;
  v51 = v119;
  *(v8 + 13) = v132;
  *(v8 + 14) = v51;
  v52 = v117;
  *(v8 + 15) = v118;
  *(v8 + 16) = 2;
  v8[136] = 1;
  *(v8 + 18) = 0;
  *(v8 + 19) = 0xE000000000000000;
  v8[160] = 4;
  *(v8 + 21) = v123;
  v53 = &v8[v38[14]];
  *v53 = v52;
  *(v53 + 1) = v34;
  *(v53 + 2) = v35;
  *(v53 + 3) = v45;
  *(v53 + 4) = v36;
  *(v53 + 5) = v37;
  *&v8[v38[15]] = 0;
  v54 = &v8[v38[16]];
  *v54 = 0;
  *(v54 + 1) = 0;
  v55 = &v8[v38[17]];
  *v55 = 0;
  *(v55 + 1) = 0;
  v8[v38[18]] = 0;
  v8[v38[19]] = 0;
  v8[v38[20]] = 0;
  v8[v38[21]] = 0;
  v8[v38[22]] = 0;
  v8[v38[23]] = 1;
  v8[v38[24]] = 0;
  v8[v38[25]] = 1;
  v56 = v38[26];
  v8[v56] = 1;
  v8[v38[27]] = 0;
  v8[v38[28]] = 0;
  if (v137)
  {
    v8[v56] = 0;
  }

  v57 = v131;
  sub_3E0D84(v8, v131, type metadata accessor for CollectionViewSection.ContentConfiguration);
  v58 = v129;
  v59 = [v129 traitCollection];
  v60 = [v59 preferredContentSizeCategory];

  LOBYTE(v59) = sub_ABA320();
  v61 = 2;
  if (v59)
  {
    v61 = 3;
  }

  v57[10] = v61;
  v62 = v128;
  v63 = [v62 _collectionView];
  v64 = v62;
  v65 = v138;
  v66 = v130;
  if (v63)
  {
    v67 = v63;
    v68 = sub_AB9260();
    v69 = NSSelectorFromString(v68);

    if ([v67 respondsToSelector:v69])
    {
      v70 = [v67 _currentTouch];
      if (v70)
      {
        v71 = v70;
        [v70 locationInView:v62];
        v73 = v72;
        v75 = v74;

        v151.size.width = 0.0;
        v151.size.height = 0.0;
        v151.origin.x = v73;
        v151.origin.y = v75;
        v152 = CGRectInset(v151, -20.0, -20.0);
        x = v152.origin.x;
        y = v152.origin.y;
        width = v152.size.width;
        height = v152.size.height;

        v80 = height;
        v81 = width;
        v82 = y;
        v83 = x;
        goto LABEL_22;
      }
    }

    v64 = v67;
  }

  [v62 bounds];
LABEL_22:
  v149[0] = v62;
  *&v149[1] = v83;
  *&v149[2] = v82;
  *&v149[3] = v81;
  *&v149[4] = v80;
  v150 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v149, 15, v141);
  v145[0] = v141[0];
  v145[1] = v141[1];
  v146 = v142;
  v147 = v143;
  v148 = v144;
  v84 = v62;
  v85 = v58;
  PresentationSource.init(viewController:position:)(v85, v145, v140);
  v86 = (v66 + OBJC_IVAR____TtC11MusicJSCore7JSShelf_accessoryButtonTitle);
  swift_beginAccess();
  v88 = *v86;
  v87 = v86[1];
  swift_bridgeObjectRetain_n();

  v57[18] = v88;
  v57[19] = v87;

  v89 = HIBYTE(v87) & 0xF;
  if ((v87 & 0x2000000000000000) == 0)
  {
    v89 = v88 & 0xFFFFFFFFFFFFLL;
  }

  if (v89)
  {
    v90 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_15F28(v140, v139);
    v91 = swift_allocObject();
    *(v91 + 16) = v90;
    sub_17704(v139, v91 + 24);
    v92 = (v57 + *(v65 + 68));
    sub_17654(*v92);
    *v92 = sub_3E0E68;
    v92[1] = v91;
  }

  else
  {
    v93 = (v57 + *(v65 + 68));
    sub_17654(*v93);
    *v93 = 0;
    v93[1] = 0;
  }

  v94 = OBJC_IVAR____TtC11MusicJSCore7JSShelf_containerDetailLink;
  swift_beginAccess();
  v95 = *(v66 + v94);
  if (v95)
  {
    sub_15F28(v140, v139);
    v96 = swift_allocObject();
    *(v96 + 16) = v95;
    sub_17704(v139, v96 + 24);
    v97 = (v57 + *(v65 + 64));
    v98 = *v97;
    v99 = v95;
    sub_17654(v98);
    *v97 = sub_3E0F50;
    v97[1] = v96;
    if (v137)
    {
LABEL_29:
      v100 = [v114 clearColor];
LABEL_41:
      v107 = v100;
      [v84 setBackgroundColor:v107];

LABEL_42:
      v108 = v115;
      sub_3E0CFC(v57, v115, type metadata accessor for CollectionViewSection.ContentConfiguration);
      v109 = OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView_contentConfiguration;
      swift_beginAccess();
      sub_140EBC(v108, v84 + v109);
      swift_endAccess();
      v110 = sub_E34F8();
      swift_getObjectType();
      v139[3] = v65;
      v139[4] = sub_3E046C(&qword_DEE978, type metadata accessor for CollectionViewSection.ContentConfiguration);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v139);
      sub_3E0CFC(v84 + v109, boxed_opaque_existential_0, type metadata accessor for CollectionViewSection.ContentConfiguration);
      sub_AB4C70();
      sub_3E0E74(v108, type metadata accessor for CollectionViewSection.ContentConfiguration);

      v112 = [v84 layer];
      [v112 setZPosition:-1.0];
      sub_1611C(v140);

      return sub_3E0E74(v57, type metadata accessor for CollectionViewSection.ContentConfiguration);
    }
  }

  else
  {
    v101 = (v57 + *(v65 + 64));
    sub_17654(*v101);
    *v101 = 0;
    v101[1] = 0;
    if (v137)
    {
      goto LABEL_29;
    }
  }

  v102 = *&v85[qword_DFE2F0];
  if (!v102)
  {
LABEL_40:
    v100 = [v85 viewBackgroundColor];
    goto LABEL_41;
  }

  result = [v102 results];
  if (result)
  {
    v104 = result;
    v105 = [result firstSection];

    if (v105)
    {
      objc_opt_self();
      v106 = swift_dynamicCastObjCClass();
      if (v106 && [v106 uniformCellType] == &dword_8)
      {
        if (qword_DE6CA8 != -1)
        {
          swift_once();
        }

        [v84 setBackgroundColor:qword_E718E8];
        swift_unknownObjectRelease();
        goto LABEL_42;
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_40;
  }

  __break(1u);
  return result;
}

void sub_3CFEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = sub_AB3430();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v57 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v56 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v56 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v21 - 8);
  v23 = &v56 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v63 = v9;
  v25 = Strong;
  v62 = *(Strong + qword_E03750);

  v61 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v26 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v67, 0, sizeof(v67));
  v68 = 0;
  (*(*(v26 - 8) + 56))(v23, 1, 1, v26);
  sub_15F84(v67, &v64, &unk_DE8E30);
  if (*(&v65 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
    v27 = a4;
    v28 = _s30CollectionViewSelectionHandlerVMa();
    v29 = swift_dynamicCast();
    v30 = *(v28 - 8);
    (*(v30 + 56))(v14, v29 ^ 1u, 1, v28);
    v31 = (*(v30 + 48))(v14, 1, v28);
    a4 = v27;
    if (v31 != 1)
    {
      (*(v7 + 16))(v20, &v14[*(v28 + 20)], v6);
      sub_3E0E74(v14, _s30CollectionViewSelectionHandlerVMa);
      v32 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    sub_12E1C(&v64, &unk_DE8E30);
    v33 = _s30CollectionViewSelectionHandlerVMa();
    (*(*(v33 - 8) + 56))(v14, 1, 1, v33);
  }

  sub_12E1C(v14, &qword_E037A0);
  v32 = 1;
LABEL_7:
  (*(v7 + 56))(v20, v32, 1, v6);
  v34 = a4;
  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35 && (v36 = v35, sub_12B2FC(), v38 = v37, v40 = v39, v36, v38))
  {
    ObjectType = swift_getObjectType();
    (*(v40 + 8))(ObjectType, v40);
    v56 = v42;
    swift_unknownObjectRelease();
    sub_15F84(v20, v18, &unk_DE8E20);
    if ((*(v7 + 48))(v18, 1, v6) == 1)
    {
      sub_12E1C(v18, &unk_DE8E20);
      v64 = 0u;
      v65 = 0u;
      v66 = 0;
    }

    else
    {
      (*(v7 + 32))(v57, v18, v6);
      sub_3E046C(&qword_DFAA90, &type metadata accessor for IndexPath);
      sub_ABAD10();
    }

    v44 = swift_getObjectType();
    v45 = v58;
    sub_AB3420();
    v43 = sub_21CCAC(1, v45, &v64, v44, v56);
    (*(v59 + 8))(v45, v60);
    sub_12E1C(&v64, &qword_DF2BD0);
    sub_12E1C(v20, &unk_DE8E20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v20, &unk_DE8E20);
    v43 = 0;
  }

  v46 = v34;
  v47 = swift_unknownObjectWeakLoadStrong();
  v48 = v63;
  if (v47)
  {
    v49 = v47;
    sub_12AFE8();
    v51 = v50;
  }

  else
  {
    v51 = 0;
  }

  sub_15F28(v46, &v64);
  sub_15F84(v67, (v11 + 104), &unk_DE8E30);
  sub_15F84(v23, &v11[*(v48 + 28)], &unk_DEA510);
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *(v11 + 8) = 1;
  *(v11 + 9) = 0;
  *(v11 + 10) = 0;
  *(v11 + 11) = 0;
  sub_160B4(&v64, v11, &unk_DEA520);
  *(v11 + 12) = 0;
  v52 = *v61;
  *(&v65 + 1) = v48;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v64);
  sub_3E0CFC(v11, boxed_opaque_existential_0, _s23MusicPerformanceContextVMa);
  v54 = v52;
  v55 = v62;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v62, 1, v43, v51, &v64);
  sub_12E1C(v23, &unk_DEA510);
  sub_12E1C(v67, &unk_DE8E30);
  sub_3E0E74(v11, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v64, &unk_DE8E40);
}

void sub_3D0734(uint64_t a1, void *a2, uint64_t a3)
{
  v58 = a2;
  v55 = sub_AB3430();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v52 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v57);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v19 - 8);
  v21 = &v51 - v20;
  v56 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v22 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v62, 0, sizeof(v62));
  v63 = 0;
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  sub_15F84(v62, &v59, &unk_DE8E30);
  if (!*(&v60 + 1))
  {
    sub_12E1C(&v59, &unk_DE8E30);
    v29 = _s30CollectionViewSelectionHandlerVMa();
    (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
  v23 = a3;
  v24 = _s30CollectionViewSelectionHandlerVMa();
  v25 = swift_dynamicCast();
  v26 = *(v24 - 8);
  (*(v26 + 56))(v12, v25 ^ 1u, 1, v24);
  v27 = (*(v26 + 48))(v12, 1, v24);
  a3 = v23;
  if (v27 == 1)
  {
LABEL_5:
    sub_12E1C(v12, &qword_E037A0);
    v28 = 1;
    goto LABEL_6;
  }

  (*(v6 + 16))(v18, &v12[*(v24 + 20)], v5);
  sub_3E0E74(v12, _s30CollectionViewSelectionHandlerVMa);
  v28 = 0;
LABEL_6:
  (*(v6 + 56))(v18, v28, 1, v5);
  v30 = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v32 = Strong, sub_12B2FC(), v34 = v33, v36 = v35, v32, v34))
  {
    ObjectType = swift_getObjectType();
    (*(v36 + 8))(ObjectType, v36);
    v39 = v38;
    swift_unknownObjectRelease();
    sub_15F84(v18, v16, &unk_DE8E20);
    if ((*(v6 + 48))(v16, 1, v5) == 1)
    {
      sub_12E1C(v16, &unk_DE8E20);
      v59 = 0u;
      v60 = 0u;
      v61 = 0;
    }

    else
    {
      (*(v6 + 32))(v52, v16, v5);
      sub_3E046C(&qword_DFAA90, &type metadata accessor for IndexPath);
      sub_ABAD10();
    }

    v41 = swift_getObjectType();
    v42 = v53;
    sub_AB3420();
    v40 = sub_21CCAC(1, v42, &v59, v41, v39);
    (*(v54 + 8))(v42, v55);
    sub_12E1C(&v59, &qword_DF2BD0);
    sub_12E1C(v18, &unk_DE8E20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v18, &unk_DE8E20);
    v40 = 0;
  }

  v43 = swift_unknownObjectWeakLoadStrong();
  if (v43)
  {
    v44 = v43;
    sub_12AFE8();
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  sub_15F28(v30, &v59);
  sub_15F84(v62, (v9 + 104), &unk_DE8E30);
  v47 = v57;
  sub_15F84(v21, &v9[*(v57 + 28)], &unk_DEA510);
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 8) = 1;
  *(v9 + 9) = 0;
  *(v9 + 10) = 0;
  *(v9 + 11) = 0;
  sub_160B4(&v59, v9, &unk_DEA520);
  *(v9 + 12) = 0;
  v48 = *v56;
  *(&v60 + 1) = v47;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v59);
  sub_3E0CFC(v9, boxed_opaque_existential_0, _s23MusicPerformanceContextVMa);
  v50 = v48;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v58, 0, v40, v46, &v59);
  sub_12E1C(v21, &unk_DEA510);
  sub_12E1C(v62, &unk_DE8E30);
  sub_3E0E74(v9, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v59, &unk_DE8E40);
}

void sub_3D0F38(double a1, double a2)
{
  v3 = v2;
  v6 = qword_E03728;
  v7 = *&v2[qword_E03728];
  if (v7)
  {
    v8 = *&v2[qword_E03728];
  }

  else
  {
    v8 = [objc_allocWithZone(type metadata accessor for CollectionViewSection.SectionHeaderView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v8 setHidden:1];
    [v8 setUserInteractionEnabled:0];
    v9 = [v2 view];
    if (!v9)
    {
LABEL_10:
      __break(1u);
      return;
    }

    v10 = v9;
    [v9 addSubview:v8];

    v11 = *&v3[v6];
    *&v3[v6] = v8;

    v7 = 0;
  }

  v12 = v7;
  v13 = sub_AB37F0();
  sub_3D131C(v8, v13);
  [v3 loadViewIfNeeded];
  v14 = *&v3[qword_DFE2F8];
  if (!v14)
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = [v14 collectionViewLayout];
  type metadata accessor for ShelfCollectionViewLayout();
  swift_dynamicCastClassUnconditional();
  sub_320BCC();
  v17 = v16;
  v19 = v18;

  v20 = a1 - v17 - v19;
  [v8 setFrame:{0.0, 0.0, v20, a2}];
  sub_3D4418();
  if (v21 < v20)
  {
    v20 = v21;
  }

  v22 = sub_E34F8();
  [v22 sizeThatFits:{v20, a2}];
}

void sub_3D1144(double a1, double a2)
{
  v5 = qword_E03730;
  v6 = *&v2[qword_E03730];
  if (v6)
  {
    v7 = *&v2[qword_E03730];
  }

  else
  {
    v7 = [objc_allocWithZone(type metadata accessor for CollectionViewSection.SectionHeaderView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v7 setHidden:1];
    [v7 setUserInteractionEnabled:0];
    sub_3CF2F8(v7);
    v8 = [v2 view];
    if (!v8)
    {
      goto LABEL_8;
    }

    v9 = v8;
    [v8 addSubview:v7];

    v10 = *&v2[v5];
    *&v2[v5] = v7;

    v6 = 0;
  }

  v11 = v6;
  [v2 loadViewIfNeeded];
  v12 = *&v2[qword_DFE2F8];
  if (v12)
  {
    v13 = [v12 collectionViewLayout];
    type metadata accessor for ShelfCollectionViewLayout();
    swift_dynamicCastClassUnconditional();
    sub_320BCC();
    v15 = v14;
    v17 = v16;

    v18 = a1 - v15 - v17;
    [v7 setFrame:{0.0, 0.0, v18, a2}];
    v19 = sub_E34F8();
    [v19 sizeThatFits:{v18, a2}];

    return;
  }

  __break(1u);
LABEL_8:
  __break(1u);
}

void sub_3D131C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v27[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27[-1] - v9;
  v11 = *&v2[qword_DFE2F0];
  if (!v11)
  {
    v14 = 0;
LABEL_11:
    v20 = 0xE000000000000000;
    goto LABEL_12;
  }

  v12 = [v11 results];
  if (!v12)
  {
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = [v12 sectionAtIndex:a2];

  if (!v14)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
    v14 = 0;
    goto LABEL_10;
  }

  v14 = v15;
  v16 = [v14 title];
  if (!v16)
  {

    goto LABEL_10;
  }

  v17 = v16;
  v18 = sub_AB92A0();
  v20 = v19;

  v11 = v18;
LABEL_12:
  sub_E270C(v11, v20, v10);

  v21 = [v2 traitCollection];
  v22 = [v21 preferredContentSizeCategory];

  LOBYTE(v21) = sub_ABA320();
  if (v21)
  {
    *(v10 + 10) = 2;
  }

  sub_3E0CFC(v10, v8, type metadata accessor for CollectionViewSection.ContentConfiguration);
  v23 = OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView_contentConfiguration;
  swift_beginAccess();
  sub_140EBC(v8, a1 + v23);
  swift_endAccess();
  v24 = sub_E34F8();
  swift_getObjectType();
  v27[3] = v5;
  v27[4] = sub_3E046C(&qword_DEE978, type metadata accessor for CollectionViewSection.ContentConfiguration);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v27);
  sub_3E0CFC(a1 + v23, boxed_opaque_existential_0, type metadata accessor for CollectionViewSection.ContentConfiguration);
  sub_AB4C70();

  sub_3E0E74(v8, type metadata accessor for CollectionViewSection.ContentConfiguration);
  sub_3E0E74(v10, type metadata accessor for CollectionViewSection.ContentConfiguration);
}

void sub_3D1618(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *&v3[qword_E03720] == a2 && *&v3[qword_E03720 + 8] == a3;
  if (!v5 && (sub_ABB3C0() & 1) == 0)
  {
    return;
  }

  if (!a1)
  {
    return;
  }

  type metadata accessor for SocialProfilesAccessoryView();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    return;
  }

  v7 = *&v3[qword_DFE2F0];
  if (!v7)
  {
    return;
  }

  v8 = v6;
  v9 = a1;
  v26 = v7;
  if (([v26 isEmpty] & 1) == 0 && objc_msgSend(v26, "isValid"))
  {
    v10 = [v26 results];
    if (v10)
    {
      v11 = v10;
      isa = sub_AB3770().super.isa;
      v13 = [v11 itemAtIndexPath:isa];

      v30 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E04518);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v28 = 0;
        memset(v27, 0, sizeof(v27));
        sub_12E1C(v27, &unk_E04520);
        goto LABEL_25;
      }

      sub_70DF8(v27, v29);
      [v3 loadViewIfNeeded];
      v14 = *&v3[qword_DFE2F8];
      if (v14)
      {
        v15 = v14;
        v16 = sub_AB3770().super.isa;
        v17 = [v15 cellForItemAtIndexPath:v16];

        if (v17)
        {
          swift_getObjectType();
          v18 = swift_conformsToProtocol2();
          if (v18)
          {
            v19 = v18;
            type metadata accessor for PosterCell();
            v20 = swift_dynamicCastClass();
            v21 = 0;
            if (v20 && *(v20 + OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle) != 2)
            {
              v23 = v17;
              sub_39C70();
              v21 = v24;

              v22 = 0;
            }

            else
            {
              v22 = 1;
            }

            v30 = 0;
            v31 = 0;
            v32 = v21;
            v33 = 0;
            v34 = v22;
            sub_E8BA0(v29, v27);
            v25 = v17;
            sub_3AF4D0(v8, v27, v17, v19);

            sub_12E1C(v27, &unk_E04520);
            __swift_destroy_boxed_opaque_existential_0(v29);

            return;
          }
        }

        __swift_destroy_boxed_opaque_existential_0(v29);
LABEL_25:

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }
}

void sub_3D1968(void *a1)
{
  v17 = [a1 collectionViewLayout];
  type metadata accessor for ShelfCollectionViewLayout();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = [v1 traitCollection];
    v6 = [v5 horizontalSizeClass];

    if (v6 != &dword_0 + 1 || (v7 = [v1 parentViewController]) != 0 && (v8 = v7, type metadata accessor for JSSplitWidgetViewController(), v9 = swift_dynamicCastClass(), v8, v9))
    {
      v10 = 0;
    }

    else
    {
      v13 = [a1 numberOfSections];
      if (v13 < 1)
      {
        v10 = 0;
        *(v1 + qword_E03738) = 0;
      }

      else
      {
        v14 = v13;
        v15 = 0;
        *(v1 + qword_E03738) = 1;
        do
        {
          v10 = v14 != v15;
          if (v14 == v15)
          {
            break;
          }

          if (__OFADD__(v15, 1))
          {
            __break(1u);
            return;
          }

          v16 = sub_3D3F4C(v15++);
        }

        while ((v16 & 1) == 0);
      }
    }

    v11 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_scrollStyle;
    swift_beginAccess();
    v12 = *(v4 + v11);
    *(v4 + v11) = v10;
    if (v10 != v12)
    {
      sub_32533C();
    }
  }
}

id sub_3D1B24()
{
  v1 = qword_E03740;
  v2 = *(v0 + qword_E03740);
  if (v2 != 2)
  {
    return (v2 & 1);
  }

  v10 = 0;
  v3 = *(v0 + qword_DFE2F0);
  if (!v3)
  {
    LOBYTE(v2) = 0;
    goto LABEL_7;
  }

  result = [v3 results];
  if (result)
  {
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = &v10;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_3E0D74;
    *(v7 + 24) = v6;
    aBlock[4] = sub_3E12F8;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B7EB0;
    aBlock[3] = &block_descriptor_319_0;
    v8 = _Block_copy(aBlock);

    [v5 enumerateSectionsUsingBlock:v8];
    _Block_release(v8);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if ((v8 & 1) == 0)
    {
      v3 = sub_3E0D74;
      LOBYTE(v2) = v10;
LABEL_7:
      *(v0 + v1) = v2;
      sub_17654(v3);
      return (v2 & 1);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_3D1CF4(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6 && (v7 = [v6 title]) != 0)
  {
    v8 = v7;
    v9 = sub_AB92A0();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      *a4 = 1;
      *a3 = 1;
    }

    swift_unknownObjectRelease();
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_3D1DDC(uint64_t a1)
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
  v13[3] = &block_descriptor_288;
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

void sub_3D1FB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 contentItem];
    if (v6)
    {
      v12 = v6;
      v7 = MPModelStoreBrowseContentItem.kind.getter();
      if (v8 > 0xBu)
      {
        if (v8 == 12)
        {
          v11 = v7;
          [a4 appendItem:v7];
          v7 = v11;
          v8 = 12;
        }

        else if (v8 == 255)
        {
LABEL_16:
          swift_unknownObjectRelease();

          return;
        }
      }

      else if (v8 == 7)
      {
        v10 = v7;
        [a4 appendItem:v7];
        v7 = v10;
        v8 = 7;
      }

      else if (v8 == 8)
      {
        v9 = v7;
        [a4 appendItem:v7];
        v7 = v9;
        v8 = 8;
      }

      sub_3EB30(v7, v8);
      goto LABEL_16;
    }
  }

  swift_unknownObjectRelease();
}

double sub_3D210C()
{
  v1 = &v0[qword_E03668];
  if ((v0[qword_E03668 + 16] & 1) == 0)
  {
    return *v1;
  }

  sub_3D2B1C();
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

double sub_3D224C()
{
  v1 = &v0[qword_E03670];
  if ((v0[qword_E03670 + 16] & 1) == 0)
  {
    return *v1;
  }

  sub_3D29C8();
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

void sub_3D23E8()
{
  v1 = &v0[qword_E036F0];
  if (v0[qword_E036F0 + 16])
  {
    v2 = [v0 traitCollection];
    v3 = [v2 horizontalSizeClass];

    if (v3 == &dword_0 + 2)
    {
      sub_3D29C8();
      v5 = v4;
    }

    else
    {
      [v0 loadViewIfNeeded];
      v6 = *&v0[qword_DFE2F8];
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = v6;
      [v7 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [v7 music_inheritedLayoutInsets];
      v16 = [v0 traitCollection];
      HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1u, 1u, 0, &v23, v13);
      [v16 displayScale];
      v24.origin.x = v9;
      v24.origin.y = v11;
      v24.size.width = v13;
      v24.size.height = v15;
      CGRectGetWidth(v24);
      sub_AB3A00();
      v5 = v17;
    }

    v18 = [v0 traitCollection];
    _s16MusicApplication9AlbumCellC20detailTextComponents33_697C9E9A5E5CEA31E6831E8C6D513A7BLLAC06DetailfG0AELLVvpfi_0();
    v20 = v19;

    sub_2F48A4(v20, v18, 0, 0);

    if (qword_DE6948 != -1)
    {
      swift_once();
    }

    [v18 displayScale];
    sub_AB3A00();
    v22 = v21;

    *v1 = v5;
    *(v1 + 1) = v22;
    v1[16] = 0;
  }
}

void sub_3D2668()
{
  v1 = &v0[qword_E036F8];
  if (v0[qword_E036F8 + 16])
  {
    sub_3D2B1C();
    v3 = v2;
    [v0 loadViewIfNeeded];
    v4 = *&v0[qword_DFE2F8];
    if (v4)
    {
      [v4 bounds];
      HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(0, 1u, 0, v18, v5);
      v6 = *&v18[1];
      v7 = [v0 traitCollection];
      v8 = [v7 preferredContentSizeCategory];

      v9 = sub_ABA330();
      if (v9)
      {
        sub_3D2824();
        v11 = v10;
      }

      else
      {
        v11 = (v3 + v6) * 1.5 - v6;
      }

      v12 = [v0 traitCollection];
      [v12 displayScale];
      sub_AB3A00();
      v14 = v13;
      v15 = [v12 preferredContentSizeCategory];
      v16 = sub_ABA330();

      v17 = 86.0;
      if (v16)
      {
        v17 = 172.0;
      }

      *v1 = v11;
      v1[1] = v14 + v17;
      *(v1 + 16) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_3D2824()
{
  [v0 loadViewIfNeeded];
  v1 = *&v0[qword_DFE2F8];
  if (v1)
  {
    v2 = v1;
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v2 music_inheritedLayoutInsets];
    v12 = [v0 traitCollection];
    sub_45B2C4(v12, v4, v6, v8, v10);
    HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1u, 1u, 0, v13, v8);
    [v12 displayScale];
    v15.origin.x = v4;
    v15.origin.y = v6;
    v15.size.width = v8;
    v15.size.height = v10;
    CGRectGetWidth(v15);
    sub_AB3A00();
    HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1u, 1u, 0, v14, v8);
    [v12 displayScale];
    sub_AB3A00();
  }

  else
  {
    __break(1u);
  }
}

void sub_3D29C8()
{
  [v0 loadViewIfNeeded];
  v1 = *&v0[qword_DFE2F8];
  if (v1)
  {
    v2 = v1;
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v2 music_inheritedLayoutInsets];
    v11 = [v0 traitCollection];
    sub_45B2C4(v11, v4, v6, v8, v10);
    HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1u, 1u, 0, v12, v8);
    [v11 displayScale];
    v13.origin.x = v4;
    v13.origin.y = v6;
    v13.size.width = v8;
    v13.size.height = v10;
    CGRectGetWidth(v13);
    sub_AB3A00();
  }

  else
  {
    __break(1u);
  }
}

void sub_3D2B1C()
{
  [v0 loadViewIfNeeded];
  v1 = *&v0[qword_DFE2F8];
  if (v1)
  {
    v2 = v1;
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v2 music_inheritedLayoutInsets];
    v11 = [v0 traitCollection];
    sub_45B2C4(v11, v4, v6, v8, v10);
    HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1u, 1u, 0, v14, v8);
    [v11 displayScale];
    v15.origin.x = v4;
    v15.origin.y = v6;
    v15.size.width = v8;
    v15.size.height = v10;
    CGRectGetWidth(v15);
    sub_AB3A00();

    v12 = [v0 traitCollection];
    v13 = [v12 preferredContentSizeCategory];

    sub_ABA330();
  }

  else
  {
    __break(1u);
  }
}

void sub_3D2CD4()
{
  [v0 loadViewIfNeeded];
  v1 = qword_DFE2F8;
  v2 = *&v0[qword_DFE2F8];
  if (v2)
  {
    v3 = v2;
    [v0 loadViewIfNeeded];
    v4 = *&v0[v1];
    if (v4)
    {
      [v4 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v13 = v3;
      [v13 bounds];
      v22 = v15;
      v23 = v14;
      v17 = v16;
      v19 = v18;
      [v13 music_inheritedLayoutInsets];

      v20 = [v0 traitCollection];
      v21 = [v0 traitCollection];
      sub_45BBB8(v21, v6, v8, v10, v12);

      HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1u, 1u, 0, v24, v17);
      [v20 displayScale];
      v25.origin.y = v22;
      v25.origin.x = v23;
      v25.size.width = v17;
      v25.size.height = v19;
      CGRectGetWidth(v25);
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

void sub_3D2E80()
{
  v1 = &v0[qword_E03680];
  if (v0[qword_E03680 + 16])
  {
    sub_3D2CD4();
    v3 = v2;
    v4 = [v0 traitCollection];
    v5 = _s16MusicApplication19CuratorActivityCellC14textComponents33_92B4383430C9FCD6B56F80ACB14131BELLAC04TextG0AELLVvpfi_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF82B0;
    *(inited + 32) = v5;

    v7 = sub_2F48A4(inited, v4, 0, 0);

    swift_setDeallocating();
    swift_arrayDestroy();

    *v1 = v3;
    v1[1] = v3 + v7 + 0.0;
    *(v1 + 16) = 0;
  }
}

void sub_3D2F9C()
{
  v1 = &v0[qword_E03688];
  if (v0[qword_E03688 + 16])
  {
    sub_3D29C8();
    v3 = v2;
    v4 = [v0 traitCollection];
    v5 = _s16MusicApplication13RadioShowCellC14textComponents33_2439E203BF4E5EEB2159C351D10618FFLLAC04TextG0AELLVvpfi_0();
    v7 = v6;
    v8 = [v4 preferredContentSizeCategory];
    v9 = sub_ABA320();

    if (v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = 1;
    }

    swift_beginAccess();
    *(v5 + 88) = v10;
    sub_2EB2A8();
    v11 = sub_2F48A4(v7, v4, 0, 0);

    *v1 = v3;
    v1[1] = v3 + v11 + 0.0;
    *(v1 + 16) = 0;
  }
}

void sub_3D30EC()
{
  v1 = &v0[qword_E03698];
  if (v0[qword_E03698 + 16])
  {
    v2 = [v0 traitCollection];
    v3 = [v0 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == &dword_0 + 2)
    {
      v5 = [v2 preferredContentSizeCategory];
      sub_ABA330();
    }

    sub_3D2824();
    *v1 = sub_14CD64(v2, 0, v6);
    *(v1 + 1) = v7;
    v1[16] = 0;
  }
}

void sub_3D31F8()
{
  v1 = &v0[qword_E03690];
  if (v0[qword_E03690 + 16])
  {
    v2 = [v0 traitCollection];
    sub_3D2824();
    v4 = v3;
    sub_F6A78();
    v6 = v5;

    sub_2F48A4(v6, v2, 0, 0);

    [v2 displayScale];
    sub_AB3A00();
    v8 = v7;

    *v1 = v4;
    *(v1 + 1) = v8;
    v1[16] = 0;
  }
}

void sub_3D32FC()
{
  v1 = &v0[qword_E036C8];
  if (v0[qword_E036C8 + 16])
  {
    v2 = [v0 traitCollection];
    v3 = [v2 horizontalSizeClass];

    if (v3 == &dword_0 + 2)
    {
      v4 = [v0 traitCollection];
      v5 = [v4 preferredContentSizeCategory];

      sub_ABA330();
    }

    sub_3D2824();
    v7 = v6;
    v8 = [v0 traitCollection];
    sub_B4734(v8);
    v10 = v9;

    *v1 = v7;
    *(v1 + 1) = v10;
    v1[16] = 0;
  }
}

void sub_3D343C(void *a1, double (*a2)(double))
{
  v3 = &v2[*a1];
  if (v3[16])
  {
    v5 = [v2 traitCollection];
    v6 = [v5 horizontalSizeClass];

    if (v6 == &dword_0 + 2)
    {
      v7 = [v2 traitCollection];
      v8 = [v7 preferredContentSizeCategory];

      sub_ABA330();
    }

    sub_3D2824();
    v10 = v9;
    v11 = [v2 traitCollection];
    v12 = a2(v10);
    v14 = v13;

    *v3 = v12;
    *(v3 + 1) = v14;
    v3[16] = 0;
  }
}

void sub_3D3568()
{
  v1 = &v0[qword_E036A8];
  if (v0[qword_E036A8 + 16])
  {
    [v0 loadViewIfNeeded];
    v2 = *&v0[qword_DFE2F8];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 traitCollection];
      v5 = v3;
      [v5 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      [v5 music_inheritedLayoutInsets];
      v15 = v14;
      v17 = v16;

      v18 = UIEdgeInsetsInsetRect(v7, v9, v11, v13, v15, v17);
      v20 = v19;
      if ([v4 horizontalSizeClass] == &dword_0 + 2)
      {
        sub_3D2824();
      }

      else
      {
        sub_3D29C8();
      }

      if (v21 < v20)
      {
        v20 = v21;
      }

      sub_2B7184();
      v23 = v22;
      v25 = v24;
      v26 = [v4 preferredContentSizeCategory];
      v27 = sub_ABA320();

      if (v27)
      {
        v28 = 3;
      }

      else
      {
        v28 = 2;
      }

      swift_beginAccess();
      *(v23 + 88) = v28;
      sub_2EB2A8();
      if ([v4 horizontalSizeClass] == &dword_0 + 2)
      {
        v29 = 16.0;
      }

      else
      {
        v29 = 12.0;
      }

      swift_beginAccess();
      *(v25 + 104) = v29;
      sub_2EB2A8();

      sub_AB9730();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
      sub_2F48A4(_swiftEmptyArrayStorage, v4, 0, 0);

      if (qword_DE6A78 != -1)
      {
        swift_once();
      }

      [v4 displayScale];
      sub_AB3A00();
      [v4 displayScale];
      sub_AB3A00();
      v31 = v30;

      *v1 = v20;
      *(v1 + 1) = v31;
      v1[16] = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_3D38C8(char a1)
{
  v2 = &v1[qword_E036B0];
  if (v1[qword_E036B0 + 16])
  {
    [v1 loadViewIfNeeded];
    v4 = *&v1[qword_DFE2F8];
    if (v4)
    {
      v5 = v4;
      v6 = [v1 traitCollection];
      v7 = v5;
      [v7 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [v7 music_inheritedLayoutInsets];
      v17 = v16;
      v19 = v18;

      v20 = UIEdgeInsetsInsetRect(v9, v11, v13, v15, v17, v19);
      v22 = v21;
      if ([v6 horizontalSizeClass] == &dword_0 + 2)
      {
        sub_3D2824();
      }

      else
      {
        sub_3D29C8();
      }

      if (v23 >= v22)
      {
        v23 = v22;
      }

      v24 = sub_2B75F8(v6, a1 & 1, 1, v23);
      v26 = v25;

      *v2 = v24;
      *(v2 + 1) = v26;
      v2[16] = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_3D3A4C()
{
  v1 = &v0[qword_E036B8];
  if (v0[qword_E036B8 + 16])
  {
    [v0 loadViewIfNeeded];
    v2 = *&v0[qword_DFE2F8];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 traitCollection];
      v5 = v3;
      [v5 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      [v5 music_inheritedLayoutInsets];
      v15 = v14;
      v17 = v16;

      v18 = UIEdgeInsetsInsetRect(v7, v9, v11, v13, v15, v17);
      v20 = v19;
      if ([v4 horizontalSizeClass] == &dword_0 + 2)
      {
        sub_3D2824();
      }

      else
      {
        sub_3D29C8();
      }

      if (v21 < v20)
      {
        v20 = v21;
      }

      v22 = [v0 traitCollection];
      sub_42C174();
      v24 = sub_2F48A4(v23, v22, 0, 0);
      if (qword_DE6BB8 != -1)
      {
        swift_once();
      }

      v25 = *&xmmword_E05F98;
      v26 = *&qword_E05FA8;

      *v1 = v20;
      v1[1] = v20 / 1.77777778 + v24 + v25 + v26;
      *(v1 + 16) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_3D3C7C()
{
  v1 = &v0[qword_E036C0];
  if (v0[qword_E036C0 + 16])
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
      UIEdgeInsetsInsetRect(v5, v7, v9, v11, v12, v13);
      v15 = v14;
      sub_3D2824();
      if (v16 < v15)
      {
        v15 = v16;
      }

      v17 = [v0 traitCollection];
      v18 = sub_173970(v17, v15);
      v20 = v19;

      *v1 = v18;
      *(v1 + 1) = v20;
      v1[16] = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_3D3DA0()
{
  v1 = &v0[qword_E036D8];
  if (v0[qword_E036D8 + 16])
  {
    v2 = [v0 traitCollection];
    [v0 loadViewIfNeeded];
    v3 = *&v0[qword_DFE2F8];
    if (v3)
    {
      v4 = v3;
      [v4 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      [v4 music_inheritedLayoutInsets];
      v15 = UIEdgeInsetsInsetRect(v6, v8, v10, v12, v13, v14);
      v17 = v16;
      if ([v2 horizontalSizeClass] == &dword_0 + 1)
      {
        sub_3D29C8();
      }

      else
      {
        sub_3D2824();
      }

      v19 = v18;
      v20 = [v2 preferredContentSizeCategory];
      v21 = sub_ABA320();

      if (v21)
      {
        [v2 horizontalSizeClass];
        sub_3D2824();
        v19 = v22;
      }

      if (v19 < v17)
      {
        v17 = v19;
      }

      sub_1E26A0(v2, v4);
      v24 = v23;

      *v1 = v17;
      *(v1 + 1) = v24;
      v1[16] = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_3D3F4C(uint64_t a1)
{
  v3 = qword_DFE2F0;
  result = *(v1 + qword_DFE2F0);
  if (result)
  {
    result = [result results];
    if (result)
    {
      v5 = result;
      [result sectionAtIndex:a1];
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (!v6)
      {

        swift_unknownObjectRelease();
        return 0;
      }

      v7 = v6;
      v8 = *(v1 + v3);
      if (!v8)
      {
        goto LABEL_19;
      }

      result = [v8 results];
      if (!result)
      {
        __break(1u);
        goto LABEL_62;
      }

      v9 = result;
      v10 = [result sectionAtIndex:a1];

      if (v10)
      {
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        if (!v11)
        {
          swift_unknownObjectRelease();
          v13 = *(v1 + v3);
          if (!v13)
          {
            goto LABEL_19;
          }

          goto LABEL_13;
        }

        v12 = [v11 isFeatured];
        swift_unknownObjectRelease();
        if (v12)
        {
          goto LABEL_27;
        }
      }

      v13 = *(v1 + v3);
      if (!v13)
      {
        goto LABEL_19;
      }

LABEL_13:
      result = [v13 results];
      if (result)
      {
        v14 = result;
        v15 = [result sectionAtIndex:a1];

        if (v15)
        {
          objc_opt_self();
          v16 = swift_dynamicCastObjCClass();
          if (v16)
          {
            v17 = [v16 uniformCellType];
            swift_unknownObjectRelease();
            if (v17 == &dword_0 + 1)
            {
LABEL_20:
              if ([v7 heightClass] != &dword_0 + 2)
              {
LABEL_22:
                v18 = [v7 uniformCellType];
                if (v18 != &dword_4 + 2 && v18 != &dword_0 + 3)
                {
                  goto LABEL_28;
                }

LABEL_27:
                if (sub_3D6190(a1, sub_3D6464, 0))
                {
LABEL_28:
                  swift_unknownObjectRelease();
                  v20 = 0;
LABEL_58:

                  return v20;
                }

                v21 = *(v1 + v3);
                if (!v21)
                {
                  goto LABEL_56;
                }

                result = [v21 results];
                if (result)
                {
                  v22 = result;
                  v23 = [result sectionAtIndex:a1];

                  if (v23)
                  {
                    objc_opt_self();
                    v24 = swift_dynamicCastObjCClass();
                    if (v24)
                    {
                      v25 = [v24 uniformCellType];
                      swift_unknownObjectRelease();
                      if (v25 == &dword_0 + 2)
                      {
                        goto LABEL_28;
                      }
                    }

                    else
                    {
                      swift_unknownObjectRelease();
                    }
                  }

                  v26 = *(v1 + v3);
                  if (!v26)
                  {
                    goto LABEL_56;
                  }

                  result = [v26 results];
                  if (result)
                  {
                    v27 = result;
                    v28 = [result sectionAtIndex:a1];

                    if (v28)
                    {
                      objc_opt_self();
                      v29 = swift_dynamicCastObjCClass();
                      if (v29)
                      {
                        v30 = [v29 uniformCellType];
                        swift_unknownObjectRelease();
                        if (v30 == &dword_8)
                        {
                          goto LABEL_28;
                        }
                      }

                      else
                      {
                        swift_unknownObjectRelease();
                      }
                    }

                    v31 = *(v1 + v3);
                    if (!v31)
                    {
                      goto LABEL_56;
                    }

                    result = [v31 results];
                    if (result)
                    {
                      v32 = result;
                      v33 = [result sectionAtIndex:a1];

                      if (v33)
                      {
                        objc_opt_self();
                        v34 = swift_dynamicCastObjCClass();
                        if (v34)
                        {
                          v35 = [v34 uniformCellType];
                          swift_unknownObjectRelease();
                          if (v35 == &dword_8 + 2)
                          {
                            goto LABEL_28;
                          }
                        }

                        else
                        {
                          swift_unknownObjectRelease();
                        }
                      }

                      v36 = *(v1 + v3);
                      if (!v36)
                      {
                        goto LABEL_56;
                      }

                      result = [v36 results];
                      if (result)
                      {
                        v37 = result;
                        v38 = [result sectionAtIndex:a1];

                        if (v38)
                        {
                          objc_opt_self();
                          v39 = swift_dynamicCastObjCClass();
                          if (v39)
                          {
                            v40 = [v39 uniformCellType];
                            swift_unknownObjectRelease();
                            swift_unknownObjectRelease();
                            if (v40 == &dword_8 + 1)
                            {
                              v20 = 0;
                              goto LABEL_58;
                            }

LABEL_57:
                            v20 = 1;
                            goto LABEL_58;
                          }

                          swift_unknownObjectRelease();
                        }

LABEL_56:
                        swift_unknownObjectRelease();
                        goto LABEL_57;
                      }

LABEL_66:
                      __break(1u);
                      return result;
                    }

LABEL_65:
                    __break(1u);
                    goto LABEL_66;
                  }

LABEL_64:
                  __break(1u);
                  goto LABEL_65;
                }

LABEL_63:
                __break(1u);
                goto LABEL_64;
              }

LABEL_21:
              if ((sub_3D64F0(a1, &off_CEFBC8) & 1) == 0)
              {
                goto LABEL_27;
              }

              goto LABEL_22;
            }
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

LABEL_19:
        if ((sub_3D64F0(a1, &off_CEFB70) & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_62:
      __break(1u);
      goto LABEL_63;
    }
  }

  return result;
}

void sub_3D4418()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  [v0 loadViewIfNeeded];
  v3 = qword_DFE2F8;
  v4 = *&v0[qword_DFE2F8];
  if (!v4)
  {
LABEL_227:
    __break(1u);
    goto LABEL_228;
  }

  [v4 music_inheritedLayoutInsets];
  v7 = qword_DFE2F0;
  v8 = *&v0[qword_DFE2F0];
  if (!v8)
  {
    v14 = 0;

LABEL_27:
    return;
  }

  v9 = v5;
  v10 = v6;
  v11 = [v8 results];
  if (!v11)
  {
LABEL_228:
    __break(1u);
    goto LABEL_229;
  }

  v12 = v11;
  v13 = [v11 sectionAtIndex:sub_AB37F0()];

  if (v13)
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = *&v1[v7];
      if (v15)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

    swift_unknownObjectRelease();
    v15 = *&v1[v7];
    if (!v15)
    {
LABEL_20:

      goto LABEL_27;
    }
  }

  else
  {
    v14 = 0;
    v15 = *&v1[v7];
    if (!v15)
    {
      goto LABEL_20;
    }
  }

LABEL_7:
  v16 = v15;
  v17 = [v16 results];
  if (!v17)
  {

    goto LABEL_27;
  }

  v18 = v17;
  v220 = v14;

  isa = sub_AB3770().super.isa;
  v20 = [v18 itemAtIndexPath:isa];

  v21 = v20;
  if (!v20)
  {

    return;
  }

  v219 = v2;
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  v14 = v220;
  if (!v22)
  {
    goto LABEL_25;
  }

  v23 = v22;
  if (!v220)
  {
    goto LABEL_28;
  }

  v24 = [v220 uniformCellType];
  if (v24 > 5)
  {
    if (v24 > 8)
    {
      if (v24 == (&dword_8 + 1))
      {
        sub_3D23E8();
      }

      else
      {
        v25 = v219;
        if (v24 == (&dword_8 + 2))
        {
          sub_3D2668();
          [v219 displayScale];
          sub_AB3A00();

          swift_unknownObjectRelease();
          return;
        }

        if (v24 != (&dword_8 + 3))
        {
LABEL_85:

          goto LABEL_26;
        }

        sub_3D32FC();
      }

      goto LABEL_68;
    }

    if (v24 == (&dword_4 + 2))
    {
      v53 = &v1[qword_E03690];
      if ((v1[qword_E03690 + 16] & 1) == 0)
      {
LABEL_90:

        goto LABEL_68;
      }

      v32 = [v1 traitCollection];
      sub_3D2824();
      v55 = v54;
      sub_F6A78();
      v57 = v56;

      sub_2F48A4(v57, v32, 0, 0);

      [v32 displayScale];
      sub_AB3A00();
      v59 = v58;

      *v53 = v55;
      *(v53 + 1) = v59;
      v53[16] = 0;

      goto LABEL_167;
    }

    if (v24 != (&dword_4 + 3))
    {
      v36 = &v1[qword_E036E8];
      if (v1[qword_E036E8 + 16])
      {
        v37 = [v1 traitCollection];
        sub_3D29C8();
        v39 = v38;
        v40 = sub_11866C(v37, v38);

        *v36 = v39;
        v36[1] = v40;
        *(v36 + 16) = 0;

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_45;
    }

    [v1 loadViewIfNeeded];
    v67 = *&v1[v3];
    if (!v67)
    {
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
      goto LABEL_231;
    }

    v218 = v67;
    v68 = sub_3DE9C0(v220, v23);
    v69 = [v23 contentItem];
    if (v69)
    {
      v70 = v69;
      if ([v69 itemType] == &dword_4 + 3 && (v71 = objc_msgSend(v70, "song")) != 0)
      {
        v72 = v71;
        if ([v71 hasVideo])
        {
          v73 = *&v1[qword_E03708];
          if (v73)
          {
            v74 = *&v1[qword_E03708];
          }

          else
          {
            v217 = qword_E03708;
            type metadata accessor for CustomRoomMusicVideoCell();
            v170 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
            v171 = *&v1[direct field offset for BrowseCollectionViewController.textDrawingCache];
            v172 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
            swift_beginAccess();
            *&v170[v172] = v171;
            swift_retain_n();
            v216 = v170;

            v173 = *&v216[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
            v174 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
            swift_beginAccess();
            v175 = *&v173[v174];
            *&v173[v174] = v171;

            v176 = v173;
            sub_2E6210(v175);

            v177 = *&v1[v217];
            *&v1[v217] = v216;
            v178 = v216;

            v74 = v178;
            v73 = 0;
          }

          v179 = v73;
          v180 = [v23 headlineText];
          if (v180)
          {
            v181 = v180;
            v182 = sub_AB92A0();
            v184 = v183;

            v185 = v182 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v185 = 0;
            v184 = 0xE000000000000000;
          }

          v186 = [v23 descriptionText];
          if (v186)
          {
            v187 = v186;
            v188 = sub_AB92A0();
            v190 = v189;

            v191 = v188 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v191 = 0;
            v190 = 0xE000000000000000;
          }

          v192 = v218;
          [v192 bounds];
          Width = CGRectGetWidth(v229);

          if ((v184 & 0x2000000000000000) != 0)
          {
            v194 = HIBYTE(v184) & 0xF;
          }

          else
          {
            v194 = v185;
          }

          if ((v190 & 0x2000000000000000) != 0)
          {
            v191 = HIBYTE(v190) & 0xF;
          }

          [v192 bounds];
          v196 = v195;
          v198 = v197;
          v200 = v199;
          v202 = v201;

          v230.origin.x = v196;
          v230.origin.y = v198;
          v230.size.width = v200;
          v230.size.height = v202;
          v203 = CGRectGetWidth(v230);
          v204 = v219;
          v205 = [v219 horizontalSizeClass];
          sub_14F78C(v219, v9, v10, v203);
          if (v194)
          {
            sub_14F8E0(v205, &v223);
            sub_2F174(&v223);
          }

          if (v205 == &dword_0 + 1)
          {
            swift_beginAccess();
            if (v191)
            {
LABEL_198:
              v206 = &v74[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_textComponents];
              swift_beginAccess();
              v224 = *v206;
              v225 = *(v206 + 1);
              v226 = *(v206 + 4);
              v222[0] = v226;

              sub_15F84(v222, v221, &qword_DF1E78);
              v207 = sub_14E664(v219);

              v204 = v219;

              sub_12E1C(v222, &qword_DF1E78);
LABEL_201:
              sub_2F48A4(v207, v204, 0, 0);

              sub_14F9EC(v204, Width - v9 - v10, v9, v10);

              swift_unknownObjectRelease();
              return;
            }
          }

          else if (v191)
          {
            goto LABEL_198;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
          v207 = swift_allocObject();
          *(v207 + 16) = xmmword_AF7C50;
          v208 = &v74[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_textComponents];
          swift_beginAccess();
          *(v207 + 32) = *(v208 + 1);
          *(v207 + 40) = *(v208 + 2);

          goto LABEL_201;
        }
      }

      else
      {
        v72 = v70;
      }
    }

    v75 = qword_E03700;
    v76 = *&v1[qword_E03700];
    if (v76)
    {
      v77 = *&v1[qword_E03700];
    }

    else
    {
      type metadata accessor for CustomRoomAlbumCell();
      v96 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v97 = v21;
      v98 = *&v1[direct field offset for BrowseCollectionViewController.textDrawingCache];
      v99 = v68;
      v100 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
      swift_beginAccess();
      *&v96[v100] = v98;
      swift_retain_n();
      v101 = v96;

      v102 = *&v101[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
      v103 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
      swift_beginAccess();
      v104 = *&v102[v103];
      *&v102[v103] = v98;
      v68 = v99;

      v105 = v102;
      sub_2E6210(v104);

      v106 = *&v1[v75];
      *&v1[v75] = v101;
      v107 = v101;

      v21 = v97;
      v77 = v107;
      v76 = 0;
    }

    v108 = v21;
    v109 = v76;
    v110 = [v23 descriptionText];
    if (v110)
    {
      v111 = v110;
      v112 = sub_AB92A0();
      v114 = v113;

      v115 = v112 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v115 = 0;
      v114 = 0xE000000000000000;
    }

    v116 = [v23 headlineText];
    if (v116)
    {
      v117 = v116;
      v118 = sub_AB92A0();
      v120 = v119;

      v121 = v118 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v121 = 0;
      v120 = 0xE000000000000000;
    }

    v122 = v218;
    [v122 bounds];
    v124 = v123;
    v126 = v125;
    v128 = v127;
    v130 = v129;
    [v122 music_inheritedLayoutInsets];

    v131 = sub_3DEA68(v68, v124, v126, v128, v130);
    HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1u, 1u, 0, &v223, v128);
    [v219 displayScale];
    v227.origin.x = v124;
    v227.origin.y = v126;
    v227.size.width = v128;
    v227.size.height = v130;
    CGRectGetWidth(v227);
    if (__OFSUB__(v131, 1))
    {
      __break(1u);
    }

    else
    {
      sub_AB3A00();

      if ((v120 & 0x2000000000000000) != 0)
      {
        v121 = HIBYTE(v120) & 0xF;
      }

      if ((v114 & 0x2000000000000000) != 0)
      {
        v115 = HIBYTE(v114) & 0xF;
      }

      if (v121)
      {
        swift_beginAccess();
      }

      LOBYTE(v23) = v68;
      if (v68 == 2)
      {
        [v219 displayScale];
        sub_AB3A00();
        [v77 bounds];
        v133 = v132;
        v135 = v134;
        v137 = v136;
        v139 = v138;
        v140 = &v77[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
        swift_beginAccess();
        v228.origin.x = UIEdgeInsetsInsetRect(v133, v135, v137, v139, *v140, v140[1]);
        CGRectGetWidth(v228);
        [v219 displayScale];
        sub_AB3A00();
      }

      v68 = &v77[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
      swift_beginAccess();
      v141 = &v77[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_itemTextComponents];
      sub_4C6D80(v23, v77[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_textAlignment], v219, *&v77[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_itemTextComponents], *&v77[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_itemTextComponents + 8], *&v77[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_itemTextComponents + 16]);
      if (v115)
      {
        v120 = *(v141 + 3);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
        v120 = swift_allocObject();
        *(v120 + 16) = xmmword_AF7C50;
        *(v120 + 32) = *v141;
        *(v120 + 40) = *(v141 + 1);
      }

      sub_2F48A4(v120, v219, 0, 0);
      v108 = v220;
      if (!(v120 >> 62))
      {
        v142 = *(&dword_10 + (v120 & 0xFFFFFFFFFFFFFF8));
        if (v142)
        {
          goto LABEL_134;
        }

        goto LABEL_218;
      }
    }

    v142 = sub_ABB060();
    if (v142)
    {
LABEL_134:
      v143 = __OFSUB__(v142, 1);
      v144 = v142 - 1;
      if (v143)
      {
        __break(1u);
      }

      else if ((v120 & 0xC000000000000001) == 0)
      {
        if ((v144 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v144 < *(&dword_10 + (v120 & 0xFFFFFFFFFFFFFF8)))
        {

LABEL_139:

          swift_beginAccess();

LABEL_219:

          if (v23 == 2)
          {
            [v219 displayScale];
            sub_AB3A00();
            [v77 bounds];
            v231.origin.x = UIEdgeInsetsInsetRect(v212, v213, v214, v215, *v68, v68[1]);
            CGRectGetWidth(v231);
            [v219 displayScale];
            sub_AB3A00();
          }

          swift_unknownObjectRelease();
          return;
        }

        __break(1u);
        goto LABEL_227;
      }

      sub_36003C(v144, v120);
      goto LABEL_139;
    }

LABEL_218:

    goto LABEL_219;
  }

  if (v24 > 2)
  {
    if (v24 != (&dword_0 + 3))
    {
      if (v24 == &dword_4)
      {
        sub_3D3C7C();
        [v219 displayScale];
        sub_AB3A00();
      }

      else
      {
        sub_3D3DA0();
        sub_1E2814(v219, v41, v42);
      }

LABEL_45:

      swift_unknownObjectRelease();
      return;
    }

    sub_3D341C();

LABEL_68:
    swift_unknownObjectRelease();

    return;
  }

  if (v24)
  {
    if (v24 != (&dword_0 + 1))
    {
      v25 = v219;
      if (v24 == (&dword_0 + 2))
      {
        v26 = &v1[qword_E03678];
        if (v1[qword_E03678 + 16])
        {
          sub_3D2CD4();
          v28 = v27;
          v29 = [v1 traitCollection];
          v30 = sub_1FE9B0(v29, 0, v28);

          *v26 = v28;
          v26[1] = v30;
          *(v26 + 16) = 0;

          swift_unknownObjectRelease();
          return;
        }

        goto LABEL_90;
      }

      goto LABEL_85;
    }

    v60 = sub_AB37F0();
    v61 = *&v1[v7];
    if (!v61)
    {
      goto LABEL_158;
    }

    v62 = [v61 results];
    if (v62)
    {
      v63 = v62;
      v64 = [v62 sectionAtIndex:v60];

      if (v64)
      {
        objc_opt_self();
        v65 = swift_dynamicCastObjCClass();
        if (v65)
        {
          v66 = [v65 isRankedList];
          swift_unknownObjectRelease();
          if (v66)
          {
            sub_3D224C();
            goto LABEL_90;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

LABEL_158:
      sub_3D210C();
      goto LABEL_90;
    }

    goto LABEL_230;
  }

LABEL_28:
  v31 = [v23 contentItem];
  if (!v31)
  {
LABEL_25:

LABEL_26:
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v32 = v31;
  v33 = MPModelStoreBrowseContentItem.kind.getter();
  v35 = v33;
  if (v34 > 6u)
  {
    if (v34 <= 0xBu)
    {
      if (v34 != 7)
      {
        if (v34 != 8)
        {
          if (v34 != 9)
          {
            goto LABEL_112;
          }

          sub_3D210C();

          v43 = v35;
          v44 = 9;
          goto LABEL_166;
        }

        if (!v220)
        {
          goto LABEL_160;
        }

        if ([v220 hasHeadlineText])
        {
          sub_3D38B8();
LABEL_165:
          [v219 displayScale];
          sub_AB3A00();

          v43 = v35;
          v44 = 8;
          goto LABEL_166;
        }

        if (([v220 hasSubtitleText] & 1) == 0)
        {
LABEL_160:
          v154 = [v35 show];
          if (!v154 || (v155 = v154, v156 = [v154 title], v155, !v156))
          {
            sub_3D3568();
            goto LABEL_165;
          }
        }

        sub_3D38C0();
        goto LABEL_165;
      }

      v81 = sub_AB37F0();
      v82 = *&v1[v7];
      if (v82)
      {
        v83 = [v82 results];
        if (!v83)
        {
LABEL_231:
          __break(1u);
          goto LABEL_232;
        }

        v84 = v83;
        v85 = [v83 sectionAtIndex:v81];

        if (v85)
        {
          objc_opt_self();
          v86 = swift_dynamicCastObjCClass();
          if (v86)
          {
            v87 = [v86 isFeatured];
            swift_unknownObjectRelease();
            if (v87)
            {
              sub_3D30CC();

              sub_3EB30(v35, 7);
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

      if (![v35 hasVideo])
      {
        sub_3D30EC();
        sub_14C0F8(v219, 0, &v223);

        sub_3EB30(v35, 7);
        goto LABEL_180;
      }

      v163 = sub_AB37F0();
      v164 = *&v1[v7];
      if (v164)
      {
        v165 = [v164 results];
        if (!v165)
        {
LABEL_233:
          __break(1u);
          return;
        }

        v166 = v165;
        v167 = [v165 sectionAtIndex:v163];

        if (v167)
        {
          objc_opt_self();
          v168 = swift_dynamicCastObjCClass();
          if (v168)
          {
            v169 = [v168 isRankedList];
            swift_unknownObjectRelease();
            if (v169)
            {
              sub_3D3A4C();
              [v219 displayScale];
              sub_AB3A00();

              sub_3EB30(v35, 7);
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

      if (!v220)
      {
        goto LABEL_210;
      }

      if ([v220 hasHeadlineText])
      {
        sub_3D38B8();
LABEL_215:
        [v219 displayScale];
        sub_AB3A00();

        sub_3EB30(v35, 7);
        goto LABEL_167;
      }

      if (([v220 hasSubtitleText] & 1) == 0)
      {
LABEL_210:
        v209 = [v35 artist];
        if (!v209 || (v210 = v209, v211 = [v209 name], v210, !v211))
        {
          sub_3D3568();
          goto LABEL_215;
        }
      }

      sub_3D38C0();
      goto LABEL_215;
    }

    if (v34 - 12 >= 2)
    {
      if (v34 == 255)
      {

        swift_unknownObjectRelease();
        goto LABEL_27;
      }

      goto LABEL_112;
    }

    v52 = v34;
    if (v220)
    {
      if ([v220 hasHeadlineText])
      {
        sub_3D38B8();
LABEL_143:
        [v219 displayScale];
        sub_AB3A00();

        v43 = v35;
        v44 = v52;
        goto LABEL_166;
      }

      if ([v220 hasSubtitleText])
      {
        sub_3D38C0();
        goto LABEL_143;
      }
    }

    sub_3D3568();
    goto LABEL_143;
  }

  if (v34 <= 3u)
  {
    if (v34)
    {
      if (v34 != 1)
      {
        if (v34 == 3)
        {
          if ([v33 curatorKind] == &dword_0 + 3)
          {
            sub_3D2E80();
LABEL_146:

            v43 = v35;
            v44 = 3;
            goto LABEL_166;
          }

          if ([v35 curatorKind] == &dword_0 + 1)
          {
            sub_3D2F9C();
            goto LABEL_146;
          }

          v157 = v35;
          v158 = &v1[qword_E03678];
          if (v1[qword_E03678 + 16])
          {
            sub_3D2CD4();
            v160 = v159;
            v161 = [v1 traitCollection];
            v162 = sub_1FE9B0(v161, 0, v160);

            *v158 = v160;
            v158[1] = v162;
            *(v158 + 16) = 0;
            v43 = v157;
            v44 = 3;
            goto LABEL_166;
          }

          v152 = v157;
          v153 = 3;
LABEL_156:
          sub_3EB30(v152, v153);

          swift_unknownObjectRelease();
          return;
        }

LABEL_112:
        v95 = v34;

        sub_3EB30(v35, v95);
        swift_unknownObjectRelease();

        return;
      }

      v89 = v33;
      v90 = &v1[qword_E03678];
      if ((v1[qword_E03678 + 16] & 1) == 0)
      {

        v152 = v89;
        v153 = 1;
        goto LABEL_156;
      }

      sub_3D2CD4();
      v92 = v91;
      v93 = [v1 traitCollection];
      v94 = sub_1FE9B0(v93, 0, v92);

      *v90 = v92;
      v90[1] = v94;
      *(v90 + 16) = 0;
      v43 = v89;
      v44 = 1;
LABEL_166:
      sub_3EB30(v43, v44);

LABEL_167:
      swift_unknownObjectRelease();

      return;
    }

    v78 = sub_AB37F0();
    if (sub_3D64F0(v78, &off_CEFE50))
    {
      sub_3D30EC();
      sub_14C0F8(v219, 0, &v223);

      v79 = v35;
      v80 = 0;
LABEL_105:
      sub_3EB30(v79, v80);

LABEL_180:
      swift_unknownObjectRelease();

      return;
    }

    v145 = sub_AB37F0();
    v146 = *&v1[v7];
    if (v146)
    {
      v147 = [v146 results];
      if (!v147)
      {
LABEL_232:
        __break(1u);
        goto LABEL_233;
      }

      v148 = v147;
      v149 = [v147 sectionAtIndex:v145];

      if (v149)
      {
        objc_opt_self();
        v150 = swift_dynamicCastObjCClass();
        if (v150)
        {
          v151 = [v150 isRankedList];
          swift_unknownObjectRelease();
          if (v151)
          {
            sub_3D224C();
LABEL_204:

            v43 = v35;
            v44 = 0;
            goto LABEL_166;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }

    sub_3D210C();
    goto LABEL_204;
  }

  if (v34 == 4)
  {
    v88 = sub_AB37F0();
    if ((sub_3D64F0(v88, &off_CEFE78) & 1) == 0)
    {
      sub_3D31F8();

      v43 = v35;
      v44 = 4;
      goto LABEL_166;
    }

    sub_3D30EC();
    sub_14C0F8(v219, 0, &v223);

    v79 = v35;
    v80 = 4;
    goto LABEL_105;
  }

  if (v34 == 5)
  {
    sub_3D32FC();

    sub_3EB30(v35, 5);
    swift_unknownObjectRelease();

    return;
  }

  if (v34 != 6)
  {
    goto LABEL_112;
  }

  v45 = v33;
  v46 = &v1[qword_E036E0];
  if (v1[qword_E036E0 + 16])
  {
    v47 = [v1 traitCollection];
    sub_3D2824();
    v49 = sub_B2768(v47, v48);
    v51 = v50;

    *v46 = v49;
    *(v46 + 1) = v51;
    v46[16] = 0;
  }

  else
  {
  }

  sub_3EB30(v45, 6);

  swift_unknownObjectRelease();
}

id sub_3D60D4(uint64_t a1)
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

uint64_t sub_3D6190(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v17[3] = &block_descriptor_275;
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

void sub_3D639C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, void *a6, void *a7)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10 && (v11 = [v10 contentItem]) != 0)
  {
    v12 = v11;
    if (a4())
    {
      if (__OFADD__(*a6, 1))
      {
        goto LABEL_11;
      }

      ++*a6;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  if (!__OFADD__(*a7, 1))
  {
    ++*a7;
    return;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

id sub_3D6464()
{
  v0 = MPModelStoreBrowseContentItem.kind.getter();
  v2 = &dword_0 + 1;
  if (v1 <= 0xBu)
  {
    if (v1 - 8 < 2)
    {
LABEL_9:
      sub_3EB30(v0, v1);
      return v2;
    }

    if (v1 == 7)
    {
      v3 = v0;
      v2 = [v0 hasVideo];
      v0 = v3;
      v1 = 7;
      goto LABEL_9;
    }

LABEL_8:
    v2 = 0;
    goto LABEL_9;
  }

  if (v1 == 12)
  {
    goto LABEL_9;
  }

  if (v1 != 255)
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_3D64F0(uint64_t a1, uint64_t a2)
{
  v5 = qword_E03748;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_2F5A90(a1), (v8 & 1) != 0))
  {
    v9 = *(a2 + 16);
    v10 = (a2 + 32);
    do
    {
      v11 = v9-- != 0;
      v12 = v11;
      if (!v11)
      {
        break;
      }

      v13 = *v10++;
    }

    while (v13 != *(*(v6 + 56) + 8 * v7));
  }

  else
  {
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a2;
    v15[4] = a1;

    v12 = sub_3D6190(a1, sub_3E0FDC, v15);
  }

  return v12 & 1;
}

BOOL sub_3D6624(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v8 = Strong;
  v9 = [a1 itemType];
  v10 = *(a3 + 16);
  v11 = (a3 + 32);
  while (1)
  {
    v12 = v10-- != 0;
    v13 = v12;
    if (!v12)
    {
      break;
    }

    v14 = *v11++;
    if (v14 == v9)
    {
      v15 = qword_E03748;
      v16 = v9;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *&v8[v15];
      *&v8[v15] = 0x8000000000000000;
      sub_94DF0(v16, a4, isUniquelyReferenced_nonNull_native);
      *&v8[v15] = v19;
      swift_endAccess();
      break;
    }
  }

  return v13;
}

id sub_3D6728(uint64_t a1)
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
          v7 = [v6 isFeatured];
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

char *sub_3D67E4(uint64_t a1, unint64_t a2)
{
  v5 = sub_AB35C0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_AB9250();
  __chkstk_darwin(v6 - 8);
  v7 = *(v2 + qword_DFE2F0);
  if (!v7)
  {
    goto LABEL_14;
  }

  result = [v7 results];
  if (!result)
  {
    goto LABEL_19;
  }

  v9 = result;
  v10 = [result sectionAtIndex:sub_AB37F0()];

  if (!v10)
  {
LABEL_14:
    if (!a2)
    {
      return 0;
    }

    return a1;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11 || ![v11 isRankedList])
  {
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1E10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF85F0;
  result = sub_AB37B0();
  if (!__OFADD__(result, 1))
  {
    *(v12 + 56) = &type metadata for Int;
    *(v12 + 64) = &protocol witness table for Int;
    *(v12 + 32) = result + 1;
    *(v12 + 96) = &type metadata for String;
    *(v12 + 104) = sub_2792B0();
    if (a2)
    {
      v13 = a1;
    }

    else
    {
      v13 = 0;
    }

    v14 = 0xE000000000000000;
    if (a2)
    {
      v14 = a2;
    }

    *(v12 + 72) = v13;
    *(v12 + 80) = v14;

    a1 = sub_AB9270();
    swift_unknownObjectRelease();

    return a1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_3D6A78(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v181 - v5;
  v7 = qword_DFE2F0;
  v8 = *&v1[qword_DFE2F0];
  if (!v8)
  {
    goto LABEL_123;
  }

  v9 = [v8 results];
  if (!v9)
  {
    __break(1u);
    goto LABEL_374;
  }

  v10 = v9;
  v11 = [v9 sectionAtIndex:sub_AB37F0()];

  if (!v11)
  {
LABEL_8:
    v8 = 0;
    v12 = *&v2[v7];
    if (v12)
    {
      goto LABEL_9;
    }

LABEL_123:

    return;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v12 = *&v2[v7];
  if (!v12)
  {
    goto LABEL_123;
  }

LABEL_9:
  v199 = v8;
  v13 = v12;
  v14 = [v13 results];

  if (!v14)
  {
    goto LABEL_122;
  }

  isa = sub_AB3770().super.isa;
  v16 = [v14 itemAtIndexPath:isa];

  if (!v16)
  {
    goto LABEL_122;
  }

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    goto LABEL_121;
  }

  v18 = v17;
  v19 = &selRef_isMovingFromParentViewController;
  v198 = a1;
  if (v199)
  {
    if ([v199 uniformCellType] == &dword_8 + 2)
    {
      type metadata accessor for PosterCell();
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = v20;
        v22 = v18;
        v23 = [v18 videoBackgroundArtworkCatalog];
        v24 = *(v21 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_lockupVideoArtworkCatalog);
        *(v21 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_lockupVideoArtworkCatalog) = v23;
        v25 = v23;

        v26 = v23;
        v18 = v22;
        sub_751F4(v26);
        sub_45CBB4();

        v19 = &selRef_isMovingFromParentViewController;
      }
    }
  }

  v27 = [v18 contentItem];
  if (v27)
  {
    v28 = v27;
    v29 = MPModelStoreBrowseContentItem.kind.getter();
    if (v30 != 0xFF)
    {
      v31 = v29;
      LODWORD(v32) = v30;
      type metadata accessor for FeaturedMaterialCell();
      if (!swift_dynamicCastClass())
      {
        type metadata accessor for HorizontalLockupCollectionViewCell();
        v33 = swift_dynamicCastClass();
        v195 = v28;
        v194 = v16;
        v193 = v31;
        v197 = v18;
        v192 = v32;
        if (v33)
        {
          v196 = v33;
          v34 = [v28 innerObject];
          if (v34)
          {
            v35 = v34;
            MPModelObject.artworkPlaceholder.getter(&v200);

            v36 = v204;
            v37 = v203;
            v38 = v202;
            v39 = v201;
            v40 = v200;
            v41 = v200;
            v42 = v201;
            v190 = v202;
          }

          else
          {
            v47 = Artwork.Placeholder.music.unsafeMutableAddressor();
            v48 = *v47;
            v42 = v47[1];
            v50 = v47[2];
            v49 = v47[3];
            v191 = *(v47 + 2);
            v190 = v50;
            v37 = v49;
            v41 = v48;
            v40 = v48;
            v51 = v42;
            v38 = v50;
            v36 = v191;
            v39 = v51;
          }

          v182 = v42;
          v189 = v38;
          v191 = v36;
          v52 = &v196[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
          v188 = *&v196[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
          v187 = *&v196[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
          v186 = *&v196[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
          v185 = *&v196[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
          v184 = *&v196[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 32];
          v183 = *&v196[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 40];
          v181 = v41;
          *v52 = v41;
          *(v52 + 1) = v42;
          *(v52 + 2) = v38;
          *(v52 + 3) = v37;
          *(v52 + 2) = v36;
          v53 = v40;
          v54 = v39;
          v55 = v190;
          v56 = v37;
          v57 = v53;
          v58 = v54;
          v59 = v55;
          v60 = v56;
          sub_2F1C8(v188, v187, v186, v185);
          v61 = *&v196[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
          v62 = *(v61 + 168);
          v212[0] = *(v61 + 152);
          v212[1] = v62;
          v212[2] = *(v61 + 184);
          v63 = v182;
          *(v61 + 152) = v181;
          *(v61 + 160) = v63;
          *(v61 + 168) = v189;
          *(v61 + 176) = v37;
          *(v61 + 184) = v191;
          v32 = v57;
          v64 = v58;
          v65 = v59;
          v66 = v60;
          sub_75948(v212);
          sub_12E1C(v212, &unk_DF8690);

          v28 = v195;
          v31 = v193;
          v18 = v197;
          LOBYTE(v32) = v192;
        }

        type metadata accessor for VerticalLockupCollectionViewCell();
        v67 = swift_dynamicCastClass();
        if (v67)
        {
          *&v191 = v67;
          v68 = [v28 innerObject];
          if (v68)
          {
            v69 = v68;
            MPModelObject.artworkPlaceholder.getter(&v205);

            v71 = v209;
            v70 = v210;
            v72 = v207;
            v196 = v208;
            v74 = v205;
            v73 = v206;
            v75 = v205;
            v190 = v206;
            v189 = v207;
          }

          else
          {
            v76 = Artwork.Placeholder.music.unsafeMutableAddressor();
            v78 = *v76;
            v77 = v76[1];
            v79 = v76[3];
            v71 = v76[4];
            v70 = v76[5];
            v72 = v76[2];
            v189 = v72;
            v80 = v79;
            v81 = v77;
            v196 = v80;
            v75 = v78;
            v74 = v78;
            v190 = v81;
            v73 = v81;
          }

          v82 = v191 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkPlaceholder;
          swift_beginAccess();
          v83 = *(v82 + 8);
          v188 = *v82;
          v187 = v83;
          v84 = *(v82 + 24);
          v186 = *(v82 + 16);
          v185 = v84;
          v85 = *(v82 + 40);
          v184 = *(v82 + 32);
          v183 = v85;
          v182 = v75;
          v86 = v190;
          *v82 = v75;
          *(v82 + 8) = v86;
          v181 = v72;
          v87 = v196;
          *(v82 + 16) = v72;
          *(v82 + 24) = v87;
          v196 = v87;
          *(v82 + 32) = v71;
          *(v82 + 40) = v70;
          v88 = v74;
          v89 = v73;
          v90 = v189;
          v91 = v87;
          v92 = v88;
          v93 = v89;
          v94 = v90;
          v95 = v91;
          sub_2F1C8(v188, v187, v186, v185);
          v96 = *(v191 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
          v97 = *(v96 + 168);
          v211[0] = *(v96 + 152);
          v211[1] = v97;
          v211[2] = *(v96 + 184);
          v98 = v190;
          *(v96 + 152) = v182;
          *(v96 + 160) = v98;
          v99 = v196;
          *(v96 + 168) = v181;
          *(v96 + 176) = v99;
          *(v96 + 184) = v71;
          *(v96 + 192) = v70;
          v32 = v92;
          v100 = v93;
          v101 = v94;
          v102 = v95;
          sub_75948(v211);
          sub_12E1C(v211, &unk_DF8690);

          v28 = v195;
          v31 = v193;
          v18 = v197;
          LOBYTE(v32) = v192;
        }
      }

      if (v32 > 5u)
      {
        v103 = v199;
        if (v32 <= 8u)
        {
          if (v32 != 6)
          {
            if (v32 != 7)
            {
              if (v32 == 8)
              {
                if (v199)
                {
                  if ([v199 uniformCellType] == &dword_0 + 1)
                  {
                    type metadata accessor for AlbumCell();
                    if (swift_dynamicCastClass())
                    {
                      v104 = [v18 backgroundArtworkCatalog];
                      if (!v104)
                      {
                        goto LABEL_341;
                      }

                      goto LABEL_342;
                    }

                    goto LABEL_343;
                  }

                  if ([v199 uniformCellType] == &dword_4 + 3)
                  {
                    type metadata accessor for CustomRoomMusicVideoCell();
                    if (swift_dynamicCastClass())
                    {
                      v104 = [v18 backgroundArtworkCatalog];
                      if (!v104)
                      {
                        goto LABEL_341;
                      }

                      goto LABEL_342;
                    }

                    goto LABEL_343;
                  }

                  if ([v199 uniformCellType] == &dword_4)
                  {
                    type metadata accessor for FeaturedMusicVideoVerticalCell();
                    if (swift_dynamicCastClass())
                    {
                      v104 = [v18 backgroundArtworkCatalog];
                      if (!v104)
                      {
                        goto LABEL_341;
                      }

                      goto LABEL_342;
                    }

                    goto LABEL_343;
                  }

                  if ([v199 uniformCellType] == &dword_4 + 1)
                  {
                    type metadata accessor for FeaturedShowcaseCell();
                    if (swift_dynamicCastClass())
                    {
                      v104 = [v18 backgroundArtworkCatalog];
                      if (!v104)
                      {
                        goto LABEL_341;
                      }

                      goto LABEL_342;
                    }

                    goto LABEL_343;
                  }

                  if ([v199 uniformCellType] == &dword_8 + 2)
                  {
                    type metadata accessor for PosterCell();
                    if (swift_dynamicCastClass())
                    {
                      v104 = [v18 backgroundArtworkCatalog];
                      if (!v104)
                      {
                        goto LABEL_341;
                      }

                      goto LABEL_342;
                    }

                    goto LABEL_343;
                  }
                }

                type metadata accessor for MusicVideoVerticalCell();
                if (swift_dynamicCastClass())
                {
                  v104 = [v18 backgroundArtworkCatalog];
                  if (!v104)
                  {
LABEL_341:
                    v104 = [v31 artworkCatalog];
                  }

LABEL_342:
                  VerticalLockupCollectionViewCell.lockupImageArtworkCatalog.setter(v104);
                }

LABEL_343:

                v120 = v31;
                v121 = 8;
                goto LABEL_362;
              }

              goto LABEL_116;
            }

            if (v199)
            {
              if ([v199 uniformCellType] == &dword_0 + 1)
              {
                type metadata accessor for AlbumCell();
                if (!swift_dynamicCastClass())
                {
LABEL_324:

                  v120 = v31;
                  v121 = 7;
                  goto LABEL_362;
                }

                v110 = [v18 backgroundArtworkCatalog];
                if (v110)
                {
LABEL_91:
                  VerticalLockupCollectionViewCell.lockupImageArtworkCatalog.setter(v110);
                  goto LABEL_324;
                }

LABEL_90:
                v110 = [v31 artworkCatalog];
                goto LABEL_91;
              }

              if ([v199 uniformCellType] == &dword_4 + 3)
              {
                if ([v31 hasVideo])
                {
                  type metadata accessor for CustomRoomMusicVideoCell();
                  if (!swift_dynamicCastClass())
                  {
                    goto LABEL_324;
                  }

                  v110 = [v18 backgroundArtworkCatalog];
                  if (v110)
                  {
                    goto LABEL_91;
                  }
                }

                else
                {
                  type metadata accessor for CustomRoomAlbumCell();
                  if (!swift_dynamicCastClass())
                  {
                    goto LABEL_324;
                  }

                  v110 = [v18 backgroundArtworkCatalog];
                  if (v110)
                  {
                    goto LABEL_91;
                  }
                }

                goto LABEL_90;
              }

              if ([v199 uniformCellType] == &dword_4)
              {
                type metadata accessor for FeaturedMusicVideoVerticalCell();
                if (!swift_dynamicCastClass())
                {
                  goto LABEL_324;
                }

                v110 = [v18 backgroundArtworkCatalog];
                if (v110)
                {
                  goto LABEL_91;
                }

                goto LABEL_90;
              }

              if ([v199 uniformCellType] == &dword_4 + 1)
              {
                type metadata accessor for FeaturedShowcaseCell();
                if (!swift_dynamicCastClass())
                {
                  goto LABEL_324;
                }

                v110 = [v18 backgroundArtworkCatalog];
                if (v110)
                {
                  goto LABEL_91;
                }

                goto LABEL_90;
              }

              if ([v199 uniformCellType] == &dword_8 + 2)
              {
                type metadata accessor for PosterCell();
                if (!swift_dynamicCastClass())
                {
                  goto LABEL_324;
                }

                v110 = [v18 backgroundArtworkCatalog];
                if (v110)
                {
                  goto LABEL_91;
                }

                goto LABEL_90;
              }
            }

            v173 = sub_AB37F0();
            if (sub_3D6728(v173))
            {
              type metadata accessor for FeaturedSongCell();
              if (swift_dynamicCastClass())
              {
                v174 = [v18 backgroundArtworkCatalog];
                if (!v174)
                {
                  v174 = [v31 artworkCatalog];
                }

                sub_1DA784(v174);
              }

              goto LABEL_324;
            }

            if (![v31 hasVideo])
            {
              type metadata accessor for SongCell();
              if (swift_dynamicCastClass())
              {
                v176 = [v18 backgroundArtworkCatalog];
                if (!v176)
                {
                  v176 = [v31 artworkCatalog];
                }

                sub_200534(v176);
              }

              goto LABEL_324;
            }

            v175 = sub_AB37F0();
            if (sub_3D60D4(v175))
            {
              type metadata accessor for RankedMusicVideoVerticalCell();
              if (!swift_dynamicCastClass())
              {
                goto LABEL_324;
              }

              v110 = [v18 backgroundArtworkCatalog];
              if (v110)
              {
                goto LABEL_91;
              }
            }

            else
            {
              type metadata accessor for MusicVideoVerticalCell();
              if (!swift_dynamicCastClass())
              {
                goto LABEL_324;
              }

              v110 = [v18 backgroundArtworkCatalog];
              if (v110)
              {
                goto LABEL_91;
              }
            }

            goto LABEL_90;
          }

          if (!v199)
          {
            goto LABEL_176;
          }

          if ([v199 uniformCellType] == &dword_0 + 2)
          {
            type metadata accessor for PersonVerticalCell();
            v113 = swift_dynamicCastClass();
            if (v113)
            {
              v114 = v113;
              v115 = [v18 backgroundArtworkCatalog];
              if (!v115)
              {
                v115 = [v31 artworkCatalog];
              }

              v116 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
              swift_beginAccess();
              v117 = *(v114 + v116);
              *(v114 + v116) = v115;
              v118 = v31;
              v119 = v115;

              sub_74EA4(v115);
              sub_1FD4B0();

              goto LABEL_109;
            }

LABEL_180:

            v120 = v31;
            v121 = 6;
            goto LABEL_362;
          }

          if ([v199 uniformCellType] != &dword_8)
          {
LABEL_176:
            type metadata accessor for SocialPersonHorizontalCell();
            v146 = swift_dynamicCastClass();
            if (v146)
            {
              v147 = v146;
              v148 = [v18 backgroundArtworkCatalog];
              if (!v148)
              {
                v148 = [v31 artworkCatalog];
              }

              v149 = *(v147 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
              *(v147 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v148;
              v150 = v148;
              v151 = v31;
              v152 = v148;

              sub_74EA4(v150);
              sub_B0D4C();

              v120 = v151;
              v121 = 6;
              goto LABEL_362;
            }

            goto LABEL_180;
          }

          type metadata accessor for SocialPersonVerticalCell();
          if (swift_dynamicCastClass())
          {
            v134 = [v18 backgroundArtworkCatalog];
            if (!v134)
            {
              v134 = [v31 artworkCatalog];
              if (!v134)
              {
                v134 = MPModelPerson.monogramArtworkCatalog.getter();
              }
            }

            VerticalLockupCollectionViewCell.lockupImageArtworkCatalog.setter(v134);
          }

          if (!*&v2[v7])
          {
            goto LABEL_180;
          }

          type metadata accessor for JSShelfModelResponse();
          v135 = swift_dynamicCastClass();
          if (!v135)
          {
            goto LABEL_180;
          }

          v136 = *(v135 + OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults);
          v137 = sub_AB3770().super.isa;
          v138 = [v136 itemAtIndexPath:v137];

          if (!v138)
          {

            v120 = v31;
            goto LABEL_110;
          }

          v118 = v31;
          type metadata accessor for JSShelfItem();
          v139 = swift_dynamicCastClass();
          if (v139)
          {
            v140 = *&stru_298.segname[(swift_isaMask & *v139) - 8];
            v141 = swift_unknownObjectRetain();
            v142 = v140(v141);
            swift_unknownObjectRelease();
            if (!v142)
            {
              swift_unknownObjectRelease();

LABEL_109:
              v120 = v118;
LABEL_110:
              v121 = 6;
LABEL_362:
              sub_3EB30(v120, v121);
              swift_unknownObjectRelease();

              return;
            }

            if (swift_dynamicCastClass())
            {
              v143 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle;
              swift_beginAccess();
              v144 = *&v142[v143];
              if (v144)
              {
                v145 = *&v142[v143];
              }

              else
              {
                v145 = ICStoreArtworkInfoCropStyleBoundedBox;
                v144 = 0;
              }

              v179 = v144;
              v180 = JSArtwork.artworkCatalog(defaultCropStyle:)(v145);

              sub_116218(v180);
            }
          }

          swift_unknownObjectRelease();
          goto LABEL_109;
        }

        if (v32 != 9)
        {
          if (v32 != 12)
          {
            if (v32 == 13)
            {
              if (v199)
              {
                if ([v199 uniformCellType] == &dword_0 + 1)
                {
                  type metadata accessor for AlbumCell();
                  if (swift_dynamicCastClass())
                  {
                    v106 = [v18 backgroundArtworkCatalog];
                    if (!v106)
                    {
                      goto LABEL_350;
                    }

                    goto LABEL_351;
                  }

                  goto LABEL_352;
                }

                if ([v199 uniformCellType] == &dword_4 + 3)
                {
                  type metadata accessor for CustomRoomMusicVideoCell();
                  if (swift_dynamicCastClass())
                  {
                    v106 = [v18 backgroundArtworkCatalog];
                    if (!v106)
                    {
                      goto LABEL_350;
                    }

                    goto LABEL_351;
                  }

                  goto LABEL_352;
                }

                if ([v199 uniformCellType] == &dword_4)
                {
                  type metadata accessor for FeaturedMusicVideoVerticalCell();
                  if (swift_dynamicCastClass())
                  {
                    v106 = [v18 backgroundArtworkCatalog];
                    if (!v106)
                    {
                      goto LABEL_350;
                    }

                    goto LABEL_351;
                  }

                  goto LABEL_352;
                }

                if ([v199 uniformCellType] == &dword_4 + 1)
                {
                  type metadata accessor for FeaturedShowcaseCell();
                  if (swift_dynamicCastClass())
                  {
                    v106 = [v18 backgroundArtworkCatalog];
                    if (!v106)
                    {
                      goto LABEL_350;
                    }

                    goto LABEL_351;
                  }

                  goto LABEL_352;
                }

                if ([v199 uniformCellType] == &dword_8 + 2)
                {
                  type metadata accessor for PosterCell();
                  if (swift_dynamicCastClass())
                  {
                    v106 = [v18 backgroundArtworkCatalog];
                    if (!v106)
                    {
                      goto LABEL_350;
                    }

                    goto LABEL_351;
                  }

                  goto LABEL_352;
                }
              }

              type metadata accessor for MusicVideoVerticalCell();
              if (swift_dynamicCastClass())
              {
                v106 = [v18 backgroundArtworkCatalog];
                if (!v106)
                {
LABEL_350:
                  v106 = [v31 previewArtworkCatalog];
                }

LABEL_351:
                VerticalLockupCollectionViewCell.lockupImageArtworkCatalog.setter(v106);
              }

LABEL_352:

              v120 = v31;
              v121 = 13;
              goto LABEL_362;
            }

LABEL_116:

            v120 = v31;
            v121 = v32;
            goto LABEL_362;
          }

          if (v199)
          {
            if ([v199 uniformCellType] == &dword_0 + 1)
            {
              type metadata accessor for AlbumCell();
              if (swift_dynamicCastClass())
              {
                v111 = [v18 backgroundArtworkCatalog];
                if (!v111)
                {
                  goto LABEL_331;
                }

                goto LABEL_333;
              }

              goto LABEL_334;
            }

            if ([v199 uniformCellType] == &dword_4 + 3)
            {
              type metadata accessor for CustomRoomMusicVideoCell();
              if (swift_dynamicCastClass())
              {
                v111 = [v18 backgroundArtworkCatalog];
                if (!v111)
                {
                  goto LABEL_331;
                }

                goto LABEL_333;
              }

              goto LABEL_334;
            }

            if ([v199 uniformCellType] == &dword_4)
            {
              type metadata accessor for FeaturedMusicVideoVerticalCell();
              if (swift_dynamicCastClass())
              {
                v111 = [v18 backgroundArtworkCatalog];
                if (!v111)
                {
                  goto LABEL_331;
                }

                goto LABEL_333;
              }

              goto LABEL_334;
            }

            if ([v199 uniformCellType] == &dword_4 + 1)
            {
              type metadata accessor for FeaturedShowcaseCell();
              if (swift_dynamicCastClass())
              {
                v111 = [v18 backgroundArtworkCatalog];
                if (!v111)
                {
                  goto LABEL_331;
                }

                goto LABEL_333;
              }

              goto LABEL_334;
            }

            if ([v199 uniformCellType] == &dword_8 + 2)
            {
              type metadata accessor for PosterCell();
              if (swift_dynamicCastClass())
              {
                v111 = [v18 backgroundArtworkCatalog];
                if (!v111)
                {
                  v177 = [v31 artworkCatalog];
LABEL_332:
                  v111 = v177;
                  goto LABEL_333;
                }

                goto LABEL_333;
              }

              goto LABEL_334;
            }
          }

          type metadata accessor for MusicVideoVerticalCell();
          if (swift_dynamicCastClass())
          {
            v111 = [v18 backgroundArtworkCatalog];
            if (!v111)
            {
LABEL_331:
              v177 = [v31 editorialArtworkCatalog];
              goto LABEL_332;
            }

LABEL_333:
            VerticalLockupCollectionViewCell.lockupImageArtworkCatalog.setter(v111);
          }

LABEL_334:

          v120 = v31;
          v121 = 12;
          goto LABEL_362;
        }

        if (v199)
        {
          if ([v199 uniformCellType] == &dword_0 + 1)
          {
            type metadata accessor for AlbumCell();
            if (swift_dynamicCastClass())
            {
              v122 = [v18 backgroundArtworkCatalog];
              if (!v122)
              {
                goto LABEL_359;
              }

              goto LABEL_360;
            }

            goto LABEL_361;
          }

          if ([v199 uniformCellType] == &dword_4 + 3)
          {
            type metadata accessor for CustomRoomAlbumCell();
            if (swift_dynamicCastClass())
            {
              v122 = [v18 backgroundArtworkCatalog];
              if (!v122)
              {
                goto LABEL_359;
              }

              goto LABEL_360;
            }

            goto LABEL_361;
          }

          if ([v199 uniformCellType] == &dword_4)
          {
            type metadata accessor for FeaturedMusicVideoVerticalCell();
            if (swift_dynamicCastClass())
            {
              v122 = [v18 backgroundArtworkCatalog];
              if (!v122)
              {
                goto LABEL_359;
              }

              goto LABEL_360;
            }

            goto LABEL_361;
          }

          if ([v199 uniformCellType] == &dword_4 + 1)
          {
            type metadata accessor for FeaturedShowcaseCell();
            if (swift_dynamicCastClass())
            {
              v122 = [v18 backgroundArtworkCatalog];
              if (!v122)
              {
                goto LABEL_359;
              }

              goto LABEL_360;
            }

            goto LABEL_361;
          }

          if ([v199 uniformCellType] == &dword_8 + 2)
          {
            type metadata accessor for PosterCell();
            if (swift_dynamicCastClass())
            {
              v122 = [v18 backgroundArtworkCatalog];
              if (!v122)
              {
                goto LABEL_359;
              }

              goto LABEL_360;
            }

            goto LABEL_361;
          }
        }

        type metadata accessor for AlbumCell();
        if (swift_dynamicCastClass())
        {
          v122 = [v18 backgroundArtworkCatalog];
          if (!v122)
          {
LABEL_359:
            v122 = [v31 artworkCatalog];
          }

LABEL_360:
          VerticalLockupCollectionViewCell.lockupImageArtworkCatalog.setter(v122);
        }

LABEL_361:

        v120 = v31;
        v121 = 9;
        goto LABEL_362;
      }

      v103 = v199;
      if (v32 > 2u)
      {
        if (v32 != 3)
        {
          if (v32 != 4)
          {
            if (v32 != 5)
            {
              goto LABEL_116;
            }

            if (v199)
            {
              if (([v199 uniformCellType] | 8) == 9)
              {
                type metadata accessor for AlbumCell();
                if (swift_dynamicCastClass())
                {
                  v105 = [v18 backgroundArtworkCatalog];
                  if (v105)
                  {
LABEL_188:
                    VerticalLockupCollectionViewCell.lockupImageArtworkCatalog.setter(v105);
                    goto LABEL_282;
                  }

LABEL_60:
                  v105 = [v31 artworkCatalog];
                  goto LABEL_188;
                }

LABEL_282:

                v120 = v31;
                v121 = 5;
                goto LABEL_362;
              }

              if ([v199 uniformCellType] == &dword_4 + 3)
              {
                type metadata accessor for CustomRoomAlbumCell();
                if (swift_dynamicCastClass())
                {
                  v105 = [v18 backgroundArtworkCatalog];
                  if (v105)
                  {
                    goto LABEL_188;
                  }

                  goto LABEL_60;
                }

                goto LABEL_282;
              }

              if ([v199 uniformCellType] == &dword_0 + 3)
              {
                type metadata accessor for FeaturedRadioShowCell();
                if (!swift_dynamicCastClass())
                {
                  goto LABEL_282;
                }

                v166 = [v18 backgroundArtworkCatalog];
                if (!v166)
                {
                  goto LABEL_280;
                }

                goto LABEL_281;
              }

              if ([v199 uniformCellType] == &dword_8 + 2)
              {
                type metadata accessor for PosterCell();
                if (!swift_dynamicCastClass())
                {
                  goto LABEL_282;
                }

                v105 = [v18 backgroundArtworkCatalog];
                if (v105)
                {
                  goto LABEL_188;
                }

                goto LABEL_60;
              }
            }

            type metadata accessor for RadioStationCell();
            if (!swift_dynamicCastClass())
            {
              goto LABEL_282;
            }

            v166 = [v18 backgroundArtworkCatalog];
            if (!v166)
            {
LABEL_280:
              v166 = [v31 artworkCatalog];
            }

LABEL_281:
            sub_200534(v166);
            goto LABEL_282;
          }

          if (!v199)
          {
            goto LABEL_201;
          }

          if ([v199 uniformCellType] == &dword_0 + 1)
          {
            type metadata accessor for AlbumCell();
            if (!swift_dynamicCastClass())
            {
              goto LABEL_196;
            }
          }

          else if ([v199 uniformCellType] == &dword_4 + 3)
          {
            type metadata accessor for CustomRoomAlbumCell();
            if (!swift_dynamicCastClass())
            {
              goto LABEL_196;
            }
          }

          else
          {
            if ([v199 uniformCellType] != &dword_8 + 2)
            {
              goto LABEL_196;
            }

            type metadata accessor for PosterCell();
            if (!swift_dynamicCastClass())
            {
              goto LABEL_196;
            }
          }

          v153 = [v18 backgroundArtworkCatalog];
          if (!v153)
          {
            v153 = MPModelPlaylist.preferredArtworkCatalog.getter();
          }

          VerticalLockupCollectionViewCell.lockupImageArtworkCatalog.setter(v153);
LABEL_196:
          if ([v199 uniformCellType] == &dword_0 + 3)
          {
            type metadata accessor for FeaturedRadioShowCell();
            if (swift_dynamicCastClass())
            {
              v154 = [v18 backgroundArtworkCatalog];
              if (!v154)
              {
                v154 = [v31 artworkCatalog];
              }

              sub_200534(v154);
            }

LABEL_206:

            v120 = v31;
            v121 = 4;
            goto LABEL_362;
          }

LABEL_201:
          v155 = sub_AB37F0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03798);
          v156 = swift_allocObject();
          *(v156 + 16) = xmmword_AF4EC0;
          *(v156 + 32) = 7;
          LOBYTE(v155) = sub_3D64F0(v155, v156);

          if (v155)
          {
            type metadata accessor for SongCell();
            if (swift_dynamicCastClass())
            {
              v157 = MPModelPlaylist.preferredArtworkCatalog.getter();
              sub_200534(v157);
            }
          }

          else
          {
            type metadata accessor for FeaturedPlaylistCell();
            if (swift_dynamicCastClass())
            {
              v158 = MPModelPlaylist.preferredArtworkCatalog.getter();
              VerticalLockupCollectionViewCell.lockupImageArtworkCatalog.setter(v158);
            }
          }

          goto LABEL_206;
        }

        if (v199)
        {
          if ([v199 uniformCellType] == &dword_0 + 3)
          {
            type metadata accessor for FeaturedRadioShowCell();
            if (swift_dynamicCastClass())
            {
              v112 = [v18 backgroundArtworkCatalog];
              if (!v112)
              {
                v112 = [v31 editorialArtworkCatalog];
              }

              sub_200534(v112);
            }

            goto LABEL_228;
          }

          if ([v199 uniformCellType] == &dword_8 + 2)
          {
            type metadata accessor for PosterCell();
            if (swift_dynamicCastClass())
            {
              v133 = [v18 backgroundArtworkCatalog];
              if (!v133)
              {
                goto LABEL_226;
              }

              goto LABEL_227;
            }

            goto LABEL_228;
          }

          if ([v199 uniformCellType] == &dword_4 + 2)
          {
            type metadata accessor for FeaturedPlaylistCell();
            if (swift_dynamicCastClass())
            {
              v133 = [v18 backgroundArtworkCatalog];
              if (!v133)
              {
                goto LABEL_226;
              }

              goto LABEL_227;
            }

            goto LABEL_228;
          }
        }

        if ([v31 curatorKind] == &dword_0 + 3)
        {
          type metadata accessor for CuratorActivityCell();
          if (swift_dynamicCastClass())
          {
            v133 = [v18 backgroundArtworkCatalog];
            if (!v133)
            {
              goto LABEL_226;
            }

            goto LABEL_227;
          }
        }

        else
        {
          if ([v31 curatorKind] != &dword_0 + 1)
          {
            type metadata accessor for PersonVerticalCell();
            v159 = swift_dynamicCastClass();
            if (v159)
            {
              v160 = v159;
              v161 = [v18 backgroundArtworkCatalog];
              if (!v161)
              {
                v161 = [v31 editorialArtworkCatalog];
              }

              v162 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
              swift_beginAccess();
              v163 = *(v160 + v162);
              *(v160 + v162) = v161;
              v164 = v31;
              v165 = v161;

              sub_74EA4(v161);
              sub_1FD4B0();

              v120 = v164;
              v121 = 3;
              goto LABEL_362;
            }

            goto LABEL_228;
          }

          type metadata accessor for RadioShowCell();
          if (swift_dynamicCastClass())
          {
            v133 = [v18 backgroundArtworkCatalog];
            if (!v133)
            {
LABEL_226:
              v133 = [v31 editorialArtworkCatalog];
            }

LABEL_227:
            VerticalLockupCollectionViewCell.lockupImageArtworkCatalog.setter(v133);
          }
        }

LABEL_228:

        v120 = v31;
        v121 = 3;
        goto LABEL_362;
      }

      if (v32)
      {
        if (v32 != 1)
        {
          goto LABEL_116;
        }

        if (v199)
        {
          if ([v199 uniformCellType] == &dword_4 + 3)
          {
            type metadata accessor for CustomRoomAlbumCell();
            if (swift_dynamicCastClass())
            {
              v107 = [v18 backgroundArtworkCatalog];
              if (!v107)
              {
                v107 = [v31 artworkCatalog];
              }

              VerticalLockupCollectionViewCell.lockupImageArtworkCatalog.setter(v107);
              sub_ABA670();
              v108 = sub_ABA680();
              (*(*(v108 - 8) + 56))(v6, 0, 1, v108);
              VerticalLockupCollectionViewCell.artworkCornerTreatment.setter(v6);
            }

LABEL_137:

            v120 = v31;
            v121 = 1;
            goto LABEL_362;
          }

          if ([v199 uniformCellType] == &dword_8 + 2)
          {
            type metadata accessor for PosterCell();
            if (swift_dynamicCastClass())
            {
              v125 = [v18 backgroundArtworkCatalog];
              if (!v125)
              {
                v125 = [v31 artworkCatalog];
              }

              VerticalLockupCollectionViewCell.lockupImageArtworkCatalog.setter(v125);
            }

            goto LABEL_137;
          }
        }

        type metadata accessor for PersonVerticalCell();
        v126 = swift_dynamicCastClass();
        if (v126)
        {
          v127 = v126;
          v128 = [v18 backgroundArtworkCatalog];
          if (!v128)
          {
            v128 = [v31 artworkCatalog];
          }

          v129 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
          swift_beginAccess();
          v130 = *(v127 + v129);
          *(v127 + v129) = v128;
          v131 = v31;
          v132 = v128;

          sub_74EA4(v128);
          sub_1FD4B0();

          v120 = v131;
          v121 = 1;
          goto LABEL_362;
        }

        goto LABEL_137;
      }

      v197 = v18;
      v109 = [v18 backgroundArtworkCatalog];
      if (!v109)
      {
        v109 = [v31 artworkCatalog];
      }

      if (!v199)
      {
        goto LABEL_290;
      }

      if ([v199 uniformCellType] == &dword_0 + 1)
      {
        type metadata accessor for AlbumCell();
      }

      else if ([v199 uniformCellType] == &dword_4 + 3)
      {
        type metadata accessor for CustomRoomAlbumCell();
      }

      else if ([v199 uniformCellType] == &dword_4 + 1)
      {
        type metadata accessor for FeaturedShowcaseCell();
      }

      else if ([v199 uniformCellType] == &dword_4 + 2)
      {
        type metadata accessor for FeaturedPlaylistCell();
      }

      else
      {
        if ([v199 uniformCellType] != &dword_8 + 2)
        {
          if ([v199 uniformCellType] == &dword_8 + 3)
          {
            type metadata accessor for RadioStationCell();
            if (swift_dynamicCastClass())
            {
              v178 = v109;
              sub_200534(v109);
            }
          }

LABEL_287:
          if ([v199 uniformCellType] == &dword_0 + 3)
          {
            type metadata accessor for FeaturedRadioShowCell();
            if (swift_dynamicCastClass())
            {
              sub_200534(v109);
            }

            else
            {
            }

            v120 = v31;
LABEL_302:
            v121 = 0;
            goto LABEL_362;
          }

LABEL_290:
          v168 = sub_AB37F0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03798);
          v169 = swift_allocObject();
          *(v169 + 16) = xmmword_AF4EC0;
          *(v169 + 32) = 7;
          LOBYTE(v168) = sub_3D64F0(v168, v169);

          if (v168)
          {
            type metadata accessor for SongCell();
            v170 = v31;
            if (swift_dynamicCastClass())
            {
              v171 = [v197 backgroundArtworkCatalog];
              if (!v171)
              {
                v171 = [v31 artworkCatalog];
              }

              sub_200534(v171);
            }
          }

          else
          {
            type metadata accessor for AlbumCell();
            v170 = v31;
            if (swift_dynamicCastClass())
            {
              v172 = [v197 backgroundArtworkCatalog];
              if (!v172)
              {
                v172 = [v31 artworkCatalog];
              }

              VerticalLockupCollectionViewCell.lockupImageArtworkCatalog.setter(v172);
            }
          }

          v120 = v170;
          goto LABEL_302;
        }

        type metadata accessor for PosterCell();
      }

      if (swift_dynamicCastClass())
      {
        v167 = v109;
        VerticalLockupCollectionViewCell.lockupImageArtworkCatalog.setter(v109);
      }

      goto LABEL_287;
    }

    v19 = &selRef_isMovingFromParentViewController;
  }

  if (v199)
  {
    if ([v199 v19[196]] != &dword_8)
    {
      if ([v199 v19[196]] != &dword_8 + 2)
      {
        goto LABEL_121;
      }

      type metadata accessor for PosterCell();
      if (!swift_dynamicCastClass())
      {
        goto LABEL_121;
      }

      v43 = [v18 backgroundArtworkCatalog];
      goto LABEL_120;
    }

    type metadata accessor for SocialPersonVerticalCell();
    if (swift_dynamicCastClass())
    {
      v43 = [v18 backgroundArtworkCatalog];
      if (v43)
      {
LABEL_120:
        VerticalLockupCollectionViewCell.lockupImageArtworkCatalog.setter(v43);
        goto LABEL_121;
      }

      v44 = swift_dynamicCastClass();
      if (v44)
      {
        v45 = *(v44 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_title);
        v46 = *(v44 + OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_title + 8);
      }

      else
      {
        v45 = 0;
        v46 = 0;
      }

      [v2 loadViewIfNeeded];
      v123 = *&v2[qword_DFE2F8];
      if (v123)
      {
        sub_13C80(0, &qword_E04530);
        v124 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v45, v46, [v123 effectiveUserInterfaceLayoutDirection], 0);

        v43 = v124;
        goto LABEL_120;
      }

LABEL_374:
      __break(1u);
      return;
    }

LABEL_121:
    swift_unknownObjectRelease();
LABEL_122:
    v8 = v199;
    goto LABEL_123;
  }

  swift_unknownObjectRelease();
}

void sub_3D94EC(void *a1, char a2)
{
  v5 = v2 + qword_E03710;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v2 + qword_E03668;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  v7 = v2 + qword_E03670;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  v8 = v2 + qword_E03690;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = v2 + qword_E03698;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  v10 = v2 + qword_E036A8;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  v11 = v2 + qword_E036B0;
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 1;
  v12 = v2 + qword_E036B8;
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  v13 = v2 + qword_E036C8;
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  v14 = v2 + qword_E036D0;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  v15 = v2 + qword_E03678;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  v16 = v2 + qword_E03680;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  v17 = v2 + qword_E03688;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  v18 = v2 + qword_E036A0;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  v19 = v2 + qword_E036D8;
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 1;
  v20 = v2 + qword_E036C0;
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = 1;
  v21 = v2 + qword_E036E0;
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = 1;
  v22 = v2 + qword_E036E8;
  *v22 = 0;
  *(v22 + 8) = 0;
  *(v22 + 16) = 1;
  v23 = v2 + qword_E036F0;
  *v23 = 0;
  *(v23 + 8) = 0;
  *(v23 + 16) = 1;
  v24 = v2 + qword_E036F8;
  *v24 = 0;
  *(v24 + 8) = 0;
  *(v24 + 16) = 1;
  v25 = v2 + qword_E03638;
  *v25 = 0;
  *(v25 + 8) = 0;
  *(v25 + 16) = 1;
  *(v2 + qword_E03640) = 2;
  v26 = qword_E03748;
  swift_beginAccess();
  *(v2 + v26) = _swiftEmptyDictionarySingleton;

  *(v2 + qword_E03740) = 2;
  [swift_getObjCClassFromObject() invalidationContextClass];
  swift_getObjCClassMetadata();
  sub_13C80(0, &unk_DFED50);
  swift_dynamicCastMetatypeUnconditional();
  v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [a1 invalidateLayoutWithContext:v27];
  if (a2)
  {
    sub_3D97A0();
  }
}

void sub_3D97A0()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v6 = __chkstk_darwin(v5 - 8);
  v44 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v43 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1D10);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = *&v0[qword_E03720];
  v13 = *&v0[qword_E03720 + 8];
  [v0 loadViewIfNeeded];
  v40 = v0;
  v14 = *&v0[qword_DFE2F8];
  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = v14;
  v38 = v13;
  v39 = v12;
  v16 = UICollectionView.visibleSupplementaryElements(of:)(v12, v13);
  v35 = v17;
  v36 = v18;

  v19 = v16;
  v20 = 0;
  v33 = v2 + 16;
  v34 = v2;
  v21 = *(v16 + 16);
  v41 = (v2 + 56);
  v42 = v16;
  v22 = (v2 + 48);
  v23 = (v2 + 32);
  v24 = (v2 + 8);
  for (i = v21; ; v21 = i)
  {
    v25 = v43;
    if (v20 == v21)
    {
      v26 = 1;
      v20 = v21;
      goto LABEL_8;
    }

    if ((v20 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v20 >= *(v19 + 16))
    {
      goto LABEL_14;
    }

    (*(v34 + 16))(v43, v19 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v20, v1);
    v26 = 0;
    ++v20;
LABEL_8:
    v27 = 1;
    (*v41)(v25, v26, 1, v1);
    v28 = v25;
    v29 = v44;
    sub_36B0C(v28, v44, &unk_DE8E20);
    if ((*v22)(v29, 1, v1) != 1)
    {
      (*v23)(v4, v44, v1);
      v35(v4);
      (*v24)(v4, v1);
      v27 = 0;
    }

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1D20);
    (*(*(v30 - 8) + 56))(v11, v27, 1, v30);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1D20);
    if ((*(*(v31 - 8) + 48))(v11, 1, v31) == 1)
    {

      return;
    }

    v32 = *&v11[*(v31 + 48)];
    (*v23)(v4, v11, v1);
    sub_3D1618(v32, v39, v38);
    (*v24)(v4, v1);

    v19 = v42;
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_3D9C3C()
{
}

id JSShelfViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSShelfViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_3D9D38(uint64_t a1)
{
}

uint64_t sub_3D9ECC(char a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v8 = *a4;
  v9 = swift_beginAccess();
  *(v5 + v8) = a1;
  return a5(v9);
}

double sub_3D9FA0@<D0>(_OWORD *a1@<X8>)
{
  sub_3BD82C(v7);
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

id sub_3DA068(double a1, double a2, double a3, double a4)
{
  v16.receiver = v4;
  v16.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v16, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (result)
  {
    v10 = result;
    sub_13C80(0, &qword_E04510);
    v11 = sub_AB9760();

    v12 = *&v4[OBJC_IVAR____TtC16MusicApplication39SocialProfilesShelfCollectionViewLayout_socialProfilesHelper];
    v13 = *&v4[OBJC_IVAR____TtC16MusicApplication39SocialProfilesShelfCollectionViewLayout_socialProfilesHelper + 8];

    v15 = sub_3AF124(v14, v12, v13);

    sub_199C0(v15);
    return v11;
  }

  return result;
}

id sub_3DA210(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (*&v2[OBJC_IVAR____TtC16MusicApplication39SocialProfilesShelfCollectionViewLayout_socialProfilesHelper] != a1 || *&v2[OBJC_IVAR____TtC16MusicApplication39SocialProfilesShelfCollectionViewLayout_socialProfilesHelper + 8] != a2)
  {
    v8 = ObjectType;
    if ((sub_ABB3C0() & 1) == 0)
    {
      v15 = sub_AB9260();
      isa = sub_AB3770().super.isa;
      v17.receiver = v3;
      v17.super_class = v8;
      v11 = objc_msgSendSuper2(&v17, "layoutAttributesForSupplementaryViewOfKind:atIndexPath:", v15, isa);

LABEL_10:
      return v11;
    }
  }

  v9 = sub_AB9260();
  v10 = sub_AB3770().super.isa;
  v11 = [objc_opt_self() layoutAttributesForSupplementaryViewOfKind:v9 withIndexPath:v10];

  v12 = sub_AB3770().super.isa;
  v13 = [v3 layoutAttributesForItemAtIndexPath:v12];

  if (v13)
  {
    if (!v11)
    {

      return v11;
    }

    isa = v11;
    [v13 frame];
    [(objc_class *)isa setFrame:?];

    goto LABEL_10;
  }

  return v11;
}

char *sub_3DA4F0(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v31 - v6;
  v8 = sub_AB3820();
  v35 = *(v8 - 8);
  __chkstk_darwin(v8);
  v39 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  v10 = a1;
  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v33 = v5;
    v12 = 0;
    v5 = v10;
    v13 = v10 & 0xC000000000000001;
    v14 = v10 & 0xFFFFFFFFFFFFFF8;
    v15 = (v35 + 48);
    v36 = (v35 + 32);
    v37 = (v35 + 56);
    v40 = _swiftEmptyArrayStorage;
    v34 = v5;
    v38 = i;
    v32 = (v35 + 48);
    while (1)
    {
      if (v13)
      {
        v16 = sub_3616B4(v12, v5);
      }

      else
      {
        if (v12 >= *(v14 + 16))
        {
          goto LABEL_24;
        }

        v16 = *&v5[8 * v12 + 32];
      }

      v17 = v16;
      a1 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if ([v16 updateAction] == &dword_0 + 1)
      {
        v18 = v14;
        v19 = v13;
        v20 = v5;
        v21 = [v17 indexPathBeforeUpdate];
        if (v21)
        {
          v22 = v21;
          v23 = v33;
          sub_AB3790();

          v24 = 0;
        }

        else
        {
          v24 = 1;
          v23 = v33;
        }

        (*v37)(v23, v24, 1, v8);
        sub_36B0C(v23, v7, &unk_DE8E20);
        i = v38;
        v5 = v20;
        v13 = v19;
        v14 = v18;
        v15 = v32;
      }

      else
      {
        (*v37)(v7, 1, 1, v8);
      }

      if ((*v15)(v7, 1, v8) == 1)
      {
        sub_12E1C(v7, &unk_DE8E20);
      }

      else
      {
        v25 = *v36;
        (*v36)(v39, v7, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_6AE4C(0, *(v40 + 2) + 1, 1, v40);
        }

        v27 = *(v40 + 2);
        v26 = *(v40 + 3);
        if (v27 >= v26 >> 1)
        {
          v40 = sub_6AE4C(v26 > 1, v27 + 1, 1, v40);
        }

        v28 = v39;
        v29 = v40;
        *(v40 + 2) = v27 + 1;
        v25(&v29[((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v27], v28, v8);
        v5 = v34;
        i = v38;
      }

      ++v12;
      if (a1 == i)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v10 = a1;
  }

  return _swiftEmptyArrayStorage;
}

char *sub_3DA8F0(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v27 - v6;
  v8 = sub_AB3820();
  v31 = *(v8 - 8);
  __chkstk_darwin(v8);
  v36 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v29 = v5;
    v11 = 0;
    v12 = a1 & 0xC000000000000001;
    v5 = (a1 & 0xFFFFFFFFFFFFFF8);
    v34 = (v31 + 48);
    v35 = (v31 + 56);
    v33 = (v31 + 32);
    v13 = _swiftEmptyArrayStorage;
    v30 = a1;
    v32 = i;
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v12)
      {
        v14 = sub_3616B4(v11, a1);
      }

      else
      {
        if (v11 >= *(v5 + 2))
        {
          goto LABEL_24;
        }

        v14 = *(a1 + 8 * v11 + 32);
      }

      v15 = v14;
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if ([v14 updateAction])
      {
        (*v35)(v7, 1, 1, v8);
      }

      else
      {
        v17 = v12;
        v18 = a1;
        v19 = [v15 indexPathAfterUpdate];
        if (v19)
        {
          v20 = v19;
          v21 = v29;
          sub_AB3790();

          v22 = 0;
        }

        else
        {
          v22 = 1;
          v21 = v29;
        }

        i = v32;
        (*v35)(v21, v22, 1, v8);
        sub_36B0C(v21, v7, &unk_DE8E20);
        a1 = v18;
        v12 = v17;
        v5 = v28;
      }

      if ((*v34)(v7, 1, v8) == 1)
      {
        sub_12E1C(v7, &unk_DE8E20);
      }

      else
      {
        v23 = *v33;
        (*v33)(v36, v7, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_6AE4C(0, *(v13 + 2) + 1, 1, v13);
        }

        v25 = *(v13 + 2);
        v24 = *(v13 + 3);
        if (v25 >= v24 >> 1)
        {
          v13 = sub_6AE4C(v24 > 1, v25 + 1, 1, v13);
        }

        *(v13 + 2) = v25 + 1;
        v23(&v13[((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v25], v36, v8);
        a1 = v30;
        i = v32;
      }

      ++v11;
      if (v16 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  return _swiftEmptyArrayStorage;
}

Class sub_3DACD4(char *a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  if (*&a1[OBJC_IVAR____TtC16MusicApplication39SocialProfilesShelfCollectionViewLayout_updateItems])
  {
    v6 = a3;
    v7 = a1;

    a4(v8);
  }

  sub_AB3820();
  v9.super.isa = sub_AB9740().super.isa;

  return v9.super.isa;
}

uint64_t sub_3DAEC0()
{
}

uint64_t sub_3DAF68(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

void sub_3DAF78(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v73 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v5 - 8);
  v72 = v64 - v6;
  v7 = sub_AB3430();
  v70 = *(v7 - 8);
  v71 = v7;
  __chkstk_darwin(v7);
  v68 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Metrics.Event.Action(0);
  __chkstk_darwin(v9);
  v11 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Metrics.Event(0);
  v13 = __chkstk_darwin(v12);
  v15 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v69 = v64 - v16;
  v17 = sub_AB3820();
  v75 = *(v17 - 8);
  v76 = v17;
  v18 = __chkstk_darwin(v17);
  v20 = v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = v64 - v22;
  __chkstk_darwin(v21);
  v25 = v64 - v24;
  objc_opt_self();
  v77 = a1;
  v26 = swift_dynamicCastObjCClass();
  if (!v26)
  {
    return;
  }

  v27 = *&v3[qword_DFE2F0];
  if (!v27)
  {
    return;
  }

  v28 = v26;
  swift_unknownObjectRetain();
  v74 = v27;
  [v3 loadViewIfNeeded];
  v29 = *&v3[qword_DFE2F8];
  if (!v29)
  {
    __break(1u);
    goto LABEL_30;
  }

  v30 = [v29 indexPathForCell:v28];
  v31 = v75;
  if (!v30)
  {
    swift_unknownObjectRelease();
    v50 = v74;

    return;
  }

  v32 = v30;
  sub_AB3790();

  v33 = v76;
  (*(v31 + 32))(v25, v23, v76);
  type metadata accessor for JSShelfModelResponse();
  v34 = swift_dynamicCastClass();
  if (!v34)
  {

    (*(v31 + 8))(v25, v33);
    goto LABEL_23;
  }

  v67 = v3;
  v35 = *(v34 + OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults);
  isa = sub_AB3770().super.isa;
  v37 = [v35 itemAtIndexPath:isa];

  if (!v37)
  {
    (*(v31 + 8))(v25, v76);
LABEL_25:
    swift_unknownObjectRelease();

    return;
  }

  swift_getObjectType();
  v38 = swift_conformsToProtocol2();
  if (!v38)
  {

    swift_unknownObjectRelease();
    (*(v31 + 8))(v25, v76);
    goto LABEL_23;
  }

  v65 = v38;
  v66 = v37;
  v39 = [v74 results];
  if (!v39)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v40 = v39;
  v41 = sub_AB3770().super.isa;
  v42 = [v40 itemAtIndexPath:v41];

  objc_opt_self();
  v43 = swift_dynamicCastObjCClass();
  if (!v43)
  {

    swift_unknownObjectRelease();
    (*(v31 + 8))(v25, v76);
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v44 = [v43 contentItem];
  if (!v44 || (v45 = v44, v46 = [v44 innerObject], v45, !v46))
  {
    (*(v31 + 8))(v25, v76);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v64[1] = v42;
  v47 = v73[32];
  v48 = v76;
  if ((v47 & 0xFE) == 0x7A || (v49 = v47 >> 1, v49 <= 125) && ((v49 - 62) < 2 || v49 == 125))
  {

    (*(v31 + 8))(v25, v48);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_23:
    swift_unknownObjectRelease();
    return;
  }

  swift_storeEnumTagMultiPayload();
  v51 = v12[6];
  v52 = v12[7];
  v53 = v12[8];
  sub_3E0D84(v11, v15, type metadata accessor for Metrics.Event.Action);
  v15[v12[5]] = 0;
  *&v15[v51] = v46;
  *&v15[v52] = 0;
  *&v15[v53] = 0;
  v54 = v69;
  sub_3E0D84(v15, v69, type metadata accessor for Metrics.Event);
  v73 = v46;
  sub_3BD760();
  v55 = v75;
  v56 = v76;
  (*(v75 + 16))(v20, v25, v76);
  sub_3E046C(&qword_DFAA90, &type metadata accessor for IndexPath);
  sub_ABAD10();
  v57 = v68;
  sub_AB3420();
  sub_15F84(v79, v78, &qword_DF2BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BD0);
  v58 = v72;
  v59 = swift_dynamicCast();
  (*(v55 + 56))(v58, v59 ^ 1u, 1, v56);
  v60 = sub_2CB91C(1u, v57, v58);
  (*(v70 + 8))(v57, v71);
  sub_12E1C(v79, &qword_DF2BD0);
  sub_12E1C(v58, &unk_DE8E20);

  ObjectType = swift_getObjectType();
  sub_12AFE8();
  v63 = v62;
  (*(v65 + 8))(v54, v60, v62, ObjectType);

  sub_3E0E74(v54, type metadata accessor for Metrics.Event);
  (*(v55 + 8))(v25, v56);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

id sub_3DB858()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B00DB0;
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
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_AB92A0();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_AB92A0();
  *(v0 + 152) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF8820;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF4EC0;
  *(v11 + 32) = sub_AB92A0();
  *(v11 + 40) = v12;
  isa = sub_AB9740().super.isa;
  v14 = objc_opt_self();
  v15 = [v14 propertySetWithProperties:isa];

  *(inited + 48) = v15;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_AF4EC0;
  *(v17 + 32) = sub_AB92A0();
  *(v17 + 40) = v18;
  v19 = sub_AB9740().super.isa;
  v20 = [v14 propertySetWithProperties:v19];

  *(inited + 72) = v20;
  *(inited + 80) = sub_AB92A0();
  *(inited + 88) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_AF85F0;
  *(v22 + 32) = sub_AB92A0();
  *(v22 + 40) = v23;
  *(v22 + 48) = sub_AB92A0();
  *(v22 + 56) = v24;
  v25 = sub_AB9740().super.isa;
  v26 = [v14 propertySetWithProperties:v25];

  *(inited + 96) = v26;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
  swift_arrayDestroy();
  v27 = objc_allocWithZone(MPPropertySet);
  v28 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v29 = sub_AB8FD0().super.isa;

  v30 = [v27 initWithProperties:v28 relationships:v29];

  sub_13C80(0, &qword_DE8E90);
  v31 = sub_10F414();
  v32 = [v30 propertySetByCombiningWithPropertySet:v31];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v34 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v35 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v36 = [v34 propertySetByCombiningWithPropertySet:v35];

  v37 = [v32 propertySetByCombiningWithPropertySet:v36];
  return v37;
}

id sub_3DBCF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B0CE60;
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
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_AB92A0();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_AB92A0();
  *(v0 + 152) = v8;
  *(v0 + 160) = sub_AB92A0();
  *(v0 + 168) = v9;
  *(v0 + 176) = sub_AB92A0();
  *(v0 + 184) = v10;
  *(v0 + 192) = sub_AB92A0();
  *(v0 + 200) = v11;
  *(v0 + 208) = sub_AB92A0();
  *(v0 + 216) = v12;
  *(v0 + 224) = sub_AB92A0();
  *(v0 + 232) = v13;
  *(v0 + 240) = sub_AB92A0();
  *(v0 + 248) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_AF4EC0;
  *(v17 + 32) = sub_AB92A0();
  *(v17 + 40) = v18;
  isa = sub_AB9740().super.isa;
  v20 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v20;
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &unk_DE8E80);
  v21 = objc_allocWithZone(MPPropertySet);
  v22 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v23 = sub_AB8FD0().super.isa;

  v24 = [v21 initWithProperties:v22 relationships:v23];

  sub_13C80(0, &unk_DE8EA0);
  v25 = sub_10F414();
  v26 = [v24 propertySetByCombiningWithPropertySet:v25];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v29 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v30 = [v28 propertySetByCombiningWithPropertySet:v29];

  v31 = [v26 propertySetByCombiningWithPropertySet:v30];
  return v31;
}

id sub_3DC0D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85F0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_AF4EC0;
  *(v5 + 32) = sub_AB92A0();
  *(v5 + 40) = v6;
  isa = sub_AB9740().super.isa;
  v8 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v8;
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &unk_DE8E80);
  v9 = objc_allocWithZone(MPPropertySet);
  v10 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v11 = sub_AB8FD0().super.isa;

  v12 = [v9 initWithProperties:v10 relationships:v11];

  sub_13C80(0, &qword_DE8E78);
  v13 = sub_10F414();
  v14 = [v12 propertySetByCombiningWithPropertySet:v13];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v17 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v18 = [v16 propertySetByCombiningWithPropertySet:v17];

  v19 = [v14 propertySetByCombiningWithPropertySet:v18];
  return v19;
}

id sub_3DC3BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B00DA0;
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
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  isa = sub_AB9740().super.isa;
  v8 = [objc_opt_self() propertySetWithProperties:isa];

  sub_13C80(0, &unk_E04570);
  v9 = sub_10F414();
  v10 = [v8 propertySetByCombiningWithPropertySet:v9];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v13 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v14 = [v12 propertySetByCombiningWithPropertySet:v13];

  v15 = [v10 propertySetByCombiningWithPropertySet:v14];
  return v15;
}

id sub_3DC5B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B00DA0;
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
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF4EC0;
  *(v9 + 32) = sub_AB92A0();
  *(v9 + 40) = v10;
  isa = sub_AB9740().super.isa;
  v12 = objc_opt_self();
  v13 = [v12 propertySetWithProperties:isa];

  *(inited + 48) = v13;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_AF85D0;
  *(v15 + 32) = sub_AB92A0();
  *(v15 + 40) = v16;
  *(v15 + 48) = sub_AB92A0();
  *(v15 + 56) = v17;
  *(v15 + 64) = sub_AB92A0();
  *(v15 + 72) = v18;
  *(v15 + 80) = sub_AB92A0();
  *(v15 + 88) = v19;
  v20 = sub_AB9740().super.isa;
  v21 = [v12 propertySetWithProperties:v20];

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

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v32 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v33 = [v31 propertySetByCombiningWithPropertySet:v32];

  v34 = [v29 propertySetByCombiningWithPropertySet:v33];
  return v34;
}

id sub_3DC9FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B00DA0;
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
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  isa = sub_AB9740().super.isa;
  v8 = [objc_opt_self() propertySetWithProperties:isa];

  sub_13C80(0, &unk_E087D0);
  v9 = sub_10F414();
  v10 = [v8 propertySetByCombiningWithPropertySet:v9];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v13 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v14 = [v12 propertySetByCombiningWithPropertySet:v13];

  v15 = [v10 propertySetByCombiningWithPropertySet:v14];
  return v15;
}

id sub_3DCBF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B00DA0;
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
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF8820;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF85F0;
  *(v9 + 32) = sub_AB92A0();
  *(v9 + 40) = v10;
  *(v9 + 48) = sub_AB92A0();
  *(v9 + 56) = v11;
  isa = sub_AB9740().super.isa;
  v13 = objc_opt_self();
  v14 = [v13 propertySetWithProperties:isa];

  *(inited + 48) = v14;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_AF4EC0;
  *(v16 + 32) = sub_AB92A0();
  *(v16 + 40) = v17;
  v18 = sub_AB9740().super.isa;
  v19 = [v13 propertySetWithProperties:v18];

  *(inited + 72) = v19;
  *(inited + 80) = sub_AB92A0();
  *(inited + 88) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_AF85F0;
  *(v21 + 32) = sub_AB92A0();
  *(v21 + 40) = v22;
  *(v21 + 48) = sub_AB92A0();
  *(v21 + 56) = v23;
  v24 = sub_AB9740().super.isa;
  v25 = [v13 propertySetWithProperties:v24];

  *(inited + 96) = v25;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
  swift_arrayDestroy();
  v26 = objc_allocWithZone(MPPropertySet);
  v27 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v28 = sub_AB8FD0().super.isa;

  v29 = [v26 initWithProperties:v27 relationships:v28];

  sub_13C80(0, &unk_DE9C00);
  v30 = sub_2BAFF8();
  v31 = [v29 propertySetByCombiningWithPropertySet:v30];

  v32 = sub_10F414();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v34 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v35 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v36 = [v34 propertySetByCombiningWithPropertySet:v35];

  v37 = [v32 propertySetByCombiningWithPropertySet:v36];
  v38 = [v31 propertySetByCombiningWithPropertySet:v37];

  return v38;
}

id sub_3DD0AC()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_AF4EC0;
  *(v8 + 32) = sub_AB92A0();
  *(v8 + 40) = v9;
  isa = sub_AB9740().super.isa;
  v11 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v11;
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &unk_DE8E80);
  v12 = objc_allocWithZone(MPPropertySet);
  v13 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v14 = sub_AB8FD0().super.isa;

  v15 = [v12 initWithProperties:v13 relationships:v14];

  sub_13C80(0, &unk_DE8EC0);
  v16 = sub_10F414();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v19 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v20 = [v18 propertySetByCombiningWithPropertySet:v19];

  v21 = [v16 propertySetByCombiningWithPropertySet:v20];
  v22 = [v15 propertySetByCombiningWithPropertySet:v21];

  return v22;
}

id sub_3DD3D4()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_AF4EC0;
  *(v8 + 32) = sub_AB92A0();
  *(v8 + 40) = v9;
  isa = sub_AB9740().super.isa;
  v11 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v11;
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &unk_DE8E80);
  v12 = objc_allocWithZone(MPPropertySet);
  v13 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v14 = sub_AB8FD0().super.isa;

  v15 = [v12 initWithProperties:v13 relationships:v14];

  sub_13C80(0, &unk_E03780);
  v16 = sub_2BAFF8();
  v17 = [v15 propertySetByCombiningWithPropertySet:v16];

  v18 = sub_10F414();
  v19 = [v17 propertySetByCombiningWithPropertySet:v18];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v22 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v23 = [v21 propertySetByCombiningWithPropertySet:v22];

  v24 = [v19 propertySetByCombiningWithPropertySet:v23];
  return v24;
}

id sub_3DD72C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85D0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  isa = sub_AB9740().super.isa;
  v6 = objc_opt_self();
  v7 = [v6 propertySetWithProperties:isa];

  sub_13C80(0, &qword_DED7C0);
  v8 = sub_10F414();
  v9 = [v7 propertySetByCombiningWithPropertySet:v8];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v12 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v13 = [v11 propertySetByCombiningWithPropertySet:v12];

  v14 = [v9 propertySetByCombiningWithPropertySet:v13];
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_AF85F0;
  *(v15 + 32) = sub_AB92A0();
  *(v15 + 40) = v16;
  *(v15 + 48) = sub_AB92A0();
  *(v15 + 56) = v17;
  v18 = sub_AB9740().super.isa;
  v19 = [v6 propertySetWithProperties:v18];

  v20 = [v14 propertySetByCombiningWithPropertySet:v19];
  return v20;
}

id sub_3DD9B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85F0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  isa = sub_AB9740().super.isa;
  v4 = [objc_opt_self() propertySetWithProperties:isa];

  v5 = [objc_opt_self() requiredPropertiesForStaticMediaClips];
  v6 = [v4 propertySetByCombiningWithPropertySet:v5];

  sub_13C80(0, &unk_E04560);
  v7 = sub_10F414();
  v8 = [v6 propertySetByCombiningWithPropertySet:v7];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v11 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v12 = [v10 propertySetByCombiningWithPropertySet:v11];

  v13 = [v8 propertySetByCombiningWithPropertySet:v12];
  return v13;
}

uint64_t sub_3DDBA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v0 - 8);
  v2 = v41 - v1;
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v41 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = sub_3B8A64();
    v13 = (*(&stru_3D8.flags + (swift_isaMask & *v11)))(v12);
    if (!v13)
    {
      goto LABEL_25;
    }

    v14 = v13;
    v49 = v7;
    v15 = [*(v13 + 88) indexPathsForVisibleItems];
    v16 = sub_AB9760();

    v17 = v16;
    v18 = *(v16 + 16);
    if (v18)
    {
      v41[1] = v17;
      v42 = v11;
      v20 = v4 + 16;
      v19 = *(v4 + 16);
      v21 = v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v53 = *(v20 + 56);
      v54 = v19;
      v46 = (v20 + 16);
      v51 = v2;
      v52 = (v20 - 8);
      v47 = (v20 + 40);
      v48 = (v20 + 32);
      v50 = v20;
      v19(v9, v21, v3);
      while (1)
      {
        v22 = v14[6];
        if (!v22 || (, v23 = v22(v14, v9), v25 = v24, sub_17654(v22), !v23))
        {
          (*v52)(v9, v3);
          goto LABEL_6;
        }

        v26 = v14[8];
        if (!v26)
        {
          break;
        }

        v27 = v51;
        v26(v14, v23, v25);
        sub_17654(v26);
        if ((*v48)(v27, 1, v3) == 1)
        {
          (*v52)(v9, v3);
LABEL_14:
          sub_12E1C(v27, &unk_DE8E20);
LABEL_20:
          swift_unknownObjectRelease();
          goto LABEL_6;
        }

        (*v46)(v49, v27, v3);
        v28 = v14[4];
        if (!v28 || (, v29 = v28(v49), sub_17654(v28), !v29))
        {
          ObjectType = swift_getObjectType();
          (*(v25 + 16))(0, 0, ObjectType, v25);
          (*(v25 + 32))(0, 0, ObjectType, v25);
          v32 = *v52;
          (*v52)(v49, v3);
          v32(v9, v3);
          goto LABEL_20;
        }

        v43 = v29;
        v45 = [v29 relativeModelObjectForStoreLibraryPersonalization];
        if (v45)
        {
          swift_unknownObjectRetain();
          v44 = v14;
          v30 = &off_CF2AC8;
        }

        else
        {
          v44 = 0;
          v30 = 0;
        }

        v33 = swift_getObjectType();
        (*(v25 + 16))(v44, v30, v33, v25);
        (*(v25 + 32))(v45, 0, v33, v25);
        v34 = *v52;
        (*v52)(v49, v3);
        v34(v9, v3);
        swift_unknownObjectRelease();

LABEL_6:
        v21 += v53;
        if (!--v18)
        {

          v11 = v42;
          goto LABEL_25;
        }

        v54(v9, v21, v3);
      }

      (*v52)(v9, v3);
      v27 = v51;
      (*v47)(v51, 1, 1, v3);
      goto LABEL_14;
    }

LABEL_25:
    (*&stru_158.segname[(swift_isaMask & *v11) + 16])(v13);
    v35 = qword_DFE260;
    swift_beginAccess();
    v36 = *(v11 + v35);
    *(v11 + v35) = _swiftEmptyArrayStorage;
    v37 = *(v36 + 16);
    if (v37)
    {
      v38 = v36 + 40;
      do
      {
        v39 = *(v38 - 8);

        v39(v40);

        v38 += 16;
        --v37;
      }

      while (v37);
    }
  }

  return result;
}

uint64_t sub_3DE1D8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v2;
  v12 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE3B0);
  if (!swift_dynamicCast())
  {
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    sub_12E1C(v33, &qword_DFE3B8);
    v36[0] = 0;
    v36[1] = 0xE000000000000000;
    sub_ABAD90(197);
    v39._countAndFlagsBits = 0xD0000000000000C2;
    v39._object = 0x8000000000B5E0D0;
    sub_AB94A0(v39);
    v25 = [v12 description];
    v26 = sub_AB92A0();
    v28 = v27;

    v40._countAndFlagsBits = v26;
    v40._object = v28;
    sub_AB94A0(v40);

    v41._countAndFlagsBits = 46;
    v41._object = 0xE100000000000000;
    sub_AB94A0(v41);
LABEL_10:
    result = sub_ABAFD0();
    __break(1u);
    return result;
  }

  sub_70DF8(v33, v36);
  (*&stru_1F8.segname[(swift_isaMask & *v12) + 16])(a2);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_12E1C(v7, &unk_DE8E20);
    *&v33[0] = 0;
    *(&v33[0] + 1) = 0xE000000000000000;
    sub_ABAD90(190);
    v42._object = 0x8000000000B5DB40;
    v42._countAndFlagsBits = 0xD000000000000014;
    sub_AB94A0(v42);
    sub_3E046C(&qword_DF9260, &type metadata accessor for IndexPath);
    v43._countAndFlagsBits = sub_ABB330();
    sub_AB94A0(v43);

    v44._countAndFlagsBits = 0xD0000000000000A8;
    v44._object = 0x8000000000B5E1A0;
    sub_AB94A0(v44);
    goto LABEL_10;
  }

  v13 = *(v9 + 32);
  v32 = v8;
  v13(v11, v7, v8);
  v14 = v38;
  v31 = v37;
  v29 = __swift_project_boxed_opaque_existential_1(v36, v37);
  v15 = (*&stru_158.sectname[swift_isaMask & *v12])(v29);
  v30 = a1;
  if (v15 && (v16 = v15, v17 = [v15 results], v16, v17))
  {
    v18 = a2;
    v19 = [v17 sectionAtIndex:IndexPath.safeSection.getter()];
  }

  else
  {
    v18 = a2;
    v19 = 0;
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v12;
  v21 = *(v14 + 16);
  v22 = v12;
  v23 = v21(v19, v18, v11, v30, sub_3E0F5C, v20, v31, v14);
  (*(v9 + 8))(v11, v32);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v36);
  return v23;
}

id _s16MusicApplication21JSShelfViewControllerC24artworkCatalogToPrefetch3forSo09MPArtworkG0CSgSo0A13ModelGridItemC_tF_0(void *a1)
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

    v7 = v5;
    if (v2)
    {
LABEL_4:
      sub_3EB30(v5, v6);
      goto LABEL_5;
    }

    if (v6 <= 5u)
    {
      if (v6 <= 2u)
      {
        if (!v6)
        {
          v2 = [v5 artworkCatalog];
          v5 = v7;
          v6 = 0;
          goto LABEL_4;
        }

        if (v6 == 1)
        {
          v2 = [v5 artworkCatalog];
          v5 = v7;
          v6 = 1;
          goto LABEL_4;
        }
      }

      else
      {
        switch(v6)
        {
          case 3u:
            v2 = [v5 editorialArtworkCatalog];
            v5 = v7;
            v6 = 3;
            goto LABEL_4;
          case 4u:
            v2 = MPModelPlaylist.preferredArtworkCatalog.getter();
            v5 = v7;
            v6 = 4;
            goto LABEL_4;
          case 5u:
            v2 = [v5 artworkCatalog];
            v5 = v7;
            v6 = 5;
            goto LABEL_4;
        }
      }
    }

    else if (v6 > 8u)
    {
      switch(v6)
      {
        case 9u:
          v2 = [v5 artworkCatalog];
          v5 = v7;
          v6 = 9;
          goto LABEL_4;
        case 0xCu:
          v2 = [v5 editorialArtworkCatalog];
          v5 = v7;
          v6 = 12;
          goto LABEL_4;
        case 0xDu:
          v2 = [v5 previewArtworkCatalog];
          v5 = v7;
          v6 = 13;
          goto LABEL_4;
      }
    }

    else
    {
      switch(v6)
      {
        case 6u:
          v2 = [v5 artworkCatalog];
          v5 = v7;
          v6 = 6;
          goto LABEL_4;
        case 7u:
          v2 = [v5 artworkCatalog];
          v5 = v7;
          v6 = 7;
          goto LABEL_4;
        case 8u:
          v2 = [v5 artworkCatalog];
          v5 = v7;
          v6 = 8;
          goto LABEL_4;
      }
    }

    sub_3EB30(v5, v6);

    return 0;
  }

  return v2;
}

uint64_t sub_3DE9C0(void *a1, id a2)
{
  v3 = [a2 descriptionText];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = sub_AB92A0();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    return 1;
  }

  if (!a1)
  {
    return 2;
  }

  if ([a1 heightClass] == &dword_0 + 1)
  {
    return 1;
  }

  return 2;
}

uint64_t sub_3DEA68(char a1, double a2, double a3, double a4, double a5)
{
  if (a1)
  {
    if (a1 != 1)
    {
      return 1;
    }

    CGRectGetWidth(*&a2);
    sub_471A4();
    v5 = (sub_AB38F0() & 1) == 0;
    v6 = 3;
  }

  else
  {
    CGRectGetWidth(*&a2);
    sub_471A4();
    v5 = (sub_AB38F0() & 1) == 0;
    v6 = 1;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return v6 + 1;
  }
}

id sub_3DEB44(void *a1, uint64_t a2)
{
  [a1 bounds];
  HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1u, 1u, 0, &v89, v4);
  v5 = qword_DFE2F0;
  v6 = *&v2[qword_DFE2F0];
  if (!v6)
  {
    goto LABEL_47;
  }

  result = [v6 results];
  if (!result)
  {
    __break(1u);
    goto LABEL_123;
  }

  v8 = result;
  v9 = [result sectionAtIndex:a2];

  if (v9)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (!v10)
    {
      swift_unknownObjectRelease();
      v12 = *&v2[v5];
      if (!v12)
      {
        goto LABEL_47;
      }

      goto LABEL_9;
    }

    v11 = [v10 uniformCellType];
    swift_unknownObjectRelease();
    if (v11 == &dword_4 + 3)
    {
      return &dword_0 + 1;
    }
  }

  v12 = *&v2[v5];
  if (!v12)
  {
    goto LABEL_47;
  }

LABEL_9:
  result = [v12 results];
  if (!result)
  {
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v13 = result;
  v14 = [result sectionAtIndex:a2];

  if (v14)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (!v15)
    {
      swift_unknownObjectRelease();
      v17 = *&v2[v5];
      if (!v17)
      {
        goto LABEL_47;
      }

      goto LABEL_16;
    }

    v16 = [v15 uniformCellType];
    swift_unknownObjectRelease();
    if (v16 == &dword_8 + 2)
    {
      return &dword_0 + 1;
    }
  }

  v17 = *&v2[v5];
  if (!v17)
  {
    goto LABEL_47;
  }

LABEL_16:
  result = [v17 results];
  if (!result)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v18 = result;
  v19 = [result sectionAtIndex:a2];

  if (!v19)
  {
LABEL_20:
    v22 = *&v2[v5];
    if (!v22)
    {
      goto LABEL_47;
    }

    goto LABEL_23;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = [v20 uniformCellType];
    swift_unknownObjectRelease();
    if (v21 == &dword_8)
    {
      return &dword_0 + 1;
    }

    goto LABEL_20;
  }

  swift_unknownObjectRelease();
  v22 = *&v2[v5];
  if (!v22)
  {
    goto LABEL_47;
  }

LABEL_23:
  result = [v22 results];
  if (!result)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v23 = result;
  v24 = [result sectionAtIndex:a2];

  if (v24)
  {
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25 && [v25 uniformCellType] == &dword_8 + 3)
    {
      v26 = [v2 traitCollection];
      v27 = [v26 preferredContentSizeCategory];

      LOBYTE(v26) = sub_ABA320();
      if ((v26 & 1) == 0)
      {
        swift_unknownObjectRelease();
        return &dword_0 + 3;
      }

      v28 = [v2 traitCollection];
      v29 = [v28 preferredContentSizeCategory];

      LOBYTE(v28) = sub_ABA330();
      swift_unknownObjectRelease();

      if (v28)
      {
        return &dword_0 + 1;
      }

      else
      {
        return &dword_0 + 2;
      }
    }

    swift_unknownObjectRelease();
  }

  v30 = *&v2[v5];
  if (v30)
  {
    result = [v30 results];
    if (!result)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    v31 = result;
    v32 = [result sectionAtIndex:a2];

    if (v32)
    {
      objc_opt_self();
      v33 = swift_dynamicCastObjCClass();
      if (v33)
      {
        v34 = [v33 isFeatured];
        swift_unknownObjectRelease();
        if (v34)
        {
          return &dword_0 + 1;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v35 = *&v2[v5];
    if (v35)
    {
      result = [v35 results];
      if (!result)
      {
LABEL_131:
        __break(1u);
        goto LABEL_132;
      }

      v36 = result;
      v37 = [result sectionAtIndex:a2];

      if (v37)
      {
        objc_opt_self();
        v38 = swift_dynamicCastObjCClass();
        if (v38)
        {
          v39 = [v38 uniformCellType];
          swift_unknownObjectRelease();
          if (v39 == &dword_0 + 1)
          {
            goto LABEL_48;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }
  }

LABEL_47:
  if (sub_3D64F0(a2, &off_CEFB70))
  {
LABEL_48:
    v40 = *&v2[v5];
    if (!v40)
    {
      return &dword_0 + 1;
    }

    result = [v40 results];
    if (result)
    {
      v41 = result;
      v42 = [result sectionAtIndex:a2];

      if (v42)
      {
        objc_opt_self();
        v43 = swift_dynamicCastObjCClass();
        if (!v43 || [v43 heightClass] != &dword_0 + 2)
        {
          swift_unknownObjectRelease();
          return &dword_0 + 1;
        }

        v44 = [v2 traitCollection];
        v45 = [v44 preferredContentSizeCategory];

        LOBYTE(v44) = sub_ABA320();
        if (v44)
        {
          v46 = [v2 traitCollection];
          v47 = [v46 preferredContentSizeCategory];

          sub_ABA330();
          swift_unknownObjectRelease();

          return &dword_0 + 1;
        }

        swift_unknownObjectRelease();
        return &dword_0 + 2;
      }

      return &dword_0 + 1;
    }

    goto LABEL_124;
  }

  v48 = *&v2[v5];
  if (v48)
  {
    result = [v48 results];
    if (!result)
    {
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    v49 = result;
    v50 = [result sectionAtIndex:a2];

    if (v50)
    {
      objc_opt_self();
      v51 = swift_dynamicCastObjCClass();
      if (v51)
      {
        v52 = [v51 uniformCellType];
        swift_unknownObjectRelease();
        if (v52 == &dword_0 + 3)
        {
          v53 = [v2 traitCollection];
          v54 = [v53 horizontalSizeClass];

          if (v54 == &dword_0 + 2)
          {
            return &dword_0 + 2;
          }

          else
          {
            return &dword_0 + 3;
          }
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v55 = *&v2[v5];
    if (v55)
    {
      result = [v55 results];
      if (!result)
      {
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

      v56 = result;
      v57 = [result sectionAtIndex:a2];

      if (v57)
      {
        objc_opt_self();
        v58 = swift_dynamicCastObjCClass();
        if (v58)
        {
          v59 = [v58 uniformCellType];
          swift_unknownObjectRelease();
          if (v59 == &dword_8 + 1)
          {
            return &dword_0 + 1;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }
  }

  if (sub_3D6190(a2, sub_3D6464, 0))
  {
    return &dword_0 + 1;
  }

  if (sub_3D64F0(a2, &off_CF13A8))
  {
    v60 = [v2 traitCollection];
    v61 = [v60 preferredContentSizeCategory];

    LOBYTE(v60) = sub_ABA320();
    if (v60)
    {
      v62 = [v2 traitCollection];
      v63 = [v62 preferredContentSizeCategory];

      LOBYTE(v62) = sub_ABA330();
      if (v62)
      {
        v64 = 1;
      }

      else
      {
        v64 = 2;
      }
    }

    else
    {
      v64 = 3;
    }

    v70 = [v2 traitCollection];
    v71 = [v70 horizontalSizeClass];

    if (v71 != &dword_0 + 1)
    {
      return v64;
    }

    v72 = sub_3BA070();
    v73 = [v2 traitCollection];
    v74 = [v73 preferredContentSizeCategory];

    v75 = sub_ABA320();
    if (v72 == 2 || (v72 & 1) != 0)
    {
      if ((v75 & 1) == 0)
      {
        return &dword_4;
      }

      goto LABEL_102;
    }

    if (v75)
    {
LABEL_102:
      v78 = [v2 traitCollection];
      v79 = [v78 preferredContentSizeCategory];

      LOBYTE(v78) = sub_ABA330();
      if (v78)
      {
        return &dword_0 + 1;
      }

      else
      {
        return &dword_0 + 2;
      }
    }

    return &dword_0 + 3;
  }

  if (sub_3D64F0(a2, &off_CF13D0))
  {
    return &dword_0 + 1;
  }

  v65 = *&v2[v5];
  if (v65)
  {
    result = [v65 results];
    if (!result)
    {
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    v66 = result;
    v67 = [result sectionAtIndex:a2];

    if (v67)
    {
      objc_opt_self();
      v68 = swift_dynamicCastObjCClass();
      if (v68)
      {
        v69 = [v68 uniformCellType];
        swift_unknownObjectRelease();
        if (v69 == &dword_0 + 2)
        {
          return &dword_0 + 1;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  if (sub_3D64F0(a2, &off_CF1400))
  {
    return &dword_0 + 1;
  }

  if (sub_3D64F0(a2, &off_CF1428))
  {
    v76 = [v2 traitCollection];
    v77 = [v76 preferredContentSizeCategory];

    LOBYTE(v76) = sub_ABA320();
    if (v76)
    {
      goto LABEL_102;
    }

    return &dword_0 + 3;
  }

  if ((sub_3D64F0(a2, &off_CF1450) & 1) == 0)
  {
    return &dword_0 + 2;
  }

  v80 = [v2 traitCollection];
  v81 = [v80 preferredContentSizeCategory];

  LOBYTE(v80) = sub_ABA320();
  if (v80)
  {
    v82 = [v2 traitCollection];
    v83 = [v82 preferredContentSizeCategory];

    LOBYTE(v82) = sub_ABA330();
    if (v82)
    {
      result = &dword_0 + 1;
    }

    else
    {
      result = &dword_0 + 2;
    }
  }

  else
  {
    result = &dword_0 + 3;
  }

  if (*&v2[v5])
  {
    v84 = result;
    result = [*&v2[v5] results];
    if (!result)
    {
LABEL_132:
      __break(1u);
      return result;
    }

    v85 = result;
    v86 = [result sectionAtIndex:a2];

    if (v86)
    {
      objc_opt_self();
      v87 = swift_dynamicCastObjCClass();
      if (v87)
      {
        v88 = [v87 uniformCellType];
        swift_unknownObjectRelease();
        if (v88 == &dword_8)
        {
          return &dword_0 + 1;
        }

        else
        {
          return v84;
        }
      }

      swift_unknownObjectRelease();
    }

    return v84;
  }

  return result;
}