void sub_1000272EC()
{
  v1 = v0;
  v2 = sub_10001FF68(&qword_1000B2980);
  __chkstk_darwin(v2 - 8);
  v4 = v136 - v3;
  v5 = sub_10007DD94();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLSEMainViewController();
  v149.receiver = v1;
  v149.super_class = v9;
  objc_msgSendSuper2(&v149, "loadView");
  v10 = [v1 extensionContext];
  if (!v10)
  {
    if (qword_1000B1C10 != -1)
    {
      swift_once();
    }

    v17 = static OS_os_log.crlSharingExtension;
    v18 = sub_10007E624();
    sub_100069E88(v17, &_mh_execute_header, v18, "Unable to load NSExtensionContext. Cancelling request.", 54, 2, &_swiftEmptyArrayStorage);
    v19 = swift_allocObject();
    *(v19 + 16) = v1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v147 = sub_1000332D4;
      v148 = v19;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v16 = &unk_1000A8490;
      goto LABEL_11;
    }

    v32 = objc_allocWithZone(NSError);
    v33 = v1;
    v34 = [v32 initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    v35 = [v33 extensionContext];
    if (!v35)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_100026DB8(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100023AE0(v4, &qword_1000B2980);
    if (qword_1000B1C10 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.crlSharingExtension;
    v12 = sub_10007E624();
    sub_100069E88(v11, &_mh_execute_header, v12, "Unable to resolve container URL. Cancelling request.", 52, 2, &_swiftEmptyArrayStorage);
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = v14;
      v147 = sub_1000332D4;
      v148 = v13;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v16 = &unk_1000A84E0;
LABEL_11:
      *&v146 = sub_10002B5CC;
      *(&v146 + 1) = v16;
      v21 = _Block_copy(&aBlock);
      v22 = v1;

      [v15 dismissViewControllerAnimated:1 completion:v21];
      _Block_release(v21);

      return;
    }

    v38 = objc_allocWithZone(NSError);
    v39 = v1;
    v34 = [v38 initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    v35 = [v39 extensionContext];
    if (!v35)
    {
LABEL_21:

      goto LABEL_22;
    }

LABEL_19:
    v36 = v35;
    v34 = v34;
    v37 = sub_10007DC74();

    [v36 cancelRequestWithError:v37];

LABEL_22:
    return;
  }

  (*(v6 + 32))(v8, v4, v5);
  v23 = sub_100026D44();
  sub_1000596E4(v8);

  v24 = [v1 view];
  if (!v24)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v25 = v24;
  if (qword_1000B1B20 != -1)
  {
    swift_once();
  }

  v137 = v5;
  v138 = v8;
  v139 = v6;
  [v25 setBackgroundColor:qword_1000B2810];

  v26 = [v1 view];
  if (!v26)
  {
    goto LABEL_66;
  }

  v27 = v26;
  [v26 setOpaque:0];

  v28 = [v1 navigationItem];
  v142 = objc_opt_self();
  v29 = [v142 mainBundle];
  v30 = sub_10007E404();
  v31 = [v29 objectForInfoDictionaryKey:v30];

  if (v31)
  {
    sub_10007E784();
    swift_unknownObjectRelease();
  }

  else
  {
    v143 = 0u;
    v144 = 0u;
  }

  aBlock = v143;
  v146 = v144;
  if (*(&v144 + 1))
  {
    if (swift_dynamicCast())
    {
      v40 = sub_10007E404();

      goto LABEL_29;
    }
  }

  else
  {
    sub_100023AE0(&aBlock, &unk_1000B42A0);
  }

  v40 = 0;
LABEL_29:
  [v28 setTitle:v40];

  v41 = [v1 navigationItem];
  v42 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v1 action:"cancel:"];
  [v41 setLeftBarButtonItem:v42];

  type metadata accessor for CRLSEExtensionContextManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v43 = [v142 bundleForClass:?];
  v44 = sub_10007E404();
  v45 = sub_10007E404();
  v141 = "Recently Deleted";
  v46 = sub_10007E404();
  v47 = [v43 localizedStringForKey:v44 value:v45 table:v46];

  sub_10007E444();
  v49 = v48;

  v50 = [v1 navigationItem];
  *(&v146 + 1) = v9;
  *&aBlock = v1;
  v51 = v1;
  v136[1] = v49;
  v52 = sub_10007E404();
  v53 = *(&v146 + 1);
  if (*(&v146 + 1))
  {
    v54 = sub_100021160(&aBlock, *(&v146 + 1));
    v55 = *(v53 - 8);
    __chkstk_darwin(v54);
    v57 = v136 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v55 + 16))(v57);
    v58 = sub_10007EA94();
    (*(v55 + 8))(v57, v53);
    sub_1000211F8(&aBlock);
  }

  else
  {
    v58 = 0;
  }

  v59 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v52 style:2 target:v58 action:"save:"];

  swift_unknownObjectRelease();
  [v50 setRightBarButtonItem:v59];

  v60 = [v142 bundleForClass:ObjCClassFromMetadata];
  v61 = sub_10007E404();
  v62 = sub_10007E404();
  v63 = sub_10007E404();
  v64 = [v60 localizedStringForKey:v61 value:v62 table:v63];

  sub_10007E444();
  v66 = v65;

  v67 = [v51 navigationItem];
  aBlock = 0u;
  v146 = 0u;
  v136[0] = v66;
  v68 = sub_10007E404();
  v69 = *(&v146 + 1);
  if (*(&v146 + 1))
  {
    v70 = sub_100021160(&aBlock, *(&v146 + 1));
    v71 = *(v69 - 8);
    __chkstk_darwin(v70);
    v73 = v136 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v71 + 16))(v73);
    v74 = sub_10007EA94();
    (*(v71 + 8))(v73, v69);
    sub_1000211F8(&aBlock);
  }

  else
  {
    v74 = 0;
  }

  v75 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v68 style:0 target:v74 action:0];

  swift_unknownObjectRelease();
  [v67 setBackBarButtonItem:v75];

  v76 = [v51 navigationItem];
  v77 = [v76 rightBarButtonItem];

  if (v77)
  {
    [v77 setEnabled:0];
  }

  v78 = [objc_allocWithZone(UIScrollView) init];
  v79 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_scrollView;
  v80 = *&v51[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_scrollView];
  *&v51[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_scrollView] = v78;
  v81 = v78;

  if (!v81)
  {
    goto LABEL_67;
  }

  [v81 setTranslatesAutoresizingMaskIntoConstraints:0];

  v82 = [v51 view];
  if (!v82)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (!*&v51[v79])
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v83 = v82;
  [v82 addSubview:?];

  v84 = sub_10002DA30();
  v85 = *&v51[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_boardPickerView];
  *&v51[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_boardPickerView] = v84;
  v86 = v84;

  v87 = *&v51[v79];
  if (!v87)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v88 = v87;
  [v88 addSubview:v86];

  v89 = [objc_allocWithZone(UIView) init];
  v90 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_contentView;
  v91 = *&v51[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_contentView];
  *&v51[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_contentView] = v89;
  v92 = v89;

  if (!v92)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  [v92 setTranslatesAutoresizingMaskIntoConstraints:0];

  v93 = *&v51[v90];
  if (!v93)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  [v93 setAccessibilityContainerType:4];
  v94 = *&v51[v90];
  if (!v94)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  [v94 setIsAccessibilityElement:0];
  v95 = *&v51[v90];
  if (!v95)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v96 = v95;
  v97 = [v142 bundleForClass:ObjCClassFromMetadata];
  v98 = sub_10007E404();
  v99 = sub_10007E404();
  v100 = sub_10007E404();
  v101 = [v97 localizedStringForKey:v98 value:v99 table:v100];

  sub_10007E444();
  v102 = sub_10007E404();

  [v96 setAccessibilityLabel:v102];

  v103 = *&v51[v79];
  if (!v103)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (!*&v51[v90])
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  [v103 addSubview:?];
  v104 = [objc_allocWithZone(UITextView) init];
  v105 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_sharedTextContent;
  v106 = *&v51[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_sharedTextContent];
  *&v51[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_sharedTextContent] = v104;
  v107 = v104;

  if (!v107)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  [v107 setTranslatesAutoresizingMaskIntoConstraints:0];

  v108 = *&v51[v105];
  if (!v108)
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v109 = qword_1000B1B18;
  v110 = v108;
  if (v109 != -1)
  {
    swift_once();
  }

  [v110 setBackgroundColor:qword_1000B2808];

  v111 = *&v51[v105];
  if (!v111)
  {
    goto LABEL_79;
  }

  v112 = [v111 layer];
  [v112 setCornerRadius:12.0];

  v113 = *&v51[v105];
  if (!v113)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v114 = v113;
  [v114 setTextContainerInset:{16.0, 16.0, 16.0, 16.0}];

  v115 = *&v51[v105];
  if (!v115)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v116 = objc_opt_self();
  v117 = v115;
  v118 = [v116 preferredFontForTextStyle:UIFontTextStyleBody];
  [v117 setFont:v118];

  v119 = *&v51[v105];
  if (!v119)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v120 = objc_opt_self();
  v121 = v119;
  v122 = [v120 labelColor];
  [v121 setTextColor:v122];

  v123 = *&v51[v105];
  if (!v123)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  [v123 setScrollEnabled:0];
  v124 = *&v51[v105];
  if (!v124)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  [v124 setContentMode:0];
  v125 = *&v51[v105];
  if (!v125)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  [v125 setHidden:1];
  v126 = *&v51[v79];
  if (!v126)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (!*&v51[v105])
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  [v126 addSubview:?];
  v127 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
  v128 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_activityIndicator;
  v129 = *&v51[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_activityIndicator];
  *&v51[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_activityIndicator] = v127;
  v130 = v127;

  if (!v130)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  [v130 setTranslatesAutoresizingMaskIntoConstraints:0];

  v131 = *&v51[v128];
  if (!v131)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  [v131 setHidesWhenStopped:1];
  v132 = [v51 view];
  if (!v132)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v133 = *&v51[v128];
  if (v133)
  {
    v134 = v132;
    v135 = v133;

    [v134 addSubview:v135];

    (*(v139 + 8))(v138, v137);
    return;
  }

LABEL_91:
  __break(1u);
}

void sub_100028514()
{
  v1 = v0;
  v2 = sub_10001FF68(&qword_1000B2A30);
  __chkstk_darwin(v2 - 8);
  v249 = &v239 - v3;
  v4 = sub_10001FF68(&qword_1000B2938);
  v253 = *(v4 - 8);
  __chkstk_darwin(v4);
  v252 = &v239 - v5;
  v6 = sub_10007DEB4();
  v245 = *(v6 - 8);
  v246 = v6;
  __chkstk_darwin(v6);
  v244 = &v239 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = type metadata accessor for CRLSELibraryViewModel.Board(0);
  __chkstk_darwin(v242);
  v243 = &v239 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001FF68(&qword_1000B2930);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v239 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v239 - v13;
  v15 = sub_10001FF68(&qword_1000B2A38);
  v16 = __chkstk_darwin(v15 - 8);
  v247 = &v239 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v248 = &v239 - v19;
  __chkstk_darwin(v18);
  v251 = &v239 - v20;
  v21 = sub_10001FF68(&qword_1000B2940);
  v22 = __chkstk_darwin(v21 - 8);
  v250 = &v239 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v239 - v24;
  v26 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_selectedBoard;
  swift_beginAccess();
  sub_100023A78(&v0[v26], v25, &qword_1000B2940);
  v27 = type metadata accessor for CRLSEBoard(0);
  v28 = *(v27 - 8);
  v29 = (*(v28 + 48))(v25, 1, v27);
  sub_100023AE0(v25, &qword_1000B2940);
  if (v29 == 1)
  {
    v240 = v28;
    v241 = v4;
    v30 = sub_100026D44();
    v31 = sub_10005F498();

    v32 = OBJC_IVAR____TtC24FreeformSharingExtension12CRLSELibrary_recents;
    swift_beginAccess();
    sub_100023A78(v31 + v32, v12, &qword_1000B2930);
    v33 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
    v34 = *(v33 - 8);
    v35 = *(v34 + 48);
    if (v35(v12, 1, v33))
    {

      sub_100023AE0(v12, &qword_1000B2930);
      (*(v34 + 56))(v14, 1, 1, v33);
    }

    else
    {
      v36 = *&v12[*(v33 + 20)];

      sub_100023AE0(v12, &qword_1000B2930);
      if (*(v36 + 16))
      {
        sub_100033078(v36 + ((*(v34 + 80) + 32) & ~*(v34 + 80)), v14, type metadata accessor for CRLSELibraryViewModelItemNode);
        v37 = 0;
      }

      else
      {
        v37 = 1;
      }

      (*(v34 + 56))(v14, v37, 1, v33);
      if (v35(v14, 1, v33) != 1)
      {
        v40 = v251;
        sub_100033078(v14, v251, type metadata accessor for CRLSELibraryViewModel.Item);
        sub_100032830(v14, type metadata accessor for CRLSELibraryViewModelItemNode);
        v38 = 0;
        v4 = v241;
        v39 = v248;
LABEL_9:
        v41 = type metadata accessor for CRLSELibraryViewModel.Item(0);
        v42 = *(v41 - 8);
        (*(v42 + 56))(v40, v38, 1, v41);
        sub_100023A78(v40, v39, &qword_1000B2A38);
        if ((*(v42 + 48))(v39, 1, v41) != 1)
        {
          v43 = v247;
          sub_100023A78(v39, v247, &qword_1000B2A38);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload == 3)
          {
            v52 = sub_10001FF68(&qword_1000B2A20);
            v53 = (v43 + *(v52 + 48));
            v55 = *v53;
            v54 = v53[1];
            v243 = v55;
            v242 = v54;
            v248 = *(v52 + 64);
            v57 = v245;
            v56 = v246;
            v58 = v43;
            v59 = v244;
            (*(v245 + 32))(v244, v58, v246);
            v60 = type metadata accessor for CRLSEBoardIdentifier(0);
            v61 = v250;
            (*(*(v60 - 8) + 56))(v250, 1, 1, v60);
            v62 = *(v27 + 24);
            (*(v57 + 16))(v61 + v62, v59, v56);
            (*(v57 + 56))(v61 + v62, 0, 1, v56);
            v63 = (v61 + *(v27 + 20));
            v64 = v242;
            *v63 = v243;
            v63[1] = v64;
            (*(v240 + 56))(v61, 0, 1, v27);
            sub_100026BA0(v61);
            (*(v57 + 8))(v59, v56);
            sub_100023AE0(v251, &qword_1000B2A38);
            v65 = &unk_1000B2A00;
            v66 = v58 + v248;
LABEL_18:
            sub_100023AE0(v66, v65);
            sub_100023AE0(v39, &qword_1000B2A38);
            goto LABEL_19;
          }

          if (EnumCaseMultiPayload == 2)
          {
            v45 = v243;
            sub_1000327C8(v43, v243, type metadata accessor for CRLSELibraryViewModel.Board);
            v46 = v250;
            sub_100033078(v45, v250, type metadata accessor for CRLSEBoardIdentifier);
            v47 = type metadata accessor for CRLSEBoardIdentifier(0);
            (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
            v48 = (v45 + *(v242 + 24));
            v50 = *v48;
            v49 = v48[1];
            (*(v245 + 56))(v46 + *(v27 + 24), 1, 1, v246);
            v51 = (v46 + *(v27 + 20));
            *v51 = v50;
            v51[1] = v49;
            (*(v240 + 56))(v46, 0, 1, v27);

            sub_100026BA0(v46);
            sub_100032830(v45, type metadata accessor for CRLSELibraryViewModel.Board);
LABEL_17:
            v65 = &qword_1000B2A38;
            v66 = v40;
            goto LABEL_18;
          }

          sub_100032830(v43, type metadata accessor for CRLSELibraryViewModel.Item);
        }

        v67 = v250;
        (*(v240 + 56))(v250, 1, 1, v27);
        sub_100026BA0(v67);
        goto LABEL_17;
      }
    }

    sub_100023AE0(v14, &qword_1000B2930);
    v38 = 1;
    v4 = v241;
    v39 = v248;
    v40 = v251;
    goto LABEL_9;
  }

LABEL_19:
  v68 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_boardPickerView;
  v69 = *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_boardPickerView];
  if (!v69)
  {
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v70 = v69;
  v71 = sub_10002C144(v70);

  v72 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_dataSource;
  v73 = *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_dataSource];
  *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_dataSource] = v71;

  sub_100031818();
  v74 = v252;
  sub_10007E214();
  v75._rawValue = &off_1000A72C0;
  sub_10007E204(v75);
  sub_100026FD8();
  LOBYTE(v254[0]) = 0;
  sub_10007E1F4();

  v76 = *&v1[v72];
  if (v76)
  {
    v77 = v76;
    sub_10007E264();
  }

  (*(v253 + 8))(v74, v4);
  v253 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_contentView;
  v78 = *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_contentView];
  if (!v78)
  {
    goto LABEL_76;
  }

  v79 = [v78 widthAnchor];
  v80 = [v1 traitCollection];
  v81 = [v80 crl_isCompactWidth];

  if (v81)
  {
    v82 = 326.0;
  }

  else
  {
    v83 = [objc_opt_self() crl_landscapePhoneUI];
    v82 = 624.0;
    if (v83)
    {
      v82 = 326.0;
    }
  }

  v84 = [v79 constraintLessThanOrEqualToConstant:v82];

  v85 = *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_contentViewWidthConstraint];
  *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_contentViewWidthConstraint] = v84;
  v86 = v84;

  LODWORD(v87) = 1132068864;
  [v86 setPriority:v87];

  v88 = *&v1[v253];
  if (!v88)
  {
    goto LABEL_77;
  }

  v89 = [v88 heightAnchor];
  v90 = [v1 traitCollection];
  v91 = [v90 crl_isCompactWidth];

  if (v91)
  {
    v92 = 220.0;
  }

  else
  {
    v93 = [objc_opt_self() crl_landscapePhoneUI];
    v92 = 360.0;
    if (v93)
    {
      v92 = 220.0;
    }
  }

  v94 = [v89 constraintEqualToConstant:v92];

  v95 = *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_contentViewHeightConstraint];
  *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_contentViewHeightConstraint] = v94;
  v96 = v94;

  v97 = *&v1[v68];
  if (!v97)
  {
    goto LABEL_78;
  }

  v98 = [v97 heightAnchor];
  v99 = *(sub_100026FD8() + 2);

  v100 = [v98 constraintEqualToConstant:(v99 + 1.0) * 48.0];

  v101 = *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_boardPickerHeightContraint];
  *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_boardPickerHeightContraint] = v100;
  v102 = v100;

  sub_10001FF68(&unk_1000B2970);
  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_1000860B0;
  v104 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_scrollView;
  v105 = *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_scrollView];
  if (!v105)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v251 = v86;
  v252 = v102;
  v106 = [v105 topAnchor];
  v107 = [v1 view];
  if (!v107)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v108 = v107;
  v109 = [v107 safeAreaLayoutGuide];

  v110 = [v109 topAnchor];
  v111 = [v106 constraintEqualToAnchor:v110];

  *(v103 + 32) = v111;
  v112 = *&v1[v104];
  if (!v112)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v113 = [v112 leadingAnchor];
  v114 = [v1 view];
  if (!v114)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v115 = v114;
  v116 = [v114 safeAreaLayoutGuide];

  v117 = [v116 leadingAnchor];
  v118 = [v113 constraintEqualToAnchor:v117];

  *(v103 + 40) = v118;
  v119 = *&v1[v104];
  if (!v119)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v120 = [v119 bottomAnchor];
  v121 = [v1 view];
  if (!v121)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v122 = v121;
  v250 = v96;
  v123 = [v121 safeAreaLayoutGuide];

  v124 = [v123 bottomAnchor];
  v125 = [v120 constraintEqualToAnchor:v124];

  *(v103 + 48) = v125;
  v126 = *&v1[v104];
  if (!v126)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v127 = [v126 trailingAnchor];
  v128 = [v1 view];
  if (!v128)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v129 = v128;
  v130 = [v128 safeAreaLayoutGuide];

  v131 = [v130 trailingAnchor];
  v132 = [v127 constraintEqualToAnchor:v131];

  *(v103 + 56) = v132;
  v133 = *&v1[v68];
  if (!v133)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v134 = [v133 topAnchor];
  v135 = *&v1[v104];
  if (!v135)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v136 = [v135 topAnchor];
  v137 = [v134 constraintEqualToAnchor:v136 constant:16.0];

  *(v103 + 64) = v137;
  v138 = *&v1[v68];
  if (!v138)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v139 = [v138 leadingAnchor];
  v140 = *&v1[v104];
  if (!v140)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v141 = [v140 leadingAnchor];
  v142 = [v139 constraintEqualToAnchor:v141];

  *(v103 + 72) = v142;
  v143 = *&v1[v68];
  if (!v143)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v144 = [v143 trailingAnchor];
  v145 = *&v1[v104];
  if (!v145)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v146 = [v145 trailingAnchor];
  v147 = [v144 constraintEqualToAnchor:v146];

  *(v103 + 80) = v147;
  v148 = *&v1[v68];
  if (!v148)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v149 = [v148 widthAnchor];
  v150 = *&v1[v104];
  if (!v150)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v151 = [v150 widthAnchor];
  v152 = [v149 constraintEqualToAnchor:v151];

  v153 = v252;
  *(v103 + 88) = v152;
  *(v103 + 96) = v153;
  v154 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_sharedTextContent;
  v155 = *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_sharedTextContent];
  if (!v155)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v156 = v153;
  v157 = [v155 topAnchor];
  v158 = *&v1[v68];
  if (!v158)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v159 = [v158 bottomAnchor];
  v160 = [v157 constraintEqualToAnchor:v159 constant:56.0];

  *(v103 + 104) = v160;
  v161 = *&v1[v154];
  if (!v161)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v252 = v156;
  v162 = [v161 leadingAnchor];
  v163 = *&v1[v104];
  if (!v163)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v164 = [v163 contentLayoutGuide];
  v165 = [v164 leadingAnchor];

  v166 = [v162 constraintEqualToAnchor:v165 constant:24.0];
  *(v103 + 112) = v166;
  v167 = *&v1[v154];
  if (!v167)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v168 = [v167 trailingAnchor];
  v169 = *&v1[v104];
  if (!v169)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v170 = [v169 contentLayoutGuide];
  v171 = [v170 trailingAnchor];

  v172 = [v168 constraintEqualToAnchor:v171 constant:-24.0];
  *(v103 + 120) = v172;
  v173 = *&v1[v154];
  if (!v173)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v174 = [v173 bottomAnchor];
  v175 = *&v1[v104];
  v176 = v253;
  if (!v175)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v177 = [v175 contentLayoutGuide];
  v178 = [v177 bottomAnchor];

  v179 = [v174 constraintEqualToAnchor:v178 constant:-24.0];
  *(v103 + 128) = v179;
  v180 = *&v1[v176];
  if (!v180)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v181 = [v180 topAnchor];
  v182 = *&v1[v68];
  if (!v182)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v183 = [v182 bottomAnchor];
  v184 = [v181 constraintEqualToAnchor:v183 constant:56.0];

  *(v103 + 136) = v184;
  v185 = *&v1[v176];
  if (!v185)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v186 = [v185 leftAnchor];
  v187 = *&v1[v104];
  if (!v187)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v188 = [v187 contentLayoutGuide];
  v189 = [v188 leftAnchor];

  v190 = [v186 constraintEqualToAnchor:v189];
  *(v103 + 144) = v190;
  v191 = *&v1[v176];
  if (!v191)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v192 = [v191 rightAnchor];
  v193 = *&v1[v104];
  if (!v193)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v194 = [v193 contentLayoutGuide];
  v195 = [v194 rightAnchor];

  v196 = [v192 constraintEqualToAnchor:v195];
  *(v103 + 152) = v196;
  v197 = *&v1[v176];
  if (!v197)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v198 = [v197 bottomAnchor];
  v199 = *&v1[v104];
  v200 = v250;
  if (!v199)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v201 = [v199 contentLayoutGuide];
  v202 = [v201 bottomAnchor];

  v203 = [v198 constraintLessThanOrEqualToAnchor:v202 constant:-32.0];
  v204 = v251;
  *(v103 + 160) = v203;
  *(v103 + 168) = v204;
  *(v103 + 176) = v200;
  v205 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_activityIndicator;
  v206 = *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_activityIndicator];
  if (!v206)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v207 = v204;
  v208 = v200;
  v209 = [v206 centerXAnchor];
  v210 = [v1 view];
  if (!v210)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v211 = v210;
  v212 = [v210 centerXAnchor];

  v213 = [v209 constraintEqualToAnchor:v212];
  *(v103 + 184) = v213;
  v214 = *&v1[v205];
  if (!v214)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v215 = [v214 topAnchor];
  v216 = *&v1[v68];
  if (!v216)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v217 = v215;
  v218 = objc_opt_self();
  v219 = [v216 bottomAnchor];
  v220 = [v217 constraintEqualToAnchor:v219 constant:56.0];

  *(v103 + 192) = v220;
  sub_100032404(0, &qword_1000B4280);
  isa = sub_10007E544().super.isa;

  [v218 activateConstraints:isa];

  v222 = [v1 extensionContext];
  v223 = v252;
  if (v222)
  {
    v224 = v222;
    v225 = *&v1[v205];
    if (v225)
    {
      [v225 startAnimating];
      v226 = sub_10007E5E4();
      v227 = v249;
      (*(*(v226 - 8) + 56))(v249, 1, 1, v226);
      sub_10007E5C4();
      v228 = v1;
      v229 = v224;
      v230 = sub_10007E5B4();
      v231 = swift_allocObject();
      v231[2] = v230;
      v231[3] = &protocol witness table for MainActor;
      v231[4] = v228;
      v231[5] = v229;
      sub_10002A334(0, 0, v227, &unk_1000862F0, v231);

      goto LABEL_72;
    }

LABEL_115:
    __break(1u);
    return;
  }

LABEL_72:
  v232 = objc_opt_self();
  v233 = [v232 defaultCenter];
  [v233 addObserver:v1 selector:"keyboardDidShowWithNotification:" name:UIKeyboardWillChangeFrameNotification object:0];

  v234 = [v232 defaultCenter];
  [v234 addObserver:v1 selector:"keyboardWillHideWithNotification:" name:UIKeyboardWillHideNotification object:0];

  sub_10001FF68(&unk_1000B2A40);
  v235 = swift_allocObject();
  *(v235 + 16) = xmmword_1000860C0;
  *(v235 + 32) = sub_10007E1E4();
  *(v235 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v235 + 48) = sub_10007E104();
  *(v235 + 56) = &protocol witness table for UITraitVerticalSizeClass;
  v254[3] = type metadata accessor for CRLSEMainViewController();
  v254[0] = v1;
  v236 = v1;
  sub_10007E674();

  swift_unknownObjectRelease();
  sub_1000211F8(v254);
  if (qword_1000B1C10 != -1)
  {
    swift_once();
  }

  v237 = static OS_os_log.crlSharingExtension;
  v238 = sub_10007E614();
  sub_100069E88(v237, &_mh_execute_header, v238, "Sharing Extension main view controller did load", 47, 2, &_swiftEmptyArrayStorage);
}

uint64_t sub_10002A014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_10007E5C4();
  v5[4] = sub_10007E5B4();
  v7 = sub_10007E5A4();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_10002A0AC, v7, v6);
}

uint64_t sub_10002A0AC()
{
  v0[7] = sub_100026D44();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_10002A150;
  v2 = v0[3];

  return sub_100059BF8(v2);
}

uint64_t sub_10002A150(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  *(*v1 + 72) = a1;

  v4 = *(v2 + 48);
  v5 = *(v2 + 40);

  return _swift_task_switch(sub_10002A298, v5, v4);
}

uint64_t sub_10002A298()
{
  v1 = v0[9];
  v2 = v0[2];

  *(v2 + OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_importItems) = v1;

  sub_10002DD54(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10002A334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10001FF68(&qword_1000B2A30);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100023A78(a3, v25 - v10, &qword_1000B2A30);
  v12 = sub_10007E5E4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100023AE0(v11, &qword_1000B2A30);
  }

  else
  {
    sub_10007E5D4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10007E5A4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10007E474() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100023AE0(a3, &qword_1000B2A30);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100023AE0(a3, &qword_1000B2A30);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_10002A67C(char a1)
{
  v2 = v1;
  v4 = sub_10001FF68(&qword_1000B2940);
  __chkstk_darwin(v4 - 8);
  v6 = v19 - v5;
  v7 = type metadata accessor for CRLSEMainViewController();
  v20.receiver = v2;
  v20.super_class = v7;
  objc_msgSendSuper2(&v20, "viewWillAppear:", a1 & 1);
  if (qword_1000B1C10 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.crlSharingExtension;
  v9 = sub_10007E614();
  sub_100069E88(v8, &_mh_execute_header, v9, "Sharing Extension main view controller will appear", 50, 2, &_swiftEmptyArrayStorage);
  v10 = *&v2[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_boardPickerView];
  if (v10)
  {
    v19[1] = *&v2[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_boardPickerView];
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = v10;
    v12 = sub_10007DC94();

    v13 = *&v2[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_boardPickerContentSizeObservation];
    *&v2[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_boardPickerContentSizeObservation] = v12;

    v14 = [v2 navigationItem];
    v15 = [v14 rightBarButtonItem];

    if (v15)
    {
      v16 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_selectedBoard;
      swift_beginAccess();
      sub_100023A78(&v2[v16], v6, &qword_1000B2940);
      v17 = type metadata accessor for CRLSEBoard(0);
      v18 = (*(*(v17 - 8) + 48))(v6, 1, v17) != 1;
      sub_100023AE0(v6, &qword_1000B2940);
      [v15 setEnabled:v18];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10002A928(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_boardPickerHeightContraint);
    if (v4)
    {
      [v4 constant];
      v6 = v5;
    }

    else
    {
      v6 = 0.0;
    }

    v7 = [v1 collectionViewLayout];
    [v7 collectionViewContentSize];
    v9 = v8;

    if (v9 > 0.0 && v9 != v6)
    {
      [v4 setConstant:v9];
    }
  }
}

void sub_10002AAFC()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for CRLSEMainViewController();
  objc_msgSendSuper2(&v11, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_boardPickerView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_boardPickerHeightContraint];
    if (v2)
    {
      v3 = v2;
      v4 = v1;
      [v3 constant];
      v6 = v5;
    }

    else
    {
      v7 = v1;
      v6 = 0.0;
    }

    v8 = [v1 collectionViewLayout];
    [v8 collectionViewContentSize];
    v10 = v9;

    if (v10 <= 0.0 || v10 == v6)
    {
    }

    else
    {
      [v2 setConstant:v10];

      v2 = v1;
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_10002AC4C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CRLSEMainViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for CRLSEMainViewController()
{
  result = qword_1000B2910;
  if (!qword_1000B2910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10002AF30()
{
  v1 = [v0 traitCollection];
  v2 = [v1 crl_isCompactWidth];

  if (v2)
  {
    v3 = 220.0;
    v4 = 326.0;
  }

  else
  {
    v5 = [objc_opt_self() crl_landscapePhoneUI];
    if (v5)
    {
      v4 = 326.0;
    }

    else
    {
      v4 = 624.0;
    }

    if (v5)
    {
      v3 = 220.0;
    }

    else
    {
      v3 = 360.0;
    }
  }

  v6 = *&v0[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_contentViewWidthConstraint];
  if (v6)
  {
    [v6 setConstant:v4];
  }

  v7 = *&v0[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_contentViewHeightConstraint];
  if (v7)
  {
    [v7 setConstant:v3];
  }

  v8 = *&v0[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_previewViewWidthConstraint];
  if (v8)
  {
    [v8 setConstant:v4];
  }

  v9 = *&v0[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_previewViewHeightConstraint];
  if (v9)
  {
    [v9 setConstant:v3];
  }

  result = *&v0[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_boardPickerView];
  if (result)
  {

    return [result reloadData];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10002B0E8()
{
  v1 = v0;
  v2 = sub_10007DB14();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  *&v37 = COERCE_DOUBLE(sub_10007E444());
  v38 = v4;
  sub_10007E7C4();
  if (!*(v3 + 16))
  {
    goto LABEL_14;
  }

  v5 = sub_100031B54(v36);
  if ((v6 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_100032924(*(v3 + 56) + 32 * v5, v41);
  sub_1000328D0(v36);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v7 = *&v37;
  *&v37 = COERCE_DOUBLE(sub_10007E444());
  v38 = v8;
  sub_10007E7C4();
  if (!*(v3 + 16))
  {
    goto LABEL_14;
  }

  v9 = sub_100031B54(v36);
  if ((v10 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_100032924(*(v3 + 56) + 32 * v9, v41);
  sub_1000328D0(v36);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

    return;
  }

  v11 = v37;
  *&v37 = COERCE_DOUBLE(sub_10007E444());
  v38 = v12;
  sub_10007E7C4();
  if (!*(v3 + 16) || (v13 = sub_100031B54(v36), (v14 & 1) == 0))
  {
LABEL_14:

    sub_1000328D0(v36);
    return;
  }

  sub_100032924(*(v3 + 56) + 32 * v13, v41);
  sub_1000328D0(v36);
  type metadata accessor for CGRect(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v15 = *&v37;
  v16 = v38;
  v17 = v39;
  v18 = v40;
  v19 = [v1 view];
  if (v19)
  {
    v20 = v19;
    v21 = [v1 view];
    if (v21)
    {
      v22 = v21;

      v23 = [v22 window];

      [v20 convertRect:v23 fromView:{v15, v16, v17, v18}];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;

      v32 = objc_opt_self();
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = swift_allocObject();
      v34[2] = v33;
      v34[3] = v25;
      v34[4] = v27;
      v34[5] = v29;
      v34[6] = v31;
      v36[4] = sub_100032A1C;
      v36[5] = v34;
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 1107296256;
      v36[2] = sub_10002B5CC;
      v36[3] = &unk_1000A8378;
      v35 = _Block_copy(v36);

      [v32 animateWithDuration:v11 << 16 delay:v35 options:0 animations:v7 completion:0.0];
      _Block_release(v35);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10002B490(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_scrollView;
    v11 = *(Strong + OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_scrollView);
    if (v11)
    {
      v12 = v11;
      v20.origin.x = a1;
      v20.origin.y = a2;
      v20.size.width = a3;
      v20.size.height = a4;
      Height = CGRectGetHeight(v20);
      v14 = [v9 view];
      if (v14)
      {
        v15 = v14;
        [v14 safeAreaInsets];
        v17 = v16;

        [v12 setContentInset:{0.0, 0.0, Height - v17, 0.0}];
        v18 = *&v9[v10];
        if (v18)
        {
          v19 = v18;
          [v19 contentInset];
          [v19 setScrollIndicatorInsets:?];

          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_10002B5CC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_10002B628()
{
  v0 = sub_10007DB14();
  if (v0)
  {
    v1 = v0;
    v14 = sub_10007E444();
    v15 = v2;
    sub_10007E7C4();
    if (!*(v1 + 16))
    {
      goto LABEL_9;
    }

    v3 = sub_100031B54(v13);
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

    sub_100032924(*(v1 + 56) + 32 * v3, v16);
    sub_1000328D0(v13);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v5 = *&v14;
    v14 = sub_10007E444();
    v15 = v6;
    sub_10007E7C4();
    if (*(v1 + 16) && (v7 = sub_100031B54(v13), (v8 & 1) != 0))
    {
      sub_100032924(*(v1 + 56) + 32 * v7, v16);
      sub_1000328D0(v13);

      if (swift_dynamicCast())
      {
        v9 = v14 << 16;
        v10 = objc_opt_self();
        v11 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v13[4] = sub_100032980;
        v13[5] = v11;
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 1107296256;
        v13[2] = sub_10002B5CC;
        v13[3] = &unk_1000A8328;
        v12 = _Block_copy(v13);

        [v10 animateWithDuration:v9 delay:v12 options:0 animations:v5 completion:0.0];
        _Block_release(v12);
      }
    }

    else
    {
LABEL_9:

      sub_1000328D0(v13);
    }
  }
}

void sub_10002B878()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_scrollView;
    v3 = *(Strong + OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_scrollView);
    if (v3)
    {
      [v3 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
      v4 = *&v1[v2];
      if (v4)
      {
        v5 = v4;
        [v5 contentInset];
        [v5 setScrollIndicatorInsets:?];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_10002B944(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_10007DB24();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007DB04();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

void sub_10002BAF4(void *a1)
{
  v6 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
  v2 = [a1 extensionContext];
  if (v2)
  {
    v3 = v2;
    v4 = v6;
    v5 = sub_10007DC74();

    [v3 cancelRequestWithError:v5];
  }
}

id sub_10002BBC0()
{
  v1 = v0;
  v2 = sub_10001FF68(&qword_1000B2940);
  __chkstk_darwin(v2 - 8);
  v4 = &v33[-v3];
  v5 = type metadata accessor for CRLSEBoard(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_selectedBoard;
  swift_beginAccess();
  sub_100023A78(&v1[v9], v4, &qword_1000B2940);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_100023AE0(v4, &qword_1000B2940);
  }

  sub_1000327C8(v4, v8, type metadata accessor for CRLSEBoard);
  result = *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_sharedTextContent];
  if (result)
  {
    result = [result text];
    if (result)
    {
      v11 = result;
      v12 = [objc_allocWithZone(NSAttributedString) initWithString:result];

      v13 = sub_100026D44();
      v14 = *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_importItems];
      v15 = v12;

      LOBYTE(v12) = sub_10005BB68(v8, v12, v14);

      if (v12)
      {
        v16 = [objc_allocWithZone(NSExtensionItem) init];
        sub_10001FF68(&unk_1000B2970);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000860D0;
        *(inited + 32) = v16;
        v18 = v16;
        v19 = [v1 extensionContext];
        if (!v19)
        {
          sub_100032830(v8, type metadata accessor for CRLSEBoard);

          swift_setDeallocating();
          return swift_arrayDestroy();
        }

        v20 = v19;
        sub_1000586B4(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        v21.super.isa = sub_10007E544().super.isa;

        [v20 completeRequestReturningItems:v21.super.isa completionHandler:0];

        goto LABEL_16;
      }

      if (qword_1000B1C10 != -1)
      {
        swift_once();
      }

      v22 = static OS_os_log.crlSharingExtension;
      v23 = sub_10007E624();
      sub_100069E88(v22, &_mh_execute_header, v23, "Unable to process shared content.  Cancelling request.", 54, 2, &_swiftEmptyArrayStorage);
      v24 = swift_allocObject();
      *(v24 + 16) = v1;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v21.super.isa = Strong;
        aBlock[4] = sub_1000328C8;
        aBlock[5] = v24;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10002B5CC;
        aBlock[3] = &unk_1000A8300;
        v26 = _Block_copy(aBlock);
        v27 = v1;

        [(objc_class *)v21.super.isa dismissViewControllerAnimated:1 completion:v26];
        _Block_release(v26);
      }

      else
      {
        v28 = objc_allocWithZone(NSError);
        v29 = v1;
        v21.super.isa = [v28 initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
        v30 = [v29 extensionContext];
        if (v30)
        {
          v31 = v30;
          v21.super.isa = v21.super.isa;
          v32 = sub_10007DC74();

          [v31 cancelRequestWithError:v32];

          goto LABEL_16;
        }
      }

LABEL_16:

      return sub_100032830(v8, type metadata accessor for CRLSEBoard);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10002C144(void *a1)
{
  v42 = a1;
  v1 = sub_10001FF68(&qword_1000B29D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v38 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v4);
  v36 = &v35 - v6;
  v7 = __chkstk_darwin(v5);
  v43 = &v35 - v8;
  __chkstk_darwin(v7);
  v44 = &v35 - v9;
  v41 = sub_10001FF68(&qword_1000B29D8);
  v10 = *(v41 - 8);
  v39 = *(v10 + 64);
  v11 = __chkstk_darwin(v41);
  v40 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v37 = &v35 - v13;
  sub_10007E444();
  sub_100032404(0, &qword_1000B29E0);
  sub_10007E644();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = v44;
  sub_10007E634();
  v15 = v43;
  sub_10007E634();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = *(v2 + 16);
  v18 = v36;
  v17(v36, v14, v1);
  v19 = v38;
  v17(v38, v15, v1);
  v20 = *(v2 + 80);
  v21 = (v20 + 24) & ~v20;
  v22 = (v3 + v20 + v21) & ~v20;
  v23 = swift_allocObject();
  *(v23 + 16) = v16;
  v24 = *(v2 + 32);
  v24(v23 + v21, v18, v1);
  v24(v23 + v22, v19, v1);
  v25 = objc_allocWithZone(sub_10001FF68(&qword_1000B29E8));
  v26 = v42;
  v27 = sub_10007E224();
  v29 = v40;
  v28 = v41;
  v30 = v37;
  (*(v10 + 16))(v40, v37, v41);
  v31 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v32 = swift_allocObject();
  (*(v10 + 32))(v32 + v31, v29, v28);
  sub_10007E234();
  v33 = *(v2 + 8);
  v33(v43, v1);
  v33(v44, v1);
  (*(v10 + 8))(v30, v28);
  return v27;
}

uint64_t sub_10002C600(void *a1)
{
  v2 = sub_10007E1D4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007E6E4();
  type metadata accessor for CRLSEExtensionContextManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v8 = sub_10007E404();
  v9 = sub_10007E404();
  v10 = sub_10007E404();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  sub_10007E444();
  sub_10007E1B4();
  v12 = objc_opt_self();
  if (qword_1000B1B10 != -1)
  {
    v20 = v12;
    swift_once();
    v12 = v20;
  }

  v13 = [v12 preferredFontForTextStyle:qword_1000B2800];
  v14 = sub_10007E164();
  sub_10007E144();
  v14(v22, 0);
  v22[3] = v2;
  v22[4] = &protocol witness table for UIListContentConfiguration;
  v15 = sub_100026998(v22);
  (*(v3 + 16))(v15, v5, v2);
  sub_10007E6B4();
  v16 = UIAccessibilityTraitHeader;
  v17 = [a1 accessibilityTraits];
  if ((v16 & ~v17) != 0)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  [a1 setAccessibilityTraits:v18 | v17];
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10002C8E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v82 = a4;
  v70 = type metadata accessor for CRLSELibraryViewModel.Board(0);
  __chkstk_darwin(v70);
  v69 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10001FF68(&unk_1000B2A00);
  __chkstk_darwin(v6 - 8);
  v75 = &v67 - v7;
  v8 = sub_10007DE44();
  v76 = *(v8 - 8);
  *&v77 = v8;
  __chkstk_darwin(v8);
  v71 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001FF68(&qword_1000B2930);
  __chkstk_darwin(v10 - 8);
  v78 = &v67 - v11;
  v73 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v12 = __chkstk_darwin(v73);
  v74 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v72 = &v67 - v15;
  __chkstk_darwin(v14);
  v79 = &v67 - v16;
  v17 = sub_10001FF68(&qword_1000B2940);
  __chkstk_darwin(v17 - 8);
  v19 = &v67 - v18;
  v81 = type metadata accessor for CRLSEBoard(0);
  v20 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10007E1D4();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007E6E4();

  sub_10007E1B4();
  v26 = sub_10007E164();
  sub_10007E134();
  v26(v84, 0);
  v27 = sub_10007E164();
  sub_10007E124();
  v27(v84, 0);
  v28 = [objc_opt_self() secondaryLabelColor];
  v29 = sub_10007E1A4();
  v30 = v23;
  sub_10007E154();
  v29(v84, 0);
  v31 = a1;
  v84[3] = v22;
  v84[4] = &protocol witness table for UIListContentConfiguration;
  v32 = sub_100026998(v84);
  (*(v23 + 16))(v32, v25, v22);
  sub_10007E6B4();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v30 + 8))(v25, v22);
  }

  v34 = Strong;
  v35 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_selectedBoard;
  swift_beginAccess();
  sub_100023A78(v34 + v35, v19, &qword_1000B2940);
  if ((*(v20 + 48))(v19, 1, v81) == 1)
  {
    (*(v30 + 8))(v25, v22);

    return sub_100023AE0(v19, &qword_1000B2940);
  }

  v37 = v80;
  sub_1000327C8(v19, v80, type metadata accessor for CRLSEBoard);
  v38 = sub_100026D44();
  sub_10005F498();

  v39 = v78;
  sub_10006D794(v37, v78);

  v40 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
  if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
  {

    sub_100023AE0(v39, &qword_1000B2930);
    sub_100032830(v37, type metadata accessor for CRLSEBoard);
    return (*(v30 + 8))(v25, v22);
  }

  v82 = v22;
  v41 = v72;
  sub_100033078(v39, v72, type metadata accessor for CRLSELibraryViewModel.Item);
  sub_100032830(v39, type metadata accessor for CRLSELibraryViewModelItemNode);
  v42 = v41;
  v43 = v79;
  sub_1000327C8(v42, v79, type metadata accessor for CRLSELibraryViewModel.Item);
  v81 = sub_1000187F4();
  v78 = v44;
  v45 = v74;
  sub_100033078(v43, v74, type metadata accessor for CRLSELibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v54 = sub_10001FF68(&qword_1000B2A20);

    v49 = v75;
    sub_1000213E8(v45 + *(v54 + 64), v75);
    v55 = sub_10007DEB4();
    (*(*(v55 - 8) + 8))(v45, v55);
    v48 = v76;
    v47 = v77;
  }

  else
  {
    v48 = v76;
    v47 = v77;
    v49 = v75;
    if (EnumCaseMultiPayload == 2)
    {
      v50 = v45;
      v51 = v69;
      sub_1000327C8(v50, v69, type metadata accessor for CRLSELibraryViewModel.Board);
      sub_100023A78(v51 + *(v70 + 32), v49, &unk_1000B2A00);
      v52 = v51;
      v53 = type metadata accessor for CRLSELibraryViewModel.Board;
    }

    else
    {
      (*(v76 + 56))(v75, 1, 1, v77);
      v53 = type metadata accessor for CRLSELibraryViewModel.Item;
      v52 = v45;
    }

    sub_100032830(v52, v53);
  }

  v56 = (*(v48 + 48))(v49, 1, v47);
  v68 = v30;
  if (v56 == 1)
  {
    sub_100023AE0(v49, &unk_1000B2A00);
  }

  else
  {
    v57 = v71;
    (*(v48 + 32))(v71, v49, v47);
    sub_1000535D0();

    (*(v48 + 8))(v57, v47);
  }

  sub_10001FF68(&unk_1000B4470);
  v58 = swift_allocObject();
  v77 = xmmword_1000860E0;
  *(v58 + 16) = xmmword_1000860E0;
  v59 = v81;
  v60 = v78;
  *(v58 + 32) = v81;
  *(v58 + 40) = v60;
  v83 = v58;

  sub_10001FF68(&unk_1000B2A10);
  sub_100032780(&qword_1000B4480, &unk_1000B2A10);
  sub_10007E3E4();

  v61 = sub_10007E404();

  [v31 setAccessibilityLabel:v61];

  v62 = UIAccessibilityTraitButton;
  v63 = [v31 accessibilityTraits];
  if ((v62 & ~v63) != 0)
  {
    v64 = v62;
  }

  else
  {
    v64 = 0;
  }

  [v31 setAccessibilityTraits:v64 | v63];
  v65 = swift_allocObject();
  *(v65 + 16) = v77;
  *(v65 + 32) = v59;
  *(v65 + 40) = v60;
  isa = sub_10007E544().super.isa;

  [v31 setAccessibilityUserInputLabels:isa];

  sub_100032830(v79, type metadata accessor for CRLSELibraryViewModel.Item);
  sub_100032830(v80, type metadata accessor for CRLSEBoard);
  return (*(v68 + 8))(v25, v82);
}

uint64_t sub_10002D3AC(void *a1)
{
  v2 = sub_10007E1D4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007E6E4();

  sub_10007E1B4();
  v6 = [objc_opt_self() linkColor];
  v7 = sub_10007E164();
  sub_10007E154();
  v7(v14, 0);
  v14[3] = v2;
  v14[4] = &protocol witness table for UIListContentConfiguration;
  v8 = sub_100026998(v14);
  (*(v3 + 16))(v8, v5, v2);
  sub_10007E6B4();
  v9 = UIAccessibilityTraitButton;
  v10 = [a1 accessibilityTraits];
  if ((v9 & ~v10) != 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  [a1 setAccessibilityTraits:v11 | v10];
  return (*(v3 + 8))(v5, v2);
}

id sub_10002D570(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v25 = a5;
  v29 = a1;
  v6 = sub_10001FF68(&unk_1000B29F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_10007E0E4();
  v27 = *(v9 - 8);
  v28 = v9;
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007E0A4();
  v26 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a3;
  v16 = a3[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v18 = Strong;
  v19 = *(sub_100026FD8() + 2);

  if (v19 < 2 || sub_10007DF34())
  {
    v30 = v15;
    v31 = v16;
    sub_100032404(0, &qword_1000B29E0);

    v20 = sub_10007E654();
  }

  else
  {
    v30 = v15;
    v31 = v16;
    sub_100032404(0, &qword_1000B29E0);

    v21 = sub_10007E654();

    sub_10001FF68(&qword_1000B42B0);
    sub_10007E0F4();
    *(swift_allocObject() + 16) = xmmword_1000860E0;
    v22 = v26;
    (*(v26 + 104))(v14, enum case for UICellAccessory.DisplayedState.always(_:), v12);
    v23 = sub_10007E0B4();
    (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
    v20 = v21;
    sub_10007E0D4();
    sub_10007E0C4();
    (*(v27 + 8))(v11, v28);
    (*(v22 + 8))(v14, v12);
    sub_10007E6D4();
  }

  return v20;
}

uint64_t sub_10002D96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_10007E444() == a2 && v4 == a3)
  {
  }

  else
  {
    v6 = sub_10007EAA4();

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  sub_100032404(0, &qword_1000B29E0);
  return sub_10007E664();
}

id sub_10002DA30()
{
  v1 = v0;
  v2 = sub_10007E284();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007E274();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007E2C4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v6);
  sub_10007E294();
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v2);
  sub_10007E2A4();
  sub_100032404(0, &qword_1000B29C8);
  v14 = sub_10007E6F4();
  result = [v1 view];
  if (result)
  {
    v16 = result;
    [result bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = [objc_allocWithZone(UICollectionView) initWithFrame:v14 collectionViewLayout:{v18, v20, v22, v24}];
    [v25 setCollectionViewLayout:v14];
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v25 setScrollEnabled:0];
    [v25 setDelegate:v1];

    (*(v11 + 8))(v13, v10);
    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10002DD54(unint64_t a1)
{
  v38 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_46:
    v2 = sub_10007E904();
    if (!v2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_17;
    }
  }

  v3 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = sub_10007E844();
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v7 = [v4 attributedText];
    if (v7)
    {
      break;
    }

LABEL_4:

    ++v3;
    if (v6 == v2)
    {
      goto LABEL_17;
    }
  }

  v8 = v7;
  if ([v7 length] < 1)
  {

    goto LABEL_4;
  }

  v9 = *&v39[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_sharedTextContent];
  if (!v9)
  {
    goto LABEL_55;
  }

  v10 = v9;
  v11 = [v8 string];
  if (!v11)
  {
    sub_10007E444();
    v11 = sub_10007E404();
  }

  [v10 setText:{v11, v38}];

LABEL_17:
  if (v38)
  {
    v12 = sub_10007E904();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = v39;
  if (v12 < 2)
  {
    if (!v2)
    {
      v15 = 0;
      goto LABEL_29;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_50;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(a1 + 32);
      goto LABEL_27;
    }

    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v40 = sub_10002E418(a1);
  if (v2)
  {
    while (1)
    {
      if (v12 > 2)
      {
        goto LABEL_35;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v16 = *(a1 + 32);
        goto LABEL_34;
      }

      __break(1u);
LABEL_50:
      v14 = sub_10007E844();
LABEL_27:
      v15 = v14;
LABEL_29:
      v40 = sub_10002E21C(v15, 0);

      if (!v2)
      {
        goto LABEL_35;
      }
    }

    v16 = sub_10007E844();
LABEL_34:
    v17 = v16;
    v18 = sub_10004ACAC();

    if (v18 == 2)
    {
      goto LABEL_41;
    }
  }

LABEL_35:
  v19 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_contentView;
  v20 = *&v13[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_contentView];
  if (!v20)
  {
    goto LABEL_52;
  }

  [v20 setIsAccessibilityElement:1];
  type metadata accessor for CRLSEExtensionContextManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v23 = sub_10007E404();
  v24 = sub_10007E404();
  v25 = sub_10007E404();
  v26 = [v22 localizedStringForKey:v23 value:v24 table:v25];

  sub_10007E444();
  v27 = sub_10004C5FC(a1);
  if (!v28)
  {
    goto LABEL_39;
  }

  v29 = *&v13[v19];
  if (v29)
  {
    v30 = v27;
    v31 = v28;
    sub_10001FF68(&qword_1000B43B0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1000860E0;
    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = sub_10003186C();
    *(v32 + 32) = v30;
    *(v32 + 40) = v31;
    v33 = v29;
    sub_10007E414();

    v34 = sub_10007E404();

    [v33 setAccessibilityLabel:v34];

LABEL_39:
    v35 = *&v13[v19];
    if (v35)
    {
      v36 = v35;

      isa = sub_10007E544().super.isa;
      [v36 setAccessibilityElements:isa];

LABEL_41:
      sub_10002F368(v40);

      return;
    }

LABEL_53:
    __break(1u);
  }

  __break(1u);
LABEL_55:
  __break(1u);
}

uint64_t sub_10002E21C(void *a1, char a2)
{
  v5 = sub_10001FF68(&qword_1000B2980);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  if (a1)
  {
    v8 = a1;
    v9 = sub_10004ACAC();
    if (!v9)
    {
      v10 = sub_10002F87C(v8, a2 & 1);
      goto LABEL_8;
    }

    if (v9 == 1)
    {
      v10 = sub_10002FDA4(v8, a2 & 1);
LABEL_8:
      v14 = v10;

      return v14;
    }

    v11 = [v8 url];
    if (v11)
    {
      v12 = v11;
      sub_10007DD24();

      v13 = sub_10007DD94();
      (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
      sub_100023AE0(v7, &qword_1000B2980);
      v10 = sub_100031C60(v8);
      goto LABEL_8;
    }

    v16 = sub_10007DD94();
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    result = sub_100023AE0(v7, &qword_1000B2980);
    v17 = *(v2 + OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_sharedTextContent);
    if (!v17)
    {
      __break(1u);
      return result;
    }

    v18 = v17;
    [v18 setHidden:0];
  }

  return 0;
}

char *sub_10002E418(uint64_t a1)
{
  v3 = sub_10001FF68(&qword_1000B2980);
  __chkstk_darwin(v3 - 8);
  v93 = &v83 - v4;
  v5 = sub_10007DD94();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v90 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v83 - v9;
  v11 = a1 & 0xFFFFFFFFFFFFFF8;
  v12 = (a1 >> 62);
  if (a1 >> 62)
  {
LABEL_83:
    if (a1 < 0)
    {
      v45 = a1;
    }

    else
    {
      v45 = v11;
    }

    v20 = sub_10007E904();
    if (sub_10007E904() < 0)
    {
      __break(1u);
LABEL_88:
      v46 = sub_10007E904();
      v47 = v1 - a1;
      if (!__OFSUB__(v1, a1))
      {
        goto LABEL_46;
      }

LABEL_90:
      __break(1u);
LABEL_91:
      p_base_prots = sub_10007E904();
      goto LABEL_52;
    }

LABEL_121:
    if (v20 >= 3)
    {
      v82 = 3;
    }

    else
    {
      v82 = v20;
    }

    if (v20 >= 0)
    {
      v1 = v82;
    }

    else
    {
      v1 = 3;
    }

    result = sub_10007E904();
    if (result < v1)
    {
      goto LABEL_128;
    }

LABEL_6:
    if ((a1 & 0xC000000000000001) != 0 && v1)
    {
      sub_100032404(0, &qword_1000B2988);

      sub_10007E834(0);
      if (v1 != 1)
      {
        sub_10007E834(1);
        if (v1 != 2)
        {
          sub_10007E834(2);
        }
      }
    }

    else
    {
    }

    v95 = v5;
    v89 = v10;
    if (v12)
    {

      v14 = sub_10007E914();
      v91 = v15;
      a1 = v16;
      v1 = v17 >> 1;
    }

    else
    {
      v14 = a1 & 0xFFFFFFFFFFFFFF8;
      a1 = 0;
      v91 = v14 + 32;
    }

    v18 = objc_allocWithZone(UIView);
    v85 = v14;
    swift_unknownObjectRetain();
    v19 = [v18 init];
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v97 = v19;
    [v19 setAutoresizesSubviews:1];
    v10 = &_swiftEmptyArrayStorage;
    v100 = &_swiftEmptyArrayStorage;
    v20 = v86;
    if (a1 == v1)
    {
      goto LABEL_44;
    }

    v92 = (v6 + 56);
    v87 = (v6 + 8);
    v88 = (v6 + 32);
    v11 = v1 - 1;
    v83 = v1 - 1;
    v84 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_sharedTextContent;
    v12 = a1;
    while (1)
    {
      v96 = v10;
      v5 = v12;
      v21 = v91;
      v94 = v12;
      while (1)
      {
        if (v12 < a1 || v5 >= v1)
        {
          goto LABEL_81;
        }

        v10 = *(v21 + 8 * v5);
        v6 = v10;
        v24 = sub_10004ACAC();
        if (!v24)
        {
          break;
        }

        if (v24 == 1)
        {
          v6 = v20;
          v22 = sub_10002FDA4(v10, 1);
          goto LABEL_19;
        }

        v25 = [v10 url];
        if (v25)
        {
          v26 = v93;
          v6 = v25;
          sub_10007DD24();

          (*v92)(v26, 0, 1, v95);
          sub_100023AE0(v26, &qword_1000B2980);
          v22 = sub_100031C60(v10);
LABEL_19:
          v23 = v22;

          if (v23)
          {
            goto LABEL_39;
          }

          goto LABEL_20;
        }

        v6 = v93;
        (*v92)(v93, 1, 1, v95);
        sub_100023AE0(v6, &qword_1000B2980);
        v39 = *&v20[v84];
        if (!v39)
        {
          __break(1u);
          goto LABEL_121;
        }

        v40 = v39;
        [v40 setHidden:0];
        v37 = v10;
LABEL_37:

        v12 = v94;
LABEL_20:
        if (v1 == ++v5)
        {
          v10 = v96;
          goto LABEL_44;
        }
      }

      v27 = [v10 url];
      if (v27)
      {
        v28 = a1;
        v29 = v20;
        v30 = v90;
        v31 = v27;
        sub_10007DD24();

        v32 = v89;
        v33 = v30;
        v34 = v95;
        (*v88)(v89, v33, v95);
        sub_10007DD44();
        v35 = objc_allocWithZone(UIImage);
        v6 = sub_10007E404();

        v36 = [v35 initWithContentsOfFile:v6];

        if (v36)
        {
          v6 = v29;
          v37 = sub_10002FAE0(v36);

          v38 = v34;
          v20 = v6;
          (*v87)(v32, v38);
          a1 = v28;
          v21 = v91;
          goto LABEL_36;
        }

        (*v87)(v32, v34);
        v20 = v29;
        a1 = v28;
        v21 = v91;
      }

      v41 = [v10 image];
      if (v41)
      {
        v42 = v41;
        v6 = v20;
        v37 = sub_10002FAE0(v41);
      }

      else
      {
        v37 = 0;
      }

LABEL_36:
      v43 = [objc_allocWithZone(UIImageView) initWithImage:v37];
      v40 = v10;
      if (!v43)
      {
        goto LABEL_37;
      }

      v44 = v43;
      [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v44 setContentMode:2];

LABEL_39:
      v6 = &v100;
      sub_10007E534();
      if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10007E564();
      }

      v12 = (v5 + 1);
      sub_10007E584();
      v10 = v100;
      v11 = v83;
      if (v83 == v5)
      {
LABEL_44:
        swift_unknownObjectRelease();
        v100 = v10;
        v45 = v10;
        if (v10 >> 62)
        {
          goto LABEL_88;
        }

        v46 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v47 = v1 - a1;
        if (__OFSUB__(v1, a1))
        {
          goto LABEL_90;
        }

LABEL_46:
        if (v47 >= 2 && v46 < v47)
        {
          v48 = [objc_allocWithZone(UIView) init];
          v49 = [objc_opt_self() systemWhiteColor];
          [v48 setBackgroundColor:v49];

          [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
          p_base_prots = v48;
          sub_10007E534();
          if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_49;
          }

          goto LABEL_119;
        }

        while (1)
        {
          a1 = v45 >> 62;
          v96 = v45;
          if (v45 >> 62)
          {
            goto LABEL_91;
          }

          p_base_prots = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_52:
          v51 = &_swiftEmptyArrayStorage;
          if (!p_base_prots)
          {
            v54 = &_swiftEmptyArrayStorage;
LABEL_67:
            if (v54 >> 62)
            {
              v6 = sub_10007E904();
              if (!v6)
              {
LABEL_93:

                v61 = [v86 traitCollection];
                v62 = [v61 crl_isCompactWidth];

                if (v62)
                {
                  v63 = 184.0;
                }

                else if ([objc_opt_self() crl_landscapePhoneUI])
                {
                  v63 = 184.0;
                }

                else
                {
                  v63 = 300.0;
                }

                sub_10001FF68(&unk_1000B2970);
                v64 = swift_allocObject();
                *(v64 + 16) = xmmword_1000860F0;
                v20 = v97;
                v65 = [v97 widthAnchor];
                v66 = [v65 constraintEqualToConstant:v63];

                *(v64 + 32) = v66;
                v67 = [v20 heightAnchor];
                v68 = [v20 widthAnchor];
                v69 = [v67 constraintEqualToAnchor:v68];

                *(v64 + 40) = v69;
                __chkstk_darwin(v70);
                *(&v83 - 4) = v63;
                *(&v83 - 3) = v63;
                *(&v83 - 2) = v20;
                v71 = sub_100031FB8(v96, sub_100031FAC);
                v72 = [v20 subviews];
                sub_100032404(0, &qword_1000B2990);
                v5 = sub_10007E554();

                p_base_prots = v5 >> 62;
                if (v5 >> 62)
                {
                  while (1)
                  {
                    v10 = sub_10007E904();
                    v94 = v64;
                    if (!v10)
                    {
                      break;
                    }

LABEL_100:
                    v99 = v51;
                    sub_10007E8A4();
                    if ((v10 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_118;
                    }

                    v93 = v71;
                    v95 = v5 & 0xFFFFFFFFFFFFFF8;
                    if (p_base_prots)
                    {
                      v73 = sub_10007E904();
                    }

                    else
                    {
                      v73 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    }

                    v74 = 0;
                    v71 = (v5 & 0xC000000000000001);
                    p_base_prots = &CRLPreviewImages.LookupKey.base_prots;
                    v64 = v73 & ~(v73 >> 63);
                    while (v64 != v74)
                    {
                      if (v71)
                      {
                        v75 = sub_10007E844();
                      }

                      else
                      {
                        if (v74 >= *(v95 + 16))
                        {
                          goto LABEL_113;
                        }

                        v75 = *(v5 + 8 * v74 + 32);
                      }

                      v76 = v75;
                      v20 = (v74 + 1);
                      v77 = v74 * 8.0;
                      v78 = [v75 topAnchor];
                      v51 = [v97 topAnchor];
                      v1 = [v78 constraintEqualToAnchor:v51 constant:v77];

                      sub_10007E884();
                      sub_10007E8B4();
                      sub_10007E8C4();
                      sub_10007E894();
                      v74 = v20;
                      if (v10 == v20)
                      {

                        v79 = v99;
                        v71 = v93;
                        goto LABEL_116;
                      }
                    }

                    __break(1u);
LABEL_113:
                    __break(1u);
                  }
                }

                else
                {
                  v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  v94 = v64;
                  if (v10)
                  {
                    goto LABEL_100;
                  }
                }

                v79 = &_swiftEmptyArrayStorage;
LABEL_116:
                v98 = v94;
                sub_10006B218(v71);
                sub_10006B218(v79);
                v80 = objc_opt_self();
                sub_100032404(0, &qword_1000B4280);
                isa = sub_10007E544().super.isa;

                [v80 activateConstraints:isa];

                swift_unknownObjectRelease();
                return v97;
              }
            }

            else
            {
              v6 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v6)
              {
                goto LABEL_93;
              }
            }

            a1 = 0;
            v12 = (v54 & 0xFFFFFFFFFFFFFF8);
            v10 = &CRLPreviewImages.LookupKey.base_prots;
            while (1)
            {
              if ((v54 & 0xC000000000000001) != 0)
              {
                v59 = sub_10007E844();
              }

              else
              {
                v11 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (a1 >= v11)
                {
                  goto LABEL_80;
                }

                v59 = v54[a1 + 4];
              }

              v5 = v59;
              v60 = (a1 + 1);
              if (__OFADD__(a1, 1))
              {
                goto LABEL_79;
              }

              [v97 insertSubview:v59 atIndex:0];

              ++a1;
              if (v60 == v6)
              {
                goto LABEL_93;
              }
            }
          }

          v99 = &_swiftEmptyArrayStorage;
          v20 = v20;
          sub_10007E8A4();
          if ((p_base_prots & 0x8000000000000000) == 0)
          {
            break;
          }

          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          sub_10007E564();
LABEL_49:
          sub_10007E584();

          v45 = v100;
        }

        v93 = v20;
        if (a1)
        {
          v52 = v96;
          v95 = v96 & 0xFFFFFFFFFFFFFF8;
          v53 = sub_10007E904();
        }

        else
        {
          v52 = v96;
          v95 = v96 & 0xFFFFFFFFFFFFFF8;
          v53 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v6 = 0;
        v55 = v52 & 0xC000000000000001;
        v11 = v52 + 32;
        v94 = (v52 + 32);
        v1 = v53 & ~(v53 >> 63);
        a1 = &CRLPreviewImages.LookupKey.base_prots;
        v12 = &CRLPreviewImages.LookupKey.base_prots;
        while (v1 != v6)
        {
          if (v55)
          {
            v56 = sub_10007E844();
          }

          else
          {
            v11 = *(v95 + 16);
            if (v6 >= v11)
            {
              goto LABEL_82;
            }

            v56 = v94[v6];
          }

          v5 = v56;
          v57 = [(__objc2_prot_list *)v56 layer];
          if (v6 == 3)
          {
            goto LABEL_78;
          }

          v58 = v57;
          [v57 setCornerRadius:*(&off_1000A7288 + v6 + 4)];

          [v5 setClipsToBounds:1];
          sub_10007E884();
          v10 = v99[2];
          sub_10007E8B4();
          sub_10007E8C4();
          sub_10007E894();
          if (p_base_prots == ++v6)
          {

            v54 = v99;
            v51 = &_swiftEmptyArrayStorage;
            goto LABEL_67;
          }
        }

        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }
    }
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 3)
  {
    v1 = 3;
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result >= v1)
  {
    goto LABEL_6;
  }

LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_10002F208(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  v7 = a1 * 24.0;
  v8 = a4 - v7;
  v9 = a5 - v7;
  sub_10001FF68(&unk_1000B2970);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100086100;
  v11 = [a2 widthAnchor];
  v12 = [v11 constraintEqualToConstant:v8];

  *(v10 + 32) = v12;
  v13 = [a2 heightAnchor];
  v14 = [v13 constraintEqualToConstant:v9];

  *(v10 + 40) = v14;
  v15 = [a2 centerXAnchor];
  v16 = [a3 centerXAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v10 + 48) = v17;
  return v10;
}

void sub_10002F368(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_activityIndicator];
  if (!v3)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v3 stopAnimating];
  if (!a1)
  {
    return;
  }

  v4 = *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_contentView];
  if (!v4)
  {
    goto LABEL_23;
  }

  v50 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_contentView;
  v5 = a1;
  [v4 addSubview:v5];
  v6 = [v5 widthAnchor];
  v7 = [v1 traitCollection];
  v8 = [v7 crl_isCompactWidth];

  if (v8)
  {
    v9 = 326.0;
  }

  else
  {
    v10 = [objc_opt_self() crl_landscapePhoneUI];
    v9 = 624.0;
    if (v10)
    {
      v9 = 326.0;
    }
  }

  v11 = [v6 constraintLessThanOrEqualToConstant:v9];

  v12 = [v5 heightAnchor];
  v13 = [v1 traitCollection];
  v14 = [v13 crl_isCompactWidth];

  if (v14)
  {
    v15 = 220.0;
  }

  else
  {
    v16 = [objc_opt_self() crl_landscapePhoneUI];
    v15 = 360.0;
    if (v16)
    {
      v15 = 220.0;
    }
  }

  v17 = v50;
  v18 = [v12 constraintLessThanOrEqualToConstant:v15];

  [v5 intrinsicContentSize];
  v20 = v19;
  [v5 intrinsicContentSize];
  if (v20 == 0.0)
  {
    v23 = v22;
  }

  else
  {
    v24 = v21;
    [v5 intrinsicContentSize];
    v23 = v24 / v25;
  }

  v26 = [v5 widthAnchor];
  v27 = [v5 heightAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:v23];

  v29 = *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_previewViewWidthConstraint];
  *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_previewViewWidthConstraint] = v11;
  v51 = v11;

  v30 = *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_previewViewHeightConstraint];
  *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_previewViewHeightConstraint] = v18;
  v49 = v18;

  v31 = *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_previewViewAspectRatioConstraint];
  *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_previewViewAspectRatioConstraint] = v28;
  v32 = v28;

  sub_10001FF68(&unk_1000B2970);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100086110;
  v34 = [v5 topAnchor];
  v35 = *&v17[v1];
  if (!v35)
  {
    goto LABEL_24;
  }

  v36 = [v35 topAnchor];
  v37 = [v34 constraintEqualToAnchor:v36];

  *(v33 + 32) = v37;
  v38 = [v5 centerXAnchor];
  v39 = *&v17[v1];
  if (!v39)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v40 = v38;
  v41 = objc_opt_self();
  v42 = [v39 centerXAnchor];
  v43 = [v40 constraintEqualToAnchor:v42];

  *(v33 + 40) = v43;
  *(v33 + 48) = v51;
  *(v33 + 56) = v49;
  *(v33 + 64) = v32;
  sub_100032404(0, &qword_1000B4280);
  v52 = v51;
  v44 = v49;
  v45 = v32;
  isa = sub_10007E544().super.isa;

  [v41 activateConstraints:isa];

  v47 = *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_sharedTextContent];
  if (!v47)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v48 = v47;
  [v48 setHidden:1];
}

void *sub_10002F87C(void *a1, char a2)
{
  v4 = sub_10007DD94();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = [a1 url];
  if (v11)
  {
    v12 = v11;
    sub_10007DD24();

    (*(v5 + 32))(v10, v8, v4);
    sub_10007DD44();
    v13 = objc_allocWithZone(UIImage);
    v14 = sub_10007E404();

    v15 = [v13 initWithContentsOfFile:v14];

    if (v15)
    {
      v16 = sub_10002FAE0(v15);

      (*(v5 + 8))(v10, v4);
      goto LABEL_8;
    }

    (*(v5 + 8))(v10, v4);
  }

  v17 = [a1 image];
  if (v17)
  {
    v18 = v17;
    v16 = sub_10002FAE0(v17);
  }

  else
  {
    v16 = 0;
  }

LABEL_8:
  v19 = [objc_allocWithZone(UIImageView) initWithImage:v16];
  v20 = v19;
  if (v19)
  {
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    if (a2)
    {
      v21 = 2;
    }

    else
    {
      v21 = 1;
    }

    [v20 setContentMode:v21];
  }

  return v20;
}

uint64_t sub_10002FAE0(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 crl_isCompactWidth];

  if (v4)
  {
    v5 = 220.0;
    v6 = 326.0;
  }

  else
  {
    v7 = [objc_opt_self() crl_landscapePhoneUI];
    if (v7)
    {
      v6 = 326.0;
    }

    else
    {
      v6 = 624.0;
    }

    if (v7)
    {
      v5 = 220.0;
    }

    else
    {
      v5 = 360.0;
    }
  }

  [a1 size];
  if (v6 / v5 >= v8 / v9)
  {
    if (v8 / v9 < v6 / v5)
    {
      v6 = v8 * (v5 / v9);
    }
  }

  else
  {
    v5 = v9 * (v6 / v8);
  }

  v10 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v6, v5}];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v6;
  *(v11 + 32) = v5;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1000318F8;
  *(v12 + 24) = v11;
  v17[4] = sub_100031924;
  v17[5] = v12;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10002FD58;
  v17[3] = &unk_1000A8198;
  v13 = _Block_copy(v17);
  v14 = a1;

  v15 = [v10 imageWithActions:v13];

  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if ((v10 & 1) == 0)
  {
    return v15;
  }

  __break(1u);
  return result;
}

void sub_10002FD58(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

char *sub_10002FDA4(void *a1, int a2)
{
  v5 = sub_10007DD94();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v63 - v11;
  __chkstk_darwin(v10);
  v14 = v63 - v13;
  v15 = [a1 url];
  if (v15)
  {
    v63[1] = v2;
    LODWORD(v64) = a2;
    v65 = v9;
    v16 = v15;
    sub_10007DD24();

    v17 = *(v6 + 32);
    v66 = v5;
    v17(v14, v12, v5);
    sub_10007DD04(v18);
    v20 = v19;
    v21 = [objc_opt_self() assetWithURL:v19];

    v22 = [objc_allocWithZone(AVAssetImageGenerator) initWithAsset:v21];
    timescale = kCMTimeZero.timescale;
    flags = kCMTimeZero.flags;
    epoch = kCMTimeZero.epoch;
    v71.value = kCMTimeZero.value;
    v71.timescale = timescale;
    v71.flags = flags;
    v71.epoch = epoch;
    [v22 setRequestedTimeToleranceAfter:&v71];
    v71.value = kCMTimeZero.value;
    v71.timescale = timescale;
    v71.flags = flags;
    v71.epoch = epoch;
    [v22 setRequestedTimeToleranceBefore:&v71];
    [v22 setAppliesPreferredTrackTransform:1];
    isa = [v21 commonMetadata];
    if (!isa)
    {
      sub_100032404(0, &unk_1000B2950);
      sub_10007E554();
      isa = sub_10007E544().super.isa;
    }

    sub_100032404(0, &unk_1000B2950);
    v27 = sub_10007E554();
    if ([v21 crl_containsVideoTracks])
    {

      CMTimeMake(&v71, 0, 1);
      v70 = 0;
      v28 = [v22 copyCGImageAtTime:&v71 actualTime:0 error:&v70];
      v29 = v70;
      if (v28)
      {
        v30 = v28;
        v31 = objc_allocWithZone(UIImage);
        v32 = v29;
        v33 = [v31 initWithCGImage:v30];

        if (!v33)
        {
          goto LABEL_25;
        }

LABEL_16:

        v48 = sub_10002FAE0(v33);
        v34 = [objc_allocWithZone(UIImageView) initWithImage:v48];

        [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
        if (v64)
        {
          v49 = 2;
        }

        else
        {
          v49 = 1;
        }

        [v34 setContentMode:v49];

        v21 = v33;
        v50 = v66;
        goto LABEL_26;
      }

      v63[0] = v27;
      v51 = v70;
      sub_10007DC84();

      swift_willThrow();
      if (qword_1000B1C10 == -1)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    v35 = [objc_opt_self() metadataItemsFromArray:isa filteredByIdentifier:AVMetadataCommonIdentifierArtwork];

    v36 = sub_10007E554();
    if (v36 >> 62)
    {
      if (sub_10007E904())
      {
LABEL_11:
        if ((v36 & 0xC000000000000001) != 0)
        {
          v37 = sub_10007E844();
        }

        else
        {
          if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_30:
            swift_once();
LABEL_21:
            v64 = static OS_os_log.crlSharingExtension;
            sub_10001FF68(&qword_1000B43B0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1000860C0;
            swift_getErrorValue();
            v53 = Error.publicDescription.getter(v68, v69);
            v55 = v54;
            *(inited + 56) = &type metadata for String;
            v56 = sub_10003186C();
            *(inited + 64) = v56;
            *(inited + 32) = v53;
            *(inited + 40) = v55;
            swift_getErrorValue();
            v57 = Error.fullDescription.getter(v67);
            *(inited + 96) = &type metadata for String;
            *(inited + 104) = v56;
            *(inited + 72) = v57;
            *(inited + 80) = v58;
            v59 = sub_10007E624();
            sub_100069E88(v64, &_mh_execute_header, v59, "Error creating video thumbnail : %{public}@ <%@>", 48, 2, inited);

            swift_setDeallocating();
            sub_10001FF68(&qword_1000B2968);
            swift_arrayDestroy();
            v27 = v63[0];
            goto LABEL_25;
          }

          v37 = *(v36 + 32);
        }

        v38 = v37;

        v39 = [v38 dataValue];
        if (v39)
        {
          v40 = v39;
          v41 = sub_10007DDD4();
          v63[0] = v27;
          v42 = v41;
          v44 = v43;

          v45 = objc_allocWithZone(UIImage);
          v46 = sub_10007DDC4().super.isa;
          v33 = [v45 initWithData:v46];

          v47 = v42;
          v27 = v63[0];
          sub_100025ED8(v47, v44);

          if (v33)
          {
            goto LABEL_16;
          }
        }

        else
        {
        }

LABEL_25:
        v60 = v65;
        v50 = v66;
        (*(v6 + 16))(v65, v14, v66);
        v61 = objc_allocWithZone(type metadata accessor for CRLSEAudioPreviewView());
        v34 = sub_1000492FC(v27, v60, 220.0, 220.0);
LABEL_26:

        (*(v6 + 8))(v14, v50);
        return v34;
      }
    }

    else if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  return 0;
}

uint64_t sub_10003052C(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_10007E2E4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007E304();
  v11 = *(v10 - 8);
  result = __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_1000B1C10 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.crlSharingExtension;
    sub_10001FF68(&qword_1000B43B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000860C0;
    swift_getErrorValue();
    v17 = Error.publicDescription.getter(v34, v35);
    v19 = v18;
    *(inited + 56) = &type metadata for String;
    v20 = sub_10003186C();
    *(inited + 64) = v20;
    *(inited + 32) = v17;
    *(inited + 40) = v19;
    swift_getErrorValue();
    v21 = Error.fullDescription.getter(v33);
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v20;
    *(inited + 72) = v21;
    *(inited + 80) = v22;
    v23 = sub_10007E624();
    sub_100069E88(v15, &_mh_execute_header, v23, "Error loading link metadata: %{public}@ <%@>", 44, 2, inited);

    swift_setDeallocating();
    sub_10001FF68(&qword_1000B2968);
    return swift_arrayDestroy();
  }

  else if (a1)
  {
    v32 = result;
    sub_100032404(0, &qword_1000B29A8);
    v31 = v7;
    v24 = a1;
    v30 = sub_10007E694();
    v25 = swift_allocObject();
    *(v25 + 16) = a3;
    *(v25 + 24) = v24;
    aBlock[4] = sub_10003239C;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002B5CC;
    aBlock[3] = &unk_1000A8238;
    v26 = _Block_copy(aBlock);
    v27 = v24;
    v28 = a3;

    sub_10007E2F4();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000323AC();
    sub_10001FF68(&qword_1000B29B8);
    sub_100032780(&qword_1000B29C0, &qword_1000B29B8);
    sub_10007E794();
    v29 = v30;
    sub_10007E6A4();
    _Block_release(v26);

    (*(v31 + 8))(v9, v6);
    return (*(v11 + 8))(v14, v32);
  }

  return result;
}

void sub_100030994(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_100030A20(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001FF68(&qword_1000B2938);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-v6];
  v8 = sub_10001FF68(&qword_1000B2940);
  __chkstk_darwin(v8 - 8);
  v10 = &v19[-v9];
  sub_100033078(a1, &v19[-v9], type metadata accessor for CRLSEBoard);
  v11 = type metadata accessor for CRLSEBoard(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  sub_100026BA0(v10);
  sub_100031818();
  sub_10007E214();
  v12._rawValue = &off_1000A72C0;
  sub_10007E204(v12);
  sub_100026FD8();
  v19[15] = 0;
  sub_10007E1F4();

  v13 = *&v2[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_dataSource];
  if (v13)
  {
    v14 = v13;
    sub_10007E264();
  }

  (*(v5 + 8))(v7, v4);
  v15 = [v2 view];
  if (v15)
  {
    v16 = v15;
    [v15 setNeedsLayout];

    v17 = [v2 view];
    if (v17)
    {
      v18 = v17;
      [v17 layoutIfNeeded];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100030CA4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v33 - v9;
  v11 = sub_10001FF68(&qword_1000B2930);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  isa = sub_10007DF14().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:0];

  v18 = *(sub_100026FD8() + 2);

  if (v18 >= 2 && !sub_10007DF34())
  {
    v22 = sub_100026D44();
    v23 = sub_10005F498();

    v24 = OBJC_IVAR____TtC24FreeformSharingExtension12CRLSELibrary_allBoards;
    swift_beginAccess();
    sub_100023A78(v23 + v24, v16, &qword_1000B2930);
    v25 = *(v5 + 48);
    if (v25(v16, 1, v4))
    {

      v26 = v16;
    }

    else
    {
      v27 = *&v16[*(v4 + 20)];

      sub_100023AE0(v16, &qword_1000B2930);
      v28 = *(v27 + 16);

      if (!v28)
      {

        return;
      }

      sub_10006B308(v14);
      if (v25(v14, 1, v4) != 1)
      {
        sub_1000327C8(v14, v10, type metadata accessor for CRLSELibraryViewModelItemNode);
        sub_100033078(v10, v8, type metadata accessor for CRLSELibraryViewModelItemNode);
        v29 = objc_allocWithZone(type metadata accessor for CRLSEBoardPickerViewController());
        v30 = sub_100053BE8(v8);
        *&v30[OBJC_IVAR____TtC24FreeformSharingExtension30CRLSEBoardPickerViewController_delegate + 8] = &off_1000A8120;
        swift_unknownObjectWeakAssign();
        v31 = [v2 navigationController];
        if (v31)
        {
          v32 = v31;
          [v31 pushViewController:v30 animated:1];

          sub_100032830(v10, type metadata accessor for CRLSELibraryViewModelItemNode);
        }

        else
        {
          sub_100032830(v10, type metadata accessor for CRLSELibraryViewModelItemNode);
        }

        return;
      }

      v26 = v14;
    }

    sub_100023AE0(v26, &qword_1000B2930);
    return;
  }

  type metadata accessor for CRLSEiOSCreateBoardViewController();
  v33 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v33[OBJC_IVAR____TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController_delegate + 8] = &off_1000A8130;
  swift_unknownObjectWeakAssign();
  v19 = [v2 navigationController];
  if (v19)
  {
    v20 = v19;
    [v19 pushViewController:v33 animated:1];
  }

  v21 = v33;
}

id sub_100031228(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_selectedBoard;
  v7 = type metadata accessor for CRLSEBoard(0);
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  *&v3[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_importItems] = &_swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController____lazy_storage___extensionContextManager] = 0;
  *&v3[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_boardPickerContentSizeObservation] = 0;
  *&v3[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_scrollView] = 0;
  *&v3[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_boardPickerView] = 0;
  *&v3[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_sharedTextContent] = 0;
  *&v3[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_contentView] = 0;
  *&v3[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_activityIndicator] = 0;
  *&v3[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_boardPickerHeightContraint] = 0;
  *&v3[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_contentViewWidthConstraint] = 0;
  *&v3[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_contentViewHeightConstraint] = 0;
  *&v3[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_previewViewWidthConstraint] = 0;
  *&v3[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_previewViewHeightConstraint] = 0;
  *&v3[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_previewViewAspectRatioConstraint] = 0;
  *&v3[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_sharedTextConstraints] = &_swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_sharedTextConstraintsCompact] = &_swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_sharedTextConstraintsCompactLandscape] = &_swiftEmptyArrayStorage;
  v8 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_dateFormatter;
  type metadata accessor for CRLSEDateFormatter();
  v9 = swift_allocObject();
  v9[3] = 0;
  v9[4] = 0;
  v9[2] = 0;
  *&v3[v8] = v9;
  *&v3[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_dataSource] = 0;
  if (a2)
  {
    v10 = sub_10007E404();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for CRLSEMainViewController();
  v11 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", v10, a3);

  return v11;
}

id sub_100031484(void *a1)
{
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_selectedBoard;
  v4 = type metadata accessor for CRLSEBoard(0);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_importItems] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController____lazy_storage___extensionContextManager] = 0;
  *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_boardPickerContentSizeObservation] = 0;
  *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_scrollView] = 0;
  *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_boardPickerView] = 0;
  *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_sharedTextContent] = 0;
  *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_contentView] = 0;
  *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_activityIndicator] = 0;
  *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_boardPickerHeightContraint] = 0;
  *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_contentViewWidthConstraint] = 0;
  *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_contentViewHeightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_previewViewWidthConstraint] = 0;
  *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_previewViewHeightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_previewViewAspectRatioConstraint] = 0;
  *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_sharedTextConstraints] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_sharedTextConstraintsCompact] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_sharedTextConstraintsCompactLandscape] = &_swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_dateFormatter;
  type metadata accessor for CRLSEDateFormatter();
  v6 = swift_allocObject();
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = 0;
  *&v1[v5] = v6;
  *&v1[OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_dataSource] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CRLSEMainViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

void sub_10003167C()
{
  sub_100031758();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100031758()
{
  if (!qword_1000B2920)
  {
    type metadata accessor for CRLSEBoard(255);
    v0 = sub_10007E714();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B2920);
    }
  }
}

unint64_t sub_1000317C4()
{
  result = qword_1000B2928;
  if (!qword_1000B2928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2928);
  }

  return result;
}

unint64_t sub_100031818()
{
  result = qword_1000B2948;
  if (!qword_1000B2948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2948);
  }

  return result;
}

unint64_t sub_10003186C()
{
  result = qword_1000B2960;
  if (!qword_1000B2960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2960);
  }

  return result;
}

uint64_t sub_1000318C0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003194C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100031964(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100031A5C;

  return v6(a1);
}

uint64_t sub_100031A5C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100031B54(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007E7A4(*(v2 + 40));

  return sub_100031B98(a1, v4);
}

unint64_t sub_100031B98(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100032988(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10007E7B4();
      sub_1000328D0(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id sub_100031C60(void *a1)
{
  v2 = sub_10007DD94();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v9 = [a1 url];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  sub_10007DD24();

  (*(v3 + 32))(v8, v6, v2);
  v11 = objc_allocWithZone(LPLinkView);
  sub_10007DD04(v12);
  v14 = v13;
  v15 = [v11 initWithURL:v13];

  v16 = v15;
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 setAutoresizesSubviews:1];

  [v16 _setPreferredSizeClass:3];
  [v16 _setDisablePlayback:1];
  [v16 _setDisableLinkFollowing:1];
  [v16 _setDisableTapGesture:1];
  [v16 _setDisableAnimations:1];
  [v16 _setDisablePlayback:1];
  [v16 _setDisableAutoPlay:1];
  [v16 _setDisablePreviewGesture:1];
  [v16 _setDisableHighlightGesture:1];
  [v16 _setDisablePlaybackControls:1];
  v17 = [objc_allocWithZone(LPMetadataProvider) init];
  sub_10007DD04(v18);
  v20 = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  aBlock[4] = sub_100032354;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100030994;
  aBlock[3] = &unk_1000A81E8;
  v22 = _Block_copy(aBlock);
  v23 = v16;

  [v17 startFetchingMetadataForURL:v20 completionHandler:v22];
  _Block_release(v22);

  (*(v3 + 8))(v8, v2);
  return v23;
}

void *sub_100031FB8(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t (*a2)(unint64_t, unint64_t))
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v2 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v2)
  {
    v3 = 0;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v4 = &_swiftEmptyArrayStorage;
    v31 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v5 = &qword_1000B2998;
    v29 = v2;
    while (1)
    {
      if (v33)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_10007E844();
      }

      else
      {
        if (v3 >= *(v32 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v31 + 8 * v3);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v36 = v3 + 1;
      v7 = a2(v3, isUniquelyReferenced_nonNull_bridgeObject);

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = sub_10007E904();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v4 >> 62;
      if (v4 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_10007E904();
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v38 = v9;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v10)
        {
          goto LABEL_22;
        }

        v12 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (!v8)
          {
            goto LABEL_18;
          }

          goto LABEL_24;
        }
      }

      else if (v10)
      {
LABEL_22:
        sub_10007E904();
      }

      isUniquelyReferenced_nonNull_bridgeObject = sub_10007E854();
      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
      v13 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (!v8)
      {
LABEL_18:
        v15 = v7;
        v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }

        goto LABEL_4;
      }

LABEL_24:
      v15 = v7;
      v17 = v12;
      isUniquelyReferenced_nonNull_bridgeObject = sub_10007E904();
      v12 = v17;
      v16 = isUniquelyReferenced_nonNull_bridgeObject;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
LABEL_25:
        if (((v14 >> 1) - v13) < v38)
        {
          goto LABEL_42;
        }

        v35 = v4;
        v18 = v12 + 8 * v13 + 32;
        v30 = v12;
        if (v8)
        {
          if (v16 < 1)
          {
            goto LABEL_44;
          }

          sub_100032780(&qword_1000B29A0, v5);
          for (i = 0; i != v16; ++i)
          {
            sub_10001FF68(v5);
            v20 = sub_1000746EC(v37, i, v15);
            v22 = v5;
            v23 = *v21;
            (v20)(v37, 0);
            *(v18 + 8 * i) = v23;
            v5 = v22;
          }
        }

        else
        {
          sub_100032404(0, &qword_1000B4280);
          swift_arrayInitWithCopy();
        }

        v2 = v29;
        v4 = v35;
        if (v38 >= 1)
        {
          v24 = *(v30 + 16);
          v25 = __OFADD__(v24, v38);
          v26 = v24 + v38;
          if (v25)
          {
            goto LABEL_43;
          }

          *(v30 + 16) = v26;
        }

        goto LABEL_5;
      }

LABEL_4:

      if (v38 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v3 = v36;
      if (v36 == v2)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v2 = sub_10007E904();
    isUniquelyReferenced_nonNull_bridgeObject = v27;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_10003235C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000323AC()
{
  result = qword_1000B29B0;
  if (!qword_1000B29B0)
  {
    sub_10007E2E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B29B0);
  }

  return result;
}

uint64_t sub_100032404(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10003244C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003248C()
{
  v1 = sub_10001FF68(&qword_1000B29D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5, v3 | 7);
}

id sub_100032584(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *(sub_10001FF68(&qword_1000B29D0) - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return sub_10002D570(a1, a2, a3, v8, v9);
}

uint64_t sub_100032648()
{
  v1 = sub_10001FF68(&qword_1000B29D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000326DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10001FF68(&qword_1000B29D8);

  return sub_10002D96C(a1, a2, a3);
}

uint64_t sub_100032780(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10001FDB8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000327C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100032830(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100032890()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100032924(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000329E4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100032A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001FF68(&qword_1000B2940);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100032A9C()
{
  v1 = sub_10001FF68(&qword_1000B2940);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_selectedBoard;
  swift_beginAccess();
  sub_100023A78(v0 + v4, v3, &qword_1000B2940);
  v5 = type metadata accessor for CRLSEBoard(0);
  LODWORD(v4) = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_100023AE0(v3, &qword_1000B2940);
  if (v4 == 1)
  {
    type metadata accessor for CRLSEiOSCreateBoardViewController();
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    *&v6[OBJC_IVAR____TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController_delegate + 8] = &off_1000A8130;
    swift_unknownObjectWeakAssign();
    v7 = [v0 navigationController];
    if (v7)
    {
      v8 = v7;
      [v7 pushViewController:v6 animated:1];
    }
  }

  else
  {
    sub_10002BBC0();
  }
}

void sub_100032C34()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    aBlock[4] = sub_1000332D4;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002B5CC;
    aBlock[3] = &unk_1000A83C8;
    v4 = _Block_copy(aBlock);
    v5 = v0;

    [v3 dismissViewControllerAnimated:1 completion:v4];
    _Block_release(v4);
  }

  else
  {
    v6 = objc_allocWithZone(NSError);
    v7 = v0;
    v11 = [v6 initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    v8 = [v7 extensionContext];
    if (v8)
    {
      v9 = v8;
      v11 = v11;
      v10 = sub_10007DC74();

      [v9 cancelRequestWithError:v10];
    }

    else
    {
    }
  }
}

id sub_100032E2C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100032E7C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100032EC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032F84;

  return sub_10002A014(a1, v4, v5, v7, v6);
}

uint64_t sub_100032F84()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100033078(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000330E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100033118(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000332BC;

  return sub_100031964(a1, v4);
}

uint64_t sub_1000331D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100032F84;

  return sub_100031964(a1, v4);
}

void sub_1000334E0()
{
  v1 = v0;
  v45.receiver = v0;
  v45.super_class = type metadata accessor for CRLSEViewController();
  objc_msgSendSuper2(&v45, "viewDidLoad");
  type metadata accessor for CRLSEMainViewController();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_unknownObjectWeakAssign();
  v3 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v2];
  v4 = [objc_allocWithZone(UINavigationBarAppearance) init];
  [v4 configureWithDefaultBackground];
  v5 = [v3 navigationBar];
  [v5 setStandardAppearance:v4];

  v6 = [v3 navigationBar];
  [v6 setScrollEdgeAppearance:v4];

  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = v7;
  v9 = [objc_opt_self() systemGroupedBackgroundColor];
  [v8 setBackgroundColor:v9];

  v10 = v3;
  [v1 addChildViewController:v10];
  v11 = [v1 view];
  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v11;
  v13 = [v10 view];
  if (!v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = v13;
  [v12 addSubview:v13];

  [v10 didMoveToParentViewController:v1];
  v15 = [v10 view];

  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_10001FF68(&unk_1000B2970);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100086320;
  v17 = [v10 view];

  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = [v17 topAnchor];

  v19 = [v1 view];
  if (!v19)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v20 = v19;
  v21 = [v19 topAnchor];

  v22 = [v18 constraintEqualToAnchor:v21];
  *(v16 + 32) = v22;
  v23 = [v10 view];

  if (!v23)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v24 = [v23 leadingAnchor];

  v25 = [v1 view];
  if (!v25)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v25;
  v27 = [v25 leadingAnchor];

  v28 = [v24 constraintEqualToAnchor:v27];
  *(v16 + 40) = v28;
  v29 = [v10 view];

  if (!v29)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v30 = [v29 trailingAnchor];

  v31 = [v1 view];
  if (!v31)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v32 = v31;
  v33 = [v31 trailingAnchor];

  v34 = [v30 constraintEqualToAnchor:v33];
  *(v16 + 48) = v34;
  v35 = [v10 view];

  if (!v35)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v36 = [v35 bottomAnchor];

  v37 = [v1 view];
  if (!v37)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v38 = v37;
  v39 = objc_opt_self();
  v40 = [v38 bottomAnchor];

  v41 = [v36 constraintEqualToAnchor:v40];
  *(v16 + 56) = v41;
  sub_100033C48();
  isa = sub_10007E544().super.isa;

  [v39 activateConstraints:isa];

  if (qword_1000B1C10 != -1)
  {
    swift_once();
  }

  v43 = static OS_os_log.crlSharingExtension;
  v44 = sub_10007E614();
  sub_100069E88(v43, &_mh_execute_header, v44, "Sharing Extension view controller viewDidLoad", 45, 2, _swiftEmptyArrayStorage);
}

id sub_100033BF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLSEViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100033C48()
{
  result = qword_1000B4280;
  if (!qword_1000B4280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B4280);
  }

  return result;
}

void sub_100033E14()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_22;
  }

  v2 = v1;
  v67 = objc_opt_self();
  v3 = [v67 systemGroupedBackgroundColor];
  [v2 setBackgroundColor:v3];

  v4 = [v0 navigationItem];
  type metadata accessor for CRLSEExtensionContextManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass:ObjCClassFromMetadata];
  v8 = sub_10007E404();
  v9 = sub_10007E404();
  v10 = sub_10007E404();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  sub_10007E444();
  v12 = sub_10007E404();

  [v4 setTitle:v12];

  v13 = [v0 navigationItem];
  v14 = objc_allocWithZone(UIBarButtonItem);
  v15 = v0;
  v16 = [v14 initWithBarButtonSystemItem:1 target:v15 action:"cancel:"];
  [v13 setLeftBarButtonItem:v16];

  v17 = [v15 navigationItem];
  v18 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v15 action:"createBoardButtonAction:"];

  [v17 setRightBarButtonItem:v18];
  v19 = [objc_allocWithZone(UITextField) init];
  v20 = OBJC_IVAR____TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController_newBoardTextField;
  v21 = *&v15[OBJC_IVAR____TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController_newBoardTextField];
  *&v15[OBJC_IVAR____TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController_newBoardTextField] = v19;
  v22 = v19;

  if (!v22)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

  v23 = *&v15[v20];
  if (!v23)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v24 = v23;
  v25 = [v6 bundleForClass:ObjCClassFromMetadata];
  v26 = sub_10007E404();
  v27 = sub_10007E404();
  v28 = sub_10007E404();
  v29 = [v25 localizedStringForKey:v26 value:v27 table:v28];

  sub_10007E444();
  v30 = sub_10007E404();

  [v24 setPlaceholder:v30];

  v31 = *&v15[v20];
  if (!v31)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v31 setBorderStyle:3];
  v32 = *&v15[v20];
  if (!v32)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v32 setClearButtonMode:1];
  v33 = *&v15[v20];
  if (!v33)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v33 setAdjustsFontForContentSizeCategory:1];
  v34 = *&v15[v20];
  if (!v34)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v35 = objc_opt_self();
  v36 = v34;
  v37 = [v35 preferredFontForTextStyle:UIFontTextStyleBody];
  [v36 setFont:v37];

  v38 = *&v15[v20];
  if (!v38)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v39 = v38;
  v40 = [v67 tertiarySystemBackgroundColor];
  [v39 setBackgroundColor:v40];

  v41 = *&v15[v20];
  if (!v41)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v41 setDelegate:v15];
  v42 = [v15 view];
  if (!v42)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!*&v15[v20])
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v43 = v42;
  [v42 addSubview:?];

  sub_10001FF68(&unk_1000B2970);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_100086100;
  v45 = *&v15[v20];
  if (!v45)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v46 = [v45 leadingAnchor];
  v47 = [v15 view];
  if (!v47)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v48 = v47;
  v49 = [v47 safeAreaLayoutGuide];

  v50 = [v49 leadingAnchor];
  v51 = [v46 constraintEqualToAnchor:v50 constant:15.0];

  *(v44 + 32) = v51;
  v52 = *&v15[v20];
  if (!v52)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v53 = [v52 trailingAnchor];
  v54 = [v15 view];
  if (!v54)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v55 = v54;
  v56 = [v54 safeAreaLayoutGuide];

  v57 = [v56 trailingAnchor];
  v58 = [v53 constraintEqualToAnchor:v57 constant:-15.0];

  *(v44 + 40) = v58;
  v59 = *&v15[v20];
  if (!v59)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v60 = [v59 topAnchor];
  v61 = [v15 view];
  if (!v61)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v62 = v61;
  v63 = objc_opt_self();
  v64 = [v62 safeAreaLayoutGuide];

  v65 = [v64 topAnchor];
  v66 = [v60 constraintEqualToAnchor:v65 constant:32.0];

  *(v44 + 48) = v66;
  sub_100033C48();
  isa = sub_10007E544().super.isa;

  [v63 activateConstraints:isa];
}

void sub_100034658(char a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for CRLSEiOSCreateBoardViewController();
  objc_msgSendSuper2(&v12, "viewWillAppear:", a1 & 1);
  v3 = OBJC_IVAR____TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController_newBoardTextField;
  v4 = *&v1[OBJC_IVAR____TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController_newBoardTextField];
  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  [v4 becomeFirstResponder];
  v5 = [v1 navigationItem];
  v6 = [v5 rightBarButtonItem];

  if (!v6)
  {
    return;
  }

  v7 = *&v1[v3];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = [v7 text];
  if (v8)
  {
    v9 = v8;
    sub_10007E444();

    v10 = sub_10007E4A4();

    v11 = v10 > 0;
  }

  else
  {
    v11 = 0;
  }

  [v6 setEnabled:v11];
}

void sub_1000347C8(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CRLSEiOSCreateBoardViewController();
  objc_msgSendSuper2(&v10, "viewDidAppear:", a1 & 1);
  v3 = OBJC_IVAR____TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController_newBoardTextField;
  v4 = *&v1[OBJC_IVAR____TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController_newBoardTextField];
  if (v4)
  {
    v5 = v4;
    v6 = [v5 beginningOfDocument];
    v7 = *&v1[v3];
    if (v7)
    {
      v8 = [v7 endOfDocument];
      v9 = [v5 textRangeFromPosition:v6 toPosition:v8];

      [v5 setSelectedTextRange:v9];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100034AF8(void *a1)
{
  v2 = [a1 text];
  if (v2)
  {
    v3 = v2;
    v4 = sub_10007E444();
    v6 = v5;

    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
    v6 = 0xE000000000000000;
  }

  v8 = [v1 navigationItem];
  v10 = [v8 rightBarButtonItem];

  if (v10)
  {
    v9 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v9 = v7;
    }

    [v10 setEnabled:v9 != 0];
  }
}

id sub_100034C5C(unint64_t a1, const char *a2)
{
  v3 = v2;
  v6 = sub_10001FF68(&qword_1000B2940);
  __chkstk_darwin(v6 - 8);
  v8 = v22 - v7;
  v9 = type metadata accessor for CRLSEBoard(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v23 = v10;
    v13 = sub_100026D44();
    v22[1] = a1;
    v22[2] = a2;
    a1 = sub_10006035C(a1, a2);
    a2 = v14;
    swift_unknownObjectRelease();

    v10 = v23;
  }

  else
  {
  }

  result = [v3 view];
  if (result)
  {
    v16 = result;
    [result endEditing:1];

    v17 = type metadata accessor for CRLSEBoardIdentifier(0);
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
    v18 = *(v9 + 24);
    v19 = sub_10007DEB4();
    (*(*(v19 - 8) + 56))(&v12[v18], 1, 1, v19);
    v20 = &v12[*(v9 + 20)];
    *v20 = a1;
    v20[1] = a2;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100035734(v12, v8);
      (*(v10 + 56))(v8, 0, 1, v9);
      sub_100026BA0(v8);
      sub_10002BBC0();
      swift_unknownObjectRelease();
    }

    v21 = [v3 navigationController];

    return sub_100035798(v12);
  }

  else
  {
    __break(1u);
    __break(1u);
  }

  return result;
}

void sub_1000351B4()
{
  v1 = sub_10007E404();
  v2 = sub_10007E404();
  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  type metadata accessor for CRLSEExtensionContextManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v6 = sub_10007E404();
  v7 = sub_10007E404();
  v8 = sub_10007E404();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  sub_10007E444();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  v11 = v0;
  v12 = sub_10007E404();

  v15[4] = sub_1000356F0;
  v15[5] = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100035428;
  v15[3] = &unk_1000A8530;
  v13 = _Block_copy(v15);

  v14 = [objc_opt_self() actionWithTitle:v12 style:0 handler:v13];
  _Block_release(v13);

  [v3 addAction:v14];
  [v11 presentViewController:v3 animated:1 completion:0];
}

void sub_100035428(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_100035614()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLSEiOSCreateBoardViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000356B8()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000356F0()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController_newBoardTextField);
  if (result)
  {
    return [result becomeFirstResponder];
  }

  __break(1u);
  return result;
}

uint64_t sub_100035714(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100035734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLSEBoard(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100035798(uint64_t a1)
{
  v2 = type metadata accessor for CRLSEBoard(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000357F4(uint64_t a1)
{
  v2 = sub_10001FF68(&unk_1000B42A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000358B4()
{
  type metadata accessor for CRLBoardLibraryViewModel.Filter(319);
  if (v0 <= 0x3F)
  {
    sub_100035B14(319, &unk_1000B2C68, _s5BoardVMa);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_100035984(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001FF68(&unk_1000B3390);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 6)
  {
    return v5 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100035A10(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 5);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10001FF68(&unk_1000B3390);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100035AA0()
{
  sub_100035B14(319, &unk_1000B2D18, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_100035B14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100035B94(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for CRLFolderIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_10001FF68(&qword_1000B2D40);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_10007DE44();
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[8];
      goto LABEL_5;
    }

    v17 = sub_10001FF68(&qword_1000B2D48);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[14];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_100035D80(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for CRLFolderIdentifier(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_10001FF68(&qword_1000B2D40);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v16 = sub_10007DE44();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v17 = sub_10001FF68(&qword_1000B2D48);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[14];

  return v18(v19, a2, a2, v17);
}

void sub_100035F58()
{
  type metadata accessor for CRLFolderIdentifier(319);
  if (v0 <= 0x3F)
  {
    sub_100036070(319, &qword_1000B2DB8, type metadata accessor for CRLFolderIdentifier);
    if (v1 <= 0x3F)
    {
      sub_10007DE44();
      if (v2 <= 0x3F)
      {
        sub_100036070(319, &unk_1000B2DC0, _s5BoardV13ShareMetadataVMa);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100036070(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10007E714();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1000360D8()
{
  result = qword_1000B2E18;
  if (!qword_1000B2E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2E18);
  }

  return result;
}

uint64_t sub_10003612C(char a1)
{
  if (a1)
  {
    return 0x737265646C6F46;
  }

  v2 = [objc_opt_self() mainBundle];
  v3 = sub_10007E404();
  v4 = sub_10007E404();
  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  v6 = sub_10007E444();
  return v6;
}

uint64_t sub_100036210(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_10001FF68(&qword_1000B3018);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_10001FF68(&qword_1000B3020);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_10001FF68(&qword_1000B3028);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_100021160(a1, a1[3]);
  sub_10003D494();
  sub_10007EBE4();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_10003D4E8();
    sub_10007E9E4();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_10003D53C();
    sub_10007E9E4();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_1000364CC(uint64_t a1)
{
  v2 = sub_10003D494();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100036508(uint64_t a1)
{
  v2 = sub_10003D494();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100036544(uint64_t a1)
{
  v2 = sub_10003D53C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100036580(uint64_t a1)
{
  v2 = sub_10003D53C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000365BC(uint64_t a1)
{
  v2 = sub_10003D4E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000365F8(uint64_t a1)
{
  v2 = sub_10003D4E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100036644@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003CFD8(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_10003669C()
{
  result = qword_1000B2E20;
  if (!qword_1000B2E20)
  {
    sub_10001FDB8(&qword_1000B2E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2E20);
  }

  return result;
}

uint64_t sub_100036748()
{
  v1 = v0;
  v2 = _s5BoardVMa(0);
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003CA30(v1, v10, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10003C644(v10, v7, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v12 = sub_100036DAC();
      v13 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      v14 = v7;
    }

    else
    {
      sub_10003C644(v10, v4, _s5BoardVMa);
      v12 = *&v4[*(v2 + 24)];

      v13 = _s5BoardVMa;
      v14 = v4;
    }

    sub_10003C5E4(v14, v13);
  }

  else if (*v10)
  {
    return 0x737265646C6F46;
  }

  else
  {
    v16 = [objc_opt_self() mainBundle];
    v17 = sub_10007E404();
    v18 = sub_10007E404();
    v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

    v12 = sub_10007E444();
  }

  return v12;
}

void sub_1000369F8()
{
  v1 = v0;
  v2 = _s5BoardVMa(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v14 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003CA30(v1, v16, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_10007EB14(*v16);
    return;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_10003C644(v16, v13, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_10003CA30(v13, v11, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v18 = sub_10001FF68(&unk_1000B3390);
    v19 = (*(*(v18 - 8) + 48))(v11, 5, v18);
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = 2;
      }

      else if (v19 == 4)
      {
        v20 = 3;
      }

      else
      {
        v20 = 4;
      }
    }

    else
    {
      if (!v19)
      {
        sub_10003C644(v11, v7, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        sub_10007EB14(5uLL);
        sub_10003A6BC();
        sub_10003C5E4(v7, type metadata accessor for CRLBoardLibraryViewModel.Folder);
LABEL_15:
        v21 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
        v22 = v13;
        goto LABEL_16;
      }

      v20 = v19 != 1;
    }

    sub_10007EB14(v20);
    goto LABEL_15;
  }

  sub_10003C644(v16, v4, _s5BoardVMa);
  sub_10007DEB4();
  sub_10003B9D0(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  sub_10007E494();
  v21 = _s5BoardVMa;
  v22 = v4;
LABEL_16:
  sub_10003C5E4(v22, v21);
}

uint64_t sub_100036DAC()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003CA30(v1, v7, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v8 = sub_10001FF68(&unk_1000B3390);
  v9 = (*(*(v8 - 8) + 48))(v7, 5, v8);
  if (v9 > 2)
  {
    if (v9 != 3 && v9 != 4)
    {
      v16 = [objc_opt_self() mainBundle];
      v17 = sub_10007E404();
      v18 = sub_10007E404();
      v14 = [v16 localizedStringForKey:v17 value:v18 table:0];

      goto LABEL_9;
    }

LABEL_3:
    v10 = [objc_opt_self() mainBundle];
    v11 = sub_10007E404();
    v12 = sub_10007E404();
    v14 = [v10 localizedStringForKey:v11 value:v12 table:0];

LABEL_9:
    v13 = sub_10007E444();

    return v13;
  }

  if (v9)
  {
    goto LABEL_3;
  }

  sub_10003C644(v7, v4, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  v13 = *&v4[*(v2 + 24)];

  sub_10003C5E4(v4, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  return v13;
}

uint64_t sub_1000371EC()
{
  v1 = _s5BoardVMa(0);
  __chkstk_darwin(v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  sub_10003CA30(v0, &v22 - v11, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_10003C644(v12, v3, _s5BoardVMa);
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_10007E804(25);

      v22 = 0x203A6472616F42;
      v23 = 0xE700000000000000;
      sub_10007E4C4(*&v3[*(v1 + 24)]);
      v25._countAndFlagsBits = 0x69746E656469202CLL;
      v25._object = 0xEE00203A72656966;
      sub_10007E4C4(v25);
      v26._countAndFlagsBits = sub_100042544();
      sub_10007E4C4(v26);

      v17 = v22;
      v18 = _s5BoardVMa;
      v19 = v3;
LABEL_11:
      sub_10003C5E4(v19, v18);
      return v17;
    }

    sub_10003CA30(v0, v10, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10003C644(v10, v6, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v14 = sub_10001FF68(&unk_1000B3390);
      if (!(*(*(v14 - 8) + 48))(v6, 5, v14))
      {
        sub_10003C5E4(v6, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v20 = 1684827974;
        goto LABEL_10;
      }

      v15 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      v16 = v6;
    }

    else
    {
      v15 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      v16 = v10;
    }

    sub_10003C5E4(v16, v15);
    v20 = 1953261894;
LABEL_10:
    v22 = v20 | 0x203A726500000000;
    v23 = 0xE800000000000000;
    v27._countAndFlagsBits = sub_100036748();
    sub_10007E4C4(v27);

    v17 = v22;
    v18 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    v19 = v12;
    goto LABEL_11;
  }

  v22 = 0x3A7972617262694CLL;
  v23 = 0xE900000000000020;
  v24._countAndFlagsBits = sub_100036748();
  sub_10007E4C4(v24);

  return v22;
}

uint64_t sub_1000375B4(void *a1)
{
  v2 = sub_10001FF68(&qword_1000B2EC0);
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v36 = &v29 - v3;
  v34 = _s5BoardVMa(0);
  __chkstk_darwin(v34);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001FF68(&qword_1000B2EC8);
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v31 = &v29 - v6;
  v30 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v30);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001FF68(&qword_1000B2ED0);
  v29 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10001FF68(&qword_1000B2ED8);
  v40 = *(v15 - 8);
  v41 = v15;
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  sub_100021160(a1, a1[3]);
  sub_10003CA98();
  sub_10007EBE4();
  sub_10003CA30(v39, v14, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10003C644(v14, v8, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v44 = 1;
      sub_10003CB40();
      v19 = v31;
      v20 = v41;
      sub_10007E9E4();
      sub_10003B9D0(&qword_1000B2EE8, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v21 = v33;
      sub_10007EA54();
      (*(v32 + 8))(v19, v21);
      v22 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      v23 = v8;
    }

    else
    {
      v25 = v35;
      sub_10003C644(v14, v35, _s5BoardVMa);
      v45 = 2;
      sub_10003CAEC();
      v26 = v36;
      v20 = v41;
      sub_10007E9E4();
      sub_10003B9D0(&qword_1000B2EE0, _s5BoardVMa);
      v27 = v38;
      sub_10007EA54();
      (*(v37 + 8))(v26, v27);
      v22 = _s5BoardVMa;
      v23 = v25;
    }

    sub_10003C5E4(v23, v22);
  }

  else
  {
    v24 = *v14;
    v43 = 0;
    sub_10003CB94();
    v20 = v41;
    sub_10007E9E4();
    v42 = v24;
    sub_10003CC3C();
    sub_10007EA54();
    (*(v29 + 8))(v11, v9);
  }

  return (*(v40 + 8))(v17, v20);
}

uint64_t sub_100037BCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v58 = sub_10001FF68(&qword_1000B2E68);
  v60 = *(v58 - 8);
  __chkstk_darwin(v58);
  v65 = &v51 - v3;
  v57 = sub_10001FF68(&qword_1000B2E70);
  v59 = *(v57 - 8);
  __chkstk_darwin(v57);
  v64 = &v51 - v4;
  v62 = sub_10001FF68(&qword_1000B2E78);
  v56 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v51 - v5;
  v63 = sub_10001FF68(&qword_1000B2E80);
  v67 = *(v63 - 8);
  __chkstk_darwin(v63);
  v7 = &v51 - v6;
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v51 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v51 - v16;
  __chkstk_darwin(v15);
  v19 = &v51 - v18;
  v20 = a1[3];
  v69 = a1;
  sub_100021160(a1, v20);
  sub_10003CA98();
  v21 = v68;
  sub_10007EBD4();
  if (!v21)
  {
    v51 = v17;
    v52 = v14;
    v22 = v61;
    v23 = v62;
    v53 = v11;
    v54 = v19;
    v24 = v64;
    v25 = v65;
    v55 = 0;
    v68 = v8;
    v26 = v66;
    v27 = v63;
    v28 = sub_10007E9D4();
    v29 = (2 * *(v28 + 16)) | 1;
    v70 = v28;
    v71 = v28 + 32;
    v72 = 0;
    v73 = v29;
    v30 = sub_100021610();
    v31 = v27;
    if (v30 == 3 || v72 != v73 >> 1)
    {
      v38 = sub_10007E874();
      swift_allocError();
      v40 = v39;
      sub_10001FF68(&qword_1000B2318);
      *v40 = v68;
      v33 = v31;
      sub_10007E954();
      sub_10007E864();
      (*(*(v38 - 8) + 104))(v40, enum case for DecodingError.typeMismatch(_:), v38);
      swift_willThrow();
    }

    else
    {
      if (!v30)
      {
        v74 = 0;
        sub_10003CB94();
        v42 = v55;
        sub_10007E944();
        if (!v42)
        {
          sub_10003CBE8();
          sub_10007E9C4();
          (*(v56 + 8))(v22, v23);
          (*(v67 + 8))(v7, v27);
          swift_unknownObjectRelease();
          v48 = v51;
          *v51 = v74;
          swift_storeEnumTagMultiPayload();
          v49 = v54;
          sub_10003C644(v48, v54, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v35 = v26;
LABEL_18:
          sub_10003C644(v49, v35, type metadata accessor for CRLBoardLibraryViewModel.Item);
          return sub_1000211F8(v69);
        }

        (*(v67 + 8))(v7, v27);
        goto LABEL_10;
      }

      if (v30 == 1)
      {
        v74 = 1;
        sub_10003CB40();
        v32 = v24;
        v33 = v31;
        v34 = v55;
        sub_10007E944();
        if (!v34)
        {
          v35 = v26;
          type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
          sub_10003B9D0(&qword_1000B2EA8, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          v36 = v52;
          v37 = v57;
          sub_10007E9C4();
          (*(v59 + 8))(v32, v37);
          (*(v67 + 8))(v7, v31);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v50 = v36;
LABEL_17:
          v49 = v54;
          sub_10003C644(v50, v54, type metadata accessor for CRLBoardLibraryViewModel.Item);
          goto LABEL_18;
        }
      }

      else
      {
        v74 = 2;
        sub_10003CAEC();
        v43 = v25;
        v33 = v27;
        v44 = v55;
        sub_10007E944();
        if (!v44)
        {
          v35 = v26;
          _s5BoardVMa(0);
          sub_10003B9D0(&qword_1000B2E98, _s5BoardVMa);
          v45 = v53;
          v46 = v58;
          sub_10007E9C4();
          v47 = v67;
          (*(v60 + 8))(v43, v46);
          (*(v47 + 8))(v7, v33);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v50 = v45;
          goto LABEL_17;
        }
      }
    }

    (*(v67 + 8))(v7, v33);
LABEL_10:
    swift_unknownObjectRelease();
  }

  return sub_1000211F8(v69);
}

uint64_t sub_100038474(uint64_t a1)
{
  v2 = sub_10003CAEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000384B0(uint64_t a1)
{
  v2 = sub_10003CAEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000384EC()
{
  v1 = 0x7265746C6966;
  if (*v0 != 1)
  {
    v1 = 0x6472616F62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7972617262696CLL;
  }
}

uint64_t sub_100038540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003E4D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100038568(uint64_t a1)
{
  v2 = sub_10003CA98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000385A4(uint64_t a1)
{
  v2 = sub_10003CA98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000385E0(uint64_t a1)
{
  v2 = sub_10003CB40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003861C(uint64_t a1)
{
  v2 = sub_10003CB40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100038658(uint64_t a1)
{
  v2 = sub_10003CB94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100038694(uint64_t a1)
{
  v2 = sub_10003CB94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003873C(uint64_t a1)
{
  v2 = sub_10003CE88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100038778(uint64_t a1)
{
  v2 = sub_10003CE88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000387B4(uint64_t a1)
{
  v2 = sub_10003CC90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000387F0(uint64_t a1)
{
  v2 = sub_10003CC90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003882C(uint64_t a1)
{
  v2 = sub_10003CDE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100038868(uint64_t a1)
{
  v2 = sub_10003CDE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000388A4(uint64_t a1)
{
  v2 = sub_10003CCE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000388E0(uint64_t a1)
{
  v2 = sub_10003CCE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003891C(uint64_t a1)
{
  v2 = sub_10003CD38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100038958(uint64_t a1)
{
  v2 = sub_10003CD38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100038994(uint64_t a1)
{
  v2 = sub_10003CE34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000389D0(uint64_t a1)
{
  v2 = sub_10003CE34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100038A0C(uint64_t a1)
{
  v2 = sub_10003CD8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100038A48(uint64_t a1)
{
  v2 = sub_10003CD8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100038A88(void *a1)
{
  v2 = sub_10001FF68(&qword_1000B2F70);
  v51 = *(v2 - 8);
  v52 = v2;
  __chkstk_darwin(v2);
  v50 = &v36 - v3;
  v48 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v48);
  v49 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001FF68(&qword_1000B2F78);
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v45 = &v36 - v6;
  v7 = sub_10001FF68(&qword_1000B2F80);
  v43 = *(v7 - 8);
  v44 = v7;
  __chkstk_darwin(v7);
  v42 = &v36 - v8;
  v9 = sub_10001FF68(&qword_1000B2F88);
  v40 = *(v9 - 8);
  v41 = v9;
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v12 = sub_10001FF68(&qword_1000B2F90);
  v38 = *(v12 - 8);
  v39 = v12;
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  v15 = sub_10001FF68(&qword_1000B2F98);
  v37 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  v18 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10001FF68(&qword_1000B2FA0);
  v53 = *(v21 - 8);
  v54 = v21;
  __chkstk_darwin(v21);
  v23 = &v36 - v22;
  sub_100021160(a1, a1[3]);
  sub_10003CC90();
  sub_10007EBE4();
  sub_10003CA30(v55, v20, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v24 = sub_10001FF68(&unk_1000B3390);
  v25 = (*(*(v24 - 8) + 48))(v20, 5, v24);
  if (v25 <= 2)
  {
    if (v25)
    {
      if (v25 == 1)
      {
        v56 = 0;
        sub_10003CE88();
        v26 = v54;
        sub_10007E9E4();
        (*(v37 + 8))(v17, v15);
        return (*(v53 + 8))(v23, v26);
      }

      v57 = 1;
      sub_10003CE34();
      v35 = v54;
      sub_10007E9E4();
      (*(v38 + 8))(v14, v39);
      return (*(v53 + 8))(v23, v35);
    }

    v32 = v49;
    sub_10003C644(v20, v49, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v61 = 5;
    sub_10003CCE4();
    v33 = v50;
    v29 = v54;
    sub_10007E9E4();
    sub_10003B9D0(&qword_1000B2FA8, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v34 = v52;
    sub_10007EA54();
    (*(v51 + 8))(v33, v34);
    sub_10003C5E4(v32, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    return (*(v53 + 8))(v23, v29);
  }

  if (v25 != 3)
  {
    if (v25 == 4)
    {
      v59 = 3;
      sub_10003CD8C();
      v28 = v42;
      v29 = v54;
      sub_10007E9E4();
      v31 = v43;
      v30 = v44;
    }

    else
    {
      v60 = 4;
      sub_10003CD38();
      v28 = v45;
      v29 = v54;
      sub_10007E9E4();
      v31 = v46;
      v30 = v47;
    }

    (*(v31 + 8))(v28, v30);
    return (*(v53 + 8))(v23, v29);
  }

  v58 = 2;
  sub_10003CDE0();
  v35 = v54;
  sub_10007E9E4();
  (*(v40 + 8))(v11, v41);
  return (*(v53 + 8))(v23, v35);
}

void sub_100039258()
{
  v1 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003CA30(v0, v6, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v7 = sub_10001FF68(&unk_1000B3390);
  v8 = (*(*(v7 - 8) + 48))(v6, 5, v7);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v9 = 2;
    }

    else if (v8 == 4)
    {
      v9 = 3;
    }

    else
    {
      v9 = 4;
    }
  }

  else
  {
    if (!v8)
    {
      sub_10003C644(v6, v3, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      sub_10007EB14(5uLL);
      sub_10003A6BC();
      sub_10003C5E4(v3, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      return;
    }

    v9 = v8 != 1;
  }

  sub_10007EB14(v9);
}

uint64_t sub_100039418@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = sub_10001FF68(&qword_1000B2EF8);
  v72 = *(v3 - 8);
  v73 = v3;
  __chkstk_darwin(v3);
  v77 = &v58 - v4;
  v5 = sub_10001FF68(&qword_1000B2F00);
  v70 = *(v5 - 8);
  v71 = v5;
  __chkstk_darwin(v5);
  v76 = &v58 - v6;
  v7 = sub_10001FF68(&qword_1000B2F08);
  v68 = *(v7 - 8);
  v69 = v7;
  __chkstk_darwin(v7);
  v79 = &v58 - v8;
  v9 = sub_10001FF68(&qword_1000B2F10);
  v66 = *(v9 - 8);
  v67 = v9;
  __chkstk_darwin(v9);
  v75 = &v58 - v10;
  v65 = sub_10001FF68(&qword_1000B2F18);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v74 = &v58 - v11;
  v62 = sub_10001FF68(&qword_1000B2F20);
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v13 = &v58 - v12;
  v14 = sub_10001FF68(&qword_1000B2F28);
  v78 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v58 - v15;
  v17 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v18 = __chkstk_darwin(v17);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v58 - v21;
  v23 = a1[3];
  v82 = a1;
  sub_100021160(a1, v23);
  sub_10003CC90();
  v24 = v81;
  sub_10007EBD4();
  if (!v24)
  {
    v60 = v13;
    v59 = v20;
    v26 = v78;
    v25 = v79;
    v81 = 0;
    v61 = v22;
    v27 = v80;
    v28 = sub_10007E9D4();
    v29 = (2 * *(v28 + 16)) | 1;
    v83 = v28;
    v84 = v28 + 32;
    v85 = 0;
    v86 = v29;
    v30 = sub_100025BD4();
    if (v30 == 6 || v85 != v86 >> 1)
    {
      v39 = sub_10007E874();
      swift_allocError();
      v41 = v40;
      sub_10001FF68(&qword_1000B2318);
      *v41 = v17;
      sub_10007E954();
      sub_10007E864();
      (*(*(v39 - 8) + 104))(v41, enum case for DecodingError.typeMismatch(_:), v39);
      swift_willThrow();
      (*(v26 + 8))(v16, v14);
    }

    else
    {
      if (v30 <= 2u)
      {
        v31 = v14;
        v32 = v27;
        v33 = v26;
        v34 = v16;
        if (v30)
        {
          v35 = v81;
          if (v30 == 1)
          {
            v87 = 1;
            sub_10003CE34();
            v36 = v74;
            sub_10007E944();
            if (!v35)
            {
              (*(v64 + 8))(v36, v65);
              (*(v33 + 8))(v34, v31);
              swift_unknownObjectRelease();
              v37 = sub_10001FF68(&unk_1000B3390);
              v38 = v61;
              (*(*(v37 - 8) + 56))(v61, 2, 5, v37);
LABEL_27:
              sub_10003C644(v38, v32, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              return sub_1000211F8(v82);
            }
          }

          else
          {
            v87 = 2;
            sub_10003CDE0();
            v51 = v75;
            sub_10007E944();
            if (!v35)
            {
              (*(v66 + 8))(v51, v67);
              (*(v33 + 8))(v34, v31);
              swift_unknownObjectRelease();
              v54 = sub_10001FF68(&unk_1000B3390);
              v38 = v61;
              (*(*(v54 - 8) + 56))(v61, 3, 5, v54);
              goto LABEL_27;
            }
          }
        }

        else
        {
          v87 = 0;
          sub_10003CE88();
          v46 = v60;
          v47 = v81;
          sub_10007E944();
          if (!v47)
          {
            (*(v63 + 8))(v46, v62);
            (*(v26 + 8))(v34, v31);
            swift_unknownObjectRelease();
            v48 = sub_10001FF68(&unk_1000B3390);
            v38 = v61;
            (*(*(v48 - 8) + 56))(v61, 1, 5, v48);
            goto LABEL_27;
          }
        }

        (*(v33 + 8))(v34, v31);
        goto LABEL_10;
      }

      if (v30 == 3)
      {
        v87 = 3;
        sub_10003CD8C();
        v49 = v81;
        sub_10007E944();
        if (!v49)
        {
          (*(v68 + 8))(v25, v69);
          (*(v26 + 8))(v16, v14);
          swift_unknownObjectRelease();
          v50 = sub_10001FF68(&unk_1000B3390);
          v38 = v61;
          (*(*(v50 - 8) + 56))(v61, 4, 5, v50);
          goto LABEL_20;
        }
      }

      else
      {
        v43 = v81;
        if (v30 == 4)
        {
          v87 = 4;
          sub_10003CD38();
          v44 = v76;
          sub_10007E944();
          if (!v43)
          {
            (*(v70 + 8))(v44, v71);
            (*(v26 + 8))(v16, v14);
            swift_unknownObjectRelease();
            v45 = sub_10001FF68(&unk_1000B3390);
            v38 = v61;
            (*(*(v45 - 8) + 56))(v61, 5, 5, v45);
LABEL_20:
            v32 = v27;
            goto LABEL_27;
          }
        }

        else
        {
          v87 = 5;
          sub_10003CCE4();
          v52 = v77;
          sub_10007E944();
          if (!v43)
          {
            type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
            sub_10003B9D0(&qword_1000B2F40, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            v53 = v73;
            sub_10007E9C4();
            (*(v72 + 8))(v52, v53);
            (*(v26 + 8))(v16, v14);
            swift_unknownObjectRelease();
            v55 = sub_10001FF68(&unk_1000B3390);
            v56 = v59;
            (*(*(v55 - 8) + 56))(v59, 0, 5, v55);
            v57 = v56;
            v38 = v61;
            sub_10003C644(v57, v61, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            goto LABEL_20;
          }
        }
      }

      (*(v26 + 8))(v16, v14);
    }

LABEL_10:
    swift_unknownObjectRelease();
  }

  return sub_1000211F8(v82);
}

unint64_t sub_10003A060(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v1 = 0x656C746974;
    v6 = 0x6E6F697469736F70;
    if (a1 != 3)
    {
      v6 = 0x6E6F697461657263;
    }

    if (a1 != 2)
    {
      v1 = v6;
    }

    v3 = 0xD000000000000010;
    if (a1)
    {
      v3 = 0xD000000000000016;
    }

    v5 = a1 <= 1u;
  }

  else
  {
    v1 = 0x7473626D6F547369;
    v2 = 0x707075736E557369;
    if (a1 != 9)
    {
      v2 = 0x74654D6572616873;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x7974697669746361;
    v4 = 0x6C68676948736168;
    if (a1 != 6)
    {
      v4 = 0x617469766E497369;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    v5 = a1 <= 7u;
  }

  if (v5)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10003A1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003E5E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003A230(uint64_t a1)
{
  v2 = sub_10003CEDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003A26C(uint64_t a1)
{
  v2 = sub_10003CEDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003A2A8(void *a1)
{
  v3 = v1;
  v5 = sub_10001FF68(&qword_1000B2FD0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100021160(a1, a1[3]);
  sub_10003CEDC();
  sub_10007EBE4();
  LOBYTE(v12) = 0;
  type metadata accessor for CRLFolderIdentifier(0);
  sub_10003B9D0(&qword_1000B2508, type metadata accessor for CRLFolderIdentifier);
  sub_10007EA54();
  if (!v2)
  {
    v9 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    LOBYTE(v12) = 1;
    sub_10007EA04();
    LOBYTE(v12) = 2;
    sub_10007EA24();
    v12 = *(v3 + *(v9 + 28));
    v11[15] = 3;
    sub_10003CF84();
    sub_10007EA54();
    LOBYTE(v12) = 4;
    sub_10007DE44();
    sub_10003B9D0(&qword_1000B2398, &type metadata accessor for Date);
    sub_10007EA54();
    LOBYTE(v12) = 5;
    sub_10007EA54();
    LOBYTE(v12) = 6;
    sub_10007EA34();
    LOBYTE(v12) = 7;
    sub_10007EA34();
    LOBYTE(v12) = 8;
    sub_10007EA34();
    LOBYTE(v12) = 9;
    sub_10007EA34();
    LOBYTE(v12) = 10;
    _s5BoardV13ShareMetadataVMa(0);
    sub_10003B9D0(&qword_1000B2FE0, _s5BoardV13ShareMetadataVMa);
    sub_10007EA04();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10003A6BC()
{
  v1 = sub_10007DD94();
  v41 = *(v1 - 8);
  v42 = v1;
  __chkstk_darwin(v1);
  v37 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10001FF68(&qword_1000B2980);
  __chkstk_darwin(v3 - 8);
  v39 = &v37 - v4;
  v5 = _s5BoardV13ShareMetadataVMa(0);
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001FF68(&qword_1000B2D48);
  __chkstk_darwin(v7 - 8);
  v45 = &v37 - v8;
  v9 = type metadata accessor for CRLDisjointPosition.Element();
  v10 = *(v9 - 8);
  v43 = v9;
  v44 = v10;
  __chkstk_darwin(v9);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for CRLFolderIdentifier(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v38 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10001FF68(&qword_1000B2D40);
  __chkstk_darwin(v16 - 8);
  v18 = &v37 - v17;
  sub_10007DEB4();
  sub_10003B9D0(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();
  type metadata accessor for CRLFolderIdentifierStorage(0);
  sub_10007E494();
  v19 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v20 = v19[5];
  v48 = v0;
  sub_100023A78(v0 + v20, v18, &qword_1000B2D40);
  if ((*(v14 + 48))(v18, 1, v13) == 1)
  {
    sub_10007EB24(0);
  }

  else
  {
    v21 = v38;
    sub_10003C644(v18, v38, type metadata accessor for CRLFolderIdentifier);
    sub_10007EB24(1u);
    sub_10007E3D4();
    sub_10007E494();
    sub_10003C5E4(v21, type metadata accessor for CRLFolderIdentifier);
  }

  v22 = v48;
  sub_10007E494();
  v23 = *(v22 + v19[7]);
  sub_10007EB14(*(v23 + 16));
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = v23 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    v26 = *(v44 + 72);
    do
    {
      sub_10003CA30(v25, v12, type metadata accessor for CRLDisjointPosition.Element);
      sub_10007EB14(*v12);
      sub_10007E3D4();
      sub_10003C5E4(v12, type metadata accessor for CRLDisjointPosition.Element);
      v25 += v26;
      --v24;
    }

    while (v24);
  }

  sub_10007DE44();
  sub_10003B9D0(&qword_1000B2E58, &type metadata accessor for Date);
  v27 = v48;
  sub_10007E3D4();
  sub_10007E3D4();
  sub_10007EB24(*(v27 + v19[10]));
  sub_10007EB24(*(v27 + v19[11]));
  sub_10007EB24(*(v27 + v19[12]));
  sub_10007EB24(*(v27 + v19[13]));
  v28 = v45;
  sub_100023A78(v27 + v19[14], v45, &qword_1000B2D48);
  v29 = v47;
  if ((*(v46 + 48))(v28, 1, v47) == 1)
  {
    sub_10007EB24(0);
  }

  else
  {
    v30 = v40;
    sub_10003C644(v28, v40, _s5BoardV13ShareMetadataVMa);
    sub_10007EB24(1u);
    sub_10007EB24(*v30);
    v31 = v39;
    sub_100023A78(&v30[v29[5]], v39, &qword_1000B2980);
    v33 = v41;
    v32 = v42;
    if ((*(v41 + 48))(v31, 1, v42) == 1)
    {
      sub_10007EB24(0);
    }

    else
    {
      v34 = v37;
      (*(v33 + 32))(v37, v31, v32);
      sub_10007EB24(1u);
      sub_10003B9D0(&qword_1000B2E60, &type metadata accessor for URL);
      sub_10007E3D4();
      (*(v33 + 8))(v34, v32);
    }

    sub_10007E494();
    sub_10007EB14(*&v30[v29[7]]);
    v35 = &v30[v29[8]];
    v36 = *(v35 + 1);
    v49 = *v35;
    v50 = v36;
    v51 = *(v35 + 2);
    v52 = v35[48];
    sub_10004E924();
    sub_10003C5E4(v30, _s5BoardV13ShareMetadataVMa);
  }
}

uint64_t sub_10003AE70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_10001FF68(&qword_1000B2D48);
  __chkstk_darwin(v3 - 8);
  v44 = v41 - v4;
  v5 = sub_10007DE44();
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  v7 = __chkstk_darwin(v5);
  v45 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v46 = v41 - v9;
  v10 = sub_10001FF68(&qword_1000B2D40);
  __chkstk_darwin(v10 - 8);
  v49 = v41 - v11;
  v12 = type metadata accessor for CRLFolderIdentifier(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v50 = (v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_10001FF68(&qword_1000B2FB0);
  v51 = *(v15 - 8);
  v52 = v15;
  __chkstk_darwin(v15);
  v17 = v41 - v16;
  v18 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v19 = __chkstk_darwin(v18);
  v21 = v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v19 + 20);
  v23 = *(v13 + 56);
  v53 = v12;
  v23(&v21[v22], 1, 1, v12);
  v24 = *(v18 + 56);
  v25 = _s5BoardV13ShareMetadataVMa(0);
  v26 = *(*(v25 - 8) + 56);
  v56 = v24;
  v26(&v21[v24], 1, 1, v25);
  sub_100021160(a1, a1[3]);
  sub_10003CEDC();
  v54 = v17;
  v27 = v55;
  sub_10007EBD4();
  if (v27)
  {
    sub_1000211F8(a1);
    sub_100023AE0(&v21[v22], &qword_1000B2D40);
    return sub_100023AE0(&v21[v56], &qword_1000B2D48);
  }

  else
  {
    v28 = v49;
    v41[1] = v25;
    v42 = v18;
    v55 = v22;
    v29 = a1;
    LOBYTE(v58) = 0;
    sub_10003B9D0(&qword_1000B24F8, type metadata accessor for CRLFolderIdentifier);
    v30 = v50;
    sub_10007E9C4();
    sub_10003C644(v30, v21, type metadata accessor for CRLFolderIdentifier);
    LOBYTE(v58) = 1;
    sub_10007E974();
    sub_100023A10(v28, &v21[v55], &qword_1000B2D40);
    LOBYTE(v58) = 2;
    v31 = sub_10007E994();
    v32 = v48;
    v33 = v42;
    v34 = &v21[v42[6]];
    *v34 = v31;
    v34[1] = v35;
    v57 = 3;
    sub_10003CF30();
    sub_10007E9C4();
    *&v21[v33[7]] = v58;
    LOBYTE(v58) = 4;
    v36 = sub_10003B9D0(&qword_1000B2330, &type metadata accessor for Date);
    v37 = v46;
    v38 = v47;
    v53 = v36;
    sub_10007E9C4();
    v39 = &v21[v33[8]];
    v50 = *(v32 + 32);
    v50(v39, v37, v38);
    LOBYTE(v58) = 5;
    sub_10007E9C4();
    v50(&v21[v33[9]], v45, v38);
    LOBYTE(v58) = 6;
    v21[v33[10]] = sub_10007E9A4() & 1;
    LOBYTE(v58) = 7;
    v21[v42[11]] = sub_10007E9A4() & 1;
    LOBYTE(v58) = 8;
    v21[v42[12]] = sub_10007E9A4() & 1;
    LOBYTE(v58) = 9;
    v21[v42[13]] = sub_10007E9A4() & 1;
    LOBYTE(v58) = 10;
    sub_10003B9D0(&qword_1000B2FC8, _s5BoardV13ShareMetadataVMa);
    sub_10007E974();
    (*(v51 + 8))(v54, v52);
    sub_100023A10(v44, &v21[v56], &qword_1000B2D48);
    sub_10003CA30(v21, v43, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    sub_1000211F8(v29);
    return sub_10003C5E4(v21, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  }
}

Swift::Int sub_10003B8E0(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_10007EB04();
  a3(v5);
  return sub_10007EB54();
}

Swift::Int sub_10003B944(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_10007EB04();
  a4(v6);
  return sub_10007EB54();
}

uint64_t sub_10003B9D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003BA60(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = _s5BoardVMa(0);
  v4 = __chkstk_darwin(v3 - 8);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v35 = &v34 - v6;
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v14 = __chkstk_darwin(v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v34 - v18;
  __chkstk_darwin(v17);
  v21 = &v34 - v20;
  v22 = sub_10001FF68(&qword_1000B25A0);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v34 - v24;
  v26 = *(v23 + 56);
  sub_10003CA30(a1, &v34 - v24, type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_10003CA30(v37, &v25[v26], type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10003CA30(v25, v19, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_10003C644(v19, v12, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        sub_10003C644(&v25[v26], v10, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        v28 = sub_10003C6AC(v12, v10);
        v29 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
LABEL_9:
        v30 = v29;
        sub_10003C5E4(v10, v29);
        sub_10003C5E4(v12, v30);
        goto LABEL_10;
      }

      v31 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      v32 = v19;
    }

    else
    {
      sub_10003CA30(v25, v16, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v12 = v35;
        sub_10003C644(v16, v35, _s5BoardVMa);
        v10 = v36;
        sub_10003C644(&v25[v26], v36, _s5BoardVMa);
        v28 = sub_1000514A4(v12, v10);
        v29 = _s5BoardVMa;
        goto LABEL_9;
      }

      v31 = _s5BoardVMa;
      v32 = v16;
    }

    sub_10003C5E4(v32, v31);
LABEL_14:
    sub_100023AE0(v25, &qword_1000B25A0);
    v28 = 0;
    return v28 & 1;
  }

  sub_10003CA30(v25, v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_14;
  }

  v28 = *v21 ^ v25[v26] ^ 1;
LABEL_10:
  sub_10003C5E4(v25, type metadata accessor for CRLBoardLibraryViewModel.Item);
  return v28 & 1;
}

BOOL sub_10003BE98(uint64_t a1, uint64_t a2)
{
  v4 = _s5BoardV13ShareMetadataVMa(0);
  v62 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001FF68(&qword_1000B2D48);
  __chkstk_darwin(v7 - 8);
  v9 = &v55 - v8;
  v61 = sub_10001FF68(&qword_1000B2E48);
  __chkstk_darwin(v61);
  v11 = &v55 - v10;
  v12 = type metadata accessor for CRLFolderIdentifier(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v63 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10001FF68(&qword_1000B2D40);
  __chkstk_darwin(v15 - 8);
  v64 = &v55 - v16;
  v17 = sub_10001FF68(&qword_1000B2E50);
  __chkstk_darwin(v17);
  v19 = &v55 - v18;
  if ((sub_10007DE74() & 1) == 0)
  {
    return 0;
  }

  v58 = v9;
  v60 = type metadata accessor for CRLFolderIdentifierStorage(0);
  v20 = *(v60 + 20);
  v21 = a1;
  v22 = *(a1 + v20);
  v23 = *(a1 + v20 + 8);
  v24 = a2;
  v25 = (a2 + v20);
  if ((v22 != *v25 || v23 != v25[1]) && (sub_10007EAA4() & 1) == 0)
  {
    return 0;
  }

  v56 = v4;
  v57 = v11;
  v55 = v6;
  v59 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v26 = *(v59 + 20);
  v27 = *(v17 + 48);
  v28 = v21;
  sub_100023A78(v21 + v26, v19, &qword_1000B2D40);
  v29 = v24 + v26;
  v30 = v24;
  sub_100023A78(v29, &v19[v27], &qword_1000B2D40);
  v31 = *(v13 + 48);
  if (v31(v19, 1, v12) == 1)
  {
    if (v31(&v19[v27], 1, v12) == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v32 = v64;
  sub_100023A78(v19, v64, &qword_1000B2D40);
  if (v31(&v19[v27], 1, v12) == 1)
  {
    sub_10003C5E4(v32, type metadata accessor for CRLFolderIdentifier);
LABEL_10:
    v33 = &qword_1000B2E50;
LABEL_30:
    v49 = v19;
LABEL_31:
    sub_100023AE0(v49, v33);
    return 0;
  }

  v34 = v63;
  sub_10003C644(&v19[v27], v63, type metadata accessor for CRLFolderIdentifier);
  if ((sub_10007DE74() & 1) == 0 || ((v35 = *(v60 + 20), v36 = *(v32 + v35), v37 = *(v32 + v35 + 8), v38 = (v34 + v35), v36 != *v38) || v37 != v38[1]) && (sub_10007EAA4() & 1) == 0)
  {
    sub_10003C5E4(v34, type metadata accessor for CRLFolderIdentifier);
    sub_10003C5E4(v32, type metadata accessor for CRLFolderIdentifier);
    v33 = &qword_1000B2D40;
    goto LABEL_30;
  }

  sub_10003C5E4(v34, type metadata accessor for CRLFolderIdentifier);
  sub_10003C5E4(v32, type metadata accessor for CRLFolderIdentifier);
LABEL_16:
  sub_100023AE0(v19, &qword_1000B2D40);
  v39 = v59;
  v40 = *(v59 + 24);
  v41 = *(v28 + v40);
  v42 = *(v28 + v40 + 8);
  v43 = (v30 + v40);
  if ((v41 != *v43 || v42 != v43[1]) && (sub_10007EAA4() & 1) == 0 || (sub_10001F774(*(v28 + v39[7]), *(v30 + v39[7])) & 1) == 0 || (sub_10007DE04() & 1) == 0 || (sub_10007DE04() & 1) == 0 || *(v28 + v39[10]) != *(v30 + v39[10]) || *(v28 + v39[11]) != *(v30 + v39[11]) || *(v28 + v39[12]) != *(v30 + v39[12]) || *(v28 + v39[13]) != *(v30 + v39[13]))
  {
    return 0;
  }

  v44 = v39[14];
  v45 = *(v61 + 48);
  v46 = v57;
  sub_100023A78(v28 + v44, v57, &qword_1000B2D48);
  sub_100023A78(v30 + v44, v46 + v45, &qword_1000B2D48);
  v47 = *(v62 + 48);
  v48 = v56;
  if (v47(v46, 1, v56) != 1)
  {
    v51 = v58;
    sub_100023A78(v46, v58, &qword_1000B2D48);
    if (v47(v46 + v45, 1, v48) != 1)
    {
      v52 = v46 + v45;
      v53 = v55;
      sub_10003C644(v52, v55, _s5BoardV13ShareMetadataVMa);
      v54 = sub_100051C8C(v51, v53);
      sub_10003C5E4(v53, _s5BoardV13ShareMetadataVMa);
      sub_10003C5E4(v51, _s5BoardV13ShareMetadataVMa);
      sub_100023AE0(v46, &qword_1000B2D48);
      return (v54 & 1) != 0;
    }

    sub_10003C5E4(v51, _s5BoardV13ShareMetadataVMa);
    goto LABEL_35;
  }

  if (v47(v46 + v45, 1, v48) != 1)
  {
LABEL_35:
    v33 = &qword_1000B2E48;
    v49 = v46;
    goto LABEL_31;
  }

  sub_100023AE0(v46, &qword_1000B2D48);
  return 1;
}

uint64_t sub_10003C5E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003C644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_10003C6AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001FF68(&qword_1000B2598);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  v14 = *(v11 + 56);
  sub_10003CA30(a1, &v20 - v12, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_10003CA30(a2, &v13[v14], type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v15 = sub_10001FF68(&unk_1000B3390);
  v16 = *(*(v15 - 8) + 48);
  v17 = v16(v13, 5, v15);
  if (v17 > 2)
  {
    if (v17 == 3)
    {
      if (v16(&v13[v14], 5, v15) == 3)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v17 == 4)
      {
        if (v16(&v13[v14], 5, v15) != 4)
        {
          goto LABEL_17;
        }

        goto LABEL_13;
      }

      if (v16(&v13[v14], 5, v15) == 5)
      {
        goto LABEL_13;
      }
    }

LABEL_17:
    sub_100023AE0(v13, &qword_1000B2598);
    return 0;
  }

  if (!v17)
  {
    sub_10003CA30(v13, v9, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    if (!v16(&v13[v14], 5, v15))
    {
      sub_10003C644(&v13[v14], v6, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v18 = sub_10003BE98(v9, v6);
      sub_10003C5E4(v6, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      sub_10003C5E4(v9, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      sub_10003C5E4(v13, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      return v18;
    }

    sub_10003C5E4(v9, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    goto LABEL_17;
  }

  if (v17 == 1)
  {
    if (v16(&v13[v14], 5, v15) != 1)
    {
      goto LABEL_17;
    }
  }

  else if (v16(&v13[v14], 5, v15) != 2)
  {
    goto LABEL_17;
  }

LABEL_13:
  sub_10003C5E4(v13, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  return 1;
}

uint64_t sub_10003CA30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10003CA98()
{
  result = qword_1000B2E88;
  if (!qword_1000B2E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2E88);
  }

  return result;
}

unint64_t sub_10003CAEC()
{
  result = qword_1000B2E90;
  if (!qword_1000B2E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2E90);
  }

  return result;
}

unint64_t sub_10003CB40()
{
  result = qword_1000B2EA0;
  if (!qword_1000B2EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2EA0);
  }

  return result;
}

unint64_t sub_10003CB94()
{
  result = qword_1000B2EB0;
  if (!qword_1000B2EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2EB0);
  }

  return result;
}

unint64_t sub_10003CBE8()
{
  result = qword_1000B2EB8;
  if (!qword_1000B2EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2EB8);
  }

  return result;
}

unint64_t sub_10003CC3C()
{
  result = qword_1000B2EF0;
  if (!qword_1000B2EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2EF0);
  }

  return result;
}

unint64_t sub_10003CC90()
{
  result = qword_1000B2F30;
  if (!qword_1000B2F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2F30);
  }

  return result;
}

unint64_t sub_10003CCE4()
{
  result = qword_1000B2F38;
  if (!qword_1000B2F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2F38);
  }

  return result;
}

unint64_t sub_10003CD38()
{
  result = qword_1000B2F48;
  if (!qword_1000B2F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2F48);
  }

  return result;
}

unint64_t sub_10003CD8C()
{
  result = qword_1000B2F50;
  if (!qword_1000B2F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2F50);
  }

  return result;
}

unint64_t sub_10003CDE0()
{
  result = qword_1000B2F58;
  if (!qword_1000B2F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2F58);
  }

  return result;
}

unint64_t sub_10003CE34()
{
  result = qword_1000B2F60;
  if (!qword_1000B2F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2F60);
  }

  return result;
}

unint64_t sub_10003CE88()
{
  result = qword_1000B2F68;
  if (!qword_1000B2F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2F68);
  }

  return result;
}

unint64_t sub_10003CEDC()
{
  result = qword_1000B2FB8;
  if (!qword_1000B2FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2FB8);
  }

  return result;
}

unint64_t sub_10003CF30()
{
  result = qword_1000B2FC0;
  if (!qword_1000B2FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2FC0);
  }

  return result;
}

unint64_t sub_10003CF84()
{
  result = qword_1000B2FD8;
  if (!qword_1000B2FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2FD8);
  }

  return result;
}

uint64_t sub_10003CFD8(void *a1)
{
  v2 = sub_10001FF68(&qword_1000B2FE8);
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v4 = &v21 - v3;
  v5 = sub_10001FF68(&qword_1000B2FF0);
  v22 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_10001FF68(&qword_1000B2FF8);
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  sub_100021160(a1, a1[3]);
  sub_10003D494();
  v11 = v26;
  sub_10007EBD4();
  if (v11)
  {
    return sub_1000211F8(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_10007E9D4();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_1000215DC();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_10007E874();
    swift_allocError();
    v19 = v18;
    sub_10001FF68(&qword_1000B2318);
    *v19 = &type metadata for CRLBoardLibraryViewModel.Library;
    sub_10007E954();
    sub_10007E864();
    (*(*(v17 - 8) + 104))(v19, enum case for DecodingError.typeMismatch(_:), v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_1000211F8(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_10003D4E8();
    sub_10007E944();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_10003D53C();
    sub_10007E944();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  sub_1000211F8(v26);
  return v31 & 1;
}

unint64_t sub_10003D494()
{
  result = qword_1000B3000;
  if (!qword_1000B3000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3000);
  }

  return result;
}

unint64_t sub_10003D4E8()
{
  result = qword_1000B3008;
  if (!qword_1000B3008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3008);
  }

  return result;
}

unint64_t sub_10003D53C()
{
  result = qword_1000B3010;
  if (!qword_1000B3010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3010);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLBoardLibraryViewModel.Folder.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLBoardLibraryViewModel.Folder.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10003D7C4()
{
  result = qword_1000B3030;
  if (!qword_1000B3030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3030);
  }

  return result;
}

unint64_t sub_10003D81C()
{
  result = qword_1000B3038;
  if (!qword_1000B3038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3038);
  }

  return result;
}

unint64_t sub_10003D874()
{
  result = qword_1000B3040;
  if (!qword_1000B3040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3040);
  }

  return result;
}

unint64_t sub_10003D8CC()
{
  result = qword_1000B3048;
  if (!qword_1000B3048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3048);
  }

  return result;
}

unint64_t sub_10003D924()
{
  result = qword_1000B3050;
  if (!qword_1000B3050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3050);
  }

  return result;
}

unint64_t sub_10003D97C()
{
  result = qword_1000B3058;
  if (!qword_1000B3058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3058);
  }

  return result;
}

unint64_t sub_10003D9D4()
{
  result = qword_1000B3060;
  if (!qword_1000B3060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3060);
  }

  return result;
}

unint64_t sub_10003DA2C()
{
  result = qword_1000B3068;
  if (!qword_1000B3068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3068);
  }

  return result;
}

unint64_t sub_10003DA84()
{
  result = qword_1000B3070;
  if (!qword_1000B3070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3070);
  }

  return result;
}

unint64_t sub_10003DADC()
{
  result = qword_1000B3078;
  if (!qword_1000B3078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3078);
  }

  return result;
}

unint64_t sub_10003DB34()
{
  result = qword_1000B3080;
  if (!qword_1000B3080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3080);
  }

  return result;
}

unint64_t sub_10003DB8C()
{
  result = qword_1000B3088;
  if (!qword_1000B3088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3088);
  }

  return result;
}

unint64_t sub_10003DBE4()
{
  result = qword_1000B3090;
  if (!qword_1000B3090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3090);
  }

  return result;
}

unint64_t sub_10003DC3C()
{
  result = qword_1000B3098;
  if (!qword_1000B3098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3098);
  }

  return result;
}

unint64_t sub_10003DC94()
{
  result = qword_1000B30A0;
  if (!qword_1000B30A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B30A0);
  }

  return result;
}

unint64_t sub_10003DCEC()
{
  result = qword_1000B30A8;
  if (!qword_1000B30A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B30A8);
  }

  return result;
}

unint64_t sub_10003DD44()
{
  result = qword_1000B30B0;
  if (!qword_1000B30B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B30B0);
  }

  return result;
}

unint64_t sub_10003DD9C()
{
  result = qword_1000B30B8;
  if (!qword_1000B30B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B30B8);
  }

  return result;
}

unint64_t sub_10003DDF4()
{
  result = qword_1000B30C0;
  if (!qword_1000B30C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B30C0);
  }

  return result;
}

unint64_t sub_10003DE4C()
{
  result = qword_1000B30C8;
  if (!qword_1000B30C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B30C8);
  }

  return result;
}

unint64_t sub_10003DEA4()
{
  result = qword_1000B30D0;
  if (!qword_1000B30D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B30D0);
  }

  return result;
}

unint64_t sub_10003DEFC()
{
  result = qword_1000B30D8;
  if (!qword_1000B30D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B30D8);
  }

  return result;
}

unint64_t sub_10003DF54()
{
  result = qword_1000B30E0;
  if (!qword_1000B30E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B30E0);
  }

  return result;
}

unint64_t sub_10003DFAC()
{
  result = qword_1000B30E8;
  if (!qword_1000B30E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B30E8);
  }

  return result;
}

unint64_t sub_10003E004()
{
  result = qword_1000B30F0;
  if (!qword_1000B30F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B30F0);
  }

  return result;
}

unint64_t sub_10003E05C()
{
  result = qword_1000B30F8;
  if (!qword_1000B30F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B30F8);
  }

  return result;
}

unint64_t sub_10003E0B4()
{
  result = qword_1000B3100;
  if (!qword_1000B3100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3100);
  }

  return result;
}

unint64_t sub_10003E10C()
{
  result = qword_1000B3108;
  if (!qword_1000B3108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3108);
  }

  return result;
}

unint64_t sub_10003E164()
{
  result = qword_1000B3110;
  if (!qword_1000B3110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3110);
  }

  return result;
}

unint64_t sub_10003E1BC()
{
  result = qword_1000B3118;
  if (!qword_1000B3118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3118);
  }

  return result;
}

unint64_t sub_10003E214()
{
  result = qword_1000B3120;
  if (!qword_1000B3120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3120);
  }

  return result;
}

unint64_t sub_10003E26C()
{
  result = qword_1000B3128;
  if (!qword_1000B3128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3128);
  }

  return result;
}

unint64_t sub_10003E2C4()
{
  result = qword_1000B3130;
  if (!qword_1000B3130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3130);
  }

  return result;
}

unint64_t sub_10003E31C()
{
  result = qword_1000B3138;
  if (!qword_1000B3138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3138);
  }

  return result;
}

unint64_t sub_10003E374()
{
  result = qword_1000B3140;
  if (!qword_1000B3140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3140);
  }

  return result;
}

unint64_t sub_10003E3CC()
{
  result = qword_1000B3148;
  if (!qword_1000B3148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3148);
  }

  return result;
}

unint64_t sub_10003E424()
{
  result = qword_1000B3150;
  if (!qword_1000B3150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3150);
  }

  return result;
}

unint64_t sub_10003E47C()
{
  result = qword_1000B3158;
  if (!qword_1000B3158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3158);
  }

  return result;
}

uint64_t sub_10003E4D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972617262696CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_10007EAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000 || (sub_10007EAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6472616F62 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_10007EAA4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10003E5E0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000010008C6B0 == a2 || (sub_10007EAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010008CD90 == a2 || (sub_10007EAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_10007EAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000 || (sub_10007EAA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC000000656D6954 || (sub_10007EAA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xEC000000656D6954 || (sub_10007EAA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C68676948736168 && a2 == 0xEC00000074686769 || (sub_10007EAA4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x617469766E497369 && a2 == 0xEC0000006E6F6974 || (sub_10007EAA4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7473626D6F547369 && a2 == 0xEC00000064656E6FLL || (sub_10007EAA4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x707075736E557369 && a2 == 0xED0000646574726FLL || (sub_10007EAA4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x74654D6572616873 && a2 == 0xED00006174616461)
  {

    return 10;
  }

  else
  {
    v5 = sub_10007EAA4();

    if (v5)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_10003E988(void *a1)
{
  v3 = v1;
  v5 = sub_10001FF68(&qword_1000B3370);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100021160(a1, a1[3]);
  sub_100040D90();
  sub_10007EBE4();
  v12 = 0;
  type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  sub_100040CAC(&qword_1000B3378, type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_10007EA54();
  if (!v2)
  {
    v11 = *(v3 + *(_s4NodeVMa(0) + 20));
    v10[15] = 1;
    sub_10001FF68(&qword_1000B3360);
    sub_100040E4C(&unk_1000B3380, &qword_1000B3330);
    sub_10007EA54();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10003EBA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10001FF68(&qword_1000B3348);
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = _s4NodeVMa(0);
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021160(a1, a1[3]);
  sub_100040D90();
  sub_10007EBD4();
  if (v2)
  {
    return sub_1000211F8(a1);
  }

  v12 = v18;
  v13 = v11;
  v23 = 0;
  sub_100040CAC(&qword_1000B3358, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v14 = v19;
  sub_10007E9C4();
  sub_100040DE4(v20, v13, type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_10001FF68(&qword_1000B3360);
  v22 = 1;
  sub_100040E4C(&qword_1000B3368, &qword_1000B3308);
  sub_10007E9C4();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 20)) = v21;
  sub_100040F48(v13, v17, _s4NodeVMa);
  sub_1000211F8(a1);
  return sub_100040EE8(v13, _s4NodeVMa);
}

uint64_t sub_10003EF14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6572646C696863;
  }

  else
  {
    v3 = 1835365481;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6E6572646C696863;
  }

  else
  {
    v5 = 1835365481;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10007EAA4();
  }

  return v8 & 1;
}

Swift::Int sub_10003EFB4()
{
  sub_10007EB04();
  sub_10007E494();

  return sub_10007EB54();
}

uint64_t sub_10003F030()
{
  sub_10007E494();
}

Swift::Int sub_10003F098()
{
  sub_10007EB04();
  sub_10007E494();

  return sub_10007EB54();
}

uint64_t sub_10003F110@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000A7388;
  v8._object = v3;
  v5 = sub_10007E934(v4, v8);

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

void sub_10003F170(uint64_t *a1@<X8>)
{
  v2 = 1835365481;
  if (*v1)
  {
    v2 = 0x6E6572646C696863;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10003F1A8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_1000A7388;
  v9._object = a2;
  v6 = sub_10007E934(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10003F20C(uint64_t a1)
{
  v2 = sub_100040D90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003F248(uint64_t a1)
{
  v2 = sub_100040D90();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10003F284(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s5BoardVMa(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100040F48(v2, v18, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_100040DE4(v18, v9, _s5BoardVMa);
      sub_10007DEB4();
      sub_100040CAC(&qword_1000B23B8, &type metadata accessor for UUID);
      sub_10007E3D4();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      sub_10007E494();
      v23 = _s5BoardVMa;
      v24 = v9;
LABEL_16:
      sub_100040EE8(v24, v23);
      goto LABEL_17;
    }

    sub_100040DE4(v18, v15, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_100040F48(v15, v13, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v20 = sub_10001FF68(&unk_1000B3390);
    v21 = (*(*(v20 - 8) + 48))(v13, 5, v20);
    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = 2;
      }

      else if (v21 == 4)
      {
        v22 = 3;
      }

      else
      {
        v22 = 4;
      }
    }

    else
    {
      if (!v21)
      {
        sub_100040DE4(v13, v6, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        sub_10007EB14(5uLL);
        sub_10003A6BC();
        sub_100040EE8(v6, type metadata accessor for CRLBoardLibraryViewModel.Folder);
LABEL_15:
        v23 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
        v24 = v15;
        goto LABEL_16;
      }

      v22 = v21 != 1;
    }

    sub_10007EB14(v22);
    goto LABEL_15;
  }

  sub_10007EB14(*v18);
LABEL_17:
  v25 = _s4NodeVMa(0);
  sub_100040FB0(a1, *(v2 + *(v25 + 20)));
}

uint64_t sub_10003F680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1000369F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_10001ED54(v7, v8);
}

Swift::Int sub_10003F6E8()
{
  sub_10007EB04();
  sub_10003F284(v1);
  return sub_10007EB54();
}

Swift::Int sub_10003F72C()
{
  sub_10007EB04();
  sub_10003F284(v1);
  return sub_10007EB54();
}

uint64_t sub_10003F844(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  sub_1000417F4(a1, v19);
  if (!v20)
  {
    sub_1000357F4(v19);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v16 = 0;
    return v16 & 1;
  }

  v10 = v18[1];
  sub_100040F48(v2 + OBJC_IVAR____TtC24FreeformSharingExtension35CRLBoardLibraryViewModelWrappedNode_node, v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_100040F48(v10 + OBJC_IVAR____TtC24FreeformSharingExtension35CRLBoardLibraryViewModelWrappedNode_node, v7, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v11 = sub_10003BA60(v9, v7);
  sub_100040EE8(v7, type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_100040EE8(v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if ((v11 & 1) == 0)
  {

    goto LABEL_7;
  }

  v12 = [v2 children];
  v13 = sub_10007E554();

  v14 = [v10 children];
  v15 = sub_10007E554();

  v16 = sub_10001F97C(v13, v15);

  return v16 & 1;
}

uint64_t sub_10003FAF0()
{
  v1 = 1701080942;
  v2 = 0x6E6572646C696863;
  if (*v0 != 2)
  {
    v2 = 0x6661654C7369;
  }

  if (*v0)
  {
    v1 = 0x5064657070617277;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10003FB6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100041498(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003FB94(uint64_t a1)
{
  v2 = sub_100040C58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003FBD0(uint64_t a1)
{
  v2 = sub_100040C58();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_10003FC0C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10003FCDC()
{
  result = _s4NodeVMa(319);
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

uint64_t sub_10003FDAC(void *a1)
{
  v2 = v1;
  v16[1] = swift_getObjectType();
  v4 = _s4NodeVMa(0);
  __chkstk_darwin(v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001FF68(&qword_1000B3328);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - v9;
  sub_100021160(a1, a1[3]);
  sub_100040C58();
  sub_10007EBE4();
  sub_100040F48(v2 + OBJC_IVAR____TtC24FreeformSharingExtension35CRLBoardLibraryViewModelWrappedNode_node, v6, _s4NodeVMa);
  LOBYTE(v18) = 0;
  sub_100040CAC(&qword_1000B3330, _s4NodeVMa);
  v11 = v16[2];
  sub_10007EA54();
  sub_100040EE8(v6, _s4NodeVMa);
  if (!v11)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v18 = Strong;
    v17 = 1;
    sub_100040CAC(&qword_1000B3338, type metadata accessor for CRLBoardLibraryViewModelWrappedNode);
    sub_10007EA04();

    v14 = [v2 children];
    v15 = sub_10007E554();

    v18 = v15;
    v17 = 2;
    sub_10001FF68(&qword_1000B3318);
    sub_100040CF4(&qword_1000B3340, &qword_1000B3338);
    sub_10007EA54();

    [v2 isLeaf];
    LOBYTE(v18) = 3;
    sub_10007EA34();
  }

  return (*(v8 + 8))(v10, v7);
}

_BYTE *sub_100040174(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = _s4NodeVMa(0);
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10001FF68(&qword_1000B32F8);
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v10 = &v15 - v9;
  v18 = OBJC_IVAR____TtC24FreeformSharingExtension35CRLBoardLibraryViewModelWrappedNode_wrappedParent;
  swift_unknownObjectWeakInit();
  v16 = a1;
  v17 = OBJC_IVAR____TtC24FreeformSharingExtension35CRLBoardLibraryViewModelWrappedNode_children;
  *&v3[OBJC_IVAR____TtC24FreeformSharingExtension35CRLBoardLibraryViewModelWrappedNode_children] = _swiftEmptyArrayStorage;
  sub_100021160(a1, a1[3]);
  sub_100040C58();
  sub_10007EBD4();
  if (v2)
  {
    sub_1000211F8(v16);
    swift_unknownObjectWeakDestroy();

    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v22) = 0;
    sub_100040CAC(&qword_1000B3308, _s4NodeVMa);
    sub_10007E9C4();
    sub_100040DE4(v7, &v3[OBJC_IVAR____TtC24FreeformSharingExtension35CRLBoardLibraryViewModelWrappedNode_node], _s4NodeVMa);
    v21 = 1;
    sub_100040CAC(&qword_1000B3310, type metadata accessor for CRLBoardLibraryViewModelWrappedNode);
    v12 = ObjectType;
    sub_10007E974();
    v13 = v17;
    v14 = v22;
    swift_unknownObjectWeakAssign();

    sub_10001FF68(&qword_1000B3318);
    v21 = 2;
    sub_100040CF4(&qword_1000B3320, &qword_1000B3310);
    sub_10007E9C4();
    *&v3[v13] = v22;

    LOBYTE(v22) = 3;
    v3[OBJC_IVAR____TtC24FreeformSharingExtension35CRLBoardLibraryViewModelWrappedNode_isLeaf] = sub_10007E9A4() & 1;
    v20.receiver = v3;
    v20.super_class = v12;
    v3 = objc_msgSendSuper2(&v20, "init");
    (*(v8 + 8))(v10, v15);
    sub_1000211F8(v16);
  }

  return v3;
}

_BYTE *sub_100040618@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = sub_100040174(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

Class sub_1000407EC()
{
  v0 = sub_10007E084();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001FF68(&unk_1000B4470);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000860E0;
  sub_10007E034();
  v5 = sub_10007DFD4();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v8.super.isa = sub_10007E544().super.isa;

  return v8.super.isa;
}

uint64_t sub_1000409AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100040A7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100040B34()
{
  type metadata accessor for CRLBoardLibraryViewModel.Item(319);
  if (v0 <= 0x3F)
  {
    sub_100040BB8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100040BB8()
{
  if (!qword_1000B32C0)
  {
    _s4NodeVMa(255);
    v0 = sub_10007E594();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B32C0);
    }
  }
}

unint64_t sub_100040C58()
{
  result = qword_1000B3300;
  if (!qword_1000B3300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3300);
  }

  return result;
}

uint64_t sub_100040CAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100040CF4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10001FDB8(&qword_1000B3318);
    sub_100040CAC(a2, type metadata accessor for CRLBoardLibraryViewModelWrappedNode);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100040D90()
{
  result = qword_1000B3350;
  if (!qword_1000B3350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3350);
  }

  return result;
}

uint64_t sub_100040DE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100040E4C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10001FDB8(&qword_1000B3360);
    sub_100040CAC(a2, _s4NodeVMa);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100040EE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100040F48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100040FB0(uint64_t a1, uint64_t a2)
{
  v4 = _s5BoardVMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v7 - 8);
  v35[0] = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v10 = __chkstk_darwin(v9 - 8);
  v36 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v37 = v35 - v12;
  v13 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v13);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s4NodeVMa(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 + 16);
  sub_10007EB14(v20);
  if (v20)
  {
    v21 = v17;
    v22 = *(v16 + 20);
    v23 = a2 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v24 = *(v21 + 72);
    v35[1] = v13;
    while (1)
    {
      sub_100040F48(v23, v19, _s4NodeVMa);
      sub_100040F48(v19, v15, type metadata accessor for CRLBoardLibraryViewModel.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        break;
      }

      sub_10007EB14(*v15);
LABEL_4:
      sub_100040FB0(a1, *&v19[v22]);
      sub_100040EE8(v19, _s4NodeVMa);
      v23 += v24;
      if (!--v20)
      {
        return;
      }
    }

    if (EnumCaseMultiPayload != 1)
    {
      sub_100040DE4(v15, v6, _s5BoardVMa);
      sub_10007DEB4();
      sub_100040CAC(&qword_1000B23B8, &type metadata accessor for UUID);
      sub_10007E3D4();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      sub_10007E494();
      v32 = _s5BoardVMa;
      v33 = v6;
LABEL_19:
      sub_100040EE8(v33, v32);
      goto LABEL_4;
    }

    v26 = v37;
    sub_100040DE4(v15, v37, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v27 = v26;
    v28 = v36;
    sub_100040F48(v27, v36, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v29 = sub_10001FF68(&unk_1000B3390);
    v30 = (*(*(v29 - 8) + 48))(v28, 5, v29);
    if (v30 > 2)
    {
      if (v30 == 3)
      {
        v31 = 2;
      }

      else if (v30 == 4)
      {
        v31 = 3;
      }

      else
      {
        v31 = 4;
      }
    }

    else
    {
      if (!v30)
      {
        v34 = v35[0];
        sub_100040DE4(v36, v35[0], type metadata accessor for CRLBoardLibraryViewModel.Folder);
        sub_10007EB14(5uLL);
        sub_10003A6BC();
        sub_100040EE8(v34, type metadata accessor for CRLBoardLibraryViewModel.Folder);
LABEL_18:
        v32 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
        v33 = v37;
        goto LABEL_19;
      }

      v31 = v30 != 1;
    }

    sub_10007EB14(v31);
    goto LABEL_18;
  }
}