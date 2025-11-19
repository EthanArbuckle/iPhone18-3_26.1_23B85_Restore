uint64_t sub_1005DDE7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005DDF2C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009A2490);
  sub_10000A61C(v4, qword_1009A2490);
  if (qword_100940EF0 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1AC8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1005DE10C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009A24C0);
  sub_10000A61C(v4, qword_1009A24C0);
  if (qword_100940EF8 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1AE0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

void sub_1005DE2F4(unsigned __int8 a1, uint64_t a2, UIContentSizeCategory a3)
{
  v4 = a1;
  v5 = sub_10076D39C();
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10076C20C();
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4 != 4)
  {
    if (sub_10077071C())
    {
      goto LABEL_8;
    }

    sub_10076C2AC();
    if (qword_100940270 != -1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      sub_10000A61C(v9, qword_10099F340);
      sub_1005DEBF0();
      v14 = sub_10076FF0C();
      v15 = *(v10 + 8);
      v10 += 8;
      v15(v12, v9);
      if (v14)
      {
        break;
      }

LABEL_8:
      v9 = &off_100911000;
      v16 = [(NSString *)a3 preferredContentSizeCategory];
      v5 = UIContentSizeCategoryAccessibilityMedium;
      v8 = UIContentSizeCategoryAccessibilityExtraLarge;
      if ((sub_10077088C() & 1) == 0)
      {
        __break(1u);
        goto LABEL_27;
      }

      if (sub_10077087C())
      {
        v17 = sub_10077088C();

        if (v17)
        {
          return;
        }
      }

      else
      {
      }

      v19 = [(NSString *)a3 preferredContentSizeCategory];
      v5 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
      a3 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      if (sub_10077088C())
      {
        if (sub_10077087C())
        {
          sub_10077088C();
        }

        return;
      }

      __break(1u);
LABEL_29:
      swift_once();
    }
  }

  sub_10076C24C();
  sub_10076C24C();
  if (v4 == 4)
  {
    if (qword_100941258 != -1)
    {
LABEL_27:
      swift_once();
    }

    sub_10000A61C(v5, qword_1009A2460);
    sub_10076D36C();
  }

  else
  {
    if (v13 >= 300.0)
    {
      if (qword_100941250 != -1)
      {
        swift_once();
      }

      v18 = qword_1009A2448;
    }

    else
    {
      if (qword_100941260 != -1)
      {
        swift_once();
      }

      v18 = qword_1009A2478;
    }

    v20 = sub_10000A61C(v5, v18);
    (*(v6 + 16))(v8, v20, v5);
    sub_10076D36C();
    (*(v6 + 8))(v8, v5);
  }
}

void sub_1005DE768(unsigned __int8 a1, uint64_t a2, void *a3)
{
  LOBYTE(v4) = a1;
  v5 = a1;
  v6 = sub_10076D39C();
  v21 = *(v6 - 1);
  __chkstk_darwin(v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10076C20C();
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5 != 4)
  {
    if (sub_10077071C())
    {
      goto LABEL_8;
    }

    v20 = a3;
    sub_10076C2AC();
    if (qword_100940270 != -1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      sub_10000A61C(v9, qword_10099F340);
      sub_1005DEBF0();
      v14 = sub_10076FF0C();
      (v10[1])(v12, v9);
      a3 = v20;
      if (v14)
      {
        break;
      }

LABEL_8:
      v4 = &off_100911000;
      v9 = [a3 preferredContentSizeCategory];
      v6 = UIContentSizeCategoryAccessibilityMedium;
      v8 = UIContentSizeCategoryAccessibilityExtraLarge;
      if ((sub_10077088C() & 1) == 0)
      {
        __break(1u);
        goto LABEL_27;
      }

      if (sub_10077087C())
      {
        v15 = sub_10077088C();

        if (v15)
        {
          return;
        }
      }

      else
      {
      }

      v17 = [a3 preferredContentSizeCategory];
      v6 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
      v10 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      if (sub_10077088C())
      {
        if (sub_10077087C())
        {
          sub_10077088C();
        }

        return;
      }

      __break(1u);
LABEL_29:
      swift_once();
    }
  }

  sub_1005B1CD8(v4);
  sub_10076C24C();
  if (v5 == 4)
  {
    if (qword_100941258 != -1)
    {
LABEL_27:
      swift_once();
    }

    sub_10000A61C(v6, qword_1009A2460);
    sub_10076D36C();
  }

  else
  {
    if (v13 >= 300.0)
    {
      if (qword_100941250 != -1)
      {
        swift_once();
      }

      v16 = qword_1009A2448;
    }

    else
    {
      if (qword_100941260 != -1)
      {
        swift_once();
      }

      v16 = qword_1009A2478;
    }

    v18 = sub_10000A61C(v6, v16);
    v19 = v21;
    (*(v21 + 16))(v8, v18, v6);
    sub_10076D36C();
    (*(v19 + 8))(v8, v6);
  }
}

unint64_t sub_1005DEBF0()
{
  result = qword_10095FD40;
  if (!qword_10095FD40)
  {
    sub_10076C20C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095FD40);
  }

  return result;
}

double sub_1005DEC48(uint64_t a1, void *a2)
{
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26[-1] - v8;
  v10 = sub_10076D1AC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1007706CC() & 1) == 0)
  {
    if (JUScreenClassHasRoundedCorners())
    {
      if (a2)
      {
        v14 = [a2 window];
        if (v14)
        {
          v15 = v14;
          [v14 safeAreaInsets];
        }
      }
    }
  }

  if (qword_100940EF0 != -1)
  {
    swift_once();
  }

  v16 = sub_10076D3DC();
  v17 = sub_10000A61C(v16, qword_1009A1AC8);
  (*(*(v16 - 8) + 16))(v13, v17, v16);
  (*(v11 + 104))(v13, enum case for FontSource.useCase(_:), v10);
  v26[3] = v10;
  v26[4] = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(v26);
  (*(v11 + 16))(v18, v13, v10);
  sub_10076C8EC();
  v20 = v19;
  (*(v11 + 8))(v13, v10);
  sub_10000CD74(v26);
  sub_10076D17C();
  *v26 = v20;
  (*(v4 + 16))(v6, v9, v3);
  v21 = (*(v4 + 88))(v6, v3);
  if (v21 == enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:))
  {
    v22 = round(v20);
LABEL_19:
    (*(v4 + 8))(v9, v3);
    return v22;
  }

  if (v21 == enum case for FloatingPointRoundingRule.toNearestOrEven(_:))
  {
    v22 = rint(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.up(_:))
  {
    v22 = ceil(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.down(_:))
  {
    v22 = floor(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.towardZero(_:))
  {
    v22 = trunc(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.awayFromZero(_:))
  {
    (*(v4 + 8))(v9, v3);
    if ((*&v20 & 0x8000000000000000) != 0)
    {
      return floor(v20);
    }

    else
    {
      return ceil(v20);
    }
  }

  else
  {
    sub_10077035C();
    v24 = *(v4 + 8);
    v24(v9, v3);
    v24(v6, v3);
    return *v26;
  }
}

uint64_t AppEventFormattedDatePresenter.__allocating_init(formattedDates:view:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 32) = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_currentFormattedDate;
  v7 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *(v5 + OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_updateTimer) = 0;
  *(v5 + 16) = a1;
  swift_beginAccess();
  *(v5 + 32) = a3;
  swift_unknownObjectWeakAssign();
  sub_1005E02D0();
  swift_unknownObjectRelease();
  return v5;
}

Swift::Void __swiftcall AppEventFormattedDatePresenter.tearDown()()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_updateTimer;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_updateTimer);
  if (v2)
  {
    [v2 invalidate];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

uint64_t sub_1005DF1EC(uint64_t a1)
{
  v3 = sub_10075DF6C();
  v134 = *(v3 - 8);
  v135 = v3;
  __chkstk_darwin(v3);
  v5 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10075D8BC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v131 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v136 = &v102 - v10;
  __chkstk_darwin(v11);
  v137 = &v102 - v12;
  v13 = sub_10000A5D4(&unk_10094FA00);
  __chkstk_darwin(v13 - 8);
  v132 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v102 - v16;
  __chkstk_darwin(v18);
  v20 = &v102 - v19;
  v139 = sub_10075DD7C();
  v21 = *(v139 - 8);
  __chkstk_darwin(v139);
  v130 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v133 = &v102 - v24;
  __chkstk_darwin(v25);
  v27 = &v102 - v26;
  __chkstk_darwin(v28);
  v138 = &v102 - v29;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v127 = v7;
    v31 = *(v1 + 32);
    if (!a1)
    {
      ObjectType = swift_getObjectType();
      (*(v31 + 32))(0, 0xE000000000000000, 0, ObjectType, v31);
      return swift_unknownObjectRelease();
    }

    v126 = v6;
    v129 = v31;

    v32 = sub_10075EF2C();
    v128 = a1;
    if (v33)
    {
      v34 = v32;
      v35 = v33;
LABEL_14:
      v67 = swift_getObjectType();
      v68 = sub_10075EF3C();
      (*(v129 + 32))(v34, v35, v68 & 1, v67);

      swift_unknownObjectRelease();
    }

    sub_10075EF0C();
    v37 = v21;
    v40 = *(v21 + 48);
    v38 = v21 + 48;
    v39 = v40;
    v41 = v139;
    if (v40(v20, 1, v139) != 1)
    {
      v122 = v39;
      v123 = v38;
      v43 = v138;
      v44 = v20;
      v45 = *(v37 + 32);
      v45(v138, v44, v41);
      v46 = sub_10075EF4C();
      if (!v47)
      {
        (*(v37 + 8))(v43, v41);
        goto LABEL_13;
      }

      v105 = v45;
      v106 = v37 + 32;
      v103 = v46;
      v116 = v47;
      sub_10075DF3C();
      v120 = sub_10000A5D4(&qword_100951998);
      v48 = sub_10075DF5C();
      v49 = *(v48 - 8);
      v50 = *(v49 + 72);
      v118 = *(v49 + 80);
      v51 = (v118 + 32) & ~v118;
      v121 = v51;
      v124 = 4 * v50;
      v114 = 5 * v50;
      v52 = swift_allocObject();
      v113 = xmmword_100785C70;
      v115 = v52;
      *(v52 + 1) = xmmword_100785C70;
      v125 = v37;
      v53 = v52 + v51;
      v112 = enum case for Calendar.Component.year(_:);
      v104 = v49;
      v54 = *(v49 + 104);
      v54(v52 + v51);
      v111 = enum case for Calendar.Component.month(_:);
      v55 = v50;
      v54(&v53[v50]);
      v50 *= 2;
      v119 = v55;
      v110 = enum case for Calendar.Component.day(_:);
      v107 = v50;
      v54(&v53[v50]);
      v109 = v50 + v55;
      v108 = enum case for Calendar.Component.hour(_:);
      v54(&v53[v50 + v55]);
      v117 = enum case for Calendar.Component.minute(_:);
      v54(&v53[v124]);
      sub_1001799AC(v115);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_10075DD6C();
      sub_10075DEEC();

      v56 = *(v125 + 8);
      v125 += 8;
      v115 = v56;
      v56(v27, v139);
      v57 = *(v134 + 1);
      v57(v5, v135);
      sub_10075DF3C();
      v58 = v121;
      v59 = swift_allocObject();
      *(v59 + 16) = v113;
      v60 = v59 + v58;
      (v54)(v60, v112, v48);
      (v54)(v60 + v119, v111, v48);
      (v54)(v60 + v107, v110, v48);
      (v54)(v60 + v109, v108, v48);
      v114 = v49 + 104;
      *&v113 = v54;
      (v54)(v60 + v124, v117, v48);
      sub_1001799AC(v59);
      swift_setDeallocating();
      v124 = v48;
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_10075DEEC();
      v61 = v137;
      v62 = v135;
      v63 = v139;

      v57(v5, v62);
      sub_10075DF3C();
      sub_10075DF2C();
      v134 = v57;
      v57(v5, v62);
      v64 = v122;
      if (v122(v17, 1, v63) == 1)
      {

        v65 = v126;
        v66 = *(v127 + 8);
        v66(v136, v126);
        v66(v61, v65);
        v115(v138, v63);
        v42 = v17;
        goto LABEL_11;
      }

      v69 = v17;
      v70 = v105;
      v105(v133, v69, v63);
      sub_10075DF3C();
      v71 = v132;
      sub_10075DF2C();
      v72 = v71;
      v134(v5, v62);
      v73 = v64(v71, 1, v63);
      v74 = v63;
      v75 = v127;
      if (v73 != 1)
      {
        v79 = v130;
        v70(v130, v72, v63);
        sub_10075DF3C();
        v80 = v121;
        v81 = swift_allocObject();
        *(v81 + 16) = xmmword_100783DD0;
        v82 = v124;
        (v113)(v81 + v80, v117, v124);
        sub_1001799AC(v81);
        swift_setDeallocating();
        v83 = v82;
        v84 = v79;
        (*(v104 + 8))(v81 + v80, v83);
        swift_deallocClassInstance();
        v85 = v131;
        v86 = v133;
        sub_10075DEDC();

        v134(v5, v62);
        v87 = sub_10075D8AC();
        v89 = v88;
        v90 = *(v75 + 8);
        v91 = v126;
        v90(v85, v126);
        if ((v89 & 1) == 0)
        {
          v142._countAndFlagsBits = v103;
          v142._object = v116;
          v143._countAndFlagsBits = 0;
          v143._object = 0xE000000000000000;
          v95 = sub_100767D6C(v142, v87, v143);
          v97 = v96;
          v135 = v96;

          v140 = v95;
          v141 = v97;
          sub_10002564C();
          v34 = sub_1007711FC();
          v35 = v98;
          v99 = v84;
          v100 = v139;
          v101 = v115;
          v115(v99, v139);
          v101(v86, v100);
          v90(v136, v91);
          v90(v137, v91);
          v101(v138, v100);

          goto LABEL_14;
        }

        v92 = v84;
        v93 = v139;
        v94 = v115;
        v115(v92, v139);
        v94(v86, v93);
        v90(v136, v91);
        v90(v137, v91);
        v94(v138, v93);
        goto LABEL_13;
      }

      v76 = v115;
      v115(v133, v63);
      v20 = v72;
      v77 = *(v75 + 8);
      v78 = v126;
      v77(v136, v126);
      v77(v137, v78);
      v76(v138, v74);
    }

    v42 = v20;
LABEL_11:
    sub_10000CFBC(v42, &unk_10094FA00);
LABEL_13:
    v34 = 0;
    v35 = 0xE000000000000000;
    goto LABEL_14;
  }

  return result;
}

uint64_t AppEventFormattedDatePresenter.view.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_currentFormattedDate;
  swift_beginAccess();
  v5 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  v6 = 0;
  if (!(*(*(v5 - 8) + 48))(v2 + v4, 1, v5))
  {
    v6 = *(v2 + v4);
  }

  sub_1005DF1EC(v6);
  swift_unknownObjectRelease();
}

void (*AppEventFormattedDatePresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1005E00CC;
}

void sub_1005E00CC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_currentFormattedDate;
    swift_beginAccess();
    v6 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
    v7 = 0;
    if (!(*(*(v6 - 8) + 48))(v4 + v5, 1, v6))
    {
      v7 = *(v4 + v5);
    }

    sub_1005DF1EC(v7);
  }

  free(v3);
}

uint64_t AppEventFormattedDatePresenter.init(formattedDates:view:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_currentFormattedDate;
  v7 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_updateTimer) = 0;
  *(v3 + 16) = a1;
  swift_beginAccess();
  *(v3 + 32) = a3;
  swift_unknownObjectWeakAssign();
  sub_1005E02D0();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1005E02D0()
{
  v1 = sub_10000A5D4(&qword_10095FD58);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  sub_1005E0590((&v8 - v2));
  v4 = OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_currentFormattedDate;
  swift_beginAccess();
  sub_1005E1A0C(v3, v0 + v4);
  swift_endAccess();
  v5 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  v6 = 0;
  if (!(*(*(v5 - 8) + 48))(v0 + v4, 1, v5))
  {
    v6 = *(v0 + v4);
  }

  sub_1005DF1EC(v6);

  sub_100016E2C(v0 + v4, v3, &qword_10095FD58);
  sub_1005E0A6C(v3);
  return sub_10000CFBC(v3, &qword_10095FD58);
}

uint64_t AppEventFormattedDatePresenter.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  sub_10000CC8C(v0 + 24);
  sub_10000CFBC(v0 + OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_currentFormattedDate, &qword_10095FD58);

  return v0;
}

uint64_t AppEventFormattedDatePresenter.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  sub_10000CC8C(v0 + 24);
  sub_10000CFBC(v0 + OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_currentFormattedDate, &qword_10095FD58);

  return swift_deallocClassInstance();
}

uint64_t sub_1005E0590@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10000A5D4(&unk_10094FA00);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  v9 = sub_10075DD7C();
  v38 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v43 = &v34 - v13;
  v14 = *(v1 + 16);
  v15 = v14 >> 62;
  if (v14 >> 62)
  {
    goto LABEL_27;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_28:
    v32 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(v16);
    v33 = *(*(v32 - 8) + 56);

    return v33(a1, 1, 1, v32);
  }

LABEL_3:
  result = sub_10075DD2C();
  v18 = v14 & 0xC000000000000001;
  v37 = a1;
  v42 = v11;
  if ((v14 & 0xC000000000000001) != 0)
  {
    v19 = sub_10077149C();
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v19 = *(v14 + 32);
  }

  v20 = v38 + 56;
  a1 = v9;
  v35 = *(v38 + 56);
  v35(v8, 1, 1, v9);
  if (!v15)
  {
    v9 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = v8;
    if (!v9)
    {
      goto LABEL_21;
    }

    goto LABEL_8;
  }

  v9 = sub_10077158C();
  v36 = v8;
  if (v9)
  {
LABEL_8:
    v34 = v20;
    v15 = 0;
    v8 = (v38 + 48);
    v41 = (v38 + 32);
    v39 = v14 & 0xFFFFFFFFFFFFFF8;
    v40 = (v38 + 8);
    while (1)
    {
      if (v18)
      {
        v22 = sub_10077149C();
        v11 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v15 >= *(v39 + 16))
        {
          goto LABEL_26;
        }

        v11 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          v16 = sub_10077158C();
          if (!v16)
          {
            goto LABEL_28;
          }

          goto LABEL_3;
        }
      }

      v45 = v22;
      sub_10075EF1C();
      if ((*v8)(v5, 1, a1) == 1)
      {

        sub_10000CFBC(v5, &unk_10094FA00);
      }

      else
      {
        v44 = v19;
        v23 = v9;
        v24 = v14;
        v25 = v18;
        v26 = v42;
        v27 = *v41;
        (*v41)(v42, v5, a1);
        if (sub_10075DD0C())
        {

          v29 = v36;
          sub_10000CFBC(v36, &unk_10094FA00);
          (*v40)(v43, a1);
          v27(v29, v26, a1);
          v35(v29, 0, 1, a1);
          v28 = v44;
          goto LABEL_24;
        }

        (*v40)(v26, a1);

        v18 = v25;
        v14 = v24;
        v9 = v23;
      }

      ++v15;
      v21 = v45;
      v19 = v45;
      if (v11 == v9)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_21:
  v21 = v19;
LABEL_22:
  (*(v38 + 8))(v43, a1);
  v28 = v21;
  v29 = v36;
LABEL_24:
  v30 = v37;
  *v37 = v28;
  v31 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  sub_1005E1AD8(v29, v30 + *(v31 + 20));
  return (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
}

void sub_1005E0A6C(uint64_t a1)
{
  v3 = sub_10075DF0C();
  v69 = *(v3 - 8);
  v70 = v3;
  __chkstk_darwin(v3);
  v68 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10075DEFC();
  v67 = *(v76 - 8);
  __chkstk_darwin(v76);
  v66 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_10075DECC();
  v65 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_10075DF6C();
  v78 = *(v73 - 8);
  __chkstk_darwin(v73);
  v72 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_10075D8BC();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v77 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_10075DD7C();
  v9 = *(v84 - 8);
  __chkstk_darwin(v84);
  v80 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v79 = &v62 - v12;
  __chkstk_darwin(v13);
  v15 = &v62 - v14;
  v16 = sub_10000A5D4(&qword_10095FD58);
  __chkstk_darwin(v16 - 8);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v62 - v20;
  v22 = sub_10000A5D4(&unk_10094FA00);
  __chkstk_darwin(v22 - 8);
  v81 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v71 = &v62 - v25;
  __chkstk_darwin(v26);
  v28 = &v62 - v27;
  *&v30 = __chkstk_darwin(v29).n128_u64[0];
  v32 = &v62 - v31;
  v82 = OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_updateTimer;
  v83 = v1;
  v33 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_updateTimer);
  if (v33)
  {
    [v33 invalidate];
  }

  v34 = a1;
  sub_100016E2C(a1, v21, &qword_10095FD58);
  v35 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  v36 = *(*(v35 - 8) + 48);
  if (v36(v21, 1, v35) == 1)
  {
    sub_10000CFBC(v21, &qword_10095FD58);
    v37 = v84;
    (*(v9 + 56))(v32, 1, 1, v84);
  }

  else
  {
    sub_100016E2C(&v21[*(v35 + 20)], v32, &unk_10094FA00);
    sub_1005E1A7C(v21);
    v37 = v84;
  }

  sub_10075DD6C();
  sub_100016E2C(v34, v18, &qword_10095FD58);
  if (v36(v18, 1, v35) == 1)
  {
    sub_10000CFBC(v18, &qword_10095FD58);
    (*(v9 + 56))(v28, 1, 1, v37);
  }

  else
  {

    sub_1005E1A7C(v18);
    sub_10075EF0C();

    if ((*(v9 + 48))(v28, 1, v37) != 1)
    {
      v46 = v79;
      (*(v9 + 32))(v79, v28, v37);
      if (sub_10075DD0C())
      {
        v47 = v72;
        sub_10075DF3C();
        sub_10000A5D4(&qword_100951998);
        v48 = sub_10075DF5C();
        v49 = *(v48 - 8);
        v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_100783DD0;
        (*(v49 + 104))(v51 + v50, enum case for Calendar.Component.second(_:), v48);
        sub_1001799AC(v51);
        swift_setDeallocating();
        (*(v49 + 8))(v51 + v50, v48);
        swift_deallocClassInstance();
        sub_10075DEEC();

        v52 = *(v78 + 8);
        v78 += 8;
        v62 = v52;
        v52(v47, v73);
        sub_10075DF3C();
        v53 = v65;
        (*(v65 + 104))(v74, enum case for Calendar.MatchingPolicy.nextTime(_:), v75);
        v55 = v66;
        v54 = v67;
        (*(v67 + 104))(v66, enum case for Calendar.SearchDirection.forward(_:), v76);
        v57 = v69;
        v56 = v70;
        v58 = v15;
        v59 = v68;
        (*(v69 + 104))(v68, enum case for Calendar.RepeatedTimePolicy.first(_:), v70);
        v60 = v72;
        sub_10075DF4C();
        v61 = v59;
        v15 = v58;
        v37 = v84;
        (*(v57 + 8))(v61, v56);
        (*(v54 + 8))(v55, v76);
        (*(v53 + 8))(v74, v75);
        v62(v60, v73);
        (*(v63 + 8))(v77, v64);
        (*(v9 + 8))(v79, v37);
        sub_10000CFBC(v32, &unk_10094FA00);
        sub_1005E1AD8(v71, v32);
      }

      else
      {
        (*(v9 + 8))(v46, v37);
      }

      goto LABEL_10;
    }
  }

  sub_10000CFBC(v28, &unk_10094FA00);
LABEL_10:
  v38 = v83;
  v39 = v81;
  sub_100016E2C(v32, v81, &unk_10094FA00);
  if ((*(v9 + 48))(v39, 1, v37) == 1)
  {
    (*(v9 + 8))(v15, v37);
    sub_10000CFBC(v32, &unk_10094FA00);
    sub_10000CFBC(v39, &unk_10094FA00);
    v40 = 0;
  }

  else
  {
    v41 = v80;
    (*(v9 + 32))(v80, v39, v37);
    isa = sub_10075DCFC().super.isa;

    v40 = [objc_allocWithZone(NSTimer) initWithFireDate:isa interval:v38 target:"update" selector:0 userInfo:0 repeats:0.0];

    v43 = [objc_opt_self() mainRunLoop];
    [v43 addTimer:v40 forMode:NSRunLoopCommonModes];

    v44 = *(v9 + 8);
    v44(v41, v37);
    v44(v15, v37);
    sub_10000CFBC(v32, &unk_10094FA00);
  }

  v45 = *(v38 + v82);
  *(v38 + v82) = v40;
}

uint64_t sub_1005E15C4()
{

  sub_1005E02D0();
}

void sub_1005E16B8()
{
  sub_1005E19B8(319, &unk_10095FD98, type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1005E1798(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10000A5D4(&unk_10094FA00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1005E1868(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000A5D4(&unk_10094FA00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1005E1918()
{
  sub_10075EF5C();
  if (v0 <= 0x3F)
  {
    sub_1005E19B8(319, &qword_100951390, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1005E19B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1007711AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1005E1A0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10095FD58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005E1A7C(uint64_t a1)
{
  v2 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005E1AD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094FA00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005E1B50()
{
  v0 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10076C2DC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10000A5D4(&qword_100942908);
  __chkstk_darwin(v2 - 8);
  __chkstk_darwin(v3);
  __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  sub_10000A5D4(&qword_100942910);
  sub_10076C20C();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100783DD0;
  sub_10001E290();
  sub_10076C29C();
  sub_10076C28C();
  sub_10076C29C();
  sub_10076C2CC();
  sub_10076C29C();
  sub_10076C29C();
  result = sub_10076C1CC();
  qword_10095FEC0 = v6;
  return result;
}

uint64_t sub_1005E1F2C()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for MessagesSearchViewController();
  objc_msgSendSuper2(&v9, "viewWillLayoutSubviews");
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1005E24A0;
  *(v3 + 24) = v2;
  v8[4] = sub_1000349FC;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1001C5148;
  v8[3] = &unk_10089C088;
  v4 = _Block_copy(v8);
  v5 = v0;

  [v1 performWithoutAnimation:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1005E212C(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for MessagesSearchViewController();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  sub_100761FAC();
  sub_100761F8C();
  sub_100761EFC();
}

void sub_1005E21C8()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943200);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v14 - v4;
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_activeSearchBarObservingViewController])
  {
    v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_activeSearchBarObservingViewController + 8];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v8 = sub_1000BFE68(ObjectType, v6);
    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_objectGraph];
      v10 = sub_10000A5D4(&unk_1009428E0);
      sub_10076F5AC();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v5, 1, v10) == 1)
      {

        sub_1000527AC(v5);
      }

      else
      {
        sub_100263BF0(v8, 1, v9, v5);

        (*(v11 + 8))(v5, v10);
      }
    }
  }

  v12 = [v1 navigationController];
  if (v12)
  {
    v13 = v12;
  }
}

id sub_1005E23A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessagesSearchViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MessagesSearchViewController()
{
  result = qword_10095FEF8;
  if (!qword_10095FEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005E2468()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005E24D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1005E24EC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_descriptionLabel];
  sub_100760D7C();
  if (v3)
  {
    v4 = sub_10076FF6C();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_summaryLabel];
  sub_100760D6C();
  if (v6)
  {
    v7 = sub_10076FF6C();
  }

  else
  {
    v7 = 0;
  }

  [v5 setText:v7];

  return [v1 setNeedsLayout];
}

void sub_1005E266C(void *a1)
{
  v13 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (v13)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      sub_1006EB15C(v3, a1, 1);
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      v6 = OBJC_IVAR____TtC20ProductPageExtension27AnimatedTransitionWithTasks_tasks;
      swift_beginAccess();
      v7 = *(v1 + v6);
      v8 = v13;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v6) = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_10049DEB4(0, *(v7 + 2) + 1, 1, v7);
        *(v1 + v6) = v7;
      }

      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      if (v11 >= v10 >> 1)
      {
        v7 = sub_10049DEB4((v10 > 1), v11 + 1, 1, v7);
      }

      *(v7 + 2) = v11 + 1;
      v12 = &v7[24 * v11];
      *(v12 + 4) = sub_1005E3648;
      *(v12 + 5) = v5;
      v12[48] = 2;
      *(v1 + v6) = v7;
      swift_endAccess();
    }

    else
    {
    }
  }
}

void sub_1005E2824(void *a1)
{
  v2 = v1;
  v89 = sub_10076F08C();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v85 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_10076F0CC();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_10076F0EC();
  v84 = *(v91 - 8);
  __chkstk_darwin(v91);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v81 = &v77 - v10;
  sub_1000730D8(0);
  v11 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v11)
  {
    v12 = v11;
    [a1 finalFrameForViewController:v11];
  }

  else
  {
    v12 = [a1 containerView];
    [v12 bounds];
  }

  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;

  v21 = &v1[OBJC_IVAR____TtC20ProductPageExtension23BouncyFromRectAnimation_fromRect];
  v22 = v1[OBJC_IVAR____TtC20ProductPageExtension23BouncyFromRectAnimation_fromRect + 32];
  if (v22)
  {
    v96.origin.x = v17;
    v96.origin.y = v18;
    v96.size.width = v19;
    v96.size.height = v20;
    v23 = CGRectGetWidth(v96) * 0.2;
    v97.origin.x = v17;
    v97.origin.y = v18;
    v97.size.width = v19;
    v97.size.height = v20;
    v24 = CGRectGetHeight(v97) * 0.2;
    v98.origin.x = v17;
    v98.origin.y = v18;
    v98.size.width = v19;
    v98.size.height = v20;
    v99 = CGRectInset(v98, v23, v24);
    x = v99.origin.x;
    y = v99.origin.y;
    width = v99.size.width;
    height = v99.size.height;
  }

  else
  {
    v25 = v21[2];
    height = v21[3];
    width = v25;
    v26 = *v21;
    y = v21[1];
    x = v26;
  }

  v27 = x;
  v100.origin.x = x;
  v28 = y;
  v100.origin.y = y;
  v29 = width;
  v100.size.width = width;
  v30 = height;
  v100.size.height = height;
  v83 = CGRectGetWidth(v100);
  v101.origin.x = v17;
  v101.origin.y = v18;
  v101.size.width = v19;
  v101.size.height = v20;
  v82 = CGRectGetWidth(v101);
  v102.origin.x = v27;
  v102.origin.y = v28;
  v102.size.width = v29;
  v102.size.height = v30;
  v80 = CGRectGetHeight(v102);
  v103.origin.x = v17;
  v103.origin.y = v18;
  v103.size.width = v19;
  v103.size.height = v20;
  v79 = CGRectGetHeight(v103);
  v104.origin.x = v27;
  x = v27;
  v104.origin.y = v28;
  v104.size.width = v29;
  width = v29;
  v104.size.height = v30;
  height = v30;
  MidX = CGRectGetMidX(v104);
  v105.origin.x = v17;
  v105.origin.y = v18;
  v105.size.width = v19;
  v105.size.height = v20;
  v77 = CGRectGetMidX(v105);
  v106.origin.x = v27;
  v106.origin.y = v28;
  v31 = v28;
  v106.size.width = v29;
  v106.size.height = v30;
  MidY = CGRectGetMidY(v106);
  v107.origin.x = v17;
  v107.origin.y = v18;
  v107.size.width = v19;
  v107.size.height = v20;
  v33 = CGRectGetMidY(v107);
  v34 = sqrt((v83 - v82) * (v83 - v82) + (v80 - v79) * (v80 - v79));
  v35 = sqrt((MidX - v77) * (MidX - v77) + (MidY - v33) * (MidY - v33));
  if (v34 > v35)
  {
    v35 = v34;
  }

  v80 = v35 / 0.7 / v35;
  v108.origin.x = v17;
  v108.origin.y = v18;
  v108.size.width = v19;
  v108.size.height = v20;
  v36 = CGRectGetMidX(v108);
  v37 = x;
  v109.origin.x = x;
  v109.origin.y = v31;
  v109.size.width = width;
  v38 = height;
  v109.size.height = height;
  v39 = v36 - CGRectGetMidX(v109);
  v83 = v17;
  v110.origin.x = v17;
  v40 = v18;
  v110.origin.y = v18;
  v79 = v19;
  v110.size.width = v19;
  v82 = v20;
  v110.size.height = v20;
  MinY = CGRectGetMinY(v110);
  v111.origin.x = v37;
  v111.origin.y = v31;
  v111.size.width = width;
  v111.size.height = v38;
  v42 = MinY - CGRectGetMinY(v111);
  v43 = [a1 viewForKey:UITransitionContextToViewKey];
  v44 = v43;
  if (v43)
  {
    v45 = y + v42;
    v46 = x + v39;
    v47 = v43;
    v48 = [a1 containerView];
    [v48 addSubview:v47];

    [v47 setFrame:{v46, v45, width, height}];
    if (v22)
    {
      [v47 setAlpha:0.0];
    }
  }

  [v44 layoutIfNeeded];
  CATransform3DMakeTranslation(&aBlock, -v39, -v42, 0.0);
  v49 = sub_10076FF6C();
  v50 = [objc_opt_self() animationWithKeyPath:v49];

  v51 = objc_opt_self();
  v52 = v50;
  v53 = [v51 valueWithCATransform3D:&aBlock];
  [v52 setFromValue:v53];

  v54 = *&CATransform3DIdentity.m33;
  *&aBlock.m31 = *&CATransform3DIdentity.m31;
  *&aBlock.m33 = v54;
  v55 = *&CATransform3DIdentity.m43;
  *&aBlock.m41 = *&CATransform3DIdentity.m41;
  *&aBlock.m43 = v55;
  v56 = *&CATransform3DIdentity.m13;
  *&aBlock.m11 = *&CATransform3DIdentity.m11;
  *&aBlock.m13 = v56;
  v57 = *&CATransform3DIdentity.m23;
  *&aBlock.m21 = *&CATransform3DIdentity.m21;
  *&aBlock.m23 = v57;
  v58 = [v51 valueWithCATransform3D:&aBlock];
  [v52 setToValue:v58];

  [v52 setDamping:16.0];
  [v52 setMass:1.0];
  [v52 setStiffness:150.0];
  [v52 setInitialVelocity:v80];
  v59 = v52;
  [v59 settlingDuration];
  [v59 setDuration:?];
  [v59 setFillMode:kCAFillModeBackwards];

  width = *&v44;
  if (*&v44 != 0.0)
  {
    v60 = [*&width layer];
    v61 = sub_10076FF6C();
    [v60 addAnimation:v59 forKey:v61];
  }

  [v59 settlingDuration];
  sub_100085204();
  v62 = sub_10077068C();
  sub_10076F0DC();
  v63 = v81;
  sub_10076F15C();
  height = *(v84 + 8);
  (*&height)(v8, v91);
  v64 = swift_allocObject();
  *(v64 + 16) = a1;
  *(v64 + 24) = v2;
  *&aBlock.m21 = sub_10056D0A8;
  *&aBlock.m22 = v64;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_10009AEDC;
  *&aBlock.m14 = &unk_10089C0D8;
  v65 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  x = COERCE_DOUBLE(v2);

  sub_10076F0AC();
  *&aBlock.m11 = _swiftEmptyArrayStorage;
  sub_1000717C8();
  sub_10000A5D4(&unk_10094E1C0);
  sub_1000852B8();
  v66 = v85;
  v67 = v89;
  sub_1007712CC();
  sub_10077064C();
  _Block_release(v65);

  (*(v88 + 8))(v66, v67);
  (*(v86 + 8))(v6, v87);
  (*&height)(v63, v91);
  v68 = objc_opt_self();
  v69 = swift_allocObject();
  v70 = x;
  v71 = width;
  *(v69 + 16) = x;
  *(v69 + 24) = v71;
  *(v69 + 32) = v83;
  *(v69 + 40) = v40;
  v72 = v82;
  *(v69 + 48) = v79;
  *(v69 + 56) = v72;
  *&aBlock.m21 = sub_1005E3600;
  *&aBlock.m22 = v69;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_10009AEDC;
  *&aBlock.m14 = &unk_10089C128;
  v73 = _Block_copy(&aBlock);
  v74 = *&v71;
  v75 = *&v70;

  *&aBlock.m21 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  aBlock.m22 = 0.0;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_1000513F0;
  *&aBlock.m14 = &unk_10089C150;
  v76 = _Block_copy(&aBlock);
  [v68 animateWithDuration:129 delay:v73 options:v76 animations:0.35 completion:0.0];

  _Block_release(v76);
  _Block_release(v73);
}

id sub_1005E343C(double a1, double a2, double a3, double a4, uint64_t a5, void *a6)
{
  sub_1000730D8(1);
  result = [a6 setFrame:{a1, a2, a3, a4}];
  if (a6)
  {

    return [a6 setAlpha:1.0];
  }

  return result;
}

id sub_1005E3510()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BouncyFromRectAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005E3568()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1005E35A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1005E35C0()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1005E3610()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1005E3648()
{
  v1 = [*(v0 + 16) tabBar];
  [v1 setHidden:0];
}

char *sub_1005E36B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v34 = a1;
  v35 = a3;
  v6 = sub_10076771C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  v13 = OBJC_IVAR____TtC20ProductPageExtension28AlertActionTrailingImageView_label;
  if (qword_100940A20 != -1)
  {
    swift_once();
  }

  v14 = sub_10076D3DC();
  v15 = sub_10000A61C(v14, qword_1009A0C70);
  v16 = *(v14 - 8);
  (*(v16 + 16))(v12, v15, v14);
  (*(v16 + 56))(v12, 0, 1, v14);
  (*(v7 + 104))(v9, enum case for DirectionalTextAlignment.none(_:), v6);
  v17 = objc_allocWithZone(sub_1007626BC());
  *&v4[v13] = sub_1007626AC();
  v18 = OBJC_IVAR____TtC20ProductPageExtension28AlertActionTrailingImageView_imageView;
  v19 = objc_allocWithZone(UIImageView);
  *&v4[v18] = [v19 init];
  v20 = type metadata accessor for AlertActionTrailingImageView();
  v36.receiver = v4;
  v36.super_class = v20;
  v21 = objc_msgSendSuper2(&v36, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v22 = OBJC_IVAR____TtC20ProductPageExtension28AlertActionTrailingImageView_label;
  v23 = *&v21[OBJC_IVAR____TtC20ProductPageExtension28AlertActionTrailingImageView_label];
  v24 = v21;
  v25 = v23;
  if (a2)
  {
    v26 = sub_10076FF6C();
  }

  else
  {
    v26 = 0;
  }

  [v23 setText:v26];

  v27 = *&v21[v22];
  v28 = v21;
  v29 = v27;
  v30 = [v28 tintColor];
  [v29 setTextColor:v30];

  [v28 addSubview:*&v21[v22]];
  v31 = OBJC_IVAR____TtC20ProductPageExtension28AlertActionTrailingImageView_imageView;
  v32 = v35;
  [*&v28[OBJC_IVAR____TtC20ProductPageExtension28AlertActionTrailingImageView_imageView] setImage:v35];
  [v28 addSubview:*&v28[v31]];
  [v28 setLayoutMargins:{10.0, 5.0, 10.0, 5.0}];

  return v28;
}

id sub_1005E3A6C()
{
  v1 = sub_10077164C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AlertActionTrailingImageView();
  v43.receiver = v0;
  v43.super_class = v5;
  objc_msgSendSuper2(&v43, "layoutSubviews");
  [v0 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v0 layoutMargins];
  v16 = sub_100102A30(v7, v9, v11, v13, v14, v15);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28AlertActionTrailingImageView_imageView];
  v24 = [v23 image];
  v44.origin.x = v16;
  v44.origin.y = v18;
  v44.size.width = v20;
  v44.size.height = v22;
  MaxX = CGRectGetMaxX(v44);
  if (v24)
  {
    [v24 size];
    v45.origin.x = v16;
    v45.origin.y = v18;
    v45.size.width = v20;
    v45.size.height = v22;
    CGRectGetMidY(v45);
    [v24 size];
    (*(v2 + 104))(v4, enum case for FloatingPointRoundingRule.down(_:), v1);
    sub_100770CAC();
    v27 = v26;
    v29 = v28;
    (*(v2 + 8))(v4, v1);
    [v24 size];
    v31 = v30;
    v33 = v32;
    sub_100770A4C();
    [v23 setFrame:?];
    v46.origin.x = v27;
    v46.origin.y = v29;
    v46.size.width = v31;
    v46.size.height = v33;
    MinX = CGRectGetMinX(v46);

    MaxX = MinX + -10.0;
  }

  v47.origin.x = v16;
  v47.origin.y = v18;
  v47.size.width = v20;
  v47.size.height = v22;
  v35 = MaxX - CGRectGetMinX(v47);
  if (v35 > 0.0)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0.0;
  }

  v37 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28AlertActionTrailingImageView_label];
  v48.origin.x = v16;
  v48.origin.y = v18;
  v48.size.width = v20;
  v48.size.height = v22;
  [v37 sizeThatFits:{v36, CGRectGetHeight(v48)}];
  v42[1] = v38;
  v39 = [v23 image];
  if (v39)
  {
    v40 = v39;
    [v39 size];
  }

  v49.origin.x = v16;
  v49.origin.y = v18;
  v49.size.width = v20;
  v49.size.height = v22;
  CGRectGetMidX(v49);
  v50.origin.x = v16;
  v50.origin.y = v18;
  v50.size.width = v20;
  v50.size.height = v22;
  CGRectGetMidY(v50);
  sub_100770A4C();
  return [v37 setFrame:?];
}

double sub_1005E3FF8(double a1)
{
  v3 = [*&v1[OBJC_IVAR____TtC20ProductPageExtension28AlertActionTrailingImageView_imageView] image];
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    [v3 size];
    v4 = v6;
  }

  v7 = 10.0;
  if (v4 <= 0.0)
  {
    v7 = 0.0;
  }

  v8 = a1 - v4 - v7;
  if (v8 > 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension28AlertActionTrailingImageView_label];
  type metadata accessor for AlertActionTrailingImageView();
  sub_10076422C();
  [v10 sizeThatFits:{v9, CGRectGetHeight(v12)}];
  [v1 layoutMargins];
  [v1 layoutMargins];
  return a1;
}

id sub_1005E417C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlertActionTrailingImageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1005E4220()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension28AlertActionTrailingImageView_label;
  if (qword_100940A20 != -1)
  {
    swift_once();
  }

  v10 = sub_10076D3DC();
  v11 = sub_10000A61C(v10, qword_1009A0C70);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v9) = sub_1007626AC();
  v14 = OBJC_IVAR____TtC20ProductPageExtension28AlertActionTrailingImageView_imageView;
  *(v1 + v14) = [objc_allocWithZone(UIImageView) init];
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1005E4490()
{
  v0 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v0 - 8);
  v41 = &v34 - v1;
  v44 = sub_10076C2DC();
  v50 = *(v44 - 8);
  __chkstk_darwin(v44);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10000A5D4(&qword_100942908);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v34 - v8;
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  sub_10000A5D4(&qword_100942910);
  v15 = *(sub_10076C20C() - 8);
  v49 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v39 = v17;
  *(v17 + 16) = xmmword_1007844F0;
  v18 = v17 + v16;
  v51 = 0x3FF0000000000000;
  v52 = 0x3FF8000000000000;
  sub_10001E290();
  sub_10076C27C();
  v51 = 0x4030000000000000;
  v52 = 0x4020000000000000;
  sub_10076C27C();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v48 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v50 + 104);
  v50 += 104;
  v25 = v44;
  v24(v3);
  v42 = v24;
  left = UIEdgeInsetsZero.left;
  LOBYTE(v52) = 0;
  sub_10076C29C();
  v52 = 0;
  v47 = v6;
  sub_10076C29C();
  v43 = v18;
  v45 = v14;
  v46 = v11;
  sub_10076C1CC();
  v51 = 0x3FF0000000000000;
  v52 = 0x3FF8000000000000;
  sub_10076C27C();
  v51 = 0x4034000000000000;
  v52 = 0x4024000000000000;
  sub_10076C27C();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  (v24)(v3, v48, v25);
  LOBYTE(v52) = 0;
  sub_10076C29C();
  v52 = 0;
  sub_10076C29C();
  v28 = v49;
  top = UIEdgeInsetsZero.top;
  v38 = left;
  sub_10076C1CC();
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  sub_10076C27C();
  v52 = 0x4034000000000000;
  sub_10076C29C();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_10076C27C();
  v36 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v36;
  v29 = v44;
  v30 = v42;
  (v42)(v3, v48, v44);
  LOBYTE(v52) = 0;
  sub_10076C29C();
  v52 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v35 = 2 * v28 + v49;
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  sub_10076C27C();
  v52 = 0x4034000000000000;
  sub_10076C29C();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_10076C27C();
  *v3 = v36;
  (v30)(v3, v48, v29);
  sub_1007704BC();
  LOBYTE(v52) = 0;
  sub_10076C29C();
  v52 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v35 = 4 * v49;
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  sub_10076C27C();
  v52 = 0x4038000000000000;
  sub_10076C29C();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_10076C27C();
  v36 = vdupq_n_s64(0x404A000000000000uLL);
  *v3 = v36;
  v31 = v48;
  v32 = v44;
  (v42)(v3, v48, v44);
  LOBYTE(v52) = 0;
  sub_10076C29C();
  v52 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  sub_10076C27C();
  v52 = 0x4038000000000000;
  sub_10076C29C();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_10076C27C();
  *v3 = v36;
  (v42)(v3, v31, v32);
  LOBYTE(v52) = 0;
  sub_10076C29C();
  v52 = 0;
  sub_10076C29C();
  result = sub_10076C1CC();
  qword_10095FF80 = v39;
  return result;
}

uint64_t sub_1005E4EC4()
{
  v0 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v0 - 8);
  v40 = &v34 - v1;
  v42 = sub_10076C2DC();
  v49 = *(v42 - 8);
  __chkstk_darwin(v42);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10000A5D4(&qword_100942908);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  sub_10000A5D4(&qword_100942910);
  v16 = *(sub_10076C20C() - 8);
  v48 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v39 = v18;
  *(v18 + 16) = xmmword_1007844F0;
  v46 = v18 + v17;
  v51 = 0x4000000000000000;
  sub_10001E290();
  sub_10076C29C();
  v50 = 0x4030000000000000;
  v51 = 0x4020000000000000;
  sub_10076C27C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v45 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v49 + 104);
  v49 += 104;
  v47 = v24;
  v25 = v42;
  v24(v3);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  v43 = v6;
  sub_10076C29C();
  v41 = v15;
  v44 = v12;
  sub_10076C1CC();
  v51 = 0x4000000000000000;
  sub_10076C29C();
  v50 = 0x4034000000000000;
  v51 = 0x4024000000000000;
  sub_10076C27C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  v47(v3, v45, v25);
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  sub_10076C29C();
  v28 = v48;
  top = UIEdgeInsetsZero.top;
  v38 = left;
  sub_10076C1CC();
  v51 = 0x4000000000000000;
  sub_10076C29C();
  v51 = 0x4034000000000000;
  sub_10076C29C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  v36 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v36;
  v29 = v42;
  v30 = v47;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v35 = 2 * v28 + v48;
  v51 = 0x4000000000000000;
  sub_10076C29C();
  v51 = 0x4034000000000000;
  sub_10076C29C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  *v3 = v36;
  v30(v3, v45, v29);
  sub_1007704BC();
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  sub_10076C29C();
  v34 = v9;
  sub_10076C1CC();
  v35 = 4 * v48;
  v51 = 0x4000000000000000;
  sub_10076C29C();
  v51 = 0x4038000000000000;
  sub_10076C29C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  v36 = vdupq_n_s64(0x404A000000000000uLL);
  *v3 = v36;
  v31 = v45;
  v32 = v42;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v51 = 0x4000000000000000;
  sub_10076C29C();
  v51 = 0x4038000000000000;
  sub_10076C29C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  *v3 = v36;
  v47(v3, v31, v32);
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  sub_10076C29C();
  result = sub_10076C1CC();
  qword_10095FF88 = v39;
  return result;
}

uint64_t sub_1005E58D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v39 = a3;
  ObjectType = swift_getObjectType();
  v10 = sub_10000A5D4(&unk_10094C040);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = (&v38 - v17);
  v40 = sub_10000A5D4(&unk_1009467F0);
  v19 = *(v40 - 8);
  *&v20 = __chkstk_darwin(v40).n128_u64[0];
  v22 = &v38 - v21;
  v23 = [a6 snapshotPageTraitEnvironment];
  *&v7[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_pageTraits] = v23;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v7 setNeedsLayout];
  swift_unknownObjectRelease();
  sub_10076114C();
  v24 = sub_100761DCC();

  if (v24)
  {
    v38 = a1;
    if (qword_1009413D0 != -1)
    {
      swift_once();
    }

    v25 = sub_10000A61C(v13, qword_1009A27F8);
    sub_1000A9194(v25, v18);
    v26 = *v18;
    v27 = v24;

    *v18 = v24;
    sub_1000A9194(v18, v15);
    sub_10000A5D4(&unk_100943120);
    sub_10075FE0C();

    sub_1000A91F8(v18);
  }

  else
  {
    if (qword_1009413D0 != -1)
    {
      swift_once();
    }

    v28 = sub_10000A61C(v13, qword_1009A27F8);
    sub_1000A9194(v28, v18);
    sub_10000A5D4(&unk_100943120);
    sub_10075FE0C();
  }

  v29 = sub_10076114C();
  v30 = v40;
  (*(v19 + 16))(v12, v22, v40);
  (*(v19 + 56))(v12, 0, 1, v30);
  sub_1006098B0(v29, v12, v39);

  sub_1005E5F74(v12);
  v31 = sub_10076113C();
  if (!v31)
  {
    v31 = [objc_opt_self() clearColor];
  }

  v32 = v31;
  v33 = ObjectType;
  v43.receiver = v7;
  v43.super_class = ObjectType;
  objc_msgSendSuper2(&v43, "setBackgroundColor:", v31, v38);
  v34 = *&v7[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_iconView];
  v42.receiver = v7;
  v42.super_class = v33;
  v35 = v34;
  v36 = objc_msgSendSuper2(&v42, "backgroundColor");
  sub_10075FB8C();

  [v7 setNeedsLayout];
  return (*(v19 + 8))(v22, v30);
}

uint64_t sub_1005E5D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_10076523C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10065132C(a5, v9);
  sub_10076525C();
  sub_1005E6210(&qword_10095FFF8, &type metadata accessor for SmallBreakoutLayout);
  sub_10076DBDC();
  (*(v7 + 8))(v9, v6);
  v10 = [objc_opt_self() fractionalWidthDimension:1.0];
  v11 = sub_1007665BC();

  return v11;
}

uint64_t sub_1005E5F74(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_10094C040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1005E5FDC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10076523C();
  __chkstk_darwin(v4 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076525C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10065132C(a3, v6);
  swift_getObjectType();
  sub_1006525E0();
  v11 = sub_10076DDDC();
  swift_allocObject();
  v12 = sub_10076DDBC();
  v17[8] = v11;
  v17[9] = &protocol witness table for LayoutViewPlaceholder;
  v17[5] = v12;
  swift_allocObject();
  v13 = sub_10076DDBC();
  v17[3] = v11;
  v17[4] = &protocol witness table for LayoutViewPlaceholder;
  v17[0] = v13;
  sub_10076524C();
  sub_1005E6210(&qword_10095FFF0, &type metadata accessor for SmallBreakoutLayout);
  sub_10076D2AC();
  v15 = v14;
  (*(v8 + 8))(v10, v7);
  return v15;
}

uint64_t sub_1005E6210(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005E6258@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 1)
  {
    if (qword_100941420 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_1009A2BB0;
  }

  else
  {
    if (qword_100941410 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_1009A28D0;
  }

  return sub_10015E5E0(v4, a1);
}

uint64_t sub_1005E6348@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 1)
  {
    if (qword_100941438 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_1009A3000;
  }

  else
  {
    if (qword_100941418 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_1009A2A40;
  }

  return sub_10015E5E0(v4, a1);
}

double sub_1005E6438()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 horizontalSizeClass];

  result = 16.0;
  if (v1 == 1)
  {
    return 10.0;
  }

  return result;
}

_UNKNOWN **sub_1005E649C()
{
  v0 = objc_opt_self();
  v1 = [v0 currentTraitCollection];
  v2 = [v1 horizontalSizeClass];

  v3 = &off_100882680;
  if (v2 != 1)
  {
    v4 = [v0 currentTraitCollection];
    v5 = sub_10077071C();

    if ((v5 & 1) == 0)
    {
      return &off_1008826E0;
    }
  }

  return v3;
}

double sub_1005E654C(void *a1)
{
  if ([a1 horizontalSizeClass] == 1)
  {
    return 12.0;
  }

  sub_10077071C();
  return 112.0;
}

id sub_1005E65B0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView];
  v3 = objc_opt_self();
  v4 = [v3 currentTraitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 1)
  {
    if (qword_100941420 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_1009A2BB0;
  }

  else
  {
    if (qword_100941410 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_1009A28D0;
  }

  sub_10015E5E0(v6, v24);
  v7 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_metrics;
  swift_beginAccess();
  sub_10015E684(v24, v2 + v7);
  swift_endAccess();
  v8 = [v3 currentTraitCollection];
  v9 = [v8 horizontalSizeClass];

  if (v9 == 1)
  {
    if (qword_100941438 != -1)
    {
      swift_once();
    }

    v10 = &xmmword_1009A3000;
  }

  else
  {
    if (qword_100941418 != -1)
    {
      swift_once();
    }

    v10 = &xmmword_1009A2A40;
  }

  sub_10015E5E0(v10, v24);
  v11 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_10015E684(v24, v2 + v11);
  swift_endAccess();
  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverView];
  if (v12)
  {
    v13 = v12;
    v14 = [v3 currentTraitCollection];
    [v14 horizontalSizeClass];

    v15 = [v3 currentTraitCollection];
    [v15 horizontalSizeClass];

    sub_10076C64C();
  }

  v16 = sub_100356124();
  v17 = [v3 currentTraitCollection];
  v18 = [v17 horizontalSizeClass];

  v19 = &off_100882680;
  if (v18 != 1)
  {
    v20 = [v3 currentTraitCollection];
    v21 = sub_10077071C();

    if ((v21 & 1) == 0)
    {
      v19 = &off_1008826E0;
    }
  }

  sub_1000E5D30(v19);

  v23.receiver = v1;
  v23.super_class = type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundView();
  return objc_msgSendSuper2(&v23, "layoutSubviews");
}

uint64_t sub_1005E6964(void *a1, double a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_10076443C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = v50 - v15;
  if ([a1 horizontalSizeClass] == 1)
  {
    return (*(ObjectType + 312))(a1);
  }

  v50[0] = v16;
  v18 = v4;
  if ([a1 horizontalSizeClass] == 1)
  {
    v19 = 24.0;
    v20 = 12.0;
  }

  else
  {
    if (sub_10077071C())
    {
      v19 = 20.0;
    }

    else
    {
      v19 = 16.0;
    }

    v20 = 112.0;
  }

  v21 = objc_opt_self();
  v22 = [v21 currentTraitCollection];
  v23 = [v22 horizontalSizeClass];

  if (v23 == 1)
  {
    if (qword_100941420 != -1)
    {
      swift_once();
    }

    v24 = &xmmword_1009A2BB0;
  }

  else
  {
    if (qword_100941410 != -1)
    {
      swift_once();
    }

    v24 = &xmmword_1009A28D0;
  }

  v25 = v18;
  sub_10015E5E0(v24, v60);
  v26 = [v21 currentTraitCollection];
  v27 = [v26 horizontalSizeClass];

  v28 = v50[0];
  if (v27 == 1)
  {
    if (qword_100941438 != -1)
    {
      swift_once();
    }

    v29 = &xmmword_1009A3000;
  }

  else
  {
    if (qword_100941418 != -1)
    {
      swift_once();
    }

    v29 = &xmmword_1009A2A40;
  }

  sub_10015E5E0(v29, v57);
  v30 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView);
  sub_1006563D8(&v51);
  v31 = v54;
  v32 = v55;
  v33 = v56;
  sub_10015E58C(&v51);
  if (v33)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v31;
  }

  if (v33)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v32;
  }

  *&v61[32] = v34;
  *&v61[33] = v35;
  v62 = 0;
  *&v58[32] = v34;
  *&v58[33] = v35;
  v59 = 0;
  if (sub_10077071C())
  {
    v36 = v57;
  }

  else
  {
    v36 = v60;
  }

  sub_10015E5E0(v36, &v51);
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v37 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v37 = qword_100944CA0;
  }

  v38 = sub_10000A61C(v9, v37);
  (*(v10 + 16))(v12, v38, v9);
  (*(v10 + 32))(v28, v12, v9);
  if ((v56 & 1) == 0 && v54 == 0.0 && v55 == 0.0)
  {
    sub_1007643EC();
    v40 = v39;
    sub_1007643EC();
    v54 = v40;
    v55 = v41;
    v56 = 0;
  }

  v42 = _s20ProductPageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(&v51, a1, a2);
  v44 = v43;
  (*(v10 + 8))(v28, v9, v42);
  sub_10015E58C(&v51);
  v45 = (a3 - (v19 + v20 + v44 - sub_1005E72E4(v60, v20 + v44, v35))) * 0.5;
  sub_10000CF78(v61, v61[3]);
  sub_10076D3EC();
  v52 = &type metadata for CGFloat;
  v53 = &protocol witness table for CGFloat;
  *&v51 = v45 + v46;
  sub_10000CD74(v61);
  sub_10003F19C(&v51, v61);
  sub_10000CF78(v58, v58[3]);
  sub_10076D3EC();
  v52 = &type metadata for CGFloat;
  v53 = &protocol witness table for CGFloat;
  *&v51 = v45 + v47;
  sub_10000CD74(v58);
  sub_10003F19C(&v51, v58);
  sub_10015E5E0(v60, &v51);
  v48 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_metrics;
  swift_beginAccess();
  sub_10015E684(&v51, v30 + v48);
  swift_endAccess();
  sub_10015E5E0(v57, &v51);
  v49 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_10015E684(&v51, v30 + v49);
  swift_endAccess();
  sub_10015E58C(v57);
  return sub_10015E58C(v60);
}

void sub_1005E6F88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_10076D39C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return;
  }

  v10 = sub_1007601DC();
  if (v10 >> 62)
  {
    v24 = v10;
    v25 = sub_10077158C();
    v10 = v24;
    if (v25)
    {
      goto LABEL_4;
    }

LABEL_15:

    return;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }
  }

  v11 = [objc_opt_self() currentTraitCollection];
  v12 = [v11 horizontalSizeClass];

  if (v12 == 1 && (a4 & 1) == 0)
  {
    v13 = [objc_opt_self() mainScreen];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v27.origin.x = v15;
    v27.origin.y = v17;
    v27.size.width = v19;
    v27.size.height = v21;
    CGRectGetWidth(v27);
  }

  v22 = sub_10076BD4C();
  sub_10076BEFC();
  sub_10076D3AC();
  v23 = (v7 + 8);
  if (v22)
  {
    sub_10076D36C();
  }

  else
  {
    sub_10076D35C();
  }

  (*v23)(v9, v6);
}

double sub_1005E7244(double a1, double a2)
{
  v5 = [objc_opt_self() currentTraitCollection];
  v6 = [v5 horizontalSizeClass];

  [v2 center];
  v8 = a2 * 0.5;
  if (v6 == 1)
  {
    v8 = a2;
  }

  return v7 - (a1 * 0.5 - v8);
}

double sub_1005E72E4(void *a1, double a2, double a3)
{
  v6 = 0.0;
  if ((sub_10077071C() & 1) == 0)
  {
    sub_10000CF78(a1 + 14, a1[17]);
    sub_10076D41C();
    v8 = v7;
    sub_10000CF78(a1 + 19, a1[22]);
    sub_10076D41C();
    v10 = v8 + v9;
    sub_10000CF78(a1 + 24, a1[27]);
    v11 = [v3 traitCollection];
    sub_10076D41C();
    v13 = v12;

    if (v10 <= a3)
    {
      if (v10 + v13 <= a3)
      {
        return v13 * 0.5;
      }

      else
      {
        return (a3 - v10) * 0.5;
      }
    }
  }

  return v6;
}

id sub_1005E7480()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1005E7630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v40 = a3;
  v4 = sub_10076048C();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076389C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = sub_10000A5D4(&qword_100952650);
  __chkstk_darwin(v13 - 8);
  v15 = &v36 - v14;
  v41 = sub_1007610DC();
  sub_10076B90C();
  sub_10076F64C();
  sub_1005E7C5C(&qword_100956710, &type metadata accessor for Action);
  sub_10076F56C();

  v16 = sub_10000A5D4(&qword_100955BD0);
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  v17 = OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_action;
  swift_beginAccess();
  v18 = v15;
  v19 = v3;
  sub_1002F0390(v18, &v3[v17]);
  swift_endAccess();
  v3[OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_hasDivider] = sub_10076109C() & 1;
  sub_1005C7F00();
  sub_1007610BC();
  (*(v7 + 16))(v9, v12, v6);
  if ((*(v7 + 88))(v9, v6) != enum case for RoundedButtonType.share(_:))
  {
    v30 = *(v7 + 8);
    v30(v9, v6);
    v30(v12, v6);
    goto LABEL_7;
  }

  v21 = v36;
  v20 = v37;
  v22 = v38;
  (*(v37 + 104))(v36, enum case for SystemImage.squareAndArrowUp(_:), v38);
  v23 = sub_10076046C();
  (*(v20 + 8))(v21, v22);
  v24 = [v23 imageWithRenderingMode:2];

  (*(v7 + 8))(v12, v6);
  if (!v24)
  {
LABEL_7:
    v29 = *&v19[OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_button];
    [v29 setImage:0 forState:0];
    goto LABEL_8;
  }

  sub_100016F40(0, &qword_100942F00);
  if (qword_100940F70 != -1)
  {
    swift_once();
  }

  v25 = sub_10076D3DC();
  sub_10000A61C(v25, qword_1009A1C48);
  v26 = [v19 traitCollection];
  v27 = sub_100770B3C();

  v28 = [objc_opt_self() configurationWithFont:v27];
  v29 = *&v19[OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_button];
  [v29 setPreferredSymbolConfiguration:v28 forImageInState:0];
  [v29 setContentVerticalAlignment:0];
  [v29 setImage:v24 forState:0];

LABEL_8:
  sub_1007610CC();
  v31 = sub_10076FF6C();

  [v29 setTitle:v31 forState:0];

  v32 = sub_1007610EC();
  if (!v32)
  {
    sub_100016F40(0, &qword_100942F10);
    v32 = sub_100770D6C();
  }

  v33 = v32;
  [v29 setTitleColor:v33 forState:0];
  [v29 setTintColor:v33];

  v34 = sub_1007610AC();
  if (!v34)
  {
    sub_100016F40(0, &qword_100942F10);
    v34 = sub_100770DAC();
  }

  v35 = v34;
  [v29 setBackgroundColor:v34];

  [v19 setNeedsLayout];
}

uint64_t sub_1005E7C5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005E7CA4(void *a1, uint64_t a2)
{
  v4 = sub_10076FA1C();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10076F3BC();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10076F68C();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_10094B168);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_100760EFC();
  v40 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10075DD7C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100766B2C();
  sub_10075DD6C();
  sub_10075DD4C();
  (*(v16 + 8))(v18, v15);
  sub_100766B1C();
  sub_10076F69C();
  v19 = [a1 viewControllers];
  if (v19)
  {
    sub_100016F40(0, &qword_1009453B0);
    v20 = sub_1007701BC();

    v19 = sub_1000C3A80(a2, v20);
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  v23 = [a1 tabBar];
  v24 = [v23 items];

  if (!v24)
  {
    return 1;
  }

  sub_100016F40(0, &unk_100960200);
  v25 = sub_1007701BC();

  result = sub_1007701EC();
  if (result & 1) == 0 || (v22)
  {

    return 1;
  }

  if ((v25 & 0xC000000000000001) != 0)
  {
    v28 = sub_10077149C();
    v27 = v40;
LABEL_13:

    [v28 tag];

    sub_100760ECC();
    if ((*(v27 + 48))(v11, 1, v12) == 1)
    {
      sub_10000CFBC(v11, &qword_10094B168);
    }

    else
    {
      (*(v27 + 32))(v14, v11, v12);
      sub_10076305C();
      sub_100760EAC();
      [a1 selectedIndex];
      sub_10076302C();

      sub_10076F64C();
      v29 = v34;
      sub_10076FC1C();
      v30 = v33;
      sub_10076084C();
      v31 = v36;
      sub_10076F9FC();
      sub_10076F67C();

      (*(v38 + 8))(v31, v39);
      (*(v35 + 8))(v30, v37);
      (*(v32 + 8))(v8, v29);
      (*(v27 + 8))(v14, v12);
    }

    return 1;
  }

  v27 = v40;
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v19 < *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v25 + 8 * v19 + 32);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_1005E8350(void *a1, void *a2)
{
  v4 = sub_10000A5D4(&unk_100958FE0);
  v100 = *(v4 - 8);
  v101 = v4;
  __chkstk_darwin(v4);
  v99 = &v89 - v5;
  v6 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v6 - 8);
  v98 = &v89 - v7;
  v8 = sub_10076F4FC();
  __chkstk_darwin(v8 - 8);
  v96 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100954460);
  __chkstk_darwin(v10 - 8);
  v94 = &v89 - v11;
  v91 = sub_100760A6C();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v93 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v13 - 8);
  v92 = &v89 - v14;
  v97 = sub_10000A5D4(&unk_1009428E0);
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v103 = &v89 - v15;
  v110 = sub_10075F2FC();
  v108 = *(v110 - 8);
  __chkstk_darwin(v110);
  v105 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&qword_1009601F8);
  __chkstk_darwin(v17);
  v104 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v89 - v20;
  v22 = sub_10000A5D4(&qword_10095D440);
  __chkstk_darwin(v22 - 8);
  v106 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v102 = &v89 - v25;
  __chkstk_darwin(v26);
  v28 = &v89 - v27;
  __chkstk_darwin(v29);
  v31 = &v89 - v30;
  __chkstk_darwin(v32);
  v109 = &v89 - v33;
  __chkstk_darwin(v34);
  v112 = &v89 - v35;
  v36 = sub_10000A5D4(&qword_10094B168);
  __chkstk_darwin(v36 - 8);
  v38 = &v89 - v37;
  v39 = sub_100760EFC();
  v113 = *(v39 - 8);
  v114 = v39;
  __chkstk_darwin(v39);
  v41 = &v89 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v111 = &v89 - v43;
  type metadata accessor for StoreNavigationController();
  if (swift_dynamicCastClass())
  {
    v44 = a2;
    sub_10003E6CC();
  }

  v45 = [a1 tabBar];
  v46 = [v45 items];

  if (v46)
  {
    sub_100016F40(0, &unk_100960200);
    v47 = sub_1007701BC();

    if ((sub_1007701EC() & 1) == 0 || (v48 = [a1 selectedIndex], v48 == sub_10075D75C()))
    {

      return;
    }

    v49 = [a1 selectedIndex];
    if ((v47 & 0xC000000000000001) == 0)
    {
      if ((v49 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v49 < *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v50 = *(v47 + 8 * v49 + 32);
        goto LABEL_13;
      }

      __break(1u);
      return;
    }

    v50 = sub_10077149C();
LABEL_13:
    v51 = v50;

    [v51 tag];

    sub_100760ECC();
    v53 = v113;
    v52 = v114;
    if ((*(v113 + 48))(v38, 1, v114) == 1)
    {
      sub_10000CFBC(v38, &qword_10094B168);
      return;
    }

    v54 = v111;
    (*(v53 + 32))(v111, v38, v52);
    v89 = objc_opt_self();
    v55 = v52;
    v56 = [v89 standardUserDefaults];
    v57 = v112;
    sub_10072EA0C(v112);

    v58 = v54;
    v59 = v109;
    (*(v53 + 16))(v41, v58, v55);
    sub_10075F2CC();
    v60 = *(v17 + 48);
    sub_1005E9444(v57, v21);
    sub_1005E9444(v59, &v21[v60]);
    v61 = v108;
    v62 = *(v108 + 48);
    v63 = v110;
    if (v62(v21, 1, v110) == 1)
    {
      if (v62(&v21[v60], 1, v63) == 1)
      {
        sub_10000CFBC(v21, &qword_10095D440);
        v64 = v107;
        v65 = v111;
LABEL_22:
        (*(v61 + 104))(v28, enum case for StoreTab.Identifier.search(_:), v63);
        (*(v61 + 56))(v28, 0, 1, v63);
        v68 = *(v17 + 48);
        v69 = v104;
        sub_1005E9444(v59, v104);
        sub_1005E9444(v28, v69 + v68);
        if (v62(v69, 1, v63) == 1)
        {
          sub_10000CFBC(v28, &qword_10095D440);
          if (v62(v69 + v68, 1, v63) == 1)
          {
            sub_10000CFBC(v69, &qword_10095D440);
LABEL_29:
            v111 = *(v64 + OBJC_IVAR____TtC20ProductPageExtension17TabChangeDelegate_objectGraph);
            v74 = v97;
            sub_10076F5CC();
            v75 = sub_10075DB7C();
            (*(*(v75 - 8) + 56))(v92, 1, 1, v75);
            (*(v90 + 104))(v93, enum case for SearchOrigin.tabBar(_:), v91);
            v76 = sub_100760A5C();
            (*(*(v76 - 8) + 56))(v94, 1, 1, v76);
            sub_10076F4DC();
            v77 = sub_10076096C();
            (*(*(v77 - 8) + 56))(v98, 1, 1, v77);
            v78 = sub_100760A4C();
            swift_allocObject();
            v59 = v109;
            v79 = sub_100760A0C();
            v115[3] = v78;
            v115[4] = sub_1005E94B4(&qword_10094F060, &type metadata accessor for SearchAction);
            v115[0] = v79;
            v81 = v99;
            v80 = v100;
            v82 = v101;
            (*(v100 + 104))(v99, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v101);

            v83 = v103;
            sub_10076F6CC();

            (*(v80 + 8))(v81, v82);
            (*(v95 + 8))(v83, v74);
            sub_10000CD74(v115);
            goto LABEL_30;
          }

          goto LABEL_27;
        }

        v70 = v102;
        sub_1005E9444(v69, v102);
        if (v62(v69 + v68, 1, v63) == 1)
        {
          sub_10000CFBC(v28, &qword_10095D440);
          (*(v108 + 8))(v70, v63);
LABEL_27:
          sub_10000CFBC(v69, &qword_1009601F8);
          goto LABEL_30;
        }

        v71 = v108;
        v72 = v105;
        (*(v108 + 32))(v105, v69 + v68, v63);
        sub_1005E94B4(&qword_100960210, &type metadata accessor for StoreTab.Identifier);
        LODWORD(v111) = sub_10076FF1C();
        v73 = *(v71 + 8);
        v73(v72, v63);
        sub_10000CFBC(v28, &qword_10095D440);
        v73(v70, v63);
        sub_10000CFBC(v69, &qword_10095D440);
        if (v111)
        {
          goto LABEL_29;
        }

LABEL_30:
        sub_100761FAC();
        sub_100761F8C();
        sub_100760EAC();
        sub_100761EFC();

        v84 = [v89 standardUserDefaults];
        v85 = v106;
        sub_1005E9444(v59, v106);
        sub_10072EB44(v85);

        sub_10075F45C();
        sub_10076F63C();
        v86 = v115[0];
        if (v115[0])
        {
          sub_10075F43C();
        }

        sub_100767BFC();
        sub_10076F63C();
        v87 = v115[0];
        v88 = v113;
        if (v115[0])
        {
          sub_100767BEC();
        }

        sub_10000CFBC(v59, &qword_10095D440);
        sub_10000CFBC(v112, &qword_10095D440);
        (*(v88 + 8))(v65, v114);
        return;
      }
    }

    else
    {
      sub_1005E9444(v21, v31);
      if (v62(&v21[v60], 1, v63) != 1)
      {
        (*(v61 + 32))(v105, &v21[v60], v63);
        sub_1005E94B4(&qword_100960210, &type metadata accessor for StoreTab.Identifier);
        v66 = sub_10076FF1C();
        v67 = *(v61 + 8);
        v67(v105, v110);
        v67(v31, v110);
        v59 = v109;
        v63 = v110;
        sub_10000CFBC(v21, &qword_10095D440);
        v64 = v107;
        v65 = v111;
        if ((v66 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_22;
      }

      (*(v61 + 8))(v31, v63);
    }

    sub_10000CFBC(v21, &qword_1009601F8);
    v65 = v111;
    goto LABEL_30;
  }
}

uint64_t sub_1005E9444(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10095D440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005E94B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1005E9510()
{
  result = qword_100960218;
  if (!qword_100960218)
  {
    sub_10076363C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100960218);
  }

  return result;
}

uint64_t sub_1005E9568(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076F50C();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    sub_10076FCAC();
  }

  else
  {
    (*(v4 + 104))(v7, enum case for ActionOutcome.performed(_:), v3, v5);
    sub_10076FCBC();
    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1005E96A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_10076FE4C();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

id sub_1005E9754()
{
  v0 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v0 - 8);
  v2 = aBlock - v1;
  v3 = sub_100765F9C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10075DB7C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_100942C70);
  v11 = sub_10076FCEC();
  sub_10076362C();
  sub_100765F8C();
  (*(v4 + 8))(v6, v3);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    sub_1001B82AC(v2);
    sub_1005E9AC4();
    swift_allocError();
    sub_10076FCAC();

    return v11;
  }

  (*(v8 + 32))(v10, v2, v7);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v14 = result;
    sub_10075DB1C(v13);
    v16 = v15;
    v17 = [objc_allocWithZone(_LSOpenConfiguration) init];
    aBlock[4] = sub_1005E9B18;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1005E96A0;
    aBlock[3] = &unk_10089C290;
    v18 = _Block_copy(aBlock);

    [v14 openURL:v16 configuration:v17 completionHandler:v18];
    _Block_release(v18);

    (*(v8 + 8))(v10, v7);
    return v11;
  }

  __break(1u);
  return result;
}

unint64_t sub_1005E9AC4()
{
  result = qword_100960220;
  if (!qword_100960220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100960220);
  }

  return result;
}

uint64_t sub_1005E9B20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1005E9B4C()
{
  result = qword_100960228;
  if (!qword_100960228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100960228);
  }

  return result;
}

id sub_1005E9BA0(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyViewController_adPrivacyHeaderIconView;
  *&v5[v11] = [objc_allocWithZone(type metadata accessor for OnboardingAdPrivacyHeaderIconView()) init];
  v5[OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyViewController_buttonsStyle] = a1 & 1;
  v12 = &v5[OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyViewController_buttonsCallback];
  *v12 = a3;
  v12[1] = a4;

  v19._object = 0x80000001007F1220;
  v19._countAndFlagsBits = 0xD000000000000025;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  sub_1007622EC(v19, v20);
  sub_10076551C();
  v13 = sub_10076FF6C();

  v14 = sub_10076FF6C();

  v18.receiver = v5;
  v18.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v18, "initWithTitle:detailText:icon:contentLayout:", v13, v14, 0, 2);

  v16 = v15;
  [v16 setModalInPresentation:1];
  [v16 setDisableButtonsUntilAllContentWasVisable:a2 & 1];

  return v16;
}

void sub_1005E9D38()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v53 = sub_10076F9AC();
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_10095B400);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - v5;
  v7 = sub_10077111C();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58.receiver = v1;
  v58.super_class = ObjectType;
  objc_msgSendSuper2(&v58, "viewDidLoad", v9);
  v12 = [v1 headerView];
  LODWORD(v13) = 1036831949;
  [v12 setTitleHyphenationFactor:v13];

  v14 = [v1 headerView];
  v15 = [v14 customIconContainerView];

  if (v15)
  {
    [v15 addSubview:*&v1[OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyViewController_adPrivacyHeaderIconView]];
  }

  v16 = [objc_opt_self() accessoryButton];
  v59._countAndFlagsBits = 0xD00000000000002ALL;
  v59._object = 0x80000001007F12F0;
  v62._countAndFlagsBits = 0;
  v62._object = 0xE000000000000000;
  sub_1007622EC(v59, v62);
  v17 = sub_10076FF6C();

  [v16 setTitle:v17 forState:0];

  [v16 addTarget:v1 action:"didTapLearnMore" forControlEvents:64];
  v18 = v16;
  v19 = sub_10076FF6C();
  [v18 setAccessibilityIdentifier:v19];

  v20 = [v1 headerView];
  v51 = v18;
  [v20 addAccessoryButton:v18];

  v21 = v1[OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyViewController_buttonsStyle];
  v22 = objc_opt_self();
  v23 = [v22 boldButton];
  v24 = v23;
  if (v21)
  {
    v25 = objc_opt_self();
    v26 = v24;
    v27 = [v25 linkButton];
  }

  else
  {
    v48 = v23;
    v47 = [v22 boldButton];
    sub_10077109C();
    v28 = objc_opt_self();
    v29 = [v28 systemBlueColor];
    sub_10077104C();
    v30 = [v28 systemGray5Color];
    v31 = sub_100770F5C();
    sub_10076E46C();
    v31(&v56, 0);
    v32 = *(v8 + 16);
    v32(v6, v11, v7);
    v49 = v1;
    v33 = v24;
    v34 = *(v8 + 56);
    v34(v6, 0, 1, v7);
    v35 = v48;
    sub_10077114C();

    v32(v6, v11, v7);
    v34(v6, 0, 1, v7);
    v24 = v33;
    v1 = v49;
    v36 = v47;
    sub_10077114C();
    v27 = v36;

    (*(v8 + 8))(v11, v7);
  }

  v37 = v24;
  v60._countAndFlagsBits = 0xD000000000000027;
  v60._object = 0x80000001007F1350;
  v63._countAndFlagsBits = 0;
  v63._object = 0xE000000000000000;
  sub_1007622EC(v60, v63);
  v38 = sub_10076FF6C();

  [v37 setTitle:v38 forState:0];

  [v37 addTarget:v1 action:"didTapTurnOn" forControlEvents:64];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v39 = v52;
  sub_10076F8FC();
  sub_1000258C0(&v54);
  sub_1000258C0(&v56);
  sub_100770B9C();

  v40 = *(v50 + 8);
  v41 = v53;
  v40(v39, v53);
  v42 = [v1 buttonTray];
  [v42 addButton:v37];

  v43 = v27;
  v61._countAndFlagsBits = 0xD000000000000028;
  v61._object = 0x80000001007F1380;
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  sub_1007622EC(v61, v64);
  v44 = sub_10076FF6C();

  [v43 setTitle:v44 forState:0];

  [v43 addTarget:v1 action:"didTapTurnOff" forControlEvents:64];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  sub_10076F8FC();
  sub_1000258C0(&v54);
  sub_1000258C0(&v56);
  sub_100770B9C();

  v40(v39, v41);
  v45 = [v1 buttonTray];
  [v45 addButton:v43];
}

uint64_t sub_1005EA520()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076F08C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F0CC();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "viewDidLayoutSubviews", v9);
  sub_1005EA7D0();
  sub_100085204();
  v12 = sub_10077068C();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1005EAEF4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10089C370;
  v14 = _Block_copy(aBlock);

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000717C8();
  sub_10000A5D4(&unk_10094E1C0);
  sub_1000852B8();
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v14);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v11, v7);
}

void sub_1005EA7D0()
{
  v1 = v0;
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 headerView];
  v8 = [v7 customIconContainerView];

  if (v8)
  {
    v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyViewController_adPrivacyHeaderIconView];
    [v8 bounds];
    v10 = OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView_label;
    [*&v9[OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView_label] sizeToFit];
    [*&v9[v10] frame];
    (*(v3 + 104))(v6, enum case for FloatingPointRoundingRule.up(_:), v2);
    sub_100770AAC();
    v12 = v11;
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    [v8 bounds];
    v15 = CGRectGetMidX(v17) - v12 * 0.5;
    [v8 bounds];
    [v9 setFrame:{v15, CGRectGetMidY(v18) - v14 * 0.5, v12, v14}];
  }
}

void sub_1005EA9D4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  MidX = 0.0;
  if (Strong && (v2 = Strong, v3 = [Strong headerView], v2, v4 = objc_msgSend(v3, "customIconContainerView"), v3, v4))
  {
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v28.origin.x = v6;
    v28.origin.y = v8;
    v28.size.width = v10;
    v28.size.height = v12;
    MidX = CGRectGetMidX(v28);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (!v14)
  {
    if (v13)
    {
      return;
    }

    goto LABEL_12;
  }

  v15 = v14;
  v16 = *(v14 + OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyViewController_adPrivacyHeaderIconView);

  [v16 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v29.origin.x = v18;
  v29.origin.y = v20;
  v29.size.width = v22;
  v29.size.height = v24;
  if (MidX == CGRectGetMidX(v29))
  {
    v25 = v13;
  }

  else
  {
    v25 = 1;
  }

  if (v25 == 1)
  {
LABEL_12:
    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v27 = v26;
      sub_1005EA7D0();
    }
  }
}

void sub_1005EAC38()
{
  v1 = sub_10076FF6C();
  v2 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v1];

  if (v2)
  {
    [v2 setPresentingViewController:v0];
  }

  [v2 present];
}

uint64_t sub_1005EAEBC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005EAEFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1005EAF60()
{
  *&v72 = sub_10000A5D4(&qword_1009528B8);
  v67 = *(v72 - 8);
  __chkstk_darwin(v72);
  v66 = &v63 - v0;
  v1 = sub_10076D9AC();
  v71 = *(v1 - 8);
  __chkstk_darwin(v1);
  v83 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v81 = &v63 - v4;
  v82 = sub_10076DA7C();
  v70 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076D7FC();
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v65 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = &v63 - v9;
  v77 = sub_10076DD3C();
  v84 = *(v77 - 8);
  __chkstk_darwin(v77);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v63 - v13;
  __chkstk_darwin(v15);
  v17 = &v63 - v16;
  __chkstk_darwin(v18);
  v68 = &v63 - v19;
  v20 = sub_10076D3DC();
  v75 = *(v20 - 8);
  v76 = v20;
  __chkstk_darwin(v20);
  v74 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10076C38C();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007621CC();
  sub_1005EBB38(&unk_100960280, &type metadata accessor for ProductPageLink);
  result = sub_10076332C();
  v27 = v85[0];
  if (v85[0])
  {
    v64 = v1;
    swift_getKeyPath();
    sub_10076338C();

    v28 = v85[0];
    v73 = v27;
    sub_1007621AC();
    if (v29)
    {
      v30 = sub_10076045C();

      v31 = v30;
      [v31 size];
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
      sub_100770A8C();
    }

    if (qword_10093FE80 != -1)
    {
      swift_once();
    }

    v32 = sub_10000A5D4(&unk_100945BD0);
    sub_10000A61C(v32, qword_10099E680);
    sub_10075FDBC();
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C2FC();
    (*(v23 + 8))(v25, v22);
    if (sub_1007706FC())
    {
      v33 = v76;
      v34 = v77;
      v35 = v84;
      v36 = v75;
      v37 = v74;
      if (qword_100940CB8 != -1)
      {
        swift_once();
      }

      v38 = qword_1009A1420;
    }

    else
    {
      v33 = v76;
      v34 = v77;
      v35 = v84;
      v36 = v75;
      v37 = v74;
      if (qword_100940CB0 != -1)
      {
        swift_once();
      }

      v38 = qword_1009A1408;
    }

    v39 = sub_10000A61C(v33, v38);
    (*(v36 + 16))(v37, v39, v33);
    sub_10076DD2C();
    sub_10076DCFC();
    v42 = *(v35 + 8);
    v40 = v35 + 8;
    v41 = v42;
    v42(v11, v34);
    if (qword_10093FE88 != -1)
    {
      swift_once();
    }

    v43 = sub_10000A5D4(&unk_10094C370);
    sub_10000A61C(v43, qword_10099E698);
    sub_10075FDBC();
    sub_10076DD1C();
    v41(v14, v34);
    v44 = v41;
    v63 = v41;
    v45 = v68;
    sub_10076DD0C();
    v44(v17, v34);
    v46 = v69;
    sub_10076D7EC();
    sub_10076DCAC();
    v84 = v40;
    sub_10000CF78(v85, v85[3]);
    sub_10076D85C();
    sub_10076D7CC();
    sub_10000CD74(v85);
    sub_10076DCEC();
    sub_10076D77C();
    sub_10076DCCC();
    sub_10076D75C();
    sub_10076DCDC();
    sub_10076D76C();
    sub_10076DCBC();
    sub_10076D74C();
    sub_1007621BC();
    (*(v78 + 16))(v65, v46, v79);
    sub_10076DA5C();
    sub_10076DA8C();
    v47 = v66;
    sub_100321D80(v66);
    v48 = v72;
    sub_10075FDBC();
    v49 = *(v67 + 8);
    v49(v47, v48);
    sub_100321D74(v47);
    sub_10075FDBC();
    v49(v47, v48);
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870);
    v50 = swift_allocObject();
    v72 = xmmword_1007841E0;
    *(v50 + 16) = xmmword_1007841E0;
    *(v50 + 32) = v28;
    v51 = v28;
    v52 = sub_10076DEEC();
    sub_10076D2AC();

    v53 = swift_allocObject();
    *(v53 + 16) = v72;
    *(v53 + 32) = v51;
    v54 = v51;
    v55 = sub_10076DEEC();
    v56 = v81;
    v57 = v64;
    sub_10076D3EC();

    v58 = swift_allocObject();
    *(v58 + 16) = v72;
    *(v58 + 32) = v54;
    v59 = v54;
    v60 = sub_10076DEEC();
    v61 = v83;
    sub_10076D3EC();

    v62 = *(v71 + 8);
    v62(v61, v57);
    v62(v56, v57);
    (*(v70 + 8))(v80, v82);
    (*(v78 + 8))(v46, v79);
    v63(v45, v77);
    return (*(v75 + 8))(v74, v76);
  }

  return result;
}

uint64_t sub_1005EBB38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for VideoView()
{
  result = qword_100960330;
  if (!qword_100960330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005EBBD4()
{
  sub_1005F3114();
  if (v0 <= 0x3F)
  {
    sub_10075DB7C();
    if (v1 <= 0x3F)
    {
      sub_10076481C();
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_1005EBD8C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_10077130C();
    v5 = v4;
    v6 = sub_1007713AC();
    v8 = v7;
    v9 = sub_10077132C();
    sub_100032734(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_100032734(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_1007712DC();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1005F3F8C(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_100032734(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_1005EBEA8()
{
  v1 = v0;
  v2 = sub_10076481C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_1009A2558;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  LOBYTE(v6) = sub_10076477C();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = sub_10076922C();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1005EBFD4()
{
  v1 = v0;
  v2 = qword_1009602F0;
  v3 = *(v0 + qword_1009602F0);
  if (v3 || (sub_1005ECC94(), (v3 = *(v0 + v2)) != 0))
  {
    v4 = v3;
    v5 = sub_10076051C();

    if ((v5 & 1) == 0)
    {
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = *(v1 + v2);
      if (v7)
      {
        swift_retain_n();
        v8 = v7;
        if ([v8 isMuted] & 1) != 0 && ((*((swift_isaMask & *v1) + qword_1009A2568 + 752))())
        {

          sub_1001F0F38(sub_1005F5FB4, v6);

LABEL_12:

          return;
        }
      }

      else
      {
        swift_retain_n();
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        v11 = *(Strong + qword_1009602F0);

        [v11 play];

        return;
      }

      goto LABEL_12;
    }
  }
}

uint64_t sub_1005EC1A0()
{
  sub_10076394C();
  v0 = sub_10076395C();

  return v0();
}

void sub_1005EC1E8(uint64_t a1)
{
  sub_10076394C();
  v2 = sub_10076395C();
  v2(a1);

  sub_1005F2048();
}

void (*sub_1005EC248(uint64_t *a1))(void *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  sub_10076394C();
  v5 = sub_10076395C();
  *(v4 + 40) = v5(v4);
  return sub_1005EC2E8;
}

void sub_1005EC2E8(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_1005F2048();
  }

  free(v3);
}

uint64_t sub_1005EC344(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_1009602C0 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v3 = *(v2 + qword_1009602F0);
  if (v3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension15VideoMirrorView_videoLayer);
      v6 = v3;
      [v5 setPlayer:v6];
      swift_unknownObjectRelease();
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1005EC3F0()
{
  v1 = *(v0 + qword_1009602F0);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 currentItem];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 tracks];

  sub_100016F40(0, &unk_100960480);
  v5 = sub_1007701BC();

  if (v5 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_10077149C();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 assetTrack];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 mediaType];

        v14 = sub_10076FF9C();
        v16 = v15;
        if (v14 == sub_10076FF9C() && v16 == v17)
        {

LABEL_23:
          i = 1;
          goto LABEL_24;
        }

        v19 = sub_10077167C();

        if (v19)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }

      ++v7;
      if (v10 == i)
      {
        i = 0;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_24:

  return i;
}

uint64_t sub_1005EC628@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = sub_10076481C();
  v4 = *(v29 - 8);
  __chkstk_darwin(v29);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007611EC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + qword_1009A2528);
  if (v12)
  {
    v28[0] = v9;
    v28[1] = a1;

    v13 = sub_10076922C();
    v14 = qword_1009A2558;
    v15 = (v4 + 16);
    v16 = (v4 + 8);
    if (v13)
    {
      swift_beginAccess();
      v17 = v2 + v14;
      v18 = v29;
      (*v15)(v6, v17, v29);
      sub_1007647CC();
    }

    else
    {
      swift_beginAccess();
      v24 = v2 + v14;
      v18 = v29;
      (*v15)(v6, v24, v29);
      sub_10076479C();
    }

    (*v16)(v6, v18);
    v25 = sub_10076922C();
    v12(v11, v25 & 1);
    sub_1000167E0(v12);
    return (*(v8 + 8))(v11, v28[0]);
  }

  else
  {
    v19 = sub_10076922C();
    v20 = qword_1009A2558;
    v21 = (v4 + 16);
    if (v19)
    {
      swift_beginAccess();
      v22 = v2 + v20;
      v23 = v29;
      (*v21)(v6, v22, v29);
      sub_1007647CC();
    }

    else
    {
      swift_beginAccess();
      v27 = v2 + v20;
      v23 = v29;
      (*v21)(v6, v27, v29);
      sub_10076479C();
    }

    return (*(v4 + 8))(v6, v23);
  }
}

uint64_t sub_1005EC950@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100762EDC();
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + qword_1009602F0);
  if (v8)
  {
    v14 = v4;
    v9 = v8;
    sub_10076055C();

    return (*(v14 + 32))(a1, v7, v3);
  }

  else
  {
    v11 = enum case for VideoPlayerState.unknown(_:);
    v12 = *(v4 + 104);

    return v12(a1, v11, v3, v5);
  }
}

uint64_t sub_1005ECA84(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_10076481C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  v11 = qword_1009A2558;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v7, v2 + v11, v4);
  sub_1005F4A14(&unk_100960470, &type metadata accessor for VideoConfiguration);
  LOBYTE(v11) = sub_10076FF1C();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if ((v11 & 1) == 0)
  {
    sub_1005F41B0();
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

void sub_1005ECC94()
{
  v1 = v0;
  v2 = sub_10075DB7C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005EE4F4();
  v6 = qword_1009602F0;
  v7 = *(v0 + qword_1009602F0);
  if (v7 || (((*(v3 + 16))(v5, v0 + qword_1009A2520, v2), v8 = objc_allocWithZone(sub_1007605BC()), v9 = sub_10076054C(), (v10 = *(v0 + v6)) == 0) ? (v12 = 0) : (v11 = v10, sub_10076057C(), v11, v12 = *(v1 + v6)), *(v1 + v6) = v9, v13 = v9, v12, sub_1005F0550(), v13, (v7 = *(v1 + v6)) != 0))
  {
    v14 = v7;
    sub_10076052C();
  }
}

void sub_1005ECDF4(char a1)
{
  if (a1)
  {
    v2 = *(v1 + qword_1009602F8);
    if (v2)
    {
      v7[4] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
      v7[5] = 0;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_1005F04D8;
      v7[3] = &unk_10089C6E8;
      v3 = _Block_copy(v7);
      v4 = v2;
      [v4 exitFullScreenAnimated:0 completionHandler:v3];
      _Block_release(v3);
    }

    v5 = *(v1 + qword_1009602F0);
    if (v5)
    {
      v6 = v5;
      sub_10076050C();
    }
  }

  else
  {
    *(v1 + qword_100960328) = 1;
  }
}

void sub_1005ECEF4()
{
  v1 = qword_1009602F8;
  v2 = *(v0 + qword_1009602F8);
  if (v2)
  {
    v3 = [v2 view];
  }

  else
  {
    v3 = 0;
  }

  [v3 removeFromSuperview];

  v4 = *(v0 + v1);
  *(v0 + v1) = 0;
}

uint64_t sub_1005ECF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v39 = a1;
  v5 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v5 - 8);
  v40 = &v37 - v6;
  v7 = sub_10000A5D4(&qword_100960460);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = sub_10000A5D4(&qword_100960468);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v13 - 8);
  v15 = &v37 - v14;
  v16 = sub_10076F3BC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016E2C(v3 + qword_1009A24F0, v15, &unk_10094C030);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    v38 = a3;
    (*(v17 + 32))(v19, v15, v16);
    v21 = qword_1009602F0;
    v22 = *(v3 + qword_1009602F0);
    if (!v22)
    {
      (*(v17 + 8))(v19, v16);
      v20 = 1;
      a3 = v38;
      return (*(v17 + 56))(a3, v20, 1, v16);
    }

    v23 = v3;
    v24 = v22;
    v25 = sub_1007604FC();
    if (v25)
    {
      v26 = *(v23 + v21);
      if (v26)
      {
        v27 = [v26 currentItem];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 asset];

          v30 = sub_10076FF6C();
          v31 = [v29 statusOfValueForKey:v30 error:0];

          if (v31 == 2)
          {
            [v25 duration];
            [v25 currentTime];
            CMTimeGetSeconds(&time);

LABEL_12:
            v32 = sub_1007635BC();
            v33 = *(v32 - 8);
            (*(v33 + 16))(v12, v39, v32);
            (*(v33 + 56))(v12, 0, 1, v32);
            v34 = sub_1007635CC();
            (*(*(v34 - 8) + 56))(v9, 1, 1, v34);
            v35 = v40;
            sub_10076058C();
            a3 = v38;
            sub_1007635EC();

            sub_10000CFBC(v35, &unk_1009435D0);
            sub_10000CFBC(v9, &qword_100960460);
            sub_10000CFBC(v12, &qword_100960468);
            (*(v17 + 8))(v19, v16);
            v20 = 0;
            return (*(v17 + 56))(a3, v20, 1, v16);
          }
        }
      }
    }

    v37 = 0;
    goto LABEL_12;
  }

  sub_10000CFBC(v15, &unk_10094C030);
  v20 = 1;
  return (*(v17 + 56))(a3, v20, 1, v16);
}

uint64_t sub_1005ED500@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_10000A5D4(&unk_100960400);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = sub_1007635BC();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, enum case for MediaMetricsEvent.ActionType.stop(_:), v12, v14);
  if (a2)
  {
    v17 = enum case for MediaMetricsEvent.ActionDetails.complete(_:);
    v18 = sub_1007635DC();
    (*(*(v18 - 8) + 104))(v8, v17, v18);
  }

  else
  {
    v18 = sub_1007635DC();
    if (a1)
    {
      v19 = &enum case for MediaMetricsEvent.ActionDetails.pause(_:);
    }

    else
    {
      v19 = &enum case for MediaMetricsEvent.ActionDetails.autopause(_:);
    }

    (*(*(v18 - 8) + 104))(v8, *v19, v18);
  }

  sub_1007635DC();
  (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  sub_1005F5F44(v8, v11);
  sub_1005ECF74(v16, v11, a3);
  sub_10000CFBC(v11, &unk_100960400);
  return (*(v13 + 8))(v16, v12);
}

id sub_1005ED780()
{
  v1 = qword_100960308;
  result = [*&v0[qword_100960308] isHidden];
  if ((result & 1) == 0)
  {
    v3 = *&v0[v1];
    [v0 bounds];
    [v3 sizeThatFits:{v4, v5}];
    v7 = v6;
    v9 = v8;

    v10 = &v0[qword_1009A2510];
    if (v0[qword_1009A2510 + 16])
    {
      [v0 bounds];
      x = v19.origin.x;
      y = v19.origin.y;
      width = v19.size.width;
      height = v19.size.height;
      MidX = CGRectGetMidX(v19);
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      MidY = CGRectGetMidY(v20);
    }

    else
    {
      MidX = *v10;
      MidY = v10[1];
    }

    v17 = *&v0[v1];

    return [v17 setFrame:{MidX - v7 * 0.5, MidY - v9 * 0.5, v7, v9}];
  }

  return result;
}

uint64_t sub_1005ED8D0()
{
  v1 = v0;
  v94 = sub_1007611EC();
  v2 = *(v94 - 8);
  __chkstk_darwin(v94);
  v4 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v96 = &v84 - v6;
  v7 = sub_100762EDC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v84 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v85 = &v84 - v12;
  __chkstk_darwin(v13);
  v86 = &v84 - v14;
  __chkstk_darwin(v15);
  v92 = &v84 - v16;
  __chkstk_darwin(v17);
  v19 = &v84 - v18;
  v22 = __chkstk_darwin(v20);
  v23 = &v84 - v21;
  v24 = qword_100960328;
  v25 = v1[qword_100960328];
  v89 = v8;
  v87 = v26;
  if (v25 == 1)
  {
    v91 = v2;
    v27 = *&v1[qword_1009602F0];
    if (v27)
    {
      v28 = v27;
      sub_10076055C();

      (*(v8 + 32))(v23, v19, v7);
      v29 = *(v8 + 104);
    }

    else
    {
      v29 = *(v8 + 104);
      v29(&v84 - v21, enum case for VideoPlayerState.unknown(_:), v7, v22);
    }

    v32 = v92;
    (v29)(v92, enum case for VideoPlayerState.paused(_:), v7);
    v33 = sub_100762ECC();
    v34 = *(v8 + 8);
    v34(v32, v7);
    v34(v23, v7);
    if (v33)
    {
      v1[v24] = 0;
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = sub_1005F5F3C;
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    v2 = v91;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v35 = qword_1009602F0;
  v36 = *&v1[qword_1009602F0];
  v88 = v7;
  v95 = v31;
  v90 = qword_1009602F0;
  if (!v36)
  {
    v43 = v2;
    v48 = 0;
    v49 = &v1[qword_1009A2540];
    v50 = v1[qword_1009A2540] ^ 1;
    goto LABEL_22;
  }

  v37 = [v36 currentItem];
  if (v37)
  {
    v38 = v4;
    v39 = v2;
    v40 = v37;
    [v37 currentTime];
    sub_100770B1C(0.0, 1000000000);
    v41 = sub_100770B0C();

    v2 = v39;
    v4 = v38;
    v31 = v95;
    v42 = *&v1[v35];
    if (v42)
    {
      goto LABEL_13;
    }

LABEL_17:
    v43 = v2;
    v45 = 0;
    goto LABEL_18;
  }

  v41 = 1;
  v42 = *&v1[v35];
  if (!v42)
  {
    goto LABEL_17;
  }

LABEL_13:
  v43 = v2;
  v44 = v42;
  v45 = sub_10076059C();

  v46 = *&v1[v35];
  if (!v46)
  {
LABEL_18:
    v48 = 0;
    goto LABEL_19;
  }

  v47 = v46;
  v48 = sub_1007605AC();

LABEL_19:
  v49 = &v1[qword_1009A2540];
  v51 = v1[qword_1009A2540] | v48;
  v52 = v51 | v41;
  v50 = v51 ^ 1;
  if ((v52 & 1) == 0 && (v45 & 1) == 0)
  {
    v48 = 0;
    v50 = v1[qword_1009602E8];
  }

LABEL_22:
  v53 = v1[qword_1009602D8];
  v93 = v30;
  sub_1005EE16C(v50 & 1, v53, v30, v31);
  v54 = v96;
  sub_1005EC628(v96);
  sub_1007611CC();
  sub_1005F4A14(&unk_1009603F0, &type metadata accessor for VideoControls);
  v55 = v94;
  v56 = sub_10077124C();
  v59 = *(v43 + 8);
  v57 = v43 + 8;
  v58 = v59;
  v59(v4, v55);
  if (v56)
  {
    v60 = v48 ^ 1;
  }

  else
  {
    sub_1007611DC();
    v61 = sub_10077124C();
    v58(v4, v55);
    if (v61)
    {
      v62 = *&v1[v90];
      v91 = v57;
      if (v62)
      {
        v63 = v62;
        v64 = v85;
        sub_10076055C();

        v65 = v88;
        v66 = v89;
        v67 = v86;
        (*(v89 + 32))(v86, v64, v88);
        v68 = *(v66 + 104);
      }

      else
      {
        v65 = v88;
        v66 = v89;
        v68 = *(v89 + 104);
        v67 = v86;
        (v68)(v86, enum case for VideoPlayerState.unknown(_:), v88);
      }

      v69 = v92;
      v86 = v68;
      (v68)(v92, enum case for VideoPlayerState.paused(_:), v65);
      v70 = sub_100762ECC();
      v71 = *(v66 + 8);
      v71(v69, v65);
      v71(v67, v65);
      if (v70)
      {
        v60 = 1;
        v55 = v94;
        v54 = v96;
      }

      else
      {
        v72 = *&v1[v90];
        if (v72)
        {
          v73 = v72;
          v74 = v84;
          sub_10076055C();

          (*(v89 + 32))(v87, v74, v65);
          v54 = v96;
          v75 = v86;
        }

        else
        {
          v75 = v86;
          (v86)(v87, enum case for VideoPlayerState.unknown(_:), v65);
          v54 = v96;
        }

        v76 = v92;
        (v75)(v92, enum case for VideoPlayerState.ended(_:), v65);
        v77 = v87;
        v60 = sub_100762ECC();
        v71(v76, v65);
        v71(v77, v65);
        v55 = v94;
      }
    }

    else
    {
      v60 = 0;
      v54 = v96;
    }
  }

  v78 = v60 & ~*v49;
  v79 = objc_opt_self();
  v80 = swift_allocObject();
  *(v80 + 16) = v1;
  *(v80 + 24) = v78 & 1;
  aBlock[4] = sub_1005F5F08;
  aBlock[5] = v80;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10089C6C0;
  v81 = _Block_copy(aBlock);
  v82 = v1;

  [v79 animateWithDuration:4 delay:v81 options:0 animations:0.2 completion:0.0];
  _Block_release(v81);
  sub_1000167E0(v93);
  return (v58)(v54, v55);
}

void sub_1005EE16C(char a1, char a2, uint64_t (*a3)(), uint64_t a4)
{
  if (a2)
  {
    v8 = a1 & 1;
    if (a1)
    {
      v9 = 0.2;
    }

    else
    {
      v9 = 0.5;
    }

    v10 = swift_allocObject();
    *(v10 + 16) = v4;
    *(v10 + 24) = v8;
    v27 = sub_1005F5EFC;
    v28 = v10;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10009AEDC;
    v26 = &unk_10089C5F8;
    v11 = _Block_copy(&v23);
    v12 = v4;

    if (a3)
    {
      v27 = a3;
      v28 = a4;
      v23 = _NSConcreteStackBlock;
      v24 = 1107296256;
      v25 = sub_1000513F0;
      v26 = &unk_10089C670;
      a3 = _Block_copy(&v23);
    }

    v13 = objc_opt_self();
    [v13 animateWithDuration:4 delay:v11 options:a3 animations:v9 completion:0.0];
    _Block_release(a3);
    _Block_release(v11);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v8;
    v27 = sub_1005F5FFC;
    v28 = v14;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10009AEDC;
    v26 = &unk_10089C648;
    v15 = _Block_copy(&v23);
    v16 = v12;

    [v13 animateWithDuration:4 delay:v15 options:0 animations:0.2 completion:0.0];
    _Block_release(v15);
  }

  else
  {
    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = v4;
    *(v18 + 24) = a1 & 1;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1005F5EE0;
    *(v19 + 24) = v18;
    v27 = sub_1000349FC;
    v28 = v19;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_1001C5148;
    v26 = &unk_10089C5A8;
    v20 = _Block_copy(&v23);
    v21 = v4;

    [v17 performWithoutAnimation:v20];
    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_1005EE4F4()
{
  v1 = qword_1009602F8;
  if (*&v0[qword_1009602F8])
  {
    return;
  }

  v2 = [objc_allocWithZone(type metadata accessor for AppStoreVideoPlayerViewController()) init];
  [v2 setShowsPlaybackControls:0];
  [v2 setAllowsVideoFrameAnalysis:0];
  [v2 setUpdatesNowPlayingInfoCenter:0];
  [v2 setCanPausePlaybackWhenExitingFullScreen:0];
  [v2 setPreferredUnobscuredArea:*&v0[qword_1009A2518]];
  [v2 setShowsMinimalPlaybackControlsWhenEmbeddedInline:1];
  [v2 setDelegate:v0];
  v3 = v2;
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  [v4 setClipsToBounds:1];

  v6 = [v3 view];
  if (!v6)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = v6;
  v8 = [v0 backgroundColor];
  if (!v8)
  {
    sub_100016F40(0, &qword_100942F10);
    v8 = sub_100770D5C();
  }

  [v7 setBackgroundColor:v8];

  [v3 setModalPresentationStyle:5];
  [v3 setCanToggleVideoGravityWhenEmbeddedInline:0];
  v9 = [v3 view];
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [v9 layer];

  sub_10076394C();
  v12 = sub_10076395C();
  v12();
  [v11 setMaskedCorners:sub_1007704FC()];

  v13 = [v3 view];
  if (!v13)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  [v0 bounds];
  [v14 setFrame:?];

  v15 = *&v0[qword_1009602F0];
  if (v15)
  {
    v16 = v15;
    [v16 _setDisallowsVideoLayerDisplayCompositing:1];
    [v3 setPlayer:v16];
  }

  v17 = [v3 view];
  if (!v17)
  {
    goto LABEL_19;
  }

  v18 = v17;
  [v0 insertSubview:v17 atIndex:0];

  v19 = *&v0[v1];
  *&v0[v1] = v3;

  sub_1005F41B0();
  v20 = [v3 view];

  if (!v20)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v21 = [v20 layer];

  [v21 setAllowsGroupBlending:0];
}

id sub_1005EE8BC()
{
  v1 = v0;
  v2 = sub_1007611EC();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[qword_1009A2540] == 1)
  {
    v7 = *&v0[qword_1009602F8];
    if (v7)
    {
      [v7 setShowsPlaybackControls:{1, v4}];
    }
  }

  else
  {
    v8 = *&v0[qword_1009602F0];
    if (v8 && (v9 = v8, v10 = sub_1007605AC(), v9, (v10 & 1) != 0))
    {
      v11 = qword_1009602F8;
      v12 = *&v1[qword_1009602F8];
      if (v12)
      {
        v13 = v12;
        sub_1005EC628(v6);
        v14 = sub_1007611AC();
        (*(v3 + 8))(v6, v2);
        [v13 setShowsPlaybackControls:v14 & 1];

        v15 = *&v1[v11];
        if (v15)
        {
          [v15 flashPlaybackControlsWithDuration:5.0];
        }
      }
    }

    else
    {
      v16 = *&v1[qword_1009602F8];
      if (v16)
      {
        [v16 setShowsPlaybackControls:{0, v4}];
      }
    }
  }

  return [v1 accessibilityUpdatePlayerControllerControls];
}

void sub_1005EEA78()
{
  v1 = v0;
  if (qword_1009412A0 != -1)
  {
    swift_once();
  }

  v2 = *&qword_100960290;
  v3 = *algn_100960298;
  v4 = *&qword_1009602A0;
  v5 = unk_1009602A8;
  v6 = &v0[qword_1009A2508];
  v7 = *&v0[qword_1009A2508];
  v8 = *&v0[qword_1009A2508 + 16];
  v9 = [v0 traitCollection];
  v10 = sub_10077070C();

  v11 = *&v1[qword_1009602F8];
  if (v11)
  {
    v12 = 8;
    if (v10)
    {
      v13 = 24;
    }

    else
    {
      v13 = 8;
    }

    if ((v10 & 1) == 0)
    {
      v12 = 24;
    }

    v14 = v3 + *&v6[v13];
    v15 = v5 + *&v6[v12];
    v16 = objc_opt_self();
    v17 = v11;
    v18 = [v16 valueWithUIEdgeInsets:{v2 + v7, v14, v4 + v8, v15}];
    [v17 setOverrideLayoutMarginsWhenEmbeddedInline:v18];
  }
}

void sub_1005EEC10()
{
  v1 = v0;
  v2 = sub_10076F08C();
  v34 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076F0CC();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076F09C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[qword_1009A2540] != 1)
  {
LABEL_4:
    [v1 frame];
    v15 = [objc_opt_self() mainScreen];
    [v15 scale];

    sub_100770A8C();
    v13 = v16;
    v14 = v17;
    goto LABEL_6;
  }

  sub_100016E2C(&v0[qword_1009A2500], aBlock, &unk_100960410);
  if (v37)
  {
    sub_10000CF78(aBlock, v37);
    v12 = sub_10076183C();
    sub_10000CD74(aBlock);
    v13 = 0.0;
    v14 = 0.0;
    if ((v12 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  sub_10000CFBC(aBlock, &unk_100960410);
  v13 = 0.0;
  v14 = 0.0;
LABEL_6:
  v18 = qword_1009602F0;
  v19 = *&v1[qword_1009602F0];
  if (!v19 || (v20 = v19, v21 = sub_1007604FC(), v20, !v21) || (([v21 preferredMaximumResolution], v23 = v22, v25 = v24, v21, v23 == v13) ? (v26 = v25 == v14) : (v26 = 0), !v26))
  {
    sub_100016F40(0, &qword_1009471F0);
    (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v8);
    v27 = sub_1007706BC();
    (*(v9 + 8))(v11, v8);
    v28 = *&v1[v18];
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = v13;
    *(v29 + 32) = v14;
    v38 = sub_1005F5E9C;
    v39 = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    v37 = &unk_10089C530;
    v30 = _Block_copy(aBlock);
    v31 = v28;
    sub_10076F0AC();
    v35 = _swiftEmptyArrayStorage;
    sub_1005F4A14(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000A5D4(&unk_10094E1C0);
    sub_1000852B8();
    sub_1007712CC();
    sub_10077069C();
    _Block_release(v30);

    (*(v34 + 8))(v4, v2);
    (*(v32 + 8))(v7, v33);
  }
}

void sub_1005EF108(uint64_t a1)
{
  v3 = sub_100765B1C();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v7, a1, v3, v5);
  if ((*(v4 + 88))(v7, v3) == enum case for VideoPlaybackFailure.videoDecodersUnavailable(_:))
  {
    (*(v4 + 96))(v7, v3);
    v8 = *v7;
    v9 = [objc_opt_self() defaultCenter];
    v10 = sub_1007707AC();
    sub_10000A5D4(&unk_100947120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100784500;
    v17 = sub_10076A76C();
    v18 = v12;
    sub_10077140C();
    *(inited + 96) = &type metadata for AnyHashable;
    v13 = swift_allocObject();
    *(inited + 72) = v13;
    sub_10008C3EC(v1 + qword_1009A2530, v13 + 16);
    v17 = sub_10076A77C();
    v18 = v14;
    sub_10077140C();
    *(inited + 168) = sub_10000A5D4(&unk_100960450);
    *(inited + 144) = v8;
    v15 = v8;
    sub_1000FCED4(inited);
    swift_setDeallocating();
    sub_10000A5D4(&unk_100948B20);
    swift_arrayDestroy();
    isa = sub_10076FE3C().super.isa;

    [v9 postNotificationName:v10 object:0 userInfo:isa];
  }

  else
  {
    (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1005EF3F8()
{
  v1 = v0;
  v2 = sub_10075FEEC();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v28 = &v27 - v5;
  v6 = sub_10076481C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = qword_1009A2558;
  swift_beginAccess();
  v14 = *(v7 + 16);
  v14(v12, &v1[v13], v6);
  v15 = sub_10076478C();
  v16 = *(v7 + 8);
  v16(v12, v6);
  if ((v15 & 1) == 0)
  {
    [v1 _continuousCornerRadius];
    if (v20 == 0.0)
    {
      [v1 _cornerRadius];
      v21 = v30;
      if (v22 == 0.0)
      {
        v23 = v29;
        v24 = v31;
        (*(v30 + 104))(v29, enum case for CornerStyle.arc(_:), v31);
        goto LABEL_12;
      }

      [v1 _cornerRadius];
      v25 = enum case for CornerStyle.arc(_:);
    }

    else
    {
      [v1 _continuousCornerRadius];
      v25 = enum case for CornerStyle.continuous(_:);
      v21 = v30;
    }

    v23 = v29;
    v24 = v31;
    (*(v21 + 104))(v29, v25, v31);
    goto LABEL_12;
  }

  v14(v9, &v1[v13], v6);
  sub_1007647DC();
  v18 = v17;
  v16(v9, v6);
  if (v18)
  {
    v19 = &enum case for CornerStyle.arc(_:);
  }

  else
  {
    [*&v1[qword_1009602D0] frame];
    v19 = &enum case for CornerStyle.continuous(_:);
  }

  v21 = v30;
  v24 = v31;
  v23 = v28;
  (*(v30 + 104))(v28, *v19, v31);
LABEL_12:
  sub_1007638AC();
  return (*(v21 + 8))(v23, v24);
}

char *sub_1005EF770()
{
  v1 = v0;
  v2 = qword_1009602F0;
  v3 = *(v0 + qword_1009602F0);
  if (v3)
  {
    v4 = v3;
    v5 = sub_10076051C();

    v6 = *(v1 + v2);
    if (v6)
    {
      v7 = v6;
      sub_10076057C();

      v6 = *(v1 + v2);
    }

    *(v1 + v2) = 0;

    result = sub_1005F0550();
    if (v5)
    {
      sub_1005ECC94();
      v9 = *((swift_isaMask & *v1) + qword_1009A2568 + 712);

      return v9();
    }
  }

  else
  {

    return sub_1005F0550();
  }

  return result;
}

void sub_1005EF88C()
{
  v1 = sub_10076688C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007668CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[qword_1009602F0];
  if (v9)
  {
    v10 = v9;
    [v10 setMuted:{objc_msgSend(v10, "isMuted") ^ 1}];
    v11 = [v10 isMuted];
    [v0 updateAudioSessionCategoryWithIsAudioOn:v11 ^ 1];
    (*(v6 + 104))(v8, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v5);
    v12 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
    if (!v11)
    {
      v12 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
    }

    (*(v2 + 104))(v4, *v12, v1);
    sub_1005EFAB8(v8, v4);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1005EFAB8(uint64_t a1, uint64_t a2)
{
  v69 = a1;
  v70 = a2;
  v3 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v3 - 8);
  v74 = &v62 - v4;
  v5 = sub_10076F75C();
  __chkstk_darwin(v5 - 8);
  v72 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_100960420);
  __chkstk_darwin(v7 - 8);
  v71 = &v62 - v8;
  v9 = sub_10000A5D4(&qword_100960428);
  __chkstk_darwin(v9 - 8);
  v11 = &v62 - v10;
  v12 = sub_10000A5D4(&qword_100960430);
  __chkstk_darwin(v12 - 8);
  v14 = &v62 - v13;
  v15 = sub_10000A5D4(&qword_100960438);
  __chkstk_darwin(v15 - 8);
  v17 = &v62 - v16;
  v76 = sub_10076F4FC();
  v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v68 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v75 = &v62 - v20;
  v21 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v21 - 8);
  v23 = &v62 - v22;
  v24 = sub_10076F3BC();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016E2C(v2 + qword_1009A24F8, v23, &unk_10094C030);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v28 = &unk_10094C030;
    v29 = v23;
    return sub_10000CFBC(v29, v28);
  }

  (*(v25 + 32))(v27, v23, v24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return (*(v25 + 8))(v27, v24);
  }

  v32 = Strong;
  v33 = qword_1009602F0;
  v34 = *(v2 + qword_1009602F0);
  if (!v34)
  {
    (*(v25 + 8))(v27, v24);
  }

  v35 = v2;
  v66 = v34;
  v36 = sub_1007604FC();
  v67 = v32;
  v65 = v2;
  if (!v36)
  {
    goto LABEL_14;
  }

  v37 = v36;
  v38 = *(v35 + v33);
  if (!v38 || (v39 = [v38 currentItem]) == 0 || (v40 = v39, v41 = objc_msgSend(v39, "asset"), v40, v42 = sub_10076FF6C(), v43 = objc_msgSend(v41, "statusOfValueForKey:error:", v42, 0), v41, v42, v43 != 2))
  {

LABEL_14:
    v64 = 0.0;
    v63 = 1;
    goto LABEL_15;
  }

  [v37 currentTime];
  Seconds = CMTimeGetSeconds(&time);

  v63 = 0;
  v64 = Seconds;
LABEL_15:
  sub_10000A5D4(&qword_1009451D0);
  v62 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  v45 = enum case for MediaClickMetricsEvent.TargetType.button(_:);
  v46 = sub_10076689C();
  v47 = *(v46 - 8);
  (*(v47 + 104))(v17, v45, v46);
  (*(v47 + 56))(v17, 0, 1, v46);
  v48 = sub_1007668CC();
  v49 = *(v48 - 8);
  (*(v49 + 16))(v14, v69, v48);
  (*(v49 + 56))(v14, 0, 1, v48);
  v50 = sub_10076688C();
  v51 = *(v50 - 8);
  (*(v51 + 16))(v11, v70, v50);
  (*(v51 + 56))(v11, 0, 1, v50);
  LODWORD(v51) = *(v65 + qword_1009A2540);
  v52 = sub_1007668AC();
  v53 = *(v52 - 8);
  v54 = &enum case for MediaClickMetricsEvent.ActionContext.fullscreen(_:);
  if (!v51)
  {
    v54 = &enum case for MediaClickMetricsEvent.ActionContext.inline(_:);
  }

  v55 = v71;
  (*(*(v52 - 8) + 104))(v71, *v54, v52);
  (*(v53 + 56))(v55, 0, 1, v52);
  sub_1007668BC();
  sub_10000CFBC(v55, &qword_100960420);
  sub_10000CFBC(v11, &qword_100960428);
  sub_10000CFBC(v14, &qword_100960430);
  sub_10000CFBC(v17, &qword_100960438);
  sub_10076F74C();
  v56 = v75;
  sub_10076F4EC();
  v57 = sub_10000A5D4(&unk_1009428E0);
  v58 = v74;
  sub_10076F5AC();
  v59 = *(v57 - 8);
  if ((*(v59 + 48))(v58, 1, v57) == 1)
  {

    (*(v73 + 8))(v56, v76);
    (*(v25 + 8))(v27, v24);
    v28 = &unk_100943200;
    v29 = v58;
    return sub_10000CFBC(v29, v28);
  }

  sub_10075FD5C();
  v60 = v73;
  (*(v73 + 16))(v68, v56, v76);
  v61 = sub_10075FD3C();
  sub_100263FC8(v61, 1, v67, v58);

  (*(v60 + 8))(v75, v76);
  (*(v25 + 8))(v27, v24);
  return (*(v59 + 8))(v58, v57);
}

void sub_1005F04D8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

char *sub_1005F0550()
{
  v1 = v0;
  v2 = sub_10076481C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_1009602F0;
  v8 = *&v0[qword_1009602F0];
  if (v8)
  {
    sub_1005F4A14(&unk_100960440, type metadata accessor for VideoView);
    v9 = v8;
    v10 = v0;
    sub_10076057C();

    v11 = *&v0[v7];
    if (v11)
    {
      v12 = qword_1009A2558;
      swift_beginAccess();
      (*(v3 + 16))(v6, &v10[v12], v2);
      v13 = v11;
      sub_1007647EC();
      (*(v3 + 8))(v6, v2);
      sub_10076053C();

      v14 = *&v1[v7];
      if (v14)
      {
        [v14 _setDisallowsVideoLayerDisplayCompositing:1];
      }
    }
  }

  v15 = *&v1[qword_1009602F8];
  if (v15)
  {
    [v15 setPlayer:{*&v1[v7], v4}];
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = *&result[OBJC_IVAR____TtC20ProductPageExtension15VideoMirrorView_videoLayer];
    v18 = *&v1[v7];
    [v17 setPlayer:v18];

    result = swift_unknownObjectRelease();
  }

  v19 = qword_100960310;
  if (v1[qword_100960310] == 1)
  {
    [v1 updateAudioSessionCategoryWithIsAudioOn:1];
    result = *&v1[v7];
    if (result)
    {
      result = [result setMuted:0];
    }

    v1[v19] = 0;
  }

  return result;
}

id sub_1005F07BC(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for VideoView();
  v1 = objc_msgSendSuper2(&v3, "backgroundColor");

  return v1;
}

void sub_1005F0818(char *a1, uint64_t a2, void *a3)
{
  v5 = *&a1[qword_1009602F8];
  v6 = a3;
  v7 = a1;
  if (v5)
  {
    v5 = [v5 view];
  }

  [v5 setBackgroundColor:a3];

  v8.receiver = a1;
  v8.super_class = type metadata accessor for VideoView();
  objc_msgSendSuper2(&v8, "setBackgroundColor:", a3);
}

id sub_1005F08C8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for VideoView();
  return objc_msgSendSuper2(&v2, "frame");
}

void sub_1005F090C(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = type metadata accessor for VideoView();
  v20.receiver = a1;
  v20.super_class = v10;
  v11 = a1;
  objc_msgSendSuper2(&v20, "frame");
  v13 = v12;
  v15 = v14;
  v19.receiver = v11;
  v19.super_class = v10;
  objc_msgSendSuper2(&v19, "setFrame:", a2, a3, a4, a5);
  [v11 frame];
  v18 = v17 == v13 && v16 == v15;
  if (!v18 && (*(v11 + qword_1009602E0) & 1) == 0)
  {
    sub_1005EEC10();
  }
}

uint64_t sub_1005F09F4()
{
  v0 = ASKDeviceTypeGetCurrent();
  v1 = sub_10076FF9C();
  v3 = v2;
  v5 = 8.0;
  if (v1 != sub_10076FF9C() || v3 != v4)
  {
    if (sub_10077167C())
    {
      v5 = 8.0;
    }

    else
    {
      v5 = 6.0;
    }
  }

  qword_100960290 = *&v5;
  *algn_100960298 = v5;
  qword_1009602A0 = *&v5;
  unk_1009602A8 = *&v5;
  return result;
}

char *sub_1005F0AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v66 = a6;
  v67 = a5;
  v68 = a4;
  v69 = a3;
  v61 = sub_10076F9AC();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_10075DB7C();
  v62 = *(v65 - 8);
  __chkstk_darwin(v65);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v56 - v15;
  v58 = v7;
  v17 = objc_allocWithZone(v7);
  swift_weakInit();
  *&v17[qword_1009602B8 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v17[qword_1009602C0 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v17[qword_1009602C8 + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = qword_1009602D0;
  *&v17[v18] = [objc_allocWithZone(UIImageView) init];
  v17[qword_1009602D8] = 0;
  v17[qword_1009602E0] = 0;
  v17[qword_1009602E8] = 0;
  *&v17[qword_1009602F0] = 0;
  *&v17[qword_1009602F8] = 0;
  v19 = qword_100960300;
  sub_10076925C();
  *&v17[v19] = sub_10076924C();
  v20 = qword_100960308;
  *&v17[v20] = [objc_allocWithZone(type metadata accessor for PlayButton()) init];
  v21 = a2;
  v22 = &v17[qword_1009A2508];
  v23 = *&UIEdgeInsetsZero.bottom;
  *v22 = *&UIEdgeInsetsZero.top;
  v22[1] = v23;
  v24 = &v17[qword_1009A2510];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 1;
  *&v17[qword_1009A2518] = 1;
  v17[qword_100960310] = 0;
  v25 = &v17[qword_1009A2528];
  *v25 = 0;
  v25[1] = 0;
  *&v17[qword_1009A2538 + 8] = 0;
  swift_unknownObjectWeakInit();
  v17[qword_1009A2540] = 0;
  v17[qword_1009A2548] = 0;
  swift_unknownObjectWeakInit();
  v17[qword_100960318] = 0;
  v17[qword_1009A2560] = 0;
  *&v17[qword_100960320] = 0;
  v17[qword_100960328] = 0;
  swift_beginAccess();
  v64 = a7;
  swift_weakAssign();
  v63 = a1;
  sub_10008C3EC(a1, &v17[qword_1009A2530]);
  v26 = sub_10075DB5C();
  v28 = v27;
  v29 = sub_10076BD6C();
  v57 = a2;
  if (!v28)
  {

    v31 = v65;
    v32 = v62;
    goto LABEL_9;
  }

  if (v26 == v29 && v28 == v30)
  {

    v31 = v65;
    v32 = v62;
    goto LABEL_7;
  }

  v33 = sub_10077167C();

  v31 = v65;
  v32 = v62;
  if ((v33 & 1) == 0)
  {
LABEL_9:
    (*(v32 + 16))(&v17[qword_1009A2520], v21, v31);
    goto LABEL_10;
  }

LABEL_7:
  v34 = [objc_opt_self() mainBundle];
  sub_10075DB0C();
  v35 = sub_10076FF6C();

  v36 = [v34 URLForResource:v35 withExtension:0];

  if (!v36)
  {
    goto LABEL_9;
  }

  sub_10075DB3C();

  v37 = *(v32 + 32);
  v37(v16, v13, v31);
  v37(&v17[qword_1009A2520], v16, v31);
LABEL_10:
  v38 = v32;
  sub_100016E2C(v68, &v17[qword_1009A24F0], &unk_10094C030);
  sub_100016E2C(v67, &v17[qword_1009A24F8], &unk_10094C030);
  v39 = qword_1009A2558;
  v40 = sub_10076481C();
  v41 = *(v40 - 8);
  (*(v41 + 16))(&v17[v39], v69, v40);
  sub_100016E2C(v66, &v17[qword_1009A2500], &unk_100960410);
  v72.receiver = v17;
  v72.super_class = v58;
  v42 = objc_msgSendSuper2(&v72, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v42 setClipsToBounds:0];
  v43 = qword_1009602D0;
  [*&v42[qword_1009602D0] setUserInteractionEnabled:0];
  [*&v42[v43] setClipsToBounds:1];
  [v42 addSubview:*&v42[v43]];
  v44 = objc_opt_self();
  v45 = [v44 defaultCenter];
  v46 = sub_1007707BC();
  [v45 addObserver:v42 selector:"didChangeAutoPlayVideoSetting" name:v46 object:0];

  v47 = [v44 defaultCenter];
  [v47 addObserver:v42 selector:"handleMediaServicesReset" name:AVAudioSessionMediaServicesWereResetNotification object:0];

  v48 = qword_100960308;
  [*&v42[qword_100960308] setHidden:1];
  v49 = *&v42[v48];
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = &v49[OBJC_IVAR____TtC20ProductPageExtension10PlayButton_tapActionBlock];
  v52 = *&v49[OBJC_IVAR____TtC20ProductPageExtension10PlayButton_tapActionBlock];
  *v51 = sub_10039E4D0;
  v51[1] = v50;
  v53 = v49;

  sub_1000167E0(v52);

  memset(v71, 0, sizeof(v71));
  memset(v70, 0, sizeof(v70));
  v54 = v59;
  sub_10076F95C();
  sub_10000CFBC(v70, &unk_1009434C0);
  sub_10000CFBC(v71, &unk_1009434C0);
  sub_100770B9C();
  (*(v60 + 8))(v54, v61);
  [v42 addSubview:*&v42[v48]];
  sub_1005F41B0();

  sub_10000CFBC(v66, &unk_100960410);
  sub_10000CFBC(v67, &unk_10094C030);
  sub_10000CFBC(v68, &unk_10094C030);
  (*(v41 + 8))(v69, v40);
  (*(v38 + 8))(v57, v65);
  sub_100016C74(v63);

  return v42;
}

void sub_1005F1390()
{
  v44 = sub_10076481C();
  v0 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &ObjectType - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1007611EC();
  v3 = *(v2 - 8);
  v41 = v2;
  v42 = v3;
  __chkstk_darwin(v2);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &ObjectType - v7;
  v9 = sub_10076688C();
  v45 = *(v9 - 8);
  v46 = v9;
  __chkstk_darwin(v9);
  v11 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007668CC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &ObjectType - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v40 = v0;
    (*((swift_isaMask & *Strong) + qword_1009A2568 + 712))();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      ObjectType = swift_getObjectType();
      sub_1005F4A14(&qword_100942810, type metadata accessor for VideoView);
      v18 = v17;
      v39 = v8;
      v19 = v5;
      v20 = v12;
      v21 = v18;
      sub_100763C6C();

      v12 = v20;
      v5 = v19;
      v8 = v39;
      swift_unknownObjectRelease();
    }

    (*(v13 + 104))(v15, enum case for MediaClickMetricsEvent.TargetId.play(_:), v12);
    v22 = v12;
    v24 = v45;
    v23 = v46;
    (*(v45 + 104))(v11, enum case for MediaClickMetricsEvent.ActionType.play(_:), v46);
    sub_1005EFAB8(v15, v11);
    (*(v24 + 8))(v11, v23);
    v25 = (*(v13 + 8))(v15, v22);
    if ((*((swift_isaMask & *v17) + qword_1009A2568 + 752))(v25))
    {
      v26 = sub_10076922C();
      v27 = qword_1009A2558;
      v28 = (v40 + 16);
      v29 = (v40 + 8);
      if (v26)
      {
        swift_beginAccess();
        v30 = v17 + v27;
        v31 = v43;
        (*v28)(v43, v30, v44);
        sub_1007647CC();
      }

      else
      {
        swift_beginAccess();
        v32 = v17 + v27;
        v31 = v43;
        (*v28)(v43, v32, v44);
        sub_10076479C();
      }

      (*v29)(v31, v44);
      sub_1007611BC();
      sub_1005F4A14(&unk_1009603F0, &type metadata accessor for VideoControls);
      v33 = v41;
      v34 = sub_10077124C();
      v35 = *(v42 + 8);
      v35(v5, v33);
      v35(v8, v33);
      if (v34)
      {
        v36 = *(v17 + qword_1009602F0);
        if (v36)
        {
          v37 = v36;
          [v17 updateAudioSessionCategoryWithIsAudioOn:1];
          [v37 setMuted:0];

          v17 = v37;
        }

        else
        {
          *(v17 + qword_100960310) = 1;
        }
      }
    }
  }
}

void sub_1005F199C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + qword_1009602F0);

    [v2 play];
  }
}

void sub_1005F1A14()
{
  v1 = v0;
  v0[qword_1009A2548] = 0;
  v2 = qword_1009A2540;
  [v0 setUserInteractionEnabled:(v0[qword_1009A2540] & 1) == 0];
  v3 = [v0 backgroundColor];
  if (!v3)
  {
    sub_100016F40(0, &qword_100942F10);
    v3 = sub_100770D5C();
  }

  v10 = v3;
  v4 = *&v0[qword_1009602F8];
  if (v4)
  {
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      if (v1[v2] == 1)
      {
        v7 = [objc_opt_self() clearColor];
      }

      else
      {
        v7 = v10;
      }

      v8 = v7;
      [v6 setBackgroundColor:v7];
    }
  }

  sub_1005F41B0();
  if ((v1[v2] & 1) == 0)
  {
    v9 = *&v1[qword_1009602F0];
    if (v9)
    {
      [v9 setMuted:(v1[qword_100960318] & 1) == 0];
    }
  }

  sub_1005EEC10();
  [v1 setNeedsLayout];
}

void sub_1005F1BA0(void *a1)
{
  v1 = a1;
  sub_1005F41B0();
}

uint64_t sub_1005F1BE8()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for VideoView();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[qword_1009602F8];
  if (v9)
  {
    v10 = [v9 view];
  }

  else
  {
    v10 = 0;
  }

  [v10 setFrame:{v2, v4, v6, v8}];

  v11 = *&v0[qword_1009602D0];
  [v11 frame];
  [v11 setFrame:?];
  v15.origin.x = v2;
  v15.origin.y = v4;
  v15.size.width = v6;
  v15.size.height = v8;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = v2;
  v16.origin.y = v4;
  v16.size.width = v6;
  v16.size.height = v8;
  [v11 setCenter:{MidX, CGRectGetMidY(v16)}];
  sub_1005ED780();
  return sub_1005EF3F8();
}

void sub_1005F1D38(void *a1)
{
  v1 = a1;
  sub_1005F1BE8();
}

void sub_1005F1D80(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = *(Strong + qword_1009602F0);
      v3 = Strong;
      v4 = v2;

      if (v2)
      {
        sub_10076050C();
      }
    }
  }
}

id sub_1005F1E00(char *a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = 0.0;
    if (a2)
    {
      *&v5 = 1.0;
    }

    [*(Strong + OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer) setOpacity:v5];
    swift_unknownObjectRelease();
  }

  v6 = 0.0;
  if (a2)
  {
    v6 = 1.0;
  }

  [*&a1[qword_1009602D0] setAlpha:v6];

  return [a1 layoutSubviews];
}

id sub_1005F1EC0(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = 0.0;
    if (a2)
    {
      *&v5 = 1.0;
    }

    [*(Strong + OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer) setOpacity:v5];
    swift_unknownObjectRelease();
  }

  v6 = *(a1 + qword_1009602D0);
  v7 = 0.0;
  if (a2)
  {
    v7 = 1.0;
  }

  return [v6 setAlpha:v7];
}

void sub_1005F1F78(uint64_t a1, double a2, double a3)
{
  if (a1)
  {
    v5 = sub_1007604FC();
    [v5 setPreferredMaximumResolution:{a2, a3}];
  }
}

void sub_1005F1FE8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + qword_1009A2540) = 0;
    sub_1005F1A14();
  }
}

void sub_1005F2048()
{
  sub_10076394C();
  v1 = sub_10076395C();
  v1();
  v2 = sub_1007704FC();
  v3 = [v0 layer];
  [v3 setMaskedCorners:v2];

  sub_10076391C();
  v4 = *&v0[qword_1009602F8];
  if (v4)
  {
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 layer];

      [v7 setMaskedCorners:v2];
    }
  }

  v8 = [*&v0[qword_1009602D0] layer];
  [v8 setMaskedCorners:v2];
}

void sub_1005F2184(void *a1, double a2)
{
  v3 = a1;
  sub_1005F22D4(&selRef__setCornerRadius_, &selRef__cornerRadius, a2);
}

id sub_1005F2210(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for VideoView();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_1005F2254(void *a1, double a2)
{
  v3 = a1;
  sub_1005F22D4(&selRef__setContinuousCornerRadius_, &selRef__continuousCornerRadius, a2);
}

id sub_1005F22D4(SEL *a1, SEL *a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = type metadata accessor for VideoView();
  objc_msgSendSuper2(&v12, *a1, a3);
  v7 = *&v3[qword_1009602F8];
  if (v7)
  {
    v8 = [v7 view];
    if (v8)
    {
      v9 = v8;
      [v3 *a2];
      [v9 *a1];
    }
  }

  v10 = *&v3[qword_1009602D0];
  [v3 *a2];
  return [v10 *a1];
}

void sub_1005F239C(uint64_t a1, uint64_t a2)
{
  v5 = qword_100960320;
  v6 = *&v2[qword_100960320];
  if (!v6 || [v6 phase] == 3 || (v7 = *&v2[v5]) != 0 && objc_msgSend(v7, "phase") == 4)
  {
    v8 = sub_1005EBD8C(a1);
    if (v8)
    {
      v9 = *&v2[v5];
      *&v2[v5] = v8;
      v10 = v8;

      [v10 locationInView:v2];
      v11 = [v2 hitTest:a2 withEvent:?];
      if (v11)
      {
        v12 = v11;
        sub_100016F40(0, &qword_1009441F0);
        v13 = v12;
        v14 = v2;
        v15 = v2;
        v16 = sub_100770EEC();

        if ((v16 & 1) == 0)
        {
          sub_100016F40(0, &qword_10094F760);
          sub_10027D9C8();
          v17 = v13;
          isa = sub_10077038C().super.isa;
          [v17 touchesBegan:isa withEvent:a2];
        }

        v2 = v14;
      }

      sub_100016F40(0, &qword_10094F760);
      sub_10027D9C8();
      v19.super.isa = sub_10077038C().super.isa;
      v21.super_class = type metadata accessor for VideoView();
      objc_msgSendSuper2(&v21, "touchesBegan:withEvent:", v19.super.isa, a2, v20.receiver, v20.super_class, v2, v21.super_class, v22.receiver, v22.super_class);
    }

    else
    {
      sub_100016F40(0, &qword_10094F760);
      sub_10027D9C8();
      v19.super.isa = sub_10077038C().super.isa;
      v22.super_class = type metadata accessor for VideoView();
      objc_msgSendSuper2(&v22, "touchesBegan:withEvent:", v19.super.isa, a2, v20.receiver, v20.super_class, v21.receiver, v21.super_class, v2, v22.super_class);
    }
  }

  else
  {
    sub_100016F40(0, &qword_10094F760);
    sub_10027D9C8();
    v19.super.isa = sub_10077038C().super.isa;
    v20.super_class = type metadata accessor for VideoView();
    objc_msgSendSuper2(&v20, "touchesBegan:withEvent:", v19.super.isa, a2, v2, v20.super_class, v21.receiver, v21.super_class, v22.receiver, v22.super_class);
  }
}

uint64_t sub_1005F2628(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100016F40(0, &qword_10094F760);
  sub_10027D9C8();
  v6 = sub_10077039C();
  v7 = a4;
  v8 = a1;
  sub_1005F239C(v6, a4);
}

void sub_1005F26F0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v7 = qword_100960320;
  v8 = *&v3[qword_100960320];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  if ((sub_1006937A4(v9, a1) & 1) == 0)
  {

LABEL_8:
    sub_100016F40(0, &qword_10094F760);
    sub_10027D9C8();
    v19.super.isa = sub_10077038C().super.isa;
    v21.super_class = type metadata accessor for VideoView();
    objc_msgSendSuper2(&v21, *a3, v19.super.isa, a2, v20.receiver, v20.super_class, v3, v21.super_class);
    goto LABEL_11;
  }

  v10 = *&v3[v7];
  *&v3[v7] = 0;

  [v9 locationInView:v3];
  v11 = [v3 hitTest:a2 withEvent:?];
  if (v11)
  {
    v12 = v11;
    sub_100016F40(0, &qword_1009441F0);
    v13 = v12;
    v14 = v3;
    v15 = v3;
    v16 = sub_100770EEC();

    if ((v16 & 1) == 0)
    {
      sub_100016F40(0, &qword_10094F760);
      sub_10027D9C8();
      v17 = v13;
      isa = sub_10077038C().super.isa;
      [v17 *a3];

      v9 = v17;
    }

    v3 = v14;
  }

  else
  {
    v13 = v9;
  }

  sub_100016F40(0, &qword_10094F760);
  sub_10027D9C8();
  v19.super.isa = sub_10077038C().super.isa;
  v20.super_class = type metadata accessor for VideoView();
  objc_msgSendSuper2(&v20, *a3, v19.super.isa, a2, v3, v20.super_class, v21.receiver, v21.super_class);
LABEL_11:
}

uint64_t sub_1005F2920(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_100016F40(0, &qword_10094F760);
  sub_10027D9C8();
  v8 = sub_10077039C();
  v9 = a4;
  v10 = a1;
  sub_1005F26F0(v8, a4, a5);
}

void sub_1005F29D0(void *a1)
{
  v1 = a1;
  sub_1005EF770();
}

void sub_1005F2A18()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setShowsPlaybackControls:1];
  }
}

void sub_1005F2A78()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((swift_isaMask & *Strong) + qword_1009A2568 + 712))();
  }
}

void sub_1005F2B1C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_1005F4EA4(a4);

  swift_unknownObjectRelease();
}

void sub_1005F2B98(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  sub_1005F5048(a4);
}

uint64_t sub_1005F2C54(char *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *&a1[qword_1009602F0];
  if (v3)
  {
    v5 = a1;
    v6 = v3;
    v7 = a3();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1005F2CF0()
{
  swift_weakDestroy();
  sub_10000CC8C(v0 + qword_1009602B8);
  sub_10000CC8C(v0 + qword_1009602C0);
  sub_10000CC8C(v0 + qword_1009602C8);

  sub_10000CFBC(v0 + qword_1009A24F0, &unk_10094C030);
  sub_10000CFBC(v0 + qword_1009A24F8, &unk_10094C030);
  sub_10000CFBC(v0 + qword_1009A2500, &unk_100960410);

  v1 = qword_1009A2520;
  v2 = sub_10075DB7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000167E0(*(v0 + qword_1009A2528));
  sub_100016C74(v0 + qword_1009A2530);
  sub_10000CC8C(v0 + qword_1009A2538);
  swift_unknownObjectWeakDestroy();
  v3 = qword_1009A2558;
  v4 = sub_10076481C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + qword_100960320);
}

id sub_1005F2EE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1005F2F1C(uint64_t a1)
{
  swift_weakDestroy();
  sub_10000CC8C(a1 + qword_1009602B8);
  sub_10000CC8C(a1 + qword_1009602C0);
  sub_10000CC8C(a1 + qword_1009602C8);

  sub_10000CFBC(a1 + qword_1009A24F0, &unk_10094C030);
  sub_10000CFBC(a1 + qword_1009A24F8, &unk_10094C030);
  sub_10000CFBC(a1 + qword_1009A2500, &unk_100960410);

  v2 = qword_1009A2520;
  v3 = sub_10075DB7C();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  sub_1000167E0(*(a1 + qword_1009A2528));
  sub_100016C74(a1 + qword_1009A2530);
  sub_10000CC8C(a1 + qword_1009A2538);
  swift_unknownObjectWeakDestroy();
  v4 = qword_1009A2558;
  v5 = sub_10076481C();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = *(a1 + qword_100960320);
}

void sub_1005F3114()
{
  if (!qword_1009603C8)
  {
    sub_10076F3BC();
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1009603C8);
    }
  }
}

uint64_t sub_1005F31DC()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_1005F323C(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_1009602B0;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_10010D5A4;
}

uint64_t sub_1005F3324(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_1009A2538;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1005F3390(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = qword_1009A2538;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1005F3430;
}

void sub_1005F3430(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_1005F34BC()
{
  v1 = *(v0 + qword_1009602F0);
  if (v1)
  {
    v2 = v1;
    sub_10076056C();
  }
}

uint64_t sub_1005F355C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1009A2558;
  swift_beginAccess();
  v4 = sub_10076481C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

void (*sub_1005F35E8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = sub_10076481C();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[6] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[7] = v9;
  v11 = qword_1009A2558;
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_1005F3740;
}

void sub_1005F3740(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), v5);
    sub_1005ECA84(v4);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    sub_1005ECA84(*(v2 + 56));
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_1005F37F8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_10000A5D4(&unk_100960400);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1007635BC();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for MediaMetricsEvent.ActionType.play(_:), v7, v9);
  if (a1)
  {
    v12 = sub_1007635DC();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  else
  {
    v13 = enum case for MediaMetricsEvent.ActionDetails.autoplay(_:);
    v14 = sub_1007635DC();
    v15 = *(v14 - 8);
    (*(v15 + 104))(v6, v13, v14);
    (*(v15 + 56))(v6, 0, 1, v14);
  }

  sub_1005ECF74(v11, v6, a2);
  sub_10000CFBC(v6, &unk_100960400);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1005F3A50@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000A5D4(&unk_100960400);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_1007635BC();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, enum case for MediaMetricsEvent.ActionType.seek(_:), v5, v7);
  v10 = enum case for MediaMetricsEvent.ActionDetails.autostart(_:);
  v11 = sub_1007635DC();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v4, v10, v11);
  (*(v12 + 56))(v4, 0, 1, v11);
  sub_1005ECF74(v9, v4, a1);
  sub_10000CFBC(v4, &unk_100960400);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1005F3C44()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_1005F4A14(&qword_100942810, type metadata accessor for VideoView);
    sub_100763C5C();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005F3D18()
{
  v1 = v0 + qword_1009602C8;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005F3DBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(v3 + qword_1009602F0);
  if (!v4)
  {
    return 0;
  }

  v6 = v4;
  LOBYTE(a3) = a3();

  return a3 & 1;
}

void sub_1005F3EB8()
{
  v1 = *(v0 + qword_1009602F0);
  if (v1)
  {
    v2 = v1;
    if (sub_10076051C())
    {
      [v2 pause];
    }
  }
}

void sub_1005F3F8C(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_10077137C();
      sub_100016F40(0, &qword_10094F760);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100016F40(0, &qword_10094F760);
    if (sub_10077133C() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_10077134C();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_100770EDC(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_100770EEC();

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

uint64_t sub_1005F41B0()
{
  v1 = v0;
  v2 = sub_1007611EC();
  v74 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v79 = &v68 - v6;
  v7 = sub_10076121C();
  v78 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076481C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v70 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v68 - v14;
  v16 = *(v0 + qword_1009602F0);
  if (v16)
  {
    v17 = v9;
    v18 = v11;
    v19 = qword_1009A2558;
    swift_beginAccess();
    v20 = v1 + v19;
    v11 = v18;
    (*(v18 + 16))(v15, v20, v10);
    v21 = v16;
    sub_1007647EC();
    (*(v11 + 8))(v15, v10);
    sub_10076053C();

    v9 = v17;
  }

  v68 = v4;
  v77 = v2;
  v75 = qword_1009602F8;
  v22 = *(v1 + qword_1009602F8);
  if (v22)
  {
    v23 = v9;
    v24 = v11;
    v25 = qword_1009A2558;
    swift_beginAccess();
    v26 = v1 + v25;
    v11 = v24;
    (*(v24 + 16))(v15, v26, v10);
    v27 = v22;
    v28 = sub_1007647AC();
    (*(v11 + 8))(v15, v10);
    [v27 setAllowsEnteringFullScreen:v28 & 1];

    v9 = v23;
  }

  v76 = *(v1 + qword_1009602D0);
  v29 = qword_1009A2558;
  swift_beginAccess();
  v30 = (v11 + 16);
  v72 = *(v11 + 16);
  v72(v15, &v29[v1], v10);
  sub_10076480C();
  v31 = *(v11 + 8);
  v73 = v11 + 8;
  v71 = v31;
  v31(v15, v10);
  v32 = sub_1007611FC();
  v33 = v78[1];
  v33(v9, v7);
  [v76 setContentMode:v32];
  v34 = *(v1 + v75);
  if (v34)
  {
    v72(v15, &v29[v1], v10);
    v78 = v34;
    sub_10076480C();
    v71(v15, v10);
    v35 = sub_10076120C();
    v33(v9, v7);
    v36 = v78;
    [v78 setVideoGravity:v35 forLayoutClass:0];
  }

  v69 = v10;
  v78 = v30;
  v76 = v29;
  sub_1005EC628(v79);
  sub_1005F4A14(&unk_1009603F0, &type metadata accessor for VideoControls);
  v37 = v68;
  v38 = v77;
  sub_1007712BC();
  sub_1005F4A14(&qword_100954BA8, &type metadata accessor for VideoControls);
  v39 = sub_10076FF1C();
  v40 = v74 + 8;
  v41 = *(v74 + 8);
  v41(v37, v38);
  [v1 setUserInteractionEnabled:(v39 & 1) == 0];
  v42 = *(v1 + qword_100960308);
  sub_1007611CC();
  v43 = sub_10077124C();
  v41(v37, v38);
  if (v43)
  {
    v44 = v41;
    v45 = 0;
  }

  else
  {
    sub_1007611DC();
    v46 = sub_10077124C();
    v44 = v41;
    v41(v37, v38);
    v45 = v46 ^ 1;
  }

  v47 = v76;
  [v42 setHidden:{v45 & 1, v68}];

  v48 = v75;
  v49 = *(v1 + v75);
  if (v49)
  {
    v50 = v49;
    [v50 setShowsPlaybackControls:sub_1007611AC() & 1];

    v47 = v76;
    v51 = *(v1 + v48);
    if (v51)
    {
      v74 = v40;
      v52 = *((swift_isaMask & *v1) + qword_1009A2568 + 752);
      v53 = v51;
      v54 = (v52() & 1) != 0 ? 1 : *(v1 + qword_1009A2560);
      [v53 setShowsMinimalPlaybackControlsWhenEmbeddedInline:v54];

      v55 = *(v1 + v48);
      v47 = v76;
      if (v55)
      {
        v56 = v55;
        sub_1007611BC();
        v57 = v77;
        v58 = sub_10077124C();
        v44(v37, v57);
        if (v58)
        {
          v59 = 1;
        }

        else
        {
          v59 = *(v1 + qword_1009A2540);
        }

        [v56 setPlaybackControlsIncludeVolumeControls:v59];
      }
    }
  }

  sub_1005ED8D0();
  v60 = &v47[v1];
  v61 = v69;
  v62 = v70;
  v72(v70, v60, v69);
  v63 = sub_10076478C();
  v71(v62, v61);
  if (v63)
  {
    v64 = v79;
    v65 = v77;
    v66 = v44;
    if ((*(v1 + qword_1009A2540) & 1) == 0)
    {
      sub_10075FD2C();
      sub_10075FB9C();
      sub_1007638DC();
      sub_10075FBAC();
    }
  }

  else
  {
    v64 = v79;
    v65 = v77;
    v66 = v44;
  }

  sub_1007638EC();
  sub_1005EF3F8();
  sub_1005EE8BC();
  sub_1005EEA78();
  return v66(v64, v65);
}

uint64_t sub_1005F4A14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005F4A5C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_1005F4A14(&qword_100942810, type metadata accessor for VideoView);
    sub_100763C9C();
    swift_unknownObjectRelease();
  }

  v3 = v1 + qword_1009602C8;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v6 = sub_1005F4A14(&qword_100942810, type metadata accessor for VideoView);
    (*(v4 + 16))(a1, v1, v6, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  sub_1005EE8BC();
  return sub_1005ED8D0();
}

void sub_1005F4BC0()
{
  v1 = v0;
  v2 = sub_10076481C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v6 = qword_1009A2558;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v6, v2);
    sub_1007647EC();
    (*(v3 + 8))(v5, v2);
    sub_1005F4A14(&qword_100942810, type metadata accessor for VideoView);
    sub_100763C7C();
    swift_unknownObjectRelease();
  }

  if (*(v1 + qword_1009A2540) == 1)
  {
    v7 = *(v1 + qword_1009602F8);
    if (v7)
    {
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1005F4E84;
      aBlock[5] = v8;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1005F04D8;
      aBlock[3] = &unk_10089C3C8;
      v9 = _Block_copy(aBlock);
      v10 = v7;

      [v10 exitFullScreenAnimated:1 completionHandler:v9];
      _Block_release(v9);
    }
  }
}

uint64_t sub_1005F4E4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005F4E8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1005F4EA4(void *a1)
{
  v3 = v1 + qword_1009602B8;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(ObjectType, v4);
    swift_unknownObjectRelease();
  }

  *(v1 + qword_1009A2548) = 1;
  v13 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v14 = 0;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1006F5994;
  v12 = &unk_10089C3F0;
  v6 = _Block_copy(&v9);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = sub_1005F5A14;
  v14 = v7;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1006F5994;
  v12 = &unk_10089C418;
  v8 = _Block_copy(&v9);

  [a1 animateAlongsideTransition:v6 completion:v8];
  _Block_release(v8);
  _Block_release(v6);
}

void sub_1005F5048(uint64_t a1)
{
  v2 = v1;
  v48 = sub_10076481C();
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007611EC();
  v49 = *(v6 - 8);
  __chkstk_darwin(v6);
  v47 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v46 = v43 - v9;
  v10 = sub_10076688C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1007668CC();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        [v2 updateAudioSessionCategoryWithIsAudioOn:{1, v16}];
        (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v14);
        v19 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
LABEL_17:
        (*(v11 + 104))(v13, *v19, v10);
        v32 = v18;
        v33 = v13;
LABEL_27:
        sub_1005EFAB8(v32, v33);
        (*(v11 + 8))(v13, v10);
        (*(v15 + 8))(v18, v14);
        return;
      case 4:
        v36 = *(v2 + qword_1009602F0);
        if (v36)
        {
          v37 = [v36 isMuted] ^ 1;
        }

        else
        {
          v37 = 0;
        }

        *(v2 + qword_100960318) = v37;
        *(v2 + qword_1009A2540) = 1;
        sub_1005F1A14();
        (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.fullscreen(_:), v14);
        (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.enterFullscreen(_:), v10);
        v32 = v18;
        v33 = v13;
        goto LABEL_27;
      case 5:
        *(v2 + qword_1009A2540) = 0;
        sub_1005F1A14();
        (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.inline(_:), v14);
        (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.exitFullscreen(_:), v10);
        sub_1005EFAB8(v18, v13);
        (*(v11 + 8))(v13, v10);
        (*(v15 + 8))(v18, v14);
        v20 = v2 + qword_1009602B8;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v21 = *(v20 + 1);
          ObjectType = swift_getObjectType();
          (*(v21 + 16))(ObjectType, v21);
          swift_unknownObjectRelease();
        }

        break;
    }
  }

  else if (a1)
  {
    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return;
      }

      [v2 updateAudioSessionCategoryWithIsAudioOn:{0, v16}];
      (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v14);
      v19 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
      goto LABEL_17;
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_1005F4A14(&qword_100942810, type metadata accessor for VideoView);
      sub_100763C8C();
      swift_unknownObjectRelease();
    }

    (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.pause(_:), v14);
    (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.pause(_:), v10);
    sub_1005EFAB8(v18, v13);
    (*(v11 + 8))(v13, v10);
    v34 = (*(v15 + 8))(v18, v14);
    if (((*((swift_isaMask & *v2) + qword_1009A2568 + 752))(v34) & 1) == 0)
    {
      [v2 updateAudioSessionCategoryWithIsAudioOn:0];
      v35 = *(v2 + qword_1009602F0);
      if (v35)
      {
        [v35 setMuted:1];
      }
    }
  }

  else
  {
    v44 = v6;
    v23 = v2;
    v24 = v2 + qword_1009A2538;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v43[1] = *(v24 + 1);
      swift_getObjectType();
      sub_1005F4A14(&qword_100942810, type metadata accessor for VideoView);
      sub_100763C6C();
      swift_unknownObjectRelease();
    }

    (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.play(_:), v14);
    (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.play(_:), v10);
    sub_1005EFAB8(v18, v13);
    (*(v11 + 8))(v13, v10);
    v25 = (*(v15 + 8))(v18, v14);
    if (((*((swift_isaMask & *v23) + qword_1009A2568 + 752))(v25) & 1) == 0)
    {
      v26 = sub_10076922C();
      v27 = qword_1009A2558;
      v28 = (v45 + 16);
      v29 = (v45 + 8);
      if (v26)
      {
        swift_beginAccess();
        v30 = v48;
        (*v28)(v5, &v23[v27], v48);
        v31 = v46;
        sub_1007647CC();
      }

      else
      {
        swift_beginAccess();
        v30 = v48;
        (*v28)(v5, &v23[v27], v48);
        v31 = v46;
        sub_10076479C();
      }

      v38 = v44;
      (*v29)(v5, v30);
      v39 = v47;
      sub_1007611BC();
      sub_1005F4A14(&unk_1009603F0, &type metadata accessor for VideoControls);
      v40 = sub_10077124C();
      v41 = *(v49 + 8);
      v41(v39, v38);
      v41(v31, v38);
      if (v40)
      {
        [v23 updateAudioSessionCategoryWithIsAudioOn:1];
        v42 = *&v23[qword_1009602F0];
        if (v42)
        {
          [v42 setMuted:0];
        }
      }
    }
  }
}

uint64_t sub_1005F5A1C(char a1)
{
  v2 = sub_10076F08C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076F0CC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_10093FAA8 != -1)
    {
      swift_once();
    }

    v17[0] = qword_10094D778;
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = AVAudioSessionCategoryPlayback;
    v10[5] = AVAudioSessionModeDefault;
    v10[6] = 0;
    v22 = sub_1005F5FF8;
    v23 = v10;
    aBlock = _NSConcreteStackBlock;
    v19 = 1107296256;
    v11 = &unk_10089C4B8;
  }

  else
  {
    if (qword_10093FAA8 != -1)
    {
      swift_once();
    }

    v17[0] = qword_10094D778;
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = AVAudioSessionCategoryPlayback;
    v12[5] = AVAudioSessionModeDefault;
    v12[6] = 1;
    v22 = sub_1005F5DC8;
    v23 = v12;
    aBlock = _NSConcreteStackBlock;
    v19 = 1107296256;
    v11 = &unk_10089C468;
  }

  v20 = sub_10009AEDC;
  v21 = v11;
  v13 = _Block_copy(&aBlock);
  v14 = AVAudioSessionCategoryPlayback;
  v15 = AVAudioSessionModeDefault;
  sub_10076F0AC();
  v17[1] = _swiftEmptyArrayStorage;
  sub_1005F4A14(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0);
  sub_1000852B8();
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v13);
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_1005F5DCC()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1005F5E2C()
{
  sub_10000CD74(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1005F5E64()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1005F5EA8()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_1005F5F0C()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(*(v0 + 16) + qword_100960308) setAlpha:v1];
}

uint64_t sub_1005F5F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100960400);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005F602C()
{
  v0 = sub_1007681FC();
  sub_10000DB18(v0, qword_1009A2578);
  sub_10000A61C(v0, qword_1009A2578);
  return sub_1007681DC();
}

UIColor sub_1005F6144()
{
  sub_1000325F0();
  v0 = objc_opt_self();
  v1 = [v0 systemBackgroundColor];
  v2.super.isa = [v0 secondarySystemBackgroundColor];
  v3.super.isa = v1;
  result.super.isa = sub_100770DEC(v3, v2).super.isa;
  qword_1009A2590 = result.super.isa;
  return result;
}

uint64_t sub_1005F61E0()
{
  v0 = sub_10000A5D4(&unk_100945BD0);
  sub_10000DB18(v0, qword_1009A25A0);
  sub_10000A61C(v0, qword_1009A25A0);
  sub_10000A5D4(&unk_100943120);
  return sub_10075FDFC();
}

char *sub_1005F6278(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v308 = sub_10076F9AC();
  v306 = *(v308 - 8);
  __chkstk_darwin(v308);
  v302 = &v279 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10075FEEC();
  v290 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v279 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&qword_1009473D0);
  __chkstk_darwin(v14 - 8);
  v288 = &v279 - v15;
  v16 = sub_10076D3DC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v299 = &v279 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076771C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v279 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v23 - 8);
  v298 = &v279 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v279 - v26;
  v28 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_titleLabel;
  if (qword_100940C78 != -1)
  {
    swift_once();
  }

  v289 = v13;
  v291 = v11;
  v29 = sub_10000A61C(v16, qword_1009A1360);
  v30 = *(v17 + 16);
  v307 = (v17 + 16);
  v287 = v30;
  (v30)(v27, v29, v16);
  v301 = v17;
  v31 = *(v17 + 56);
  v286 = v16;
  v305 = (v17 + 56);
  v303 = v31;
  (v31)(v27, 0, 1, v16);
  v32 = *(v20 + 104);
  v295 = enum case for DirectionalTextAlignment.none(_:);
  v304 = v19;
  v297 = v20 + 104;
  v293 = v32;
  (v32)(v22);
  v33 = v22;
  v34 = sub_1007626BC();
  v35 = objc_allocWithZone(v34);
  v294 = v33;
  *(v5 + v28) = sub_1007626AC();
  v36 = type metadata accessor for RatingView();
  v37 = objc_allocWithZone(v36);
  *&v37[OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating] = 0;
  *&v37[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarColor] = 0;
  v38 = &v37[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starPadding];
  *v38 = 0;
  v38[8] = 1;
  *&v37[OBJC_IVAR____TtC20ProductPageExtension10RatingView_maxNumberOfStars] = 5;
  if (qword_10093F570 != -1)
  {
    swift_once();
  }

  v39 = qword_100944D30;
  *&v37[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starColor] = qword_100944D30;
  v37[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starSize] = 1;
  *v38 = 0x4008000000000000;
  v38[8] = 0;
  v37[OBJC_IVAR____TtC20ProductPageExtension10RatingView_useCase] = 1;
  v40 = type metadata accessor for StarRow();
  v41 = objc_allocWithZone(v40);
  v42 = v39;
  *&v37[OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView] = sub_10006446C(5, 1, 1, 0x4008000000000000, 0, 0, 1);
  v37[OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars] = 0;
  v43 = objc_allocWithZone(v40);
  *&v37[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView] = sub_10006446C(5, 0, 1, 0x4008000000000000, 0, 0, 1);
  v314.receiver = v37;
  v314.super_class = v36;
  v44 = objc_msgSendSuper2(&v314, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1000620A4();
  v45 = OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView;
  v46 = *&v44[OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView];
  v47 = *&v46[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating];
  *&v46[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating] = *&v44[OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating];
  v48 = v46;
  sub_100062B94(v47);

  if (*&v44[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView])
  {
    [v44 addSubview:?];
  }

  v300 = v34;
  v49 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_ratingView;
  [v44 addSubview:*&v44[v45]];

  *(v5 + v49) = v44;
  v296 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateLabel;
  v50 = v304;
  v51 = v287;
  if (qword_100940C90 != -1)
  {
    swift_once();
  }

  v52 = v286;
  v285 = sub_10000A61C(v286, qword_1009A13A8);
  v51(v27);
  (v303)(v27, 0, 1, v52);
  v53 = v294;
  v54 = v295;
  v55 = v50;
  v56 = v293;
  v293(v294, v295, v55);
  v57 = v300;
  v58 = objc_allocWithZone(v300);
  *&v296[v5] = sub_1007626AC();
  v296 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_authorLabel;
  if (qword_100940C98 != -1)
  {
    swift_once();
  }

  v59 = sub_10000A61C(v52, qword_1009A13C0);
  (v51)(v27, v59, v52);
  (v303)(v27, 0, 1, v52);
  v56(v53, v54, v304);
  v60 = objc_allocWithZone(v57);
  *&v296[v5] = sub_1007626AC();
  v61 = v51;
  v62 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateAuthorLabel;
  if (qword_100940CA0 != -1)
  {
    swift_once();
  }

  v63 = sub_10000A61C(v52, qword_1009A13D8);
  v61(v27, v63, v52);
  (v303)(v27, 0, 1, v52);
  v56(v53, v54, v304);
  v64 = objc_allocWithZone(v57);
  v65 = v61;
  *(v5 + v62) = sub_1007626AC();
  v280 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_bodyLabel;
  v281 = v5;
  if (qword_100940C88 != -1)
  {
    swift_once();
  }

  v66 = sub_10000A61C(v52, qword_1009A1390);
  v67 = v299;
  v284 = v66;
  (v61)(v299);
  v296 = objc_opt_self();
  v68 = [v296 clearColor];
  v283 = type metadata accessor for ExpandableTextView();
  v69 = objc_allocWithZone(v283);
  v70 = v68;
  v71 = sub_10073C780(v70, 0.0, 0.0, 0.0, 0.0);
  v65(v27, v67, v52);
  v72 = v303;
  v73 = v65;
  (v303)(v27, 0, 1, v52);
  sub_100389394(v27, v298);
  v74 = v71;
  sub_1007625DC();

  sub_10000CFBC(v27, &unk_100943250);
  v75 = *(v301 + 8);
  v301 += 8;
  v282 = v75;
  v75(v67, v52);

  v76 = v281;
  *&v281[v280] = v74;
  v280 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseTitleLabel;
  v77 = v65;
  v78 = v52;
  v79 = v76;
  if (qword_100940C80 != -1)
  {
    swift_once();
  }

  v80 = sub_10000A61C(v78, qword_1009A1378);
  v73(v27, v80, v78);
  v72(v27, 0, 1, v78);
  v81 = v294;
  v82 = v295;
  v83 = v293;
  v293(v294, v295, v304);
  v84 = objc_allocWithZone(v300);
  *&v79[v280] = sub_1007626AC();
  v280 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseDateLabel;
  v77(v27, v285, v78);
  v72(v27, 0, 1, v78);
  v83(v81, v82, v304);
  v85 = objc_allocWithZone(v300);
  *&v79[v280] = sub_1007626AC();
  v86 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseBodyLabel;
  v87 = v299;
  v88 = v77;
  v77(v299, v284, v78);
  v89 = [v296 clearColor];
  v90 = objc_allocWithZone(v283);
  v91 = v89;
  v92 = sub_10073C780(v91, 0.0, 0.0, 0.0, 0.0);
  v88(v27, v87, v78);
  (v303)(v27, 0, 1, v78);
  sub_100389394(v27, v298);
  v93 = v92;
  sub_1007625DC();

  sub_10000CFBC(v27, &unk_100943250);
  v282(v87, v78);

  *&v79[v86] = v93;
  v94 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shadowView;
  sub_10075F99C();
  *&v79[v94] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v95 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_roundedCornerView;
  sub_10076394C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v79[v95] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v97 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_focusBackgroundView;
  *&v79[v97] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v98 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_cardContentView;
  *&v79[v98] = [objc_allocWithZone(UIView) init];
  v99 = &v79[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreReviewTapHandler];
  *v99 = 0;
  v99[1] = 0;
  v100 = &v79[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreResponseTapHandler];
  *v100 = 0;
  v100[1] = 0;
  v101 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreReviewTapGestureRecognizer;
  *&v79[v101] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v102 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreResponseTapGestureRecognizer;
  *&v79[v102] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v79[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isFlowPreviewingDestination] = 0;
  v79[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_hasResponse] = 0;
  v79[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isReviewExpanded] = 1;
  v79[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isResponseExpanded] = 1;
  v79[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shouldHandleTextSelection] = 1;
  v103 = &v79[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_actionHandler];
  v104 = type metadata accessor for ProductReviewView();
  *v103 = 0;
  v103[1] = 0;
  v313.receiver = v79;
  v313.super_class = v104;
  v105 = objc_msgSendSuper2(&v313, "initWithFrame:", a1, a2, a3, a4);
  v106 = [v105 layer];
  [v106 setCornerRadius:20.0];

  v107 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shadowView;
  v108 = qword_10093F8B0;
  v109 = *(v105 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shadowView);
  if (v108 != -1)
  {
    swift_once();
  }

  v110 = sub_10076BCFC();
  v111 = sub_10000A61C(v110, qword_10099D4B0);
  v112 = *(v110 - 8);
  v113 = v288;
  (*(v112 + 16))(v288, v111, v110);
  (*(v112 + 56))(v113, 0, 1, v110);
  sub_10075F97C();

  v114 = *(v105 + v107);
  v115 = v290;
  v116 = v289;
  v117 = enum case for CornerStyle.continuous(_:);
  v118 = v291;
  v307 = *(v290 + 104);
  v307(v289);
  v119 = v114;
  sub_10075F98C();

  v305 = *(v115 + 8);
  v305(v116, v118);
  [v105 addSubview:*(v105 + v107)];
  v120 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_roundedCornerView;
  v121 = qword_1009412B0;
  v122 = *(v105 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_roundedCornerView);
  if (v121 != -1)
  {
    swift_once();
  }

  v123 = qword_1009A2590;
  [v122 setBackgroundColor:qword_1009A2590];

  v124 = *(v105 + v120);
  (v307)(v116, v117, v118);
  v125 = v124;
  sub_1007638AC();

  v305(v116, v118);
  [v105 addSubview:*(v105 + v120)];
  v126 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_cardContentView;
  [*(v105 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_cardContentView) setBackgroundColor:v123];
  [*(v105 + v126) _setContinuousCornerRadius:20.0];
  [v105 addSubview:*(v105 + v126)];
  v127 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_focusBackgroundView;
  v128 = *(v105 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_focusBackgroundView);
  v129 = [v296 systemBackgroundColor];
  [v128 setBackgroundColor:v129];

  [*(v105 + v127) setAlpha:0.0];
  v130 = *(v105 + v127);
  (v307)(v116, v117, v118);
  v131 = v130;
  sub_1007638AC();

  v305(v116, v118);
  [*(v105 + v126) addSubview:*(v105 + v127)];
  v132 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_titleLabel;
  v133 = *(v105 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_titleLabel);
  v311 = 0u;
  v312 = 0u;
  v309 = 0u;
  v310 = 0u;
  v134 = v133;
  v135 = v302;
  sub_10076F95C();
  sub_10000CFBC(&v309, &unk_1009434C0);
  sub_10000CFBC(&v311, &unk_1009434C0);
  sub_100770B9C();

  v136 = v306 + 8;
  v137 = *(v306 + 8);
  v137(v135, v308);
  [*(v105 + v126) addSubview:*(v105 + v132)];
  v138 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateLabel;
  v139 = *(v105 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateLabel);
  v140 = sub_1000325F0();
  v141 = v139;
  v142 = sub_100770D1C();
  [v141 setTextColor:v142];

  v143 = *(v105 + v138);
  v311 = 0u;
  v312 = 0u;
  v309 = 0u;
  v310 = 0u;
  v144 = v143;
  sub_10076F95C();
  sub_10000CFBC(&v309, &unk_1009434C0);
  sub_10000CFBC(&v311, &unk_1009434C0);
  sub_100770B9C();

  v305 = v137;
  v306 = v136;
  v137(v135, v308);
  v307 = v126;
  [*(v105 + v126) addSubview:*(v105 + v138)];
  v145 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_ratingView;
  v146 = *(v105 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_ratingView);
  v147 = sub_100770CFC();
  v148 = *&v146[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starColor];
  *&v146[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starColor] = v147;
  v149 = v147;
  if ((sub_100770EEC() & 1) == 0)
  {
    sub_1000620A4();
  }

  v150 = *(v105 + v145);
  v151 = sub_100770D0C();
  v152 = sub_100770CFC();
  v153 = sub_100770D0C();
  v154.super.isa = sub_100770CFC();
  v155.super.isa = v151;
  v156.super.isa = v152;
  v157.super.isa = v153;
  v158.super.isa = sub_100770E3C(v155, v156, v157, v154).super.isa;
  isa = v158.super.isa;
  v160 = *&v150[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarColor];
  *&v150[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarColor] = v158;
  if (v160)
  {
    v161 = v158.super.isa;
    v162 = v160;
    v163 = sub_100770EEC();

    if (v163)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v164 = v158.super.isa;
    v162 = 0;
  }

  sub_1000620A4();
  v161 = isa;
LABEL_28:

  v165 = *(v105 + v145);
  v166 = [v105 traitCollection];

  v167 = [v166 accessibilityContrast];
  v168 = v167 == 0;
  v169 = v165[OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars];
  v165[OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars] = v168;
  if ((v168 ^ v169))
  {
    v170 = *&v165[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView];
    if (v170)
    {
      v171 = *(v170 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_filled);
      *(v170 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_filled) = v168;
      if (((v167 == 0) ^ v171))
      {
        sub_10006363C();
      }
    }
  }

  v304 = v140;

  v172 = qword_1009412B8;
  v173 = *(v105 + v145);
  if (v172 != -1)
  {
    swift_once();
  }

  [v173 setMaximumContentSizeCategory:qword_1009A2598];

  v174 = *(v105 + v145);
  v311 = 0u;
  v312 = 0u;
  v309 = 0u;
  v310 = 0u;
  v175 = v174;
  v176 = v302;
  sub_10076F95C();
  sub_10000CFBC(&v309, &unk_1009434C0);
  sub_10000CFBC(&v311, &unk_1009434C0);
  sub_100770B9C();

  v177 = v308;
  v305(v176, v308);
  v178 = v307;
  [*(v307 + v105) addSubview:*(v105 + v145)];
  v179 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateAuthorLabel;
  v180 = *(v105 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateAuthorLabel);
  v181 = sub_100770D1C();
  [v180 setTextColor:v181];

  v182 = *(v105 + v179);
  v311 = 0u;
  v312 = 0u;
  v309 = 0u;
  v310 = 0u;
  v183 = v182;
  sub_10076F95C();
  sub_10000CFBC(&v309, &unk_1009434C0);
  sub_10000CFBC(&v311, &unk_1009434C0);
  sub_100770B9C();

  v184 = v305;
  v305(v176, v177);
  [*(v178 + v105) addSubview:*(v105 + v179)];
  v185 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_authorLabel;
  v186 = *(v105 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_authorLabel);
  v187 = sub_100770D1C();
  [v186 setTextColor:v187];

  v188 = *(v105 + v185);
  v311 = 0u;
  v312 = 0u;
  v309 = 0u;
  v310 = 0u;
  v189 = v188;
  sub_10076F95C();
  sub_10000CFBC(&v309, &unk_1009434C0);
  sub_10000CFBC(&v311, &unk_1009434C0);
  sub_100770B9C();

  v184(v176, v308);
  [*(v178 + v105) addSubview:*(v105 + v185)];
  v190 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_bodyLabel;
  v191 = *(v105 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_bodyLabel);
  v192 = sub_100770D1C();
  [*&v191[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel] setTextColor:v192];

  v193 = *(v105 + v190);
  if (*(v105 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_hasResponse))
  {
    v194 = 2;
  }

  else
  {
    v194 = 6;
  }

  v195 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines;
  v196 = *&v193[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines];
  *&v193[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines] = v194;
  v197 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
  if (v193[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed])
  {
    v198 = *&v193[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel];
    v199 = v193;
    [v198 setNumberOfLines:v194];
    if (*&v193[v195] == v196)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v200 = v193;
    if (v194 == v196)
    {
      goto LABEL_43;
    }
  }

  if (v193[v197])
  {
    sub_10073D75C();
  }

LABEL_43:

  v201 = *(v105 + v190);
  v202 = *(v105 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isReviewExpanded);
  v203 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
  v204 = v201[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed];
  v201[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed] = v202 ^ 1;
  if (v202)
  {
    v205 = 0;
  }

  else
  {
    v205 = *&v201[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines];
  }

  v206 = *&v201[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel];
  v207 = v201;
  [v206 setNumberOfLines:v205];
  if (v204 != v201[v203])
  {
    sub_10073D75C();
  }

  [*(*(v105 + v190) + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel) setLineBreakMode:4];
  [*(*(v105 + v190) + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel) setTextAlignment:4];
  v208 = *(v105 + v190);
  v208[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_hasMoreButton] = 0;
  v209 = v208;
  sub_10073D75C();

  [*(v105 + v190) setUserInteractionEnabled:1];
  v210 = *(v105 + v190);
  v311 = 0u;
  v312 = 0u;
  v309 = 0u;
  v310 = 0u;
  v211 = v210;
  v212 = v302;
  sub_10076F95C();
  sub_10000CFBC(&v309, &unk_1009434C0);
  sub_10000CFBC(&v311, &unk_1009434C0);
  sub_100770B9C();

  v305(v212, v308);
  v213 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreReviewTapGestureRecognizer;
  v214 = *(v105 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreReviewTapGestureRecognizer);
  v215 = v105;
  [v214 addTarget:v215 action:"moreReviewFrom:"];
  [*(v105 + v213) setDelegate:v215];
  v216 = *(v105 + v190);
  v301 = v213;
  [v216 addGestureRecognizer:*(v105 + v213)];
  v217 = *(v105 + v190);
  v218 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v219 = &v217[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler];
  v220 = *&v217[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler];
  *v219 = sub_1005FA9BC;
  v219[1] = v218;
  swift_retain_n();
  v221 = v217;
  sub_1000167E0(v220);
  v222 = *&v221[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton];

  [v222 setUserInteractionEnabled:1];

  v223 = *(v307 + v105);
  v303 = v190;
  [v223 addSubview:*(v105 + v190)];
  v224 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseTitleLabel;
  v225 = *&v215[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseTitleLabel];
  v315._object = 0x80000001007E1420;
  v315._countAndFlagsBits = 0xD000000000000012;
  v316._countAndFlagsBits = 0;
  v316._object = 0xE000000000000000;
  sub_1007622EC(v315, v316);
  v226 = sub_10076FF6C();

  [v225 setText:v226];

  [*&v215[v224] setHidden:1];
  v227 = *&v215[v224];
  v311 = 0u;
  v312 = 0u;
  v309 = 0u;
  v310 = 0u;
  v228 = v227;
  sub_10076F95C();
  sub_10000CFBC(&v309, &unk_1009434C0);
  sub_10000CFBC(&v311, &unk_1009434C0);
  sub_100770B9C();

  v229 = v308;
  v230 = v305;
  v305(v212, v308);
  [*(v307 + v105) addSubview:*&v215[v224]];
  v231 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseDateLabel;
  v232 = *&v215[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseDateLabel];
  v233 = sub_100770D1C();
  [v232 setTextColor:v233];

  [*&v215[v231] setHidden:1];
  v234 = *&v215[v231];
  v311 = 0u;
  v312 = 0u;
  v309 = 0u;
  v310 = 0u;
  v235 = v234;
  sub_10076F95C();
  sub_10000CFBC(&v309, &unk_1009434C0);
  sub_10000CFBC(&v311, &unk_1009434C0);
  sub_100770B9C();

  v230(v212, v229);
  [*(v307 + v105) addSubview:*&v215[v231]];
  v236 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseBodyLabel;
  v237 = *&v215[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseBodyLabel];
  v238 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines;
  v239 = *&v237[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines];
  *&v237[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines] = 2;
  v240 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
  if (v237[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed] == 1)
  {
    v241 = *&v237[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel];
    v242 = v237;
    [v241 setNumberOfLines:2];
    if (*&v237[v238] == v239)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v243 = v237;
    if (v239 == 2)
    {
      goto LABEL_54;
    }
  }

  if (v237[v240])
  {
    sub_10073D75C();
  }

LABEL_54:

  v244 = *&v215[v236];
  v245 = v215[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isResponseExpanded];
  v246 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
  v247 = v244[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed];
  v244[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed] = v245 ^ 1;
  if (v245)
  {
    v248 = 0;
  }

  else
  {
    v248 = *&v244[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines];
  }

  v249 = *&v244[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel];
  v250 = v244;
  [v249 setNumberOfLines:v248];
  if (v247 != v244[v246])
  {
    sub_10073D75C();
  }

  [*(*&v215[v236] + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel) setLineBreakMode:4];
  v251 = *&v215[v236];
  v251[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_hasMoreButton] = 0;
  v252 = v251;
  sub_10073D75C();

  v253 = *&v215[v236];
  v254 = sub_100770D1C();
  [*&v253[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel] setTextColor:v254];

  [*&v215[v236] setUserInteractionEnabled:1];
  [*&v215[v236] setHidden:1];
  v255 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreResponseTapGestureRecognizer;
  v256 = *&v215[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreResponseTapGestureRecognizer];
  v257 = v215;
  [v256 addTarget:v257 action:"moreResponseFrom:"];
  v258 = *&v215[v255];
  [v258 setDelegate:v257];

  [*&v215[v236] addGestureRecognizer:*&v215[v255]];
  v259 = *&v215[v236];
  v311 = 0u;
  v312 = 0u;
  v309 = 0u;
  v310 = 0u;
  v260 = v259;
  v261 = v302;
  sub_10076F95C();
  sub_10000CFBC(&v309, &unk_1009434C0);
  sub_10000CFBC(&v311, &unk_1009434C0);
  sub_100770B9C();

  v305(v261, v308);
  v262 = *&v215[v236];
  v263 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v264 = &v262[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler];
  v265 = *&v262[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler];
  *v264 = sub_1005FA9E0;
  v264[1] = v263;
  swift_retain_n();
  v266 = v262;
  sub_1000167E0(v265);
  v267 = *&v266[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton];

  [v267 setUserInteractionEnabled:1];

  [*(v307 + v105) addSubview:*&v215[v236]];
  v268 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v257 action:"stateChangedFor:"];

  [v257 addGestureRecognizer:v268];
  [*&v215[v255] setCancelsTouchesInView:0];
  [*(v105 + v301) setCancelsTouchesInView:0];
  v269 = *&v215[v236];
  v270 = &v269[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler];
  v271 = *&v269[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler];
  *v270 = 0;
  *(v270 + 1) = 0;
  v272 = v269;
  sub_1000167E0(v271);
  [*&v272[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton] setUserInteractionEnabled:0];

  v273 = *&v303[v105];
  v274 = &v273[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler];
  v275 = *&v273[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler];
  *v274 = 0;
  *(v274 + 1) = 0;
  v276 = v273;
  sub_1000167E0(v275);
  [*&v276[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton] setUserInteractionEnabled:0];

  sub_1005F8918();
  sub_10000A5D4(&unk_100945BF0);
  v277 = swift_allocObject();
  *(v277 + 16) = xmmword_100784500;
  *(v277 + 32) = sub_10076E88C();
  *(v277 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v277 + 48) = sub_10076E65C();
  *(v277 + 56) = &protocol witness table for UITraitAccessibilityContrast;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v257;
}

void sub_1005F8714(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + *a2);
    if (v5)
    {

      v5(v6);
      sub_1000167E0(v5);
    }
  }
}

void sub_1005F87EC()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isFlowPreviewingDestination;
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isFlowPreviewingDestination))
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 1.0;
  }

  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shadowView) setAlpha:v2];
  if (*(v0 + v1))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_roundedCornerView) setAlpha:v3];
  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_cardContentView);
  if (*(v0 + v1) == 1)
  {
    v5 = [objc_opt_self() clearColor];
  }

  else
  {
    if (qword_1009412B0 != -1)
    {
      swift_once();
    }

    v5 = qword_1009A2590;
  }

  v6 = v5;
  [v4 setBackgroundColor:?];
}

void sub_1005F8918()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_10077071C();

  [*&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateLabel] setHidden:(v3 & 1) == 0];
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_authorLabel] setHidden:(v3 & 1) == 0];
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateAuthorLabel] setHidden:v3 & 1];
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_ratingView];
  if (qword_1009412C0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A5D4(&unk_100945BD0);
  sub_10000A61C(v5, qword_1009A25A0);
  v15 = v1;
  v6 = v1;
  sub_10075FDCC();

  v7 = v4 + OBJC_IVAR____TtC20ProductPageExtension10RatingView_starPadding;
  *v7 = v16;
  *(v7 + 8) = 0;
  sub_100062244(v16, 0);
  v8 = OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView;
  if (*(v4 + OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView))
  {
    sub_100062244(*v7, *(v7 + 8));
  }

  v9 = [v6 traitCollection];
  v10 = [v9 accessibilityContrast];

  v11 = v10 == 0;
  v12 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars);
  *(v4 + OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars) = v11;
  if (v11 != v12)
  {
    v13 = *(v4 + v8);
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_filled);
      *(v13 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_filled) = v11;
      if (((v10 == 0) ^ v14))
      {
        sub_10006363C();
      }
    }
  }
}

id sub_1005F8B18()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ProductReviewView();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  sub_1005F8C40();
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shadowView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_roundedCornerView];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_focusBackgroundView];
  [v0 bounds];
  [v3 setFrame:?];
  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_cardContentView];
  [v0 bounds];
  return [v4 setFrame:?];
}

uint64_t sub_1005F8C40()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_1009542E0);
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v37 = v34 - v3;
  v4 = sub_1007681FC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v34 - v9;
  v11 = sub_10076821C();
  v35 = *(v11 - 8);
  v36 = v11;
  __chkstk_darwin(v11);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isFlowPreviewingDestination];
  if (qword_1009412A8 != -1)
  {
    swift_once();
  }

  v15 = sub_10000A61C(v4, qword_1009A2578);
  (*(v5 + 16))(v7, v15, v4);
  if (v14)
  {
    v59 = &type metadata for Double;
    v60 = &protocol witness table for Double;
    v58 = 0;
    sub_1007681EC();
    v59 = &type metadata for Double;
    v60 = &protocol witness table for Double;
    v58 = 0x4018000000000000;
    sub_1007681CC();
  }

  (*(v5 + 32))(v10, v7, v4);
  v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_titleLabel];
  v17 = sub_1007626BC();
  v59 = v17;
  v60 = &protocol witness table for UILabel;
  v57 = &protocol witness table for UILabel;
  v58 = v16;
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateLabel];
  v56 = v17;
  v54 = &protocol witness table for UILabel;
  v55 = v18;
  v34[1] = v10;
  v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_authorLabel];
  v53 = v17;
  v52 = v19;
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateAuthorLabel];
  v50 = v17;
  v51 = &protocol witness table for UILabel;
  v48 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_bodyLabel];
  v49 = v20;
  type metadata accessor for ExpandableTextView();
  v21 = v16;
  v22 = v18;
  v23 = v19;
  v24 = v20;
  sub_10076D2DC();
  v25 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseTitleLabel];
  v46 = v17;
  v47 = &protocol witness table for UILabel;
  v44 = &protocol witness table for UILabel;
  v45 = v25;
  v26 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseDateLabel];
  v43 = v17;
  v41 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseBodyLabel];
  v42 = v26;
  v27 = v25;
  v28 = v26;
  sub_10076D2DC();
  v40 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_ratingView];
  type metadata accessor for RatingView();
  sub_10076D2DC();
  sub_10076820C();
  [v1 bounds];
  v29 = [v1 traitCollection];
  sub_100374304();
  v31 = v36;
  v30 = v37;
  sub_10076D43C();
  swift_getOpaqueTypeConformance2();
  v32 = v39;
  sub_10076E0EC();

  (*(v38 + 8))(v30, v32);
  return (*(v35 + 8))(v13, v31);
}

id sub_1005F9134(id result)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_hasResponse;
  v3 = v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_hasResponse];
  if (v3 != (result & 1))
  {
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseDateLabel] setHidden:v3 ^ 1u];
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseTitleLabel] setHidden:(v1[v2] & 1) == 0];
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseBodyLabel] setHidden:(v1[v2] & 1) == 0];
    v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_bodyLabel];
    if (v1[v2])
    {
      v5 = 2;
    }

    else
    {
      v5 = 6;
    }

    v6 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines;
    v7 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines);
    *(v4 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines) = v5;
    v8 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
    if (*(v4 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed) == 1)
    {
      [*(v4 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel) setNumberOfLines:?];
      v5 = *(v4 + v6);
    }

    if (v5 != v7 && (*(v4 + v8) & 1) != 0)
    {
      sub_10073D75C();
    }

    return [v1 setNeedsLayout];
  }

  return result;
}

id sub_1005F9288()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_titleLabel);
  v3 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isReviewExpanded;
  [v2 setNumberOfLines:(*(v1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isReviewExpanded) & 1) == 0];
  if (*(v1 + v3))
  {
    v4 = 0;
  }

  else
  {
    v4 = 4;
  }

  [v2 setLineBreakMode:v4];
  v5 = 0;
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_bodyLabel);
  v7 = *(v1 + v3);
  v8 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
  v9 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed);
  *(v6 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed) = v7 ^ 1;
  if ((v7 & 1) == 0)
  {
    v5 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines);
  }

  result = [*(v6 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel) setNumberOfLines:v5];
  if (v9 != *(v6 + v8))
  {
    return sub_10073D75C();
  }

  return result;
}

id sub_1005F9364()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseTitleLabel);
  v3 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isReviewExpanded;
  [v2 setNumberOfLines:(*(v1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isReviewExpanded) & 1) == 0];
  if (*(v1 + v3))
  {
    v4 = 0;
  }

  else
  {
    v4 = 4;
  }

  [v2 setLineBreakMode:v4];
  v5 = 0;
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseBodyLabel);
  v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isResponseExpanded);
  v8 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
  v9 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed);
  *(v6 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed) = v7 ^ 1;
  if ((v7 & 1) == 0)
  {
    v5 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines);
  }

  result = [*(v6 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel) setNumberOfLines:v5];
  if (v9 != *(v6 + v8))
  {
    return sub_10073D75C();
  }

  return result;
}

id sub_1005F9524(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shadowView) setAlpha:0.0];
  v2 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_roundedCornerView);

  return [v2 setAlpha:0.0];
}

id sub_1005F95A0(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shadowView) setAlpha:1.0];
  [*(a1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_roundedCornerView) setAlpha:1.0];
  v2 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_focusBackgroundView);

  return [v2 setAlpha:0.0];
}

uint64_t sub_1005F9630(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v7 = a1;
  }

  v8 = *&a1[*a4];
  if (v8)
  {

    v8(v9);
    sub_1000167E0(v8);
  }

  return sub_10000CFBC(v11, &unk_1009434C0);
}

id sub_1005F9764()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductReviewView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1005F9914()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_1005F9C00;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10009AEDC;
  v5[3] = &unk_10089C808;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.5];
  _Block_release(v3);
}

void sub_1005F9A4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    v13[4] = a5;
    v13[5] = v10;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_10009AEDC;
    v13[3] = a6;
    v11 = _Block_copy(v13);
    v12 = v6;

    [a1 addAnimations:v11];
    _Block_release(v11);
  }
}

uint64_t sub_1005F9B18()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1005F9B50()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shadowView) setAlpha:1.0];
  [*(v1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_roundedCornerView) setAlpha:1.0];
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_focusBackgroundView);

  return [v2 setAlpha:0.0];
}

uint64_t sub_1005F9BC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1005F9C00()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shadowView) setAlpha:0.0];
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_roundedCornerView);

  return [v2 setAlpha:0.0];
}

void sub_1005F9C84()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v91 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076771C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v7 - 8);
  v90 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v79 - v10;
  v12 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_titleLabel;
  if (qword_100940C78 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v0, qword_1009A1360);
  v96 = *(v1 + 16);
  v97 = v1 + 16;
  v96(v11, v13, v0);
  v92 = v1;
  v14 = *(v1 + 56);
  v99 = v1 + 56;
  v14(v11, 0, 1, v0);
  v15 = *(v4 + 104);
  v95 = enum case for DirectionalTextAlignment.none(_:);
  v88 = v4 + 104;
  v89 = v3;
  v94 = v15;
  (v15)(v6);
  v93 = sub_1007626BC();
  v16 = objc_allocWithZone(v93);
  *(v98 + v12) = sub_1007626AC();
  v17 = type metadata accessor for RatingView();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating] = 0;
  *&v18[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarColor] = 0;
  v19 = &v18[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starPadding];
  *v19 = 0;
  v19[8] = 1;
  *&v18[OBJC_IVAR____TtC20ProductPageExtension10RatingView_maxNumberOfStars] = 5;
  if (qword_10093F570 != -1)
  {
    swift_once();
  }

  v20 = qword_100944D30;
  *&v18[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starColor] = qword_100944D30;
  v18[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starSize] = 1;
  *v19 = 0x4008000000000000;
  v19[8] = 0;
  v18[OBJC_IVAR____TtC20ProductPageExtension10RatingView_useCase] = 1;
  v21 = type metadata accessor for StarRow();
  v22 = objc_allocWithZone(v21);
  v23 = v20;
  *&v18[OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView] = sub_10006446C(5, 1, 1, 0x4008000000000000, 0, 0, 1);
  v18[OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars] = 0;
  v24 = objc_allocWithZone(v21);
  *&v18[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView] = sub_10006446C(5, 0, 1, 0x4008000000000000, 0, 0, 1);
  v100.receiver = v18;
  v100.super_class = v17;
  v25 = objc_msgSendSuper2(&v100, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1000620A4();
  v26 = OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView;
  v27 = *&v25[OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView];
  v28 = *&v27[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating];
  *&v27[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating] = *&v25[OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating];
  v29 = v27;
  sub_100062B94(v28);

  if (*&v25[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView])
  {
    [v25 addSubview:?];
  }

  v30 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_ratingView;
  [v25 addSubview:*&v25[v26]];

  *(v98 + v30) = v25;
  v31 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateLabel;
  v32 = v96;
  if (qword_100940C90 != -1)
  {
    swift_once();
  }

  v84 = sub_10000A61C(v0, qword_1009A13A8);
  v32(v11);
  v14(v11, 0, 1, v0);
  v33 = v89;
  v94(v6, v95, v89);
  v34 = objc_allocWithZone(v93);
  *(v98 + v31) = sub_1007626AC();
  v35 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_authorLabel;
  if (qword_100940C98 != -1)
  {
    swift_once();
  }

  v36 = sub_10000A61C(v0, qword_1009A13C0);
  (v32)(v11, v36, v0);
  v14(v11, 0, 1, v0);
  v94(v6, v95, v33);
  v37 = objc_allocWithZone(v93);
  *(v98 + v35) = sub_1007626AC();
  v38 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateAuthorLabel;
  if (qword_100940CA0 != -1)
  {
    swift_once();
  }

  v39 = sub_10000A61C(v0, qword_1009A13D8);
  (v32)(v11, v39, v0);
  v14(v11, 0, 1, v0);
  v94(v6, v95, v33);
  v40 = objc_allocWithZone(v93);
  *(v98 + v38) = sub_1007626AC();
  v79 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_bodyLabel;
  if (qword_100940C88 != -1)
  {
    swift_once();
  }

  v85 = v6;
  v41 = sub_10000A61C(v0, qword_1009A1390);
  v42 = v91;
  v83 = v41;
  v32(v91);
  v82 = objc_opt_self();
  v43 = [v82 clearColor];
  v81 = type metadata accessor for ExpandableTextView();
  v44 = objc_allocWithZone(v81);
  v45 = v43;
  v46 = sub_10073C780(v45, 0.0, 0.0, 0.0, 0.0);
  (v32)(v11, v42, v0);
  v87 = v14;
  v14(v11, 0, 1, v0);
  sub_100389394(v11, v90);
  v47 = v46;
  sub_1007625DC();

  sub_10000CFBC(v11, &unk_100943250);
  v48 = *(v92 + 8);
  v92 += 8;
  v80 = v48;
  v48(v42, v0);

  v49 = v98;
  *(v98 + v79) = v47;
  v79 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseTitleLabel;
  if (qword_100940C80 != -1)
  {
    swift_once();
  }

  v50 = sub_10000A61C(v0, qword_1009A1378);
  v96(v11, v50, v0);
  v51 = v87;
  v87(v11, 0, 1, v0);
  v52 = v85;
  v86 = v0;
  v53 = v95;
  v54 = v89;
  v55 = v94;
  v94(v85, v95, v89);
  v56 = v93;
  v57 = objc_allocWithZone(v93);
  *(v49 + v79) = sub_1007626AC();
  v79 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseDateLabel;
  v58 = v86;
  v96(v11, v84, v86);
  v51(v11, 0, 1, v58);
  v55(v52, v53, v54);
  v59 = objc_allocWithZone(v56);
  *(v49 + v79) = sub_1007626AC();
  v60 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseBodyLabel;
  v61 = v91;
  v62 = v86;
  v63 = v96;
  v96(v91, v83, v86);
  v64 = [v82 clearColor];
  v65 = objc_allocWithZone(v81);
  v66 = v64;
  v67 = sub_10073C780(v66, 0.0, 0.0, 0.0, 0.0);
  v63(v11, v61, v62);
  v87(v11, 0, 1, v62);
  sub_100389394(v11, v90);
  v68 = v67;
  sub_1007625DC();

  sub_10000CFBC(v11, &unk_100943250);
  v80(v61, v62);

  *(v49 + v60) = v68;
  v69 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shadowView;
  sub_10075F99C();
  *(v49 + v69) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v70 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_roundedCornerView;
  sub_10076394C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v49 + v70) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v72 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_focusBackgroundView;
  *(v49 + v72) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v73 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_cardContentView;
  *(v49 + v73) = [objc_allocWithZone(UIView) init];
  v74 = (v49 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreReviewTapHandler);
  *v74 = 0;
  v74[1] = 0;
  v75 = (v49 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreResponseTapHandler);
  *v75 = 0;
  v75[1] = 0;
  v76 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreReviewTapGestureRecognizer;
  *(v49 + v76) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v77 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreResponseTapGestureRecognizer;
  *(v49 + v77) = [objc_allocWithZone(UITapGestureRecognizer) init];
  *(v49 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isFlowPreviewingDestination) = 0;
  *(v49 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_hasResponse) = 0;
  *(v49 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isReviewExpanded) = 1;
  *(v49 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isResponseExpanded) = 1;
  *(v49 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shouldHandleTextSelection) = 1;
  v78 = (v49 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_actionHandler);
  *v78 = 0;
  v78[1] = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1005FA984()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005FAA1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076F1FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076F1EC();
  v10 = v9;
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v7, v4);
  v13 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v4) = sub_10072F844();

  if (v4)
  {
    sub_1005FCF70();
    v14 = *(v2 + 24);
    if (v14)
    {
      sub_100016F40(0, &qword_100942F10);
      v15 = v14;
      isa = sub_100770E4C(1.0, 0.58431, 0.0, 0.5).super.isa;
      sub_1005FCA1C(v8, v10, isa, sub_1005FD6C8, v12, 3.0);
    }
  }
}

void sub_1005FAF70()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_tintView];
  [v1 _setCornerRadius:20.0];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v1];
  v2 = objc_opt_self();
  sub_10000A5D4(&unk_100942870);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100786040;
  v4 = [v1 topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [v1 leftAnchor];
  v8 = [v0 leftAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v3 + 40) = v9;
  v10 = [v1 bottomAnchor];
  v11 = [v0 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v3 + 48) = v12;
  v13 = [v1 rightAnchor];
  v14 = [v0 rightAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v3 + 56) = v15;
  sub_100016F40(0, &qword_100945D78);
  isa = sub_1007701AC().super.isa;

  [v2 activateConstraints:isa];

  [v0 _setCornerRadius:20.0];
  [v0 setLayoutMargins:{8.0, 16.0, 8.0, 16.0}];
  [v0 setClipsToBounds:1];
  v17 = [objc_opt_self() whiteColor];
  [v0 setBackgroundColor:v17];

  v18 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"didTapFrom:"];
  [v0 addGestureRecognizer:v18];
}

id sub_1005FB3C0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_tintView;
  *&v1[v4] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_viewConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_view] = 0;
  v5 = &v1[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_tapAction];
  *v5 = 0;
  *(v5 + 1) = 0;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_1005FAF70();
  }

  return v7;
}

void sub_1005FB4C0(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_viewConstraints;
  sub_100016F40(0, &qword_100945D78);

  isa = sub_1007701AC().super.isa;

  [v3 deactivateConstraints:isa];

  *(v1 + v4) = a1;

  v6 = sub_1007701AC().super.isa;

  [v3 activateConstraints:v6];
}

id sub_1005FB5C0()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_view];
  if (v1)
  {
    v2 = v1;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v0 addSubview:v2];
    v3 = [v2 bottomAnchor];
    v4 = [v0 layoutMarginsGuide];
    v5 = [v4 bottomAnchor];

    v6 = [v3 constraintEqualToAnchor:v5];
    LODWORD(v7) = 1140457472;
    [v6 setPriority:v7];
    sub_10000A5D4(&unk_100942870);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100786040;
    v9 = [v2 topAnchor];
    v10 = [v0 layoutMarginsGuide];
    v11 = [v10 topAnchor];

    v12 = [v9 constraintEqualToAnchor:v11];
    *(v8 + 32) = v12;
    v13 = [v2 leftAnchor];
    v14 = [v0 layoutMarginsGuide];
    v15 = [v14 leftAnchor];

    v16 = [v13 constraintEqualToAnchor:v15];
    *(v8 + 40) = v16;
    *(v8 + 48) = v6;
    v17 = v6;
    v18 = [v2 rightAnchor];
    v19 = [v0 layoutMarginsGuide];
    v20 = [v19 rightAnchor];

    v21 = [v18 constraintEqualToAnchor:v20];
    *(v8 + 56) = v21;
    sub_1005FB4C0(v8);
  }

  else
  {
    sub_1005FB4C0(_swiftEmptyArrayStorage);
  }

  return [v0 invalidateIntrinsicContentSize];
}

void sub_1005FBA00()
{
  v39.receiver = v0;
  v39.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v39, "viewDidLoad");
  v1 = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_cardStackView;
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_cardStackView];
  *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_cardStackView] = v1;
  v4 = v1;

  if (!v4)
  {
    __break(1u);
    goto LABEL_18;
  }

  [v4 setAxis:1];

  v5 = *&v0[v2];
  if (!v5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v5 setAlignment:0];
  v6 = *&v0[v2];
  if (!v6)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v6 setDistribution:3];
  v7 = *&v0[v2];
  if (!v7)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v7 setSpacing:16.0];
  v8 = *&v0[v2];
  if (!v8)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!*&v0[v2])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v10 = v9;
  [v9 addSubview:?];

  v11 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = *&v0[v2];
  if (!v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v12 addArrangedSubview:v11];
  sub_10000A5D4(&unk_100942870);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100784DC0;
  v14 = *&v0[v2];
  if (!v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = [v14 topAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = v16;
  v18 = [v16 layoutMarginsGuide];

  v19 = [v18 topAnchor];
  v20 = [v15 constraintEqualToAnchor:v19];

  *(v13 + 32) = v20;
  v21 = *&v0[v2];
  if (!v21)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22 = [v21 leftAnchor];
  v23 = [v0 view];
  if (!v23)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v24 = v23;
  v25 = [v23 layoutMarginsGuide];

  v26 = [v25 leftAnchor];
  v27 = [v22 constraintEqualToAnchor:v26];

  *(v13 + 40) = v27;
  v28 = *&v0[v2];
  if (!v28)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v29 = [v28 rightAnchor];
  v30 = [v0 view];
  if (!v30)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v31 = v30;
  v32 = objc_opt_self();
  v33 = [v31 layoutMarginsGuide];

  v34 = [v33 rightAnchor];
  v35 = [v29 constraintEqualToAnchor:v34];

  *(v13 + 48) = v35;
  sub_100016F40(0, &qword_100945D78);
  isa = sub_1007701AC().super.isa;

  [v32 activateConstraints:isa];

  v37 = [v0 view];
  if (v37)
  {
    v38 = v37;
    [v37 layoutIfNeeded];

    return;
  }

LABEL_31:
  __break(1u);
}