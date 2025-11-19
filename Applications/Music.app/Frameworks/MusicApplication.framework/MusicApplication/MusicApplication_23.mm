void sub_1EE504(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, int a5, int a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v10 - 8);
  v12 = v57 - v11;
  v13 = sub_AB3820();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF7950);
  v18 = __chkstk_darwin(v17);
  v21 = v57 - v20;
  if (*(a1 + 48))
  {
    RequestResponse.Controller.isPaused.setter(0);
    v22 = type metadata accessor for LibraryMenuViewController();
    v75.receiver = a4;
    v75.super_class = v22;
    objc_msgSendSuper2(&v75, "setEditing:animated:", 0, a5 & 1);
    return;
  }

  v58 = v19;
  v59 = v18;
  v60 = v14;
  v61 = a6;
  v62 = a5;
  v68 = v16;
  v23 = *(a1 + 32);
  v24 = *(a1 + 40);
  v25 = *(a1 + 16);
  v26 = *(a1 + 24);
  v27 = a4;
  v66 = a4;
  v28 = *a1;
  v29 = *(a1 + 8);
  v30 = &v27[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_editingMenu];
  swift_beginAccess();
  v31 = *v30;
  v70 = v30[1];
  v71 = v31;
  v32 = v30[3];
  v69 = v30[2];
  v33 = v30[5];
  v64 = v30[4];
  v65 = v32;
  v63 = v33;
  *v30 = v28;
  v30[1] = v29;
  v30[2] = v25;
  v30[3] = v26;
  v30[4] = v23;
  v30[5] = v24;

  v57[0] = v29;

  v67 = v28;
  v57[4] = v25;
  v57[3] = v26;
  v57[2] = v23;
  v57[1] = v24;
  sub_1F34D0(v28, v29, v25, v26, v23, v24, 0);
  sub_1F3364(v71, v70);
  v69 = OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_dataSource;
  v34 = v66;
  v35 = *&v66[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_dataSource];
  if (!v35)
  {
    goto LABEL_20;
  }

  sub_1F3218();
  v36 = v35;
  sub_AB5110();
  v37._rawValue = &off_CF0BA8;
  v38 = v59;
  sub_AB50D0(v37);
  v73 = 0;
  v74 = 0;
  sub_AB5090();
  v39 = v62;
  sub_AB51C0();
  (*(v58 + 8))(v21, v38);

  v40 = type metadata accessor for LibraryMenuViewController();
  v72.receiver = v34;
  v72.super_class = v40;
  objc_msgSendSuper2(&v72, "setEditing:animated:", v61 & 1, v39 & 1);
  v41 = 0;
  v42 = (v60 + 48);
  v70 = (v60 + 8);
  v71 = (v60 + 32);
  v44 = v68;
  v43 = v69;
  while (1)
  {
    v45 = *&v34[v43];
    if (!v45)
    {
      break;
    }

    LOBYTE(v73) = *(&off_CF0BD8 + v41 + 32);
    v46 = v45;
    sub_AB51D0();

    if ((*v42)(v12, 1, v13) == 1)
    {
      sub_12E1C(v12, &unk_DE8E20);
    }

    else
    {
      (*v71)(v44, v12, v13);
      v47 = [v34 tableView];
      if (v47)
      {
        v48 = v47;
        v49 = v13;
        v50 = v34;
        isa = sub_AB3770().super.isa;
        v52 = v44;
        v53 = [v48 cellForRowAtIndexPath:isa];

        if (!v53)
        {
          (*v70)(v52, v49);
          v44 = v52;
LABEL_16:
          v34 = v50;
          v13 = v49;
          v43 = v69;
          goto LABEL_6;
        }

        type metadata accessor for LibraryMenuViewController.Cell();
        v54 = swift_dynamicCastClass();
        if (!v54)
        {

          v44 = v68;
          (*v70)(v68, v49);
          goto LABEL_16;
        }

        v55 = v68;
        v56 = v50;
        sub_1F0304(v54);
        v13 = v49;
        (*v70)(v55, v49);

        v44 = v55;
        v34 = v56;
        v43 = v69;
      }

      else
      {
        (*v70)(v44, v13);
      }
    }

LABEL_6:
    if (++v41 == 2)
    {
      sub_1EF7F8();

      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

id sub_1EEC18()
{
  v1 = [objc_opt_self() sharedManager];
  [v1 unregisterObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for LibraryMenuViewController.DownloadManagerObserver();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1EEDC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  sub_13C80(0, &qword_DE8ED0);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = a1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(a7, v9);
}

uint64_t sub_1EEE64(uint64_t result, void *a2)
{
  v2 = *(result + *a2);
  if (v2)
  {

    v2(v3);

    return sub_17654(v2);
  }

  return result;
}

void sub_1EEF68(uint64_t a1)
{
  v32.receiver = v1;
  v32.super_class = type metadata accessor for LibraryMenuViewController();
  objc_msgSendSuper2(&v32, "traitCollectionDidChange:", a1);
  sub_1F004C();
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_requestResponseController];
  v4 = [v1 traitCollection];
  swift_beginAccess();
  v5 = *(v3 + 48);
  v34 = *(v3 + 32);
  v35 = v5;
  v6 = *(v3 + 64);
  v7 = *(v3 + 80);
  v33 = *(v3 + 16);
  v36 = v6;
  v37 = v7;
  v8 = *(&v34 + 1);
  v9 = v33;
  v10 = BYTE8(v33);
  v11 = *(v3 + 25);
  *(v40 + 3) = *(v3 + 28);
  v40[0] = v11;
  v12 = *(v3 + 57);
  v13 = *(v3 + 73);
  *&v39[15] = *(v3 + 88);
  v38 = v12;
  *v39 = v13;
  sub_1F32FC(&v33, &v22);
  UITraitCollection.mediaLibrary.getter();
  Library.Menu.Request.MediaLibrarySource.init(_:)();
  v15 = v14;
  v17 = v16;
  sub_1F3358(v9, v10);
  v31 = v17 & 1;
  rawValue = UITraitCollection.combinedLibraryRequestFilter.getter().rawValue;
  v19 = UITraitCollection.mediaPickerConfiguration.getter();

  v20 = UITraitCollection.mediaPickerConfiguration.getter();
  LOBYTE(v8) = v20 == 0;

  v21 = sub_1F26FC();

  v29 = v38;
  v22 = v15;
  v23 = v31;
  *v24 = v40[0];
  *&v24[3] = *(v40 + 3);
  v25 = rawValue;
  v26 = v19;
  v27 = v21;
  v28 = v8;
  *v30 = *v39;
  *&v30[15] = *&v39[15];
  RequestResponse.Controller.request.setter(&v22);
}

uint64_t sub_1EF278@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  if ([v3 isEditing] && (v6 = &v3[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_editingMenu], swift_beginAccess(), *v6) && *(*(v6 + 5) + 16) <= 1uLL)
  {
    v10 = sub_AB3820();
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }

  else
  {
    v7 = sub_AB3820();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a2, a1, v7);
    return (*(v8 + 56))(a2, 0, 1, v7);
  }
}

void sub_1EF5A4(void *a1, uint64_t a2, void *a3, void *a4, void (*a5)(char *))
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a1;
  a5(v12);

  (*(v10 + 8))(v12, v9);
}

void sub_1EF7F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7930);
  __chkstk_darwin(v1);
  v78 = &v70 - v2;
  v80 = sub_AB3820();
  v3 = *(v80 - 8);
  v4 = __chkstk_darwin(v80);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v70 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v70 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v70 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v70 - v20;
  __chkstk_darwin(v19);
  v23 = &v70 - v22;
  if (![v0 isEditing])
  {
    v47 = OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_pendingSelectedIdentifier;
    v48 = v0[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_pendingSelectedIdentifier];
    if (v48 == 13)
    {
      return;
    }

    v77 = v8;
    v79 = v0;
    v49 = *&v0[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_dataSource];
    if (!v49)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    LOBYTE(v82) = v48;
    v50 = v49;
    sub_AB51D0();

    v51 = v80;
    v76 = *(v3 + 48);
    if (v76(v21, 1, v80) == 1)
    {
      sub_12E1C(v21, &unk_DE8E20);
      return;
    }

    v72 = *(v3 + 32);
    v73 = v3 + 32;
    v72(v77, v21, v51);
    v52 = [v79 tableView];
    if (!v52)
    {
      goto LABEL_41;
    }

    v53 = v52;
    v74 = v47;
    v54 = [v52 indexPathForSelectedRow];
    v71 = v6;
    if (v54)
    {
      v55 = v54;
      sub_AB3790();

      v56 = 0;
    }

    else
    {
      v56 = 1;
    }

    v58 = *(v3 + 56);
    v59 = v80;
    v58(v18, v56, 1, v80);

    v75 = v3;
    (*(v3 + 16))(v15, v77, v59);
    v58(v15, 0, 1, v59);
    v60 = *(v1 + 48);
    v61 = v78;
    sub_15F84(v18, v78, &unk_DE8E20);
    sub_15F84(v15, v61 + v60, &unk_DE8E20);
    v62 = v76;
    if (v76(v61, 1, v59) == 1)
    {
      sub_12E1C(v15, &unk_DE8E20);
      sub_12E1C(v18, &unk_DE8E20);
      if (v62(v61 + v60, 1, v59) == 1)
      {
        sub_12E1C(v61, &unk_DE8E20);
        (*(v75 + 8))(v77, v59);
LABEL_35:
        v79[v74] = 13;
        return;
      }
    }

    else
    {
      sub_15F84(v61, v12, &unk_DE8E20);
      if (v62(v61 + v60, 1, v59) != 1)
      {
        v67 = v71;
        v72(v71, (v61 + v60), v59);
        sub_1F31C0();
        v68 = sub_AB91C0();
        v69 = *(v75 + 8);
        v69(v67, v59);
        sub_12E1C(v15, &unk_DE8E20);
        sub_12E1C(v18, &unk_DE8E20);
        v69(v12, v59);
        sub_12E1C(v61, &unk_DE8E20);
        if (v68)
        {
          v69(v77, v59);
          goto LABEL_35;
        }

LABEL_31:
        v63 = [v79 tableView];
        if (!v63)
        {
LABEL_42:
          __break(1u);
          return;
        }

        v64 = v63;
        v65 = v77;
        isa = sub_AB3770().super.isa;
        [v64 selectRowAtIndexPath:isa animated:0 scrollPosition:0];
        (*(v75 + 8))(v65, v59);

        goto LABEL_35;
      }

      sub_12E1C(v15, &unk_DE8E20);
      sub_12E1C(v18, &unk_DE8E20);
      (*(v75 + 8))(v12, v59);
    }

    sub_12E1C(v61, &unk_DF7930);
    goto LABEL_31;
  }

  v24 = v0;
  v25 = &v0[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_editingMenu];
  swift_beginAccess();
  v26 = *v25;
  if (*v25)
  {
    v79 = v24;
    v27 = *(v25 + 4);
    v28 = *(v25 + 5);
    v29 = *(v25 + 2);
    v30 = *(v25 + 3);
    v31 = *(v25 + 1);
    v82 = v26;
    v83 = v31;
    v84 = v29;
    v85 = v30;
    v86 = v27;
    v87 = v28;
    v32 = *(v26 + 16);
    if (v32)
    {
      v33 = v30;
      v34 = OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_dataSource;
      v78 = v27;
      v35 = (v3 + 48);
      v36 = (v3 + 8);

      v77 = v31;
      v37 = v31;
      v76 = v29;

      v75 = v33;

      v74 = v28;

      v38 = 0;
      while (v38 < *(v26 + 16))
      {
        v40 = *(v26 + v38 + 32);
        if (!Library.Menu.selectionState(for:)(v40))
        {
          v41 = v79;
          v42 = [v79 tableView];
          if (!v42)
          {
            goto LABEL_38;
          }

          v43 = *&v41[v34];
          if (!v43)
          {
            goto LABEL_39;
          }

          v44 = v42;
          v81 = v40;
          v45 = v43;
          sub_AB51D0();

          v46 = v80;
          if ((*v35)(v23, 1, v80) == 1)
          {
            v39.super.isa = 0;
          }

          else
          {
            v39.super.isa = sub_AB3770().super.isa;
            (*v36)(v23, v46);
          }

          [v44 selectRowAtIndexPath:v39.super.isa animated:0 scrollPosition:0];
        }

        if (v32 == ++v38)
        {

          v31 = v77;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v57 = v31;

LABEL_23:
  }
}

void sub_1F004C()
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
}

void sub_1F0304(uint64_t a1)
{
  if ([v1 isEditing])
  {
    goto LABEL_2;
  }

  v9 = *&v1[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_dataSource];
  if (!v9)
  {
    __break(1u);
    return;
  }

  v10 = v9;
  sub_AB51B0();

  if (v18 != 13)
  {
    if (v18 == 12)
    {
      v13 = [objc_opt_self() sharedManager];
      v14 = [v13 activeDownloadsCount];

      v15 = a1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle;
      v4 = *(a1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle);
      v16 = *(a1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle + 8);
      v17 = *(a1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle + 9);
      *v15 = v14 & ~(v14 >> 63);
      *(v15 + 8) = 0;
      *(v15 + 9) = v14 < 1;
      v8 = v16 | (v17 << 8);
      goto LABEL_4;
    }

    if (v18 == 11)
    {
      v11 = [objc_opt_self() sharedManager];
      v12 = [v11 hasActiveDownloads];

      v3 = a1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle;
      v4 = *(a1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle);
      v5 = *(a1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle + 8);
      v6 = *(a1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle + 9);
      *v3 = 0;
      *(v3 + 8) = v12;
      v7 = v12 ^ 1;
      goto LABEL_3;
    }

LABEL_2:
    v3 = a1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle;
    v4 = *(a1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle);
    v5 = *(a1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle + 8);
    v6 = *(a1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle + 9);
    *v3 = 0;
    *(v3 + 8) = 0;
    v7 = 1;
LABEL_3:
    *(v3 + 9) = v7;
    v8 = v5 | (v6 << 8);
LABEL_4:
    sub_1F0D90(v4, v8);
  }
}

BOOL sub_1F05CC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

char *sub_1F0608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_symbol] = 0;
  v7 = &v3[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle];
  *v7 = 0;
  *(v7 + 4) = 256;
  v8 = OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_symbolView;
  v9 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = UIView.forAutolayout.getter();

  *&v4[v8] = v10;
  *&v4[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activityIndicatorView] = 0;
  *&v4[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadsCountLabel] = 0;
  *&v4[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___defaultTitleLabelTrailingConstraint] = 0;
  if (a3)
  {
    v11 = sub_AB9260();
  }

  else
  {
    v11 = 0;
  }

  v20.receiver = v4;
  v20.super_class = type metadata accessor for LibraryMenuViewController.Cell();
  v12 = objc_msgSendSuper2(&v20, "initWithStyle:reuseIdentifier:", a1, v11);

  v13 = OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_symbolView;
  v14 = *&v12[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_symbolView];
  v15 = v12;
  [v14 setContentMode:4];
  v16 = [v15 contentView];
  [v16 addSubview:*&v12[v13]];

  v17 = [v15 contentView];
  v18 = sub_1F13DC();
  [v17 addSubview:v18];

  sub_1F1568();
  sub_AB9FD0();

  return v15;
}

uint64_t sub_1F07F4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFC300);
  __chkstk_darwin(v3 - 8);
  v5 = &v21[-1] - v4;
  v6 = sub_AB4F50();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v21[-1] - v11;
  sub_AB4ED0();
  v13 = sub_AB4E30();
  v21[3] = v13;
  v21[4] = &protocol witness table for UICellConfigurationState;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, a2, v13);
  sub_AB4F40();
  __swift_destroy_boxed_opaque_existential_0(v21);
  if (sub_AB4E10())
  {
    v15 = sub_AB4EE0();
    if (v15)
    {
      v16 = v15;
      v17 = [v15 colorWithAlphaComponent:0.8];
    }

    sub_AB4EF0();
  }

  (*(v7 + 16))(v5, v10, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_AB9FC0();
  v18 = *(v7 + 8);
  v18(v10, v6);
  return (v18)(v12, v6);
}

void sub_1F0C44()
{
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle2];
  v2 = objc_opt_self();
  v3 = [v2 configurationWithFont:v1 scale:2];

  v4 = v3;
  v5 = [v2 configurationPreferringMonochrome];
  v9 = [v4 configurationByApplyingConfiguration:v5];

  v6 = *(v0 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_symbolView);
  v7 = *(v0 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_symbol);
  if (v7)
  {
    v8 = [v7 imageWithSymbolConfiguration:v9];
  }

  else
  {
    v8 = 0;
  }

  [v6 setImage:v8];
}

id sub_1F0D90(id result, __int16 a2)
{
  v3 = v2;
  if ((a2 & 0x100) != 0)
  {
    if (v2[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle + 9])
    {
      return result;
    }

    if ((v2[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle + 8] & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_12:
    v5 = *&v2[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadsCountLabel];
    if (v5)
    {
      [v5 setHidden:1];
    }

    v6 = OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activityIndicatorView;
    v7 = *&v2[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activityIndicatorView];
    if (v7)
    {
      v8 = *&v2[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activityIndicatorView];
    }

    else
    {
      v8 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
      v9 = [v3 contentView];
      [v9 addSubview:v8];

      v7 = 0;
    }

    v10 = v7;
    [v8 startAnimating];
    v11 = *&v3[v6];
    *&v3[v6] = v8;

    goto LABEL_23;
  }

  if (v2[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle + 9])
  {
    [*&v2[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activityIndicatorView] stopAnimating];
    v4 = *&v2[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadsCountLabel];
    if (v4)
    {
      [v4 setHidden:1];
    }

LABEL_23:
    sub_1F1BA4();
    return [v3 setNeedsLayout];
  }

  if ((a2 & 1) == 0)
  {
    if ((v2[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle + 8] & 1) == 0)
    {
      if (*&v2[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle] == result)
      {
        return result;
      }

      goto LABEL_19;
    }

    goto LABEL_12;
  }

  if ((v2[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle + 8] & 1) == 0)
  {
LABEL_19:
    [*&v2[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activityIndicatorView] stopAnimating];
    v12 = OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadsCountLabel;
    v13 = *&v2[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadsCountLabel];
    if (v13)
    {
      v14 = *&v3[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadsCountLabel];
    }

    else
    {
      v15 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v16 = objc_opt_self();
      v14 = v15;
      v17 = [v16 preferredFontForTextStyle:UIFontTextStyleSubheadline];
      [v14 setFont:v17];

      v18 = [v3 contentView];
      [v18 addSubview:v14];

      v13 = 0;
    }

    sub_31848();
    v19 = v13;
    sub_ABAB40();
    v20 = sub_AB9260();

    [v14 setText:v20];

    [v14 setHidden:0];
    v21 = *&v3[v12];
    *&v3[v12] = v14;

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_1F109C()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for LibraryMenuViewController.Cell();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  [v0 separatorInset];
  v10 = v3;
  v11 = v2;
  v9 = v4;
  v5 = sub_1F13DC();
  [v5 frame];

  [v1 effectiveUserInterfaceLayoutDirection];
  v6 = [v1 contentView];
  [v6 bounds];

  sub_ABA490();
  MinX = CGRectGetMinX(v13);
  type metadata accessor for UIEdgeInsets(0);
  [v1 separatorInset];
  result = sub_AB38D0();
  if (result)
  {
    return [v1 setSeparatorInset:{v11, MinX, v10, v9}];
  }

  return result;
}

id sub_1F12E8()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for LibraryMenuViewController.Cell();
  objc_msgSendSuper2(&v17, "layoutMarginsDidChange");
  [v0 layoutMargins];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  result = [v0 music_inheritedLayoutInsets];
  if (v2 != v13 || v4 != v10 || v6 != v11 || v8 != v12)
  {
    [v0 music_inheritedLayoutInsets];
    return [v0 setLayoutMargins:?];
  }

  return result;
}

id sub_1F13DC()
{
  v1 = OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___titleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(UILabel) init];
    v6 = UIView.forAutolayout.getter();

    v7 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1F1464()
{
  v1 = OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___defaultTitleLabelTrailingConstraint;
  v2 = *&v0[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___defaultTitleLabelTrailingConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___defaultTitleLabelTrailingConstraint];
  }

  else
  {
    v4 = sub_1F13DC();
    v5 = [v4 trailingAnchor];

    v6 = [v0 contentView];
    v7 = [v6 layoutMarginsGuide];

    v8 = [v7 trailingAnchor];
    v9 = [v5 constraintLessThanOrEqualToAnchor:v8];

    v10 = *&v0[v1];
    *&v0[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_1F1568()
{
  v1 = sub_1F13DC();
  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle2];
  [v1 setFont:v2];

  v3 = OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___titleLabel;
  [*(v0 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___titleLabel) setAdjustsFontForContentSizeCategory:1];
  [*(v0 + v3) setNumberOfLines:0];
  v4 = *(v0 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_symbolView);
  [v4 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  [v4 setTintColor:0];
  v5 = *(v0 + v3);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 labelColor];
  [v7 setTextColor:v8];

  v9 = *(v0 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadsCountLabel);
  if (v9)
  {
    v10 = v9;
    v11 = [v6 secondaryLabelColor];
    [v10 setTextColor:v11];
  }

  v12 = *(v0 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activityIndicatorView);
  if (v12)
  {
    v13 = v12;
    v14 = [v6 secondaryLabelColor];
    [v13 setColor:v14];
  }

  sub_1F1748();
}

void sub_1F1748()
{
  v37 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_B036F0;
  v2 = *&v0[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_symbolView];
  v3 = [v2 leadingAnchor];
  v4 = [v0 contentView];
  v5 = [v4 layoutMarginsGuide];

  v6 = [v5 leadingAnchor];
  v7 = [v3 constraintEqualToAnchor:v6];

  *(v1 + 32) = v7;
  v8 = [v2 widthAnchor];
  v9 = objc_opt_self();
  v10 = [v9 defaultMetrics];
  [v10 scaledValueForValue:35.0];
  v12 = v11;

  v13 = [v8 constraintGreaterThanOrEqualToConstant:v12];
  *(v1 + 40) = v13;
  v14 = sub_1F13DC();
  v15 = [v14 firstBaselineAnchor];

  v16 = [v0 contentView];
  v17 = [v16 topAnchor];

  v18 = [v9 defaultMetrics];
  [v18 scaledValueForValue:32.0];
  v20 = v19;

  v21 = [v15 constraintEqualToAnchor:v17 constant:v20];
  *(v1 + 48) = v21;
  v22 = OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___titleLabel;
  v23 = [*&v0[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___titleLabel] firstBaselineAnchor];
  v24 = [v2 firstBaselineAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v1 + 56) = v25;
  v26 = [*&v0[v22] leadingAnchor];
  v27 = [v2 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:8.0];

  *(v1 + 64) = v28;
  v29 = [v0 contentView];
  v30 = [v29 bottomAnchor];

  v31 = [*&v0[v22] lastBaselineAnchor];
  v32 = [v9 defaultMetrics];
  [v32 scaledValueForValue:16.0];
  v34 = v33;

  v35 = [v30 constraintEqualToAnchor:v31 constant:v34];
  *(v1 + 72) = v35;
  sub_13C80(0, &qword_DF7920);
  isa = sub_AB9740().super.isa;

  [v37 activateConstraints:isa];

  sub_1F1BA4();
}

void sub_1F1BA4()
{
  if (v0[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle + 9])
  {
    v3 = sub_1F1464();
    [v3 setActive:1];
  }

  else
  {
    if (v0[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle + 8])
    {
      v1 = *&v0[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activityIndicatorView];
      if (!v1)
      {
        return;
      }
    }

    else
    {
      v1 = *&v0[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadsCountLabel];
      if (!v1)
      {
        return;
      }
    }

    v2 = v1;
    v3 = UIView.forAutolayout.getter();

    sub_1F1C78(v3, v0);
  }
}

void sub_1F1C78(void *a1, void *a2)
{
  v4 = sub_1F1464();
  [v4 setActive:0];

  v20 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_AF82E0;
  v6 = [a1 centerYAnchor];
  v7 = [a2 contentView];
  v8 = [v7 layoutMarginsGuide];

  v9 = [v8 centerYAnchor];
  v10 = [v6 constraintEqualToAnchor:v9];

  *(v5 + 32) = v10;
  v11 = [a1 trailingAnchor];
  v12 = [a2 contentView];
  v13 = [v12 layoutMarginsGuide];

  v14 = [v13 trailingAnchor];
  v15 = [v11 constraintEqualToAnchor:v14];

  *(v5 + 40) = v15;
  v16 = [a1 leadingAnchor];
  v17 = sub_1F13DC();
  v18 = [v17 trailingAnchor];

  v19 = [v16 constraintGreaterThanOrEqualToAnchor:v18 constant:10.0];
  *(v5 + 48) = v19;
  sub_13C80(0, &qword_DF7920);
  isa = sub_AB9740().super.isa;

  [v20 activateConstraints:isa];
}

uint64_t type metadata accessor for LibraryMenuViewController.DataSource()
{
  result = qword_DF78C8;
  if (!qword_DF78C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1F2070()
{
  v0 = sub_AB3820();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  (*(v1 + 8))(v3, v0);
  return 1;
}

BOOL sub_1F213C()
{
  v1 = *(v0 + qword_DF78B0);
  v2 = *(v0 + qword_DF78B0 + 8);
  if (v1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1F3698;
  }

  else
  {
    v4 = 0;
  }

  sub_307CC(v1);
  sub_17654(v4);
  return v1 != 0;
}

BOOL sub_1F21DC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v10 = *(v7 + 8);
  v11 = a4;
  v12 = a1;
  v10(v9, v6);
  v13 = *&v12[qword_DF78B0];
  v14 = *&v12[qword_DF78B0 + 8];
  if (v13)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = v14;
    v16 = sub_1F26D0;
  }

  else
  {
    v16 = 0;
  }

  sub_307CC(v13);
  sub_17654(v16);

  return v13 != 0;
}

void sub_1F2344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + qword_DF78B0);
  if (v4)
  {

    v4(v3, a2, a3);

    sub_17654(v4);
  }
}

void sub_1F23DC(char *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  sub_AB3790();
  sub_AB3790();
  v15 = *&a1[qword_DF78B0];
  if (v15)
  {
    v16 = a4;
    v17 = a5;
    v18 = a1;
    sub_307CC(v15);
    v15(v18, v14, v12);
    v19 = *(v9 + 8);
    v19(v12, v8);
    v19(v14, v8);
    sub_17654(v15);
  }

  else
  {
    v20 = *(v9 + 8);
    v21 = a4;
    v22 = a5;
    v23 = a1;
    v20(v12, v8);
    v20(v14, v8);
  }
}

id sub_1F25D0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1F261C()
{
  v0 = objc_allocWithZone(type metadata accessor for LibraryMenuViewController.DataSource()) + qword_DF78B0;
  *v0 = 0;
  v0[1] = 0;
  return sub_AB51A0();
}

uint64_t sub_1F2698()
{

  return swift_deallocObject();
}

void *sub_1F26FC()
{
  v7 = &_swiftEmptySetSingleton;
  rawValue = UITraitCollection.legacyLibraryFilter.getter().rawValue;
  sub_1C060(&v6, 0);
  if ((rawValue & 2) != 0)
  {
    v1 = &v4;
    v2 = 11;
  }

  else
  {
    v1 = &v5;
    v2 = 12;
  }

  sub_1C060(v1, v2);
  return v7;
}

void sub_1F276C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_editingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_editingMenu);
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  *(v0 + OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_pendingSelectedIdentifier) = 13;
  v3 = OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_downloadManagerObserver;
  *(v1 + v3) = [objc_allocWithZone(type metadata accessor for LibraryMenuViewController.DownloadManagerObserver()) init];
  v4 = (v1 + OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_prewarmedIdentifierViewController);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_requestResponseController;
  Library.Menu.Request.init()(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7990);
  swift_allocObject();
  *(v1 + v5) = RequestResponse.Controller.init(request:)(v6);
  *(v1 + OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_dataSource) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_allowsAnimatedChanges) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_hasLoadedSuccessfulResponse) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_1F28AC()
{
  if (([v0 isEditing] & 1) == 0)
  {
    v1 = *&v0[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_dataSource];
    if (v1)
    {
      v2 = v1;
      sub_AB51B0();

      if (v7 != 13)
      {
        v3 = [v0 traitCollection];
        v4 = sub_4F16E8(v3, v7);

        v5 = &v0[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_prewarmedIdentifierViewController];
        v6 = *&v0[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_prewarmedIdentifierViewController + 8];
        *v5 = v7;
        *(v5 + 1) = v4;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1F2974(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v38 - v8;
  v10 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v1[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_prewarmedIdentifierViewController + 8];
  v14 = &selRef__authenticateReturningError_;
  if (!v13)
  {
    goto LABEL_8;
  }

  v15 = Library.Menu.Identifier.rawValue.getter(v1[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_prewarmedIdentifierViewController]);
  v17 = v16;
  if (v15 == Library.Menu.Identifier.rawValue.getter(a1) && v17 == v18)
  {
    v24 = v13;
  }

  else
  {
    v20 = sub_ABB3C0();
    v21 = v13;

    if ((v20 & 1) == 0)
    {

      v14 = &selRef__authenticateReturningError_;
LABEL_8:
      v22 = [v2 v14[334]];
      isa = sub_4F16E8(v22, a1);

      v39 = 0;
      goto LABEL_11;
    }
  }

  isa = v13;
  v39 = isa;
  v14 = &selRef__authenticateReturningError_;
LABEL_11:
  v25 = [v2 v14[334]];
  if ((UITraitCollection.legacyLibraryFilter.getter().rawValue & 2) == 0)
  {
    if (Library.Menu.Identifier.rawValue.getter(a1) == 0xD000000000000026 && 0x8000000000B493F0 == v26)
    {
    }

    else
    {
      v27 = sub_ABB3C0();

      if ((v27 & 1) == 0)
      {
        v28.super.isa = 0;
        goto LABEL_17;
      }
    }
  }

  sub_13C80(0, &qword_E00AB0);
  v28.super.isa = UITraitCollection.init(legacyLibraryFilter:)(2).super.isa;
LABEL_17:

  if (Library.Menu.Identifier.rawValue.getter(a1) == 0xD000000000000026 && 0x8000000000B49510 == v29)
  {
  }

  else
  {
    v30 = sub_ABB3C0();

    if ((v30 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v31 = sub_AB31C0();
  v32 = *(*(v31 - 8) + 56);
  v32(v9, 1, 1, v31);
  v32(v7, 1, 1, v31);
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(0x59726F466564614DLL, 0xEA0000000000756FLL, 15, 28, v9, 0, 0, 12, v12, 0, 0, 65280, 0, 0, 0, 0, v7, 0, 1, 2, 0, 0, 0);
  v33 = MetricsReportingController.shared.unsafeMutableAddressor();
  v34 = *&stru_B8.sectname[swift_isaMask & **v33];
  v35 = *v33;
  v34(v12, 0, 0, 0, 0, 0);
  sub_1F32A0(v12);

LABEL_22:
  v36 = [v2 navigationController];
  if (v36)
  {
    v37 = v36;
    [(objc_class *)v36 pushViewController:isa overrideTraitCollection:v28.super.isa animated:1];

    isa = v28.super.isa;
    v28.super.isa = v37;
  }
}

void sub_1F2DE0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_dataSource];
  if (v2)
  {
    v3 = v2;
    sub_AB51B0();

    if (v16[0] != 13)
    {
      if ([v0 isEditing])
      {
        v4 = sub_1EE1A8();
        if (*v5)
        {
          Library.Menu.setSelectionState(_:for:)(0, v16[0]);
        }

        (v4)(v16, 0);
        goto LABEL_16;
      }

      sub_1F2974(v16[0]);
      v6 = OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_pendingSelectedIdentifier;
      v7 = v0[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_pendingSelectedIdentifier];
      if (v7 != 13)
      {
        v8 = Library.Menu.Identifier.rawValue.getter(v7);
        v10 = v9;
        if (v8 == Library.Menu.Identifier.rawValue.getter(v16[0]) && v10 == v11)
        {
        }

        else
        {
          v13 = sub_ABB3C0();

          if ((v13 & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v1[v6] = 13;
      }
    }

LABEL_16:
    v14 = &v1[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_prewarmedIdentifierViewController];
    v15 = *&v1[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_prewarmedIdentifierViewController + 8];
    *v14 = 0;
    *(v14 + 1) = 0;

    return;
  }

  __break(1u);
}

void sub_1F2F58()
{
  if ([v0 isEditing])
  {
    v1 = *&v0[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_dataSource];
    if (v1)
    {
      v2 = v1;
      sub_AB51B0();

      if (v5[0] != 13)
      {
        v3 = sub_1EE1A8();
        if (*v4)
        {
          Library.Menu.setSelectionState(_:for:)(1, v5[0]);
        }

        (v3)(v5, 0);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1F301C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_symbol) = 0;
  v2 = v0 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle;
  *v2 = 0;
  *(v2 + 8) = 256;
  v3 = OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_symbolView;
  v4 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = UIView.forAutolayout.getter();

  *(v1 + v3) = v5;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activityIndicatorView) = 0;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadsCountLabel) = 0;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___titleLabel) = 0;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___defaultTitleLabelTrailingConstraint) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_1F311C()
{

  return swift_deallocObject();
}

unint64_t sub_1F31C0()
{
  result = qword_DF7940;
  if (!qword_DF7940)
  {
    sub_AB3820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF7940);
  }

  return result;
}

unint64_t sub_1F3218()
{
  result = qword_DF7958;
  if (!qword_DF7958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF7958);
  }

  return result;
}

void sub_1F326C()
{
  v1 = *(v0 + 16);
  sub_1EF7F8();
  *(v1 + OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_pendingSelectedIdentifier) = 13;
}

uint64_t sub_1F32A0(uint64_t a1)
{
  v2 = type metadata accessor for MetricsEvent.Click(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1F3358(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1F3364(uint64_t result, void *a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1F33E0()
{

  return swift_deallocObject();
}

unint64_t sub_1F3428()
{
  result = qword_DF7960;
  if (!qword_DF7960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF7960);
  }

  return result;
}

uint64_t sub_1F34D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {

    return swift_errorRetain();
  }

  else
  {

    v10 = a2;
  }
}

uint64_t sub_1F3558()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1F35DC()
{

  return swift_deallocObject();
}

uint64_t sub_1F363C()
{

  return swift_deallocObject();
}

void sub_1F369C(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v4);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&a2[qword_DFE2F0];
  if (v10)
  {
    v68 = v10;
    if (![v68 isEmpty])
    {
      v11 = *&a2[qword_DF79B8];
      if (v11)
      {
        v59 = v4;
        v60 = v6;
        v61 = v9;
        v12 = swift_allocObject();
        *(v12 + 16) = _swiftEmptyArrayStorage;
        v13 = (v12 + 16);
        v14 = v11;
        v15 = [v68 results];
        if (!v15)
        {
          __break(1u);
          goto LABEL_34;
        }

        v16 = v15;
        v17 = swift_allocObject();
        *(v17 + 16) = a1;
        *(v17 + 24) = v13;
        v18 = swift_allocObject();
        *(v18 + 16) = sub_1FBE10;
        *(v18 + 24) = v17;
        v73 = sub_581C8;
        v74 = v18;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v72 = sub_48D644;
        *(&v72 + 1) = &block_descriptor_223;
        v19 = _Block_copy(&aBlock);

        [v16 enumerateItemIdentifiersUsingBlock:v19];
        _Block_release(v19);
        LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

        if (v19)
        {
LABEL_31:
          __break(1u);
        }

        else
        {
          v20 = [objc_allocWithZone(MPCModelStorePlaybackItemsRequest) init];
          [v20 setInGroupSession:0];
          v18 = *v13;
          v21 = *v13 >> 62;
          v64 = v14;
          v65 = v12;
          v63 = v17;
          v66 = v20;
          v62 = v12 + 16;
          v12 = v18 & 0xFFFFFFFFFFFFFF8;
          if (!v21)
          {
            v22 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
LABEL_8:

            v23 = 0;
            v67 = _swiftEmptyArrayStorage;
            while (v22 != v23)
            {
              if ((v18 & 0xC000000000000001) != 0)
              {
                v24 = sub_360310(v23, v18);
              }

              else
              {
                if (v23 >= *(v12 + 16))
                {
                  goto LABEL_30;
                }

                v24 = *(v18 + 8 * v23 + 32);
              }

              v25 = v24;
              v26 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
                __break(1u);
LABEL_30:
                __break(1u);
                goto LABEL_31;
              }

              v27 = MPIdentifierSet.bestStoreIdentifier.getter();
              v29 = v28;

              ++v23;
              if (v29)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v67 = sub_6B0F0(0, *(v67 + 2) + 1, 1, v67);
                }

                v31 = *(v67 + 2);
                v30 = *(v67 + 3);
                if (v31 >= v30 >> 1)
                {
                  v67 = sub_6B0F0((v30 > 1), v31 + 1, 1, v67);
                }

                v32 = v67;
                *(v67 + 2) = v31 + 1;
                v33 = &v32[16 * v31];
                *(v33 + 4) = v27;
                *(v33 + 5) = v29;
                v23 = v26;
              }
            }

            isa = sub_AB9740().super.isa;
            v36 = v66;
            [v66 setStoreIDs:isa];

            v37 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) init];
            [v37 setRequest:v36];
            v38 = [objc_allocWithZone(MPCPlaybackIntent) init];
            [v38 setTracklistToken:v37];
            [v38 setTracklistSource:3];
            v39 = [objc_allocWithZone(MPModelLibraryRequest) init];
            v40 = [v68 request];
            if (v40)
            {
              v41 = v40;
              v42 = [v40 label];
              [v39 setLabel:v42];

              v43 = [objc_opt_self() kindWithVariants:3];
              [v39 setItemKind:v43];

              v44 = [a2 traitCollection];
              v45 = UITraitCollection.mediaLibrary.getter();

              [v39 setMediaLibrary:v45];
              sub_13C80(0, &unk_DE8180);

              v46 = sub_AB9740().super.isa;

              [v39 setAllowedItemIdentifiers:v46];

              v47 = [v39 playbackIntentWithStartItemIdentifiers:0];
              if (v47)
              {
                v48 = v47;
                v49 = swift_allocObject();
                v50 = v67;
                v49[2] = v65;
                v49[3] = v50;
                v49[4] = v48;
                v49[5] = v38;
                v49[6] = a2;
                v49[7] = sub_1F83E4;
                v49[8] = 0;
                v73 = sub_1FBED8;
                v74 = v49;
                *&aBlock = _NSConcreteStackBlock;
                *(&aBlock + 1) = 1107296256;
                *&v72 = sub_151E0;
                *(&v72 + 1) = &block_descriptor_229;
                v51 = _Block_copy(&aBlock);

                v52 = v48;
                v53 = v38;
                v54 = a2;

                [v39 performWithResponseHandler:v51];
                _Block_release(v51);
              }

              else
              {

                v55 = v60;
                *v60 = v38;
                swift_storeEnumTagMultiPayload();
                v73 = 0;
                aBlock = 0u;
                v72 = 0u;
                v70 = 0;
                memset(v69, 0, sizeof(v69));
                v56 = v38;
                v57 = a2;
                v58 = v61;
                PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v55, &aBlock, 3, 0, 0, 1, 0, 1, v61, a2, v69);
                sub_37D3DC(0);

                sub_1FBE18(v58, type metadata accessor for PlaybackIntentDescriptor);
              }

              return;
            }

LABEL_34:
            __break(1u);
            return;
          }
        }

        v22 = sub_ABB060();
        goto LABEL_8;
      }
    }

    v34 = v68;
  }
}

uint64_t sub_1F3EE0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sub_AB37F0();
  if (result == a4)
  {
    v9 = a2;
    sub_AB9730();
    if (*(&dword_10 + (*a5 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a5 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    return sub_AB97F0();
  }

  return result;
}

void sub_1F3F78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9)
{
  v28 = a8;
  v29 = sub_AB7C10();
  v33 = *(v29 - 8);
  __chkstk_darwin(v29);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_AB7C50();
  v31 = *(v17 - 8);
  v32 = v17;
  __chkstk_darwin(v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13C80(0, &qword_DE8ED0);
  v30 = sub_ABA150();
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a1;
  v20[5] = a5;
  v20[6] = a6;
  v20[7] = a7;
  v20[8] = v28;
  v20[9] = a9;
  aBlock[4] = sub_1FBF74;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_235;
  v28 = _Block_copy(aBlock);
  v21 = a1;
  v22 = a5;
  v23 = a6;
  v24 = a7;

  sub_AB7C30();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1FBF88(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
  sub_36A00(&qword_DF06D0, &unk_DE9C30);
  v25 = v29;
  sub_ABABB0();
  v26 = v28;
  v27 = v30;
  sub_ABA160();
  (*(v33 + 8))(v16, v25);
  (*(v31 + 8))(v19, v32);
  _Block_release(v26);
}

uint64_t sub_1F42C0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void (*a7)(void), uint64_t a8)
{
  v33 = a5;
  v15 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v15);
  v17 = (&v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v21 = *(a1 + 16);
  if (v21 >> 62)
  {
    v22 = sub_ABB060();
  }

  else
  {
    v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
  }

  if (v22 == *(a2 + 16))
  {
    if (a3)
    {
      v23 = a3;
      v24 = [v23 results];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 numberOfItemsInSection:0];
        v32 = a8;
        v27 = a7;
        v28 = v26;

        v29 = v28 == v22;
        a7 = v27;
        if (v29)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    a4 = v33;
  }

LABEL_11:
  *v17 = a4;
  swift_storeEnumTagMultiPayload();
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v30 = a6;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v17, v36, 3, 0, 0, 1, 0, 1, v20, a6, v34);
  a7(v20);
  return sub_1FBE18(v20, type metadata accessor for PlaybackIntentDescriptor);
}

void sub_1F44FC(char a1)
{
  if (v1[qword_E711D0] == (a1 & 1))
  {
    return;
  }

  v2 = qword_DF79C8;
  v3 = *&v1[qword_DF79C8];
  if (!v1[qword_E711D0])
  {
    goto LABEL_6;
  }

  *&v1[qword_DF79C8] = v3 | 1;
  if (v3 == (v3 | 1))
  {
    return;
  }

  [v1 loadViewIfNeeded];
  v4 = *&v1[qword_DFE2F8];
  if (!v4)
  {
    __break(1u);
LABEL_6:
    *&v1[v2] = v3 & 0xFFFFFFFFFFFFFFFELL;
    if (v3 == (v3 & 0xFFFFFFFFFFFFFFFELL))
    {
      return;
    }

    [v1 loadViewIfNeeded];
    v4 = *&v1[qword_DFE2F8];
    if (!v4)
    {
      __break(1u);
      return;
    }
  }

  v5 = [v4 collectionViewLayout];
  [v5 invalidateLayout];
}

void sub_1F45EC(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v1[qword_E711D8];
  if (!a1)
  {
    if (!v10)
    {
      return;
    }

LABEL_6:
    [v1 loadViewIfNeeded];
    v12 = qword_DFE2F8;
    v13 = *&v1[qword_DFE2F8];
    if (v13)
    {
      v14 = [v13 collectionViewLayout];
      [v14 invalidateLayout];

      v15 = qword_E719B8;
      swift_beginAccess();
      sub_15F84(&v1[v15], v5, &unk_DE8E20);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        sub_12E1C(v5, &unk_DE8E20);
        return;
      }

      (*(v7 + 32))(v9, v5, v6);
      [v1 loadViewIfNeeded];
      v16 = *&v1[v12];
      if (v16)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA530);
        v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_AF4EC0;
        (*(v7 + 16))(v18 + v17, v9, v6);
        v19 = v16;
        isa = sub_AB9740().super.isa;

        [v19 reloadItemsAtIndexPaths:isa];
        (*(v7 + 8))(v9, v6);

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

  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = sub_12C8D8(a1, v10);

  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }
}

void sub_1F48E8(void *a1)
{
  v2 = qword_DF79A0;
  v3 = *(v1 + qword_DF79A0);
  if (a1)
  {
    if (v3 != a1)
    {
      if (*(v1 + qword_DFE2F0) != a1)
      {
        *(v1 + qword_DF79A0) = a1;
        v5 = a1;

        v6 = [v5 results];
        if (v6)
        {
          v7 = v6;
          v8 = [v6 firstSection];

          if (v8)
          {
            objc_opt_self();
            v9 = swift_dynamicCastObjCClass();
            if (!v9)
            {
              swift_unknownObjectRelease();
            }
          }

          else
          {
            v9 = 0;
          }

          swift_unknownObjectWeakInit();
          v11 = v5;
          v12 = [v11 results];
          if (v12)
          {
            v13 = v12;
            v14 = sub_1FB580(v12, v9);

            if (!v14)
            {
              v19 = 0;
              goto LABEL_23;
            }

            v15 = type metadata accessor for ClassicalAlbumModelResponse();
            v16 = objc_allocWithZone(v15);
            *&v16[OBJC_IVAR____TtC16MusicApplication27ClassicalAlbumModelResponse_initialModelResponse] = v11;
            v17 = v11;
            v18 = [v17 request];
            v21.receiver = v16;
            v21.super_class = v15;
            v19 = objc_msgSendSuper2(&v21, "initWithRequest:", v18);

            if (v19)
            {

              [v19 setResults:v14];
LABEL_23:
              v20 = v11;
              sub_1F4B8C(a1, v19, v22, v9);

              swift_unknownObjectWeakDestroy();
              return;
            }

LABEL_27:
            __break(1u);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_27;
      }

      goto LABEL_14;
    }
  }

  else if (v3)
  {
    if (*(v1 + qword_DFE2F0))
    {
      *(v1 + qword_DF79A0) = 0;

      swift_unknownObjectWeakInit();
      sub_1F4B8C(0, 0, v22, 0);
      swift_unknownObjectWeakDestroy();
      return;
    }

LABEL_14:

    sub_3B4724(a1);
    return;
  }

  sub_3B4724(a1);
  v10 = *(v1 + v2);
  *(v1 + v2) = 0;
}

void sub_1F4B8C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = qword_DF79A0;
    v10 = *(Strong + qword_DF79A0);
    if (a1)
    {
      if (v10)
      {
        v11 = v10 == a1;
      }

      else
      {
        v11 = 0;
      }

      if (!v11)
      {
        goto LABEL_12;
      }
    }

    else if (v10)
    {
LABEL_12:

      return;
    }

    v12 = *(Strong + qword_DF79B8);
    *(Strong + qword_DF79B8) = a4;
    v13 = a4;
    sub_1F9894(v12);

    v8[qword_DF79A8] = a2 != 0;
    if (a2)
    {
      v14 = *&v8[v9];
      *&v8[v9] = a2;
      v15 = a2;
    }

    v16 = *&v8[v9];
    v17 = v16;
    sub_1F48E8(v16);
    goto LABEL_12;
  }
}

void (*sub_1F4C74(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + qword_DFE2F0);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_1F4CC8;
}

void sub_1F4CC8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1F48E8(v2);
  }

  else
  {
    sub_1F48E8(*a1);
  }
}

void sub_1F4D30()
{
  v1 = v0;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7930);
  __chkstk_darwin(v81);
  v3 = &v64 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v64 - v8;
  v10 = sub_AB3820();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v71 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v84 = &v64 - v15;
  __chkstk_darwin(v14);
  v87 = &v64 - v16;
  if ([v1 isViewLoaded])
  {
    [v1 loadViewIfNeeded];
    v17 = *&v1[qword_DFE2F8];
    if (v17)
    {
      v75 = v17;
      v18 = [v75 indexPathsForVisibleItems];
      v69 = sub_AB9760();

      v19 = v1;
      v20 = *&v1[qword_DF79B8];
      if (v20)
      {
        v68 = [v20 hasLoadedValueForKey:MPModelPropertyAlbumSongPopularity];
      }

      else
      {
        v68 = 0;
      }

      v21 = *(v69 + 16);
      if (v21)
      {
        v67 = v20;
        v74 = v7;
        v65 = qword_DF79B0;
        v22 = v69 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
        v73 = qword_DFE2F0;
        v80 = qword_E719B8;
        swift_beginAccess();
        v24 = *(v11 + 16);
        v23 = v11 + 16;
        v85 = v24;
        v78 = (v23 + 32);
        v79 = (v23 + 40);
        v70 = (v23 + 16);
        v77 = *(v23 + 56);
        v83 = (v23 - 8);
        v72 = (v23 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v76 = v23;
        v82 = v19;
        while (1)
        {
          v86 = v21;
          v25 = v87;
          v26 = v85;
          v85(v87, v22, v10);
          v26(v9, v25, v10);
          (*v79)(v9, 0, 1, v10);
          v27 = *(v81 + 48);
          sub_15F84(v9, v3, &unk_DE8E20);
          sub_15F84(&v19[v80], &v3[v27], &unk_DE8E20);
          v28 = *v78;
          if ((*v78)(v3, 1, v10) == 1)
          {
            break;
          }

          v29 = v74;
          sub_15F84(v3, v74, &unk_DE8E20);
          if (v28(&v3[v27], 1, v10) == 1)
          {
            sub_12E1C(v9, &unk_DE8E20);
            (*v83)(v29, v10);
LABEL_13:
            sub_12E1C(v3, &unk_DF7930);
            goto LABEL_14;
          }

          v50 = &v3[v27];
          v51 = v3;
          v52 = v71;
          (*v70)(v71, v50, v10);
          sub_1FBF88(&qword_DF7940, &type metadata accessor for IndexPath);
          v53 = sub_AB91C0();
          v54 = *v83;
          v55 = v52;
          v3 = v51;
          (*v83)(v55, v10);
          sub_12E1C(v9, &unk_DE8E20);
          v54(v29, v10);
          sub_12E1C(v51, &unk_DE8E20);
          if (v53)
          {
            v54(v87, v10);
            goto LABEL_29;
          }

LABEL_14:
          v85(v84, v87, v10);
          isa = sub_AB3770().super.isa;
          v31 = [v75 cellForItemAtIndexPath:isa];

          if (!v31)
          {
            v56 = *v83;
            (*v83)(v84, v10);
            v56(v87, v10);
            goto LABEL_29;
          }

          v19 = v82;
          v32 = *&v82[v73];
          if (!v32)
          {
            goto LABEL_35;
          }

          v33 = v32;
          v34 = [v33 results];
          if (v34)
          {
            v35 = v34;

            v36 = sub_AB3770().super.isa;
            v37 = [v35 itemAtIndexPath:v36];

            if (v37)
            {
              objc_opt_self();
              v38 = swift_dynamicCastObjCClass();
              v19 = v82;
              if (v38)
              {
                v39 = v38;
                type metadata accessor for SongCell();
                v40 = swift_dynamicCastClass();
                if (v40)
                {
                  if (v68)
                  {
                    v66 = v40;
                    v41 = [v39 identifiers];
                    if (v67)
                    {
                      v64 = v39;
                      v42 = v41;
                      v43 = [v67 songPopularityForIdentifiers:v41];
                      if (v43)
                      {
                        v44 = v43;
                        v45 = [v42 universalStore];
                        if (v45)
                        {
                          v46 = [v45 adamID];
                          swift_unknownObjectRelease();
                          v88 = v46;
                          sub_ABAD10();
                          v47 = v44;
                          v48 = sub_1F9828();
                          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                          v88 = v48;
                          sub_924C8(v47, v89, isUniquelyReferenced_nonNull_native);
                          sub_8085C(v89);

                          *&v82[v65] = v88;
                        }

                        else
                        {
                        }
                      }

                      else
                      {
                      }

                      v39 = v64;
                    }

                    else
                    {
                    }

                    v40 = v66;
                  }

                  v61 = v40;
                  v62 = v84;
                  sub_1F8410(v40, v39, v84);
                  sub_1FAA94(v61);
                  swift_unknownObjectRelease();
                  v63 = *v83;
                  (*v83)(v62, v10);
                  v63(v87, v10);
                  v19 = v82;

                  v60 = v86;
                  goto LABEL_38;
                }

                swift_unknownObjectRelease();
LABEL_35:
              }

              else
              {

                swift_unknownObjectRelease();
              }

              v59 = *v83;
              (*v83)(v84, v10);
              v59(v87, v10);
              goto LABEL_37;
            }

            v58 = *v83;
            (*v83)(v84, v10);
            v58(v87, v10);
          }

          else
          {

            v57 = *v83;
            (*v83)(v84, v10);
            v57(v87, v10);
          }

          v19 = v82;
LABEL_37:
          v60 = v86;
LABEL_38:
          v22 += v77;
          v21 = v60 - 1;
          if (!v21)
          {

            goto LABEL_47;
          }
        }

        sub_12E1C(v9, &unk_DE8E20);
        if (v28(&v3[v27], 1, v10) == 1)
        {
          sub_12E1C(v3, &unk_DE8E20);
          (*v83)(v87, v10);
LABEL_29:
          v19 = v82;
          goto LABEL_37;
        }

        goto LABEL_13;
      }

LABEL_47:
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1F5728()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = sub_AB3820();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = *(v0 + qword_E08848);
  p_cache = &OBJC_METACLASS____TtC16MusicApplication13TextStackView.cache;
  if (!v8)
  {
    v17 = 0;
    goto LABEL_8;
  }

  v10 = *(v0 + qword_DFE2F0);
  if (!v10)
  {
    v17 = 0;
    goto LABEL_8;
  }

  v11 = v10;
  v12 = v8;
  v23 = v11;
  result = [v11 results];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v6;
  v16 = swift_allocObject();
  v17 = sub_1FBC3C;
  *(v16 + 16) = sub_1FBC3C;
  *(v16 + 24) = v15;
  aBlock[4] = sub_57B9C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_48D644;
  aBlock[3] = &block_descriptor_197;
  v18 = _Block_copy(aBlock);
  v19 = v12;

  [v14 enumerateItemIdentifiersUsingBlock:v18];

  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_12;
  }

  p_cache = (&OBJC_METACLASS____TtC16MusicApplication13TextStackView + 16);
LABEL_8:
  sub_15F84(v6, v4, &unk_DE8E20);
  v21 = qword_E71990;
  swift_beginAccess();
  sub_1FBB9C(v4, v0 + v21, &unk_DE8E20);
  swift_endAccess();
  if (*(p_cache[94] + v0))
  {
    sub_1F4D30();
    sub_46C570();
  }

  sub_12E1C(v4, &unk_DE8E20);
  sub_12E1C(v6, &unk_DE8E20);
  return sub_17654(v17);
}

uint64_t sub_1F5A6C(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, uint64_t a5)
{
  result = sub_468CF8(a4);
  if (result)
  {
    sub_12E1C(a5, &unk_DE8E20);
    v9 = sub_AB3820();
    v10 = *(v9 - 8);
    (*(v10 + 16))(a5, a1, v9);
    result = (*(v10 + 56))(a5, 0, 1, v9);
    *a3 = 1;
  }

  return result;
}

void *sub_1F5B48()
{
  v1 = *(v0 + qword_DF79B8);
  v2 = v1;
  return v1;
}

void sub_1F5B78(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v10 = a1;
  }

  else
  {
    v6 = *(v3 + qword_DFE2F0);
    if (!v6)
    {
LABEL_7:
      v8 = type metadata accessor for PlaybackIntentDescriptor(0);
      v9 = *(*(v8 - 8) + 56);

      v9(a3, 1, 1, v8);
      return;
    }

    v10 = v6;
    a1 = 0;
  }

  v7 = a1;
  if ([v10 isEmpty])
  {

    goto LABEL_7;
  }

  sub_46A200(0, a2, a3);
}

id sub_1F5C7C(char *a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E09210);
  v10 = *(v9 - 8);
  v67 = v9;
  v68 = v10;
  __chkstk_darwin(v9);
  v12 = &v62 - v11;
  v13 = sub_AB2DC0();
  v65 = *(v13 - 8);
  v66 = v13;
  __chkstk_darwin(v13);
  v63 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF43E0);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v64 = &v62 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v69 = &v62 - v24;
  v25 = a2;
  v26 = v4;
  sub_468E80(a1, v25, a3, a4 & 1);

  sub_AB108(v27);
  v28 = qword_DF79B8;
  v29 = *(v4 + qword_DF79B8);
  if (v29)
  {
    v30 = v29;
    v31 = [v30 copyrightText];
    if (v31)
    {
      v32 = v31;
      v33 = sub_AB92A0();
      v62 = v23;
      v34 = v26;
      v35 = v33;
      v36 = v18;
      v38 = v37;

      v39 = v38;
      v18 = v36;
      v40 = v35;
      v26 = v34;
      v23 = v62;
      goto LABEL_6;
    }
  }

  v40 = 0;
  v39 = 0xE000000000000000;
LABEL_6:
  sub_AB92C(v40, v39);
  v41 = *(v26 + v28);
  v42 = v69;
  if (v41)
  {
    v43 = v41;
    v44 = [v43 releaseDateComponents];
    if (v44)
    {
      v45 = v44;
      sub_AB2D70();

      v46 = v65;
      v47 = *(v65 + 56);
      v48 = v18;
      v49 = 0;
    }

    else
    {
      v46 = v65;
      v47 = *(v65 + 56);
      v48 = v18;
      v49 = 1;
    }

    v50 = v66;
    v47(v48, v49, 1, v66);
    v51 = v64;
    sub_D321C(v18, v64);
    if (!(*(v46 + 48))(v51, 1, v50))
    {
      v53 = v63;
      (*(v46 + 16))(v63, v51, v50);
      sub_12E1C(v51, &qword_DF43E0);

      sub_AB2D90();
      (*(v46 + 8))(v53, v50);
      goto LABEL_14;
    }

    sub_12E1C(v51, &qword_DF43E0);
  }

  v52 = sub_AB3430();
  (*(*(v52 - 8) + 56))(v42, 1, 1, v52);
LABEL_14:
  v54 = OBJC_IVAR____TtC16MusicApplication10DetailCell_releaseDate;
  swift_beginAccess();
  sub_15F84(&a1[v54], v23, &unk_E01230);
  swift_beginAccess();
  sub_1FBB9C(v42, &a1[v54], &unk_E01230);
  swift_endAccess();
  sub_AB33C(v23);
  sub_12E1C(v23, &unk_E01230);
  sub_12E1C(v42, &unk_E01230);

  sub_ABB9C(v55);
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v57 = &a1[OBJC_IVAR____TtC16MusicApplication10DetailCell_recordLabelSelectionHandler];
  v58 = *&a1[OBJC_IVAR____TtC16MusicApplication10DetailCell_recordLabelSelectionHandler];
  *v57 = sub_1FBB94;
  v57[1] = v56;
  swift_retain_n();
  v59 = sub_17654(v58);
  __chkstk_darwin(v59);
  *(&v62 - 2) = a1;
  type metadata accessor for DetailCellTextStack(0);
  sub_1FBF88(&unk_DF8680, type metadata accessor for DetailCellTextStack);
  sub_AB6780();
  sub_AB6AA0();
  v60 = v67;
  v70[3] = v67;
  v70[4] = sub_36A00(&unk_E09220, &unk_E09210);
  __swift_allocate_boxed_opaque_existential_0(v70);
  sub_AB6770();
  (*(v68 + 8))(v12, v60);
  sub_ABA2B0();

  [a1 music_layoutInsets];
  [a1 music_setLayoutInsets:12.0];
  [a1 music_layoutInsets];
  return [a1 music_setLayoutInsets:?];
}

void sub_1F635C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + qword_E08808;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 32))(v3, a1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1F640C(void *a1)
{
  sub_3B316C(a1);
  type metadata accessor for DetailCell(0);
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for ContainerDetailHeaderReusableView();
  UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();

  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

  sub_13C80(0, &qword_DEF620);
  sub_AB92A0();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

  type metadata accessor for FooterButtonReusableView();
  sub_AB92A0();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();
}

void sub_1F65A0()
{
  sub_1F5728();
  sub_46C570();
  v1 = *(v0 + qword_DFE2F0);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 results];
    if (!v3)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v4 = v3;
    v5 = [v3 numberOfSections];

    if (v5 >= 1)
    {
      aBlock[6] = &OBJC_PROTOCOL___MPModelResponseDetailedKeepLocalStatusRequesting;
      v6 = swift_dynamicCastObjCProtocolConditional();
      if (v6)
      {
        v7 = v6;
        v8 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v9 = swift_allocObject();
        *(v9 + 16) = v8;
        *(v9 + 24) = v2;
        aBlock[4] = sub_1FBB44;
        aBlock[5] = v9;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_151E0;
        aBlock[3] = &block_descriptor_184;
        v10 = _Block_copy(aBlock);
        v11 = v2;

        v12 = [v7 newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:0 responseHandler:v10];
        _Block_release(v10);
        v13 = [v11 request];
        if (v13)
        {
          v14 = v13;
          ObjCClassFromObject = swift_getObjCClassFromObject();

          v16 = [ObjCClassFromObject preferredQueue];
          [v16 addOperation:v12];

          return;
        }

        goto LABEL_11;
      }
    }
  }

  sub_46ACA0(0);
}

uint64_t sub_1F67A4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_13C80(0, &qword_DE8ED0);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a1;
  v8 = a1;

  v9 = a4;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_57884, v7);
}

uint64_t sub_1F685C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_AB35C0();
  __chkstk_darwin(v10 - 8);
  v11 = sub_AB9250();
  __chkstk_darwin(v11 - 8);
  if (sub_AB92A0() == a2 && v12 == a3)
  {
  }

  else
  {
    v14 = sub_ABB3C0();

    if ((v14 & 1) == 0)
    {
      if (sub_AB92A0() == a2 && v15 == a3)
      {
      }

      else
      {
        v17 = sub_ABB3C0();

        if ((v17 & 1) == 0)
        {

          return sub_469DDC(a1, a2, a3, a4);
        }
      }

      sub_13C80(0, &qword_DEF620);
      return UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();
    }
  }

  type metadata accessor for FooterButtonReusableView();
  static UICollectionReusableView.reuseIdentifier.getter();
  v19 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();

  v20 = *(v5 + qword_DF79C8);
  if (v20)
  {
    sub_AB91E0();
    sub_AB3550();
    v27 = sub_AB9320();
    sub_2FE0C(v27);
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = &v19[OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_selectionHandler];
    v30 = *&v19[OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_selectionHandler];
    *v29 = sub_1FBAFC;
    v29[1] = v28;

    sub_17654(v30);
  }

  else if ((v20 & 2) != 0)
  {
    v21 = *(v5 + qword_DF79B8);
    if (v21)
    {
      v22 = v21;
      sub_AB91E0();
      sub_AB3550();
      v23 = sub_AB9320();
      sub_2FE0C(v23);
      v19[OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_buttonAlignment] = 1;
      [v19 setNeedsLayout];
      v24 = swift_allocObject();
      *(v24 + 16) = v22;
      v25 = &v19[OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_selectionHandler];
      v26 = *&v19[OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_selectionHandler];
      *v25 = sub_1FBABC;
      v25[1] = v24;
      sub_17654(v26);
    }
  }

  return v19;
}

void sub_1F6C48()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = *(Strong + qword_DFE2F0);
  if (!v2 || (type metadata accessor for JSContainerDetailModelResponse(), swift_dynamicCastClass()) || (v3 = *&v1[qword_DF79B8]) == 0)
  {

    return;
  }

  objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata());
  v4 = v3;
  v5 = v2;
  v6 = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v4);
  if (!v6)
  {

    return;
  }

  v7 = v6;
  type metadata accessor for JSContainerDetailComponentController();
  v8 = v7;
  v9 = JSContainerDetailComponentController.__allocating_init(containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v8, 0, 1, UIScreen.Dimensions.size.getter, 0);
  v41 = v5;
  v40 = v8;
  if (!v9)
  {
    v10 = v4;
    v9 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v10, 0, 1, UIScreen.Dimensions.size.getter, 0);
    if (!v9)
    {
      objc_opt_self();
      v36 = swift_dynamicCastObjCClass();
      if (v36)
      {
        v37 = v36;
        v38 = MPModelPropertyPlaylistType;
        v39 = v10;
        if ([v37 hasLoadedValueForKey:v38] && objc_msgSend(v37, "type") == &dword_8 + 1)
        {
          v11 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0);
          v12 = *&v11[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];

          goto LABEL_11;
        }
      }

      sub_ABAFD0();
      __break(1u);
      return;
    }
  }

  v11 = v9;
  v12 = *(v9 + OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail);
LABEL_11:
  v13 = v11;
  v14 = type metadata accessor for JSContainerDetailModelRequest();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
  *v16 = 0;
  v16[1] = 0;
  v15[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
  swift_unknownObjectWeakInit();
  v17 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
  *&v15[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
  v15[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
  *&v15[v17] = v12;
  v48.receiver = v15;
  v48.super_class = v14;
  v18 = v12;
  v19 = objc_msgSendSuper2(&v48, "init");
  if ((v18[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind] & 0xFE) == 2)
  {
    sub_13C80(0, &qword_DE8E90);
    v20 = v19;
    v21 = static MPModelAlbum.defaultMusicKind.getter();
    [v20 setSectionKind:v21];

    v22 = [objc_opt_self() kindWithVariants:3];
    v23 = v22;
  }

  else
  {
    sub_13C80(0, &qword_DE9C10);
    v22 = static MPModelPlaylistEntry.defaultMusicKind.getter();
    v24 = objc_opt_self();
    v23 = v19;
    v25 = [v24 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v22 options:0];
    [v23 setSectionKind:v25];

    v20 = v22;
  }

  [v19 setItemKind:v22];

  v26 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_prominentItemIdentifiers;
  swift_beginAccess();
  v27 = *&v18[v26];
  v28 = v27;

  v29 = JSViewModel.playActivityRecommendationData.getter();
  v31 = v30;
  sub_466A4(0, 0xF000000000000000);
  v50[0] = v19;
  v50[1] = v12;
  v50[2] = v3;
  v50[3] = 0;
  v50[4] = v11;
  v50[5] = 0;
  v50[6] = v27;
  v51 = 1;
  *v52 = *v49;
  *&v52[3] = *&v49[3];
  v53 = v29;
  v54 = v31;
  v43[0] = v19;
  v43[1] = v12;
  v43[2] = v3;
  v43[3] = 0;
  v43[4] = v11;
  v43[5] = 0;
  v43[6] = v27;
  v44 = 1;
  *&v45[3] = *&v49[3];
  *v45 = *v49;
  v46 = v29;
  v47 = v31;
  sub_70EB0(v50, v42);
  sub_70F0C(v43);
  v32 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController());
  sub_70EB0(v50, v42);
  v33 = sub_2D72DC(v50);
  v34 = [v1 navigationController];
  if (v34)
  {
    v35 = v34;
    [v34 pushViewController:v33 overrideTraitCollection:0 animated:1];

    sub_70F0C(v50);
  }

  else
  {

    sub_70F0C(v50);
  }
}

void sub_1F720C(void *a1)
{
  v2 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v2 - 8);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v36 - v9;
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  v13 = [objc_opt_self() defaultWorkspace];
  if (v13)
  {
    v14 = v13;
    v15 = [a1 identifiers];
    LSApplicationWorkspace.openiTunesStore(with:)(v15, v12);
  }

  else
  {
    v16 = sub_AB31C0();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  }

  v36 = v10;
  sub_15F84(v12, v10, &unk_DF2AE0);
  v17 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
  v18 = MPModelObject.bestIdentifier(for:)(*v17, 1u);
  v20 = v19;
  v21 = sub_AB31C0();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF8670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = 0x614E206D75626C41;
  *(inited + 40) = 0xEA0000000000656DLL;
  v23 = [a1 title];
  v24 = 0xE000000000000000;
  if (v23)
  {
    v25 = v23;
    v26 = sub_AB92A0();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  *(inited + 48) = v26;
  *(inited + 56) = v28;
  if (v20)
  {
    v24 = v20;
    v29 = v18;
  }

  else
  {
    v29 = 0;
  }

  v30 = sub_96B2C(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &qword_DEE730);
  v35 = v7;
  v31 = v37;
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(0x7574496E4F797542, 0xEB0000000073656ELL, 5, 28, v36, 0, 0, 12, v37, 0, 0, 65280, v29, v24, 0x6D75626C41, 0xE500000000000000, v35, v30, 1, 2, 0, 0, 0);
  v32 = MetricsReportingController.shared.unsafeMutableAddressor();
  v33 = *&stru_B8.sectname[swift_isaMask & **v32];
  v34 = *v32;
  v33(v31, 0, 0, 0, 0, 0);
  sub_1FBE18(v31, type metadata accessor for MetricsEvent.Click);
  sub_12E1C(v12, &unk_DF2AE0);
}

id sub_1F7620(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
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
  v20 = sub_1F685C(v16, v13, v15, v12);

  (*(v10 + 8))(v12, v9);

  return v20;
}

void sub_1F7780(void *a1)
{
  v25 = [v1 traitCollection];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [v1 view];
  if (!v13)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 music_inheritedLayoutInsets];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = UIEdgeInsetsInsetRect_1(v6, v8, v10, v12, v16, v18, v20, v22);
  sub_14CD64(v25, 0x2000u, v23);
  [a1 setRowHeight:v24];
}

void sub_1F78C8(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v7 - 8);
  v9 = &v40 - v8;
  v10 = sub_AB3820();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3B38B0(a1, a2, a3);
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v41 = v3;
    v16 = v11;
    v17 = v10;
    v18 = v13;
    v19 = a2;
    v20 = [v15 tableViewCell];
    if (!v20)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v21 = v20;
    [v20 _setDrawsSeparatorAtTopOfSection:0];

    v22 = [v15 tableViewCell];
    if (!v22)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v23 = v22;
    [v22 _setDrawsSeparatorAtBottomOfSection:0];

    v13 = v18;
    v10 = v17;
    v11 = v16;
    v3 = v41;
  }

  sub_469178(a3, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_12E1C(v9, &unk_DE8E20);
    return;
  }

  (*(v11 + 32))(v13, v9, v10);
  type metadata accessor for SongCell();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    (*(v11 + 8))(v13, v10);
    return;
  }

  v25 = v24;
  v26 = *(v3 + qword_DF79A8);
  v27 = a2;
  v28 = v27;
  if (v26 == 1)
  {
    v29 = v27;
    v30 = [v25 tableViewCell];
    if (!v30)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v31 = v30;
    [v30 _setDrawsSeparatorAtTopOfSection:0];

    v32 = [v25 tableViewCell];
    if (!v32)
    {
LABEL_27:
      __break(1u);
      return;
    }

    [v32 _setDrawsSeparatorAtBottomOfSection:1];
  }

  v33 = *(v3 + qword_DFE2F0);
  if (v33)
  {
    v34 = [v33 results];
    if (!v34)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v35 = v34;
    v36 = [v34 numberOfItemsInSection:sub_AB37F0()];
  }

  else
  {
    v36 = 0;
  }

  v37 = sub_AB37B0();
  if (__OFSUB__(v36, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  v38 = v37 != (v36 - 1);
  v39 = v25[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment];
  v25[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = v38;
  if (v38 != v39)
  {
    [v25 setNeedsLayout];
  }

  (*(v11 + 8))(v13, v10);
}

void sub_1F7CA8(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
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
  sub_1F78C8(v13, v14, v12);

  (*(v10 + 8))(v12, v9);
}

double sub_1F7DCC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1FBFD0(v6);
  v10 = v9;

  return v10;
}

double sub_1F7E44(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1FC494(v6);
  v10 = v9;

  return v10;
}

double sub_1F7EBC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1FC82C(v6);
  v10 = v9;

  return v10;
}

uint64_t sub_1F7F24(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[qword_DF4020];
  a1[qword_DF4020] = 0;
  if (v9 == 1)
  {
    [*&a1[qword_DF4068] setHidden:0];
  }

  v10 = &a1[qword_DF4038];
  v11 = *&a1[qword_DF4038];
  v12 = a1[qword_DF4038 + 8];
  *v10 = 0;
  v10[8] = 0;
  if ((v12 & 1) != 0 || (v47 = 0, v46 = v11, sub_7FD28(), (sub_AB38E0() & 1) == 0))
  {
    [a1 setNeedsLayout];
  }

  v13 = *&a1[qword_DF4010];
  type metadata accessor for ClassicalWorkSection();
  swift_unknownObjectRetain();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    goto LABEL_11;
  }

  v16 = *(v14 + 16);
  v15 = *(v14 + 24);
  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = (v13 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_title);
    v43 = a3;
    *v18 = v16;
    v18[1] = v15;

    v44 = a2;
    v19 = v13 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textComponents;
    v20 = *(v13 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textComponents);
    swift_beginAccess();
    v42 = v6;
    *(v20 + 112) = v16;
    *(v20 + 120) = v15;

    sub_2EB704();

    v21 = sub_1F9E4C();
    v23 = v22;
    v24 = (v13 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_subtitle);
    *v24 = v21;
    v24[1] = v22;

    v25 = *(v19 + 8);
    swift_beginAccess();
    *(v25 + 112) = v21;
    *(v25 + 120) = v23;

    sub_2EB704();

    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = v45;
    v28 = v42;
    (*(v7 + 16))(v45, v43, v42);
    v29 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v26;
    (*(v7 + 32))(v30 + v29, v27, v28);
    v31 = &a1[qword_DF4018];
    v32 = *&a1[qword_DF4018];
    *v31 = sub_1FBD64;
    v31[1] = v30;
    sub_17654(v32);
    return swift_unknownObjectRelease();
  }

  else
  {
LABEL_11:
    swift_unknownObjectRelease();
    v34 = (v13 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_title);
    *v34 = 0;
    v34[1] = 0xE000000000000000;

    v35 = v13 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textComponents;
    v36 = *(v13 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textComponents);
    swift_beginAccess();
    *(v36 + 112) = 0;
    *(v36 + 120) = 0xE000000000000000;

    sub_2EB704();

    v37 = (v13 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_subtitle);
    *v37 = 0;
    v37[1] = 0xE000000000000000;

    v38 = *(v35 + 8);
    swift_beginAccess();
    *(v38 + 112) = 0;
    *(v38 + 120) = 0xE000000000000000;

    sub_2EB704();

    v39 = &a1[qword_DF4018];
    v40 = *&a1[qword_DF4018];
    *v39 = 0;
    v39[1] = 0;
    return sub_17654(v40);
  }
}

void sub_1F8384()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = IndexPath.safeSection.getter();
    sub_1F369C(v2, v1);
  }
}

id sub_1F8410(char *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v180 = a3;
  v170 = sub_AB4E30();
  v169 = *(v170 - 8);
  __chkstk_darwin(v170);
  v168 = &v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v8 - 8);
  v176 = &v166 - v9;
  v177 = sub_AB3820();
  v175 = *(v177 - 8);
  __chkstk_darwin(v177);
  v167 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AB2E20();
  __chkstk_darwin(v11);
  v171 = &v166 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9D10);
  __chkstk_darwin(v13 - 8);
  v178 = &v166 - v14;
  v15 = sub_AB2F20();
  v179 = *(v15 - 8);
  __chkstk_darwin(v15);
  v172 = &v166 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _swiftEmptyArrayStorage;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v187 = _swiftEmptyArrayStorage;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_6D530(0, _swiftEmptyArrayStorage[2] + 1, 1);
    v17 = v187;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    sub_6D530((v19 > 1), v20 + 1, 1);
    v17 = v187;
  }

  v17[2] = v20 + 1;
  *(v17 + v20 + 32) = 0;
  if (*(v4 + qword_E08868) == 1)
  {
    v21 = swift_isUniquelyReferenced_nonNull_native();
    *&v187 = v17;
    if ((v21 & 1) == 0)
    {
      sub_6D530(0, v17[2] + 1, 1);
      v17 = v187;
    }

    v23 = v17[2];
    v22 = v17[3];
    if (v23 >= v22 >> 1)
    {
      sub_6D530((v22 > 1), v23 + 1, 1);
      v17 = v187;
    }

    v17[2] = v23 + 1;
    *(v17 + v23 + 32) = 1;
  }

  v24 = swift_isUniquelyReferenced_nonNull_native();
  *&v187 = v17;
  if ((v24 & 1) == 0)
  {
    sub_6D530(0, v17[2] + 1, 1);
    v17 = v187;
  }

  v26 = v17[2];
  v25 = v17[3];
  if (v26 >= v25 >> 1)
  {
    sub_6D530((v25 > 1), v26 + 1, 1);
    v17 = v187;
  }

  v17[2] = v26 + 1;
  v182 = v17;
  *(v17 + v26 + 32) = 2;
  *(&v188 + 1) = sub_13C80(0, &unk_DE8EB0);
  *&v189 = &off_D179F8;
  *&v187 = a2;
  sub_15F84(&v187, v184, &unk_DE9C60);
  v27 = v185;
  v173 = v11;
  if (v185)
  {
    v28 = v186;
    __swift_project_boxed_opaque_existential_1(v184, v185);
    v29 = a2;
    v30 = sub_4CAA30(v182, v27, v28);
    __swift_destroy_boxed_opaque_existential_0(v184);
  }

  else
  {
    v31 = a2;
    sub_12E1C(v184, &unk_DE9C60);
    v30 = _swiftEmptyArrayStorage;
  }

  sub_178218(v30);

  sub_12E1C(&v187, &unk_DE9C60);
  [a2 duration];
  sub_142E58(v32);
  v33 = [a2 trackNumber];
  v34 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber];
  v35 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber];
  v36 = a1[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber + 8];
  *v34 = v33;
  v34[8] = 0;
  sub_143794(v35, v36);
  v181 = qword_DF79B8;
  v37 = *(v4 + qword_DF79B8);
  if (v37 && (v38 = MPModelPropertyAlbumMaximumItemTrackNumber, v39 = v37, [v39 hasLoadedValueForKey:v38]))
  {
    v40 = [v39 maximumItemTrackNumber];
  }

  else
  {
    v41 = *(v4 + qword_DFE2F0);
    if (v41)
    {
      result = [v41 results];
      if (!result)
      {
LABEL_136:
        __break(1u);
        return result;
      }

      v43 = result;
      v40 = [result totalItemCount];
    }

    else
    {
      v40 = 0;
    }

    v39 = v37;
  }

  v44 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_maximumTrackNumberForSizing];
  *v44 = v40;
  v44[8] = 0;
  v45 = [a2 isFavorite];
  v46 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite;
  v47 = a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite];
  a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite] = v45;
  if (v45 != v47)
  {
    sub_201644();
    v48 = sub_200954();
    [v48 setHidden:(a1[v46] & 1) == 0];

    v45 = a1[v46];
  }

  if (v47 != v45)
  {
    sub_14B200();
  }

  v49 = *(v4 + qword_DFE2F0);
  if (!v49)
  {
    goto LABEL_35;
  }

  result = [v49 results];
  if (!result)
  {
    __break(1u);
    goto LABEL_136;
  }

  v50 = result;
  v51 = [result sectionAtIndex:sub_AB37F0()];

  if (!v51)
  {
LABEL_35:
    v52 = 0;
    goto LABEL_36;
  }

  type metadata accessor for ClassicalWorkSection();
  v52 = swift_dynamicCastClass();
  if (!v52)
  {
    swift_unknownObjectRelease();
  }

LABEL_36:

  v53 = sub_3904BC();
  v183 = v4;
  if (!v52 || (v54 = v53, , (v54 & 1) == 0))
  {
    v60 = [a2 title];
    if (!v60)
    {
LABEL_55:
      v57 = 0;
      v59 = 0xE000000000000000;
      goto LABEL_56;
    }

LABEL_41:
    v61 = v60;
    v57 = sub_AB92A0();
    v59 = v62;

    goto LABEL_56;
  }

  v55 = [a2 classicalMovement];
  if (v55)
  {
    v56 = v55;
    v57 = sub_AB92A0();
    v59 = v58;
  }

  else
  {
    v63 = sub_390B20();
    if (!v64)
    {
      goto LABEL_50;
    }

    v57 = v63;
    v59 = v64;
  }

  v65 = HIBYTE(v59) & 0xF;
  if ((v59 & 0x2000000000000000) == 0)
  {
    v65 = v57 & 0xFFFFFFFFFFFFLL;
  }

  if (!v65)
  {

LABEL_50:
    sub_390A08();
    if (v68)
    {
    }

    else if ([a2 shouldShowComposer])
    {
      v57 = v52[2];
      v59 = v52[3];

      goto LABEL_56;
    }

    v60 = [a2 title];
    if (!v60)
    {
      goto LABEL_55;
    }

    goto LABEL_41;
  }

  v66 = sub_390640();
  if (v67)
  {
    *&v187 = v66;
    *(&v187 + 1) = v67;

    v190._countAndFlagsBits = 8238;
    v190._object = 0xE200000000000000;
    sub_AB94A0(v190);

    v191._countAndFlagsBits = v57;
    v191._object = v59;
    sub_AB94A0(v191);

    v59 = *(&v187 + 1);
    v57 = v187;
  }

LABEL_56:
  v69 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
  v70 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
  v71 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_title + 8];
  *v69 = v57;
  v69[1] = v59;
  sub_142858(v70, v71);

  if (v52)
  {
    v72 = _swiftEmptyArrayStorage;
  }

  else
  {
    v72 = sub_6AE38(0, 1, 1, _swiftEmptyArrayStorage);
    v74 = *(v72 + 2);
    v73 = *(v72 + 3);
    if (v74 >= v73 >> 1)
    {
      v72 = sub_6AE38((v73 > 1), v74 + 1, 1, v72);
    }

    *(v72 + 2) = v74 + 1;
    v72[v74 + 32] = 0;
  }

  v75 = [a2 artist];
  if (!v75)
  {
    goto LABEL_83;
  }

  v76 = v75;
  v77 = v52;
  v78 = [v75 name];
  if (v78)
  {
    v79 = v78;
    v166 = sub_AB92A0();
    v81 = v80;

    v82 = *(v183 + v181);
    if (v82)
    {
      v83 = v82;
      v84 = [v83 artist];

      if (v84)
      {
        v85 = [v84 name];
        if (v85)
        {
          v86 = v85;
          v87 = sub_AB92A0();
          v89 = v88;

          if (v87 == v166 && v89 == v81)
          {

LABEL_72:

            goto LABEL_82;
          }

          v90 = sub_ABB3C0();

          if (v90)
          {
            goto LABEL_72;
          }
        }

        else
        {
        }
      }
    }

    v91 = HIBYTE(v81) & 0xF;
    if ((v81 & 0x2000000000000000) == 0)
    {
      v91 = v166 & 0xFFFFFFFFFFFFLL;
    }

    if (v91)
    {
      v52 = v77;
      if (!v77 || !v77[7])
      {
        v92 = swift_isUniquelyReferenced_nonNull_native();
        v93 = v15;
        v94 = v179;
        if (v92)
        {
          goto LABEL_79;
        }

        goto LABEL_134;
      }

      goto LABEL_83;
    }

    goto LABEL_82;
  }

LABEL_82:
  v52 = v77;
LABEL_83:
  v93 = v15;
  v94 = v179;
  v95 = v178;
  while (1)
  {
    MPModelSong.preferredBylineAttribution(with:from:)(v72, 0, v95);
    if ((v94[6])(v95, 1, v93) == 1)
    {
      sub_12E1C(v95, &unk_DE9D10);
      v98 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
      v99 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
      v100 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8];
      *v98 = 0;
      *(v98 + 1) = 0xE000000000000000;
      sub_142A70(v99, v100);

      v101 = [a2 hasVideo] | 0x2000;
      v102 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle];
      *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle] = v101;
      sub_143510(v102);
    }

    else
    {
      v103 = v172;
      v94[4](v172, v95, v93);
      sub_AB2E10();
      sub_1FBF88(&unk_DF86A0, &type metadata accessor for AttributedString.CharacterView);
      v104 = sub_AB9570();
      v105 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
      v106 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
      v107 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8];
      *v105 = v104;
      v105[1] = v108;
      sub_142A70(v106, v107);

      v109 = [a2 hasVideo] | 0x6000;
      v110 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle];
      *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle] = v109;
      sub_143510(v110);
      v111 = v94[1];
      ++v94;
      v111(v103, v93);
    }

    v112 = *(v183 + v181);
    v174 = v52;
    if (!v112)
    {
      goto LABEL_92;
    }

    v113 = MPModelPropertyAlbumSongPopularity;
    v114 = v112;
    if (([v114 hasLoadedValueForKey:v113] & 1) == 0)
    {

LABEL_92:

      goto LABEL_103;
    }

    v94 = [a2 identifiers];
    v115 = [v114 songPopularityForIdentifiers:v94];
    if (v115)
    {
      goto LABEL_90;
    }

    v118 = [v94 universalStore];
    if (v118)
    {
      v119 = [v118 adamID];
      swift_unknownObjectRelease();
      v184[0] = v119;
      sub_ABAD10();
      v120 = sub_1F9828();
      if (*(v120 + 16))
      {
        v121 = sub_2EC004(&v187);
        if (v122)
        {
          v123 = *(*(v120 + 56) + 8 * v121);
          sub_8085C(&v187);

          v115 = v123;
LABEL_90:
          isa = v115;
          v117 = isa;
          goto LABEL_99;
        }
      }

      sub_8085C(&v187);
    }

    sub_13C80(0, &qword_DF1300);
    isa = sub_ABA770(0).super.super.isa;
    v117 = 0;
LABEL_99:

    sub_AB3A20();
    v125 = v124;

    v126 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_popularity];
    v127 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_popularity];
    v128 = a1[OBJC_IVAR____TtC16MusicApplication8SongCell_popularity + 8];
    *v126 = v125;
    *(v126 + 8) = 0;
    if ((v128 & 1) != 0 || v127 != v125)
    {
      sub_14B200();
    }

LABEL_103:
    v129 = v183;
    v130 = &a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
    v131 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
    v132 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
    v133 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
    v134 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
    *v130 = 0u;
    *(v130 + 1) = 0u;
    *(v130 + 2) = 0u;
    sub_2F1C8(v131, v132, v133, v134);
    v135 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
    v136 = *(v135 + 168);
    v187 = *(v135 + 152);
    v188 = v136;
    v189 = *(v135 + 184);
    *(v135 + 152) = 0u;
    *(v135 + 168) = 0u;
    *(v135 + 184) = 0u;
    sub_75948(&v187);
    sub_12E1C(&v187, &unk_DF8690);
    v137 = sub_4A3F1C();
    v138 = sub_10AC20(a2);

    v139 = [a2 shouldVisuallyDisableFor:v138];
    a2 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled;
    a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled] = v139;
    if (a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView] != 1)
    {
      goto LABEL_122;
    }

    v140 = v139;
    v52 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
    v141 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
    swift_beginAccess();
    *(v52 + v141) = v140;
    v181 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
    if (v140 == *(v52 + OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled))
    {
      goto LABEL_122;
    }

    *(v52 + v181) = v140;
    v142 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
    swift_beginAccess();
    v143 = *(v52 + v142);
    if (v143 >> 62)
    {
      v144 = sub_ABB060();
      if (!v144)
      {
        goto LABEL_122;
      }
    }

    else
    {
      v144 = *(&dword_10 + (v143 & 0xFFFFFFFFFFFFFF8));
      if (!v144)
      {
        goto LABEL_122;
      }
    }

    v178 = a1;
    v179 = a2;
    v93 = v144 - 1;
    if (v144 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_134:
    v72 = sub_6AE38(0, *(v72 + 2) + 1, 1, v72);
LABEL_79:
    v95 = v178;
    v97 = *(v72 + 2);
    v96 = *(v72 + 3);
    if (v97 >= v96 >> 1)
    {
      v72 = sub_6AE38((v96 > 1), v97 + 1, 1, v72);
    }

    *(v72 + 2) = v97 + 1;
    v72[v97 + 32] = 1;
  }

  v173 = v52;

  v145 = 0;
  if ((v143 & 0xC000000000000001) == 0)
  {
    goto LABEL_117;
  }

LABEL_109:
  v146 = *(sub_36003C(v145, v143) + 256);
  if (v146)
  {
LABEL_110:
    v147 = v146;
    if (([v147 isHidden] & 1) == 0)
    {
      v148 = *(v52 + v181);
      v149 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
      swift_beginAccess();
      v150 = v147[v149];
      v147[v149] = v148;
      if (v148 != v150)
      {
        v151 = 1.0;
        if (v148)
        {
          UIInterfaceGetContentDisabledAlpha();
        }

        [v147 setAlpha:v151];
      }
    }

    if (v93 != v145)
    {
      goto LABEL_119;
    }
  }

  else
  {
    while (1)
    {

      if (v93 == v145)
      {
        break;
      }

LABEL_119:
      ++v145;
      if ((v143 & 0xC000000000000001) != 0)
      {
        goto LABEL_109;
      }

LABEL_117:
      v152 = *(v143 + 8 * v145 + 32);

      v146 = *(v152 + 256);
      if (v146)
      {
        goto LABEL_110;
      }
    }
  }

  v129 = v183;
  a2 = v179;
  a1 = v178;
LABEL_122:
  if (*(a2 + a1))
  {
    v153 = 0;
  }

  else
  {
    v153 = 3;
  }

  [a1 setSelectionStyle:v153];
  sub_143E08();
  v154 = qword_E71990;
  swift_beginAccess();
  v155 = v129 + v154;
  v156 = v176;
  sub_15F84(v155, v176, &unk_DE8E20);
  v157 = v175;
  v158 = v177;
  if ((*(v175 + 48))(v156, 1, v177) == 1)
  {
    sub_12E1C(v156, &unk_DE8E20);
    v159 = a1[OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem];
    a1[OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem] = 0;
    if ((v159 & 1) == 0)
    {
      goto LABEL_127;
    }

LABEL_129:
    v163 = [a1 _bridgedConfigurationState];
    v164 = v168;
    sub_AB4E00();
    v165 = sub_AB4DF0().super.super.isa;
    (*(v169 + 8))(v164, v170);

    [a1 _bridgedUpdateConfigurationUsingState:v165];
  }

  else
  {
    v160 = v167;
    (*(v157 + 32))(v167, v156, v158);
    v161 = sub_AB3780();
    (*(v157 + 8))(v160, v158);
    v162 = a1[OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem];
    a1[OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem] = v161 & 1;
    if ((v161 & 1) != v162)
    {
      goto LABEL_129;
    }

LABEL_127:
  }
}

unint64_t sub_1F9828()
{
  v1 = qword_DF79B0;
  if (*(v0 + qword_DF79B0))
  {
    v2 = *(v0 + qword_DF79B0);
  }

  else
  {
    v2 = sub_96C68(_swiftEmptyArrayStorage);
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1F9894(void *a1)
{
  v2 = *(v1 + qword_DF79B8);
  if (!v2)
  {
    return;
  }

  v4 = v1;
  if (a1)
  {
    sub_13C80(0, &qword_DE8E90);
    v15 = v2;
    v5 = a1;
    v6 = sub_ABA790();

    if (v6)
    {

      return;
    }
  }

  else
  {
    v7 = v2;
  }

  if (qword_DE6838 != -1)
  {
    swift_once();
  }

  v8 = sub_10AC20(v2);
  v9 = sub_10CB1C(v2, 0, v8);
  static ApplicationCapabilities.shared.getter(v16);
  v10 = v17;
  if (sub_472A84(5, v17))
  {
    v11 = sub_472A84(0, v10);
    sub_70C54(v16);
    v12 = 7;
    if (v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = 7;
    }

    if ((v9 & 1) == 0)
    {
      v12 = v13;
    }

    if (v8 == (&dword_4 + 3))
    {
      v8 = v12;
    }
  }

  else
  {
    sub_70C54(v16);
  }

  v14 = *(v4 + qword_DF79C0);
  *(v4 + qword_DF79C0) = v8;
  sub_1F9A24(v14);
}

void sub_1F9A24(uint64_t a1)
{
  v2 = *&v1[qword_DF79C0];
  if (v2 == a1)
  {
    return;
  }

  v3 = qword_DF79C8;
  v4 = *&v1[qword_DF79C8];
  if (v2 != 1)
  {
    goto LABEL_7;
  }

  *&v1[qword_DF79C8] = v4 | 2;
  if (v4 == (v4 | 2))
  {
    return;
  }

  [v1 loadViewIfNeeded];
  v3 = qword_DFE2F8;
  v5 = *&v1[qword_DFE2F8];
  if (!v5)
  {
    __break(1u);
LABEL_7:
    *&v1[v3] = v4 & 0xFFFFFFFFFFFFFFFDLL;
    if (v4 == (v4 & 0xFFFFFFFFFFFFFFFDLL))
    {
      return;
    }

    [v1 loadViewIfNeeded];
    v5 = *&v1[qword_DFE2F8];
    if (!v5)
    {
      __break(1u);
      return;
    }
  }

  v6 = [v5 collectionViewLayout];
  [v6 invalidateLayout];
}

id sub_1F9B14()
{
  v0[qword_E711D0] = 1;
  *&v0[qword_E711D8] = 0;
  *&v0[qword_DF79A0] = 0;
  v0[qword_DF79A8] = 0;
  *&v0[qword_DF79B0] = 0;
  *&v0[qword_DF79B8] = 0;
  *&v0[qword_DF79C0] = 0;
  *&v0[qword_DF79C8] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlbumDetailSongsViewController();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1F9BD4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = sub_1FCC74(v3);

  return v4;
}

void sub_1F9C0C()
{

  v1 = *(v0 + qword_DF79B8);
}

void sub_1F9C88(uint64_t a1)
{

  v2 = *(a1 + qword_DF79B8);
}

uint64_t type metadata accessor for AlbumDetailSongsViewController()
{
  result = qword_DF79F8;
  if (!qword_DF79F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1F9E4C()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9230();
  __chkstk_darwin(v3 - 8);
  sub_AB9220();
  v11._countAndFlagsBits = 2128194;
  v11._object = 0xE300000000000000;
  sub_AB9210(v11);
  v4 = v0[4];
  if (v0[5])
  {
    v5 = v0[5];
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    v4 = sub_AB9320();
    v5 = v6;
  }

  v12._countAndFlagsBits = v4;
  v12._object = v5;
  sub_AB9200(v12);

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_AB9210(v13);
  sub_AB9240();
  sub_AB3550();
  result = sub_AB9320();
  v10 = result;
  v8 = v0[7];
  if (v8)
  {
    v9 = v0[6];

    v14._countAndFlagsBits = v9;
    v14._object = v8;
    sub_AB94A0(v14);
    v15._countAndFlagsBits = 0x209380E220;
    v15._object = 0xA500000000000000;
    sub_AB94A0(v15);

    return v10;
  }

  return result;
}

uint64_t sub_1FA090()
{

  return swift_deallocClassInstance();
}

void sub_1FA0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, void *a6)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    goto LABEL_26;
  }

  v11 = v10;
  v12 = [v10 classicalWork];
  if (v12)
  {
    v13 = v12;
    v14 = sub_AB92A0();
    v16 = v15;

    v17 = *a4;
    if (!*a4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v18 = sub_390A08();
    if (v19)
    {
      v14 = v18;
      v16 = v19;
      v17 = *a4;
      if (!*a4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v14 = 0;
      v16 = 0xE000000000000000;
      v17 = *a4;
      if (!*a4)
      {
        goto LABEL_15;
      }
    }
  }

  v20 = *(v17 + 16) == v14 && *(v17 + 24) == v16;
  if (v20 || (sub_ABB3C0() & 1) != 0)
  {

    goto LABEL_16;
  }

LABEL_15:
  type metadata accessor for ClassicalWorkSection();
  v21 = swift_allocObject();
  *(v21 + 32) = 0u;
  *(v21 + 48) = 0u;
  *(v21 + 64) = 0;
  *(v21 + 16) = v14;
  *(v21 + 24) = v16;
  [a5 appendSection:v21];
  *a4 = v21;

LABEL_16:
  [a5 appendItem:a1];
  v22 = *a4;
  if (!*a4)
  {
LABEL_26:

    swift_unknownObjectRelease();
    return;
  }

  v23 = *(v22 + 40);

  if (!v23)
  {
    v37 = [v11 composer];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 name];
      if (v39)
      {
        v40 = v39;
        v41 = sub_AB92A0();
        v43 = v42;

        goto LABEL_39;
      }
    }

    v41 = 0;
    v43 = 0;
LABEL_39:
    *(v22 + 32) = v41;
    *(v22 + 40) = v43;

    if (a6)
    {
      goto LABEL_19;
    }

LABEL_40:
    swift_unknownObjectRelease();

    return;
  }

  if (!a6)
  {
    goto LABEL_40;
  }

LABEL_19:
  v51 = a6;
  v24 = [v11 artist];
  if (v24)
  {
    v50 = v24;
    v25 = [v24 name];
    if (v25)
    {
      v26 = v25;
      v27 = sub_AB92A0();
      v29 = v28;

      v30 = [v51 artist];
      if (v30)
      {
        v31 = v30;
        v32 = [v30 name];
        if (v32)
        {
          v33 = v32;
          v34 = sub_AB92A0();
          v36 = v35;

          if (v27 == v34 && v29 == v36)
          {
            goto LABEL_25;
          }

          v49 = sub_ABB3C0();

          if (v49)
          {
LABEL_55:
            swift_unknownObjectRelease();

            swift_bridgeObjectRelease_n();
            return;
          }

LABEL_45:
          v45 = HIBYTE(v29) & 0xF;
          if ((v29 & 0x2000000000000000) == 0)
          {
            v45 = v27 & 0xFFFFFFFFFFFFLL;
          }

          if (!v45)
          {
            goto LABEL_55;
          }

          v47 = *(v22 + 48);
          v46 = *(v22 + 56);
          if (v46)
          {

            if (v47 == v27 && v46 == v29)
            {
              goto LABEL_25;
            }

            v48 = sub_ABB3C0();

            if ((v48 & 1) == 0)
            {
              *(v22 + 64) = 1;
              *(v22 + 48) = 0;
              *(v22 + 56) = 0;
LABEL_25:
              swift_unknownObjectRelease();

LABEL_59:

              return;
            }
          }

          else
          {

            if ((*(v22 + 64) & 1) == 0)
            {
              *(v22 + 48) = v27;
              *(v22 + 56) = v29;
            }
          }

          swift_unknownObjectRelease();

          goto LABEL_59;
        }
      }

      goto LABEL_45;
    }

    swift_unknownObjectRelease();

    v44 = v50;
  }

  else
  {
    swift_unknownObjectRelease();

    v44 = v51;
  }
}

id sub_1FA60C(uint64_t a1, uint64_t (*a2)(), uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC16MusicApplication27ClassicalAlbumModelResponse_initialModelResponse);
  v23 = &OBJC_PROTOCOL___MPModelResponseDetailedKeepLocalStatusRequesting;
  v8 = swift_dynamicCastObjCProtocolConditional();
  if (v8)
  {
    v9 = v8;
    v21 = a2;
    v22 = a3;
    aBlock = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_151E0;
    v20 = &block_descriptor_168;
    v10 = _Block_copy(&aBlock);
    v11 = v7;

    v12 = [v9 newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:a1 responseHandler:v10];
    _Block_release(v10);
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    v21 = sub_B598C;
    v22 = v13;
    aBlock = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_1B5EB4;
    v20 = &block_descriptor_67;
    v14 = _Block_copy(&aBlock);
    v15 = objc_opt_self();

    v12 = [v15 blockOperationWithBlock:v14];
    _Block_release(v14);
  }

  return v12;
}

id sub_1FA8B8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_1FA938()
{
  result = qword_DF85D8;
  if (!qword_DF85D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF85D8);
  }

  return result;
}

unint64_t sub_1FA990()
{
  result = qword_DF85E0;
  if (!qword_DF85E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF85E0);
  }

  return result;
}

unint64_t sub_1FA9E8()
{
  result = qword_DF85E8;
  if (!qword_DF85E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF85E8);
  }

  return result;
}

unint64_t sub_1FAA40()
{
  result = qword_DF85F0;
  if (!qword_DF85F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF85F0);
  }

  return result;
}

void sub_1FAA94(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_E71990;
  swift_beginAccess();
  sub_15F84(v1 + v10, v5, &unk_DE8E20);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_12E1C(v5, &unk_DE8E20);
LABEL_3:
    v11 = 1;
    goto LABEL_7;
  }

  (*(v7 + 32))(v9, v5, v6);
  if (sub_AB3780())
  {
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v14 = sub_AB37F0();
    if (v14 != sub_AB37F0())
    {
      (*(v7 + 8))(v9, v6);
      goto LABEL_3;
    }

    v15 = sub_AB37E0();
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    v17 = sub_AB37E0();
    (*(v7 + 8))(v9, v6);
    if (v16 != v17)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_7:
  v12 = [a1 tableViewCell];
  if (v12)
  {
    v13 = v12;
    [v12 setSeparatorStyle:v11];

    return;
  }

LABEL_15:
  __break(1u);
}

id sub_1FAD28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B03840;
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
  *(v0 + 256) = sub_AB92A0();
  *(v0 + 264) = v15;
  *(v0 + 272) = sub_AB92A0();
  *(v0 + 280) = v16;
  *(v0 + 288) = sub_AB92A0();
  *(v0 + 296) = v17;
  *(v0 + 304) = sub_AB92A0();
  *(v0 + 312) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_AF4EC0;
  *(v21 + 32) = sub_AB92A0();
  *(v21 + 40) = v22;
  isa = sub_AB9740().super.isa;
  v24 = objc_opt_self();
  v25 = [v24 propertySetWithProperties:isa];

  *(inited + 48) = v25;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_AF4EC0;
  *(v27 + 32) = sub_AB92A0();
  *(v27 + 40) = v28;
  v29 = sub_AB9740().super.isa;
  v30 = [v24 propertySetWithProperties:v29];

  *(inited + 72) = v30;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
  swift_arrayDestroy();
  v31 = objc_allocWithZone(MPPropertySet);
  v32 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v33 = sub_AB8FD0().super.isa;

  v34 = [v31 initWithProperties:v32 relationships:v33];

  sub_13C80(0, &qword_DE8E90);
  v35 = sub_2BAFF8();
  v36 = [v34 propertySetByCombiningWithPropertySet:v35];

  return v36;
}

id sub_1FB168()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF8800;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_AF4EC0;
  *(v16 + 32) = sub_AB92A0();
  *(v16 + 40) = v17;
  isa = sub_AB9740().super.isa;
  v19 = objc_opt_self();
  v20 = [v19 propertySetWithProperties:isa];

  *(inited + 48) = v20;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_AF4EC0;
  *(v22 + 32) = sub_AB92A0();
  *(v22 + 40) = v23;
  v24 = sub_AB9740().super.isa;
  v25 = [v19 propertySetWithProperties:v24];

  *(inited + 72) = v25;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
  swift_arrayDestroy();
  v26 = objc_allocWithZone(MPPropertySet);
  v27 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v28 = sub_AB8FD0().super.isa;

  v29 = [v26 initWithProperties:v27 relationships:v28];

  sub_13C80(0, &unk_DE8EB0);
  v30 = sub_2BAFF8();
  v31 = [v29 propertySetByCombiningWithPropertySet:v30];

  v32 = sub_10F414();
  v33 = [v31 propertySetByCombiningWithPropertySet:v32];

  return v33;
}

uint64_t sub_1FB580(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(MPMutableSectionedCollection) init];
  v18 = 0;
  v5 = swift_allocObject();
  v5[2] = &v18;
  v5[3] = v4;
  v5[4] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1FBC94;
  *(v6 + 24) = v5;
  aBlock[4] = sub_5794C;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_48D4FC;
  aBlock[3] = &block_descriptor_206;
  v7 = _Block_copy(aBlock);
  v8 = a2;
  v9 = v4;

  [a1 enumerateItemsUsingBlock:v7];
  _Block_release(v7);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if ((a1 & 1) == 0)
  {
    v11 = v9;
    if ([v11 firstSection])
    {
      type metadata accessor for ClassicalWorkSection();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = *(v12 + 16);
        v14 = *(v12 + 24);
        swift_unknownObjectRelease();
        v15 = HIBYTE(v14) & 0xF;
        if ((v14 & 0x2000000000000000) == 0)
        {
          v15 = v13 & 0xFFFFFFFFFFFFLL;
        }

        if (v15)
        {

LABEL_11:

          return v11;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v16 = [v11 numberOfSections];

    if (v16 < 2)
    {

      v11 = 0;
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

id sub_1FB7B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF8820;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_AF8820;
  *(v6 + 32) = sub_AB92A0();
  *(v6 + 40) = v7;
  *(v6 + 48) = sub_AB92A0();
  *(v6 + 56) = v8;
  *(v6 + 64) = sub_AB92A0();
  *(v6 + 72) = v9;
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

  return v15;
}

uint64_t sub_1FB9FC()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_67(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1FBA4C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1FBA84()
{

  return swift_deallocObject();
}

uint64_t sub_1FBAC4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1FBB04()
{

  return swift_deallocObject();
}

uint64_t sub_1FBB4C()
{

  return swift_deallocObject();
}

uint64_t sub_1FBB9C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1FBC04()
{

  return swift_deallocObject();
}

uint64_t sub_1FBC54()
{

  return swift_deallocObject();
}

uint64_t sub_1FBCA0()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1FBD64()
{
  sub_AB3820();

  sub_1F8384();
}

uint64_t sub_1FBDD8()
{

  return swift_deallocObject();
}

uint64_t sub_1FBE18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1FBE78()
{

  return swift_deallocObject();
}

uint64_t sub_1FBF0C()
{

  return swift_deallocObject();
}

uint64_t sub_1FBF88(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1FBFD0(void *a1)
{
  v2 = v1;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  sub_AB3810();
  sub_469178(v7, v10);
  v11 = *(v5 + 8);
  v11(v7, v4);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_12E1C(v10, &unk_DE8E20);
    return;
  }

  v12 = IndexPath.safeSection.getter();
  v11(v10, v4);
  v13 = qword_DFE2F0;
  v14 = *&v2[qword_DFE2F0];
  if (v14)
  {
    v15 = [v14 results];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 sectionAtIndex:v12];

      if (!v17)
      {
        return;
      }

      v18 = type metadata accessor for ClassicalWorkSection();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
LABEL_29:
        swift_unknownObjectRelease();
        return;
      }

      v20 = v19;
      v43 = v12;
      [a1 bounds];
      v21 = [v2 view];
      if (!v21)
      {
        goto LABEL_34;
      }

      v22 = v21;
      [v21 music_inheritedLayoutInsets];

      v23 = [v2 traitCollection];
      v24 = sub_126814();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_AF7C50;
      *(inited + 32) = v24;
      *(inited + 40) = v26;

      sub_2F48A4(inited, v23, 0, 0);
      swift_setDeallocating();
      swift_arrayDestroy();

      v28 = v20[3];
      v29 = v20[2] & 0xFFFFFFFFFFFFLL;
      if ((v28 & 0x2000000000000000) != 0)
      {
        v29 = HIBYTE(v28) & 0xF;
      }

      if (v29)
      {
        swift_unknownObjectRelease();

        return;
      }

      v30 = *&v2[v13];
      if (!v30)
      {
        goto LABEL_28;
      }

      swift_unknownObjectRetain();
      v31 = [v30 results];
      if (!v31)
      {
        goto LABEL_35;
      }

      v32 = v31;
      v33 = [v31 firstSection];

      swift_unknownObjectRelease();
      if (v33)
      {
        swift_unknownObjectRelease();
        if (v20 == v33)
        {
          goto LABEL_28;
        }
      }

      v34 = *&v2[v13];
      if (!v34)
      {
        goto LABEL_28;
      }

      v35 = [v34 results];
      if (!v35)
      {
LABEL_36:
        __break(1u);
        return;
      }

      v36 = v43;
      if (!__OFSUB__(v43, 1))
      {
        v37 = v35;
        v38 = [v35 sectionAtIndex:v43 - 1];

        if (v38)
        {
          v39 = swift_dynamicCastClass();
          if (!v39)
          {

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            return;
          }

          v40 = *(v39 + 24);
          v41 = *(v39 + 16) & 0xFFFFFFFFFFFFLL;
          if ((v40 & 0x2000000000000000) != 0)
          {
            v41 = HIBYTE(v40) & 0xF;
          }

          if (v41 && v36)
          {
            [v23 displayScale];
            sub_AB3A00();

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            return;
          }

          swift_unknownObjectRelease();
          goto LABEL_29;
        }

LABEL_28:

        goto LABEL_29;
      }

      __break(1u);
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }
}

void sub_1FC494(void *a1)
{
  v2 = v1;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v8 - 8);
  v10 = &v27[-v9];
  if (v1[qword_DF79A8] == 1)
  {
    sub_AB3810();
    sub_469178(v7, v10);
    v11 = *(v5 + 8);
    v11(v7, v4);
    if ((*(v5 + 48))(v10, 1, v4) == 1)
    {
      sub_12E1C(v10, &unk_DE8E20);
      return;
    }

    v12 = IndexPath.safeSection.getter();
    v11(v10, v4);
    v13 = *&v2[qword_DFE2F0];
    if (v13)
    {
      v14 = [v13 results];
      if (!v14)
      {
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      v15 = v14;
      v16 = [v14 sectionAtIndex:v12];

      if (v16)
      {
        type metadata accessor for ClassicalWorkSection();
        v17 = swift_dynamicCastClass();
        if (v17)
        {
          v18 = *(v17 + 24);
          v19 = *(v17 + 16) & 0xFFFFFFFFFFFFLL;
          if ((v18 & 0x2000000000000000) != 0)
          {
            v19 = HIBYTE(v18) & 0xF;
          }

          if (v19)
          {
            [a1 bounds];
            v20 = [v2 view];
            if (v20)
            {
              v21 = v20;
              [v20 music_inheritedLayoutInsets];

              v22 = [v2 traitCollection];
              v23 = sub_126814();
              v25 = v24;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_AF7C50;
              *(inited + 32) = v23;
              *(inited + 40) = v25;

              sub_2F48A4(inited, v22, 0, 0);
              swift_setDeallocating();
              swift_arrayDestroy();

              [v22 displayScale];
              sub_AB3A00();
              swift_unknownObjectRelease();

              return;
            }

            goto LABEL_16;
          }
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1FC82C(void *a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = [objc_opt_self() sharedMonitor];
  v6 = [v5 isRemoteServerLikelyReachable];

  if (!v6 || UITraitCollection.isMediaPicker.getter())
  {
    goto LABEL_19;
  }

  v7 = UITraitCollection.mediaLibrary.getter();
  v8 = [objc_opt_self() deviceMediaLibrary];
  if (!v8)
  {

    return;
  }

  v9 = v8;
  sub_13C80(0, &qword_DF86B0);
  v10 = sub_ABA790();

  if ((v10 & 1) == 0)
  {
    goto LABEL_19;
  }

  if ((UITraitCollection.legacyLibraryFilter.getter().rawValue & 2) != 0)
  {
    goto LABEL_19;
  }

  v11 = *&v2[qword_DFE2F0];
  if (!v11)
  {
    goto LABEL_19;
  }

  type metadata accessor for ClassicalAlbumModelResponse();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v11 = *(v12 + OBJC_IVAR____TtC16MusicApplication27ClassicalAlbumModelResponse_initialModelResponse);
  }

  v13 = *&v2[qword_DF79B8];
  if (!v13)
  {
LABEL_19:

    return;
  }

  objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata());
  v14 = v13;
  v15 = v11;
  v16 = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v14);
  if (!v16)
  {

    return;
  }

  v17 = *&v2[qword_DF79C8];
  if (v17)
  {
    type metadata accessor for JSContainerDetailModelResponse();
    if (!swift_dynamicCastClass())
    {
      [a1 bounds];
      v22 = v27;
      v24 = v28;
      v25 = type metadata accessor for CollectionAccessoryView();
      v26 = swift_conformsToProtocol2();
      if (v26 && v25)
      {
        goto LABEL_18;
      }

LABEL_26:
      v29 = [objc_opt_self() defaultMetrics];
      sub_AB9EF0();

      return;
    }
  }

  if ((v17 & 2) == 0)
  {
LABEL_22:

    return;
  }

  v18 = [v15 results];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 totalItemCount];

    if (v20 >= 1)
    {
      [a1 bounds];
      v22 = v21;
      v24 = v23;
      v25 = type metadata accessor for CollectionAccessoryView();
      v26 = swift_conformsToProtocol2();
      if (v26 && v25)
      {
LABEL_18:
        (*(v26 + 8))(v4, v25, v26, v22, v24);

        return;
      }

      goto LABEL_26;
    }

    goto LABEL_22;
  }

  __break(1u);
}

id sub_1FCC74(uint64_t a1)
{
  v1[qword_E711D0] = 1;
  *&v1[qword_E711D8] = 0;
  *&v1[qword_DF79A0] = 0;
  v1[qword_DF79A8] = 0;
  *&v1[qword_DF79B0] = 0;
  *&v1[qword_DF79B8] = 0;
  *&v1[qword_DF79C0] = 0;
  *&v1[qword_DF79C8] = 0;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AlbumDetailSongsViewController();
  return objc_msgSendSuper2(&v4, "initWithCoder:", a1);
}

_BYTE *sub_1FCD68(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - v11;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_title];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  v14 = &v4[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_subtitle];
  *v14 = 0;
  *(v14 + 1) = 0xE000000000000000;
  v4[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_layoutStyle] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_personType] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_badgeView] = 0;
  v15 = OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_textComponents;
  if (qword_DE69B0 != -1)
  {
    swift_once();
  }

  v31[2] = xmmword_DF86D8;
  v31[3] = xmmword_DF86E8;
  v31[4] = xmmword_DF86F8;
  v31[0] = xmmword_DF86B8;
  v31[1] = xmmword_DF86C8;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v16 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v31);
  sub_2F118(v31, v30);
  v17 = qword_DE69B8;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = &v5[v15];
  v30[2] = xmmword_DF8728;
  v30[3] = unk_DF8738;
  v30[4] = xmmword_DF8748;
  v30[0] = xmmword_DF8708;
  v30[1] = unk_DF8718;
  swift_allocObject();
  v19 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_AF82B0;
  *(v20 + 32) = v16;
  *v18 = v16;
  v18[1] = v19;
  v18[2] = v20;
  sub_2F118(v30, &v29);
  v21 = type metadata accessor for PersonVerticalCell();
  v28.receiver = v5;
  v28.super_class = v21;
  v22 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
  v23 = v22[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_layoutStyle];
  v24 = v22;
  v25 = [v24 traitCollection];
  swift_beginAccess();
  sub_1FD0CC(v23, v25);
  swift_endAccess();

  sub_ABA670();
  v26 = sub_ABA680();
  (*(*(v26 - 8) + 56))(v12, 0, 1, v26);
  VerticalLockupCollectionViewCell.artworkCornerTreatment.setter(v12);

  sub_1FE28C();
  sub_1FDEC4();

  return v24;
}

uint64_t sub_1FD0CC(char a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    if (qword_DE69B0 != -1)
    {
      swift_once();
    }

    v54 = xmmword_DF86E8;
    v55 = xmmword_DF86F8;
    v52 = xmmword_DF86C8;
    v53 = xmmword_DF86D8;
    v51 = xmmword_DF86B8;
    v47 = xmmword_DF86B8;
    v48 = xmmword_DF86C8;
    v49 = xmmword_DF86D8;
    v50 = xmmword_DF86E8;
    v5 = xmmword_DF86F8;
    sub_2F118(&v51, &v42);
    v6 = [a2 preferredContentSizeCategory];
    v7 = sub_ABA320();

    v8 = (v7 & 1) == 0;
    v9 = *v3;
    if (v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    v30 = v47;
    v31 = v48;
    v32 = v49;
    *&v33 = v50;
    *(&v33 + 1) = v10;
    v34 = v5;
    swift_beginAccess();
    v12 = v9[3];
    v11 = v9[4];
    v13 = v9[6];
    v35[3] = v9[5];
    v35[4] = v13;
    v35[1] = v12;
    v35[2] = v11;
    v35[0] = v9[2];
    v9[5] = v33;
    v9[6] = v5;
    v14 = v31;
    v9[2] = v30;
    v9[3] = v14;
    v9[4] = v32;
    sub_2F118(&v30, &v42);
    sub_2F174(v35);
    sub_2EB2A8();
    v15 = v3[1];
    if (qword_DE69B8 != -1)
    {
      swift_once();
    }

    v38 = xmmword_DF8728;
    v39 = unk_DF8738;
    v40 = xmmword_DF8748;
    v36 = xmmword_DF8708;
    v37 = unk_DF8718;
    swift_beginAccess();
    v17 = v15[3];
    v16 = v15[4];
    v18 = v15[6];
    v41[3] = v15[5];
    v41[4] = v18;
    v41[1] = v17;
    v41[2] = v16;
    v41[0] = v15[2];
    v19 = v40;
    v15[5] = v39;
    v15[6] = v19;
    v20 = v37;
    v15[2] = v36;
    v15[3] = v20;
    v15[4] = v38;
    sub_2F118(&v36, &v42);
    sub_2F174(v41);
    sub_2EB2A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_AF7C50;
    *(v21 + 32) = v9;
    *(v21 + 40) = v15;
    v42 = v47;
    v43 = v48;
    v44 = v49;
    *&v45 = v50;
    *(&v45 + 1) = v10;
    v46 = v5;

    sub_2F174(&v42);

    v3[2] = v21;
  }

  else
  {
    v23 = *v2;
    if (qword_DE69B0 != -1)
    {
      swift_once();
    }

    v44 = xmmword_DF86D8;
    v45 = xmmword_DF86E8;
    v46 = xmmword_DF86F8;
    v42 = xmmword_DF86B8;
    v43 = xmmword_DF86C8;
    swift_beginAccess();
    v25 = v23[3];
    v24 = v23[4];
    v26 = v23[6];
    v54 = v23[5];
    v55 = v26;
    v52 = v25;
    v53 = v24;
    v51 = v23[2];
    v27 = v46;
    v23[5] = v45;
    v23[6] = v27;
    v28 = v43;
    v23[2] = v42;
    v23[3] = v28;
    v23[4] = v44;
    sub_2F118(&v42, v41);
    sub_2F174(&v51);
    sub_2EB2A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_AF82B0;
    *(v29 + 32) = v23;

    v3[2] = v29;
  }

  return result;
}

void sub_1FD4B0()
{
  if (v0[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_personType] != 1)
  {
    v1 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
    swift_beginAccess();
    if (!*&v0[v1])
    {
      sub_81464();
      v2 = *&v0[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_title];
      v3 = *&v0[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_title + 8];

      v4 = v0;
      v5 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v2, v3, [v0 effectiveUserInterfaceLayoutDirection], 0);

      if (v5)
      {
        v6 = *&v0[v1];
        *&v4[v1] = v5;
        v7 = v5;

        sub_74EA4(v5);
        sub_1FD4B0();
      }
    }
  }
}

void *sub_1FD5C4()
{
  v1 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1FD614(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = a1;

  sub_74EA4(a1);
  sub_1FD4B0();
}

void (*sub_1FD6AC(uint64_t **a1))(void *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = VerticalLockupCollectionViewCell.lockupImageArtworkCatalog.modify(v3);
  return sub_1FD720;
}

void sub_1FD720(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_1FD4B0();
  }

  free(v3);
}

uint64_t sub_1FD7A8(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_title];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_title];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_title + 8];
  *v4 = a1;
  v4[1] = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_textComponents;
    swift_beginAccess();
    v10 = *&v2[v9];

    v11 = String.trim()();

    swift_beginAccess();
    v10[7] = v11;

    sub_2EB704();

    if (v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_personType] != 1)
    {
      sub_1FDEC4();
    }

    [v2 setNeedsLayout];
  }
}

uint64_t sub_1FD8FC(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_title];
  v4 = *&v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_title + 8];
  if (v5 != result || v4 != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v7 = OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_textComponents;
      swift_beginAccess();
      v8 = *&v3[v7];

      v9 = String.trim()();

      swift_beginAccess();
      v8[7] = v9;

      sub_2EB704();

      if (v3[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_personType] != 1)
      {
        sub_1FDEC4();
      }

      return [v3 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_1FDA38(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
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

uint64_t sub_1FDACC(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_subtitle];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_subtitle];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_subtitle + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = &v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_textComponents];
    swift_beginAccess();
    v10 = *(v9 + 1);

    v11 = String.trim()();

    swift_beginAccess();
    v10[7] = v11;

    sub_2EB704();

    [v2 setNeedsLayout];
  }
}

uint64_t sub_1FDC08(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_subtitle] != result || *&v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_subtitle + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = &v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_textComponents];
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

id sub_1FDD00(id result)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_personType);
  *(v1 + OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_personType) = result;
  if (v2 != result)
  {
    return sub_1FDEC4();
  }

  return result;
}

void sub_1FDD20(void *a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for PersonVerticalCell();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_9;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = sub_AB92A0();
  v8 = v7;
  if (v6 == sub_AB92A0() && v8 == v9)
  {

    return;
  }

  v11 = sub_ABB3C0();

  if ((v11 & 1) == 0)
  {
LABEL_9:
    sub_1FE28C();
  }
}

id sub_1FDEC4()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_personType] == 1)
  {
    v2 = Artwork.Placeholder.microphone.unsafeMutableAddressor();
    v3 = *v2;
    v4 = v2[1];
    v5 = v2[2];
    v6 = v2[3];
    v7 = v2[4];
    v8 = v2[5];
    v70 = v8;
    v72 = v7;
    v9 = &v0[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkPlaceholder];
    swift_beginAccess();
    v66 = *(v9 + 1);
    v68 = *v9;
    v62 = *(v9 + 3);
    v64 = *(v9 + 2);
    *v9 = v3;
    *(v9 + 1) = v4;
    *(v9 + 2) = v5;
    *(v9 + 3) = v6;
    *(v9 + 4) = v7;
    *(v9 + 5) = v8;
    v10 = v3;
    v11 = v4;
    v12 = v5;
    v13 = v6;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    v17 = v13;
    sub_2F1C8(v68, v66, v64, v62);
    v18 = *&v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
    v19 = *(v18 + 168);
    v74 = *(v18 + 152);
    v75 = v19;
    v76 = *(v18 + 184);
    *(v18 + 152) = v3;
    *(v18 + 160) = v4;
    *(v18 + 168) = v5;
    *(v18 + 176) = v6;
    *(v18 + 184) = v72;
    *(v18 + 192) = v70;
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v23 = v17;
    v24 = v20;
    v25 = v21;
    v26 = v22;
    v27 = v23;
    sub_75948(&v74);
    sub_B2A40(&v74);
  }

  else
  {
    v28 = Artwork.Placeholder.person.unsafeMutableAddressor();
    v29 = *v28;
    v30 = v28[1];
    v32 = v28[2];
    v31 = v28[3];
    v33 = v28[4];
    v34 = v28[5];
    v71 = v34;
    v73 = v33;
    v35 = &v0[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkPlaceholder];
    swift_beginAccess();
    v67 = *(v35 + 1);
    v69 = *v35;
    v63 = *(v35 + 3);
    v65 = *(v35 + 2);
    *v35 = v29;
    *(v35 + 1) = v30;
    *(v35 + 2) = v32;
    *(v35 + 3) = v31;
    *(v35 + 4) = v33;
    *(v35 + 5) = v34;
    v36 = v31;
    v37 = v29;
    v38 = v30;
    v39 = v32;
    v40 = v36;
    v41 = v37;
    v42 = v38;
    v43 = v39;
    sub_2F1C8(v69, v67, v65, v63);
    v44 = *&v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
    v45 = *(v44 + 168);
    v74 = *(v44 + 152);
    v75 = v45;
    v76 = *(v44 + 184);
    *(v44 + 152) = v29;
    *(v44 + 160) = v30;
    *(v44 + 168) = v32;
    *(v44 + 176) = v31;
    *(v44 + 184) = v73;
    *(v44 + 192) = v71;
    v46 = v40;
    v47 = v41;
    v48 = v42;
    v49 = v43;
    v50 = v46;
    v51 = v47;
    v52 = v48;
    v53 = v49;
    sub_75948(&v74);
    sub_B2A40(&v74);

    v54 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
    swift_beginAccess();
    v55 = *&v1[v54];
    v56 = v55;
    v57 = v55;
    if (!v55)
    {
      sub_81464();
      v58 = *&v1[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_title];
      v59 = *&v1[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_title + 8];

      v57 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v58, v59, [v1 effectiveUserInterfaceLayoutDirection], 0);

      v56 = *&v1[v54];
    }

    *&v1[v54] = v57;
    v24 = v57;
    v60 = v55;

    sub_74EA4(v57);
    sub_1FD4B0();
  }

  return [v1 setNeedsLayout];
}

void sub_1FE28C()
{
  v1 = v0;
  v2 = v0[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_layoutStyle];
  v3 = [v1 traitCollection];
  v4 = &v1[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_textComponents];
  swift_beginAccess();
  sub_1FD0CC(v2, v3);
  swift_endAccess();

  v5 = *(v4 + 2);
  v6 = *&v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];

  TextStackView.removeAll()();
  if (!(v5 >> 62))
  {
    v7 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_10:

    [v1 setNeedsLayout];
    return;
  }

  v7 = sub_ABB060();
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = sub_36003C(i, v5);
      }

      else
      {
        v9 = *(v5 + 8 * i + 32);
      }

      TextStackView.add(_:)(v9);
    }

    goto LABEL_10;
  }

  __break(1u);
}

double sub_1FE3FC()
{
  sub_1FE440(&v1);
  xmmword_DF86D8 = v3;
  xmmword_DF86E8 = v4;
  xmmword_DF86F8 = v5;
  result = *&v2;
  xmmword_DF86B8 = v1;
  xmmword_DF86C8 = v2;
  return result;
}

double sub_1FE440@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v3 = qword_E718D8;
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 16) = xmmword_AF82D0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  *(a1 + 56) = 2;
  result = 20.0;
  *(a1 + 64) = xmmword_AF7C40;
  return result;
}

double sub_1FE524()
{
  sub_1FE568(&v1);
  xmmword_DF8728 = v3;
  unk_DF8738 = v4;
  xmmword_DF8748 = v5;
  result = *&v2;
  xmmword_DF8708 = v1;
  unk_DF8718 = v2;
  return result;
}

double sub_1FE568@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v3 = qword_E718C8;
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 16) = xmmword_AF82D0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  *(a1 + 56) = 1;
  result = 18.0;
  *(a1 + 64) = xmmword_B03470;
  return result;
}

uint64_t sub_1FE64C()
{
}

id sub_1FE6D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersonVerticalCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PersonVerticalCell()
{
  result = qword_DF8788;
  if (!qword_DF8788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1FE88C()
{
  result = qword_DF8798;
  if (!qword_DF8798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF8798);
  }

  return result;
}

unint64_t sub_1FE8E4()
{
  result = qword_DF87A0;
  if (!qword_DF87A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF87A0);
  }

  return result;
}

void *sub_1FE980()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_badgeView);
  v2 = v1;
  return v1;
}

double sub_1FE9B0(void *a1, char a2, double a3)
{
  if (qword_DE69B0 != -1)
  {
    swift_once();
  }

  v19[2] = xmmword_DF86D8;
  v19[3] = xmmword_DF86E8;
  v19[4] = xmmword_DF86F8;
  v19[0] = xmmword_DF86B8;
  v19[1] = xmmword_DF86C8;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v6 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v19);
  sub_2F118(v19, v18);
  v7 = qword_DE69B8;

  if (v7 != -1)
  {
    swift_once();
  }

  v18[2] = xmmword_DF8728;
  v18[3] = unk_DF8738;
  v18[4] = xmmword_DF8748;
  v18[0] = xmmword_DF8708;
  v18[1] = unk_DF8718;
  swift_allocObject();
  v8 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF82B0;
  *(v9 + 32) = v6;
  v15 = v6;
  v16 = v8;
  v17 = v9;
  sub_2F118(v18, v14);
  sub_1FD0CC(a2 & 1, a1);
  v10 = sub_2F48A4(v17, a1, 0, 0);
  if (qword_DE6AC0 != -1)
  {
    swift_once();
  }

  v11 = *&xmmword_E71560;
  v12 = *&qword_E71570;

  return v10 + a3 + v11 + v12;
}

void sub_1FEC00()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_subtitle);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_layoutStyle) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_personType) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_badgeView) = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_textComponents;
  if (qword_DE69B0 != -1)
  {
    swift_once();
  }

  v11[2] = xmmword_DF86D8;
  v11[3] = xmmword_DF86E8;
  v11[4] = xmmword_DF86F8;
  v11[0] = xmmword_DF86B8;
  v11[1] = xmmword_DF86C8;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v11);
  sub_2F118(v11, v10);
  v6 = qword_DE69B8;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = (v1 + v4);
  v10[2] = xmmword_DF8728;
  v10[3] = unk_DF8738;
  v10[4] = xmmword_DF8748;
  v10[0] = xmmword_DF8708;
  v10[1] = unk_DF8718;
  swift_allocObject();
  v8 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF82B0;
  *(v9 + 32) = v5;
  *v7 = v5;
  v7[1] = v8;
  v7[2] = v9;
  sub_ABAFD0();
  __break(1u);
}

void sub_1FF124(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13.receiver = v2;
  v13.super_class = type metadata accessor for JSSearchLandingModelRequest();
  objc_msgSendSuper2(&v13, "copyWithZone:", a1);
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_808B0(a2, v12);
  if (swift_dynamicCast())
  {
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSSearchLandingModelRequest_sectionViewModel];
    v6 = *&v11[OBJC_IVAR____TtC16MusicApplication27JSSearchLandingModelRequest_sectionViewModel];
    *&v11[OBJC_IVAR____TtC16MusicApplication27JSSearchLandingModelRequest_sectionViewModel] = v5;
    v7 = v5;

    v8 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSSearchLandingModelRequest_previousResponse];
    v9 = *&v11[OBJC_IVAR____TtC16MusicApplication27JSSearchLandingModelRequest_previousResponse];
    *&v11[OBJC_IVAR____TtC16MusicApplication27JSSearchLandingModelRequest_previousResponse] = v8;
    v10 = v8;
  }
}

uint64_t sub_1FF264(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
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
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_200330, v12);
}

uint64_t sub_1FF334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
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

void sub_1FF610(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC16MusicApplication31JSSearchLandingRequestOperation_request];
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSSearchLandingModelRequest_sectionViewModel);
  if (v2)
  {
    v3 = v2;
    v4 = [v1 itemProperties];
    if (v4)
    {
      v5 = v4;
      v6 = [v1 itemKind];
      if (!v6 || (v7 = v6, [v6 modelClass], v7, swift_getObjCClassMetadata(), (v8 = objc_msgSend(swift_getObjCClassFromMetadata(), "requiredStoreLibraryPersonalizationProperties")) == 0))
      {
        v8 = [objc_opt_self() emptyPropertySet];
      }

      v9 = [v5 propertySetByCombiningWithPropertySet:v8];

      v10 = objc_allocWithZone(type metadata accessor for JSModelSearchLandingItemBuilder());
      v11 = sub_21C954(v9);
    }

    else
    {
      v11 = 0;
    }

    v12 = [objc_allocWithZone(MPMutableSectionedCollection) init];
    v13 = sub_AB9260();
    v34 = v12;
    [v12 appendSection:v13];

    v14 = [objc_allocWithZone(MPMutableSectionedCollection) init];
    v15 = sub_AB9260();
    v33 = v14;
    [v14 appendSection:v15];

    v16 = JSSearchLandingViewModel.items.getter();
    v17 = v16;
    if (v16 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
    {
      v31 = v1;
      v32 = v3;
      v1 = 0;
      v3 = &selRef__authenticateReturningError_;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v22 = sub_3612B8(v1, v17);
        }

        else
        {
          if (v1 >= *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_23;
          }

          v22 = *(v17 + 8 * v1 + 32);
        }

        v23 = v22;
        v24 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v11)
        {
          v25 = [a1 userIdentity];
          if (!v25)
          {
            __break(1u);
LABEL_21:

            v1 = v31;
            v3 = v32;
            goto LABEL_26;
          }

          v19 = v25;
          v20 = sub_21BE38(v23, v25);

          [v33 appendItem:v23];
          v21 = v20;
          [v34 appendItem:v21];
        }

        ++v1;
        if (v24 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_26:
    v26 = [objc_allocWithZone(MPStoreLibraryPersonalizationRequest) initWithUnpersonalizedRequest:v1 unpersonalizedContentDescriptors:v34];
    [v26 setRepresentedObjects:v33];
    v27 = swift_allocObject();
    *(v27 + 16) = v1;
    *(v27 + 24) = a1;
    aBlock[4] = sub_200244;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_151E0;
    aBlock[3] = &block_descriptor_30_1;
    v28 = _Block_copy(aBlock);
    v29 = v1;
    v30 = a1;

    [v26 performWithResponseHandler:v28];
    _Block_release(v28);
  }

  else
  {
    __break(1u);
  }
}

void sub_1FFA24(void *a1, uint64_t a2, void *a3, char *a4)
{
  if (a1 && (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) != 0))
  {
    v8 = v7;
    objc_allocWithZone(type metadata accessor for JSSearchLandingModelResponse());
    v9 = a1;
    v13 = sub_1FFC80(a3, v8);
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplication31JSSearchLandingRequestOperation_responseHandler];
    v11 = v13;
    v12 = v13;
  }

  else
  {
    v12 = 0;
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplication31JSSearchLandingRequestOperation_responseHandler];
  }

  v14 = v12;
  v10();

  [a4 finish];
}

char *sub_1FFC80(char *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC16MusicApplication28JSSearchLandingModelResponse_itemsDidChangeNotificationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication28JSSearchLandingModelResponse_personalizationResponseInvalidationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication28JSSearchLandingModelResponse_personalizationResponse] = a2;
  v4 = a2;
  v5 = [v4 representedObjectResults];
  if (!v5)
  {
    v5 = [objc_allocWithZone(MPSectionedCollection) init];
  }

  *&v2[OBJC_IVAR____TtC16MusicApplication28JSSearchLandingModelResponse_jsResults] = v5;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for JSSearchLandingModelResponse();
  result = objc_msgSendSuper2(&v22, "initWithRequest:", a1);
  if (result)
  {
    v7 = result;
    v8 = v4;
    v9 = v7;
    v10 = [v8 results];
    [v9 setResults:v10];

    v21 = a1;
    v11 = *&a1[OBJC_IVAR____TtC16MusicApplication27JSSearchLandingModelRequest_sectionViewModel];
    v12 = v11;
    v13 = *JSSearchLandingViewModel.itemsDidChangeNotification.unsafeMutableAddressor();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v15 = v9;
    v16 = v12;
    *&v15[OBJC_IVAR____TtC16MusicApplication28JSSearchLandingModelResponse_itemsDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v13, v11, 1, 1, sub_AAF10, v14);

    v17 = MPModelResponseDidInvalidateNotification;
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = v8;
    v20 = v17;

    swift_allocObject();
    *&v15[OBJC_IVAR____TtC16MusicApplication28JSSearchLandingModelResponse_personalizationResponseInvalidationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v20, v8, 1, 1, sub_AADB4, v18);

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

id sub_2000AC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_200174()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t block_copy_helper_68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2001C4()
{

  return swift_deallocObject();
}

uint64_t sub_200204()
{

  return swift_deallocObject();
}

uint64_t sub_20024C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_200284()
{

  return swift_deallocObject();
}

uint64_t sub_2002D8()
{

  return swift_deallocObject();
}

uint64_t sub_200340()
{

  return swift_deallocObject();
}

uint64_t sub_200394(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkCornerTreatment;
  swift_beginAccess();
  sub_8A01C(a1, v1 + v9);
  swift_endAccess();
  v10 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent);
  sub_15F84(v1 + v9, v8, &unk_DFFBC0);
  v11 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_15F84(v10 + v11, v6, &unk_DFFBC0);
  swift_beginAccess();
  sub_8A01C(v8, v10 + v11);
  swift_endAccess();
  sub_75AE8(v6);
  sub_12E1C(a1, &unk_DFFBC0);
  sub_12E1C(v6, &unk_DFFBC0);
  return sub_12E1C(v8, &unk_DFFBC0);
}

void sub_200534(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = a1;
  v4 = a1;

  sub_74EA4(a1);
}

void sub_200598(char a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite;
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite);
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite) = a1;
  if (v3 != (a1 & 1))
  {
    sub_201644();
    v4 = sub_200954();
    [v4 setHidden:(*(v1 + v2) & 1) == 0];
  }
}

char *sub_200620(char a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled;
  v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled] = a1;
  if (v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView] == 1)
  {
    v3 = a1 & 1;
    v4 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
    v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
    swift_beginAccess();
    v4[v5] = v3;
    v21 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
    v22 = v4;
    if (v4[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] != v3)
    {
      v4[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] = v3;
      v6 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
      swift_beginAccess();
      v7 = *&v4[v6];
      if (v7 >> 62)
      {
        result = sub_ABB060();
        if (!result)
        {
          goto LABEL_20;
        }
      }

      else
      {
        result = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
        if (!result)
        {
          goto LABEL_20;
        }
      }

      v20 = v2;
      v9 = result - 1;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v19 = v4;

      v10 = 0;
      if ((v7 & 0xC000000000000001) == 0)
      {
        goto LABEL_15;
      }

LABEL_7:
      v11 = *(sub_36003C(v10, v7) + 256);
      if (v11)
      {
LABEL_8:
        v12 = v11;
        if (([v12 isHidden] & 1) == 0)
        {
          v13 = v22[v21];
          v14 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
          swift_beginAccess();
          v15 = v12[v14];
          v12[v14] = v13;
          if (v13 != v15)
          {
            v16 = 1.0;
            if (v13)
            {
              UIInterfaceGetContentDisabledAlpha();
            }

            [v12 setAlpha:v16];
          }
        }

        if (v9 != v10)
        {
          goto LABEL_17;
        }
      }

      else
      {
        while (1)
        {

          if (v9 == v10)
          {
            break;
          }

LABEL_17:
          ++v10;
          if ((v7 & 0xC000000000000001) != 0)
          {
            goto LABEL_7;
          }

LABEL_15:
          v17 = *(v7 + 8 * v10 + 32);

          v11 = *(v17 + 256);
          if (v11)
          {
            goto LABEL_8;
          }
        }
      }

      v2 = v20;
    }
  }

LABEL_20:
  if (v1[v2])
  {
    v18 = 0;
  }

  else
  {
    v18 = 3;
  }

  return [v1 setSelectionStyle:v18];
}

id sub_2008A4(id result)
{
  v2 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_showsContextMenu;
  v3 = v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_showsContextMenu];
  v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_showsContextMenu] = result;
  if (v3 != (result & 1))
  {
    v4 = sub_200934();
    [v4 setHidden:(v1[v2] & 1) == 0];

    return [v1 setNeedsLayout];
  }

  return result;
}

id sub_200974(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t sub_2009DC(void *a1, char a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserver;
    v6 = *(v2 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserver);
    if (v6)
    {
      v7 = a1;
      v8 = v6;
    }

    else
    {
      type metadata accessor for LibraryAddKeepLocalStatusObserver();
      swift_allocObject();
      v12 = a1;
      v8 = sub_259C34();
      *(v3 + v5) = v8;
      swift_retain_n();
    }

    v13 = *(v3 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserverBehaviorType);
    swift_retain_n();
    sub_259B30(v13);
    *(v8 + 4) = UIScreen.Dimensions.size.getter;
    *(v8 + 5) = 0;

    v14 = *(v3 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_forceKeepLocalDownloadVisiblity);
    v15 = v8[48];
    v8[48] = v14;
    if (v14 != v15)
    {
      sub_13C80(0, &qword_DE8ED0);

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_206F5C, v8);
    }

    v16 = swift_allocObject();
    *(v16 + 16) = 1;
    v17 = *(v3 + v5);
    if (v17 && (v18 = *(v17 + 72)) != 0)
    {
      sub_13C80(0, &qword_DEDE20);
      v19 = a1;
      v20 = v18;
      v21 = sub_ABA790();

      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v22 = a1;
    }

    *(v16 + 16) = 0;
    v19 = *(v8 + 9);
    *(v8 + 9) = a1;
    v23 = a1;
    sub_25A2AC(v19);

LABEL_15:
    v24 = *(v8 + 104);
    if ([objc_opt_self() areAnimationsEnabled])
    {
      v25 = *(v16 + 16);
    }

    else
    {
      v25 = 0;
    }

    sub_2019A4(v29, v25);

    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = v16;
    *(v8 + 4) = sub_206F74;
    *(v8 + 5) = v27;
  }

  v10 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserver;
  v11 = *(v3 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserver);
  if (v11)
  {
    *(v11 + 32) = UIScreen.Dimensions.size.getter;
    *(v11 + 40) = 0;
  }

  *(v3 + v10) = 0;

  memset(v29, 0, 32);
  v29[2] = xmmword_B03DA0;
  return sub_2019A4(v29, a2 & 1);
}

uint64_t sub_200D68(uint64_t a1)
{
  sub_2069BC(a1);
}

void (*sub_200DA0(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_200E28;
}

void sub_200E28(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView);
    v6 = *(v4 + v3[4]);
    v7 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v8 = *&v5[v7];
    *&v5[v7] = v6;
    swift_retain_n();
    v9 = v5;
    sub_2E6210(v8);
  }

  free(v3);
}

void sub_200EEC(uint64_t a1, char a2, CGRect *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  [v10 effectiveUserInterfaceLayoutDirection];
  v15 = *(a1 + 16);
  if (v15)
  {
    v80 = a6;
    v16 = 0;
    v17 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton;
    v81 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton;
    v82 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl;
    v18 = (a1 + 32);
    v19 = 0.0;
    while (1)
    {
      v37 = *v18++;
      v36 = v37;
      if (v37)
      {
        if (v36 == &dword_0 + 1)
        {
          if ((*(v10 + v17) & 1) == 0)
          {
            goto LABEL_8;
          }

          v41 = *(v10 + v81);
          if (!v41)
          {
            goto LABEL_8;
          }

          v88 = v19;
          if ((v16 & 1) == 0)
          {
            a3->size.width = a3->size.width - a5;
          }

          v42 = v41;
          [v42 sizeThatFits:{a9, a10}];
          v94.size.width = v43;
          v45 = v44;
          v94.origin.x = 0.0;
          v94.origin.y = 0.0;
          v94.size.height = v45;
          Width = CGRectGetWidth(v94);
          if (Width > 0.0)
          {
            v47 = Width;
          }

          else
          {
            v47 = 0.0;
          }
        }

        else
        {
          if (v36 != &dword_0 + 2)
          {
            v63 = v36;
            v64 = v63;
            if (a2 & 1) == 0 && ([v63 isHidden])
            {
              sub_7FCC4(v36);
              goto LABEL_8;
            }

            if ((v16 & 1) == 0)
            {
              a3->size.width = a3->size.width - a5;
            }

            v20 = v64;
            [v20 sizeThatFits:{a9, a10}];
            v89.size.width = v21;
            v23 = v22;
            v89.origin.x = 0.0;
            v89.origin.y = 0.0;
            v89.size.height = v23;
            v24 = CGRectGetWidth(v89);
            if (v24 > 0.0)
            {
              v25 = v24;
            }

            else
            {
              v25 = 0.0;
            }

            v90 = *a3;
            v84 = v90.size.width;
            CGRectGetMaxX(*a3);
            v91.origin.x = 0.0;
            v91.origin.y = 0.0;
            v91.size.width = v25;
            v91.size.height = v23;
            CGRectGetWidth(v91);
            v26 = [v10 traitCollection];
            [v26 displayScale];

            v77 = v23;
            sub_ABA470();
            v28 = v27;
            v30 = v29;
            v32 = v31;
            v34 = v33;
            sub_ABA490();
            [v20 setFrame:*&v77];
            v92.origin.x = v28;
            v92.origin.y = v30;
            v92.size.width = v32;
            v92.size.height = v34;
            v19 = v19 + CGRectGetWidth(v92) + a4;
            v93.origin.x = v28;
            v93.origin.y = v30;
            v93.size.width = v32;
            v93.size.height = v34;
            v35 = CGRectGetWidth(v93);
            sub_7FCC4(v36);
            sub_7FCC4(v36);
            goto LABEL_7;
          }

          v38 = *(v10 + v82);
          if (!v38)
          {
            goto LABEL_8;
          }

          v39 = v38;
          v40 = v39;
          if (a2 & 1) == 0 && ([v39 isHidden])
          {

            goto LABEL_8;
          }

          v88 = v19;
          if ((v16 & 1) == 0)
          {
            a3->size.width = a3->size.width - a5;
          }

          v42 = v40;
          [v42 sizeThatFits:{a9, a10}];
          v100.size.width = v65;
          v45 = v66;
          v100.origin.x = 0.0;
          v100.origin.y = 0.0;
          v100.size.height = v45;
          v67 = CGRectGetWidth(v100);
          if (v67 > 0.0)
          {
            v47 = v67;
          }

          else
          {
            v47 = 0.0;
          }
        }

        v101 = *a3;
        v84 = v101.size.width;
        CGRectGetMaxX(*a3);
        v102.origin.x = 0.0;
        v102.origin.y = 0.0;
        v102.size.width = v47;
        v102.size.height = v45;
        CGRectGetWidth(v102);
        v68 = [v10 traitCollection];
        [v68 displayScale];

        v79 = v45;
        sub_ABA470();
        v70 = v69;
        v72 = v71;
        v74 = v73;
        v76 = v75;
        sub_ABA490();
        [v42 setFrame:*&v79];
        v103.origin.x = v70;
        v103.origin.y = v72;
        v103.size.width = v74;
        v103.size.height = v76;
        v19 = v88 + CGRectGetWidth(v103) + a4;
        v104.origin.x = v70;
        v104.origin.y = v72;
        v104.size.width = v74;
        v104.size.height = v76;
        v35 = CGRectGetWidth(v104);
      }

      else
      {
        if (((*(&stru_2E8.reloff + (swift_isaMask & *v10)))() & 1) == 0)
        {
          goto LABEL_8;
        }

        v48 = sub_200934();
        if ((v16 & 1) == 0)
        {
          a3->size.width = a3->size.width - a5;
        }

        v42 = v48;
        [v42 sizeThatFits:{a9, a10}];
        v95.size.width = v49;
        v51 = v50;
        v95.origin.x = 0.0;
        v95.origin.y = 0.0;
        v95.size.height = v51;
        v52 = CGRectGetWidth(v95);
        if (v52 > 0.0)
        {
          v53 = v52;
        }

        else
        {
          v53 = 0.0;
        }

        v96 = *a3;
        v84 = v96.size.width;
        CGRectGetMaxX(*a3);
        v97.origin.x = 0.0;
        v97.origin.y = 0.0;
        v97.size.width = v53;
        v97.size.height = v51;
        CGRectGetWidth(v97);
        v54 = [v10 traitCollection];
        [v54 displayScale];

        v78 = v51;
        sub_ABA470();
        v56 = v55;
        v58 = v57;
        v60 = v59;
        v62 = v61;
        sub_ABA490();
        [v42 setFrame:*&v78];
        v98.origin.x = v56;
        v98.origin.y = v58;
        v98.size.width = v60;
        v98.size.height = v62;
        v19 = v19 + CGRectGetWidth(v98) + a4;
        v99.origin.x = v56;
        v99.origin.y = v58;
        v99.size.width = v60;
        v99.size.height = v62;
        v35 = CGRectGetWidth(v99);
      }

LABEL_7:
      a3->size.width = v84 - v35;
      v16 = 1;
LABEL_8:
      if (!--v15)
      {
        if (v19 > 0.0)
        {
          a3->size.width = a3->size.width - v80;
        }

        return;
      }
    }
  }
}

void sub_201644()
{
  if ((*&stru_248.sectname[swift_isaMask & *v0])())
  {
    v1 = sub_200954();
    v2 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleLargeTitle];
    [v2 scaledValueForValue:8.0];
    v4 = v3;

    v5 = [objc_opt_self() configurationWithPointSize:7 weight:v4];
    [v1 setPreferredSymbolConfiguration:v5];

    v6 = [v0 contentView];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [v0 music_inheritedLayoutInsets];
    v17 = UIEdgeInsetsInsetRect(v8, v10, v12, v14, v15, v16);
    v19 = v18;
    v20 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell____lazy_storage___favoriteIndicator;
    [*(v0 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell____lazy_storage___favoriteIndicator) sizeThatFits:{0.0, 0.0}];
    v22 = v21;
    v24 = v23;
    v25 = [v0 traitCollection];
    v26 = [v25 preferredContentSizeCategory];

    sub_ABA320();
    v30.origin.x = v17;
    v30.origin.y = v19;
    v30.size.width = v22;
    v30.size.height = v24;
    CGRectGetWidth(v30);
    [*(*(v0 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent) + 112) frame];
    v27 = [v0 traitCollection];
    [v27 displayScale];

    sub_ABA470();
    v28 = *(v0 + v20);
    [v0 effectiveUserInterfaceLayoutDirection];
    sub_ABA490();
    [v28 setFrame:?];
  }
}

uint64_t sub_2019A4(double *a1, int a2)
{
  v3 = v2;
  v79 = a2;
  v6 = *a1;
  v5 = *(a1 + 1);
  v7 = a1[2];
  v8 = a1[3];
  v9 = *(a1 + 4);
  v10 = *(a1 + 5);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAAB0);
  __chkstk_darwin(v11 - 8);
  v13 = &v75 - v12;
  v14 = type metadata accessor for SymbolButton.Configuration(0);
  v15 = __chkstk_darwin(v14);
  result = __chkstk_darwin(v15);
  v20 = &v75 - v19;
  v21 = (v3 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalCompositeStatus);
  v22 = *(v3 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalCompositeStatus + 32);
  if ((v22 & 0xFE) == 0xF8)
  {
    if ((v9 & 0xFE) == 0xF8)
    {
      return result;
    }

    LOBYTE(v23) = v9;
    goto LABEL_18;
  }

  v24 = v21[3];
  v25 = *(v3 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalCompositeStatus + 32);
  if ((v9 & 0xFE) == 0xF8)
  {
    v8 = 0.0;
    v23 = 122;
    goto LABEL_17;
  }

  v23 = v9;
  if (*v21 == *&v6)
  {
    v26 = *(v21 + 1);
    v27 = v9 & 0xFFFFFFFE;
    if ((v22 & 0xFE) == 0x7A)
    {
      if (v27 != 122)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v27 == 122)
      {
        goto LABEL_17;
      }

      v72 = v25 >> 1;
      if (v25 >> 1 <= 0x7C)
      {
        if (v72 == 62)
        {
          if (v27 != 124)
          {
            goto LABEL_17;
          }

          goto LABEL_9;
        }

        if (v72 == 63)
        {
          if (v27 != 126)
          {
            goto LABEL_17;
          }

          goto LABEL_9;
        }
      }

      else
      {
        switch(v72)
        {
          case '}':
            if (v27 != -6)
            {
              goto LABEL_17;
            }

            goto LABEL_9;
          case '~':
            if (v27 != -4)
            {
              goto LABEL_17;
            }

            goto LABEL_9;
          case '\x7F':
            if (v9 < 0xFFFFFFFE)
            {
              goto LABEL_17;
            }

            goto LABEL_9;
        }
      }

      v74 = v9 >> 1;
      if ((v74 - 125) < 3 || (v74 - 62) < 2)
      {
        goto LABEL_17;
      }

      if ((v22 & 0x80) != 0)
      {
        if ((v9 & 0x80000000) == 0 || *&v24 != *&v8)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v9 < 0)
        {
          goto LABEL_17;
        }

        if (v22)
        {
          if ((v9 & (v26 == v5)) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_10;
        }

        if ((v9 & 1) != 0 || v24 != v8)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_9:
    if (v26 != v5)
    {
      goto LABEL_17;
    }

LABEL_10:
    if (vabdd_f64(v21[2], v7) <= 0.00000011920929 && *(v21 + 5) == v10)
    {
      return result;
    }
  }

LABEL_17:
  if ((v22 & 0xFE) == 0x7A)
  {
LABEL_18:
    if ((v23 & 0xFE) == 0x7A)
    {
      return result;
    }

    goto LABEL_21;
  }

  v29 = v23 & 0xFFFFFFFE;
  if ((v23 & 0xFFFFFFFE) == 0x7A)
  {
    goto LABEL_21;
  }

  v48 = v25 >> 1;
  if (v25 >> 1 <= 0x7C)
  {
    if (v48 == 62)
    {
      if (v29 != 124)
      {
        goto LABEL_21;
      }

      return result;
    }

    if (v48 == 63)
    {
      if (v29 != 126)
      {
        goto LABEL_21;
      }

      return result;
    }
  }

  else
  {
    switch(v48)
    {
      case '}':
        if (v29 != -6)
        {
          goto LABEL_21;
        }

        return result;
      case '~':
        if (v29 != -4)
        {
          goto LABEL_21;
        }

        return result;
      case '\x7F':
        if (v23 > 0xFFFFFFFD)
        {
          return result;
        }

LABEL_21:
        v30 = *(a1 + 1);
        *v21 = *a1;
        *(v21 + 1) = v30;
        *(v21 + 2) = *(a1 + 2);
        v31 = *(v3 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserver);
        if (!v31)
        {
          return result;
        }

        v77 = v18;
        if ((v9 & 0xFE) == 0xF8)
        {
          v32 = 122;
        }

        else
        {
          v32 = v9;
        }

        v78 = v32;
        v33 = *(&stru_3D8.size + (swift_isaMask & *v3));
        v34 = result;
        v35 = v17;

        v33(v36);
        v37 = (*(v35 + 56))(v13, 0, 1, v34);
        v38 = v31;
        v39 = v20;
        v40 = (*&stru_3D8.segname[(swift_isaMask & *v3) + 16])(v37);
        sub_25A964(v13, v40 & 1, v39);
        sub_12E1C(v13, &unk_DFAAB0);
        v41 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl;
        v42 = *(v3 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl);
        if (v42)
        {
          v77 = v31;
          v43 = v40;
          v44 = v42;
          if (v79)
          {
            v45 = SymbolButton.Animation.eased.unsafeMutableAddressor();
            v46 = v45[1];
            v76 = *v45;
            v47 = v45[2];
          }

          else
          {
            v76 = 0;
            v46 = 0;
            v47 = 0;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF8A60);
          v58 = swift_allocObject();
          *(v58 + 16) = xmmword_AF4EC0;
          v59 = swift_allocObject();
          *(v59 + 16) = v3;
          *(v58 + 32) = sub_206F10;
          *(v58 + 40) = v59;
          *(v58 + 48) = xmmword_B03DB0;
          *(v58 + 64) = 0;
          *(v58 + 72) = 0;
          v60 = *&stru_1F8.segname[(swift_isaMask & *v44) + 8];
          v61 = v3;
          v60(v39, v76, v46, v47, (v79 & 1) == 0, v58);

          v40 = v43;
        }

        else
        {
          v49 = v77;
          sub_BD494(v39, v77);
          v50 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v51 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
          v52 = SymbolButton.init(configuration:handler:)(v49, sub_206EC4, v50);
          v53 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v54 = swift_allocObject();
          *(v54 + 16) = v53;
          *(v54 + 24) = v38;

          v55 = SymbolButton.withProvider(_:)(sub_206ED0, v54);

          v56 = *(v3 + v41);
          *(v3 + v41) = v55;
          v57 = v55;
          sub_203880(v56);
        }

        v62 = v78 & 0xFFFFFFFE;
        if (v40)
        {
          if (v62 != 122 && (v63 = v78 >> 1, (v63 - 62) >= 2) && (v63 - 126) >= 2 && (v63 == 125 || v78 < 0))
          {
            v64 = 1;
            v65 = *(v3 + v41);
            if (!v65)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v64 = 0;
            v65 = *(v3 + v41);
            if (!v65)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          v64 = v62 != 122;
          v65 = *(v3 + v41);
          if (!v65)
          {
LABEL_49:
            sub_20221C();

            return sub_BD4F8(v39);
          }
        }

        v66 = *(&stru_158.offset + (swift_isaMask & *v65));
        v67 = v65;
        v66(v64);

        v68 = *(v3 + v41);
        if (v68)
        {
          v69 = *&stru_158.sectname[swift_isaMask & *v68];
          v70 = v68;
          v69(v64);

          v71 = *(v3 + v41);
          if (v71)
          {
            [v71 setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
          }
        }

        goto LABEL_49;
    }
  }

  v73 = v23 >> 1;
  if ((v73 - 125) < 3 || (v73 - 62) < 2)
  {
    goto LABEL_21;
  }

  if ((v22 & 0x80) != 0)
  {
    if ((v23 & 0x80000000) == 0 || *&v24 != *&v8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((v23 & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    if (v22)
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if ((v23 & 1) != 0 || v24 != v8)
    {
      goto LABEL_21;
    }
  }

  return result;
}

id sub_20221C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalCompositeStatus + 32];
  if ((v2 & 0xFE) == 0xF8)
  {
    LOBYTE(v2) = 122;
  }

  v3 = v2;
  v4 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl;
  v5 = *&v0[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl];
  if (v5)
  {
    v6 = [v5 isHidden];
  }

  else
  {
    v6 = 2;
  }

  v7 = (*&stru_3D8.segname[(swift_isaMask & *v0) + 16])();
  v8 = v3 & 0xFFFFFFFE;
  if ((v7 & 1) == 0)
  {
    if (v8 != 122)
    {
      v10 = [v0 isEditing];
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (v8 == 122)
  {
LABEL_19:
    v11 = 0;
    v10 = &dword_0 + 1;
    goto LABEL_20;
  }

  v9 = v3 >> 1;
  v10 = &dword_0 + 1;
  if ((v9 - 126) >= 2 && v9 != 63)
  {
    v10 = [v1 isEditing];
  }

  v11 = 0;
  if ((v9 - 62) < 2 || (v9 - 126) < 2)
  {
LABEL_20:
    v12 = *&v1[v4];
    if (!v12)
    {
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  if (v9 != 125 && (v3 & 0x80000000) == 0)
  {
    v11 = 0;
    v12 = *&v1[v4];
    if (!v12)
    {
      goto LABEL_29;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = [v1 isEditing] ^ 1;
  v12 = *&v1[v4];
  if (!v12)
  {
    goto LABEL_29;
  }

LABEL_23:
  [v12 setHidden:v10];
  v13 = *&v1[v4];
  if (v13)
  {
    v14 = *(&stru_1F8.flags + (swift_isaMask & *v13));
    v15 = v13;
    v14(v11, 0);

    v16 = *&v1[v4];
    if (v16)
    {
      result = [v16 isHidden];
      if (v6 == 2)
      {
        goto LABEL_30;
      }

LABEL_26:
      if (result != 2 && ((v6 ^ result) & 1) == 0)
      {
        return result;
      }

      goto LABEL_31;
    }
  }

LABEL_29:
  result = &dword_0 + 2;
  if (v6 != 2)
  {
    goto LABEL_26;
  }

LABEL_30:
  if (result == 2)
  {
    return result;
  }

LABEL_31:

  return [v1 setNeedsLayout];
}

void sub_20247C(void *a1)
{
  [v1 frame];
  v4 = v3;
  [a1 bounds];
  if (v4 < CGRectGetWidth(v32))
  {
    v5 = sub_200934();
    [a1 contentOffset];
    v7 = v6;
    v9 = v8;
    [a1 frame];
    v11 = v10;
    v13 = v12;
    v14 = v5;
    [v14 frame];
    [v1 convertRect:a1 toCoordinateSpace:?];
    x = v33.origin.x;
    y = v33.origin.y;
    width = v33.size.width;
    height = v33.size.height;
    v37.origin.x = v7;
    v37.origin.y = v9;
    v37.size.width = v11;
    v37.size.height = v13;
    v34 = CGRectIntersection(v33, v37);
    v19 = v34.origin.x;
    v20 = v34.origin.y;
    v21 = v34.size.width;
    v22 = v34.size.height;
    if ([v1 effectiveUserInterfaceLayoutDirection] == &dword_0 + 1)
    {
      v35.origin.x = x;
      v35.origin.y = y;
      v35.size.width = width;
      v35.size.height = height;
      MaxX = CGRectGetMaxX(v35);
      v36.origin.x = v19;
      v36.origin.y = v20;
      v36.size.width = v21;
      v36.size.height = v22;
      v24 = MaxX - CGRectGetMaxX(v36);
    }

    else
    {
      v24 = v19 - x;
    }

    [v14 frame];
    v26 = v25;

    v27 = objc_opt_self();
    v28 = swift_allocObject();
    *(v28 + 16) = v26 * 0.05 < v24;
    *(v28 + 24) = v14;
    v31[4] = sub_206E88;
    v31[5] = v28;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 1107296256;
    v31[2] = sub_1B5EB4;
    v31[3] = &block_descriptor_69;
    v29 = _Block_copy(v31);
    v30 = v14;

    [v27 animateWithDuration:0 delay:v29 options:0 animations:0.333 completion:0.0];

    _Block_release(v29);
  }
}

char *sub_2026F0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v55 - v14;
  v16 = &v4[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets];
  *v16 = xmmword_AFB140;
  v16[1] = xmmword_B03DC0;
  *&v4[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize] = vdupq_n_s64(0x4044000000000000uLL);
  v17 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkCornerTreatment;
  v18 = UIView.Corner.small.unsafeMutableAddressor();
  v19 = sub_ABA680();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v5[v17], v18, v19);
  (*(v20 + 56))(&v5[v17], 0, 1, v19);
  v21 = &v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  *v21 = 0u;
  v21[1] = 0u;
  v21[2] = 0u;
  *&v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkExplicitBackgroundColor] = 0;
  v22 = &v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkAccessoryStyle];
  *(v22 + 1) = 0;
  *(v22 + 2) = 0;
  *v22 = 0;
  v22[24] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView] = 1;
  sub_AB4ED0();
  v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_allowsCustomBottomSeparator] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_allowsCustomTopSeparator] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = 0;
  v23 = &v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment];
  *v23 = 0;
  v23[8] = 2;
  v24 = &v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_layoutInvalidationHandler];
  *v24 = 0;
  v24[1] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_showsContextMenu] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell____lazy_storage___contextMenuButton] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell____lazy_storage___favoriteIndicator] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsCustomHandlingOfSeparatorInset] = 0;
  v25 = &v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_proposedHorizontalLockupSeparatorInset];
  v26 = *&UIEdgeInsetsZero.bottom;
  *v25 = *&UIEdgeInsetsZero.top;
  v25[1] = v26;
  v27 = &v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalCompositeStatus];
  *v27 = 0u;
  v27[1] = 0u;
  v27[2] = xmmword_B03DA0;
  *&v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusControllableDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isMediaPickerAddButtonSelected] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkCachingReference] = 0;
  v28 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v29 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v30 = sub_80104(v29);

  *&v5[v28] = v30;
  v31 = &v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_imageDidChangeHandler];
  *v31 = 0;
  v31[1] = 0;
  v32 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView;
  type metadata accessor for TextStackView();
  *&v5[v32] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customTopSeparatorView] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customBottomSeparatorView] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_rowPosition] = 1;
  *&v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserver] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserverBehaviorType] = 1;
  v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_forceKeepLocalDownloadVisiblity] = 0;
  v33 = type metadata accessor for HorizontalLockupCollectionViewCell();
  v56.receiver = v5;
  v56.super_class = v33;
  v34 = objc_msgSendSuper2(&v56, "initWithFrame:", a1, a2, a3, a4);
  v35 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent;
  v36 = v34;

  v37 = UIView.Border.artwork.unsafeMutableAddressor();
  v38 = *v37;
  v39 = *(v37 + 8);
  v40 = v37[2];
  v41 = v40;
  sub_75E64(v38, v39, v40);

  v42 = *&v34[v35];
  v43 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkCornerTreatment;
  swift_beginAccess();
  sub_15F84(&v36[v43], v15, &unk_DFFBC0);
  v44 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_15F84(v42 + v44, v13, &unk_DFFBC0);
  swift_beginAccess();

  sub_8A01C(v15, v42 + v44);
  swift_endAccess();
  sub_75AE8(v13);
  sub_12E1C(v13, &unk_DFFBC0);
  sub_12E1C(v15, &unk_DFFBC0);

  v45 = *&v34[v35];
  *(v45 + 24) = 0x70756B636F6CLL;
  *(v45 + 32) = 0xE600000000000000;

  v46 = *&v34[v35];
  v47 = *(v46 + 80);
  v48 = *(v46 + 88);
  *(v46 + 80) = *&v36[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize];

  sub_75614(v47, v48);

  v49 = *&v34[v35];
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = (v49 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v52 = *(v49 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  *v51 = sub_206E48;
  v51[1] = v50;

  sub_17654(v52);

  v53 = [v36 contentView];

  [v53 addSubview:*(*&v34[v35] + 112)];
  [v53 addSubview:*&v36[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView]];

  return v36;
}

void sub_202D60()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setNeedsLayout];
    v2 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_layoutInvalidationHandler];
    if (v2)
    {

      v2(v1);
      sub_17654(v2);
    }
  }
}

void sub_202E20(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFC300);
  __chkstk_darwin(v4 - 8);
  v6 = &v43 - v5;
  v7 = sub_AB4F50();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v48 = &v43 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v43 - v15;
  __chkstk_darwin(v14);
  v18 = &v43 - v17;
  isa = sub_AB4DF0().super.super.isa;
  v20 = type metadata accessor for HorizontalLockupCollectionViewCell();
  v50.receiver = v2;
  v50.super_class = v20;
  objc_msgSendSuper2(&v50, "_bridgedUpdateConfigurationUsingState:", isa);

  v21 = [v2 tableViewCell];
  if (!v21)
  {
    __break(1u);
    goto LABEL_11;
  }

  v22 = v21;
  v44 = v11;
  v46 = v6;
  [v21 setBackgroundColor:0];

  v23 = [v2 tableViewCell];
  if (!v23)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v24 = v23;
  [v23 setSelectedBackgroundView:0];

  v25 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_defaultBackgroundConfiguration;
  swift_beginAccess();
  v26 = *(v8 + 16);
  v26(v16, &v2[v25], v7);
  v27 = sub_AB4E30();
  v49[3] = v27;
  v49[4] = &protocol witness table for UICellConfigurationState;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v49);
  (*(*(v27 - 8) + 16))(boxed_opaque_existential_0, a1, v27);
  sub_AB4F40();
  v45 = v8;
  v29 = v16;
  v30 = v18;
  v47 = *(v8 + 8);
  v47(v29, v7);
  __swift_destroy_boxed_opaque_existential_0(v49);
  v26(v48, v18, v7);
  v31 = [objc_opt_self() clearColor];
  sub_AB4EF0();
  if (sub_AB4E10())
  {
    v32 = v44;
    v26(v44, &v2[v25], v7);
    v33 = sub_AB4EE0();
    v47(v32, v7);
    if (v33)
    {
      v34 = [v33 colorWithAlphaComponent:0.8];
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;
    sub_AB4EF0();
    sub_AB4EF0();
  }

  v36 = v46;
  v26(v46, v30, v7);
  v37 = *(v45 + 56);
  v37(v36, 0, 1, v7);
  sub_ABA2D0();
  v38 = [v2 tableViewCell];
  if (v38)
  {
    v39 = v38;
    v40 = v48;
    v26(v36, v48, v7);
    v37(v36, 0, 1, v7);
    sub_AB9FC0();
    v41 = v40;
    v42 = v47;
    v47(v41, v7);
    v42(v30, v7);

    return;
  }

LABEL_12:
  __break(1u);
}

void *sub_203534(void *a1)
{
  v2 = type metadata accessor for SymbolButton.Configuration(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = SymbolButton.Configuration.contextualAction.unsafeMutableAddressor();
  sub_BD494(v6, v5);
  v7 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
  v8 = SymbolButton.init(configuration:handler:)(v5, 0, 0);
  v9 = SymbolButton.withProvider(_:)(sub_2037B8, 0);

  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 labelColor];
  v13 = *(&stru_1A8.reserved2 + (swift_isaMask & *v11));
  v14 = v13(v26);
  v15 = *(v3 + 80);
  v17 = *(v16 + v15);
  *(v16 + v15) = v12;

  v14(v26, 0);
  v18 = UIContentSizeCategoryExtraExtraExtraLarge;
  v19 = v13(v26);
  v21 = v20 + *(v3 + 72);
  v22 = *(v21 + 16);
  *(v21 + 16) = UIContentSizeCategoryExtraExtraExtraLarge;

  v23 = v19(v26, 0);
  [v11 setHidden:((*(&stru_2E8.reloff + (swift_isaMask & *a1)))(v23) & 1) == 0];
  v24 = [a1 contentView];
  [v24 addSubview:v11];

  return v11;
}

double sub_2037B8(uint64_t a1, uint64_t a2)
{
  sub_3F9D0(*(a2 + 200), *(a2 + 208));
  result = 0.0;
  *(a2 + 200) = xmmword_AF82C0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  return result;
}

void sub_203880(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl;
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl];
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    v7 = a1;
    goto LABEL_7;
  }

  if (a1)
  {
    type metadata accessor for SymbolButton(0);
    v6 = v5;
    v7 = a1;
    v8 = sub_ABA790();

    if (v8)
    {
      return;
    }

LABEL_7:
    v9 = [v7 superview];
    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:
  v10 = [v2 contentView];
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      sub_13C80(0, &qword_DF12A0);
      v12 = sub_ABA790();

      if ((v12 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    v13 = *&v2[v4];
    if (!v13)
    {
      goto LABEL_32;
    }

LABEL_20:
    v14 = v13;
    v15 = [v14 superview];
    v16 = [v2 contentView];
    v17 = v16;
    if (v15)
    {
      if (v16)
      {
        sub_13C80(0, &qword_DF12A0);
        v18 = sub_ABA790();

        if (v18)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      v17 = v15;
    }

    else if (!v16)
    {
      goto LABEL_31;
    }

LABEL_30:
    v19 = [v2 contentView];
    [v19 addSubview:v14];

    v14 = v19;
LABEL_31:

    goto LABEL_32;
  }

  if (v10)
  {

    v13 = *&v2[v4];
    if (!v13)
    {
      goto LABEL_32;
    }

    goto LABEL_20;
  }

LABEL_17:
  if (a1)
  {
    [a1 removeFromSuperview];
  }

LABEL_19:
  v13 = *&v2[v4];
  if (v13)
  {
    goto LABEL_20;
  }

LABEL_32:

  [v2 setNeedsLayout];
}

id sub_203ACC(void *a1)
{
  if (qword_DE6A70 != -1)
  {
    swift_once();
  }

  v2 = [objc_allocWithZone(UIImageView) initWithImage:qword_E71438];
  [v2 setHidden:1];
  v3 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleLargeTitle];
  [v3 scaledValueForValue:8.0];
  v5 = v4;

  v6 = [objc_opt_self() configurationWithPointSize:7 weight:v5];
  [v2 setPreferredSymbolConfiguration:v6];

  v7 = AccessibilityIdentifier.favoriteBadge.unsafeMutableAddressor();
  v8 = *v7;
  v9 = v7[1];
  sub_13C80(0, &qword_DF0C80);

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v8, v9);
  v10 = [a1 contentView];
  [v10 addSubview:v2];

  v11 = [a1 superview];
  if (v11)
  {

    [a1 setNeedsLayout];
  }

  return v2;
}

void sub_203CFC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v10 = *a2;
  v11 = a2[1];
  v5 = *(a2 + 32);
  v6 = *(a2 + 5);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ([objc_opt_self() areAnimationsEnabled])
    {
      swift_beginAccess();
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = 0;
    }

    v12[0] = v10;
    v12[1] = v11;
    v13 = v5;
    v14 = v6;
    sub_2019A4(v12, v9);
  }
}

void sub_203DB8(char a1)
{
  if (v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton] != (a1 & 1))
  {
    v2 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton;
    v3 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton];
    if (v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton])
    {
      if (v3)
      {
        v4 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton];
      }

      else
      {
        v4 = _s11MusicCoreUI12SymbolButtonC0A11ApplicationE014mediaPickerAddE0ACvgZ_0();
        v3 = 0;
      }

      v5 = v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isMediaPickerAddButtonSelected];
      v6 = v3;
      [v4 setSelected:v5];
      v7 = v4;
      [v7 setHidden:0];
      [v7 setUserInteractionEnabled:0];

      v8 = [v1 contentView];
      v9 = [v7 isDescendantOfView:v8];

      if ((v9 & 1) == 0)
      {
        v10 = [v1 contentView];
        [v10 addSubview:v7];

        [v1 setNeedsLayout];
      }

      v11 = *&v1[v2];
      *&v1[v2] = v7;
    }

    else if (v3)
    {

      [v3 setHidden:1];
    }
  }
}

id sub_204008(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for HorizontalLockupCollectionViewCell();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_2040A0(char a1)
{
  v2 = v1;
  v4 = sub_AB4E30();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HorizontalLockupCollectionViewCell();
  v13.receiver = v2;
  v13.super_class = v8;
  v9 = objc_msgSendSuper2(&v13, "isSelected");
  v12.receiver = v2;
  v12.super_class = v8;
  objc_msgSendSuper2(&v12, "setSelected:", a1 & 1);
  if (v9 != [v2 isSelected])
  {
    v10 = [v2 _bridgedConfigurationState];
    sub_AB4E00();
    isa = sub_AB4DF0().super.super.isa;
    (*(v5 + 8))(v7, v4);

    [v2 _bridgedUpdateConfigurationUsingState:isa];
  }
}

void sub_20420C()
{
  v1 = v0;
  v193.receiver = v0;
  v193.super_class = type metadata accessor for HorizontalLockupCollectionViewCell();
  objc_msgSendSuper2(&v193, "layoutSubviews");
  v2 = sub_200934();
  [v1 bounds];
  v3.n128_u64[0] = CGRectGetHeight(v194);
  (*(&stru_1F8.offset + (swift_isaMask & *v2)))(44.0, v3);

  [v1 bounds];
  v176 = v5;
  v177 = v4;
  v173 = v6;
  v175 = v7;
  v8 = [v1 contentView];
  [v8 bounds];
  v10 = v9;
  v186 = v11;
  v13 = v12;
  v15 = v14;
  v16 = [v1 traitCollection];
  [v16 displayScale];
  [v1 music_inheritedLayoutInsets];
  v18 = v17;
  v20 = v19;
  [v1 effectiveUserInterfaceLayoutDirection];
  v21 = [v1 tableViewCell];
  rect_16 = v10;
  if (v21)
  {
    v22 = v21;
    v23 = [v21 layoutManager];

    if (v23)
    {
      if (![v1 isEditing])
      {
        goto LABEL_6;
      }

      v24 = [v1 tableViewCell];
      if (!v24)
      {
        __break(1u);
        return;
      }

      v25 = v24;
      v26 = [v24 showingDeleteConfirmation];

      if ((v26 & 1) == 0)
      {
        v27 = [v1 tableViewCell];
        [v23 contentEndingRectForCell:v27 forNewEditingState:1];
        v29 = v28;
        v31 = v30;
        v187 = v33;
        v190 = v32;

        v195.origin.x = v29;
        v195.origin.y = v31;
        v195.size.height = v187;
        v195.size.width = v190;
        MinX = CGRectGetMinX(v195);

        v10 = rect_16;
        if (v20 - MinX > 8.0)
        {
          v20 = v20 - MinX;
        }

        else
        {
          v20 = 8.0;
        }
      }

      else
      {
LABEL_6:
      }
    }
  }

  v35 = UIEdgeInsetsInsetRect(v10, v186, v13, v15, v18, v20);
  v37 = v36;
  v39 = v38;
  rect_8 = v15;
  v41 = v40;
  v42 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets + 8);
  v191 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets + 24);
  sub_AB9EC0();
  v196.origin.x = v35;
  rect_24 = v37;
  v196.origin.y = v37;
  v196.size.width = v39;
  v181 = v41;
  v196.size.height = v41;
  v43 = v42;
  CGRectGetMinX(v196);
  sub_76368(0, 0, 1);
  v165 = v44;
  sub_ABA470();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  sub_ABA490();
  v171 = v16;
  v172 = v8;
  v178 = v39;
  if (sub_76B28(v53, v54, v55, v56))
  {
    v197.origin.x = v46;
    v197.origin.y = v48;
    v197.size.width = v50;
    v197.size.height = v52;
    v57 = v191 + v43 + CGRectGetWidth(v197);
    rect = v35 + v57;
    v39 = v39 - v57;
  }

  else
  {
    rect = v35;
  }

  v174 = v35;
  sub_201644();
  v58 = [v1 effectiveUserInterfaceLayoutDirection];
  v59 = 0;
  v60 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl;
  v61 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton;
  v179 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton;
  v62 = 0.0;
  v63 = v181;
  v64 = rect_24;
  v192 = v13;
  do
  {
    v81 = *(&off_CEFF18 + v59 + 32);
    if (v81)
    {
      if (v81 == &dword_0 + 1)
      {
        if (*(v1 + v61))
        {
          v84 = *(v1 + v179);
          if (v84)
          {
            v65 = v84;
            v188 = v62;
            [v65 sizeThatFits:{v13, rect_8}];
            v203.size.width = v85;
            v68 = v86;
            v203.origin.x = 0.0;
            v203.origin.y = 0.0;
            v203.size.height = v68;
            Width = CGRectGetWidth(v203);
            if (Width > 0.0)
            {
              v70 = Width;
            }

            else
            {
              v70 = 0.0;
            }

LABEL_17:
            v199.origin.x = rect;
            v199.origin.y = v64;
            v199.size.width = v39;
            v199.size.height = v63;
            CGRectGetMaxX(v199);
            v200.origin.x = 0.0;
            v200.origin.y = 0.0;
            v200.size.width = v70;
            v200.size.height = v68;
            CGRectGetWidth(v200);
            v71 = [v1 traitCollection];
            [v71 displayScale];

            v166 = v68;
            sub_ABA470();
            v73 = v72;
            v75 = v74;
            v77 = v76;
            v79 = v78;
            v13 = v192;
            sub_ABA490();
            [v65 setFrame:*&v166];
            v201.origin.x = v73;
            v201.origin.y = v75;
            v201.size.width = v77;
            v201.size.height = v79;
            v62 = v188 + CGRectGetWidth(v201) + 0.0;
            v202.origin.x = v73;
            v202.origin.y = v75;
            v202.size.width = v77;
            v64 = rect_24;
            v202.size.height = v79;
            v63 = v181;
            v80 = CGRectGetWidth(v202);

LABEL_18:
LABEL_19:
            v39 = v39 - v80;
          }
        }
      }

      else if (v81 == &dword_0 + 2)
      {
        v82 = *(v1 + v60);
        if (v82)
        {
          v83 = v82;
          if (([v83 isHidden] & 1) == 0)
          {
            v65 = v83;
            v188 = v62;
            [v65 sizeThatFits:{v13, rect_8}];
            v198.size.width = v66;
            v68 = v67;
            v198.origin.x = 0.0;
            v198.origin.y = 0.0;
            v198.size.height = v68;
            v69 = CGRectGetWidth(v198);
            if (v69 > 0.0)
            {
              v70 = v69;
            }

            else
            {
              v70 = 0.0;
            }

            goto LABEL_17;
          }
        }
      }

      else
      {
        v102 = v81;
        if (([v102 isHidden] & 1) == 0)
        {
          v103 = v102;
          [v103 sizeThatFits:{v13, rect_8}];
          v209.size.width = v104;
          v106 = v105;
          v209.origin.x = 0.0;
          v209.origin.y = 0.0;
          v209.size.height = v106;
          v107 = CGRectGetWidth(v209);
          if (v107 > 0.0)
          {
            v108 = v107;
          }

          else
          {
            v108 = 0.0;
          }

          v210.origin.x = rect;
          v210.origin.y = v64;
          v210.size.width = v39;
          v210.size.height = v63;
          CGRectGetMaxX(v210);
          v211.origin.x = 0.0;
          v211.origin.y = 0.0;
          v211.size.width = v108;
          v211.size.height = v106;
          CGRectGetWidth(v211);
          v109 = [v1 traitCollection];
          [v109 displayScale];

          v168 = v106;
          sub_ABA470();
          v111 = v110;
          v113 = v112;
          v115 = v114;
          v117 = v116;
          v13 = v192;
          sub_ABA490();
          [v103 setFrame:*&v168];
          v212.origin.x = v111;
          v212.origin.y = v113;
          v212.size.width = v115;
          v212.size.height = v117;
          v62 = v62 + CGRectGetWidth(v212) + 0.0;
          v213.origin.x = v111;
          v213.origin.y = v113;
          v213.size.width = v115;
          v64 = rect_24;
          v213.size.height = v117;
          v63 = v181;
          v80 = CGRectGetWidth(v213);
          sub_7FCC4(v81);
          sub_7FCC4(v81);
          goto LABEL_19;
        }

        sub_7FCC4(v81);
      }
    }

    else
    {
      v58 = (*(&stru_2E8.reloff + (swift_isaMask & *v1)))(v58);
      if (v58)
      {
        v65 = sub_200934();
        [v65 sizeThatFits:{v13, rect_8}];
        v204.size.width = v88;
        v90 = v89;
        v204.origin.x = 0.0;
        v204.origin.y = 0.0;
        v204.size.height = v90;
        v91 = CGRectGetWidth(v204);
        if (v91 > 0.0)
        {
          v92 = v91;
        }

        else
        {
          v92 = 0.0;
        }

        v205.origin.x = rect;
        v205.origin.y = v64;
        v205.size.width = v39;
        v205.size.height = v63;
        CGRectGetMaxX(v205);
        v206.origin.x = 0.0;
        v206.origin.y = 0.0;
        v206.size.width = v92;
        v206.size.height = v90;
        CGRectGetWidth(v206);
        v93 = [v1 traitCollection];
        [v93 displayScale];

        v167 = v90;
        sub_ABA470();
        v95 = v94;
        v97 = v96;
        v99 = v98;
        v101 = v100;
        v13 = v192;
        sub_ABA490();
        [v65 setFrame:*&v167];
        v207.origin.x = v95;
        v207.origin.y = v97;
        v207.size.width = v99;
        v207.size.height = v101;
        v62 = v62 + CGRectGetWidth(v207) + 0.0;
        v208.origin.x = v95;
        v208.origin.y = v97;
        v208.size.width = v99;
        v64 = rect_24;
        v208.size.height = v101;
        v63 = v181;
        v80 = CGRectGetWidth(v208);
        goto LABEL_18;
      }
    }

    v59 += 8;
  }

  while (v59 != 24);
  if (v62 <= 0.0)
  {
    v118 = v39;
  }

  else
  {
    v118 = v39 + -12.0;
  }

  v119 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView;
  v120 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView);
  sub_ABA490();
  [v120 setFrame:?];

  [v1 separatorInset];
  v180 = v121;
  v189 = v122;
  v214.origin.x = v35;
  v214.origin.y = v64;
  v214.size.width = v178;
  v214.size.height = v63;
  v170 = CGRectGetMinX(v214);
  v215.origin.x = rect_16;
  v215.origin.y = v186;
  v215.size.width = v13;
  v215.size.height = rect_8;
  v169 = CGRectGetMinX(v215);
  v123 = v8;
  [v8 frame];
  sub_ABA4A0();
  v124 = v63;
  v125 = CGRectGetMinX(v216);
  v217.origin.x = v177;
  v217.origin.y = v176;
  v217.size.width = v173;
  v217.size.height = v175;
  v126 = CGRectGetMinX(v217);
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment))
  {
    v218.origin.x = rect;
    v218.origin.y = v64;
    v218.size.width = v118;
    v218.size.height = v124;
    v127 = CGRectGetMinX(v218);
    v219.size.height = rect_8;
    v219.origin.x = rect_16;
    v219.origin.y = v186;
    v219.size.width = v13;
    v128 = v127 - CGRectGetMinX(v219);
    [v8 frame];
    sub_ABA4A0();
    v129 = CGRectGetMinX(v220);
    v221.origin.x = v177;
    v221.origin.y = v176;
    v221.size.width = v173;
    v221.size.height = v175;
    v130 = v128 + v129 - CGRectGetMinX(v221);
  }

  else
  {
    v130 = v170 - v169 + v125 - v126;
  }

  v131 = v171;
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment + 8))
  {
    v132 = 0.0;
    v133 = v186;
    if (*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment + 8) == 1)
    {
      v132 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment);
    }
  }

  else
  {
    v134 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment);
    v222.size.height = rect_8;
    v222.origin.x = rect_16;
    v133 = v186;
    v222.origin.y = v186;
    v222.size.width = v13;
    MaxX = CGRectGetMaxX(v222);
    v223.origin.x = v174;
    v223.origin.y = v64;
    v223.size.width = v178;
    v223.size.height = v181;
    v132 = MaxX - CGRectGetMaxX(v223) + v134;
  }

  v136 = (v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_proposedHorizontalLockupSeparatorInset);
  *v136 = v180;
  v136[1] = v130;
  v136[2] = v189;
  v136[3] = v132;
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_allowsCustomBottomSeparator) == 1 && (v137 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_rowPosition, *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_rowPosition) != 2))
  {
    sub_ABA490();
    v139 = v138;
    v141 = v140;
    v143 = v142;
    v144 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customBottomSeparatorView;
    v145 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customBottomSeparatorView);
    if (*(v1 + v137) == 3)
    {
      [v145 removeFromSuperview];
    }

    else
    {
      if (v145)
      {
        v146 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customBottomSeparatorView);
      }

      else
      {
        v147 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
        v148 = qword_DE6C70;
        v146 = v147;
        if (v148 != -1)
        {
          swift_once();
        }

        [v146 setBackgroundColor:qword_E718B0];
        v149 = *(v1 + v144);
        *(v1 + v144) = v146;

        v145 = 0;
      }

      v150 = v145;
      v151 = [v146 superview];

      if (v151)
      {
      }

      else
      {
        [v172 addSubview:v146];
      }

      v224.size.height = rect_8;
      v224.origin.x = rect_16;
      v224.origin.y = v133;
      v224.size.width = v13;
      [v146 setFrame:{v139, CGRectGetHeight(v224) - v143, v141, v143}];
    }

    if (*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_allowsCustomTopSeparator) == 1 && (*(v1 + v137) == 3 || !*(v1 + v137)))
    {
      v152 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customTopSeparatorView;
      v153 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customTopSeparatorView);
      if (v153)
      {
        v154 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customTopSeparatorView);
      }

      else
      {
        v155 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
        v156 = qword_DE6C70;
        v154 = v155;
        if (v156 != -1)
        {
          swift_once();
        }

        [v154 setBackgroundColor:qword_E718B0];
        v157 = *(v1 + v152);
        *(v1 + v152) = v154;

        v153 = 0;
      }

      v158 = v153;
      v159 = [v154 superview];

      if (v159)
      {
      }

      else
      {
        [v172 addSubview:v154];
      }

      [v154 setFrame:{v139, 0.0, v141, v143}];
    }

    else
    {
      [*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customTopSeparatorView) removeFromSuperview];
    }
  }

  else
  {
    [*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customBottomSeparatorView) removeFromSuperview];
    [*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customTopSeparatorView) removeFromSuperview];
    type metadata accessor for UIEdgeInsets(0);
    if ((sub_AB38D0() & 1) != 0 && (*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsCustomHandlingOfSeparatorInset) & 1) == 0)
    {
      [v1 setSeparatorInset:{v180, v130, v189, v132}];
    }
  }

  ObjectType = swift_getObjectType();
  v161 = swift_conformsToProtocol2();
  if (v161)
  {
    v162 = v161;
    v163 = v1;
    sub_37C2C8(rect, ObjectType, v162);
    v164 = *(v1 + v119);
    sub_ABA490();
    [v164 setFrame:?];

    sub_37C39C(ObjectType, v162);
    v123 = v171;
    v131 = v163;
  }
}

uint64_t sub_2054E4(void *a1)
{
  v2 = v1;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for HorizontalLockupCollectionViewCell();
  objc_msgSendSuper2(&v19, "traitCollectionDidChange:", a1);
  v4 = [v2 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_11;
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = sub_AB92A0();
  v9 = v8;
  if (v7 == sub_AB92A0() && v9 == v10)
  {

LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBA30);
    v13 = [v2 traitCollection];
    [v13 displayScale];

    [a1 displayScale];
    v17 = v14;
    LOBYTE(v18) = 0;
    sub_8A2B8();
    result = sub_AB38D0();
    if ((result & 1) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

  v12 = sub_ABB3C0();

  if (v12)
  {
    goto LABEL_10;
  }

LABEL_11:
  result = [v2 setNeedsLayout];
  v16 = *&v2[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_layoutInvalidationHandler];
  if (v16)
  {

    v16(v2);
    return sub_17654(v16);
  }

  return result;
}