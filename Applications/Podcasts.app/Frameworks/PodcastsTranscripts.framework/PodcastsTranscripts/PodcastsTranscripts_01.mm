void sub_1E06C(uint64_t a1)
{
  v2 = sub_97AD8();
  v54 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_979D8();
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C52D0);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v58 = v11;
  v59 = &v52 - v10;
  v12 = *(a1 + 16);
  v13 = v12 >> 61;
  v56 = v14;
  v57 = v15;
  v55 = v2;
  if ((v12 >> 61) <= 1)
  {
    if (!v13)
    {
      v16 = *(v12 + 16);
      v17 = *(v12 + 24);
      v18 = *(v12 + 32);
      v19 = *(v12 + 40);
      goto LABEL_7;
    }

    v16 = *(&dword_10 + (v12 & 0x1FFFFFFFFFFFFFFFLL));
    v17 = *(&dword_18 + (v12 & 0x1FFFFFFFFFFFFFFFLL));

    goto LABEL_11;
  }

  if (v13 == 2)
  {
    v16 = *(&dword_10 + (v12 & 0x1FFFFFFFFFFFFFFFLL));

    v17 = 0;
LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  if (v13 != 3)
  {
    v16 = *&stru_68.segname[(v12 & 0x1FFFFFFFFFFFFFFFLL) - 8];
    v17 = *&stru_68.segname[v12 & 0x1FFFFFFFFFFFFFFFLL];
    v18 = *&stru_68.segname[(v12 & 0x1FFFFFFFFFFFFFFFLL) + 8];

LABEL_12:
    v19 = 0;
    goto LABEL_13;
  }

  v16 = *&stru_20.segname[v12 & 0x1FFFFFFFFFFFFFFFLL];
  v17 = *&stru_20.segname[(v12 & 0x1FFFFFFFFFFFFFFFLL) + 8];
  v18 = *&stru_20.segname[(v12 & 0x1FFFFFFFFFFFFFFFLL) + 16];
  v19 = *(&stru_20.vmsize + (v12 & 0x1FFFFFFFFFFFFFFFLL));
LABEL_7:

LABEL_13:
  v66[0] = v16;
  v66[1] = v17;
  v66[2] = v18;
  v66[3] = v19;
  v67 = v12 >> 61;
  v20 = OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_linkViews;
  v21 = v60;
  swift_beginAccess();
  v22 = *&v21[v20];
  if (*(v22 + 16))
  {
    v23 = sub_741B8(v66);
    if (v24)
    {
      v25 = *(*(v22 + 56) + 8 * v23);
      swift_endAccess();
      sub_20438(v16, v17, v18, v19, v12 >> 61);

      return;
    }
  }

  sub_20438(v16, v17, v18, v19, v12 >> 61);
  swift_endAccess();
  if (v13 <= 1)
  {
    if (!v13)
    {
      sub_2073C(&qword_C77E0, type metadata accessor for TextContent);
      goto LABEL_26;
    }

    v26 = &qword_C52B0;
    v27 = type metadata accessor for LinkContent;
  }

  else if (v13 == 2)
  {
    v26 = &unk_C77D0;
    v27 = type metadata accessor for SilentContent;
  }

  else if (v13 == 3)
  {
    v26 = &qword_C52A8;
    v27 = type metadata accessor for SpeakerContent;
  }

  else
  {
    v26 = &qword_C77C0;
    v27 = type metadata accessor for ChapterTitleContent;
  }

  sub_2073C(v26, v27);
LABEL_26:
  type metadata accessor for LinkContent();
  v28 = swift_dynamicCastClass();
  if (!v28)
  {
    return;
  }

  (*(v52 + 16))(v6, v28 + OBJC_IVAR____TtC19PodcastsTranscripts11LinkContent_viewModel, v53);
  (*(v54 + 104))(v4, enum case for ReferenceLinkViewStyle.player(_:), v55);
  v55 = (v12 & 0x1FFFFFFFFFFFFFFFLL);

  v29 = v59;
  sub_97AC8();
  v30 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_C52D8) + 36));
  *v30 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C8010);
  swift_storeEnumTagMultiPayload();
  v31 = v30 + *(type metadata accessor for ViewContextEnvironmentSetter() + 20);
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  KeyPath = swift_getKeyPath();
  v33 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C52E0);
  v64 = sub_96958();
  v65 = &protocol witness table for UniformBucketingStrategy;
  __swift_allocate_boxed_opaque_existential_1(v63);
  sub_96948();
  v34 = sub_97C28();
  __swift_destroy_boxed_opaque_existential_1(v63);
  v35 = (v29 + *(v56 + 36));
  *v35 = KeyPath;
  v35[1] = v34;
  v36 = v29;
  v37 = v58;
  sub_20854(v36, v58);
  v38 = type metadata accessor for HostingView();
  v39 = objc_allocWithZone(v38);
  sub_20854(v37, v57);
  v40 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_C52E8));
  v41 = sub_971A8();
  *&v39[OBJC_IVAR____TtC19PodcastsTranscriptsP33_9705985A43AC9D9DC7CF5D9A39E12EF411HostingView_underlyingView] = v41;
  [v41 setAutoresizingMask:18];
  v62.receiver = v39;
  v62.super_class = v38;
  v42 = objc_msgSendSuper2(&v62, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v43 = *&v42[OBJC_IVAR____TtC19PodcastsTranscriptsP33_9705985A43AC9D9DC7CF5D9A39E12EF411HostingView_underlyingView];
  v44 = v42;
  [v44 addSubview:v43];
  [v44 setAlpha:0.0];

  sub_4C60(v37, &qword_C52D0);
  [v33 addSubview:v44];
  if (v13 <= 1)
  {
    if (!v13)
    {
      v45 = *(v12 + 16);
      v46 = *(v12 + 24);
      v47 = *(v12 + 32);
      v48 = *(v12 + 40);

      goto LABEL_38;
    }

    v45 = v55[2];
    v46 = v55[3];

    goto LABEL_36;
  }

  if (v13 == 2)
  {
    v45 = v55[2];

    v46 = 0;
LABEL_36:
    v47 = 0;
    goto LABEL_37;
  }

  if (v13 != 3)
  {
    v45 = v55[14];
    v46 = v55[15];
    v47 = v55[16];

LABEL_37:
    v48 = 0;
    goto LABEL_38;
  }

  v45 = v55[5];
  v46 = v55[6];
  v47 = v55[7];
  v48 = v55[8];

LABEL_38:
  v63[0] = v45;
  v63[1] = v46;
  v63[2] = v47;
  v64 = v48;
  LOBYTE(v65) = v13;
  v49 = v60;
  swift_beginAccess();
  v50 = v44;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = *&v49[v20];
  *&v49[v20] = 0x8000000000000000;
  sub_76088(v50, v63, isUniquelyReferenced_nonNull_native);
  sub_20438(v45, v46, v47, v48, v13);
  *&v49[v20] = v61;
  swift_endAccess();

  sub_4C60(v59, &qword_C52D0);
}

uint64_t sub_1E878()
{
  v0 = sub_97888();
  v20 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_978A8();
  v18 = *(v3 - 8);
  v19 = v3;
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_978C8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  sub_4AE8();
  v13 = sub_982E8();
  sub_978B8();
  sub_978E8();
  v17 = *(v7 + 8);
  v17(v9, v6);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_20734;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_279B0;
  aBlock[3] = &block_descriptor_17;
  v15 = _Block_copy(aBlock);

  sub_97898();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_2073C(&unk_C7910, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E18);
  sub_20784();
  sub_98618();
  sub_98298();
  _Block_release(v15);

  (*(v20 + 8))(v2, v0);
  (*(v18 + 8))(v5, v19);
  return (v17)(v12, v6);
}

id sub_1EC14()
{
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_linkViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v5; result = [*(*(v2 + 56) + ((v9 << 9) | (8 * v10))) removeFromSuperview])
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_linkViewIDs) = &_swiftEmptyArrayStorage;

      *(v0 + v1) = &_swiftEmptyDictionarySingleton;

      v11 = v0 + OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_pinnedLinkID;
      v12 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_pinnedLinkID);
      v13 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_pinnedLinkID + 8);
      v14 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_pinnedLinkID + 16);
      v15 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_pinnedLinkID + 24);
      *v11 = 0u;
      *(v11 + 16) = 0u;
      v16 = *(v11 + 32);
      *(v11 + 32) = -1;
      return sub_20424(v12, v13, v14, v15, v16);
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1ED80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_19808();
    v2 = v1;
    [v2 alpha];
    if (v3 == 1.0)
    {
    }

    else
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      *(v5 + 24) = 1;
      aBlock[4] = sub_209B0;
      aBlock[5] = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_279B0;
      aBlock[3] = &block_descriptor_24;
      v6 = _Block_copy(aBlock);
      v7 = v2;

      [v4 animateWithDuration:v6 animations:0.3];

      _Block_release(v6);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_90BDC();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1EF0C()
{
  v0 = sub_96048();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = sub_78400();
    swift_unknownObjectRelease();
    [v5 contentOffset];
    v7 = v6;
    v9 = v8;
    [v5 bounds];
    v10 = v7 + CGRectGetMidX(v38);
    v11 = [objc_opt_self() mainScreen];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v39.origin.x = v13;
    v39.origin.y = v15;
    v39.size.width = v17;
    v39.size.height = v19;
    v20 = [v5 indexPathForItemAtPoint:{v10, v9 + CGRectGetHeight(v39) / 3.0}];
    if (!v20)
    {
LABEL_12:

      return 0;
    }

    v21 = v20;
    sub_95FF8();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      v24 = sub_96028();
      v25 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewModels;
      swift_beginAccess();
      v26 = *(v23 + v25);
      if (v26 >> 62)
      {
        if (v24 < sub_98778())
        {
LABEL_6:
          v27 = sub_96028();
          result = swift_beginAccess();
          v28 = *(v23 + v25);
          if ((v28 & 0xC000000000000001) == 0)
          {
            if ((v27 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v27 < *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
            {
              v29 = *(v28 + 8 * v27 + 32);

              goto LABEL_10;
            }

            __break(1u);
            return result;
          }

          v29 = sub_986C8();
LABEL_10:
          swift_endAccess();
          swift_unknownObjectRelease();
          v30 = *(v29 + 16) >> 61;
          if (v30 == 1)
          {
            (*(v1 + 8))(v3, v0);

            goto LABEL_12;
          }

          v37[1] = v29;
          if (v30 <= 1)
          {
            if (!v30)
            {
              v33 = sub_2073C(&qword_C77E0, type metadata accessor for TextContent);
LABEL_23:
              ObjectType = swift_getObjectType();
              v35 = *(v33 + 16);

              v36 = v35(ObjectType, v33);

              (*(v1 + 8))(v3, v0);
              return v36;
            }

            v31 = &qword_C52B0;
            v32 = type metadata accessor for LinkContent;
          }

          else if (v30 == 2)
          {
            v31 = &unk_C77D0;
            v32 = type metadata accessor for SilentContent;
          }

          else if (v30 == 3)
          {
            v31 = &unk_C52A8;
            v32 = type metadata accessor for SpeakerContent;
          }

          else
          {
            v31 = &qword_C77C0;
            v32 = type metadata accessor for ChapterTitleContent;
          }

          v33 = sub_2073C(v31, v32);
          goto LABEL_23;
        }
      }

      else if (v24 < *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_6;
      }

      swift_unknownObjectRelease();
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return result;
}

uint64_t sub_1F3EC()
{

  sub_20424(*(v0 + OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_pinnedLinkID), *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_pinnedLinkID + 8), *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_pinnedLinkID + 16), *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_pinnedLinkID + 24), *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_pinnedLinkID + 32));
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_viewContext);
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_playerStyle;
  v2 = sub_96108();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = v0 + OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_delegate;

  return sub_204F4(v3);
}

id TranscriptViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PinnedActiveLinkContainerView()
{
  result = qword_C5260;
  if (!qword_C5260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1F644()
{
  result = sub_96108();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1F790(uint64_t a1, uint64_t a2, void *a3)
{
  v87 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C52A0);
  __chkstk_darwin(v6 - 8);
  v8 = v78 - v7;
  v9 = sub_96048();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v89 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v12 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v91 = *(a1 + 32);
  v16 = *(a1 + 40);
  LODWORD(v86) = *(a1 + 48);
  v85 = *(a1 + 49);
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  v90 = a3;
  v88 = OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    return sub_4C60(v8, &qword_C52A0);
  }

  v19 = v18;
  v84 = v3;
  v20 = sub_782A0();
  v81 = v13;
  aBlock = v13;
  v98 = v12;
  v80 = v12;
  v83 = v14;
  v99 = v14;
  v100 = v15;
  v82 = v15;
  LOBYTE(v101) = v91;
  sub_96CD8();

  swift_unknownObjectRelease();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_4C60(v8, &qword_C52A0);
  }

  v21 = v9;
  v22 = v89;
  (*(v10 + 32))(v89, v8, v9);
  v23 = v88;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v10 + 8))(v22, v9);
  }

  v25 = Strong;
  v26 = sub_96028();
  v27 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewModels;
  swift_beginAccess();
  v28 = *&v27[v25];
  if (!(v28 >> 62))
  {
    if (v26 < *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_6;
    }

    goto LABEL_57;
  }

  if (v26 >= sub_98778())
  {
LABEL_57:
    swift_unknownObjectRelease();
    return (*(v10 + 8))(v22, v9);
  }

LABEL_6:
  v29 = sub_96028();
  swift_beginAccess();
  v30 = *&v27[v25];
  if ((v30 & 0xC000000000000001) == 0)
  {
    if ((v29 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v29 < *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)))
    {
      v31 = *(v30 + 8 * v29 + 32);

      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_62;
  }

  v31 = sub_986C8();
LABEL_10:
  swift_endAccess();
  swift_unknownObjectRelease();
  v32 = *(v31 + 16);
  v33 = v32 >> 61;
  if ((v32 >> 61) > 1)
  {
    v34 = v32 & 0x1FFFFFFFFFFFFFFFLL;
    if (v33 == 2)
    {
      v35 = &unk_C77D0;
      v36 = type metadata accessor for SilentContent;
    }

    else if (v33 == 3)
    {
      v35 = &unk_C52A8;
      v36 = type metadata accessor for SpeakerContent;
    }

    else
    {
      v35 = &qword_C77C0;
      v36 = type metadata accessor for ChapterTitleContent;
    }

    goto LABEL_21;
  }

  if (v33)
  {
    v34 = v32 & 0x1FFFFFFFFFFFFFFFLL;
    v35 = &qword_C52B0;
    v36 = type metadata accessor for LinkContent;
LABEL_21:
    v38 = sub_2073C(v35, v36);
    goto LABEL_22;
  }

  v38 = sub_2073C(&qword_C77E0, type metadata accessor for TextContent);
  v34 = v32 & 0x1FFFFFFFFFFFFFFFLL;
LABEL_22:

  ObjectType = swift_getObjectType();
  v40 = (*(v38 + 16))(ObjectType, v38);
  if ((v41 & 1) != 0 || (v42 = *&v40, !swift_unknownObjectWeakLoadStrong()))
  {
    (*(v10 + 8))(v22, v9);
  }

  *&v88 = v42;
  v25 = sub_78400();
  swift_unknownObjectRelease();
  isa = sub_95FE8().super.isa;
  v44 = [v25 layoutAttributesForItemAtIndexPath:isa];

  v27 = v84;
  v23 = v83;
  v79 = v10;
  v78[1] = v34;
  if (v44 && (([v44 frame], objc_msgSend(v25, "convertRect:toCoordinateSpace:", v90), MinY = CGRectGetMinY(v103), v44, !v85) ? (v46 = 10.0) : (v46 = 16.0), v47 = MinY + v46, v47 < v17))
  {
    LODWORD(v9) = 0;
    v48 = 0.0;
    v17 = v47;
  }

  else
  {
    LODWORD(v9) = 1;
    v48 = 0.0;
  }

  v49 = v19 == 2;
  v19 = v82;
  LOBYTE(v29) = v86;
  if (!v49)
  {
    if (qword_C4658 == -1)
    {
LABEL_34:
      v48 = *&qword_C51E8;
      goto LABEL_35;
    }

LABEL_62:
    swift_once();
    goto LABEL_34;
  }

LABEL_35:
  [v90 bounds];
  [v27 setFrame:{v48, v17, CGRectGetWidth(v104) - (v48 + v48), 64.0}];
  if (v29)
  {

    return (*(v79 + 8))(v22, v21);
  }

  v86 = v25;
  if (v16 >= *&v88)
  {
    v50 = v9;
  }

  else
  {
    v50 = 0;
  }

  v51 = v87;
  if (v50 == 1 && *(v87 + 32) == 255)
  {
    sub_20424(*v87, *(v87 + 8), *(v87 + 16), *(v87 + 24), 0xFFu);
    v52 = v81;
    *v87 = v81;
    v53 = v80;
    *(v87 + 8) = v80;
    *(v87 + 16) = v23;
    *(v87 + 24) = v19;
    v54 = v91;
    *(v87 + 32) = v91;
    sub_203C8(v52, v53, v23, v19, v54);
    v51 = v87;
  }

  v55 = v19;
  v56 = v23;
  LODWORD(v88) = v9;
  v90 = v21;
  v58 = *v51;
  v57 = *(v51 + 8);
  v60 = *(v51 + 16);
  v59 = *(v51 + 24);
  v61 = *(v51 + 32);
  v62 = v91;
  if (v91 == 255)
  {
    v69 = *(v51 + 8);
    v63 = v81;
    v64 = v80;
    sub_203C8(v81, v80, v56, v55, 0xFFu);
    if (v61 == 255)
    {
      sub_20410(v58, v69, v60, v59, 0xFFu);
      sub_20424(v63, v64, v56, v55, 0xFFu);
      v68 = 1;
      goto LABEL_52;
    }

    v87 = v69;
    sub_20410(v58, v69, v60, v59, v61);
    v62 = v91;
    goto LABEL_50;
  }

  v63 = v81;
  v64 = v80;
  aBlock = v81;
  v98 = v80;
  v99 = v56;
  v100 = v55;
  LOBYTE(v101) = v91;
  if (v61 == 255)
  {
    v87 = v57;
    sub_203C8(v81, v80, v56, v55, v91);
    sub_20410(v58, v87, v60, v59, 0xFFu);
    sub_20410(v63, v64, v56, v55, v62);
    sub_20438(v63, v64, v56, v55, v62);
LABEL_50:
    sub_20424(v63, v64, v56, v55, v62);
    sub_20424(v58, v87, v60, v59, v61);
    goto LABEL_51;
  }

  v92 = v58;
  v93 = v57;
  v94 = v60;
  v95 = v59;
  v96 = v61;
  v65 = v57;
  sub_203C8(v81, v80, v56, v55, v91);
  sub_20410(v58, v65, v60, v59, v61);
  v66 = v81;
  sub_20410(v81, v64, v56, v55, v62);
  v67 = _s19PodcastsTranscripts26TranscriptContentViewModelC2IDO2eeoiySbAE_AEtFZ_0(&aBlock, &v92);
  sub_20438(v92, v93, v94, v95, v96);
  sub_20438(aBlock, v98, v99, v100, v101);
  sub_20424(v66, v64, v56, v55, v62);
  if ((v67 & 1) == 0)
  {
LABEL_51:
    v68 = v88 ^ 1;
    goto LABEL_52;
  }

  v68 = 1;
LABEL_52:
  v70 = v90;
  v71 = v86;
  v72 = v84;
  [v84 alpha];
  if (v68 == (v73 != 1.0))
  {
    v74 = objc_opt_self();
    v75 = swift_allocObject();
    *(v75 + 16) = v72;
    *(v75 + 24) = v68;
    v101 = sub_204B8;
    v102 = v75;
    aBlock = _NSConcreteStackBlock;
    v98 = 1107296256;
    v99 = sub_279B0;
    v100 = &block_descriptor_1;
    v76 = _Block_copy(&aBlock);
    v77 = v72;

    [v74 animateWithDuration:v76 animations:0.3];
    _Block_release(v76);
  }

  return (*(v79 + 8))(v22, v70);
}

id sub_202CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HostingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_20338(void *a1, char a2)
{
  v2 = 0.0;
  if (a2)
  {
    v2 = 1.0;
  }

  return [a1 setAlpha:v2];
}

void sub_20354()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 32.0;
  if (v1 == &dword_0 + 1)
  {
    v2 = 64.0;
  }

  qword_C51E8 = *&v2;
}

uint64_t sub_203C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }

  if (a5 == 2)
  {
  }

  if (a5 == 3 || a5 == 4)
  {
  }

  return result;
}

uint64_t sub_20410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_203C8(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_20424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_20438(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_20438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }

  if (a5 == 2)
  {
  }

  if (a5 == 3 || a5 == 4)
  {
  }

  return result;
}

uint64_t sub_20480()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_204B8()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(v0 + 16) setAlpha:v1];
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_205FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_20658(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_207E8();
  result = sub_98108();
  v8 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      v5 = *(v4 + 16);
      v9[0] = *v4;
      v9[1] = v5;
      v10 = *(v4 + 32);
      sub_2051C(v9, v6);
      sub_48790(v6, v9);
      sub_20438(v6[0], v6[1], v6[2], v6[3], v7);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_206FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2073C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20784()
{
  result = qword_C7920;
  if (!qword_C7920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C4E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7920);
  }

  return result;
}

unint64_t sub_207E8()
{
  result = qword_C52C8;
  if (!qword_C52C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C52C8);
  }

  return result;
}

uint64_t sub_20854(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C52D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_208F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 49);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_20938(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 49) = a2 + 1;
    }
  }

  return result;
}

id sub_20A8C(uint64_t a1, double a2, double a3)
{
  if (UIViewIgnoresTouchEvents())
  {
    return 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for PassthroughView();
  v7 = objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    sub_20C30();
    v8 = v7;
    v9 = v3;
    v10 = sub_98448();

    if (v10)
    {

      return 0;
    }
  }

  return v7;
}

id sub_20BD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PassthroughView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_20C30()
{
  result = qword_C5318;
  if (!qword_C5318)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C5318);
  }

  return result;
}

uint64_t Array<A>.content.getter(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = *(sub_966E8() - 8);
  v4 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = *(v3 + 72);
  do
  {
    sub_20D48(v4, v7, a1);
    v4 += v5;
    --v1;
  }

  while (v1);
  return v7[0];
}

void sub_20D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v5 = sub_966E8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v33 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5348);
  __chkstk_darwin(v36);
  v38 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5350);
  __chkstk_darwin(v9 - 8);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  v17 = sub_966A8();
  Array<A>.content.getter(v17);
  v19 = v18;
  v21 = v20;

  v39._countAndFlagsBits = v19;
  v39._object = v21;
  v35 = a2;
  sub_97EE8(v39);

  v22 = *(v6 + 16);
  v22(v16, a1, v5);
  v23 = *(v6 + 56);
  v24 = 1;
  v23(v16, 0, 1, v5);
  v25 = *(v37 + 16);
  if (v25)
  {
    v22(v13, v37 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * (v25 - 1), v5);
    v24 = 0;
  }

  v23(v13, v24, 1, v5);
  v26 = *(v36 + 48);
  v27 = v38;
  sub_4BF8(v16, v38, &qword_C5350);
  sub_4BF8(v13, v27 + v26, &qword_C5350);
  v28 = *(v6 + 48);
  if (v28(v27, 1, v5) == 1)
  {
    sub_4C60(v13, &qword_C5350);
    v27 = v38;
    sub_4C60(v16, &qword_C5350);
    if (v28(v27 + v26, 1, v5) == 1)
    {
      sub_4C60(v27, &qword_C5350);
      return;
    }

    goto LABEL_8;
  }

  v29 = v34;
  sub_4BF8(v27, v34, &qword_C5350);
  if (v28(v27 + v26, 1, v5) == 1)
  {
    sub_4C60(v13, &qword_C5350);
    sub_4C60(v16, &qword_C5350);
    (*(v6 + 8))(v29, v5);
LABEL_8:
    sub_4C60(v27, &qword_C5348);
LABEL_9:
    v40._countAndFlagsBits = 32;
    v40._object = 0xE100000000000000;
    sub_97EE8(v40);
    return;
  }

  v30 = v27 + v26;
  v31 = v33;
  (*(v6 + 32))(v33, v30, v5);
  sub_21F54(&qword_C5358, &type metadata accessor for TranscriptModel.Sentence);
  LODWORD(v37) = sub_97D98();
  v32 = *(v6 + 8);
  v32(v31, v5);
  sub_4C60(v13, &qword_C5350);
  sub_4C60(v16, &qword_C5350);
  v32(v29, v5);
  sub_4C60(v27, &qword_C5350);
  if ((v37 & 1) == 0)
  {
    goto LABEL_9;
  }
}

void Array<A>.content.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5320);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - v3;
  v5 = sub_96638();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5328);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v28 = (&v28 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5330);
  __chkstk_darwin(v12 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v28 - v17;
  v19 = 0;
  v38 = 0;
  v39 = 0xE000000000000000;
  v35 = (v10 + 48);
  v36 = (v10 + 56);
  v20 = *(a1 + 16);
  v32 = (v6 + 32);
  v33 = v6 + 16;
  v30 = (v6 + 56);
  v31 = v20 - 1;
  v34 = v6;
  v29 = (v6 + 8);
  for (i = v20; ; v20 = i)
  {
    if (v19 == v20)
    {
      v22 = 1;
      v19 = v20;
      goto LABEL_9;
    }

    if (v19 >= v20)
    {
      break;
    }

    if (__OFADD__(v19, 1))
    {
      goto LABEL_15;
    }

    v23 = v34;
    v24 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19;
    v25 = *(v9 + 48);
    v26 = v28;
    *v28 = v19;
    (*(v23 + 16))(v26 + v25, v24, v5, v16);
    sub_216C8(v26, v14, &qword_C5328);
    v22 = 0;
    ++v19;
LABEL_9:
    (*v36)(v14, v22, 1, v9, v16);
    sub_216C8(v14, v18, &qword_C5330);
    if ((*v35)(v18, 1, v9) == 1)
    {
      return;
    }

    v27 = *v18;
    (*v32)(v8, &v18[*(v9 + 48)], v5);
    if (v27 >= v31)
    {
      v21 = 1;
    }

    else
    {
      if (v27 + 1 >= i)
      {
        goto LABEL_16;
      }

      (*(v34 + 16))(v4, a1 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * (v27 + 1), v5);
      v21 = 0;
    }

    (*v30)(v4, v21, 1, v5);
    v40._countAndFlagsBits = sub_965F8();
    sub_97EE8(v40);

    v41._countAndFlagsBits = Array<A>.spacesAfterWord(_:nextWord:)(v8, v4, a1);
    sub_97EE8(v41);

    sub_4C60(v4, &qword_C5320);
    (*v29)(v8, v5);
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_216C8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_96638();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v17 - v11;
  if (*(a2 + 16))
  {
    v17[0] = a1;
    v17[1] = a3;
    sub_966E8();
    v13 = sub_966A8();
    if (*(v13 + 16))
    {
      (*(v7 + 16))(v12, v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

      sub_96628();
      (*(v7 + 8))(v12, v6);
    }

    else
    {
    }

    v14 = sub_966A8();
    v15 = *(v14 + 16);
    if (v15)
    {
      (*(v7 + 16))(v10, v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * (v15 - 1), v6);

      sub_96608();
      (*(v7 + 8))(v10, v6);
    }

    else
    {
    }
  }

  sub_96758();

  return sub_96738();
}

uint64_t Array<A>.spacesAfterWord(_:nextWord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v36 = a2;
  v4 = sub_96638();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v33 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5338);
  __chkstk_darwin(v38);
  v8 = &v31[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5320);
  v10 = __chkstk_darwin(v9 - 8);
  v35 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v37 = &v31[-v13];
  v14 = __chkstk_darwin(v12);
  v16 = &v31[-v15];
  __chkstk_darwin(v14);
  v18 = &v31[-v17];
  v19 = *(v5 + 16);
  v34 = a1;
  v19(&v31[-v17], a1, v4);
  v20 = *(v5 + 56);
  v21 = 1;
  v20(v18, 0, 1, v4);
  v22 = *(v39 + 16);
  if (v22)
  {
    v19(v16, v39 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v22 - 1), v4);
    v21 = 0;
  }

  v20(v16, v21, 1, v4);
  v23 = *(v38 + 48);
  sub_4BF8(v18, v8, &qword_C5320);
  sub_4BF8(v16, &v8[v23], &qword_C5320);
  v24 = *(v5 + 48);
  if (v24(v8, 1, v4) == 1)
  {
    sub_4C60(v16, &qword_C5320);
    sub_4C60(v18, &qword_C5320);
    if (v24(&v8[v23], 1, v4) == 1)
    {
      sub_4C60(v8, &qword_C5320);
      return 0;
    }

    goto LABEL_8;
  }

  v25 = v37;
  sub_4BF8(v8, v37, &qword_C5320);
  v38 = v24;
  if (v24(&v8[v23], 1, v4) == 1)
  {
    sub_4C60(v16, &qword_C5320);
    sub_4C60(v18, &qword_C5320);
    (*(v5 + 8))(v25, v4);
    v24 = v38;
LABEL_8:
    v39 = v5;
    sub_4C60(v8, &qword_C5338);
    goto LABEL_9;
  }

  v29 = v33;
  (*(v5 + 32))(v33, &v8[v23], v4);
  sub_21F54(&qword_C5340, &type metadata accessor for TranscriptModel.Word);
  v32 = sub_97D98();
  v39 = v5;
  v30 = *(v5 + 8);
  v30(v29, v4);
  sub_4C60(v16, &qword_C5320);
  sub_4C60(v18, &qword_C5320);
  v30(v37, v4);
  sub_4C60(v8, &qword_C5320);
  v24 = v38;
  if (v32)
  {
    return 0;
  }

LABEL_9:
  v26 = v35;
  sub_4BF8(v36, v35, &qword_C5320);
  if (v24(v26, 1, v4) == 1)
  {
    sub_4C60(v26, &qword_C5320);
  }

  else
  {
    v27 = sub_965E8();
    (*(v39 + 8))(v26, v4);
    if (v27)
    {
      return 32;
    }
  }

  if (sub_965E8())
  {
    return 8224;
  }

  else
  {
    return 32;
  }
}

uint64_t sub_21F54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TranscriptModel.createParagraphs(splittingBehavior:includeShortDescriptors:)(uint64_t a1, char a2)
{
  *(v3 + 24) = v2;
  *(v3 + 72) = a2;
  *(v3 + 32) = *a1;
  *(v3 + 48) = *(a1 + 16);
  return _swift_task_switch(sub_21FD8, 0, 0);
}

uint64_t sub_21FD8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v8 = *(v0 + 24);
  v3 = *(v0 + 72);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v8;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  *(v4 + 48) = v3;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5360);
  *v5 = v0;
  v5[1] = sub_22100;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000003CLL, 0x80000000000A3530, sub_224C8, v4, v6);
}

uint64_t sub_22100()
{

  return _swift_task_switch(sub_22218, 0, 0);
}

uint64_t sub_22230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v29 = a6;
  v27 = a4;
  v28 = a5;
  v25 = a2;
  v26 = a3;
  v7 = sub_96788();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C53A0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  (*(v11 + 16))(&v24 - v12, a1, v10);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = swift_allocObject();
  (*(v11 + 32))(v15 + v14, v13, v10);
  (*(v8 + 16))(&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v7);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v16, &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v18 = v17 + ((v16 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v19 = v27;
  *v18 = v26;
  *(v18 + 8) = v19;
  v20 = v28;
  *(v18 + 16) = v28;
  *(v18 + 24) = v29;
  v21 = (v17 + ((v16 + v9 + 39) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_26AA0;
  v21[1] = v15;
  v22 = v20;

  sub_24068(sub_26CC0, v17);
}

uint64_t sub_224D8()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C53A0);
  return sub_98048();
}

uint64_t TranscriptModel.createParagraphs(with:includeShortDescriptors:completion:)(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v20 = a2;
  v6 = sub_96788();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v14 = v13 + ((v12 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v14 = v10;
  *(v14 + 8) = v9;
  *(v14 + 16) = v11;
  *(v14 + 24) = v20;
  v15 = (v13 + ((v12 + v8 + 39) & 0xFFFFFFFFFFFFFFF8));
  v16 = v22;
  *v15 = v21;
  v15[1] = v16;
  v17 = v11;

  sub_24068(sub_22738, v13);
}

uint64_t sub_226C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void))
{
  *&v9[0] = a3;
  *&v9[1] = a4;
  *&v9[2] = a5;
  sub_2273C(a1, v9, a6);
  a7();
}

char *sub_2273C(uint64_t a1, double *a2, int a3)
{
  v209 = a3;
  v247 = sub_96638();
  v5 = *(v247 - 8);
  v6 = __chkstk_darwin(v247);
  v207 = &v193 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v206 = &v193 - v9;
  v10 = __chkstk_darwin(v8);
  v242 = &v193 - v11;
  v12 = __chkstk_darwin(v10);
  v203 = &v193 - v13;
  v14 = __chkstk_darwin(v12);
  v205 = &v193 - v15;
  v16 = __chkstk_darwin(v14);
  v246 = &v193 - v17;
  v18 = __chkstk_darwin(v16);
  v220 = &v193 - v19;
  v20 = __chkstk_darwin(v18);
  v198 = &v193 - v21;
  __chkstk_darwin(v20);
  v200 = &v193 - v22;
  v237 = sub_966E8();
  v23 = *(v237 - 8);
  v24 = __chkstk_darwin(v237);
  v218 = &v193 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v213 = &v193 - v27;
  v28 = __chkstk_darwin(v26);
  v245 = &v193 - v29;
  v30 = __chkstk_darwin(v28);
  v233 = &v193 - v31;
  __chkstk_darwin(v30);
  v199 = &v193 - v32;
  v224 = sub_96778();
  v33 = __chkstk_darwin(v224);
  v201 = &v193 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v223 = &v193 - v36;
  v37 = __chkstk_darwin(v35);
  v202 = &v193 - v38;
  v39 = __chkstk_darwin(v37);
  v210 = &v193 - v40;
  __chkstk_darwin(v39);
  v231 = &v193 - v42;
  v43 = *a2;
  v44 = a2[1];
  v45 = *(a2 + 2);
  v228 = v45;
  if (v45)
  {
    v252._countAndFlagsBits = 0x6161616161616161;
    v252._object = 0xE900000000000020;
    v46 = v41;
    v47 = sub_97F58(v252, 200);
    v48 = v5;
    v50 = sub_273F4(v43, v47, v49, v45);
    v52 = v51;
    v54 = v53;
    v221 = [v51 characterIndexForPoint:v50 inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v43, v44}];

    v5 = v48;
    v41 = v46;
  }

  else
  {
    v221 = 0;
  }

  result = &_swiftEmptyArrayStorage;
  v251 = &_swiftEmptyArrayStorage;
  v56 = v231;
  v204 = *(a1 + 16);
  if (!v204)
  {
    return result;
  }

  v57 = 0;
  v60 = *(v41 + 16);
  v59 = v41 + 16;
  v58 = v60;
  v217 = (*(v59 + 64) + 32) & ~*(v59 + 64);
  v61 = a1 + v217;
  v240 = v23 + 16;
  v62 = *(v59 + 56);
  v248 = v5 + 16;
  v249 = (v5 + 8);
  v238 = (v23 + 8);
  v194 = (v59 - 8);
  v216 = (v59 + 16);
  v63 = v43;
  v64 = v44;
  v212 = (v23 + 32);
  v211 = xmmword_9AF50;
  v65 = v247;
  v234 = v5;
  v66 = v237;
  v227 = v23;
  v197 = v59;
  v196 = v60;
  v195 = a1 + v217;
  v219 = v62;
  while (1)
  {
    v208 = v57;
    v58(v56, v61 + v62 * v57, v224);
    if (v209)
    {
      goto LABEL_26;
    }

    sub_96718();
    v68 = v67;
    sub_96768();
    if (v68 - v69 >= 2.0)
    {
      goto LABEL_26;
    }

    result = sub_96728();
    v70 = result;
    v71 = *(result + 2);
    if (v71)
    {
      break;
    }

    v56 = v231;
LABEL_119:
    (*v194)(v56, v224);
LABEL_120:
    v57 = v208 + 1;
    v58 = v196;
    v61 = v195;
    v62 = v219;
    if (v208 + 1 == v204)
    {
      return v251;
    }
  }

  v72 = 0;
  v244 = &result[(*(v23 + 80) + 32) & ~*(v23 + 80)];
  v73 = v198;
  v74 = v200;
  v75 = v199;
  v241 = result;
  v239 = v71;
  while (1)
  {
    if (v72 >= v70[2])
    {
LABEL_135:
      __break(1u);
      return result;
    }

    (*(v23 + 16))(v75, &v244[*(v23 + 72) * v72], v66);
    v76 = sub_966A8();
    if (*(v76 + 16))
    {
      break;
    }

    (*v238)(v75, v66);

    v56 = v231;
LABEL_11:
    if (++v72 == v71)
    {

      v65 = v247;
      v5 = v234;
      goto LABEL_119;
    }
  }

  v243 = v72;
  v77 = v23;
  v78 = v234;
  v79 = (*(v234 + 80) + 32) & ~*(v234 + 80);
  v80 = *(v234 + 16);
  v81 = v247;
  v80(v74, v76 + v79, v247);

  v82 = sub_966A8();
  v83 = *(v82 + 16);
  if (!v83)
  {

    (*v249)(v74, v81);
    v66 = v237;
    result = (*v238)(v75, v237);
    v56 = v231;
    v23 = v77;
LABEL_24:
    v70 = v241;
    v71 = v239;
    v72 = v243;
    goto LABEL_11;
  }

  v84 = *(v78 + 72);
  v80(v73, v82 + v79 + v84 * (v83 - 1), v81);

  if (sub_965E8() & 1) != 0 && (sub_965E8())
  {
    result = sub_966A8();
    v85 = result;
    v86 = &result[v79];
    v87 = -*(result + 2);
    v88 = -1;
    v89 = v249;
    while (v87 + v88 != -1)
    {
      if (++v88 >= v85[2])
      {
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
        goto LABEL_135;
      }

      v90 = &v86[v84];
      v91 = v220;
      v92 = v247;
      (v80)(v220);
      v93 = sub_965E8();
      v94 = *v249;
      v95 = v91;
      v89 = v249;
      result = (*v249)(v95, v92);
      v86 = v90;
      if ((v93 & 1) == 0)
      {

        v65 = v247;
        v94(v198, v247);
        v94(v200, v65);
        goto LABEL_25;
      }
    }

    v96 = *v89;
    v73 = v198;
    v97 = v247;
    v96(v198, v247);
    v74 = v200;
    v96(v200, v97);
    v66 = v237;
    v75 = v199;
    result = (*v238)(v199, v237);
    v23 = v227;
    v56 = v231;
    goto LABEL_24;
  }

  v192 = *v249;
  v65 = v247;
  (*v249)(v73, v247);
  v192(v200, v65);
LABEL_25:
  v5 = v234;
  v23 = v227;
  v66 = v237;
  (*v238)(v199, v237);
LABEL_26:
  result = sub_96728();
  v225 = *(result + 2);
  if (!v225)
  {

    v99 = &_swiftEmptyArrayStorage;
LABEL_111:
    v250 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5388);
    sub_269B8(&qword_C5390, &qword_C5388);
    if (sub_98128())
    {
      v186 = sub_96748();
      sub_21730(v186, v99, v201);

      v187 = v251;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v187 = sub_15274(0, *(v187 + 2) + 1, 1, v187);
      }

      v189 = *(v187 + 2);
      v188 = *(v187 + 3);
      if (v189 >= v188 >> 1)
      {
        v187 = sub_15274(v188 > 1, v189 + 1, 1, v187);
      }

      v190 = v231;
      v191 = v224;
      (*v194)(v231, v224);
      *(v187 + 2) = v189 + 1;
      v56 = v190;
      (*v216)(&v187[v217 + v189 * v219], v201, v191);

      v251 = v187;
    }

    else
    {
      v56 = v231;
      (*v194)(v231, v224);
    }

    goto LABEL_120;
  }

  v98 = 0;
  v214 = *(v23 + 80);
  v229 = (v214 + 32) & ~v214;
  v226 = &result[v229];
  v99 = &_swiftEmptyArrayStorage;
  v100 = v233;
  v222 = result;
  while (2)
  {
    if (v98 >= *(result + 2))
    {
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    v101 = *(v23 + 72);
    v230 = v98;
    v241 = v101;
    v239 = *(v23 + 16);
    v239(v100, &v226[v101 * v98], v66);
    v232 = v99;
    v250 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5388);
    sub_269B8(&qword_C5390, &qword_C5388);
    if ((sub_98128() & 1) == 0)
    {
LABEL_71:
      v125 = v233;
      goto LABEL_72;
    }

    if (v228)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C8080);
      v102 = v229;
      v103 = swift_allocObject();
      *(v103 + 16) = v211;
      v239(v103 + v102, v233, v66);
      v104 = v232;
      v105 = v232[2];

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v106 = v104[3] >> 1, v107 = v104, v106 <= v105))
      {
        result = sub_1529C(result, v105 + 1, 1, v104);
        v107 = result;
        v106 = *(result + 3) >> 1;
      }

      if (v106 <= v107[2])
      {
        goto LABEL_132;
      }

      v236 = v107 + v229;
      swift_arrayInitWithCopy();

      v108 = 0;
      v109 = 0;
      v110 = v107[2];
      v215 = v107;
      v107[2] = v110 + 1;
      v235 = v110;
      do
      {
        v244 = v109;
        v243 = v108;
        v239(v245, &v236[v108 * v241], v66);
        v111 = sub_966A8();
        v112 = v111;
        v113 = *(v111 + 16);
        if (v113)
        {
          v114 = 0;
          v115 = v111 + ((*(v234 + 80) + 32) & ~*(v234 + 80));
          v116 = *(v234 + 72);
          v117 = *(v234 + 16);
          while (1)
          {
            v119 = v246;
            v118 = v247;
            v117(v246, v115, v247);
            sub_965F8();
            v120 = sub_97E98();

            (*v249)(v119, v118);
            v121 = __OFADD__(v114, v120);
            v114 += v120;
            if (v121)
            {
              break;
            }

            v115 += v116;
            if (!--v113)
            {
              goto LABEL_44;
            }
          }

          __break(1u);
          goto LABEL_125;
        }

        v114 = 0;
LABEL_44:
        v66 = v237;
        (*v238)(v245, v237);
        v122 = *(v112 + 16);

        if (v122 < 2)
        {
          v65 = v247;
          v123 = v244;
          v124 = v235;
        }

        else
        {
          v121 = __OFADD__(v114, v122 - 1);
          v114 += v122 - 1;
          v65 = v247;
          v123 = v244;
          v124 = v235;
          if (v121)
          {
            goto LABEL_129;
          }
        }

        v121 = __OFADD__(v123, v114);
        v109 = &v123[v114];
        if (v121)
        {
          __break(1u);
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        v108 = v243 + 1;
      }

      while (v243 != v124);

      v5 = v234;
      v23 = v227;
      v125 = v233;
      if (v124)
      {
        v121 = __OFADD__(v109, v124);
        v109 += v124;
        if (v121)
        {
          goto LABEL_134;
        }
      }

      if (v221 >= v109)
      {
        goto LABEL_60;
      }

      v126 = sub_96748();
      sub_21730(v126, v232, v210);

      v127 = v251;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v127 = sub_15274(0, *(v127 + 2) + 1, 1, v127);
      }

      v129 = *(v127 + 2);
      v128 = *(v127 + 3);
      v130 = v219;
      if (v129 >= v128 >> 1)
      {
        v184 = sub_15274(v128 > 1, v129 + 1, 1, v127);
        v130 = v219;
        v127 = v184;
      }

      *(v127 + 2) = v129 + 1;
      (*v216)(&v127[v217 + v129 * v130], v210, v224);

      v251 = v127;
      v131 = &_swiftEmptyArrayStorage;
      v125 = v233;
    }

    else
    {
      v125 = v233;
LABEL_60:
      v131 = v232;
    }

    v132 = v131[2];
    v232 = v131;
    if (!v132)
    {
LABEL_72:
      v152 = v228;
      if (!v228)
      {
        goto LABEL_85;
      }

      break;
    }

    v133 = v213;
    v239(v213, v131 + v229 + (v132 - 1) * v241, v66);
    v134 = sub_966A8();
    (*v238)(v133, v66);
    v135 = *(v134 + 16);
    if (!v135)
    {

      goto LABEL_71;
    }

    v136 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v137 = *(v5 + 16);
    v138 = v205;
    v137(v205, v134 + v136 + *(v5 + 72) * (v135 - 1), v65);

    sub_96608();
    v140 = v139;
    v141 = *(v5 + 8);
    v141(v138, v65);
    v142 = sub_966A8();
    if (*(v142 + 16))
    {
      v143 = v203;
      v137(v203, v142 + v136, v65);

      sub_96628();
      v145 = v144;
      v141(v143, v65);
      if (v145 - v140 > 3.0)
      {
        v146 = sub_96748();
        sub_21730(v146, v232, v202);

        v147 = v251;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = v227;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v147 = sub_15274(0, *(v147 + 2) + 1, 1, v147);
        }

        v150 = *(v147 + 2);
        v149 = *(v147 + 3);
        v151 = v219;
        if (v150 >= v149 >> 1)
        {
          v185 = sub_15274(v149 > 1, v150 + 1, 1, v147);
          v151 = v219;
          v147 = v185;
        }

        *(v147 + 2) = v150 + 1;
        (*v216)(&v147[v217 + v150 * v151], v202, v224);

        v251 = v147;
        v232 = &_swiftEmptyArrayStorage;
        goto LABEL_71;
      }
    }

    else
    {
    }

    v125 = v233;
    v152 = v228;
    v23 = v227;
    if (!v228)
    {
LABEL_85:
      v250 = sub_966A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5138);
      sub_269B8(&qword_C5398, &qword_C5138);
      v167 = sub_98128();

      if (v167)
      {
        v239(v218, v125, v66);
        v168 = v232;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v168 = sub_1529C(0, *(v168 + 2) + 1, 1, v168);
        }

        v170 = *(v168 + 2);
        v169 = *(v168 + 3);
        v99 = v168;
        if (v170 >= v169 >> 1)
        {
          v99 = sub_1529C(v169 > 1, v170 + 1, 1, v168);
        }

        *(v99 + 2) = v170 + 1;
        (*v212)(&v99[v229 + v170 * v241], v218, v66);
LABEL_92:
        if (*(v99 + 2) < 3uLL)
        {
          v100 = v233;
          (*v238)(v233, v66);
        }

        else
        {
          sub_96748();
          if (*(v99 + 2))
          {
            v171 = sub_966A8();
            if (*(v171 + 16))
            {
              v172 = v234;
              v173 = v206;
              v174 = v247;
              (*(v234 + 16))(v206, v171 + ((*(v172 + 80) + 32) & ~*(v172 + 80)), v247);

              sub_96628();
              (*(v172 + 8))(v173, v174);
            }

            else
            {
            }

            v175 = sub_966A8();
            v176 = *(v175 + 16);
            if (v176)
            {
              v177 = v234;
              v178 = v207;
              v65 = v247;
              (*(v234 + 16))(v207, v175 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v234 + 72) * (v176 - 1), v247);

              sub_96608();
              (*(v177 + 8))(v178, v65);
            }

            else
            {

              v65 = v247;
            }
          }

          sub_96758();

          sub_96738();

          v179 = v251;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v179 = sub_15274(0, *(v179 + 2) + 1, 1, v179);
          }

          v5 = v234;
          v181 = *(v179 + 2);
          v180 = *(v179 + 3);
          v182 = v219;
          v23 = v227;
          if (v181 >= v180 >> 1)
          {
            v183 = sub_15274(v180 > 1, v181 + 1, 1, v179);
            v182 = v219;
            v179 = v183;
          }

          *(v179 + 2) = v181 + 1;
          (*v216)(&v179[v217 + v181 * v182], v223, v224);
          v251 = v179;
          v100 = v233;
          (*v238)(v233, v66);

          v99 = &_swiftEmptyArrayStorage;
        }

        result = v222;
        v98 = v230 + 1;
        if (v230 + 1 == v225)
        {

          goto LABEL_111;
        }

        continue;
      }

LABEL_91:
      v99 = v232;
      goto LABEL_92;
    }

    break;
  }

  v153 = v152;
  v154 = sub_966A8();
  v155 = *(v154 + 16);
  if (!v155)
  {

    v156 = 0;
LABEL_82:
    if (v221 >= v156)
    {

      v66 = v237;
      v125 = v233;
      goto LABEL_85;
    }

    v165 = sub_96748();
    sub_242B8(v233, v153, v165, v166, &v251, v63, v64);

    v66 = v237;
    goto LABEL_91;
  }

  v156 = 0;
  v157 = *(v5 + 80);
  v158 = v5;
  v244 = v154;
  v159 = v154 + ((v157 + 32) & ~v157);
  v160 = *(v158 + 72);
  v161 = *(v158 + 16);
  while (1)
  {
    v162 = v242;
    v161(v242, v159, v65);
    sub_965F8();
    v163 = sub_97E98();

    (*v249)(v162, v65);
    v121 = __OFADD__(v156, v163);
    v156 += v163;
    if (v121)
    {
      break;
    }

    v159 += v160;
    if (!--v155)
    {
      v164 = *(v244 + 2);

      v5 = v234;
      v23 = v227;
      if (v164 >= 2)
      {
        v121 = __OFADD__(v156, v164 - 1);
        v156 += v164 - 1;
        if (v121)
        {
          goto LABEL_133;
        }
      }

      goto LABEL_82;
    }
  }

LABEL_125:
  __break(1u);
  return v251;
}

void sub_24068(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_96788();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 transcriptCensorWords];

  sub_4AE8();
  v11 = sub_98268();
  v12 = [v10 asyncValuePromiseOnQueue:v11];

  (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v15 = (v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a1;
  v15[1] = a2;
  aBlock[4] = sub_25630;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_263D0;
  aBlock[3] = &block_descriptor_2;
  v16 = _Block_copy(aBlock);

  [v12 addFinishBlock:v16];
  _Block_release(v16);
}

void sub_242B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void **a5, double a6, double a7)
{
  v87 = a5;
  v98 = a4;
  v97 = a3;
  v92 = a2;
  v96 = sub_966E8();
  v100 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_96778();
  v99 = *(v94 - 8);
  __chkstk_darwin(v94);
  v102 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_96688();
  *&v91 = *(v104 - 8);
  v12 = __chkstk_darwin(v104);
  v93 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v103 = &v82 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5320);
  __chkstk_darwin(v15 - 8);
  v17 = &v82 - v16;
  v18 = sub_96638();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5328);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v101 = (&v82 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5330);
  v26 = __chkstk_darwin(v25 - 8);
  v28 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = (&v82 - v29);
  v116 = 0;
  v117 = 0xE000000000000000;
  v114 = a1;
  v31 = sub_966A8();
  v32 = 0;
  v33 = *(v31 + 16);
  v112 = (v23 + 48);
  v113 = (v23 + 56);
  v108 = (v19 + 32);
  v109 = v19 + 16;
  v105 = (v19 + 8);
  v106 = (v19 + 56);
  v115 = v18;
  v110 = v19;
  v111 = v31;
  for (i = v33; ; v33 = i)
  {
    if (v32 == v33)
    {
      v39 = 1;
      v32 = v33;
      goto LABEL_9;
    }

    if ((v32 & 0x8000000000000000) != 0)
    {
      goto LABEL_70;
    }

    if (v32 >= *(v31 + 16))
    {
      break;
    }

    v40 = v31 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v32;
    v41 = *(v22 + 48);
    v42 = v101;
    *v101 = v32;
    (*(v19 + 16))(v42 + v41, v40, v18);
    sub_216C8(v42, v28, &qword_C5328);
    v39 = 0;
    v32 = (v32 + 1);
LABEL_9:
    v43 = v114;
    (*v113)(v28, v39, 1, v22);
    sub_216C8(v28, v30, &qword_C5330);
    if ((*v112)(v30, 1, v22) == 1)
    {

      v47 = sub_273F4(a6, v116, v117, v92);
      v49 = v48;
      v51 = v50;
      [v48 boundingRectForGlyphRange:0 inTextContainer:{objc_msgSend(v48, "numberOfGlyphs"), v47}];
      v52 = ceil(CGRectGetMaxY(v120) / a7);
      v114 = sub_27620(v43, v49);
      v53 = *(v114 + 16);
      v54 = ceil(v53 / v52);
      if (v54 <= -9.22337204e18)
      {
        goto LABEL_75;
      }

      if (v54 >= 9.22337204e18)
      {
        goto LABEL_76;
      }

      if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_77;
      }

      if (v52 <= -9.22337204e18)
      {
        goto LABEL_78;
      }

      if (v52 >= 9.22337204e18)
      {
        goto LABEL_79;
      }

      v55 = v52;
      if (v52 < 0)
      {
        goto LABEL_80;
      }

      if (!v55)
      {

        return;
      }

      v82 = v49;
      v83 = v51;
      v84 = v47;
      v56 = v54;
      if (v54 < 0)
      {
        goto LABEL_81;
      }

      v57 = 0;
      v58 = *v87;
      v113 = (v114 + 32);
      v89 = (v55 - 1);
      v86 = enum case for TranscriptModel.Sentence.SplitStyle.middle(_:);
      v108 = (v91 + 104);
      v85 = enum case for TranscriptModel.Sentence.SplitStyle.end(_:);
      v88 = enum case for TranscriptModel.Sentence.SplitStyle.start(_:);
      v90 = enum case for TranscriptModel.Sentence.SplitStyle.full(_:);
      i = (v91 + 16);
      v105 = (v100 + 8);
      v106 = (v100 + 16);
      v101 = (v91 + 8);
      v92 = (v99 + 32);
      v91 = xmmword_9AF50;
      v109 = v52;
      while (1)
      {
        v111 = v58;
        v112 = v57;
        if (v56)
        {
          v59 = v57 * v56;
          if ((v57 * v56) >> 64 != (v57 * v56) >> 63)
          {
            goto LABEL_74;
          }

          v60 = 0;
          v61 = &_swiftEmptyArrayStorage;
          while (1)
          {
            v62 = v59 + v60;
            if (__OFADD__(v59, v60))
            {
              break;
            }

            if (v62 < v53)
            {
              if (v62 < 0)
              {
                goto LABEL_64;
              }

              if (v62 >= *(v114 + 16))
              {
                goto LABEL_65;
              }

              v63 = v113[v62];
              v64 = *(v63 + 2);
              v65 = v61[2];
              v66 = v65 + v64;
              if (__OFADD__(v65, v64))
              {
                goto LABEL_66;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (!isUniquelyReferenced_nonNull_native || v66 > v61[3] >> 1)
              {
                if (v65 <= v66)
                {
                  v68 = v65 + v64;
                }

                else
                {
                  v68 = v65;
                }

                v61 = sub_152C4(isUniquelyReferenced_nonNull_native, v68, 1, v61);
              }

              if (*(v63 + 2))
              {
                if ((v61[3] >> 1) - v61[2] < v64)
                {
                  goto LABEL_68;
                }

                swift_arrayInitWithCopy();

                if (v64)
                {
                  v69 = v61[2];
                  v70 = __OFADD__(v69, v64);
                  v71 = v69 + v64;
                  if (v70)
                  {
                    goto LABEL_69;
                  }

                  v61[2] = v71;
                }
              }

              else
              {

                if (v64)
                {
                  goto LABEL_67;
                }
              }
            }

            if (v56 == ++v60)
            {
              goto LABEL_46;
            }
          }

          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v61 = &_swiftEmptyArrayStorage;
LABEL_46:
        if (v52 == 1.0)
        {
          (*v108)(v103, v90, v104);
          if (v61[2])
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v112)
          {
            if (v112 == v89)
            {
              v72 = &v116;
            }

            else
            {
              v72 = (&v116 + 4);
            }

            (*v108)(v103, *(v72 - 64), v104);
          }

          else
          {
            (*v108)(v103, v88, v104);
          }

          if (v61[2])
          {
LABEL_48:
            sub_96628();
            sub_96608();
          }
        }

        (*i)(v93, v103, v104);
        v73 = v95;
        sub_966C8();
        sub_966D8();
        sub_966B8();

        sub_96758();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C8080);
        v74 = v100;
        v75 = (*(v100 + 80) + 32) & ~*(v100 + 80);
        v76 = swift_allocObject();
        *(v76 + 16) = v91;
        v77 = v96;
        (*(v74 + 16))(v76 + v75, v73, v96);
        sub_96738();
        (*(v74 + 8))(v73, v77);
        v58 = v111;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = sub_15274(0, v58[2] + 1, 1, v58);
        }

        v78 = v109;
        v80 = v58[2];
        v79 = v58[3];
        if (v80 >= v79 >> 1)
        {
          v58 = sub_15274(v79 > 1, v80 + 1, 1, v58);
        }

        v81 = v112 + 1;
        (*v101)(v103, v104);
        v58[2] = v80 + 1;
        v57 = v81;
        (*(v99 + 32))(v58 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v80, v102, v94);
        if (v81 == v78)
        {

          *v87 = v58;

          return;
        }
      }
    }

    v44 = *v30;
    (*v108)(v21, v30 + *(v22 + 48), v18);
    v45 = *(sub_966A8() + 16);

    if (v44 >= v45 - 1)
    {
      v34 = 1;
      v19 = v110;
    }

    else
    {
      v46 = sub_966A8();
      if (v44 < -1)
      {
        goto LABEL_72;
      }

      if ((v44 + 1) >= *(v46 + 16))
      {
        goto LABEL_73;
      }

      v19 = v110;
      (*(v110 + 16))(v17, v46 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v110 + 72) * (v44 + 1), v18);

      v34 = 0;
    }

    (*v106)(v17, v34, 1, v18);
    v118._countAndFlagsBits = sub_965F8();
    sub_97EE8(v118);

    v35 = sub_966A8();
    v36 = Array<A>.spacesAfterWord(_:nextWord:)(v21, v17, v35);
    v38 = v37;

    v119._countAndFlagsBits = v36;
    v119._object = v38;
    sub_97EE8(v119);
    v18 = v115;

    sub_4C60(v17, &qword_C5320);
    (*v105)(v21, v18);
    v31 = v111;
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
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
}

uint64_t sub_24FE8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t), uint64_t a5)
{
  v52 = a5;
  v53 = a4;
  v51 = a3;
  v7 = sub_97E38();
  __chkstk_darwin(v7 - 8);
  v54 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_95EF8();
  v50 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_96AB8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    sub_96A78();
    swift_errorRetain();
    v16 = sub_96AA8();
    v17 = sub_981B8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v49 = a1;
      v19 = v18;
      v48 = swift_slowAlloc();
      *&v57 = v48;
      *v19 = 136315138;
      *&v56[0] = a2;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E10);
      v20 = sub_97E48();
      v22 = sub_11FC8(v20, v21, &v57);
      v47 = v12;
      v23 = v22;

      *(v19 + 4) = v23;
      _os_log_impl(&dword_0, v16, v17, "Unable to get transcript censor words from bag: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);

      a1 = v49;

      (*(v13 + 8))(v15, v47);
    }

    else
    {

      (*(v13 + 8))(v15, v12);
    }
  }

  if (a1)
  {
    sub_98428();
    sub_267DC();
    sub_985A8();
    if (v58)
    {
      v24 = &_swiftEmptyArrayStorage;
      do
      {
        sub_16B64(&v57, v56);
        sub_12BDC(v56, v55);
        if (!swift_dynamicCast() || (v25 = sub_95F68(), v27 = v26, , v27 >> 60 == 15))
        {
          __swift_destroy_boxed_opaque_existential_1(v56);
        }

        else
        {
          sub_97E28();
          v28 = sub_97E18();
          v30 = v29;
          sub_26834(v25, v27);
          __swift_destroy_boxed_opaque_existential_1(v56);
          if (v30)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = sub_152EC(0, *(v24 + 2) + 1, 1, v24);
            }

            v32 = *(v24 + 2);
            v31 = *(v24 + 3);
            if (v32 >= v31 >> 1)
            {
              v24 = sub_152EC((v31 > 1), v32 + 1, 1, v24);
            }

            *(v24 + 2) = v32 + 1;
            v33 = &v24[16 * v32];
            *(v33 + 4) = v28;
            *(v33 + 5) = v30;
          }
        }

        sub_985A8();
      }

      while (v58);
    }

    else
    {
      v24 = &_swiftEmptyArrayStorage;
    }

    (*(v50 + 8))(v11, v9);
  }

  else
  {
    v24 = &_swiftEmptyArrayStorage;
  }

  v34 = [objc_allocWithZone(sub_964D8()) init];
  v35 = *(v24 + 2);
  if (v35)
  {
    sub_26788();
    v36 = (v24 + 40);
    do
    {
      v37 = *v36;
      *&v57 = *(v36 - 1);
      *(&v57 + 1) = v37;
      sub_985D8();
      v38 = sub_97DC8();

      v39 = [v38 pf_localizedStringByFoldingWithOptions:385];

      v40 = sub_97E08();
      v42 = v41;

      *&v57 = v40;
      *(&v57 + 1) = v42;
      sub_964B8();

      v36 += 2;
      --v35;
    }

    while (v35);
  }

  v43 = sub_965D8();
  v44 = sub_256E0(v34, v43);

  v53(v44);
}

uint64_t sub_25590()
{
  v1 = sub_96788();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_25630(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_96788() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_24FE8(a1, a2, v2 + v6, v8, v9);
}

unint64_t sub_256E0(uint64_t a1, uint64_t a2)
{
  v128 = a1;
  v107 = sub_96688();
  v3 = *(v107 - 8);
  __chkstk_darwin(v107);
  v106 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5378);
  __chkstk_darwin(v5 - 8);
  v118 = &v88 - v6;
  v127 = sub_95D88();
  v7 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_96638();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v88 - v14;
  v16 = sub_966E8();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v116 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v129 = &v88 - v20;
  v21 = sub_96778();
  v22 = __chkstk_darwin(v21);
  v100 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v27 = *(a2 + 16);
  v28 = &_swiftEmptyArrayStorage;
  if (!v27)
  {
    return v28;
  }

  v93 = &v88 - v25;
  v144 = &_swiftEmptyArrayStorage;
  v99 = v24;
  v137 = v3;
  v92 = v27;
  v29 = v26;
  sub_8C2E8(0, v27, 0);
  v30 = 0;
  v98 = v144;
  v96 = *(v29 + 16);
  v91 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v95 = a2 + v91;
  v31 = *(v29 + 72);
  v108 = v17 + 16;
  v135 = v10 + 16;
  v122 = (v7 + 8);
  v120 = (v10 + 8);
  v119 = (v10 + 32);
  v105 = enum case for TranscriptModel.Sentence.SplitStyle.full(_:);
  v104 = (v137 + 104);
  v103 = (v17 + 8);
  v112 = v17;
  v32 = (v17 + 32);
  v33 = v99;
  v102 = v32;
  v89 = (v29 + 8);
  v88 = (v29 + 32);
  v34 = v129;
  v121 = v9;
  v125 = v10;
  v124 = v13;
  v123 = v15;
  v101 = v16;
  v94 = v29 + 16;
  v90 = v31;
  while (1)
  {
    v97 = v30;
    v96(v100, v95 + v31 * v30, v33);
    sub_96768();
    sub_96718();
    v35 = sub_96728();
    v36 = *(v35 + 16);
    if (v36)
    {
      break;
    }

LABEL_26:

    v81 = v100;
    sub_96748();
    v82 = v93;
    sub_96758();
    (*v89)(v81, v99);
    v83 = v98;
    v144 = v98;
    v85 = v98[2];
    v84 = v98[3];
    if (v85 >= v84 >> 1)
    {
      sub_8C2E8(v84 > 1, v85 + 1, 1);
      v83 = v144;
    }

    v30 = v97 + 1;
    v83[2] = v85 + 1;
    v98 = v83;
    v86 = v90;
    v87 = v83 + v91 + v85 * v90;
    v33 = v99;
    (*v88)(v87, v82, v99);
    v31 = v86;
    if (v30 == v92)
    {
      return v98;
    }
  }

  v143 = &_swiftEmptyArrayStorage;
  v113 = v35;
  v110 = v36;
  sub_8C32C(0, v36, 0);
  result = v113;
  v117 = v143;
  v38 = v112;
  v39 = 0;
  v109 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v111 = v113 + v109;
  while (1)
  {
    if (v39 >= *(result + 16))
    {
      goto LABEL_34;
    }

    v40 = *(v38 + 72);
    v115 = v39;
    v114 = v40;
    (*(v38 + 16))(v116, v111 + v40 * v39, v16);
    sub_966D8();
    sub_966B8();
    v41 = sub_966A8();
    v42 = *(v41 + 16);
    if (v42)
    {
      break;
    }

LABEL_23:
    (*v104)(v106, v105, v107);
    sub_966C8();
    (*v103)(v116, v16);
    v77 = v117;
    v143 = v117;
    v79 = v117[2];
    v78 = v117[3];
    if (v79 >= v78 >> 1)
    {
      sub_8C32C(v78 > 1, v79 + 1, 1);
      v77 = v143;
    }

    v80 = v115 + 1;
    v77[2] = v79 + 1;
    v117 = v77;
    (*v102)(v77 + v109 + v79 * v114, v34, v16);
    v39 = v80;
    v38 = v112;
    result = v113;
    if (v80 == v110)
    {
      goto LABEL_26;
    }
  }

  v142 = &_swiftEmptyArrayStorage;
  v43 = v41;
  sub_8C370(0, v42, 0);
  v44 = v43;
  v45 = 0;
  v46 = v142;
  v47 = *(v10 + 80);
  v28 = (v47 + 32);
  v130 = (v47 + 32) & ~v47;
  v131 = v42;
  v132 = v43;
  v133 = v43 + v130;
  while (1)
  {
    if (v45 >= *(v44 + 16))
    {
      __break(1u);
      return v28;
    }

    v136 = *(v10 + 72);
    v137 = v46;
    v134 = *(v10 + 16);
    v134(v13, v133 + v136 * v45, v9);
    v48 = sub_965F8();
    v50 = v49;
    v140 = v48;
    v141 = v49;
    v51 = v126;
    sub_95D68();
    sub_26788();
    v52 = sub_985B8();
    v54 = v53;
    (*v122)(v51, v127);
    v140 = v52;
    v141 = v54;
    sub_985D8();
    v55 = sub_97DC8();

    v56 = [v55 pf_localizedStringByFoldingWithOptions:385];

    v57 = sub_97E08();
    v59 = v58;

    v140 = v57;
    v141 = v59;
    LOBYTE(v56) = sub_964C8();

    if ((v56 & 1) == 0)
    {

      goto LABEL_14;
    }

    v140 = v48;
    v141 = v50;
    v138 = v52;
    v139 = v54;
    v60 = sub_95FD8();
    v61 = v118;
    (*(*(v60 - 8) + 56))(v118, 1, 1, v60);
    v62 = sub_985E8();
    v64 = v63;
    v66 = v65;
    sub_4C60(v61, &qword_C5378);

    if ((v66 & 1) == 0)
    {
      break;
    }

LABEL_14:
    v71 = v123;
    v13 = v124;
    v9 = v121;
    v134(v123, v124, v121);
    v10 = v125;
LABEL_18:
    v34 = v129;
    (*v120)(v13, v9);
    v46 = v137;
    v142 = v137;
    v76 = *(v137 + 2);
    v75 = *(v137 + 3);
    if (v76 >= v75 >> 1)
    {
      sub_8C370(v75 > 1, v76 + 1, 1);
      v46 = v142;
    }

    ++v45;
    *(v46 + 2) = v76 + 1;
    (*v119)(&v46[v130 + v76 * v136], v71, v9);
    v44 = v132;
    if (v131 == v45)
    {

      v16 = v101;
      goto LABEL_23;
    }
  }

  v13 = v124;
  v67 = sub_965F8();
  v69 = v68;
  v70 = sub_97F28();
  v10 = v125;
  v71 = v123;
  if (v70 < 4)
  {
    v72 = 4;
LABEL_17:
    v145._countAndFlagsBits = 42;
    v145._object = 0xE100000000000000;
    v73 = sub_97F58(v145, v72);
    sub_26474(v62, v64, v73, v74, v67, v69);

    sub_96628();
    sub_96608();
    sub_96618();
    v9 = v121;
    goto LABEL_18;
  }

  result = sub_97EA8();
  if (v64 >> 14 >= result >> 14)
  {
    v62 = result;
    result = sub_97F28();
    v72 = result - 1;
    if (__OFSUB__(result, 1))
    {
      goto LABEL_33;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void sub_263D0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26474(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{

  sub_98598();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  sub_98598();
  v15 = v14;

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v17 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v17) = 1;
  }

  v18 = 4 << v17;
  v19 = a1;
  if ((a1 & 0xC) == 4 << v17)
  {
    result = sub_2693C(a1, a5, a6);
    v19 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v20 = v19 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v21 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v22 = (v21 << 16) | 7;
    LOBYTE(v23) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v21 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v21 < v19 >> 16)
  {
    goto LABEL_42;
  }

  v20 = sub_97F18();
  v27 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v27 = 7;
  }

  v22 = v27 | (v21 << 16);
  v23 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  result = a2;
  if ((a2 & 0xC) == 4 << v23)
  {
    v28 = v22;
    result = sub_2693C(a2, a5, a6);
    v22 = v28;
  }

  if ((v22 & 0xC) == v18)
  {
    v29 = result;
    v22 = sub_2693C(v22, a5, a6);
    result = v29;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      result = (v22 >> 16) - (result >> 16);
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v21 < result >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v21 >= v22 >> 16)
  {
    result = sub_97F18();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(a4) & 0xF;
        v26 = __OFADD__(v20, v25);
        v24 = v20 + v25;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v24 = v20 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v20, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v30 = result;
    v31 = sub_97EF8();
    result = v30;
    v26 = __OFADD__(v20, v31);
    v24 = v20 + v31;
    if (!v26)
    {
LABEL_21:
      v26 = __OFADD__(v24, result);
      result += v24;
      if (!v26)
      {
        sub_97E78(result);
LABEL_23:
        sub_97F68();
        sub_2689C();
        sub_97ED8();

        sub_97ED8();
        sub_268F0(a2, a5, a6);
        sub_97ED8();

        return 0;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_26788()
{
  result = qword_C5368;
  if (!qword_C5368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5368);
  }

  return result;
}

unint64_t sub_267DC()
{
  result = qword_C5370;
  if (!qword_C5370)
  {
    sub_95EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5370);
  }

  return result;
}

uint64_t sub_26834(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26848(a1, a2);
  }

  return a1;
}

uint64_t sub_26848(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2689C()
{
  result = qword_C5380;
  if (!qword_C5380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5380);
  }

  return result;
}

unint64_t sub_268F0(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_97F68();
  }

  __break(1u);
  return result;
}

uint64_t sub_2693C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_97F38();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_97F08();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_269B8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26A0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C53A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_26AA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C53A0);

  return sub_224D8();
}

uint64_t objectdestroyTm()
{
  v1 = sub_96788();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 39) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_26BD0(uint64_t a1)
{
  v3 = *(sub_96788() - 8);
  v4 = ((*(v3 + 80) + 16) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = (v1 + ((v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v5 + 2);
  v7 = *(v5 + 24);
  v8 = *(v1 + ((v4 + 39) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v5;
  v11 = v6;
  sub_2273C(a1, &v10, v7);
  v8();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26CD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26D28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_26D80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_26D98(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = (a2 - 1);
  }

  return result;
}

uint64_t sub_26DCC(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v44 = a8;
  v14 = sub_96638();
  v50 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v49 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v53 = &v44 - v18;
  __chkstk_darwin(v17);
  v20 = &v44 - v19;
  v51 = &a3[a2];
  if (__OFADD__(a2, a3))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    a3 = sub_153F8(0, *(a3 + 2) + 1, 1, a3);
    a6[2] = a3;
    goto LABEL_28;
  }

  swift_beginAccess();
  v54 = a6;
  swift_beginAccess();
  swift_beginAccess();
  v21 = *(a5 + 16);
  a3 = *(a5 + 24);
  if (__OFADD__(v21, a3))
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (&a3[v21] >= v51)
  {
    v8 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v52 = v50 + 16;
    v47 = (v50 + 32);
    v48 = (v50 + 8);
    v8 = &_swiftEmptyArrayStorage;
    v46 = a7;
    v45 = a5;
    do
    {
      v22 = v54[2];
      if (!*(v22 + 16))
      {
        break;
      }

      a6 = v8;
      v23 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v8 = *(v50 + 16);
      (v8)(v20, v22 + v23, v14);
      v24 = [a7 characterRangeForGlyphRange:v21 actualGlyphRange:{a3, 0}];
      a3 = &v24[v25];
      if (__OFADD__(v24, v25))
      {
        goto LABEL_32;
      }

      v26 = v20;
      sub_965F8();
      v27 = sub_97E98();

      v28 = [a7 glyphRangeForCharacterRange:a3 actualCharacterRange:{v27, 0}];
      v30 = &v28[v29];
      if (__OFADD__(v28, v29))
      {
        goto LABEL_33;
      }

      if (v51 < v30)
      {
        (*v48)(v26, v14);
        v8 = a6;
        break;
      }

      v31 = v54;
      swift_beginAccess();
      a3 = v31[2];
      v32 = *(a3 + 2);
      if (!v32)
      {
        goto LABEL_34;
      }

      (v8)(v53, &a3[v23], v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31[2] = a3;
      if (!isUniquelyReferenced_nonNull_native || (v32 - 1) > *(a3 + 3) >> 1)
      {
        a3 = sub_152C4(isUniquelyReferenced_nonNull_native, v32, 1, a3);
        v31[2] = a3;
      }

      v34 = v50;
      v35 = *(v50 + 8);
      v35(&a3[v23], v14);
      v36 = *(v34 + 72);
      if (v36 > 0 || &a3[v23] >= &a3[v23 + v36 + (*(a3 + 2) - 1) * v36])
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v36)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      --*(a3 + 2);
      v54[2] = a3;
      swift_endAccess();
      (v8)(v49, v53, v14);
      v8 = a6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_152C4(0, a6[2] + 1, 1, a6);
      }

      v38 = v8[2];
      v37 = v8[3];
      if (v38 >= v37 >> 1)
      {
        v8 = sub_152C4(v37 > 1, v38 + 1, 1, v8);
      }

      a6 = v48;
      v35(v53, v14);
      v35(v26, v14);
      v8[2] = v38 + 1;
      (*v47)(v8 + v23 + v38 * v36, v49, v14);
      a3 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_35;
      }

      v21 = 0;
      v39 = v45;
      *(v45 + 16) = 0;
      *(v39 + 24) = a3;
      a7 = v46;
      v20 = v26;
    }

    while (a3 < v51);
  }

  a6 = v44;
  swift_beginAccess();
  a3 = a6[2];
  v40 = swift_isUniquelyReferenced_nonNull_native();
  a6[2] = a3;
  if ((v40 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_28:
  v42 = *(a3 + 2);
  v41 = *(a3 + 3);
  if (v42 >= v41 >> 1)
  {
    a3 = sub_153F8((v41 > 1), v42 + 1, 1, a3);
  }

  *(a3 + 2) = v42 + 1;
  *&a3[8 * v42 + 32] = v8;
  a6[2] = a3;
  return swift_endAccess();
}

void sub_27308(uint64_t a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v19 = *(a1 + 32);

  v20 = a2;
  v19(a3, a4, a5, a6, a7, a8, a9, a10);
}

id sub_273F4(double a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [objc_allocWithZone(NSTextContainer) initWithSize:{a1, 1.79769313e308}];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C53A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_9AF50;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = sub_278A0();
  *(inited + 40) = a4;
  v7 = v5;
  v8 = NSFontAttributeName;
  v9 = a4;
  sub_76C64(inited);
  swift_setDeallocating();
  sub_278EC(inited + 32);
  v10 = objc_allocWithZone(NSAttributedString);
  v11 = sub_97DC8();

  type metadata accessor for Key(0);
  sub_27954();
  isa = sub_97D58().super.isa;

  v13 = [v10 initWithString:v11 attributes:isa];

  v14 = [objc_allocWithZone(NSTextStorage) initWithAttributedString:v13];
  v15 = objc_allocWithZone(NSLayoutManager);
  v16 = v14;
  v17 = [v15 init];
  [v7 setLineFragmentPadding:0.0];
  [v16 addLayoutManager:v17];

  [v17 addTextContainer:v7];
  return v7;
}

uint64_t sub_27620(uint64_t a1, void *a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = sub_966A8();
  v4 = swift_allocObject();
  *(v4 + 16) = &_swiftEmptyArrayStorage;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v6 = a2;
  v7 = [v6 numberOfGlyphs];
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v3;
  v8[4] = v6;
  v8[5] = v4;
  v12[4] = sub_2787C;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_27308;
  v12[3] = &block_descriptor_3;
  v9 = _Block_copy(v12);

  [v6 enumerateLineFragmentsForGlyphRange:0 usingBlock:{v7, v9}];
  _Block_release(v9);
  swift_beginAccess();
  v10 = *(v4 + 16);

  return v10;
}

uint64_t sub_277E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2782C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_278A0()
{
  result = qword_C51A8;
  if (!qword_C51A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C51A8);
  }

  return result;
}

uint64_t sub_278EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C77B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27954()
{
  result = qword_C47F8;
  if (!qword_C47F8)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C47F8);
  }

  return result;
}

uint64_t sub_279B0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t NowPlayingStoreTranscriptIdentifierProvider.__allocating_init(asPartOf:)(uint64_t a1)
{
  v2 = swift_allocObject();
  NowPlayingStoreTranscriptIdentifierProvider.init(asPartOf:)(a1);
  return v2;
}

uint64_t NowPlayingStoreTranscriptIdentifierProvider.init(asPartOf:)(uint64_t a1)
{
  v17 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C53B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C53B8);
  v7 = __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v17 - v10;
  v12 = OBJC_IVAR____TtC19PodcastsTranscripts43NowPlayingStoreTranscriptIdentifierProvider__transcriptRequestInformation;
  v13 = sub_969F8();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  sub_4BF8(v11, v9, &qword_C53B8);
  sub_96E58();
  sub_4C60(v11, &qword_C53B8);
  (*(v3 + 32))(v1 + v12, v5, v2);
  v14 = v1 + OBJC_IVAR____TtC19PodcastsTranscripts43NowPlayingStoreTranscriptIdentifierProvider_currentEpisodeAdamID;
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC19PodcastsTranscripts43NowPlayingStoreTranscriptIdentifierProvider_subscriptions) = &_swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C53D8);
  sub_97C78();
  v15 = v17;
  sub_97D08();
  sub_4CC0(&v18, v1 + 16);
  *(v1 + 56) = v15;
  return v1;
}

uint64_t NowPlayingStoreTranscriptIdentifierProvider.transcriptRequestInformation.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();
}

uint64_t sub_27D08()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();
}

uint64_t sub_27D88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C53B8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_4BF8(a1, &v9 - v6, &qword_C53B8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_4BF8(v7, v5, &qword_C53B8);

  sub_96EA8();
  return sub_4C60(v7, &qword_C53B8);
}

uint64_t NowPlayingStoreTranscriptIdentifierProvider.transcriptRequestInformation.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C53B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_4BF8(a1, v4, &qword_C53B8);

  sub_96EA8();
  return sub_4C60(a1, &qword_C53B8);
}

void (*NowPlayingStoreTranscriptIdentifierProvider.transcriptRequestInformation.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_96E88();
  return sub_12F20;
}

uint64_t NowPlayingStoreTranscriptIdentifierProvider.$transcriptRequestInformation.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C53B0);
  sub_96E68();
  return swift_endAccess();
}

uint64_t sub_280C4()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C53B0);
  sub_96E68();
  return swift_endAccess();
}

uint64_t sub_2813C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C53E0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C53B0);
  sub_96E78();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t NowPlayingStoreTranscriptIdentifierProvider.$transcriptRequestInformation.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C53E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C53B0);
  sub_96E78();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*NowPlayingStoreTranscriptIdentifierProvider.$transcriptRequestInformation.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C53E0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC19PodcastsTranscripts43NowPlayingStoreTranscriptIdentifierProvider__transcriptRequestInformation;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C53B0);
  sub_96E68();
  swift_endAccess();
  return sub_134A0;
}

void NowPlayingStoreTranscriptIdentifierProvider.updateForEpisode(_:shouldForce:completion:)(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v39 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C53B8);
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v37 - v13;
  v15 = sub_98198();
  if ((v16 & 1) != 0 || (v17 = v15, v18 = sub_98188(), !v19))
  {
LABEL_11:
    v35 = sub_969F8();
    (*(*(v35 - 8) + 56))(v14, 1, 1, v35);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_4BF8(v14, v11, &qword_C53B8);

    sub_96EA8();
    v24 = sub_4C60(v14, &qword_C53B8);
    v36 = v5 + OBJC_IVAR____TtC19PodcastsTranscripts43NowPlayingStoreTranscriptIdentifierProvider_currentEpisodeAdamID;
    *v36 = 0;
    *(v36 + 8) = 1;
    if (!a3)
    {
      return;
    }

    goto LABEL_12;
  }

  v20 = v18;
  v21 = v19;
  v22 = [a1 transcriptIdentifier];
  if (v22)
  {

    if ((a2 & 1) == 0)
    {

      goto LABEL_11;
    }
  }

  v23 = v5 + OBJC_IVAR____TtC19PodcastsTranscripts43NowPlayingStoreTranscriptIdentifierProvider_currentEpisodeAdamID;
  if ((*(v5 + OBJC_IVAR____TtC19PodcastsTranscripts43NowPlayingStoreTranscriptIdentifierProvider_currentEpisodeAdamID + 8) & 1) != 0 || *v23 != v17)
  {
    *v23 = v17;
    *(v23 + 8) = 0;
    v25 = sub_969F8();
    (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
    swift_getKeyPath();
    swift_getKeyPath();
    v38 = v20;
    sub_4BF8(v14, v11, &qword_C53B8);

    sub_96EA8();
    sub_4C60(v14, &qword_C53B8);
    v26 = [objc_opt_self() sharedInstance];
    v27 = [v26 privateQueueContext];

    v28 = swift_allocObject();
    swift_weakInit();
    v29 = *(v5 + 56);
    sub_E304(v5 + 16, v41);
    v30 = swift_allocObject();
    v31 = v38;
    v32 = v39;
    v30[2] = v27;
    v30[3] = v31;
    v30[4] = v21;
    v30[5] = a3;
    v30[6] = v32;
    sub_4CC0(v41, (v30 + 7));
    v30[12] = v29;
    v30[13] = v17;
    v30[14] = v28;
    aBlock[4] = sub_28F6C;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_279B0;
    aBlock[3] = &block_descriptor_4;
    v33 = _Block_copy(aBlock);

    v34 = v27;
    sub_28FC0(a3);

    [v34 performBlock:v33];
    _Block_release(v33);

    return;
  }

  if (a3)
  {
LABEL_12:
    a3(v24);
  }
}

uint64_t sub_2899C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_289D4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v54 = a8;
  v55 = a7;
  v53 = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7BD0);
  __chkstk_darwin(v14 - 8);
  v56 = &v50 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C54C0);
  __chkstk_darwin(v16 - 8);
  v18 = &v50 - v17;
  v19 = sub_96A38();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v59 = a3;
  v60 = &v50 - v24;
  v57 = a2;
  v25 = sub_97DC8();
  v58 = a1;
  v26 = [a1 episodeForUuid:v25];

  if (v26)
  {
    v27 = [v26 priceType];
    if (v27)
    {
      v28 = v27;
      v51 = a4;
      v52 = a5;
      sub_97E08();

      sub_96A28();
      v29 = v19;
      if ((*(v20 + 48))(v18, 1, v19) != 1)
      {
        v50 = a9;
        v30 = *(v20 + 32);
        v31 = v60;
        v30(v60, v18, v29);
        (*(v20 + 16))(v22, v31, v29);
        sub_E304(v53, &v61);
        v32 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v33 = swift_allocObject();
        v34 = v54;
        *(v33 + 16) = v55;
        *(v33 + 24) = v34;
        v30((v33 + v32), v22, v29);
        sub_4CC0(&v61, v33 + ((v21 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C54C8);

        v35 = sub_97D48();
        v36 = sub_98098();
        v37 = v56;
        (*(*(v36 - 8) + 56))(v56, 1, 1, v36);
        v38 = swift_allocObject();
        v38[2] = 0;
        v38[3] = 0;
        v38[4] = &unk_9B1F8;
        v38[5] = v33;
        v38[6] = v35;

        sub_2AE3C(0, 0, v37, &unk_9B210, v38);

        v39 = swift_allocObject();
        swift_beginAccess();
        swift_weakLoadStrong();
        swift_weakInit();

        v40 = swift_allocObject();
        v42 = v51;
        v41 = v52;
        v40[2] = v51;
        v40[3] = v41;
        v43 = v29;
        v44 = v57;
        v45 = v58;
        v40[4] = v39;
        v40[5] = v45;
        v46 = v59;
        v40[6] = v44;
        v40[7] = v46;
        v47 = sub_4AE8();
        sub_28FC0(v42);
        v48 = v45;

        v49 = sub_982E8();
        v62 = v47;
        v63 = &protocol witness table for OS_dispatch_queue;
        *&v61 = v49;
        sub_97D18();

        (*(v20 + 8))(v60, v43);
        __swift_destroy_boxed_opaque_existential_1(&v61);
        return;
      }

      sub_4C60(v18, &qword_C54C0);
      a4 = v51;
    }
  }

  if (a4)
  {
    a4();
  }
}

uint64_t sub_28F04()
{

  if (*(v0 + 40))
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_28FC0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_28FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_96A38();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_97B68();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = sub_97BE8();
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_2915C, 0, 0);
}

uint64_t sub_2915C()
{
  v1 = v0[15];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v18 = v0[7];
  v7 = v0[5];
  sub_97BD8();
  sub_97BC8();
  v8 = *(v2 + 8);
  v0[17] = v8;
  v0[18] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  sub_97CB8();

  sub_97C88();
  v9 = sub_97CA8();
  v0[19] = v9;

  (*(v5 + 16))(v4, v7, v18);
  sub_97B58();
  v10 = v6[3];
  v11 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v10);
  v12 = swift_task_alloc();
  v0[20] = v12;
  v13 = sub_2B5B4();
  *v12 = v0;
  v12[1] = sub_29300;
  v14 = v0[12];
  v15 = v0[10];
  v16 = v0[2];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v16, v14, v9, v15, v13, v10, v11);
}

uint64_t sub_29300()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_294F0;
  }

  else
  {
    v2 = sub_29414;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_29414()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];

  (*(v6 + 8))(v4, v5);
  v2(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_294F0()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];

  (*(v6 + 8))(v4, v5);
  v2(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_295CC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v89 = a5;
  v90 = a7;
  v88 = a6;
  v98 = a3;
  v9 = sub_96AB8();
  v96 = *(v9 - 8);
  v97 = v9;
  __chkstk_darwin(v9);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v91 = &v82 - v13;
  __chkstk_darwin(v14);
  v87 = &v82 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C53B8);
  __chkstk_darwin(v16 - 8);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v82 - v20;
  v22 = sub_969F8();
  v93 = *(v22 - 8);
  v94 = v22;
  v23 = *(v93 + 64);
  __chkstk_darwin(v22);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v86 = &v82 - v26;
  __chkstk_darwin(v27);
  v95 = &v82 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C54D0);
  __chkstk_darwin(v29);
  v31 = &v82 - v30;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v33 = result;
    v92 = a2;
    sub_4BF8(a1, v31, &qword_C54D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_96A78();

      swift_errorRetain();
      v34 = sub_96AA8();
      v35 = sub_981B8();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v105 = v38;
        *v36 = 136315394;
        v39 = *(v33 + OBJC_IVAR____TtC19PodcastsTranscripts43NowPlayingStoreTranscriptIdentifierProvider_currentEpisodeAdamID + 8);
        aBlock = *(v33 + OBJC_IVAR____TtC19PodcastsTranscripts43NowPlayingStoreTranscriptIdentifierProvider_currentEpisodeAdamID);
        LOBYTE(v100) = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C54D8);
        v40 = sub_97E48();
        v42 = sub_11FC8(v40, v41, &v105);

        *(v36 + 4) = v42;
        *(v36 + 12) = 2112;
        swift_errorRetain();
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v36 + 14) = v43;
        *v37 = v43;
        _os_log_impl(&dword_0, v34, v35, "Unable to fetch transcript identifier for local episode with AdamID %s with error: %@", v36, 0x16u);
        sub_4C60(v37, &qword_C50C8);

        __swift_destroy_boxed_opaque_existential_1(v38);
      }

      else
      {
      }

      result = (*(v96 + 8))(v11, v97);
      goto LABEL_20;
    }

    v45 = v93;
    v44 = v94;
    v46 = *(v93 + 32);
    v47 = v95;
    v85 = v93 + 32;
    v84 = v46;
    v46(v95, v31, v94);
    sub_969C8();
    v48 = sub_96A18();
    v49 = v33 + OBJC_IVAR____TtC19PodcastsTranscripts43NowPlayingStoreTranscriptIdentifierProvider_currentEpisodeAdamID;
    v50 = *(v33 + OBJC_IVAR____TtC19PodcastsTranscripts43NowPlayingStoreTranscriptIdentifierProvider_currentEpisodeAdamID + 8);
    if (v51)
    {
      if (!*(v33 + OBJC_IVAR____TtC19PodcastsTranscripts43NowPlayingStoreTranscriptIdentifierProvider_currentEpisodeAdamID + 8))
      {
LABEL_9:
        v52 = v91;
        sub_96A78();
        (*(v45 + 16))(v24, v47, v44);
        v53 = sub_96AA8();
        v54 = sub_981A8();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          aBlock = v90;
          *v55 = 136315138;
          v56 = sub_969C8();
          v58 = v57;
          v59 = *(v45 + 8);
          v59(v24, v44);
          v60 = sub_11FC8(v56, v58, &aBlock);

          *(v55 + 4) = v60;
          _os_log_impl(&dword_0, v53, v54, "Fetched transcript identifier from MAPI for local episode with AdamId %s, but this is no longer playing episode", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v90);

          (*(v96 + 8))(v91, v97);
          result = (v59)(v95, v44);
        }

        else
        {

          v71 = *(v45 + 8);
          v71(v24, v44);
          (*(v96 + 8))(v52, v97);
          result = (v71)(v47, v44);
        }

        goto LABEL_20;
      }
    }

    else
    {
      if (v48 != *v49)
      {
        v50 = 1;
      }

      if (v50)
      {
        goto LABEL_9;
      }
    }

    v61 = *(v45 + 16);
    v91 = (v45 + 16);
    v83 = v61;
    v61(v21, v47, v44);
    (*(v45 + 56))(v21, 0, 1, v44);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_4BF8(v21, v18, &qword_C53B8);

    sub_96EA8();
    sub_4C60(v21, &qword_C53B8);
    v62 = v87;
    sub_96A78();

    v63 = sub_96AA8();
    v64 = sub_981A8();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v105 = v66;
      *v65 = 136315138;
      v67 = *(v49 + 8);
      aBlock = *v49;
      LOBYTE(v100) = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C54D8);
      v68 = sub_97E48();
      v70 = sub_11FC8(v68, v69, &v105);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_0, v63, v64, "Successfully fetched transcript identifier from MAPI for local episode with AdamId %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
    }

    (*(v96 + 8))(v62, v97);
    v72 = v86;
    v73 = v94;
    v74 = v95;
    v83(v86, v95, v94);
    v75 = v93;
    v76 = (*(v93 + 80) + 40) & ~*(v93 + 80);
    v77 = swift_allocObject();
    v78 = v88;
    v79 = v89;
    *(v77 + 2) = v89;
    *(v77 + 3) = v78;
    *(v77 + 4) = v90;
    v84(&v77[v76], v72, v73);
    v103 = sub_2B26C;
    v104 = v77;
    aBlock = _NSConcreteStackBlock;
    v100 = 1107296256;
    v101 = sub_279B0;
    v102 = &block_descriptor_27;
    v80 = _Block_copy(&aBlock);
    v81 = v79;

    [v81 performBlock:v80];
    _Block_release(v80);

    result = (*(v75 + 8))(v74, v73);
LABEL_20:
    a2 = v92;
    if (!v92)
    {
      return result;
    }

    return a2();
  }

  if (a2)
  {
    return a2();
  }

  return result;
}

void sub_2A004(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C54E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = sub_97DC8();
  v23 = [a1 episodeForUuid:v8];

  if (v23)
  {
    [v23 storeTrackId];
    v9 = sub_96A08();
    sub_969C8();
    v10 = sub_96A18();
    if ((v11 & 1) == 0 && v9 == v10)
    {
      v12 = [v23 podcast];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 channel];

        if (v14)
        {
          if ([v14 subscriptionActive])
          {
            sub_969E8();
            v15 = sub_96548();
            v16 = *(v15 - 8);
            if ((*(v16 + 48))(v7, 1, v15) == 1)
            {
              sub_4C60(v7, &qword_C54E0);
              v17 = 0;
            }

            else
            {
              sub_96538();
              (*(v16 + 8))(v7, v15);
              v17 = sub_97DC8();
            }

            [v23 setEntitledTranscriptProvider:v17];

LABEL_17:
            sub_969D8();
            v21 = sub_97DC8();

            [v23 setTranscriptIdentifier:v21];

            return;
          }
        }
      }

      sub_969E8();
      v19 = sub_96548();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v4, 1, v19) == 1)
      {
        sub_4C60(v4, &qword_C54E0);
        v17 = 0;
      }

      else
      {
        sub_96538();
        (*(v20 + 8))(v4, v19);
        v17 = sub_97DC8();
      }

      [v23 setFreeTranscriptProvider:v17];
      goto LABEL_17;
    }

    v18 = v23;
  }
}

uint64_t NowPlayingStoreTranscriptIdentifierProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = OBJC_IVAR____TtC19PodcastsTranscripts43NowPlayingStoreTranscriptIdentifierProvider__transcriptRequestInformation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C53B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t NowPlayingStoreTranscriptIdentifierProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = OBJC_IVAR____TtC19PodcastsTranscripts43NowPlayingStoreTranscriptIdentifierProvider__transcriptRequestInformation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C53B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for NowPlayingStoreTranscriptIdentifierProvider()
{
  result = qword_C5410;
  if (!qword_C5410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2A564()
{
  sub_2A650();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2A650()
{
  if (!qword_C5420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C53B8);
    v0 = sub_96EB8();
    if (!v1)
    {
      atomic_store(v0, &qword_C5420);
    }
  }
}

uint64_t sub_2A6B4()
{
  v1 = sub_96A38();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + v5);

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

uint64_t sub_2A78C(uint64_t a1)
{
  v4 = *(sub_96A38() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2A8A8;

  return sub_28FD0(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_2A8A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2A99C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = sub_969F8();
  v6[3] = v8;
  v6[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_2AAFC;

  return v12(v9);
}

uint64_t sub_2AAFC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2ACA0;
  }

  else
  {
    v2 = sub_2AC10;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_2AC10()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_97D38();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2ACA0()
{
  sub_97D28();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2AD18()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_2AD60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2A8A8;

  return sub_2A99C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2AE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7BD0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_4BF8(a3, v23 - v10, &unk_C7BD0);
  v12 = sub_98098();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_4C60(v11, &unk_C7BD0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_98088();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_98038();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_97E58() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_4C60(a3, &unk_C7BD0);

    return v21;
  }

LABEL_8:
  sub_4C60(a3, &unk_C7BD0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_2B138()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2B1A0()
{
  v1 = sub_969F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_2B26C()
{
  sub_969F8();
  v1 = *(v0 + 16);

  sub_2A004(v1);
}

uint64_t sub_2B2D4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2B3CC;

  return v6(a1);
}

uint64_t sub_2B3CC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2B4C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2B4FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2B614;

  return sub_2B2D4(a1, v4);
}

unint64_t sub_2B5B4()
{
  result = qword_C54E8;
  if (!qword_C54E8)
  {
    sub_97B68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C54E8);
  }

  return result;
}

void *sub_2B61C(unint64_t a1, uint64_t *a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); ; i = sub_98778())
  {
    result = &_swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v28 = &_swiftEmptyArrayStorage;
    result = sub_98718();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = v2 & 0xC000000000000001;
    v23 = v2 & 0xFFFFFFFFFFFFFF8;
    v24 = i;
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6)
      {
        v8 = sub_986C8();
      }

      else
      {
        if (v5 >= *(v23 + 16))
        {
          goto LABEL_22;
        }

        v8 = *(v2 + 8 * v5 + 32);
      }

      v9 = *(v8 + 16);
      if (v9 >> 61 == 2)
      {
        v10 = v2;
        v11 = v9 & 0x1FFFFFFFFFFFFFFFLL;
        v26[0] = *(&dword_10 + (v9 & 0x1FFFFFFFFFFFFFFFLL));
        memset(&v26[1], 0, 24);
        v27 = 2;
        v12 = *a2;
        if (*(*a2 + 16))
        {

          v13 = sub_741B8(v26);
          if ((v14 & 1) != 0 && (v15 = *(*(v12 + 56) + 8 * v13), , , v16 = *(v15 + 16), v16 >> 61 == 2))
          {
            v17 = v16 & 0x1FFFFFFFFFFFFFFFLL;
            v18 = *(v11 + 32);
            *(v17 + 24) = *(v11 + 24);
            *(v17 + 32) = v18;
            v19 = *(v11 + 48);
            *(v17 + 40) = *(v11 + 40);
            *(v17 + 48) = v19;
            v20 = *(v11 + 64);
            *(v17 + 56) = *(v11 + 56);
            *(v17 + 64) = v20;
            v21 = *(v11 + 80);
            *(v17 + 72) = *(v11 + 72);
            *(v17 + 80) = v21;
            swift_beginAccess();
            v22 = *(v11 + 88);
            swift_beginAccess();
            *(v17 + 88) = v22;
          }

          else
          {
          }
        }

        v2 = v10;
        i = v24;
      }

      sub_986F8();
      sub_98728();
      sub_98738();
      sub_98708();
      ++v5;
      if (v7 == i)
      {
        return v28;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  return result;
}

unint64_t sub_2B8C4(unint64_t result, unint64_t *a2)
{
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_28;
  }

  v4 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
  if (v4)
  {
    do
    {
      v5 = 0;
      v6 = v3 & 0xC000000000000001;
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
      v27 = v3 & 0xC000000000000001;
      v28 = v3;
      v26 = v3 & 0xFFFFFFFFFFFFFF8;
      while (v6)
      {
        v8 = sub_986C8();
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_24;
        }

LABEL_9:
        v10 = *(v8 + 16);
        if (v10 >> 61 == 2)
        {
          v11 = v4;
          v29 = *(&dword_10 + (v10 & 0x1FFFFFFFFFFFFFFFLL));
          v30 = 0uLL;
          v31 = 2;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v32 = *a2;
          v3 = v32;
          v13 = a2;
          *a2 = 0x8000000000000000;
          v14 = sub_741B8(&v29);
          v16 = *(v3 + 16);
          v17 = (v15 & 1) == 0;
          v18 = __OFADD__(v16, v17);
          v19 = v16 + v17;
          if (v18)
          {
            goto LABEL_26;
          }

          a2 = v15;
          if (*(v3 + 24) >= v19)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_15;
            }

            v21 = v14;
            sub_75858();
            v14 = v21;
            v3 = v32;
            if ((a2 & 1) == 0)
            {
              goto LABEL_21;
            }

LABEL_16:
            *(*(v3 + 56) + 8 * v14) = v8;
          }

          else
          {
            sub_74948(v19, isUniquelyReferenced_nonNull_native);
            v14 = sub_741B8(&v29);
            if ((a2 & 1) != (v20 & 1))
            {
              result = sub_98868();
              __break(1u);
              return result;
            }

LABEL_15:
            v3 = v32;
            if (a2)
            {
              goto LABEL_16;
            }

LABEL_21:
            *(v3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
            v22 = *(v3 + 48) + 40 * v14;
            v23 = v30;
            *v22 = v29;
            *(v22 + 16) = v23;
            *(v22 + 32) = v31;
            *(*(v3 + 56) + 8 * v14) = v8;
            v24 = *(v3 + 16);
            v18 = __OFADD__(v24, 1);
            v25 = v24 + 1;
            if (v18)
            {
              goto LABEL_27;
            }

            *(v3 + 16) = v25;
          }

          a2 = v13;
          *v13 = v3;

          v4 = v11;
          v6 = v27;
          v3 = v28;
          v7 = v26;
          goto LABEL_5;
        }

LABEL_5:
        ++v5;
        if (v9 == v4)
        {
          return result;
        }
      }

      if (v5 >= *(v7 + 16))
      {
        goto LABEL_25;
      }

      v8 = *(v3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_9;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      result = sub_98778();
      v4 = result;
    }

    while (result);
  }

  return result;
}

double sub_2BB4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  return v1;
}

uint64_t sub_2BBC0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  return v1;
}

uint64_t sub_2BC3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  return v1;
}

uint64_t sub_2BCB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  return v1;
}

uint64_t sub_2BD24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C58E0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C58E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C58F0);
  v10 = *(v9 - 8);
  v21 = v9;
  v22 = v10;
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C58F8);
  v14 = *(v13 - 8);
  v23 = v13;
  v24 = v14;
  __chkstk_darwin(v13);
  v16 = &v20 - v15;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C56C8);
  sub_96E68();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5900);
  sub_EA78(&unk_C7E60, &qword_C58E0);
  sub_96F58();
  (*(v2 + 8))(v4, v1);
  sub_EA78(&qword_C5908, &qword_C58E8);
  sub_96F38();
  (*(v6 + 8))(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5910);
  sub_EA78(&qword_C5918, &qword_C58F0);
  v17 = v21;
  sub_96F58();
  (*(v22 + 8))(v12, v17);
  swift_getKeyPath();
  v25 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_presentationContext);
  sub_EA78(&qword_C5920, &qword_C58F8);

  v18 = v23;
  sub_97038();

  (*(v24 + 8))(v16, v18);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5720);
  sub_EA78(&qword_C7CB0, &qword_C5720);
  sub_96DC8();
  swift_endAccess();
}

uint64_t sub_2C268()
{
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_avObserver;
  sub_4BF8(v0 + OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_avObserver, v18, &qword_C56B8);
  if (*&v18[0])
  {
    v20[0] = v18[0];
    v20[1] = v18[1];
    v2 = *&v18[0];
    v21 = v19;
    sub_4BF8(v20, v18, &qword_C56E0);

    __swift_project_boxed_opaque_existential_1(v18 + 1, v19);
    v3 = sub_98828();
    __swift_destroy_boxed_opaque_existential_1(v18 + 8);
    [v2 removeTimeObserver:v3];
    swift_unknownObjectRelease();
    v4 = v20;
    v5 = &qword_C56E0;
  }

  else
  {
    v5 = &qword_C56B8;
    v4 = v18;
  }

  sub_4C60(v4, v5);
  v6 = OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_displayLink;
  v7 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_displayLink);
  if (v7)
  {
    [v7 invalidate];
    v8 = *(v0 + v6);
  }

  else
  {
    v8 = 0;
  }

  *(v0 + v6) = 0;

  v9 = OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver__elapsedTime;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C56C0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver__activeParagraph;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C56C8);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver__alignedViewModels;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C56D0);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver__rawViewModels;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C56D8);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);

  sub_4C60(v0 + v1, &qword_C56B8);

  return v0;
}

uint64_t sub_2C578()
{
  sub_2C268();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_2C5D0(__int128 *a1)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7DB0);
  v55 = *(v53 - 8);
  __chkstk_darwin(v53);
  v48 = v37 - v2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7E00);
  v52 = *(v50 - 8);
  __chkstk_darwin(v50);
  v46 = v37 - v3;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C56E8);
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v47 = v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C56F0);
  v6 = *(v5 - 8);
  v59 = v5;
  v60 = v6;
  __chkstk_darwin(v5);
  v49 = v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C56F8);
  v9 = *(v8 - 8);
  v61 = v8;
  v62 = v9;
  __chkstk_darwin(v8);
  v51 = v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48D8);
  __chkstk_darwin(v11 - 8);
  v13 = v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5700);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5708);
  v40 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = v37 - v19;
  v58 = *a1;
  v57 = *(a1 + 2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C56D8);
  sub_96E68();
  swift_endAccess();
  v39 = sub_E104(0, &qword_C4810);
  v21 = sub_982E8();
  *&v63 = v21;
  v44 = sub_982A8();
  v22 = *(v44 - 8);
  v43 = *(v22 + 56);
  v45 = v22 + 56;
  v38 = v13;
  v43(v13, 1, 1, v44);
  v37[1] = &protocol conformance descriptor for Published<A>.Publisher;
  sub_EA78(&qword_C5710, &qword_C5700);
  v41 = sub_37048(&qword_C4950, &qword_C4810);
  sub_96FE8();
  sub_4C60(v13, &qword_C48D8);

  (*(v15 + 8))(v17, v14);
  swift_allocObject();
  swift_weakInit();
  v42 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_EA78(&qword_C5718, &qword_C5708);
  sub_97028();

  (*(v40 + 8))(v20, v18);
  swift_beginAccess();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5720);
  sub_EA78(&qword_C7CB0, &qword_C5720);
  sub_96DC8();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C56D0);
  v23 = v46;
  sub_96E68();
  swift_endAccess();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C56C0);
  v24 = v48;
  sub_96E68();
  swift_endAccess();
  sub_EA78(&unk_C7E30, &qword_C7E00);
  sub_EA78(&qword_C7E80, &qword_C7DB0);
  v25 = v47;
  v26 = v50;
  v27 = v53;
  sub_96F28();
  (*(v55 + 8))(v24, v27);
  (*(v52 + 8))(v23, v26);
  v63 = 0u;
  v64 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5728);
  sub_EA78(&qword_C5730, &qword_C56E8);
  v28 = v49;
  v29 = v54;
  sub_96F68();
  (*(v56 + 8))(v25, v29);
  v30 = sub_982E8();
  *&v63 = v30;
  v31 = v38;
  v43(v38, 1, 1, v44);
  sub_EA78(&qword_C5738, &qword_C56F0);
  v32 = v51;
  v33 = v59;
  sub_96FE8();
  sub_4C60(v31, &qword_C48D8);

  (*(v60 + 8))(v28, v33);
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_370CC;
  *(v35 + 24) = v34;
  sub_EA78(&qword_C5740, &qword_C56F8);
  v36 = v61;
  sub_97028();

  (*(v62 + 8))(v32, v36);
  swift_beginAccess();
  sub_96DC8();
  swift_endAccess();

  v63 = v58;
  *&v64 = v57;
  sub_2E5BC(&v63);
  sub_2EA38();
}

uint64_t sub_2D0EC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2D14C(v1);
  }

  return result;
}

uint64_t sub_2D14C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48D8);
  __chkstk_darwin(v4 - 8);
  v79 = v53 - v5;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5780);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = v53 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5788);
  v60 = *(v62 - 1);
  __chkstk_darwin(v62);
  v59 = v53 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5790);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5798);
  v67 = *(v9 - 8);
  v68 = v9;
  __chkstk_darwin(v9);
  v65 = v53 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C57A0);
  __chkstk_darwin(v78);
  v77 = v53 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4DF8);
  v55 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v53 - v13;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C57A8);
  __chkstk_darwin(v73);
  v81 = v53 - v15;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E00);
  __chkstk_darwin(v70);
  v80 = v53 - v16;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5700);
  __chkstk_darwin(v66);
  v18 = v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C57B0);
  v71 = *(v19 - 8);
  v72 = v19;
  __chkstk_darwin(v19);
  v69 = v53 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C57B8);
  v75 = *(v21 - 8);
  v76 = v21;
  __chkstk_darwin(v21);
  v74 = v53 - v22;
  v23 = sub_978D8();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = (v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E104(0, &qword_C4810);
  *v26 = sub_982E8();
  (*(v24 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v23);
  v27 = sub_978F8();
  result = (*(v24 + 8))(v26, v23);
  if ((v27 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v29 = OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_dynamicAdObserver;
  result = *(v2 + OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_dynamicAdObserver);
  if (a1)
  {
    if (result)
    {
      return result;
    }

    v54 = OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_dynamicAdObserver;
    v82 = v2;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C56D8);
    v53[1] = v18;
    sub_96E68();
    swift_endAccess();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7E20);
    sub_96E68();
    swift_endAccess();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4870);
    sub_96E68();
    swift_endAccess();
    swift_getKeyPath();
    sub_EA78(&qword_C5758, &qword_C4DF8);
    sub_96F48();

    (*(v55 + 8))(v14, v12);
    v30 = sub_963D8();
    v31 = sub_2FE80(v30);

    v84 = v31;
    v32 = v56;
    sub_96458();
    sub_EA78(&qword_C57C0, &qword_C5780);
    sub_37428();
    v33 = v59;
    v34 = v58;
    sub_97018();
    (*(v57 + 8))(v32, v34);
    v35 = sub_982E8();
    v83 = v35;
    v36 = sub_982A8();
    v37 = *(v36 - 8);
    v57 = *(v37 + 56);
    v58 = v37 + 56;
    v38 = v79;
    (v57)(v79, 1, 1, v36);
    sub_EA78(&qword_C57E8, &qword_C5788);
    v56 = sub_37048(&qword_C4950, &qword_C4810);
    v39 = v61;
    v40 = v62;
    sub_96FE8();
    sub_4C60(v38, &qword_C48D8);

    (*(v60 + 8))(v33, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C57F0);
    v62 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
    sub_EA78(&qword_C57F8, &qword_C5790);
    v41 = v65;
    v42 = v64;
    sub_96F58();
    (*(v63 + 8))(v39, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5800);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_9AF50;
    *(v43 + 32) = &_swiftEmptyArrayStorage;
    sub_EA78(&qword_C5808, &qword_C5798);
    v44 = v68;
    sub_96FD8();

    (*(v67 + 8))(v41, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5810);
    sub_EA78(&qword_C5710, &qword_C5700);
    sub_EA78(&qword_C5818, &qword_C4E00);
    sub_EA78(&qword_C5820, &qword_C57A8);
    sub_EA78(&qword_C5828, &qword_C5810);
    sub_EA78(&qword_C5830, &qword_C57A0);
    v45 = v69;
    sub_96D98();
    v46 = sub_982E8();
    v84 = v46;
    (v57)(v38, 1, 1, v36);
    sub_EA78(&qword_C5838, &qword_C57B0);
    v47 = v74;
    v48 = v72;
    sub_96FE8();
    sub_4C60(v38, &qword_C48D8);

    (*(v71 + 8))(v45, v48);
    v49 = swift_allocObject();
    swift_weakInit();
    v50 = swift_allocObject();
    *(v50 + 16) = sub_374D8;
    *(v50 + 24) = v49;
    sub_EA78(&qword_C5840, &qword_C57B8);
    v51 = v76;
    v52 = sub_97028();

    (*(v75 + 8))(v47, v51);
    v29 = v54;
    v2 = v82;
  }

  else
  {
    v52 = 0;
  }

  *(v2 + v29) = v52;
}

uint64_t sub_2DFD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v3 = a2[1];
  *a3 = *(a1 + 16);
  *(a3 + 16) = v4;
  *(a3 + 24) = v3;
}

uint64_t sub_2E018(uint64_t result, uint64_t a2, void **a3, uint64_t a4)
{
  if (a3)
  {
    v6 = result;
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_2E09C(a3, v6, *&a4);
    }
  }

  return result;
}

uint64_t sub_2E09C(void **a1, uint64_t a2, double a3)
{
  v4 = v3;
  v31 = a2;
  v7 = sub_97888();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v33 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_978A8();
  v32 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_978D8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E104(0, &qword_C4810);
  *v16 = sub_982E8();
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v17 = sub_978F8();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    aBlock = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7EF0);
    sub_EA78(&qword_C5768, &unk_C7EF0);
    result = sub_98128();
    if (result)
    {
      v28 = v10;
      v29 = v8;
      v30 = v7;
      if (*(v4 + 16))
      {
        v20 = *(v4 + 24);
        v19 = *(v4 + 32);
        v21 = *(v4 + 16);
        v22 = *(v4 + 40);
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_96E98();

        v21 = aBlock;
        v20 = v36;
        v19 = v37;
        v22 = v38;
      }

      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 40) = 0;
      *(v4 + 32) = 0;

      v27 = *(v4 + OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_workQueue);
      v23 = swift_allocObject();
      *(v23 + 16) = v21;
      *(v23 + 24) = v20;
      *(v23 + 32) = v19;
      *(v23 + 40) = v22;
      *(v23 + 48) = v31;
      *(v23 + 56) = a1;
      *(v23 + 64) = a3;
      *(v23 + 72) = v4;
      v39 = sub_373AC;
      v40 = v23;
      aBlock = _NSConcreteStackBlock;
      v36 = 1107296256;
      v37 = sub_279B0;
      v38 = &block_descriptor_58;
      v24 = _Block_copy(&aBlock);

      sub_97898();
      v34 = &_swiftEmptyArrayStorage;
      sub_36590(&unk_C7910, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E18);
      sub_EA78(&qword_C7920, &qword_C4E18);
      v25 = v33;
      v26 = v30;
      sub_98618();
      sub_982F8();
      _Block_release(v24);

      (*(v29 + 8))(v25, v26);
      (*(v32 + 8))(v12, v28);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2E5BC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48D8);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4DF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5750);
  v10 = *(v9 - 8);
  v28 = v9;
  v29 = v10;
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  v13 = *a1;
  v26 = a1[1];
  v27 = v13;
  v25 = a1[2];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4870);
  sub_96E68();
  swift_endAccess();
  sub_E104(0, &qword_C4810);
  v14 = sub_982E8();
  v30 = v14;
  v15 = sub_982A8();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_EA78(&qword_C5758, &qword_C4DF8);
  sub_37048(&qword_C4950, &qword_C4810);
  sub_96FE8();
  sub_4C60(v4, &qword_C48D8);

  (*(v6 + 8))(v8, v5);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v18 = v26;
  v19 = v27;
  v17[2] = v16;
  v17[3] = v19;
  v20 = v25;
  v17[4] = v18;
  v17[5] = v20;
  sub_EA78(&qword_C5760, &qword_C5750);
  v21 = v20;
  v22 = v28;
  sub_97028();

  (*(v29 + 8))(v12, v22);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5720);
  sub_EA78(&qword_C7CB0, &qword_C5720);
  sub_96DC8();
  swift_endAccess();
}

void sub_2EA38()
{
  v1 = v0;
  sub_E104(0, &qword_C5748);
  swift_allocObject();
  swift_weakInit();
  v2 = sub_98178();
  *&v3 = sub_981E8(10.0, 60.0, 0x42700000);
  [v2 setPreferredFrameRateRange:v3];
  v4 = [objc_opt_self() currentRunLoop];
  [v2 addToRunLoop:v4 forMode:NSRunLoopCommonModes];

  v5 = *(v1 + OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_displayLink);
  *(v1 + OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_displayLink) = v2;
}

uint64_t sub_2EB5C(uint64_t a1, unint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v13 = *(a5 + 16);
  v14 = v13 >> 61;
  if ((v13 >> 61) <= 1)
  {
    if (!v14)
    {
      v17 = *(v13 + 16);
      v19 = *(v13 + 32);
      v18 = *(v13 + 40);

      goto LABEL_12;
    }

    v17 = *(&dword_10 + (v13 & 0x1FFFFFFFFFFFFFFFLL));
  }

  else
  {
    v16 = (v13 & 0x1FFFFFFFFFFFFFFFLL);
    if (v14 != 2)
    {
      if (v14 == 3)
      {
        v17 = v16[5];
        v19 = v16[7];
        v18 = v16[8];

        goto LABEL_12;
      }

      v17 = v16[14];
      v19 = v16[16];

      goto LABEL_11;
    }

    v17 = v16[2];

    v20 = 0;
  }

  v19 = 0;
LABEL_11:
  v18 = 0;
LABEL_12:
  v37 = v17;
  v38 = v20;
  v39 = v19;
  v40 = v18;
  v41 = v14;
  v21 = *(a1 + 16);
  v22 = v21 >> 61;
  if ((v21 >> 61) <= 1)
  {
    if (!v22)
    {
      v24 = *(v21 + 16);
      v26 = *(v21 + 32);
      v25 = *(v21 + 40);

      goto LABEL_23;
    }

    v24 = *(&dword_10 + (v21 & 0x1FFFFFFFFFFFFFFFLL));

    goto LABEL_21;
  }

  v23 = (v21 & 0x1FFFFFFFFFFFFFFFLL);
  if (v22 == 2)
  {
    v24 = v23[2];

    v27 = 0;
LABEL_21:
    v26 = 0;
    goto LABEL_22;
  }

  if (v22 != 3)
  {
    v24 = v23[14];
    v26 = v23[16];

LABEL_22:
    v25 = 0;
    goto LABEL_23;
  }

  v24 = v23[5];
  v26 = v23[7];
  v25 = v23[8];

LABEL_23:
  v32 = v24;
  v33 = v27;
  v34 = v26;
  v35 = v25;
  v36 = v22;
  v28 = _s19PodcastsTranscripts26TranscriptContentViewModelC2IDO2eeoiySbAE_AEtFZ_0(&v37, &v32);
  sub_20438(v32, v33, v34, v35, v36);
  sub_20438(v37, v38, v39, v40, v41);
  v29 = v28 & a4;
  if ((v28 & 1) != 0 && (a8 & 1) == 0)
  {
    v29 = 0;
    if ((a4 & 1) == 0 && !((a6 ^ a2) >> 14))
    {
      v29 = (a7 ^ a3) < 0x4000;
    }
  }

  return v29 & 1;
}

uint64_t sub_2ED38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 16);
  v7 = v6 >> 61;
  if ((v6 >> 61) <= 1)
  {
    if (!v7)
    {
      v9 = *(v6 + 16);
      v10 = *(v6 + 32);
      v11 = *(v6 + 40);

      goto LABEL_12;
    }

    v9 = *(&dword_10 + (v6 & 0x1FFFFFFFFFFFFFFFLL));
  }

  else
  {
    v8 = (v6 & 0x1FFFFFFFFFFFFFFFLL);
    if (v7 != 2)
    {
      if (v7 == 3)
      {
        v9 = v8[5];
        v10 = v8[7];
        v11 = v8[8];

        goto LABEL_12;
      }

      v9 = v8[14];
      v10 = v8[16];

      goto LABEL_11;
    }

    v9 = v8[2];

    v12 = 0;
  }

  v10 = 0;
LABEL_11:
  v11 = 0;
LABEL_12:
  v27 = v9;
  v28 = v12;
  v29 = v10;
  v30 = v11;
  v31 = v7;
  v13 = *(a1 + 16);
  v14 = v13 >> 61;
  if ((v13 >> 61) <= 1)
  {
    if (!v14)
    {
      v16 = *(v13 + 16);
      v17 = *(v13 + 32);
      v18 = *(v13 + 40);

      goto LABEL_23;
    }

    v16 = *(&dword_10 + (v13 & 0x1FFFFFFFFFFFFFFFLL));

    goto LABEL_21;
  }

  v15 = (v13 & 0x1FFFFFFFFFFFFFFFLL);
  if (v14 == 2)
  {
    v16 = v15[2];

    v19 = 0;
LABEL_21:
    v17 = 0;
    goto LABEL_22;
  }

  if (v14 != 3)
  {
    v16 = v15[14];
    v17 = v15[16];

LABEL_22:
    v18 = 0;
    goto LABEL_23;
  }

  v16 = v15[5];
  v17 = v15[7];
  v18 = v15[8];

LABEL_23:
  v22 = v16;
  v23 = v19;
  v24 = v17;
  v25 = v18;
  v26 = v14;
  v20 = _s19PodcastsTranscripts26TranscriptContentViewModelC2IDO2eeoiySbAE_AEtFZ_0(&v27, &v22);
  sub_20438(v22, v23, v24, v25, v26);
  sub_20438(v27, v28, v29, v30, v31);
  return v20 & 1;
}

uint64_t sub_2EEBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_986A8(43);
  v12._object = 0x80000000000A37C0;
  v12._countAndFlagsBits = 0xD00000000000001BLL;
  sub_97EE8(v12);
  if (a4)
  {
    v6 = 0xE300000000000000;
    v7._countAndFlagsBits = 7104878;
  }

  else
  {
    sub_98748();
    v13._countAndFlagsBits = 3943982;
    v13._object = 0xE300000000000000;
    sub_97EE8(v13);
    sub_98748();
    v7._countAndFlagsBits = 0;
    v6 = 0xE000000000000000;
  }

  v7._object = v6;
  sub_97EE8(v7);

  v14._countAndFlagsBits = 0x6E65746E6F63202CLL;
  v14._object = 0xEB00000000203A74;
  sub_97EE8(v14);
  v8 = *(a1 + 16) >> 61;
  if (v8 <= 1)
  {
    if (v8)
    {
      v9 = &qword_C52B0;
      v10 = type metadata accessor for LinkContent;
    }

    else
    {
      v9 = &unk_C77E0;
      v10 = type metadata accessor for TextContent;
    }
  }

  else if (v8 == 2)
  {
    v9 = &unk_C77D0;
    v10 = type metadata accessor for SilentContent;
  }

  else if (v8 == 3)
  {
    v9 = &unk_C52A8;
    v10 = type metadata accessor for SpeakerContent;
  }

  else
  {
    v9 = &qword_C77C0;
    v10 = type metadata accessor for ChapterTitleContent;
  }

  sub_36590(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C56B0);
  sub_98748();
  v15._countAndFlagsBits = 41;
  v15._object = 0xE100000000000000;
  sub_97EE8(v15);
  return 0;
}

BOOL sub_2F178(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    return !v2;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = *(*a1 + 16);
  v4 = v3 >> 61;
  if ((v3 >> 61) <= 1)
  {
    if (!v4)
    {
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
      v8 = *(v3 + 32);
      v9 = *(v3 + 40);
      goto LABEL_11;
    }

    v11 = v3 & 0x1FFFFFFFFFFFFFFFLL;
    v6 = *(v11 + 16);
    v7 = *(v11 + 24);

    goto LABEL_16;
  }

  v5 = (v3 & 0x1FFFFFFFFFFFFFFFLL);
  if (v4 == 2)
  {
    v6 = v5[2];

    v7 = 0;
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  if (v4 == 3)
  {
    v6 = v5[5];
    v7 = v5[6];
    v8 = v5[7];
    v9 = v5[8];
LABEL_11:

    goto LABEL_18;
  }

  v6 = v5[14];
  v7 = v5[15];
  v8 = v5[16];

LABEL_17:
  v9 = 0;
LABEL_18:
  v23 = v6;
  v24 = v7;
  v25 = v8;
  v26 = v9;
  v27 = v4;
  sub_988D8();

  TranscriptContentViewModel.ID.hash(into:)(v22);
  v12 = sub_98918();
  sub_20438(v6, v7, v8, v9, v4);
  v13 = *(v2 + 16);
  v14 = v13 >> 61;
  if ((v13 >> 61) <= 1)
  {
    if (!v14)
    {
      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
      v18 = *(v13 + 32);
      v19 = *(v13 + 40);
      goto LABEL_24;
    }

    v20 = v13 & 0x1FFFFFFFFFFFFFFFLL;
    v16 = *(v20 + 16);
    v17 = *(v20 + 24);

    goto LABEL_28;
  }

  v15 = (v13 & 0x1FFFFFFFFFFFFFFFLL);
  if (v14 == 2)
  {
    v16 = v15[2];

    v17 = 0;
LABEL_28:
    v18 = 0;
    goto LABEL_29;
  }

  if (v14 != 3)
  {
    v16 = v15[14];
    v17 = v15[15];
    v18 = v15[16];

LABEL_29:
    v19 = 0;
    goto LABEL_30;
  }

  v16 = v15[5];
  v17 = v15[6];
  v18 = v15[7];
  v19 = v15[8];
LABEL_24:

LABEL_30:
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = v14;
  sub_988D8();
  TranscriptContentViewModel.ID.hash(into:)(v22);
  v21 = sub_98918();
  sub_20438(v16, v17, v18, v19, v14);

  return v12 == v21;
}

uint64_t sub_2F3A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*result)
  {
    v2 = *(*result + 16);
    v3 = v2 >> 61;
    if ((v2 >> 61) <= 1)
    {
      if (v3)
      {
        v10 = v2 & 0x1FFFFFFFFFFFFFFFLL;
        v11 = *(v10 + 24);
        *a2 = *(v10 + 16);
        *(a2 + 8) = v11;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 1;
      }

      else
      {
        v6 = *(v2 + 24);
        *a2 = *(v2 + 16);
        *(a2 + 8) = v6;
        *(a2 + 16) = *(v2 + 32);
        *(a2 + 32) = 0;
      }
    }

    v4 = v2 & 0x1FFFFFFFFFFFFFFFLL;
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        v5 = *(v4 + 48);
        *a2 = *(v4 + 40);
        *(a2 + 8) = v5;
        *(a2 + 16) = *(v4 + 56);
        *(a2 + 32) = 3;
      }

      else
      {
        v8 = *(v4 + 112);
        v7 = *(v4 + 120);
        v9 = *(v4 + 128);
        *a2 = v8;
        *(a2 + 8) = v7;
        *(a2 + 16) = v9;
        *(a2 + 24) = 0;
        *(a2 + 32) = 4;
      }
    }

    *a2 = *(v4 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 2;
  }

  else
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = -1;
  }

  return result;
}

uint64_t sub_2F470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a4;
  v50 = a5;
  v48 = a3;
  v6 = sub_97888();
  v52 = *(v6 - 8);
  __chkstk_darwin(v6);
  v51 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_978A8();
  v54 = *(v8 - 8);
  __chkstk_darwin(v8);
  v53 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4830);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - v11;
  v13 = sub_96788();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v38 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    sub_4BF8(a1, v12, &qword_C4830);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_4C60(v12, &qword_C4830);
      swift_getKeyPath();
      swift_getKeyPath();
      aBlock = 0;

      sub_96EA8();
      swift_getKeyPath();
      swift_getKeyPath();
      aBlock = &_swiftEmptyArrayStorage;

      sub_96EA8();
      swift_getKeyPath();
      swift_getKeyPath();
      aBlock = 0;
      v57 = 0;
      LOBYTE(v59) = 0;
      v58 = 0;
      return sub_96EA8();
    }

    else
    {
      v47 = v6;
      v41 = *(v14 + 32);
      v45 = v19;
      v41(v19, v12, v13);
      v42 = *(v21 + OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_presentationContext);
      v46 = *(v21 + OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_workQueue);
      sub_E104(0, &qword_C4810);
      v40 = sub_982E8();
      v39 = swift_allocObject();
      swift_weakInit();
      v44 = v14;
      (*(v14 + 16))(v16, v19, v13);
      v22 = (*(v14 + 80) + 16) & ~*(v14 + 80);
      v23 = (v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
      v24 = (v23 + 31) & 0xFFFFFFFFFFFFFFF8;
      v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
      v43 = v8;
      v26 = swift_allocObject();
      v41((v26 + v22), v16, v13);
      v27 = (v26 + v23);
      v28 = v49;
      *v27 = v48;
      v27[1] = v28;
      v29 = v50;
      v27[2] = v50;
      *(v26 + v24) = v42;
      v30 = v40;
      *(v26 + v25) = v40;
      v31 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
      v32 = v39;
      *v31 = sub_371A4;
      v31[1] = v32;
      v60 = sub_37288;
      v61 = v26;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_279B0;
      v59 = &block_descriptor_5;
      v33 = _Block_copy(&aBlock);
      v34 = v29;

      v50 = v30;
      swift_retain_n();
      v35 = v53;
      sub_97898();
      v55 = &_swiftEmptyArrayStorage;
      sub_36590(&unk_C7910, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E18);
      sub_EA78(&qword_C7920, &qword_C4E18);
      v36 = v51;
      v37 = v47;
      sub_98618();
      sub_982F8();
      _Block_release(v33);

      (*(v52 + 8))(v36, v37);
      (*(v54 + 8))(v35, v43);
      (*(v44 + 8))(v45, v13);
    }
  }

  return result;
}

uint64_t sub_2FB54(unint64_t a1)
{
  v2 = sub_96AB8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_96A78();

    v7 = sub_96AA8();
    v8 = sub_981A8();

    if (os_log_type_enabled(v7, v8))
    {
      v17 = v2;
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136315138;
      if (a1 >> 62)
      {
        v11 = sub_98778();
      }

      else
      {
        v11 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
      }

      v12 = v11 == 0;
      if (v11)
      {
        v13 = 0x64656E69666544;
      }

      else
      {
        v13 = 0x7974706D45;
      }

      if (v12)
      {
        v14 = 0xE500000000000000;
      }

      else
      {
        v14 = 0xE700000000000000;
      }

      v15 = sub_11FC8(v13, v14, &v18);

      *(v9 + 4) = v15;
      _os_log_impl(&dword_0, v7, v8, "Received updated transcript models: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);

      (*(v3 + 8))(v5, v17);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v18 = a1;

    return sub_96EA8();
  }

  return result;
}

uint64_t sub_2FDD4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_963C8();
    if (v1)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      return sub_96EA8();
    }
  }

  return result;
}

uint64_t sub_2FE80(void *a1)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5870);
  v2 = *(v57 - 8);
  __chkstk_darwin(v57);
  v4 = &v44 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48D8);
  __chkstk_darwin(v5 - 8);
  v47 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7BD0);
  __chkstk_darwin(v7 - 8);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5878);
  v49 = *(v10 - 8);
  v50 = v10;
  __chkstk_darwin(v10);
  v48 = &v44 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5880);
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v51 = &v44 - v12;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5888);
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v52 = &v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5890);
  __chkstk_darwin(v14 - 8);
  v16 = &v44 - v15;
  v17 = sub_97B48();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v24 = &v44 - v23;
  if (!a1)
  {
    (*(v18 + 56))(v16, 1, 1, v17, v22);
    goto LABEL_5;
  }

  v25 = a1;
  sub_97B38();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
LABEL_5:
    sub_4C60(v16, &qword_C5890);
    v59 = &_swiftEmptyArrayStorage;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5898);
    sub_96E28();
    sub_EA78(&qword_C58A0, &qword_C5870);
    v42 = v57;
    v41 = sub_96EE8();
    (*(v2 + 8))(v4, v42);
    return v41;
  }

  v26 = *(v18 + 32);
  v26(v24, v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C58A8);
  v45 = v24;
  v27 = sub_98098();
  (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
  v28 = *(v46 + OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_objectGraph);
  (*(v18 + 16))(v20, v24, v17);
  v29 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  v26((v30 + v29), v20, v17);

  v59 = sub_96E38();
  sub_E104(0, &qword_C4810);
  v31 = sub_982E8();
  v58 = v31;
  v32 = sub_982A8();
  v33 = v47;
  (*(*(v32 - 8) + 56))(v47, 1, 1, v32);
  sub_EA78(&qword_C58B0, &qword_C58A8);
  sub_37048(&qword_C4950, &qword_C4810);
  v34 = v48;
  sub_96FE8();
  sub_4C60(v33, &qword_C48D8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C58B8);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_9AF50;
  *(v35 + 32) = &_swiftEmptyArrayStorage;
  sub_EA78(&qword_C58C0, &qword_C5878);
  v36 = v50;
  v37 = v51;
  sub_96FD8();

  (*(v49 + 8))(v34, v36);
  sub_EA78(&qword_C58C8, &qword_C5880);
  sub_EA78(&qword_C58A0, &qword_C5870);
  v38 = v52;
  v39 = v55;
  sub_96F78();
  (*(v53 + 8))(v37, v39);
  sub_EA78(&qword_C58D0, &qword_C5888);
  v40 = v56;
  v41 = sub_96EE8();
  (*(v54 + 8))(v38, v40);
  (*(v18 + 8))(v45, v17);
  return v41;
}

uint64_t sub_30780@<X0>(unint64_t *a1@<X0>, char **a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5868);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_97948();
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin(v6);
  v38 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v35 = &v32 - v9;
  v10 = *a1;
  v39 = &_swiftEmptyArrayStorage;
  if (v10 >> 62)
  {
LABEL_17:
    v11 = sub_98778();
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
LABEL_3:
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = sub_986C8();
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (v12 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_17;
          }

          v13 = *(v10 + 8 * v12 + 32);
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v17 = v39;
            v18 = v37;
            if ((v39 & 0x8000000000000000) == 0)
            {
              goto LABEL_19;
            }

LABEL_37:
            while (1)
            {
              v19 = sub_98778();
              if (!v19)
              {
                goto LABEL_38;
              }

LABEL_21:
              v20 = 0;
              v21 = v17 & 0xC000000000000001;
              v22 = (v36 + 48);
              v23 = (v36 + 32);
              v24 = &_swiftEmptyArrayStorage;
              v33 = v17 & 0xC000000000000001;
              v34 = v19;
              while (1)
              {
                if (v21)
                {
                  sub_986C8();
                }

                else
                {
                  if (v20 >= *(v17 + 16))
                  {
                    goto LABEL_36;
                  }

                  v25 = *(v17 + 8 * v20 + 32);
                }

                v26 = v20 + 1;
                if (__OFADD__(v20, 1))
                {
                  break;
                }

                sub_97908();
                if ((*v22)(v5, 1, v18) == 1)
                {
                  sub_4C60(v5, &qword_C5868);
                }

                else
                {
                  v27 = *v23;
                  v28 = v35;
                  (*v23)(v35, v5, v18);
                  v27(v38, v28, v18);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v24 = sub_1541C(0, *(v24 + 2) + 1, 1, v24);
                  }

                  v30 = *(v24 + 2);
                  v29 = *(v24 + 3);
                  if (v30 >= v29 >> 1)
                  {
                    v24 = sub_1541C(v29 > 1, v30 + 1, 1, v24);
                  }

                  *(v24 + 2) = v30 + 1;
                  v18 = v37;
                  v27(&v24[((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v30], v38, v37);
                  v21 = v33;
                  v19 = v34;
                }

                ++v20;
                if (v26 == v19)
                {
                  goto LABEL_39;
                }
              }

              __break(1u);
LABEL_36:
              __break(1u);
            }
          }
        }

        v15 = v13;
        v16 = sub_98358();

        if (v16)
        {
          sub_986F8();
          sub_98728();
          sub_98738();
          sub_98708();
        }

        else
        {
        }

        ++v12;
        if (v14 == v11)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v17 = &_swiftEmptyArrayStorage;
  v18 = v37;
  if ((&_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

LABEL_19:
  if ((v17 & 0x4000000000000000) != 0)
  {
    goto LABEL_37;
  }

  v19 = *(v17 + 16);
  if (v19)
  {
    goto LABEL_21;
  }

LABEL_38:
  v24 = &_swiftEmptyArrayStorage;
LABEL_39:

  *v32 = v24;
  return result;
}

void sub_30B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v41 = a7;
  v42 = a6;
  LODWORD(v47) = a5;
  v46 = a4;
  v45 = a3;
  v9 = sub_97888();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_978A8();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_978D8();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    sub_4BF8(a2, &aBlock, &qword_C4850);
    if (!v51)
    {
      sub_4C60(&aBlock, &qword_C4850);
      return;
    }

    sub_4CC0(&aBlock, v55);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      __swift_destroy_boxed_opaque_existential_1(v55);
      return;
    }

    v20 = Strong;
    sub_E104(0, &qword_C4810);
    *v18 = sub_982E8();
    (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
    v21 = sub_978F8();
    (*(v16 + 8))(v18, v15);
    if ((v21 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v37 = v9;
    v40 = v10;
    v22 = sub_963D8();
    v39 = v22;
    v36 = v12;
    if (v22)
    {
      [v22 duration];
      v23 = sub_989B8();
    }

    else
    {
      v25 = v45;
      v26 = v46;
      if ((v47 & 1) == 0)
      {
LABEL_12:
        v38 = *(v20 + OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_workQueue);
        v27 = *(v20 + OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_presentationContext);
        v28 = *(v20 + OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_alignmentCoordinator);
        sub_E304(v55, v54);
        v29 = swift_allocObject();
        v30 = v42;
        *(v29 + 16) = v41;
        *(v29 + 24) = v30;
        sub_4CC0(v54, v29 + 32);
        *(v29 + 72) = v25;
        *(v29 + 80) = v26;
        v31 = v45;
        *(v29 + 88) = a1;
        *(v29 + 96) = v31;
        *(v29 + 104) = v46;
        *(v29 + 112) = v47 & 1;
        *(v29 + 120) = v28;
        *(v29 + 128) = v27;
        *(v29 + 136) = v20;
        v52 = sub_3758C;
        v53 = v29;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v50 = sub_279B0;
        v51 = &block_descriptor_77;
        v47 = _Block_copy(&aBlock);

        sub_97898();
        v48 = &_swiftEmptyArrayStorage;
        sub_36590(&unk_C7910, &type metadata accessor for DispatchWorkItemFlags);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E18);
        sub_EA78(&qword_C7920, &qword_C4E18);
        v32 = v36;
        v33 = v37;
        sub_98618();
        v34 = v47;
        sub_982F8();
        _Block_release(v34);

        (*(v40 + 8))(v32, v33);
        (*(v43 + 8))(v14, v44);
        __swift_destroy_boxed_opaque_existential_1(v55);

        return;
      }

      v23 = sub_989A8();
    }

    v25 = v23;
    v26 = v24;
    goto LABEL_12;
  }
}

uint64_t sub_31144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C53D8);
  v5 = swift_task_alloc();
  v3[10] = v5;
  *v5 = v3;
  v5[1] = sub_31208;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, v4, v4);
}

uint64_t sub_31208()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_315A4;
  }

  else
  {
    v2 = sub_3131C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_3131C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = sub_97B48();
  v5 = sub_36590(&qword_C58D8, &type metadata accessor for EpisodeTimedReferenceLinksIntent);
  *v3 = v0;
  v3[1] = sub_3142C;
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[7];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v8, v6, v7, v4, v5, v1, v2);
}

uint64_t sub_3142C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_315BC;
  }

  else
  {
    v2 = sub_31540;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_31540()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_315BC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_31620()
{
  v0 = sub_96AB8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_96A88();
  swift_errorRetain();
  v4 = sub_96AA8();
  v5 = sub_981B8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_0, v4, v5, "Failed to fetch timed reference links: %@", v6, 0xCu);
    sub_4C60(v7, &qword_C50C8);
  }

  (*(v1 + 8))(v3, v0);
  v10[1] = &_swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5898);
  return sub_96E28();
}

uint64_t sub_3180C(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v118 = a8;
  v117 = a7;
  v119 = a6;
  v130 = a5;
  v129 = a4;
  v128 = a3;
  v126 = sub_97888();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v123 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_978A8();
  v122 = *(v124 - 8);
  __chkstk_darwin(v124);
  v121 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5848);
  __chkstk_darwin(v16 - 8);
  v116 = &v115 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4830);
  __chkstk_darwin(v18 - 8);
  v120 = &v115 - v19;
  v20 = sub_979D8();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v144 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v136 = &v115 - v24;
  v143 = sub_97AB8();
  v137 = *(v143 - 8);
  __chkstk_darwin(v143);
  v142 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v141 = &v115 - v27;
  v28 = sub_97948();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v115 - v33;
  v35 = *(a1 + 16);
  v36 = &_swiftEmptyArrayStorage;
  v131 = v20;
  if (v35)
  {
    v135 = v21;
    v138 = a2;
    *&aBlock = &_swiftEmptyArrayStorage;
    sub_98718();
    v37 = v29 + 16;
    v38 = *(v29 + 16);
    v39 = a1 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v140 = *(v37 + 56);
    v145 = v37;
    v40 = (v37 - 8);
    v139 = xmmword_9B250;
    do
    {
      v38(v34, v39, v28);
      v38(v31, v34, v28);
      v41 = sub_97918();
      v43 = v42;
      sub_97938();
      v45 = v44;
      sub_97928();
      v47 = v46;
      v48 = *v40;
      (*v40)(v31, v28);
      v48(v34, v28);
      type metadata accessor for ChapterTitleContent();
      v49 = swift_allocObject();
      *(v49 + 24) = v43;
      *(v49 + 32) = 0;
      *(v49 + 40) = 1;
      *(v49 + 48) = 0;
      *(v49 + 56) = 1;
      *(v49 + 96) = v139;
      *(v49 + 16) = v41;
      *(v49 + 64) = v45;
      *(v49 + 72) = 0;
      *(v49 + 80) = v47;
      *(v49 + 88) = 0;
      *(v49 + 112) = v41;
      *(v49 + 120) = v43;
      v50 = v49 | 0x8000000000000000;
      *(v49 + 128) = v45;
      type metadata accessor for TranscriptContentViewModel();
      *(swift_allocObject() + 16) = v50;

      sub_986F8();
      sub_98728();
      sub_98738();
      sub_98708();
      v39 += v140;
      --v35;
    }

    while (v35);
    v36 = aBlock;
    v20 = v131;
    a2 = v138;
    v21 = v135;
  }

  v127 = v36;
  v51 = *(a2 + 2);
  if (v51)
  {
    v52 = v20;
    v151[0] = &_swiftEmptyArrayStorage;
    sub_98718();
    v145 = 0;
    v135 = *(v137 + 16);
    v53 = &a2[(*(v137 + 80) + 32) & ~*(v137 + 80)];
    v134 = *(v137 + 72);
    v140 = v21 + 8;
    v133 = (v21 + 16);
    v137 += 16;
    v132 = (v137 - 8);
    v139 = xmmword_9B250;
    while (1)
    {
      v56 = v141;
      v57 = v143;
      v58 = v135;
      (v135)(v141, v53, v143);
      (v58)(v142, v56, v57);
      v59 = v136;
      sub_97A68();
      sub_979C8();
      __swift_project_boxed_opaque_existential_1(&aBlock, v148);
      v60 = sub_97A58();
      v62 = v61;
      v138 = *v140;
      (v138)(v59, v52);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v63 = v144;
      sub_97A68();
      sub_97A98();
      v65 = v64;
      v66 = v52;
      v67 = COERCE_DOUBLE(sub_97A78());
      v69 = v68;
      type metadata accessor for LinkContent();
      v70 = swift_allocObject();
      *(v70 + 48) = 0;
      *(v70 + 56) = 1;
      *(v70 + 64) = 0;
      *(v70 + 72) = 1;
      *(v70 + 80) = 0;
      *(v70 + 88) = 1;
      *(v70 + 96) = v139;
      sub_962D8();
      *(v70 + 16) = v60;
      *(v70 + 24) = v62;
      (*v133)(v70 + OBJC_IVAR____TtC19PodcastsTranscripts11LinkContent_viewModel, v63, v52);
      sub_375D8(*(v70 + 96));
      *(v70 + 96) = v139;
      *(v70 + 32) = v65;
      *(v70 + 40) = 0;
      if (*(v70 + 56))
      {
        v71 = v145;
        if (v69)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v71 = v145;
        if ((v69 & 1) == 0 && *(v70 + 48) == v67)
        {
LABEL_14:
          *(v70 + 48) = v67;
          *(v70 + 56) = v69 & 1;
          goto LABEL_16;
        }
      }

      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v115 - 4) = v70;
      *(&v115 - 3) = v67;
      *(&v115 - 16) = v69 & 1;
      *&aBlock = v70;
      sub_36590(&qword_C5850, type metadata accessor for LinkContent);
      sub_96298();

      v66 = v131;
LABEL_16:
      if (*(v70 + 72) == 1)
      {
        *(v70 + 64) = 0;
        *(v70 + 72) = 1;
        if ((*(v70 + 88) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v73 = swift_getKeyPath();
        __chkstk_darwin(v73);
        *(&v115 - 4) = v70;
        *(&v115 - 3) = 0;
        *(&v115 - 16) = 1;
        *&aBlock = v70;
        sub_36590(&qword_C5850, type metadata accessor for LinkContent);
        sub_96298();

        if ((*(v70 + 88) & 1) == 0)
        {
LABEL_20:
          v74 = swift_getKeyPath();
          __chkstk_darwin(v74);
          *(&v115 - 4) = v70;
          *(&v115 - 3) = 0;
          *(&v115 - 16) = 1;
          *&aBlock = v70;
          sub_36590(&qword_C5850, type metadata accessor for LinkContent);
          sub_96298();
          v145 = v71;

          v52 = v66;
          (v138)(v144, v66);
          v75 = *v132;
          v76 = v143;
          (*v132)(v142, v143);
          v75(v141, v76);
          goto LABEL_8;
        }
      }

      v145 = v71;
      v52 = v66;
      (v138)(v144, v66);
      v54 = *v132;
      v55 = v143;
      (*v132)(v142, v143);
      v54(v141, v55);
      *(v70 + 80) = 0;
      *(v70 + 88) = 1;
LABEL_8:
      type metadata accessor for TranscriptContentViewModel();
      *(swift_allocObject() + 16) = v70 | 0x2000000000000000;
      sub_986F8();
      sub_98728();
      sub_98738();
      sub_98708();
      v53 += v134;
      if (!--v51)
      {
        v77 = v151[0];
        goto LABEL_23;
      }
    }
  }

  v77 = &_swiftEmptyArrayStorage;
LABEL_23:
  v78 = sub_5224C(v128, v77);

  v79 = v127;
  *&aBlock = v127;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7EF0);
  sub_EA78(&qword_C5768, &unk_C7EF0);
  v80 = sub_98128();
  v81 = sub_4C200(v129, v130, v80 & 1, v78);

  v82 = sub_77BAC(v81);

  v83 = sub_77BAC(v79);
  *&aBlock = v82;
  sub_367EC(v83);
  v84 = aBlock;
  v85 = sub_98978();
  v86 = Array<A>.normalized(episodeDuration:)(COERCE__INT64(v85), 0, v84);

  v152 = &_swiftEmptyArrayStorage;
  v87 = v86[2];
  if (v87)
  {
    v88 = (v86 + 4);
    v89 = &_swiftEmptyArrayStorage;
    do
    {
      sub_E304(v88, &aBlock);
      sub_4CC0(&aBlock, v151);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5148);
      type metadata accessor for TranscriptContentViewModel();
      if ((swift_dynamicCast() & 1) != 0 && v151[5])
      {
        sub_97FA8();
        if (*(&dword_10 + (v152 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v152 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_97FD8();
        }

        sub_98008();
        v89 = v152;
      }

      v88 += 40;
      --v87;
    }

    while (v87);
  }

  else
  {

    v89 = &_swiftEmptyArrayStorage;
  }

  *&aBlock = &_swiftEmptyArrayStorage;
  if (v89 >> 62)
  {
LABEL_48:
    v90 = sub_98778();
    if (v90)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v90 = *(&dword_10 + (v89 & 0xFFFFFFFFFFFFFF8));
    if (v90)
    {
LABEL_35:
      v91 = 0;
      while ((v89 & 0xC000000000000001) == 0)
      {
        if ((v91 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        if (v91 >= *(&dword_10 + (v89 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_47;
        }

        v92 = *(v89 + 32 + 8 * v91++);
        if (*(v92 + 16) >> 61 == 1)
        {

LABEL_36:
          sub_986F8();
          sub_98728();
          sub_98738();
          sub_98708();
        }

LABEL_37:
        if (v91 == v90)
        {
          goto LABEL_49;
        }
      }

      result = sub_986C8();
      if (__OFADD__(v91++, 1))
      {
        __break(1u);
        return result;
      }

      if (*(result + 16) >> 61 != 1)
      {
        swift_unknownObjectRelease();
        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

LABEL_49:

  v95 = aBlock;
  if (a9)
  {
    v96 = v129;
  }

  else
  {
    v96 = v117;
  }

  if (a9)
  {
    v97 = v130;
  }

  else
  {
    v97 = v118;
  }

  v98 = sub_4C5C0(v128, v96, v97, v129, v130, v119);
  v99 = sub_4D064(v95, v98);

  v100 = sub_4D064(v127, v99);

  swift_getKeyPath();
  swift_getKeyPath();
  v101 = v120;
  sub_96E98();

  v102 = sub_96788();
  v103 = *(v102 - 8);
  if ((*(v103 + 48))(v101, 1, v102) == 1)
  {
    sub_4C60(v101, &qword_C4830);
    v104 = v126;
    v105 = v125;
  }

  else
  {
    v106 = sub_96708();
    (*(v103 + 8))(v101, v102);
    *&aBlock = v106;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5858);
    sub_EA78(&qword_C5860, &qword_C5858);
    v107 = sub_98128();

    v105 = v125;
    if (v107)
    {
      *&aBlock = &_swiftEmptyArrayStorage;
      v108 = sub_96668();
      v109 = v116;
      (*(*(v108 - 8) + 56))(v116, 1, 1, v108);

      sub_37610(v100, v109, a11, &aBlock);

      v100 = aBlock;
      sub_4C60(v109, &qword_C5848);
    }

    v104 = v126;
  }

  sub_E104(0, &qword_C4810);
  v110 = sub_982E8();
  v111 = swift_allocObject();
  *(v111 + 16) = a12;
  *(v111 + 24) = v100;
  v149 = sub_37C10;
  v150 = v111;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v147 = sub_279B0;
  v148 = &block_descriptor_93;
  v112 = _Block_copy(&aBlock);

  v113 = v121;
  sub_97898();
  *&aBlock = &_swiftEmptyArrayStorage;
  sub_36590(&unk_C7910, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E18);
  sub_EA78(&qword_C7920, &qword_C4E18);
  v114 = v123;
  sub_98618();
  sub_982F8();
  _Block_release(v112);

  (*(v105 + 8))(v114, v104);
  return (*(v122 + 8))(v113, v124);
}

uint64_t sub_32BAC(uint64_t a1, unint64_t a2)
{
  v5 = &_swiftEmptyDictionarySingleton;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  sub_2B8C4(v4, &v5);

  sub_2B61C(a2, &v5);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_96EA8();
}

uint64_t sub_32CAC(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8)
{
  v125 = a8;
  v131 = sub_97888();
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v128 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_978A8();
  v127 = *(v129 - 8);
  __chkstk_darwin(v129);
  v126 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5378);
  __chkstk_darwin(v14 - 8);
  v124 = &v124 - v15;
  v141 = sub_96638();
  v135 = *(v141 - 8);
  __chkstk_darwin(v141);
  v134 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v133 = &v124 - v18;
  __chkstk_darwin(v19);
  v140 = &v124 - v20;
  if (a1 && a6)
  {

    if (sub_33F00(a7, a6))
    {

      v22 = sub_34278(v21, a2);

      if (v22)
      {
        v23 = a1;
LABEL_73:

        v69 = *(a1 + 16);
        if (v69 >> 61)
        {

          swift_retain_n();
          v92 = 0;
          v24 = 0;
          v93 = 1;
          v94 = v23;
          goto LABEL_113;
        }

        v132 = v23;
        v70 = *(v69 + 64);
        v71 = *(v70 + 16);
        v136 = v69;

        v72 = &_swiftEmptyArrayStorage;
        v142 = v71;
        if (!v71)
        {
LABEL_98:

          v95 = v72[2];
          if (v95)
          {
            v142 = a1;
            aBlock = &_swiftEmptyArrayStorage;
            sub_8C3D4(0, v95, 0);
            v96 = aBlock;
            v97 = *(v135 + 16);
            v98 = *(v135 + 80);
            v138 = v72;
            v99 = v72 + ((v98 + 32) & ~v98);
            v139 = *(v135 + 72);
            v140 = v97;
            v100 = (v135 + 8);
            do
            {
              v101 = v134;
              v102 = v141;
              (v140)(v134, v99, v141);
              v103 = sub_965F8();
              v105 = v104;
              (*v100)(v101, v102);
              aBlock = v96;
              v107 = v96[2];
              v106 = v96[3];
              if (v107 >= v106 >> 1)
              {
                sub_8C3D4((v106 > 1), v107 + 1, 1);
                v96 = aBlock;
              }

              v96[2] = (v107 + 1);
              v108 = &v96[2 * v107];
              v108[4] = v103;
              v108[5] = v105;
              v99 += v139;
              --v95;
            }

            while (v95);

            a1 = v142;
          }

          else
          {

            v96 = &_swiftEmptyArrayStorage;
          }

          aBlock = v96;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5770);
          sub_EA78(&qword_C5778, &qword_C5770);
          v109 = sub_97D78();
          v111 = v110;

          v112 = *(v136 + 56);
          aBlock = *(v136 + 48);
          v146 = v112;
          v143 = v109;
          v144 = v111;
          v113 = sub_95FD8();
          v114 = v124;
          (*(*(v113 - 8) + 56))(v124, 1, 1, v113);
          sub_26788();

          v92 = sub_985E8();
          v24 = v115;
          LOBYTE(v109) = v116;

          sub_4C60(v114, &qword_C5378);

          v93 = v109 & 1;

          v94 = a1;
          goto LABEL_113;
        }

        v73 = 0;
        v137 = (v135 + 8);
        v138 = v135 + 16;
        v139 = v135 + 32;
        while (1)
        {
          if (v73 >= *(v70 + 16))
          {
LABEL_110:
            __break(1u);
LABEL_111:
            v24 = sub_98778();
            if (!v24)
            {
              goto LABEL_112;
            }

            goto LABEL_9;
          }

          v74 = (*(v135 + 80) + 32) & ~*(v135 + 80);
          v75 = *(v135 + 72);
          (*(v135 + 16))(v140, v70 + v74 + v75 * v73, v141);
          sub_96628();
          v77 = v76;
          v78 = *(a1 + 16);
          v79 = v78 >> 61;
          v80 = v72;
          if ((v78 >> 61) > 1)
          {
            break;
          }

          if (v79)
          {
            a7 = v78 & 0x1FFFFFFFFFFFFFFFLL;
            v81 = type metadata accessor for LinkContent;
            v82 = &qword_C52B0;
LABEL_88:
            v83 = sub_36590(v82, v81);
            goto LABEL_89;
          }

          v83 = sub_36590(&qword_C77E0, type metadata accessor for TextContent);
          a7 = v78 & 0x1FFFFFFFFFFFFFFFLL;
LABEL_89:
          ObjectType = swift_getObjectType();

          v85 = COERCE_DOUBLE(sub_4B2EC(ObjectType, v83));
          v87 = v86;

          v88 = v77 - v85;
          if (v87)
          {
            v88 = v77;
          }

          if (v88 >= a2)
          {
            (*v137)(v140, v141);
            v72 = v80;
          }

          else
          {
            a7 = *v139;
            (*v139)(v133, v140, v141);
            v72 = v80;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock = v80;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_8C370(0, v80[2] + 1, 1);
              v72 = aBlock;
            }

            v91 = v72[2];
            v90 = v72[3];
            if (v91 >= v90 >> 1)
            {
              sub_8C370(v90 > 1, v91 + 1, 1);
              v72 = aBlock;
            }

            v72[2] = (v91 + 1);
            (a7)(v72 + v74 + v91 * v75, v133, v141);
          }

          if (v142 == ++v73)
          {
            goto LABEL_98;
          }
        }

        a7 = v78 & 0x1FFFFFFFFFFFFFFFLL;
        if (v79 == 2)
        {
          v81 = type metadata accessor for SilentContent;
          v82 = &unk_C77D0;
        }

        else if (v79 == 3)
        {
          v81 = type metadata accessor for SpeakerContent;
          v82 = &qword_C52A8;
        }

        else
        {
          v81 = type metadata accessor for ChapterTitleContent;
          v82 = &qword_C77C0;
        }

        goto LABEL_88;
      }
    }
  }

  if (a7 >> 62)
  {
    goto LABEL_111;
  }

  v24 = *(&dword_10 + (a7 & 0xFFFFFFFFFFFFFF8));
  if (!v24)
  {
LABEL_112:
    v94 = 0;
    v92 = 0;
    v93 = 0;
    goto LABEL_113;
  }

LABEL_9:
  v25 = 0;
  v132 = 0;
  v26 = a7 & 0xC000000000000001;
  v138 = a7;
  v139 = a7 & 0xFFFFFFFFFFFFFF8;
  v27 = INFINITY;
  v136 = a7 & 0xC000000000000001;
  v137 = v24;
  do
  {
    if (v26)
    {
      v28 = sub_986C8();
      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_108;
      }
    }

    else
    {
      if (v25 >= *(v139 + 16))
      {
        goto LABEL_109;
      }

      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }
    }

    v30 = *(v28 + 16) >> 61;
    if ((v30 & 0xFFFFFFFD) != 0)
    {
LABEL_10:

      goto LABEL_11;
    }

    v142 = v28;
    if (v30 <= 1)
    {
      if (!v30)
      {
        v33 = sub_36590(&qword_C77E0, type metadata accessor for TextContent);
        goto LABEL_29;
      }

      v31 = type metadata accessor for LinkContent;
      v32 = &qword_C52B0;
    }

    else if (v30 == 2)
    {
      v31 = type metadata accessor for SilentContent;
      v32 = &unk_C77D0;
    }

    else if (v30 == 3)
    {
      v31 = type metadata accessor for SpeakerContent;
      v32 = &qword_C52A8;
    }

    else
    {
      v31 = type metadata accessor for ChapterTitleContent;
      v32 = &qword_C77C0;
    }

    v33 = sub_36590(v32, v31);
LABEL_29:
    v34 = swift_getObjectType();
    v35 = *(v33 + 32);

    a7 = v35(v34, v33);
    v37 = v36;

    if (v37)
    {
      goto LABEL_43;
    }

    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v38 = type metadata accessor for SilentContent;
        v39 = &unk_C77D0;
      }

      else if (v30 == 3)
      {
        v38 = type metadata accessor for SpeakerContent;
        v39 = &qword_C52A8;
      }

      else
      {
        v38 = type metadata accessor for ChapterTitleContent;
        v39 = &qword_C77C0;
      }

      goto LABEL_39;
    }

    if (v30)
    {
      v38 = type metadata accessor for LinkContent;
      v39 = &qword_C52B0;
LABEL_39:
      v40 = sub_36590(v39, v38);
      goto LABEL_40;
    }

    v40 = sub_36590(&qword_C77E0, type metadata accessor for TextContent);
LABEL_40:
    v41 = swift_getObjectType();
    v42 = *(v40 + 56);

    v42(v41, v40);
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      sub_980D8();
      if (v45 <= a2)
      {
        sub_980D8();
        if (v46 > a2)
        {

          a1 = v142;
          v23 = v142;
          goto LABEL_73;
        }
      }
    }

LABEL_43:
    v47 = *(v142 + 16) >> 61;
    if (v47 <= 1)
    {
      if (!v47)
      {
        v50 = sub_36590(&qword_C77E0, type metadata accessor for TextContent);
        goto LABEL_53;
      }

      v48 = type metadata accessor for LinkContent;
      v49 = &qword_C52B0;
    }

    else if (v47 == 2)
    {
      v48 = type metadata accessor for SilentContent;
      v49 = &unk_C77D0;
    }

    else if (v47 == 3)
    {
      v48 = type metadata accessor for SpeakerContent;
      v49 = &qword_C52A8;
    }

    else
    {
      v48 = type metadata accessor for ChapterTitleContent;
      v49 = &qword_C77C0;
    }

    v50 = sub_36590(v49, v48);
LABEL_53:
    v51 = swift_getObjectType();
    v52 = *(v50 + 32);

    v53 = COERCE_DOUBLE(v52(v51, v50));
    v55 = v54;

    if (v55)
    {
      goto LABEL_65;
    }

    v56 = *(v142 + 16) >> 61;
    if (v56 <= 1)
    {
      if (!v56)
      {
        v59 = sub_36590(&qword_C77E0, type metadata accessor for TextContent);
        goto LABEL_64;
      }

      v57 = type metadata accessor for LinkContent;
      v58 = &qword_C52B0;
    }

    else if (v56 == 2)
    {
      v57 = type metadata accessor for SilentContent;
      v58 = &unk_C77D0;
    }

    else if (v56 == 3)
    {
      v57 = type metadata accessor for SpeakerContent;
      v58 = &qword_C52A8;
    }

    else
    {
      v57 = type metadata accessor for ChapterTitleContent;
      v58 = &qword_C77C0;
    }

    v59 = sub_36590(v58, v57);
LABEL_64:
    v60 = swift_getObjectType();
    v61 = *(v59 + 56);

    v62 = COERCE_DOUBLE(v61(v60, v59));
    v64 = v63;

    if (v64)
    {
LABEL_65:

      v24 = v137;
      a7 = v138;
      v26 = v136;
      goto LABEL_11;
    }

    v65 = vabdd_f64(a2, v53);
    v66 = vabdd_f64(a2, v62);
    if (v66 >= v65)
    {
      v67 = v65;
    }

    else
    {
      v67 = v66;
    }

    v68 = v142;
    v24 = v137;
    a7 = v138;
    v26 = v136;
    if (v67 >= v27)
    {
      goto LABEL_10;
    }

    v27 = v67;
    v132 = v68;
LABEL_11:
    ++v25;
  }

  while (v29 != v24);
  v23 = v132;
  if (v132)
  {
    a1 = v132;
    goto LABEL_73;
  }

  v94 = 0;
  v92 = 0;
  v24 = 0;
  v93 = 0;
LABEL_113:
  sub_E104(0, &qword_C4810);
  v117 = sub_982E8();
  v118 = swift_allocObject();
  *(v118 + 16) = v125;
  *(v118 + 24) = v94;
  *(v118 + 32) = v92;
  *(v118 + 40) = v24;
  *(v118 + 48) = v93;
  v149 = sub_373E4;
  v150 = v118;
  aBlock = _NSConcreteStackBlock;
  v146 = 1107296256;
  v147 = sub_279B0;
  v148 = &block_descriptor_64;
  v119 = _Block_copy(&aBlock);

  v120 = v126;
  sub_97898();
  aBlock = &_swiftEmptyArrayStorage;
  sub_36590(&unk_C7910, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E18);
  sub_EA78(&qword_C7920, &qword_C4E18);
  v121 = v128;
  v122 = v131;
  sub_98618();
  sub_982F8();
  _Block_release(v119);

  (*(v130 + 8))(v121, v122);
  return (*(v127 + 8))(v120, v129);
}

uint64_t sub_33F00(unint64_t a1, unint64_t a2)
{
  v34 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_50:
    v4 = sub_98778();
  }

  else
  {
    v4 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  if (a1 >> 62)
  {
    if (v4 == sub_98778())
    {
      goto LABEL_5;
    }
  }

  else if (v4 == *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_5:
    for (i = 4; ; ++i)
    {
      if (v34)
      {
        v10 = sub_98778();
      }

      else
      {
        v10 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
      }

      v11 = i - 4;
      v12 = i - 4 == v10;
      if (i - 4 == v10)
      {
        return v12;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v13 = sub_986C8();
        if (__OFADD__(v11, 1))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v11 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_48;
        }

        v13 = *(a2 + 8 * i);

        if (__OFADD__(v11, 1))
        {
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }
      }

      if (a1 >> 62)
      {
        if (v11 == sub_98778())
        {
LABEL_46:

          return 1;
        }
      }

      else if (v11 == *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_46;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = sub_986C8();
      }

      else
      {
        if (v11 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_49;
        }

        v14 = *(a1 + 8 * i);
      }

      v15 = *(v13 + 16);
      v16 = v15 >> 61;
      if ((v15 >> 61) <= 1)
      {
        if (v16)
        {
          v24 = v15 & 0x1FFFFFFFFFFFFFFFLL;
          v25 = *(v24 + 24);
          v39 = *(v24 + 16);
          v40 = v25;
          v41 = 0uLL;
          v19 = 1;
          goto LABEL_32;
        }

        v20 = *(v15 + 24);
        v39 = *(v15 + 16);
        v40 = v20;
        v41 = *(v15 + 32);
        v42 = 0;
      }

      else
      {
        v17 = v15 & 0x1FFFFFFFFFFFFFFFLL;
        if (v16 == 2)
        {
          v39 = *(v17 + 16);
          v41 = 0uLL;
          v40 = 0;
          v42 = 2;

          goto LABEL_34;
        }

        if (v16 == 3)
        {
          v18 = *(v17 + 48);
          v39 = *(v17 + 40);
          v40 = v18;
          v41 = *(v17 + 56);
          v19 = 3;
LABEL_32:
          v42 = v19;
          goto LABEL_33;
        }

        v22 = *(v17 + 112);
        v21 = *(v17 + 120);
        v23 = *(v17 + 128);
        v39 = v22;
        v40 = v21;
        v41 = v23;
        v42 = 4;
      }

LABEL_33:

LABEL_34:
      v26 = *(v14 + 16);
      v27 = v26 >> 61;
      if ((v26 >> 61) <= 1)
      {
        if (v27)
        {
          v31 = v26 & 0x1FFFFFFFFFFFFFFFLL;
          v32 = *(v31 + 24);
          v35 = *(v31 + 16);
          v36 = v32;
          v37 = 0uLL;
          v38 = 1;
        }

        else
        {
          v30 = *(v26 + 24);
          v35 = *(v26 + 16);
          v36 = v30;
          v37 = *(v26 + 32);
          v38 = 0;
        }
      }

      else
      {
        v28 = v26 & 0x1FFFFFFFFFFFFFFFLL;
        if (v27 == 2)
        {
          v35 = *(v28 + 16);
          v37 = 0uLL;
          v36 = 0;
          v38 = 2;

          goto LABEL_8;
        }

        if (v27 == 3)
        {
          v29 = *(v28 + 48);
          v35 = *(v28 + 40);
          v36 = v29;
          v37 = *(v28 + 56);
          v38 = 3;
        }

        else
        {
          v7 = *(v28 + 112);
          v6 = *(v28 + 120);
          v8 = *(v28 + 128);
          v35 = v7;
          v36 = v6;
          v37 = v8;
          v38 = 4;
        }
      }

LABEL_8:
      v9 = _s19PodcastsTranscripts26TranscriptContentViewModelC2IDO2eeoiySbAE_AEtFZ_0(&v39, &v35);

      sub_20438(v35, v36, v37, *(&v37 + 1), v38);
      sub_20438(v39, v40, v41, *(&v41 + 1), v42);
      if ((v9 & 1) == 0)
      {
        return v12;
      }
    }
  }

  return 0;
}

BOOL sub_34278(uint64_t a1, double a2)
{
  v3 = *(a1 + 16) >> 61;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v6 = sub_36590(&qword_C77E0, type metadata accessor for TextContent);
      goto LABEL_11;
    }

    v4 = &qword_C52B0;
    v5 = type metadata accessor for LinkContent;
  }

  else if (v3 == 2)
  {
    v4 = &unk_C77D0;
    v5 = type metadata accessor for SilentContent;
  }

  else if (v3 == 3)
  {
    v4 = &qword_C52A8;
    v5 = type metadata accessor for SpeakerContent;
  }

  else
  {
    v4 = &qword_C77C0;
    v5 = type metadata accessor for ChapterTitleContent;
  }

  v6 = sub_36590(v4, v5);
LABEL_11:
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 32);

  v8(ObjectType, v6);
  v10 = v9;

  if (v10)
  {
    return 0;
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v11 = &unk_C77D0;
      v12 = type metadata accessor for SilentContent;
    }

    else if (v3 == 3)
    {
      v11 = &qword_C52A8;
      v12 = type metadata accessor for SpeakerContent;
    }

    else
    {
      v11 = &qword_C77C0;
      v12 = type metadata accessor for ChapterTitleContent;
    }

    goto LABEL_21;
  }

  if (v3)
  {
    v11 = &qword_C52B0;
    v12 = type metadata accessor for LinkContent;
LABEL_21:
    v13 = sub_36590(v11, v12);
    goto LABEL_22;
  }

  v13 = sub_36590(&qword_C77E0, type metadata accessor for TextContent);
LABEL_22:
  v14 = swift_getObjectType();
  v15 = *(v13 + 56);

  v15(v14, v13);
  v17 = v16;

  if (v17)
  {
    return 0;
  }

  sub_980D8();
  if (v18 > a2)
  {
    return 0;
  }

  sub_980D8();
  return v20 > a2;
}

uint64_t sub_345CC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7EF0);
  sub_EA78(&qword_C5768, &unk_C7EF0);
  v9 = sub_98128();

  if (v9)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_96E98();

    if (v12)
    {
      if (a2)
      {
        v11 = sub_2EB5C(a2, a3, a4, a5 & 1, v12, v13, v14, v15 & 1);

        if (v11)
        {
          return result;
        }
      }

      else
      {
      }

LABEL_9:
      swift_getKeyPath();
      swift_getKeyPath();

      return sub_96EA8();
    }

    if (a2)
    {
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t sub_347C0(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_95FC8();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5690);
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7780);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5698);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_3495C, 0, 0);
}

uint64_t sub_3495C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  v1 = v0[8];
  v0[27] = v1;
  if (v1 >> 62)
  {
LABEL_23:
    v15 = sub_98778();
    v0[28] = v15;
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_15:

    v9 = v0[1];

    return v9();
  }

  v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  v0[28] = v2;
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  v3 = 0;
  while (1)
  {
    v4 = v0[27];
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = sub_986C8();
    }

    else
    {
      if (v3 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_22;
      }

      v5 = *(v4 + 8 * v3 + 32);
    }

    v0[29] = v5;
    v0[30] = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v6 = *(v5 + 16);
    v0[31] = v6;
    if (!(v6 >> 61))
    {
      break;
    }

LABEL_4:

    v3 = v0[30];
    if (v3 == v0[28])
    {
      goto LABEL_15;
    }
  }

  swift_getKeyPath();
  v0[9] = v6;
  v0[32] = sub_36590(&qword_C56A0, type metadata accessor for TextContent);

  sub_962A8();

  v7 = *(v6 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__liveText);
  swift_getKeyPath();
  v0[10] = v7;
  v0[33] = sub_36590(&qword_C7760, type metadata accessor for TextContent.LiveText);

  sub_962A8();

  v8 = *(v7 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__translatedContent + 8);

  if (v8)
  {

    goto LABEL_4;
  }

  if (sub_980B8())
  {

    goto LABEL_15;
  }

  v12 = *(v6 + 48);
  v11 = *(v6 + 56);
  v0[34] = v11;
  v16 = (&async function pointer to dispatch thunk of TranslationSession.translate(_:) + async function pointer to dispatch thunk of TranslationSession.translate(_:));

  v13 = swift_task_alloc();
  v0[35] = v13;
  *v13 = v0;
  v13[1] = sub_34D40;
  v14 = v0[26];

  return v16(v14, v12, v11);
}

uint64_t sub_34D40()
{
  *(*v1 + 288) = v0;

  if (v0)
  {

    v2 = sub_35930;
  }

  else
  {

    v2 = sub_34E88;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_34E88()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = sub_96348();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v2, 0, 1, v3);
  v5 = *(v1 + 16);
  if (v5 >> 61)
  {
    goto LABEL_19;
  }

  v6 = v0[25];
  sub_4BF8(v0[26], v6, &qword_C5698);
  v62 = *(v4 + 48);
  v7 = v62(v6, 1, v3);

  v8 = v0[25];
  if (v7 == 1)
  {
    sub_4C60(v8, &qword_C5698);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = sub_96328();
    v10 = v11;
    (*(v4 + 8))(v8, v3);
  }

  swift_getKeyPath();
  v0[12] = v5;
  sub_962A8();

  v12 = *(v5 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__liveText);
  v13 = (v12 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__translatedContent);
  v14 = *(v12 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__translatedContent + 8);
  if (v14)
  {
    if (v10)
    {
      v15 = *v13 == v9 && v14 == v10;
      if (v15 || (sub_98838() & 1) != 0)
      {
        goto LABEL_13;
      }
    }
  }

  else if (!v10)
  {
LABEL_13:

    *v13 = v9;
    v13[1] = v10;

    goto LABEL_16;
  }

  swift_getKeyPath();
  v16 = swift_task_alloc();
  v16[2] = v12;
  v16[3] = v9;
  v16[4] = v10;
  v0[13] = v12;

  sub_96298();

LABEL_16:
  v17 = *(v0[29] + 16);
  if (v17 >> 61)
  {
LABEL_19:
    sub_4C60(v0[26], &qword_C5698);

    goto LABEL_32;
  }

  v18 = v0[24];
  sub_4BF8(v0[26], v18, &qword_C5698);
  v19 = v62(v18, 1, v3);

  v20 = v0[24];
  if (v19 == 1)
  {
    sub_4C60(v0[24], &qword_C5698);
    v21 = 1;
  }

  else
  {
    sub_96338();
    (*(v4 + 8))(v20, v3);
    v21 = 0;
  }

  v24 = v0[22];
  v23 = v0[23];
  v26 = v0[19];
  v25 = v0[20];
  v27 = v0[16];
  v28 = v0[17];
  (*(v28 + 56))(v23, v21, 1, v27);
  v29 = OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__translationTargetLanguage;
  swift_beginAccess();
  v61 = v29;
  v63 = v17;
  sub_4BF8(v17 + v29, v24, &qword_C7780);
  v30 = *(v26 + 48);
  sub_4BF8(v24, v25, &qword_C7780);
  sub_4BF8(v23, v25 + v30, &qword_C7780);
  v31 = *(v28 + 48);
  if (v31(v25, 1, v27) == 1)
  {
    v32 = v0[16];
    sub_4C60(v0[22], &qword_C7780);
    if (v31(v25 + v30, 1, v32) == 1)
    {
      v33 = v0[20];

      sub_4C60(v33, &qword_C7780);
LABEL_30:
      v49 = v0[23];
      sub_4C60(v0[26], &qword_C5698);
      swift_beginAccess();
      sub_36FB0(v49, v63 + v61);
      swift_endAccess();

      goto LABEL_31;
    }

    goto LABEL_26;
  }

  v34 = v0[16];
  sub_4BF8(v0[20], v0[21], &qword_C7780);
  v35 = v31(v25 + v30, 1, v34);
  v36 = v0[21];
  v37 = v0[22];
  if (v35 == 1)
  {
    v38 = v0[16];
    v39 = v0[17];
    sub_4C60(v0[22], &qword_C7780);
    (*(v39 + 8))(v36, v38);
LABEL_26:
    sub_4C60(v0[20], &qword_C5690);
    goto LABEL_27;
  }

  v43 = v0[20];
  v44 = v0[17];
  v45 = v0[18];
  v46 = v0[16];
  (*(v44 + 32))(v45, v25 + v30, v46);
  sub_36590(&qword_C56A8, &type metadata accessor for Locale.Language);
  v47 = sub_97D98();
  v48 = *(v44 + 8);
  v48(v45, v46);
  sub_4C60(v37, &qword_C7780);
  v48(v36, v46);
  sub_4C60(v43, &qword_C7780);
  if (v47)
  {

    goto LABEL_30;
  }

LABEL_27:
  v40 = v0[26];
  v41 = v0[23];
  swift_getKeyPath();
  v42 = swift_task_alloc();
  *(v42 + 16) = v63;
  *(v42 + 24) = v41;
  v0[11] = v63;
  sub_96298();

  sub_4C60(v40, &qword_C5698);

LABEL_31:
  result = sub_4C60(v0[23], &qword_C7780);
LABEL_32:
  v50 = v0[30];
  if (v50 == v0[28])
  {
LABEL_33:

    v51 = v0[1];

    return v51();
  }

  while (1)
  {
    v52 = v0[27];
    if ((v52 & 0xC000000000000001) != 0)
    {
      result = sub_986C8();
      v53 = result;
    }

    else
    {
      if (v50 >= *(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_52;
      }

      v53 = *(v52 + 8 * v50 + 32);
    }

    v0[29] = v53;
    v0[30] = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
      return result;
    }

    v54 = *(v53 + 16);
    v0[31] = v54;
    if (!(v54 >> 61))
    {
      break;
    }

LABEL_37:

    v50 = v0[30];
    if (v50 == v0[28])
    {
      goto LABEL_33;
    }
  }

  swift_getKeyPath();
  v0[9] = v54;
  v0[32] = sub_36590(&qword_C56A0, type metadata accessor for TextContent);

  sub_962A8();

  v55 = *(v54 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__liveText);
  swift_getKeyPath();
  v0[10] = v55;
  v0[33] = sub_36590(&qword_C7760, type metadata accessor for TextContent.LiveText);

  sub_962A8();

  v56 = *(v55 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__translatedContent + 8);

  if (v56)
  {

    goto LABEL_37;
  }

  if (sub_980B8())
  {

    goto LABEL_33;
  }

  v58 = *(v54 + 48);
  v57 = *(v54 + 56);
  v0[34] = v57;
  v64 = (&async function pointer to dispatch thunk of TranslationSession.translate(_:) + async function pointer to dispatch thunk of TranslationSession.translate(_:));

  v59 = swift_task_alloc();
  v0[35] = v59;
  *v59 = v0;
  v59[1] = sub_34D40;
  v60 = v0[26];

  return v64(v60, v58, v57);
}

uint64_t sub_35930()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = sub_96348();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v2, 1, 1, v3);
  v5 = *(v1 + 16);
  if (v5 >> 61)
  {
    goto LABEL_19;
  }

  v6 = v0[25];
  sub_4BF8(v0[26], v6, &qword_C5698);
  v62 = *(v4 + 48);
  v7 = v62(v6, 1, v3);

  v8 = v0[25];
  if (v7 == 1)
  {
    sub_4C60(v0[25], &qword_C5698);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = sub_96328();
    v10 = v11;
    (*(v4 + 8))(v8, v3);
  }

  swift_getKeyPath();
  v0[12] = v5;
  sub_962A8();

  v12 = *(v5 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__liveText);
  v13 = (v12 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__translatedContent);
  v14 = *(v12 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__translatedContent + 8);
  if (v14)
  {
    if (v10)
    {
      v15 = *v13 == v9 && v14 == v10;
      if (v15 || (sub_98838() & 1) != 0)
      {
        goto LABEL_13;
      }
    }
  }

  else if (!v10)
  {
LABEL_13:

    *v13 = v9;
    v13[1] = v10;

    goto LABEL_16;
  }

  swift_getKeyPath();
  v16 = swift_task_alloc();
  v16[2] = v12;
  v16[3] = v9;
  v16[4] = v10;
  v0[13] = v12;

  sub_96298();

LABEL_16:
  v17 = *(v0[29] + 16);
  if (v17 >> 61)
  {
LABEL_19:
    sub_4C60(v0[26], &qword_C5698);

    goto LABEL_32;
  }

  v18 = v0[24];
  sub_4BF8(v0[26], v18, &qword_C5698);
  v19 = v62(v18, 1, v3);

  v20 = v0[24];
  if (v19 == 1)
  {
    sub_4C60(v20, &qword_C5698);
    v21 = 1;
  }

  else
  {
    sub_96338();
    (*(v4 + 8))(v20, v3);
    v21 = 0;
  }

  v24 = v0[22];
  v23 = v0[23];
  v26 = v0[19];
  v25 = v0[20];
  v27 = v0[16];
  v28 = v0[17];
  (*(v28 + 56))(v23, v21, 1, v27);
  v29 = OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__translationTargetLanguage;
  swift_beginAccess();
  v61 = v29;
  v63 = v17;
  sub_4BF8(v17 + v29, v24, &qword_C7780);
  v30 = *(v26 + 48);
  sub_4BF8(v24, v25, &qword_C7780);
  sub_4BF8(v23, v25 + v30, &qword_C7780);
  v31 = *(v28 + 48);
  if (v31(v25, 1, v27) == 1)
  {
    v32 = v0[16];
    sub_4C60(v0[22], &qword_C7780);
    if (v31(v25 + v30, 1, v32) == 1)
    {
      v33 = v0[20];

      sub_4C60(v33, &qword_C7780);
LABEL_30:
      v49 = v0[23];
      sub_4C60(v0[26], &qword_C5698);
      swift_beginAccess();
      sub_36FB0(v49, v63 + v61);
      swift_endAccess();

      goto LABEL_31;
    }

    goto LABEL_26;
  }

  v34 = v0[16];
  sub_4BF8(v0[20], v0[21], &qword_C7780);
  v35 = v31(v25 + v30, 1, v34);
  v36 = v0[21];
  v37 = v0[22];
  if (v35 == 1)
  {
    v38 = v0[16];
    v39 = v0[17];
    sub_4C60(v0[22], &qword_C7780);
    (*(v39 + 8))(v36, v38);
LABEL_26:
    sub_4C60(v0[20], &qword_C5690);
    goto LABEL_27;
  }

  v43 = v0[20];
  v45 = v0[17];
  v44 = v0[18];
  v46 = v0[16];
  (*(v45 + 32))(v44, v25 + v30, v46);
  sub_36590(&qword_C56A8, &type metadata accessor for Locale.Language);
  v47 = sub_97D98();
  v48 = *(v45 + 8);
  v48(v44, v46);
  sub_4C60(v37, &qword_C7780);
  v48(v36, v46);
  sub_4C60(v43, &qword_C7780);
  if (v47)
  {

    goto LABEL_30;
  }

LABEL_27:
  v40 = v0[26];
  v41 = v0[23];
  swift_getKeyPath();
  v42 = swift_task_alloc();
  *(v42 + 16) = v63;
  *(v42 + 24) = v41;
  v0[11] = v63;
  sub_96298();

  sub_4C60(v40, &qword_C5698);

LABEL_31:
  result = sub_4C60(v0[23], &qword_C7780);
LABEL_32:
  v50 = v0[30];
  if (v50 == v0[28])
  {
LABEL_33:

    v51 = v0[1];

    return v51();
  }

  while (1)
  {
    v52 = v0[27];
    if ((v52 & 0xC000000000000001) != 0)
    {
      result = sub_986C8();
      v53 = result;
    }

    else
    {
      if (v50 >= *(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_52;
      }

      v53 = *(v52 + 8 * v50 + 32);
    }

    v0[29] = v53;
    v0[30] = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
      return result;
    }

    v54 = *(v53 + 16);
    v0[31] = v54;
    if (!(v54 >> 61))
    {
      break;
    }

LABEL_37:

    v50 = v0[30];
    if (v50 == v0[28])
    {
      goto LABEL_33;
    }
  }

  swift_getKeyPath();
  v0[9] = v54;
  v0[32] = sub_36590(&qword_C56A0, type metadata accessor for TextContent);

  sub_962A8();

  v55 = *(v54 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__liveText);
  swift_getKeyPath();
  v0[10] = v55;
  v0[33] = sub_36590(&qword_C7760, type metadata accessor for TextContent.LiveText);

  sub_962A8();

  v56 = *(v55 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__translatedContent + 8);

  if (v56)
  {

    goto LABEL_37;
  }

  if (sub_980B8())
  {

    goto LABEL_33;
  }

  v58 = *(v54 + 48);
  v57 = *(v54 + 56);
  v0[34] = v57;
  v64 = (&async function pointer to dispatch thunk of TranslationSession.translate(_:) + async function pointer to dispatch thunk of TranslationSession.translate(_:));

  v59 = swift_task_alloc();
  v0[35] = v59;
  *v59 = v0;
  v59[1] = sub_34D40;
  v60 = v0[26];

  return v64(v60, v58, v57);
}