void sub_F38B4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperation_responseHandler];
  if (v5)
  {

    v5(v6, a1);
  }

  if (a1)
  {
    v7 = sub_AB3040();
  }

  else
  {
    v7 = 0;
  }

  v8.receiver = v2;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "finishWithError:", v7);
}

id sub_F3970(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if ([v2 isCancelled])
  {
    v7 = *&v2[OBJC_IVAR____TtC16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperation_responseHandler];
    if (v7)
    {

      v7(v8, 0);
    }

    v65.receiver = v2;
    v65.super_class = ObjectType;
    return objc_msgSendSuper2(&v65, "finishWithError:", 0);
  }

  if (a2)
  {
    v10 = a2;
LABEL_18:
    v21 = *&v2[OBJC_IVAR____TtC16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperation_responseHandler];
    swift_errorRetain();
    if (v21)
    {

      v21(v22, v10);
    }

    v23 = sub_AB3040();
    v87.receiver = v3;
    v87.super_class = ObjectType;
    objc_msgSendSuper2(&v87, "finishWithError:", v23);
  }

  if (!a1)
  {
LABEL_17:
    sub_F4628();
    v10 = swift_allocError();
    *v20 = xmmword_AF82C0;
    goto LABEL_18;
  }

  v11 = a1;
  v12 = [v11 parsedBodyDictionary];
  if (!v12 || (v13 = v12, v14 = sub_AB8FF0(), v13, v15 = sub_16A5E8(v14), , !v15))
  {

    goto LABEL_17;
  }

  if (*(v15 + 16) && (v16 = sub_2EBF88(0xD000000000000011, 0x8000000000B50AD0), (v17 & 1) != 0) && (sub_808B0(*(v15 + 56) + 32 * v16, &v88), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680), (swift_dynamicCast() & 1) != 0))
  {
    if (*(v80[0] + 16) && (v18 = sub_2EBF88(0x70756B636F6CLL, 0xE600000000000000), (v19 & 1) != 0))
    {
      sub_808B0(*(v80[0] + 56) + 32 * v18, &v85);
    }

    else
    {
      v85 = 0u;
      v86 = 0u;
    }
  }

  else
  {
    v85 = 0u;
    v86 = 0u;
  }

  sub_F46A0(&v85, &v88);
  if (!*(&v89 + 1))
  {
    sub_12E1C(&v88, &unk_DE8E40);
    goto LABEL_28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    v88 = 0u;
    v89 = 0u;
    goto LABEL_29;
  }

  if (*(v80[0] + 16) && (v24 = sub_2EBF88(0x73746C75736572, 0xE700000000000000), (v25 & 1) != 0))
  {
    sub_808B0(*(v80[0] + 56) + 32 * v24, &v88);
  }

  else
  {
    v88 = 0u;
    v89 = 0u;
  }

  if (*(&v89 + 1))
  {
    if (swift_dynamicCast())
    {
      v26 = v80[0];
    }

    else
    {
      v26 = 0;
    }

    if (!*(v15 + 16))
    {
      goto LABEL_68;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_12E1C(&v88, &unk_DE8E40);
  v26 = 0;
  if (!*(v15 + 16))
  {
LABEL_68:

    sub_F4628();
    v50 = swift_allocError();
    *v51 = xmmword_AF82C0;
    v52 = *&v2[OBJC_IVAR____TtC16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperation_responseHandler];
    if (v52)
    {

      v52(v53, v50);
    }

    v54 = sub_AB3040();
    v84.receiver = v3;
    v84.super_class = ObjectType;
    objc_msgSendSuper2(&v84, "finishWithError:", v54);
    sub_12E1C(&v85, &unk_DE8E40);
  }

LABEL_30:
  v27 = sub_2EBF88(0xD000000000000018, 0x8000000000B50AB0);
  if ((v28 & 1) == 0)
  {
    goto LABEL_68;
  }

  sub_808B0(*(v15 + 56) + 32 * v27, &v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF678);
  if (!swift_dynamicCast())
  {
    goto LABEL_68;
  }

  v29 = v80[0];
  if (!v26)
  {
    goto LABEL_68;
  }

  v83 = &_swiftEmptySetSingleton;
  v30 = *(v80[0] + 16);
  if (v30)
  {
    v62 = v26;
    v31 = 32;
    do
    {
      v32 = *(v29 + v31);
      if (*(v32 + 16))
      {

        v33 = sub_2EBF88(25705, 0xE200000000000000);
        if (v34)
        {
          sub_808B0(*(v32 + 56) + 32 * v33, v80);
          if (swift_dynamicCast())
          {
            v35 = *(&v74 + 1);
            if (*(v32 + 16) && (v63 = v74, v36 = sub_2EBF88(0x6269726373627573, 0xEC00000064497265), (v37 & 1) != 0) && (sub_808B0(*(v32 + 56) + 32 * v36, v80), (swift_dynamicCast() & 1) != 0))
            {
              v60 = *(&v74 + 1);
              if (*(v62 + 16) && (v59 = v74, v38 = sub_2EBF88(v63, v35), (v39 & 1) != 0) && (sub_808B0(*(v62 + 56) + 32 * v38, v80), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830), (swift_dynamicCast() & 1) != 0))
              {
                v40 = v74;
                v41 = 0;
                if (*(v32 + 16))
                {
                  v58 = v74;
                  v42 = sub_2EBF88(0x746867696577, 0xE600000000000000);
                  if (v43)
                  {
                    sub_808B0(*(v32 + 56) + 32 * v42, v81);
                    if (swift_dynamicCast())
                    {
                      v41 = v80[0];
                    }
                  }

                  v40 = v58;
                }

                *&v74 = v59;
                *(&v74 + 1) = v60;
                *&v75 = v63;
                *(&v75 + 1) = v35;
                v76 = v40;
                v77 = 0;
                v78 = 0;
                v79 = v41;
                v80[0] = v59;
                v80[1] = v60;
                v80[2] = v63;
                v80[3] = v35;
                v80[4] = v40;
                v80[5] = 0;
                v80[6] = 0;
                v80[7] = v41;
                sub_2BABC(&v74, &v67);
                sub_2BA68(v80);
                v71 = v74;
                v72 = v75;
                v61 = v77;
                v73 = v76;
                v64 = v78;
                v44 = v79;
                if (*(v32 + 16))
                {
                  v45 = sub_2EBF88(0x6E6F73616572, 0xE600000000000000);
                  if (v46)
                  {
                    sub_808B0(*(v32 + 56) + 32 * v45, &v67);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
                    if (swift_dynamicCast())
                    {
                      v47 = *&v66[0];
                      if (*(*&v66[0] + 16) && (v48 = sub_2EBF88(0xD000000000000010, 0x8000000000B50AF0), (v49 & 1) != 0) && (sub_808B0(*(v47 + 56) + 32 * v48, &v67), (swift_dynamicCast() & 1) != 0))
                      {
                        v64 = *(&v66[0] + 1);
                        v61 = *&v66[0];
                      }

                      else
                      {

                        v61 = 0;
                        v64 = 0;
                      }
                    }
                  }
                }

                v88 = v71;
                v89 = v72;
                v90 = v73;
                v91 = v61;
                v92 = v64;
                v93 = v44;
                sub_2BABC(&v88, &v67);
                sub_1AC68(&v67, &v88);
                v66[0] = v67;
                v66[1] = v68;
                v66[2] = v69;
                v66[3] = v70;
                sub_2BA68(v66);
                v67 = v71;
                v68 = v72;
                *&v69 = v73;
                *(&v69 + 1) = v61;
                *&v70 = v64;
                *(&v70 + 1) = v44;
                sub_2BA68(&v67);
              }

              else
              {
              }
            }

            else
            {
            }
          }
        }
      }

      v31 += 8;
      --v30;
    }

    while (v30);

    v55 = v83;
  }

  else
  {

    v55 = &_swiftEmptySetSingleton;
  }

  *&v3[OBJC_IVAR____TtC16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperation_matchedFriends] = v55;

  v56 = *&v3[OBJC_IVAR____TtC16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperation_responseHandler];
  if (v56)
  {

    v56(v57, 0);
  }

  v82.receiver = v3;
  v82.super_class = ObjectType;
  objc_msgSendSuper2(&v82, "finishWithError:", 0, v58);
  sub_12E1C(&v85, &unk_DE8E40);
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

uint64_t sub_F44D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_F4518(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_F457C()
{
  result = qword_DEF668;
  if (!qword_DEF668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEF668);
  }

  return result;
}

uint64_t sub_F45D0()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_F4628()
{
  result = qword_DEF670;
  if (!qword_DEF670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEF670);
  }

  return result;
}

uint64_t sub_F46A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperationC0H5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_F4728(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_F477C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_F47D8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

char *sub_F480C()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  __chkstk_darwin(v2 - 8);
  *(v0 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController_shouldRecordPageMetrics) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController____lazy_storage___accountButton) = 0;
  v3 = OBJC_IVAR____TtC16MusicApplication21LibraryViewController_menuTableViewController;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for LibraryMenuViewController()) init];
  v4 = OBJC_IVAR____TtC16MusicApplication21LibraryViewController_recentlyAddedViewController;
  *(v0 + v4) = [objc_allocWithZone(type metadata accessor for RecentlyAddedViewController()) init];
  *(v0 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController____lazy_storage___dropIndicationView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController_isActiveDropSessionInsideView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController_shouldSkipRecordingPageMetricsForEditingStateChange) = 0;
  v5 = sub_4D3A88(_swiftEmptyArrayStorage);
  *(*&v5[OBJC_IVAR____TtC16MusicApplication21LibraryViewController_menuTableViewController] + OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_editingDelegate + 8) = &off_CF9038;
  swift_unknownObjectWeakAssign();
  v6 = OBJC_IVAR____TtC16MusicApplication21LibraryViewController_recentlyAddedViewController;
  v7 = *&v5[OBJC_IVAR____TtC16MusicApplication21LibraryViewController_recentlyAddedViewController];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = &v7[qword_DF2C98];
  v10 = *&v7[qword_DF2C98];
  *v9 = sub_F5A2C;
  v9[1] = v8;
  v11 = v5;
  v12 = v7;

  sub_3FC30(v10);

  v13 = *&v5[v6];
  sub_173CA8(1);

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v14 = sub_AB9260();

  [v11 setTitle:v14];

  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (!v16)
  {
    v17 = sub_AB9260();
    [v11 setRestorationIdentifier:v17];
  }

  v18 = v11;
  v19 = sub_AB9260();
  [v18 setPlayActivityFeatureName:v19];

  v20 = sub_4D3DD0();
  [v20 _setAutoScrollEnabled:0];

  return v18;
}

void sub_F4B74(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_4D3DD0();

    [v4 setScrollEnabled:a1 & 1];
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    sub_F5090(1);
  }
}

void sub_F4C48()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for LibraryViewController();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = AccessibilityIdentifier.libraryContentView.unsafeMutableAddressor();
    v4 = *v3;
    v5 = v3[1];
    sub_74390();

    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v4, v5);

    v6 = sub_F501C();
    *&v6[OBJC_IVAR____TtC16MusicApplication13AccountButton_delegate + 8] = &off_CF9028;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }
}

void sub_F4E8C(char a1, char a2)
{
  v5 = [v2 isEditing];
  v8.receiver = v2;
  v8.super_class = type metadata accessor for LibraryViewController();
  v6 = a1 & 1;
  objc_msgSendSuper2(&v8, "setEditing:animated:", v6, a2 & 1);
  if (v5 != v6)
  {
    if ((*(v2 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController_shouldSkipRecordingPageMetricsForEditingStateChange) & 1) == 0 && *(v2 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController_shouldRecordPageMetrics) == 1)
    {
      sub_F5668();
    }

    v7 = sub_F501C();
    sub_8CC40();

    sub_F5090(a2 & 1);
  }
}

id sub_F501C()
{
  v1 = OBJC_IVAR____TtC16MusicApplication21LibraryViewController____lazy_storage___accountButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController____lazy_storage___accountButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController____lazy_storage___accountButton);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for AccountButton()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_F5090(char a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v5 = swift_allocObject();
  *(v4 + 16) = v5;
  *(v5 + 16) = xmmword_AF82B0;
  v6 = *&v1[OBJC_IVAR____TtC16MusicApplication21LibraryViewController_menuTableViewController];
  *(v5 + 32) = v6;
  v7 = v6;
  v8 = [v1 traitCollection];
  if (([v1 isEditing] & 1) == 0)
  {
    v9 = *&v1[OBJC_IVAR____TtC16MusicApplication21LibraryViewController_recentlyAddedViewController];
    if ((*(v9 + qword_DF2CA0) & 1) != 0 || (v10 = [v1 traitCollection], v11 = UITraitCollection.isMediaPicker.getter(), v10, v11) || (static ApplicationCapabilities.shared.getter(v16), sub_70C54(v16), !ICMusicSubscriptionStatusCapabilities.hasVoiceActivatedCatalogPlaybackOnly.getter(SBYTE8(v16[0]))))
    {
      sub_F5274(v2, v4);
    }

    else
    {
      sub_F5274(v2, v4);
      swift_beginAccess();
      v12 = sub_469BE8(v9, *(v4 + 16));
      if ((v13 & 1) == 0)
      {
        v14 = v12;
        swift_beginAccess();
        v15 = sub_2E5F34(v14);
        swift_endAccess();
      }
    }
  }

  swift_beginAccess();
  sub_4D4068(*(v4 + 16), a1 & 1);
}

void sub_F5274(char *a1, uint64_t a2)
{
  v4 = [a1 navigationController];
  if (v4 && (v5 = v4, v8 = [v4 popoverPresentationController], v5, v8))
  {
  }

  else
  {
    v6 = *&a1[OBJC_IVAR____TtC16MusicApplication21LibraryViewController_recentlyAddedViewController];
    v6[qword_DF2C90] = 0;
    swift_beginAccess();
    v7 = v6;
    sub_AB9730();
    if (*(&dword_10 + (*(a2 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a2 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    swift_endAccess();
  }
}

void sub_F539C()
{
  v1 = v0;
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  __chkstk_darwin(v3 - 8);
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v4 = [v0 traitCollection];
  rawValue = UITraitCollection.legacyLibraryFilter.getter().rawValue;

  if ((rawValue & 2) != 0)
  {

    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v6 = sub_AB9260();
    [v1 setPlayActivityFeatureName:v6];
  }

  v7 = sub_AB9260();

  [v1 setTitle:v7];

  v8 = [v1 navigationItem];
  v9 = [v1 traitCollection];
  v10 = sub_2B51D8();
  v12 = v11;

  sub_387430(v10, v12);
  v13 = [v1 navigationItem];
  v14 = sub_AB9260();

  [v13 setTitle:v14];

  v15 = sub_F501C();
  sub_8CC40();
}

void sub_F5668()
{
  v1 = type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [v0 isEditing];
  v5 = *MetricsReportingController.shared.unsafeMutableAddressor();
  if (v4)
  {
    v6 = MetricsEvent.Page.libraryMenuEdit.unsafeMutableAddressor();
  }

  else
  {
    v6 = MetricsEvent.Page.libraryLanding.unsafeMutableAddressor();
  }

  sub_9D330(v6, v3);
  (*(&stru_68.reloff + (swift_isaMask & *v5)))(v3, 0, 0, 0, 0, 0);
  sub_9D394(v3);
}

void sub_F5768()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController____lazy_storage___dropIndicationView);
}

id sub_F57C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibraryViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_F5890()
{
  v1 = v0;
  if ([v0 isEditing] & 1) != 0 || (v2 = objc_msgSend(v0, "traitCollection"), rawValue = UITraitCollection.legacyLibraryFilter.getter().rawValue, v2, (rawValue & 2) != 0) || (v4 = objc_msgSend(v1, "traitCollection"), v5 = UITraitCollection.isMediaPicker.getter(), v4, v5) || (v6 = objc_msgSend(v1, "traitCollection"), v7 = UITraitCollection.mediaLibrary.getter(), v6, LOBYTE(v6) = objc_msgSend(v7, "isHomeSharingLibrary"), v7, (v6))
  {
    v9 = [v1 navigationItem];
    [v9 _setLargeTitleAccessoryView:0 alignToBaseline:0];
  }

  else
  {
    v8 = [v1 navigationItem];
    v9 = sub_F501C();
    [v8 _setLargeTitleAccessoryView:? alignToBaseline:?];
  }
}

uint64_t sub_F59F4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_F5A34()
{

  return swift_deallocObject();
}

void sub_F5A6C()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController_shouldRecordPageMetrics) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController____lazy_storage___accountButton) = 0;
  v1 = OBJC_IVAR____TtC16MusicApplication21LibraryViewController_menuTableViewController;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for LibraryMenuViewController()) init];
  v2 = OBJC_IVAR____TtC16MusicApplication21LibraryViewController_recentlyAddedViewController;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for RecentlyAddedViewController()) init];
  *(v0 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController____lazy_storage___dropIndicationView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController_isActiveDropSessionInsideView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21LibraryViewController_shouldSkipRecordingPageMetricsForEditingStateChange) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_F5B54(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v11 - 8);
  v13 = v34 - v12;
  v14 = &v5[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_name];
  *v14 = 0;
  *(v14 + 1) = 0xE000000000000000;
  v15 = &v5[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_descriptionText];
  *v15 = 0;
  *(v15 + 1) = 0xE000000000000000;
  *&v5[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_badgeView] = 0;
  v16 = &v5[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_textComponents];
  *v16 = sub_F6A78();
  v16[1] = v17;
  v16[2] = v18;
  v35.receiver = v5;
  v35.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  v20 = [v19 layer];
  [v20 setAllowsGroupOpacity:0];

  v21 = [v19 layer];
  [v21 setAllowsGroupBlending:0];

  v22 = UIView.Corner.large.unsafeMutableAddressor();
  v23 = sub_ABA680();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v13, v22, v23);
  (*(v24 + 56))(v13, 0, 1, v23);
  VerticalLockupCollectionViewCell.artworkCornerTreatment.setter(v13);
  v25 = &v19[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
  swift_beginAccess();
  type metadata accessor for UIEdgeInsets(0);
  *v25 = 0u;
  *(v25 + 1) = 0u;
  v26 = &v19[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  v27 = *&v19[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets + 16];
  v34[2] = *&v19[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  v34[3] = v27;
  memset(v34, 0, 32);
  if (sub_AB38D0())
  {
    v28 = *(v25 + 1);
    *v26 = *v25;
    *(v26 + 1) = v28;
    sub_35D498();
    [v19 setNeedsLayout];
  }

  v29 = *&v19[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];

  v30 = *&v19[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_textComponents + 16];
  if (!(v30 >> 62))
  {
    v31 = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8));
    if (v31)
    {
      goto LABEL_5;
    }

LABEL_13:

    return;
  }

  v31 = sub_ABB060();
  if (!v31)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v31 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v31; ++i)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v33 = sub_36003C(i, v30);
      }

      else
      {
        v33 = *(v30 + 8 * i + 32);
      }

      TextStackView.add(_:)(v33);
    }
  }
}

uint64_t sub_F5FC4(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_name];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_name];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_name + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_textComponents];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }
}

uint64_t sub_F60D8(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_name] != result || *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_name + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_textComponents];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_F61D4(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
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

uint64_t sub_F6268(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_descriptionText];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_descriptionText];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_descriptionText + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_textComponents + 8];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }
}

uint64_t sub_F6380(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_descriptionText] != result || *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_descriptionText + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_textComponents + 8];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_F6520(uint64_t a1, uint64_t a2)
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

uint64_t sub_F6860()
{
}

uint64_t type metadata accessor for FeaturedPlaylistCell()
{
  result = qword_DEF710;
  if (!qword_DEF710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_F6A48()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_badgeView);
  v2 = v1;
  return v1;
}

uint64_t sub_F6A78()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v1 = qword_E718D8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  *&v25[0] = v1;
  *(&v25[0] + 1) = v4;
  v25[1] = xmmword_AF7C20;
  v26 = 0;
  v27 = 0;
  v28 = v0;
  v29 = 2;
  v30 = xmmword_AF82F0;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0x7473696C79616C70, 0xEC000000656D614ELL, v25);
  v6 = objc_opt_self();
  v18 = v3;
  v17 = v4;
  v16 = v0;
  sub_2F118(v25, v37);

  v7 = [v6 defaultParagraphStyle];
  [v7 mutableCopy];

  sub_ABAB50();
  sub_13C80(0, &unk_E05360);
  swift_dynamicCast();
  v8 = v31;
  swift_unknownObjectRelease();
  [v8 setLineBreakMode:4];
  sub_AB2F50();
  v9 = swift_allocBox();
  sub_AB2F40();
  sub_13C80(0, &qword_DE6EE0);
  v37[0] = sub_ABA5A0();
  sub_B4860();
  sub_AB2F70();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v10 = qword_E718C8;
  v37[0] = qword_E718C8;
  sub_B48B4();
  v11 = v10;
  sub_AB2F70();
  v37[0] = v8;
  sub_B4908();
  v12 = v8;
  sub_AB2F70();
  v19 = xmmword_AFD750;
  v20 = sub_F6EEC;
  v21 = v9;
  v22 = xmmword_AFA860;
  v23 = xmmword_AFB300;
  v24 = xmmword_AF7C40;
  swift_allocObject();
  v13 = TextStackView.Component.init(identifier:labelProperties:)(0xD000000000000013, 0x8000000000B50D00, &v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_AF7C50;
  *(v14 + 32) = v5;
  *(v14 + 40) = v13;

  sub_2F118(&v19, v37);

  v31 = xmmword_AFD750;
  v32 = sub_F6EEC;
  v33 = v9;
  v34 = xmmword_AFA860;
  v35 = xmmword_AFB300;
  v36 = xmmword_AF7C40;
  sub_2F174(&v31);
  v37[0] = v1;
  v37[1] = v4;
  v38 = xmmword_AF7C20;
  v39 = 0;
  v40 = 0;
  v41 = v0;
  v42 = 2;
  v43 = xmmword_AF82F0;
  sub_2F174(v37);

  return v5;
}

id sub_F6EF4()
{
  LOBYTE(v2) = 10;
  sub_AFE98();
  sub_36A48();
  NSUserDefaults.subscript.getter(&v3);
  if (v4)
  {
    sub_F7868();
    if (swift_dynamicCast())
    {
      v0 = [v2 BOOLValue];

      return v0;
    }
  }

  else
  {
    sub_12E1C(&v3, &unk_DE8E40);
  }

  return 0;
}

uint64_t sub_F6FBC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_AB31C0();
  (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  LOBYTE(v8) = 1;
  sub_AFE98();
  sub_36A48();
  NSUserDefaults.subscript.getter(&v10);
  if (!v11)
  {
    return sub_12E1C(&v10, &unk_DE8E40);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v7 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v7 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_AB3180();
      sub_12E1C(a1, &unk_DF2AE0);
      sub_F78B4(v4, a1);
    }
  }

  return result;
}

unint64_t sub_F7144(char a1)
{
  result = 0x6F4D6E6F69746F6DLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD00000000000002ELL;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      return result;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD00000000000001CLL;
      break;
    case 9:
      result = 0xD00000000000002ALL;
      break;
    case 10:
      result = 0xD000000000000019;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0x72617453776F6873;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x6E6F6973726576;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_F73B8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_F7144(*a1);
  v5 = v4;
  if (v3 == sub_F7144(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_F7440()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_F7144(v1);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_F74A4()
{
  sub_F7144(*v0);
  sub_AB93F0();
}

Swift::Int sub_F74F8()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_F7144(v1);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_F7558@<X0>(_BYTE *a1@<X8>)
{
  result = sub_F7ACC();
  *a1 = result;
  return result;
}

unint64_t sub_F7588@<X0>(unint64_t *a1@<X8>)
{
  result = sub_F7144(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_F75B4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF720);
  __chkstk_darwin(v2 - 8);
  v4 = &v12[-v3];
  v12[8] = 6;
  sub_AFE98();
  sub_36A48();
  NSUserDefaults.subscript.getter(&v13);
  if (!v14)
  {
    v7 = &unk_DE8E40;
    v8 = &v13;
LABEL_6:
    sub_12E1C(v8, v7);
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    sub_AB3850();
    v5 = sub_AB3870();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      return (*(v6 + 32))(a1, v4, v5);
    }

    v7 = &qword_DEF720;
    v8 = v4;
    goto LABEL_6;
  }

LABEL_7:
  v9 = enum case for MotionMode.on(_:);
  v10 = sub_AB3870();
  return (*(*(v10 - 8) + 104))(a1, v9, v10);
}

void sub_F7790()
{
  LOBYTE(v0) = 8;
  sub_AFE98();
  sub_36A48();
  NSUserDefaults.subscript.getter(&v1);
  if (v2)
  {
    sub_F7868();
    if (swift_dynamicCast())
    {
      [v0 floatValue];
    }
  }

  else
  {
    sub_12E1C(&v1, &unk_DE8E40);
  }
}

unint64_t sub_F7868()
{
  result = qword_DF1300;
  if (!qword_DF1300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DF1300);
  }

  return result;
}

uint64_t sub_F78B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s4KeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s4KeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_F7A78()
{
  result = qword_DEF728;
  if (!qword_DEF728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEF728);
  }

  return result;
}

uint64_t sub_F7ACC()
{
  v0 = sub_ABB420();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_F7B20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_AB6240();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF9B8);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_15F84(v2, &v13 - v9, &qword_DEF9B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_36B0C(v10, a1, &qword_DEF9E0);
  }

  sub_AB9F40();
  v12 = sub_AB6A40();
  sub_AB4A90();

  sub_AB6230();
  swift_getAtKeyPath();
  (*(v5 + 8))(v7, v4);
}

void sub_F7D00()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    if ([v1 horizontalSizeClass] == &dword_0 + 2)
    {
      v2 = *(v0 + 104);
      if (v2)
      {
        v3 = v2;
        [v3 bounds];
        CGRectGetWidth(v13);
        v4 = [objc_opt_self() mainScreen];
        [v4 bounds];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;

        v14.origin.x = v6;
        v14.origin.y = v8;
        v14.size.width = v10;
        v14.size.height = v12;
        CGRectGetWidth(v14);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void *sub_F7E28()
{
  result = *(v0 + 96);
  if (result)
  {
    if ([result horizontalSizeClass] == &dword_0 + 2)
    {
      v2 = *(v0 + 104);
      if (v2 && (v3 = v2, [v3 bounds], Width = CGRectGetWidth(v15), v5 = objc_msgSend(objc_opt_self(), "mainScreen"), objc_msgSend(v5, "bounds"), v7 = v6, v9 = v8, v11 = v10, v13 = v12, v5, v16.origin.x = v7, v16.origin.y = v9, v16.size.width = v11, v16.size.height = v13, v14 = CGRectGetWidth(v16), v3, Width <= v14 * 0.5))
      {
        return &dword_0 + 2;
      }

      else
      {
        return &dword_0 + 1;
      }
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

  return result;
}

void sub_F7F28()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    if ([v1 horizontalSizeClass] == &dword_0 + 2)
    {
      v2 = *(v0 + 104);
      if (v2)
      {
        v3 = v2;
        [v3 bounds];
        CGRectGetWidth(v13);
        v4 = [objc_opt_self() mainScreen];
        [v4 bounds];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;

        v14.origin.x = v6;
        v14.origin.y = v8;
        v14.size.width = v10;
        v14.size.height = v12;
        CGRectGetWidth(v14);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_F8024()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    if ([v1 horizontalSizeClass] == &dword_0 + 2)
    {
      v2 = *(v0 + 104);
      if (v2)
      {
        v3 = v2;
        [v3 bounds];
        CGRectGetWidth(v13);
        v4 = [objc_opt_self() mainScreen];
        [v4 bounds];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;

        v14.origin.x = v6;
        v14.origin.y = v8;
        v14.size.width = v10;
        v14.size.height = v12;
        CGRectGetWidth(v14);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_F8120()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    if ([v1 horizontalSizeClass] == &dword_0 + 2)
    {
      v2 = *(v0 + 104);
      if (v2)
      {
        v3 = v2;
        [v3 bounds];
        CGRectGetWidth(v13);
        v4 = [objc_opt_self() mainScreen];
        [v4 bounds];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;

        v14.origin.x = v6;
        v14.origin.y = v8;
        v14.size.width = v10;
        v14.size.height = v12;
        CGRectGetWidth(v14);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_F8220()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    if ([v1 horizontalSizeClass] == &dword_0 + 2)
    {
      v2 = *(v0 + 104);
      if (v2)
      {
        v3 = v2;
        [v3 bounds];
        CGRectGetWidth(v13);
        v4 = [objc_opt_self() mainScreen];
        [v4 bounds];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;

        v14.origin.x = v6;
        v14.origin.y = v8;
        v14.size.width = v10;
        v14.size.height = v12;
        CGRectGetWidth(v14);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_F8304()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    if ([v1 horizontalSizeClass] == &dword_0 + 2)
    {
      v2 = *(v0 + 104);
      if (v2)
      {
        v3 = v2;
        [v3 bounds];
        CGRectGetWidth(v13);
        v4 = [objc_opt_self() mainScreen];
        [v4 bounds];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;

        v14.origin.x = v6;
        v14.origin.y = v8;
        v14.size.width = v10;
        v14.size.height = v12;
        CGRectGetWidth(v14);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_F8414()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    if ([v1 horizontalSizeClass] == &dword_0 + 2)
    {
      v2 = *(v0 + 104);
      if (v2)
      {
        v3 = v2;
        [v3 bounds];
        CGRectGetWidth(v13);
        v4 = [objc_opt_self() mainScreen];
        [v4 bounds];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;

        v14.origin.x = v6;
        v14.origin.y = v8;
        v14.size.width = v10;
        v14.size.height = v12;
        CGRectGetWidth(v14);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_F84F8()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    if ([v1 horizontalSizeClass] == &dword_0 + 2)
    {
      v2 = *(v0 + 104);
      if (v2)
      {
        v3 = v2;
        [v3 bounds];
        CGRectGetWidth(v13);
        v4 = [objc_opt_self() mainScreen];
        [v4 bounds];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;

        v14.origin.x = v6;
        v14.origin.y = v8;
        v14.size.width = v10;
        v14.size.height = v12;
        CGRectGetWidth(v14);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_F85E0@<Q0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB840);
  __chkstk_darwin(v2 - 8);
  v4 = v26 - v3;
  v5 = sub_AB7530();
  v6 = sub_AB74E0();
  KeyPath = swift_getKeyPath();
  type metadata accessor for CloseButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB5F8);
  sub_AB5900();
  sub_AB6BD0();
  v8 = sub_AB6BC0();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = sub_AB6C20();
  sub_12E1C(v4, &qword_DEB840);
  v10 = swift_getKeyPath();
  sub_AB5900();
  v11 = sub_AB6AA0();
  sub_AB5690();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  LOBYTE(v26[0]) = 0;
  v20 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFEB8) + 36);
  sub_AB79D0();
  v21 = sub_AB6AA0();
  *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFEC8) + 36)) = v21;
  *a1 = v5;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v6;
  *(a1 + 24) = v10;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = v13;
  *(a1 + 56) = v15;
  *(a1 + 64) = v17;
  *(a1 + 72) = v19;
  *(a1 + 80) = 0;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFEA8) + 36)) = 256;
  sub_AB7A30();
  sub_AB5E90();
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFE90) + 36);
  v23 = v26[5];
  *(v22 + 64) = v26[4];
  *(v22 + 80) = v23;
  *(v22 + 96) = v26[6];
  v24 = v26[1];
  *v22 = v26[0];
  *(v22 + 16) = v24;
  result = v26[3];
  *(v22 + 32) = v26[2];
  *(v22 + 48) = result;
  return result;
}

uint64_t sub_F88C0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFE90);
  sub_105EA4();
  return sub_AB7690();
}

uint64_t sub_F894C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v33 = a1;
  *(&v33 + 1) = a2;
  sub_36A48();

  v6 = sub_AB6F20();
  v23 = v7;
  v24 = v6;
  v9 = v8;
  v11 = v10;
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v11 & 1;
  LOBYTE(v33) = v11 & 1;
  v15 = swift_getKeyPath();
  sub_AB7A30();
  sub_AB5E90();
  *(&v32[6] + 7) = *&v32[21];
  *(&v32[8] + 7) = *&v32[23];
  *(&v32[10] + 7) = *&v32[25];
  *(&v32[12] + 7) = *&v32[27];
  *(v32 + 7) = *&v32[15];
  *(&v32[2] + 7) = *&v32[17];
  *(&v32[4] + 7) = *&v32[19];
  if (!a3)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  v29 = v37;
  v30 = v38;
  v31 = v39;
  v25 = v33;
  v26 = v34;
  v27 = v35;
  v28 = v36;
  if (!*(&v34 + 1))
  {
    __break(1u);
LABEL_8:
    _s16MusicApplication11EnvironmentCMa_0(0);
    sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0);
    result = sub_AB5F00();
    __break(1u);
    return result;
  }

  v33 = v25;
  v34 = v26;
  v37 = v29;
  v38 = v30;
  v39 = v31;
  v35 = v27;
  v36 = v28;
  if (sub_F7E28() == 1)
  {
    v16 = sub_AB6B70();
  }

  else
  {
    v16 = sub_AB6C90();
  }

  v17 = v16;
  sub_12E1C(&v25, &unk_DEF878);
  result = swift_getKeyPath();
  v19 = *&v32[6];
  *(a4 + 137) = *&v32[8];
  v20 = *&v32[12];
  *(a4 + 153) = *&v32[10];
  *(a4 + 169) = v20;
  *(a4 + 73) = *v32;
  v21 = *&v32[4];
  *(a4 + 89) = *&v32[2];
  *(a4 + 105) = v21;
  *a4 = v24;
  *(a4 + 8) = v9;
  *(a4 + 16) = v14;
  *(a4 + 24) = v23;
  *(a4 + 32) = KeyPath;
  *(a4 + 40) = 1;
  *(a4 + 48) = v13;
  *(a4 + 56) = 0x3FEB333333333333;
  *(a4 + 64) = v15;
  *(a4 + 72) = 1;
  v22 = *(&v32[13] + 7);
  *(a4 + 121) = v19;
  *(a4 + 184) = v22;
  *(a4 + 192) = result;
  *(a4 + 200) = v17;
  return result;
}

__n128 sub_F8C2C@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  result = v4;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_F8CDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v61 = sub_AB6EF0();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB6240();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v44 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB63C0();
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v53 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFED8);
  v51 = *(v8 - 8);
  v52 = v8;
  __chkstk_darwin(v8);
  v50 = &v44 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFEE0);
  __chkstk_darwin(v56);
  v57 = &v44 - v10;
  v11 = *v1;
  v12 = v1[1];
  *&v73 = v11;
  *(&v73 + 1) = v12;
  sub_36A48();

  v13 = sub_AB6F20();
  v15 = v14;
  v17 = v16;
  sub_AB7430();
  v48 = sub_AB6E10();
  v49 = v18;
  v20 = v19;
  v22 = v21;

  sub_36B74(v13, v15, v17 & 1);

  if (!v2[4])
  {
    goto LABEL_10;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  v70 = v77;
  v71 = v78;
  v72 = v79;
  v66 = v73;
  v67 = v74;
  v68 = v75;
  v69 = v76;
  if (!*(&v74 + 1))
  {
    __break(1u);
LABEL_10:
    _s16MusicApplication11EnvironmentCMa_0(0);
    sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0);
    result = sub_AB5F00();
    __break(1u);
    return result;
  }

  v23 = v22;
  v73 = v66;
  *&v74 = v67;
  v77 = v70;
  v78 = v71;
  v79 = v72;
  v75 = v68;
  v76 = v69;
  v24 = sub_F7E28();
  v47 = v2;
  v25 = v20;
  if (v24 == 1)
  {
    sub_AB6B70();
  }

  else
  {
    sub_AB6C90();
  }

  sub_12E1C(&v66, &unk_DEF878);
  v26 = v48;
  v27 = sub_AB6E80();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_36B74(v26, v25, v23 & 1);

  v62 = v27;
  v63 = v29;
  v34 = v31 & 1;
  v64 = v31 & 1;
  v65 = v33;
  v35 = v47;
  v36 = v50;
  sub_AB7010();
  sub_36B74(v27, v29, v34);

  v37 = v53;
  sub_AB63B0();
  v62 = &type metadata for Text;
  v63 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v38 = v57;
  v39 = v52;
  sub_AB7040();
  (*(v54 + 8))(v37, v55);
  (*(v51 + 8))(v36, v39);
  LOBYTE(v63) = *(v35 + 56);
  v62 = v35[6];
  if (v63 != 1)
  {

    sub_AB9F40();
    v40 = sub_AB6A40();
    sub_AB4A90();

    v41 = v44;
    sub_AB6230();
    swift_getAtKeyPath();
    (*(v45 + 8))(v41, v46);
    sub_12E1C(&v62, &qword_DEFEE8);
  }

  v42 = v58;
  sub_AB6EE0();
  sub_1060B0();
  sub_AB73C0();
  (*(v59 + 8))(v42, v61);
  return sub_12E1C(v38, &qword_DEFEE0);
}

uint64_t sub_F93D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_AB63C0();
  v50 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v40[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFF00);
  __chkstk_darwin(v11);
  v13 = &v40[-v12];
  v14 = sub_AB7A30();
  v48 = v15;
  v49 = v14;
  sub_F9AF0(a1, a2, a3, &v100);
  if (!a3)
  {
    goto LABEL_11;
  }

  v46 = *(&v100 + 1);
  v47 = v100;
  v16 = v101;
  v45 = *(&v101 + 1);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_AB5510();

  v80 = v104;
  v81 = v105;
  v82 = v106;
  v76 = v100;
  v77 = v101;
  v78 = v102;
  v79 = v103;
  if (!*(&v101 + 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  v100 = v76;
  *&v101 = v77;
  v104 = v80;
  v105 = v81;
  v106 = v82;
  v102 = v78;
  v103 = v79;
  sub_F8304();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_12E1C(&v76, &unk_DEF878);
  v25 = sub_AB6AA0();
  v44 = v16;
  v84 = v16;
  v83 = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v73 = v97;
  v74 = v98;
  v75 = v99;
  v69 = v93;
  v70 = v94;
  v71 = v95;
  v72 = v96;
  if (!*(&v94 + 1))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v41 = v25;
  v42 = a4;
  v43 = v8;
  v93 = v69;
  *&v94 = v70;
  v97 = v73;
  v98 = v74;
  v99 = v75;
  v96 = v72;
  v95 = v71;
  sub_F8220();
  sub_12E1C(&v69, &unk_DEF878);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v66 = v90;
  v67 = v91;
  v68 = v92;
  v62 = v86;
  v63 = v87;
  v64 = v88;
  v65 = v89;
  if (*(&v87 + 1))
  {
    v86 = v62;
    *&v87 = v63;
    v90 = v66;
    v91 = v67;
    v92 = v68;
    v88 = v64;
    v89 = v65;
    sub_F8120();
    sub_12E1C(&v62, &unk_DEF878);
    sub_AB7A30();
    sub_AB5E90();
    *(&v85[6] + 7) = *&v85[21];
    *(&v85[8] + 7) = *&v85[23];
    *(&v85[10] + 7) = *&v85[25];
    *(&v85[12] + 7) = *&v85[27];
    *(v85 + 7) = *&v85[15];
    *(&v85[2] + 7) = *&v85[17];
    *(&v85[4] + 7) = *&v85[19];
    v26 = sub_AB7430();
    v27 = sub_AB6AA0();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    v59 = v55;
    v60 = v56;
    v61 = v57;
    v58[0] = v51;
    v58[1] = v52;
    v58[2] = v53;
    v58[3] = v54;
    if (*(&v52 + 1))
    {
      v28 = v59;
      sub_12E1C(v58, &unk_DEF878);
      v29 = &v13[*(v11 + 36)];
      v30 = *(sub_AB5E60() + 20);
      v31 = enum case for RoundedCornerStyle.continuous(_:);
      v32 = sub_AB63A0();
      (*(*(v32 - 8) + 104))(&v29[v30], v31, v32);
      *v29 = v28;
      *(v29 + 1) = v28;
      *&v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEB20) + 36)] = 256;
      v33 = v48;
      *v13 = v49;
      *(v13 + 1) = v33;
      v34 = v46;
      *(v13 + 2) = v47;
      *(v13 + 3) = v34;
      v13[32] = v44;
      *(v13 + 5) = v45;
      v13[48] = v41;
      *(v13 + 7) = v18;
      *(v13 + 8) = v20;
      *(v13 + 9) = v22;
      *(v13 + 10) = v24;
      v13[88] = 0;
      v35 = *&v85[10];
      *(v13 + 153) = *&v85[8];
      *(v13 + 169) = v35;
      *(v13 + 185) = *&v85[12];
      v36 = *(&v85[13] + 7);
      v37 = *&v85[2];
      *(v13 + 89) = *v85;
      *(v13 + 105) = v37;
      v38 = *&v85[6];
      *(v13 + 121) = *&v85[4];
      *(v13 + 137) = v38;
      *(v13 + 25) = v36;
      *(v13 + 26) = v26;
      v13[216] = v27;
      sub_AB63B0();
      sub_10619C();
      sub_AB7040();
      (*(v50 + 8))(v10, v43);
      return sub_12E1C(v13, &qword_DEFF00);
    }

    goto LABEL_10;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  _s16MusicApplication11EnvironmentCMa_0(0);
  sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0);
  result = sub_AB5F00();
  __break(1u);
  return result;
}

uint64_t sub_F9AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v31 = a1;
  *(&v31 + 1) = a2;
  sub_36A48();

  v6 = sub_AB6F20();
  v8 = v7;
  v10 = v9;
  sub_AB74B0();
  v11 = sub_AB6E10();
  v13 = v12;
  v15 = v14;

  sub_36B74(v6, v8, v10 & 1);

  if (!a3)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  v28 = v35;
  v29 = v36;
  v30 = v37;
  v24 = v31;
  v25 = v32;
  v26 = v33;
  v27 = v34;
  if (!*(&v32 + 1))
  {
    __break(1u);
LABEL_8:
    _s16MusicApplication11EnvironmentCMa_0(0);
    sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0);
    result = sub_AB5F00();
    __break(1u);
    return result;
  }

  v31 = v24;
  v32 = v25;
  v35 = v28;
  v36 = v29;
  v37 = v30;
  v33 = v26;
  v34 = v27;
  if (sub_F7E28() == 1)
  {
    sub_AB6B70();
  }

  else
  {
    sub_AB6CB0();
  }

  sub_12E1C(&v24, &unk_DEF878);
  sub_AB6C10();
  sub_AB6C60();

  v16 = sub_AB6E80();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_36B74(v11, v13, v15 & 1);

  *a4 = v16;
  *(a4 + 8) = v18;
  *(a4 + 16) = v20 & 1;
  *(a4 + 24) = v22;
  return result;
}

uint64_t sub_F9D7C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  *a1 = sub_AB7A30();
  a1[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFEF8);
  return sub_F93D0(v3, v4, v5, a1 + *(v7 + 44));
}

__n128 sub_F9DEC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v19 = a1;
  *(&v19 + 1) = a2;
  sub_36A48();

  v17 = sub_AB6F20();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v12 = v7 & 1;
  LOBYTE(v19) = v7 & 1;
  v13 = swift_getKeyPath();
  sub_AB7A30();
  sub_AB5E90();
  *&v18[55] = v22;
  *&v18[71] = v23;
  *&v18[87] = v24;
  *&v18[103] = v25;
  *&v18[7] = v19;
  *&v18[23] = v20;
  *&v18[39] = v21;
  sub_AB6C40();
  sub_AB6BD0();
  v14 = sub_AB6C60();

  v15 = swift_getKeyPath();
  *(a3 + 137) = *&v18[64];
  *(a3 + 153) = *&v18[80];
  *(a3 + 169) = *&v18[96];
  *(a3 + 73) = *v18;
  *(a3 + 89) = *&v18[16];
  result = *&v18[32];
  *(a3 + 105) = *&v18[32];
  *a3 = v17;
  *(a3 + 8) = v5;
  *(a3 + 16) = v12;
  *(a3 + 24) = v9;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 1;
  *(a3 + 48) = v11;
  *(a3 + 56) = 0x3FEB333333333333;
  *(a3 + 64) = v13;
  *(a3 + 72) = 1;
  *(a3 + 121) = *&v18[48];
  *(a3 + 184) = *(&v25 + 1);
  *(a3 + 192) = v15;
  *(a3 + 200) = v14;
  return result;
}

uint64_t sub_F9FB4()
{

  sub_17654(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t SymbolButton.Update.completion.getter()
{
  v1 = *(v0 + 32);
  sub_307CC(v1);
  return v1;
}

id sub_FA038()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFF58);
  sub_AB68A0();
  v5 = sub_104254(v1, v2, v3, v4);

  return v5;
}

uint64_t sub_FA0C8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFF58);
  sub_AB68A0();
  sub_104254(v1, v2, v3, v4);
}

uint64_t sub_FA148(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  [*(v2 + 112) clearArtworkCatalogs];
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = 0;
  *(v2 + 200) = 0;
  *(v2 + 208) = 0;
}

uint64_t sub_FA1A0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    type metadata accessor for MusicArtwork.Coordinator();
    v4 = swift_allocObject();
    v4[4] = 0;
    v4[5] = 0;
    v4[2] = v2;
    v4[3] = *(v2 + OBJC_IVAR____TtC16MusicApplicationP33_B90BA6543340C30087EC01D228CE8DDA11Environment_artworkComponent);
    *a1 = v4;
  }

  else
  {
    _s16MusicApplication11EnvironmentCMa_0(0);
    sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0);
    result = sub_AB5F00();
    __break(1u);
  }

  return result;
}

__n128 sub_FA2AC(__n128 *a1)
{
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t sub_FA2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_106504();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_FA31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_106504();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_FA380()
{
  sub_106504();
  sub_AB65B0();
  __break(1u);
}

uint64_t sub_FA3A8(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v85 = v2;
  v78 = type metadata accessor for CloseButton(0);
  __chkstk_darwin(v78);
  v79 = (&v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFCD0);
  __chkstk_darwin(v76);
  v77 = &v74 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFCD8);
  v82 = *(v5 - 8);
  v83 = v5;
  v6 = __chkstk_darwin(v5);
  v75 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v74 = &v74 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFCE0);
  v10 = __chkstk_darwin(v9 - 8);
  v84 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v81 = &v74 - v12;
  v13 = type metadata accessor for JSSearchLandingUpsellRegularContentView(0);
  v95 = *(v13 - 8);
  __chkstk_darwin(v13 - 8);
  *&v100 = v14;
  v97 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_AB5790();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v74 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFD38);
  v86 = *(v22 - 8);
  v87 = v22;
  __chkstk_darwin(v22);
  v101 = &v74 - v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFD40);
  __chkstk_darwin(v90);
  v89 = &v74 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFD48);
  v93 = *(v25 - 8);
  v94 = v25;
  __chkstk_darwin(v25);
  v92 = &v74 - v26;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFD50);
  v27 = __chkstk_darwin(v91);
  v80 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v88 = &v74 - v30;
  __chkstk_darwin(v29);
  v96 = &v74 - v31;
  v99 = sub_AB62E0();
  v142 = 0;
  sub_FB408(v1);
  memcpy(v151, v132, sizeof(v151));
  memcpy(v152, v132, 0x268uLL);
  sub_15F84(v151, v131, &qword_DEFD58);
  sub_12E1C(v152, &qword_DEFD58);
  memcpy(&v141[7], v151, 0x268uLL);
  *&v102 = v1;
  v32 = *(v1 + 16);
  if (!v32)
  {
    goto LABEL_18;
  }

  v98 = v142;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  v138 = v132[4];
  v139 = v132[5];
  v140 = v132[6];
  v135 = v132[1];
  v134 = v132[0];
  v137 = v132[3];
  v136 = v132[2];
  if (!*(&v132[1] + 1))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v143 = v134;
  v144 = v135;
  v145 = *(&v132[1] + 1);
  v148 = v138;
  v149 = v139;
  v150 = v140;
  v147 = v137;
  v146 = v136;
  sub_F84F8();
  sub_12E1C(&v134, &unk_DEF878);
  sub_AB7A30();
  sub_AB5970();
  memcpy(v133, v141, sizeof(v133));
  sub_FCCCC(type metadata accessor for JSSearchLandingUpsellRegularContentView, v21);
  (*(v16 + 104))(v19, enum case for ColorScheme.light(_:), v15);
  v33 = sub_AB5780();
  v34 = *(v16 + 8);
  v34(v19, v15);
  v34(v21, v15);
  v35 = objc_opt_self();
  v36 = &selRef_systemBackgroundColor;
  if ((v33 & 1) == 0)
  {
    v36 = &selRef_secondarySystemBackgroundColor;
  }

  v37 = [v35 *v36];
  v38 = sub_AB7510();
  v39 = sub_AB6AA0();
  v131[0] = v99;
  LOBYTE(v131[1]) = v98;
  memcpy(&v131[1] + 1, v133, 0x26FuLL);
  v131[40] = v132[44];
  v131[41] = v132[45];
  v131[42] = v132[46];
  *&v131[43] = v38;
  BYTE8(v131[43]) = v39;
  Corner.extraLarge.unsafeMutableAddressor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFD60);
  sub_105484();
  View.corner(_:)();
  memcpy(v132, v131, 0x2B9uLL);
  sub_12E1C(v132, &qword_DEFD60);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  v131[4] = v128;
  v131[5] = v129;
  v131[6] = v130;
  v131[0] = v124;
  v131[1] = v125;
  v131[2] = v126;
  v131[3] = v127;
  v40 = *(&v125 + 1);
  if (!*(&v125 + 1))
  {
    goto LABEL_14;
  }

  sub_12E1C(v131, &unk_DEF878);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  v124 = v117;
  v125 = v118;
  v128 = v121;
  v129 = v122;
  v130 = v123;
  v126 = v119;
  v127 = v120;
  v41 = v97;
  if (!*(&v118 + 1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v42 = *(&v124 + 1);
  sub_12E1C(&v124, &unk_DEF878);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  v121 = v114;
  v122 = v115;
  v123 = v116;
  v117 = v110;
  v118 = v111;
  v119 = v112;
  v120 = v113;
  v43 = v102;
  if (*(&v111 + 1))
  {
    v44 = v118;
    sub_12E1C(&v117, &unk_DEF878);
    v45 = v89;
    (*(v86 + 32))(v89, v101, v87);
    v46 = (v45 + *(v90 + 36));
    *v46 = v40;
    v46[1] = v42;
    v46[2] = 0;
    v46[3] = v44;
    sub_1040E4(v43, v41, type metadata accessor for JSSearchLandingUpsellRegularContentView);
    v47 = (*(v95 + 80) + 16) & ~*(v95 + 80);
    v48 = swift_allocObject();
    sub_104B8C(v41, v48 + v47, type metadata accessor for JSSearchLandingUpsellRegularContentView);
    sub_105638();
    v49 = v92;
    sub_AB7010();
    sub_12E1C(v45, &qword_DEFD40);

    v50 = _s16MusicApplication11EnvironmentCMa_0(0);
    sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0);

    v101 = v50;
    v51 = sub_AB5490();
    v52 = v88;
    (*(v93 + 32))(v88, v49, v94);
    v53 = &v52[*(v91 + 36)];
    *v53 = v51;
    v53[1] = v32;
    v54 = v52;
    v55 = v96;
    sub_105700(v54, v96);
    if ((JSSearchLandingUpsell.shouldDisplayCloseButton.getter() & 1) == 0)
    {
      v68 = v81;
      (*(v82 + 56))(v81, 1, 1, v83);
      goto LABEL_12;
    }

    sub_1040E4(v43, v41, type metadata accessor for JSSearchLandingUpsellRegularContentView);
    v56 = swift_allocObject();
    sub_104B8C(v41, v56 + v47, type metadata accessor for JSSearchLandingUpsellRegularContentView);
    *&v110 = 0x4008000000000000;
    sub_8150C();
    v57 = v79;
    sub_AB58F0();
    *&v110 = 0x4022000000000000;
    sub_AB58F0();
    *v57 = sub_1057E0;
    v57[1] = v56;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510();

    v114 = v107;
    v115 = v108;
    v116 = v109;
    v110 = v103;
    v111 = v104;
    v112 = v105;
    v113 = v106;
    if (*(&v104 + 1))
    {
      v102 = v112;
      v100 = v113;
      sub_12E1C(&v110, &unk_DEF878);
      v58 = sub_AB6AA0();
      v59 = v77;
      sub_104B8C(v57, v77, type metadata accessor for CloseButton);
      v60 = v59 + *(v76 + 36);
      *v60 = v58;
      *(v60 + 24) = v100;
      *(v60 + 8) = v102;
      *(v60 + 40) = 0;

      v61 = sub_AB5490();
      v62 = v75;
      sub_36B0C(v59, v75, &qword_DEFCD0);
      v63 = v83;
      v64 = (v62 + *(v83 + 36));
      *v64 = v61;
      v64[1] = v32;
      v65 = v62;
      v66 = v74;
      sub_36B0C(v65, v74, &qword_DEFCD8);
      v67 = v66;
      v68 = v81;
      sub_36B0C(v67, v81, &qword_DEFCD8);
      (*(v82 + 56))(v68, 0, 1, v63);
LABEL_12:
      v70 = v84;
      v69 = v85;
      v71 = v80;
      sub_105770(v55, v80);
      sub_15F84(v68, v70, &qword_DEFCE0);
      sub_105770(v71, v69);
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFD98);
      sub_15F84(v70, v69 + *(v72 + 48), &qword_DEFCE0);
      sub_12E1C(v68, &qword_DEFCE0);
      sub_12E1C(v55, &qword_DEFD50);
      sub_12E1C(v70, &qword_DEFCE0);
      return sub_12E1C(v71, &qword_DEFD50);
    }

    goto LABEL_17;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  _s16MusicApplication11EnvironmentCMa_0(0);
  sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0);
  result = sub_AB5F00();
  __break(1u);
  return result;
}

uint64_t sub_FB408(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v4 = JSSearchLandingUpsell.wideArtwork.getter();
  v5 = JSSearchLandingUpsell.wideVideoArtwork.getter();
  v6 = *(v1 + 16);
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = v5;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  v8 = *__src;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  v114[4] = *&__src[64];
  v115 = *&__src[80];
  v116 = *&__src[96];
  v114[0] = *__src;
  v114[1] = *&__src[16];
  v114[2] = *&__src[32];
  v114[3] = *&__src[48];
  if (!*&__src[24])
  {
    __break(1u);
    __break(1u);
    __break(1u);
    goto LABEL_15;
  }

  v9 = *(&v115 + 1);
  sub_12E1C(v114, &unk_DEF878);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  v10 = *__src;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  v108 = *&__src[16];
  v111 = *&__src[64];
  v112 = *&__src[80];
  v113 = *&__src[96];
  v107 = *__src;
  v109 = *&__src[32];
  v110 = *&__src[48];
  v152 = v107;
  v153 = v108;
  v156 = v111;
  v157 = v112;
  v158 = v113;
  v154 = v109;
  v155 = v110;
  sub_F84F8();
  v12 = v11;
  sub_12E1C(&v107, &unk_DEF878);
  _s16MusicApplication11EnvironmentCMa_0(0);
  sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0);
  v47 = sub_AB5F20();
  v45 = v13;

  v46 = sub_AB5490();
  v44 = sub_AB6440();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  v101 = *&__src[16];
  v103 = *&__src[48];
  v104 = *&__src[64];
  v105 = *&__src[80];
  v106 = *&__src[96];
  v100 = *__src;
  v102 = *&__src[32];
  v145 = v100;
  v146 = v101;
  v149 = v104;
  v150 = v105;
  v151 = v106;
  v147 = v102;
  v148 = v103;
  sub_F7F28();
  v15 = v14;
  sub_12E1C(&v100, &unk_DEF878);
  v97 = 0;
  sub_FC288(v1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v88, __src, sizeof(v88));
  sub_15F84(__dst, v54, &qword_DEFDA0);
  sub_12E1C(v88, &qword_DEFDA0);
  memcpy(&v96[7], __dst, 0x170uLL);
  v16 = v97;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  v93 = *&__src[64];
  v94 = *&__src[80];
  v95 = *&__src[96];
  v89 = *__src;
  v90 = *&__src[16];
  v91 = *&__src[32];
  v92 = *&__src[48];
  if (!*&__src[24])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v138 = v89;
  v139 = v90;
  v142 = v93;
  v143 = v94;
  v144 = v95;
  v140 = v91;
  v141 = v92;
  sub_F7D00();
  v18 = v17;
  v20 = v19;
  v42 = v22;
  v43 = v21;
  sub_12E1C(&v89, &unk_DEF878);
  v41 = sub_AB6AA0();
  memcpy(v85, v96, sizeof(v85));
  v98 = 0;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  v86[4] = *&__src[64];
  v86[5] = *&__src[80];
  v86[6] = *&__src[96];
  v86[0] = *__src;
  v86[1] = *&__src[16];
  v86[2] = *&__src[32];
  v86[3] = *&__src[48];
  if (!*&__src[24])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v37 = v20;
  v38 = v18;
  v39 = v15;
  v40 = v12;
  sub_12E1C(v86, &unk_DEF878);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  v23 = *__src;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  v78 = *&__src[16];
  v80 = *&__src[48];
  v81 = *&__src[64];
  v82 = *&__src[80];
  v83 = *&__src[96];
  v77 = *__src;
  v79 = *&__src[32];
  if (!*&__src[24])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24 = v9;
  v25 = v8;
  v36 = v7;
  v131 = v77;
  v132 = v78;
  v135 = v81;
  v136 = v82;
  v137 = v83;
  v133 = v79;
  v134 = v80;
  sub_F84F8();
  v27 = v26;
  sub_12E1C(&v77, &unk_DEF878);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  v28 = *__src;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  v71 = *&__src[16];
  v73 = *&__src[48];
  v74 = *&__src[64];
  v75 = *&__src[80];
  v76 = *&__src[96];
  v70 = *__src;
  v72 = *&__src[32];
  if (!*&__src[24])
  {
LABEL_18:
    __break(1u);
LABEL_19:
    _s16MusicApplication11EnvironmentCMa_0(0);
    sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0);
    result = sub_AB5F00();
    __break(1u);
    return result;
  }

  v124 = v70;
  v125 = v71;
  v128 = v74;
  v129 = v75;
  v130 = v76;
  v29 = v23 * v27;
  v126 = v72;
  v127 = v73;
  sub_F84F8();
  v31 = v30;
  sub_12E1C(&v70, &unk_DEF878);
  sub_AB7A30();
  if (v29 > v28 * v31)
  {
    sub_AB9F40();
    v32 = v16;
    v33 = v4;
    v34 = sub_AB6A40();
    sub_AB4A90();

    v4 = v33;
    v16 = v32;
  }

  sub_AB5E90();
  *&v99[55] = v120;
  *&v99[71] = v121;
  *&v99[87] = v122;
  *&v99[103] = v123;
  *&v99[7] = v117;
  *&v99[23] = v118;
  *&v99[39] = v119;
  *&v50 = v4;
  *(&v50 + 1) = v36;
  *&v51 = v25 * v24;
  *(&v51 + 1) = v10 * v40;
  *&v52 = v47;
  *(&v52 + 1) = v45;
  *&v53 = v46;
  *(&v53 + 1) = v6;
  v49[0] = v50;
  v49[1] = v51;
  v49[2] = v52;
  v49[3] = v53;
  v54[0] = v44;
  v54[1] = v39;
  LOBYTE(v54[2]) = v16;
  memcpy(&v54[2] + 1, v85, 0x177uLL);
  LOBYTE(v54[49]) = v41;
  *(&v54[49] + 1) = *v84;
  HIDWORD(v54[49]) = *&v84[3];
  v54[50] = v38;
  v54[51] = v37;
  v54[52] = v43;
  v54[53] = v42;
  LOBYTE(v54[54]) = 0;
  *(&v54[62] + 1) = *&v99[64];
  *(&v54[64] + 1) = *&v99[80];
  *(&v54[66] + 1) = *&v99[96];
  *(&v54[54] + 1) = *v99;
  *(&v54[56] + 1) = *&v99[16];
  *(&v54[58] + 1) = *&v99[32];
  *(&v54[60] + 1) = *&v99[48];
  v54[68] = *(&v123 + 1);
  memcpy(&v49[4], v54, 0x228uLL);
  memcpy(v3, v49, 0x268uLL);
  *__src = v44;
  *&__src[8] = v39;
  __src[16] = v16;
  memcpy(&__src[17], v85, 0x177uLL);
  v56 = v41;
  *v57 = *v84;
  *&v57[3] = *&v84[3];
  v58 = v38;
  v59 = v37;
  v60 = v43;
  v61 = v42;
  v62 = 0;
  v67 = *&v99[64];
  v68 = *&v99[80];
  *v69 = *&v99[96];
  v63 = *v99;
  v64 = *&v99[16];
  v65 = *&v99[32];
  v66 = *&v99[48];
  *&v69[15] = *&v99[111];
  sub_15F84(&v50, v48, &qword_DEFDA8);
  sub_15F84(v54, v48, &qword_DEFDB0);
  sub_12E1C(__src, &qword_DEFDB0);
  v48[0] = v4;
  v48[1] = v36;
  *&v48[2] = v25 * v24;
  *&v48[3] = v10 * v40;
  v48[4] = v47;
  v48[5] = v45;
  v48[6] = v46;
  v48[7] = v6;
  return sub_12E1C(v48, &qword_DEFDA8);
}

double sub_FC214()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_FC288@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for JSSearchLandingUpsellRegularContentView(0);
  v59 = *(v3 - 8);
  v4 = *(v59 + 64);
  __chkstk_darwin(v3 - 8);
  v60 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = JSSearchLandingUpsell.headline.getter();
  v79 = v6;
  _s16MusicApplication11EnvironmentCMa_0(0);
  sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0);
  v7 = sub_AB5F20();
  v77 = v8;
  v78 = v7;
  KeyPath = swift_getKeyPath();
  v9 = *(a1 + 16);
  if (v9)
  {

    v75 = sub_AB5490();
    v159 = 0;
    v10 = JSSearchLandingUpsell.subtitle.getter();
    v73 = v11;
    v74 = v10;
    v12 = sub_AB5F20();
    v71 = v13;
    v72 = v12;
    v69 = swift_getKeyPath();
    v70 = sub_AB6AC0();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510();

    v156 = v127;
    v157 = v128;
    v158 = v129;
    v153 = v124;
    v152 = v123;
    v155 = v126;
    v154 = v125;
    if (*(&v124 + 1))
    {
      v58 = a1;
      v68 = v5;
      v168 = v152;
      v169 = v153;
      v170 = *(&v124 + 1);
      v173 = v156;
      v174 = v157;
      v175 = v158;
      v172 = v155;
      v171 = v154;
      sub_F8024();
      sub_12E1C(&v152, &unk_DEF878);
      sub_AB5690();
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v149 = 0;
      v148 = 0;

      v67 = sub_AB5490();
      v22 = JSSearchLandingUpsell.primaryButtonTitle.getter();
      v65 = v23;
      v66 = v22;
      v24 = sub_AB5F20();
      v63 = v25;
      v64 = v24;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_AB5510();

      v145 = v127;
      v146 = v128;
      v147 = v129;
      v142 = v124;
      v141 = v123;
      v144 = v126;
      v143 = v125;
      if (*(&v124 + 1))
      {
        v160 = v141;
        v161 = v142;
        v162 = *(&v124 + 1);
        v167 = v147;
        v166 = v146;
        v165 = v145;
        v163 = v143;
        v164 = v144;
        sub_F8414();
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;
        sub_12E1C(&v141, &unk_DEF878);
        v62 = sub_AB6AA0();
        v136 = 0;

        v34 = sub_AB5490();
        v55 = v34;
        v35 = JSSearchLandingUpsell.accessoryButtonTitle.getter();
        v56 = v36;
        v57 = v35;
        v37 = v60;
        sub_1040E4(v58, v60, type metadata accessor for JSSearchLandingUpsellRegularContentView);
        v38 = (*(v59 + 80) + 16) & ~*(v59 + 80);
        v39 = swift_allocObject();
        sub_104B8C(v37, v39 + v38, type metadata accessor for JSSearchLandingUpsellRegularContentView);
        v40 = sub_AB5F20();
        v60 = v41;
        v59 = swift_getKeyPath();
        v82 = 0;

        v42 = sub_AB5490();
        *&v83 = v68;
        *(&v83 + 1) = v79;
        *&v84 = v78;
        *(&v84 + 1) = v77;
        *&v85 = KeyPath;
        *(&v85 + 1) = 7;
        LOBYTE(v86) = 0;
        *(&v86 + 1) = *v151;
        DWORD1(v86) = *&v151[3];
        *(&v86 + 1) = v75;
        v87 = v9;
        *&v80[4] = v9;
        v80[2] = v85;
        v80[3] = v86;
        v80[0] = v83;
        v80[1] = v84;
        *&v88 = v74;
        *(&v88 + 1) = v73;
        *&v89 = v72;
        *(&v89 + 1) = v71;
        *&v90 = v69;
        *(&v90 + 1) = 6;
        LOBYTE(v91) = 0;
        DWORD1(v91) = *&v140[3];
        *(&v91 + 1) = *v140;
        BYTE8(v91) = v70;
        HIDWORD(v91) = *&v139[3];
        *(&v91 + 9) = *v139;
        *&v92 = v15;
        *(&v92 + 1) = v17;
        *&v93 = v19;
        *(&v93 + 1) = v21;
        LOBYTE(v94) = 0;
        DWORD1(v94) = *&v150[3];
        *(&v94 + 1) = *v150;
        *(&v94 + 1) = v67;
        v95 = v9;
        *(&v80[11] + 1) = v9;
        *(&v80[10] + 8) = v94;
        *(&v80[9] + 8) = v93;
        *(&v80[8] + 8) = v92;
        *(&v80[7] + 8) = v91;
        *(&v80[6] + 8) = v90;
        *(&v80[5] + 8) = v89;
        *(&v80[4] + 8) = v88;
        *&v96 = v66;
        *(&v96 + 1) = v65;
        *&v97 = v64;
        *(&v97 + 1) = v63;
        LOBYTE(v98) = v62;
        DWORD1(v98) = *&v137[3];
        *(&v98 + 1) = *v137;
        *(&v98 + 1) = v27;
        *&v99 = v29;
        *(&v99 + 1) = v31;
        *&v100 = v33;
        BYTE8(v100) = 0;
        HIDWORD(v100) = *&v138[3];
        *(&v100 + 9) = *v138;
        *&v101 = v34;
        *(&v101 + 1) = v9;
        v80[12] = v96;
        v80[13] = v97;
        v80[16] = v100;
        v80[17] = v101;
        v80[14] = v98;
        v80[15] = v99;
        v43 = v56;
        v44 = v57;
        *&v102 = v57;
        *(&v102 + 1) = v56;
        HIDWORD(v105) = *&v81[3];
        *(&v105 + 9) = *v81;
        *&v103 = sub_105814;
        v45 = v39;
        *(&v103 + 1) = v39;
        v46 = v40;
        *&v104 = v40;
        v48 = v59;
        v47 = v60;
        *(&v104 + 1) = v60;
        *&v105 = v59;
        BYTE8(v105) = v82;
        v49 = v9;
        v54 = v9;
        v50 = v82;
        v51 = v42;
        *&v106 = v42;
        *(&v106 + 1) = v49;
        v80[21] = v105;
        v80[22] = v106;
        v80[19] = v103;
        v80[20] = v104;
        v80[18] = v102;
        memcpy(v61, v80, 0x170uLL);
        v107[0] = v44;
        v107[1] = v43;
        v107[2] = sub_105814;
        v107[3] = v45;
        v107[4] = v46;
        v107[5] = v47;
        v107[6] = v48;
        v108 = v50;
        *v109 = *v81;
        *&v109[3] = *&v81[3];
        v110 = v51;
        v52 = v54;
        v111 = v54;
        sub_15F84(&v83, &v123, &qword_DEFDB8);
        sub_15F84(&v88, &v123, &qword_DEFDC0);
        sub_15F84(&v96, &v123, &qword_DEFDC8);
        sub_15F84(&v102, &v123, &qword_DEFD28);
        sub_12E1C(v107, &qword_DEFD28);
        v112[0] = v66;
        v112[1] = v65;
        v112[2] = v64;
        v112[3] = v63;
        v113 = v62;
        *v114 = *v137;
        *&v114[3] = *&v137[3];
        v115 = v27;
        v116 = v29;
        v117 = v31;
        v118 = v33;
        v119 = 0;
        *v120 = *v138;
        *&v120[3] = *&v138[3];
        v121 = v55;
        v122 = v52;
        sub_12E1C(v112, &qword_DEFDC8);
        *&v123 = v74;
        *(&v123 + 1) = v73;
        *&v124 = v72;
        *(&v124 + 1) = v71;
        *&v125 = v69;
        *(&v125 + 1) = 6;
        LOBYTE(v126) = 0;
        *(&v126 + 1) = *v140;
        DWORD1(v126) = *&v140[3];
        BYTE8(v126) = v70;
        *(&v126 + 9) = *v139;
        HIDWORD(v126) = *&v139[3];
        *&v127 = v15;
        *(&v127 + 1) = v17;
        *&v128 = v19;
        *(&v128 + 1) = v21;
        LOBYTE(v129) = 0;
        DWORD1(v129) = *&v150[3];
        *(&v129 + 1) = *v150;
        *(&v129 + 1) = v67;
        v130 = v52;
        sub_12E1C(&v123, &qword_DEFDC0);
        v131[0] = v68;
        v131[1] = v79;
        v131[2] = v78;
        v131[3] = v77;
        v131[4] = KeyPath;
        v131[5] = 7;
        v132 = 0;
        *v133 = *v151;
        *&v133[3] = *&v151[3];
        v134 = v75;
        v135 = v52;
        return sub_12E1C(v131, &qword_DEFDB8);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  result = sub_AB5F00();
  __break(1u);
  return result;
}

double sub_FCC48@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_FCCCC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_AB6240();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFAE0);
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  v12 = a1(0);
  sub_15F84(v2 + *(v12 + 24), v11, &qword_DEFAE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_AB5790();
    return (*(*(v13 - 8) + 32))(a2, v11, v13);
  }

  else
  {
    sub_AB9F40();
    v15 = sub_AB6A40();
    sub_AB4A90();

    sub_AB6230();
    swift_getAtKeyPath();
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_FCEDC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_AB7A00();
  a1[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFD30);
  return sub_FA3A8(v1);
}

uint64_t sub_FCF28@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = type metadata accessor for JSSearchLandingUpsellCompactContentView(0);
  v58 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v59 = v3;
  v60 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_AB5790();
  v4 = *(v64 - 8);
  v5 = __chkstk_darwin(v64);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFC70);
  __chkstk_darwin(v10 - 8);
  v12 = (&v51 - v11);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFC78);
  __chkstk_darwin(v62);
  v14 = &v51 - v13;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFC80);
  __chkstk_darwin(v63);
  v16 = &v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFC88);
  v51 = *(v17 - 8);
  v52 = v17;
  __chkstk_darwin(v17);
  v65 = &v51 - v18;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFC90);
  __chkstk_darwin(v54);
  v53 = &v51 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFC98);
  v56 = *(v20 - 8);
  v57 = v20;
  __chkstk_darwin(v20);
  v55 = &v51 - v21;
  *v12 = sub_AB7A00();
  v12[1] = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFCA0);
  sub_FD918(v1, v12 + *(v23 + 44));
  v66 = v1;
  v24 = *(v1 + 16);
  if (!v24)
  {
    goto LABEL_13;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  v93 = v100;
  v94 = v101;
  v95 = v102;
  v89 = v96;
  v90 = v97;
  v91 = v98;
  v92 = v99;
  if (!*(&v97 + 1))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v96 = v89;
  *&v97 = v90;
  v100 = v93;
  v101 = v94;
  v102 = v95;
  v98 = v91;
  v99 = v92;
  sub_F84F8();
  v26 = v25;
  sub_12E1C(&v89, &unk_DEF878);
  sub_36B0C(v12, v14, &qword_DEFC70);
  v27 = &v14[*(v62 + 36)];
  *v27 = v26;
  *(v27 + 4) = 0;
  sub_FCCCC(type metadata accessor for JSSearchLandingUpsellCompactContentView, v9);
  v28 = v64;
  (*(v4 + 104))(v7, enum case for ColorScheme.light(_:), v64);
  v29 = sub_AB5780();
  v30 = *(v4 + 8);
  v30(v7, v28);
  v30(v9, v28);
  v31 = objc_opt_self();
  v32 = &selRef_systemBackgroundColor;
  if ((v29 & 1) == 0)
  {
    v32 = &selRef_secondarySystemBackgroundColor;
  }

  v33 = [v31 *v32];
  v34 = sub_AB7510();
  v35 = sub_AB6AA0();
  sub_36B0C(v14, v16, &qword_DEFC78);
  v36 = &v16[*(v63 + 36)];
  *v36 = v34;
  v36[8] = v35;
  Corner.extraLarge.unsafeMutableAddressor();
  sub_104F78();
  v37 = v65;
  View.corner(_:)();
  sub_12E1C(v16, &qword_DEFC80);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  v88[4] = v85;
  v88[5] = v86;
  v88[6] = v87;
  v88[0] = v81;
  v88[1] = v82;
  v88[2] = v83;
  v88[3] = v84;
  v38 = *(&v82 + 1);
  if (!*(&v82 + 1))
  {
    goto LABEL_10;
  }

  sub_12E1C(v88, &unk_DEF878);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  v81 = v74;
  v82 = v75;
  v85 = v78;
  v86 = v79;
  v87 = v80;
  v83 = v76;
  v84 = v77;
  if (*(&v75 + 1))
  {
    v39 = *(&v81 + 1);
    sub_12E1C(&v81, &unk_DEF878);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510();

    v78 = v71;
    v79 = v72;
    v80 = v73;
    v74 = v67;
    v75 = v68;
    v76 = v69;
    v77 = v70;
    if (*(&v68 + 1))
    {
      v40 = v75;
      sub_12E1C(&v74, &unk_DEF878);
      v41 = v53;
      (*(v51 + 32))(v53, v37, v52);
      v42 = (v41 + *(v54 + 36));
      *v42 = v38;
      v42[1] = v39;
      v42[2] = 0;
      v42[3] = v40;
      v43 = v60;
      sub_1040E4(v66, v60, type metadata accessor for JSSearchLandingUpsellCompactContentView);
      v44 = (*(v58 + 80) + 16) & ~*(v58 + 80);
      v45 = swift_allocObject();
      sub_104B8C(v43, v45 + v44, type metadata accessor for JSSearchLandingUpsellCompactContentView);
      sub_105114();
      v46 = v55;
      sub_AB7010();
      sub_12E1C(v41, &qword_DEFC90);

      _s16MusicApplication11EnvironmentCMa_0(0);
      sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0);

      v47 = sub_AB5490();
      v48 = v61;
      (*(v56 + 32))(v61, v46, v57);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFCC8);
      v50 = (v48 + *(result + 36));
      *v50 = v47;
      v50[1] = v24;
      return result;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  _s16MusicApplication11EnvironmentCMa_0(0);
  sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0);
  result = sub_AB5F00();
  __break(1u);
  return result;
}

uint64_t sub_FD918@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v48 = a2;
  v3 = type metadata accessor for JSSearchLandingUpsellCompactContentView(0);
  *&v43 = *(v3 - 8);
  v4 = *(v43 + 64);
  __chkstk_darwin(v3 - 8);
  *&v44 = type metadata accessor for CloseButton(0);
  __chkstk_darwin(v44);
  v6 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFCD0);
  __chkstk_darwin(v39);
  v42 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFCD8);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v41 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v40 = &v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFCE0);
  v14 = __chkstk_darwin(v13 - 8);
  v46 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v37 - v16;
  v47 = sub_AB6440();
  v52 = 1;
  sub_FE060(a1, v50);
  memcpy(v53, v50, 0x1B3uLL);
  memcpy(v54, v50, 0x1B3uLL);
  sub_15F84(v53, v49, &qword_DEFCE8);
  sub_12E1C(v54, &qword_DEFCE8);
  memcpy(&v51[7], v53, 0x1B3uLL);
  v45 = v52;
  if ((JSSearchLandingUpsell.shouldDisplayCloseButton.getter() & 1) == 0)
  {
    (*(v9 + 56))(v17, 1, 1, v8);
    goto LABEL_6;
  }

  v38 = v9;
  sub_1040E4(a1, &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for JSSearchLandingUpsellCompactContentView);
  v18 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v19 = swift_allocObject();
  sub_104B8C(&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for JSSearchLandingUpsellCompactContentView);
  *&v50[0] = 0x4008000000000000;
  sub_8150C();
  sub_AB58F0();
  *&v50[0] = 0x4022000000000000;
  sub_AB58F0();
  *v6 = sub_105390;
  v6[1] = v19;
  v20 = *(a1 + 16);
  if (v20)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510();

    v50[4] = v49[4];
    v50[5] = v49[5];
    v50[6] = v49[6];
    v50[0] = v49[0];
    v50[1] = v49[1];
    v50[2] = v49[2];
    v50[3] = v49[3];
    v21 = v38;
    if (*(&v49[1] + 1))
    {
      v43 = v50[3];
      v44 = v50[2];
      sub_12E1C(v50, &unk_DEF878);
      v22 = sub_AB6AA0();
      v23 = v42;
      sub_104B8C(v6, v42, type metadata accessor for CloseButton);
      v24 = v23 + *(v39 + 36);
      *v24 = v22;
      v25 = v44;
      *(v24 + 24) = v43;
      *(v24 + 8) = v25;
      *(v24 + 40) = 0;
      _s16MusicApplication11EnvironmentCMa_0(0);
      sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0);

      v26 = sub_AB5490();
      v27 = v23;
      v28 = v41;
      sub_36B0C(v27, v41, &qword_DEFCD0);
      v29 = (v28 + *(v8 + 36));
      *v29 = v26;
      v29[1] = v20;
      v30 = v40;
      sub_36B0C(v28, v40, &qword_DEFCD8);
      sub_36B0C(v30, v17, &qword_DEFCD8);
      (*(v21 + 56))(v17, 0, 1, v8);
LABEL_6:
      v31 = v46;
      sub_15F84(v17, v46, &qword_DEFCE0);
      v32 = v47;
      v49[0] = v47;
      v33 = v45;
      LOBYTE(v49[1]) = v45;
      memcpy(&v49[1] + 1, v51, 0x1BAuLL);
      v34 = v48;
      memcpy(v48, v49, 0x1CBuLL);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFCF0);
      sub_15F84(v31, v34 + *(v35 + 48), &qword_DEFCE0);
      sub_15F84(v49, v50, &qword_DEFCF8);
      sub_12E1C(v17, &qword_DEFCE0);
      sub_12E1C(v31, &qword_DEFCE0);
      v50[0] = v32;
      LOBYTE(v50[1]) = v33;
      memcpy(&v50[1] + 1, v51, 0x1BAuLL);
      return sub_12E1C(v50, &qword_DEFCF8);
    }

    __break(1u);
  }

  _s16MusicApplication11EnvironmentCMa_0(0);
  sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0);
  result = sub_AB5F00();
  __break(1u);
  return result;
}

uint64_t sub_FE060@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = JSSearchLandingUpsell.tallArtwork.getter();
  v5 = JSSearchLandingUpsell.tallVideoArtwork.getter();
  if (*(a1 + 16))
  {
    v27 = v5;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510();

    v6 = *__src;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510();

    v7 = *__src;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510();

    v71[1] = *&__src[16];
    v72 = *&__src[80];
    v71[3] = *&__src[48];
    v71[4] = *&__src[64];
    v73 = *&__src[96];
    v71[0] = *__src;
    v71[2] = *&__src[32];
    if (*&__src[24])
    {
      v8 = *&v72;
      sub_12E1C(v71, &unk_DEF878);
      _s16MusicApplication11EnvironmentCMa_0(0);
      sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0);
      v9 = sub_AB5F20();
      v26 = v10;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_AB5510();

      swift_getKeyPath();
      swift_getKeyPath();

      sub_AB5510();

      swift_getKeyPath();
      swift_getKeyPath();

      sub_AB5510();

      v70[1] = *&__src[16];
      v70[3] = *&__src[48];
      v70[4] = *&__src[64];
      v70[5] = *&__src[80];
      v70[6] = *&__src[96];
      v70[0] = *__src;
      v70[2] = *&__src[32];
      sub_12E1C(v70, &unk_DEF878);
      sub_AB7A30();
      sub_AB5970();
      v11 = sub_AB6440();
      swift_getKeyPath();
      swift_getKeyPath();

      sub_AB5510();

      v64 = *&__src[16];
      v66 = *&__src[48];
      v67 = *&__src[64];
      v68 = *&__src[80];
      v69 = *&__src[96];
      v63 = *__src;
      v65 = *&__src[32];
      v81 = v63;
      v82 = v64;
      v84 = v66;
      v85 = v67;
      v86 = v68;
      v87 = v69;
      v83 = v65;
      sub_F7F28();
      v13 = v12;
      sub_12E1C(&v63, &unk_DEF878);
      v58 = 0;
      sub_FE8F4(a1, __src);
      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v49, __src, sizeof(v49));
      sub_15F84(__dst, v39, &qword_DEFD00);
      sub_12E1C(v49, &qword_DEFD00);
      memcpy(&v57[7], __dst, 0x110uLL);
      v14 = v58;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_AB5510();

      v51 = *&__src[16];
      v53 = *&__src[48];
      v54 = *&__src[64];
      v55 = *&__src[80];
      v56 = *&__src[96];
      v50 = *__src;
      v52 = *&__src[32];
      if (*&__src[24])
      {
        v15 = v7 * v8;
        v74 = v50;
        v75 = v51;
        v77 = v53;
        v78 = v54;
        v79 = v55;
        v80 = v56;
        v76 = v52;
        sub_F7D00();
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        sub_12E1C(&v50, &unk_DEF878);
        v24 = sub_AB6AA0();
        v59 = 0;
        *&v33 = v4;
        *(&v33 + 1) = v27;
        *&v34 = v6;
        *(&v34 + 1) = v15;
        *&v35 = v9;
        *(&v35 + 1) = v26;
        v36 = v60;
        v37 = v61;
        v38 = v62;
        v32[4] = v61;
        v32[5] = v62;
        v32[2] = v35;
        v32[3] = v60;
        v32[0] = v33;
        v32[1] = v34;
        v39[0] = v11;
        v39[1] = v13;
        LOBYTE(v39[2]) = v14;
        memcpy(&v39[2] + 1, v57, 0x117uLL);
        LOBYTE(v39[37]) = v24;
        v39[38] = v17;
        v39[39] = v19;
        v39[40] = v21;
        v39[41] = v23;
        LOBYTE(v39[42]) = 0;
        *(&v39[42] + 1) = 256;
        memcpy(&v32[6], v39, 0x153uLL);
        memcpy(a2, v32, 0x1B3uLL);
        *__src = v11;
        *&__src[8] = v13;
        __src[16] = v14;
        memcpy(&__src[17], v57, 0x117uLL);
        v41 = v24;
        v42 = v17;
        v43 = v19;
        v44 = v21;
        v45 = v23;
        v46 = 0;
        v47 = 256;
        sub_15F84(&v33, v28, &qword_DEFD08);
        sub_15F84(v39, v28, &qword_DEFD10);
        sub_12E1C(__src, &qword_DEFD10);
        v28[0] = v4;
        v28[1] = v27;
        v28[2] = v6;
        *&v28[3] = v15;
        v28[4] = v9;
        v28[5] = v26;
        v29 = v60;
        v30 = v61;
        v31 = v62;
        return sub_12E1C(v28, &qword_DEFD08);
      }
    }

    else
    {
      __break(1u);
      __break(1u);
      __break(1u);
    }

    __break(1u);
  }

  _s16MusicApplication11EnvironmentCMa_0(0);
  sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0);
  result = sub_AB5F00();
  __break(1u);
  return result;
}

uint64_t sub_FE8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for JSSearchLandingUpsellCompactContentView(0);
  v75 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  KeyPath = v5;
  v77 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = JSSearchLandingUpsell.headline.getter();
  v7 = v6;
  v8 = _s16MusicApplication11EnvironmentCMa_0(0);
  v9 = sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0);
  v10 = sub_AB5F20();
  v79 = v11;
  v12 = JSSearchLandingUpsell.subtitle.getter();
  v88 = v13;
  v89 = v12;
  v90 = v9;
  v14 = sub_AB5F20();
  v86 = v15;
  v87 = v14;
  v85 = sub_AB6AC0();
  v78 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510();

    v143 = v158;
    v144 = v159;
    v145 = v160;
    v139 = v154;
    v140 = v155;
    v141 = v156;
    v142 = v157;
    if (*(&v155 + 1))
    {
      v73 = v10;
      v74 = v7;
      v154 = v139;
      v155 = v140;
      v158 = v143;
      v159 = v144;
      v160 = v145;
      v156 = v141;
      v157 = v142;
      sub_F8024();
      sub_12E1C(&v139, &unk_DEF878);
      sub_AB5690();
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v146 = 0;
      v25 = JSSearchLandingUpsell.primaryButtonTitle.getter();
      v83 = v26;
      v84 = v25;
      v72 = v8;
      v27 = sub_AB5F20();
      v81 = v28;
      v82 = v27;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_AB5510();

      v136 = v151;
      v137 = v152;
      v138 = v153;
      v132 = v147;
      v133 = v148;
      v134 = v149;
      v135 = v150;
      if (*(&v148 + 1))
      {
        v147 = v132;
        v148 = v133;
        v151 = v136;
        v152 = v137;
        v153 = v138;
        v149 = v134;
        v150 = v135;
        sub_F8414();
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;
        sub_12E1C(&v132, &unk_DEF878);
        v37 = sub_AB6AA0();
        v38 = v37;
        v71 = v37;
        v129 = 0;
        v39 = JSSearchLandingUpsell.accessoryButtonTitle.getter();
        v69 = v40;
        v70 = v39;
        v41 = v77;
        sub_1040E4(v78, v77, type metadata accessor for JSSearchLandingUpsellCompactContentView);
        v42 = (*(v75 + 80) + 16) & ~*(v75 + 80);
        v43 = swift_allocObject();
        sub_104B8C(v41, v43 + v42, type metadata accessor for JSSearchLandingUpsellCompactContentView);
        v44 = sub_AB5F20();
        v77 = v45;
        v78 = v44;
        KeyPath = swift_getKeyPath();
        v102 = 0;

        v46 = sub_AB5490();
        v47 = v102;
        *&v103 = v89;
        *(&v103 + 1) = v88;
        *&v104 = v87;
        *(&v104 + 1) = v86;
        LOBYTE(v105) = v85;
        *(&v105 + 1) = *v131;
        DWORD1(v105) = *&v131[3];
        *(&v105 + 1) = v18;
        *&v106[0] = v20;
        *(&v106[0] + 1) = v22;
        *&v106[1] = v24;
        BYTE8(v106[1]) = 0;
        *&v107 = v84;
        *(&v107 + 1) = v83;
        *&v108 = v82;
        *(&v108 + 1) = v81;
        LOBYTE(v109) = v38;
        DWORD1(v109) = *&v130[3];
        *(&v109 + 1) = *v130;
        *(&v109 + 1) = v30;
        *&v110[0] = v32;
        *(&v110[0] + 1) = v34;
        *&v110[1] = v36;
        BYTE8(v110[1]) = 0;
        *(v100 + 7) = v107;
        v100[4] = *(v110 + 9);
        *(&v100[3] + 7) = v110[0];
        *(&v100[2] + 7) = v109;
        *(&v100[1] + 7) = v108;
        v49 = v69;
        v48 = v70;
        *&v111 = v70;
        *(&v111 + 1) = v69;
        *&v112 = sub_105428;
        *(&v112 + 1) = v43;
        v51 = v77;
        v50 = v78;
        *&v113 = v78;
        *(&v113 + 1) = v77;
        v52 = KeyPath;
        *&v114 = KeyPath;
        BYTE8(v114) = v102;
        HIDWORD(v114) = *&v101[3];
        *(&v114 + 9) = *v101;
        *&v115 = v46;
        *(&v115 + 1) = v16;
        *&v99[7] = v111;
        *&v99[71] = v115;
        *&v99[55] = v114;
        *&v99[39] = v113;
        *&v99[23] = v112;
        v53 = v79;
        v55 = v73;
        v54 = v74;
        *a2 = v80;
        *(a2 + 8) = v54;
        *(a2 + 16) = v55;
        *(a2 + 24) = v53;
        v56 = v103;
        v57 = v104;
        v58 = v105;
        *(a2 + 89) = *(v106 + 9);
        v59 = v106[0];
        *(a2 + 64) = v58;
        *(a2 + 80) = v59;
        *(a2 + 32) = v56;
        *(a2 + 48) = v57;
        *(a2 + 105) = v100[0];
        v60 = v100[1];
        v61 = v100[2];
        v62 = v100[3];
        *(a2 + 169) = v100[4];
        *(a2 + 153) = v62;
        *(a2 + 137) = v61;
        *(a2 + 121) = v60;
        v63 = *v99;
        *(a2 + 201) = *&v99[16];
        *(a2 + 185) = v63;
        v64 = *&v99[32];
        v65 = *&v99[48];
        v66 = *&v99[64];
        *(a2 + 264) = *&v99[79];
        *(a2 + 249) = v66;
        *(a2 + 233) = v65;
        *(a2 + 217) = v64;
        v116[0] = v48;
        v116[1] = v49;
        v116[2] = sub_105428;
        v116[3] = v43;
        v116[4] = v50;
        v116[5] = v51;
        v116[6] = v52;
        v117 = v47;
        *&v118[3] = *&v101[3];
        *v118 = *v101;
        v119 = v46;
        v120 = v16;

        sub_15F84(&v103, v91, &qword_DEFD18);
        sub_15F84(&v107, v91, &qword_DEFD20);
        sub_15F84(&v111, v91, &qword_DEFD28);
        sub_12E1C(v116, &qword_DEFD28);
        v121[0] = v84;
        v121[1] = v83;
        v121[2] = v82;
        v121[3] = v81;
        v122 = v71;
        *v123 = *v130;
        *&v123[3] = *&v130[3];
        v124 = v30;
        v125 = v32;
        v126 = v34;
        v127 = v36;
        v128 = 0;
        sub_12E1C(v121, &qword_DEFD20);
        v91[0] = v89;
        v91[1] = v88;
        v91[2] = v87;
        v91[3] = v86;
        v92 = v85;
        *v93 = *v131;
        *&v93[3] = *&v131[3];
        v94 = v18;
        v95 = v20;
        v96 = v22;
        v97 = v24;
        v98 = 0;
        sub_12E1C(v91, &qword_DEFD18);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  result = sub_AB5F00();
  __break(1u);
  return result;
}

uint64_t sub_FF06C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510();

    if (v3)
    {

      sub_1051DC(v3);

      v4(v1);
    }
  }

  else
  {
    _s16MusicApplication11EnvironmentCMa_0(0);
    sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0);
    result = sub_AB5F00();
    __break(1u);
  }

  return result;
}

uint64_t sub_FF1B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510();

    if (v3)
    {

      sub_1051DC(v3);

      v4(v1);
    }
  }

  else
  {
    _s16MusicApplication11EnvironmentCMa_0(0);
    sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0);
    result = sub_AB5F00();
    __break(1u);
  }

  return result;
}

uint64_t sub_FF2F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510();

    if (v3)
    {

      sub_1051DC(v3);

      v3(v1);
    }
  }

  else
  {
    _s16MusicApplication11EnvironmentCMa_0(0);
    sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0);
    result = sub_AB5F00();
    __break(1u);
  }

  return result;
}

double sub_FF438@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_FF4B8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

double sub_FF534@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_FF5BC(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_104094(v1);
  return sub_AB5520();
}

__n128 sub_FF674@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  result = v4;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_FF724(_OWORD *a1)
{
  v2 = a1[5];
  v10[4] = a1[4];
  v10[5] = v2;
  v10[6] = a1[6];
  v3 = a1[1];
  v10[0] = *a1;
  v10[1] = v3;
  v4 = a1[3];
  v10[2] = a1[2];
  v10[3] = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1[5];
  v9[11] = a1[4];
  v9[12] = v5;
  v9[13] = a1[6];
  v6 = a1[1];
  v9[7] = *a1;
  v9[8] = v6;
  v7 = a1[3];
  v9[9] = a1[2];
  v9[10] = v7;

  sub_15F84(v10, v9, &unk_DEF878);
  return sub_AB5520();
}

uint64_t sub_FF7F8()
{
  v1 = OBJC_IVAR____TtC16MusicApplicationP33_B90BA6543340C30087EC01D228CE8DDA11Environment__width;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MusicApplicationP33_B90BA6543340C30087EC01D228CE8DDA11Environment__actions;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF990);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC16MusicApplicationP33_B90BA6543340C30087EC01D228CE8DDA11Environment__specs;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF998);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_FF948()
{
  v1 = v0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF998);
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF990);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = OBJC_IVAR____TtC16MusicApplicationP33_B90BA6543340C30087EC01D228CE8DDA11Environment__width;
  *&v22 = 0;
  sub_AB54D0();
  (*(v10 + 32))(v1 + v13, v12, v9);
  v14 = OBJC_IVAR____TtC16MusicApplicationP33_B90BA6543340C30087EC01D228CE8DDA11Environment__actions;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF868);
  sub_AB54D0();
  (*(v6 + 32))(v1 + v14, v8, v5);
  v15 = OBJC_IVAR____TtC16MusicApplicationP33_B90BA6543340C30087EC01D228CE8DDA11Environment__specs;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEF878);
  sub_AB54D0();
  (*(v2 + 32))(v1 + v15, v4, v21);
  v16 = OBJC_IVAR____TtC16MusicApplicationP33_B90BA6543340C30087EC01D228CE8DDA11Environment_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v18 = sub_80104(v17);

  *(v1 + v16) = v18;
  return v1;
}

uint64_t sub_FFC54@<X0>(uint64_t a1@<X8>)
{
  v96 = a1;
  v83 = type metadata accessor for JSSearchLandingUpsellRegularContentView(0);
  __chkstk_darwin(v83);
  v85 = (&v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFAB0);
  __chkstk_darwin(v84);
  v87 = &v76 - v3;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFAB8);
  v4 = __chkstk_darwin(v95);
  v86 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v88 = &v76 - v6;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFAC0);
  __chkstk_darwin(v93);
  v94 = &v76 - v7;
  v77 = type metadata accessor for JSSearchLandingUpsellCompactContentView(0);
  __chkstk_darwin(v77);
  v79 = (&v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFAC8);
  __chkstk_darwin(v78);
  v81 = &v76 - v9;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFAD0);
  v10 = __chkstk_darwin(v92);
  v80 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v82 = &v76 - v12;
  v13 = sub_AB6790();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v76 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFAD8);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v76 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF9E0);
  v21 = __chkstk_darwin(v20 - 8);
  v89 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v76 - v24;
  __chkstk_darwin(v23);
  v27 = &v76 - v26;
  v90 = type metadata accessor for JSSearchLandingUpsellView(0);
  v91 = v1;
  sub_F7B20(v27);
  (*(v14 + 104))(v25, enum case for UserInterfaceSizeClass.compact(_:), v13);
  (*(v14 + 56))(v25, 0, 1, v13);
  v28 = *(v17 + 56);
  sub_15F84(v27, v19, &qword_DEF9E0);
  sub_15F84(v25, &v19[v28], &qword_DEF9E0);
  v29 = *(v14 + 48);
  if (v29(v19, 1, v13) == 1)
  {
    sub_12E1C(v25, &qword_DEF9E0);
    sub_12E1C(v27, &qword_DEF9E0);
    if (v29(&v19[v28], 1, v13) == 1)
    {
      sub_12E1C(v19, &qword_DEF9E0);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_15F84(v19, v89, &qword_DEF9E0);
  if (v29(&v19[v28], 1, v13) == 1)
  {
    sub_12E1C(v25, &qword_DEF9E0);
    sub_12E1C(v27, &qword_DEF9E0);
    (*(v14 + 8))(v89, v13);
LABEL_6:
    sub_12E1C(v19, &qword_DEFAD8);
    goto LABEL_7;
  }

  v51 = &v19[v28];
  v52 = v76;
  (*(v14 + 32))(v76, v51, v13);
  sub_103D2C(&qword_DEFB18, &type metadata accessor for UserInterfaceSizeClass);
  v53 = v89;
  v54 = sub_AB91C0();
  v55 = *(v14 + 8);
  v55(v52, v13);
  sub_12E1C(v25, &qword_DEF9E0);
  sub_12E1C(v27, &qword_DEF9E0);
  v55(v53, v13);
  sub_12E1C(v19, &qword_DEF9E0);
  if (v54)
  {
LABEL_10:
    v56 = v91;
    v57 = *(v91 + 8);
    _s16MusicApplication11EnvironmentCMa_0(0);
    sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0);
    v58 = v57;
    v59 = sub_AB5F20();
    v61 = v60;
    KeyPath = swift_getKeyPath();
    v63 = v79;
    *(v79 + *(v77 + 24)) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFAE0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for JSSearchLandingUpsell();
    sub_103D2C(&qword_DEF9B0, type metadata accessor for JSSearchLandingUpsell);
    *v63 = sub_AB5B50();
    v63[1] = v64;
    v63[2] = v59;
    v63[3] = v61;
    v65 = *(v56 + *(v90 + 24));
    if (v65)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_AB5510();

      sub_AB7A30();
      sub_AB5E90();
      v66 = v81;
      sub_104B8C(v63, v81, type metadata accessor for JSSearchLandingUpsellCompactContentView);
      v67 = (v66 + *(v78 + 36));
      v68 = v102;
      v67[4] = v101;
      v67[5] = v68;
      v67[6] = v103;
      v69 = v98;
      *v67 = v97;
      v67[1] = v69;
      v70 = v100;
      v67[2] = v99;
      v67[3] = v70;

      v71 = sub_AB5490();
      v72 = v66;
      v73 = v80;
      sub_36B0C(v72, v80, &qword_DEFAC8);
      v74 = (v73 + *(v92 + 36));
      *v74 = v71;
      v74[1] = v65;
      v49 = &qword_DEFAD0;
      v50 = v82;
      sub_36B0C(v73, v82, &qword_DEFAD0);
      sub_15F84(v50, v94, &qword_DEFAD0);
      swift_storeEnumTagMultiPayload();
      sub_1048A4();
      sub_104A18();
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_7:
  v30 = v91;
  v31 = *(v91 + 8);
  _s16MusicApplication11EnvironmentCMa_0(0);
  sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0);
  v32 = v31;
  v33 = sub_AB5F20();
  v35 = v34;
  v36 = swift_getKeyPath();
  v37 = v85;
  *(v85 + *(v83 + 24)) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFAE0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for JSSearchLandingUpsell();
  sub_103D2C(&qword_DEF9B0, type metadata accessor for JSSearchLandingUpsell);
  *v37 = sub_AB5B50();
  v37[1] = v38;
  v37[2] = v33;
  v37[3] = v35;
  v39 = *(v30 + *(v90 + 24));
  if (v39)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510();

    sub_AB7A30();
    sub_AB5E90();
    v40 = v87;
    sub_104B8C(v37, v87, type metadata accessor for JSSearchLandingUpsellRegularContentView);
    v41 = (v40 + *(v84 + 36));
    v42 = v102;
    v41[4] = v101;
    v41[5] = v42;
    v41[6] = v103;
    v43 = v98;
    *v41 = v97;
    v41[1] = v43;
    v44 = v100;
    v41[2] = v99;
    v41[3] = v44;

    v45 = sub_AB5490();
    v46 = v40;
    v47 = v86;
    sub_36B0C(v46, v86, &qword_DEFAB0);
    v48 = (v47 + *(v95 + 36));
    *v48 = v45;
    v48[1] = v39;
    v49 = &qword_DEFAB8;
    v50 = v88;
    sub_36B0C(v47, v88, &qword_DEFAB8);
    sub_15F84(v50, v94, &qword_DEFAB8);
    swift_storeEnumTagMultiPayload();
    sub_1048A4();
    sub_104A18();
LABEL_12:
    sub_AB6610();
    return sub_12E1C(v50, v49);
  }

  sub_AB5F00();
  __break(1u);
LABEL_14:
  result = sub_AB5F00();
  __break(1u);
  return result;
}

void sub_100A88(void *a1)
{
  v36 = sub_AB7440();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF9A0);
  __chkstk_darwin(v38);
  v5 = &v33 - v4;
  v6 = type metadata accessor for JSSearchLandingUpsellView(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v37 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v1 + qword_DEF910) = 0;
  v9 = qword_DEF928;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED0);
  swift_allocObject();
  *(v1 + v9) = ArtworkVideoReportingController.init()();
  *(v1 + qword_DEF930) = 0;
  *(v1 + qword_DEF938) = 0;
  _s16MusicApplication11EnvironmentCMa_0(0);
  swift_allocObject();
  v10 = sub_FF948();
  v11 = qword_DEF918;
  *(v1 + qword_DEF918) = v10;
  *(v1 + qword_DEF920) = a1;
  sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0);
  v12 = a1;
  v13 = sub_AB5F20();
  v15 = v14;
  type metadata accessor for JSSearchLandingUpsell();
  sub_103D2C(&qword_DEF9B0, type metadata accessor for JSSearchLandingUpsell);
  v35 = v12;
  v16 = v37;
  *v16 = sub_AB5B50();
  v16[1] = v17;
  v18 = *(v7 + 28);
  *(v16 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF9B8);
  swift_storeEnumTagMultiPayload();
  v19 = (v16 + *(v7 + 32));
  *v19 = v13;
  v19[1] = v15;
  v20 = *(v1 + v11);

  v21 = sub_AB5490();
  sub_1040E4(v16, v5, type metadata accessor for JSSearchLandingUpsellView);
  v22 = &v5[*(v38 + 36)];
  *v22 = v21;
  v22[1] = v20;
  sub_103F0C();
  *&v39 = sub_AB77E0();
  v23 = sub_AB64F0();

  v24 = [v23 traitCollection];
  v25 = [v23 view];

  if (v25)
  {
    v26 = [v25 window];

    (*(v34 + 104))(v33, enum case for Color.RGBColorSpace.sRGBLinear(_:), v36);
    v27 = sub_AB7500();
    swift_getKeyPath();
    swift_getKeyPath();
    v39 = xmmword_AFD910;
    v40 = 0x4018000000000000;
    v41 = v27;
    v43 = 0;
    v44 = 0;
    v42 = 0x401C000000000000;
    v45 = xmmword_AFD920;
    v46 = xmmword_AFD930;
    v47 = 0x3FE5555555555555;
    v48 = v24;
    v49 = v26;
    sub_AB5520();
    v28 = swift_allocObject();
    *(v28 + 16) = v23;
    v29 = swift_allocObject();
    *(v29 + 16) = v23;
    v30 = swift_allocObject();
    *(v30 + 16) = v23;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v39 = sub_104034;
    *(&v39 + 1) = v28;
    v40 = sub_10405C;
    v41 = v29;
    v42 = sub_104084;
    v43 = v30;
    v31 = v23;
    swift_retain_n();
    v32 = v31;
    sub_AB5520();

    sub_10414C(v16, type metadata accessor for JSSearchLandingUpsellView);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_101048(void *a1)
{
  v2 = sub_AB3430();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_4D39CC();
  if (v6)
  {
    v7 = v6;
    type metadata accessor for JSVerticalStackViewController();
    if (swift_dynamicCastClass())
    {
      v8 = sub_A0BB4();

      sub_AB3420();
      v9 = sub_4D39CC();
      if (v9)
      {
        if (swift_dynamicCastClass())
        {
          sub_A0BB4();

          sub_13C80(0, &qword_DE7500);
          v9 = static MPMediaLibraryFilteringOptions.none.getter();
          if (v9 != WeakArray.endIndex.getter())
          {
            v18[1] = v8;
            do
            {
              v11 = WeakArray.subscript.getter();
              if (v11)
              {
                v12 = v11;
                v13 = a1;
                v14 = sub_ABA790();

                if (v14)
                {

                  goto LABEL_17;
                }
              }

              v9 = WeakArray.index(after:)(v9);
            }

            while (v9 != WeakArray.endIndex.getter());

            v9 = 0;
            goto LABEL_17;
          }
        }

        else
        {
        }

        v9 = 0;
      }

LABEL_17:
      v10 = sub_2CD29C(1u, v5, v9, 0);
      (*(v3 + 8))(v5, v2);

      goto LABEL_18;
    }

    v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_18:
  sub_12AFE8();
  v16 = v15;
  JSSearchLandingUpsell.didSelectCloseButton(snapshotImpressions:pageDetailsProvider:)(v10, v15);
}

Swift::Void __swiftcall JSSearchLandingUpsellViewController.didMove(toParent:)(UIViewController_optional toParent)
{
  isa = toParent.value.super.super.isa;
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "didMoveToParentViewController:", isa);
  sub_101340();
}

uint64_t sub_101340()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF9E8);
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &v33 - v5;
  v7 = qword_DEF910;
  if (!*(v0 + qword_DEF910))
  {
    result = sub_4D39CC();
    if (result)
    {
      v8 = result;
      v33 = sub_4D3DD0();

      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      JSSearchLandingUpsell.$tallVideoArtwork.getter();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_36A00(&qword_DEF9F0, &qword_DEF9E8);
      v9 = sub_AB55C0();
      v10 = *(v3 + 8);
      v10(v6, v2);

      *(v1 + qword_DEF938) = v9;

      JSSearchLandingUpsell.$wideVideoArtwork.getter();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = sub_AB55C0();
      v10(v6, v2);

      *(v1 + qword_DEF930) = v11;

      v12 = *(v1 + qword_DEF918);
      v13 = OBJC_IVAR____TtC16MusicApplicationP33_B90BA6543340C30087EC01D228CE8DDA11Environment_artworkComponent;
      v14 = *(v12 + OBJC_IVAR____TtC16MusicApplicationP33_B90BA6543340C30087EC01D228CE8DDA11Environment_artworkComponent);

      v15 = v33;
      v16 = v34;

      v17 = sub_38E490(v14, v15, 0xD000000000000049, 0x8000000000B50F40, sub_1041EC, v16);
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = *(v17 + 40);
      *(v17 + 40) = sub_104400;
      *(v17 + 48) = v18;

      sub_17654(v19);

      v20 = *(v12 + v13);
      LOBYTE(v19) = *(v20 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed);
      *(v20 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) = *(v17 + 56);

      sub_76070(v19);

      v21 = *(v1 + qword_DEF928);
      (*(*v21 + 136))(*(v17 + 56));
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = *(v17 + 64);
      *(v17 + 64) = sub_104408;
      *(v17 + 72) = v22;
      sub_17654(v23);
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v25 = *(v17 + 80);
      *(v17 + 80) = sub_104410;
      *(v17 + 88) = v24;
      sub_17654(v25);
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = *(v17 + 112);
      *(v17 + 112) = sub_104418;
      *(v17 + 120) = v26;
      sub_17654(v27);
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = *(v17 + 128);
      *(v17 + 128) = sub_104420;
      *(v17 + 136) = v28;
      sub_17654(v29);
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = *(v17 + 96);
      *(v17 + 96) = sub_104428;
      *(v17 + 104) = v30;
      sub_17654(v31);

      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(*v21 + 160))(sub_104430, v32);

      *(v1 + v7) = v17;
    }
  }

  return result;
}

void sub_1018A0(void *a1, uint64_t a2, void *a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, "didMoveToParentViewController:", v4);
  sub_101340();
}

Swift::Void __swiftcall JSSearchLandingUpsellViewController.viewDidLayoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "viewDidLayoutSubviews");
  sub_10195C(0, 0, 1);
  sub_101340();
}

void (*sub_10195C(uint64_t a1, uint64_t a2, char a3))(__int128 *, void)
{
  v4 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v53[4] = v50;
  v53[5] = v51;
  v54 = v52;
  v53[0] = v46;
  v53[1] = v47;
  v53[2] = v48;
  v53[3] = v49;
  if (!*(&v47 + 1))
  {
    __break(1u);
    goto LABEL_37;
  }

  v7 = v54;
  v8 = [v3 traitCollection];
  v9 = v8;
  if (v54)
  {
    if (v8)
    {
      sub_13C80(0, &qword_E00AB0);
      v10 = sub_ABA790();

      sub_12E1C(v53, &unk_DEF878);
      if (v10)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v9 = v7;
  }

  else if (!v8)
  {
    sub_12E1C(v53, &unk_DEF878);
    goto LABEL_12;
  }

  sub_12E1C(v53, &unk_DEF878);
LABEL_10:
  v11 = [v4 traitCollection];
  swift_getKeyPath();
  swift_getKeyPath();
  result = sub_AB5500();
  if (!*(v12 + 24))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v13 = result;
  v14 = *(v12 + 96);
  *(v12 + 96) = v11;

  v13(&v46, 0);

LABEL_12:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v51 = v44;
  v52 = v45;
  v46 = v39;
  v47 = v40;
  v49 = v42;
  v50 = v43;
  v48 = v41;
  if (!*(&v40 + 1))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v15 = *(&v52 + 1);
  if (*(&v52 + 1))
  {
    v16 = *(&v52 + 1);
  }

  sub_12E1C(&v46, &unk_DEF878);
  result = [v4 view];
  if (!result)
  {
    goto LABEL_38;
  }

  v17 = result;
  v18 = [result window];

  if (!v15)
  {
    if (!v18)
    {
      goto LABEL_21;
    }

    goto LABEL_25;
  }

  if (!v18)
  {
    v18 = v15;
LABEL_25:

    goto LABEL_26;
  }

  if (v18 == v15)
  {
LABEL_21:
    if ((a3 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

LABEL_26:
  result = [v4 view];
  if (!result)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v20 = result;
  v21 = [result window];

  swift_getKeyPath();
  swift_getKeyPath();
  result = sub_AB5500();
  if (!*(v22 + 24))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v23 = result;
  v24 = *(v22 + 104);
  *(v22 + 104) = v21;

  v23(&v39, 0);

  if (a3)
  {
LABEL_22:
    result = [v4 view];
    if (!result)
    {
LABEL_44:
      __break(1u);
      return result;
    }

    v19 = result;
    [result bounds];
  }

LABEL_29:
  result = [v4 view];
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v25 = result;
  [objc_opt_self() music_defaultLayoutInsetsInView:result];

  sub_ABA530();
  v27 = v26;
  sub_AB64B0();
  v29 = v28;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v43 = v36;
  v44 = v37;
  v45 = v38;
  v39 = v32;
  v40 = v33;
  v41 = v34;
  v42 = v35;
  if (!*(&v33 + 1))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v30 = *&v39;
  sub_12E1C(&v39, &unk_DEF878);
  [v4 preferredContentSize];
  if (v29 + v30 != v31)
  {
    [v4 preferredContentSize];
    [v4 setPreferredContentSize:?];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (*&v32 != v27)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    swift_getKeyPath();
    swift_getKeyPath();

    return sub_AB5520();
  }

  return result;
}

void sub_101FDC(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "viewDidLayoutSubviews");
  sub_10195C(0, 0, 1);
  sub_101340();
}

void JSSearchLandingUpsellViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v10[4] = sub_102198;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_CF24C;
  v10[3] = &block_descriptor_33;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:0 completion:v8];
  _Block_release(v8);
}

uint64_t sub_102160()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1021E0(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v13.receiver = a1;
  v13.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v8 = v13.receiver;
  objc_msgSendSuper2(&v13, "viewWillTransitionToSize:withTransitionCoordinator:", a5, a2, a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  v12[4] = sub_1069EC;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_CF24C;
  v12[3] = &block_descriptor_29;
  v10 = _Block_copy(v12);
  v11 = v8;

  [a5 animateAlongsideTransition:0 completion:v10];
  _Block_release(v10);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall JSSearchLandingUpsellViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "traitCollectionDidChange:", isa);
  sub_10195C(0, 0, 1);
}

void sub_102374(void *a1, uint64_t a2, void *a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, "traitCollectionDidChange:", v4);
  sub_10195C(0, 0, 1);
}

void sub_1023F0(int a1)
{
  v77 = a1;
  v2 = sub_AB3820();
  v70 = *(v2 - 8);
  v71 = v2;
  __chkstk_darwin(v2);
  v67 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v4);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v66 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v11 = __chkstk_darwin(v10 - 8);
  v68 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v72 = &v66 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v14 - 8);
  v16 = &v66 - v15;
  v17 = sub_AB3430();
  v73 = *(v17 - 8);
  v74 = v17;
  v18 = __chkstk_darwin(v17);
  v69 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v66 - v20;
  v22 = sub_4D39CC();
  v78 = v16;
  if (v22)
  {
    v79 = v9;
    type metadata accessor for JSVerticalStackViewController();
    if (!swift_dynamicCastClass())
    {

      v22 = 0;
LABEL_18:
      v9 = v79;
      goto LABEL_19;
    }

    v76 = sub_A0BB4();

    sub_AB3420();
    v23 = sub_4D39CC();
    if (v23)
    {
      if (swift_dynamicCastClass())
      {
        sub_A0BB4();

        sub_13C80(0, &qword_DE7500);
        v23 = static MPMediaLibraryFilteringOptions.none.getter();
        if (v23 != WeakArray.endIndex.getter())
        {
          v75 = v4;
          do
          {
            v24 = WeakArray.subscript.getter();
            if (v24)
            {
              v25 = v24;
              v26 = v1;
              v27 = sub_ABA790();

              if (v27)
              {

                goto LABEL_16;
              }
            }

            v23 = WeakArray.index(after:)(v23);
          }

          while (v23 != WeakArray.endIndex.getter());

          v23 = 0;
LABEL_16:
          v4 = v75;
          v16 = v78;
          goto LABEL_17;
        }
      }

      else
      {
      }

      v23 = 0;
    }

LABEL_17:
    v22 = sub_2CD29C(1u, v21, v23, 0);
    (*(v73 + 8))(v21, v74);

    goto LABEL_18;
  }

LABEL_19:
  v28 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v29 = *&v1[qword_DEF920];
  v75 = v28;
  v76 = v29;
  memset(v86, 0, sizeof(v86));
  v87 = 0;
  v88 = xmmword_AF7710;
  PresentationSource.init(viewController:position:)(v1, v86, v85);
  v30 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v83, 0, sizeof(v83));
  v84 = 0;
  (*(*(v30 - 8) + 56))(v16, 1, 1, v30);
  sub_12AFE8();
  v32 = v31;
  v33 = v22;
  v79 = v22;
  if (!v22)
  {
    sub_15F84(v83, &v80, &unk_DE8E30);
    if (*(&v81 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
      v35 = v9;
      v36 = _s30CollectionViewSelectionHandlerVMa();
      v37 = swift_dynamicCast();
      v38 = *(v36 - 8);
      (*(v38 + 56))(v35, v37 ^ 1u, 1, v36);
      v39 = (*(v38 + 48))(v35, 1, v36);
      v9 = v35;
      v40 = v71;
      v41 = v72;
      v42 = v70;
      if (v39 != 1)
      {
        (*(v70 + 16))(v72, &v9[*(v36 + 20)], v71);
        sub_10414C(v9, _s30CollectionViewSelectionHandlerVMa);
        v43 = 0;
LABEL_27:
        (*(v42 + 56))(v41, v43, 1, v40);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong && (v46 = Strong, sub_12B2FC(), v48 = v47, v50 = v49, v46, v48))
        {
          ObjectType = swift_getObjectType();
          (*(v50 + 8))(ObjectType, v50);
          v52 = v42;
          v54 = v53;
          swift_unknownObjectRelease();
          v55 = v41;
          v56 = v68;
          sub_15F84(v55, v68, &unk_DE8E20);
          if ((*(v52 + 48))(v56, 1, v40) == 1)
          {
            sub_12E1C(v56, &unk_DE8E20);
            v80 = 0u;
            v81 = 0u;
            v82 = 0;
          }

          else
          {
            (*(v52 + 32))(v67, v56, v40);
            sub_103D2C(&qword_DFAA90, &type metadata accessor for IndexPath);
            sub_ABAD10();
          }

          v57 = swift_getObjectType();
          v58 = v69;
          sub_3B8F68();
          v33 = sub_21CCAC(1, v58, &v80, v57, v54);
          (*(v73 + 8))(v58, v74);
          sub_12E1C(&v80, &qword_DF2BD0);
          sub_12E1C(v72, &unk_DE8E20);
          swift_unknownObjectRelease();
        }

        else
        {
          sub_12E1C(v41, &unk_DE8E20);
          v33 = 0;
        }

        if (v32)
        {
          goto LABEL_21;
        }

        goto LABEL_35;
      }
    }

    else
    {
      sub_12E1C(&v80, &unk_DE8E30);
      v44 = _s30CollectionViewSelectionHandlerVMa();
      (*(*(v44 - 8) + 56))(v9, 1, 1, v44);
      v40 = v71;
      v41 = v72;
      v42 = v70;
    }

    sub_12E1C(v9, &qword_E037A0);
    v43 = 1;
    goto LABEL_27;
  }

  if (v31)
  {
LABEL_21:

    v34 = v32;
    goto LABEL_38;
  }

LABEL_35:
  v59 = swift_unknownObjectWeakLoadStrong();

  if (v59)
  {
    sub_12AFE8();
    v34 = v60;
  }

  else
  {
    v34 = 0;
  }

LABEL_38:
  sub_15F28(v85, &v80);
  sub_15F84(v83, (v6 + 104), &unk_DE8E30);
  v61 = v78;
  sub_15F84(v78, &v6[*(v4 + 28)], &unk_DEA510);
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 8) = 1;
  *(v6 + 9) = 0;
  *(v6 + 10) = 0;
  *(v6 + 11) = 0;
  v62 = v32;
  sub_2D594(&v80, v6);
  *(v6 + 12) = 0;
  v63 = *v75;
  *(&v81 + 1) = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v80);
  sub_1040E4(v6, boxed_opaque_existential_0, _s23MusicPerformanceContextVMa);
  v65 = v63;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v76, v77 & 1, v33, v34, &v80);
  sub_12E1C(v61, &unk_DEA510);
  sub_12E1C(v83, &unk_DE8E30);
  sub_1611C(v85);
  sub_10414C(v6, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v80, &unk_DE8E40);
}

BOOL sub_102E4C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v1 = Strong, v2 = *(Strong + qword_DEF920), v1, v3 = JSSearchLandingUpsell.tallVideoArtwork.getter(), v2, v3))
  {
    v4 = 1;
  }

  else
  {
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
      return 0;
    }

    v6 = v5;
    v7 = *(v5 + qword_DEF920);

    v3 = JSSearchLandingUpsell.wideVideoArtwork.getter();
    v4 = v3 != 0;
  }

  return v4;
}

void sub_102F34(void **a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + qword_DEF920);

    v8 = a3();
    if (v4)
    {
      if (v8)
      {
        type metadata accessor for JSVideoArtwork();
        v9 = v4;
        v10 = sub_ABA790();

        if (v10)
        {
          return;
        }
      }
    }

    else
    {
      if (!v8)
      {
        return;
      }
    }
  }

  else if (!v4)
  {
    return;
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = sub_4D39CC();
    if (v13)
    {
      v14 = v13;
      type metadata accessor for JSVerticalStackViewController();
      if (swift_dynamicCastClass())
      {
        v15 = sub_A0BB4();

        if (*(v15 + 81) == 1)
        {
          v17 = sub_4A3ECC();
          if (*v16)
          {
            v18 = v16;

            *v18 = &_swiftEmptySetSingleton;
          }

          (v17)(&v19, 0);
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
}

uint64_t sub_1030D0(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + qword_DEF918);
    v4 = Strong;

    v5 = *(v3 + OBJC_IVAR____TtC16MusicApplicationP33_B90BA6543340C30087EC01D228CE8DDA11Environment_artworkComponent);

    v6 = *(v5 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed);
    *(v5 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) = a1 & 1;
    sub_76070(v6);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(result + qword_DEF928);
    v9 = result;

    (*(*v8 + 136))(a1 & 1);
  }

  return result;
}

uint64_t sub_1031F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + qword_DEF928);
    v5 = result;

    v6[0] = v1;
    v6[1] = v2;
    (*(*v4 + 200))(v6);
  }

  return result;
}

uint64_t sub_103294(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(result + qword_DEF928);
    v7 = result;

    v8[0] = v3;
    v8[1] = v4;
    (*(*v6 + 192))(v8, a2 & 1);
  }

  return result;
}

uint64_t sub_103348(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + qword_DEF928);
    v5 = result;

    v6[0] = v1;
    v6[1] = v2;
    (*(*v4 + 224))(v6);
  }

  return result;
}

uint64_t sub_1033EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + qword_DEF928);
    v5 = result;

    v6[0] = v1;
    v6[1] = v2;
    (*(*v4 + 208))(v6);
  }

  return result;
}

void sub_103490(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + qword_DEF928);
    v16[0] = v1;
    v16[1] = v2;
    (*(*v5 + 216))(v16);
    v6 = sub_4D39CC();
    if (v6)
    {
      v7 = v6;
      type metadata accessor for JSVerticalStackViewController();
      if (swift_dynamicCastClass())
      {
        sub_A0BB4();

        v8 = sub_4D39CC();
        if (v8)
        {
          v9 = v8;
          if (swift_dynamicCastClass())
          {
            sub_A0BB4();

            sub_13C80(0, &qword_DE7500);
            for (i = static MPMediaLibraryFilteringOptions.none.getter(); ; i = WeakArray.index(after:)(v11))
            {
              v11 = i;
              if (i == WeakArray.endIndex.getter())
              {
                break;
              }

              v12 = WeakArray.subscript.getter();
              if (v12)
              {
                v13 = v12;
                v14 = v4;
                v15 = sub_ABA790();

                if (v15)
                {

                  goto LABEL_17;
                }
              }
            }
          }

          else
          {
          }
        }

        v11 = 0;
LABEL_17:
        sub_4A3934(v11);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_103688()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = *(Strong + qword_DEF920);

  v3 = JSSearchLandingUpsell.marketingID.getter();
  return v3;
}

void sub_103720(uint64_t a1)
{
  *(a1 + qword_DEF910) = 0;
  v2 = qword_DEF928;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED0);
  swift_allocObject();
  *(a1 + v2) = ArtworkVideoReportingController.init()();
  *(a1 + qword_DEF930) = 0;
  *(a1 + qword_DEF938) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_103840()
{
}

uint64_t sub_1038CC(uint64_t a1)
{
}

void sub_103958()
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void sub_103990()
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void sub_103A28()
{
  sub_363CC();
  if (v0 <= 0x3F)
  {
    sub_104728(319, &qword_DEF860, &qword_DEF868, &unk_AFD9A0, &type metadata accessor for Published);
    if (v1 <= 0x3F)
    {
      sub_104728(319, &qword_DEF870, &unk_DEF878, &unk_AFD9A8, &type metadata accessor for Published);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_103C48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_103C90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_103D2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_103D74(uint64_t a1)
{
  v2 = sub_AB5790();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_AB5FB0();
}

uint64_t sub_103E60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF9E0);
  __chkstk_darwin(v2 - 8);
  sub_15F84(a1, &v5 - v3, &qword_DEF9E0);
  return sub_AB60D0();
}

unint64_t sub_103F0C()
{
  result = qword_DEF9C0;
  if (!qword_DEF9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEF9A0);
    sub_103D2C(&qword_DEF9C8, type metadata accessor for JSSearchLandingUpsellView);
    sub_36A00(&qword_DEF9D0, &qword_DEF9D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEF9C0);
  }

  return result;
}

uint64_t sub_103FFC()
{

  return swift_deallocObject();
}

uint64_t sub_104094(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1040E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10414C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1041B4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_104254(char *a1, char *a2, double a3, double a4)
{
  v9 = *(v4 + 24);
  v10 = *(v9 + 80);
  v11 = *(v9 + 88);
  *(v9 + 80) = a3;
  *(v9 + 88) = a4;
  sub_75614(v10, v11);
  v12 = *(v9 + 96);
  v13 = *(v9 + 104);
  *(v9 + 96) = a3;
  *(v9 + 104) = a4;
  sub_756F8(v12, v13);
  v14 = *(v9 + 144);
  *(v9 + 144) = 0;
  if (v14)
  {
    v15 = [*(v9 + 112) image];
    sub_788B8(v15);
  }

  if (a2)
  {
    v16 = OBJC_IVAR____TtC11MusicJSCore14JSVideoArtwork_cropStyle;
    swift_beginAccess();
    v17 = *&a2[v16];
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = ICStoreArtworkInfoCropStyleSpecificRectangle;
    }

    v19 = a2;
    v20 = v17;
    v21 = JSVideoArtwork.artworkCatalog(defaultCropStyle:)(v18);

    sub_751F4(v21);
  }

  if (a1)
  {
    v22 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle;
    swift_beginAccess();
    v23 = *&a1[v22];
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = ICStoreArtworkInfoCropStyleSpecificRectangle;
    }

    v25 = a1;
    v26 = v23;
    v27 = JSArtwork.artworkCatalog(defaultCropStyle:)(v24);

    sub_74EA4(v27);
  }

  sub_76B28(0.0, 0.0, a3, a4);
  return *(v9 + 112);
}

uint64_t sub_10444C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF9F8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10451C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF9F8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1045CC()
{
  sub_104694();
  if (v0 <= 0x3F)
  {
    sub_104728(319, &qword_DEFA70, &qword_DEF9E0, &unk_AFDC10, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10478C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_104694()
{
  if (!qword_DEFA68)
  {
    type metadata accessor for JSSearchLandingUpsell();
    sub_103D2C(&qword_DEF9B0, type metadata accessor for JSSearchLandingUpsell);
    v0 = sub_AB5B80();
    if (!v1)
    {
      atomic_store(v0, &qword_DEFA68);
    }
  }
}

void sub_104728(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10478C()
{
  if (!qword_DEFA78)
  {
    _s16MusicApplication11EnvironmentCMa_0(255);
    sub_103D2C(&qword_DEF9A8, _s16MusicApplication11EnvironmentCMa_0);
    v0 = sub_AB5F30();
    if (!v1)
    {
      atomic_store(v0, &qword_DEFA78);
    }
  }
}

unint64_t sub_1048A4()
{
  result = qword_DEFAE8;
  if (!qword_DEFAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFAD0);
    sub_10495C();
    sub_36A00(&qword_DEF9D0, &qword_DEF9D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFAE8);
  }

  return result;
}

unint64_t sub_10495C()
{
  result = qword_DEFAF0;
  if (!qword_DEFAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFAC8);
    sub_103D2C(&qword_DEFAF8, type metadata accessor for JSSearchLandingUpsellCompactContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFAF0);
  }

  return result;
}

unint64_t sub_104A18()
{
  result = qword_DEFB00;
  if (!qword_DEFB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFAB8);
    sub_104AD0();
    sub_36A00(&qword_DEF9D0, &qword_DEF9D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFB00);
  }

  return result;
}

unint64_t sub_104AD0()
{
  result = qword_DEFB08;
  if (!qword_DEFB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFAB0);
    sub_103D2C(&qword_DEFB10, type metadata accessor for JSSearchLandingUpsellRegularContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFB08);
  }

  return result;
}

uint64_t sub_104B8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_104C24()
{
  sub_104694();
  if (v0 <= 0x3F)
  {
    sub_10478C();
    if (v1 <= 0x3F)
    {
      sub_104CC0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_104CC0()
{
  if (!qword_DEFB90)
  {
    sub_AB5790();
    v0 = sub_AB57D0();
    if (!v1)
    {
      atomic_store(v0, &qword_DEFB90);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_85Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFB20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_86Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFB20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_104EB4()
{
  result = qword_DEFC60;
  if (!qword_DEFC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFC68);
    sub_1048A4();
    sub_104A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFC60);
  }

  return result;
}

unint64_t sub_104F78()
{
  result = qword_DEFCA8;
  if (!qword_DEFCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFC80);
    sub_105030();
    sub_36A00(&qword_DE8518, &qword_DE8520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFCA8);
  }

  return result;
}

unint64_t sub_105030()
{
  result = qword_DEFCB0;
  if (!qword_DEFCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFC78);
    sub_36A00(&qword_DEFCB8, &qword_DEFC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFCB0);
  }

  return result;
}

unint64_t sub_105114()
{
  result = qword_DEFCC0;
  if (!qword_DEFCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFC90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFC80);
    sub_104F78();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFCC0);
  }

  return result;
}

uint64_t sub_1051DC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_99Tm(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = v1 + ((*(*v2 + 80) + 16) & ~*(*v2 + 80));

  v4 = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFAE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_AB5790();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_105454@<X0>(_BYTE *a1@<X8>)
{
  result = sub_AB6150();
  *a1 = result & 1;
  return result;
}

unint64_t sub_105484()
{
  result = qword_DEFD68;
  if (!qword_DEFD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFD60);
    sub_10553C();
    sub_36A00(&qword_DE8518, &qword_DE8520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFD68);
  }

  return result;
}

unint64_t sub_10553C()
{
  result = qword_DEFD70;
  if (!qword_DEFD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFD78);
    sub_36A00(&qword_DEFD80, &qword_DEFD88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFD70);
  }

  return result;
}

unint64_t sub_105638()
{
  result = qword_DEFD90;
  if (!qword_DEFD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFD40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFD60);
    sub_105484();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFD90);
  }

  return result;
}

uint64_t sub_105700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFD50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_105770(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEFD50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_105854(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB5F8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_105924(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB5F8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1059D4()
{
  sub_105A58();
  if (v0 <= 0x3F)
  {
    sub_814B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_105A58()
{
  result = qword_DEFE38;
  if (!qword_DEFE38)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_DEFE38);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_105AD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_105B18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_105BB0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_105C0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_105C80()
{
  result = qword_DEFE70;
  if (!qword_DEFE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFCC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFC90);
    sub_105114();
    swift_getOpaqueTypeConformance2();
    sub_36A00(&qword_DEF9D0, &qword_DEF9D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFE70);
  }

  return result;
}

unint64_t sub_105DBC()
{
  result = qword_DEFE88;
  if (!qword_DEFE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFE88);
  }

  return result;
}

unint64_t sub_105EA4()
{
  result = qword_DEFE98;
  if (!qword_DEFE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFE90);
    sub_105F30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFE98);
  }

  return result;
}

unint64_t sub_105F30()
{
  result = qword_DEFEA0;
  if (!qword_DEFEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFEA8);
    sub_105FE8();
    sub_36A00(&qword_DEFED0, &qword_DFEA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFEA0);
  }

  return result;
}

unint64_t sub_105FE8()
{
  result = qword_DEFEB0;
  if (!qword_DEFEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFEB8);
    sub_845D0();
    sub_36A00(&qword_DEFEC0, &qword_DEFEC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFEB0);
  }

  return result;
}

unint64_t sub_1060B0()
{
  result = qword_DEFEF0;
  if (!qword_DEFEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFEE0);
    swift_getOpaqueTypeConformance2();
    sub_103D2C(&qword_DEB7B8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFEF0);
  }

  return result;
}

unint64_t sub_10619C()
{
  result = qword_DEFF08;
  if (!qword_DEFF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFF00);
    sub_106254();
    sub_36A00(&qword_DEFF50, &qword_DFEB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFF08);
  }

  return result;
}

unint64_t sub_106254()
{
  result = qword_DEFF10;
  if (!qword_DEFF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFF18);
    sub_10630C();
    sub_36A00(&qword_DE8518, &qword_DE8520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFF10);
  }

  return result;
}

unint64_t sub_10630C()
{
  result = qword_DEFF20;
  if (!qword_DEFF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFF28);
    sub_106398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFF20);
  }

  return result;
}

unint64_t sub_106398()
{
  result = qword_DEFF30;
  if (!qword_DEFF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFF38);
    sub_36A00(&qword_DEFF40, &qword_DEFF48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFF30);
  }

  return result;
}

uint64_t sub_106450@<X0>(_BYTE *a1@<X8>)
{
  result = sub_AB6050();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1064A8@<X0>(void *a1@<X8>)
{
  result = sub_AB6090();
  *a1 = v3;
  return result;
}

unint64_t sub_106504()
{
  result = qword_DEFF60;
  if (!qword_DEFF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFF60);
  }

  return result;
}

uint64_t sub_10659C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFEE0);
  sub_1060B0();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_106648()
{
  result = qword_DEFF88;
  if (!qword_DEFF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFF90);
    sub_106700();
    sub_36A00(&qword_DEB890, &qword_DEB898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFF88);
  }

  return result;
}

unint64_t sub_106700()
{
  result = qword_DEFF98;
  if (!qword_DEFF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFFA0);
    sub_10678C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFF98);
  }

  return result;
}

unint64_t sub_10678C()
{
  result = qword_DEFFA8;
  if (!qword_DEFFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFFB0);
    sub_106844();
    sub_36A00(&qword_DEDBF8, &qword_DFE960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFFA8);
  }

  return result;
}

unint64_t sub_106844()
{
  result = qword_DEFFB8;
  if (!qword_DEFFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFFC0);
    sub_1068FC();
    sub_36A00(&qword_DEFFE8, &qword_DEFFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFFB8);
  }

  return result;
}

unint64_t sub_1068FC()
{
  result = qword_DEFFC8;
  if (!qword_DEFFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEFFD0);
    sub_36A00(&qword_DEFFD8, &qword_DEFFE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEFFC8);
  }

  return result;
}

uint64_t TextDrawing.Cache.__allocating_init()()
{
  v0 = swift_allocObject();
  TextDrawing.Cache.init()();
  return v0;
}

void *TextDrawing.Cache.init()()
{
  v1 = v0;
  *(v0 + 24) = 0;
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = v3;

  *(v0 + 32) = v4;
  sub_109468();
  if (!v5)
  {
    v5 = [objc_opt_self() systemBlueColor];
  }

  *(v0 + 40) = v5;
  _s5CacheC3KeyCMa();
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0xE000000000000000;
  *(v6 + 32) = xmmword_AF4EA0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 48) = sub_107D34;
  *(v6 + 72) = xmmword_AF4EB0;
  *(v6 + 88) = 1;
  *(v6 + 96) = 0x4030000000000000;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  *(v6 + 104) = 0;
  *(v0 + 72) = v6;
  v7 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v8 = objc_opt_self();
  v9 = [v8 blackColor];
  v10 = [v8 clearColor];
  _s5CacheC17AttributesWrapperCMa();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  *(v11 + 32) = 0;
  *(v11 + 40) = 4;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *(v11 + 64) = v7;
  *(v0 + 88) = v11;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 16) = *(v0 + 32);
  v12 = *(v0 + 40);
  swift_beginAccess();
  v13 = *(v0 + 24);
  v1[3] = v12;
  v14 = v12;

  v15 = [objc_allocWithZone(NSCache) init];
  v1[8] = v15;
  [v15 setTotalCostLimit:200000];
  v16 = [objc_allocWithZone(NSCache) init];
  v1[10] = v16;
  [v16 setCountLimit:50];
  v17 = UIPresentationControllerPresentationTransitionWillBeginNotification;
  v18 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v19 = v17;

  v1[6] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v19, 0, 1, 1, sub_109918, v18);

  v20 = UIPresentationControllerPresentationTransitionDidEndNotification;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = v20;

  swift_allocObject();
  v1[7] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v22, 0, 1, 1, sub_109920, v21);

  return v1;
}

uint64_t sub_106DBC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 96);
    v2 = __CFADD__(v1, 1);
    v3 = v1 + 1;
    if (v2)
    {
      __break(1u);
    }

    else
    {
      *(result + 96) = v3;
    }
  }

  return result;
}

void sub_106E1C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 96);
    if (v1 && (v2 = v1 - 1, (*(Strong + 96) = v2) != 0) || (*(Strong + 104) & 1) == 0)
    {
    }

    else
    {
      v3 = Strong;
      *(Strong + 104) = 0;
      v4 = [objc_opt_self() defaultCenter];
      if (qword_DE6828 != -1)
      {
        swift_once();
      }

      [v4 postNotificationName:static TextDrawing.Cache.didInvalidateNotification object:v3];
    }
  }
}

void sub_106F0C()
{
  v1 = v0;
  swift_beginAccess();
  if (sub_AB38D0())
  {
    *(v0 + 32) = *(v0 + 16);
    [*(v0 + 64) removeAllObjects];
    [*(v0 + 80) removeAllObjects];
    if (*(v0 + 96))
    {
      *(v0 + 104) = 1;
    }

    else
    {
      v2 = [objc_opt_self() defaultCenter];
      if (qword_DE6828 != -1)
      {
        swift_once();
      }

      [v2 postNotificationName:static TextDrawing.Cache.didInvalidateNotification object:v1];
    }
  }
}

void TextDrawing.Cache.displayScale.setter(double a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  sub_106F0C();
}

uint64_t (*TextDrawing.Cache.displayScale.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1070F4;
}

void sub_10710C()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    sub_109468();
    if (!v3)
    {
      v3 = [objc_opt_self() systemBlueColor];
    }

    v2 = v3;
  }

  v4 = *(v0 + 40);
  v5 = v1;
  if (v4 == v2)
  {
  }

  else
  {
    v6 = [v4 isEqual:v2];

    if (!v6)
    {
      v7 = *(v0 + 40);
      *(v0 + 40) = v2;
      v2 = v2;

      [*(v0 + 64) removeAllObjects];
      [*(v0 + 80) removeAllObjects];
      if (*(v0 + 96))
      {

        *(v0 + 104) = 1;
        return;
      }

      v8 = [objc_opt_self() defaultCenter];
      if (qword_DE6828 != -1)
      {
        swift_once();
      }

      [v8 postNotificationName:static TextDrawing.Cache.didInvalidateNotification object:v0];
    }
  }
}

void *TextDrawing.Cache.tintColor.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void TextDrawing.Cache.tintColor.setter(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
  v4 = a1;

  sub_10710C();
}

uint64_t (*TextDrawing.Cache.tintColor.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_107380;
}

uint64_t sub_107398(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id sub_1073E0()
{
  result = [objc_allocWithZone(NSCache) init];
  qword_DEFFF8 = result;
  return result;
}

double TextDrawing.Cache.drawingContextForText(_:labelProperties:allowedSize:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v13 = v6[4];
  v14 = *(v6 + 5);
  v15 = *(v6 + 8);
  v16 = *(v6 + 9);
  v18 = *(v6 + 10);
  v17 = *(v6 + 11);
  v19 = v14;
  sub_108594(a1, a2, a3, v19, v15, v16, v18, v17, v25, a5, a6, v13);

  v20 = v29;
  a4[4] = v28;
  a4[5] = v20;
  v21 = v31;
  a4[6] = v30;
  a4[7] = v21;
  v22 = v25[1];
  *a4 = v25[0];
  a4[1] = v22;
  result = *&v26;
  v24 = v27;
  a4[2] = v26;
  a4[3] = v24;
  return result;
}

uint64_t sub_1074F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF4EC0;
  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);
  ExplicitRestrictionsController.symbols.unsafeMutableAddressor();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF04D8);
  sub_ABAF70();

  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  qword_DF0000 = v0;
  return result;
}

NSString sub_1075DC()
{
  result = sub_AB9260();
  static TextDrawing.Cache.didInvalidateNotification = result;
  return result;
}

uint64_t *TextDrawing.Cache.didInvalidateNotification.unsafeMutableAddressor()
{
  if (qword_DE6828 != -1)
  {
    swift_once();
  }

  return &static TextDrawing.Cache.didInvalidateNotification;
}

id static TextDrawing.Cache.didInvalidateNotification.getter()
{
  if (qword_DE6828 != -1)
  {
    swift_once();
  }

  v1 = static TextDrawing.Cache.didInvalidateNotification;

  return v1;
}

Swift::Void __swiftcall TextDrawing.Cache.beginCoalescingInvalidationNotifications()()
{
  v1 = *(v0 + 96);
  v2 = __CFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 96) = v3;
  }
}

Swift::Void __swiftcall TextDrawing.Cache.endCoalescingInvalidationNotifications()()
{
  v1 = *(v0 + 96);
  if (!v1 || (v2 = v1 - 1, (*(v0 + 96) = v2) == 0))
  {
    if (*(v0 + 104) == 1)
    {
      *(v0 + 104) = 0;
      v3 = [objc_opt_self() defaultCenter];
      v4 = v3;
      if (qword_DE6828 != -1)
      {
        swift_once();
        v3 = v4;
      }

      [v3 postNotificationName:static TextDrawing.Cache.didInvalidateNotification object:v0];
    }
  }
}

Swift::Void __swiftcall TextDrawing.Cache.invalidate()()
{
  [*(v0 + 64) removeAllObjects];
  [*(v0 + 80) removeAllObjects];
  if (*(v0 + 96))
  {
    *(v0 + 104) = 1;
  }

  else
  {
    v1 = [objc_opt_self() defaultCenter];
    v2 = v1;
    if (qword_DE6828 != -1)
    {
      swift_once();
      v1 = v2;
    }

    [v1 postNotificationName:static TextDrawing.Cache.didInvalidateNotification object:v0];
  }
}

id *TextDrawing.Cache.deinit()
{

  return v0;
}

uint64_t TextDrawing.Cache.__deallocating_deinit()
{
  TextDrawing.Cache.deinit();

  return swift_deallocClassInstance();
}

BOOL sub_107998(uint64_t a1)
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
        return 1;
      }

      else
      {
        v11 = *(v1 + 64);
        v3 = *(v1 + 48);
        v10[1] = *(v1 + 32);
        v10[2] = v3;
        v10[0] = *(v1 + 16);
        v4 = *(v2 + 16);
        v5 = *(v2 + 32);
        v6 = *(v2 + 48);
        v13 = *(v2 + 64);
        v12[1] = v5;
        v12[2] = v6;
        v12[0] = v4;
        sub_109A00(v10, v9);
        sub_109A00(v12, v9);
        v7 = _s16MusicApplication14TextAttributesV2eeoiySbAC_ACtFZ_0(v10, v12);
        sub_109A5C(v12);
        sub_109A5C(v10);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  else
  {
    return 0;
  }

  return v7;
}

uint64_t sub_107AAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

Swift::Int sub_107B00()
{
  sub_ABB5C0();
  TextAttributes.hash(into:)();
  return sub_ABB610();
}

uint64_t sub_107B60()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = *(*v0 + 48);
  v6[1] = *(*v0 + 32);
  v6[2] = v3;
  v7 = *(v1 + 64);
  v6[0] = v2;
  sub_109A00(v6, v5);
  TextAttributes.hash(into:)();
  return sub_109A5C(v6);
}

Swift::Int sub_107BC4()
{
  sub_ABB5C0();
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 48);
  v7 = *(*v0 + 64);
  v6[1] = v2;
  v6[2] = v3;
  v6[0] = v1;
  sub_109A00(v6, &v5);
  TextAttributes.hash(into:)();
  sub_109A5C(v6);
  return sub_ABB610();
}

BOOL sub_107C34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == *a2)
  {
    return 1;
  }

  else
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 32);
    v6 = *(v2 + 48);
    v14 = *(v2 + 64);
    v13[1] = v5;
    v13[2] = v6;
    v13[0] = v4;
    v7 = *(v3 + 16);
    v8 = *(v3 + 32);
    v9 = *(v3 + 48);
    v16 = *(v3 + 64);
    v15[1] = v8;
    v15[2] = v9;
    v15[0] = v7;
    sub_109A00(v13, v12);
    sub_109A00(v15, v12);
    v10 = _s16MusicApplication14TextAttributesV2eeoiySbAC_ACtFZ_0(v13, v15);
    sub_109A5C(v15);
    sub_109A5C(v13);
  }

  return v10;
}

uint64_t sub_107CE0()
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
  sub_109AB0(v6);
  return swift_deallocClassInstance();
}

id sub_107D34()
{
  v0 = objc_allocWithZone(NSAttributedString);
  v1 = sub_AB9260();
  v2 = [v0 initWithString:v1];

  return v2;
}

uint64_t sub_107DDC(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_12;
  }

  _s5CacheC3KeyCMa();
  swift_unknownObjectRetain();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = v2;
  if (v2 == v1)
  {
    swift_unknownObjectRelease();
    v11 = 1;
    return v11 & 1;
  }

  v4 = *(v1 + 16) == *(v2 + 16) && *(v1 + 24) == *(v2 + 24);
  if (!v4 && (sub_ABB3C0() & 1) == 0 || (v5 = *(v1 + 96), v14[3] = *(v1 + 80), v14[4] = v5, v6 = *(v1 + 64), v14[1] = *(v1 + 48), v14[2] = v6, v14[0] = *(v1 + 32), v8 = v3[3], v7 = v3[4], v9 = v3[6], v15[3] = v3[5], v15[4] = v9, v15[1] = v8, v15[2] = v7, v15[0] = v3[2], sub_2F118(v14, v13), sub_2F118(v15, v13), v10 = _s16MusicApplication19TextLabelPropertiesV2eeoiySbAC_ACtFZ_0(v14, v15), sub_2F174(v15), sub_2F174(v14), (v10 & 1) == 0))
  {
LABEL_11:
    swift_unknownObjectRelease();
LABEL_12:
    v11 = 0;
    return v11 & 1;
  }

  v11 = sub_ABA520();
  swift_unknownObjectRelease();
  return v11 & 1;
}

uint64_t sub_107F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();

  LOBYTE(a4) = a4(a3);
  swift_unknownObjectRelease();

  return a4 & 1;
}

uint64_t sub_107F88()
{

  sub_C7504(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

Swift::Int sub_107FD4()
{
  sub_ABB5C0();
  sub_AB93F0();
  TextLabelProperties.hash(into:)();
  sub_E21B8(*(v0 + 112), *(v0 + 120));
  return sub_ABB610();
}

void sub_108070()
{
  v1 = *v0;

  sub_AB93F0();

  v2 = *(v1 + 48);
  v3 = *(v1 + 80);
  v4 = *(v1 + 96);
  v6[2] = *(v1 + 64);
  v6[3] = v3;
  v6[4] = v4;
  v6[0] = *(v1 + 32);
  v6[1] = v2;
  sub_2F118(v6, &v5);
  TextLabelProperties.hash(into:)();
  sub_2F174(v6);
  sub_E21B8(*(v1 + 112), *(v1 + 120));
}

Swift::Int sub_10810C()
{
  sub_ABB5C0();
  v1 = *v0;

  sub_AB93F0();

  v2 = *(v1 + 48);
  v3 = *(v1 + 80);
  v4 = *(v1 + 96);
  v7[2] = *(v1 + 64);
  v7[3] = v3;
  v7[4] = v4;
  v7[0] = *(v1 + 32);
  v7[1] = v2;
  sub_2F118(v7, v6);
  TextLabelProperties.hash(into:)();
  sub_2F174(v7);
  sub_E21B8(*(v1 + 112), *(v1 + 120));
  return sub_ABB610();
}

uint64_t sub_1081CC()
{
  v0 = sub_AB92A0();
  v2 = v1;
  if (v0 == sub_AB92A0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_ABB3C0();
  }

  return v5 & 1;
}

uint64_t sub_10825C(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v17 = v2;
  v18 = v3;
  v6 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v6 || (sub_ABB3C0()) && (v7 = *(a1 + 80), v15[2] = *(a1 + 64), v15[3] = v7, v15[4] = *(a1 + 96), v8 = *(a1 + 48), v15[0] = *(a1 + 32), v15[1] = v8, v9 = *(a2 + 80), v16[2] = *(a2 + 64), v16[3] = v9, v16[4] = *(a2 + 96), v10 = *(a2 + 48), v16[0] = *(a2 + 32), v16[1] = v10, sub_2F118(v15, v14), sub_2F118(v16, v14), v11 = _s16MusicApplication19TextLabelPropertiesV2eeoiySbAC_ACtFZ_0(v15, v16), sub_2F174(v16), sub_2F174(v15), (v11))
  {
    v12 = sub_ABA520();
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void _s16MusicApplication11TextDrawingV5CacheC019additionalInsetsForC0_4fontSo06UIEdgeG0VSS_So6UIFontCtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  left = UIEdgeInsetsZero.left;
  top = UIEdgeInsetsZero.top;
  v22 = right;
  v23 = bottom;
  v8 = String.containsExcessiveHeightCharacters.getter(a1, a2);
  if (v8)
  {
    if (qword_DE6820 != -1)
    {
      v8 = swift_once();
    }

    v9 = qword_DF0000;
    v21[0] = a1;
    v21[1] = a2;
    __chkstk_darwin(v8);
    v20[2] = v21;

    v10 = sub_1B39BC(sub_109BB0, v20, v9);

    if ((v10 & 1) == 0)
    {
      if (qword_DE6818 != -1)
      {
        swift_once();
      }

      v11 = [qword_DEFFF8 objectForKey:a3];
      if (v11)
      {
        v12 = v11;
        UIEdgeInsetsFromString(v11);
      }

      else
      {
        CTFontGetLanguageAwareOutsets();
        v14 = left;
        v13 = top;
        v16 = v22;
        v15 = v23;
        v17 = qword_DEFFF8;
        v26.top = v13;
        v26.left = v14;
        v26.bottom = v15;
        v26.right = v16;
        v18 = NSStringFromUIEdgeInsets(v26);
        if (v18)
        {
          v19 = v18;
          [v17 setObject:v18 forKey:a3];
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

id sub_108594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSString *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>)
{
  v162 = a7;
  v163 = a9;
  v159 = a4;
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;

  v21 = *(a6 + 80);
  v177[2] = *(a6 + 64);
  v177[3] = v21;
  v177[4] = *(a6 + 96);
  v22 = *(a6 + 48);
  v177[0] = *(a6 + 32);
  v177[1] = v22;
  v23 = *(a3 + 48);
  *(a6 + 64) = *(a3 + 32);
  *(a6 + 80) = v23;
  *(a6 + 96) = *(a3 + 64);
  v24 = *(a3 + 16);
  *(a6 + 32) = *a3;
  *(a6 + 48) = v24;
  sub_2F118(a3, &v165);
  sub_2F174(v177);
  *(a6 + 112) = a10;
  *(a6 + 120) = a11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF04D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = UIFontTextStyleSubheadline;
  *(inited + 40) = UIFontTextStyleHeadline;
  v26 = UIFontTextStyleSubheadline;
  v27 = UIFontTextStyleHeadline;
  v28 = [a5 objectForKey:a6];
  if (v28)
  {
    v29 = v28[6];
    v169 = v28[5];
    v170 = v29;
    v30 = v28[8];
    v171 = v28[7];
    v172 = v30;
    v31 = v28[2];
    v165 = v28[1];
    v166 = v31;
    v32 = v28[4];
    v167 = v28[3];
    v168 = v32;
    sub_109B04(&v165, v164);

    v34 = *(&v172 + 1);
    v35 = v172;
    v36 = *(&v171 + 1);
    v37 = *&v171;
    v38 = *(&v169 + 1);
    top = *&v169;
    v40 = *(&v170 + 1);
    v41 = *&v170;
    v42 = *(&v168 + 1);
    v43 = *&v168;
    v45 = *(&v167 + 1);
    v44 = v167;
    v47 = *(&v165 + 1);
    v46 = v165;
    v48 = v166;
    v49 = BYTE8(v166);
LABEL_63:
    LOBYTE(v165) = v49;
    v145 = v163;
    *v163 = v46;
    v145[1] = v47;
    v145[2] = v48;
    *(v145 + 24) = v49;
    v145[4] = v44;
    v145[5] = v45;
    *(v145 + 6) = v43;
    *(v145 + 7) = v42;
    *(v145 + 8) = top;
    *(v145 + 9) = v38;
    *(v145 + 10) = v41;
    *(v145 + 11) = v40;
    *(v145 + 12) = v37;
    *(v145 + 13) = v36;
    v145[14] = v35;
    *(v145 + 15) = v34;
    return result;
  }

  v50 = v162;
  v157 = inited;
  v160 = a1;
  v161 = a2;
  v153 = a5;
  v51 = *(a3 + 8);
  v52 = *(a3 + 16);
  v53 = *(a3 + 24);
  v54 = *(a3 + 40);
  if ((v54 & 0x8000000000000000) == 0)
  {
    v55 = *(a3 + 48);
    v56 = *(a3 + 32);
    *&v173 = *a3;
    v57 = v173;
    *(&v173 + 1) = v51;
    LOBYTE(v174) = v52;
    *(&v174 + 1) = v53;
    *&v175 = v56;
    v158 = *&v54;
    BYTE8(v175) = v54;
    v176 = v55;
    v58 = *(a8 + 24);
    object = *(a8 + 16);
    v156 = v58;
    v59 = *(a8 + 64);
    *(a8 + 64) = v55;
    v60 = v174;
    *(a8 + 16) = v173;
    *(a8 + 32) = v60;
    *(a8 + 48) = v175;
    v61 = v57;
    v62 = v51;
    v63 = v55;
    v64 = v61;
    v65 = v62;
    v66 = v63;

    v67 = [v50 objectForKey:a8];
    if (!v67 || (v68 = v67, *&v165 = 0, type metadata accessor for Key(0), sub_109BD0(&qword_DE6EF0, type metadata accessor for Key), sub_AB8FE0(), v68, (v69 = v165) == 0))
    {
      v69 = TextAttributes.toDictionary(tintColor:)(v159);
      _s5CacheC17AttributesWrapperCMa();
      v70 = swift_allocObject();
      v71 = v174;
      *(v70 + 16) = v173;
      *(v70 + 32) = v71;
      *(v70 + 48) = v175;
      *(v70 + 64) = v176;
      sub_2F118(a3, &v165);
      type metadata accessor for Key(0);
      sub_109BD0(&qword_DE6EF0, type metadata accessor for Key);
      isa = sub_AB8FD0().super.isa;
      [v50 setObject:isa forKey:v70];
    }

    v73 = String.applyingCapitalization(_:)(SLOBYTE(v158));
    countAndFlagsBits = v73._countAndFlagsBits;
    v75 = *(a3 + 56);
    object = v73._object;
    v156 = v69;
    if (v75 < 2)
    {
    }

    else
    {

      v76 = v66;
      v77 = [v76 _fontAdjustedForCurrentContentSizeCategory];
      if (v77)
      {
        v78 = v77;

        v76 = v78;
      }

      v79 = [v76 fontDescriptor];

      v80 = [v79 fontAttributes];
      type metadata accessor for AttributeName(0);
      sub_109BD0(&qword_DE78C8, type metadata accessor for AttributeName);
      v81 = sub_AB8FF0();

      if (*(v81 + 16) && (v82 = sub_2F5AD8(UIFontDescriptorTextStyleAttribute), (v83 & 1) != 0))
      {
        sub_808B0(*(v81 + 56) + 32 * v82, &v165);
      }

      else
      {
        v165 = 0u;
        v166 = 0u;
      }

      if (*(&v166 + 1))
      {
        type metadata accessor for TextStyle(0);
        if (swift_dynamicCast())
        {
          v93 = v164[0];

          *&v165 = v164[0];
          __chkstk_darwin(v94);
          v146[2] = &v165;
          LODWORD(v154) = sub_1B3A68(sub_109B90, v146, v157);

LABEL_25:
          v91 = v66;
          v95 = [v91 _fontAdjustedForCurrentContentSizeCategory];
          *&v54 = v158;
          if (v95)
          {
            v96 = v95;

            v91 = v96;
          }

          sub_2F174(a3);
          v97 = v91;
          goto LABEL_28;
        }
      }

      else
      {

        sub_9BC10(&v165);
      }
    }

    LODWORD(v154) = 0;
    goto LABEL_25;
  }

  sub_2F118(a3, &v165);
  countAndFlagsBits = v52(v160, v161);
  v84 = countAndFlagsBits;
  v85 = [v84 length];
  if (v85 <= 0)
  {

    v91 = 0;
    LODWORD(v154) = 0;
    object = 0;
    v156 = 0;
  }

  else
  {
    v162 = countAndFlagsBits;
    v158 = *&v54;
    v164[0] = 0;
    *&v173 = 0;
    v159 = NSFontAttributeName;
    v86 = v85;
    v87 = swift_allocObject();
    *(v87 + 16) = &v173;
    *(v87 + 24) = v164;
    v88 = swift_allocObject();
    *(v88 + 16) = sub_9B94C;
    *(v88 + 24) = v87;
    *&v167 = sub_109B70;
    *(&v167 + 1) = v88;
    *&v165 = _NSConcreteStackBlock;
    *(&v165 + 1) = 1107296256;
    *&v166 = sub_9B8A0;
    *(&v166 + 1) = &block_descriptor_34;
    v89 = _Block_copy(&v165);

    [v84 enumerateAttribute:v159 inRange:0 options:v86 usingBlock:{0, v89}];

    _Block_release(v89);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_65;
    }

    v91 = v164[0];

    v92 = v91;

    LODWORD(v154) = 0;
    object = 0;
    v156 = 0;
    *&v54 = v158;
    countAndFlagsBits = v162;
  }

LABEL_28:
  v98 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v98 setWantsBaselineOffset:1];
  result = [v98 setWantsNumberOfLineFragments:1];
  v99 = *(a3 + 56);
  if ((v99 & 0x8000000000000000) == 0)
  {
    [v98 setMaximumNumberOfLines:*(a3 + 56)];
    [v98 setWrapsForTruncationMode:v99 != 1];
    *&v165 = a10;
    v164[0] = 0;
    sub_471A4();
    v100 = sub_AB3900();
    v151 = a10;
    if (v100)
    {
      v101 = 5.99231045e307;
    }

    else
    {
      *&v165 = a10;
      v164[0] = 0xBFF0000000000000;
      sub_7FD28();
      if (sub_AB38E0())
      {
        v101 = 5.99231045e307;
      }

      else
      {
        *&v165 = a10;
        v164[0] = 0x7FD5555555555555;
        if (sub_AB38F0())
        {
          v101 = 5.99231045e307;
        }

        else
        {
          v101 = a10;
        }
      }
    }

    *&v165 = a11;
    v164[0] = 0;
    v102 = sub_AB3900();
    v152 = a11;
    if (v102)
    {
      v103 = 5.99231045e307;
    }

    else
    {
      *&v165 = a11;
      v164[0] = 0xBFF0000000000000;
      sub_7FD28();
      if (sub_AB38E0())
      {
        v103 = 5.99231045e307;
      }

      else
      {
        *&v165 = a11;
        v164[0] = 0x7FD5555555555555;
        if (sub_AB38F0())
        {
          v103 = 5.99231045e307;
        }

        else
        {
          v103 = a11;
        }
      }
    }

    v150 = a3;
    [v98 setCachesLayout:1];
    v159 = v98;
    v162 = countAndFlagsBits;
    if (v54 < 0)
    {
      [countAndFlagsBits boundingRectWithSize:1 options:v98 context:{v101, v103}];
    }

    else
    {

      v104 = v156;

      v105 = sub_AB9260();
      sub_3E856C(v104);
      type metadata accessor for Key(0);
      v106 = v91;
      sub_109BD0(&qword_DE6EF0, type metadata accessor for Key);
      v107 = sub_AB8FD0().super.isa;

      [v105 boundingRectWithSize:1 options:v107 attributes:v98 context:{v101, v103}];

      v91 = v106;
    }

    v149 = v54 >> 63;
    sub_AB3A10();
    if (v101 < v108)
    {
      v108 = v101;
    }

    v147 = v108;
    v109 = a12;
    sub_AB3A10();
    if (v103 < v110)
    {
      v110 = v103;
    }

    if (LOBYTE(v154))
    {
      v42 = v110 + 2.0;
    }

    else
    {
      v42 = v110;
    }

    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v148 = v91;
    if (v91)
    {
      _s16MusicApplication11TextDrawingV5CacheC019additionalInsetsForC0_4fontSo06UIEdgeG0VSS_So6UIFontCtFZ_0(v160, v161, v91);
      top = v116;
      v41 = v115;
      v154 = v117;
      v118 = v162;
      v119 = v159;
      v158 = v114;
      if (v116 != UIEdgeInsetsZero.top || v114 != left || v115 != bottom || v154 != right)
      {
        v34 = v109;
        sub_AB3A10();
        v43 = v147 + v120;
        [v91 ascender];
        [v91 descender];
        sub_AB3A10();
        v122 = v121;
        v123 = [(NSString *)v119 numberOfLineFragments];

        v42 = v122 * v123;
        goto LABEL_62;
      }

      v34 = v109;
    }

    else
    {
      top = UIEdgeInsetsZero.top;
      v158 = left;
      v41 = bottom;
      v154 = right;
      v34 = v109;
      v118 = v162;
      v119 = v159;
    }

    v43 = v147;
LABEL_62:
    [(NSString *)v119 baselineOffset];
    v125 = v124;
    sub_AB3A00();
    v127 = v126;
    [(NSString *)v119 firstBaselineOffset];
    v129 = v127 - v125 + v128;
    sub_AB3A10();
    v37 = v129 + v130;
    sub_AB3A10();
    v36 = v42 - v127 - v131;
    v35 = [(NSString *)v119 numberOfLineFragments];
    v132 = object;
    v133 = v156;
    *&v165 = v118;
    *(&v165 + 1) = object;
    *&v166 = v156;
    BYTE8(v166) = v54 < 0;
    v45 = 1;
    *&v167 = v119;
    *(&v167 + 1) = 1;
    *&v168 = v43;
    *(&v168 + 1) = v42;
    *&v169 = top;
    *(&v169 + 1) = v158;
    v40 = v154;
    *&v170 = v41;
    *(&v170 + 1) = v154;
    *&v171 = v37;
    *(&v171 + 1) = v36;
    *&v172 = v35;
    *(&v172 + 1) = v34;
    _s5CacheC14ContextWrapperCMa();
    v134 = swift_allocObject();
    v135 = v170;
    v134[5] = v169;
    v134[6] = v135;
    v136 = v172;
    v134[7] = v171;
    v134[8] = v136;
    v137 = v166;
    v134[1] = v165;
    v134[2] = v137;
    v138 = v168;
    v134[3] = v167;
    v134[4] = v138;
    _s5CacheC3KeyCMa();
    v139 = swift_allocObject();
    v140 = v161;
    *(v139 + 16) = v160;
    *(v139 + 24) = v140;
    v141 = v150;
    v142 = v150[3];
    *(v139 + 64) = v150[2];
    *(v139 + 80) = v142;
    *(v139 + 96) = v141[4];
    v143 = v141[1];
    *(v139 + 32) = *v141;
    *(v139 + 48) = v143;
    *&v143 = v152;
    *(v139 + 112) = v151;
    *(v139 + 120) = v143;

    v144 = v141;
    v47 = v132;
    sub_2F118(v144, v164);
    sub_109B04(&v165, v164);
    v48 = v133;
    v46 = v162;
    [v153 setObject:v134 forKey:v139 cost:sub_AB9420()];

    v49 = v149;
    sub_E1E78(v46, v132, v48, v149);

    v44 = v159;

    v38 = v158;
    goto LABEL_63;
  }

  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

void sub_109468()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];
  sub_D5EA8();
  sub_109BD0(&qword_DEE368, sub_D5EA8);
  v31 = v1;
  v2 = sub_AB9B40();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_ABAC10();
    sub_AB9BC0();
    v2 = v34;
    v3 = v35;
    v4 = v36;
    v5 = v37;
    v6 = v38;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);

    v5 = 0;
  }

  v30 = v4;
  v10 = (v4 + 64) >> 6;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_23:
      sub_2BB88();

      return;
    }

    while (1)
    {
      v16 = v2;
      v32 = v15;
      v17 = [v15 session];
      v18 = [v17 role];

      v19 = sub_AB92A0();
      v21 = v20;
      if (v19 == sub_AB92A0() && v21 == v22)
      {
        break;
      }

      v24 = sub_ABB3C0();

      if (v24)
      {
        goto LABEL_25;
      }

      v5 = v13;
      v6 = v14;
      v2 = v16;
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (sub_ABAC90())
      {
        swift_unknownObjectRetain();
        swift_dynamicCast();
        swift_unknownObjectRelease();
        v15 = v33;
        v13 = v5;
        v14 = v6;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

LABEL_25:
    sub_2BB88();

    objc_opt_self();
    if (!swift_dynamicCastObjCClass() || (v25 = UIWindowScene.mainWindow.getter()) == 0 || (v26 = v25, v27 = [v25 rootViewController], v26, !v27))
    {

      return;
    }

    if (([v27 isViewLoaded] & 1) == 0)
    {

      return;
    }

    v28 = [v27 view];
    if (v28)
    {
      v29 = v28;
      [v28 tintColor];

      return;
    }
  }

  else
  {
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_23;
      }

      v12 = *(v3 + 8 * v13);
      ++v11;
      if (v12)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1098E0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_109BD0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_109C20@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_11138C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

NSString sub_109CA4()
{
  result = sub_AB9260();
  qword_E70E40 = result;
  return result;
}

id sub_109CDC()
{
  result = [objc_allocWithZone(type metadata accessor for ModelPlayabilityController()) init];
  qword_E70E48 = result;
  return result;
}

char *sub_109D68()
{
  *&v0[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_playerSubscription] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_hasActiveAccount] = 2;
  v0[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_shouldSkipSubscriptionFetch] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_accountStoreNotificationObserver] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_cellularNetworkingAllowedNotificationObserver] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_cellularNetworkingAllowedVideosNotificationObserver] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_explicitContentRestrictionNotificationObserver] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_fairPlaySubscriptionStatusNotificationObserver] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_subscriptionStatusNotificationObserver] = 0;
  v32.receiver = v0;
  v32.super_class = type metadata accessor for ModelPlayabilityController();
  v1 = objc_msgSendSuper2(&v32, "init");
  v2 = ICActiveUserIdentityDidChangeNotification;
  v3 = objc_opt_self();
  v4 = v1;
  v5 = v2;
  v6 = [v3 defaultIdentityStore];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_accountStoreNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v5, v6, 1, 1, sub_112B6C, v7);

  v8 = MPNetworkObserverIsMusicCellularStreamingAllowedDidChangeNotification;
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 sharedNetworkObserver];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_cellularNetworkingAllowedNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v10, v11, 1, 1, sub_112B74, v12);

  v13 = MPNetworkObserverIsVideoCellularStreamingAllowedDidChangeNotification;
  v14 = [v9 sharedNetworkObserver];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_cellularNetworkingAllowedVideosNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v13, v14, 1, 1, sub_112C1C, v15);

  v16 = MPRestrictionsMonitorAllowsExplicitContentDidChangeNotification;
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 sharedRestrictionsMonitor];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_explicitContentRestrictionNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v18, v19, 1, 1, sub_112C1C, v20);

  v21 = MPCloudServiceStatusControllerFairPlaySubscriptionStatusDidChangeNotification;
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 sharedController];
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_fairPlaySubscriptionStatusNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v23, v24, 1, 1, sub_112C1C, v25);

  v26 = MPCloudServiceStatusControllerSubscriptionStatusDidChangeNotification;
  v27 = [v22 sharedController];
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();

  swift_allocObject();
  *&v4[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_subscriptionStatusNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v26, v27, 1, 1, sub_112C1C, v28);

  *&v4[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_playerSubscription] = 0;

  v29 = [objc_opt_self() sharedMonitor];
  v30 = v4;
  [v29 registerObserver:v30];

  return v30;
}

void sub_10A2E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_DE69F0 != -1)
    {
      swift_once();
    }

    v2 = sub_AB4BC0();
    __swift_project_value_buffer(v2, qword_E71320);
    v3 = v1;
    v4 = sub_AB4BA0();
    v5 = sub_AB9F50();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v6 = 67240706;
      *(v6 + 4) = v3[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_shouldSkipSubscriptionFetch];

      *(v6 + 8) = 2082;
      static ApplicationCapabilities.shared.getter(v25);
      sub_70C54(v25);
      if (BYTE8(v25[0]))
      {
        v7 = 1702195828;
      }

      else
      {
        v7 = 0x65736C6166;
      }

      if (BYTE8(v25[0]))
      {
        v8 = 0xE400000000000000;
      }

      else
      {
        v8 = 0xE500000000000000;
      }

      v9 = sub_425E68(v7, v8, &v24);

      *(v6 + 10) = v9;
      *(v6 + 18) = 2082;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0608);
      v10 = sub_AB9350();
      v12 = sub_425E68(v10, v11, &v24);

      *(v6 + 20) = v12;
      _os_log_impl(&dword_0, v4, v5, "ModelPlayabilityController - ICActiveUserIdentityDidChange received - shouldSkipSubscriptionFetch=%{BOOL,public}d - hasSubscriptionFullCatalogPlaybackCapability=%{public}s - hasActiveAccount=%{public}s", v6, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_13C80(0, &qword_DF0600);
    v13 = static ICUserIdentityStore.activeAccountDSID.getter();
    v14 = v13 != 0;

    v3[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_hasActiveAccount] = v14;
    v15 = v3;
    v16 = sub_AB4BA0();
    v17 = sub_AB9F50();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136446210;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0608);
      v20 = sub_AB9350();
      v22 = sub_425E68(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_0, v16, v17, "ModelPlayabilityController - ICActiveUserIdentityDidChange received - Updating active account status - hasActiveAccount=%{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
    }

    v23 = [objc_opt_self() defaultCenter];
    if (qword_DE6830 != -1)
    {
      swift_once();
    }

    [v23 postNotificationName:qword_E70E40 object:v15 userInfo:0];
  }
}

void sub_10A6CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() defaultCenter];
    if (qword_DE6830 != -1)
    {
      swift_once();
    }

    [v2 postNotificationName:qword_E70E40 object:v1 userInfo:0];
  }
}

id sub_10A7B8()
{
  v1 = [objc_opt_self() sharedMonitor];
  [v1 unregisterObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ModelPlayabilityController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10A950()
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
  v6 = [objc_opt_self() propertySetWithProperties:isa];

  qword_DF04E0 = v6;
}

void sub_10AA44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF4EC0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  isa = sub_AB9740().super.isa;
  v3 = [objc_opt_self() propertySetWithProperties:isa];

  qword_DF04E8 = v3;
}

void sub_10AAFC()
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
  v6 = [objc_opt_self() propertySetWithProperties:isa];

  qword_DF04F0 = v6;
}

uint64_t sub_10AC20(void *a1)
{
  v2 = v1;
  if (qword_DE6858 != -1)
  {
    swift_once();
  }

  v4 = sub_AB4BC0();
  __swift_project_value_buffer(v4, qword_DF04F8);
  v5 = a1;
  v6 = sub_AB4BA0();
  v7 = sub_AB9F10();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v38[0] = v9;
    *v8 = 136446210;
    if (a1)
    {
      v10 = sub_27ECD0(&off_CEF8A0);
      v11 = MPModelObject.humanDescription(including:)(v10);
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    aBlock = v11;
    v41 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0);
    v14 = sub_AB9350();
    v16 = sub_425E68(v14, v15, v38);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_0, v6, v7, "calculatePlayabilityStatus - start with model=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
  }

  v17 = [objc_opt_self() sharedMonitor];
  v18 = [v17 networkType];

  v19 = OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_hasActiveAccount;
  v20 = v2[OBJC_IVAR____TtC16MusicApplication26ModelPlayabilityController_hasActiveAccount];
  if (v20 == 2)
  {
    sub_13C80(0, &qword_DF0600);
    v21 = static ICUserIdentityStore.activeAccountDSID.getter();
    LOBYTE(v20) = v21 != 0;

    if (v2[v19] == 2)
    {
      v2[v19] = v21 != 0;
    }
  }

  v46 = 0;
  v47 = 1;
  v22 = objc_opt_self();
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = &v46;
  *(v23 + 32) = v20 & 1;
  *(v23 + 40) = v2;
  *(v23 + 48) = v18;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_112A68;
  *(v24 + 24) = v23;
  v44 = sub_36C08;
  v45 = v24;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_1822E0;
  v43 = &block_descriptor_161;
  v25 = _Block_copy(&aBlock);
  v26 = v5;
  v27 = v2;

  [v22 performWithoutEnforcement:v25];
  _Block_release(v25);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
  }

  else
  {
    v29 = sub_AB4BA0();
    v30 = sub_AB9F10();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39 = v32;
      *v31 = 136446210;
      swift_beginAccess();
      aBlock = v46;
      LOBYTE(v41) = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF0610);
      v33 = sub_AB9350();
      v35 = sub_425E68(v33, v34, &v39);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_0, v29, v30, "calculatePlayabilityStatus - final status=%{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
    }

    swift_beginAccess();
    v36 = v46;
    v37 = v47;

    if (v37)
    {
      return 0;
    }

    else
    {
      return v36;
    }
  }

  return result;
}

void sub_10B0F4(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  if (a1)
  {
    v7 = a1;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      v10 = [objc_opt_self() sharedNetworkObserver];
      if (v10)
      {
        v11 = v10;
        v158 = [v10 isMusicCellularStreamingAllowed];

        v12 = [v9 isExplicitSong];
        v13 = [objc_opt_self() sharedRestrictionsMonitor];
        v14 = [v13 allowsExplicitContent];

        v15 = [v9 localFileAsset];
        v16 = [v9 storeAsset];
        v17 = [v9 homeSharingAsset];
        v169 = v15;
        if (v15)
        {
          v18 = v15;
          if ([v18 isNonPurgeable])
          {
            v19 = [v18 protectionType];

            v163 = v19 == &dword_0 + 2;
            v166 = 1;
            goto LABEL_17;
          }
        }

        v163 = 0;
        v166 = 0;
LABEL_17:
        v161 = v16;
        if (qword_DE6858 != -1)
        {
          swift_once();
        }

        v151 = sub_AB4BC0();
        __swift_project_value_buffer(v151, qword_DF04F8);
        v31 = sub_AB4BA0();
        v32 = sub_AB9F10();
        if (os_log_type_enabled(v31, v32))
        {
          v152 = v17;
          v33 = swift_slowAlloc();
          *&v177[0] = swift_slowAlloc();
          *v33 = 67240962;
          *(v33 + 4) = v12;
          *(v33 + 8) = 1026;
          *(v33 + 10) = v14;
          *(v33 + 14) = 2082;
          if (v166)
          {
            v34 = 1702195828;
          }

          else
          {
            v34 = 0x65736C6166;
          }

          v154 = v7;
          if (v166)
          {
            v35 = 0xE400000000000000;
          }

          else
          {
            v35 = 0xE500000000000000;
          }

          v36 = sub_425E68(v34, v35, v177);

          *(v33 + 16) = v36;
          *(v33 + 24) = 2082;
          if (v163)
          {
            v37 = 1702195828;
          }

          else
          {
            v37 = 0x65736C6166;
          }

          if (v163)
          {
            v38 = 0xE400000000000000;
          }

          else
          {
            v38 = 0xE500000000000000;
          }

          v39 = sub_425E68(v37, v38, v177);

          *(v33 + 26) = v39;
          v7 = v154;
          _os_log_impl(&dword_0, v31, v32, "calculateIndividualItemStatus - isExplicit=%{BOOL,public}d, isExplicitContentAllowed=%{BOOL,public}d, hasNonPurgeableLocalAsset=%{public}s, hasNonPurgeableSubscriptionLocalAsset=%{public}s", v33, 0x22u);
          swift_arrayDestroy();

          v17 = v152;
        }

        v40 = v161;
        if (v14 & 1 | ((v12 & 1) == 0))
        {
          v41 = v166;
          if (!v161)
          {
            v41 = 1;
          }

          if (v41)
          {
            if (!v163)
            {
              goto LABEL_44;
            }
          }

          else if ((([v161 isRedownloadable] | v163) & 1) == 0)
          {
            goto LABEL_44;
          }

          if (a3 & 1) != 0 || (static ApplicationCapabilities.shared.getter(v175), sub_70C54(v175), (BYTE8(v175[0])))
          {
LABEL_44:
            if (v166)
            {
              v43 = v163;
              if (a5)
              {
                v43 = 0;
              }

              if (!v43 || (v44 = [objc_opt_self() sharedController], v45 = objc_msgSend(v44, "lastKnownSubscriptionFairPlayKeyStatus"), v44, !v45) || (v46 = objc_msgSend(v45, "hasOfflinePlaybackKeys"), v45, (v46 & 1) != 0))
              {
LABEL_99:
                v42 = 0;
                goto LABEL_203;
              }

              if (!v161)
              {
                goto LABEL_95;
              }
            }

            else
            {
              if (!v161)
              {
                goto LABEL_95;
              }

              v56 = v161;
              if ([v56 endpointType] == &dword_0 + 3)
              {
                if ([v56 isSubscriptionRequired])
                {
                  static ApplicationCapabilities.shared.getter(v176);
                  sub_70C54(v176);
                  if ((BYTE8(v176[0]) & 1) == 0)
                  {
                    v153 = v17;
                    if (qword_DE69F0 != -1)
                    {
                      swift_once();
                    }

                    __swift_project_value_buffer(v151, qword_E71320);
                    v57 = a4;
                    v58 = v7;
                    v59 = sub_AB4BA0();
                    v60 = sub_AB9F50();

                    if (os_log_type_enabled(v59, v60))
                    {
                      v61 = swift_slowAlloc();
                      v62 = swift_slowAlloc();
                      v172 = v62;
                      *v61 = 136446466;
                      v63 = sub_27ECD0(&off_CF0288);
                      v64 = MPModelObject.humanDescription(including:)(v63);
                      v66 = v65;

                      *&v177[0] = v64;
                      *(&v177[0] + 1) = v66;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0);
                      v67 = sub_AB9350();
                      v69 = sub_425E68(v67, v68, &v172);

                      *(v61 + 4) = v69;
                      *(v61 + 12) = 1026;
                      static ApplicationCapabilities.shared.getter(v177);
                      sub_70C54(v177);

                      *(v61 + 14) = BYTE8(v177[0]) & 1;
                      _os_log_impl(&dword_0, v59, v60, "ModelPlayabilityController - calculateIndividualItemStatus - Subscription required for item=%{public}s - hasSubscriptionFullCatalogPlaybackCapability=%{BOOL,public}d", v61, 0x12u);
                      __swift_destroy_boxed_opaque_existential_0(v62);

                      v40 = v161;
                    }

                    else
                    {
                    }

                    v42 = 7;
                    v17 = v153;
                    goto LABEL_203;
                  }
                }
              }
            }

            if ([v161 isRedownloadable])
            {
LABEL_97:
              if (!(v158 & 1 | ((ICEnvironmentNetworkTypeIsCellular() & 1) == 0)))
              {
                v42 = 3;
                goto LABEL_203;
              }

              if (!a5)
              {
                v42 = 4;
                goto LABEL_203;
              }

              goto LABEL_99;
            }

LABEL_95:
            if (!v17 || ([v17 isAvailable] & 1) == 0)
            {
              if (v161 && ([v161 needsUserUpload] & 1) != 0)
              {
                v42 = 8;
              }

              else
              {
                v42 = 5;
              }

              goto LABEL_203;
            }

            goto LABEL_97;
          }

          v42 = 6;
        }

        else
        {
          v42 = 2;
        }

LABEL_203:
        v133 = sub_AB4BA0();
        v134 = sub_AB9F10();
        if (os_log_type_enabled(v133, v134))
        {
          v135 = swift_slowAlloc();
          v136 = swift_slowAlloc();
          v174 = v136;
          *v135 = 136446210;
          v172 = v42;
          v173 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF0610);
          v137 = sub_AB9350();
          v139 = sub_425E68(v137, v138, &v174);

          *(v135 + 4) = v139;
          _os_log_impl(&dword_0, v133, v134, "calculateIndividualItemStatus - final status=%{public}s", v135, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v136);
        }

        *a2 = v42;
        v115 = (a2 + 8);
        goto LABEL_217;
      }

      __break(1u);
      goto LABEL_224;
    }

    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v21 = v20;
      v22 = [objc_opt_self() sharedNetworkObserver];
      if (!v22)
      {
LABEL_224:
        __break(1u);
        goto LABEL_225;
      }

      v23 = v22;
      v160 = [v22 isVideoCellularStreamingAllowed];

      LODWORD(v24) = MPModelTVEpisodeIsRestricted();
      v25 = [v21 localFileAsset];
      v26 = [v21 storeAsset];
      v170 = v25;
      if (v25)
      {
        v27 = v25;
        if ([v27 isNonPurgeable])
        {
          v28 = v24;
          v24 = [v27 protectionType];

          v29 = v24 == 2;
          LODWORD(v24) = v28;
          v30 = v29;
          v167 = v30;
          LODWORD(v25) = 1;
        }

        else
        {

          v167 = 0;
          LODWORD(v25) = 0;
        }
      }

      else
      {
        v167 = 0;
      }

      if (qword_DE6858 != -1)
      {
        swift_once();
      }

      v70 = sub_AB4BC0();
      __swift_project_value_buffer(v70, qword_DF04F8);
      v71 = sub_AB4BA0();
      v72 = sub_AB9F10();
      v164 = v25;
      if (os_log_type_enabled(v71, v72))
      {
        v155 = v70;
        v73 = swift_slowAlloc();
        *&v177[0] = swift_slowAlloc();
        *v73 = 67240962;
        *(v73 + 4) = v24;
        *(v73 + 8) = 1026;
        *(v73 + 10) = 0;
        *(v73 + 14) = 2082;
        if (v25)
        {
          v74 = 1702195828;
        }

        else
        {
          v74 = 0x65736C6166;
        }

        v75 = v24;
        if (v25)
        {
          v76 = 0xE400000000000000;
        }

        else
        {
          v76 = 0xE500000000000000;
        }

        v77 = a5;
        v78 = sub_425E68(v74, v76, v177);

        *(v73 + 16) = v78;
        *(v73 + 24) = 2082;
        if (v167)
        {
          v79 = 1702195828;
        }

        else
        {
          v79 = 0x65736C6166;
        }

        if (v167)
        {
          v24 = 0xE400000000000000;
        }

        else
        {
          v24 = 0xE500000000000000;
        }

        v80 = sub_425E68(v79, v24, v177);
        LOBYTE(v24) = v75;

        *(v73 + 26) = v80;
        a5 = v77;
        _os_log_impl(&dword_0, v71, v72, "calculateIndividualItemStatus - isExplicit=%{BOOL,public}d, isExplicitContentAllowed=%{BOOL,public}d, hasNonPurgeableLocalAsset=%{public}s, hasNonPurgeableSubscriptionLocalAsset=%{public}s", v73, 0x22u);
        swift_arrayDestroy();

        v70 = v155;
      }

      if ((v24 & 1) == 0)
      {
        if (v26)
        {
          v81 = v164;
        }

        else
        {
          v81 = 1;
        }

        if (v81)
        {
          if (!v167)
          {
            goto LABEL_106;
          }
        }

        else if ((([v26 isRedownloadable] | v167) & 1) == 0)
        {
LABEL_106:
          if (v164)
          {
            v82 = v167;
            if (a5)
            {
              v82 = 0;
            }

            if (v82)
            {
              v83 = [objc_opt_self() sharedController];
              v84 = [v83 lastKnownSubscriptionFairPlayKeyStatus];

              if (v84)
              {
                v85 = [v84 hasOfflinePlaybackKeys];

                if ((v85 & 1) == 0)
                {
                  if (!v26)
                  {
                    goto LABEL_199;
                  }

LABEL_130:
                  if ([v26 isRedownloadable])
                  {
                    if (v160 & 1 | ((ICEnvironmentNetworkTypeIsCellular() & 1) == 0))
                    {
                      if (!a5)
                      {
                        goto LABEL_206;
                      }

                      goto LABEL_196;
                    }

LABEL_200:
                    v113 = 3;
                    goto LABEL_214;
                  }

LABEL_197:
                  if ([v26 needsUserUpload])
                  {
                    v113 = 8;
                    goto LABEL_214;
                  }

LABEL_199:
                  v113 = 5;
                  goto LABEL_214;
                }
              }
            }

LABEL_196:
            v113 = 0;
            goto LABEL_214;
          }

          if (!v26)
          {
            goto LABEL_199;
          }

          v102 = v26;
          if ([v102 endpointType] != &dword_0 + 3 || !objc_msgSend(v102, "isSubscriptionRequired") || (static ApplicationCapabilities.shared.getter(v176), sub_70C54(v176), (BYTE8(v176[0]) & 1) != 0))
          {

            goto LABEL_130;
          }

LABEL_187:
          if (qword_DE69F0 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v70, qword_E71320);
          v120 = a4;
          v121 = v7;
          v122 = sub_AB4BA0();
          v123 = sub_AB9F50();

          if (os_log_type_enabled(v122, v123))
          {
            v124 = swift_slowAlloc();
            v125 = swift_slowAlloc();
            v172 = v125;
            *v124 = 136446466;
            v126 = sub_27ECD0(&off_CF0288);
            v127 = MPModelObject.humanDescription(including:)(v126);
            v129 = v128;

            *&v177[0] = v127;
            *(&v177[0] + 1) = v129;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0);
            v130 = sub_AB9350();
            v132 = sub_425E68(v130, v131, &v172);

            *(v124 + 4) = v132;
            *(v124 + 12) = 1026;
            static ApplicationCapabilities.shared.getter(v177);
            sub_70C54(v177);

            *(v124 + 14) = BYTE8(v177[0]) & 1;
            _os_log_impl(&dword_0, v122, v123, "ModelPlayabilityController - calculateIndividualItemStatus - Subscription required for item=%{public}s - hasSubscriptionFullCatalogPlaybackCapability=%{BOOL,public}d", v124, 0x12u);
            __swift_destroy_boxed_opaque_existential_0(v125);
          }

          else
          {
          }

          v113 = 7;
          goto LABEL_214;
        }

        if (a3)
        {
          goto LABEL_106;
        }

        static ApplicationCapabilities.shared.getter(v175);
        sub_70C54(v175);
        if (BYTE8(v175[0]))
        {
          goto LABEL_106;
        }

        goto LABEL_174;
      }

LABEL_155:
      v113 = 2;
LABEL_214:
      v144 = sub_AB4BA0();
      v145 = sub_AB9F10();
      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v174 = v147;
        *v146 = 136446210;
        v172 = v113;
        v173 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF0610);
        v148 = sub_AB9350();
        v150 = sub_425E68(v148, v149, &v174);

        *(v146 + 4) = v150;
        _os_log_impl(&dword_0, v144, v145, "calculateIndividualItemStatus - final status=%{public}s", v146, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v147);
      }

      *a2 = v113;
      v115 = (a2 + 8);
      goto LABEL_217;
    }

    objc_opt_self();
    v47 = swift_dynamicCastObjCClass();
    if (v47)
    {
      v48 = v47;
      v49 = [objc_opt_self() sharedNetworkObserver];
      if (!v49)
      {
LABEL_225:
        __break(1u);
        goto LABEL_226;
      }

      v50 = v49;
      v162 = [v49 isVideoCellularStreamingAllowed];

      LODWORD(v51) = MPModelMovieIsRestricted();
      v52 = [v48 localFileAsset];
      v26 = [v48 storeAsset];
      v170 = v52;
      if (v52)
      {
        v53 = v52;
        if ([v53 isNonPurgeable])
        {
          v54 = v51;
          v51 = [v53 protectionType];

          v29 = v51 == 2;
          LODWORD(v51) = v54;
          v55 = v29;
          v168 = v55;
          LODWORD(v52) = 1;
        }

        else
        {

          v168 = 0;
          LODWORD(v52) = 0;
        }
      }

      else
      {
        v168 = 0;
      }

      if (qword_DE6858 != -1)
      {
        swift_once();
      }

      v70 = sub_AB4BC0();
      __swift_project_value_buffer(v70, qword_DF04F8);
      v103 = sub_AB4BA0();
      v104 = sub_AB9F10();
      v165 = v52;
      if (os_log_type_enabled(v103, v104))
      {
        v157 = v70;
        v105 = swift_slowAlloc();
        *&v177[0] = swift_slowAlloc();
        *v105 = 67240962;
        *(v105 + 4) = v51;
        *(v105 + 8) = 1026;
        *(v105 + 10) = 0;
        *(v105 + 14) = 2082;
        if (v52)
        {
          v106 = 1702195828;
        }

        else
        {
          v106 = 0x65736C6166;
        }

        v107 = v51;
        if (v52)
        {
          v108 = 0xE400000000000000;
        }

        else
        {
          v108 = 0xE500000000000000;
        }

        v109 = a5;
        v110 = sub_425E68(v106, v108, v177);

        *(v105 + 16) = v110;
        *(v105 + 24) = 2082;
        if (v168)
        {
          v111 = 1702195828;
        }

        else
        {
          v111 = 0x65736C6166;
        }

        if (v168)
        {
          v51 = 0xE400000000000000;
        }

        else
        {
          v51 = 0xE500000000000000;
        }

        v112 = sub_425E68(v111, v51, v177);
        LOBYTE(v51) = v107;

        *(v105 + 26) = v112;
        a5 = v109;
        _os_log_impl(&dword_0, v103, v104, "calculateIndividualItemStatus - isExplicit=%{BOOL,public}d, isExplicitContentAllowed=%{BOOL,public}d, hasNonPurgeableLocalAsset=%{public}s, hasNonPurgeableSubscriptionLocalAsset=%{public}s", v105, 0x22u);
        swift_arrayDestroy();

        v70 = v157;
      }

      if (v51)
      {
        goto LABEL_155;
      }

      if (v26)
      {
        v114 = v165;
      }

      else
      {
        v114 = 1;
      }

      if (v114)
      {
        if (!v168)
        {
          goto LABEL_175;
        }
      }

      else if ((([v26 isRedownloadable] | v168) & 1) == 0)
      {
        goto LABEL_175;
      }

      if ((a3 & 1) == 0)
      {
        static ApplicationCapabilities.shared.getter(v175);
        sub_70C54(v175);
        if ((BYTE8(v175[0]) & 1) == 0)
        {
LABEL_174:
          v113 = 6;
          goto LABEL_214;
        }
      }

LABEL_175:
      if (v165)
      {
        v116 = v168;
        if (a5)
        {
          v116 = 0;
        }

        if ((v116 & 1) == 0)
        {
          goto LABEL_196;
        }

        v117 = [objc_opt_self() sharedController];
        v118 = [v117 lastKnownSubscriptionFairPlayKeyStatus];

        if (!v118)
        {
          goto LABEL_196;
        }

        v119 = [v118 hasOfflinePlaybackKeys];

        if (v119)
        {
          goto LABEL_196;
        }

        if (!v26)
        {
          goto LABEL_199;
        }
      }

      else
      {
        if (!v26)
        {
          goto LABEL_199;
        }

        v102 = v26;
        if ([v102 endpointType] == &dword_0 + 3)
        {
          if ([v102 isSubscriptionRequired])
          {
            static ApplicationCapabilities.shared.getter(v176);
            sub_70C54(v176);
            if ((BYTE8(v176[0]) & 1) == 0)
            {
              goto LABEL_187;
            }
          }
        }
      }

      if ([v26 isRedownloadable])
      {
        if (v162 & 1 | ((ICEnvironmentNetworkTypeIsCellular() & 1) == 0))
        {
          if (!a5)
          {
LABEL_206:
            v113 = 4;
            goto LABEL_214;
          }

          goto LABEL_196;
        }

        goto LABEL_200;
      }

      goto LABEL_197;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      v86 = [objc_opt_self() sharedNetworkObserver];
      if (!v86)
      {
LABEL_226:
        __break(1u);
        goto LABEL_227;
      }

      v87 = v86;
      v88 = a3;
      v89 = [v86 isMusicCellularStreamingAllowed];

      v90 = ICEnvironmentNetworkTypeIsCellular() ^ 1 | v89;
      if (v90)
      {
        v91 = (4 * (a5 == 0));
      }

      else
      {
        v91 = (&dword_0 + 3);
      }

      if (qword_DE6858 != -1)
      {
        swift_once();
      }

      v92 = v90 & (a5 != 0);
      v93 = sub_AB4BC0();
      __swift_project_value_buffer(v93, qword_DF04F8);
      v94 = a4;
      v95 = sub_AB4BA0();
      v96 = sub_AB9F10();
      if (os_log_type_enabled(v95, v96))
      {
        v156 = v7;
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *&v175[0] = v98;
        *v97 = 67240706;
        *(v97 + 4) = v88 & 1;
        *(v97 + 8) = 2082;
        *&v177[0] = v91;
        BYTE8(v177[0]) = v92;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF0610);
        v99 = sub_AB9350();
        v101 = sub_425E68(v99, v100, v175);

        *(v97 + 10) = v101;
        *(v97 + 18) = 1026;
        static ApplicationCapabilities.shared.getter(v176);
        sub_70C54(v176);

        *(v97 + 20) = BYTE8(v176[0]) & 1;
        _os_log_impl(&dword_0, v95, v96, "calculatePlayabilityStatus hasActiveAccount=%{BOOL,public}d networkStatus=%{public}s hasSubscriptionFullCatalogPlaybackCapability=%{BOOL,public}d", v97, 0x18u);
        __swift_destroy_boxed_opaque_existential_0(v98);

        v7 = v156;
      }

      else
      {
      }

      if (v88)
      {
        if (v92)
        {
          static ApplicationCapabilities.shared.getter(v177);
          sub_70C54(v177);
          v115 = (a2 + 8);
          if ((BYTE8(v177[0]) & 0x80) == 0)
          {
            v91 = (&dword_4 + 3);
            *a2 = 7;
LABEL_169:
            *v115 = 0;
            if ((sub_10CB1C(v7, 0, v91) & 1) == 0)
            {
              return;
            }

            *a2 = 0;
            v115 = (a2 + 8);
            goto LABEL_217;
          }

LABEL_222:
          *a2 = 0;
LABEL_217:
          *v115 = 0;
          return;
        }
      }

      else
      {
        v91 = (&dword_4 + 2);
      }

      *a2 = v91;
      v115 = (a2 + 8);
      goto LABEL_169;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      return;
    }

    v140 = [objc_opt_self() sharedNetworkObserver];
    if (!v140)
    {
LABEL_227:
      __break(1u);
      return;
    }

    v141 = v140;
    v142 = [v140 isMusicCellularStreamingAllowed];

    v115 = (a2 + 8);
    if (!ICEnvironmentNetworkTypeIsCellular() || v142)
    {
      if (a5)
      {
        goto LABEL_222;
      }

      v143 = &dword_4;
    }

    else
    {
      v143 = (&dword_0 + 3);
    }

    *a2 = v143;
    *(a2 + 8) = 0;
    if (sub_10CB1C(v7, 0, v143))
    {
      goto LABEL_222;
    }
  }
}