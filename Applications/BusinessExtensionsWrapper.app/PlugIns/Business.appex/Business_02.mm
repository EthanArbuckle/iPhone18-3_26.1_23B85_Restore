void sub_10002E8A8()
{
  v1 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v115 - v4;
  v6 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_headerView;
  v7 = *&v0[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_headerView];
  if (!v7)
  {
    __break(1u);
    goto LABEL_38;
  }

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = *&v0[v6];
  if (!v8)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v9 = [v8 topAnchor];
  v10 = [v0 view];
  if (!v10)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v11 = v10;
  v12 = [v10 topAnchor];

  v13 = [v9 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  v14 = *&v0[v6];
  if (!v14)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v15 = [v14 rightAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v17 = v16;
  v18 = [v16 rightAnchor];

  v19 = [v15 constraintEqualToAnchor:v18];
  [v19 setActive:1];

  v20 = *&v0[v6];
  if (!v20)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v21 = [v20 leftAnchor];
  v22 = [v0 view];
  if (!v22)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v23 = v22;
  v24 = [v22 leftAnchor];

  v25 = [v21 constraintEqualToAnchor:v24];
  [v25 setActive:1];

  v26 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_contentHeaderView;
  v27 = *&v0[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_contentHeaderView];
  if (!v27)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  v28 = *&v0[v26];
  if (!v28)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v29 = [v28 topAnchor];
  v30 = *&v0[v6];
  if (!v30)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v31 = [v30 bottomAnchor];
  v32 = [v29 constraintEqualToAnchor:v31];

  [v32 setActive:1];
  v33 = *&v0[v26];
  if (!v33)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v34 = [v33 rightAnchor];
  v35 = [v0 view];
  if (!v35)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v36 = v35;
  v37 = [v35 rightAnchor];

  v38 = [v34 constraintEqualToAnchor:v37];
  [v38 setActive:1];

  v39 = *&v0[v26];
  if (!v39)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v40 = [v39 leftAnchor];
  v41 = [v0 view];
  if (!v41)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v42 = v41;
  v43 = [v41 leftAnchor];

  v44 = [v40 constraintEqualToAnchor:v43];
  [v44 setActive:1];

  v45 = *&v0[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_content];
  if (v45)
  {
    if (*(v45 + OBJC_IVAR____TtC8Business10IMBContent_title + 8))
    {
      goto LABEL_22;
    }

    v46 = OBJC_IVAR____TtC8Business10IMBContent_date;
    swift_beginAccess();
    sub_10000E66C(v45 + v46, v5, &qword_1000F0270, &unk_1000B0480);
    v47 = sub_1000AB7EC();
    if ((*(*(v47 - 8) + 48))(v5, 1, v47) != 1)
    {
      sub_10000E784(v5, &qword_1000F0270, &unk_1000B0480);
      goto LABEL_22;
    }
  }

  else
  {
    v48 = sub_1000AB7EC();
    (*(*(v48 - 8) + 56))(v5, 1, 1, v48);
  }

  sub_10000E784(v5, &qword_1000F0270, &unk_1000B0480);
  v49 = *&v0[v26];
  if (v49)
  {
    v50 = [v49 heightAnchor];
    v51 = [v50 constraintEqualToConstant:0.0];

    [v51 setActive:1];
LABEL_22:
    v52 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_webview;
    v53 = *&v0[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_webview];
    if (v53)
    {
      [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
      v54 = *&v0[v52];
      if (v54)
      {
        v55 = [v54 topAnchor];
        v56 = *&v0[v26];
        if (v56)
        {
          v57 = [v56 bottomAnchor];
          v58 = [v55 constraintEqualToAnchor:v57];

          [v58 setActive:1];
          v59 = *&v0[v52];
          if (v59)
          {
            v60 = [v59 bottomAnchor];
            v61 = *&v0[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_footerToolbar];
            v62 = [v61 topAnchor];
            v63 = [v60 constraintEqualToAnchor:v62];

            [v63 setActive:1];
            v64 = *&v0[v52];
            if (v64)
            {
              v65 = [v64 rightAnchor];
              v66 = [v0 view];
              if (v66)
              {
                v67 = v66;
                v68 = [v66 rightAnchor];

                v69 = [v65 constraintEqualToAnchor:v68];
                [v69 setActive:1];

                v70 = *&v0[v52];
                if (v70)
                {
                  v71 = [v70 leftAnchor];
                  v72 = [v0 view];
                  if (v72)
                  {
                    v73 = v72;
                    v74 = [v72 leftAnchor];

                    v75 = [v71 constraintEqualToAnchor:v74];
                    [v75 setActive:1];

                    [v61 setTranslatesAutoresizingMaskIntoConstraints:0];
                    v76 = [v61 topAnchor];
                    v77 = *&v0[v52];
                    if (v77)
                    {
                      v78 = [v77 bottomAnchor];
                      v79 = [v76 constraintEqualToAnchor:v78];

                      [v79 setActive:1];
                      v80 = [v61 leadingAnchor];
                      v81 = [v0 view];
                      if (v81)
                      {
                        v82 = v81;
                        v83 = [v81 leadingAnchor];

                        v84 = [v80 constraintEqualToAnchor:v83];
                        [v84 setActive:1];

                        v85 = [v61 trailingAnchor];
                        v86 = [v0 view];
                        if (v86)
                        {
                          v87 = v86;
                          v88 = [v86 trailingAnchor];

                          v89 = [v85 constraintEqualToAnchor:v88];
                          [v89 setActive:1];

                          v90 = [v61 bottomAnchor];
                          v91 = [v0 view];
                          if (v91)
                          {
                            v92 = v91;
                            v93 = [v91 safeAreaLayoutGuide];

                            v94 = [v93 bottomAnchor];
                            v95 = [v90 constraintEqualToAnchor:v94];

                            [v95 setActive:1];
                            v96 = *&v0[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_toolbarBorder];
                            [v96 setTranslatesAutoresizingMaskIntoConstraints:0];
                            v97 = [v96 heightAnchor];
                            v98 = [objc_opt_self() mainScreen];
                            [v98 scale];
                            v100 = v99;

                            v101 = [v97 constraintEqualToConstant:1.0 / v100];
                            [v101 setActive:1];

                            v102 = [v96 leftAnchor];
                            v103 = [v0 view];
                            if (v103)
                            {
                              v104 = v103;
                              v105 = [v103 leftAnchor];

                              v106 = [v102 constraintEqualToAnchor:v105];
                              [v106 setActive:1];

                              v107 = [v96 rightAnchor];
                              v108 = [v0 view];
                              if (v108)
                              {
                                v109 = v108;
                                v110 = [v108 rightAnchor];

                                v111 = [v107 constraintEqualToAnchor:v110];
                                [v111 setActive:1];

                                v112 = [v96 bottomAnchor];
                                v113 = [v61 topAnchor];
                                v114 = [v112 constraintEqualToAnchor:v113];

                                [v114 setActive:1];
                                return;
                              }

                              goto LABEL_64;
                            }

LABEL_63:
                            __break(1u);
LABEL_64:
                            __break(1u);
                            goto LABEL_65;
                          }

LABEL_62:
                          __break(1u);
                          goto LABEL_63;
                        }

LABEL_61:
                        __break(1u);
                        goto LABEL_62;
                      }

LABEL_60:
                      __break(1u);
                      goto LABEL_61;
                    }

LABEL_59:
                    __break(1u);
                    goto LABEL_60;
                  }

LABEL_58:
                  __break(1u);
                  goto LABEL_59;
                }

LABEL_57:
                __break(1u);
                goto LABEL_58;
              }

LABEL_56:
              __break(1u);
              goto LABEL_57;
            }

LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_65:
  __break(1u);
}

uint64_t sub_10002F534(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v40 - v8 + 14;
  v10 = sub_1000AB6EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) + 14;
  sub_10000E66C(a1, v40, &unk_1000F1DF0, &qword_1000B18F0);
  if (!v41)
  {
    return sub_10000E784(v40, &unk_1000F1DF0, &qword_1000B18F0);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v17 = *&a3[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_content];
    if (v17 && (v18 = (v17 + OBJC_IVAR____TtC8Business10IMBContent_title), (v19 = v18[1]) != 0))
    {
      v20 = *v18;
      v21 = v18[1];
    }

    else
    {
      v22 = [*&a3[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message] receivedMessage];
      if (v22 && (v23 = v22, v24 = [v22 title], v23, v24))
      {
        v25 = sub_1000AC06C();
      }

      else
      {
        v24 = [objc_opt_self() mainBundle];
        v38._countAndFlagsBits = 0xE000000000000000;
        v42._object = 0x80000001000B8290;
        v42._countAndFlagsBits = 0xD000000000000011;
        v43.value._countAndFlagsBits = 0;
        v43.value._object = 0;
        v27.super.isa = v24;
        v44._countAndFlagsBits = 0;
        v44._object = 0xE000000000000000;
        v25 = sub_1000AB61C(v42, v43, v27, v44, v38);
      }

      v20 = v25;
      v19 = v26;
    }

    sub_10002FACC(v20, v19, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {

      return sub_10000E784(v9, &unk_1000F06A0, &unk_1000B0450);
    }

    else
    {
      (*(v11 + 32))(v15, v9, v10);
      sub_10000413C(&qword_1000F06D0, &unk_1000B06D0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1000AF0F0;
      *(v28 + 56) = v10;
      v29 = sub_100030970((v28 + 32));
      result = (*(v11 + 16))(v29, v15, v10);
      v30 = *&a3[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_webview];
      if (v30)
      {
        v31 = v30;

        v32 = [v31 viewPrintFormatter];

        *(v28 + 88) = sub_100005A24(0, &qword_1000F06D8, UIViewPrintFormatter_ptr);
        *(v28 + 64) = v32;
        v33 = objc_allocWithZone(UIActivityViewController);
        isa = sub_1000AC18C().super.isa;

        v35 = [v33 initWithActivityItems:isa applicationActivities:0];

        v36 = [v35 popoverPresentationController];
        if (v36)
        {
          v37 = v36;
          [v36 setBarButtonItem:*&a3[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_shareButtonItem]];
        }

        [a3 presentViewController:v35 animated:1 completion:0];

        return (*(v11 + 8))(v15, v10);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_10002F9BC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v9 = a2;
    sub_100006910(&v9, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  swift_unknownObjectRetain();
  v7 = a3;
  v6(v11, a3);

  return sub_10000E784(v11, &unk_1000F1DF0, &qword_1000B18F0);
}

uint64_t sub_10002FACC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v61 = a1;
  v62 = a2;
  v63 = a3;
  v4 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v59 - v11;
  v13 = sub_1000AB6EC();
  v65 = *(v13 - 8);
  v14 = *(v65 + 64);
  v16 = __chkstk_darwin(v13, v15);
  v59 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v18);
  v64 = &v59 - v19;
  v20 = [objc_allocWithZone(UIPrintPageRenderer) init];
  v21 = *(v3 + OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_webview);
  if (!v21)
  {
LABEL_23:
    __break(1u);
  }

  v22 = [v21 viewPrintFormatter];
  [v20 addPrintFormatter:v22 startingAtPageAtIndex:0];

  v23 = [objc_allocWithZone(NSMutableData) init];
  v67.origin.x = 0.0;
  v67.origin.y = 0.0;
  v67.size.width = 595.0;
  v67.size.height = 842.0;
  v68 = CGRectInset(v67, 0.0, 0.0);
  x = v68.origin.x;
  y = v68.origin.y;
  width = v68.size.width;
  height = v68.size.height;
  v28 = objc_opt_self();
  v29 = [v28 valueWithCGRect:{0.0, 0.0, 595.0, 842.0}];
  v30 = sub_1000AC02C();
  [v20 setValue:v29 forKey:v30];

  v31 = [v28 valueWithCGRect:{x, y, width, height}];
  v32 = sub_1000AC02C();
  [v20 setValue:v31 forKey:v32];

  v69.origin.x = 0.0;
  v69.origin.y = 0.0;
  v69.size.width = 0.0;
  v69.size.height = 0.0;
  UIGraphicsBeginPDFContextToData(v23, v69, 0);
  v33 = [v20 numberOfPages];
  v34 = v33 - 1;
  if (v33 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v35 = v65;
  v36 = 1;
  while (1)
  {
    UIGraphicsBeginPDFPage();
    PDFContextBounds = UIGraphicsGetPDFContextBounds();
    [v20 drawPageAtIndex:v36 - 1 inRect:{PDFContextBounds.origin.x, PDFContextBounds.origin.y, PDFContextBounds.size.width, PDFContextBounds.size.height}];
    if (!v34)
    {
      break;
    }

    --v34;
    if (__OFADD__(v36++, 1))
    {
      __break(1u);
      break;
    }
  }

  v60 = v23;
  UIGraphicsEndPDFContext();
  v38 = sub_1000AC02C();
  v39 = [v38 lastPathComponent];

  if (!v39)
  {
    sub_1000AC06C();
    v39 = sub_1000AC02C();
  }

  v40 = NSTemporaryDirectory();
  if (!v40)
  {
    sub_1000AC06C();
    v40 = sub_1000AC02C();
  }

  v41 = [objc_allocWithZone(NSURL) initFileURLWithPath:v40];

  v42 = [v41 URLByAppendingPathComponent:v39];
  if (v42)
  {
    sub_1000AB6AC();

    v43 = *(v35 + 56);
    v43(v9, 0, 1, v13);
  }

  else
  {
    v43 = *(v35 + 56);
    v43(v9, 1, 1, v13);
  }

  v44 = v64;
  sub_10000E7E4(v9, v12);
  if ((*(v35 + 48))(v12, 1, v13) == 1)
  {

    sub_10000E784(v12, &unk_1000F06A0, &unk_1000B0450);
LABEL_20:
    v56 = 1;
    v55 = v63;
    return (v43)(v55, v56, 1, v13);
  }

  v45 = v59;
  sub_1000AB69C();
  v46 = *(v35 + 8);
  v46(v12, v13);
  v47 = *(v35 + 32);
  v47(v44, v45, v13);
  sub_1000AB67C(v48);
  v50 = v49;
  v66 = 0;
  v51 = v60;
  v52 = [(NSMutableData *)v60 writeToURL:v49 options:1 error:&v66];

  if (!v52)
  {
    v57 = v66;
    sub_1000AB63C();

    swift_willThrow();
    v46(v64, v13);

    goto LABEL_20;
  }

  v53 = v66;

  v54 = v63;
  v47(v63, v64, v13);
  v55 = v54;
  v56 = 0;
  return (v43)(v55, v56, 1, v13);
}

id sub_1000301BC(void *a1)
{
  v3 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_scrollview;
  *&v1[v3] = [objc_allocWithZone(UIScrollView) init];
  v4 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_footerToolbar;
  *&v1[v4] = [objc_allocWithZone(UIToolbar) init];
  v5 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_toolbarBorder;
  *&v1[v5] = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_shareButtonItem;
  v7 = type metadata accessor for IMBHTMLContentViewController();
  v8 = objc_allocWithZone(UIBarButtonItem);
  v13 = v7;
  sub_10000413C(&unk_1000F06C0, &qword_1000B43E0);
  v9 = [v8 initWithBarButtonSystemItem:9 target:sub_1000AC7CC() action:"shareButtonTapped:"];
  swift_unknownObjectRelease();
  *&v1[v6] = v9;
  *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_webview] = 0;
  *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_headerView] = 0;
  *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_contentHeaderView] = 0;
  *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_webviewHeightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_content] = 0;
  v12.receiver = v1;
  v12.super_class = v7;
  v10 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);

  if (v10)
  {
  }

  return v10;
}

uint64_t sub_100030374()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_content);
}

id sub_100030424()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBHTMLContentViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100030538()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_webview];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1000AC02C();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v7[4] = sub_100030950;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_10002F9BC;
    v7[3] = &unk_1000DB810;
    v5 = _Block_copy(v7);
    v6 = v0;

    [v2 evaluateJavaScript:v3 completionHandler:v5];
    _Block_release(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10003065C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v25 - v9;
  v11 = sub_1000AB57C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000AB6EC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 navigationType])
  {
    v23 = [a1 request];
    sub_1000AB54C();

    sub_1000AB56C();
    (*(v12 + 8))(v16, v11);
    if ((*(v18 + 48))(v10, 1, v17) != 1)
    {
      (*(v18 + 32))(v22, v10, v17);
      sub_1000058D0((a2 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_urlHelper), *(a2 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_urlHelper + 24));
      sub_10004E400(v22, 1, 0, 0);
      (*(a3 + 16))(a3, 0);
      return (*(v18 + 8))(v22, v17);
    }

    sub_10000E784(v10, &unk_1000F06A0, &unk_1000B0450);
  }

  return (*(a3 + 16))(a3, 1);
}

uint64_t sub_100030918()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100030958(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_100030970(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000309E4()
{
  if (*v0)
  {
    result = 0x7265646E6573;
  }

  else
  {
    result = 0x6E65697069636572;
  }

  *v0;
  return result;
}

unint64_t sub_100030A24()
{
  result = qword_1000F06E0;
  if (!qword_1000F06E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F06E0);
  }

  return result;
}

id sub_100030A78(void *a1)
{
  *&v1[OBJC_IVAR____TtC8Business39IMBTranscriptEmptyMessageViewController_messagesAppProxy + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC8Business39IMBTranscriptEmptyMessageViewController_bubbleView];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____TtC8Business39IMBTranscriptEmptyMessageViewController_conversation] = a1;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for IMBTranscriptEmptyMessageViewController();
  v4 = a1;
  v5 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", 0, 0);
  v6 = qword_1000EEE80;
  v7 = v5;
  if (v6 != -1)
  {
    swift_once();
  }

  sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000AF0E0;
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = NSStringFromClass(ObjCClassFromMetadata);
  v11 = sub_1000AC06C();
  v13 = v12;

  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_10000587C();
  *(v8 + 32) = v11;
  *(v8 + 40) = v13;
  sub_1000ABA5C();

  return v7;
}

void sub_100030C9C()
{
  v1 = v0;
  v2 = type metadata accessor for URLHelper();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2, v4);
  v6 = &v33[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IMBTranscriptEmptyMessageViewController();
  v36.receiver = v1;
  v36.super_class = v7;
  objc_msgSendSuper2(&v36, "viewDidLoad");
  v8 = BCBubbleViewStyleIcon;
  sub_10004EA70(v6);
  v34 = v2;
  v35 = &off_1000DCB20;
  v9 = sub_100030970(v33);
  sub_10001E764(v6, v9);
  v10 = objc_allocWithZone(type metadata accessor for IMBBubbleView());
  v11 = v34;
  v12 = sub_1000315C0(v33, v34);
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v12, v12);
  v15 = &v33[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = sub_10003F008(0, v8, v15, v10);

  sub_10001E7C8(v6);
  sub_10000E738(v33);
  v18 = [objc_opt_self() defaultBubbleTitleFor:0];
  v19 = sub_1000AC06C();
  v21 = v20;

  v22 = (v17 + OBJC_IVAR____TtC8Business13IMBBubbleView_title);
  v23 = *(v17 + OBJC_IVAR____TtC8Business13IMBBubbleView_title + 8);
  *v22 = v19;
  v22[1] = v21;

  sub_1000A9FF0();
  [v17 setUserInteractionEnabled:0];
  *(v17 + OBJC_IVAR____TtC8Business13IMBBubbleView_delegate + 8) = &off_1000DB8C8;
  swift_unknownObjectWeakAssign();
  v24 = *(v17 + OBJC_IVAR____TtC8Business13IMBBubbleView_image);
  *(v17 + OBJC_IVAR____TtC8Business13IMBBubbleView_image) = 0;

  sub_1000AA2B0();
  v25 = &v1[OBJC_IVAR____TtC8Business39IMBTranscriptEmptyMessageViewController_bubbleView];
  v26 = *&v1[OBJC_IVAR____TtC8Business39IMBTranscriptEmptyMessageViewController_bubbleView];
  *v25 = v17;
  *(v25 + 1) = &off_1000DE0A0;
  v27 = v17;

  v28 = [v1 view];
  if (v28)
  {
    v29 = v28;
    [v28 addSubview:v27];

    v30 = [v1 view];
    if (v30)
    {
      v31 = v30;
      sub_1000155F4(v30);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_100030FFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBTranscriptEmptyMessageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1000310B0(double a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC8Business39IMBTranscriptEmptyMessageViewController_bubbleView);
  if (v5)
  {
    v6 = *(v2 + OBJC_IVAR____TtC8Business39IMBTranscriptEmptyMessageViewController_bubbleView + 8);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 8);
    v9 = *(v8 + 16);
    v10 = v5;
    a1 = v9(ObjectType, v8, a1, a2);
  }

  return a1;
}

uint64_t sub_100031184()
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2BC();

  return sub_1000ABA5C();
}

id sub_100031220()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = [Strong activeConversation];
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_100031280@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = sub_1000AC8EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000413C(&qword_1000F0728, &unk_1000B1A10);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v24 - v11;
  v27 = v1;
  sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000AF0F0;
  strcpy((v13 + 32), "conversation");
  *(v13 + 45) = 0;
  *(v13 + 46) = -5120;
  v14 = *&v1[OBJC_IVAR____TtC8Business39IMBTranscriptEmptyMessageViewController_conversation];
  v15 = sub_100031574();
  *(v13 + 48) = v14;
  *(v13 + 72) = v15;
  *(v13 + 80) = 0xD000000000000010;
  *(v13 + 88) = 0x80000001000B8300;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    ObjectType = swift_getObjectType();
    *&v25 = v17;
    sub_100006910(&v25, (v13 + 96));
  }

  else
  {
    *(v13 + 120) = &type metadata for String;
    *(v13 + 96) = 7104878;
    *(v13 + 104) = 0xE300000000000000;
  }

  v18 = enum case for Mirror.DisplayStyle.class(_:);
  v19 = sub_1000AC8DC();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v12, v18, v19);
  (*(v20 + 56))(v12, 0, 1, v19);
  (*(v3 + 104))(v7, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  type metadata accessor for IMBTranscriptEmptyMessageViewController();
  v21 = v1;
  v22 = v14;
  return sub_1000AC8FC();
}

unint64_t sub_100031574()
{
  result = qword_1000F0730;
  if (!qword_1000F0730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000F0730);
  }

  return result;
}

uint64_t sub_1000315C0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

id sub_100031620(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000AB6EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Endpoint(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for Request(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15, v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC8Business10HttpClient_httpSuccessCodeMin] = 200;
  *&v2[OBJC_IVAR____TtC8Business10HttpClient_httpSuccessCodeMax] = 299;
  v35 = OBJC_IVAR____TtC8Business10HttpClient_reachability;
  *&v2[OBJC_IVAR____TtC8Business10HttpClient_reachability] = 0;
  sub_10002A0C8(a1, &v2[OBJC_IVAR____TtC8Business10HttpClient_endpoint]);
  v37 = a1;
  sub_10002A0C8(a1, v14);
  v20 = *v14;
  v21 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
  v22 = *(v15 + 20);
  v23 = *(v5 + 32);
  v36 = v4;
  v23(&v19[v22], v14 + v21, v4);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2BC();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1000AF0E0;
  *(v24 + 56) = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  *(v24 + 64) = sub_100011970();
  *(v24 + 32) = v20;

  sub_1000ABA5C();

  *v19 = 1;
  *&v19[*(v15 + 24)] = v20;
  v25 = &v19[v22];
  v26 = v36;
  (*(v5 + 16))(v9, v25, v36);
  sub_10003634C(v19, type metadata accessor for Request);
  sub_1000AB64C();
  (*(v5 + 8))(v9, v26);
  v27 = sub_1000AC10C();

  v28 = SCNetworkReachabilityCreateWithName(0, (v27 + 32));

  v29 = 0;
  if (v28)
  {
    type metadata accessor for Reachability();
    swift_allocObject();
    v29 = Reachability.init(networkReachability:)(v28);
  }

  v30 = *&v2[v35];
  *&v2[v35] = v29;

  v31 = type metadata accessor for HttpClient();
  v38.receiver = v2;
  v38.super_class = v31;
  v32 = objc_msgSendSuper2(&v38, "init");
  sub_10003634C(v37, type metadata accessor for Endpoint);
  return v32;
}

void sub_1000319F8(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, uint64_t))
{
  if (a3)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v13 = a3;
      if ([v12 statusCode] < 200 || objc_msgSend(v12, "statusCode") >= 300)
      {
        v53 = a6;
        if (qword_1000EEE80 != -1)
        {
          swift_once();
        }

        sub_1000AC2BC();
        sub_10000413C(&qword_1000F0060, &unk_1000B0470);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1000AF0E0;
        [v12 statusCode];
        sub_100036424();
        v15 = sub_1000AC46C();
        v17 = v16;
        *(v14 + 56) = &type metadata for String;
        *(v14 + 64) = sub_10000587C();
        *(v14 + 32) = v15;
        *(v14 + 40) = v17;
        sub_1000ABA5C();

        sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000AF0E0;
        *(inited + 32) = sub_1000AC06C();
        *(inited + 40) = v19;
        sub_1000AC58C(25);

        *&v55[0] = [v12 statusCode];
        v57._countAndFlagsBits = sub_1000AC78C();
        sub_1000AC12C(v57);

        *(inited + 72) = &type metadata for String;
        *(inited + 48) = 0xD000000000000017;
        *(inited + 56) = 0x80000001000B87D0;
        sub_10004FE58(inited);
        swift_setDeallocating();
        sub_1000362E4(inited + 32);
        v20 = objc_allocWithZone(NSError);
        v21 = sub_1000AC02C();
        isa = sub_1000ABFAC().super.isa;

        v23 = [v20 initWithDomain:v21 code:500 userInfo:isa];

        v24 = v23;
        v53(v23, 1);

        return;
      }
    }
  }

  if (a4)
  {
    swift_errorRetain();
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    v26 = sub_1000AC7FC();
    v28 = v27;
    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = sub_10000587C();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    sub_1000ABA5C();

    swift_errorRetain();
    a6(a4, 1);
  }

  else if (a2 >> 60 == 15)
  {
    sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
    v29 = swift_initStackObject();
    *(v29 + 16) = xmmword_1000AF0E0;
    *(v29 + 32) = sub_1000AC06C();
    *(v29 + 72) = &type metadata for String;
    *(v29 + 40) = v30;
    *(v29 + 48) = 0xD00000000000001ALL;
    *(v29 + 56) = 0x80000001000B8640;
    sub_10004FE58(v29);
    swift_setDeallocating();
    sub_1000362E4(v29 + 32);
    v31 = objc_allocWithZone(NSError);
    v32 = sub_1000AC02C();
    v33 = sub_1000ABFAC().super.isa;

    v34 = [v31 initWithDomain:v32 code:0 userInfo:v33];

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2AC();
    sub_1000ABA5C();
    v35 = v34;
    a6(v34, 1);
  }

  else
  {
    sub_1000363D0(a1, a2);
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2BC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1000AF0E0;
    *&v56[0] = a3;
    v37 = a3;
    sub_10000413C(&qword_1000F07B0, &qword_1000B1AE8);
    v38 = sub_1000AC0CC();
    v40 = v39;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = sub_10000587C();
    *(v36 + 32) = v38;
    *(v36 + 40) = v40;
    sub_1000ABA5C();

    v41 = objc_opt_self();
    v42 = sub_1000AB72C().super.isa;
    v54 = 0;
    v43 = [v41 JSONObjectWithData:v42 options:4 error:&v54];

    v44 = v54;
    if (v43)
    {
      sub_1000AC47C();
      swift_unknownObjectRelease();
      sub_100006910(v55, v56);
      sub_1000068B4(v56, v55);
      sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
      if (swift_dynamicCast())
      {
        a6(v54, 0);
        sub_10000E950(a1, a2);

        sub_10000E738(v56);
        return;
      }

      sub_10000E738(v56);
    }

    else
    {
      v45 = v44;
      sub_1000AB63C();

      swift_willThrow();
    }

    sub_1000AC2AC();
    sub_1000ABA5C();
    sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
    v46 = swift_initStackObject();
    *(v46 + 16) = xmmword_1000AF0E0;
    *(v46 + 32) = sub_1000AC06C();
    *(v46 + 72) = &type metadata for String;
    *(v46 + 40) = v47;
    *(v46 + 48) = 0xD00000000000002ALL;
    *(v46 + 56) = 0x80000001000B8720;
    sub_10004FE58(v46);
    swift_setDeallocating();
    sub_1000362E4(v46 + 32);
    v48 = objc_allocWithZone(NSError);
    v49 = sub_1000AC02C();
    v50 = sub_1000ABFAC().super.isa;

    v51 = [v48 initWithDomain:v49 code:0 userInfo:v50];

    v52 = v51;
    a6(v51, 1);
    sub_10000E950(a1, a2);
  }
}

uint64_t sub_1000323BC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = sub_1000AB73C();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, a3, a4);

  sub_10000E950(v6, v11);
}

uint64_t type metadata accessor for HttpClient()
{
  result = qword_1000F0770;
  if (!qword_1000F0770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100032584()
{
  v3[4] = &value witness table for Builtin.Int64 + 64;
  v3[5] = &value witness table for Builtin.Int64 + 64;
  result = sub_1000AB6EC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8);
    swift_getTupleTypeLayout2();
    v3[6] = v3;
    v3[7] = "\b";
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_10003269C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1000326F8(char *a1, void (*a2)(id), uint64_t a3)
{
  v6 = type metadata accessor for Request(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6, v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Endpoint(0);
  v12 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11 - 8, v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v55 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = *&a1[OBJC_IVAR____TtC8Business10HttpClient_reachability];
  if (!v21 || (v22 = *(v21 + 48)) == 0)
  {
    sub_10002A2D0(a2);
LABEL_7:
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2BC();
    sub_1000ABA5C();
    sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000AF0E0;
    *(inited + 32) = sub_1000AC06C();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v24;
    *(inited + 48) = 0xD000000000000018;
    *(inited + 56) = 0x80000001000B8560;
    sub_10004FE58(inited);
    swift_setDeallocating();
    sub_1000362E4(inited + 32);
    v25 = objc_allocWithZone(NSError);
    v26 = sub_1000AC02C();
    isa = sub_1000ABFAC().super.isa;

    v28 = [v25 initWithDomain:v26 code:0 userInfo:isa];

    if (a2)
    {
      v29 = v28;
      a2(v28);

      v28 = v29;
      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  flags[0] = 0;
  sub_10002A2D0(a2);

  if (!SCNetworkReachabilityGetFlags(v22, flags) || (flags[0] & 2) == 0 || (v30 = *(v21 + 48)) != 0 && (flags[0] = 0, SCNetworkReachabilityGetFlags(v30, flags)) && (~flags[0] & 5) == 0)
  {

    goto LABEL_7;
  }

  v57 = a1;
  sub_10002A0C8(&a1[OBJC_IVAR____TtC8Business10HttpClient_endpoint], v19);
  sub_10002A0C8(v19, v16);
  v59 = *v16;
  v31 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
  v32 = *(v6 + 20);
  v33 = sub_1000AB6EC();
  (*(*(v33 - 8) + 32))(&v10[v32], &v16[v31], v33);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v58 = sub_1000AC2BC();
  v56 = sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v34 = swift_allocObject();
  v55 = xmmword_1000AF0E0;
  *(v34 + 16) = xmmword_1000AF0E0;
  *(v34 + 56) = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  *(v34 + 64) = sub_100011970();
  v35 = v59;
  *(v34 + 32) = v59;

  sub_1000ABA5C();

  sub_10003634C(v19, type metadata accessor for Endpoint);
  *v10 = 1;
  *&v10[*(v6 + 24)] = v35;
  v36 = sub_100089A28();
  sub_10003634C(v10, type metadata accessor for Request);
  if (!v36)
  {
    v43 = objc_allocWithZone(NSError);
    v44 = sub_1000AC02C();
    v28 = [v43 initWithDomain:v44 code:1 userInfo:0];

    sub_1000AC2AC();
    sub_1000ABA5C();
    if (a2)
    {
      v45 = v28;
      a2(v28);

      v28 = v45;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  sub_1000AC2BC();
  v37 = swift_allocObject();
  *(v37 + 16) = v55;
  v38 = [v36 HTTPBody];
  if (v38)
  {
    v39 = v38;
    v40 = sub_1000AB73C();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0xF000000000000000;
  }

  v46 = v57;
  *flags = v40;
  v61 = v42;
  sub_10000413C(&qword_1000F07A8, &qword_1000B1AE0);
  v47 = sub_1000AC0CC();
  v49 = v48;
  *(v37 + 56) = &type metadata for String;
  *(v37 + 64) = sub_10000587C();
  *(v37 + 32) = v47;
  *(v37 + 40) = v49;
  sub_1000ABA5C();

  v50 = [objc_opt_self() ephemeralSessionConfiguration];
  v51 = [objc_opt_self() sessionWithConfiguration:v50];

  v52 = swift_allocObject();
  v52[2] = v46;
  v52[3] = sub_100036524;
  v52[4] = v20;
  v64 = sub_100036F78;
  v65 = v52;
  *flags = _NSConcreteStackBlock;
  v61 = 1107296256;
  v62 = sub_1000323BC;
  v63 = &unk_1000DBBF8;
  v53 = _Block_copy(flags);
  v54 = v46;

  v28 = [v51 dataTaskWithRequest:v36 completionHandler:v53];
  _Block_release(v53);
  [v28 resume];

LABEL_12:
}

void sub_100032F2C(char *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Request(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6, v8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Endpoint(0);
  v12 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11 - 8, v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v57 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = *&a1[OBJC_IVAR____TtC8Business10HttpClient_reachability];
  if (!v21 || (v22 = *(v21 + 48)) == 0)
  {

    v24 = a3;
    goto LABEL_7;
  }

  flags[0] = 0;

  v23 = a3;

  if (!SCNetworkReachabilityGetFlags(v22, flags) || (flags[0] & 2) == 0 || (v33 = *(v21 + 48)) != 0 && (flags[0] = 0, SCNetworkReachabilityGetFlags(v33, flags)) && (~flags[0] & 5) == 0)
  {

LABEL_7:
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2BC();
    sub_1000ABA5C();
    sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000AF0E0;
    *(inited + 32) = sub_1000AC06C();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v26;
    *(inited + 48) = 0xD000000000000018;
    *(inited + 56) = 0x80000001000B8560;
    sub_10004FE58(inited);
    swift_setDeallocating();
    sub_1000362E4(inited + 32);
    v27 = objc_allocWithZone(NSError);
    v28 = sub_1000AC02C();
    isa = sub_1000ABFAC().super.isa;

    v30 = [v27 initWithDomain:v28 code:0 userInfo:isa];

    v31 = v30;
    sub_100022F90(v31);
    goto LABEL_10;
  }

  v58 = v23;
  sub_10002A0C8(&a1[OBJC_IVAR____TtC8Business10HttpClient_endpoint], v19);
  sub_10002A0C8(v19, v16);
  v34 = *v16;
  v35 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
  v36 = *(v6 + 20);
  v37 = sub_1000AB6EC();
  (*(*(v37 - 8) + 32))(&v10[v36], &v16[v35], v37);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v38 = qword_1000FC008;
  sub_1000AC2BC();
  v60 = sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v39 = swift_allocObject();
  v59 = xmmword_1000AF0E0;
  *(v39 + 16) = xmmword_1000AF0E0;
  *(v39 + 56) = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  *(v39 + 64) = sub_100011970();
  *(v39 + 32) = v34;

  v61 = v38;
  sub_1000ABA5C();

  sub_10003634C(v19, type metadata accessor for Endpoint);
  *v10 = 1;
  *&v10[*(v6 + 24)] = v34;
  v40 = sub_100089A28();
  sub_10003634C(v10, type metadata accessor for Request);
  if (!v40)
  {
    v47 = objc_allocWithZone(NSError);
    v48 = sub_1000AC02C();
    v49 = [v47 initWithDomain:v48 code:1 userInfo:0];

    sub_1000AC2AC();
    sub_1000ABA5C();
    v31 = v49;
    sub_100022F90(v31);

LABEL_10:

    v32 = v31;
    goto LABEL_11;
  }

  LODWORD(v58) = sub_1000AC2BC();
  v41 = swift_allocObject();
  *(v41 + 16) = v59;
  v42 = [v40 HTTPBody];
  if (v42)
  {
    v43 = v42;
    v44 = sub_1000AB73C();
    v46 = v45;
  }

  else
  {
    v44 = 0;
    v46 = 0xF000000000000000;
  }

  *flags = v44;
  v63 = v46;
  sub_10000413C(&qword_1000F07A8, &qword_1000B1AE0);
  v50 = sub_1000AC0CC();
  v52 = v51;
  *(v41 + 56) = &type metadata for String;
  *(v41 + 64) = sub_10000587C();
  *(v41 + 32) = v50;
  *(v41 + 40) = v52;
  sub_1000ABA5C();

  v53 = [objc_opt_self() ephemeralSessionConfiguration];
  v31 = [objc_opt_self() sessionWithConfiguration:v53];

  v54 = swift_allocObject();
  v54[2] = a1;
  v54[3] = sub_100036570;
  v54[4] = v20;
  v66 = sub_100036F78;
  v67 = v54;
  *flags = _NSConcreteStackBlock;
  v63 = 1107296256;
  v64 = sub_1000323BC;
  v65 = &unk_1000DBC70;
  v55 = _Block_copy(flags);
  v56 = a1;

  v32 = [v31 dataTaskWithRequest:v40 completionHandler:v55];
  _Block_release(v55);
  [v32 resume];

LABEL_11:
}

void sub_100033720(char *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Request(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8, v10);
  v12 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Endpoint(0);
  v14 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13 - 8, v15);
  v18 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v19);
  v21 = v61 - v20;
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = a4;
  v23 = *&a1[OBJC_IVAR____TtC8Business10HttpClient_reachability];
  if (!v23 || (v64 = a1, (v24 = *(v23 + 48)) == 0))
  {
    v26 = a2;

    v27 = a4;
    goto LABEL_7;
  }

  flags[0] = 0;
  v63 = a2;

  v25 = a4;

  if (!SCNetworkReachabilityGetFlags(v24, flags) || (flags[0] & 2) == 0 || (v36 = *(v23 + 48), v37 = v64, v36) && (flags[0] = 0, SCNetworkReachabilityGetFlags(v36, flags)) && (~flags[0] & 5) == 0)
  {

LABEL_7:
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2BC();
    sub_1000ABA5C();
    sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000AF0E0;
    *(inited + 32) = sub_1000AC06C();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v29;
    *(inited + 48) = 0xD000000000000018;
    *(inited + 56) = 0x80000001000B8560;
    sub_10004FE58(inited);
    swift_setDeallocating();
    sub_1000362E4(inited + 32);
    v30 = objc_allocWithZone(NSError);
    v31 = sub_1000AC02C();
    isa = sub_1000ABFAC().super.isa;

    v33 = [v30 initWithDomain:v31 code:0 userInfo:isa];

    v34 = v33;
    [a2 invalidate];
    sub_100022F90(v34);
    goto LABEL_10;
  }

  v61[1] = v25;
  sub_10002A0C8(v37 + OBJC_IVAR____TtC8Business10HttpClient_endpoint, v21);
  sub_10002A0C8(v21, v18);
  v38 = *v18;
  v39 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
  v40 = *(v8 + 20);
  v41 = sub_1000AB6EC();
  (*(*(v41 - 8) + 32))(&v12[v40], &v18[v39], v41);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2BC();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v42 = swift_allocObject();
  v62 = xmmword_1000AF0E0;
  *(v42 + 16) = xmmword_1000AF0E0;
  *(v42 + 56) = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  *(v42 + 64) = sub_100011970();
  *(v42 + 32) = v38;

  sub_1000ABA5C();

  sub_10003634C(v21, type metadata accessor for Endpoint);
  *v12 = 1;
  *&v12[*(v8 + 24)] = v38;
  v43 = sub_100089A28();
  sub_10003634C(v12, type metadata accessor for Request);
  if (!v43)
  {
    v50 = objc_allocWithZone(NSError);
    v51 = sub_1000AC02C();
    v52 = [v50 initWithDomain:v51 code:1 userInfo:0];

    sub_1000AC2AC();
    sub_1000ABA5C();
    v34 = v52;
    [v63 invalidate];
    sub_100022F90(v34);

LABEL_10:

    v35 = v34;
    goto LABEL_11;
  }

  sub_1000AC2BC();
  v44 = swift_allocObject();
  *(v44 + 16) = v62;
  v45 = [v43 HTTPBody];
  if (v45)
  {
    v46 = v45;
    v47 = sub_1000AB73C();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0xF000000000000000;
  }

  *flags = v47;
  v66 = v49;
  sub_10000413C(&qword_1000F07A8, &qword_1000B1AE0);
  v53 = sub_1000AC0CC();
  v55 = v54;
  *(v44 + 56) = &type metadata for String;
  *(v44 + 64) = sub_10000587C();
  *(v44 + 32) = v53;
  *(v44 + 40) = v55;
  sub_1000ABA5C();

  v56 = [objc_opt_self() ephemeralSessionConfiguration];
  v34 = [objc_opt_self() sessionWithConfiguration:v56];

  v57 = swift_allocObject();
  v58 = v64;
  v57[2] = v64;
  v57[3] = sub_1000364D4;
  v57[4] = v22;
  v69 = sub_100036F78;
  v70 = v57;
  *flags = _NSConcreteStackBlock;
  v66 = 1107296256;
  v67 = sub_1000323BC;
  v68 = &unk_1000DBB80;
  v59 = _Block_copy(flags);
  v60 = v58;

  v35 = [v34 dataTaskWithRequest:v43 completionHandler:v59];
  _Block_release(v59);
  [v35 resume];

LABEL_11:
}

void sub_100033F50(char *a1, void *a2, void *a3, const void *a4)
{
  v8 = type metadata accessor for Request(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8, v10);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Endpoint(0);
  v14 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13 - 8, v15);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v19);
  v21 = &v63 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = sub_1000362CC;
  v23[4] = v22;
  v23[5] = a3;
  v68 = a1;
  v69 = v22;
  v24 = *&a1[OBJC_IVAR____TtC8Business10HttpClient_reachability];
  if (!v24 || (v25 = *(v24 + 48)) == 0)
  {
    _Block_copy(a4);
    _Block_copy(a4);
    v26 = a2;

    v27 = a3;
    goto LABEL_7;
  }

  flags[0] = 0;
  _Block_copy(a4);
  _Block_copy(a4);
  v67 = a2;

  v66 = a3;

  if (!SCNetworkReachabilityGetFlags(v25, flags) || (flags[0] & 2) == 0 || (v36 = *(v24 + 48)) != 0 && (flags[0] = 0, SCNetworkReachabilityGetFlags(v36, flags)) && (~flags[0] & 5) == 0)
  {

LABEL_7:
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2BC();
    sub_1000ABA5C();
    sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000AF0E0;
    *(inited + 32) = sub_1000AC06C();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v29;
    *(inited + 48) = 0xD000000000000018;
    *(inited + 56) = 0x80000001000B8560;
    sub_10004FE58(inited);
    swift_setDeallocating();
    sub_1000362E4(inited + 32);
    v30 = objc_allocWithZone(NSError);
    v31 = sub_1000AC02C();
    isa = sub_1000ABFAC().super.isa;

    v33 = [v30 initWithDomain:v31 code:0 userInfo:isa];

    _Block_copy(a4);
    v34 = v33;
    sub_100028104(v33, 1, a2, a3, a4);
    _Block_release(a4);

    goto LABEL_10;
  }

  sub_10002A0C8(v68 + OBJC_IVAR____TtC8Business10HttpClient_endpoint, v21);
  sub_10002A0C8(v21, v18);
  v37 = *v18;
  v38 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
  v39 = *(v8 + 20);
  v40 = sub_1000AB6EC();
  (*(*(v40 - 8) + 32))(&v12[v39], &v18[v38], v40);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v41 = qword_1000FC008;
  sub_1000AC2BC();
  v64 = sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v42 = swift_allocObject();
  v63 = xmmword_1000AF0E0;
  *(v42 + 16) = xmmword_1000AF0E0;
  *(v42 + 56) = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  *(v42 + 64) = sub_100011970();
  *(v42 + 32) = v37;

  v65 = v41;
  sub_1000ABA5C();

  sub_10003634C(v21, type metadata accessor for Endpoint);
  *v12 = 1;
  *&v12[*(v8 + 24)] = v37;
  v43 = sub_100089A28();
  sub_10003634C(v12, type metadata accessor for Request);
  if (!v43)
  {
    v50 = objc_allocWithZone(NSError);
    v51 = sub_1000AC02C();
    v52 = [v50 initWithDomain:v51 code:1 userInfo:0];

    sub_1000AC2AC();
    sub_1000ABA5C();
    _Block_copy(a4);
    v34 = v52;
    v53 = v52;
    v54 = v67;
    sub_100028104(v53, 1, v67, v66, a4);
    _Block_release(a4);

LABEL_10:

    v35 = v34;
    goto LABEL_11;
  }

  sub_1000AC2BC();
  v44 = swift_allocObject();
  *(v44 + 16) = v63;
  v45 = [v43 HTTPBody];
  if (v45)
  {
    v46 = v45;
    v47 = sub_1000AB73C();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0xF000000000000000;
  }

  *flags = v47;
  v71 = v49;
  sub_10000413C(&qword_1000F07A8, &qword_1000B1AE0);
  v55 = sub_1000AC0CC();
  v57 = v56;
  *(v44 + 56) = &type metadata for String;
  *(v44 + 64) = sub_10000587C();
  *(v44 + 32) = v55;
  *(v44 + 40) = v57;
  sub_1000ABA5C();

  v58 = [objc_opt_self() ephemeralSessionConfiguration];
  v34 = [objc_opt_self() sessionWithConfiguration:v58];

  v59 = swift_allocObject();
  v60 = v68;
  v59[2] = v68;
  v59[3] = sub_100036488;
  v59[4] = v23;
  v74 = sub_100036F78;
  v75 = v59;
  *flags = _NSConcreteStackBlock;
  v71 = 1107296256;
  v72 = sub_1000323BC;
  v73 = &unk_1000DBB08;
  v61 = _Block_copy(flags);
  v62 = v60;

  v35 = [v34 dataTaskWithRequest:v43 completionHandler:v61];
  _Block_release(v61);
  [v35 resume];

LABEL_11:

  _Block_release(a4);
}

void sub_10003483C(char *a1, void *a2, void (*a3)(id), uint64_t a4, void *a5)
{
  v10 = type metadata accessor for Request(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Endpoint(0);
  v16 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15 - 8, v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v21);
  v23 = &v62 - v22;
  v24 = swift_allocObject();
  v24[2] = a2;
  v24[3] = a3;
  v67 = a1;
  v68 = a3;
  v24[4] = a4;
  v24[5] = a5;
  v25 = *&a1[OBJC_IVAR____TtC8Business10HttpClient_reachability];
  if (!v25 || (v26 = *(v25 + 48)) == 0)
  {
    v27 = a2;

    v28 = a5;
    goto LABEL_7;
  }

  flags[0] = 0;
  v66 = a2;

  v65 = a5;

  if (!SCNetworkReachabilityGetFlags(v26, flags) || (flags[0] & 2) == 0 || (v37 = *(v25 + 48)) != 0 && (flags[0] = 0, SCNetworkReachabilityGetFlags(v37, flags)) && (~flags[0] & 5) == 0)
  {

LABEL_7:
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2BC();
    sub_1000ABA5C();
    sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000AF0E0;
    *(inited + 32) = sub_1000AC06C();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v30;
    *(inited + 48) = 0xD000000000000018;
    *(inited + 56) = 0x80000001000B8560;
    sub_10004FE58(inited);
    swift_setDeallocating();
    sub_1000362E4(inited + 32);
    v31 = objc_allocWithZone(NSError);
    v32 = sub_1000AC02C();
    isa = sub_1000ABFAC().super.isa;

    v34 = [v31 initWithDomain:v32 code:0 userInfo:isa];

    v35 = v34;
    sub_100025F78(v34, 1, a2, v68, a4, a5);
    goto LABEL_10;
  }

  sub_10002A0C8(v67 + OBJC_IVAR____TtC8Business10HttpClient_endpoint, v23);
  sub_10002A0C8(v23, v20);
  v38 = *v20;
  v39 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
  v40 = *(v10 + 20);
  v41 = sub_1000AB6EC();
  (*(*(v41 - 8) + 32))(&v14[v40], &v20[v39], v41);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v42 = qword_1000FC008;
  sub_1000AC2BC();
  v63 = sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v43 = swift_allocObject();
  v62 = xmmword_1000AF0E0;
  *(v43 + 16) = xmmword_1000AF0E0;
  *(v43 + 56) = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  *(v43 + 64) = sub_100011970();
  *(v43 + 32) = v38;

  v64 = v42;
  sub_1000ABA5C();

  sub_10003634C(v23, type metadata accessor for Endpoint);
  *v14 = 1;
  *&v14[*(v10 + 24)] = v38;
  v44 = sub_100089A28();
  sub_10003634C(v14, type metadata accessor for Request);
  if (!v44)
  {
    v51 = objc_allocWithZone(NSError);
    v52 = sub_1000AC02C();
    v53 = [v51 initWithDomain:v52 code:1 userInfo:0];

    sub_1000AC2AC();
    sub_1000ABA5C();
    v35 = v53;
    sub_100025F78(v53, 1, v66, v68, a4, v65);

LABEL_10:

    v36 = v35;
    goto LABEL_11;
  }

  sub_1000AC2BC();
  v45 = swift_allocObject();
  *(v45 + 16) = v62;
  v46 = [v44 HTTPBody];
  if (v46)
  {
    v47 = v46;
    v48 = sub_1000AB73C();
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0xF000000000000000;
  }

  *flags = v48;
  v70 = v50;
  sub_10000413C(&qword_1000F07A8, &qword_1000B1AE0);
  v54 = sub_1000AC0CC();
  v56 = v55;
  *(v45 + 56) = &type metadata for String;
  *(v45 + 64) = sub_10000587C();
  *(v45 + 32) = v54;
  *(v45 + 40) = v56;
  sub_1000ABA5C();

  v57 = [objc_opt_self() ephemeralSessionConfiguration];
  v35 = [objc_opt_self() sessionWithConfiguration:v57];

  v58 = swift_allocObject();
  v59 = v67;
  v58[2] = v67;
  v58[3] = sub_100036FA4;
  v58[4] = v24;
  v73 = sub_100036F78;
  v74 = v58;
  *flags = _NSConcreteStackBlock;
  v70 = 1107296256;
  v71 = sub_1000323BC;
  v72 = &unk_1000DBDD8;
  v60 = _Block_copy(flags);
  v61 = v59;

  v36 = [v35 dataTaskWithRequest:v44 completionHandler:v60];
  _Block_release(v60);
  [v36 resume];

LABEL_11:
}

void sub_100035084(char *a1, void *a2, const void *a3)
{
  v6 = type metadata accessor for Request(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6, v8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Endpoint(0);
  v12 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11 - 8, v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v61 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = sub_1000362CC;
  v21[4] = v20;
  v22 = *&a1[OBJC_IVAR____TtC8Business10HttpClient_reachability];
  if (!v22 || (v67 = a1, (v23 = *(v22 + 48)) == 0))
  {
    _Block_copy(a3);
    _Block_copy(a3);
    v24 = a2;

    goto LABEL_7;
  }

  flags[0] = 0;
  _Block_copy(a3);
  _Block_copy(a3);
  v66 = a2;

  if (!SCNetworkReachabilityGetFlags(v23, flags) || (flags[0] & 2) == 0 || (v33 = *(v22 + 48), v34 = v67, v33) && (flags[0] = 0, SCNetworkReachabilityGetFlags(v33, flags)) && (~flags[0] & 5) == 0)
  {

LABEL_7:
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2BC();
    sub_1000ABA5C();
    sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000AF0E0;
    *(inited + 32) = sub_1000AC06C();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v26;
    *(inited + 48) = 0xD000000000000018;
    *(inited + 56) = 0x80000001000B8560;
    sub_10004FE58(inited);
    swift_setDeallocating();
    sub_1000362E4(inited + 32);
    v27 = objc_allocWithZone(NSError);
    v28 = sub_1000AC02C();
    isa = sub_1000ABFAC().super.isa;

    v30 = [v27 initWithDomain:v28 code:0 userInfo:isa];

    _Block_copy(a3);
    v31 = v30;
    sub_1000288B8(v30, 1, a2, a3);
    _Block_release(a3);

    goto LABEL_10;
  }

  sub_10002A0C8(v34 + OBJC_IVAR____TtC8Business10HttpClient_endpoint, v19);
  sub_10002A0C8(v19, v16);
  v64 = *v16;
  v35 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
  v36 = *(v6 + 20);
  v37 = sub_1000AB6EC();
  (*(*(v37 - 8) + 32))(&v10[v36], &v16[v35], v37);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v38 = qword_1000FC008;
  v63 = sub_1000AC2BC();
  v62 = sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v39 = swift_allocObject();
  v61 = xmmword_1000AF0E0;
  *(v39 + 16) = xmmword_1000AF0E0;
  *(v39 + 56) = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  *(v39 + 64) = sub_100011970();
  v40 = v64;
  *(v39 + 32) = v64;

  v65 = v38;
  sub_1000ABA5C();

  sub_10003634C(v19, type metadata accessor for Endpoint);
  *v10 = 1;
  *&v10[*(v6 + 24)] = v40;
  v41 = sub_100089A28();
  sub_10003634C(v10, type metadata accessor for Request);
  if (!v41)
  {
    v48 = objc_allocWithZone(NSError);
    v49 = sub_1000AC02C();
    v50 = [v48 initWithDomain:v49 code:1 userInfo:0];

    sub_1000AC2AC();
    sub_1000ABA5C();
    _Block_copy(a3);
    v31 = v50;
    v51 = v50;
    v52 = v66;
    sub_1000288B8(v51, 1, v66, a3);
    _Block_release(a3);

LABEL_10:

    v32 = v31;
    goto LABEL_11;
  }

  sub_1000AC2BC();
  v42 = swift_allocObject();
  *(v42 + 16) = v61;
  v43 = [v41 HTTPBody];
  if (v43)
  {
    v44 = v43;
    v45 = sub_1000AB73C();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0xF000000000000000;
  }

  *flags = v45;
  v69 = v47;
  sub_10000413C(&qword_1000F07A8, &qword_1000B1AE0);
  v53 = sub_1000AC0CC();
  v55 = v54;
  *(v42 + 56) = &type metadata for String;
  *(v42 + 64) = sub_10000587C();
  *(v42 + 32) = v53;
  *(v42 + 40) = v55;
  sub_1000ABA5C();

  v56 = [objc_opt_self() ephemeralSessionConfiguration];
  v31 = [objc_opt_self() sessionWithConfiguration:v56];

  v57 = swift_allocObject();
  v58 = v67;
  v57[2] = v67;
  v57[3] = sub_100036478;
  v57[4] = v21;
  v72 = sub_100036F78;
  v73 = v57;
  *flags = _NSConcreteStackBlock;
  v69 = 1107296256;
  v70 = sub_1000323BC;
  v71 = &unk_1000DBA68;
  v59 = _Block_copy(flags);
  v60 = v58;

  v32 = [v31 dataTaskWithRequest:v41 completionHandler:v59];
  _Block_release(v59);
  [v32 resume];

LABEL_11:

  _Block_release(a3);
}

void sub_1000359DC(char *a1, void *a2, const void *a3)
{
  v6 = type metadata accessor for Request(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6, v8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Endpoint(0);
  v12 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11 - 8, v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v61 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = sub_1000362CC;
  v21[4] = v20;
  v22 = *&a1[OBJC_IVAR____TtC8Business10HttpClient_reachability];
  if (!v22 || (v67 = a1, (v23 = *(v22 + 48)) == 0))
  {
    _Block_copy(a3);
    _Block_copy(a3);
    v24 = a2;

    goto LABEL_7;
  }

  flags[0] = 0;
  _Block_copy(a3);
  _Block_copy(a3);
  v66 = a2;

  if (!SCNetworkReachabilityGetFlags(v23, flags) || (flags[0] & 2) == 0 || (v33 = *(v22 + 48), v34 = v67, v33) && (flags[0] = 0, SCNetworkReachabilityGetFlags(v33, flags)) && (~flags[0] & 5) == 0)
  {

LABEL_7:
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2BC();
    sub_1000ABA5C();
    sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000AF0E0;
    *(inited + 32) = sub_1000AC06C();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v26;
    *(inited + 48) = 0xD000000000000018;
    *(inited + 56) = 0x80000001000B8560;
    sub_10004FE58(inited);
    swift_setDeallocating();
    sub_1000362E4(inited + 32);
    v27 = objc_allocWithZone(NSError);
    v28 = sub_1000AC02C();
    isa = sub_1000ABFAC().super.isa;

    v30 = [v27 initWithDomain:v28 code:0 userInfo:isa];

    _Block_copy(a3);
    v31 = v30;
    sub_10002921C(v30, 1, a2, a3);
    _Block_release(a3);

    goto LABEL_10;
  }

  sub_10002A0C8(v34 + OBJC_IVAR____TtC8Business10HttpClient_endpoint, v19);
  sub_10002A0C8(v19, v16);
  v64 = *v16;
  v35 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
  v36 = *(v6 + 20);
  v37 = sub_1000AB6EC();
  (*(*(v37 - 8) + 32))(&v10[v36], &v16[v35], v37);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v38 = qword_1000FC008;
  v63 = sub_1000AC2BC();
  v62 = sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v39 = swift_allocObject();
  v61 = xmmword_1000AF0E0;
  *(v39 + 16) = xmmword_1000AF0E0;
  *(v39 + 56) = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  *(v39 + 64) = sub_100011970();
  v40 = v64;
  *(v39 + 32) = v64;

  v65 = v38;
  sub_1000ABA5C();

  sub_10003634C(v19, type metadata accessor for Endpoint);
  *v10 = 1;
  *&v10[*(v6 + 24)] = v40;
  v41 = sub_100089A28();
  sub_10003634C(v10, type metadata accessor for Request);
  if (!v41)
  {
    v48 = objc_allocWithZone(NSError);
    v49 = sub_1000AC02C();
    v50 = [v48 initWithDomain:v49 code:1 userInfo:0];

    sub_1000AC2AC();
    sub_1000ABA5C();
    _Block_copy(a3);
    v31 = v50;
    v51 = v50;
    v52 = v66;
    sub_10002921C(v51, 1, v66, a3);
    _Block_release(a3);

LABEL_10:

    v32 = v31;
    goto LABEL_11;
  }

  sub_1000AC2BC();
  v42 = swift_allocObject();
  *(v42 + 16) = v61;
  v43 = [v41 HTTPBody];
  if (v43)
  {
    v44 = v43;
    v45 = sub_1000AB73C();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0xF000000000000000;
  }

  *flags = v45;
  v69 = v47;
  sub_10000413C(&qword_1000F07A8, &qword_1000B1AE0);
  v53 = sub_1000AC0CC();
  v55 = v54;
  *(v42 + 56) = &type metadata for String;
  *(v42 + 64) = sub_10000587C();
  *(v42 + 32) = v53;
  *(v42 + 40) = v55;
  sub_1000ABA5C();

  v56 = [objc_opt_self() ephemeralSessionConfiguration];
  v31 = [objc_opt_self() sessionWithConfiguration:v56];

  v57 = swift_allocObject();
  v58 = v67;
  v57[2] = v67;
  v57[3] = sub_1000362D4;
  v57[4] = v21;
  v72 = sub_1000363AC;
  v73 = v57;
  *flags = _NSConcreteStackBlock;
  v69 = 1107296256;
  v70 = sub_1000323BC;
  v71 = &unk_1000DB9C8;
  v59 = _Block_copy(flags);
  v60 = v58;

  v32 = [v31 dataTaskWithRequest:v41 completionHandler:v59];
  _Block_release(v59);
  [v32 resume];

LABEL_11:

  _Block_release(a3);
}

uint64_t sub_100036294()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000362E4(uint64_t a1)
{
  v2 = sub_10000413C(&qword_1000F0250, &qword_1000B1540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003634C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000363B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000363D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100036424()
{
  result = qword_1000F07B8;
  if (!qword_1000F07B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F07B8);
  }

  return result;
}

uint64_t sub_10003648C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000364E4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100036530()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10003661C(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id, uint64_t, void *, uint64_t, uint64_t), uint64_t a7, uint64_t a8, void *a9, void (*a10)(id, uint64_t, void *, uint64_t, uint64_t))
{
  v74 = a7;
  v75 = a8;
  v76 = a6;
  v14 = type metadata accessor for Request(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14, v16);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Endpoint(0);
  v20 = *(*(v19 - 8) + 64);
  v22 = __chkstk_darwin(v19 - 8, v21);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v67 - v26;
  v28 = swift_allocObject();
  v28[2] = a2;
  v28[3] = a3;
  v28[4] = a4;
  v29 = *&a1[OBJC_IVAR____TtC8Business10HttpClient_reachability];
  if (!v29 || (v73 = a1, (v30 = *(v29 + 48)) == 0))
  {
    v31 = a2;

    goto LABEL_7;
  }

  flags[0] = 0;
  v72 = a2;

  if (!SCNetworkReachabilityGetFlags(v30, flags) || (flags[0] & 2) == 0 || (v40 = *(v29 + 48), v41 = v73, v40) && (flags[0] = 0, SCNetworkReachabilityGetFlags(v40, flags)) && (~flags[0] & 5) == 0)
  {

LABEL_7:
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2BC();
    sub_1000ABA5C();
    sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000AF0E0;
    *(inited + 32) = sub_1000AC06C();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v33;
    *(inited + 48) = 0xD000000000000018;
    *(inited + 56) = 0x80000001000B8560;
    sub_10004FE58(inited);
    swift_setDeallocating();
    sub_1000362E4(inited + 32);
    v34 = objc_allocWithZone(NSError);
    v35 = sub_1000AC02C();
    isa = sub_1000ABFAC().super.isa;

    v37 = [v34 initWithDomain:v35 code:0 userInfo:isa];

    v38 = v37;
    v76(v37, 1, a2, a3, a4);
    goto LABEL_10;
  }

  sub_10002A0C8(v41 + OBJC_IVAR____TtC8Business10HttpClient_endpoint, v27);
  sub_10002A0C8(v27, v24);
  v70 = *v24;
  v42 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
  v43 = *(v14 + 20);
  v44 = sub_1000AB6EC();
  (*(*(v44 - 8) + 32))(&v18[v43], &v24[v42], v44);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v45 = qword_1000FC008;
  v69 = sub_1000AC2BC();
  v68 = sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v46 = swift_allocObject();
  v67 = xmmword_1000AF0E0;
  *(v46 + 16) = xmmword_1000AF0E0;
  *(v46 + 56) = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  *(v46 + 64) = sub_100011970();
  v47 = v70;
  *(v46 + 32) = v70;

  v71 = v45;
  sub_1000ABA5C();

  sub_10003634C(v27, type metadata accessor for Endpoint);
  *v18 = 1;
  *&v18[*(v14 + 24)] = v47;
  v48 = sub_100089A28();
  sub_10003634C(v18, type metadata accessor for Request);
  if (!v48)
  {
    v55 = objc_allocWithZone(NSError);
    v56 = sub_1000AC02C();
    v57 = [v55 initWithDomain:v56 code:1 userInfo:0];

    sub_1000AC2AC();
    sub_1000ABA5C();
    v38 = v57;
    v76(v57, 1, v72, a3, a4);

LABEL_10:

    v39 = v38;
    goto LABEL_11;
  }

  v76 = a10;
  v72 = a9;
  sub_1000AC2BC();
  v49 = swift_allocObject();
  *(v49 + 16) = v67;
  v50 = [v48 HTTPBody];
  if (v50)
  {
    v51 = v50;
    v52 = sub_1000AB73C();
    v54 = v53;
  }

  else
  {
    v52 = 0;
    v54 = 0xF000000000000000;
  }

  *flags = v52;
  v78 = v54;
  sub_10000413C(&qword_1000F07A8, &qword_1000B1AE0);
  v58 = sub_1000AC0CC();
  v60 = v59;
  *(v49 + 56) = &type metadata for String;
  *(v49 + 64) = sub_10000587C();
  *(v49 + 32) = v58;
  *(v49 + 40) = v60;
  sub_1000ABA5C();

  v61 = [objc_opt_self() ephemeralSessionConfiguration];
  v38 = [objc_opt_self() sessionWithConfiguration:v61];

  v62 = swift_allocObject();
  v63 = v73;
  v64 = v75;
  v62[2] = v73;
  v62[3] = v64;
  v62[4] = v28;
  v81 = v72;
  v82 = v62;
  *flags = _NSConcreteStackBlock;
  v78 = 1107296256;
  v79 = sub_1000323BC;
  v80 = v76;
  v65 = _Block_copy(flags);
  v66 = v63;

  v39 = [v38 dataTaskWithRequest:v48 completionHandler:v65];
  _Block_release(v65);
  [v39 resume];

LABEL_11:
}

uint64_t sub_100036E80()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100036EDC()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100036FA8(int a1)
{
  v153 = a1;
  v2 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v152 = &v142 - v5;
  v155 = sub_1000AB60C();
  v154 = *(v155 - 8);
  v6 = *(v154 + 64);
  __chkstk_darwin(v155, v7);
  v151 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1000AB5CC();
  v148 = *(v149 - 8);
  v9 = *(v148 + 64);
  v11 = __chkstk_darwin(v149, v10);
  v144 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11, v13);
  v143 = &v142 - v15;
  v17 = __chkstk_darwin(v14, v16);
  v146 = &v142 - v18;
  __chkstk_darwin(v17, v19);
  v145 = &v142 - v20;
  *&v156 = 0;
  v21 = sub_1000AC0BC();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8, v23);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v24 = qword_1000FC008;
  sub_1000AC28C();
  v160 = sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1000AF0F0;
  v163 = *(v1 + 32);
  v26 = v163;
  v27 = sub_1000AC06C();
  v29 = v28;
  *(v25 + 56) = &type metadata for String;
  v30 = sub_10000587C();
  *(v25 + 64) = v30;
  *(v25 + 32) = v27;
  *(v25 + 40) = v29;
  *&aBlock = *(v1 + 24);
  v158 = aBlock;
  v31 = aBlock;
  sub_10000413C(&qword_1000F07C0, &qword_1000B1C00);
  v32 = sub_1000AC0CC();
  *(v25 + 96) = &type metadata for String;
  *(v25 + 104) = v30;
  v142 = v30;
  *(v25 + 72) = v32;
  *(v25 + 80) = v33;
  v150 = v24;
  sub_1000ABA5C();

  v34 = *v1;
  v157 = v1;
  v35 = *(v1 + 40);
  v36 = v26;
  v37 = [v34 receivedMessage];
  v38 = objc_allocWithZone(BCMessage);
  v147 = v31;
  v39 = [v38 initFromOriginalMessage:v34 rootKey:v36 rootObject:v35 receivedMessage:v37 replyMessage:v31];

  sub_100038540(&v163);
  v40 = [v34 receivedMessage];
  v159 = v39;
  if (v40)
  {
    v41 = v40;
    v42 = [v40 dictionaryValue];

    sub_1000ABFBC();
    v43 = objc_opt_self();
    isa = sub_1000ABFAC().super.isa;
    *&aBlock = 0;
    v45 = [v43 dataWithJSONObject:isa options:1 error:&aBlock];

    v46 = aBlock;
    if (v45)
    {
      v47 = sub_1000AB73C();
      v49 = v48;

      sub_1000AC0AC();
      result = sub_1000AC08C();
      if (!v51)
      {
        __break(1u);
        goto LABEL_45;
      }

      v52 = sub_1000AB6FC();
      v54 = v53;
      sub_10000E964(v47, v49);
      sub_1000AC0AC();
      v55 = sub_1000AC08C();
      sub_1000863A8(v55, v56);
      v58 = v57;

      sub_10000E964(v52, v54);

      if (v58)
      {
        sub_1000AC06C();
        v59 = v145;
        sub_1000AB5BC();

        (*(v148 + 16))(v146, v59, v149);
        v60 = sub_100038C90(0, 1, 1, &_swiftEmptyArrayStorage, &qword_1000F07D0, &qword_1000B1AF0, &type metadata accessor for URLQueryItem);
        v62 = v60[2];
        v61 = v60[3];
        if (v62 >= v61 >> 1)
        {
          v60 = sub_100038C90(v61 > 1, v62 + 1, 1, v60, &qword_1000F07D0, &qword_1000B1AF0, &type metadata accessor for URLQueryItem);
        }

        v39 = v159;
        v63 = v148;
        v64 = v149;
        (*(v148 + 8))(v145, v149);
        v60[2] = v62 + 1;
        (*(v63 + 32))(v60 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v62, v146, v64);
      }

      else
      {
        v60 = &_swiftEmptyArrayStorage;
        v39 = v159;
      }
    }

    else
    {
      v65 = v46;
      sub_1000AB63C();

      swift_willThrow();
      sub_10000413C(&qword_1000F06D0, &unk_1000B06D0);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1000AF0E0;
      swift_getErrorValue();
      v67 = sub_1000AC7FC();
      *(v66 + 56) = &type metadata for String;
      *(v66 + 32) = v67;
      *(v66 + 40) = v68;
      sub_1000AC84C();

      *&v156 = 0;
      v60 = &_swiftEmptyArrayStorage;
      v39 = v159;
    }
  }

  else
  {
    v60 = &_swiftEmptyArrayStorage;
  }

  if (v158)
  {
    v69 = [v147 dictionaryValue];
    sub_1000ABFBC();

    v70 = objc_opt_self();
    v71 = sub_1000ABFAC().super.isa;
    *&aBlock = 0;
    v72 = [v70 dataWithJSONObject:v71 options:1 error:&aBlock];

    v73 = aBlock;
    if (v72)
    {
      v74 = sub_1000AB73C();
      v76 = v75;

      sub_1000AC0AC();
      result = sub_1000AC08C();
      if (v77)
      {

        v78 = sub_1000AB6FC();
        v80 = v79;
        sub_10000E964(v74, v76);
        sub_1000AC0AC();
        v81 = sub_1000AC08C();
        sub_1000863A8(v81, v82);
        v84 = v83;

        sub_10000E964(v78, v80);

        v39 = v159;
        if (v84)
        {
          sub_1000AC06C();
          v85 = v143;
          sub_1000AB5BC();

          (*(v148 + 16))(v144, v85, v149);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v87 = v151;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v60 = sub_100038C90(0, v60[2] + 1, 1, v60, &qword_1000F07D0, &qword_1000B1AF0, &type metadata accessor for URLQueryItem);
          }

          v88 = v34;
          v90 = v60[2];
          v89 = v60[3];
          if (v90 >= v89 >> 1)
          {
            v91 = sub_100038C90(v89 > 1, v90 + 1, 1, v60, &qword_1000F07D0, &qword_1000B1AF0, &type metadata accessor for URLQueryItem);
          }

          else
          {
            v91 = v60;
          }

          v92 = v148;
          v93 = v149;
          (*(v148 + 8))(v143, v149);
          *(v91 + 16) = v90 + 1;
          (*(v92 + 32))(v91 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v90, v144, v93);
          v34 = v88;
          v39 = v159;
        }

        else
        {
          v87 = v151;
        }

        goto LABEL_25;
      }

LABEL_45:
      __break(1u);
      return result;
    }

    v94 = v73;
    sub_1000AB63C();

    swift_willThrow();
    sub_10000413C(&qword_1000F06D0, &unk_1000B06D0);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    v96 = sub_1000AC7FC();
    *(v95 + 56) = &type metadata for String;
    *(v95 + 32) = v96;
    *(v95 + 40) = v97;
    sub_1000AC84C();

    v87 = v151;
    v39 = v159;
  }

  else
  {
    v87 = v151;
  }

LABEL_25:
  v98 = [v39 dictionaryValue];
  v99 = sub_1000ABFBC();

  v162 = v99;
  v100 = swift_allocObject();
  v156 = xmmword_1000AF0E0;
  *(v100 + 16) = xmmword_1000AF0E0;

  v102 = sub_100039CFC(v101);

  *(v100 + 56) = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  *(v100 + 64) = sub_100011970();
  *(v100 + 32) = v102;
  sub_1000AC2BC();
  sub_1000ABA5C();

  v103 = sub_1000AC06C();
  v105 = v104;
  v106 = [v34 imageStore];
  if (v106 && (v107 = v106, v108 = [v106 rawArray], v107, v108))
  {
    v109 = sub_1000AC19C();

    v167 = sub_10000413C(&unk_1000F0240, &qword_1000B05A0);
    *&aBlock = v109;
    sub_100006910(&aBlock, &v164);
    v110 = swift_isUniquelyReferenced_nonNull_native();
    v161 = v99;
    sub_10003A3E8(&v164, v103, v105, v110);

    v162 = v161;
  }

  else
  {
    sub_100039E5C(v103, v105, &aBlock);

    sub_10000E784(&aBlock, &unk_1000F1DF0, &qword_1000B18F0);
  }

  v111 = v157;
  v112 = *(v157 + 8);
  v113 = objc_opt_self();
  v114 = v112;
  v115 = sub_1000ABFAC().super.isa;

  *&aBlock = 0;
  v116 = [v113 dataWithJSONObject:v115 options:1 error:&aBlock];

  v117 = aBlock;
  if (v116)
  {
    v118 = sub_1000AB73C();
    v120 = v119;

    v121 = sub_1000AB72C().super.isa;
    sub_10000E964(v118, v120);
    [v114 set_data:v121];
  }

  else
  {
    v122 = v117;
    sub_1000AB63C();

    swift_willThrow();
    sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
    v123 = sub_1000AC3FC();
    sub_1000AC2AC();
    v124 = swift_allocObject();
    *(v124 + 16) = v156;
    swift_getErrorValue();
    v125 = sub_1000AC7FC();
    v126 = v142;
    *(v124 + 56) = &type metadata for String;
    *(v124 + 64) = v126;
    *(v124 + 32) = v125;
    *(v124 + 40) = v127;
    sub_1000ABA5C();

    v111 = v157;
  }

  v128 = v155;
  v129 = v154;
  sub_1000AB5FC();
  sub_1000AB5DC();
  v130 = v152;
  sub_1000AB5EC();
  v131 = sub_1000AB6EC();
  v132 = *(v131 - 8);
  v134 = 0;
  if ((*(v132 + 48))(v130, 1, v131) != 1)
  {
    sub_1000AB67C(v133);
    v134 = v135;
    (*(v132 + 8))(v130, v131);
  }

  [v114 setURL:v134];

  [v114 setRequiresValidation:1];
  v136 = [v114 summaryText];
  if (!v136)
  {
    if (!v158 || (v136 = [v147 title]) == 0)
    {
      v136 = 0;
    }

    [v114 setSummaryText:v136];
  }

  sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
  v137 = sub_1000AC3FC();
  sub_1000AC2BC();
  v138 = swift_allocObject();
  *(v138 + 16) = v156;
  *(v138 + 56) = sub_100005A24(0, &qword_1000F07C8, MSMessage_ptr);
  *(v138 + 64) = sub_100039F00();
  *(v138 + 32) = v114;
  sub_1000ABA5C();

  v139 = *(v111 + 16);
  if (v153)
  {
    v168 = sub_10003838C;
    v169 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v166 = sub_10003839C;
    v167 = &unk_1000DBE28;
    v140 = _Block_copy(&aBlock);
    [v139 sendMessage:v114 completionHandler:v140];
    _Block_release(v140);
  }

  else
  {
    v168 = sub_100038408;
    v169 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v166 = sub_10003839C;
    v167 = &unk_1000DBE00;
    v141 = _Block_copy(&aBlock);
    [v139 insertMessage:v114 completionHandler:v141];

    _Block_release(v141);
  }

  return (*(v129 + 8))(v87, v128);
}

uint64_t sub_1000382BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100006910(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_10003A3E8(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_10000E784(a1, &unk_1000F1DF0, &qword_1000B18F0);
    sub_100039E5C(a2, a3, v10);

    return sub_10000E784(v10, &unk_1000F1DF0, &qword_1000B18F0);
  }

  return result;
}

void sub_10003839C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100038418(uint64_t result)
{
  if (result)
  {
    sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
    swift_errorRetain();
    v1 = sub_1000AC3FC();
    sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    v3 = sub_1000AC7FC();
    v5 = v4;
    *(v2 + 56) = &type metadata for String;
    *(v2 + 64) = sub_10000587C();
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    sub_1000ABA5C();
  }

  return result;
}

uint64_t sub_100038540(uint64_t a1)
{
  type metadata accessor for BCMessageRootKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_10003859C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000413C(&qword_1000F0840, &qword_1000B1B40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000386A8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000413C(&qword_1000F07E8, &qword_1000B1B00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1000387AC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000413C(&qword_1000F0808, &qword_1000B1B20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000388E0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000413C(&unk_1000F0230, &unk_1000B1530);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100038A14(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000413C(&qword_1000F07F8, &qword_1000B1B10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000413C(&qword_1000F07E0, &qword_1000B54D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100038B5C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000413C(&qword_1000F0820, &qword_1000B1B30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100038C90(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000413C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100038E6C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000413C(&qword_1000F07D8, &qword_1000B1AF8);
  v36 = a2;
  result = sub_1000AC67C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_100006910(v25, v37);
      }

      else
      {
        sub_1000068B4(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1000AC87C();
      sub_1000AC11C();
      result = sub_1000AC8CC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100006910(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_100039138(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1000AB97C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v46 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_10000413C(&qword_1000F0830, &qword_1000B3400);
  v45 = a2;
  result = sub_1000AC67C();
  v14 = result;
  if (*(v11 + 16))
  {
    v49 = v6;
    v41 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v42 = (v7 + 16);
    v43 = v11;
    v44 = v7;
    v47 = (v7 + 32);
    v21 = result + 64;
    v22 = v46;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v27 = v24 | (v15 << 6);
      v28 = *(v11 + 48);
      v48 = *(v44 + 72);
      v29 = v28 + v48 * v27;
      if (v45)
      {
        (*v47)(v22, v29, v49);
        v30 = *(*(v11 + 56) + 8 * v27);
      }

      else
      {
        (*v42)(v22, v29, v49);
        v30 = *(*(v11 + 56) + 8 * v27);
      }

      v31 = *(v14 + 40);
      sub_10003B718();
      result = sub_1000ABFFC();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v22 = v46;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v23 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v22 = v46;
LABEL_9:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v47)(*(v14 + 48) + v48 * v23, v22, v49);
      *(*(v14 + 56) + 8 * v23) = v30;
      ++*(v14 + 16);
      v11 = v43;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1000394E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000413C(&qword_1000F0810, &qword_1000B1B28);
  v39 = a2;
  result = sub_1000AC67C();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1000AC87C();
      sub_1000AC11C();
      result = sub_1000AC8CC();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10003979C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_10000413C(a3, a4);
  v40 = a2;
  result = sub_1000AC67C();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_1000AC87C();
      sub_1000AC11C();
      result = sub_1000AC8CC();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_100039A3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000413C(&qword_1000F07F0, &qword_1000B1B08);
  v40 = a2;
  result = sub_1000AC67C();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1000AC87C();
      sub_1000AC11C();
      result = sub_1000AC8CC();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100039CFC(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
    goto LABEL_2;
  }

  v12 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v12;
LABEL_2:
    __chkstk_darwin(a1, v8);
    v10 = &v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_10003B240(v10, v7, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = v2;
  v15 = sub_10003B44C(v13, v7, v3);

  if (!v14)
  {
    return v15;
  }

  return result;
}

double sub_100039E5C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10004F0CC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10003A9B0();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_100006910((*(v12 + 56) + 32 * v9), a3);
    sub_100039F80(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_100039F00()
{
  result = qword_1000F23B0;
  if (!qword_1000F23B0)
  {
    sub_100005A24(255, &qword_1000F07C8, MSMessage_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F23B0);
  }

  return result;
}

uint64_t sub_100039F68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100039F80(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000AC4BC() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1000AC87C();

      sub_1000AC11C();
      v14 = sub_1000AC8CC();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10003A130(int64_t a1, uint64_t a2)
{
  v4 = sub_1000AB97C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4, v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = sub_1000AC4BC();
    v16 = v14;
    v40 = (v15 + 1) & v14;
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v41 = *(v17 + 56);
    v38 = (v17 - 8);
    v39 = v18;
    do
    {
      v19 = v11;
      v20 = v41 * v13;
      v21 = v16;
      v22 = v17;
      v39(v10, *(a2 + 48) + v41 * v13, v4);
      v23 = *(a2 + 40);
      sub_10003B718();
      v24 = sub_1000ABFFC();
      result = (*v38)(v10, v4);
      v16 = v21;
      v25 = v24 & v21;
      if (a1 >= v40)
      {
        if (v25 >= v40 && a1 >= v25)
        {
LABEL_15:
          v28 = *(a2 + 48);
          result = v28 + v41 * a1;
          v29 = v28 + v20 + v41;
          v30 = v41 * a1 < v20 || result >= v29;
          v17 = v22;
          if (v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v16 = v21;
            v11 = v19;
          }

          else
          {
            v31 = v41 * a1 == v20;
            v11 = v19;
            if (!v31)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v21;
            }
          }

          v32 = *(a2 + 56);
          v33 = (v32 + 8 * a1);
          v34 = (v32 + 8 * v13);
          if (a1 != v13 || v33 >= v34 + 1)
          {
            *v33 = *v34;
            a1 = v13;
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v40 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v17 = v22;
      v11 = v19;
LABEL_4:
      v13 = (v13 + 1) & v16;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_10003A3E8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10004F0CC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10003A9B0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100038E6C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10004F0CC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1000AC7EC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_10000E738(v23);

    return sub_100006910(a1, v23);
  }

  else
  {
    sub_10003A88C(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_10003A538(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000AB97C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_10004F218(a2);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_10003AB68();
      goto LABEL_7;
    }

    sub_100039138(v19, a3 & 1);
    v26 = *v4;
    v27 = sub_10004F218(a2);
    if ((v20 & 1) == (v28 & 1))
    {
      v16 = v27;
      v22 = *v4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v13, a2, v8);
      return sub_10003A8F8(v16, v13, a1, v22);
    }

LABEL_15:
    result = sub_1000AC7EC();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v4;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7];
  v24 = *(v23 + 8 * v16);
  *(v23 + 8 * v16) = a1;
}

uint64_t sub_10003A704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10004F0CC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100039A3C(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_10004F0CC(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1000AC7EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_10003B0C8();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

_OWORD *sub_10003A88C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100006910(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_10003A8F8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1000AB97C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_10003A9B0()
{
  v1 = v0;
  sub_10000413C(&qword_1000F07D8, &qword_1000B1AF8);
  v2 = *v0;
  v3 = sub_1000AC66C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1000068B4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100006910(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_10003AB68()
{
  v1 = v0;
  v35 = sub_1000AB97C();
  v37 = *(v35 - 8);
  v2 = *(v37 + 64);
  __chkstk_darwin(v35, v3);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000413C(&qword_1000F0830, &qword_1000B3400);
  v5 = *v0;
  v6 = sub_1000AC66C();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v36 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v38 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v37;
        v22 = *(v37 + 72) * v20;
        v24 = v34;
        v23 = v35;
        (*(v37 + 16))(v34, *(v5 + 48) + v22, v35);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v5;
        v27 = v36;
        (*(v21 + 32))(*(v36 + 48) + v22, v24, v23);
        v28 = *(v27 + 56);
        v5 = v26;
        *(v28 + 8 * v20) = v25;

        v15 = v38;
      }

      while (v38);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v36;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

id sub_10003ADE8()
{
  v1 = v0;
  sub_10000413C(&qword_1000F0810, &qword_1000B1B28);
  v2 = *v0;
  v3 = sub_1000AC66C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10003AF68(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10000413C(a1, a2);
  v4 = *v2;
  v5 = sub_1000AC66C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_10003B0C8()
{
  v1 = v0;
  sub_10000413C(&qword_1000F07F0, &qword_1000B1B08);
  v2 = *v0;
  v3 = sub_1000AC66C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10003B240(uint64_t result, uint64_t a2, uint64_t a3)
{
  v22 = result;
  v23 = 0;
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
  v26[5] = BCMessageDataImagesKey;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    sub_1000068B4(*(a3 + 56) + 32 * v13, v26);
    v24[0] = v15;
    v24[1] = v16;
    sub_1000068B4(v26, &v25);
    if (v15 == sub_1000AC06C() && v16 == v17)
    {
      swift_bridgeObjectRetain_n();

      sub_10000E784(v24, &qword_1000F07E0, &qword_1000B54D0);
      sub_10000E738(v26);
    }

    else
    {
      v19 = sub_1000AC7AC();
      swift_bridgeObjectRetain_n();

      sub_10000E784(v24, &qword_1000F07E0, &qword_1000B54D0);
      sub_10000E738(v26);

      if ((v19 & 1) == 0)
      {
        *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v23++, 1))
        {
          __break(1u);
          return sub_10003B4C4(v22, a2, v23, a3);
        }
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
      return sub_10003B4C4(v22, a2, v23, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_10003B44C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_10003B240(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_10003B4C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10000413C(&qword_1000F07D8, &qword_1000B1AF8);
  result = sub_1000AC68C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_1000068B4(v17 + 32 * v16, v34);
    sub_100006910(v34, v33);
    v21 = *(v9 + 40);
    sub_1000AC87C();

    sub_1000AC11C();
    result = sub_1000AC8CC();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    result = sub_100006910(v33, (*(v9 + 56) + 32 * v25));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_10003B718()
{
  result = qword_1000F0828;
  if (!qword_1000F0828)
  {
    sub_1000AB97C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0828);
  }

  return result;
}

uint64_t sub_10003B778(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = [a1 combinedDictionary];
  if (!v10)
  {
    goto LABEL_37;
  }

  v11 = v10;
  v12 = sub_1000ABFBC();

  v13 = sub_1000AC06C();
  if (!*(v12 + 16))
  {

    goto LABEL_7;
  }

  v15 = sub_10004F0CC(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_7:
    v74 = 0u;
    v75 = 0u;
    sub_10000E784(&v74, &unk_1000F1DF0, &qword_1000B18F0);
    goto LABEL_8;
  }

  sub_1000068B4(*(v12 + 56) + 32 * v15, &v74);
  sub_10000E784(&v74, &unk_1000F1DF0, &qword_1000B18F0);
  if ([v5 isFromMe])
  {

LABEL_19:
    type metadata accessor for IMBListRequest();
    swift_allocObject();

    return sub_100086AEC(v52, a3);
  }

LABEL_8:
  v18 = sub_1000AC06C();
  if (*(v12 + 16))
  {
    v20 = sub_10004F0CC(v18, v19);
    v22 = v21;

    if (v22)
    {
      sub_1000068B4(*(v12 + 56) + 32 * v20, &v74);

      sub_10000E784(&v74, &unk_1000F1DF0, &qword_1000B18F0);
      v23 = type metadata accessor for IMBContent();
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();

      return sub_1000508A0(v26);
    }
  }

  else
  {
  }

  v74 = 0u;
  v75 = 0u;
  sub_10000E784(&v74, &unk_1000F1DF0, &qword_1000B18F0);
  v28 = sub_1000AC06C();
  if (*(v12 + 16))
  {
    v30 = sub_10004F0CC(v28, v29);
    v32 = v31;

    if (v32)
    {
      sub_1000068B4(*(v12 + 56) + 32 * v30, &v74);

      sub_10000E784(&v74, &unk_1000F1DF0, &qword_1000B18F0);
      v33 = type metadata accessor for PaymentAuthorizationViewController();
      v34 = swift_allocObject();
      *(&v75 + 1) = v33;
      v76 = &off_1000DD9C8;
      *&v74 = v34;
      v35 = type metadata accessor for IMBPaymentRequest();
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      v38 = swift_allocObject();
      v39 = sub_1000315C0(&v74, v33);
      v40 = *(*(v33 - 8) + 64);
      __chkstk_darwin(v39, v39);
      v42 = (&v74 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v43 + 16))(v42);
      v44 = *v42;

      v46 = sub_10003C484(v45, v44, v38);
      sub_10000E738(&v74);
      return v46;
    }
  }

  else
  {
  }

  v74 = 0u;
  v75 = 0u;
  sub_10000E784(&v74, &unk_1000F1DF0, &qword_1000B18F0);
  v47 = sub_1000AC06C();
  if (*(v12 + 16))
  {
    v49 = sub_10004F0CC(v47, v48);
    v51 = v50;

    if (v51)
    {
      sub_1000068B4(*(v12 + 56) + 32 * v49, &v74);

      sub_10000E784(&v74, &unk_1000F1DF0, &qword_1000B18F0);
      goto LABEL_19;
    }
  }

  else
  {
  }

  v74 = 0u;
  v75 = 0u;
  sub_10000E784(&v74, &unk_1000F1DF0, &qword_1000B18F0);
  v53 = sub_1000AC06C();
  if (*(v12 + 16))
  {
    v55 = sub_10004F0CC(v53, v54);
    v57 = v56;

    if (v57)
    {
      sub_1000068B4(*(v12 + 56) + 32 * v55, &v74);
      sub_10000E784(&v74, &unk_1000F1DF0, &qword_1000B18F0);
      if ([v5 isFromMe])
      {

LABEL_30:
        type metadata accessor for IMBProposedEvent();
        swift_allocObject();

        return sub_10000F8B4(v63, a3);
      }

      goto LABEL_27;
    }
  }

  else
  {
  }

  v74 = 0u;
  v75 = 0u;
  sub_10000E784(&v74, &unk_1000F1DF0, &qword_1000B18F0);
LABEL_27:
  v58 = sub_1000AC06C();
  if (*(v12 + 16))
  {
    v60 = sub_10004F0CC(v58, v59);
    v62 = v61;

    if (v62)
    {
      sub_1000068B4(*(v12 + 56) + 32 * v60, &v74);

      sub_10000E784(&v74, &unk_1000F1DF0, &qword_1000B18F0);
      goto LABEL_30;
    }
  }

  else
  {
  }

  v74 = 0u;
  v75 = 0u;
  sub_10000E784(&v74, &unk_1000F1DF0, &qword_1000B18F0);
  v64 = sub_1000AC06C();
  if (*(v12 + 16))
  {
    v66 = sub_10004F0CC(v64, v65);
    v68 = v67;

    if (v68)
    {
      sub_1000068B4(*(v12 + 56) + 32 * v66, &v74);

      sub_10000E784(&v74, &unk_1000F1DF0, &qword_1000B18F0);
      type metadata accessor for IMBJITAppKitData();
      v69 = swift_allocObject();
      *(v69 + 16) = a2;

      return v69;
    }
  }

  else
  {
  }

  v74 = 0u;
  v75 = 0u;
  sub_10000E784(&v74, &unk_1000F1DF0, &qword_1000B18F0);
LABEL_37:
  v70.super.isa = sub_1000ABFAC().super.isa;
  if (a3)
  {
    sub_10003C438();
    v71.super.isa = sub_1000ABFAC().super.isa;
  }

  else
  {
    v71.super.isa = 0;
  }

  v72 = type metadata accessor for IMBMessage();
  v77.receiver = v5;
  v77.super_class = v72;
  v73 = objc_msgSendSuper2(&v77, "makeRootObjectWithMessageData:dictionary:imageDictionary:version:", a1, v70.super.isa, v71.super.isa, a4);

  return v73;
}

id sub_10003BF6C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v29 = a6;
  v28 = a4;
  v12 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  v16 = &v28 - v15;
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_1000AB72C().super.isa;
  }

  sub_10003C3C8(a3, v16);
  v18 = sub_1000AB6EC();
  v19 = *(v18 - 8);
  v21 = 0;
  if ((*(v19 + 48))(v16, 1, v18) != 1)
  {
    sub_1000AB67C(v20);
    v21 = v22;
    (*(v19 + 8))(v16, v18);
  }

  if (a5)
  {
    v23 = sub_1000AC02C();
  }

  else
  {
    v23 = 0;
  }

  v24 = type metadata accessor for IMBMessage();
  v30.receiver = v7;
  v30.super_class = v24;
  v25 = objc_msgSendSuper2(&v30, "initWithData:url:messageGUID:isFromMe:", isa, v21, v23, v29 & 1, v28);

  v26 = v25;
  sub_10000E950(a1, a2);
  sub_10000E784(a3, &unk_1000F06A0, &unk_1000B0450);
  if (v26)
  {
  }

  return v26;
}

id sub_10003C370()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBMessage();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10003C3C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003C438()
{
  result = qword_1000F0870;
  if (!qword_1000F0870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000F0870);
  }

  return result;
}

uint64_t sub_10003C484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[3] = type metadata accessor for PaymentAuthorizationViewController();
  v14[4] = &off_1000DD9C8;
  v14[0] = a2;
  v6 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_orderTrackingUrl;
  v7 = sub_1000AB6EC();
  v8 = *(*(v7 - 8) + 56);
  v8(a3 + v6, 1, 1, v7);
  v8(a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentGatewayUrl, 1, 1, v7);
  v8(a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentMethodUpdateUrl, 1, 1, v7);
  v8(a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingContactUpdateUrl, 1, 1, v7);
  v8(a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingMethodUpdateUrl, 1, 1, v7);
  v8(a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_fallbackUrl, 1, 1, v7);
  v8(a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_productUrl, 1, 1, v7);
  *(a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_merchantCapabilities) = 0;
  *(a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_supportedNetworks) = 0;
  *(a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_sessionDictionary) = 0;
  *(a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_selectedShippingMethod) = 0;
  v9 = a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_merchantSessionExpireDate;
  v11 = sub_1000AB7EC();
  (*(*(v11 - 8) + 56))(a3 + v10, 1, 1, v11);
  *(a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_errors) = _swiftEmptyArrayStorage;
  *(a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest) = 0;
  *(a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_session) = 0;
  sub_10000E6D4(v14, a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentAuthorizationController);
  v12 = sub_10004DA74(a1);

  sub_10000692C(v12);

  sub_10000E738(v14);
  return a3;
}

void sub_10003C7E0()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for IMBTranscriptMessageViewController();
  objc_msgSendSuper2(&v10, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_pluginBubbleContext];
  v2 = *&v1[OBJC_IVAR____TtC8Business19PluginBubbleContext_conversation];
  v3 = sub_10003F7AC(v1, v0);
  v5 = v4;

  if ((v5 & 0x8000000000000000) == 0)
  {
    sub_10003C970(v3, v5);
LABEL_6:

    return;
  }

  v6 = v3;
  [v0 addChildViewController:v6];
  v7 = [v6 view];
  if (v7)
  {
    v8 = v7;
    swift_getObjectType();
    v9 = swift_conformsToProtocol2();
    if (v9)
    {
      sub_10003C970(v8, v9);

      [v6 didMoveToParentViewController:v0];
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10003C970(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = *(a2 + 24);
  v8 = swift_unknownObjectRetain();
  v7(v8, &off_1000DBE68, ObjectType, a2);
  v9 = &v3[OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_bubbleView];
  v10 = *&v3[OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_bubbleView];
  *v9 = a1;
  *(v9 + 1) = a2;
  v11 = a1;

  v12 = [v3 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_7;
  }

  v13 = v12;
  [v12 addSubview:v11];

  v14 = [v3 view];
  if (!v14)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v15 = v14;
  sub_1000155F4(v14);
}

uint64_t sub_10003CA74(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  type metadata accessor for QuickReplyResponse();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3 & 1;
  *(v10 + 40) = a4;

  sub_10003EEAC(a5, v10);
}

uint64_t sub_10003CB04()
{
  v1 = sub_10002CE60();
  v2 = *(v0 + OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_pluginBubbleContext);
  v3 = v1;
  v4 = OBJC_IVAR____TtC8Business19PluginBubbleContext_bcMessage;
  v5 = [*(v2 + OBJC_IVAR____TtC8Business19PluginBubbleContext_bcMessage) type];
  if (v3 == 2)
  {
    if ((v5 - 1) < 2)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  else if (v5 == 5 && [*(v2 + v4) rootObject])
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    if (v7)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 1;
  }
}

id sub_10003CC04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBTranscriptMessageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_10003CCE8(double a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_bubbleView);
  if (v5)
  {
    v6 = *(v2 + OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_bubbleView + 8);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 8);
    v9 = *(v8 + 16);
    v10 = v5;
    a1 = v9(ObjectType, v8, a1, a2);
  }

  return a1;
}

void *sub_10003CD94()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result requestResize];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10003CDF4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = [Strong activeConversation];
  swift_unknownObjectRelease();
  return v1;
}

void sub_10003CE54()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_authvc);
  *(v0 + OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_authvc) = 0;
}

void sub_10003CE68()
{
  sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
  v0 = sub_1000AC3FC();
  sub_1000AC2BC();
  sub_1000ABA5C();

  type metadata accessor for IMBApplePayManager();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;
    v3 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
    swift_beginAccess();
    v4 = *(v2 + v3);
    if (v4 && *(v4 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState + 8) != 1)
    {
      v17 = *(v4 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState);
      sub_10000413C(&qword_1000F0060, &unk_1000B0470);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1000AF0E0;
      v19 = sub_10005FCE8(v17);
      v21 = v20;
      *(v18 + 56) = &type metadata for String;
      *(v18 + 64) = sub_10000587C();
      *(v18 + 32) = v19;
      *(v18 + 40) = v21;
      swift_unknownObjectRetain();
      v22 = sub_1000AC3FC();
      sub_1000AC2BC();
      sub_1000ABA5C();

      if (v17 == 3)
      {
        goto LABEL_15;
      }

      v4 = *(v2 + v3);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    if (*(v4 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState + 8))
    {
      goto LABEL_29;
    }

    v5 = *(v4 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState);
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1000AF0E0;
    v7 = sub_10005FCE8(v5);
    v9 = v8;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_10000587C();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    v10 = sub_1000AC3FC();
    sub_1000AC2BC();
    sub_1000ABA5C();

    if (v5 == 4)
    {
      goto LABEL_15;
    }

    v4 = *(v2 + v3);
    if (v4)
    {
LABEL_29:
      if (*(v4 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState + 8))
      {
        goto LABEL_17;
      }

      v11 = *(v4 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState);
      sub_10000413C(&qword_1000F0060, &unk_1000B0470);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1000AF0E0;
      v13 = sub_10005FCE8(v11);
      v15 = v14;
      *(v12 + 56) = &type metadata for String;
      *(v12 + 64) = sub_10000587C();
      *(v12 + 32) = v13;
      *(v12 + 40) = v15;
      v16 = sub_1000AC3FC();
      sub_1000AC2BC();
      sub_1000ABA5C();

      if (v11 != 7)
      {
        goto LABEL_17;
      }

LABEL_15:
      v23 = sub_1000AC3FC();
      sub_1000AC2BC();
      sub_1000ABA5C();

      sub_10003D48C(v2);
LABEL_26:
      swift_unknownObjectRelease();
      return;
    }

LABEL_17:
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1000AF0E0;
    v25 = *(v2 + v3);
    if (v25 && (v26 = v25 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState, *(v26 + 8) != 1))
    {
      v28 = *v26;
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1000AF0E0;
      v30 = sub_10005FCE8(v28);
      v32 = v31;
      *(v29 + 56) = &type metadata for String;
      *(v29 + 64) = sub_10000587C();
      *(v29 + 32) = v30;
      *(v29 + 40) = v32;
      v33 = sub_1000AC3FC();
      sub_1000AC2BC();
      sub_1000ABA5C();

      v27 = v28;
    }

    else
    {
      v27 = 1;
    }

    v34 = sub_10005FCE8(v27);
    v36 = v35;
    *(v24 + 56) = &type metadata for String;
    v37 = sub_10000587C();
    *(v24 + 64) = v37;
    *(v24 + 32) = v34;
    *(v24 + 40) = v36;
    v38 = sub_1000AC3FC();
    sub_1000AC2BC();
    sub_1000ABA5C();

    v39 = *(v2 + OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel);
    v40 = *(v39 + 48);
    v41 = *(v39 + 56);
    v42 = *(v2 + v3);
    if (v42 && (v43 = v42 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState, *(v43 + 8) != 1))
    {
      v45 = *v43;
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1000AF0E0;
      v47 = sub_10005FCE8(v45);
      *(v46 + 56) = &type metadata for String;
      *(v46 + 64) = v37;
      *(v46 + 32) = v47;
      *(v46 + 40) = v48;

      v49 = v41;
      v50 = sub_1000AC3FC();
      sub_1000AC2BC();
      sub_1000ABA5C();
    }

    else
    {

      v44 = v41;
    }

    sub_100041D18();

    goto LABEL_26;
  }

  v51 = sub_1000AC3FC();
  sub_1000AC2BC();
  sub_1000ABA5C();
}

void sub_10003D48C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  if (*(a1 + v3))
  {
    v4 = *(v1 + OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_pluginBubbleContext);
    v57 = OBJC_IVAR____TtC8Business19PluginBubbleContext_conversation;
    v58 = *(a1 + v3);
    v5 = *(v4 + OBJC_IVAR____TtC8Business19PluginBubbleContext_conversation);

    v6 = [v5 selectedMessage];
    v7 = [v6 session];

    if (!v7)
    {
      v7 = [objc_allocWithZone(MSSession) init];
    }

    v56 = v7;
    v59 = [objc_allocWithZone(MSMessage) initWithSession:v7];
    v60 = [objc_allocWithZone(MSMessageTemplateLayout) init];
    v8 = OBJC_IVAR____TtC8Business19PluginBubbleContext_bcMessage;
    v9 = [*(v4 + OBJC_IVAR____TtC8Business19PluginBubbleContext_bcMessage) receivedMessage];
    if (v9 && (v10 = v9, v11 = [v9 imageIdentifier], v10, v11))
    {
      sub_1000AC06C();
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [*(v4 + v8) receivedMessage];
    if (v14 && (v15 = v14, v16 = [v14 imageDescription], v15, v16))
    {
      sub_1000AC06C();
      v53 = v17;
    }

    else
    {
      v53 = 0;
    }

    v18 = [*(v4 + v8) receivedMessage];
    if (v18)
    {
      v19 = v18;
      v52 = [v18 style];
    }

    else
    {
      v52 = BCBubbleViewStyleIcon;
    }

    v54 = v13;
    v20 = [*(a1 + OBJC_IVAR____TtC8Business18IMBApplePayManager_imbMessage) replyMessage];
    if (v20 && (v21 = v20, v22 = [v20 title], v21, v22))
    {
      sub_1000AC06C();

      v23 = OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel;
      v24 = *(a1 + OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel);
    }

    else
    {
      v23 = OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel;
      v24 = *(a1 + OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel);
      v25 = v24[5];
      v26 = v24[6];
    }

    v28 = v24[10];
    v27 = v24[11];
    v29 = *(v4 + v8);

    v30 = [v29 receivedMessage];
    v55 = v8;
    if (v30)
    {
      v31 = v30;
      v32 = [v30 image];
    }

    else
    {
      v32 = 0;
    }

    [v60 setImage:v32];

    v33 = sub_1000AC02C();
    [v60 setCaption:v33];

    v34 = sub_1000AC02C();
    [v60 setSubcaption:v34];

    v63._countAndFlagsBits = 32;
    v63._object = 0xE100000000000000;
    sub_1000AC12C(v63);

    v64._countAndFlagsBits = v28;
    v64._object = v27;
    sub_1000AC12C(v64);

    v35 = sub_1000AC02C();

    [v59 setAccessibilityLabel:v35];

    v36 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v60];
    [v59 setLayout:v36];

    v37 = *(a1 + v23);
    v38 = *(v37 + 80);
    v39 = *(v37 + 88);

    v40 = v52;
    v41 = sub_1000AC02C();

    v42 = sub_1000AC02C();

    if (v54)
    {
      v43 = sub_1000AC02C();
    }

    else
    {
      v43 = 0;
    }

    if (v53)
    {
      v44 = sub_1000AC02C();
    }

    else
    {
      v44 = 0;
    }

    v45 = [objc_allocWithZone(BCMessageInfo) initWithTitle:v41 subtitle:v42 style:v40 alternateTitle:0 imageIdentifier:v43 imageDescription:v44];

    v46 = BCMessageRootPaymentKey;
    v61 = *(v4 + v55);
    v62 = *(v4 + v57);

    v47 = v61;
    v48 = v59;
    v49 = v62;
    v50 = v45;
    v51 = v46;
    sub_100036FA8(1);
  }
}

void sub_10003DAC8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_bubbleView);
  if (v1)
  {
    v2 = *(a1 + OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_bubbleView + 8);
    v3 = *(a1 + OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_bubbleView);
    ObjectType = swift_getObjectType();
    v5 = *(v2 + 40);
    v6 = v1;
    v5(ObjectType, v2);
  }
}

uint64_t sub_10003DB74@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v28 = sub_1000AC8EC();
  v2 = *(v28 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v28, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000413C(&qword_1000F0728, &unk_1000B1A10);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v27 - v10;
  v32 = v1;
  sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000B0620;
  v13 = *&v1[OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_pluginBubbleContext];
  strcpy((v12 + 32), "conversation");
  *(v12 + 45) = 0;
  *(v12 + 46) = -5120;
  v14 = *(v13 + OBJC_IVAR____TtC8Business19PluginBubbleContext_conversation);
  v15 = sub_100005A24(0, &qword_1000F0730, MSConversation_ptr);
  *(v12 + 48) = v14;
  *(v12 + 72) = v15;
  *(v12 + 80) = 0x6567617373656DLL;
  *(v12 + 88) = 0xE700000000000000;
  v16 = *(v13 + OBJC_IVAR____TtC8Business19PluginBubbleContext_bcMessage);
  v17 = sub_100005A24(0, &qword_1000EF020, BCMessage_ptr);
  *(v12 + 96) = v16;
  *(v12 + 120) = v17;
  *(v12 + 128) = 0xD000000000000010;
  *(v12 + 136) = 0x80000001000B8300;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    ObjectType = swift_getObjectType();
    *&v30 = v19;
    sub_100006910(&v30, (v12 + 144));
  }

  else
  {
    *(v12 + 168) = &type metadata for String;
    *(v12 + 144) = 7104878;
    *(v12 + 152) = 0xE300000000000000;
  }

  v20 = enum case for Mirror.DisplayStyle.class(_:);
  v21 = sub_1000AC8DC();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v11, v20, v21);
  (*(v22 + 56))(v11, 0, 1, v21);
  (*(v2 + 104))(v6, enum case for Mirror.AncestorRepresentation.generated(_:), v28);
  type metadata accessor for IMBTranscriptMessageViewController();
  v23 = v1;
  v24 = v14;
  v25 = v16;
  return sub_1000AC8FC();
}

uint64_t sub_10003DED4(uint64_t a1)
{
  sub_10000E66C(a1, v3, &qword_1000F0918, &unk_1000B1C60);
  sub_10000E66C(v3, &v2, &qword_1000F0918, &unk_1000B1C60);
  sub_100042340();
  sub_1000ABD0C();
  return sub_10000E784(v3, &qword_1000F0918, &unk_1000B1C60);
}

void sub_10003DF64(uint64_t a1, void *a2, char *a3)
{
  v6 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v7 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6 - 8, v8);
  v11 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v117 - v13;
  v130 = sub_1000AB7EC();
  v131 = *(v130 - 8);
  v15 = *(v131 + 64);
  __chkstk_darwin(v130, v16);
  v121 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  v19 = *(*(v18 - 8) + 64);
  v21 = __chkstk_darwin(v18 - 8, v20);
  v129 = &v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v23);
  v124 = &v117 - v24;
  v25 = sub_1000AB5AC();
  v123 = *(v25 - 8);
  v26 = *(v123 + 64);
  __chkstk_darwin(v25, v27);
  v122 = &v117 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136[3] = type metadata accessor for HttpClientFactory();
  v136[4] = &off_1000DB930;
  v136[0] = a1;
  swift_unknownObjectWeakInit();
  v29 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  *&a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest] = 0;
  *&a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_tryAgainAuthorizationStatus] = 1000;
  *&a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayTryAgainTimer] = 0;
  *&a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_authorizePaymentRetryTimer] = 0;
  v30 = &a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion];
  *v30 = 0;
  *(v30 + 1) = 0;
  *&a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentExpireTimer] = 0;
  *&a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizationController] = 0;
  *&a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_window] = 0;
  v126 = sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v31 = swift_allocObject();
  v125 = xmmword_1000AF0E0;
  *(v31 + 16) = xmmword_1000AF0E0;
  *(v31 + 56) = &type metadata for String;
  v127 = sub_10000587C();
  *(v31 + 64) = v127;
  *(v31 + 32) = 0xD000000000000020;
  *(v31 + 40) = 0x80000001000B8FF0;
  v128 = sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
  v32 = sub_1000AC3FC();
  sub_1000AC2BC();
  sub_1000ABA5C();

  sub_10000E6D4(v136, &a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_httpClientFactory]);
  v33 = type metadata accessor for IMBMessage();
  v34 = swift_dynamicCastClass();
  v35 = (&stru_1000E5FF8 + 8);
  if (v34)
  {
    v36 = v34;
    v37 = a2;
  }

  else
  {
    v38 = [a2 messageData];
    v120 = v25;
    if (v38 && (v39 = v38, v40 = [v38 data], v39, v40))
    {
      v41 = sub_1000AB73C();
      v43 = v42;
    }

    else
    {
      v41 = 0;
      v43 = 0xF000000000000000;
    }

    v44 = [a2 messageData];
    if (v44)
    {
      v45 = v44;
      v46 = [v44 url];

      if (v46)
      {
        sub_1000AB6AC();

        v47 = 0;
      }

      else
      {
        v47 = 1;
      }

      p_attr = &stru_1000E5FF8.attr;
      v50 = sub_1000AB6EC();
      (*(*(v50 - 8) + 56))(v11, v47, 1, v50);
      sub_10000E7E4(v11, v14);
    }

    else
    {
      v48 = sub_1000AB6EC();
      (*(*(v48 - 8) + 56))(v14, 1, 1, v48);
      p_attr = (&stru_1000E5FF8 + 8);
    }

    v51 = [a2 messageGUID];
    if (v51)
    {
      v52 = v51;
      v118 = sub_1000AC06C();
      v54 = v53;
    }

    else
    {
      v118 = 0;
      v54 = 0;
    }

    v55 = v14;
    v119 = [a2 p_attr[210]];
    if (v43 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = sub_1000AB72C().super.isa;
      sub_10000E950(v41, v43);
    }

    v57 = sub_1000AB6EC();
    v58 = *(v57 - 8);
    v59 = v55;
    v60 = (*(v58 + 48))(v55, 1, v57);
    v62 = 0;
    if (v60 != 1)
    {
      sub_1000AB67C(v61);
      v62 = v63;
      (*(v58 + 8))(v59, v57);
    }

    if (v54)
    {
      v64 = sub_1000AC02C();
    }

    else
    {
      v64 = 0;
    }

    v25 = v120;
    v65 = objc_allocWithZone(v33);
    v36 = [v65 initWithData:isa url:v62 messageGUID:v64 isFromMe:v119];

    v35 = &stru_1000E5FF8.attr;
    if (!v36)
    {
      __break(1u);
      return;
    }
  }

  v66 = v36;
  if ([v66 rootObject])
  {
    type metadata accessor for IMBPaymentRequest();
    v67 = swift_dynamicCastClass();
    if (v67)
    {
      v68 = v67;
      swift_beginAccess();
      v69 = *&a3[v29];
      *&a3[v29] = v68;

      goto LABEL_32;
    }

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v70 = *&a3[v29];
  *&a3[v29] = 0;

  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2AC();
  sub_1000ABA5C();
LABEL_32:
  *&a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_imbMessage] = v66;
  v71 = type metadata accessor for IMBNetworkBody();
  v72 = objc_allocWithZone(v71);
  *&v72[OBJC_IVAR____TtC8Business14IMBNetworkBody__body] = &_swiftEmptyDictionarySingleton;
  *&v72[OBJC_IVAR____TtC8Business14IMBNetworkBody_message] = a2;
  v135.receiver = v72;
  v135.super_class = v71;
  v73 = a2;
  *&a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_imbNetworkBody] = objc_msgSendSuper2(&v135, "init");
  if (![v73 v35[210]])
  {
    v74 = [v73 receivedMessage];
    if (v74)
    {
      goto LABEL_36;
    }

LABEL_41:
    v78 = 0;
    v80 = 0;
LABEL_42:
    swift_beginAccess();
    v86 = *&a3[v29];
    if (v86)
    {
      v87 = v86 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
      *v87 = 1;
      *(v87 + 8) = 0;
    }

    goto LABEL_44;
  }

  v74 = [v73 replyMessage];
  if (!v74)
  {
    goto LABEL_41;
  }

LABEL_36:
  v75 = v74;
  v76 = [v74 title];

  if (!v76)
  {
    goto LABEL_41;
  }

  v77 = v73;
  v78 = sub_1000AC06C();
  v80 = v79;

  v133 = v78;
  v134 = v80;
  v81 = v122;
  sub_1000AB59C();
  sub_10002BD70();
  v82 = sub_1000AC43C();
  v84 = v83;
  (*(v123 + 8))(v81, v25);

  v85 = HIBYTE(v84) & 0xF;
  if ((v84 & 0x2000000000000000) == 0)
  {
    v85 = v82 & 0xFFFFFFFFFFFFLL;
  }

  v73 = v77;
  if (!v85)
  {
    goto LABEL_42;
  }

LABEL_44:
  v88 = 7104878;
  swift_beginAccess();
  v89 = *&a3[v29];
  type metadata accessor for IMBApplePayViewModel();
  swift_allocObject();

  *&a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel] = sub_10008A500(v90, v78, v80);
  v91 = type metadata accessor for IMBApplePayManager();
  v132.receiver = a3;
  v132.super_class = v91;
  v92 = objc_msgSendSuper2(&v132, "init");
  v93 = *&v92[OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel];
  v94 = v92;

  sub_100026E1C(v66, v93);

  v95 = swift_allocObject();
  *(v95 + 16) = v125;
  v96 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v97 = *&v94[v96];
  v98 = v130;
  if (v97)
  {
    v99 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_merchantSessionExpireDate;
    swift_beginAccess();
    v100 = v97 + v99;
    v101 = v124;
    sub_10000E66C(v100, v124, &qword_1000F0270, &unk_1000B0480);
    v102 = v131;
    if (!(*(v131 + 48))(v101, 1, v98))
    {
      v126 = v66;
      v105 = v73;
      v106 = v121;
      (*(v102 + 16))(v121, v101, v98);
      sub_10000E784(v101, &qword_1000F0270, &unk_1000B0480);
      v107 = v102;
      v108 = sub_1000AB75C();
      v104 = v109;
      (*(v107 + 8))(v106, v98);
      v110 = v127;
      *(v95 + 56) = &type metadata for String;
      *(v95 + 64) = v110;
      if (v104)
      {
        v88 = v108;
      }

      else
      {
        v104 = 0xE300000000000000;
      }

      v73 = v105;
      v66 = v126;
      goto LABEL_52;
    }

    sub_10000E784(v101, &qword_1000F0270, &unk_1000B0480);
  }

  v103 = v127;
  *(v95 + 56) = &type metadata for String;
  *(v95 + 64) = v103;
  v104 = 0xE300000000000000;
LABEL_52:
  *(v95 + 32) = v88;
  *(v95 + 40) = v104;
  v111 = sub_1000AC3FC();
  sub_1000AC2BC();
  sub_1000ABA5C();

  swift_beginAccess();
  v112 = *&v94[v96];
  if (!v112)
  {
    sub_10000E738(v136);
    swift_endAccess();

    v115 = v129;
    (*(v131 + 56))(v129, 1, 1, v98);
    goto LABEL_56;
  }

  swift_endAccess();
  v113 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_merchantSessionExpireDate;
  swift_beginAccess();
  v114 = v112 + v113;
  v115 = v129;
  sub_10000E66C(v114, v129, &qword_1000F0270, &unk_1000B0480);
  if ((*(v131 + 48))(v115, 1, v98) == 1)
  {
    sub_10000E738(v136);

LABEL_56:
    sub_10000E784(v115, &qword_1000F0270, &unk_1000B0480);
    return;
  }

  sub_10000E784(v115, &qword_1000F0270, &unk_1000B0480);
  v116 = sub_1000AC3FC();
  sub_1000AC2BC();
  sub_1000ABA5C();

  sub_100021A0C();
  sub_10000E738(v136);
}

id sub_10003ED58(uint64_t a1)
{
  v2 = type metadata accessor for PluginBubbleContext();
  v15[3] = v2;
  v15[4] = &off_1000DAEB0;
  v15[0] = a1;
  v3 = type metadata accessor for BIABubbleViewController();
  v4 = objc_allocWithZone(v3);
  v5 = sub_1000315C0(v15, v2);
  v6 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v5, v5);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = *v8;
  v14[3] = v2;
  v14[4] = &off_1000DAEB0;
  v14[0] = v10;
  sub_10000E6D4(v14, v4 + OBJC_IVAR____TtC8Business23BIABubbleViewController_context);
  v13.receiver = v4;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", 0, 0);
  sub_10000E738(v14);
  sub_10000E738(v15);
  return v11;
}

uint64_t sub_10003EEAC(void *a1, void *a2)
{
  v14 = type metadata accessor for PluginBubbleContext();
  v15 = &off_1000DAEB0;
  v13[0]._object = a1;
  v4 = sub_1000058D0(&v13[0]._object, v14);
  v5 = BCMessageRootQuickReplyKey;
  v6 = a1;
  v7 = [a2 dictionaryValue];
  v8 = sub_1000ABFBC();

  v9 = [objc_opt_self() mainBundle];
  v13[0]._countAndFlagsBits = 0xE000000000000000;
  v16._object = 0x80000001000B90C0;
  v16._countAndFlagsBits = 0xD000000000000015;
  v17.value._countAndFlagsBits = 0;
  v17.value._object = 0;
  v10.super.isa = v9;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_1000AB61C(v16, v17, v10, v18, v13[0]);

  v11 = *v4;
  sub_1000164C4(v5, v8);

  return sub_10000E738(&v13[0]._object);
}

void *sub_10003F008(char a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v46[3] = type metadata accessor for URLHelper();
  v46[4] = &off_1000DCB20;
  v8 = sub_100030970(v46);
  sub_100042394(a3, v8, type metadata accessor for URLHelper);
  *&a4[OBJC_IVAR____TtC8Business13IMBBubbleView_touchDelay] = 0x4000000000000000;
  *&a4[OBJC_IVAR____TtC8Business13IMBBubbleView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = BCBubbleViewStyleIcon;
  *&a4[OBJC_IVAR____TtC8Business13IMBBubbleView_style] = BCBubbleViewStyleIcon;
  a4[OBJC_IVAR____TtC8Business13IMBBubbleView_type] = 0;
  v10 = OBJC_IVAR____TtC8Business13IMBBubbleView_titleLabel;
  v11 = objc_allocWithZone(UILabel);
  v12 = v9;
  *&a4[v10] = [v11 init];
  v13 = OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel;
  *&a4[v13] = [objc_allocWithZone(UILabel) init];
  v14 = OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainer;
  *&a4[v14] = [objc_allocWithZone(UIView) init];
  v15 = OBJC_IVAR____TtC8Business13IMBBubbleView_informationView;
  *&a4[v15] = [objc_allocWithZone(UIView) init];
  v16 = OBJC_IVAR____TtC8Business13IMBBubbleView_informationBackground;
  *&a4[v16] = [objc_allocWithZone(UIView) init];
  v17 = OBJC_IVAR____TtC8Business13IMBBubbleView_imageView;
  *&a4[v17] = [objc_allocWithZone(UIImageView) init];
  v18 = OBJC_IVAR____TtC8Business13IMBBubbleView_defaultColor;
  if (qword_1000EEDA8 != -1)
  {
    swift_once();
  }

  v19 = qword_1000FBED8;
  *&a4[v18] = qword_1000FBED8;
  v20 = OBJC_IVAR____TtC8Business13IMBBubbleView_highlightColor;
  v21 = qword_1000EEDB0;
  v22 = v19;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = qword_1000FBEE0;
  *&a4[v20] = qword_1000FBEE0;
  *&a4[OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewHeightConstraint] = 0;
  *&a4[OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewWidthConstraint] = 0;
  *&a4[OBJC_IVAR____TtC8Business13IMBBubbleView_labelWidthConstraint] = 0;
  v24 = &a4[OBJC_IVAR____TtC8Business13IMBBubbleView_touch];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 1;
  v25 = &a4[OBJC_IVAR____TtC8Business13IMBBubbleView_touchTimestamp];
  *v25 = 0;
  v25[8] = 1;
  a4[OBJC_IVAR____TtC8Business13IMBBubbleView_useAlternateTapTarget] = 0;
  *&a4[OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainerFirstConstraintsIconSmall] = _swiftEmptyArrayStorage;
  *&a4[OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewFirstConstraintsIconSmall] = _swiftEmptyArrayStorage;
  *&a4[OBJC_IVAR____TtC8Business13IMBBubbleView_largeLabelContainerConstraints] = _swiftEmptyArrayStorage;
  v26 = OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewSpacingConstraint;
  v27 = objc_allocWithZone(NSLayoutConstraint);
  v28 = v23;
  *&a4[v26] = [v27 init];
  v29 = OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainerWidthConstraint;
  *&a4[v29] = [objc_allocWithZone(NSLayoutConstraint) init];
  v30 = OBJC_IVAR____TtC8Business13IMBBubbleView_labelRightConstraint;
  *&a4[v30] = [objc_allocWithZone(NSLayoutConstraint) init];
  v31 = OBJC_IVAR____TtC8Business13IMBBubbleView_titleLabelWidthConstraint;
  *&a4[v31] = [objc_allocWithZone(NSLayoutConstraint) init];
  v32 = OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabelWidthConstraint;
  *&a4[v32] = [objc_allocWithZone(NSLayoutConstraint) init];
  v33 = OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabelHeightConstraint;
  *&a4[v33] = [objc_allocWithZone(NSLayoutConstraint) init];
  v34 = OBJC_IVAR____TtC8Business13IMBBubbleView_widthConstraint;
  *&a4[v34] = [objc_allocWithZone(NSLayoutConstraint) init];
  v35 = OBJC_IVAR____TtC8Business13IMBBubbleView_heightConstraint;
  *&a4[v35] = [objc_allocWithZone(NSLayoutConstraint) init];
  v36 = &a4[OBJC_IVAR____TtC8Business13IMBBubbleView_title];
  *v36 = 0;
  v36[1] = 0;
  v37 = &a4[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitle];
  *v37 = 0;
  v37[1] = 0;
  *&a4[OBJC_IVAR____TtC8Business13IMBBubbleView_image] = 0;
  sub_10000E6D4(v46, &a4[OBJC_IVAR____TtC8Business13IMBBubbleView_urlHelper]);
  v45.receiver = a4;
  v45.super_class = type metadata accessor for IMBBubbleView();
  v38 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v38[OBJC_IVAR____TtC8Business13IMBBubbleView_type] = a1 & 1;
  v39 = *&v38[OBJC_IVAR____TtC8Business13IMBBubbleView_style];
  *&v38[OBJC_IVAR____TtC8Business13IMBBubbleView_style] = a2;
  v40 = v38;
  v41 = a2;

  v42 = (*((swift_isaMask & *v40) + 0x398))();
  v43 = (*((swift_isaMask & *v40) + 0x3A0))(v42);
  sub_10007B870(v43);

  sub_10000E738(v46);
  return v40;
}

void *sub_10003F560(uint64_t a1, char a2, void *a3)
{
  v6 = type metadata accessor for URLHelper();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6, v8);
  v10 = &v30[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004EA70(v10);
  v31 = v6;
  v32 = &off_1000DCB20;
  v11 = sub_100030970(v30);
  sub_100042164(v10, v11, type metadata accessor for URLHelper);
  v12 = objc_allocWithZone(type metadata accessor for IMBBubbleView());
  v13 = v31;
  v14 = sub_1000315C0(v30, v31);
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v14, v14);
  v17 = &v30[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v19 = a3;
  v20 = sub_10003F008(a2 & 1, v19, v17, v12);

  sub_100042290(v10, type metadata accessor for URLHelper);
  sub_10000E738(v30);
  v21 = [objc_opt_self() defaultBubbleTitleFor:a1];
  v22 = sub_1000AC06C();
  v24 = v23;

  v25 = (v20 + OBJC_IVAR____TtC8Business13IMBBubbleView_title);
  v26 = *(v20 + OBJC_IVAR____TtC8Business13IMBBubbleView_title + 8);
  *v25 = v22;
  v25[1] = v24;

  sub_1000A9FF0();
  [v20 setUserInteractionEnabled:0];
  v27 = *(v20 + OBJC_IVAR____TtC8Business13IMBBubbleView_image);
  *(v20 + OBJC_IVAR____TtC8Business13IMBBubbleView_image) = 0;

  sub_1000AA2B0();
  return v20;
}

_BYTE *sub_10003F7AC(char *a1, uint64_t a2)
{
  v280 = a2;
  v273 = type metadata accessor for BIABubbleViewModel(0);
  v271 = *(v273 - 8);
  v3 = *(v271 + 64);
  __chkstk_darwin(v273, v4);
  v274 = (&v263 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v272 = type metadata accessor for BIAPayload();
  v6 = *(*(v272 - 8) + 64);
  __chkstk_darwin(v272, v7);
  v275 = &v263 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000413C(&qword_1000F08E0, &unk_1000B4690);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v263 - v12;
  v14 = type metadata accessor for URLHelper();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14, v16);
  v18 = &v263 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8, v21);
  v23 = &v263 - v22;
  v276 = a1;
  v24 = *&a1[OBJC_IVAR____TtC8Business19PluginBubbleContext_bcMessage];
  v25 = [v24 isFromMe];
  v26 = &selRef_replyMessage;
  if (!v25)
  {
    v26 = &selRef_receivedMessage;
  }

  v27 = [v24 *v26];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 style];
  }

  else
  {
    v28 = 0;
    v29 = BCBubbleViewStyleIcon;
  }

  v30 = v29;
  if (![v24 isVersionSupported])
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1000AF0E0;
    *(v55 + 56) = sub_100005A24(0, &qword_1000EF020, BCMessage_ptr);
    *(v55 + 64) = sub_1000420C4();
    *(v55 + 32) = v24;
    v56 = v24;
    sub_1000ABA5C();

    v57 = sub_10003F560(v56, v25, v30);

    return v57;
  }

  v282 = v30;
  v31 = [v24 rootKey];
  v281 = v25;
  if (!v31)
  {
    sub_1000AC06C();
    v32 = sub_1000AC02C();

    v31 = v32;
  }

  v264 = v13;
  v266 = v14;
  v267 = v18;
  v277 = v24;
  v33 = qword_1000EEE80;
  v34 = v31;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = qword_1000FC008;
  sub_1000AC29C();
  v269 = sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1000B14C0;
  v37 = sub_1000AC06C();
  v39 = v38;
  *(v36 + 56) = &type metadata for String;
  v40 = sub_10000587C();
  v41 = v40;
  *(v36 + 32) = v37;
  *(v36 + 40) = v39;
  v42 = v281 == 0;
  v43 = 0x6E65697069636572;
  if (v281)
  {
    v43 = 0x7265646E6573;
  }

  v44 = 0xE900000000000074;
  *(v36 + 96) = &type metadata for String;
  *(v36 + 104) = v40;
  if (!v42)
  {
    v44 = 0xE600000000000000;
  }

  *(v36 + 64) = v40;
  *(v36 + 72) = v43;
  *(v36 + 80) = v44;
  v45 = sub_1000AC06C();
  *(v36 + 136) = &type metadata for String;
  *(v36 + 144) = v41;
  *(v36 + 112) = v45;
  *(v36 + 120) = v46;
  v284[0] = v28;
  v279 = v34;
  v278 = v28;
  sub_10000413C(&qword_1000F07C0, &qword_1000B1C00);
  v47 = sub_1000AC0CC();
  *(v36 + 176) = &type metadata for String;
  *(v36 + 184) = v41;
  v265 = v41;
  *(v36 + 152) = v47;
  *(v36 + 160) = v48;
  v270 = v35;
  sub_1000ABA5C();

  v49 = sub_1000AC06C();
  v51 = v50;
  v268 = v34;
  if (v49 == sub_1000AC06C() && v51 == v52)
  {
    v53 = v279;

    v54 = v277;
    goto LABEL_23;
  }

  v263 = v28;
  v58 = sub_1000AC7AC();
  v59 = v279;

  v54 = v277;
  if (v58)
  {

    v53 = v59;
LABEL_23:
    v60 = type metadata accessor for HttpClientFactory();
    v61 = [objc_allocWithZone(v60) init];
    v285 = v60;
    v286 = &off_1000DB930;
    v284[0] = v61;
    v62 = objc_allocWithZone(type metadata accessor for IMBApplePayManager());
    v63 = v285;
    v64 = sub_1000315C0(v284, v285);
    v65 = *(*(v63 - 8) + 64);
    __chkstk_darwin(v64, v64);
    v67 = (&v263 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v68 + 16))(v67);
    v69 = *v67;
    v70 = v54;
    sub_10003DF64(v69, v70, v62);
    v72 = v71;
    sub_10000E738(v284);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v73 = objc_allocWithZone(type metadata accessor for ApplePayBubbleView());
    v74 = v70;
    v75 = v282;
    v76 = v72;
    v57 = sub_10005C9F0(v281, v75, v74, v76);
    v77 = *&v57[OBJC_IVAR____TtC8Business18ApplePayBubbleView_applePayManager];
    v78 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
    swift_beginAccess();
    v79 = *(v77 + v78);
    if (v79)
    {
      v80 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_productUrl;
      swift_beginAccess();
      sub_10000E66C(v79 + v80, v23, &unk_1000F06A0, &unk_1000B0450);
      v81 = sub_1000AB6EC();
      if ((*(*(v81 - 8) + 48))(v23, 1, v81) != 1)
      {
        sub_10000E784(v23, &unk_1000F06A0, &unk_1000B0450);
        v57[OBJC_IVAR____TtC8Business13IMBBubbleView_useAlternateTapTarget] = 1;
LABEL_28:
        sub_1000AC2BC();
        v83 = swift_allocObject();
        *(v83 + 16) = xmmword_1000AF0E0;
        *(v83 + 56) = sub_100005A24(0, &qword_1000EF020, BCMessage_ptr);
        *(v83 + 64) = sub_1000420C4();
        *(v83 + 32) = v74;
        v84 = v74;
        sub_1000ABA5C();

LABEL_29:
LABEL_39:

        return v57;
      }
    }

    else
    {
      v82 = sub_1000AB6EC();
      (*(*(v82 - 8) + 56))(v23, 1, 1, v82);
    }

    sub_10000E784(v23, &unk_1000F06A0, &unk_1000B0450);
    goto LABEL_28;
  }

  v85 = sub_1000AC06C();
  v87 = v86;
  if (v85 == sub_1000AC06C() && v87 == v88)
  {
    v89 = v279;

    v90 = v281;
LABEL_35:
    v92 = objc_allocWithZone(type metadata accessor for IMBAuthenticationBubbleView());
    v93 = v54;
    v94 = v282;
    v57 = sub_100092C88(v90, v94, v93);
    sub_1000AC2BC();
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_1000AF0E0;
    *(v95 + 56) = sub_100005A24(0, &qword_1000EF020, BCMessage_ptr);
    *(v95 + 64) = sub_1000420C4();
    *(v95 + 32) = v93;
    v96 = v93;
LABEL_36:
    sub_1000ABA5C();

LABEL_37:

LABEL_38:
    goto LABEL_39;
  }

  v91 = sub_1000AC7AC();

  v90 = v281;
  if (v91)
  {
    v89 = v279;

    goto LABEL_35;
  }

  v98 = sub_1000AC06C();
  v100 = v99;
  if (v98 == sub_1000AC06C() && v100 == v101)
  {
    v89 = v279;

LABEL_46:
    v103 = objc_allocWithZone(type metadata accessor for IMBInternalAuthenticationBubbleView());
    v104 = v54;
    v94 = v282;
    v57 = sub_1000056A8(v90, v94, v104);

    sub_1000AC2BC();
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_1000AF0E0;
    *(v105 + 56) = sub_100005A24(0, &qword_1000EF020, BCMessage_ptr);
    *(v105 + 64) = sub_1000420C4();
    *(v105 + 32) = v104;
    v106 = v104;
    goto LABEL_36;
  }

  v102 = sub_1000AC7AC();

  if (v102)
  {
    v89 = v279;

    goto LABEL_46;
  }

  v107 = sub_1000AC06C();
  v109 = v108;
  if (v107 == sub_1000AC06C() && v109 == v110)
  {
    goto LABEL_49;
  }

  v111 = sub_1000AC7AC();

  if (v111)
  {
    goto LABEL_51;
  }

  v114 = sub_1000AC06C();
  v116 = v115;
  if (v114 == sub_1000AC06C() && v116 == v117)
  {
LABEL_49:
    v89 = v279;

LABEL_52:
    sub_1000AC2AC();
    v112 = swift_allocObject();
    *(v112 + 16) = xmmword_1000AF0E0;
    *(v112 + 56) = sub_100005A24(0, &qword_1000EF020, BCMessage_ptr);
    *(v112 + 64) = sub_1000420C4();
    *(v112 + 32) = v54;
    v113 = v54;
    sub_1000ABA5C();

    v94 = v282;
    v57 = sub_10003F560(v113, v90, v282);
    goto LABEL_37;
  }

  v118 = sub_1000AC7AC();

  if (v118)
  {
LABEL_51:
    v89 = v279;

    goto LABEL_52;
  }

  v119 = sub_1000AC06C();
  v121 = v120;
  if (v119 == sub_1000AC06C() && v121 == v122)
  {
    v123 = v279;

    v124 = v282;
LABEL_61:
    v126 = v54;
    v127 = sub_100096FFC(v126);
    if (v127)
    {
      v130 = v127;
      v131 = v128;
      v132 = v129;
      if ([v126 isFromMe])
      {
        v133 = objc_allocWithZone(type metadata accessor for QuickReplyFromMeBubbleView());
        v57 = sub_10007ACA8(v130, v131, v132 & 1);
      }

      else
      {
        v156 = swift_allocObject();
        v157 = v276;
        *(v156 + 16) = v276;
        v158 = objc_allocWithZone(type metadata accessor for QuickReplyToMeBubbleView());
        v159 = v157;
        v124 = v282;
        v57 = sub_10000E9B8(v130, v131, v132 & 1, sub_100042334, v156);
      }

      sub_1000AC2BC();
      v160 = swift_allocObject();
      *(v160 + 16) = xmmword_1000AF0E0;
      *(v160 + 56) = sub_100005A24(0, &qword_1000EF020, BCMessage_ptr);
      *(v160 + 64) = sub_1000420C4();
      *(v160 + 32) = v126;
      v161 = v126;
      sub_1000ABA5C();

      return v57;
    }

    v75 = v124;
    v134 = v267;
    sub_10004EA70(v267);
    v285 = v266;
    v286 = &off_1000DCB20;
    v135 = sub_100030970(v284);
    sub_100042164(v134, v135, type metadata accessor for URLHelper);
    v136 = objc_allocWithZone(type metadata accessor for IMBBubbleView());
    v137 = v285;
    v138 = sub_1000315C0(v284, v285);
    v139 = *(*(v137 - 8) + 64);
    __chkstk_darwin(v138, v138);
    v141 = &v263 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v142 + 16))(v141);
    v57 = sub_10003F008(v90, v75, v141, v136);

    sub_100042290(v134, type metadata accessor for URLHelper);
    sub_10000E738(v284);
    v143 = [objc_opt_self() defaultBubbleTitleFor:v126];
    v144 = sub_1000AC06C();
    v146 = v145;

    v147 = &v57[OBJC_IVAR____TtC8Business13IMBBubbleView_title];
    v148 = *&v57[OBJC_IVAR____TtC8Business13IMBBubbleView_title + 8];
    *v147 = v144;
    v147[1] = v146;

    sub_1000A9FF0();
    [v57 setUserInteractionEnabled:0];
    v149 = *&v57[OBJC_IVAR____TtC8Business13IMBBubbleView_image];
    *&v57[OBJC_IVAR____TtC8Business13IMBBubbleView_image] = 0;

    sub_1000AA2B0();
    sub_1000AC2AC();
    v150 = swift_allocObject();
    *(v150 + 16) = xmmword_1000AF0E0;
    *(v150 + 56) = sub_100005A24(0, &qword_1000EF020, BCMessage_ptr);
    *(v150 + 64) = sub_1000420C4();
    *(v150 + 32) = v126;
    v151 = v126;
    sub_1000ABA5C();

    goto LABEL_29;
  }

  v125 = sub_1000AC7AC();

  v124 = v282;
  if (v125)
  {
    v123 = v279;

    goto LABEL_61;
  }

  v152 = sub_1000AC06C();
  v154 = v153;
  if (v152 == sub_1000AC06C() && v154 == v155)
  {
  }

  else
  {
    v162 = sub_1000AC7AC();

    if ((v162 & 1) == 0)
    {
      v166 = sub_1000AC06C();
      v168 = v167;
      if (v166 == sub_1000AC06C() && v168 == v169)
      {
      }

      else
      {
        v197 = sub_1000AC7AC();

        if ((v197 & 1) == 0)
        {
LABEL_100:
          v94 = v282;
          v221 = v267;
          sub_10004EA70(v267);
          v285 = v266;
          v286 = &off_1000DCB20;
          v222 = sub_100030970(v284);
          sub_100042164(v221, v222, type metadata accessor for URLHelper);
          v223 = objc_allocWithZone(type metadata accessor for IMBBubbleView());
          v224 = v285;
          v225 = sub_1000315C0(v284, v285);
          v226 = *(*(v224 - 8) + 64);
          __chkstk_darwin(v225, v225);
          v228 = &v263 - ((v227 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v229 + 16))(v228);
          v57 = sub_10003F008(v281, v94, v228, v223);

          sub_100042290(v221, type metadata accessor for URLHelper);
          sub_10000E738(v284);
          if (!v263 || (v230 = [v278 alternateTitle]) == 0 && (v230 = objc_msgSend(v278, "title")) == 0)
          {
            v230 = [objc_opt_self() defaultBubbleTitleFor:v277];
          }

          v231 = v230;
          v232 = sub_1000AC06C();
          v234 = v233;

          v235 = &v57[OBJC_IVAR____TtC8Business13IMBBubbleView_title];
          v236 = *&v57[OBJC_IVAR____TtC8Business13IMBBubbleView_title + 8];
          *v235 = v232;
          v235[1] = v234;

          sub_1000A9FF0();
          if (v263 && (v237 = [v278 subtitle]) != 0)
          {
            v238 = v237;
            v239 = sub_1000AC06C();
            v241 = v240;
          }

          else
          {
            v239 = 0;
            v241 = 0;
          }

          v242 = &v57[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitle];
          v243 = *&v57[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitle + 8];
          *v242 = v239;
          v242[1] = v241;

          v244 = *&v57[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel];
          if (v241)
          {

            v245 = sub_1000AC02C();
          }

          else
          {
            v245 = 0;
          }

          [v244 setText:v245];

          if (v263)
          {
            v246 = [v278 image];
          }

          else
          {
            v246 = 0;
          }

          v247 = OBJC_IVAR____TtC8Business13IMBBubbleView_image;
          v248 = *&v57[OBJC_IVAR____TtC8Business13IMBBubbleView_image];
          *&v57[OBJC_IVAR____TtC8Business13IMBBubbleView_image] = v246;
          v249 = v246;

          sub_1000AA2B0();
          v250 = *&v57[v247];
          if (v250)
          {
            v251 = v250;
            if (!v263 || (v252 = [v278 imageDescription]) == 0)
            {
              v252 = 0;
            }

            [v251 setAccessibilityLabel:v252];
          }

          sub_1000AC2AC();
          v253 = swift_allocObject();
          *(v253 + 16) = xmmword_1000AF0F0;
          v254 = sub_1000AC06C();
          v256 = v255;
          v257 = v279;

          v258 = v265;
          *(v253 + 56) = &type metadata for String;
          *(v253 + 64) = v258;
          *(v253 + 32) = v254;
          *(v253 + 40) = v256;
          *(v253 + 96) = sub_100005A24(0, &qword_1000EF020, BCMessage_ptr);
          *(v253 + 104) = sub_1000420C4();
          v259 = v277;
          *(v253 + 72) = v277;
          v260 = v259;
          sub_1000ABA5C();

          goto LABEL_38;
        }
      }

      sub_10005E984(v277);
      v199 = v198;
      v201 = v200;
      v203 = v202;
      v204 = objc_allocWithZone(type metadata accessor for IMBJITAppKitBubbleView());
      v57 = sub_100084660(v281, v282, v199, v201, v203);

      goto LABEL_39;
    }
  }

  v163 = v275;
  if ([v54 isFromMe])
  {
    type metadata accessor for BIAReplyPayload();
    swift_allocObject();
    v170 = sub_100020C5C(v54);

    v171 = *(v170 + 24);
    v172 = *(v170 + 32);
    v173 = *(v170 + 40);
    v174 = *(v170 + 48);
    v175 = *(v170 + 56);
    v176 = *(v170 + 64);

    v285 = type metadata accessor for PluginBubbleContext();
    v286 = &off_1000DAEB0;
    v284[0] = v276;
    v177 = v276;

    v178 = sub_10002C2C8(v172, v173, v174, v175, v176);

    KeyPath = swift_getKeyPath();
    sub_10000E6D4(v284, v288);
    v287[0] = v178;
    v287[1] = KeyPath;
    sub_10000E738(v284);
    if (qword_1000EEDD0 != -1)
    {
      swift_once();
    }

    v180 = qword_1000FBF00;
    v181 = sub_1000ABE9C();
    v182 = sub_10000413C(&qword_1000F08F8, &qword_1000B1C38);
    v183 = objc_allocWithZone(v182);
    v184 = v183 + *((swift_isaMask & *v183) + 0x60);
    sub_10000E66C(v287, v184, &qword_1000F0900, &qword_1000B1C40);
    *(v184 + 56) = v181;
    sub_10000E66C(v184, v284, &qword_1000F0908, &qword_1000B1C48);
    v185 = objc_allocWithZone(sub_10000413C(&qword_1000F0910, &unk_1000B1C50));

    *(v183 + *((swift_isaMask & *v183) + 0x68)) = sub_1000ABD7C();
    v283.receiver = v183;
    v283.super_class = v182;
    v57 = objc_msgSendSuper2(&v283, "initWithNibName:bundle:", 0, 0);

    sub_10000E784(v287, &qword_1000F0900, &qword_1000B1C40);

    return v57;
  }

  v57 = sub_10003ED58(v276);
  result = [v57 view];
  if (result)
  {
    v164 = result;
    type metadata accessor for BIABubbleView();
    v165 = swift_dynamicCastClassUnconditional();
    sub_100016A58(v277, v163);
    v186 = v274;
    *v274 = 0;
    v186[1] = 0;
    v187 = v163[7];
    v186[2] = v163[6];
    v186[3] = v187;
    v188 = v163[9];
    v186[4] = v163[8];
    v186[5] = v188;
    sub_100042164(v163 + *(v272 + 36), v186 + *(v273 + 32), type metadata accessor for BIABubbleViewModelUserInteractionParadigm);
    if (v163[3])
    {
      v189 = v163[2];

      v190 = sub_1000AB71C();
      if (v191 >> 60 == 15 || (v192 = v190, v193 = v191, v194 = objc_allocWithZone(UIImage), isa = sub_1000AB72C().super.isa, v196 = [v194 initWithData:isa], isa, sub_10000E950(v192, v193), !v196))
      {
        v205 = 0;
LABEL_95:

        sub_10004223C();
        swift_allocError();
        *v214 = v205;
        swift_willThrow();

        sub_100042290(v163, type metadata accessor for BIAPayload);
        sub_100042290(v274, type metadata accessor for BIABubbleViewModel);
        if (qword_1000EEE90 != -1)
        {
          swift_once();
        }

        v215 = sub_1000ABA8C();
        sub_10004212C(v215, qword_1000FC018);
        swift_errorRetain();
        v216 = sub_1000ABA6C();
        v217 = sub_1000AC2AC();

        if (os_log_type_enabled(v216, v217))
        {
          v218 = swift_slowAlloc();
          v219 = swift_slowAlloc();
          *v218 = 138412290;
          swift_errorRetain();
          v220 = _swift_stdlib_bridgeErrorToNSError();
          *(v218 + 4) = v220;
          *v219 = v220;
          _os_log_impl(&_mh_execute_header, v216, v217, "IMBTranscriptMessageViewController: error creating BIA bubble: %@", v218, 0xCu);
          sub_10000E784(v219, &qword_1000F08E8, &qword_1000B1C08);
        }

        else
        {
        }

        goto LABEL_100;
      }

      v274[1] = v196;
    }

    else
    {
    }

    if (!v163[5])
    {

      sub_100042290(v163, type metadata accessor for BIAPayload);
      goto LABEL_121;
    }

    v206 = v163[4];
    v207 = sub_1000AB71C();
    if (v208 >> 60 != 15)
    {
      v209 = v207;
      v210 = v208;
      v211 = objc_allocWithZone(UIImage);
      v212 = sub_1000AB72C().super.isa;
      v213 = [v211 initWithData:v212];

      sub_10000E950(v209, v210);
      if (v213)
      {

        sub_100042290(v163, type metadata accessor for BIAPayload);
        *v274 = v213;
LABEL_121:
        v261 = v264;
        sub_100042394(v274, v264, type metadata accessor for BIABubbleViewModel);
        (*(v271 + 56))(v261, 0, 1, v273);
        v262 = OBJC_IVAR____TtC8Business13BIABubbleView_viewModel;
        swift_beginAccess();
        sub_1000421CC(v261, v165 + v262);
        swift_endAccess();
        sub_1000598D0();

        sub_10000E784(v261, &qword_1000F08E0, &unk_1000B4690);
        return v57;
      }
    }

    v205 = 1;
    goto LABEL_95;
  }

  __break(1u);
  return result;
}

void *sub_1000417B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_pluginBubbleContext);
  v2 = OBJC_IVAR____TtC8Business19PluginBubbleContext_bcMessage;
  v3 = [*(v1 + OBJC_IVAR____TtC8Business19PluginBubbleContext_bcMessage) rootKey];
  v4 = sub_1000AC06C();
  v6 = v5;

  LODWORD(v3) = [*(v1 + v2) isFromMe];
  v7 = sub_1000AC06C();
  v9 = v8;
  v10 = [*(v1 + v2) version];
  v16 = v4;
  if (v3)
  {
    v18._countAndFlagsBits = 46;
    v18._object = 0xE100000000000000;
    sub_1000AC12C(v18);
    v19._countAndFlagsBits = 0x6465696C706572;
    v19._object = 0xE700000000000000;
    sub_1000AC12C(v19);
  }

  v20._countAndFlagsBits = 46;
  v20._object = 0xE100000000000000;
  sub_1000AC12C(v20);
  v21._countAndFlagsBits = v7;
  v21._object = v9;
  sub_1000AC12C(v21);

  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000AF0E0;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_10000587C();
  *(v11 + 32) = v16;
  *(v11 + 40) = v6;
  sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);

  v12 = sub_1000AC3FC();
  sub_1000AC2BC();
  sub_1000ABA5C();

  if (qword_1000EEE98 != -1)
  {
    swift_once();
  }

  v13 = qword_1000FC030;
  v14 = sub_1000AC02C();

  [v13 mt_log_icloud_messages_apps_businessframework:v14 version:v10];

  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2BC();
  sub_1000ABA5C();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result requestPresentationStyle:sub_10003CB04()];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_100041AC0()
{
  v1 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v16 - v4;
  v6 = sub_1000AB6EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(*(v0 + OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_pluginBubbleContext) + OBJC_IVAR____TtC8Business19PluginBubbleContext_bcMessage) rootObject])
  {
    type metadata accessor for IMBPaymentRequest();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_productUrl;
      v14 = v12;
      swift_beginAccess();
      sub_10000E66C(v14 + v13, v5, &unk_1000F06A0, &unk_1000B0450);
      if ((*(v7 + 48))(v5, 1, v6) != 1)
      {
        (*(v7 + 32))(v11, v5, v6);
        sub_1000058D0((v0 + OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_urlHelper), *(v0 + OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_urlHelper + 24));
        sub_10004E400(v11, 0, 0, 0);
        swift_unknownObjectRelease();
        return (*(v7 + 8))(v11, v6);
      }

      swift_unknownObjectRelease();
      sub_10000E784(v5, &unk_1000F06A0, &unk_1000B0450);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return sub_1000417B8();
}

uint64_t sub_100041D18()
{
  v1 = sub_1000ABF3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000ABF6C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005A24(0, &qword_1000EEEB0, OS_dispatch_queue_ptr);
  v13 = sub_1000AC32C();
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  aBlock[4] = sub_100041FE4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100023BE0;
  aBlock[3] = &unk_1000DBED8;
  v15 = _Block_copy(aBlock);
  v16 = v0;

  sub_1000ABF5C();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100042004();
  sub_10000413C(&unk_1000F1E00, &unk_1000B1BF0);
  sub_10004205C();
  sub_1000AC49C();
  sub_1000AC33C();
  _Block_release(v15);

  (*(v2 + 8))(v6, v1);
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_100041FAC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100041FEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100042004()
{
  result = qword_1000F08D0;
  if (!qword_1000F08D0)
  {
    sub_1000ABF3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F08D0);
  }

  return result;
}

unint64_t sub_10004205C()
{
  result = qword_1000F08D8;
  if (!qword_1000F08D8)
  {
    sub_1000041E8(&unk_1000F1E00, &unk_1000B1BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F08D8);
  }

  return result;
}

unint64_t sub_1000420C4()
{
  result = qword_1000F23A0;
  if (!qword_1000F23A0)
  {
    sub_100005A24(255, &qword_1000EF020, BCMessage_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F23A0);
  }

  return result;
}

uint64_t sub_10004212C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100042164(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000421CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000F08E0, &unk_1000B4690);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004223C()
{
  result = qword_1000F08F0;
  if (!qword_1000F08F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F08F0);
  }

  return result;
}

uint64_t sub_100042290(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100042340()
{
  result = qword_1000F0920;
  if (!qword_1000F0920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0920);
  }

  return result;
}

uint64_t sub_100042394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_100042518()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business27IMBAuthenticationHeaderView_messageLabel];
  v2 = [objc_opt_self() mainBundle];
  v7._countAndFlagsBits = 0xE000000000000000;
  v9._object = 0x80000001000B9160;
  v9._countAndFlagsBits = 0xD00000000000001DLL;
  v10.value._countAndFlagsBits = 0;
  v10.value._object = 0;
  v3.super.isa = v2;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_1000AB61C(v9, v10, v3, v11, v7);

  v4 = sub_1000AC02C();

  [v1 setText:v4];

  v5 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v1 setFont:v5];

  [v1 setNumberOfLines:0];
  [v1 setTextAlignment:1];

  return [v0 addSubview:v1];
}

void sub_100042684()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8Business27IMBAuthenticationHeaderView_messageLabel];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_self();
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000B04D0;
  v5 = [v2 topAnchor];
  v6 = [v1 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:8.0];

  *(v4 + 32) = v7;
  v8 = [v2 bottomAnchor];
  v9 = [v1 bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:8.0];

  *(v4 + 40) = v10;
  v11 = [v2 leadingAnchor];
  v12 = [v1 layoutMarginsGuide];
  v13 = [v12 leadingAnchor];

  v14 = [v11 constraintEqualToAnchor:v13];
  *(v4 + 48) = v14;
  v15 = [v2 trailingAnchor];
  v16 = [v1 layoutMarginsGuide];
  v17 = [v16 trailingAnchor];

  v18 = [v15 constraintEqualToAnchor:v17];
  *(v4 + 56) = v18;
  sub_10000F840();
  isa = sub_1000AC18C().super.isa;

  [v3 activateConstraints:isa];
}

id sub_100042958()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBAuthenticationHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000429C0()
{
  if (*v0)
  {
    return 0x326E6F6974706FLL;
  }

  else
  {
    return 0x316E6F6974706FLL;
  }
}

uint64_t sub_1000429F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x316E6F6974706FLL && a2 == 0xE700000000000000;
  if (v6 || (sub_1000AC7AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x326E6F6974706FLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000AC7AC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100042AD0(uint64_t a1)
{
  v2 = sub_100043754();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100042B0C(uint64_t a1)
{
  v2 = sub_100043754();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100042B48()
{
  v1 = 1701736302;
  v2 = 0x736E6F6974706FLL;
  if (*v0 != 2)
  {
    v2 = 0x68437972616E6962;
  }

  if (*v0)
  {
    v1 = 0x656C676E6973;
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

uint64_t sub_100042BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000457C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100042BE8(uint64_t a1)
{
  v2 = sub_1000436E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100042C24(uint64_t a1)
{
  v2 = sub_1000436E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100042C60(uint64_t a1)
{
  v2 = sub_10004395C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100042C9C(uint64_t a1)
{
  v2 = sub_10004395C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100042CD8()
{
  if (*v0)
  {
    result = 0x736E6F69746361;
  }

  else
  {
    result = 0x6C6562616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_100042D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1000AC7AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000AC7AC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100042DE8(uint64_t a1)
{
  v2 = sub_10004380C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100042E24(uint64_t a1)
{
  v2 = sub_10004380C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100042E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1000AC7AC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100042EF8(uint64_t a1)
{
  v2 = sub_1000438B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100042F34(uint64_t a1)
{
  v2 = sub_1000438B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BIAUserInteractionParadigm.encode(to:)(void *a1)
{
  v2 = v1;
  *&v67 = sub_10000413C(&qword_1000F0958, &qword_1000B1C90);
  *&v66 = *(v67 - 8);
  v4 = *(v66 + 64);
  __chkstk_darwin(v67, v5);
  *&v65 = &v57 - v6;
  v7 = sub_10000413C(&qword_1000F0960, &qword_1000B1C98);
  v63 = *(v7 - 8);
  v64 = v7;
  v8 = *(v63 + 64);
  __chkstk_darwin(v7, v9);
  v62 = &v57 - v10;
  v11 = sub_10000413C(&qword_1000F0968, &qword_1000B1CA0);
  v60 = *(v11 - 8);
  v61 = v11;
  v12 = *(v60 + 64);
  __chkstk_darwin(v11, v13);
  v59 = &v57 - v14;
  v15 = sub_10000413C(&qword_1000F0970, &qword_1000B1CA8);
  v58 = *(v15 - 8);
  v16 = *(v58 + 64);
  __chkstk_darwin(v15, v17);
  v19 = &v57 - v18;
  v20 = sub_10000413C(&qword_1000F0978, &qword_1000B1CB0);
  v69 = *(v20 - 8);
  v70 = v20;
  v21 = *(v69 + 64);
  __chkstk_darwin(v20, v22);
  v24 = &v57 - v23;
  v25 = a1[4];
  sub_1000058D0(a1, a1[3]);
  sub_1000436E4();
  v68 = v24;
  sub_1000AC91C();
  v26 = v2[7];
  v87[6] = v2[6];
  v87[7] = v26;
  v27 = v2[9];
  v87[8] = v2[8];
  v87[9] = v27;
  v28 = v2[3];
  v87[2] = v2[2];
  v87[3] = v28;
  v29 = v2[5];
  v87[4] = v2[4];
  v87[5] = v29;
  v30 = v2[1];
  v87[0] = *v2;
  v87[1] = v30;
  v31 = sub_100043738(v87);
  if (v31 > 1)
  {
    if (v31 == 2)
    {
      v40 = sub_1000437FC(v87);
      v83 = v40[6];
      v84 = v40[7];
      v85 = v40[8];
      v86 = v40[9];
      v79 = v40[2];
      v80 = v40[3];
      v81 = v40[4];
      v82 = v40[5];
      v77 = *v40;
      v78 = v40[1];
      LOBYTE(v72) = 3;
      sub_100043754();
      v41 = v65;
      v42 = v70;
      v43 = v68;
      sub_1000AC72C();
      v74 = v79;
      v75 = v80;
      v76 = v81;
      v72 = v77;
      v73 = v78;
      v71 = 0;
      sub_1000437A8();
      v44 = v67;
      v45 = v88;
      sub_1000AC75C();
      if (!v45)
      {
        v74 = v84;
        v75 = v85;
        v76 = v86;
        v72 = v82;
        v73 = v83;
        v71 = 1;
        sub_1000AC75C();
      }

      (*(v66 + 8))(v41, v44);
      return (*(v69 + 8))(v43, v42);
    }

    else
    {
      LOBYTE(v77) = 0;
      sub_10004395C();
      v55 = v70;
      v56 = v68;
      sub_1000AC72C();
      (*(v58 + 8))(v19, v15);
      return (*(v69 + 8))(v56, v55);
    }
  }

  else if (v31)
  {
    v46 = sub_1000437FC(v87);
    v47 = *v46;
    v48 = v46[1];
    v49 = v46[2];
    LOBYTE(v77) = 2;
    sub_10004380C();
    v50 = v62;
    v51 = v70;
    v52 = v68;
    sub_1000AC72C();
    LOBYTE(v77) = 0;
    v53 = v64;
    v54 = v88;
    sub_1000AC74C();
    if (!v54)
    {
      *&v77 = v49;
      LOBYTE(v72) = 1;
      sub_10000413C(&qword_1000F09A0, &qword_1000B1CB8);
      sub_1000491D8(&qword_1000F09A8, sub_100043860);
      sub_1000AC75C();
    }

    (*(v63 + 8))(v50, v53);
    return (*(v69 + 8))(v52, v51);
  }

  else
  {
    v32 = sub_1000437FC(v87);
    v67 = *(v32 + 32);
    v33 = *(v32 + 48);
    LOBYTE(v77) = 1;
    sub_1000438B4();
    v34 = *v32;
    v65 = *(v32 + 16);
    v66 = v34;
    v35 = v59;
    v36 = v70;
    v37 = v68;
    sub_1000AC72C();
    v77 = v66;
    v78 = v65;
    v79 = v67;
    *&v80 = v33;
    sub_100043908();
    v38 = v61;
    sub_1000AC75C();
    (*(v60 + 8))(v35, v38);
    return (*(v69 + 8))(v37, v36);
  }
}

unint64_t sub_1000436E4()
{
  result = qword_1000F0980;
  if (!qword_1000F0980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0980);
  }

  return result;
}

uint64_t sub_100043738(uint64_t a1)
{
  if (((*(a1 + 120) >> 61) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return (*(a1 + 120) >> 61) & 3;
  }
}

unint64_t sub_100043754()
{
  result = qword_1000F0988;
  if (!qword_1000F0988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0988);
  }

  return result;
}

unint64_t sub_1000437A8()
{
  result = qword_1000F0990;
  if (!qword_1000F0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0990);
  }

  return result;
}

unint64_t sub_10004380C()
{
  result = qword_1000F0998;
  if (!qword_1000F0998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0998);
  }

  return result;
}

unint64_t sub_100043860()
{
  result = qword_1000F09B0;
  if (!qword_1000F09B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F09B0);
  }

  return result;
}

unint64_t sub_1000438B4()
{
  result = qword_1000F09B8;
  if (!qword_1000F09B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F09B8);
  }

  return result;
}

unint64_t sub_100043908()
{
  result = qword_1000F09C0;
  if (!qword_1000F09C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F09C0);
  }

  return result;
}

unint64_t sub_10004395C()
{
  result = qword_1000F09C8;
  if (!qword_1000F09C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F09C8);
  }

  return result;
}

double BIAUserInteractionParadigm.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_10004592C(a1, v10);
  if (!v2)
  {
    v5 = v10[7];
    a2[6] = v10[6];
    a2[7] = v5;
    v6 = v10[9];
    a2[8] = v10[8];
    a2[9] = v6;
    v7 = v10[3];
    a2[2] = v10[2];
    a2[3] = v7;
    v8 = v10[5];
    a2[4] = v10[4];
    a2[5] = v8;
    result = *v10;
    v9 = v10[1];
    *a2 = v10[0];
    a2[1] = v9;
  }

  return result;
}

uint64_t sub_100043A0C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_100043A40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

Swift::Int sub_100043A84()
{
  sub_1000AC87C();
  sub_1000AC11C();
  return sub_1000AC8CC();
}

Swift::Int sub_100043AE8()
{
  sub_1000AC87C();
  sub_1000AC11C();
  return sub_1000AC8CC();
}

uint64_t sub_100043B34@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000DA610;
  v7._object = v3;
  v5 = sub_1000AC6AC(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100043BB4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000DA648;
  v8._object = a2;
  v6 = sub_1000AC6AC(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_100043C0C(uint64_t a1)
{
  v2 = sub_1000465F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100043C48(uint64_t a1)
{
  v2 = sub_1000465F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double BIAUserAction.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10004636C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

unint64_t sub_100043CD4()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 7107189;
  }

  *v0;
  return result;
}

uint64_t sub_100043D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_1000AC7AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000B6E70 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000AC7AC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100043DF0(uint64_t a1)
{
  v2 = sub_1000465A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100043E2C(uint64_t a1)
{
  v2 = sub_1000465A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100043E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1000AC7AC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100043EF4(uint64_t a1)
{
  v2 = sub_1000466A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100043F30(uint64_t a1)
{
  v2 = sub_1000466A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BIAUserAction.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_10000413C(&qword_1000F09D0, &qword_1000B1CC0);
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  __chkstk_darwin(v4, v6);
  v28 = &v27 - v7;
  v8 = sub_10000413C(&qword_1000F09D8, &qword_1000B1CC8);
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v8, v10);
  v12 = &v27 - v11;
  v13 = sub_10000413C(&qword_1000F09E0, &qword_1000B1CD0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v27 - v17;
  v19 = a1[4];
  sub_1000058D0(a1, a1[3]);
  sub_1000465A4();
  sub_1000AC91C();
  v21 = *v2;
  v20 = v2[1];
  if (((*(v2 + 17) | ((*(v2 + 21) | (*(v2 + 23) << 16)) << 32)) & 0x8000000000000000) != 0)
  {
    v22 = *(v2 + 16);
    v23 = v2[5];
    v31 = v2[6];
    v27 = *(v2 + 3);
    LOBYTE(v32) = 1;
    sub_1000465F8();
    v24 = v28;
    sub_1000AC72C();
    v32 = v21;
    v33 = v20;
    v34 = v22 & 1;
    v35 = v27;
    v36 = v23;
    v37 = v31;
    sub_10004664C();
    v25 = v30;
    sub_1000AC75C();
    (*(v29 + 8))(v24, v25);
  }

  else
  {
    LOBYTE(v32) = 0;
    sub_1000466A0();
    sub_1000AC72C();
    sub_1000AC74C();
    (*(v31 + 8))(v12, v8);
  }

  return (*(v14 + 8))(v18, v13);
}

uint64_t sub_1000442CC(uint64_t a1)
{
  v2 = sub_1000466F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100044308(uint64_t a1)
{
  v2 = sub_1000466F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100044344(uint64_t a1)
{
  v2 = sub_100046748();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100044380(uint64_t a1)
{
  v2 = sub_100046748();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000443BC(uint64_t a1)
{
  v2 = sub_10004679C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000443F8(uint64_t a1)
{
  v2 = sub_10004679C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BIADeterminateResponseType.encode(to:)(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_10000413C(&qword_1000F0A08, &qword_1000B1CD8);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  __chkstk_darwin(v3, v5);
  v7 = &v22 - v6;
  v22 = sub_10000413C(&qword_1000F0A10, &qword_1000B1CE0);
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v22, v10);
  v12 = &v22 - v11;
  v13 = sub_10000413C(&qword_1000F0A18, &qword_1000B1CE8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v22 - v17;
  v19 = a1[4];
  sub_1000058D0(a1, a1[3]);
  sub_1000466F4();
  sub_1000AC91C();
  v20 = (v14 + 8);
  if (v25)
  {
    v27 = 1;
    sub_100046748();
    sub_1000AC72C();
    (*(v23 + 8))(v7, v24);
  }

  else
  {
    v26 = 0;
    sub_10004679C();
    sub_1000AC72C();
    (*(v8 + 8))(v12, v22);
  }

  return (*v20)(v18, v13);
}

Swift::Int BIADeterminateResponseType.hashValue.getter(char a1)
{
  sub_1000AC87C();
  sub_1000AC88C(a1 & 1);
  return sub_1000AC8CC();
}

uint64_t sub_10004478C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000467F0(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t BIADeterminateResponse.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t BIADeterminateResponse.title.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t BIADeterminateResponse.subtitle.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_100044870()
{
  v1 = 25705;
  v2 = 0x656C746974;
  if (*v0 != 2)
  {
    v2 = 0x656C746974627573;
  }

  if (*v0)
  {
    v1 = 1701869940;
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

uint64_t sub_1000448D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100046CD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100044908(uint64_t a1)
{
  v2 = sub_100046C2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100044944(uint64_t a1)
{
  v2 = sub_100046C2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BIADeterminateResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000413C(&qword_1000F0A38, &qword_1000B1CF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v19[-v9];
  v11 = a1[4];
  sub_1000058D0(a1, a1[3]);
  sub_100046C2C();
  sub_1000AC91C();
  v12 = *v3;
  v13 = v3[1];
  v19[15] = 0;
  sub_1000AC74C();
  if (!v2)
  {
    v19[14] = *(v3 + 16);
    v19[13] = 1;
    sub_100046C80();
    sub_1000AC75C();
    v14 = v3[3];
    v15 = v3[4];
    v19[12] = 2;
    sub_1000AC74C();
    v16 = v3[5];
    v17 = v3[6];
    v19[11] = 3;
    sub_1000AC74C();
  }

  return (*(v6 + 8))(v10, v5);
}

double BIADeterminateResponse.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100046E2C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t BIALabeledUserAction.imageName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_100044BF0()
{
  v1 = 0x6D614E6567616D69;
  if (*v0 != 1)
  {
    v1 = 0x6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_100044C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000471E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100044C70(uint64_t a1)
{
  v2 = sub_10004712C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100044CAC(uint64_t a1)
{
  v2 = sub_10004712C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BIALabeledUserAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000413C(&qword_1000F0A50, &qword_1000B1CF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v21[-v9 - 8];
  v11 = a1[4];
  sub_1000058D0(a1, a1[3]);
  sub_10004712C();
  sub_1000AC91C();
  v12 = *v3;
  v13 = v3[1];
  LOBYTE(v22) = 0;
  sub_1000AC74C();
  if (!v2)
  {
    v15 = v3[2];
    v16 = v3[3];
    LOBYTE(v22) = 1;
    sub_1000AC74C();
    v17 = *(v3 + 3);
    v26[0] = *(v3 + 2);
    v26[1] = v17;
    v19 = *(v3 + 2);
    v18 = *(v3 + 3);
    v26[2] = *(v3 + 4);
    v27 = v3[10];
    v22 = v19;
    v23 = v18;
    v24 = *(v3 + 4);
    v25 = v3[10];
    v28 = 2;
    sub_1000470F4(v26, v21);
    sub_100043908();
    sub_1000AC75C();
    sub_100047180(v22, *(&v22 + 1), v23);
  }

  return (*(v6 + 8))(v10, v5);
}

double BIALabeledUserAction.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100047300(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t BIABinaryChoiceRole.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x7972616D697270;
  }

  if (a1 == 1)
  {
    return 0x7261646E6F636573;
  }

  return 0x7463757274736564;
}

uint64_t sub_100044FF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7261646E6F636573;
  v4 = 0xE900000000000079;
  if (v2 != 1)
  {
    v3 = 0x7463757274736564;
    v4 = 0xEB00000000657669;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7972616D697270;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7261646E6F636573;
  v8 = 0xE900000000000079;
  if (*a2 != 1)
  {
    v7 = 0x7463757274736564;
    v8 = 0xEB00000000657669;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7972616D697270;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000AC7AC();
  }

  return v11 & 1;
}

Swift::Int sub_100045110()
{
  v1 = *v0;
  sub_1000AC87C();
  sub_1000AC11C();

  return sub_1000AC8CC();
}

uint64_t sub_1000451C0()
{
  *v0;
  *v0;
  sub_1000AC11C();
}

Swift::Int sub_10004525C()
{
  v1 = *v0;
  sub_1000AC87C();
  sub_1000AC11C();

  return sub_1000AC8CC();
}

uint64_t sub_100045308@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Business19BIABinaryChoiceRoleO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100045338(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000079;
  v5 = 0x7261646E6F636573;
  if (v2 != 1)
  {
    v5 = 0x7463757274736564;
    v4 = 0xEB00000000657669;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7972616D697270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100045460()
{
  v1 = 1701605234;
  if (*v0 != 1)
  {
    v1 = 0x6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}