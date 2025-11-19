uint64_t sub_1002319E8(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_100231A20(uint64_t a1, uint64_t a2, objc_class *a3, char a4)
{
  v43 = a1;
  v44 = sub_10076D1AC();
  v7 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10075D9EC();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10000A5D4(&qword_100942698);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_100770F9C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a3;
  if (a4)
  {
    sub_10077108C();
  }

  else
  {
    sub_1007710CC();
    v17 = [(objc_class *)a3 userInterfaceStyle];
    v18 = objc_opt_self();
    v19 = &selRef_systemGray3Color;
    if (v17 != 2)
    {
      v19 = &selRef_systemGray5Color;
    }

    v20 = [v18 *v19];
    v21 = sub_100770F5C();
    v40 = v13;
    v22 = v7;
    v23 = a3;
    v24 = v21;
    sub_10076E42C();
    v24(v45, 0);
    v25 = v23;
    v7 = v22;
    v13 = v40;
    [(objc_class *)v25 displayScale];
    v26 = sub_100770F5C();
    sub_10076E43C();
    v26(v45, 0);
  }

  (*(v14 + 104))(v16, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v13);
  sub_100770FAC();
  sub_10077102C();
  if (a2)
  {
    sub_10000A5D4(&unk_10094E7E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783DD0;
    *(inited + 32) = NSFontAttributeName;
    v28 = qword_100940EE0;

    v29 = NSFontAttributeName;
    if (v28 != -1)
    {
      swift_once();
    }

    v30 = sub_10076D3DC();
    v31 = sub_10000A61C(v30, qword_1009A1A98);
    v32 = v41;
    (*(*(v30 - 8) + 16))(v41, v31, v30);
    v33 = v44;
    (*(v7 + 104))(v32, enum case for FontSource.useCase(_:), v44);
    v34.super.isa = v42;
    isa = sub_10076D19C(v34).super.isa;
    (*(v7 + 8))(v32, v33);
    *(inited + 64) = sub_100016F40(0, &qword_100942F00);
    *(inited + 40) = isa;
    sub_1000FC5F4(inited);
    swift_setDeallocating();
    sub_10000CFBC(inited + 32, &unk_100948B10);
    sub_10075DA0C();
    sub_10075D9AC();
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = sub_10075D99C();
  (*(*(v37 - 8) + 56))(v12, v36, 1, v37);
  return sub_10077101C();
}

NSString sub_100231F3C()
{
  result = sub_10076FF6C();
  qword_10094E478 = result;
  return result;
}

uint64_t sub_100231F7C()
{
  v0 = sub_10000A5D4(&qword_10094E548);
  __chkstk_darwin(v0);
  v1 = sub_10000A5D4(&qword_10094E540);
  sub_10000DB18(v1, qword_10094E480);
  sub_10000A61C(v1, qword_10094E480);
  sub_100016F40(0, &qword_100947240);
  sub_10076D4CC();
  sub_100071820(&qword_10094E550, &qword_10094E548);
  return sub_10076E18C();
}

uint64_t sub_1002320A0()
{
  v0 = sub_10076FD4C();
  sub_10000DB18(v0, qword_10094E498);
  v1 = sub_10000A61C(v0, qword_10094E498);
  if (qword_1009412F0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A61C(v0, qword_1009A2618);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100232168()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_10076321C();
    sub_100563DC4(v2, 1, v1);
  }

  return result;
}

void sub_1002321F0(uint64_t a1, char a2, uint64_t a3, objc_class *a4)
{
  v6 = sub_10076E3AC();
  __chkstk_darwin(v6);
  v7 = sub_10000A5D4(&unk_10095B400);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_10076322C();
  sub_100231A20(v10, v11, a4, a2 & 1);

  v12 = sub_10077111C();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  sub_10077114C();
  v13 = [(objc_class *)a4 preferredContentSizeCategory];
  v14 = sub_1005C52E4(v13);
  v15 = v14;

  if (v14)
  {
    v16 = v15;
    sub_100770C0C();
    sub_10076E37C();
    sub_100770C1C();
  }

  else
  {
    sub_10076E88C();
    sub_100770C0C();
    sub_10076E39C();
    sub_100770C1C();
  }
}

char *sub_1002323E8(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_topSeparator;
  v10 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = objc_opt_self();
  v12 = [v11 separatorColor];
  [v10 setBackgroundColor:v12];

  *&v4[v9] = v10;
  v13 = OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_title;
  *&v4[v13] = [objc_allocWithZone(UILabel) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_pills] = _swiftEmptyArrayStorage;
  v14 = OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_bottomSeparator;
  v15 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = [v11 separatorColor];
  [v15 setBackgroundColor:v16];

  *&v4[v14] = v15;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_guidedSearchResult] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_impressionsCalculator] = 0;
  v17 = &v4[OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_impressionsUpdateBlock];
  v18 = type metadata accessor for GuidedSearchResultContentView();
  *v17 = 0;
  *(v17 + 1) = 0;
  v29.receiver = v4;
  v29.super_class = v18;
  v19 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  v20 = *&v19[OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_topSeparator];
  v21 = v19;
  [v21 addSubview:v20];
  v22 = OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_title;
  [v21 addSubview:*&v21[OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_title]];
  [v21 addSubview:*&v21[OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_bottomSeparator]];
  v23 = *&v21[v22];
  v24 = objc_opt_self();
  v25 = v23;
  result = [v24 _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
  if (result)
  {
    v27 = result;
    [v25 setFont:result];

    [*&v21[v22] setNumberOfLines:0];
    sub_10000A5D4(&unk_100945BF0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100784500;
    *(v28 + 32) = sub_10076E88C();
    *(v28 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    *(v28 + 48) = sub_10076E3FC();
    *(v28 + 56) = &protocol witness table for UITraitLegibilityWeight;
    sub_100770C6C();

    swift_unknownObjectRelease();

    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100232764()
{
  v1 = v0;
  v2 = sub_10076F08C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076F0CC();
  v20 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_pills;
  swift_beginAccess();
  *(v9 + 16) = *&v1[v10];
  v11 = objc_opt_self();

  if ([v11 isMainThread])
  {
    swift_beginAccess();
    sub_1002362DC((v9 + 16), 0x74696E696564, 0xE600000000000000);
    swift_endAccess();
  }

  else
  {
    sub_100016F40(0, &qword_1009471F0);
    v19 = sub_10077068C();
    aBlock[4] = sub_100236B08;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_10088DBD8;
    v18 = _Block_copy(aBlock);

    sub_10076F0AC();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100236B10(&qword_100945160, 255, &type metadata accessor for DispatchWorkItemFlags);
    v17 = v6;
    sub_10000A5D4(&unk_10094E1C0);
    sub_100071820(&qword_100945170, &unk_10094E1C0);
    sub_1007712CC();
    v13 = v18;
    v12 = v19;
    sub_10077069C();
    _Block_release(v13);

    (*(v3 + 8))(v5, v2);
    (*(v20 + 8))(v8, v17);
  }

  v14 = type metadata accessor for GuidedSearchResultContentView();
  v21.receiver = v1;
  v21.super_class = v14;
  return objc_msgSendSuper2(&v21, "dealloc");
}

uint64_t sub_100232B2C(uint64_t a1)
{
  swift_beginAccess();
  sub_1002362DC((a1 + 16), 0x74696E696564, 0xE600000000000000);
  return swift_endAccess();
}

uint64_t sub_100232C50(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v57 = sub_10076F13C();
  v3 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = (v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10076414C();
  sub_100236B10(&qword_10094E558, 255, &type metadata accessor for GuidedSearchResult);
  result = sub_10076332C();
  v7 = aBlock[0];
  if (aBlock[0])
  {
    v47 = v3;
    *&v2[OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_guidedSearchResult] = aBlock[0];

    v8 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_title];
    sub_10076412C();
    v58 = v2;
    if (v9)
    {
      v10 = sub_10076FF6C();
    }

    else
    {
      v10 = 0;
    }

    [v8 setText:v10];

    v11 = sub_10076413C();
    v45 = byte_10094DD10;
    swift_getKeyPath();
    sub_10076338C();

    v55 = v66;
    v12 = OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_pills;
    v13 = v58;
    swift_beginAccess();
    v43 = v12;
    sub_1002362DC(&v13[v12], 0xD000000000000017, 0x80000001007DAD70);
    if (qword_10093FB60 != -1)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v14 = sub_10076FD4C();
      sub_10000A61C(v14, qword_10094E498);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100785C70;
      v61 = sub_10000A5D4(&qword_10094E538);
      aBlock[0] = &type metadata for GuidedSearchTokenPill;
      sub_10076F30C();
      sub_10000CFBC(aBlock, &unk_1009434C0);
      sub_10076F27C();
      if (v11 >> 62)
      {
        v15 = sub_10077158C();
      }

      else
      {
        v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v61 = &type metadata for Int;
      aBlock[0] = v15;
      sub_10076F30C();
      sub_10000CFBC(aBlock, &unk_1009434C0);
      sub_10076F27C();
      if (qword_10093FB58 != -1)
      {
        swift_once();
      }

      v16 = sub_10000A5D4(&qword_10094E540);
      v17 = sub_10000A61C(v16, qword_10094E480);
      swift_beginAccess();
      v61 = v16;
      v18 = sub_10000DB7C(aBlock);
      v19 = *(*(v16 - 8) + 16);
      v52 = v17;
      v53 = v16;
      v19(v18, v17, v16);
      sub_10076F30C();
      sub_10000CFBC(aBlock, &unk_1009434C0);
      sub_10076FBCC();

      if (!v15)
      {
        break;
      }

      v20 = v15;
      v65 = _swiftEmptyArrayStorage;
      result = sub_1007714EC();
      if (v15 < 0)
      {
        __break(1u);
        return result;
      }

      v42[1] = v7;
      v51 = sub_100016F40(0, &qword_1009471F0);
      v46 = sub_100016F40(0, &qword_1009641D0);
      v21 = 0;
      v54 = v11;
      v50 = v11 & 0xC000000000000001;
      v49 = enum case for DispatchPredicate.onQueue(_:);
      v48 = (v47 + 13);
      ++v47;
      v45 &= 1u;
      v44 = &v60;
      while (1)
      {
        if (v50)
        {
          v22 = sub_10077149C();
        }

        else
        {
          v22 = *(v54 + 8 * v21 + 32);
        }

        *v5 = sub_10077068C();
        v23 = v57;
        (*v48)(v5, v49, v57);
        v24 = sub_10076F16C();
        (*v47)(v5, v23);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v11 = v20;
        if (qword_10093FB50 != -1)
        {
          swift_once();
        }

        v25 = qword_10094E478;
        v26 = swift_allocObject();
        swift_weakInit();
        v27 = swift_allocObject();
        *(v27 + 16) = v26;
        *(v27 + 24) = v22;
        v28 = v25;

        v7 = sub_100770F1C();
        swift_beginAccess();
        sub_10076E16C();
        swift_endAccess();
        v29 = v64;
        if (v64)
        {
          [v64 removeActionForIdentifier:v28 forControlEvents:0x2000];
          [v29 addAction:v7 forControlEvents:0x2000];
          v30 = v29;
        }

        else
        {
          sub_100016F40(0, &qword_100947240);
          v31 = v7;
          v67.value.super.super.isa = v7;
          v30 = sub_10077115C(UIButtonTypeSystem, v67).super.super.super.super.isa;
          v29 = 0;
        }

        v32 = swift_allocObject();
        *(v32 + 16) = v45;
        v33 = v55;
        *(v32 + 24) = v22;
        *(v32 + 32) = v33;
        v62 = sub_100236908;
        v63 = v32;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v60 = sub_100177EA0;
        v61 = &unk_10088DB88;
        v34 = _Block_copy(aBlock);

        v35 = v33;
        v36 = v29;

        [(objc_class *)v30 setConfigurationUpdateHandler:v34];

        _Block_release(v34);
        v37 = [(objc_class *)v30 superview];
        v38 = v58;
        if (!v37 || (v7 = v37, sub_100016F40(0, &qword_1009441F0), v39 = v38, v40 = sub_100770EEC(), v7, v39, (v40 & 1) == 0))
        {
          [v38 addSubview:v30];
        }

        ++v21;
        sub_1007714CC();
        sub_1007714FC();
        sub_10077150C();
        sub_1007714DC();
        v20 = v11;
        if (v11 == v21)
        {

          v41 = v65;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_32:
      swift_once();
    }

    v41 = _swiftEmptyArrayStorage;
    v38 = v58;
LABEL_29:
    *&v38[v43] = v41;
    swift_endAccess();

    [v38 setNeedsLayout];
  }

  return result;
}

void sub_100233670()
{
  v0 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v37 - v1;
  v3 = sub_10076F7FC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_guidedSearchResult);
    if (v9 && (swift_beginAccess(), (v10 = swift_weakLoadStrong()) != 0))
    {
      v11 = v10;
      v12 = OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_pills;
      swift_beginAccess();
      v13 = *&v8[v12];

      v49 = sub_10076413C();
      v40 = v8;
      v38 = v9;
      if (v13 >> 62)
      {
        goto LABEL_36;
      }

      for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
      {
        v47 = v13 & 0xFFFFFFFFFFFFFF8;
        v48 = v13 & 0xC000000000000001;
        v15 = v49 & 0xFFFFFFFFFFFFFF8;
        v50 = v49 & 0xFFFFFFFFFFFFFF8;
        if (v49 < 0)
        {
          v15 = v49;
        }

        v37 = v15;
        v45 = v49 & 0xC000000000000001;
        v43 = (v4 + 48);
        v42 = (v4 + 32);
        v41 = (v4 + 8);
        v16 = 4;
        v46 = v49 >> 62;
        v44 = i;
        v39 = v2;
        while (1)
        {
          v17 = v16 - 4;
          if (v48)
          {
            v18 = sub_10077149C();
          }

          else
          {
            if (v17 >= *(v47 + 16))
            {
              goto LABEL_34;
            }

            v18 = *(v13 + 8 * v16);
          }

          v19 = v18;
          v20 = v16 - 3;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v46)
          {
            if (v17 == sub_10077158C())
            {
LABEL_30:

              goto LABEL_31;
            }
          }

          else if (v17 == *(v50 + 16))
          {
            goto LABEL_30;
          }

          if (v45)
          {
            v4 = sub_10077149C();
          }

          else
          {
            if (v17 >= *(v50 + 16))
            {
              goto LABEL_35;
            }

            v4 = *(v49 + 8 * v16);
          }

          sub_10076323C();
          if ((*v43)(v2, 1, v3) == 1)
          {

            sub_10000CFBC(v2, &qword_1009492E0);
          }

          else
          {
            (*v42)(v6, v2, v3);
            v21 = v19;
            if ([v21 isHidden])
            {
            }

            else
            {
              [v21 frame];
              v23 = v22;
              v25 = v24;
              v27 = v26;
              v29 = v28;

              v30 = v11;
              v31 = v13;
              v32 = v3;
              v33 = v6;
              v34 = v40;
              v35 = [v40 superview];
              v36 = v34;
              v6 = v33;
              v3 = v32;
              v13 = v31;
              v11 = v30;
              v2 = v39;
              [v36 convertRect:v35 toView:{v23, v25, v27, v29}];

              sub_1007660EC();
            }

            (*v41)(v6, v3);
          }

          ++v16;
          if (v20 == v44)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        ;
      }

LABEL_31:
    }

    else
    {
    }
  }
}

id sub_100233B6C()
{
  v1 = v0;
  v60.receiver = v0;
  v60.super_class = type metadata accessor for GuidedSearchResultContentView();
  objc_msgSendSuper2(&v60, "layoutSubviews");
  sub_10076422C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v0 traitCollection];
  [v10 displayScale];
  if (v11 != 3.0)
  {

    goto LABEL_5;
  }

  v12 = sub_10077071C();

  if (v12)
  {
LABEL_5:
    v13 = 1.0;
    goto LABEL_6;
  }

  v13 = 0.666666667;
LABEL_6:
  [v1 effectiveUserInterfaceLayoutDirection];
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_topSeparator];
  v61.origin.x = v3;
  v61.origin.y = v5;
  v61.size.width = v7;
  v61.size.height = v9;
  MinX = CGRectGetMinX(v61);
  v62.origin.x = v3;
  v62.origin.y = v5;
  v62.size.width = v7;
  v62.size.height = v9;
  v59 = v13;
  [v14 setFrame:{MinX, 0.0, CGRectGetWidth(v62), v13}];
  v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_title];
  v63.origin.x = v3;
  v63.origin.y = v5;
  v63.size.width = v7;
  v63.size.height = v9;
  CGRectGetMinX(v63);
  [v14 frame];
  CGRectGetMaxY(v64);
  [v16 sizeThatFits:{v7, v9}];
  [v1 bounds];
  sub_1007709DC();
  [v16 setFrame:?];
  v65.origin.x = v3;
  v65.origin.y = v5;
  v65.size.width = v7;
  v65.size.height = v9;
  v17 = CGRectGetMinX(v65);
  [v16 frame];
  MaxY = CGRectGetMaxY(v66);
  [v1 bounds];
  v19 = CGRectGetMaxY(v67);
  v20 = [v1 traitCollection];
  v21 = [v20 preferredContentSizeCategory];
  v22 = sub_10076FF9C();
  v24 = v23;
  if (v22 == sub_10076FF9C() && v24 == v25)
  {

    goto LABEL_10;
  }

  v26 = sub_10077167C();

  if (v26)
  {
LABEL_10:
    v28 = sub_10077088C();

    if (v28)
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    v30 = OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_pills;
    swift_beginAccess();
    v31 = *&v1[v30];
    if (v31 >> 62)
    {
LABEL_39:
      v32 = sub_10077158C();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = v32 != 0;
    v68.origin.x = v3;
    v68.origin.y = v5;
    v68.size.width = v7;
    v68.size.height = v9;
    Width = CGRectGetWidth(v68);
    v35 = *&v1[v30];
    v58 = v1;
    if (v35 >> 62)
    {
      v36 = sub_10077158C();
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v36)
    {
      goto LABEL_36;
    }

    v37 = 0;
    v52 = v19 - v59 + -12.0;
    v53 = MaxY + 16.0;
    v1 = (v35 & 0xC000000000000001);
    v19 = 1.79769313e308;
    while (2)
    {
      v30 = v33;
      while (2)
      {
        v38 = v37;
        while (1)
        {
          if (v1)
          {
            v39 = sub_10077149C();
          }

          else
          {
            if (v38 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_38;
            }

            v39 = *(v35 + 8 * v38 + 32);
          }

          v40 = v39;
          v37 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          if (v29 >= v30)
          {
            break;
          }

          [v39 setHidden:1];

          ++v38;
          if (v37 == v36)
          {
            goto LABEL_36;
          }
        }

        v54 = v19;
        v55 = Width;
        [v39 sizeThatFits:{Width, v19}];
        v42 = v41;
        MaxY = v43;
        v44 = v17;
        v45 = v17 + v41;
        v69.size.width = v7;
        v56 = v5;
        v57 = v3;
        v69.origin.x = v3;
        v69.size.height = v9;
        v69.origin.y = v5;
        if (CGRectGetMaxX(v69) >= v45)
        {
          v33 = v30;
          v46 = v44;
          v47 = v53;
          v48 = 8.0;
        }

        else
        {
          v33 = v30 + 1;
          if (v29 <= v30)
          {
            [v40 setHidden:1];

            ++v30;
            v17 = v44;
            Width = v55;
            v19 = v54;
            if (v37 != v36)
            {
              continue;
            }

LABEL_36:

            v49 = *&v58[OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_bottomSeparator];
            v72.origin.x = v3;
            v72.origin.y = v5;
            v72.size.width = v7;
            v72.size.height = v9;
            v50 = CGRectGetMinX(v72);
            [v58 bounds];
            v51 = CGRectGetMaxY(v73) - v59;
            v74.origin.x = v3;
            v74.origin.y = v5;
            v74.size.width = v7;
            v74.size.height = v9;
            return [v49 setFrame:{v50, v51, CGRectGetWidth(v74), v59}];
          }

          v70.origin.y = v5;
          v70.origin.x = v3;
          v70.size.width = v7;
          v70.size.height = v9;
          v46 = CGRectGetMinX(v70);
          v48 = 8.0;
          v47 = v53 + MaxY + 8.0;
        }

        break;
      }

      [v58 bounds];
      v53 = v47;
      sub_1007709DC();
      [v40 setFrame:?];
      v17 = v42 + v48 + v46;
      [v40 frame];
      [v40 setHidden:v52 < CGRectGetMaxY(v71)];

      Width = v55;
      v5 = v56;
      v3 = v57;
      v19 = v54;
      if (v37 != v36)
      {
        continue;
      }

      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

id sub_1002341FC()
{
  v0 = [objc_allocWithZone(UILabel) init];
  result = [v0 setNumberOfLines:0];
  qword_10094E4B0 = v0;
  return result;
}

id sub_10023424C()
{
  result = [objc_opt_self() buttonWithType:1];
  qword_10094E4B8 = result;
  return result;
}

uint64_t sub_10023428C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1002342D0()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_guidedSearchResult) = 0;

  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_title) setText:0];
  v1 = OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_pills;
  swift_beginAccess();
  sub_1002362DC((v0 + v1), 0x4665726170657270, 0xEF6573756552726FLL);
  return swift_endAccess();
}

uint64_t sub_1002343BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100234474()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1);
  return v2;
}

uint64_t sub_1002344D0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6);
}

void (*sub_100234590())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_1002368A4;
}

uint64_t sub_100234684(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_100236B10(&qword_10094E528, a2, type metadata accessor for GuidedSearchResultContentView);
  result = sub_100236B10(&qword_10094E530, v3, type metadata accessor for GuidedSearchResultContentView);
  *(a1 + 16) = result;
  return result;
}

void sub_100234708(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_10000A5D4(&qword_10094E578);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1002347E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_100016F40(0, &qword_100942F10);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10000A5D4(&unk_100942870);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1002348EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10000A5D4(&unk_100942870);
      v9 = swift_allocObject();
      v10 = j__malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_100234A00(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_10000A5D4(&qword_10094E570);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10000A5D4(&qword_10094E560);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_100234B14(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_10000A5D4(a5);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = j__malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_100234CB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 16 * a3), 16 * v5);
        return;
      }
    }

    else
    {
      sub_10000A5D4(&qword_10094E580);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 17;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

id sub_100234D88(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_title];
  result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
  if (result)
  {
    v4 = result;
    [v2 setFont:result];

    return [a1 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100234E2C(uint64_t a1, char a2, char *a3, double a4, double a5)
{
  LOBYTE(v6) = a2;
  v91 = sub_10076D1AC();
  v10 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10075D9EC();
  __chkstk_darwin(v12 - 8);
  v89 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&qword_100942698);
  __chkstk_darwin(v14 - 8);
  v88 = &v81 - v15;
  v16 = sub_10000A5D4(&unk_10095B400);
  __chkstk_darwin(v16 - 8);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v81 - v20;
  if (qword_10093FB70 != -1)
  {
LABEL_46:
    swift_once();
  }

  v22 = qword_10094E4B8;
  v92 = a3;
  sub_100231A20(0, 0, a3, v6 & 1);
  v23 = sub_10077111C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v99 = v23;
  v25(v21, 0, 1);
  sub_10077114C();
  sub_10000A5D4(&qword_10094E560);
  v26 = swift_allocObject();
  v83 = xmmword_100783DD0;
  *(v26 + 16) = xmmword_100783DD0;
  *(v26 + 32) = _swiftEmptyArrayStorage;
  v27 = *(a1 + 16);
  if (v27)
  {
    v93 = v21;
    v21 = 0;
    v98 = (v24 + 48);
    v87 = (v10 + 104);
    v86 = NSFontAttributeName;
    v85 = (v10 + 8);
    v84 = enum case for FontSource.useCase(_:);
    v28 = a1 + 40;
    v100 = v22;
    v96 = v18;
    v97 = v27;
    v82 = a1 + 40;
    do
    {
      v29 = v26 + 24;
      a3 = v21;
      v30 = a4;
      v6 = (v28 + 16 * v21);
      v95 = v26;
      while (1)
      {
        if (a3 >= v27)
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v21 = (a3 + 1);
        if (__OFADD__(a3, 1))
        {
          goto LABEL_42;
        }

        v31 = *(v6 - 1);
        a1 = *v6;

        sub_10077113C();
        v32 = (*v98)(v18, 1, v99);
        v101 = a3 + 1;
        if (v32)
        {
          v33 = v18;
          v10 = &unk_10095B400;
          v21 = v29;
          v34 = v26;
          v35 = v18;
          v18 = &unk_100783F80;
          sub_100016E2C(v33, v93, &unk_10095B400);
          sub_10077114C();
          v36 = v35;
          v26 = v34;
          v29 = v21;
          sub_10000CFBC(v36, &unk_10095B400);
        }

        else
        {
          v94 = v31;
          v37 = v86;
          v104[0] = v86;
          v38 = qword_100940EE0;

          v39 = v37;
          if (v38 != -1)
          {
            swift_once();
          }

          v40 = sub_10076D3DC();
          v41 = sub_10000A61C(v40, qword_1009A1A98);
          v42 = v90;
          (*(*(v40 - 8) + 16))(v90, v41, v40);
          v43 = v91;
          (*v87)(v42, v84, v91);
          v44.super.isa = v92;
          isa = sub_10076D19C(v44).super.isa;
          (*v85)(v42, v43);
          v104[4] = sub_100016F40(0, &qword_100942F00);
          v104[1] = isa;
          sub_10000A5D4(&unk_10094E800);
          v46 = sub_1007715DC();

          sub_100016E2C(v104, &v102, &unk_100948B10);
          v10 = v102;
          v47 = sub_1006113DC(v102);
          if (v48)
          {
            goto LABEL_44;
          }

          v46[(v47 >> 6) + 8] |= 1 << v47;
          *(v46[6] + 8 * v47) = v10;
          sub_10000CD64(&v103, (v46[7] + 32 * v47));
          v49 = v46[2];
          v50 = __OFADD__(v49, 1);
          v51 = v49 + 1;
          if (v50)
          {
            goto LABEL_45;
          }

          v46[2] = v51;

          sub_10000CFBC(v104, &unk_100948B10);
          sub_10075DA0C();
          v52 = v88;
          sub_10075D9AC();
          v53 = sub_10075D99C();
          (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
          sub_10077101C();
          v22 = v100;
          sub_10077114C();
        }

        [v22 sizeThatFits:{a5, 1.79769313e308}];
        v55 = v54;
        v57 = v56;
        if (v30 + v54 > a5)
        {
          break;
        }

        v10 = *(v26 + 16);
        if (!v10)
        {
          goto LABEL_43;
        }

        v58 = *(v29 + 8 * v10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v29 + 8 * v10) = v58;
        v18 = v96;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v58 = sub_10049E358(0, *(v58 + 2) + 1, 1, v58);
          *(v29 + 8 * v10) = v58;
        }

        v61 = *(v58 + 2);
        v60 = *(v58 + 3);
        if (v61 >= v60 >> 1)
        {
          *(v29 + 8 * v10) = sub_10049E358((v60 > 1), v61 + 1, 1, v58);
        }

        v30 = v30 + v55 + 8.0;

        v62 = *(v29 + 8 * v10);
        *(v62 + 16) = v61 + 1;
        v63 = v62 + 16 * v61;
        *(v63 + 32) = v55;
        *(v63 + 40) = v57;
        ++a3;
        v6 += 2;
        v27 = v97;
        v26 = v95;
        v22 = v100;
        if (v101 == v97)
        {
          goto LABEL_25;
        }
      }

      sub_10000A5D4(&qword_10094E568);
      v64 = swift_allocObject();
      *(v64 + 16) = v83;
      *(v64 + 32) = v55;
      *(v64 + 40) = v57;
      v66 = *(v26 + 16);
      v65 = *(v26 + 24);
      if (v66 >= v65 >> 1)
      {
        v26 = sub_10049E45C((v65 > 1), v66 + 1, 1, v26);
      }

      v18 = v96;
      v21 = v101;

      *(v26 + 16) = v66 + 1;
      *(v26 + 8 * v66 + 32) = v64;
      v27 = v97;
      v28 = v82;
    }

    while (v21 != v97);
  }

LABEL_25:
  v67 = [(objc_class *)v92 preferredContentSizeCategory];
  v68 = sub_10076FF9C();
  v70 = v69;
  if (v68 == sub_10076FF9C() && v70 == v71)
  {

    goto LABEL_29;
  }

  v72 = sub_10077167C();

  if (v72)
  {
LABEL_29:
    v74 = sub_10077088C();

    v75 = 2;
    if (v74)
    {
      v75 = 3;
    }

    if (*(v26 + 16) >= v75)
    {
      v76 = v75;
    }

    else
    {
      v76 = *(v26 + 16);
    }

    sub_10077169C();
    swift_unknownObjectRetain_n();
    v77 = swift_dynamicCastClass();
    if (!v77)
    {
      swift_unknownObjectRelease();
      v77 = _swiftEmptyArrayStorage;
    }

    v78 = v77[2];

    if (v78 == v76)
    {
      v79 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v79)
      {
        return v79;
      }

      v79 = _swiftEmptyArrayStorage;
    }

    else
    {
      swift_unknownObjectRelease();
      sub_100234A00(v26, v26 + 32, 0, (2 * v76) | 1);
      v79 = v80;
    }

    swift_unknownObjectRelease();
    return v79;
  }

  __break(1u);
  return result;
}

uint64_t sub_10023582C(uint64_t a1, char a2, char *a3, double a4)
{
  result = sub_100234E2C(a1, a2 & 1, a3, 0.0, a4);
  v5 = result;
  v6 = *(result + 16);
  if (!v6)
  {
  }

  v7 = 0;
  v20 = result + 32;
  v8 = -8.0;
  while (v7 < *(v5 + 16))
  {
    v9 = *(v20 + 8 * v7);
    v10 = *(v9 + 16);
    if (v10)
    {

      sub_1004BBAA4(0, v10, 0);
      v11 = _swiftEmptyArrayStorage;
      v12 = _swiftEmptyArrayStorage[2];
      v13 = (v9 + 40);
      do
      {
        v14 = *v13;
        v21 = v11;
        v15 = *(v11 + 3);
        v16 = v12 + 1;
        if (v12 >= v15 >> 1)
        {
          sub_1004BBAA4((v15 > 1), v12 + 1, 1);
          v11 = v21;
        }

        *(v11 + 2) = v16;
        v11[v12 + 4] = v14;
        v13 += 2;
        ++v12;
        --v10;
      }

      while (v10);
LABEL_13:
      v17 = v11[4];
      v18 = v16 - 1;
      if (v16 != 1)
      {
        v19 = 5;
        do
        {
          if (v17 < v11[v19])
          {
            v17 = v11[v19];
          }

          ++v19;
          --v18;
        }

        while (v18);
      }

      goto LABEL_4;
    }

    v16 = _swiftEmptyArrayStorage[2];

    v11 = _swiftEmptyArrayStorage;
    if (v16)
    {
      goto LABEL_13;
    }

    v17 = 0.0;
LABEL_4:
    ++v7;
    v8 = v8 + v17 + 8.0;
    if (v7 == v6)
    {
    }
  }

  __break(1u);
  return result;
}

id sub_1002359F8()
{
  v0 = sub_10076207C();
  v65 = *(v0 - 8);
  v66 = v0;
  __chkstk_darwin(v0);
  v64 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000A5D4(&unk_100946720);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v58 - v4;
  v63 = sub_10076C36C();
  v6 = *(v63 - 8);
  __chkstk_darwin(v63);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v58 - v10;
  v12 = sub_10076C38C();
  v59 = *(v12 - 8);
  v60 = v12;
  __chkstk_darwin(v12);
  v67 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v58 - v15;
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  v17 = v5;
  v18 = v63;
  (*(v3 + 8))(v17, v2);
  v19 = v16;
  v20 = v64;
  v21 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v70)
  {
    v21 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v6 + 104))(v11, *v21, v18);
  sub_10076C24C();
  v62 = v22;
  sub_10076C26C();
  v61 = v23;
  sub_10076C25C();
  swift_getKeyPath();
  sub_10076338C();

  sub_10076203C();
  (*(v6 + 16))(v8, v11, v18);
  if (qword_100940540 != -1)
  {
    swift_once();
  }

  v24 = v67;
  sub_10076C33C();
  (*(v65 + 8))(v20, v66);
  (*(v6 + 8))(v11, v18);
  sub_10076414C();
  sub_100236B10(&qword_10094E558, 255, &type metadata accessor for GuidedSearchResult);
  sub_10076332C();
  v25 = v70;
  swift_getKeyPath();
  sub_10076338C();

  v26 = v69;
  [v69 displayScale];
  if (v27 == 3.0)
  {
    v28 = sub_10077071C();

    if ((v28 & 1) == 0)
    {
      v29 = 0.666666667;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v29 = 1.0;
LABEL_10:
  sub_10076C2FC();
  sub_10076C2EC();
  sub_100770ACC();
  v31 = v30;
  swift_getKeyPath();
  sub_10076338C();

  v32 = v69;
  if (v25)
  {
    LODWORD(v66) = byte_10094DD10;
    v33 = v29 + 20.0;

    v34 = sub_10076412C();
    v58 = v19;
    if (!v35)
    {
      goto LABEL_20;
    }

    v36 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v36 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (!v36)
    {

      goto LABEL_20;
    }

    if (qword_10093FB68 != -1)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v37 = qword_10094E4B0;
      result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
      if (!result)
      {
        break;
      }

      v39 = result;
      [v37 setFont:result];

      v40 = sub_10076FF6C();
      [v37 setText:v40];

      [v37 sizeThatFits:{v31, 1.79769313e308}];
      v42 = v41;

      v33 = v33 + v42 + 16.0;
LABEL_20:
      v45 = sub_10076413C();
      v46 = v45;
      if (v45 >> 62)
      {
        v47 = sub_10077158C();
        if (!v47)
        {
LABEL_32:

          v49 = _swiftEmptyArrayStorage;
LABEL_33:
          sub_10023582C(v49, v66 & 1, v32, v31);

          v56 = v60;
          v57 = *(v59 + 8);
          v57(v67, v60);
          return (v57)(v58, v56);
        }
      }

      else
      {
        v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v47)
        {
          goto LABEL_32;
        }
      }

      v68 = _swiftEmptyArrayStorage;
      sub_1004BBB24(0, v47 & ~(v47 >> 63), 0);
      if ((v47 & 0x8000000000000000) == 0)
      {
        v64 = v32;
        v65 = v25;
        v48 = 0;
        v49 = v68;
        do
        {
          if ((v46 & 0xC000000000000001) != 0)
          {
            sub_10077149C();
          }

          else
          {
          }

          v50 = sub_10076322C();
          v52 = v51;

          v68 = v49;
          v54 = v49[2];
          v53 = v49[3];
          if (v54 >= v53 >> 1)
          {
            sub_1004BBB24((v53 > 1), v54 + 1, 1);
            v49 = v68;
          }

          ++v48;
          v49[2] = v54 + 1;
          v55 = &v49[2 * v54];
          v55[4] = v50;
          v55[5] = v52;
        }

        while (v47 != v48);

        v32 = v64;
        goto LABEL_33;
      }

      __break(1u);
LABEL_35:
      swift_once();
    }

    __break(1u);
  }

  else
  {

    v43 = v60;
    v44 = *(v59 + 8);
    v44(v24, v60);
    return (v44)(v19, v43);
  }

  return result;
}

uint64_t sub_1002362DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10076F13C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100016F40(0, &qword_1009471F0);
  *v9 = sub_10077068C();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = sub_10076F16C();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v28 = a2;
    if (qword_10093FB60 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = sub_10076FD4C();
  sub_10000A61C(v11, qword_10094E498);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100785C70;
  v32 = sub_10000A5D4(&qword_10094E538);
  v31[0] = &type metadata for GuidedSearchTokenPill;
  sub_10076F30C();
  sub_10000CFBC(v31, &unk_1009434C0);
  sub_10076F27C();
  v12 = *a1;
  v29 = *a1 >> 62;
  v27 = a1;
  if (v29)
  {
    v13 = sub_10077158C();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = &type metadata for Int;
  v31[0] = v13;
  sub_10076F30C();
  sub_10000CFBC(v31, &unk_1009434C0);
  sub_10076F27C();
  v32 = &type metadata for String;
  v31[0] = v28;
  v31[1] = a3;

  sub_10076F30C();
  sub_10000CFBC(v31, &unk_1009434C0);
  sub_10076FBCC();

  if (v29)
  {
    v14 = sub_10077158C();
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  if (v14 < 1)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    v25 = sub_10077158C();
    if ((v25 & 0x8000000000000000) == 0)
    {
LABEL_36:
      v20 = v25;
      return sub_10061BE9C(0, v20);
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v15 = 0;
  do
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = sub_10077149C();
    }

    else
    {
      v16 = *(v12 + 8 * v15 + 32);
    }

    v17 = v16;
    if (qword_10093FB58 != -1)
    {
      swift_once();
    }

    ++v15;
    v18 = sub_10000A5D4(&qword_10094E540);
    sub_10000A61C(v18, qword_10094E480);
    v30 = v17;
    swift_beginAccess();
    sub_10076E17C();
    swift_endAccess();
  }

  while (v14 != v15);
LABEL_17:
  v19 = v27;
  if (!v29 && (swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) != 0)
  {
    if (!(*v19 >> 62))
    {
      v20 = *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      return sub_10061BE9C(0, v20);
    }

    goto LABEL_33;
  }

  if (!(*v19 >> 62))
  {
    v22 = *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    goto LABEL_24;
  }

  v24 = sub_10077158C();
  v25 = sub_10077158C();
  if (v25 < 0)
  {
    goto LABEL_35;
  }

  v26 = sub_10077158C();
  if (v24 < 0 || (v22 = v24, v26 < v24))
  {
    __break(1u);
    goto LABEL_32;
  }

LABEL_24:
  v23 = sub_1004A01D4(0, v22);

  *v19 = v23;
  return result;
}

uint64_t sub_100236830()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100236868()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002368C8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100236914(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10023692C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_topSeparator;
  v2 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = objc_opt_self();
  v4 = [v3 separatorColor];
  [v2 setBackgroundColor:v4];

  *(v0 + v1) = v2;
  v5 = OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_title;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_pills) = _swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_bottomSeparator;
  v7 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = [v3 separatorColor];
  [v7 setBackgroundColor:v8];

  *(v0 + v6) = v7;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_guidedSearchResult) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_impressionsCalculator) = 0;
  v9 = (v0 + OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_impressionsUpdateBlock);
  *v9 = 0;
  v9[1] = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100236AD0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100236B10(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100236B7C()
{
  v0 = sub_10076D39C();
  sub_10000DB18(v0, qword_10099DC78);
  sub_10000A61C(v0, qword_10099DC78);
  return sub_10076D3AC();
}

uint64_t sub_100236BD0()
{
  sub_100016F40(0, &qword_100942F10);
  result = sub_100770D9C();
  qword_10099DC90 = result;
  return result;
}

uint64_t sub_100236C14()
{
  sub_100016F40(0, &qword_100942F10);
  result = sub_100770D5C();
  qword_10099DC98 = result;
  return result;
}

uint64_t sub_100236CDC()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_10099DCE8);
  sub_10000A61C(v4, qword_10099DCE8);
  if (qword_10093FB90 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_10099DCA0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100236EB0()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_10099DD00);
  sub_10000A61C(v4, qword_10099DD00);
  if (qword_10093FB98 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_10099DCB8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100237084()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_10099DD18);
  sub_10000A61C(v4, qword_10099DD18);
  if (qword_10093FBA0 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_10099DCD0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

id sub_100237258(uint64_t a1, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialTypeLabel];
  if (a2)
  {
    v5 = sub_10076FF6C();
  }

  else
  {
    v5 = 0;
  }

  [v4 setText:v5];

  [v4 setHidden:a2 == 0];
  v6 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_subtitleLabel];
  if ([v4 isHidden])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v6 setNumberOfLines:v7];

  return [v2 setNeedsLayout];
}

id sub_10023733C()
{
  v1 = sub_10076048C();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView____lazy_storage___editorialIcon;
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView____lazy_storage___editorialIcon];
  if (v7)
  {
    v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView____lazy_storage___editorialIcon];
  }

  else
  {
    (*(v2 + 104))(v5, enum case for SystemImage.appstore(_:), v1, v3);
    sub_100016F40(0, &qword_100942F00);
    if (qword_10093FB90 != -1)
    {
      swift_once();
    }

    v9 = sub_10076D3DC();
    sub_10000A61C(v9, qword_10099DCA0);
    v10 = [v0 traitCollection];
    v11 = v0;
    v12 = sub_100770B3C();

    v13 = [objc_opt_self() configurationWithFont:v12];
    v14 = sub_10076046C();

    (*(v2 + 8))(v5, v1);
    v15 = [objc_allocWithZone(UIImageView) initWithImage:v14];

    v16 = *&v11[v6];
    *&v11[v6] = v15;
    v8 = v15;

    v7 = 0;
  }

  v17 = v7;
  return v8;
}

void (*sub_100237564(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1002375B8;
}

void sub_1002375B8(id *a1, char a2)
{
  v4 = a1[1];
  v26 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_10023D684(&qword_100942810, 255, type metadata accessor for VideoView);
      v7 = v26;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_100016F40(0, &qword_1009441F0);
        v10 = v4;
        v11 = sub_100770EEC();

        if (v11)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            [v12 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v26;
    }

    swift_unknownObjectWeakAssign();
    v23 = swift_unknownObjectWeakLoadStrong();
    v24 = a1[1];
    if (v23)
    {
      v25 = v23;
      [a1[1] addSubview:v23];
    }

    [v24 setNeedsLayout];

    v22 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_10023D684(&qword_100942810, 255, type metadata accessor for VideoView);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_100016F40(0, &qword_1009441F0);
      v16 = v4;
      v17 = sub_100770EEC();

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
        goto LABEL_13;
      }

      v6 = v18;
      [v18 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v19 = swift_unknownObjectWeakLoadStrong();
  v20 = a1[1];
  if (v19)
  {
    v21 = v19;
    [v20 addSubview:v19];
  }

  [v20 setNeedsLayout];
  v22 = v26;
LABEL_21:
}

char *sub_100237874(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10076771C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v14 - 8);
  v16 = v46 - v15;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView____lazy_storage___editorialIcon] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_showEditorialIcon] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialArtworkView] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconArtworkView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconBackingView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_artworkGrid] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView] = 0;
  if (qword_10093FB90 != -1)
  {
    swift_once();
  }

  v17 = sub_10076D3DC();
  v18 = sub_10000A61C(v17, qword_10099DCA0);
  v19 = *(v17 - 8);
  v48 = *(v19 + 16);
  v48(v16, v18, v17);
  v47 = *(v19 + 56);
  v47(v16, 0, 1, v17);
  v20 = enum case for DirectionalTextAlignment.none(_:);
  v21 = *(v11 + 104);
  v46[1] = v11 + 104;
  v21(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v22 = sub_1007626BC();
  v23 = objc_allocWithZone(v22);
  v46[0] = v10;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialTypeLabel] = sub_1007626AC();
  if (qword_10093FB98 != -1)
  {
    swift_once();
  }

  v24 = sub_10000A61C(v17, qword_10099DCB8);
  v48(v16, v24, v17);
  v47(v16, 0, 1, v17);
  v21(v13, v20, v46[0]);
  v25 = objc_allocWithZone(v22);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_titleLabel] = sub_1007626AC();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_subtitleLabel] = sub_10076269C();
  v26 = type metadata accessor for EditorialSearchResultContentView();
  v49.receiver = v5;
  v49.super_class = v26;
  v27 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v32 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_subtitleLabel;
  v33 = qword_10093FBA0;
  v34 = *&v31[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_subtitleLabel];
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = sub_10000A61C(v17, qword_10099DCD0);
  v48(v16, v35, v17);
  v47(v16, 0, 1, v17);
  sub_1007625DC();

  [*&v31[v32] setLineBreakMode:4];
  v36 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialTypeLabel;
  [v31 addSubview:*&v31[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialTypeLabel]];
  v37 = sub_10023733C();
  [v31 addSubview:v37];

  [v31 addSubview:*&v31[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_titleLabel]];
  [v31 addSubview:*&v31[v32]];
  v38 = *&v31[v36];
  v39 = [v31 tintColor];
  [v38 setTextColor:v39];

  v40 = *&v31[v32];
  sub_100016F40(0, &qword_100942F10);
  v41 = v40;
  v42 = sub_100770D1C();
  [v41 setTextColor:v42];

  v43 = *&v31[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView____lazy_storage___editorialIcon];
  v44 = [v31 tintColor];

  [v43 setTintColor:v44];
  return v31;
}

void sub_100237ED0()
{
  v1 = v0;
  v152 = sub_10077164C();
  v144 = *(v152 - 8);
  __chkstk_darwin(v152);
  v151 = &v139 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3 = COERCE_DOUBLE(sub_10076D9AC());
  v146 = *(v3 - 8);
  __chkstk_darwin(v3);
  v153 = &v139 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&qword_100948208);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v141 = (&v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v155 = &v139 - v9;
  __chkstk_darwin(v10);
  v12 = (&v139 - v11);
  __chkstk_darwin(v13);
  v150 = (&v139 - v14);
  __chkstk_darwin(v15);
  v17 = &v139 - v16;
  v18 = type metadata accessor for EditorialSearchResultContentView();
  v163.receiver = v0;
  v163.super_class = v18;
  v157 = v18;
  objc_msgSendSuper2(&v163, "layoutSubviews");
  sub_10000A5D4(&qword_100948210);
  v19 = *(v6 + 72);
  v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v21 = swift_allocObject();
  v147 = v20;
  v148 = v21;
  v22 = v21 + v20;
  v23 = *(v5 + 48);
  v142 = v1;
  v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialTypeLabel];
  *(v21 + v20) = v24;
  v25 = qword_10093FBA8;
  v149 = v24;
  if (v25 != -1)
  {
    swift_once();
  }

  v26 = sub_10000A61C(v3, qword_10099DCE8);
  v159 = *(v146 + 16);
  (*&v159)(v22 + v23, v26, v3);
  *&v160 = *(v5 + 48);
  v27 = *&v142[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_titleLabel];
  *(v22 + v19) = v27;
  v28 = v5;
  v29 = qword_10093FBB0;
  v30 = v27;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = sub_10000A61C(v3, qword_10099DD00);
  (*&v159)(v22 + v19 + *&v160, v31, v3);
  v154 = v19;
  v32 = (v22 + 2 * v19);
  v156 = v28;
  v33 = *(v28 + 48);
  v34 = *&v142[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_subtitleLabel];
  *v32 = v34;
  v35 = qword_10093FBB8;
  v36 = v34;
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = sub_10000A61C(v3, qword_10099DD18);
  v160 = *&v3;
  (*&v159)(&v32[v33], v37, v3);
  *&v159 = v146 + 8;
  v38 = _swiftEmptyArrayStorage;
  v39 = 3;
  v145 = v22;
  v40 = v22;
  v41 = v154;
  do
  {
    sub_1000E96E4(v40, v17);
    sub_1000E96E4(v17, v12);
    v42 = *v12;
    v43 = *(v156 + 48);
    v44 = [*v12 isHidden];

    v158 = **&v159;
    (*&v158)(v12 + v43, *&v160);
    if (v44)
    {
      sub_10000CFBC(v17, &qword_100948208);
    }

    else
    {
      sub_1000E9754(v17, v155);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v162[0] = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1004BBBA8(0, v38[2] + 1, 1);
        v38 = v162[0];
      }

      v47 = v38[2];
      v46 = v38[3];
      if (v47 >= v46 >> 1)
      {
        sub_1004BBBA8(v46 > 1, v47 + 1, 1);
        v38 = v162[0];
      }

      v38[2] = v47 + 1;
      sub_1000E9754(v155, v147 + v38 + v47 * v41);
    }

    v40 += v41;
    --v39;
  }

  while (v39);
  swift_setDeallocating();
  v48 = v156;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v49 = v38[2];
  v50 = v142;
  if (v49)
  {
    v155 = *(v48 + 48);
    v51 = sub_100016F40(0, &qword_10094D040);
    v143 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView____lazy_storage___editorialIcon;
    v52 = v147 + v38;
    v147 = (v146 + 32);
    v148 = v51;
    v145 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_showEditorialIcon;
    v146 = *&v144 + 8;
    v53 = 0.0;
    v139 = v52;
    v140 = v49;
    v54 = *&v160;
    v55 = v153;
    do
    {
      v57 = v150;
      sub_1000E96E4(v52, v150);
      v58 = *v57;
      (*v147)(v55, v57 + v155, v54);
      v59 = v58;
      sub_10076422C();
      [v59 sizeThatFits:{v60, v61}];
      v63 = v62;
      v65 = v64;
      sub_10076422C();
      if (v63 >= v66)
      {
        v67 = v66;
      }

      else
      {
        v67 = v63;
      }

      v68 = [v50 traitCollection];
      v69 = v151;
      sub_10076D17C();
      sub_10076D97C();
      v71 = v70;

      (*v146)(v69, v152);
      sub_10076422C();
      v72 = v53 + CGRectGetMinY(v165);
      [v59 firstBaselineFromTop];
      v74 = v72 + v71 - v73;
      if ((sub_100770EEC() & 1) != 0 && v50[v145] == 1)
      {
        v75 = sub_10023733C();
        [v75 bounds];
        v77 = v76;
        v144 = v67;
        v79 = v78;

        sub_10076422C();
        MinX = CGRectGetMinX(v166);
        v81 = *&v50[v143];
        sub_10076422C();
        sub_100770A4C();
        [v81 setFrame:?];

        v167.origin.x = MinX;
        v167.origin.y = v65 * 0.5 + v74 - v79 * 0.5;
        v167.size.width = v77;
        v167.size.height = v79;
        CGRectGetMaxX(v167);
      }

      else
      {
        sub_10076422C();
        CGRectGetMinX(v164);
      }

      v56 = v154;
      sub_10076422C();
      sub_100770A4C();
      [v59 setFrame:?];

      v55 = v153;
      v54 = *&v160;
      (*&v158)(v153, *&v160);
      v53 = v53 + v71;
      v52 += v56;
      --v49;
    }

    while (v49);
    if (v140 > v38[2])
    {
      __break(1u);
      return;
    }

    v82 = v141;
    sub_1000E96E4(v139 + (v140 - 1) * v56, v141);

    v83 = *v82;
    v84 = *(v156 + 48);
    [*v82 frame];
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;

    v168.origin.x = v86;
    v168.origin.y = v88;
    v168.size.width = v90;
    v168.size.height = v92;
    MaxY = CGRectGetMaxY(v168);
    (*&v158)(v82 + v84, v54);
  }

  else
  {

    MaxY = 0.0;
    v54 = *&v160;
  }

  sub_10076422C();
  v94 = MaxY + CGRectGetMinY(v169);
  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v54, qword_1009A2350);
  v95 = [v50 traitCollection];
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_1007841E0;
  *(v96 + 32) = v95;
  v97 = v95;
  v98 = sub_10076DEEC();
  sub_10076D3EC();
  v100 = v99;

  v101 = v94 + v100;
  sub_10076422C();
  v102 = CGRectGetMinX(v170);
  sub_10076422C();
  v103 = CGRectGetMaxY(v171) - v101;
  if (qword_10093FB78 != -1)
  {
    swift_once();
  }

  v104 = sub_10076D39C();
  sub_10000A61C(v104, qword_10099DC78);
  sub_10076D35C();
  v106 = v105;
  sub_10076422C();
  Width = CGRectGetWidth(v172);
  sub_10076D36C();
  if (Width < v106)
  {
    v106 = Width;
    v103 = v108;
  }

  v109 = *&v50[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialArtworkView];
  if (v109)
  {
    v110 = v109;
    sub_10076422C();
    sub_100770A4C();
    sub_10075FC8C();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v112 = Strong;
    sub_10076422C();
    sub_100770A4C();
    [v112 setFrame:?];
  }

  v113 = *&v50[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_artworkGrid];
  if (v113)
  {
    v114 = v113;
    sub_10076422C();
    sub_100770A4C();
    v116 = v115;
    v118 = v117;
    v120 = v119;
    v122 = v121;
    v123 = type metadata accessor for ArtworkGrid();
    v161.receiver = v114;
    v161.super_class = v123;
    objc_msgSendSuper2(&v161, "setFrame:", v116, v118, v120, v122);
    sub_10070ED18();
    [v114 setNeedsLayout];
  }

  v124 = *&v50[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconArtworkView];
  if (v124)
  {
    v125 = *&v50[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconBackingView];
    if (v125)
    {
      v126 = v124;
      v127 = v125;
      [v127 setFrame:{v102, v101, v106, v103}];
      [v127 bounds];
      v129 = v128;
      v131 = v130;
      v133 = v132;
      v135 = v134;
      sub_10075FCFC();
      v159 = v102;
      v160 = v101;
      v173.origin.x = v129;
      v173.origin.y = v131;
      v173.size.width = v133;
      v173.size.height = v135;
      CGRectGetMidX(v173);
      v158 = v106;
      v174.origin.x = v129;
      v174.origin.y = v131;
      v174.size.width = v133;
      v174.size.height = v135;
      CGRectGetMidY(v174);
      sub_10076422C();
      v106 = v158;
      v102 = v159;
      v101 = v160;
      sub_100770A4C();
      sub_10075FC8C();

      v50 = v142;
    }
  }

  v136 = *&v50[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView];
  if (v136)
  {
    v137 = v136;
    sub_1004B67D8(v162);
    sub_1004B8E04(v50, v162, v106, v103);
    sub_10005AE58(v162);
    v175.origin.x = v102;
    v175.origin.y = v101;
    v175.size.width = v106;
    v175.size.height = v103;
    CGRectGetMinX(v175);
    v176.size.width = v106;
    v176.origin.x = v102;
    v176.origin.y = v101;
    v176.size.height = v103;
    CGRectGetMinY(v176);
    v138 = v137;
    sub_10076422C();
    sub_100770A4C();
    [v138 setFrame:?];
  }
}

id sub_100238D00()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialArtworkView;
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialArtworkView];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v1[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v2] = 0;

  [v1 setNeedsLayout];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10023D684(&qword_100942810, 255, type metadata accessor for VideoView);
    v7 = [v6 superview];
    if (!v7)
    {
LABEL_9:

      goto LABEL_10;
    }

    v8 = v7;
    sub_100016F40(0, &qword_1009441F0);
    v9 = v1;
    v10 = sub_100770EEC();

    if (v10)
    {
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v6 = v11;
        [v11 removeFromSuperview];
        goto LABEL_9;
      }
    }
  }

LABEL_10:
  swift_unknownObjectWeakAssign();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    [v1 addSubview:v12];
  }

  [v1 setNeedsLayout];
  sub_10023D130(0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_artworkGrid;
  v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_artworkGrid];
  if (v15)
  {
    [v15 removeFromSuperview];
    v16 = *&v1[v14];
  }

  else
  {
    v16 = 0;
  }

  *&v1[v14] = 0;

  [v1 setNeedsLayout];
  v17 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView;
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView];
  if (v18)
  {
    [v18 removeFromSuperview];
    v19 = *&v1[v17];
  }

  else
  {
    v19 = 0;
  }

  *&v1[v17] = 0;

  return [v1 setNeedsLayout];
}

void sub_100238F10(id a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for EditorialSearchResultContentView();
  objc_msgSendSuper2(&v16, "traitCollectionDidChange:", a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_11:
    v11 = sub_10023733C();
    sub_100016F40(0, &qword_100942F00);
    if (qword_10093FB90 != -1)
    {
      swift_once();
    }

    v12 = sub_10076D3DC();
    sub_10000A61C(v12, qword_10099DCA0);
    v13 = [v1 traitCollection];
    v14 = sub_100770B3C();

    v15 = [objc_opt_self() configurationWithFont:v14];
    [v11 setPreferredSymbolConfiguration:v15];

    return;
  }

  v5 = sub_10076FF9C();
  v7 = v6;
  if (v5 == sub_10076FF9C() && v7 == v8)
  {

    return;
  }

  v10 = sub_10077167C();

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }
}

uint64_t sub_1002391D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076361C();
  v183 = *(v3 - 8);
  __chkstk_darwin(v3);
  v182 = v175 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076BF6C();
  __chkstk_darwin(v5 - 8);
  v181 = v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_10076BEDC();
  v179 = *(v180 - 8);
  __chkstk_darwin(v180);
  v178 = v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v8 - 8);
  v194 = v175 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v193 = v175 - v11;
  v12 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v12 - 8);
  v192 = v175 - v13;
  v14 = sub_1007611EC();
  __chkstk_darwin(v14 - 8);
  v191 = v175 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v190 = v175 - v17;
  v18 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v18 - 8);
  v189 = v175 - v19;
  v188 = sub_10076121C();
  v187 = *(v188 - 8);
  __chkstk_darwin(v188);
  v186 = v175 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10076481C();
  v195 = *(v21 - 8);
  __chkstk_darwin(v21);
  v200 = v175 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_10076B96C();
  v209 = *(v214 - 8);
  __chkstk_darwin(v214);
  v213 = v175 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000A5D4(&qword_10094A430);
  __chkstk_darwin(v24 - 8);
  v198 = v175 - v25;
  v202 = sub_100761D4C();
  v201 = *(v202 - 8);
  __chkstk_darwin(v202);
  v184 = v175 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v197 = v175 - v28;
  v29 = sub_100767FDC();
  v211 = *(v29 - 8);
  v212 = v29;
  __chkstk_darwin(v29);
  v208 = v175 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v204 = v175 - v32;
  __chkstk_darwin(v33);
  v35 = v175 - v34;
  v207 = sub_10076D39C();
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v37 = v175 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10076DBBC();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = v175 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100765F5C();
  sub_10023D684(&qword_10095A440, 255, &type metadata accessor for EditorialSearchResult);
  result = sub_10076332C();
  if (!*&v216[0])
  {
    return result;
  }

  v177 = v21;
  v203 = *&v216[0];
  v176 = v3;
  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  v205 = *&v216[0];
  sub_100763EEC();
  v196 = a2;
  sub_10076F63C();
  v43 = *&v216[0];
  v44 = v210;
  if (*&v216[0])
  {
    *&v215 = v210;
    type metadata accessor for EditorialSearchResultContentView();
    sub_10023D684(&qword_10094E640, v45, type metadata accessor for EditorialSearchResultContentView);

    v46 = v44;
    sub_10077140C();
    sub_100763EDC();

    sub_100016C74(v216);
  }

  v199 = v43;
  v175[1] = type metadata accessor for EditorialSearchResultContentView();
  sub_10076422C();
  swift_getKeyPath();
  sub_10076338C();

  v47 = *&v216[0];
  if (qword_10093FB78 != -1)
  {
    goto LABEL_104;
  }

  while (1)
  {
    v48 = v207;
    v49 = sub_10000A61C(v207, qword_10099DC78);
    v206[2](v37, v49, v48);
    sub_10076DBCC();
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1007841E0;
    *(v50 + 32) = v47;
    v51 = v47;
    v52 = sub_10076DEEC();
    sub_10076D2AC();
    v54 = v53;
    v56 = v55;

    (*(v39 + 8))(v41, v38);
    v38 = v203;
    sub_100765F1C();
    v57 = (*(v211 + 88))(v35, v212);
    v58 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_showEditorialIcon;
    v185 = enum case for EditorialSearchResultType.appEventStory(_:);
    if (v57 == enum case for EditorialSearchResultType.category(_:) || v57 == enum case for EditorialSearchResultType.collection(_:) || v57 == enum case for EditorialSearchResultType.story(_:) || v57 == enum case for EditorialSearchResultType.appEventStory(_:))
    {
      v44[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_showEditorialIcon] = 1;
      v60 = sub_10023733C();
      [v60 setHidden:(v44[v58] & 1) == 0];

      [v44 setNeedsLayout];
    }

    else
    {
      v44[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_showEditorialIcon] = 0;
      v59 = sub_10023733C();
      [v59 setHidden:(v44[v58] & 1) == 0];

      [v44 setNeedsLayout];
      (*(v211 + 8))(v35, v212);
    }

    v61 = sub_100765ECC();
    sub_100237258(v61, v62);
    sub_100765F2C();
    v64 = v63;
    v65 = *&v44[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_titleLabel];
    v66 = v63 ? sub_10076FF6C() : 0;
    [v65 setText:v66];

    [v65 setHidden:v64 == 0];
    [v44 setNeedsLayout];
    sub_100765F3C();
    v68 = v67;
    v69 = *&v44[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_subtitleLabel];
    v70 = v67 ? sub_10076FF6C() : 0;
    [v69 setText:v70];

    [v69 setHidden:v68 == 0];
    [v44 setNeedsLayout];
    v71 = sub_100765EEC();
    if (!v71)
    {
      break;
    }

    v72 = v71;
    v73 = v198;
    sub_100765EBC();
    v74 = v201;
    v47 = v202;
    if ((*(v201 + 48))(v73, 1, v202) == 1)
    {

      sub_10000CFBC(v73, &qword_10094A430);
      break;
    }

    v94 = v197;
    (*(v74 + 32))(v197, v73, v47);
    v95 = v184;
    (*(v74 + 16))(v184, v94, v47);
    v96 = (*(v74 + 88))(v95, v47);
    if (v96 == enum case for ArtworkGridType.small(_:))
    {
      goto LABEL_32;
    }

    if (v96 == enum case for ArtworkGridType.large(_:))
    {
      v97 = 1;
    }

    else if (v96 == enum case for ArtworkGridType.extraLarge(_:))
    {
      v97 = 2;
    }

    else
    {
      if (v96 != enum case for ArtworkGridType.mixed(_:))
      {
        (*(v74 + 8))(v95, v47);
LABEL_32:
        v97 = 0;
        goto LABEL_50;
      }

      v97 = 3;
    }

LABEL_50:
    v110 = objc_allocWithZone(type metadata accessor for ArtworkGrid());
    v111 = sub_10070F0AC(v97, 0.0, 0.0, 0.0, 0.0);
    sub_1004470F8();
    v112 = v111[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_gridType];
    v113.f64[0] = v54;
    v114 = sub_10070E7C0(v112, v113, v56);
    v35 = *(v72 + 2);
    if (v114 < v35)
    {
      v115.f64[0] = v54;
      v116 = sub_10070E7C0(v112, v115, v56);
      if ((v116 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v35 >= v116)
      {
        if (v35 == v116)
        {
LABEL_67:
          v41 = v72;
        }

        else
        {
          v200 = v111;
          sub_1002349D8(v72, &v72[(*(v209 + 80) + 32) & ~*(v209 + 80)], 0, (2 * v116) | 1);
          v41 = v117;
LABEL_55:

          v44 = v210;
          v111 = v200;
        }

        *&v111[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_expectedNumberOfArtworkImages] = *(v41 + 2);
        sub_10070EEE8();
        if (v199)
        {
          v122 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v123 = swift_allocObject();
          v123[2] = v111;
          v123[3] = v122;
          v124 = v205;
          v123[4] = v205;
          v125 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v126 = swift_allocObject();
          v126[2] = v111;
          v126[3] = v125;
          v126[4] = v124;
          *&v216[0] = v44;
          sub_10023D684(&qword_10094E640, v127, type metadata accessor for EditorialSearchResultContentView);
          v128 = v44;
          v129 = v111;
          swift_retain_n();

          v130 = v128;
          v131 = v129;
          sub_10077140C();
          sub_100763EBC();

          sub_10000CFBC(&v215, &qword_100943310);
        }

        else
        {

          v217 = 0;
          memset(v216, 0, sizeof(v216));
        }

        v102 = v204;
        sub_10000CFBC(v216, &qword_100943310);
        v132 = v111;
        sub_10023D2F8(v111);

        (*(v201 + 8))(v197, v202);
        goto LABEL_72;
      }

      __break(1u);
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    if (v114 <= v35)
    {
      goto LABEL_67;
    }

    v207 = v114 - v35;
    if (v114 - v35 < 0)
    {
      goto LABEL_108;
    }

    if (v35)
    {
      v200 = v111;

      v41 = v72;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_60;
      }

      goto LABEL_110;
    }

LABEL_109:
    __break(1u);
LABEL_110:
    v41 = sub_10049DDF4(0, (v35 + 1), 1, v72);
LABEL_60:
    v118 = 0;
    v39 = (*(v209 + 80) + 32) & ~*(v209 + 80);
    v206 = &v72[v39];
    v44 = (v209 + 16);
    v37 = (v209 + 32);
    while (1)
    {
      v119 = v118 % v35;
      if (v118 % v35 < 0)
      {
        break;
      }

      if (v119 >= *(v72 + 2))
      {
        goto LABEL_103;
      }

      v47 = v72;
      v120 = *(v209 + 72);
      (*(v209 + 16))(v213, v206 + v120 * v119, v214);
      v38 = *(v41 + 2);
      v121 = *(v41 + 3);
      if (v38 >= v121 >> 1)
      {
        v41 = sub_10049DDF4(v121 > 1, v38 + 1, 1, v41);
      }

      ++v118;
      *(v41 + 2) = v38 + 1;
      (*v37)(&v41[v39 + v38 * v120], v213, v214);
      v72 = v47;
      if (v207 == v118)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    swift_once();
  }

  if (sub_100765EAC())
  {
    (*(v187 + 104))(v186, enum case for VideoFillMode.scaleAspectFill(_:), v188);
    sub_10076B84C();
    sub_10076BEFC();
    v75 = v189;
    sub_10076D3AC();

    (v206[7])(v75, 0, 1, v207);
    sub_10076B7EC();
    sub_10076B82C();
    sub_10076B7FC();
    sub_10076B7DC();
    sub_10076B83C();
    sub_1007647FC();
    sub_100762F0C();
    sub_10076F5CC();
    sub_10076B7CC();
    v76 = v192;
    sub_10076B85C();
    v77 = sub_10075DB7C();
    (*(*(v77 - 8) + 56))(v76, 0, 1, v77);
    v78 = v193;
    sub_10076B81C();
    v79 = v194;
    sub_10076B80C();
    v80 = type metadata accessor for VideoView();
    sub_10023D684(&qword_100942810, 255, type metadata accessor for VideoView);
    v214 = v80;
    v81 = sub_100762EEC();
    sub_10000CFBC(v79, &unk_10094C030);
    sub_10000CFBC(v78, &unk_10094C030);
    sub_10000CFBC(v76, &unk_1009435D0);
    sub_10000CFBC(v216, &qword_100943310);
    v82 = v210;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v84 = Strong;
      v85 = [Strong superview];
      if (!v85)
      {
        goto LABEL_26;
      }

      v86 = v85;
      sub_100016F40(0, &qword_1009441F0);
      v87 = v82;
      v88 = sub_100770EEC();

      if (v88)
      {
        v89 = swift_unknownObjectWeakLoadStrong();
        if (v89)
        {
          v84 = v89;
          [v89 removeFromSuperview];
LABEL_26:
        }
      }
    }

    swift_unknownObjectWeakAssign();
    v90 = swift_unknownObjectWeakLoadStrong();
    if (v90)
    {
      v91 = v90;
      [v82 addSubview:v90];
    }

    [v82 setNeedsLayout];

    v92 = swift_unknownObjectWeakLoadStrong();
    if (v92)
    {
      v93 = v92;
      sub_10076B84C();
      sub_10076BFCC();

      sub_10023D684(&unk_100942840, 255, type metadata accessor for VideoView);
      sub_100760B8C();

      (*(v195 + 8))(v200, v177);
    }

    else
    {
      (*(v195 + 8))(v200, v177);
    }

    v102 = v204;
  }

  else if (sub_100765EDC())
  {
    sub_10075FD2C();
    v98 = sub_10075FB2C();
    [v98 setContentMode:2];
    sub_10076BFBC();
    sub_10023D684(&qword_100941820, 255, &type metadata accessor for ArtworkView);
    sub_100760B8C();
    v99 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialArtworkView;
    v100 = v210;
    v101 = *&v210[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialArtworkView];
    v102 = v204;
    v103 = v98;
    if (v101)
    {
      [v101 removeFromSuperview];
      v104 = *&v100[v99];
    }

    else
    {
      v104 = 0;
    }

    *&v100[v99] = v98;
    v109 = v98;

    [v100 addSubview:v109];
    [v100 setNeedsLayout];
  }

  else
  {
    v105 = sub_100765E9C();
    v102 = v204;
    if (v105)
    {
      v106 = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      sub_10076BEFC();
      sub_10076D3AC();
      sub_10076D31C();
      (v206[1])(v37, v207);
      v107 = v178;
      sub_10076BEEC();
      sub_10076BE9C();
      (*(v179 + 8))(v107, v180);
      sub_10076BFCC();
      sub_10076BF7C();
      sub_10075FCCC();
      [v106 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10);
        sub_100770D5C();
      }

      sub_10075FB8C();
      sub_10023D684(&qword_100941820, 255, &type metadata accessor for ArtworkView);
      sub_100760B8C();
      v108 = v106;
      sub_10023D130(v106);
    }
  }

LABEL_72:
  sub_100765F1C();
  (*(v211 + 104))(v208, v185, v212);
  sub_10023D684(&qword_10094A440, 255, &type metadata accessor for EditorialSearchResultType);
  sub_10077018C();
  sub_10077018C();
  if (v216[0] == v215)
  {
    v133 = v212;
    v134 = *(v211 + 8);
    v134(v208, v212);
    v134(v102, v133);

LABEL_75:
    v139 = sub_100765F0C();
    if (v139 >> 62)
    {
      v140 = sub_10077158C();
    }

    else
    {
      v140 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v138 = v210;
    if (v140)
    {
      v141 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView;
      v142 = *&v210[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView];
      if (v142)
      {
        goto LABEL_79;
      }

      v152 = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v153 = *&v138[v141];
      if (v153)
      {
        [v153 removeFromSuperview];
        v154 = *&v138[v141];
      }

      else
      {
        v154 = 0;
      }

      *&v138[v141] = v152;
      v165 = v152;

      if (v165)
      {
        v166 = v165[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style];
        v165[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style] = 6;
        sub_1004B413C(v166);
        [v138 addSubview:v165];
      }

      [v138 setNeedsLayout];

      v167 = *&v138[v141];
      if (v167)
      {
        type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
        v168 = v167;
        sub_10076F63C();
        v169 = *&v216[0];
        v170 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
        v171 = *&v168[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
        v172 = v171;
        sub_1004B57F0(v169);
        v173 = *&v168[v170];
        *&v168[v170] = v169;
        v174 = v169;

        sub_1004B5954(v171);
        v142 = *&v138[v141];
        if (v142)
        {
LABEL_79:
          v143 = v142;
          [v138 bringSubviewToFront:v143];
          v144 = sub_100765F0C();
          sub_1004B1900(v144);
        }
      }
    }

    v145 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView;
    v146 = *&v138[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView];
    if (v146)
    {
      v147 = v146;
      v148 = sub_100765F4C();
      v149 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView;
      swift_beginAccess();
      v150 = *&v147[v149];
      if (v150)
      {
        v151 = v150;
        [v151 setBackgroundColor:v148];
      }

      else
      {

        v147 = v148;
      }

      v155 = *&v138[v145];
      if (v155)
      {
        v156 = v155;
        v157 = v182;
        sub_100765EFC();
        v158 = sub_1007635FC();
        (*(v183 + 8))(v157, v176);
        [v156 setOverrideUserInterfaceStyle:v158];
      }
    }

    v159 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialArtworkView;
    v160 = *&v138[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialArtworkView];
    if (v160)
    {
      v161 = v160;
      sub_1007638EC();

      v162 = *&v138[v159];
      if (v162)
      {
        v163 = v162;
        if (!sub_100765F4C())
        {
          v164 = [objc_opt_self() clearColor];
        }

        sub_1007638DC();
      }
    }
  }

  else
  {
    v135 = sub_10077167C();
    v136 = v212;
    v137 = *(v211 + 8);
    v137(v208, v212);
    v137(v102, v136);

    v138 = v210;
    if (v135)
    {
      goto LABEL_75;
    }
  }

  [v138 setNeedsLayout];
}

void sub_10023B0A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a3;
  v17 = sub_10076BEDC();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    swift_beginAccess();
    v10 = (a1 + 40);
    do
    {
      v11 = *v10;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;

        sub_10076BEEC();
        sub_10076BE9C();
        (*(v6 + 8))(v8, v17);
        sub_10076BFCC();
        v21 = 0;
        memset(v20, 0, sizeof(v20));
        v14 = swift_allocObject();
        *(v14 + 16) = a2;
        *(v14 + 24) = v11;
        v15 = a2;
        sub_100760B7C();

        sub_10000CFBC(v20, &qword_100943310);
      }

      v10 += 2;
      --v9;
    }

    while (v9);
  }
}

uint64_t sub_10023B2C8(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v4 = sub_10076BF6C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10076BEDC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v65 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_10076B96C();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v72 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076D39C();
  v69 = *(v9 - 8);
  v70 = v9;
  __chkstk_darwin(v9);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076DBBC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A570(a1, v75);
  sub_10000A5D4(&unk_100942830);
  sub_100765F5C();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v63 = v6;
  v64 = v5;
  v17 = v74;
  sub_100763EEC();
  sub_10076F63C();
  v66 = v2;
  v67 = *&v75[0];
  v18 = [v2 traitCollection];
  if (qword_10093FB78 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v19 = v70;
    v20 = sub_10000A61C(v70, qword_10099DC78);
    (*(v69 + 2))(v11, v20, v19);
    sub_10076DBCC();
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1007841E0;
    *(v21 + 32) = v18;
    v22 = v18;
    v23 = sub_10076DEEC();
    sub_10076D2AC();
    v25 = v24;
    v27 = v26;

    (*(v13 + 8))(v15, v12);
    v28 = sub_100765EEC();
    v30 = v66;
    if (!v28)
    {
      goto LABEL_11;
    }

    v13 = v28;
    v31 = *&v66[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_artworkGrid];
    if (!v31)
    {

LABEL_11:
      if (sub_100765EAC())
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v42 = Strong;
          sub_10076B84C();
          sub_10076BFCC();

          type metadata accessor for VideoView();
          v43 = &unk_100942840;
          v44 = type metadata accessor for VideoView;
LABEL_40:
          sub_10023D684(v43, 255, v44);
          sub_100760B8C();

          goto LABEL_41;
        }
      }

      if (sub_100765EDC())
      {
        v51 = *&v30[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialArtworkView];
        if (v51)
        {
          v52 = v51;
          [v52 setContentMode:2];
          sub_10076BFBC();
          sub_10075FD2C();
          sub_10023D684(&qword_100941820, 255, &type metadata accessor for ArtworkView);
          sub_100760B8C();

          goto LABEL_41;
        }
      }

      if (!sub_100765E9C())
      {
LABEL_42:
      }

      v61 = *&v30[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconArtworkView];
      if (v61)
      {
        v42 = v61;
        sub_10076BEFC();
        sub_10076D3AC();
        sub_10076D31C();
        (*(v69 + 1))(v11, v70);
        v62 = v65;
        sub_10076BEEC();
        sub_10076BE9C();
        (*(v63 + 8))(v62, v64);
        sub_10076BFCC();
        sub_10076BF7C();
        sub_10075FCCC();
        [v42 setContentMode:sub_10076BDBC()];
        sub_100764ADC();
        sub_10075FD0C();
        if (!sub_10076BE1C())
        {
          sub_100016F40(0, &qword_100942F10);
          sub_100770D5C();
        }

        sub_10075FB8C();
        sub_10075FD2C();
        v43 = &qword_100941820;
        v44 = &type metadata accessor for ArtworkView;
        goto LABEL_40;
      }

LABEL_41:

      goto LABEL_42;
    }

    v32 = v31[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_gridType];
    v29.f64[0] = v25;
    v33 = sub_10070E7C0(v32, v29, v27);
    v15 = *(v13 + 16);
    if (v33 < v15)
    {
      break;
    }

    v37 = v67;
    v36 = v68;
    if (v33 <= v15)
    {
      goto LABEL_25;
    }

    v70 = v33 - v15;
    if (v33 - v15 < 0)
    {
      goto LABEL_49;
    }

    if (v15)
    {
      v65 = v17;
      v64 = v31;
      v45 = v31;

      v39 = v13;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_18;
      }

      goto LABEL_51;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    v39 = sub_10049DDF4(0, v15 + 1, 1, v13);
LABEL_18:
    v46 = 0;
    v11 = ((*(v71 + 80) + 32) & ~*(v71 + 80));
    v69 = &v11[v13];
    v18 = (v71 + 16);
    v17 = (v71 + 32);
    while (1)
    {
      v47 = v46 % v15;
      if (v46 % v15 < 0)
      {
        break;
      }

      if (v47 >= *(v13 + 16))
      {
        goto LABEL_45;
      }

      v48 = *(v71 + 72);
      (*(v71 + 16))(v72, &v69[v48 * v47], v73);
      v12 = *(v39 + 16);
      v49 = *(v39 + 24);
      if (v12 >= v49 >> 1)
      {
        v39 = sub_10049DDF4(v49 > 1, v12 + 1, 1, v39);
      }

      ++v46;
      *(v39 + 16) = v12 + 1;
      (*v17)(&v11[v39 + v12 * v48], v72, v73);
      if (v70 == v46)
      {

        v37 = v67;
        v36 = v68;
        v30 = v66;
        v31 = v64;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

  v34.f64[0] = v25;
  v35 = sub_10070E7C0(v32, v34, v27);
  v37 = v67;
  v36 = v68;
  if ((v35 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_48;
  }

  if (v15 < v35)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v15 == v35)
  {
LABEL_25:
    v50 = v31;
    v39 = v13;
  }

  else
  {
    sub_1002349D8(v13, v13 + ((*(v71 + 80) + 32) & ~*(v71 + 80)), 0, (2 * v35) | 1);
    v39 = v38;
    v40 = v31;
  }

LABEL_30:
  *&v31[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_expectedNumberOfArtworkImages] = *(v39 + 16);
  sub_10070EEE8();
  if (v37)
  {
    v53 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v54 = swift_allocObject();
    v54[2] = v31;
    v54[3] = v53;
    v54[4] = v36;
    v55 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v56 = swift_allocObject();
    v56[2] = v31;
    v56[3] = v55;
    v56[4] = v36;
    *&v75[0] = v30;
    type metadata accessor for EditorialSearchResultContentView();
    sub_10023D684(&qword_10094E640, v57, type metadata accessor for EditorialSearchResultContentView);
    v58 = v31;
    swift_retain_n();
    v59 = v58;

    v60 = v30;
    sub_10077140C();
    sub_100763EBC();

    sub_10000CFBC(&v74, &qword_100943310);
  }

  else
  {

    v76 = 0;
    memset(v75, 0, sizeof(v75));
  }

  return sub_10000CFBC(v75, &qword_100943310);
}

id sub_10023BE34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorialSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10023BF78(void *a1)
{
  sub_10023CECC();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [v1 addSubview:Strong];
  }

  [v1 setNeedsLayout];
}

uint64_t (*sub_10023C004(uint64_t **a1))()
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
  v2[4] = sub_100237564(v2);
  return sub_100019A4C;
}

uint64_t sub_10023C078(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10023C0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10023C138(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_getWitnessTable();
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_10023C2F8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_10023D684(&qword_10094E630, a2, type metadata accessor for EditorialSearchResultContentView);
  result = sub_10023D684(&qword_10094E638, v3, type metadata accessor for EditorialSearchResultContentView);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10023C37C()
{
  v0 = sub_10077164C();
  v40 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076D9AC();
  v37 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076D3DC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v44 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076469C();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10076C38C();
  v38 = *(v10 - 8);
  v39 = v10;
  __chkstk_darwin(v10);
  v46 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100765F5C();
  sub_10023D684(&qword_10095A440, 255, &type metadata accessor for EditorialSearchResult);
  result = sub_10076332C();
  v45 = v47[0];
  if (v47[0])
  {
    sub_1007632FC();
    if (qword_100940540 != -1)
    {
      swift_once();
    }

    v36 = v0;

    sub_10076C32C();
    v35[2] = sub_100765ECC();
    v42 = v13;
    v35[0] = sub_100765F2C();
    v15 = v14;
    v35[1] = sub_100765F3C();
    v43 = v16;
    v17 = sub_100630CB4();
    sub_10076C2FC();
    sub_100770ACC();
    if (qword_10093FB98 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v6, qword_10099DCB8);
    if (qword_10093FBB0 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v3, qword_10099DD00);
    v41 = v15;
    if (v15)
    {
      v18 = sub_10076C04C();
      v48 = v18;
      v49 = sub_10023D684(&qword_100943230, 255, &type metadata accessor for Feature);
      v19 = sub_10000DB7C(v47);
      (*(*(v18 - 8) + 104))(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v18);
      sub_10076C90C();
      sub_10000CD74(v47);
      sub_10076991C();
      sub_10076D42C();
    }

    v20 = v43;
    v21 = v37;
    if (qword_10093FBA0 != -1)
    {
      swift_once();
    }

    v22 = sub_10000A61C(v6, qword_10099DCD0);
    (*(v7 + 16))(v44, v22, v6);
    if (qword_10093FBB8 != -1)
    {
      swift_once();
    }

    v23 = sub_10000A61C(v3, qword_10099DD18);
    (*(v21 + 16))(v5, v23, v3);
    if (v20)
    {
      v24 = sub_10076C04C();
      v48 = v24;
      v49 = sub_10023D684(&qword_100943230, 255, &type metadata accessor for Feature);
      v25 = sub_10000DB7C(v47);
      (*(*(v24 - 8) + 104))(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v24);
      sub_10076C90C();
      sub_10000CD74(v47);
      v26 = v44;
      sub_10076991C();
      sub_10076D42C();
      (*(v21 + 8))(v5, v3);
      (*(v7 + 8))(v26, v6);
    }

    else
    {
      (*(v21 + 8))(v5, v3);
      (*(v7 + 8))(v44, v6);
    }

    if (qword_10093FB90 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v6, qword_10099DCA0);
    v27 = v42;
    if (qword_10093FBA8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v3, qword_10099DCE8);
    if (v27)
    {
      v28 = sub_10076C04C();
      v48 = v28;
      v49 = sub_10023D684(&qword_100943230, 255, &type metadata accessor for Feature);
      v29 = sub_10000DB7C(v47);
      (*(*(v28 - 8) + 104))(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v28);
      sub_10076C90C();
      sub_10000CD74(v47);
      sub_10076991C();
      sub_10076D42C();
    }

    v30 = [v17 traitCollection];
    sub_10076D17C();
    sub_100016F40(0, &qword_100942F00);
    v31 = sub_100770B3C();
    sub_10076D97C();
    sub_100770B4C();

    v32 = *(v40 + 8);
    v33 = v36;
    v32(v2, v36);
    if (qword_1009411F0 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v3, qword_1009A2350);
    sub_10076D17C();
    sub_10076D40C();
    v32(v2, v33);
    if (qword_10093FB78 != -1)
    {
      swift_once();
    }

    v34 = sub_10076D39C();
    sub_10000A61C(v34, qword_10099DC78);
    sub_10076D35C();
    sub_10076D36C();
    swift_unknownObjectRelease();

    return (*(v38 + 8))(v46, v39);
  }

  return result;
}

void sub_10023CECC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_10023D684(&qword_100942810, 255, type metadata accessor for VideoView);
    v2 = [v7 superview];
    if (v2)
    {
      v3 = v2;
      sub_100016F40(0, &qword_1009441F0);
      v4 = v0;
      v5 = sub_100770EEC();

      if ((v5 & 1) == 0)
      {
        return;
      }

      v6 = swift_unknownObjectWeakLoadStrong();
      if (!v6)
      {
        return;
      }

      v7 = v6;
      [v6 removeFromSuperview];
    }
  }
}

id sub_10023D004(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconBackingView;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconBackingView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    v7 = v6;
    [v7 setClipsToBounds:1];
    if (qword_10093FB88 != -1)
    {
      swift_once();
    }

    [v7 setBackgroundColor:qword_10099DC98];

    [v1 addSubview:v7];
    v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconArtworkView];
    if (v8)
    {
      v9 = v8;
      [v1 addSubview:v9];
    }
  }

  return [v1 setNeedsLayout];
}

id sub_10023D130(void *a1)
{
  v2 = v1;
  v4 = sub_10075FEEC();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconArtworkView;
  v10 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconArtworkView];
  if (v10)
  {
    [v10 removeFromSuperview];
    v11 = *&v2[v9];
  }

  else
  {
    v11 = 0;
  }

  *&v2[v9] = a1;
  v12 = a1;

  if (a1)
  {
    sub_10076394C();
    (*(v5 + 104))(v8, enum case for CornerStyle.arc(_:), v4);
    v13 = sub_10076393C();
    sub_10023D004(v13);

    v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconBackingView];
    if (v14)
    {
      v15 = v14;
      [v15 addSubview:v12];
    }
  }

  else
  {
    v16 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconBackingView;
    v17 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconBackingView];
    if (v17)
    {
      [v17 removeFromSuperview];
      v18 = *&v2[v16];
    }

    else
    {
      v18 = 0;
    }

    *&v2[v16] = 0;

    [v2 setNeedsLayout];
  }

  return [v2 setNeedsLayout];
}

id sub_10023D2F8(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_artworkGrid;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_artworkGrid];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    v6[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_showBorder] = 1;
    [*&v6[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_imageBorderView] setHidden:0];
    v7 = v6;
    [v7 _setCornerRadius:20.0];
    [v7 setNeedsLayout];
    if (qword_10093FB80 != -1)
    {
      swift_once();
    }

    [v7 setBackgroundColor:qword_10099DC90];

    [v1 addSubview:v7];
  }

  return [v1 setNeedsLayout];
}

void sub_10023D434()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView____lazy_storage___editorialIcon) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_showEditorialIcon) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialArtworkView) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconBackingView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_artworkGrid) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10023D4F8()
{
  sub_100763EEC();
  sub_10076F63C();
  if (v6[0])
  {
    type metadata accessor for EditorialSearchResultContentView();
    sub_10023D684(&qword_10094E640, v1, type metadata accessor for EditorialSearchResultContentView);

    v2 = v0;
    sub_10077140C();
    sub_100763EDC();

    sub_100016C74(v6);
  }

  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_artworkGrid];
  if (v3)
  {
    v4 = v3;
    sub_1004470F8();
  }
}

uint64_t sub_10023D600()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10023D648()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10023D684(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10023D728(uint64_t a1)
{
  v2 = sub_10076C38C();
  v55 = *(v2 - 8);
  __chkstk_darwin(v2);
  v54 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076B66C();
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v51 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10000A5D4(&unk_100946720);
  v6 = *(v49 - 8);
  __chkstk_darwin(v49);
  v8 = &v42 - v7;
  v9 = sub_1007658FC();
  v47 = *(v9 - 8);
  v48 = v9;
  __chkstk_darwin(v9);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  v17 = sub_10076D39C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v50 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v56 = &v42 - v21;
  sub_100762A6C();
  sub_10023DE9C(&qword_100945AD0, &type metadata accessor for ProductMediaItem);
  result = sub_10076332C();
  if (v57)
  {
    v44 = a1;
    if (sub_100762A4C())
    {
      sub_10076BEFC();
      sub_10076D3AC();

      v23 = *(v18 + 56);
      v23(v13, 0, 1, v17);
      (*(v18 + 32))(v16, v13, v17);
      v23(v16, 0, 1, v17);
      v24 = (*(v18 + 48))(v16, 1, v17);
    }

    else
    {
      v43 = v6;
      v45 = v2;
      v25 = *(v18 + 56);
      v26 = 1;
      v25(v13, 1, 1, v17);
      if (sub_100762A5C())
      {
        sub_10076B84C();

        sub_10076BEFC();
        sub_10076D3AC();

        v26 = 0;
      }

      v25(v16, v26, 1, v17);
      v27 = *(v18 + 48);
      if (v27(v13, 1, v17) != 1)
      {
        sub_10023DEE4(v13);
      }

      v2 = v45;
      v6 = v43;
      v24 = v27(v16, 1, v17);
    }

    if (v24 == 1)
    {

      return sub_10023DEE4(v16);
    }

    v45 = v2;
    (*(v18 + 32))(v56, v16, v17);
    swift_getKeyPath();
    sub_10076338C();

    swift_getKeyPath();
    v28 = v51;
    v29 = v49;
    sub_10076F49C();

    (*(v6 + 8))(v8, v29);
    v31 = v52;
    v30 = v53;
    if ((*(v52 + 88))(v28, v53) == enum case for Shelf.ContentsMetadata.productMedia(_:))
    {
      (*(v31 + 96))(v28, v30);
      v32 = v46;
      v33 = v47;
      v34 = v28;
      v35 = v48;
      (*(v47 + 32))(v46, v34, v48);
      v36 = sub_10076589C();
      (*(v33 + 8))(v32, v35);
      v37 = v50;
      v38 = v56;
      v39 = v45;
      if ((v36 & 1) != 0 && (sub_10076D2EC() & 1) == 0)
      {
        sub_10076D32C();
LABEL_18:
        swift_getKeyPath();
        v40 = v54;
        sub_10076338C();

        sub_10076C22C();
        (*(v55 + 8))(v40, v39);
        sub_10076D36C();

        v41 = *(v18 + 8);
        v41(v37, v17);
        return (v41)(v38, v17);
      }
    }

    else
    {
      (*(v31 + 8))(v28, v30);
      v37 = v50;
      v38 = v56;
      v39 = v45;
    }

    (*(v18 + 16))(v37, v38, v17);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_10023DE9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10023DEE4(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_1009467E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

UIColor sub_10023DF58()
{
  sub_1000325F0();
  v0 = [objc_allocWithZone(UIColor) initWithRed:0.929411765 green:0.964705882 blue:1.0 alpha:1.0];
  v1.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.11372549 green:0.137254902 blue:0.176470588 alpha:1.0];
  v2.super.isa = v0;
  result.super.isa = sub_100770DEC(v2, v1).super.isa;
  qword_10099DD30 = result.super.isa;
  return result;
}

UIColor sub_10023DFFC()
{
  sub_1000325F0();
  v0 = objc_opt_self();
  v1 = [v0 systemBlueColor];
  v2 = [v1 colorWithAlphaComponent:0.07];

  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.05];

  v5.super.isa = v2;
  v6.super.isa = v4;
  result.super.isa = sub_100770DEC(v5, v6).super.isa;
  qword_10099DD38 = result.super.isa;
  return result;
}

uint64_t sub_10023E0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10076182C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076E4AC();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a2, v6, v12);
  v15 = (*(v7 + 88))(v9, v6);
  if (v15 != enum case for ItemBackground.ad(_:))
  {
    if (v15 != enum case for ItemBackground.insetAd(_:))
    {
      if (v15 == enum case for ItemBackground.clearAdWithSeparator(_:))
      {
        (*(v11 + 56))(a3, 1, 1, v10);
        return (*(v7 + 8))(v9, v6);
      }

      goto LABEL_12;
    }

LABEL_5:
    (*(v7 + 8))(v9, v6);
    sub_10076E49C();
    if (qword_10093FBC0 != -1)
    {
      swift_once();
    }

    v17 = qword_10099DD30;
    sub_10076E46C();
    sub_10076E46C();
    if (qword_10093FBC8 != -1)
    {
      swift_once();
    }

    v18 = qword_10099DD38;
    sub_10076E42C();
    sub_10076E43C();
    sub_10076E44C();
    goto LABEL_15;
  }

  sub_10076C21C();
  if (v16 > 1.0)
  {
    goto LABEL_5;
  }

LABEL_12:
  sub_10076E49C();
  if (qword_10093FBC0 != -1)
  {
    swift_once();
  }

  v20 = qword_10099DD30;
  sub_10076E46C();
  (*(v7 + 8))(v9, v6);
LABEL_15:
  sub_10023E590(a1, a2);
  sub_10076E47C();
  (*(v11 + 32))(a3, v14, v10);
  return (*(v11 + 56))(a3, 0, 1, v10);
}

uint64_t sub_10023E464()
{
  sub_10076E49C();
  if (qword_10093FBC0 != -1)
  {
    swift_once();
  }

  v0 = qword_10099DD30;
  sub_10076E46C();
  sub_10076E46C();
  if (qword_10093FBC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10099DD38;
  sub_10076E42C();
  sub_10076E43C();
  sub_10076E44C();
  return sub_10076E47C();
}

double sub_10023E590(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076182C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076C21C();
  if (v7 <= 1.0)
  {
    (*(v4 + 16))(v6, a2, v3);
    if ((*(v4 + 88))(v6, v3) == enum case for ItemBackground.insetAd(_:))
    {
      return -10.0;
    }

    else
    {
      sub_10076C23C();
      v9 = v10 * -0.5;
      sub_10076C2EC();
      sub_10076C23C();
      sub_10076C2EC();
      (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    sub_10076C23C();
    v9 = v8 * -0.5;
    sub_10076C2BC();
    sub_10076C23C();
    sub_10076C2BC();
  }

  return v9;
}

char *sub_10023E738(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_100766FCC();
  __chkstk_darwin(v9 - 8);
  v45 = sub_10076702C();
  v10 = *(v45 - 8);
  __chkstk_darwin(v45);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100766F4C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_lockupCollectionView;
  v17 = type metadata accessor for CarouselItemLockupCollectionView();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_artworkViews] = _swiftEmptyArrayStorage;
  v19 = OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  v20 = sub_10000A5D4(&unk_10094B8B0);
  (*(*(v20 - 8) + 56))(&v18[v19], 1, 1, v20);
  *&v18[OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_numberOfArtworks] = 0;
  *&v18[OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_minNumberOfArtworks] = 2;
  *&v18[OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_maxNumberOfArtworks] = 5;
  v49.receiver = v18;
  v49.super_class = v17;
  v21 = objc_msgSendSuper2(&v49, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v25 = v44;
  *&v4[v44] = v21;
  (*(v14 + 104))(v16, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v13);
  (*(v10 + 104))(v12, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v45);
  sub_100766FBC();
  sub_100766F5C();
  v26 = &v4[OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_selectionHandler];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = *&v4[v25];
  v28 = objc_allocWithZone(UIVisualEffect);
  v29 = v27;
  v30 = [v28 init];
  v31 = type metadata accessor for VisualEffectContainerView();
  v32 = objc_allocWithZone(v31);
  *&v32[OBJC_IVAR____TtC20ProductPageExtension25VisualEffectContainerView_embeddedView] = v29;
  v48.receiver = v32;
  v48.super_class = v31;
  v33 = v29;
  v34 = objc_msgSendSuper2(&v48, "initWithEffect:", v30);
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v35 = [v34 contentView];
  [v35 addSubview:v33];

  *&v4[OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_materialbackground] = v34;
  v47.receiver = v4;
  v47.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  [v36 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v36 setOverrideUserInterfaceStyle:2];
  [v36 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v37 = [*&v36[OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_lockupCollectionView] layer];
  [v37 setAllowsGroupBlending:0];

  v38 = OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_materialbackground;
  v39 = *&v36[OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_materialbackground];
  sub_1003E4478(20.0);

  v40 = [*&v36[v38] contentView];
  v41 = [v40 layer];

  [v41 setAllowsGroupBlending:0];
  [v36 addSubview:*&v36[v38]];

  return v36;
}

uint64_t sub_10023ECD4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D58C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v18[-1] - v9;
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "layoutSubviews", v8);
  *(swift_allocObject() + 16) = v1;
  v11 = v1;
  sub_10076D55C();
  v12 = *&v11[OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_materialbackground];
  v18[3] = type metadata accessor for VisualEffectContainerView();
  v18[4] = sub_10023FED4(&unk_10094E6A0, type metadata accessor for VisualEffectContainerView);
  v18[0] = v12;
  v13 = v12;
  sub_10076D57C();
  v14 = *(v4 + 8);
  v14(v6, v3);
  sub_10000CD74(v18);
  sub_10076422C();
  v15 = [v11 traitCollection];
  sub_10076E0EC();

  return (v14)(v10, v3);
}

uint64_t sub_10023EF70(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v19 = sub_10076D54C();
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10076702C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076703C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_displayOptions;
  swift_beginAccess();
  (*(v11 + 16))(v13, a2 + v14, v10);
  sub_100766FEC();
  (*(v11 + 8))(v13, v10);
  result = (*(v7 + 88))(v9, v6);
  if (result == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:))
  {
    v5[3] = sub_10076D67C();
    v5[4] = &protocol witness table for ZeroDimension;
    sub_10000DB7C(v5);
    sub_10076D66C();
    (*(v3 + 104))(v5, enum case for DisjointStack.EdgePosition.anchored(_:), v19);
    return sub_10076D50C();
  }

  else
  {
    v16 = v3;
    v17 = v19;
    if (result != enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.center(_:))
    {
      if (result == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.trailing(_:))
      {
        v5[3] = sub_10076D67C();
        v5[4] = &protocol witness table for ZeroDimension;
        sub_10000DB7C(v5);
        sub_10076D66C();
        (*(v16 + 104))(v5, enum case for DisjointStack.EdgePosition.anchored(_:), v17);
        return sub_10076D51C();
      }

      else
      {
        return (*(v7 + 8))(v9, v6);
      }
    }
  }

  return result;
}

double sub_10023F2A8(double a1, double a2)
{
  v5 = sub_10076D58C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19[-1] - v10;
  *(swift_allocObject() + 16) = v2;
  v12 = v2;
  sub_10076D55C();
  v13 = *&v12[OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_materialbackground];
  v19[3] = type metadata accessor for VisualEffectContainerView();
  v19[4] = sub_10023FED4(&unk_10094E6A0, type metadata accessor for VisualEffectContainerView);
  v19[0] = v13;
  v14 = v13;
  sub_10076D57C();
  v15 = *(v6 + 8);
  v15(v8, v5);
  sub_10000CD74(v19);
  v16 = sub_10023F754(v11, v12, a1, a2);
  v15(v11, v5);
  return v16;
}

uint64_t type metadata accessor for CarouselItemModulePlatterView()
{
  result = qword_10094E690;
  if (!qword_10094E690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10023F5E8()
{
  result = sub_10076703C();
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

uint64_t sub_10023F690(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_selectionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_selectionHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000167E0(v4);
}

uint64_t sub_10023F6B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076705C();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_1005A28C4(v4, a2);
}

double sub_10023F754(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = sub_10076DFEC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v41[-v13];
  __chkstk_darwin(v15);
  v17 = &v41[-v16];
  __chkstk_darwin(v18);
  v20 = &v41[-v19];
  v21 = sub_10076D58C();
  v47[3] = v21;
  v47[4] = &protocol witness table for DisjointStack;
  v22 = sub_10000DB7C(v47);
  (*(*(v21 - 8) + 16))(v22, a1, v21);
  v23 = sub_10010F998(a3, a4);
  v24 = [a2 traitCollection];
  v25 = [v24 horizontalSizeClass];

  if (v25 == 2)
  {
    v26 = 635.0;
  }

  else
  {
    v26 = a3;
  }

  if (v26 <= v23)
  {
    sub_10000A570(v47, v43);
    *(v20 + 3) = &type metadata for CGFloat;
    *(v20 + 4) = &protocol witness table for CGFloat;
    *v20 = v26;
    v35 = *(v9 + 104);
    v35(v20, enum case for Resize.Rule.replaced(_:), v8);
    v36 = enum case for Resize.Rule.unchanged(_:);
    v35(v17, enum case for Resize.Rule.unchanged(_:), v8);
    v35(v14, v36, v8);
    v35(v11, v36, v8);
    v45 = sub_10076DFFC();
    v46 = &protocol witness table for Resize;
    sub_10000DB7C(v44);
    sub_10076E00C();
  }

  else
  {
    sub_10076DACC();
    v28 = v27;
    v30 = v29;
    sub_10000A570(v47, v43);
    sub_10076DACC();
    v32 = v31;
    v34 = v33;
    v45 = sub_10076E0CC();
    v46 = &protocol witness table for Constrain;
    sub_10000DB7C(v44);
    v42 = v32 & 1;
    v41[0] = v34 & 1;
    sub_10076E0DC();
    v43[0] = v28 & 1;
    v42 = v30 & 1;
    sub_10076DAEC();
  }

  sub_10000CF78(v44, v45);
  v37 = [a2 traitCollection];
  sub_10076E0FC();
  v39 = v38;

  sub_10000CD74(v44);
  sub_10000CD74(v47);
  return v39;
}

id sub_10023FB60()
{
  v1 = v0;
  v2 = sub_10076703C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_lockupCollectionView];
  v7 = sub_10076705C();
  if (v7)
  {
    if (v7 >> 62)
    {
      v8 = sub_10077158C();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_numberOfArtworks;
    v10 = *&v6[OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_numberOfArtworks];
    *&v6[OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_numberOfArtworks] = v8;
    if (v8 != v10)
    {
      if (v8 > 5)
      {
        *&v6[v9] = 5;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v11 = *&v6[OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_numberOfArtworks];
    *&v6[OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_numberOfArtworks] = 0;
    if (v11)
    {
LABEL_8:
      sub_1005A2F84();
      [v6 setNeedsLayout];
    }
  }

  sub_10076704C();
  v12 = OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_displayOptions;
  swift_beginAccess();
  (*(v3 + 40))(&v1[v12], v5, v2);
  swift_endAccess();
  return [v1 setNeedsLayout];
}

uint64_t sub_10023FD28()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_lockupCollectionView);
  v2 = OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_artworkViews;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_10077149C();
      }

      else
      {
        if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_10075FD2C();
      sub_10023FED4(&qword_100941820, &type metadata accessor for ArtworkView);
      sub_100760BFC();

      if (v8 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

uint64_t sub_10023FE94()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10023FED4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10023FF1C()
{
  v1 = sub_100766FCC();
  __chkstk_darwin(v1 - 8);
  v16 = sub_10076702C();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100766F4C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_lockupCollectionView;
  v9 = type metadata accessor for CarouselItemLockupCollectionView();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_artworkViews] = _swiftEmptyArrayStorage;
  v11 = OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  v12 = sub_10000A5D4(&unk_10094B8B0);
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  *&v10[OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_numberOfArtworks] = 0;
  *&v10[OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_minNumberOfArtworks] = 2;
  *&v10[OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_maxNumberOfArtworks] = 5;
  v17.receiver = v10;
  v17.super_class = v9;
  v13 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  *(v0 + v15) = v13;
  (*(v6 + 104))(v8, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v5);
  (*(v2 + 104))(v4, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v16);
  sub_100766FBC();
  sub_100766F5C();
  v14 = (v0 + OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_selectionHandler);
  *v14 = 0;
  v14[1] = 0;
  sub_10077156C();
  __break(1u);
}

unint64_t sub_100240254(uint64_t a1, char a2)
{
  *(v2 + qword_100952DA8) = a2 & 1;
  sub_10033E3F8();
  sub_10076D9DC();
  v46 = v2;
  v3 = *(v2 + qword_100952D80);
  sub_10076C0AC();
  v5 = v4;
  v6 = objc_allocWithZone(NSNumber);
  LODWORD(v7) = v5;
  v47.value.super.super.isa = [v6 initWithFloat:v7];
  isa = v47.value.super.super.isa;
  v47.is_nil = 1;
  sub_10076858C(v47, v9);
  v11 = v10;

  if (!v11)
  {
    sub_10076C0AC();
    sub_10077037C();
  }

  sub_10000A5D4(&unk_10094E7E0);
  inited = swift_initStackObject();
  *(inited + 32) = NSKernAttributeName;
  *(inited + 16) = xmmword_100783DD0;
  *(inited + 64) = &type metadata for CGFloat;
  *(inited + 40) = 0xC010000000000000;
  v13 = NSKernAttributeName;
  sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_1001E4F90(inited + 32);
  v14 = objc_allocWithZone(NSAttributedString);
  v15 = sub_10076FF6C();

  type metadata accessor for Key(0);
  sub_1001E4F38();
  v16 = sub_10076FE3C().super.isa;

  v17 = [v14 initWithString:v15 attributes:v16];

  [v3 setAttributedText:v17];
  sub_10076C0AC();
  sub_100062020(v18);
  v19 = *(v46 + qword_100952D98);
  v20 = sub_10076C08C();
  v48._object = 0x80000001007D1550;
  v48._countAndFlagsBits = 0xD000000000000013;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  sub_100767D6C(v48, v20, v49);
  v21 = sub_10076FF6C();

  [v19 setText:v21];

  result = sub_10076C09C();
  if (!result)
  {
    goto LABEL_30;
  }

  v23 = result;
  v24 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    goto LABEL_26;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) != 5)
  {
    goto LABEL_29;
  }

  v45 = 5;
  while (2)
  {
    v25 = 4;
    v26 = qword_100952DA0;
    while (1)
    {
      v29 = v25 - 4;
      if ((v23 & 0xC000000000000001) != 0)
      {
        v30 = sub_10077149C();
      }

      else
      {
        if (v29 >= *(v24 + 16))
        {
          goto LABEL_24;
        }

        v30 = *(v23 + 8 * v25);
      }

      v31 = v30;
      v32 = v25 - 3;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v33 = *(v46 + v26);
      [v30 floatValue];
      v35 = v34;
      v36 = sub_10076C08C();
      v37 = OBJC_IVAR____TtC20ProductPageExtension27ProductRatingsHistogramView_barViews;
      v38 = *(v33 + OBJC_IVAR____TtC20ProductPageExtension27ProductRatingsHistogramView_barViews);
      if (v38 >> 62)
      {
        if (v29 >= sub_10077158C())
        {
          goto LABEL_10;
        }
      }

      else if (v29 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_10;
      }

      v39 = *(v33 + v37);
      if ((v39 & 0xC000000000000001) != 0)
      {
        v27 = sub_10077149C();
      }

      else
      {
        if (v29 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v27 = *(v39 + 8 * v25);
      }

      v28 = v27;
      *&v27[OBJC_IVAR____TtC20ProductPageExtensionP33_95941BD34515C691DC8D8E2915DD56D934ProductRatingsHistogramProgressBar_progress] = v35 / v36;
      [v27 setNeedsLayout];

LABEL_10:
      ++v25;
      if (v32 == v45)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    if (sub_10077158C() == 5)
    {
      v45 = sub_10077158C();
      if (!v45)
      {
LABEL_28:

        return sub_10076D9DC();
      }

      continue;
    }

    break;
  }

LABEL_29:

LABEL_30:
  v40 = *(*(v46 + qword_100952DA0) + OBJC_IVAR____TtC20ProductPageExtension27ProductRatingsHistogramView_barViews);
  if (v40 >> 62)
  {
    result = sub_10077158C();
    v41 = result;
    if (!result)
    {
      return sub_10076D9DC();
    }

LABEL_32:
    if (v41 >= 1)
    {
      v42 = 0;
      do
      {
        if ((v40 & 0xC000000000000001) != 0)
        {
          v43 = sub_10077149C();
        }

        else
        {
          v43 = *(v40 + 8 * v42 + 32);
        }

        v44 = v43;
        ++v42;
        *&v43[OBJC_IVAR____TtC20ProductPageExtensionP33_95941BD34515C691DC8D8E2915DD56D934ProductRatingsHistogramProgressBar_progress] = 0;
        [v43 setNeedsLayout];
      }

      while (v41 != v42);
      return sub_10076D9DC();
    }

    __break(1u);
  }

  else
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v41)
    {
      goto LABEL_32;
    }

    return sub_10076D9DC();
  }

  return result;
}

void sub_100240728(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100243C28(&qword_100942810, type metadata accessor for VideoView);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView];
    sub_100016F40(0, &qword_1009441F0);
    v8 = v7;
    v9 = sub_100770EEC();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

id sub_1002409BC()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_longPressGestureRecognizer] removeTarget:v0 action:0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for AppEventView()
{
  result = qword_10094E6F0;
  if (!qword_10094E6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_100240B5C(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100240BC0;
}

void sub_100240BC0(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_10015ADA4();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_artworkView]];
      [v2 setNeedsLayout];
    }

    v7 = v3;
  }

  else
  {
    v7 = *a1;
    sub_10015ADA4();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      goto LABEL_8;
    }

    v3 = v6;
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView] insertSubview:v6 aboveSubview:*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_100240CE8()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  sub_10076422C();
  if (!CGRectIsEmpty(v17))
  {
    v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_formattedDateView];
    sub_10076422C();
    v3 = v2;
    v5 = v4;
    sub_1004B67D8(v15);
    sub_1004B8E04(v0, v15, v3, v5);
    sub_10005AE58(v15);
    sub_10076422C();
    CGRectGetMinX(v18);
    sub_10076422C();
    CGRectGetMinY(v19);
    sub_10076422C();
    sub_100770A4C();
    [v1 setFrame:?];
    v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView];
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_100016F40(0, &qword_1009441F0);
      v9 = v0;
      v10 = sub_100770EEC();

      if (v10)
      {
        [v1 frame];
        MaxY = CGRectGetMaxY(v20);
        sub_10076422C();
        v12 = CGRectGetHeight(v21) - MaxY;
        sub_10076422C();
        [v6 setBounds:{0.0, 0.0, CGRectGetWidth(v22), v12}];
        [v1 frame];
        v13 = CGRectGetMaxY(v23);
        sub_10076422C();
        v14 = CGRectGetHeight(v24) - v13;
        [v9 bounds];
        [v6 setCenter:{CGRectGetWidth(v25) * 0.5, v13 + v14 * 0.5}];
      }
    }
  }
}

void sub_100241090(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v4 - 8);
  v6 = v60 - v5;
  v7 = sub_10000A5D4(&qword_100952650);
  __chkstk_darwin(v7 - 8);
  v9 = v60 - v8;
  v10 = sub_10000A5D4(&qword_100955BD0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v60 - v12;
  sub_100016F40(0, &qword_10094D040);
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_longPressGestureRecognizer];
  if ((sub_100770EEC() & 1) == 0)
  {
    return;
  }

  v61 = *&v1[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView];
  v15 = [v61 superview];
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v17 = sub_100016F40(0, &qword_1009441F0);
  v18 = v2;
  v60[1] = v17;
  LOBYTE(v17) = sub_100770EEC();

  if ((v17 & 1) == 0)
  {
    return;
  }

  v19 = [a1 state];
  if (v19 > 3)
  {
    if ((v19 - 4) >= 2)
    {
      return;
    }

    v23 = [v61 superview];
    if (!v23)
    {
      return;
    }

    v24 = v23;
    v25 = v18;
    v26 = sub_100770EEC();

    if ((v26 & 1) == 0)
    {
      return;
    }

    v27 = objc_opt_self();
    v28 = swift_allocObject();
    *(v28 + 16) = v25;
    *(v28 + 24) = 0x3FF0000000000000;
    v67 = sub_100244044;
    v68 = v28;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v65 = sub_10009AEDC;
    v66 = &unk_10088DF10;
    v29 = _Block_copy(&aBlock);
    v30 = v25;

    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = v30;
    v67 = sub_10024405C;
    v68 = v31;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v32 = &unk_10088DF60;
LABEL_30:
    v65 = sub_1000513F0;
    v66 = v32;
    v58 = _Block_copy(&aBlock);
    v59 = v30;

    [v27 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v29 options:v58 animations:0.0 completion:1.0];
    _Block_release(v58);
    _Block_release(v29);
    return;
  }

  if (v19 == 1)
  {
    v33 = v61;
    [a1 locationInView:v61];
    v34 = v18 + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_initialLongPressLocation;
    *v34 = v35;
    *(v34 + 1) = v36;
    v34[16] = 0;
    v37 = [v33 superview];
    if (!v37)
    {
      return;
    }

    v38 = v37;
    v39 = v18;
    v40 = sub_100770EEC();

    if ((v40 & 1) == 0)
    {
      return;
    }

    v27 = objc_opt_self();
    v41 = swift_allocObject();
    *(v41 + 16) = v39;
    *(v41 + 24) = 0x3FEEB851EB851EB8;
    v67 = sub_100244044;
    v68 = v41;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v65 = sub_10009AEDC;
    v66 = &unk_10088DFB0;
    v29 = _Block_copy(&aBlock);
    v30 = v39;

    v42 = swift_allocObject();
    *(v42 + 16) = 1;
    *(v42 + 24) = v30;
    v67 = sub_10024405C;
    v68 = v42;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v32 = &unk_10088E000;
    goto LABEL_30;
  }

  if (v19 == 2)
  {
    [a1 locationInView:v61];
    v45 = (v18 + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_initialLongPressLocation);
    if (*(v18 + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_initialLongPressLocation + 16))
    {
      *v45 = v43;
      v45[1] = v44;
      *(v45 + 16) = 0;
    }

    else
    {
      v46 = sqrt((v44 - v45[1]) * (v44 - v45[1]) + (v43 - *v45) * (v43 - *v45));
      [v14 allowableMovement];
      if (v47 < v46)
      {

        [a1 setEnabled:0];
      }
    }

    return;
  }

  if (v19 != 3)
  {
    return;
  }

  v20 = OBJC_IVAR____TtC20ProductPageExtension12AppEventView_clickAction;
  swift_beginAccess();
  sub_100016E2C(v18 + v20, v9, &qword_100952650);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v21 = &qword_100952650;
    v22 = v9;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_100761FEC();
    v66 = ObjectType;
    aBlock = v18;
    v48 = v18;
    sub_10076B88C();

    sub_100761FDC();
    v49 = sub_10000A5D4(&unk_1009428E0);
    sub_10076F5AC();

    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v6, 1, v49) != 1)
    {
      sub_100761FEC();
      v51 = sub_100761FDC();
      sub_100263BF0(aBlock, 1, v51, v6);

      (*(v11 + 8))(v13, v10);

      (*(v50 + 8))(v6, v49);
      goto LABEL_27;
    }

    (*(v11 + 8))(v13, v10);
    v21 = &unk_100943200;
    v22 = v6;
  }

  sub_10000CFBC(v22, v21);
LABEL_27:
  v52 = [v61 superview];
  if (v52)
  {
    v53 = v52;
    v54 = v18;
    v55 = sub_100770EEC();

    if (v55)
    {
      v27 = objc_opt_self();
      v56 = swift_allocObject();
      *(v56 + 16) = v54;
      *(v56 + 24) = 0x3FF0000000000000;
      v67 = sub_100243CA8;
      v68 = v56;
      aBlock = _NSConcreteStackBlock;
      v64 = 1107296256;
      v65 = sub_10009AEDC;
      v66 = &unk_10088DE70;
      v29 = _Block_copy(&aBlock);
      v30 = v54;

      v57 = swift_allocObject();
      *(v57 + 16) = 0;
      *(v57 + 24) = v30;
      v67 = sub_100243CCC;
      v68 = v57;
      aBlock = _NSConcreteStackBlock;
      v64 = 1107296256;
      v32 = &unk_10088DEC0;
      goto LABEL_30;
    }
  }
}

id sub_100241A88(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView);
  CGAffineTransformMakeScale(&v4, a2, a2);
  return [v2 setTransform:&v4];
}

uint64_t sub_100241AE8(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_10000A5D4(&qword_100952650);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  sub_100016F40(0, &qword_10094D040);
  if ((sub_100770EEC() & 1) == 0)
  {
    return 1;
  }

  v8 = *&v2[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView];
  v9 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupContainerView;
  [a2 locationInView:*(v8 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupContainerView)];
  v12 = *(v8 + v9);
  if (v12)
  {
    v13 = v10;
    v14 = v11;
    [v12 bounds];
    v32.x = v13;
    v32.y = v14;
    if (CGRectContainsPoint(v35, v32))
    {
      return 0;
    }
  }

  v15 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_notifyMeButton;
  [a2 locationInView:*(v8 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_notifyMeButton)];
  v18 = *(v8 + v15);
  if (v18)
  {
    v19 = v16;
    v20 = v17;
    [v18 bounds];
    v33.x = v19;
    v33.y = v20;
    if (CGRectContainsPoint(v36, v33))
    {
      return 0;
    }
  }

  [a2 locationInView:v2];
  v22 = v21;
  v24 = v23;
  v25 = [v2 hitTest:0 withEvent:?];
  [v3 bounds];
  v34.x = v22;
  v34.y = v24;
  if (CGRectContainsPoint(v37, v34))
  {
    if (v25)
    {
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();

      if (v26)
      {
        return 0;
      }
    }

    v28 = OBJC_IVAR____TtC20ProductPageExtension12AppEventView_clickAction;
    swift_beginAccess();
    sub_100016E2C(&v3[v28], v7, &qword_100952650);
    v29 = sub_10000A5D4(&qword_100955BD0);
    v30 = (*(*(v29 - 8) + 48))(v7, 1, v29) != 1;
    sub_10000CFBC(v7, &qword_100952650);
    return v30;
  }

  else
  {

    return 0;
  }
}

void sub_100241E18()
{
  sub_1001D92E0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*sub_100241EE8(uint64_t **a1))()
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
  v2[4] = sub_100240B5C(v2);
  return sub_100019A4C;
}

double sub_100241F6C()
{
  [*(*v0 + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_formattedDateView) frame];
  CGRectGetMaxY(v2);
  sub_10076422C();
  CGRectGetHeight(v3);
  sub_10076422C();
  CGRectGetWidth(v4);
  return 0.0;
}

CGFloat sub_100241FE4()
{
  v1 = *v0;
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_formattedDateView] frame];
  CGRectGetMaxY(v3);
  sub_10076422C();
  CGRectGetHeight(v4);
  [v1 bounds];
  return CGRectGetWidth(v5) * 0.5;
}

uint64_t sub_1002420A4()
{
  ObjectType = swift_getObjectType();
  v1 = sub_100243C28(&unk_10094E710, type metadata accessor for AppEventView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_100242118(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100243C28(&unk_10094E710, type metadata accessor for AppEventView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1002421A4(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_100243C28(&unk_10094E710, type metadata accessor for AppEventView);
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_100242260(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView);
  sub_100016F40(0, &qword_1009441F0);
  v6 = v5;
  v7 = sub_100770EEC();

  return v7 & 1;
}

double sub_1002423E4(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v24 = sub_10076DEBC();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076D93C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076D95C();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for StackMeasurable.Axis.vertical(_:), v6, v12);
  sub_10000A5D4(&unk_10094D050);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100784500;
  sub_10000A570(a1, v31);
  v16 = sub_10076DE7C();
  *(v15 + 56) = v16;
  *(v15 + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_10000DB7C((v15 + 32));
  sub_10076DE8C();
  sub_10000A570(a1 + 40, v31);
  *(v15 + 96) = v16;
  *(v15 + 104) = &protocol witness table for VerticalSpaceMeasurable;
  sub_10000DB7C((v15 + 72));
  sub_10076DE8C();
  sub_10076D94C();
  v31[3] = v10;
  v31[4] = &protocol witness table for StackMeasurable;
  v17 = sub_10000DB7C(v31);
  (*(v11 + 16))(v17, v14, v10);
  v18 = *(a1 + 136);
  v29 = &type metadata for CGFloat;
  v30 = &protocol witness table for CGFloat;
  v28 = v18;
  v19 = *(a1 + 152);
  v26 = &type metadata for CGFloat;
  v27 = &protocol witness table for CGFloat;
  v25 = v19;
  sub_10076DEAC();
  sub_10076DE9C();
  v21 = v20;
  (*(v3 + 8))(v5, v24);
  (*(v11 + 8))(v14, v10);
  return v21;
}

void sub_100242754(void *a1, uint64_t a2)
{
  v78 = sub_10077164C();
  v82 = *(v78 - 8);
  __chkstk_darwin(v78);
  v81 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_10076D93C();
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v73 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10076D95C();
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v72 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_10076DE7C();
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_10076443C();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v65 = &v59 - v10;
  v11 = sub_100763ADC();
  v70 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AppEventCardLayout(0);
  sub_100016E2C(a2 + v14[18], &v85, &unk_10094DA00);
  v15 = v86;
  sub_10000CFBC(&v85, &unk_10094DA00);
  v16 = [a1 traitCollection];
  v17 = [v16 preferredContentSizeCategory];
  v18 = sub_10077087C();

  if (v18)
  {
    v59 = v15;
    v79 = a2;
    v19 = v14[13];
    v20 = v14[14];
    v21 = v14[16];
    v62 = v14[15];
    v63 = v21;
    if (qword_10093F848 != -1)
    {
      swift_once();
    }

    v60 = (v79 + v19);
    v61 = (v79 + v20);
    v22 = sub_10000A61C(v11, qword_10099D298);
    v80 = type metadata accessor for AppEventCardLayout.Metrics(0);
    sub_10076D36C();
    v24 = v23;
    v25 = [a1 traitCollection];
    v26 = v70;
    (*(v70 + 16))(v13, v22, v11);
    v27 = sub_100763A4C();
    v29 = v71;
    if ((v30 & 1) == 0 && ((v27 | v28) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_10077071C())
      {
        if (qword_10093F520 != -1)
        {
          swift_once();
        }

        v31 = qword_100944C88;
      }

      else
      {
        if (qword_10093F528 != -1)
        {
          swift_once();
        }

        v31 = qword_100944CA0;
      }

      v32 = v67;
      v33 = sub_10000A61C(v67, v31);
      v34 = v66;
      v35 = v64;
      (*(v66 + 16))(v64, v33, v32);
      v36 = v65;
      (*(v34 + 32))(v65, v35, v32);
      sub_1007643EC();
      sub_10076441C();
      sub_100763A5C();
      (*(v34 + 8))(v36, v32);
    }

    sub_10076398C();
    v38 = v37;

    (*(v26 + 8))(v13, v11);
    *&v83 = _swiftEmptyArrayStorage;
    sub_10000A5D4(&unk_10094D050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783DD0;
    v86 = &type metadata for CGFloat;
    v87 = &protocol witness table for CGFloat;
    *&v85 = v24;
    *(inited + 56) = v29;
    *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_10000DB7C((inited + 32));
    sub_10076DE8C();
    sub_1000F9168(inited);
    v40 = v79;
    v41 = v78;
    if (v59)
    {
      v86 = &type metadata for CGFloat;
      v87 = &protocol witness table for CGFloat;
      *&v85 = ceil(v38 + 16.0 + 16.0);
      v42 = v68;
      sub_10076DE8C();
      v43 = v83;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_10049CD5C(0, v43[2] + 1, 1, v43);
      }

      v45 = v43[2];
      v44 = v43[3];
      if (v45 >= v44 >> 1)
      {
        v43 = sub_10049CD5C((v44 > 1), v45 + 1, 1, v43);
      }

      v86 = v29;
      v87 = &protocol witness table for VerticalSpaceMeasurable;
      v46 = sub_10000DB7C(&v85);
      v47 = v69;
      (*(v69 + 16))(v46, v42, v29);
      v43[2] = v45 + 1;
      sub_100012498(&v85, &v43[5 * v45 + 4]);
      (*(v47 + 8))(v42, v29);
      *&v83 = v43;
    }

    (*(v75 + 104))(v73, enum case for StackMeasurable.Axis.vertical(_:), v77);
    v48 = v72;
    sub_10076D94C();
    sub_10076D92C();
    (*(v74 + 8))(v48, v76);
    sub_10000CF78(v40, v40[3]);
    v49 = v81;
    sub_1000FF02C();
    sub_10076D40C();
    v50 = *(v82 + 8);
    v82 += 8;
    v50(v49, v41);
    sub_100770ACC();
    sub_10000CF78(v60, v60[3]);
    sub_10076D2AC();
    v52 = v51;
    v53 = v80;
    sub_10000CF78((v40 + v80[7]), *(v40 + v80[7] + 24));
    sub_10076D42C();
    *&v85 = v52;
    sub_10076D3FC();
    sub_10000CF78(v61, v61[3]);
    sub_10076D2AC();
    v55 = v54;
    sub_10000CF78((v40 + v53[8]), *(v40 + v53[8] + 24));
    sub_10076D42C();
    *&v85 = v55;
    sub_10076D3FC();
    sub_100016E2C(v40 + v62, &v83, &qword_10094BB30);
    if (v84)
    {
      sub_100012498(&v83, &v85);
      sub_10000CF78(&v85, v86);
      if (sub_10076D20C())
      {
        sub_10000CF78(&v85, v86);
        sub_10076D2AC();
        v57 = v56;
        sub_10000CF78((v40 + v80[9]), *(v40 + v80[9] + 24));
        sub_10076D42C();
        *&v83 = v57;
        sub_10076D3FC();
      }

      sub_10000CD74(&v85);
    }

    else
    {
      sub_10000CFBC(&v83, &qword_10094BB30);
    }

    sub_10000CF78((v40 + v80[10]), *(v40 + v80[10] + 24));
    v58 = v81;
    sub_1000FF02C();
    sub_10076D40C();
    v50(v58, v41);
    sub_100016E2C(v40 + v63, &v83, &unk_10094DA00);
    if (v84)
    {
      sub_100012498(&v83, &v85);
      sub_10000CF78(&v85, v86);
      if ((sub_10076D24C() & 1) == 0)
      {
        sub_10000CF78(&v85, v86);
        sub_10076D2AC();
      }

      sub_10000CD74(&v85);
    }

    else
    {
      sub_10000CFBC(&v83, &unk_10094DA00);
    }
  }

  else
  {
    sub_1002434FC(a2, v15 != 0, a1);
  }
}

double sub_1002434FC(uint64_t a1, int a2, void *a3)
{
  v45 = a2;
  v50 = sub_10076D93C();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10076D95C();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10076DE7C();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076443C();
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  v14 = sub_100763ADC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093F840 != -1)
  {
    swift_once();
  }

  v18 = sub_10000A61C(v14, qword_10099D280);
  type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_10076D36C();
  v20 = v19;
  v52 = a3;
  v21 = [a3 traitCollection];
  (*(v15 + 16))(v17, v18, v14);
  v22 = sub_100763A4C();
  if ((v24 & 1) == 0 && ((v22 | v23) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_10077071C())
    {
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v25 = qword_100944C88;
    }

    else
    {
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v25 = qword_100944CA0;
    }

    v26 = sub_10000A61C(v8, v25);
    v27 = v42;
    (*(v42 + 16))(v10, v26, v8);
    (*(v27 + 32))(v13, v10, v8);
    sub_1007643EC();
    sub_10076441C();
    sub_100763A5C();
    (*(v27 + 8))(v13, v8);
  }

  sub_10076398C();
  v29 = v28;

  (*(v15 + 8))(v17, v14);
  v56 = _swiftEmptyArrayStorage;
  sub_10000A5D4(&unk_10094D050);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DD0;
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  *&v53 = v20;
  v31 = v46;
  *(inited + 56) = v46;
  *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_10000DB7C((inited + 32));
  sub_10076DE8C();
  sub_1000F9168(inited);
  if (v45)
  {
    v54 = &type metadata for CGFloat;
    v55 = &protocol witness table for CGFloat;
    *&v53 = ceil(v29 + 4.0 + 4.0);
    v32 = v43;
    sub_10076DE8C();
    v33 = v56;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_10049CD5C(0, v33[2] + 1, 1, v33);
    }

    v35 = v33[2];
    v34 = v33[3];
    if (v35 >= v34 >> 1)
    {
      v33 = sub_10049CD5C((v34 > 1), v35 + 1, 1, v33);
    }

    v54 = v31;
    v55 = &protocol witness table for VerticalSpaceMeasurable;
    v36 = sub_10000DB7C(&v53);
    v37 = v44;
    (*(v44 + 16))(v36, v32, v31);
    v33[2] = v35 + 1;
    sub_100012498(&v53, &v33[5 * v35 + 4]);
    (*(v37 + 8))(v32, v31);
    v56 = v33;
  }

  (*(v48 + 104))(v47, enum case for StackMeasurable.Axis.vertical(_:), v50);
  sub_10076D94C();
  sub_10076D92C();
  v39 = v38;
  (*(v49 + 8))(v6, v51);
  return v39;
}

uint64_t sub_100243C28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100243C70()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100243CB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100243CD0()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100243D08()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    return [*(*(v0 + 24) + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_longPressGestureRecognizer) setEnabled:1];
  }

  return result;
}

char *sub_100243D34()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC20ProductPageExtension12AppEventView_clickAction;
  v3 = sub_10000A5D4(&qword_100955BD0);
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = &v0[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_initialLongPressLocation];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_formattedDateView] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView] = [objc_allocWithZone(type metadata accessor for AppEventCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_longPressGestureRecognizer] = v5;
  v16.receiver = v0;
  v16.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v10 = v6;
  [v10 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v10 setClipsToBounds:0];
  v11 = OBJC_IVAR____TtC20ProductPageExtension12AppEventView_formattedDateView;
  *(*&v10[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_formattedDateView] + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_delegate + 8) = &off_10088DDF8;
  swift_unknownObjectWeakAssign();
  [v10 addSubview:*&v10[v11]];
  v12 = OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView;
  [v10 addSubview:*&v10[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView]];
  v13 = OBJC_IVAR____TtC20ProductPageExtension12AppEventView_longPressGestureRecognizer;
  [*&v10[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_longPressGestureRecognizer] addTarget:v10 action:"stateChangedFor:"];
  [*&v10[v13] setMinimumPressDuration:0.1];
  [*&v10[v13] setDelegate:v10];
  [*&v10[v12] addGestureRecognizer:*&v10[v13]];
  sub_10000A5D4(&unk_100945BF0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100783DD0;
  *(v14 + 32) = sub_10076E3FC();
  *(v14 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v10;
}

uint64_t type metadata accessor for DynamicTypeLinkedTextView()
{
  result = qword_10094E730;
  if (!qword_10094E730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100244104(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_10077158C();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = sub_10077149C();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_100244228@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v14 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v12 = a3;
    v5 = (a2 + 72);
    while (1)
    {
      v6 = *(v5 - 5);
      v7 = *(v5 - 4);
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);
      v10 = *(v5 - 1);
      v11 = *v5;
      v13[0] = v6;
      v13[1] = v7;
      v13[2] = v8;
      v13[3] = v9;
      v13[4] = v10;
      v13[5] = v11;

      result = v14(v13);
      if (v3)
      {
        break;
      }

      if (result)
      {
        goto LABEL_7;
      }

      v5 += 6;

      if (!--v4)
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
LABEL_7:
        a3 = v12;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_9:
    *a3 = v6;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v9;
    a3[4] = v10;
    a3[5] = v11;
  }

  return result;
}

void *sub_100244374(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_10077149C();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

id sub_100244488()
{
  [v0 setAttributedText:0];
  *&v0[qword_10094E728] = 0;

  v1 = qword_10094E720;
  *&v0[qword_10094E720] = _swiftEmptyArrayStorage;

  if (*(*&v0[v1] + 16))
  {
    v2 = &UIAccessibilityTraitLink;
  }

  else
  {
    v2 = &UIAccessibilityTraitStaticText;
  }

  [v0 setAccessibilityTraits:*v2];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;

  return [v0 setTextContainerInset:{UIEdgeInsetsZero.top, left, bottom, right}];
}

uint64_t sub_100244548(char *a1)
{
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  sub_100764C2C();
  v9 = sub_100764C3C();
  v9();
  (*(v3 + 16))(v5, a1, v2);
  v10 = sub_100764C3C();
  v11 = v10(v5);
  (v9)(v11);
  sub_10024E518(&unk_10094E890, &type metadata accessor for DirectionalTextAlignment);
  v12 = sub_10076FF1C();
  v13 = *(v3 + 8);
  v13(v5, v2);
  if ((v12 & 1) == 0)
  {
    sub_1002448C4();
  }

  v13(a1, v2);
  return (v13)(v8, v2);
}

id sub_100244750(void *a1)
{
  v3.receiver = a1;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, "textColor");

  return v1;
}

void sub_1002447A8(void *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v15.receiver = a1;
  v15.super_class = ObjectType;
  v6 = a1;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v15, "textColor");
  v14.receiver = v6;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "setTextColor:", v7);
  v13.receiver = v6;
  v13.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v13, "textColor");
  if (v9)
  {
    v10 = v9;
    if (v8)
    {
      sub_100016F40(0, &qword_100942F10);
      v11 = v8;
      v12 = sub_100770EEC();

      if (v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  else if (!v8)
  {
    goto LABEL_10;
  }

  sub_1002448C4();
  v11 = v8;
LABEL_9:

LABEL_10:
}

id sub_1002448C4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v2 - 8);
  v4 = &v63 - v3;
  v5 = sub_10076D3DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100764BAC();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000CFBC(v4, &unk_100943250);
  }

  (*(v6 + 32))(v8, v4, v5);
  v10 = *&v0[qword_10094E728];
  if (!v10)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v67 = v6;
  v68 = v5;
  v11 = sub_100016F40(0, &qword_100942F00);

  v12 = sub_100764C1C();
  v66 = v8;
  v13 = sub_100770B3C();

  v14 = *&v0[qword_10094E720];
  v87.receiver = v0;
  v87.super_class = ObjectType;
  v73 = v14;

  v15 = objc_msgSendSuper2(&v87, "textAlignment");
  v16 = sub_100764BCC();
  v69 = v0;
  v86.receiver = v0;
  v86.super_class = ObjectType;
  v72 = ObjectType;
  result = objc_msgSendSuper2(&v86, "textColor");
  if (result)
  {
    v17 = result;
    v18 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v18 setAlignment:v15];
    [v18 setLineBreakMode:v16];
    sub_10000A5D4(&unk_10094E7E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100784500;
    *(inited + 32) = NSParagraphStyleAttributeName;
    v20 = sub_100016F40(0, &unk_10095D790);
    *(inited + 40) = v18;
    *(inited + 64) = v20;
    *(inited + 72) = NSFontAttributeName;
    *(inited + 104) = v11;
    *(inited + 80) = v13;
    v21 = NSParagraphStyleAttributeName;
    v22 = v18;
    v23 = NSFontAttributeName;
    v24 = v13;
    v25 = sub_1000FC5F4(inited);
    swift_setDeallocating();
    sub_10000A5D4(&unk_100948B10);
    swift_arrayDestroy();
    v80 = sub_100016F40(0, &qword_100942F10);
    *&aBlock = v17;
    sub_10000CD64(&aBlock, v84);
    v64 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = v25;
    sub_10024A2F4(v84, NSForegroundColorAttributeName, isUniquelyReferenced_nonNull_native);
    v85 = v83;

    sub_100016F40(0, &unk_10094E7F0);
    v71 = v24;
    v65 = v10;
    v27 = sub_10075F9DC();
    v28 = v85;

    v29.super.isa = v27;
    v30._rawValue = v28;
    isa = sub_10077079C(v29, v30).super.isa;
    v32 = v22;
    v33 = isa;
    v34 = [(objc_class *)v33 fullRange];
    [(objc_class *)v33 addAttribute:v21 value:v32 range:v34, v35];
    v63 = v32;

    v70 = swift_allocObject();
    *(v70 + 16) = 0;
    *&v84[0] = 0;
    v36 = *(v73 + 16);
    v75 = NSLinkAttributeName;
    if (v36)
    {
      v74 = NSUnderlineStyleAttributeName;
      v37 = v73 + 72;
      do
      {
        v38 = *(v37 - 24);
        v76 = *(v37 - 8);

        v77 = v38;

        v39 = sub_100245D94(v84, v33);
        v40 = sub_10076FF6C();
        v41 = [v39 rangeOfString:v40 options:4];
        v43 = v42;

        if (v41 != sub_10075D75C())
        {
          v44 = sub_10076FF6C();
          [(objc_class *)v33 addAttribute:v75 value:v44 range:v41, v43];

          if (UIAccessibilityButtonShapesEnabled())
          {
            v45 = sub_1007703CC().super.super.isa;
            [(objc_class *)v33 addAttribute:v74 value:v45 range:v41, v43];
          }
        }

        v37 += 48;

        --v36;
      }

      while (v36);
    }

    v46 = [(objc_class *)v33 fullRange];
    v48 = v47;
    v49 = v33;
    v50 = swift_allocObject();
    v51 = v73;
    v50[2] = v72;
    v50[3] = v51;
    v52 = v71;
    v50[4] = v70;
    v50[5] = v52;
    v50[6] = &v85;
    v50[7] = v49;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_1000F41BC;
    *(v53 + 24) = v50;
    v81 = sub_10024DF90;
    v82 = v53;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v79 = sub_1002464A8;
    v80 = &unk_10088E128;
    v54 = _Block_copy(&aBlock);
    v55 = v52;

    [(objc_class *)v49 enumerateAttribute:v75 inRange:v46 options:v48 usingBlock:0, v54];
    _Block_release(v54);
    LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();

    if ((v54 & 1) == 0)
    {
      v56 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v49];

      v57 = *&v84[0];

      v58 = v69;
      [v69 setAttributedText:v56];

      sub_10075F9CC();
      sub_10077009C();
      v60 = v59;
      v62 = v61;

      [v58 setTextContainerInset:{v60, 0.0, v62, 0.0}];

      return (*(v67 + 8))(v66, v68);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1002451D8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "textAlignment");
}

void sub_100245218(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v10.receiver = a1;
  v10.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v10, "textAlignment");
  v9.receiver = v6;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "setTextAlignment:", a3);
  v8.receiver = v6;
  v8.super_class = ObjectType;
  if (objc_msgSendSuper2(&v8, "textAlignment") != v7)
  {
    sub_1002448C4();
  }
}

uint64_t sub_1002452B8()
{
  sub_100764C2C();
  v0 = sub_100764C3C();

  return v0();
}

void (*sub_100245310(void *a1))(uint64_t a1, char a2)
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
  *v3 = v1;
  v5 = sub_10076771C();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  sub_100764C2C();
  v9 = sub_100764C3C();
  v9();
  return sub_10024543C;
}

void sub_10024543C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_100244548(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_100244548(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_1002454F0(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "tintColorDidChange");
  sub_1002448C4();
}

id sub_100245548(uint64_t a1, uint64_t a2)
{
  *&v2[qword_10094E728] = a1;

  v4 = qword_10094E720;
  *&v2[qword_10094E720] = a2;

  if (*(*&v2[v4] + 16))
  {
    v5 = &UIAccessibilityTraitLink;
  }

  else
  {
    v5 = &UIAccessibilityTraitStaticText;
  }

  [v2 setAccessibilityTraits:*v5];

  return sub_1002448C4();
}

void sub_100245600(void *a1)
{
  v1 = a1;
  sub_1002448C4();
}

uint64_t sub_100245648(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + qword_10094E720);
    v8 = Strong;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(Strong);
  *(&v16 - 2) = a2;
  sub_100244228(sub_10024E564, v7, &v17);

  v10 = v18;
  if (v18)
  {
    v11 = v17;
    v13 = v19;
    v12 = v20;
    v14 = sub_10000A5D4(&unk_1009428E0);
    sub_10076F5AC();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v5, 1, v14) == 1)
    {
      v22 = v11;
      v23 = v10;
      sub_1000B8AFC(&v22);

      v24 = v21;
      sub_1000B8AFC(&v24);
      return sub_10000CFBC(v5, &unk_100943200);
    }

    else
    {
      sub_100263BF0(v13, 1, v12, v5);
      v22 = v11;
      v23 = v10;
      sub_1000B8AFC(&v22);

      v24 = v21;
      sub_1000B8AFC(&v24);

      return (*(v15 + 8))(v5, v14);
    }
  }

  return result;
}

id sub_1002458B4(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = sub_10024E054(v9, v10);

  return v12;
}

BOOL sub_100245948()
{
  v1 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + qword_10094E720);
  v5 = v4[2];
  if (v5)
  {
    v6 = v4[6];
    v7 = v4[7];
    v8 = sub_10000A5D4(&unk_1009428E0);

    sub_10076F5AC();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v3, 1, v8) == 1)
    {

      sub_10000CFBC(v3, &unk_100943200);
    }

    else
    {
      sub_100263BF0(v6, 1, v7, v3);

      (*(v9 + 8))(v3, v8);
    }
  }

  return v5 != 0;
}

BOOL sub_100245B18(void *a1)
{
  v1 = a1;
  v2 = sub_100245948();

  return v2;
}

uint64_t sub_100245B4C()
{
  sub_10076B8DC();
  v0 = sub_1007713CC();
  v2 = v1;
  sub_100016C74(v7);
  v3 = sub_10075DB4C();
  if (v4)
  {
    if (v0 == v3 && v4 == v2)
    {

      v5 = 1;
    }

    else
    {
      v5 = sub_10077167C();
    }
  }

  else
  {

    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_100245C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v14 = 0x2F3A6E6F69746361;
  v15 = 0xE90000000000002FLL;

  sub_10076B8DC();
  v16._countAndFlagsBits = sub_1007713CC();
  sub_1007700CC(v16);

  result = sub_100016C74(v13);
  v11 = v14;
  v12 = v15;
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = v11;
  a5[5] = v12;
  return result;
}

id sub_100245CF0(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v5 = [objc_opt_self() configurationWithFont:a2 scale:1];
    swift_beginAccess();
    v6 = *v3;
    *v3 = v5;
    v4 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v4;
}

id sub_100245D94(void **a1, id a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *a1;
  }

  else
  {
    v5 = [a2 string];
    if (!v5)
    {
      sub_10076FF9C();
      v5 = sub_10076FF6C();
    }

    v6 = [objc_allocWithZone(NSString) initWithString:v5];

    swift_beginAccess();
    v7 = *a1;
    *a1 = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_100245E68(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, id a10)
{
  v16 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v16 - 8);
  v18 = v47 - v17;
  v19 = sub_10075DB7C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003F0D4(a1, &v55);
  if (!v58)
  {
    sub_10000CFBC(&v55, &unk_1009434C0);
    return;
  }

  v50 = a3;
  if (swift_dynamicCast())
  {
    sub_10075DB6C();

    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_10000CFBC(v18, &unk_1009435D0);
      return;
    }

    v23 = (*(v20 + 32))(v22, v18, v19);
    __chkstk_darwin(v23);
    v47[-2] = v22;
    sub_100244228(sub_10024DFD0, a6, &v55);
    if (!v56)
    {
      goto LABEL_19;
    }

    v48 = a2;
    v49 = v56;
    v24 = v55;
    v25 = v57;
    v26 = v58;
    v27 = sub_10076B8FC();
    if (v27)
    {
      v28 = v27;
      v47[0] = v24;
      v47[1] = v25;
      v47[2] = v26;

      v29 = sub_100245CF0(a7, a8);
      if (sub_10076BE0C())
      {
        v30 = sub_10076044C();
        v31 = v48;
      }

      else
      {
        v32 = sub_10076BDFC();
        v31 = v48;
        if ((v32 & 1) == 0)
        {
          *&v52[0] = v47[0];
          *(&v52[0] + 1) = v49;
          sub_1000B8AFC(v52);

          v53 = v59;
          sub_1000B8AFC(&v53);

          goto LABEL_19;
        }

        v30 = sub_1005A6008(v28, v29);
      }

      if (v30)
      {
        v33 = v30;
        v34 = *a9;
        v60[0] = v59;
        v54 = &type metadata for String;
        v53 = v59;
        sub_10000CD64(&v53, v52);

        sub_1000B8A4C(v60, &v51);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = v34;
        sub_10024A2F4(v52, NSLinkAttributeName, isUniquelyReferenced_nonNull_native);
        v36 = objc_allocWithZone(NSMutableAttributedString);
        v37 = sub_10076FF6C();
        v38 = [v36 initWithString:v37];

        v39 = [objc_opt_self() textAttachmentWithImage:v33];
        v40 = [objc_opt_self() attributedStringWithAttachment:v39];

        [v38 appendAttributedString:v40];
        type metadata accessor for Key(0);
        sub_10024E518(&qword_100943320, type metadata accessor for Key);
        isa = sub_10076FE3C().super.isa;

        v42 = [v38 fullRange];
        [v38 addAttributes:isa range:{v42, v43}];

        v44 = __OFADD__(v31, v50);
        v45 = v31 + v50;
        v46 = v47[0];
        if (v44)
        {
          __break(1u);
          return;
        }

        [a10 insertAttributedString:v38 atIndex:v45];

        *&v53 = v46;
        *(&v53 + 1) = v49;
        sub_1000B8AFC(&v53);

        sub_1000B8AFC(v60);

        goto LABEL_19;
      }

      *&v52[0] = v47[0];
      *(&v52[0] + 1) = v49;
      sub_1000B8AFC(v52);
    }

    else
    {
      *&v52[0] = v24;
      *(&v52[0] + 1) = v49;
      sub_1000B8AFC(v52);
    }

    v53 = v59;
    sub_1000B8AFC(&v53);
LABEL_19:
    (*(v20 + 8))(v22, v19);
  }
}

uint64_t sub_1002464A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_10000CD64(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_10000CFBC(v13, &unk_1009434C0);
}

uint64_t sub_100246584()
{
}

uint64_t sub_1002465C4()
{
}

uint64_t sub_100246618(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100246660(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002466BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000A5D4(&unk_10094E870);
  result = sub_1007715BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56) + 40 * v20;
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 32);
      v34 = *(v21 + 16);
      v35 = *v21;
      result = sub_10077174C();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v22;
      v16 = *(v7 + 56) + 40 * v15;
      *v16 = v35;
      *(v16 + 16) = v34;
      *(v16 + 32) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100246940(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for Accessory();
  v42 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_10000A5D4(&unk_10094E880);
  v43 = a2;
  result = sub_1007715BC();
  v10 = v8;
  v11 = result;
  if (*(v8 + 16))
  {
    v40 = v3;
    v41 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v42 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v43)
      {
        sub_1000366F4(v25, v7);
        v26 = *(v10 + 56);
        v27 = v7;
        v28 = *(v26 + 8 * v23);
      }

      else
      {
        sub_10024DFF0(v25, v7);
        v29 = *(*(v10 + 56) + 8 * v23);
        v27 = v7;
        v28 = v29;
      }

      sub_10077175C();
      v30 = v27;
      sub_100529668(v44);
      result = sub_1007717AC();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1000366F4(v30, *(v11 + 48) + v24 * v19);
      *(*(v11 + 56) + 8 * v19) = v28;
      v7 = v30;
      ++*(v11 + 16);
      v10 = v41;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100246C88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000A5D4(&unk_10094E850);
  v36 = a2;
  result = sub_1007715BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 24 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {
      }

      sub_10077175C();
      sub_10077176C(v22);
      sub_10077176C(v23);
      if (v24 == 0.0)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v24;
      }

      sub_10077178C(*&v26);
      result = sub_1007717AC();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(v16 + 16) = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_100246F60(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000A5D4(&unk_10094E800);
  v35 = a2;
  result = sub_1007715BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_10000CD64(v22, v36);
      }

      else
      {
        sub_10000CD08(v22, v36);
        v23 = v21;
      }

      sub_10076FF9C();
      sub_10077175C();
      sub_10077008C();
      v24 = sub_1007717AC();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_10000CD64(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_100247230(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_10076B96C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10000A5D4(&qword_10094E818);
  v40 = a2;
  result = sub_1007715BC();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_10024E518(&unk_10094E820, &type metadata accessor for AdamId);
      result = sub_10076FEAC();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1002475F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000A5D4(&qword_10094E810);
  v37 = a2;
  result = sub_1007715BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_10077175C();
      sub_10077008C();
      result = sub_1007717AC();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1002478B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000A5D4(&unk_100948B30);
  v34 = a2;
  result = sub_1007715BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_10077175C();
      sub_10077008C();
      result = sub_1007717AC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100247B50(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000A5D4(&qword_100948B50);
  result = sub_1007715BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      else
      {
        sub_10008C3EC(v23, &v36);
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      result = sub_1007713DC(*(v7 + 40));
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_100247E14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000A5D4(&qword_100948BC8);
  v33 = a2;
  result = sub_1007715BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_10000CD64(v24, v34);
      }

      else
      {
        sub_10000CD08(v24, v34);
      }

      sub_10077175C();
      sub_10077008C();
      result = sub_1007717AC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10000CD64(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1002480CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000A5D4(&unk_10094E8A0);
  v33 = a2;
  result = sub_1007715BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_10077175C();
      sub_10077008C();
      result = sub_1007717AC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100248370(uint64_t a1, int a2)
{
  v3 = v2;
  v39 = sub_10076F7FC();
  v5 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10000A5D4(&qword_10094E830);
  v37 = a2;
  result = sub_1007715BC();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = sub_10077174C();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1002486BC(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_10000A5D4(a3);
  result = sub_1007715BC();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v4;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_10077174C();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v31;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_100248924(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_10000A5D4(a3);
  result = sub_1007715BC();
  v8 = result;
  if (*(v6 + 16))
  {
    v32 = v4;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v22;
      }

      result = sub_10077174C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v6 + 32);
      if (v31 >= 64)
      {
        bzero((v6 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v6 + 16) = 0;
    }

    v4 = v32;
  }

  else
  {
  }

  *v4 = v8;
  return result;
}