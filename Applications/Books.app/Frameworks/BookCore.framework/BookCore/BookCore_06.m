uint64_t sub_1A5744(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1EDEF4();
  v33 = *(v6 - 8);
  v34 = v6;
  __chkstk_darwin(v6);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18AFC0(&qword_340B18);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for Achievement();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ReadingAchievementsController.State(0);
  v15 = __chkstk_darwin(v31);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v31 - v18;
  swift_beginAccess();
  v20 = sub_1AB1E4(a2);
  swift_endAccess();

  sub_1ACEFC(a3, type metadata accessor for Achievement);
  *a3 = 0;
  *(a3 + 8) = 0;
  swift_storeEnumTagMultiPayload();
  v21 = OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_state;
  swift_beginAccess();
  sub_1AD1F4(a1 + v21, v19, type metadata accessor for ReadingAchievementsController.State);
  sub_1AD1F4(a3, v14, type metadata accessor for Achievement);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v23 = 1;
    }

    else
    {
      v24 = *(sub_18AFC0(&qword_340AE8) + 48);
      v25 = sub_1EE684();
      (*(*(v25 - 8) + 8))(&v14[v24], v25);
      v23 = 2;
    }
  }

  else
  {
    v23 = 0;
  }

  sub_1AD1F4(a3, v10, type metadata accessor for Achievement);
  (*(v12 + 56))(v10, 0, 1, v11);
  v26 = v31;
  sub_1AF134(v10, v23);
  v27 = *(a1 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_currentTimeProvider);

  v29 = v32;
  v27(v28);

  (*(v33 + 40))(&v19[*(v26 + 24)], v29, v34);
  sub_1AD1F4(v19, v17, type metadata accessor for ReadingAchievementsController.State);
  swift_beginAccess();
  sub_1AD25C(v17, a1 + v21);
  swift_endAccess();
  sub_19DF64();
  sub_1ACEFC(v17, type metadata accessor for ReadingAchievementsController.State);
  return sub_1ACEFC(v19, type metadata accessor for ReadingAchievementsController.State);
}

void sub_1A5BA4()
{
  v1 = v0;
  sub_1EF084();
  sub_1928F4(0, &qword_341A60);
  v2 = sub_1EF404();
  sub_18AFC0(&qword_340AF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2A5AF0;
  v4 = OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_timers;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = sub_1EF494();
  }

  else
  {
    v6 = *(v5 + 16);
  }

  *(v3 + 56) = &type metadata for Int;
  *(v3 + 64) = &protocol witness table for Int;
  *(v3 + 32) = v6;
  sub_1EEAA4();

  v22 = v4;
  v23 = v1;
  v7 = *(v1 + v4);
  if ((v7 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1EF484();
    sub_1928F4(0, &qword_340B00);
    sub_1ACFB0();
    sub_1EF044();
    v9 = v25;
    v8 = v26;
    v11 = v27;
    v10 = v28;
    v12 = v29;
  }

  else
  {
    v13 = -1 << *(v7 + 32);
    v8 = v7 + 56;
    v11 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v7 + 56);
    swift_bridgeObjectRetain_n();
    v10 = 0;
    v9 = v7;
  }

  v16 = (v11 + 64) >> 6;
  if (v9 < 0)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v17 = v10;
    v18 = v12;
    v19 = v10;
    if (!v12)
    {
      break;
    }

LABEL_15:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v9 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v21)
    {
LABEL_21:
      sub_1AD018();

      *(v23 + v22) = &_swiftEmptySetSingleton;

      return;
    }

    while (1)
    {
      [v21 invalidate];

      v10 = v19;
      v12 = v20;
      if ((v9 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_17:
      if (sub_1EF4B4())
      {
        sub_1928F4(0, &qword_340B00);
        swift_dynamicCast();
        v21 = v24;
        v19 = v10;
        v20 = v12;
        if (v24)
        {
          continue;
        }
      }

      goto LABEL_21;
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_21;
    }

    v18 = *(v8 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1A5ECC(uint64_t a1, double a2)
{
  v5 = sub_1EDF14();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 16);
  (*(v6 + 16))(v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = (v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v10, v8, v5);
  *(v12 + v11) = v2;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1ABF20;
  *(v13 + 24) = v12;
  aBlock[4] = sub_19CCC4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199688;
  aBlock[3] = &unk_2D03F8;
  v14 = _Block_copy(aBlock);

  dispatch_sync(v9, v14);
  _Block_release(v14);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A6114(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_1EDF14();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v26 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v25 = v24 - v10;
  v24[1] = sub_1EF0B4();
  sub_1928F4(0, &qword_341A60);
  v11 = sub_1EF404();
  sub_18AFC0(&qword_340AF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2A5D70;
  v27 = a1;
  v13 = sub_1EDF04();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  v16 = sub_1ACF5C();
  *(v12 + 64) = v16;
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  v17 = OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_sessions;
  swift_beginAccess();
  sub_1ACEB4(&qword_340B70, &type metadata accessor for UUID);

  v18 = sub_1EF024();
  v20 = v19;

  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v16;
  *(v12 + 72) = v18;
  *(v12 + 80) = v20;
  sub_1EEAA4();

  if (!*(*(a2 + v17) + 16))
  {
    sub_1A4738(-a3);
  }

  v21 = v26;
  (*(v7 + 16))(v26, v27, v6);
  swift_beginAccess();
  v22 = v25;
  sub_1A9344(v25, v21);
  (*(v7 + 8))(v22, v6);
  return swift_endAccess();
}

uint64_t sub_1A63D8(uint64_t a1)
{
  v3 = sub_1EDF14();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = *(v1 + 16);
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  (*(v4 + 32))(v8 + v7, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1ABFF8;
  *(v9 + 24) = v8;
  aBlock[4] = sub_1ADC78;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199688;
  aBlock[3] = &unk_2D0470;
  v10 = _Block_copy(aBlock);

  dispatch_sync(v6, v10);
  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_1A65F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_18AFC0(&qword_340B68);
  __chkstk_darwin(v4 - 8);
  v6 = v24 - v5;
  v7 = OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_sessions;
  swift_beginAccess();
  v8 = *(a1 + v7);

  v9 = sub_1A691C(a2, v8);

  if (v9)
  {
    v24[3] = sub_1EF0B4();
    sub_1928F4(0, &qword_341A60);
    v10 = sub_1EF404();
    sub_18AFC0(&qword_340AF0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_2A5D70;
    v12 = sub_1EDF04();
    v14 = v13;
    *(v11 + 56) = &type metadata for String;
    v15 = sub_1ACF5C();
    *(v11 + 64) = v15;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    sub_1EDF14();
    sub_1ACEB4(&qword_340B70, &type metadata accessor for UUID);

    v16 = sub_1EF024();
    v18 = v17;

    *(v11 + 96) = &type metadata for String;
    *(v11 + 104) = v15;
    *(v11 + 72) = v16;
    *(v11 + 80) = v18;
    sub_1EEAA4();

    swift_beginAccess();
    sub_1AB37C(a2, v6);
    sub_1927B4(v6, &qword_340B68);
    swift_endAccess();
    if (!*(*(a1 + v7) + 16))
    {
      sub_1A5BA4();
    }
  }

  else
  {
    sub_1EF094();
    sub_1928F4(0, &qword_341A60);
    v19 = sub_1EF404();
    sub_18AFC0(&qword_340AF0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_2A5AF0;
    v21 = sub_1EDF04();
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_1ACF5C();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    sub_1EEAA4();
  }
}

uint64_t sub_1A691C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1EDF14();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1ACEB4(&qword_340B70, &type metadata accessor for UUID), v7 = sub_1EEE84(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1ACEB4(&qword_340B78, &type metadata accessor for UUID);
      v15 = sub_1EEEB4();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

unint64_t sub_1A6B40(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  v68 = sub_1EED84();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1EEDE4();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18AFC0(&qword_340B18);
  __chkstk_darwin(v5 - 8);
  v57 = (&v57 - v6);
  v7 = type metadata accessor for ReadingAchievementsController.State(0);
  v75 = v7;
  v58 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v60 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v9;
  __chkstk_darwin(v8);
  v62 = &v57 - v10;
  v11 = type metadata accessor for Achievement();
  v71 = *(v11 - 8);
  v72 = v11;
  v12 = __chkstk_darwin(v11);
  v70 = (&v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v69 = &v57 - v15;
  __chkstk_darwin(v14);
  v73 = &v57 - v16;
  v17 = sub_1EDF84();
  v77 = *(v17 - 8);
  v78 = v17;
  __chkstk_darwin(v17);
  v76 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1EDEF4();
  v74 = v19;
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1;
  v23 = a1 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_state;
  swift_beginAccess();
  (*(v20 + 16))(v22, v23 + *(v7 + 24), v19);
  sub_18AFC0(&qword_3405E8);
  v24 = sub_1EDF74();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2A5D80;
  v29 = v28 + v27;
  v30 = *(v25 + 104);
  v30(v29, enum case for Calendar.Component.year(_:), v24);
  v30(v29 + v26, enum case for Calendar.Component.month(_:), v24);
  v30(v29 + 2 * v26, enum case for Calendar.Component.day(_:), v24);
  sub_19A190(v28);
  swift_setDeallocating();
  v31 = v23;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v32 = v76;
  sub_1EDF24();
  LOBYTE(v24) = sub_1EDE64();

  (*(v77 + 8))(v32, v78);
  result = (*(v20 + 8))(v22, v74);
  if (v24)
  {
    v34 = *(v23 + *(v75 + 20));
    if (*(v34 + 16))
    {
      result = sub_1B0728(1u);
      if (v35)
      {
        v36 = v71;
        v37 = v69;
        sub_1AD1F4(*(v34 + 56) + *(v71 + 72) * result, v69, type metadata accessor for Achievement);
        v38 = v73;
        sub_1AD51C(v37, v73, type metadata accessor for Achievement);
        v39 = v70;
        sub_1AD1F4(v38, v70, type metadata accessor for Achievement);
        v40 = v72;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          if (*v39 == 1)
          {
            v41 = v62;
            sub_1AD1F4(v31, v62, type metadata accessor for ReadingAchievementsController.State);
            v42 = swift_allocBox();
            v44 = v43;
            sub_1AD1F4(v41, v43, type metadata accessor for ReadingAchievementsController.State);
            v45 = v57;
            *v57 = 0;
            swift_storeEnumTagMultiPayload();
            (*(v36 + 56))(v45, 0, 1, v40);
            sub_1AF134(v45, 1);
            v46 = v60;
            sub_1AD1F4(v44, v60, type metadata accessor for ReadingAchievementsController.State);
            swift_beginAccess();
            sub_1AD25C(v46, v31);
            swift_endAccess();
            v47 = v61;
            sub_19DF64();
            sub_1ACEFC(v46, type metadata accessor for ReadingAchievementsController.State);
            v79 = *(v47 + 24);
            v48 = swift_allocObject();
            swift_weakInit();
            sub_1AD1F4(v41, v46, type metadata accessor for ReadingAchievementsController.State);
            v49 = (*(v58 + 80) + 24) & ~*(v58 + 80);
            v50 = (v59 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
            v51 = swift_allocObject();
            *(v51 + 16) = v48;
            sub_1AD51C(v46, v51 + v49, type metadata accessor for ReadingAchievementsController.State);
            v78 = v42;
            *(v51 + v50) = v42;
            aBlock[4] = sub_1ADA5C;
            aBlock[5] = v51;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_195254;
            aBlock[3] = &unk_2D0738;
            v52 = _Block_copy(aBlock);

            v53 = v63;
            sub_1EEDA4();
            v80 = &_swiftEmptyArrayStorage;
            sub_1ACEB4(&qword_340390, &type metadata accessor for DispatchWorkItemFlags);
            sub_18AFC0(&qword_340398);
            sub_19A5C8(&qword_3403A0, &qword_340398);
            v54 = v65;
            v55 = v68;
            sub_1EF454();
            sub_1EF164();
            _Block_release(v52);
            (*(v67 + 8))(v54, v55);
            (*(v64 + 8))(v53, v66);
            sub_1ACEFC(v41, type metadata accessor for ReadingAchievementsController.State);
            sub_1ACEFC(v73, type metadata accessor for Achievement);
          }

          v56 = v38;
        }

        else
        {
          sub_1ACEFC(v38, type metadata accessor for Achievement);
          v56 = v39;
        }

        return sub_1ACEFC(v56, type metadata accessor for Achievement);
      }
    }
  }

  return result;
}

uint64_t sub_1A759C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ReadingAchievementsController.State(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    sub_1AD1F4(v6, v5, type metadata accessor for ReadingAchievementsController.State);
    sub_1A76B4(a2, v5, 0);

    return sub_1ACEFC(v5, type metadata accessor for ReadingAchievementsController.State);
  }

  return result;
}

uint64_t sub_1A76B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1EE684();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v175 = v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v176 = v160 - v11;
  __chkstk_darwin(v10);
  v194 = v160 - v12;
  v13 = type metadata accessor for Achievement();
  v197 = *(v13 - 8);
  v198 = v13;
  v14 = __chkstk_darwin(v13);
  v178 = (v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v177 = v160 - v17;
  v18 = __chkstk_darwin(v16);
  v179 = v160 - v19;
  v20 = __chkstk_darwin(v18);
  v183 = (v160 - v21);
  v22 = __chkstk_darwin(v20);
  v182 = v160 - v23;
  v24 = __chkstk_darwin(v22);
  v181 = v160 - v25;
  v26 = __chkstk_darwin(v24);
  v193 = (v160 - v27);
  v28 = __chkstk_darwin(v26);
  v195 = v160 - v29;
  v30 = __chkstk_darwin(v28);
  v186 = v160 - v31;
  v32 = __chkstk_darwin(v30);
  v188 = v160 - v33;
  v34 = __chkstk_darwin(v32);
  v192 = (v160 - v35);
  v36 = __chkstk_darwin(v34);
  v190 = v160 - v37;
  v38 = __chkstk_darwin(v36);
  v180 = v160 - v39;
  v40 = __chkstk_darwin(v38);
  v185 = v160 - v41;
  v42 = __chkstk_darwin(v40);
  v189 = v160 - v43;
  v44 = __chkstk_darwin(v42);
  v184 = v160 - v45;
  v46 = __chkstk_darwin(v44);
  v187 = v160 - v47;
  v48 = __chkstk_darwin(v46);
  v191 = (v160 - v49);
  v50 = __chkstk_darwin(v48);
  v196 = v160 - v51;
  __chkstk_darwin(v50);
  v53 = v160 - v52;
  v54 = type metadata accessor for ReadingAchievementsController.State(0);
  sub_1EDEF4();
  sub_1ACEB4(&qword_3405E0, &type metadata accessor for Date);
  result = sub_1EEEA4();
  if (result)
  {
    return result;
  }

  v173 = v6;
  v171 = a3;
  v56 = *(a2 + *(v54 + 20));

  v57 = sub_1A8AB4(v172);

  result = sub_1A8BAC(v58, v57);
  v59 = 0;
  v61 = result + 56;
  v60 = *(result + 56);
  v199 = result;
  v62 = 1 << *(result + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & v60;
  v169 = (v3 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_notifier);
  v65 = (v62 + 63) >> 6;
  v170 = (v7 + 32);
  v174 = (v7 + 8);
  v167 = xmmword_2A5D90;
  v168 = xmmword_2A5AF0;
  while (v64)
  {
    v66 = v64;
LABEL_11:
    v64 = (v66 - 1) & v66;
    if (*(v56 + 16))
    {
      v68 = __clz(__rbit64(v66)) | (v59 << 6);
      v69 = *(*(v199 + 48) + v68);
      result = sub_1B0728(*(*(v199 + 48) + v68));
      if (v70)
      {
        v71 = v196;
        v72 = *(v197 + 72);
        sub_1AD1F4(*(v56 + 56) + v72 * result, v196, type metadata accessor for Achievement);
        sub_1AD51C(v71, v53, type metadata accessor for Achievement);
        if (!v69)
        {
          v73 = v191;
          sub_1AD1F4(v53, v191, type metadata accessor for Achievement);
          if (swift_getEnumCaseMultiPayload())
          {
            goto LABEL_34;
          }

          v82 = v172;
          if (*(v172 + 16) && (v83 = sub_1B0728(0), (v84 & 1) != 0))
          {
            v85 = v187;
            sub_1AD1F4(*(v82 + 56) + v83 * v72, v187, type metadata accessor for Achievement);
            v86 = v184;
            sub_1AD1F4(v85, v184, type metadata accessor for Achievement);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload)
            {
              v88 = v174;
              if (EnumCaseMultiPayload == 1)
              {
                v89 = *v86 < 1;
              }

              else
              {
                v109 = sub_18AFC0(&qword_340AE8);
                (*v88)(v86 + *(v109 + 48), v173);
                v89 = 1;
              }

LABEL_69:
              LODWORD(v165) = v89;
            }

            else
            {
              v88 = v174;
              if ((*(v86 + 8) & 1) == 0)
              {
                v89 = *v86 <= 0.0;
                goto LABEL_69;
              }

              LODWORD(v165) = 0;
            }

            v107 = v189;
            sub_1ACEFC(v187, type metadata accessor for Achievement);
          }

          else
          {
            LODWORD(v165) = 0;
            v107 = v189;
            v88 = v174;
          }

          sub_1AD1F4(v53, v107, type metadata accessor for Achievement);
          v136 = swift_getEnumCaseMultiPayload();
          if (v136)
          {
            if (v136 == 1)
            {
              v137 = *v107 < 1;
            }

            else
            {
              v138 = sub_18AFC0(&qword_340AE8);
              (*v88)(v107 + *(v138 + 48), v173);
              v137 = 1;
            }

LABEL_78:
            LODWORD(v164) = v137;
          }

          else
          {
            if ((*(v107 + 8) & 1) == 0)
            {
              v137 = *v107 <= 0.0;
              goto LABEL_78;
            }

            LODWORD(v164) = 0;
          }

          v139 = v171;
          v163 = v53;
          if (v171 && *(v171 + 16) && (v140 = sub_1B0728(0), (v141 & 1) != 0))
          {
            v142 = v185;
            sub_1AD1F4(*(v139 + 56) + v140 * v72, v185, type metadata accessor for Achievement);
            v143 = v142;
            v144 = v180;
            sub_1AD1F4(v143, v180, type metadata accessor for Achievement);
            v145 = swift_getEnumCaseMultiPayload();
            if (v145)
            {
              if (v145 == 1)
              {
                v146 = *v144 < 1;
              }

              else
              {
                v159 = sub_18AFC0(&qword_340AE8);
                (*v174)(v144 + *(v159 + 48), v173);
                v146 = 1;
              }
            }

            else
            {
              v146 = (*(v144 + 8) & 1) == 0 && *v144 <= 0.0;
            }

            LODWORD(v166) = v146;
            sub_1ACEFC(v185, type metadata accessor for Achievement);
          }

          else
          {
            LODWORD(v166) = 0;
          }

          LODWORD(v162) = sub_1EF074();
          v160[1] = sub_18AFC0(&qword_340AF0);
          v147 = swift_allocObject();
          *(v147 + 16) = v167;
          v200 = 0;
          v148 = sub_1EEF54();
          v150 = v149;
          *(v147 + 56) = &type metadata for String;
          v161 = sub_1ACF5C();
          *(v147 + 64) = v161;
          *(v147 + 32) = v148;
          *(v147 + 40) = v150;
          *(v147 + 96) = &type metadata for Bool;
          *(v147 + 104) = &protocol witness table for Bool;
          v151 = v165;
          *(v147 + 72) = v165;
          *(v147 + 136) = &type metadata for Bool;
          *(v147 + 144) = &protocol witness table for Bool;
          v152 = v164;
          *(v147 + 112) = v164 & 1;
          *(v147 + 176) = &type metadata for Bool;
          *(v147 + 184) = &protocol witness table for Bool;
          *(v147 + 152) = v166;
          sub_1928F4(0, &qword_341A60);
          v153 = sub_1EF3E4();
          sub_1EEAA4();

          v154 = v151 | ~v152;
          v53 = v163;
          v106 = v163;
          if ((v154 & 1) == 0)
          {
            v106 = v163;
            if ((v166 & 1) == 0)
            {
              sub_1EF084();
              v131 = sub_1EF404();
              v155 = swift_allocObject();
              *(v155 + 16) = v168;
              sub_1AD1F4(v53, v190, type metadata accessor for Achievement);
              v156 = sub_1EEF54();
              v157 = v161;
              *(v155 + 56) = &type metadata for String;
              *(v155 + 64) = v157;
              *(v155 + 32) = v156;
              *(v155 + 40) = v158;
              goto LABEL_89;
            }
          }

          goto LABEL_91;
        }

        if (v69 != 1)
        {
          v73 = v193;
          sub_1AD1F4(v53, v193, type metadata accessor for Achievement);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
LABEL_34:
            sub_1ACEFC(v53, type metadata accessor for Achievement);
            v106 = v73;
            goto LABEL_91;
          }

          v90 = *v73;
          v164 = sub_18AFC0(&qword_340AE8);
          v91 = v73 + *(v164 + 48);
          v92 = v194;
          v93 = v173;
          v165 = *v170;
          v165(v194, v91, v173);
          v166 = v90;
          if (v90 < 2)
          {
            (*v174)(v92, v93);
            goto LABEL_90;
          }

          v94 = v172;
          if (*(v172 + 16))
          {
            v95 = sub_1B0728(2u);
            if (v96)
            {
              v97 = v182;
              sub_1AD1F4(*(v94 + 56) + v95 * v72, v182, type metadata accessor for Achievement);
              v98 = v97;
              v99 = v181;
              sub_1AD51C(v98, v181, type metadata accessor for Achievement);
              v100 = v183;
              sub_1AD1F4(v99, v183, type metadata accessor for Achievement);
              if (swift_getEnumCaseMultiPayload() == 2)
              {
                v101 = *v100;
                v102 = v100 + *(v164 + 48);
                v103 = v176;
                v165(v176, v102, v173);
                LODWORD(v162) = sub_1EE664();
                v104 = v103;
                v105 = v173;
                v161 = *v174;
                v161(v104, v173);
                sub_1ACEFC(v99, type metadata accessor for Achievement);
                if (v162)
                {
                  v161(v194, v105);
                  goto LABEL_90;
                }

LABEL_46:
                v110 = v194;
                v111 = v174;
                v112 = v171;
                if (v171 && *(v171 + 16) && (v113 = sub_1B0728(2u), v110 = v194, (v114 & 1) != 0))
                {
                  v115 = v177;
                  sub_1AD1F4(*(v112 + 56) + v113 * v72, v177, type metadata accessor for Achievement);
                  v116 = v179;
                  sub_1AD51C(v115, v179, type metadata accessor for Achievement);
                  v117 = v178;
                  sub_1AD1F4(v116, v178, type metadata accessor for Achievement);
                  if (swift_getEnumCaseMultiPayload() == 2)
                  {
                    v162 = v101;
                    v161 = *v117;
                    v118 = v175;
                    v119 = v173;
                    v165(v175, v117 + *(v164 + 48), v173);
                    v120 = v194;
                    LODWORD(v165) = sub_1EE664();
                    v111 = v174;
                    v121 = v118;
                    v122 = *v174;
                    (*v174)(v121, v119);
                    sub_1ACEFC(v179, type metadata accessor for Achievement);
                    if (v165)
                    {
                      v122(v120, v119);
                      goto LABEL_90;
                    }

                    v110 = v120;
                    if (v162 >= v166 || v161 >= v166)
                    {
LABEL_54:
                      (*v111)(v110, v173);
                      goto LABEL_90;
                    }
                  }

                  else
                  {
                    sub_1ACEFC(v116, type metadata accessor for Achievement);
                    sub_1ACEFC(v117, type metadata accessor for Achievement);
                    v110 = v194;
                    v111 = v174;
                    if (v101 >= v166)
                    {
                      goto LABEL_54;
                    }
                  }
                }

                else if (v101 >= v166)
                {
                  goto LABEL_54;
                }

                LODWORD(v166) = sub_1EF0B4();
                sub_1928F4(0, &qword_341A60);
                v123 = sub_1EF404();
                sub_18AFC0(&qword_340AF0);
                v124 = swift_allocObject();
                *(v124 + 16) = v168;
                sub_1AD1F4(v53, v190, type metadata accessor for Achievement);
                v125 = sub_1EEF54();
                v127 = v126;
                *(v124 + 56) = &type metadata for String;
                *(v124 + 64) = sub_1ACF5C();
                *(v124 + 32) = v125;
                *(v124 + 40) = v127;
                v111 = v174;
                sub_1EEAA4();

                (*v169)(v53);
                v110 = v194;
                goto LABEL_54;
              }

              sub_1ACEFC(v99, type metadata accessor for Achievement);
              sub_1ACEFC(v100, type metadata accessor for Achievement);
            }
          }

          v101 = 0;
          goto LABEL_46;
        }

        v73 = v192;
        sub_1AD1F4(v53, v192, type metadata accessor for Achievement);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          goto LABEL_34;
        }

        v74 = v172;
        if (*(v172 + 16) && (v75 = sub_1B0728(1u), (v76 & 1) != 0))
        {
          v77 = v188;
          sub_1AD1F4(*(v74 + 56) + v75 * v72, v188, type metadata accessor for Achievement);
          v78 = v186;
          sub_1AD1F4(v77, v186, type metadata accessor for Achievement);
          v79 = swift_getEnumCaseMultiPayload();
          if (v79)
          {
            v80 = v174;
            if (v79 == 1)
            {
              v81 = *v78 < 1;
            }

            else
            {
              v108 = sub_18AFC0(&qword_340AE8);
              (*v80)(v78 + *(v108 + 48), v173);
              v81 = 1;
            }
          }

          else
          {
            v81 = (*(v78 + 8) & 1) == 0 && *v78 <= 0.0;
          }

          sub_1ACEFC(v188, type metadata accessor for Achievement);
        }

        else
        {
          v81 = 0;
        }

        sub_1AD1F4(v53, v195, type metadata accessor for Achievement);
        v128 = swift_getEnumCaseMultiPayload();
        if (v128)
        {
          if (v128 != 1)
          {
            v130 = sub_18AFC0(&qword_340AE8);
            (*v174)(v195 + *(v130 + 48), v173);
            v106 = v53;
            if (v81)
            {
              goto LABEL_91;
            }

LABEL_65:
            LODWORD(v166) = sub_1EF084();
            sub_1928F4(0, &qword_341A60);
            v131 = sub_1EF404();
            sub_18AFC0(&qword_340AF0);
            v132 = swift_allocObject();
            *(v132 + 16) = v168;
            sub_1AD1F4(v53, v190, type metadata accessor for Achievement);
            v133 = sub_1EEF54();
            v135 = v134;
            *(v132 + 56) = &type metadata for String;
            *(v132 + 64) = sub_1ACF5C();
            *(v132 + 32) = v133;
            *(v132 + 40) = v135;
LABEL_89:
            sub_1EEAA4();

            (*v169)(v53);
LABEL_90:
            v106 = v53;
            goto LABEL_91;
          }

          v129 = *v195 < 1;
        }

        else
        {
          v106 = v53;
          if (*(v195 + 8))
          {
            goto LABEL_91;
          }

          v129 = *v195 <= 0.0;
        }

        v106 = v53;
        if (!v81 && v129)
        {
          goto LABEL_65;
        }

LABEL_91:
        result = sub_1ACEFC(v106, type metadata accessor for Achievement);
      }
    }
  }

  while (1)
  {
    v67 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      break;
    }

    if (v67 >= v65)
    {
    }

    v66 = *(v61 + 8 * v67);
    ++v59;
    if (v66)
    {
      v59 = v67;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A8AB4(uint64_t a1)
{
  sub_1ACE10();
  result = sub_1EF034();
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = sub_1A924C(&v10, *(*(a1 + 48) + (v9 | (v8 << 6)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A8BAC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = sub_1A924C(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t ReadingAchievementsController.deinit()
{
  sub_1ACEFC(v0 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_state, type metadata accessor for ReadingAchievementsController.State);
  sub_18E310(v0 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_dataSource);

  return v0;
}

uint64_t ReadingAchievementsController.__deallocating_deinit()
{
  ReadingAchievementsController.deinit();

  return swift_deallocClassInstance();
}

uint64_t ReadingAchievementsController.currentAchievements()()
{
  sub_18AFC0(&qword_340850);
  sub_1EF154();
  return v1;
}

uint64_t sub_1A8E90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + OBJC_IVAR____TtC8BookCore29ReadingAchievementsController_state;
  swift_beginAccess();
  *a2 = *(v3 + *(type metadata accessor for ReadingAchievementsController.State(0) + 20));
}

Swift::Void __swiftcall ReadingAchievementsController.handleSignificantDateChange()()
{
  swift_allocObject();
  swift_weakInit();
  sub_18AFC0(&qword_340858);
  sub_1EF154();
}

uint64_t sub_1A8F9C@<X0>(BOOL *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v3 = result;
  if (result)
  {
    sub_1A0998();
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_1A9014(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1EF4A4();

    if (v9)
    {

      sub_1928F4(0, &qword_340B00);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_1EF494();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1A9624(v7, result + 1);
    if (v19[3] <= v19[2])
    {
      sub_1A9814();
    }

    v18 = v8;
    sub_1A9FE8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1928F4(0, &qword_340B00);
  v11 = sub_1EF304(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_1AA06C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1EF314();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_1A924C(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  sub_1EF784();
  sub_1EF794(a2);
  v6 = sub_1EF7B4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1AA1DC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1A9344(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1EDF14();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1ACEB4(&qword_340B70, &type metadata accessor for UUID);
  v33 = a2;
  v11 = sub_1EEE84();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1ACEB4(&qword_340B78, &type metadata accessor for UUID);
      v21 = sub_1EEEB4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1AA328(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

Swift::Int sub_1A9624(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_18AFC0(&qword_340B10);
    v2 = sub_1EF534();
    v14 = v2;
    sub_1EF484();
    if (sub_1EF4B4())
    {
      sub_1928F4(0, &qword_340B00);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1A9814();
        }

        v2 = v14;
        result = sub_1EF304(*(v14 + 40));
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1EF4B4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_1A9814()
{
  v1 = v0;
  v2 = *v0;
  sub_18AFC0(&qword_340B10);
  result = sub_1EF524();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1EF304(*(v4 + 40));
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1A9A3C()
{
  v1 = v0;
  v2 = *v0;
  sub_18AFC0(&qword_340AF8);
  result = sub_1EF524();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_1EF784();
      sub_1EF794(v16);
      result = sub_1EF7B4();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1A9C8C()
{
  v1 = v0;
  v35 = sub_1EDF14();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_18AFC0(&qword_340B80);
  result = sub_1EF524();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1ACEB4(&qword_340B70, &type metadata accessor for UUID);
      result = sub_1EEE84();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

unint64_t sub_1A9FE8(uint64_t a1, void *a2)
{
  sub_1EF304(a2[5]);
  result = sub_1EF474();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_1AA06C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A9814();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1AA5CC();
      goto LABEL_12;
    }

    sub_1AAA94();
  }

  v8 = *v3;
  v9 = sub_1EF304(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1928F4(0, &qword_340B00);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1EF314();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1EF704();
  __break(1u);
}

Swift::Int sub_1AA1DC(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A9A3C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1AA71C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1AACA8();
  }

  v8 = *v3;
  sub_1EF784();
  sub_1EF794(v4);
  result = sub_1EF7B4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1EF704();
  __break(1u);
  return result;
}

uint64_t sub_1AA328(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1EDF14();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A9C8C();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1AA85C();
      goto LABEL_12;
    }

    sub_1AAEC8();
  }

  v12 = *v3;
  sub_1ACEB4(&qword_340B70, &type metadata accessor for UUID);
  v13 = sub_1EEE84();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1ACEB4(&qword_340B78, &type metadata accessor for UUID);
      v21 = sub_1EEEB4();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1EF704();
  __break(1u);
  return result;
}

id sub_1AA5CC()
{
  v1 = v0;
  sub_18AFC0(&qword_340B10);
  v2 = *v0;
  v3 = sub_1EF514();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1AA71C()
{
  v1 = v0;
  sub_18AFC0(&qword_340AF8);
  v2 = *v0;
  v3 = sub_1EF514();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1AA85C()
{
  v1 = v0;
  v2 = sub_1EDF14();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFC0(&qword_340B80);
  v6 = *v0;
  v7 = sub_1EF514();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1AAA94()
{
  v1 = v0;
  v2 = *v0;
  sub_18AFC0(&qword_340B10);
  result = sub_1EF524();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(v4 + 40);
      v16 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1EF304(v15);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v16;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v24;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1AACA8()
{
  v1 = v0;
  v2 = *v0;
  sub_18AFC0(&qword_340AF8);
  result = sub_1EF524();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1EF784();
      sub_1EF794(v15);
      result = sub_1EF7B4();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1AAEC8()
{
  v1 = v0;
  v32 = sub_1EDF14();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_18AFC0(&qword_340B80);
  v6 = sub_1EF524();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1ACEB4(&qword_340B70, &type metadata accessor for UUID);
      result = sub_1EEE84();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1AB1E4(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = sub_1EF4C4();

    if (v5)
    {
      v6 = sub_1AB624();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  sub_1928F4(0, &qword_340B00);
  v9 = sub_1EF304(*(v3 + 40));
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = sub_1EF314();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1AA5CC();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_1AB78C(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_1AB37C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1EDF14();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1ACEB4(&qword_340B70, &type metadata accessor for UUID);
  v31 = a1;
  v10 = sub_1EEE84();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1ACEB4(&qword_340B78, &type metadata accessor for UUID);
      v19 = sub_1EEEB4();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AA85C();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1AB92C(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1AB624()
{
  v1 = v0;

  v2 = sub_1EF494();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1A9624(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = sub_1EF304(v5);
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_1928F4(0, &qword_340B00);
    while (1)
    {
      v10 = *(*(v4 + 48) + 8 * v8);
      v11 = sub_1EF314();

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v4 + 48) + 8 * v8);
  sub_1AB78C(v8);
  result = sub_1EF314();
  if (result)
  {
    *v1 = v14;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1AB78C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1EF464();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_1EF304(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1AB92C(int64_t a1)
{
  v3 = sub_1EDF14();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_1EF464();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_1ACEB4(&qword_340B70, &type metadata accessor for UUID);
        v24 = sub_1EEE84();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_1ABC34(uint64_t a1)
{
  v2 = sub_18AFC0(&qword_340B88);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_18AFC0(&qword_340B90);
    v7 = sub_1EF664();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_19A4B0(v9, v5, &qword_340B88);
      v11 = *v5;
      result = sub_1B0728(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for Achievement();
      result = sub_1AD51C(&v5[v8], v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for Achievement);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1ABE2C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1ABE7C()
{
  v1 = sub_1EDF14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1ABF20()
{
  v1 = *(sub_1EDF14() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A6114(v0 + v2, v4, v5);
}

uint64_t sub_1ABFC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1AC024(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_18AFC0(&qword_340AD8);
    v3 = sub_1EF664();
    v4 = a1 + 32;

    while (1)
    {
      sub_19A4B0(v4, &v11, &qword_340AE0);
      v5 = v11;
      result = sub_1B0794(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_19DE70(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1AC14C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_18AFC0(&qword_340AD0);
    v3 = sub_1EF664();
    v4 = a1 + 32;

    while (1)
    {
      sub_19A4B0(v4, &v13, &unk_341600);
      v5 = v13;
      v6 = v14;
      result = sub_1B0598(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_19DE70(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1AC27C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_18AFC0(&qword_3417E0);
    v3 = sub_1EF664();
    v4 = a1 + 32;

    while (1)
    {
      sub_19A4B0(v4, v13, &qword_340B60);
      result = sub_1B06E4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_19DE70(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1AC3B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_18AFC0(&qword_340B58);
    v3 = sub_1EF664();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1B0894(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1AC498(char a1, uint64_t a2)
{
  v4 = sub_18AFC0(&qword_3405B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  isEscapingClosureAtFileLocation = sub_1EDEF4();
  v8 = *(isEscapingClosureAtFileLocation - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(isEscapingClosureAtFileLocation);
  v11 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  sub_19A4B0(a2, v6, &qword_3405B0);
  if ((*(v8 + 48))(v6, 1, isEscapingClosureAtFileLocation) == 1)
  {
    return sub_1927B4(v6, &qword_3405B0);
  }

  v15 = *(v8 + 32);
  v15(v13, v6, isEscapingClosureAtFileLocation);
  if (a1)
  {
    v16 = v23;
    v22 = *(v23 + 16);
    (*(v8 + 16))(v11, v13, isEscapingClosureAtFileLocation);
    v17 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    v15((v18 + v17), v11, isEscapingClosureAtFileLocation);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1AD9B0;
    *(v19 + 24) = v18;
    aBlock[4] = sub_1ADC78;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_199688;
    aBlock[3] = &unk_2D06E8;
    v20 = _Block_copy(aBlock);

    dispatch_sync(v22, v20);
    _Block_release(v20);
    v21 = *(v8 + 8);
    v8 += 8;
    v21(v13, isEscapingClosureAtFileLocation);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  return (*(v8 + 8))(v13, isEscapingClosureAtFileLocation);
}

uint64_t sub_1AC884(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AC8BC()
{
  result = type metadata accessor for ReadingAchievementsController.State(319);
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

uint64_t sub_1ACA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1EE584();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1EDEF4();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1ACBC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1EE584();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1EDEF4();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1ACCE8()
{
  sub_1EE584();
  if (v0 <= 0x3F)
  {
    sub_1ACDA4();
    if (v1 <= 0x3F)
    {
      sub_1EDEF4();
      if (v2 <= 0x3F)
      {
        sub_1ACE64();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1ACDA4()
{
  if (!qword_340A80)
  {
    type metadata accessor for Achievement();
    sub_1ACE10();
    v0 = sub_1EEE74();
    if (!v1)
    {
      atomic_store(v0, &qword_340A80);
    }
  }
}

unint64_t sub_1ACE10()
{
  result = qword_340A88;
  if (!qword_340A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_340A88);
  }

  return result;
}

void sub_1ACE64()
{
  if (!qword_340A90)
  {
    v0 = sub_1EF414();
    if (!v1)
    {
      atomic_store(v0, &qword_340A90);
    }
  }
}

uint64_t sub_1ACEB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1ACEFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1ACF5C()
{
  result = qword_341CA0;
  if (!qword_341CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_341CA0);
  }

  return result;
}

unint64_t sub_1ACFB0()
{
  result = qword_340B08;
  if (!qword_340B08)
  {
    sub_1928F4(255, &qword_340B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_340B08);
  }

  return result;
}

uint64_t sub_1AD020()
{
  v1 = *(type metadata accessor for Achievement() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v5 = *(sub_18AFC0(&qword_340AE8) + 48);
    v6 = sub_1EE684();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AD134(void *a1)
{
  v3 = *(type metadata accessor for Achievement() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1A4FB8(a1, v4, v5);
}

uint64_t sub_1AD1A8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1AD1F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AD25C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingAchievementsController.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AD2CC()
{
  v19 = sub_1EE544();
  v1 = *(v19 - 8);
  v2 = *(v1 + 80);
  v16 = (v2 + 16) & ~v2;
  v3 = (*(v1 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (type metadata accessor for ReadingAchievementsController.State(0) - 8);
  v5 = *(*v4 + 80);
  v6 = (v3 + v5 + 8) & ~v5;
  v7 = (*(*v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_1EDEF4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v17 = (v7 + v10 + 8) & ~v10;
  v18 = *(v9 + 64);
  v11 = v2 | v5 | v10;
  (*(v1 + 8))(v0 + v16, v19);

  v12 = sub_1EE584();
  (*(*(v12 - 8) + 8))(v0 + v6, v12);

  v13 = v4[8];
  v14 = *(v9 + 8);
  v14(v0 + v6 + v13, v8);

  v14(v0 + v17, v8);

  return _swift_deallocObject(v0, v17 + v18, v11 | 7);
}

uint64_t sub_1AD51C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AD584()
{
  v1 = *(sub_1EE544() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for ReadingAchievementsController.State(0) - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_1EDEF4() - 8);
  v8 = *(v0 + v3);
  v9 = *(v0 + v6);
  v10 = v0 + ((v6 + *(v7 + 80) + 8) & ~*(v7 + 80));

  return sub_1A3C1C(v0 + v2, v8, v0 + v5, v9, v10);
}

uint64_t sub_1AD6D8()
{
  v1 = (type metadata accessor for ReadingAchievementsController.State(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = sub_1EE584();
  (*(*(v6 - 8) + 8))(v5, v6);

  v7 = v1[8];
  v8 = sub_1EDEF4();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1AD8E4(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1AD9DC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_1ADAE0(uint64_t *a1)
{
  v2 = sub_18AFC0(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1ADCB4(uint64_t a1, void *a2)
{
  sub_1EEF04();
  v3 = sub_1EEED4();

  v4 = [a2 valueForKeyPath:v3];

  if (v4)
  {
    sub_1EF444();
    swift_unknownObjectRelease();
    sub_19DE70(&v6, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  sub_18AFC0(&qword_33F9D8);
  sub_18AFC0(&qword_340BE0);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void *sub_1ADDE0(uint64_t *a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t))
{
  v4 = sub_1ADCB4(*a1, *v2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (!(v4 >> 62))
  {
    v6 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  v6 = sub_1EF634();
  if (!v6)
  {
LABEL_18:

    return _swiftEmptyArrayStorage;
  }

LABEL_4:
  result = a2(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = _swiftEmptyArrayStorage;
    if ((v5 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        v10 = sub_1EF584();
        v12 = _swiftEmptyArrayStorage[2];
        v11 = _swiftEmptyArrayStorage[3];
        if (v12 >= v11 >> 1)
        {
          v13 = v10;
          a2(v11 > 1, v12 + 1, 1);
          v10 = v13;
        }

        _swiftEmptyArrayStorage[2] = v12 + 1;
        _swiftEmptyArrayStorage[v12 + 4] = v10;
      }
    }

    else
    {
      v14 = (v5 + 32);
      do
      {
        v15 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        v17 = *v14;
        if (v15 >= v16 >> 1)
        {
          v18 = v16 > 1;
          v19 = v17;
          a2(v18, v15 + 1, 1);
          v17 = v19;
        }

        _swiftEmptyArrayStorage[2] = v15 + 1;
        _swiftEmptyArrayStorage[v15 + 4] = v17;
        ++v14;
        --v6;
      }

      while (v6);
    }

    return v8;
  }

  __break(1u);
  return result;
}

size_t sub_1ADF98(size_t a1, int64_t a2, char a3)
{
  result = sub_1AE0B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1ADFB8(size_t a1, int64_t a2, char a3)
{
  result = sub_1AE2AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1ADFD8(void *a1, int64_t a2, char a3)
{
  result = sub_1AE484(a1, a2, a3, *v3, &qword_340BD0, &unk_2A5F78, &qword_340BD8);
  *v3 = result;
  return result;
}

void *sub_1AE018(void *a1, int64_t a2, char a3)
{
  result = sub_1AE484(a1, a2, a3, *v3, &qword_340BC0, &unk_2A5F68, &qword_340BC8);
  *v3 = result;
  return result;
}

char *sub_1AE058(char *a1, int64_t a2, char a3)
{
  result = sub_1AE5B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AE078(char *a1, int64_t a2, char a3)
{
  result = sub_1AE6C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AE098(void *a1, int64_t a2, char a3)
{
  result = sub_1AE7D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1AE0B8(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_18AFC0(&qword_340B98);
  v10 = *(sub_18AFC0(&qword_3405C0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_18AFC0(&qword_3405C0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_1AE2AC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_18AFC0(&qword_340BA0);
  v10 = *(sub_1EE614() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1EE614() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1AE484(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    sub_18AFC0(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_18AFC0(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1AE5B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_18AFC0(&unk_3415F0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AE6C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_18AFC0(&qword_340BB8);
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

void *sub_1AE7D4(void *result, int64_t a2, char a3, void *a4)
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
    sub_18AFC0(&qword_340BA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_18AFC0(&qword_340BB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

UITextView __swiftcall AENoteFullscreenEditorController.makeTextView(text:)(Swift::String text)
{
  v2 = [v1 textAttributes];
  type metadata accessor for Key(0);
  sub_1AEA60();
  sub_1EEE54();

  v3 = objc_allocWithZone(NSAttributedString);
  v4 = sub_1EEED4();
  isa = sub_1EEE44().super.isa;
  v6 = [v3 initWithString:v4 attributes:isa];

  v7 = [objc_allocWithZone(UITextView) init];
  [v7 setAttributedText:v6];
  v8 = sub_1EEE44().super.isa;

  [v7 setTypingAttributes:v8];

  return v7;
}

unint64_t sub_1AEA60()
{
  result = qword_33FE78;
  if (!qword_33FE78)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_33FE78);
  }

  return result;
}

unint64_t sub_1AEB9C()
{
  v0 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v0 setLineSpacing:5.0];
  sub_18AFC0(&qword_340BE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2A5D70;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v2 = sub_1928F4(0, &qword_340BF0);
  *(inited + 40) = v0;
  *(inited + 64) = v2;
  *(inited + 72) = NSFontAttributeName;
  v3 = objc_opt_self();
  v4 = NSParagraphStyleAttributeName;
  v5 = v0;
  v6 = NSFontAttributeName;
  v7 = [v3 boldSystemFontOfSize:15.0];
  *(inited + 104) = sub_1928F4(0, &qword_340BF8);
  *(inited + 80) = v7;
  v8 = sub_1AC024(inited);
  swift_setDeallocating();
  sub_18AFC0(&qword_340AE0);
  swift_arrayDestroy();

  return v8;
}

uint64_t sub_1AED14()
{
  sub_18AFC0(&qword_340C00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2A5FA0;
  *(v0 + 32) = sub_1EECB4();
  *(v0 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  *(v0 + 48) = sub_1EEC14();
  *(v0 + 56) = &protocol witness table for UITraitActiveAppearance;
  *(v0 + 64) = sub_1EEBE4();
  *(v0 + 72) = &protocol witness table for UITraitDisplayGamut;
  *(v0 + 80) = sub_1EEBF4();
  *(v0 + 88) = &protocol witness table for UITraitDisplayScale;
  *(v0 + 96) = sub_1EECA4();
  *(v0 + 104) = &protocol witness table for UITraitForceTouchCapability;
  *(v0 + 112) = sub_1EEC94();
  *(v0 + 120) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v0 + 128) = sub_1EEC04();
  *(v0 + 136) = &protocol witness table for UITraitLayoutDirection;
  *(v0 + 144) = sub_1EEC24();
  *(v0 + 152) = &protocol witness table for UITraitLegibilityWeight;
  *(v0 + 160) = sub_1EECF4();
  *(v0 + 168) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v0 + 176) = sub_1EECE4();
  *(v0 + 184) = &protocol witness table for UITraitToolbarItemPresentationSize;
  *(v0 + 192) = sub_1EEC64();
  *(v0 + 200) = &protocol witness table for UITraitUserInterfaceIdiom;
  *(v0 + 208) = sub_1EEC74();
  *(v0 + 216) = &protocol witness table for UITraitUserInterfaceLevel;
  *(v0 + 224) = sub_1EEC84();
  *(v0 + 232) = &protocol witness table for UITraitUserInterfaceStyle;
  *(v0 + 240) = sub_1EEC34();
  *(v0 + 248) = &protocol witness table for UITraitVerticalSizeClass;
  return v0;
}

id static UIViewPropertyAnimator.swiftUIDefault()()
{
  v0 = objc_allocWithZone(UIViewPropertyAnimator);

  return [v0 initWithDuration:0 dampingRatio:0.5 animations:1.0];
}

uint64_t sub_1AEF08(uint64_t a1, uint64_t a2)
{
  v5 = sub_18AFC0(&qword_340328);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1EE624();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1927B4(a1, &qword_340328);
    sub_1E2058(a2, v7);
    v12 = sub_1EDEF4();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1927B4(v7, &qword_340328);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1B1548(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1EDEF4();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1AF134(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_18AFC0(&qword_340B18);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for Achievement();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1927B4(a1, &qword_340B18);
    v13 = sub_1B0728(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1BC508();
        v17 = v21;
      }

      sub_1B29E0(*(v17 + 56) + *(v10 + 72) * v15, v8);
      sub_1B0CF0(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1927B4(v8, &qword_340B18);
  }

  else
  {
    sub_1B29E0(a1, v12);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1B1774(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

unint64_t sub_1AF360(uint64_t a1, char a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1B18C0(a1, a2 & 1, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_1B0828(a2 & 1);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1BC714();
        v11 = v13;
      }

      result = sub_1B0EC0(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_1AF420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_19DE70(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1B1A08(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1927B4(a1, &qword_33F9D8);
    sub_1E21F8(a2, a3, v9);

    return sub_1927B4(v9, &qword_33F9D8);
  }

  return result;
}

uint64_t sub_1AF4F0(uint64_t a1, uint64_t a2)
{
  v5 = sub_18AFC0(&qword_3405B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1EDEF4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1927B4(a1, &qword_3405B0);
    sub_1E229C(a2, v7);
    v12 = sub_1EDF14();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1927B4(v7, &qword_3405B0);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1B1B58(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1EDF14();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t static UIAccessibility.accessibilityNavigationServicesEnabled.getter()
{
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || _AXSCommandAndControlEnabled())
  {
    return 1;
  }

  else
  {
    return IMAccessibilityIsFKAEnabledWithKeyboardAttached();
  }
}

uint64_t static UIAccessibility.accessibilityNavigationServicesEnabledPublisher.getter()
{
  v0 = sub_18AFC0(&qword_340C18);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - v2;
  _s46AccessibilityNavigationServicesEnabledObserverCMa();
  swift_allocObject();
  v5[1] = sub_1AF9CC()[2];
  sub_18AFC0(&qword_340C20);
  sub_1B2998(&qword_340C28, &qword_340C20);
  sub_1EED54();
  sub_1B2998(&qword_340C30, &qword_340C18);

  sub_1EED34();

  return (*(v1 + 8))(v3, v0);
}

uint64_t *sub_1AF9CC()
{
  v1 = *v0;
  if (!UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSwitchControlRunning() && !_AXSCommandAndControlEnabled())
  {
    IMAccessibilityIsFKAEnabledWithKeyboardAttached();
  }

  sub_18AFC0(&qword_340C20);
  swift_allocObject();
  v0[2] = sub_1EED24();
  v3[3] = v1;
  v3[0] = v0;

  _sSo15UIAccessibilityV8BookCoreE36addAccessibilityStatusChangeObserver_8selectoryyp_10ObjectiveC8SelectorVtFZ_0(v3, "update");
  sub_18E310(v3);
  return v0;
}

uint64_t static UIAccessibility.removeAccessibilityStatusChangeObserver(_:)(uint64_t result)
{
  v1 = result;
  if (qword_33F910 != -1)
  {
    result = swift_once();
  }

  v2 = off_340C08;
  v3 = *(&dword_10 + off_340C08);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = (v2 + 8);
    do
    {
      v6 = *v5++;
      v7 = v6;
      v8 = [v4 defaultCenter];
      sub_18E35C(v1, v1[3]);
      [v8 removeObserver:sub_1EF6B4() name:v7 object:0];

      result = swift_unknownObjectRelease();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1AFBBC()
{
  v1 = qword_33F910;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = off_340C08;
  v3 = *(&dword_10 + off_340C08);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = (v2 + 8);
    do
    {
      v6 = *v5++;
      v7 = v6;
      v8 = [v4 defaultCenter];
      [v8 removeObserver:v0 name:v7 object:0];

      --v3;
    }

    while (v3);
  }

  return swift_deallocClassInstance();
}

NSNotificationName sub_1AFCF4()
{
  sub_18AFC0(&qword_340CF8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2A5D70;
  *(v0 + 32) = UIAccessibilityVoiceOverStatusDidChangeNotification;
  *(v0 + 40) = UIAccessibilitySwitchControlStatusDidChangeNotification;
  off_340C08 = v0;
  v1 = UIAccessibilityVoiceOverStatusDidChangeNotification;

  return UIAccessibilitySwitchControlStatusDidChangeNotification;
}

uint64_t static UIAccessibility.bkaxAccessibilityDebounceAnnounce(_:identifier:delay:)(uint64_t a1, uint64_t a2, char *a3, double a4)
{
  v7 = *a3;
  if (qword_33F918 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = off_340C10;
  if (*(&dword_10 + off_340C10) && (v9 = sub_1B0828(v7), (v10 & 1) != 0))
  {
    v11 = *(*&stru_20.segname[v8 + 16] + 8 * v9);
    swift_endAccess();
    [v11 invalidate];
  }

  else
  {
    swift_endAccess();
  }

  v12 = objc_opt_self();
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  *(v13 + 24) = a1;
  *(v13 + 32) = a2;
  v17[4] = sub_1B2640;
  v17[5] = v13;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_18F0D8;
  v17[3] = &unk_2D0850;
  v14 = _Block_copy(v17);

  v15 = [v12 scheduledTimerWithTimeInterval:0 repeats:v14 block:a4];
  _Block_release(v14);
  swift_beginAccess();
  sub_1AF360(v15, v7);
  return swift_endAccess();
}

void sub_1AFF8C(uint64_t a1, char a2)
{
  v4 = a2 & 1;
  _sSo15UIAccessibilityV8BookCoreE28bkaxAccessibilityRemoveTimer3foryAbCE05BooksE22AnnouncementIdentifierO_tFZ_0(&v4);
  v2 = UIAccessibilityAnnouncementNotification;
  v3 = sub_1EEED4();
  UIAccessibilityPostNotification(v2, v3);
}

UIColor __swiftcall UIColor.bkaxAdjustedForIncreaseContrast()()
{
  v1 = [objc_opt_self() currentTraitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = &selRef_bkaxAdjustedLighterForIncreaseContrast;
  if (v2 != &dword_0 + 2)
  {
    v3 = &selRef_bkaxAdjustedDarkerForIncreaseContrast;
  }

  v4 = [v0 *v3];

  return v4;
}

UIColor __swiftcall UIColor.bkaxAdjustedLighterForIncreaseContrast()()
{
  v1 = [v0 bkaxAdjustedForIncreaseContrastAdjustingDarker:0];

  return v1;
}

UIColor __swiftcall UIColor.bkaxAdjustedDarkerForIncreaseContrast()()
{
  v1 = [v0 bkaxAdjustedForIncreaseContrastAdjustingDarker:1];

  return v1;
}

UIColor __swiftcall UIColor.bkaxAdjustedForIncreaseContrast(darker:)(Swift::Bool darker)
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 accessibilityContrast];

  if (v3 == &dword_0 + 1)
  {
    v4 = sub_1B274C();
    __chkstk_darwin(v4);
    v5 = sub_1EF194();
    v6 = [v10 resolvedColorWithTraitCollection:v5];

    v17 = 0.0;
    v18 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    [v10 getHue:&v18 saturation:&v17 brightness:&v16 alpha:&v15];
    [v6 getHue:&v14 saturation:&v13 brightness:&v12 alpha:&v11];
    if (v16 == v12 && v17 == v13 && v18 == v14 && v15 == v11)
    {
      [v10 defaultBrightnessAdjustment];
      if (darker)
      {
        v7 = -v7;
      }

      v8 = [objc_allocWithZone(UIColor) initWithHue:v18 saturation:v17 brightness:(v7 + 1.0) * v16 alpha:v15];

      return v8;
    }

    return v6;
  }

  else
  {

    return v10;
  }
}

uint64_t sub_1B04B4(uint64_t a1)
{
  sub_1B2AA8(a1, *(a1 + 24));
  sub_1EEBB4();
  sub_1B2AA8(a1, *(a1 + 24));
  return sub_1EEBA4();
}

unint64_t sub_1B0598(uint64_t a1, uint64_t a2)
{
  sub_1EF784();
  sub_1EEF74();
  v4 = sub_1EF7B4();

  return sub_1B1F84(a1, a2, v4);
}

unint64_t sub_1B0610(uint64_t a1)
{
  sub_1EDEF4();
  sub_1B2AF8(&qword_3411E0, &type metadata accessor for Date);
  v2 = sub_1EEE84();
  return sub_1B2354(a1, v2, &type metadata accessor for Date, &qword_341CB0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
}

unint64_t sub_1B06E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1EF4E4(*(v2 + 40));

  return sub_1B203C(a1, v4);
}

unint64_t sub_1B0728(unsigned __int8 a1)
{
  sub_1EF784();
  sub_1EF794(a1);
  v2 = sub_1EF7B4();

  return sub_1B2104(a1, v2);
}

unint64_t sub_1B0794(uint64_t a1)
{
  sub_1EEF04();
  sub_1EF784();
  sub_1EEF74();
  v2 = sub_1EF7B4();

  return sub_1B2174(a1, v2);
}

unint64_t sub_1B0828(char a1)
{
  sub_1EF784();
  sub_1EF794(a1 & 1);
  v2 = sub_1EF7B4();

  return sub_1B2278(a1 & 1, v2);
}

unint64_t sub_1B0894(uint64_t a1)
{
  v2 = sub_1EF774();

  return sub_1B22E8(a1, v2);
}

unint64_t sub_1B08D8(uint64_t a1)
{
  sub_1EDF14();
  sub_1B2AF8(&qword_340B70, &type metadata accessor for UUID);
  v2 = sub_1EEE84();
  return sub_1B2354(a1, v2, &type metadata accessor for UUID, &qword_340B78, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_1B09AC(int64_t a1, uint64_t a2)
{
  v4 = sub_1EDEF4();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_1EF464();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_1B2AF8(&qword_3411E0, &type metadata accessor for Date);
      v22 = sub_1EEE84();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(sub_1EE624() - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B0CF0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1EF464() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1EF784();
      sub_1EF794(v9);
      result = sub_1EF7B4();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + v3);
      v13 = (v11 + v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for Achievement() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_1B0EC0(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1EF464() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1EF784();
      sub_1EF794(v9);
      result = sub_1EF7B4();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B1054(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1EF464() + 1) & ~v5;
    do
    {
      sub_1EF784();

      sub_1EEF74();
      v10 = sub_1EF7B4();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B1204(int64_t a1, uint64_t a2)
{
  v4 = sub_1EDF14();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_1EF464();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_1B2AF8(&qword_340B70, &type metadata accessor for UUID);
      v22 = sub_1EEE84();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(sub_1EDEF4() - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B1548(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1EDEF4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1B0610(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1BC4CC();
      goto LABEL_7;
    }

    sub_1BB318(v17, a3 & 1);
    v28 = sub_1B0610(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1B1E84(v14, v11, a1, v20, &type metadata accessor for Date, &type metadata accessor for ReadingHistoryDay);
    }

LABEL_15:
    result = sub_1EF714();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_1EE624();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_1B1774(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1B0728(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1BC508();
      goto LABEL_7;
    }

    sub_1BB7C0(v13, a3 & 1);
    v20 = sub_1B0728(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1EF714();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for Achievement() - 8) + 72) * v10;

    return sub_1B2A44(a1, v18);
  }

LABEL_13:

  return sub_1B1D84(v10, a2, a1, v16);
}

unint64_t sub_1B18C0(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  result = sub_1B0828(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return _objc_release_x1(result);
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = v8;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1BC714();
    result = v17;
    goto LABEL_8;
  }

  sub_1BBAE0(v14, a3 & 1);
  result = sub_1B0828(v8);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  result = sub_1EF714();
  __break(1u);
  return _objc_release_x1(result);
}

_OWORD *sub_1B1A08(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B0598(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1BC870();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1BBD6C(v16, a4 & 1);
    v11 = sub_1B0598(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1EF714();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_18E310(v22);

    return sub_19DE70(a1, v22);
  }

  else
  {
    sub_1B1E18(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1B1B58(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1EDF14();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1B08D8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1BCA14();
      goto LABEL_7;
    }

    sub_1BC024(v17, a3 & 1);
    v28 = sub_1B08D8(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1B1E84(v14, v11, a1, v20, &type metadata accessor for UUID, &type metadata accessor for Date);
    }

LABEL_15:
    result = sub_1EF714();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_1EDEF4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_1B1D84(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for Achievement();
  result = sub_1B29E0(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_1B1E18(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_19DE70(a4, (a5[7] + 32 * a1));
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

uint64_t sub_1B1E84(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = a5(0);
  (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a2, v12);
  v13 = a4[7];
  v14 = a6(0);
  result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * a1, a3, v14);
  v16 = a4[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v18;
  }

  return result;
}

unint64_t sub_1B1F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1EF6D4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B203C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_19A10C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1EF4F4();
      sub_19A52C(v8);
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

unint64_t sub_1B2104(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1B2174(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1EEF04();
      v8 = v7;
      if (v6 == sub_1EEF04() && v8 == v9)
      {
        break;
      }

      v11 = sub_1EF6D4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1B2278(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1B22E8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1B2354(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_1B2AF8(v23, v24);
      v19 = sub_1EEEB4();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t _sSo15UIAccessibilityV8BookCoreE36addAccessibilityStatusChangeObserver_8selectoryyp_10ObjectiveC8SelectorVtFZ_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (qword_33F910 != -1)
  {
    result = swift_once();
  }

  v4 = off_340C08;
  v5 = *(&dword_10 + off_340C08);
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = (v4 + 8);
    do
    {
      v8 = *v7++;
      v9 = v8;
      v10 = [v6 defaultCenter];
      sub_18E35C(v3, v3[3]);
      [v10 addObserver:sub_1EF6B4() selector:a2 name:v9 object:0];

      result = swift_unknownObjectRelease();
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1B2608()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1B264C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _sSo15UIAccessibilityV8BookCoreE28bkaxAccessibilityRemoveTimer3foryAbCE05BooksE22AnnouncementIdentifierO_tFZ_0(char *a1)
{
  v1 = *a1;
  if (qword_33F918 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = off_340C10;
  if (*(&dword_10 + off_340C10) && (v3 = sub_1B0828(v1), (v4 & 1) != 0))
  {
    v5 = *(*&stru_20.segname[v2 + 16] + 8 * v3);
    swift_endAccess();
    [v5 invalidate];
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();
  sub_1AF360(0, v1);
  return swift_endAccess();
}

unint64_t sub_1B274C()
{
  result = qword_340C38;
  if (!qword_340C38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_340C38);
  }

  return result;
}

unint64_t sub_1B27A4()
{
  result = qword_340C40;
  if (!qword_340C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_340C40);
  }

  return result;
}

uint64_t _s40BooksAccessibilityAnnouncementIdentifierOwet(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s40BooksAccessibilityAnnouncementIdentifierOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B2998(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_199A00(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B29E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Achievement();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Achievement();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2AA8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1B2AF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t MAssetWrapper.ActionTextType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1B2B50@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id static MAssetWrapper.actionText(for:with:)(uint64_t a1)
{
  sub_1EE9F4();
  if (!swift_dynamicCastClass())
  {
    return 0;
  }

  swift_unknownObjectRetain();
  v2 = MAsset.actionText(for:)(a1);
  swift_unknownObjectRelease();
  return v2;
}

id MAsset.actionText(for:)(uint64_t a1)
{
  if ([v1 isPreorder])
  {
    if (a1 == 2 || a1 == 1 || !a1)
    {
      return sub_1CEECC();
    }

    goto LABEL_26;
  }

  v3 = [v1 priceFormatted];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1EEF04();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      if (a1 == 2 || a1 == 1 || !a1)
      {
        return sub_1CEECC();
      }

      goto LABEL_26;
    }
  }

  result = [v1 offer];
  if (result)
  {

    if (a1 == 2 || a1 == 1 || !a1)
    {
      return sub_1CEECC();
    }

LABEL_26:
    result = sub_1EF6F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B2F2C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_1EE9F4();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = swift_unknownObjectRetain();
    v3 = a2(v4);
    swift_unknownObjectRelease();
  }

  return v3;
}

void sub_1B2FB8(SEL *a1, unsigned int *a2)
{
  v29 = a2;
  v4 = sub_1EE9E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1EDD14();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v2 *a1];
  if (v12)
  {
    v13 = v12;
    v28 = v4;
    v14 = sub_1EEF04();
    v16 = v15;
    sub_1EDD04();
    v30 = v14;
    v31 = v16;
    sub_1B38F4();
    sub_1EF434();
    LOBYTE(v14) = v17;
    (*(v9 + 8))(v11, v8);
    if (v14)
    {

      return;
    }

    v18 = *v29;
    v19 = v5;
    v20 = *(v5 + 104);
    v21 = v28;
    v20(v7, v18, v28);
    sub_1EE9B4();
    v22 = *(v19 + 8);
    v22(v7, v21);
    if (v32)
    {
      if (swift_dynamicCast())
      {

        return;
      }
    }

    else
    {
      sub_18FF14(&v30);
    }

    v23 = [v13 im_stringByStrippingHTML];

    if (v23)
    {

      v24 = sub_1EEF04();
      v26 = v25;

      v32 = &type metadata for String;
      v30 = v24;
      v31 = v26;
      v27 = v28;
      v20(v7, v18, v28);

      sub_1EE9D4();
      v22(v7, v27);
      sub_18E310(&v30);
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1B3304(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_1EE9F4();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = swift_unknownObjectRetain();
    a4(v6);
    v8 = v7;
    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = sub_1EEED4();

      v5 = v9;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

uint64_t static MAssetWrapper.name(for:)()
{
  v0 = sub_1EE834();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EE844();
  v4 = sub_1EE824();
  (*(v1 + 8))(v3, v0);
  return v4;
}

id MAssetWrapper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAssetWrapper();
  return objc_msgSendSuper2(&v2, "init");
}

id MAssetWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAssetWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s8BookCore13MAssetWrapperC5asset4withSo8BFMAsset_pSgSDys11AnyHashableVypG_tFZ_0(uint64_t a1)
{
  v2 = sub_1EE994();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1EEA74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for MResource.Keys.type(_:), v6);
  v10 = sub_1EEA64();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  v20[1] = v10;
  v20[2] = v12;
  sub_1EF504();
  if (!*(a1 + 16) || (v13 = sub_1B06E4(v21), (v14 & 1) == 0))
  {
    sub_19A52C(v21);
    return 0;
  }

  sub_18E2AC(*(a1 + 56) + 32 * v13, v22);
  sub_19A52C(v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v15 = sub_1EE814();

  if (!v15)
  {
    return 0;
  }

  v16 = qword_33F950;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_19C418(v2, qword_341678);
  (*(v3 + 16))(v5, v17, v2);
  result = sub_1EEA94();
  if (result)
  {
    v19 = result;
    sub_1EE9F4();
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

unint64_t sub_1B38F4()
{
  result = qword_341130;
  if (!qword_341130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_341130);
  }

  return result;
}

unint64_t sub_1B3970()
{
  result = qword_340D00;
  if (!qword_340D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_340D00);
  }

  return result;
}

NSString sub_1B39D4()
{
  result = sub_1EEED4();
  qword_340D30 = result;
  return result;
}

id static NSNotificationName.rcDataContainerConfigDidChange.getter()
{
  if (qword_33F920 != -1)
  {
    swift_once();
  }

  v1 = qword_340D30;

  return v1;
}

uint64_t sub_1B3A68()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B3AA0()
{

  return swift_deallocClassInstance();
}

NSString sub_1B3AE8()
{
  result = sub_1EEED4();
  qword_348A50 = result;
  return result;
}

uint64_t RCDataContaining.booksDefaultsValue.getter@<X0>(uint64_t a1@<X1>, Class *a2@<X8>)
{
  (*(a1 + 8))();
  isa = sub_1EEE44().super.isa;

  *a2 = isa;
  return result;
}

uint64_t RCDataContaining.booksDefaultsValues()(uint64_t a1, uint64_t a2)
{
  v4 = sub_18AFC0(&qword_340D40);
  __chkstk_darwin(v4);
  (*(a2 + 16))(a1, a2);
  sub_18AFC0(&qword_340D48);
  sub_1B2998(&qword_340D50, &qword_340D40);
  return sub_1EF604();
}

uint64_t sub_1B3CC0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1B3CE4, 0, 0);
}

uint64_t sub_1B3CE4()
{
  v1 = *(v0 + 16);
  v1->super.isa = sub_1EEE44().super.isa;
  v2 = *(v0 + 8);

  return v2();
}

id sub_1B3D64()
{
  result = [objc_allocWithZone(type metadata accessor for RCDataContainer()) init];
  qword_340D38 = result;
  return result;
}

id static RCDataContainer.default.getter()
{
  if (qword_33F930 != -1)
  {
    swift_once();
  }

  v1 = qword_340D38;

  return v1;
}

id sub_1B3EE8()
{
  swift_beginAccess();
  v0 = swift_unknownObjectRetain();

  return v0;
}

uint64_t sub_1B3F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  *(a1 + v6) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B400C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1B414C(uint64_t a1)
{
  v74 = a1;
  ObjectType = swift_getObjectType();
  v2 = sub_18AFC0(&qword_3410D0);
  __chkstk_darwin(v2 - 8);
  v59 = &v57 - v3;
  v60 = sub_1EF234();
  v82 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_18AFC0(&qword_3410D8);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v58 = &v57 - v5;
  v72 = sub_1EED94();
  v84 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1EF134();
  v85 = *(v83 - 1);
  __chkstk_darwin(v83);
  v77 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1EF104();
  __chkstk_darwin(v76);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1EEDE4();
  __chkstk_darwin(v10 - 8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR___BCRCDataContainer_bridge] = 0;
  *&v1[OBJC_IVAR___BCRCDataContainer_sessionHosting] = 0;
  *&v1[OBJC_IVAR___BCRCDataContainer_cancellables] = &_swiftEmptySetSingleton;
  v13 = OBJC_IVAR___BCRCDataContainer_isTimerSuspended;
  sub_18AFC0(&qword_3410E0);
  v14 = swift_allocObject();
  *&v1[v13] = v14;
  *&v1[OBJC_IVAR___BCRCDataContainer_stateHandler] = 0;
  v1[OBJC_IVAR___BCRCDataContainer_overrideHasLoadedFromServer] = 0;
  *&v1[OBJC_IVAR___BCRCDataContainer_timeout] = 0x4014000000000000;
  *(v14 + 20) = 0;
  *(v14 + 16) = 0;
  *&v1[OBJC_IVAR___BCRCDataContainer_refreshInterval] = 0x4082C00000000000;
  *&v1[OBJC_IVAR___BCRCDataContainer_dispatchTimer] = 0;
  v70 = OBJC_IVAR___BCRCDataContainer_accessQueue;
  v15 = sub_1928F4(0, &qword_340388);
  sub_1EEDD4();
  aBlock = _swiftEmptyArrayStorage;
  v81 = sub_1BD9D8(&qword_340650, &type metadata accessor for OS_dispatch_queue.Attributes);
  v80 = sub_18AFC0(&qword_340658);
  v16 = sub_1B2998(&qword_340660, &qword_340658);
  v69 = v9;
  v67 = v16;
  sub_1EF454();
  LODWORD(v78) = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v17 = *(v85 + 104);
  v85 += 104;
  v79 = v17;
  (v17)(v77);
  v75 = v15;
  *&v1[v70] = sub_1EF174();
  *&v1[OBJC_IVAR___BCRCDataContainer_aq_currentDataSource] = 0;
  *&v1[OBJC_IVAR___BCRCDataContainer_aq_stagedDataSource] = 0;
  *&v1[OBJC_IVAR___BCRCDataContainer_currentABData] = 0;
  *&v1[OBJC_IVAR___BCRCDataContainer_stagedABData] = 0;
  *&v1[OBJC_IVAR___BCRCDataContainer_treatmentData] = 0;
  v18 = OBJC_IVAR___BCRCDataContainer_configVersionCounter;
  sub_18AFC0(&qword_3410E8);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *&v1[v18] = v19;
  *(v19 + 16) = 0;
  v65 = OBJC_IVAR___BCRCDataContainer_watchedValuesQueue;
  v63 = "RCDataContainer.accessQueue";
  LODWORD(v70) = enum case for DispatchQoS.QoSClass.default(_:);
  v20 = v84;
  v68 = v84[13];
  v21 = v71;
  v22 = v72;
  v68(v71);
  sub_1EF184();
  v23 = v20[1];
  v84 = v20 + 1;
  v66 = v23;
  v23(v21, v22);
  v64 = v12;
  sub_1EEDA4();
  aBlock = _swiftEmptyArrayStorage;
  sub_1EF454();
  v24 = v77;
  (v79)(v77, v78, v83);
  *&v1[v65] = sub_1EF174();
  v25 = OBJC_IVAR___BCRCDataContainer_configChangeHandler;
  sub_18AFC0(&qword_3410F0);
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  *&v1[v25] = v26;
  *(v26 + 16) = 0;
  v65 = OBJC_IVAR___BCRCDataContainer_exportConfigsQueue;
  (v68)(v21, v70, v22);
  sub_1EF184();
  v66(v21, v22);
  sub_1EEDA4();
  aBlock = _swiftEmptyArrayStorage;
  sub_1EF454();
  (v79)(v24, v78, v83);
  *&v1[v65] = sub_1EF174();
  *&v1[OBJC_IVAR___BCRCDataContainer____lazy_storage___overrides] = 0;
  v27 = v74;
  *&v1[OBJC_IVAR___BCRCDataContainer_configManager] = v74;
  v92.receiver = v1;
  v92.super_class = ObjectType;
  v28 = v27;
  v29 = objc_msgSendSuper2(&v92, "init");
  sub_1EF0B4();
  if (qword_33F938 != -1)
  {
    swift_once();
  }

  v85 = qword_341480;
  sub_1EEAA4();
  [v28 addObserver:v29];
  sub_1B5104();
  v30 = *&v29[OBJC_IVAR___BCRCDataContainer_accessQueue];
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = 1;
  *(v31 + 32) = 0;
  *(v31 + 40) = 0;
  *(v31 + 48) = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1BDFD4;
  *(v32 + 24) = v31;
  v90 = sub_1ADC78;
  v91 = v32;
  aBlock = _NSConcreteStackBlock;
  v87 = 1107296256;
  v88 = sub_199688;
  v89 = &unk_2D0B48;
  v33 = _Block_copy(&aBlock);
  v34 = v29;
  v35 = v30;

  dispatch_sync(v35, v33);

  _Block_release(v33);
  LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

  if (v35)
  {
    __break(1u);
  }

  else
  {
    v83 = objc_opt_self();
    v37 = [v83 defaultCenter];
    v38 = v57;
    sub_1EF244();

    v39 = sub_1EF144();
    v84 = v28;
    v40 = v39;
    aBlock = v39;
    v80 = sub_1EF124();
    v41 = *(v80 - 8);
    v79 = *(v41 + 56);
    v81 = v41 + 56;
    v42 = v59;
    v79(v59, 1, 1, v80);
    v78 = sub_1BD9D8(&qword_3410F8, &type metadata accessor for NSNotificationCenter.Publisher);
    v77 = sub_1BDA20();
    v43 = v58;
    v44 = v60;
    sub_1EED44();
    sub_1927B4(v42, &qword_3410D0);

    v45 = *(v82 + 8);
    v82 += 8;
    v76 = v45;
    v46 = v44;
    v45(v38, v44);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v74 = sub_1B2998(&qword_341108, &qword_3410D8);
    v47 = v62;
    sub_1EED64();

    ObjectType = *(v61 + 8);
    (ObjectType)(v43, v47);
    swift_beginAccess();
    sub_1EED04();
    swift_endAccess();

    v48 = [v83 defaultCenter];
    sub_1EF244();

    v49 = sub_1EF144();
    aBlock = v49;
    v79(v42, 1, 1, v80);
    sub_1EED44();
    sub_1927B4(v42, &qword_3410D0);

    v76(v38, v46);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1EED64();

    (ObjectType)(v43, v47);
    swift_beginAccess();
    sub_1EED04();
    swift_endAccess();

    v50 = sub_1EF144();
    v51 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v52 = objc_allocWithZone(BUOSStateHandler);

    v53 = sub_1EEED4();
    v90 = sub_1BDB08;
    v91 = v51;
    aBlock = _NSConcreteStackBlock;
    v87 = 1107296256;
    v88 = sub_1BB1CC;
    v89 = &unk_2D0BC0;
    v54 = _Block_copy(&aBlock);
    v55 = [v52 initWithTitle:v53 queue:v50 block:v54];

    _Block_release(v54);

    v56 = *&v34[OBJC_IVAR___BCRCDataContainer_stateHandler];
    *&v34[OBJC_IVAR___BCRCDataContainer_stateHandler] = v55;

    sub_1EF0B4();
    sub_1EEAA4();

    return v34;
  }

  return result;
}

uint64_t sub_1B5104()
{
  v23 = sub_1EED84();
  v26 = *(v23 - 8);
  __chkstk_darwin(v23);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1EEDE4();
  v24 = *(v3 - 8);
  v25 = v3;
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1EEE04();
  v22 = v6;
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  v20 = v0;
  v19 = *(v0 + OBJC_IVAR___BCRCDataContainer_accessQueue);
  sub_1EEDF4();
  sub_1EEE24();
  v21 = *(v7 + 8);
  v21(v10, v6);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BDB48;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195254;
  aBlock[3] = &unk_2D0BE8;
  v14 = _Block_copy(aBlock);

  sub_1EEDA4();
  v27 = _swiftEmptyArrayStorage;
  sub_1BD9D8(&qword_340390, &type metadata accessor for DispatchWorkItemFlags);
  sub_18AFC0(&qword_340398);
  sub_1B2998(&qword_3403A0, &qword_340398);
  v15 = v23;
  sub_1EF454();
  v16 = v19;
  sub_1EF114();
  _Block_release(v14);

  (*(v26 + 8))(v2, v15);
  (*(v24 + 8))(v5, v25);
  v21(v12, v22);

  return sub_1B6204();
}

uint64_t sub_1B54EC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR___BCRCDataContainer_isTimerSuspended);
    v2 = __chkstk_darwin(result);

    os_unfair_lock_lock((v1 + 20));
    sub_1BDB2C((v1 + 16));
    os_unfair_lock_unlock((v1 + 20));
  }

  return result;
}

_BYTE *sub_1B55B0(_BYTE *result, uint64_t a2)
{
  if ((*result & 1) == 0)
  {
    if (*(a2 + OBJC_IVAR___BCRCDataContainer_dispatchTimer))
    {
      v2 = result;
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1EF1F4();
      swift_unknownObjectRelease();
      result = v2;
    }

    *result = 1;
  }

  return result;
}

uint64_t sub_1B562C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR___BCRCDataContainer_isTimerSuspended);
    v2 = __chkstk_darwin(result);

    os_unfair_lock_lock((v1 + 20));
    sub_1BDB10((v1 + 16));
    os_unfair_lock_unlock((v1 + 20));
  }

  return result;
}

_BYTE *sub_1B56F0(_BYTE *result, uint64_t a2)
{
  if (*result == 1)
  {
    if (*(a2 + OBJC_IVAR___BCRCDataContainer_dispatchTimer))
    {
      v2 = result;
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1EF1E4();
      swift_unknownObjectRelease();
      result = v2;
    }

    *result = 0;
  }

  return result;
}

uint64_t sub_1B576C()
{
  sub_1EF0B4();
  if (qword_33F938 != -1)
  {
    swift_once();
  }

  sub_1EEAA4();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = RCDataContainer.configs.getter();

  v2 = sub_1C78C4(v1);

  return v2;
}

uint64_t RCDataContainer.configs.getter()
{
  v1 = OBJC_IVAR___BCRCDataContainer_accessQueue;
  v2 = *&v0[OBJC_IVAR___BCRCDataContainer_accessQueue];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1B81B4;
  *(v4 + 24) = v3;
  v23 = sub_19CCC4;
  v24 = v4;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_199688;
  v22 = &unk_2D0978;
  v5 = _Block_copy(&aBlock);
  v6 = v2;
  v7 = v0;

  dispatch_sync(v6, v5);

  _Block_release(v5);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v18 = &_swiftEmptyDictionarySingleton;
    v9 = *&v0[v1];
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = &v18;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1B91A8;
    *(v11 + 24) = v10;
    v23 = sub_1ADC78;
    v24 = v11;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_199688;
    v22 = &unk_2D09F0;
    v12 = _Block_copy(&aBlock);
    v13 = v7;
    v14 = v9;

    dispatch_sync(v14, v12);

    _Block_release(v12);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if ((v14 & 1) == 0)
    {
      v15 = sub_1B91B0();

      v17 = sub_1B91F8(v16, v15);

      return v17;
    }
  }

  __break(1u);
  return result;
}

id RCDataContainer.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___BCRCDataContainer_dispatchTimer;
  if (*&v0[OBJC_IVAR___BCRCDataContainer_dispatchTimer])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1EF1D4();
    swift_unknownObjectRelease();
  }

  *&v0[v2] = 0;
  swift_unknownObjectRelease();
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1B5D44()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*&Strong[OBJC_IVAR___BCRCDataContainer_aq_currentDataSource])
    {
    }

    else
    {
      Strong[OBJC_IVAR___BCRCDataContainer_overrideHasLoadedFromServer] = 1;
      v2 = [*&Strong[OBJC_IVAR___BCRCDataContainer_configManager] allLogicalValuesFromNamespace:@"BooksDefaults" allowsOnlyDefaultSource:1];
      if (v2)
      {
        v3 = v2;
        v4 = sub_1EEE54();
      }

      else
      {
        v4 = sub_1AC14C(_swiftEmptyArrayStorage);
      }

      sub_1B5E54(1, 0, v4, 0);
    }
  }
}

void sub_1B5E54(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1EEE14();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v4 + OBJC_IVAR___BCRCDataContainer_accessQueue);
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = sub_1EEE34();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);

    *(a4 + 16) = v27;

    __break(1u);
    return;
  }

  v15 = *(v4 + OBJC_IVAR___BCRCDataContainer_configManager);
  v16 = [v15 allLogicalValuesFromNamespace:@"BooksDefaults" allowsOnlyDefaultSource:a4 & 1];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1EEE54();
  }

  else
  {
    v18 = 0;
  }

  if ([v15 configurationLoaded])
  {
    v19 = 1;
    if (a3)
    {
LABEL_7:

      goto LABEL_11;
    }
  }

  else
  {
    v19 = *(v4 + OBJC_IVAR___BCRCDataContainer_overrideHasLoadedFromServer);
    if (a3)
    {
      goto LABEL_7;
    }
  }

  if (!v18)
  {
    return;
  }

  a3 = v18;
LABEL_11:
  v20 = OBJC_IVAR___BCRCDataContainer_aq_currentDataSource;
  if (v19 && *(v4 + OBJC_IVAR___BCRCDataContainer_aq_currentDataSource))
  {
    v21 = OBJC_IVAR___BCRCDataContainer_aq_stagedDataSource;
    v22 = *(v4 + OBJC_IVAR___BCRCDataContainer_aq_stagedDataSource);
    if (v22)
    {
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = *(v22 + 16);
      *(v22 + 16) = 0x8000000000000000;
      sub_1BD348(a3, sub_1BCDAC, 0, isUniquelyReferenced_nonNull_native, &v27);

      *(v22 + 16) = v27;
      swift_endAccess();
    }

    else
    {
      type metadata accessor for DataSource();
      v25 = swift_allocObject();
      *(v25 + 16) = &_swiftEmptyDictionarySingleton;
      swift_beginAccess();
      *(v25 + 16) = a3;
      *(v4 + v21) = v25;
    }

    if (a2)
    {
      *(v4 + OBJC_IVAR___BCRCDataContainer_stagedABData) = a2;
    }

    else if (!*(v4 + OBJC_IVAR___BCRCDataContainer_stagedABData))
    {
      *(v4 + OBJC_IVAR___BCRCDataContainer_stagedABData) = *(v4 + OBJC_IVAR___BCRCDataContainer_currentABData);
    }
  }

  else
  {
    type metadata accessor for FrozenDataSource();
    v24 = swift_allocObject();
    *(v24 + 16) = a3;
    *(v4 + v20) = v24;

    if (a2)
    {
      *(v4 + OBJC_IVAR___BCRCDataContainer_currentABData) = a2;
      swift_retain_n();

      sub_1B70EC(0);
    }

    if (a1)
    {
      sub_1B774C();
    }
  }
}

uint64_t sub_1B6204()
{
  v1 = sub_1EED84();
  v18 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1EEDE4();
  v4 = *(v17 - 8);
  __chkstk_darwin(v17);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1EEF04();
  v9 = v8;
  v10 = *(v0 + OBJC_IVAR___BCRCDataContainer_configManager);
  [v10 refreshNamespace:@"BooksDefaults"];
  sub_1928F4(0, &qword_340388);
  v11 = sub_1EF144();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v10;
  v13[4] = v7;
  v13[5] = v9;
  aBlock[4] = sub_1BDD28;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195254;
  aBlock[3] = &unk_2D0CD8;
  v14 = _Block_copy(aBlock);
  v15 = v10;

  sub_1EEDA4();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1BD9D8(&qword_340390, &type metadata accessor for DispatchWorkItemFlags);
  sub_18AFC0(&qword_340398);
  sub_1B2998(&qword_3403A0, &qword_340398);
  sub_1EF454();
  sub_1EF164();
  _Block_release(v14);

  (*(v18 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v17);
}

uint64_t sub_1B655C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v52 = a2;
  v53 = a4;
  v51 = a3;
  v4 = sub_1EED74();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1EEE04();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v54 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v55 = &v38 - v12;
  v13 = sub_1EED84();
  v49 = *(v13 - 8);
  v50 = v13;
  __chkstk_darwin(v13);
  v47 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1EEDE4();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1EF1A4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    v40 = v9;
    v41 = v8;
    v42 = v7;
    v43 = v5;
    v44 = v4;
    v39 = OBJC_IVAR___BCRCDataContainer_dispatchTimer;
    if (*(result + OBJC_IVAR___BCRCDataContainer_dispatchTimer))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1EF1D4();
      swift_unknownObjectRelease();
    }

    sub_1928F4(0, &qword_341150);
    sub_1928F4(0, &qword_340388);
    v22 = sub_1EF144();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1BD9D8(&qword_341158, &type metadata accessor for OS_dispatch_source.TimerFlags);
    sub_18AFC0(&qword_341160);
    sub_1B2998(&qword_341168, &qword_341160);
    sub_1EF454();
    v23 = sub_1EF1B4();

    (*(v17 + 8))(v19, v16);
    swift_getObjectType();
    v24 = swift_allocObject();
    v25 = v51;
    v26 = v52;
    v24[2] = v52;
    v24[3] = v25;
    v24[4] = v53;
    aBlock[4] = sub_1BDD74;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195254;
    aBlock[3] = &unk_2D0D28;
    v27 = _Block_copy(aBlock);
    v28 = v26;

    v29 = v45;
    sub_1EEDA4();
    v30 = v47;
    sub_1B6BF4();
    sub_1EF1C4();
    _Block_release(v27);
    (*(v49 + 8))(v30, v50);
    (*(v46 + 8))(v29, v48);

    v31 = v54;
    sub_1EEDF4();
    v32 = v55;
    sub_1EEE24();
    v33 = *(v40 + 8);
    v34 = v41;
    v33(v31, v41);
    v35 = v42;
    *v42 = 0;
    v36 = v43;
    v37 = v44;
    (*(v43 + 104))(v35, enum case for DispatchTimeInterval.nanoseconds(_:), v44);
    sub_1EF294();
    (*(v36 + 8))(v35, v37);
    v33(v32, v34);
    sub_1EF204();
    *&v21[v39] = v23;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B6BF4()
{
  sub_1EED84();
  sub_1BD9D8(&qword_340390, &type metadata accessor for DispatchWorkItemFlags);
  sub_18AFC0(&qword_340398);
  sub_1B2998(&qword_3403A0, &qword_340398);
  return sub_1EF454();
}

id RCDataContainer.configurationLoaded.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 configurationLoaded];

  return v1;
}

Swift::Void __swiftcall RCDataContainer.deployStagedDataIfNeeded()()
{
  v15 = 0;
  v1 = *&v0[OBJC_IVAR___BCRCDataContainer_accessQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v15;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1B9910;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1ADC78;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199688;
  aBlock[3] = &unk_2D0A68;
  v4 = _Block_copy(aBlock);
  v5 = v1;
  v6 = v0;

  dispatch_sync(v5, v4);

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v15 == 1)
    {
      v8 = *&v6[OBJC_IVAR___BCRCDataContainer_currentABData];
      v9 = OBJC_IVAR___BCRCDataContainer_stagedABData;
      *&v6[OBJC_IVAR___BCRCDataContainer_currentABData] = *&v6[OBJC_IVAR___BCRCDataContainer_stagedABData];
      *&v6[v9] = 0;
      sub_1B70EC(v8);
      sub_1B774C();
      v10 = RCDataContainer.configs.getter();
      if (*(v10 + 16) && (v11 = sub_1B0598(0xD000000000000014, 0x800000000024F310), (v12 & 1) != 0))
      {
        sub_18E2AC(*(v10 + 56) + 32 * v11, aBlock);

        if ((swift_dynamicCast() & 1) != 0 && *&v6[OBJC_IVAR___BCRCDataContainer_refreshInterval] != v13)
        {
          *&v6[OBJC_IVAR___BCRCDataContainer_refreshInterval] = v13;
          sub_1B6204();
        }
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1B703C(uint64_t result, _BYTE *a2)
{
  v2 = OBJC_IVAR___BCRCDataContainer_aq_stagedDataSource;
  v3 = *(result + OBJC_IVAR___BCRCDataContainer_aq_stagedDataSource);
  if (v3)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v3 + 16);
    type metadata accessor for FrozenDataSource();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v5 + OBJC_IVAR___BCRCDataContainer_aq_currentDataSource) = v7;

    *(v5 + v2) = 0;

    *a2 = 1;
  }

  return result;
}

void sub_1B70EC(void *a1)
{
  v3 = sub_1EED84();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1EEDE4();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EEF04();
  v42 = OBJC_IVAR___BCRCDataContainer_currentABData;
  v43 = v1;
  if (*(v1 + OBJC_IVAR___BCRCDataContainer_currentABData))
  {

    if (!a1)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (a1)
  {
LABEL_3:
  }

LABEL_5:
  v6 = objc_allocWithZone(sub_1EE304());
  v7 = sub_1EE2E4();
  v8 = v42;
  v9 = v43;
  v10 = *(v43 + v42);
  if (!v10)
  {
    if (!a1)
    {
      goto LABEL_28;
    }

    v12 = a1[2];

LABEL_13:
    if (v12)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  v11 = v10[2];

  if (!a1)
  {
    if (v11)
    {
      goto LABEL_26;
    }

    v14 = v10[3];

    if (v14)
    {
      goto LABEL_26;
    }

    v15 = v10[4];

    if (v15)
    {
      goto LABEL_26;
    }

    goto LABEL_28;
  }

  v12 = a1[2];

  if (!v11)
  {
    goto LABEL_13;
  }

  if (!v12)
  {
    goto LABEL_26;
  }

  v13 = sub_1C3EE4(v11, v12);

  if ((v13 & 1) == 0)
  {
    goto LABEL_27;
  }

  v10 = *(v9 + v8);
LABEL_19:
  if (v10)
  {
    v16 = v10[3];
    v17 = a1[3];

    if (v16)
    {
      if (!v17)
      {
        goto LABEL_26;
      }

      v18 = sub_1C3EE4(v16, v17);

      if ((v18 & 1) == 0)
      {
        goto LABEL_27;
      }

      v10 = *(v9 + v8);
      goto LABEL_31;
    }
  }

  else
  {
    v17 = a1[3];
  }

  if (v17)
  {
    goto LABEL_26;
  }

LABEL_31:
  if (v10)
  {
    v33 = v10[4];
    v34 = a1[4];

    if (v33)
    {
      if (v34)
      {
        v35 = sub_1C3EE4(v33, v34);

        if (v35)
        {
          goto LABEL_28;
        }

LABEL_27:
        sub_1928F4(0, &qword_340388);
        v19 = sub_1EF144();
        v20 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v21 = swift_allocObject();
        *(v21 + 16) = v20;
        *(v21 + 24) = v7;
        aBlock[4] = sub_1BDF48;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_195254;
        aBlock[3] = &unk_2D0E68;
        v22 = _Block_copy(aBlock);
        v23 = v7;

        v24 = v36;
        sub_1EEDA4();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_1BD9D8(&qword_340390, &type metadata accessor for DispatchWorkItemFlags);
        sub_18AFC0(&qword_340398);
        sub_1B2998(&qword_3403A0, &qword_340398);
        v25 = v38;
        v26 = v41;
        sub_1EF454();
        sub_1EF164();
        _Block_release(v22);

        (*(v40 + 8))(v25, v26);
        (*(v37 + 8))(v24, v39);
        goto LABEL_28;
      }

LABEL_26:

      goto LABEL_27;
    }
  }

  else
  {
    v34 = a1[4];
  }

  if (v34)
  {
    goto LABEL_26;
  }

LABEL_28:
  sub_18AFC0(&qword_3411B0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2A61C0;
  *(v27 + 32) = v7;
  objc_allocWithZone(sub_1EE2C4());
  v28 = v7;
  v29 = sub_1EE2B4();
  v30 = OBJC_IVAR___BCRCDataContainer_treatmentData;
  swift_beginAccess();
  v31 = *(v9 + v30);
  *(v9 + v30) = v29;

  v32 = [objc_opt_self() defaultCenter];
  if (qword_33F928 != -1)
  {
    swift_once();
  }

  [v32 postNotificationName:qword_348A50 object:v9];
}

void sub_1B774C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1EED84();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1EEDE4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR___BCRCDataContainer_configVersionCounter);
  os_unfair_lock_lock((v11 + 24));
  v12 = *(v11 + 16);
  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
  }

  else
  {
    v26 = v4;
    *(v11 + 16) = v13;
    os_unfair_lock_unlock((v11 + 24));
    LOBYTE(v11) = sub_1EF0B4();
    if (qword_33F938 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v24 = v8;
  v25 = v7;
  v14 = qword_341480;
  if (os_log_type_enabled(qword_341480, v11))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = v13;
    _os_log_impl(&dword_0, v14, v11, "[configs change] [v%ld] active", v15, 0xCu);
  }

  sub_1928F4(0, &qword_340388);
  v16 = sub_1EF144();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = v13;
  v18[4] = ObjectType;
  aBlock[4] = sub_1BDE08;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195254;
  aBlock[3] = &unk_2D0D78;
  v19 = _Block_copy(aBlock);

  sub_1EEDA4();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1BD9D8(&qword_340390, &type metadata accessor for DispatchWorkItemFlags);
  sub_18AFC0(&qword_340398);
  sub_1B2998(&qword_3403A0, &qword_340398);
  sub_1EF454();
  sub_1EF164();
  _Block_release(v19);

  (*(v26 + 8))(v6, v3);
  (*(v24 + 8))(v10, v25);
  v20 = OBJC_IVAR___BCRCDataContainer_bridge;
  swift_beginAccess();
  v21 = *(v1 + v20);
  if (v21)
  {
    swift_unknownObjectRetain();
    sub_18AFC0(&qword_340DB8);
    sub_1EEAB4();
    v22 = v27;
    if (v27)
    {
      v23 = sub_1EEED4();
      [v21 enqueueManagedValueCall:v22 arguments:0 file:v23 line:423];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void *RCDataContainer.treatmentData.getter()
{
  v1 = OBJC_IVAR___BCRCDataContainer_treatmentData;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void RCDataContainer.treatmentData.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___BCRCDataContainer_treatmentData;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1B7E00(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = OBJC_IVAR___BCRCDataContainer_sessionHosting;
    v5 = Strong;
    swift_beginAccess();
    v6 = *&v5[v4];
    swift_unknownObjectRetain();

    if (v6)
    {
      v7 = [v6 primaryAnalyticsController];
      v8 = sub_1EDFE4();

      if (v8)
      {
        *(swift_allocObject() + 16) = a2;
        v9 = v8;
        v10 = a2;
        sub_1EE314();

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1B7F20()
{
  v0 = sub_1EE2D4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EE2F4();
  sub_18AFC0(&qword_3411B8);
  v4 = sub_1EDFC4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2A5AF0;
  (*(v5 + 104))(v7 + v6, enum case for DataEventTrait.onlyOnce(_:), v4);
  sub_1BD9D8(&qword_3411C0, &type metadata accessor for RemoteConfigNamespaceData);
  sub_1EDF94();

  (*(v1 + 8))(v3, v0);
  sub_1EE284();
  sub_1BD9D8(&qword_3411C8, &type metadata accessor for RemoteConfigChangeEvent);
  memset(v9, 0, sizeof(v9));
  sub_1EDFA4();
  return sub_1927B4(v9, &qword_33F9D8);
}

uint64_t sub_1B81B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1B81D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = RCDataContainer.configs.getter();
    v6 = [objc_opt_self() defaultCenter];
    if (qword_33F920 != -1)
    {
      swift_once();
    }

    v7 = qword_340D30;
    sub_18AFC0(&unk_341170);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2A5AF0;
    v9 = v4;
    sub_1EF504();
    *(inited + 96) = sub_18AFC0(&unk_340DA0);
    *(inited + 72) = v5;

    sub_1AC27C(inited);
    swift_setDeallocating();
    sub_1927B4(inited + 32, &qword_340B60);
    isa = sub_1EEE44().super.isa;

    [v6 postNotificationName:v7 object:v9 userInfo:{isa, 0x6769666E6F63, 0xE600000000000000}];

    v11 = sub_1C78C4(v5);
    sub_1B8458(v11, a2);

    if ([objc_opt_self() isInternalInstall])
    {
      v12 = [objc_opt_self() standardUserDefaults];
      v13 = [v12 BOOLForKey:@"BRCEnableConfigExport"];

      if (v13)
      {
        v14 = sub_1C78C4(v5);

        sub_1B87BC(v14, a2);
      }
    }
  }
}

id sub_1B8458(uint64_t a1, uint64_t a2)
{
  v4 = sub_1EED84();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1EEDE4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() isInternalInstall];
  if (result)
  {
    v22 = *(v2 + OBJC_IVAR___BCRCDataContainer_watchedValuesQueue);
    v13 = [objc_opt_self() standardUserDefaults];
    v14.super.isa = sub_1EEE44().super.isa;
    v21 = v8;
    isa = v14.super.isa;
    v16 = swift_allocObject();
    v16[2] = v13;
    v16[3] = isa;
    v16[4] = a2;
    aBlock[4] = sub_1BDE94;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195254;
    aBlock[3] = &unk_2D0E18;
    v17 = _Block_copy(aBlock);
    v20 = v13;
    v19 = isa;
    sub_1EEDA4();
    v23 = _swiftEmptyArrayStorage;
    sub_1BD9D8(&qword_340390, &type metadata accessor for DispatchWorkItemFlags);
    sub_18AFC0(&qword_340398);
    sub_1B2998(&qword_3403A0, &qword_340398);
    sub_1EF454();
    sub_1EF164();
    _Block_release(v17);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v21);
  }

  return result;
}

uint64_t sub_1B87BC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1EED84();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1EEDE4();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v2 + OBJC_IVAR___BCRCDataContainer_exportConfigsQueue);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  aBlock[4] = sub_1BDE4C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195254;
  aBlock[3] = &unk_2D0DC8;
  v13 = _Block_copy(aBlock);

  sub_1EEDA4();
  v17 = _swiftEmptyArrayStorage;
  sub_1BD9D8(&qword_340390, &type metadata accessor for DispatchWorkItemFlags);
  sub_18AFC0(&qword_340398);
  sub_1B2998(&qword_3403A0, &qword_340398);
  sub_1EF454();
  sub_1EF164();
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v16);
}

uint64_t sub_1B8A98(uint64_t a1, void *a2, uint64_t a3)
{
  v38 = a3;
  v4 = sub_1EEF34();
  __chkstk_darwin(v4 - 8);
  v40 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = NSUserDefaults.rcDataContainerWatchedKeyPaths.getter();
  v7 = v6[2];
  if (v7)
  {
    v39 = objc_opt_self();
    v35 = 0;
    v34 = v6;
    v8 = v6 + 5;
    *&v9 = 134218498;
    v36 = v9;
    v37 = a2;
    do
    {
      v42 = v7;
      v14 = *(v8 - 1);
      v13 = *v8;

      v15 = sub_1EEED4();
      v16 = [a2 valueForKeyPath:{v15, v34, v35}];

      if (v16)
      {
        sub_1EF444();
        swift_unknownObjectRelease();
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
      }

      v47[0] = v45;
      v47[1] = v46;
      sub_19A4B0(v47, &v43, &qword_33F9D8);
      if (v44)
      {
        sub_19DE70(&v43, &v45);
      }

      else
      {
        v17 = [objc_allocWithZone(NSNull) init];
        *(&v46 + 1) = sub_1928F4(0, &qword_3411A8);
        *&v45 = v17;
        if (v44)
        {
          sub_1927B4(&v43, &qword_33F9D8);
        }
      }

      sub_18E35C(&v45, *(&v46 + 1));
      v18 = sub_1EF6B4();
      sub_18E310(&v45);
      *&v45 = 0;
      v19 = [v39 dataWithJSONObject:v18 options:15 error:&v45];
      swift_unknownObjectRelease();
      v20 = v45;
      if (v19)
      {
        v21 = sub_1EDE14();
        v23 = v22;

        sub_1BDEB4(v21, v23);
        v24 = v23;
      }

      else
      {
        v25 = v20;
        sub_1EDDA4();

        swift_willThrow();

        v21 = 0;
        v35 = 0;
        v24 = 0xF000000000000000;
        v23 = 0xC000000000000000;
      }

      v41 = v24;
      sub_1EEF24();
      v26 = sub_1EEF14();
      v28 = v27;
      sub_19D4D4(v21, v23);
      if (v28)
      {
        v29 = v26;
      }

      else
      {
        v29 = 0x3E726F7272653CLL;
      }

      if (v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = 0xE700000000000000;
      }

      v31 = sub_1EF0B4();
      if (qword_33F938 != -1)
      {
        swift_once();
      }

      v32 = qword_341480;
      if (os_log_type_enabled(qword_341480, v31))
      {
        v10 = swift_slowAlloc();
        *&v45 = swift_slowAlloc();
        *v10 = v36;
        *(v10 + 4) = v38;
        *(v10 + 12) = 2082;
        v11 = sub_1C554C(v14, v13, &v45);

        *(v10 + 14) = v11;
        *(v10 + 22) = 2080;
        v12 = sub_1C554C(v29, v30, &v45);

        *(v10 + 24) = v12;
        _os_log_impl(&dword_0, v32, v31, "[configs change] [v%ld] %{public}s → %s", v10, 0x20u);
        swift_arrayDestroy();
        a2 = v37;

        sub_1BDEA0(v21, v41);
      }

      else
      {
        sub_1BDEA0(v21, v41);
      }

      sub_1927B4(v47, &qword_33F9D8);
      v8 += 2;
      v7 = v42 - 1;
    }

    while (v42 != 1);
  }
}

void *NSUserDefaults.rcDataContainerWatchedKeyPaths.getter()
{
  v1 = sub_1EEED4();
  v2 = [v0 arrayForKey:v1];

  if (v2)
  {
    v3 = sub_1EEFE4();

    v4 = sub_1BAF4C(v3);

    if (v4)
    {
      return v4;
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1B90D4(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR___BCRCDataContainer_aq_currentDataSource);
  if (v2)
  {
    *a2 = *(v2 + 16);
  }

  else
  {
    sub_1EF094();
    if (qword_33F938 != -1)
    {
      swift_once();
    }

    return sub_1EEAA4();
  }
}

void *sub_1B91B0()
{
  if (*(v0 + OBJC_IVAR___BCRCDataContainer____lazy_storage___overrides))
  {
    v1 = *(v0 + OBJC_IVAR___BCRCDataContainer____lazy_storage___overrides);
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
    *(v0 + OBJC_IVAR___BCRCDataContainer____lazy_storage___overrides) = &_swiftEmptyDictionarySingleton;
  }

  return v1;
}

uint64_t sub_1B91F8(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    if (v5)
    {
      v11 = v7;
LABEL_15:
      v14 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v15 = v14 | (v11 << 6);
      v16 = (*(a1 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      sub_18E2AC(*(a1 + 56) + 32 * v15, &v86);
      *&v88 = v18;
      *(&v88 + 1) = v17;
      sub_19DE70(&v86, &v89);

      v13 = v11;
    }

    else
    {
      v12 = v6 <= v7 + 1 ? v7 + 1 : v6;
      v13 = v12 - 1;
      while (1)
      {
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
          goto LABEL_74;
        }

        if (v11 >= v6)
        {
          break;
        }

        v5 = *(v2 + 8 * v11);
        ++v7;
        if (v5)
        {
          goto LABEL_15;
        }
      }

      v5 = 0;
      v89 = 0u;
      v90 = 0u;
      v88 = 0u;
    }

    v91 = v88;
    v92 = v89;
    v93 = v90;
    v19 = *(&v88 + 1);
    if (!*(&v88 + 1))
    {
      break;
    }

    v20 = v91;
    sub_19DE70(&v92, &v88);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v86 = v8;
    v22 = sub_1B0598(v20, v19);
    v24 = v8[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_75;
    }

    v28 = v23;
    if (v8[3] < v27)
    {
      sub_1BBD6C(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_1B0598(v20, v19);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_80;
      }

LABEL_22:
      if (v28)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

    v33 = v22;
    sub_1BC870();
    v22 = v33;
    if (v28)
    {
LABEL_4:
      v9 = v22;

      v8 = v86;
      v10 = (*(v86 + 56) + 32 * v9);
      sub_18E310(v10);
      sub_19DE70(&v88, v10);
      goto LABEL_5;
    }

LABEL_23:
    v8 = v86;
    *(v86 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    v30 = (v8[6] + 16 * v22);
    *v30 = v20;
    v30[1] = v19;
    sub_19DE70(&v88, (v8[7] + 32 * v22));
    v31 = v8[2];
    v26 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v26)
    {
      goto LABEL_77;
    }

    v8[2] = v32;
LABEL_5:
    v7 = v13;
  }

  v34 = 1 << *(a2 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(a2 + 64);
  v37 = (v34 + 63) >> 6;

  v38 = 0;
  while (2)
  {
    if (v36)
    {
      v42 = v38;
LABEL_43:
      v45 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v46 = v45 | (v42 << 6);
      v47 = (*(a2 + 48) + 16 * v46);
      v49 = *v47;
      v48 = v47[1];
      sub_18E2AC(*(a2 + 56) + 32 * v46, &v86);
      *&v88 = v49;
      *(&v88 + 1) = v48;
      sub_19DE70(&v86, &v89);

      v44 = v42;
LABEL_44:
      v91 = v88;
      v92 = v89;
      v93 = v90;
      v50 = *(&v88 + 1);
      if (!*(&v88 + 1))
      {
        goto LABEL_72;
      }

      v84 = v44;
      v51 = v91;
      sub_19DE70(&v92, &v88);
      if (v8[2])
      {
        v52 = sub_1B0598(v51, v50);
        if (v53)
        {
          sub_18E2AC(v8[7] + 32 * v52, &v86);
          v54 = sub_18AFC0(&unk_340DA0);
          if (swift_dynamicCast())
          {
            v55 = *&v85[0];
            sub_18E2AC(&v88, &v86);
            if (swift_dynamicCast())
            {
              v56 = sub_1B91F8(v55, *&v85[0]);

              v87 = v54;
              *&v86 = v56;
              sub_19DE70(&v86, v85);
              v57 = swift_isUniquelyReferenced_nonNull_native();
              v58 = sub_1B0598(v51, v50);
              v60 = v8[2];
              v61 = (v59 & 1) == 0;
              v26 = __OFADD__(v60, v61);
              v62 = v60 + v61;
              if (v26)
              {
                goto LABEL_79;
              }

              v63 = v59;
              if (v8[3] < v62)
              {
                sub_1BBD6C(v62, v57);
                v58 = sub_1B0598(v51, v50);
                if ((v63 & 1) != (v64 & 1))
                {
                  goto LABEL_80;
                }

LABEL_64:
                if (v63)
                {
                  goto LABEL_65;
                }

LABEL_69:
                v8[(v58 >> 6) + 8] |= 1 << v58;
                v79 = (v8[6] + 16 * v58);
                *v79 = v51;
                v79[1] = v50;
                sub_19DE70(v85, (v8[7] + 32 * v58));
                sub_18E310(&v88);
                v80 = v8[2];
                v26 = __OFADD__(v80, 1);
                v75 = v80 + 1;
                if (v26)
                {
                  __break(1u);
LABEL_72:

                  return v8;
                }

LABEL_62:
                v8[2] = v75;
LABEL_33:
                v38 = v84;
                continue;
              }

              if (v57)
              {
                goto LABEL_64;
              }

              v78 = v58;
              sub_1BC870();
              v58 = v78;
              if ((v63 & 1) == 0)
              {
                goto LABEL_69;
              }

LABEL_65:
              v76 = v58;

              v40 = (v8[7] + 32 * v76);
              sub_18E310(v40);
              v41 = v85;
LABEL_32:
              sub_19DE70(v41, v40);
              sub_18E310(&v88);
              goto LABEL_33;
            }
          }
        }
      }

      sub_18E2AC(&v88, &v86);
      v65 = swift_isUniquelyReferenced_nonNull_native();
      *&v85[0] = v8;
      v66 = sub_1B0598(v51, v50);
      v68 = v8[2];
      v69 = (v67 & 1) == 0;
      v26 = __OFADD__(v68, v69);
      v70 = v68 + v69;
      if (v26)
      {
        goto LABEL_76;
      }

      v71 = v67;
      if (v8[3] >= v70)
      {
        if (v65)
        {
          goto LABEL_60;
        }

        v77 = v66;
        sub_1BC870();
        v66 = v77;
        if ((v71 & 1) == 0)
        {
LABEL_61:
          v8 = *&v85[0];
          *(*&v85[0] + 8 * (v66 >> 6) + 64) |= 1 << v66;
          v73 = (v8[6] + 16 * v66);
          *v73 = v51;
          v73[1] = v50;
          sub_19DE70(&v86, (v8[7] + 32 * v66));
          sub_18E310(&v88);
          v74 = v8[2];
          v26 = __OFADD__(v74, 1);
          v75 = v74 + 1;
          if (v26)
          {
            goto LABEL_78;
          }

          goto LABEL_62;
        }
      }

      else
      {
        sub_1BBD6C(v70, v65);
        v66 = sub_1B0598(v51, v50);
        if ((v71 & 1) != (v72 & 1))
        {
          goto LABEL_80;
        }

LABEL_60:
        if ((v71 & 1) == 0)
        {
          goto LABEL_61;
        }
      }

      v39 = v66;

      v8 = *&v85[0];
      v40 = (*(*&v85[0] + 56) + 32 * v39);
      sub_18E310(v40);
      v41 = &v86;
      goto LABEL_32;
    }

    break;
  }

  if (v37 <= v38 + 1)
  {
    v43 = v38 + 1;
  }

  else
  {
    v43 = v37;
  }

  v44 = v43 - 1;
  while (1)
  {
    v42 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v42 >= v37)
    {
      v36 = 0;
      v89 = 0u;
      v90 = 0u;
      v88 = 0u;
      goto LABEL_44;
    }

    v36 = *(a2 + 64 + 8 * v42);
    ++v38;
    if (v36)
    {
      goto LABEL_43;
    }
  }

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
  result = sub_1EF714();
  __break(1u);
  return result;
}

uint64_t sub_1B98D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t RCDataContainer.configsValues()()
{
  ObjectType = swift_getObjectType();
  v1 = [objc_opt_self() defaultCenter];
  if (qword_33F920 != -1)
  {
    swift_once();
  }

  sub_1EF224();

  *(swift_allocObject() + 16) = ObjectType;
  sub_1EF214();
  sub_18AFC0(&unk_340DA0);
  sub_1BD9D8(&qword_340070, &type metadata accessor for NSNotificationCenter.Notifications);
  return sub_1EF694();
}

uint64_t sub_1B9A7C(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return _swift_task_switch(sub_1B9A9C, 0, 0);
}

uint64_t sub_1B9A9C()
{
  v1 = sub_1EDD54();
  if (!v1)
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_9;
  }

  v2 = v1;
  *(v0 + 88) = 0x6769666E6F63;
  *(v0 + 96) = 0xE600000000000000;
  sub_1EF504();
  if (!*(v2 + 16) || (v3 = sub_1B06E4(v0 + 16), (v4 & 1) == 0))
  {

    sub_19A52C(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_9;
  }

  sub_18E2AC(*(v2 + 56) + 32 * v3, v0 + 56);
  sub_19A52C(v0 + 16);

  if (!*(v0 + 80))
  {
LABEL_9:
    v5 = *(v0 + 104);
    sub_1927B4(v0 + 56, &qword_33F9D8);
    *v5 = 0;
    goto LABEL_10;
  }

  sub_18AFC0(&unk_340DA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    **(v0 + 104) = 0;
  }

LABEL_10:
  v6 = *(v0 + 8);

  return v6();
}

Swift::Void __swiftcall RCDataContainer.registerOnConfigChange(_:)(JSValue a1)
{
  sub_1EF0B4();
  if (qword_33F938 != -1)
  {
    swift_once();
  }

  sub_1EEAA4();
  [objc_allocWithZone(JSManagedValue) initWithValue:a1.super.isa];
  sub_18AFC0(&qword_340DB8);
  sub_1EEAC4();
}

uint64_t sub_1B9EB4(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = sub_1EDDF4();
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = __chkstk_darwin(v3);
  v66 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v70 = &v65 - v7;
  __chkstk_darwin(v6);
  v71 = &v65 - v8;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v14 = _swiftEmptyArrayStorage;
  while (1)
  {
    v15 = v13;
    if (!v11)
    {
      break;
    }

LABEL_8:
    v16 = __clz(__rbit64(v11)) | (v13 << 6);
    sub_19A10C(*(a1 + 48) + 40 * v16, v79);
    sub_18E2AC(*(a1 + 56) + 32 * v16, v80);
    sub_19A10C(v79, &v73);
    if (swift_dynamicCast())
    {
      v76 = v72;
      sub_18E2AC(v80, &v77);
    }

    else
    {
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
    }

    v11 &= v11 - 1;
    sub_1927B4(v79, &qword_341180);
    if (*(&v76 + 1))
    {
      v73 = v76;
      v74 = v77;
      v75 = v78;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1C6818(0, v14[2] + 1, 1, v14);
      }

      v18 = v14[2];
      v17 = v14[3];
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v65 = v18 + 1;
        v23 = sub_1C6818((v17 > 1), v18 + 1, 1, v14);
        v19 = v65;
        v14 = v23;
      }

      v14[2] = v19;
      v20 = &v14[6 * v18];
      v21 = v73;
      v22 = v75;
      v20[3] = v74;
      v20[4] = v22;
      v20[2] = v21;
    }

    else
    {
      sub_1927B4(&v76, &qword_341188);
    }
  }

  while (1)
  {
    v13 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      swift_once();
      goto LABEL_26;
    }

    if (v13 >= v12)
    {
      break;
    }

    v11 = *(a1 + 64 + 8 * v13);
    ++v15;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  if (v14[2])
  {
    sub_18AFC0(&qword_340AD0);
    v24 = sub_1EF664();
  }

  else
  {
    v24 = &_swiftEmptyDictionarySingleton;
  }

  v25 = v67;
  v26 = v70;
  v79[0] = v24;

  LOBYTE(a1) = 0;
  sub_1BCDF8(v27, 1, v79);

  v28 = v79[0];
  v29 = [objc_opt_self() defaultManager];
  v30 = [v29 URLsForDirectory:13 inDomains:1];

  v31 = v68;
  v32 = sub_1EEFE4();
  if (!*(v32 + 16))
  {

    __break(1u);
  }

  if (!*(v32 + 16))
  {
    goto LABEL_35;
  }

  isa = v25[2].isa;
  isa(v71, v32 + ((LOBYTE(v25[10].isa) + 32) & ~LOBYTE(v25[10].isa)), v31);

  sub_1EDDC4();
  sub_18AFC0(&unk_341190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2A5D70;
  *(inited + 32) = 0x6E6F6973726576;
  v35 = v69;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = v35;
  *(inited + 72) = &type metadata for Int;
  *(inited + 80) = 0x736769666E6F63;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 120) = sub_18AFC0(&unk_340DA0);
  *(inited + 96) = v28;
  sub_1AC14C(inited);
  swift_setDeallocating();
  sub_18AFC0(&unk_341600);
  swift_arrayDestroy();
  v36 = objc_opt_self();
  v37 = sub_1EEE44().super.isa;

  v79[0] = 0;
  v38 = [v36 dataWithJSONObject:v37 options:11 error:v79];

  v39 = v79[0];
  if (v38)
  {
    v40 = sub_1EDE14();
    v42 = v41;

    sub_1EDE24();
    v52 = sub_1EF0B4();
    if (qword_33F938 != -1)
    {
      swift_once();
    }

    v53 = qword_341480;
    v54 = v66;
    isa(v66, v70, v31);
    if (os_log_type_enabled(v53, v52))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v79[0] = v56;
      *v55 = 134218242;
      *(v55 + 4) = v69;
      *(v55 + 12) = 2080;
      LODWORD(v69) = v52;
      v57 = sub_1EDDE4();
      v58 = v54;
      v59 = v25;
      v61 = v60;
      v67 = v53;
      v62 = v59[1].isa;
      v62(v58, v31);
      v63 = sub_1C554C(v57, v61, v79);

      *(v55 + 14) = v63;
      _os_log_impl(&dword_0, v67, v69, "[config export] [v%ld] exported to %s", v55, 0x16u);
      sub_18E310(v56);

      sub_19D4D4(v40, v42);
      v62(v70, v31);
      return (v62)(v71, v31);
    }

    else
    {
      sub_19D4D4(v40, v42);
      v64 = v25[1].isa;
      v64(v54, v31);
      v64(v70, v31);
      return (v64)(v71, v31);
    }
  }

  v43 = v39;
  sub_1EDDA4();

  swift_willThrow();
  v44 = v25[1].isa;
  v44(v26, v31);
  v44(v71, v31);
  LOBYTE(a1) = sub_1EF094();
  if (qword_33F938 != -1)
  {
    goto LABEL_36;
  }

LABEL_26:
  v45 = qword_341480;
  if (os_log_type_enabled(qword_341480, a1))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v79[0] = v47;
    *v46 = 134218242;
    *(v46 + 4) = v69;
    *(v46 + 12) = 2080;
    swift_getErrorValue();
    v48 = sub_1EF724();
    v50 = sub_1C554C(v48, v49, v79);

    *(v46 + 14) = v50;
    _os_log_impl(&dword_0, v45, a1, "[config export] [v%ld] failed to export: %s", v46, 0x16u);
    sub_18E310(v47);
  }
}

void RCDataContainer.setOverride(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1B91B0();
  sub_1BA890(a1, a2, a3, &v7);
  *(v3 + OBJC_IVAR___BCRCDataContainer____lazy_storage___overrides) = v7;

  sub_1B774C();
}

uint64_t sub_1BA890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v26[0] = a2;
  v26[1] = a3;
  v28 = 0xE100000000000000;
  sub_1B38F4();
  v27 = sub_1EF424();
  v6 = *(v27 + 16);
  if (v6 >= 2)
  {
    v7 = sub_1BAB84(0);
    v9 = v7;
    v10 = v8;
    v11 = *a4;
    if (*(*a4 + 16) && (v12 = sub_1B0598(v7, v8), (v13 & 1) != 0) && (sub_18E2AC(*(v11 + 56) + 32 * v12, v26), sub_18AFC0(&unk_340DA0), swift_dynamicCast()))
    {
      v14 = v25;
    }

    else
    {
      v14 = &_swiftEmptyDictionarySingleton;
    }

    v25 = v14;
    v26[0] = v27;
    sub_18AFC0(&qword_341138);
    sub_1B2998(&unk_341140, &qword_341138);
    v20 = sub_1EEE94();
    v22 = v21;

    sub_1BA890(a1, v20, v22, &v25);

    v23 = v25;
    v26[3] = sub_18AFC0(&unk_340DA0);
    v26[0] = v23;
    v18 = v9;
    v19 = v10;
    return sub_1AF420(v26, v18, v19);
  }

  if (v6 == 1)
  {
    v15 = sub_1BAB84(0);
    v17 = v16;

    sub_18E2AC(a1, v26);
    v18 = v15;
    v19 = v17;
    return sub_1AF420(v26, v18, v19);
  }
}

uint64_t sub_1BAB84(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1BD1D4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1BAC14()
{
  ObjectType = swift_getObjectType();
  v1 = [objc_opt_self() defaultCenter];
  if (qword_33F920 != -1)
  {
    swift_once();
  }

  sub_1EF224();

  *(swift_allocObject() + 16) = ObjectType;
  sub_1EF214();
  sub_18AFC0(&unk_340DA0);
  sub_1BD9D8(&qword_340070, &type metadata accessor for NSNotificationCenter.Notifications);
  return sub_1EF694();
}

void sub_1BAE00(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(*a1 + 16))
  {
    v3.super.isa = sub_1EEFC4().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  v4 = sub_1EEED4();
  [v2 setObject:v3.super.isa forKey:v4];
  swift_unknownObjectRelease();
}

void NSUserDefaults.rcDataContainerWatchedKeyPaths.setter(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2.super.isa = sub_1EEFC4().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = sub_1EEED4();
  [v1 setObject:v2.super.isa forKey:v3];
  swift_unknownObjectRelease();
}

void *sub_1BAF4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_1AE058(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_18E2AC(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_1AE058((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t (*NSUserDefaults.rcDataContainerWatchedKeyPaths.modify(void *a1))(void *a1, char a2)
{
  a1[1] = v1;
  *a1 = NSUserDefaults.rcDataContainerWatchedKeyPaths.getter();
  return sub_1BB0A8;
}

uint64_t sub_1BB0A8(void *a1, char a2)
{
  v3 = *(*a1 + 16);
  if (a2)
  {
    if (v3)
    {

      v4.super.isa = sub_1EEFC4().super.isa;
    }

    else
    {
      v4.super.isa = 0;
    }

    v6 = a1[1];
    v7 = sub_1EEED4();
    [v6 setObject:v4.super.isa forKey:v7];
  }

  else
  {
    if (v3)
    {
      v5.super.isa = sub_1EEFC4().super.isa;
    }

    else
    {
      v5.super.isa = 0;
    }

    v8 = a1[1];

    v7 = sub_1EEED4();
    [v8 setObject:v5.super.isa forKey:v7];
  }

  return swift_unknownObjectRelease();
}

Class sub_1BB1CC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    v4.super.isa = sub_1EEE44().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_1BB268(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18E3B8;

  return sub_1B9A7C(a1, a2);
}

uint64_t sub_1BB318(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = sub_1EE624();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1EDEF4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_18AFC0(&qword_3411D8);
  v47 = a2;
  result = sub_1EF654();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_1BD9D8(&qword_3411E0, &type metadata accessor for Date);
      result = sub_1EEE84();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1BB7C0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for Achievement();
  v35 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_18AFC0(&qword_340B90);
  v36 = a2;
  result = sub_1EF654();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
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
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        sub_1B29E0(v24, v37);
      }

      else
      {
        sub_1BDB50(v24, v37);
      }

      sub_1EF784();
      sub_1EF794(v22);
      result = sub_1EF7B4();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      result = sub_1B29E0(v37, *(v9 + 56) + v23 * v17);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}