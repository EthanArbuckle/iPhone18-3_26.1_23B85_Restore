void sub_10020F7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1004D7F3C();
  v8 = sub_1004D7F3C();
  Category = MPCRadioPlaybackErrorGetCategory();

  switch(Category)
  {
    case 3:
      v10 = (a4 + 16);
      break;
    case 2:
      v10 = (a3 + 16);
      break;
    case 1:
      v10 = (a2 + 16);
      break;
    default:
      return;
  }

  swift_beginAccess();
  *v10 = 1;
}

uint64_t sub_10020F850(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100215F34;
  *(v13 + 24) = v12;
  v16[4] = sub_10001E39C;
  v16[5] = v13;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100141C08;
  v16[3] = &unk_1005E5578;
  v14 = _Block_copy(v16);

  [a1 setRadioIdentifiersWithBlock:v14];
  _Block_release(v14);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_10020F9D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v9 = sub_1004DD3FC();
  }

  else
  {
    v9 = 0;
  }

  [a1 setStationStringID:v9];

  [a1 setStationID:a4];
  if (a6)
  {
    v10 = sub_1004DD3FC();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  [a1 setStationHash:?];
}

void sub_10020FAA4(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  v4 = [a2 stationName];
  [v3 setName:v4];
}

void sub_10020FB3C(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = sub_1004D82AC();
  v4 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 actions];
  sub_100006F10(0, &unk_100639F58);
  v7 = sub_1004DD87C();

  if (v7 >> 62)
  {
    v8 = sub_1004DED5C();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_21:

    v10 = _swiftEmptyArrayStorage;
    goto LABEL_22;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  v40 = v2;
  v41 = a1;
  v9 = 0;
  v42 = (v4 + 8);
  v43 = v7 & 0xC000000000000001;
  v10 = _swiftEmptyArrayStorage;
  v44 = v8;
  v45 = v7;
  do
  {
    if (v43)
    {
      v11 = sub_1004DEB2C();
    }

    else
    {
      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    v13 = [v11 handler];
    if (v13)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      v13 = sub_1002160A4;
    }

    else
    {
      v14 = 0;
    }

    v15 = [v12 title];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1004DD43C();
      v48 = v18;
      v49 = v17;
    }

    else
    {
      v48 = 0xE000000000000000;
      v49 = 0;
    }

    v19 = swift_allocObject();
    v19[2] = v13;
    v19[3] = v14;
    v19[4] = v12;
    sub_10000DE64(v13);
    v20 = v12;
    v21 = v46;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v22 = sub_1004D827C();
    v24 = v23;
    (*v42)(v21, v47);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10003A840(0, *(v10 + 2) + 1, 1, v10);
    }

    v26 = *(v10 + 2);
    v25 = *(v10 + 3);
    if (v26 >= v25 >> 1)
    {
      v10 = sub_10003A840((v25 > 1), v26 + 1, 1, v10);
    }

    ++v9;

    sub_10000DE74(v13);
    *(v10 + 2) = v26 + 1;
    v27 = &v10[56 * v26];
    *(v27 + 4) = v22;
    *(v27 + 5) = v24;
    v28 = v48;
    *(v27 + 6) = v49;
    *(v27 + 7) = v28;
    v27[64] = 2;
    *(v27 + 9) = &unk_1005207C8;
    *(v27 + 10) = v19;
    v7 = v45;
  }

  while (v44 != v9);

  v2 = v40;
  a1 = v41;
LABEL_22:
  v29 = [v2 title];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1004DD43C();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  v34 = [v2 message];
  if (v34)
  {
    v35 = v34;
    v36 = sub_1004DD43C();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  *a1 = v31;
  *(a1 + 8) = v33;
  *(a1 + 16) = v36;
  *(a1 + 24) = v38;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = v10;
  *(a1 + 64) = 0;
}

void sub_10020FF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_errorRetain();
  sub_100004CB8(&qword_100638980);
  type metadata accessor for MPCError(0);
  if (swift_dynamicCast())
  {
    sub_100215A70(&qword_100634CE0, type metadata accessor for MPCError);
    sub_1004D7EFC();

    switch(v7)
    {
      case 10:
        swift_beginAccess();
        *(a4 + 16) = 1;
        break;
      case 11:
        swift_beginAccess();
        *(a3 + 16) = 1;
        break;
      case 17:
        swift_beginAccess();
        *(a2 + 16) = 1;
        break;
    }
  }
}

uint64_t sub_100210078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[22] = a2;
  sub_100004CB8(&qword_100635240);
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_100210118, 0, 0);
}

uint64_t sub_100210118()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = sub_1004DDA8C();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  *(v0 + 112) = *v3;
  *(v0 + 128) = v3[1];
  v5 = *(v3 + 5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  *(v6 + 80) = *(v3 + 6);
  *(v6 + 48) = v8;
  *(v6 + 64) = v9;
  *(v6 + 32) = v7;
  v10 = *(v2 + 64);
  v11 = *(v2 + 48);
  v12 = *(v2 + 16);
  *(v6 + 120) = *(v2 + 32);
  *(v6 + 136) = v11;
  *(v6 + 152) = v10;
  *(v6 + 104) = v12;
  *(v6 + 88) = *v2;
  sub_100036140(v0 + 112, v0 + 144);
  sub_100036140(v0 + 128, v0 + 160);
  sub_10000DE64(v5);
  sub_1000108DC(v2, v0 + 16, &qword_1006368B0);
  sub_10011F560(0, 0, v1, &unk_1005207D8, v6);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented] = 0;
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1002102E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a4 + 40);
  if (v6)
  {
    v12 = (v6 + *v6);
    v9 = swift_task_alloc();
    *(v5 + 16) = v9;
    *v9 = v5;
    v9[1] = sub_100035B28;

    return v12(a4, a5);
  }

  else
  {
    v11 = *(v5 + 8);

    return v11();
  }
}

uint64_t PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100006F10(0, &qword_1006372C0);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v5;
  v10[4] = a2;
  v10[5] = a4;
  v10[6] = a5;
  v11 = v5;
  v12 = a2;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100215034, v10);
}

id sub_1002105D4(uint64_t a1, void *a2, void (*a3)(void, void), void (*a4)(void, void), uint64_t a5)
{
  v123 = a2;
  v9 = sub_1004D82AC();
  v10 = *(v9 - 8);
  v118 = v9;
  v119 = v10;
  __chkstk_darwin(v9);
  v117 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004D83FC();
  __chkstk_darwin(v12 - 8);
  v116 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1004DD3EC();
  v14 = *(v122 - 8);
  v15 = __chkstk_darwin(v122);
  v17 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v101 - v18;
  if (qword_100633DA0 != -1)
  {
    swift_once();
  }

  v20 = sub_1004D966C();
  sub_100035430(v20, static Logger.playbackController);
  v21 = sub_1004D964C();
  v22 = sub_1004DDF7C();
  v23 = os_log_type_enabled(v21, v22);
  v121 = a3;
  v115 = v17;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v120 = v14;
    v25 = v24;
    v114 = swift_slowAlloc();
    *&v138[0] = v114;
    *v25 = 136446210;
    v26 = a1;
    *&v130 = a1;
    type metadata accessor for MPCExplicitContentAuthorizationReason(0);
    v27 = sub_1004DD4DC();
    v29 = v19;
    v30 = sub_1000343A8(v27, v28, v138);
    v31 = a5;
    v32 = a4;

    *(v25 + 4) = v30;
    v19 = v29;
    a3 = v121;
    _os_log_impl(&_mh_execute_header, v21, v22, "requiresAuthorizationToPlay with reason=%{public}s", v25, 0xCu);
    sub_100008D24(v114);

    v14 = v120;

    if (v26 != 2)
    {
      goto LABEL_5;
    }
  }

  else
  {

    v40 = a1;
    v31 = a5;
    v32 = a4;
    if (v40 != 2)
    {
LABEL_5:
      if (qword_100633B60 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004D9B6C();

      v140 = v134;
      v141 = v135;
      v142 = v136;
      v143 = v137;
      v138[0] = v130;
      v138[1] = v131;
      v138[2] = v132;
      v139 = v133;
      v33 = v134;
      if (!v134 || (v34 = v141) == 0)
      {
        v120 = v31;
        v121 = v32;
        sub_1004DD37C();
        v47 = v115;
        v114 = *(v14 + 16);
        v114(v115, v19, v122);
        if (qword_100633A80 != -1)
        {
          swift_once();
        }

        v48 = qword_100671958;
        sub_1004D838C();
        v49 = v48;
        v50 = sub_1004DD4AC();
        v112 = v51;
        v113 = v50;
        v52 = *(v14 + 8);
        v53 = v122;
        v52(v19, v122);
        v54 = v117;
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v55 = sub_1004D827C();
        v110 = v56;
        v111 = v55;
        (*(v119 + 8))(v54, v118);
        sub_1004DD37C();
        v114(v47, v19, v53);
        sub_1004D838C();
        v57 = sub_1004DD4AC();
        v59 = v58;
        v52(v19, v53);
        sub_100004CB8(&qword_100634F40);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_100511DA0;
        v61 = v110;
        *(v60 + 32) = v111;
        *(v60 + 40) = v61;
        v62 = v112;
        *(v60 + 48) = v113;
        *(v60 + 56) = v62;
        *(v60 + 64) = 2;
        *(v60 + 72) = 0;
        *(v60 + 80) = 0;
        v125 = 0uLL;
        *&v126 = v57;
        *(&v126 + 1) = v59;
        LOBYTE(v127) = 0;
        *(&v127 + 1) = 0;
        LOBYTE(v128) = 1;
        *(&v128 + 1) = v60;
        v129 = 0;
        v63 = *(v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
        v64 = *(v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
        sub_100008C70((v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v63);
        v132 = v127;
        v133 = v128;
        *&v134 = v129;
        v130 = v125;
        v131 = v126;
        BYTE8(v134) = 0;
        v65 = *(v64 + 8);

        sub_1000E9AD4(&v125, v124);
        v65(&v130, v63, v64);
        sub_100215694(&v130);
        v121(0, 0);
        sub_100074384(&v125);

        return sub_100073E60(v138);
      }

      v109 = *(&v140 + 1);
      v110 = *(&v139 + 1);
      v35 = objc_opt_self();

      v111 = v34;

      v36 = [v35 standardUserDefaults];
      *&v125 = 0xD000000000000012;
      *(&v125 + 1) = 0x80000001004F1010;
      sub_100030C58();
      NSUserDefaults.subscript.getter(&v125, &v130);

      v112 = v33;
      if (*(&v131 + 1))
      {
        sub_100004CB8(&unk_1006372E0);
        v37 = swift_dynamicCast();
        v38 = v121;
        if (v37)
        {
          v39 = v125;
LABEL_24:
          v66 = [v38 cloudUniversalLibraryID];
          if (!v66)
          {

LABEL_29:
            sub_1004DD37C();
            v72 = v115;
            v105 = *(v14 + 16);
            v106 = v14 + 16;
            v105(v115, v19, v122);
            if (qword_100633A80 != -1)
            {
              swift_once();
            }

            v73 = qword_100671958;
            v74 = qword_100671958;
            v103 = v73;
            v75 = v74;
            sub_1004D838C();
            v76 = v75;
            v108 = sub_1004DD4AC();
            v114 = v77;
            v78 = *(v14 + 8);
            v120 = v14 + 8;
            v102 = v78;
            v79 = v122;
            v78(v19, v122);
            v80 = swift_allocObject();
            v107 = v80;
            v80[2] = v38;
            v80[3] = v32;
            v80[4] = v31;
            v81 = v38;

            v82 = v117;
            _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
            v104 = sub_1004D827C();
            v113 = v83;
            v121 = v32;
            v84 = v118;
            v85 = v19;
            v86 = *(v119 + 8);
            v86(v82, v118);
            sub_1004DD37C();
            v105(v72, v85, v79);
            sub_1004D838C();
            v119 = sub_1004DD4AC();
            v116 = v87;
            v102(v85, v79);
            v88 = v84;
            v89 = swift_allocObject();
            *(v89 + 16) = v121;
            *(v89 + 24) = v31;

            _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
            v90 = sub_1004D827C();
            v92 = v91;
            v122 = v91;
            v86(v82, v88);
            sub_100004CB8(&qword_100634F40);
            v93 = swift_allocObject();
            *(v93 + 16) = xmmword_1005126C0;
            v95 = v113;
            v94 = v114;
            *(v93 + 32) = v104;
            *(v93 + 40) = v95;
            v96 = v107;
            *(v93 + 48) = v108;
            *(v93 + 56) = v94;
            *(v93 + 64) = 2;
            *(v93 + 72) = &unk_100520748;
            *(v93 + 80) = v96;
            *(v93 + 88) = v90;
            *(v93 + 96) = v92;
            v97 = v116;
            *(v93 + 104) = v119;
            *(v93 + 112) = v97;
            *(v93 + 120) = 0;
            *(v93 + 128) = &unk_100520758;
            *(v93 + 136) = v89;
            LOBYTE(v130) = 1;
            *&v125 = v110;
            *(&v125 + 1) = v112;
            *&v126 = v109;
            *(&v126 + 1) = v111;
            LOBYTE(v127) = 0;
            *(&v127 + 1) = 0;
            LOBYTE(v128) = 1;
            *(&v128 + 1) = v93;
            v129 = 0;
            v98 = *(v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
            v99 = *(v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
            v123 = sub_100008C70((v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v98);
            v132 = v127;
            v133 = v128;
            *&v134 = v129;
            v130 = v125;
            v131 = v126;
            BYTE8(v134) = 0;
            v100 = *(v99 + 8);

            sub_1000E9AD4(&v125, v124);
            v100(&v130, v98, v99);
            sub_100073E60(v138);
            sub_100074384(&v125);

            return sub_100215694(&v130);
          }

          v120 = v14;

          result = [v38 cloudUniversalLibraryID];
          if (result)
          {
            v67 = result;
            v68 = sub_1004DD43C();
            v70 = v69;

            *&v130 = v68;
            *(&v130 + 1) = v70;
            __chkstk_darwin(v71);
            *(&v101 - 2) = &v130;
            LOBYTE(v67) = sub_100101CB8(sub_100215938, (&v101 - 4), v39);

            v14 = v120;
            v38 = v121;
            if (v67)
            {

              v32(1, 0);
              return sub_100073E60(v138);
            }

            goto LABEL_29;
          }

LABEL_33:
          __break(1u);
          return result;
        }
      }

      else
      {
        sub_10001074C(&v130, &qword_100638E60);
        v38 = v121;
      }

      v39 = _swiftEmptyArrayStorage;
      goto LABEL_24;
    }
  }

  result = [a3 modelGenericObject];
  if (!result)
  {
    __break(1u);
    goto LABEL_33;
  }

  v42 = result;
  v43 = [result flattenedGenericObject];

  if (v43)
  {
    v44 = MPModelObject.bestIdentifier(for:)(2, 1u);
    v46 = v45;
  }

  else
  {
    v44 = 0;
    v46 = 0;
  }

  sub_1002117B8(v44, v46, v32, v31);
}

uint64_t sub_1002112D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  return _swift_task_switch(sub_1002112F4, 0, 0);
}

uint64_t sub_1002112F4()
{
  v19 = v0;
  v1 = [*(v0 + 64) cloudUniversalLibraryID];
  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = v1;
  v3 = sub_1004DD43C();
  v5 = v4;

  v6 = objc_opt_self();
  v7 = [v6 standardUserDefaults];
  *(v0 + 48) = 0xD000000000000012;
  *(v0 + 56) = 0x80000001004F1010;
  sub_100030C58();
  NSUserDefaults.subscript.getter(v0 + 48, (v0 + 16));

  if (*(v0 + 40))
  {
    sub_100004CB8(&unk_1006372E0);
    if (swift_dynamicCast())
    {
      v8 = *(v0 + 48);
      v9 = *(v8 + 2);
      if (v9 > 0x3E7)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v8;
        if (!isUniquelyReferenced_nonNull_native || *(v8 + 3) <= 0x7CDuLL)
        {
          v8 = sub_10003A134(isUniquelyReferenced_nonNull_native, v9, 1, v8);
          v17 = v8;
        }

        sub_100154E74(0, v9 - 999, 0);
      }

      goto LABEL_11;
    }
  }

  else
  {
    sub_10001074C(v0 + 16, &qword_100638E60);
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_11:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_10003A134(0, *(v8 + 2) + 1, 1, v8);
  }

  v12 = *(v8 + 2);
  v11 = *(v8 + 3);
  if (v12 >= v11 >> 1)
  {
    v8 = sub_10003A134((v11 > 1), v12 + 1, 1, v8);
  }

  *(v8 + 2) = v12 + 1;
  v13 = &v8[16 * v12];
  *(v13 + 4) = v3;
  *(v13 + 5) = v5;
  v14 = [v6 standardUserDefaults];
  v18[3] = sub_100004CB8(&unk_1006372E0);
  v18[0] = v8;
  *(v0 + 16) = 0xD000000000000012;
  *(v0 + 24) = 0x80000001004F1010;
  NSUserDefaults.subscript.setter(v18, v0 + 16, &type metadata for String);

LABEL_16:
  (*(v0 + 72))(1, 0);
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100211598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1002115B8, 0, 0);
}

uint64_t sub_1002115B8()
{
  (*(v0 + 16))(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

void sub_100211748(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1004D7F3C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_1002117B8(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v71 = a4;
  v74 = a3;
  v8 = sub_100004CB8(&qword_100634B30);
  __chkstk_darwin(v8 - 8);
  v70 = &v65 - v9;
  v73 = sub_1004D809C();
  v10 = *(v73 - 8);
  v11 = __chkstk_darwin(v73);
  v68 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v65 - v13;
  if (qword_100633DA0 != -1)
  {
    swift_once();
  }

  v72 = sub_1004D966C();
  sub_100035430(v72, static Logger.playbackController);

  v15 = sub_1004D964C();
  v16 = sub_1004DDF9C();

  v17 = os_log_type_enabled(v15, v16);
  v69 = a1;
  if (v17)
  {
    v18 = a2;
    v19 = v14;
    v20 = v10;
    v21 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *&v75[0] = v67;
    *v21 = 136446210;
    v22 = v5;
    v23 = v21;
    *&v80[0] = a1;
    *(&v80[0] + 1) = v18;

    sub_100004CB8(&unk_100639EB0);
    v24 = sub_1004DD4DC();
    v26 = sub_1000343A8(v24, v25, v75);
    v10 = v20;
    v14 = v19;
    a2 = v18;

    v27 = v23;
    *(v23 + 1) = v26;
    v28 = v73;
    v5 = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Presenting Age Verification with model identifier=%{public}s", v27, 0xCu);
    sub_100008D24(v67);
  }

  else
  {

    v28 = v73;
  }

  if (qword_100633B60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v80[4] = v76;
  v80[5] = v77;
  v80[6] = v78;
  v80[7] = v79;
  v80[0] = v75[0];
  v80[1] = v75[1];
  v80[2] = v75[2];
  v80[3] = v75[3];
  sub_100073E60(v80);
  if (BYTE1(v80[0]) != 1)
  {
    v34 = *(v5 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v35 = *(v5 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
    sub_100008C70((v5 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v34);
    v36 = sub_1001393C8(v75);
    BYTE8(v76) = 0;
    (*(v35 + 8))(v75, v34, v35, v36);
    sub_100215694(v75);
    if (qword_100633DA8 != -1)
    {
      swift_once();
    }

    sub_100035430(v72, qword_100639D50);
    v30 = sub_1004D964C();
    v31 = sub_1004DDF7C();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_21;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Device is offline. Age Verification cannot proceed. Displaying fallback alert instead.";
    goto LABEL_20;
  }

  if (qword_100634468 != -1)
  {
    swift_once();
  }

  v29 = v70;
  ExplicitRestrictionsController.accountVerificationURL.getter(v70);
  if ((*(v10 + 48))(v29, 1, v28) == 1)
  {
    sub_10001074C(v29, &qword_100634B30);
    if (qword_100633DA8 != -1)
    {
      swift_once();
    }

    sub_100035430(v72, qword_100639D50);
    v30 = sub_1004D964C();
    v31 = sub_1004DDF7C();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_21;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "accountVerificationURL is missing. Age Verification cannot proceed.";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v30, v31, v33, v32, 2u);

LABEL_21:

    if (v74)
    {
      v74(0, 0);
    }

    return;
  }

  v37 = *(v10 + 32);
  v37(v14, v29, v28);
  v38 = qword_100633DA8;
  v66 = v5;
  if (a2)
  {
    v70 = v14;

    if (v38 != -1)
    {
      swift_once();
    }

    sub_100035430(v72, qword_100639D50);
    v39 = sub_1004D964C();
    v40 = sub_1004DDF5C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "modelObjectIdentifier parameters found for age verification context", v41, 2u);
    }

    sub_100004CB8(&unk_100639EA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100511DA0;
    *(inited + 32) = 0x64496D616461;
    v43 = inited + 32;
    v44 = v69;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = v44;
    *(inited + 56) = a2;
    v45 = sub_10005E51C(inited);
    swift_setDeallocating();
    sub_10001074C(v43, &qword_100636BF0);
    v46 = v68;
    v14 = v70;
    URL.parametrize(_:)(v45, v68);

    (*(v10 + 8))(v14, v28);
    v37(v14, v46, v28);
    v47 = v10;
  }

  else
  {
    if (qword_100633DA8 != -1)
    {
      swift_once();
    }

    sub_100035430(v72, qword_100639D50);
    v48 = sub_1004D964C();
    v49 = sub_1004DDF7C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "modelObjectIdentifier parameters missing for age verification context", v50, 2u);
    }

    v47 = v10;
  }

  v51 = [objc_allocWithZone(_s22AgeVerificationWrapperCMa()) init];
  v52 = swift_allocObject();
  v53 = v66;
  swift_unknownObjectWeakInit();
  v54 = swift_allocObject();
  v55 = v74;
  v56 = v71;
  *(v54 + 2) = v74;
  *(v54 + 3) = v56;
  *(v54 + 4) = v52;
  v57 = &v51[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  v58 = *&v51[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  *v57 = sub_100215744;
  v57[1] = v54;
  sub_10000DE64(v55);

  sub_10000DE74(v58);

  v59 = *(v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper);
  *(v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper) = v51;
  v60 = v51;

  v61 = *(v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v62 = *(v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  sub_100008C70((v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v61);
  v63 = *(v62 + 16);
  v64 = v60;
  v63(v14, v64, v61, v62);

  (*(v47 + 8))(v14, v73);
}

void sub_100212124(void *a1, char a2, void (*a3)(void, void))
{
  if (a3)
  {
    a3(a2 & 1, 0);
  }

  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper);
      v6 = Strong;
      v7 = v5;

      if (v5)
      {

        if (v5 == a1)
        {
          swift_beginAccess();
          v8 = swift_unknownObjectWeakLoadStrong();
          if (v8)
          {
            v9 = *&v8[OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper];
            *&v8[OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper] = 0;
          }
        }
      }
    }
  }
}

uint64_t PlaybackController.displayAgeVerification(modelObject:completion:)(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  if (a1)
  {
    a1 = MPModelObject.bestIdentifier(for:)(2, 1u);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  sub_1002117B8(a1, v6, a2, a3);
}

uint64_t PlaybackController.displayAgeVerification(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_1004DDA4C();
  v2[5] = sub_1004DDA3C();
  v4 = sub_1004DD9BC();
  v2[6] = v4;
  v2[7] = v3;

  return _swift_task_switch(sub_100212314, v4, v3);
}

uint64_t sub_100212314()
{
  v5 = v0[1];
  v1 = sub_1004DDA3C();
  v0[4].i64[0] = v1;
  v2 = swift_task_alloc();
  v0[4].i64[1] = v2;
  v2[1] = vextq_s8(v5, v5, 8uLL);
  v3 = swift_task_alloc();
  v0[5].i64[0] = v3;
  *v3 = v0;
  v3[1] = sub_100212428;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v1, &protocol witness table for MainActor, 0xD00000000000001CLL, 0x80000001004F0E50, sub_100215038, v2, &type metadata for () + 8);
}

uint64_t sub_100212428()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1002125B0;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_10021254C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10021254C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002125B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100212628(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_100004CB8(&unk_100639E90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_100008C70(a3, a3[3]);
  v9 = sub_1004DC24C();
  v11 = v10;
  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v8, v5);
  sub_1002117B8(v9, v11, sub_100215600, v13);
}

uint64_t sub_1002127B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100004CB8(&unk_100639E90);
    return sub_1004DD9CC();
  }

  else
  {
    sub_100004CB8(&unk_100639E90);
    return sub_1004DD9DC();
  }
}

id sub_100212918()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  if (v2)
  {

    v2(0, 0);
    sub_10000DE74(v2);
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100212A50(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100006F10(0, &qword_1006372C0);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  v9 = a4;
  v10 = a1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100215478, v8);
}

uint64_t sub_100212B0C(uint64_t result)
{
  v1 = (result + OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion);
  v2 = *(result + OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion);
  if (v2)
  {
    v3 = result;
    v4 = v1[1];
    *v1 = 0;
    v1[1] = 0;
    v5 = [objc_opt_self() defaultManager];
    v6 = swift_allocObject();
    v6[2] = v2;
    v6[3] = v4;
    v6[4] = v3;
    v9[4] = sub_10021540C;
    v9[5] = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_100018634;
    v9[3] = &unk_1005E51E0;
    v7 = _Block_copy(v9);
    sub_10000DE64(v2);
    v8 = v3;

    [v5 getAgeVerificationStateWithCompletion:v7];
    _Block_release(v7);

    return sub_10000DE74(v2);
  }

  return result;
}

uint64_t sub_100212D48()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, static Logger.playbackController);
  sub_100035430(v0, static Logger.playbackController);
  return sub_1004D965C();
}

uint64_t sub_100212E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  return _swift_task_switch(sub_100212E88, 0, 0);
}

uint64_t sub_100212E88()
{
  v1 = v0[2];
  if (v1)
  {
    v1(v0[4]);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_100212EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a3;
  v6[3] = a4;
  sub_100004CB8(&qword_100635240);
  v6[6] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30);
  v6[7] = swift_task_alloc();
  v7 = sub_1004D809C();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v6[10] = *(v8 + 64);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_10021303C, 0, 0);
}

uint64_t sub_10021303C()
{
  v1 = [*(v0 + 16) action];
  v2 = [v1 type];

  if (v2 != 2 || (v3 = [*(v0 + 16) action], v4 = objc_msgSend(v3, "URLString"), v3, !v4))
  {
LABEL_5:
    v8 = *(v0 + 48);
    v9 = *(v0 + 16);
    v10 = [objc_allocWithZone(ICStoreDialogResponseHandler) init];
    v11 = [objc_opt_self() activeAccount];
    v12 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v11];

    v13 = sub_1004DDA8C();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v10;
    v14[5] = v9;
    v14[6] = v12;
    v15 = v9;
    sub_10011FB58(0, 0, v8, &unk_100520790, v14);

    v16 = *(v0 + 24);
    if (!v16)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);
  sub_1004DD43C();

  sub_1004D805C();

  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_10001074C(*(v0 + 56), &qword_100634B30);
    goto LABEL_5;
  }

  v20 = *(v0 + 88);
  v19 = *(v0 + 96);
  v21 = *(v0 + 72);
  v22 = *(v0 + 64);
  v23 = *(v0 + 48);
  v24 = *(v21 + 32);
  v24(v19, *(v0 + 56), v22);
  v25 = sub_1004DDA8C();
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  (*(v21 + 16))(v20, v19, v22);
  v26 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v24(v27 + v26, v20, v22);
  sub_10011F860(0, 0, v23, &unk_1005207A0, v27);

  (*(v21 + 8))(v19, v22);
  v16 = *(v0 + 24);
  if (v16)
  {
LABEL_6:
    v16(*(v0 + 40));
  }

LABEL_7:

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1002133E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 144) = a1;
  *(v4 + 152) = a4;
  return _swift_task_switch(sub_100213408, 0, 0);
}

uint64_t sub_100213408()
{
  *(v0 + 160) = objc_opt_self();
  sub_1004DDA4C();
  *(v0 + 168) = sub_1004DDA3C();
  v2 = sub_1004DD9BC();

  return _swift_task_switch(sub_1002134AC, v2, v1);
}

uint64_t sub_1002134AC()
{
  v1 = *(v0 + 160);

  *(v0 + 176) = [v1 sharedApplication];

  return _swift_task_switch(sub_100213530, 0, 0);
}

uint64_t sub_100213530@<X0>(NSURL *a1@<X8>)
{
  v2 = v1[22];
  sub_1004D7FDC(a1);
  v4 = v3;
  v1[23] = v3;
  sub_10005F120(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_100215A70(&qword_100634D20, type metadata accessor for OpenExternalURLOptionsKey);
  isa = sub_1004DD1FC().super.isa;
  v1[24] = isa;

  v1[2] = v1;
  v1[7] = v1 + 25;
  v1[3] = sub_1002136F0;
  v6 = swift_continuation_init();
  v1[17] = sub_100004CB8(&qword_100639EE8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100213848;
  v1[13] = &unk_1005E54D8;
  v1[14] = v6;
  [v2 openURL:v4 options:isa completionHandler:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_1002136F0()
{

  return _swift_task_switch(sub_1002137D0, 0, 0);
}

uint64_t sub_1002137D0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  **(v0 + 144) = *(v0 + 200);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100213848(uint64_t a1, char a2)
{
  **(*(*sub_100008C70((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

uint64_t sub_1002138A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[18] = a1;
  v6[19] = a4;
  return _swift_task_switch(sub_1002138C8, 0, 0);
}

uint64_t sub_1002138C8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = [*(v0 + 160) action];
  *(v0 + 176) = v3;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 192;
  *(v0 + 24) = sub_100213A14;
  v4 = swift_continuation_init();
  *(v0 + 136) = sub_100004CB8(&qword_100639EF0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100213C14;
  *(v0 + 104) = &unk_1005E5500;
  *(v0 + 112) = v4;
  [v2 handleButtonAction:v3 usingRequestContext:v1 withCompletionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100213A14()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_100213B90;
  }

  else
  {
    v2 = sub_100213B24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100213B24()
{
  v1 = *(v0 + 192);

  **(v0 + 144) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100213B90()
{
  v1 = *(v0 + 176);
  swift_willThrow();

  **(v0 + 144) = 2;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100213C14(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_100008C70((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100004CB8(&qword_100638980);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_100213CE0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  *a1 = v3;
  return result;
}

void sub_100213D60(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_1004D9B6C();

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  sub_1004D9B7C();
  sub_10021FE58(v4);
}

unint64_t sub_100213E54()
{
  result = qword_100639D80;
  if (!qword_100639D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100639D80);
  }

  return result;
}

unint64_t sub_100213EA8()
{
  result = qword_100639D88;
  if (!qword_100639D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100639D88);
  }

  return result;
}

uint64_t sub_100213EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100213F40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100213FA8(id a1, char a2)
{
  if (a2 == 2)
  {
LABEL_4:
    sub_100213FCC(a1);
    return;
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    goto LABEL_4;
  }
}

void sub_100213FCC(id a1)
{
  if (a1 >= 5)
  {
  }
}

id sub_100213FDC(id result, char a2)
{
  if (a2 == 2)
  {
    return sub_100214000(result);
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return result;
    }

    return sub_100214000(result);
  }
}

id sub_100214000(id result)
{
  if (result >= 5)
  {
    return result;
  }

  return result;
}

BOOL sub_100214010(void *a1, uint64_t a2)
{
  v7[3] = &type metadata for Player.ReplaceCommand;
  v7[4] = &protocol witness table for Player.ReplaceCommand;
  v7[0] = a1;
  v7[1] = a2;
  sub_100008C70(v7, &type metadata for Player.ReplaceCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1;
  sub_1004D9B6C();

  if (v6)
  {
    v4 = MPCPlayerResponse.canPerform(_:)(v7);
  }

  else
  {
    v4 = 0;
  }

  sub_100008D24(v7);
  return v4;
}

BOOL sub_10021412C(char a1)
{
  v4[3] = &type metadata for Player.PlaybackCommand;
  v4[4] = &protocol witness table for Player.PlaybackCommand;
  LOBYTE(v4[0]) = a1;
  sub_100008C70(v4, &type metadata for Player.PlaybackCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  if (v3)
  {
    v1 = MPCPlayerResponse.canPerform(_:)(v4);
  }

  else
  {
    v1 = 0;
  }

  sub_100008D24(v4);
  return v1;
}

BOOL sub_100214240(void *a1, void *a2)
{
  v8[3] = &type metadata for Player.InsertCommand;
  v8[4] = &protocol witness table for Player.InsertCommand;
  v8[0] = a1;
  v8[1] = a2;
  sub_100008C70(v8, &type metadata for Player.InsertCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  sub_10006CEB0(a2);
  sub_1004D9B6C();

  if (v7)
  {
    v5 = MPCPlayerResponse.canPerform(_:)(v8);
  }

  else
  {
    v5 = 0;
  }

  sub_100008D24(v8);
  return v5;
}

BOOL sub_100214370(void *a1)
{
  v5[3] = &type metadata for Player.ChangeCommand;
  v5[4] = &protocol witness table for Player.ChangeCommand;
  v5[0] = a1;
  sub_100008C70(v5, &type metadata for Player.ChangeCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100216AD8(a1);
  sub_1004D9B6C();

  if (v4)
  {
    v2 = MPCPlayerResponse.canPerform(_:)(v5);
  }

  else
  {
    v2 = 0;
  }

  sub_100008D24(v5);
  return v2;
}

BOOL sub_100214490(uint64_t a1)
{
  v4[3] = &type metadata for Player.VocalsCommand;
  v4[4] = &protocol witness table for Player.VocalsCommand;
  LODWORD(v4[0]) = a1;
  BYTE4(v4[0]) = BYTE4(a1);
  BYTE5(v4[0]) = BYTE5(a1) & 1;
  sub_100008C70(v4, &type metadata for Player.VocalsCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  if (v3)
  {
    v1 = MPCPlayerResponse.canPerform(_:)(v4);
  }

  else
  {
    v1 = 0;
  }

  sub_100008D24(v4);
  return v1;
}

uint64_t sub_1002145B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100214614(void *a1)
{
  v2 = v1;
  if (qword_100633E90 != -1)
  {
    swift_once();
  }

  v4 = sub_1004D966C();
  sub_100035430(v4, static Logger.sharedListening);
  v5 = a1;
  v6 = sub_1004D964C();
  v7 = sub_1004DDF9C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v27[0] = v9;
    *v8 = 136446210;
    v10 = v5;
    v11 = [v10 description];
    v12 = sub_1004DD43C();
    v14 = v13;

    v15 = sub_1000343A8(v12, v14, v27);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Received MPCSharedListeningEvent=%{public}s", v8, 0xCu);
    sub_100008D24(v9);
  }

  v16 = v5;
  sub_100296DE4(v16, v25);
  if (v26 != 255)
  {
    v27[0] = v25[0];
    v27[1] = v25[1];
    v27[2] = v25[2];
    v28 = v26;
    v17 = (v2 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
    v18 = *(v2 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v19 = v17[4];
    sub_100008C70(v17, v18);
    (*(v19 + 40))(v18, v19);
    v20 = [v16 participant];
    v21 = [v20 externalIdentifier];

    v22 = sub_1004DD43C();
    v24 = v23;

    GroupActivitiesManager.postEvent(_:participantID:)(v27, v22, v24);

    sub_10001074C(v25, &unk_100639F80);
  }
}

uint64_t sub_1002148A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100004CB8(&qword_100635240);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  if (qword_100633E90 != -1)
  {
    swift_once();
  }

  v7 = sub_1004D966C();
  sub_100035430(v7, static Logger.sharedListening);
  swift_errorRetain();
  v8 = sub_1004D964C();
  v9 = sub_1004DDF9C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = a1;
    v23 = v11;
    *v10 = 136446210;
    swift_errorRetain();
    sub_100004CB8(&qword_10063AD60);
    v12 = sub_1004DD4DC();
    v14 = sub_1000343A8(v12, v13, &v23);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Receiving didEndSharedListeningSessionWithError=%{public}s", v10, 0xCu);
    sub_100008D24(v11);
  }

  v15 = sub_1004DDA8C();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  sub_1004DDA4C();
  v16 = v2;
  v17 = sub_1004DDA3C();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v16;
  sub_10011F560(0, 0, v6, &unk_1005207F8, v18);

  if (a1)
  {
    sub_100006F10(0, &qword_1006372C0);
    v20 = swift_allocObject();
    *(v20 + 16) = v16;
    v21 = v16;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1002163C8, v20);
  }

  return result;
}

void sub_100214B84(void *a1)
{
  v2 = v1;
  if (qword_100633DA0 != -1)
  {
    swift_once();
  }

  v4 = sub_1004D966C();
  sub_100035430(v4, static Logger.playbackController);
  swift_errorRetain();
  v5 = sub_1004D964C();
  v6 = sub_1004DDF7C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = a1;
    v35[0] = v8;
    *v7 = 136446210;
    swift_errorRetain();
    sub_100004CB8(&qword_10063AD60);
    v9 = sub_1004DD4DC();
    v11 = sub_1000343A8(v9, v10, v35);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "didPauseForLeaseEndWithError with error=%{public}s", v7, 0xCu);
    sub_100008D24(v8);
  }

  if (a1)
  {
    v12 = sub_1004D7F3C();
    v13 = [v12 userInfo];
    v14 = sub_1004DD21C();

    v15 = sub_1004DD43C();
    if (*(v14 + 16))
    {
      v17 = sub_100056B84(v15, v16);
      v19 = v18;

      if (v19)
      {
        sub_10000904C(*(v14 + 56) + 32 * v17, v35);

        sub_100006F10(0, &qword_100639F68);
        if (swift_dynamicCast())
        {
          v20 = [v34 stateReasonDialog];
          if (!v20)
          {

            return;
          }

          v21 = v20;
          v22 = [v12 userInfo];
          v23 = sub_1004DD21C();

          v24 = sub_1004DD43C();
          if (*(v23 + 16))
          {
            v26 = sub_100056B84(v24, v25);
            v28 = v27;

            if (v28)
            {
              sub_10000904C(*(v23 + 56) + 32 * v26, v35);

              sub_100004CB8(&unk_100639F70);
              if (swift_dynamicCast())
              {
                if (!v34[2] || (v29 = sub_100056B84(0x736E6F6974706FLL, 0xE700000000000000), (v30 & 1) == 0))
                {

                  return;
                }

                sub_10000904C(v34[7] + 32 * v29, v35);
                sub_100004CB8(&unk_1006372E0);
                if (swift_dynamicCast())
                {
                  sub_100006F10(0, &qword_1006372C0);
                  v31 = swift_allocObject();
                  v31[2] = v2;
                  v31[3] = v21;
                  v31[4] = v34;
                  v31[5] = v34;
                  v32 = v2;
                  v33 = v21;
                  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_10021623C, v31);

                  return;
                }

                goto LABEL_19;
              }

              goto LABEL_24;
            }
          }

          else
          {
          }

LABEL_24:
        }

LABEL_19:

        return;
      }
    }

    else
    {
    }

    goto LABEL_19;
  }
}

uint64_t sub_100215040(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100215064(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 73))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 72);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002150A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002150F0(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t sub_100215184(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002151CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100215224(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10021523C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100215294(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_1002152F4(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_100215310(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100215358(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10021539C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1002153CC()
{

  return swift_deallocObject();
}

uint64_t sub_100215418(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100215430()
{

  return swift_deallocObject();
}

uint64_t sub_1002154CC()
{

  return swift_deallocObject();
}

uint64_t sub_100215524()
{

  return swift_deallocObject();
}

uint64_t sub_10021556C()
{
  v1 = sub_100004CB8(&unk_100639E90);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100215600(uint64_t a1, uint64_t a2)
{
  sub_100004CB8(&unk_100639E90);

  return sub_1002127B8(a1, a2);
}

uint64_t sub_1002156C4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1002156FC()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100215750()
{

  return swift_deallocObject();
}

uint64_t sub_100215790(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100035C88;

  return sub_1002112D0(a1, a2, v6, v7, v8);
}

uint64_t sub_100215850()
{

  return swift_deallocObject();
}

uint64_t sub_100215888(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100035C88;

  return sub_100211598(a1, a2, v7, v6);
}

uint64_t sub_100215968()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1002159C0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 72);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100035C88;

  return sub_100210078(a1, a2, v2 + 16, v6);
}

uint64_t sub_100215A70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100215AF0()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100215B38(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100035C88;

  return sub_100212EF4(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_100215BFC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100215C4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100035C88;

  return sub_1002138A4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100215D14()
{
  v1 = sub_1004D809C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100215DD8(uint64_t a1)
{
  v4 = *(sub_1004D809C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100035C88;

  return sub_1002133E8(a1, v6, v7, v1 + v5);
}

uint64_t sub_100215EF4()
{

  return swift_deallocObject();
}

uint64_t sub_100215F64()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100215FAC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100035C88;

  return sub_100212E64(a1, a2, v6, v7, v8);
}

uint64_t sub_10021606C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1002160B8()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  if (*(v0 + 144))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100216138(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1002102E0(a1, v4, v5, v1 + 32, v1 + 88);
}

uint64_t sub_1002161EC()
{

  return swift_deallocObject();
}

uint64_t sub_100216248()
{

  return swift_deallocObject();
}

uint64_t sub_10021629C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1002162DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100035C88;

  return sub_10020CFD8(a1, v4, v5, v6);
}

uint64_t sub_100216390()
{

  return swift_deallocObject();
}

unint64_t sub_1002163D8()
{
  result = qword_10063A470;
  if (!qword_10063A470)
  {
    sub_100008DE4(&unk_10063CDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063A470);
  }

  return result;
}

uint64_t sub_10021643C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100216484(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100035C88;

  return sub_1001FC62C(a1, v4, v5, v7, v6);
}

unint64_t sub_100216544()
{
  result = qword_100639FA0;
  if (!qword_100639FA0)
  {
    sub_100006F10(255, &qword_100639F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100639FA0);
  }

  return result;
}

uint64_t sub_1002165D4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100035C88;

  return sub_10020CBE4(a1, a2, v6);
}

uint64_t sub_100216680(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100035C88;

  return sub_10020CDE8(a1, a2, v6);
}

uint64_t sub_10021672C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100035C88;

  return sub_10020CD3C(a1, a2, v6);
}

uint64_t sub_1002167D8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100035C88;

  return sub_10020CC90(a1, a2, v6);
}

uint64_t sub_100216884(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100035C88;

  return sub_100209824(a1, a2, v6);
}

uint64_t sub_100216930(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100035C88;

  return sub_1002098CC(a1, a2, v6);
}

uint64_t sub_1002169DC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100035C88;

  return sub_100209974(a1, a2, v6);
}

uint64_t sub_100216A88(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

id sub_100216AD8(id result)
{
  if (result >= 6)
  {
    return result;
  }

  return result;
}

uint64_t sub_100216AF0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100035C88;

  return sub_10020AD78(a1, a2, v6);
}

uint64_t sub_100216B9C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100035C88;

  return sub_10020ACD8(a1, a2, v6);
}

uint64_t sub_100216C48(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100035C88;

  return sub_10020A168(a1, a2, v6);
}

uint64_t sub_100216CF4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100035B28;

  return sub_10020A208(a1, a2, v6);
}

uint64_t sub_100216DA0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100216E94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void MPCPlaybackIntent.playActivityInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_100219684(a1, a2, a3, a4);

  sub_10006136C(a1, a2, a3, a4);
}

uint64_t PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, void *a10, uint64_t a11)
{
  v44 = a7;
  v49 = a4;
  v50 = a11;
  v43 = sub_1004D96BC();
  v48 = *(v43 - 8);
  __chkstk_darwin(v43);
  v47 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v45);
  v46 = (&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for PlaybackIntentDescriptor(0);
  v21 = a9 + v20[7];
  *(v21 + 32) = 0;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  v22 = a9 + v20[8];
  *(v22 + 32) = 0;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(a9 + v20[9]) = 0;
  *(a9 + v20[10]) = 0;
  *(a9 + v20[11]) = 0;
  v51 = a1;
  sub_100216E94(a1, a9);
  if ((a6 & 1) == 0)
  {
    sub_100217DA8(a5, 0, &selRef_setShuffleMode_);
  }

  if ((a8 & 1) == 0)
  {
    sub_100217DA8(v44, 0, &selRef_setRepeatMode_);
  }

  v23 = a2;
  sub_1000C0F10(a2, v21);
  *(a9 + v20[5]) = a3;
  v24 = v50;
  *(a9 + v20[6]) = v49;
  sub_1000108DC(v24, &v52, &qword_100635998);
  if (v53)
  {
    sub_100035850(&v52, v54);
  }

  else
  {
    if (a10)
    {
      v54[0] = a10;
      v25 = a10;
    }

    else
    {
      v54[0] = 0;
      sub_100004CB8(&qword_1006363D8);
    }

    v26 = sub_1004DD50C();
    v54[3] = &type metadata for Player.CommandIssuerIdentity;
    v54[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v54[0] = v26;
    v54[1] = v27;
    if (v53)
    {
      sub_10001074C(&v52, &qword_100635998);
    }
  }

  sub_1000107AC(v54, v22, &qword_100635998);
  if (!a10)
  {
    goto LABEL_22;
  }

  v28 = [a10 combinedPlayActivityFeatureName];
  sub_1004DD43C();

  v29 = UIViewController.inheritedPlayActivityRecommendationData(shouldIncludeForwardedRecommendationData:)(1);
  v31 = v30;
  sub_100010584(0, 0xF000000000000000);

  sub_100027F64(v29, v31);

  sub_100010584(v29, v31);
  v32 = a9;
  v33 = v46;
  sub_100216E94(v32, v46);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v39 = *v33;

    v40 = sub_1004DD3FC();

    [v39 setPlayActivityFeatureName:v40];

    if (v31 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      sub_100010530(v29, v31);
      isa = sub_1004D80FC().super.isa;
      sub_100010584(v29, v31);
    }

    [v39 setPlayActivityRecommendationData:{isa, v43}];

    sub_100010584(v29, v31);
LABEL_22:
    sub_10001074C(v24, &qword_100635998);
    sub_10001074C(v23, &qword_100639FE0);
    return sub_100061420(v51);
  }

  v34 = v33;
  v35 = v43;
  (*(v48 + 32))(v47, v34, v43);
  v36 = sub_1004D968C();

  v37 = sub_1004DD3FC();

  [v36 setPlayActivityFeatureName:v37];

  if (v31 >> 60 == 15)
  {
    v38 = 0;
  }

  else
  {
    sub_100010530(v29, v31);
    v38 = sub_1004D80FC().super.isa;
    sub_100010584(v29, v31);
  }

  [v36 setPlayActivityRecommendationData:{v38, v43}];

  sub_100010584(v29, v31);
  sub_10001074C(v24, &qword_100635998);
  sub_10001074C(v23, &qword_100639FE0);
  sub_100061420(v51);
  return (*(v48 + 8))(v47, v35);
}

void PlaybackIntentDescriptor.playActivityInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_1004D96BC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v14);
  v16 = (&v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100216E94(v5, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v16, v10);
    v17 = sub_1004D968C();
    sub_100219684(a1, a2, a3, a4);
    sub_10006136C(a1, a2, a3, a4);

    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v18 = *v16;
    sub_100219684(a1, a2, a3, a4);
    sub_10006136C(a1, a2, a3, a4);
  }
}

uint64_t _s9MusicCore24PlaybackIntentDescriptorV0D4TypeO010underlyingD0So011MPCPlaybackD0Cvg_0()
{
  v1 = v0;
  v2 = sub_1004D96BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100216E94(v1, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v8;
  }

  (*(v3 + 32))(v5, v8, v2);
  v9 = sub_1004D968C();
  (*(v3 + 8))(v5, v2);
  return v9;
}

uint64_t MPCPlaybackIntent.PlayActivityInformation.init(featureName:recommendationData:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_100010584(0, 0xF000000000000000);

  sub_100027F64(a3, a4);

  sub_100010584(a3, a4);
  return a1;
}

uint64_t PlaybackIntentDescriptor.IntentType.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    *v7 = a1;
    v11 = v5;
    swift_storeEnumTagMultiPayload();
    sub_1002197A0(v7, a2);
    return (*(v11 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v9 = *(v5 + 56);

    return v9(a2, 1, 1, v4);
  }
}

{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v15 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004D96BC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v8 + 48))(a1, 1, v7) == 1)
  {
    sub_10001074C(a1, &qword_1006363E8);
    v11 = *(v15 + 56);

    return v11(a2, 1, 1, v4);
  }

  else
  {
    v13 = *(v8 + 32);
    v13(v10, a1, v7);
    v13(v6, v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_1002197A0(v6, a2);
    return (*(v15 + 56))(a2, 0, 1, v4);
  }
}

id sub_100217C04(SEL *a1)
{
  v3 = v1;
  v4 = sub_1004D96BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100216E94(v3, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v10, v4);
    v11 = sub_1004D968C();
    v12 = [v11 *a1];

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v13 = *v10;
    v12 = [*v10 *a1];
  }

  return v12;
}

void sub_100217DA8(uint64_t a1, char a2, SEL *a3)
{
  v5 = v3;
  v8 = sub_1004D96BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v12);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (&v19 - v14);
  if (a2)
  {
    v16 = -1;
  }

  else
  {
    v16 = a1;
  }

  sub_100216E94(v5, &v19 - v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v15, v8);
    v17 = sub_1004D968C();
    [v17 *a3];

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v18 = *v15;
    [*v15 *a3];
  }
}

uint64_t PlaybackIntentDescriptor.intentOptions.setter(uint64_t a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.replaceIntent.setter(uint64_t a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.autoSing.setter(char a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.isSiriIntent.setter(char a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.playActivityInformation.getter()
{
  v1 = v0;
  v2 = sub_1004D96BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v6);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100216E94(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v9 = sub_1004D968C();
    v10 = MPCPlaybackIntent.playActivityInformation.getter();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v11 = *v8;
    v10 = MPCPlaybackIntent.playActivityInformation.getter();
  }

  return v10;
}

uint64_t MPCPlaybackIntent.playActivityInformation.getter()
{
  v1 = [v0 playActivityFeatureName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1004DD43C();

  v4 = [v0 playActivityRecommendationData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1004D810C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  sub_100010584(0, 0xF000000000000000);

  sub_100027F64(v6, v8);

  sub_100010584(v6, v8);
  return v3;
}

void (*PlaybackIntentDescriptor.playActivityInformation.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = sub_1004D96BC();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[6] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[7] = v8;
  v10 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v4[8] = v10;
  v11 = *(*(v10 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[9] = swift_coroFrameAlloc();
    v4[10] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[9] = malloc(v11);
    v4[10] = malloc(v11);
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[11] = v12;
  sub_100216E94(v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v13, v5);
    v14 = sub_1004D968C();
    v15 = MPCPlaybackIntent.playActivityInformation.getter();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    (*(v7 + 8))(v9, v5);
  }

  else
  {
    v22 = *v13;
    v15 = MPCPlaybackIntent.playActivityInformation.getter();
    v17 = v23;
    v19 = v24;
    v21 = v25;
  }

  *v4 = v15;
  v4[1] = v17;
  v4[2] = v19;
  v4[3] = v21;
  return sub_100218840;
}

void sub_100218840(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[4];
  if (a2)
  {
    sub_100216E94(v7, v2[9]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v9 = v2[9];
    if (EnumCaseMultiPayload == 1)
    {
      v11 = v2[6];
      v10 = v2[7];
      v12 = v2[5];
      (*(v11 + 32))(v10, v9, v12);
      sub_100061320(v4, v3, v6, v5);
      v13 = sub_1004D968C();
      sub_100219684(v4, v3, v6, v5);
      sub_10006136C(v4, v3, v6, v5);

      (*(v11 + 8))(v10, v12);
    }

    else
    {
      v20 = *v9;
      sub_100061320(v4, v3, v6, v5);
      sub_100219684(v4, v3, v6, v5);
      sub_10006136C(v4, v3, v6, v5);
    }

    v22 = v2[10];
    v21 = v2[11];
    v23 = v2[9];
    v24 = v2[7];
    sub_10006136C(*v2, v2[1], v2[2], v2[3]);
  }

  else
  {
    sub_100216E94(v7, v2[10]);
    v14 = swift_getEnumCaseMultiPayload();
    v15 = v2[10];
    if (v14 == 1)
    {
      v17 = v2[6];
      v16 = v2[7];
      v18 = v2[5];
      (*(v17 + 32))(v16, v15, v18);
      v19 = sub_1004D968C();
      sub_100219684(v4, v3, v6, v5);
      sub_10006136C(v4, v3, v6, v5);

      (*(v17 + 8))(v16, v18);
    }

    else
    {
      v25 = *v15;
      sub_100219684(v4, v3, v6, v5);
      sub_10006136C(v4, v3, v6, v5);
    }

    v22 = v2[10];
    v21 = v2[11];
    v23 = v2[9];
    v24 = v2[7];
  }

  free(v21);
  free(v22);
  free(v23);
  free(v24);

  free(v2);
}

uint64_t PlaybackIntentDescriptor.forceSharePlayPrompt.setter(char a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t MPCPlaybackIntent.PlayActivityInformation.recommendationData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100010584(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void (*MPCPlaybackIntent.playActivityInformation.modify(void *a1))(uint64_t **a1, char a2)
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
  v3[4] = v1;
  *v3 = MPCPlaybackIntent.playActivityInformation.getter();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  return sub_100218C38;
}

void sub_100218C38(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    sub_100061320(v3, v4, v5, v6);
    sub_100219684(v3, v4, v5, v6);
    sub_10006136C(v3, v4, v5, v6);
    v7 = *v2;
    v8 = v2[1];
    v9 = v2[2];
    v10 = v2[3];
  }

  else
  {
    sub_100219684(v3, v4, v5, v6);
    v7 = v3;
    v8 = v4;
    v9 = v5;
    v10 = v6;
  }

  sub_10006136C(v7, v8, v9, v10);

  free(v2);
}

unint64_t PlaybackIntentDescriptor.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_1004D96BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = 0xD000000000000019;
  v26 = 0x80000001004F1500;
  strcpy(&v22, "intent=");
  v22._object = 0xE700000000000000;
  sub_100216E94(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v9 = sub_1004D968C();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v9 = *v8;
  }

  v10 = [v9 description];
  v11 = sub_1004DD43C();
  v13 = v12;

  v27._countAndFlagsBits = v11;
  v27._object = v13;
  sub_1004DD5FC(v27);

  v28._countAndFlagsBits = 8236;
  v28._object = 0xE200000000000000;
  sub_1004DD5FC(v28);
  sub_1004DD5FC(v22);

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_1004DEAAC(16);

  strcpy(&v22, "shuffleMode=");
  BYTE5(v22._object) = 0;
  HIWORD(v22._object) = -5120;
  v20._countAndFlagsBits = sub_100217C04(&selRef_shuffleMode);
  LOBYTE(v20._object) = 0;
  sub_100004CB8(&qword_10063A050);
  v29._countAndFlagsBits = sub_1004DD4DC();
  sub_1004DD5FC(v29);

  v30._countAndFlagsBits = 8236;
  v30._object = 0xE200000000000000;
  sub_1004DD5FC(v30);
  sub_1004DD5FC(v22);

  strcpy(&v22, "repeatMode=");
  HIDWORD(v22._object) = -352321536;
  v20._countAndFlagsBits = sub_100217C04(&selRef_repeatMode);
  LOBYTE(v20._object) = 0;
  sub_100004CB8(&qword_10063A058);
  v31._countAndFlagsBits = sub_1004DD4DC();
  sub_1004DD5FC(v31);

  v32._countAndFlagsBits = 8236;
  v32._object = 0xE200000000000000;
  sub_1004DD5FC(v32);
  sub_1004DD5FC(v22);

  strcpy(&v22, "options=");
  BYTE1(v22._object) = 0;
  WORD1(v22._object) = 0;
  HIDWORD(v22._object) = -402653184;
  v14 = type metadata accessor for PlaybackIntentDescriptor(0);
  v20._countAndFlagsBits = *(v1 + v14[5]);
  type metadata accessor for MPCPlaybackIntentOptions(0);
  v33._countAndFlagsBits = sub_1004DD4DC();
  sub_1004DD5FC(v33);

  v34._countAndFlagsBits = 8236;
  v34._object = 0xE200000000000000;
  sub_1004DD5FC(v34);
  sub_1004DD5FC(v22);

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_1004DEAAC(19);

  v22._countAndFlagsBits = 0x206563616C706572;
  v22._object = 0xEF3D746E65746E69;
  v20._countAndFlagsBits = *(v1 + v14[6]);
  type metadata accessor for MPCPlayerTracklistReplaceIntent(0);
  v35._countAndFlagsBits = sub_1004DD4DC();
  sub_1004DD5FC(v35);

  v36._countAndFlagsBits = 8236;
  v36._object = 0xE200000000000000;
  sub_1004DD5FC(v36);
  sub_1004DD5FC(v22);

  v37._object = 0x80000001004F1520;
  v37._countAndFlagsBits = 0xD000000000000012;
  sub_1004DD5FC(v37);
  sub_1000108DC(v1 + v14[7], &v20, &qword_100639FE0);
  if (v21)
  {
    sub_100035850(&v20._countAndFlagsBits, &v22);
    sub_100035868(&v22, &v20);
    sub_100004CB8(&qword_100639FE8);
    v20._countAndFlagsBits = sub_1004DD4DC();
    v20._object = v15;
    v38._countAndFlagsBits = 8236;
    v38._object = 0xE200000000000000;
    sub_1004DD5FC(v38);
    sub_1004DD5FC(v20);

    sub_100008D24(&v22);
  }

  else
  {
    sub_10001074C(&v20, &qword_100639FE0);
    v39._countAndFlagsBits = 0x202C656E6F6ELL;
    v39._object = 0xE600000000000000;
    sub_1004DD5FC(v39);
  }

  v40._countAndFlagsBits = 0x3D726575737369;
  v40._object = 0xE700000000000000;
  sub_1004DD5FC(v40);
  sub_1000108DC(v1 + v14[8], &v20, &qword_100635998);
  if (v21)
  {
    sub_100035850(&v20._countAndFlagsBits, &v22);
    v16 = v23;
    v17 = v24;
    sub_100008C70(&v22, v23);
    v20._countAndFlagsBits = (*(v17 + 8))(v16, v17);
    v20._object = v18;
    v41._countAndFlagsBits = 8236;
    v41._object = 0xE200000000000000;
    sub_1004DD5FC(v41);
    sub_1004DD5FC(v20);

    sub_100008D24(&v22);
  }

  else
  {
    sub_10001074C(&v20, &qword_100635998);
    v42._countAndFlagsBits = 0x6669636570736E75;
    v42._object = 0xEC0000003D646569;
    sub_1004DD5FC(v42);
  }

  v43._countAndFlagsBits = 41;
  v43._object = 0xE100000000000000;
  sub_1004DD5FC(v43);
  return v25;
}

uint64_t _s9MusicCore24PlaybackIntentDescriptorV0D4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004D96BC();
  v31 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = (&v30 - v14);
  v16 = sub_100004CB8(&qword_10063A1B8);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v30 - v18;
  v20 = *(v17 + 56);
  sub_100216E94(a1, &v30 - v18);
  sub_100216E94(a2, &v19[v20]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100216E94(v19, v13);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = v31;
      v22 = *(v31 + 32);
      v22(v9, v13, v4);
      v22(v7, &v19[v20], v4);
      sub_100006F10(0, &qword_1006381E0);
      v23 = sub_1004D968C();
      v24 = sub_1004D968C();
      v25 = sub_1004DE5FC();

      v26 = *(v21 + 8);
      v26(v7, v4);
      v26(v9, v4);
LABEL_9:
      sub_100061420(v19);
      return v25 & 1;
    }

    (*(v31 + 8))(v13, v4);
  }

  else
  {
    sub_100216E94(v19, v15);
    v27 = *v15;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v28 = *&v19[v20];
      sub_100006F10(0, &qword_1006381E0);
      v25 = sub_1004DE5FC();

      goto LABEL_9;
    }
  }

  sub_10001074C(v19, &qword_10063A1B8);
  v25 = 0;
  return v25 & 1;
}

void sub_100219684(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    v7 = sub_1004DD3FC();

    [v4 setPlayActivityFeatureName:v7];

    if (a4 >> 60 != 15)
    {
      sub_100010530(a3, a4);
      isa = sub_1004D80FC().super.isa;
      sub_100010584(a3, a4);
      v8 = isa;
      goto LABEL_6;
    }
  }

  else
  {
    [v4 setPlayActivityFeatureName:0];
  }

  v8 = 0;
LABEL_6:
  v10 = v8;
  [v4 setPlayActivityRecommendationData:?];
}

uint64_t sub_1002197A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100219818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1002198F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = a2;
  }

  return result;
}

void sub_1002199B4()
{
  type metadata accessor for PlaybackIntentDescriptor.IntentType(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MPCPlaybackIntentOptions(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for MPCPlayerTracklistReplaceIntent(319);
      if (v2 <= 0x3F)
      {
        sub_10004BEF8(319, &unk_10063A0C8, &qword_100639FE8);
        if (v3 <= 0x3F)
        {
          sub_10004BEF8(319, &qword_100635AF0, &unk_100635AF8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100219ABC()
{
  result = sub_100006F10(319, &qword_100639C18);
  if (v1 <= 0x3F)
  {
    result = sub_1004D96BC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100219B40(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100219B5C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t PlaybackTimeObserver.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PlaybackTimeObserver.init(name:)(a1, a2);
  return v4;
}

uint64_t PlaybackTimeObserver.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 32) = 1;
  *(v3 + 40) = 0;
  *(v3 + 48) = 1;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = xmmword_1005127B0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_100006F10(0, &qword_10063A1C8);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = CADisplayLink.init(handler:)(sub_100219D88, v6);
  swift_unownedRelease();
  v8 = [objc_opt_self() mainRunLoop];
  [v7 addToRunLoop:v8 forMode:NSRunLoopCommonModes];

  [v7 setPaused:1];
  [v7 setPreferredFramesPerSecond:30];
  v9 = *(v3 + 128);
  *(v3 + 128) = v7;

  return v3;
}

uint64_t sub_100219D50()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_100219D88()
{
  swift_unownedRetainStrong();
  sub_100219DC8();
}

void sub_100219DC8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 104);
  if (v2 == 2)
  {
    if (qword_100633DB8 != -1)
    {
      swift_once();
    }

    v3 = sub_1004D966C();
    sub_100035430(v3, qword_100671E70);

    v4 = sub_1004D964C();
    v5 = sub_1004DDF9C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v26[0] = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_1000343A8(*(v1 + 16), *(v1 + 24), v26);
      sub_100008D24(v7);
    }

    v8 = *(v1 + 48);
    if (v8 != 1)
    {
LABEL_19:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v26[0] = v1;
      sub_10021ACF0();
      sub_1004D86AC();

      return;
    }

LABEL_14:
    *(v1 + 40) = 0;
    *(v1 + 48) = v8;
    return;
  }

  if (v2)
  {
    if (qword_100633DB8 != -1)
    {
      swift_once();
    }

    v9 = sub_1004D966C();
    sub_100035430(v9, qword_100671E70);

    v10 = sub_1004D964C();
    v11 = sub_1004DDF9C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26[0] = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_1000343A8(*(v1 + 16), *(v1 + 24), v26);
      sub_100008D24(v13);
    }

    v8 = *(v1 + 48);
    if (v8 != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v14 = *(v0 + 80);
  v15 = *(v0 + 96);
  if (v14 <= 0.0)
  {
    v20 = 0.0;
  }

  else
  {
    v16 = *(v0 + 88);
    v17 = *(v0 + 56);
    sub_1004D812C();
    v19 = v16 + (v18 - v17) * v15;
    if (v19 >= v14)
    {
      v19 = v14;
    }

    v20 = fmax(v19, 0.0) / v14;
  }

  sub_10021AD94(*&v20, 0);
  sub_1004D812C();
  v23 = v22;
  swift_beginAccess();
  v24 = vabdd_f64(v23, *(v0 + 152));
  v25 = fabsf(v15);
  if (v25 <= 1.0)
  {
    v25 = 1.0;
  }

  if (v24 >= (1.0 / v25))
  {
    *(v0 + 152) = v23;
  }
}

uint64_t PlaybackTimeObserver.deinit()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = OBJC_IVAR____TtC9MusicCore20PlaybackTimeObserver___observationRegistrar;
  v3 = sub_1004D86FC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t PlaybackTimeObserver.__deallocating_deinit()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = OBJC_IVAR____TtC9MusicCore20PlaybackTimeObserver___observationRegistrar;
  v3 = sub_1004D86FC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

void sub_10021A384()
{
  if (qword_100633DB8 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  sub_100035430(v1, qword_100671E70);

  v2 = sub_1004D964C();
  v3 = sub_1004DDF9C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v42[0] = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000343A8(*(v0 + 16), *(v0 + 24), v42);
    _os_log_impl(&_mh_execute_header, v2, v3, "📺 %{public}s: Updating DisplayLink…", v4, 0xCu);
    sub_100008D24(v5);
  }

  v6 = sub_1004D964C();
  v7 = sub_1004DDF9C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67240192;
    *(v8 + 4) = *(v0 + 120);

    _os_log_impl(&_mh_execute_header, v6, v7, "   — isBackgrounded: %{BOOL,public}d", v8, 8u);
  }

  else
  {
  }

  v9 = sub_1004D964C();
  v10 = sub_1004DDF9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67240192;
    swift_beginAccess();
    *(v11 + 4) = *(v0 + 32);

    _os_log_impl(&_mh_execute_header, v9, v10, "   — automaticallyUpdates: %{BOOL,public}d", v11, 8u);
  }

  else
  {
  }

  swift_beginAccess();
  if (*(v0 + 32) != 1 || (*(v0 + 120) & 1) != 0 || (swift_beginAccess(), v12 = *(v0 + 104), v12 == 2))
  {
    v13 = sub_1004D964C();
    v14 = sub_1004DDF9C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "   — Null Snapshot", v15, 2u);
    }

    v16 = 1;
  }

  else
  {
    v24 = *(v0 + 96);
    v25 = *(v0 + 88);
    v40 = *(v0 + 72);
    v41 = *(v0 + 56);
    v26 = sub_1004D964C();
    v27 = sub_1004DDF9C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v47 = v29;
      *v28 = 136446210;
      v42[1] = v40;
      v42[0] = v41;
      v43 = v25;
      v44 = v24;
      v45 = v12 & 0x101;
      v46 = BYTE2(v12) & 1;
      type metadata accessor for MPCPlayerItemDurationSnapshot(0);
      v30 = sub_1004DD4DC();
      v32 = sub_1000343A8(v30, v31, &v47);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "   — Snapshot: %{public}s", v28, 0xCu);
      sub_100008D24(v29);
    }

    v33 = v24 & 0x7FFFFFFF;
    v34 = sub_1004D964C();
    v35 = sub_1004DDF9C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 67240192;
      *(v36 + 4) = v12 & 1;
      _os_log_impl(&_mh_execute_header, v34, v35, "   — isLiveContent: %{BOOL,public}d", v36, 8u);
    }

    v37 = sub_1004D964C();
    v38 = sub_1004DDF9C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 67240192;
      *(v39 + 4) = v33 == 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "   — isRateNull: %{BOOL,public}d", v39, 8u);
    }

    v16 = v12 | (v33 == 0);
  }

  v17 = sub_1004D964C();
  v18 = sub_1004DDF9C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67240192;
    *(v19 + 4) = v16 & 1;
    _os_log_impl(&_mh_execute_header, v17, v18, " -> should pause: %{BOOL,public}d", v19, 8u);
  }

  v20 = *(v0 + 128);
  if (v20)
  {
    [v20 setPaused:v16 & 1];
  }

  swift_beginAccess();
  if (!*(v0 + 112))
  {
    v21 = sub_1004D964C();
    v22 = sub_1004DDF7C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "No window scene associated! This could lead to a major power regression when the app is backgrounded!", v23, 2u);
    }
  }
}

void PlaybackTimeObserver.automaticallyUpdates.setter(char a1)
{
  v3 = a1 & 1;
  swift_beginAccess();
  v4 = *(v1 + 32);
  *(v1 + 32) = a1;
  if (v4 != v3)
  {
    sub_10021A384();
  }
}

void (*PlaybackTimeObserver.automaticallyUpdates.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 32);
  return sub_10021AB3C;
}

void sub_10021AB3C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(v2 + 32);
  *(v2 + 32) = v3;
  if (v3 != v4)
  {
    sub_10021A384();
  }

  free(v1);
}

uint64_t PlaybackTimeObserver.effectiveElapsedTime.getter()
{
  swift_getKeyPath();
  sub_10021ACF0();
  sub_1004D86BC();

  return *(v0 + 40);
}

uint64_t sub_10021AC04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10021ACF0();
  sub_1004D86BC();

  v5 = *(v3 + 48);
  *a2 = *(v3 + 40);
  *(a2 + 8) = v5;
  return result;
}

unint64_t sub_10021ACF0()
{
  result = qword_10063A1D0;
  if (!qword_10063A1D0)
  {
    type metadata accessor for PlaybackTimeObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063A1D0);
  }

  return result;
}

uint64_t type metadata accessor for PlaybackTimeObserver()
{
  result = qword_10063A200;
  if (!qword_10063A200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10021AD94(uint64_t result, char a2)
{
  if ((*(v2 + 48) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 40) != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 40) = *&result;
    *(v2 + 48) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10021ACF0();
  sub_1004D86AC();
  *&result = COERCE_DOUBLE();
  return result;
}

void sub_10021AE9C()
{
  v1 = v0;
  if (qword_100633DB8 != -1)
  {
    swift_once();
  }

  v2 = sub_1004D966C();
  sub_100035430(v2, qword_100671E70);

  v3 = sub_1004D964C();
  v4 = sub_1004DDF9C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    swift_beginAccess();
    sub_100004CB8(&qword_10063A2E0);
    v7 = sub_1004DD4DC();
    v9 = sub_1000343A8(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received new snapshot=%{public}s", v5, 0xCu);
    sub_100008D24(v6);
  }

  sub_1004D812C();
  v11 = v10;
  swift_beginAccess();
  *(v1 + 152) = v11;
  sub_100219DC8();
  sub_10021A384();
}

__n128 PlaybackTimeObserver.durationSnapshot.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  v4 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v4;
  result = *(v1 + 88);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

void PlaybackTimeObserver.durationSnapshot.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 88) = *(a1 + 32);
  *(v1 + 104) = *(a1 + 48);
  sub_10021AE9C();
}

void (*PlaybackTimeObserver.durationSnapshot.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10021B17C;
}

void sub_10021B17C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_10021AE9C();
  }
}

void sub_10021B1B0(id a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 112);
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_13;
  }

  if (a1)
  {
    sub_100006F10(0, &qword_10063A2D8);
    v5 = v4;
    a1 = a1;
    v6 = sub_1004DE5FC();

    if (v6)
    {
      return;
    }

    v4 = *(v2 + 112);
    if (!v4)
    {
LABEL_13:
      v26 = qword_100633DB8;
      v27 = a1;
      if (v26 != -1)
      {
        swift_once();
      }

      v28 = sub_1004D966C();
      sub_100035430(v28, qword_100671E70);
      v29 = v27;

      v30 = sub_1004D964C();
      v31 = sub_1004DDF9C();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v32 = 136446466;
        *(v32 + 4) = sub_1000343A8(*(v2 + 16), *(v2 + 24), &v40);
        *(v32 + 12) = 2082;
        v33 = v29;
        v34 = [v33 description];
        v35 = sub_1004DD43C();
        v37 = v36;

        v38 = sub_1000343A8(v35, v37, &v40);

        *(v32 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v30, v31, "%{public}s: Removed windowScene=%{public}s", v32, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v39 = *(v2 + 120);
      *(v2 + 120) = 0;
      if (v39 == 1)
      {
        sub_10021A384();
      }

      *(v2 + 136) = 0;

      v25 = 0;
      goto LABEL_21;
    }
  }

  v7 = qword_100633DB8;
  v8 = v4;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = sub_1004D966C();
  sub_100035430(v9, qword_100671E70);
  v10 = v8;

  v11 = sub_1004D964C();
  v12 = sub_1004DDF9C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v13 = 136446466;
    *(v13 + 4) = sub_1000343A8(*(v2 + 16), *(v2 + 24), &v40);
    *(v13 + 12) = 2082;
    v14 = v10;
    v15 = [v14 description];
    v16 = sub_1004DD43C();
    v18 = v17;

    v19 = sub_1000343A8(v16, v18, &v40);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s: Received windowScene=%{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  v20 = [v10 activationState] == 2;
  v21 = *(v2 + 120);
  *(v2 + 120) = v20;
  if (v20 != v21)
  {
    sub_10021A384();
  }

  v22 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v23 = v10;
  *(v2 + 136) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneDidEnterBackgroundNotification, v4, 1, 1, sub_10021BB78, v22);

  v24 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  v25 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneWillEnterForegroundNotification, v4, 1, 1, sub_10021BB80, v24);
LABEL_21:
  *(v2 + 144) = v25;
}

uint64_t sub_10021B708()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 120);
    *(result + 120) = 1;
    if ((v1 & 1) == 0)
    {
      sub_10021A384();
    }
  }

  return result;
}

uint64_t sub_10021B770()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 120);
    *(result + 120) = 0;
    if (v1 == 1)
    {
      sub_10021A384();
    }
  }

  return result;
}

void *PlaybackTimeObserver.windowScene.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

void PlaybackTimeObserver.windowScene.setter(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
  v4 = a1;
  sub_10021B1B0(v3);
}

void (*PlaybackTimeObserver.windowScene.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  v5 = *(v1 + 112);
  *(v4 + 24) = v5;
  v6 = v5;
  return sub_10021B914;
}

void sub_10021B914(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v6 = *(*a1 + 32);
  v7 = *(v6 + 112);
  *(v6 + 112) = *v5;
  v8 = v4;
  v9 = v8;
  if (a2)
  {
    v10 = v8;
    sub_10021B1B0(v7);

    v7 = *v5;
  }

  else
  {
    sub_10021B1B0(v7);
  }

  free(v3);
}

uint64_t sub_10021B9EC()
{
  result = sub_1004D86FC();
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

uint64_t sub_10021BAC4()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_100671E70);
  sub_100035430(v0, qword_100671E70);
  return sub_1004D965C();
}

uint64_t sub_10021BB40()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_10021BB88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 40) = *(v0 + 24);
  *(v1 + 48) = v2;
}

uint64_t static Player.CommandIssuer<>.reflection(of:)(uint64_t a1)
{
  if (a1)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    sub_100004CB8(&qword_1006363D8);
  }

  return sub_1004DD50C();
}

uint64_t Player.CommandIssuerIdentity.init(_:)(uint64_t a1)
{
  v2 = sub_1004D7F9C();
  v3 = sub_1004D809C();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

{
  if (!a1)
  {
    sub_100004CB8(&qword_1006363D8);
  }

  return sub_1004DD50C();
}

uint64_t Player.CommandIssuerIdentity.init(_:)()
{
  sub_100004CB8(&qword_10063A2E8);
  sub_10021BDD0();
  v0 = sub_1004DD30C();

  return v0;
}

uint64_t sub_10021BD78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_100008C70(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_10021BDD0()
{
  result = qword_10063A2F0;
  if (!qword_10063A2F0)
  {
    sub_100008DE4(&qword_10063A2E8);
    sub_10021BE54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063A2F0);
  }

  return result;
}

unint64_t sub_10021BE54()
{
  result = qword_10063A2F8;
  if (!qword_10063A2F8)
  {
    sub_100008DE4(&qword_10063A300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063A2F8);
  }

  return result;
}

uint64_t Player.CommandIssuerIdentity.appending(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100004CB8(&qword_10063A308);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1005126C0;
  *(v6 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v6 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  sub_100035868(a1, v6 + 72);

  sub_100004CB8(&qword_10063A2E8);
  sub_10021BDD0();
  v7 = sub_1004DD30C();

  return v7;
}

uint64_t Player.CommandIssuer.appending(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100004CB8(&qword_10063A308);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1005126C0;
  *(v7 + 56) = a2;
  *(v7 + 64) = a3;
  v8 = sub_1000357EC((v7 + 32));
  (*(*(a2 - 8) + 16))(v8, v3, a2);
  sub_100035868(a1, v7 + 72);
  sub_100004CB8(&qword_10063A2E8);
  sub_10021BDD0();
  v9 = sub_1004DD30C();

  return v9;
}

uint64_t static Player.CommandIssuer<>.url(_:)(uint64_t a1)
{
  v2 = sub_1004D809C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_1004D7F9C();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t static Player.CommandIssuer<>.combining(_:)()
{

  sub_100004CB8(&qword_10063A2E8);
  sub_10021BDD0();
  v0 = sub_1004DD30C();

  return v0;
}

uint64_t Player.CommandIssuer<>.commandIssuingIdentifier.getter()
{
  sub_1004DD81C();
  return v1;
}

{
  sub_1004DEACC();
  return v1;
}

unint64_t sub_10021C2DC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  sub_1004DEAAC(29);

  v9._countAndFlagsBits = a1;
  v9._object = a2;
  sub_1004DD5FC(v9);
  v10._countAndFlagsBits = 0x3A656C746974202CLL;
  v10._object = 0xE800000000000000;
  sub_1004DD5FC(v10);
  v11._countAndFlagsBits = a3;
  v11._object = a4;
  sub_1004DD5FC(v11);
  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  sub_1004DD5FC(v12);
  return 0xD000000000000010;
}

unint64_t sub_10021C3A8(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  sub_1004DEAAC(29);

  v24 = 0xD000000000000010;
  v25 = 0x80000001004F1670;
  v26._countAndFlagsBits = a1;
  v26._object = a2;
  sub_1004DD5FC(v26);
  v27._countAndFlagsBits = 0x3A656C746974202CLL;
  v27._object = 0xE800000000000000;
  sub_1004DD5FC(v27);
  v28._countAndFlagsBits = a3;
  v28._object = a4;
  sub_1004DD5FC(v28);
  v29._countAndFlagsBits = 41;
  v29._object = 0xE100000000000000;
  sub_1004DD5FC(v29);
  v13 = 0xD000000000000010;
  if (a7[7])
  {
    v22 = a5;
    v14 = a7[2];
    v15 = a7[3];
    v17 = *a7;
    v16 = a7[1];
    sub_1004DEAAC(26);

    strcpy(&v23, "Alert(title:");
    BYTE5(v23._object) = 0;
    HIWORD(v23._object) = -5120;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v17 = 0;
      v18 = 0xE000000000000000;
    }

    v30._countAndFlagsBits = v17;
    v30._object = v18;
    sub_1004DD5FC(v30);

    v31._countAndFlagsBits = 0x67617373656D202CLL;
    v31._object = 0xEA00000000003A65;
    sub_1004DD5FC(v31);
    if (v15)
    {
      v19 = v14;
    }

    else
    {
      v19 = 0;
    }

    if (v15)
    {
      v20 = v15;
    }

    else
    {
      v20 = 0xE000000000000000;
    }

    v32._countAndFlagsBits = v19;
    v32._object = v20;
    sub_1004DD5FC(v32);

    sub_1004DD5FC(v23);

    sub_10000DE74(v22);

    sub_10021C5E4(a7);
    return v24;
  }

  else
  {

    sub_10000DE74(a5);
  }

  return v13;
}

uint64_t sub_10021C5E4(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_1006368B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10021C674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100004CB8(&qword_100635240);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000108DC(a3, v22 - v9, &qword_100635240);
  v11 = sub_1004DDA8C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001074C(v10, &qword_100635240);
  }

  else
  {
    sub_1004DDA7C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1004DD9BC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_1004DD52C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10001074C(a3, &qword_100635240);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001074C(a3, &qword_100635240);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10021C920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100004CB8(&qword_100635240);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000108DC(a3, v22 - v9, &qword_100635240);
  v11 = sub_1004DDA8C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001074C(v10, &qword_100635240);
  }

  else
  {
    sub_1004DDA7C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1004DD9BC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1004DD52C() + 32;

      sub_100004CB8(&qword_10063AD08);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10001074C(a3, &qword_100635240);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001074C(a3, &qword_100635240);
  sub_100004CB8(&qword_10063AD08);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10021CBDC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_1004DECAC();

    if (v3)
    {
      sub_100004CB8(&qword_10063AC88);
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_100056D60(a1);
    if (v5)
    {
      return swift_unknownObjectRetain();
    }
  }

  return 0;
}

char *Player.state<A>(for:)(void (*a1)(char *, uint64_t, uint64_t))
{
  v3 = sub_1004DE08C();
  type metadata accessor for MusicItemState();

  v4 = sub_1002346D0(a1, v3, v1);

  return v4;
}

uint64_t sub_10021CD54()
{
  sub_1004DBEBC();
  sub_100235A54(&qword_10063AC90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004CB8(&unk_100638950);
  sub_100042B08(&qword_10063ACA0, &unk_100638950);
  return sub_1004DE92C();
}

uint64_t sub_10021CE40()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_100671E88);
  sub_100035430(v0, qword_100671E88);
  return sub_1004D965C();
}

uint64_t Player.configuration.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player_engine);
  v2 = [v1 playerID];
  v3 = sub_1004DD43C();

  sub_1001F6860(v1);
  v4 = [v1 fallbackPlaybackIntent];
  return v3;
}

id Player.audioAnalyzer.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9MusicCore6Player_engine) audioAnalyzer];

  return v1;
}

void *Player.sampleReceiver.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    type metadata accessor for SampleReceiver();
    v1 = swift_allocObject();
    v1[3] = 0;
    v1[4] = 0;
    v1[2] = 0;
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t (*Player.sampleReceiver.modify(void *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = Player.sampleReceiver.getter();
  return sub_10021D038;
}

uint64_t Player.__allocating_init()()
{
  v0 = swift_allocObject();
  Player.init()();
  return v0;
}

char *Player.init()()
{
  v1 = v0;
  v104 = *v0;
  v2 = sub_100004CB8(&qword_100635240);
  __chkstk_darwin(v2 - 8);
  v115 = &v91 - v3;
  v4 = sub_100004CB8(&qword_100636410);
  __chkstk_darwin(v4 - 8);
  v114 = &v91 - v5;
  v6 = sub_100004CB8(&qword_10063A320);
  v106 = *(v6 - 8);
  v107 = v6;
  __chkstk_darwin(v6);
  v105 = &v91 - v7;
  v8 = sub_100004CB8(&qword_10063A328);
  v110 = *(v8 - 8);
  v111 = v8;
  __chkstk_darwin(v8);
  v108 = &v91 - v9;
  v10 = sub_100004CB8(&unk_10063A330);
  v112 = *(v10 - 8);
  v113 = v10;
  __chkstk_darwin(v10);
  v109 = &v91 - v11;
  v12 = sub_100004CB8(&qword_100638EF8);
  v101 = *(v12 - 8);
  v102 = v12;
  __chkstk_darwin(v12);
  v100 = &v91 - v13;
  v98 = sub_100004CB8(&qword_10063A340);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v91 - v14;
  v95 = sub_100004CB8(&unk_10063A348);
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v16 = &v91 - v15;
  v99 = sub_100004CB8(&qword_100639F90);
  v17 = *(v99 - 8);
  __chkstk_darwin(v99);
  v19 = &v91 - v18;
  v20 = sub_100004CB8(&qword_10063A358);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v91 - v22;
  *(v0 + 2) = 0;
  *(v0 + 3) = 0;
  v103 = objc_opt_self();
  v24 = [v103 systemRoute];
  v25 = [v24 isDeviceRoute];
  v26 = objc_opt_self();
  v27 = v26;
  if (v25)
  {
    if (qword_100633D90 != -1)
    {
      swift_once();
    }

    v28 = sub_1004DD3FC();
    v29 = [v27 systemMusicPathWithRoute:v24 playerID:v28];
  }

  else
  {
    v29 = [v26 pathWithRoute:v24 bundleID:0 playerID:0];
  }

  v30 = OBJC_IVAR____TtC9MusicCore6Player__path;
  aBlock = v29;
  sub_100006F10(0, &qword_100635878);
  sub_1004D9B2C();
  (*(v21 + 32))(&v1[v30], v23, v20);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver] = 0;
  v31 = OBJC_IVAR____TtC9MusicCore6Player__nowPlaying;
  aBlock = 0;
  v32 = v19;
  v93 = sub_100004CB8(&qword_10063A380);
  sub_1004D9B2C();
  v33 = *(v17 + 32);
  v34 = v99;
  v92 = v33;
  v33(&v1[v31], v19, v99);
  v35 = OBJC_IVAR____TtC9MusicCore6Player__nowPlayingPath;
  aBlock = 0;
  sub_100004CB8(&qword_10063A390);
  sub_1004D9B2C();
  (*(v94 + 32))(&v1[v35], v16, v95);
  v36 = OBJC_IVAR____TtC9MusicCore6Player__sharePlayTogetherSession;
  aBlock = 0;
  sub_100004CB8(&qword_10063A3A0);
  v37 = v96;
  sub_1004D9B2C();
  (*(v97 + 32))(&v1[v36], v37, v98);
  v38 = OBJC_IVAR____TtC9MusicCore6Player__isHostingSharePlayTogetherSession;
  LOBYTE(aBlock) = 0;
  v39 = v100;
  sub_1004D9B2C();
  v40 = v102;
  v41 = *(v101 + 32);
  v41(&v1[v38], v39, v102);
  v42 = OBJC_IVAR____TtC9MusicCore6Player__isEligibleForHostingSharePlayTogetherSession;
  LOBYTE(aBlock) = 0;
  sub_1004D9B2C();
  v41(&v1[v42], v39, v40);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken] = 0;
  v43 = &v1[OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration];
  if (qword_100633DC8 != -1)
  {
    swift_once();
  }

  v44 = qword_10063A310;
  *v43 = qword_10063A310;
  *(v43 + 1) = v44;
  *(v43 + 2) = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_routingController] = 0;
  v1[OBJC_IVAR____TtC9MusicCore6Player_engineState] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player__onEngineIsReady] = _swiftEmptyArrayStorage;
  v45 = OBJC_IVAR____TtC9MusicCore6Player__playerResponse;
  aBlock = 0;
  v46 = v44;
  sub_1004D9B2C();
  v92(&v1[v45], v32, v34);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___playbackDataSource] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_activeSystemRouteDidChangeNotificationObserver] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_playerPathInvalidationObserver] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherSessionObserver] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherEligibilityObserver] = 0;
  v47 = OBJC_IVAR____TtC9MusicCore6Player_failingPlayerPathTimers;
  *&v1[v47] = sub_10005FCDC(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_ratingWarningThresholdSubscription] = 0;
  v48 = OBJC_IVAR____TtC9MusicCore6Player_lock;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *&v1[v48] = UnfairLock.init()();
  if (qword_100633D90 != -1)
  {
    swift_once();
  }

  v49 = qword_100671E20;
  v50 = unk_100671E28;
  v51 = objc_allocWithZone(MPCPlaybackEngine);
  v52 = sub_1004DD3FC();
  v53 = [v51 initWithPlayerID:v52];

  v54 = v53;
  sub_1001F6948(v49, v50);

  *&v1[OBJC_IVAR____TtC9MusicCore6Player_engine] = v54;
  [v54 becomeActive];
  v55 = OBJC_IVAR____TtC9MusicCore6Player_engine;
  v56 = *&v1[OBJC_IVAR____TtC9MusicCore6Player_engine];

  v57 = sub_1001F6860(v56);
  LOBYTE(v56) = sub_10012131C(4u, v57);

  if (v56)
  {
    v58 = *&v1[v55];
    v120 = sub_10021E31C;
    v121 = 0;
    aBlock = _NSConcreteStackBlock;
    v117 = 1107296256;
    v118 = sub_10021E4C4;
    v119 = &unk_1005E5C40;
    v59 = _Block_copy(&aBlock);
    v60 = v58;
    [v60 restoreStateWithCompletion:v59];
    _Block_release(v59);
  }

  v61 = v103;
  v62 = [v103 systemRoute];
  v63 = [objc_allocWithZone(MPVolumeControllerRouteDataSource) initWithGroupRoute:v62 outputDeviceRoute:0];
  v64 = [objc_opt_self() sharedController];
  [v64 setActiveDataSource:v63];

  v65 = swift_allocObject();
  v66 = v104;
  *(v65 + 16) = v1;
  *(v65 + 24) = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_100234768;
  *(v67 + 24) = v65;
  v120 = sub_1002347A8;
  v121 = v67;
  aBlock = _NSConcreteStackBlock;
  v117 = 1107296256;
  v118 = sub_100014F1C;
  v119 = &unk_1005E5BC8;
  v68 = _Block_copy(&aBlock);

  [v61 getActiveRouteWithTimeout:v68 completion:1.0];

  _Block_release(v68);
  v69 = MPAVRoutingControllerActiveSystemRouteDidChangeNotification;
  v70 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  *&v1[OBJC_IVAR____TtC9MusicCore6Player_activeSystemRouteDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v69, 0, 1, 1, sub_10023770C, v70);

  v71 = MRAVEndpointGroupSessionInfoDidChangeNotification;
  v72 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherSessionObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v71, 0, 1, 1, sub_1002347C8, v72);

  v73 = MRAVEndpointGroupSessionHostingEligibilityDidChangeNotification;
  v74 = swift_allocObject();
  swift_weakInit();
  v75 = v73;

  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherEligibilityObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v75, 0, 1, 1, sub_100234800, v74);

  if (qword_100633B60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100004CB8(&qword_10063A420);
  v76 = v105;
  sub_1004D9B3C();
  swift_endAccess();
  sub_100042B08(&unk_10063A428, &qword_10063A320);
  v77 = v107;
  v78 = v108;
  sub_1004D9BBC();
  (*(v106 + 8))(v76, v77);
  sub_100006F10(0, &qword_1006372C0);
  v79 = sub_1004DE14C();
  aBlock = v79;
  v80 = sub_1004DE12C();
  v81 = v114;
  (*(*(v80 - 8) + 56))(v114, 1, 1, v80);
  sub_100042B08(&qword_10063A438, &qword_10063A328);
  sub_100234838();
  v82 = v109;
  v83 = v111;
  sub_1004D9BDC();
  sub_10001074C(v81, &qword_100636410);

  (*(v110 + 8))(v78, v83);
  sub_100042B08(&qword_10063A448, &unk_10063A330);
  v84 = v113;
  v85 = sub_1004D9C0C();
  (*(v112 + 8))(v82, v84);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_ratingWarningThresholdSubscription] = v85;

  v86 = v115;
  sub_1004DDA5C();
  v87 = sub_1004DDA8C();
  (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
  sub_1004DDA4C();

  v88 = sub_1004DDA3C();
  v89 = swift_allocObject();
  v89[2] = v88;
  v89[3] = &protocol witness table for MainActor;
  v89[4] = v1;
  sub_100041790(0, 0, v86, &unk_100520E38, v89);

  sub_10001074C(v86, &qword_100635240);
  return v1;
}

void sub_10021E31C(char a1)
{
  if ((a1 & 1) == 0)
  {
    if (qword_100633DC0 != -1)
    {
      swift_once();
    }

    v1 = sub_1004D966C();
    sub_100035430(v1, qword_100671E88);
    swift_errorRetain();
    oslog = sub_1004D964C();
    v2 = sub_1004DDF7C();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v9 = v4;
      *v3 = 136446210;
      swift_errorRetain();
      sub_100004CB8(&qword_10063AD60);
      v5 = sub_1004DD4DC();
      v7 = sub_1000343A8(v5, v6, &v9);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Restoration Failed with error=%{public}s", v3, 0xCu);
      sub_100008D24(v4);
    }

    else
    {
    }
  }
}

void sub_10021E4C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10021E53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1004DDA4C();
  *(v4 + 24) = sub_1004DDA3C();
  v6 = sub_1004DD9BC();

  return _swift_task_switch(sub_10021E5D4, v6, v5);
}

uint64_t sub_10021E5D4()
{

  if (qword_100633E28 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  sub_100035430(v1, static Logger.sharePlayTogether);
  v2 = sub_1004D964C();
  v3 = sub_1004DDF9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Got MRAVEndpointGroupSessionInfoDidChange notification", v4, 2u);
  }

  v5 = *(v0 + 16);

  if (v5)
  {
    sub_10022E060();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10021E700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100004CB8(&qword_100635240);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_1004DDA8C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  sub_1004DDA4C();
  v10 = sub_1004DDA3C();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = Strong;
  sub_10011F560(0, 0, v7, a4, v11);
}

uint64_t sub_10021E83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1004DDA4C();
  *(v4 + 24) = sub_1004DDA3C();
  v6 = sub_1004DD9BC();

  return _swift_task_switch(sub_10021E8D4, v6, v5);
}

uint64_t sub_10021E8D4()
{

  if (qword_100633E28 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  sub_100035430(v1, static Logger.sharePlayTogether);
  v2 = sub_1004D964C();
  v3 = sub_1004DDF9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Got MRAVEndpointGroupSessionHostingEligibilityDidChangeNotification notification", v4, 2u);
  }

  v5 = *(v0 + 16);

  if (v5)
  {
    sub_10022E060();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10021EA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 64);
  *a2 = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v2;
}

void sub_10021EA4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_opt_self();
  v3 = [v2 sharedRestrictionsMonitor];
  [v3 setMaximumMovieRatingForAgeGate:v1];

  v4 = [v2 sharedRestrictionsMonitor];
  [v4 setMaximumTVShowRatingForAgeGate:v1];
}

uint64_t sub_10021EAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1004DDA4C();
  v4[4] = sub_1004DDA3C();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_10021EBA4;

  return Player.startEngineIfNeeded()();
}

uint64_t sub_10021EBA4()
{

  v1 = sub_1004DD9BC();

  return _swift_task_switch(sub_10021ECE0, v1, v0);
}

uint64_t sub_10021ECE0()
{

  sub_10022E060();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Player.startEngineIfNeeded()()
{
  v1[16] = v0;
  v1[17] = sub_1004DDA4C();
  v1[18] = sub_1004DDA3C();
  v3 = sub_1004DD9BC();
  v1[19] = v3;
  v1[20] = v2;

  return _swift_task_switch(sub_10021EDE4, v3, v2);
}

uint64_t sub_10021EDE4()
{
  v1 = v0[16];
  v2 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
  swift_beginAccess();
  if (*(v1 + v2) == 2)
  {

    v7 = v0[1];

    return v7();
  }

  else
  {
    if (!*(v1 + v2))
    {
      *(v1 + v2) = 1;
      sub_10022A604(0);
    }

    v3 = sub_1004DDA3C();
    v0[21] = v3;
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1004DD9BC();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    return _swift_task_switch(sub_10021EF00, v4, v6);
  }
}

uint64_t sub_10021EF00()
{
  v1 = v0[16];
  v0[2] = v0;
  v0[3] = sub_10021F080;
  v2 = swift_continuation_init();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = OBJC_IVAR____TtC9MusicCore6Player__onEngineIsReady;
  swift_beginAccess();
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_10003A81C(0, v5[2] + 1, 1, v5);
    *(v1 + v4) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_10003A81C((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  v9 = &v5[2 * v8];
  v9[4] = sub_100234958;
  v9[5] = v3;
  *(v1 + v4) = v5;
  swift_endAccess();

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10021F080()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);

  return _swift_task_switch(sub_10021F188, v2, v1);
}

uint64_t sub_10021F188()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Player.engineDelegate.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [*(v1 + OBJC_IVAR____TtC9MusicCore6Player_engine) setDelegate:a1];
  return swift_unknownObjectRelease();
}

id (*Player.engineDelegate.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10021F2F4;
}

id sub_10021F2F4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *(v5 + OBJC_IVAR____TtC9MusicCore6Player_engine);
    v7 = *(v5 + 24);

    return [v6 setDelegate:v7];
  }

  return result;
}

uint64_t sub_10021F358@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  *a1 = v3;
  return result;
}

uint64_t sub_10021F3D8(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v2 = v1;
  sub_1004D9B7C();
  return sub_10021F454();
}

uint64_t sub_10021F454()
{
  v1 = v0;
  v2 = sub_100004CB8(&qword_100635240);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_10022AD90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v6 = v19;
  v7 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path;
  v8 = *&v5[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path];
  *&v5[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path] = v19;
  sub_100006F10(0, &qword_100635878);
  v9 = v6;
  if ((sub_1004DE5FC() & 1) == 0)
  {
    v10 = *&v5[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
    v11 = [v10 request];
    if (v11)
    {
      v12 = *&v5[v7];
      v13 = v11;
      [v11 setPlayerPath:v12];
    }

    [v10 setNeedsReloadForSignificantRequestChange];
  }

  v14 = sub_1004DDA8C();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_1004DDA4C();

  v15 = sub_1004DDA3C();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v1;
  sub_10011F560(0, 0, v4, &unk_1005216A0, v16);
}

uint64_t sub_10021F678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1004DDA4C();
  *(v4 + 24) = sub_1004DDA3C();
  v6 = sub_1004DD9BC();

  return _swift_task_switch(sub_10021F710, v6, v5);
}

uint64_t sub_10021F710()
{

  sub_10022E060();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Player.path.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return v1;
}

uint64_t sub_10021F7E8(uint64_t a1)
{
  v2 = sub_100004CB8(&unk_10063ACC8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_100004CB8(&qword_10063A358);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t Player.nowPlayingObserver.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver);
  }

  else
  {
    v3 = v0;
    type metadata accessor for Player.NowPlayingObserver(0);
    swift_allocObject();

    v2 = sub_100234988();

    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t Player.NowPlayingObserver.__allocating_init(player:)()
{
  swift_allocObject();
  v0 = sub_100234988();

  return v0;
}

uint64_t sub_10021FA78(uint64_t a1)
{
  v2 = sub_100004CB8(&unk_10063CDA0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_100004CB8(&qword_100639F90);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_10021FC2C(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_1004D9B7C();
}

uint64_t sub_10021FCB8(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_10063ACC0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_100004CB8(&unk_10063A348);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_10021FE58(void *a1)
{
  v2 = v1;
  v4 = sub_100004CB8(&qword_100635240);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  if (!a1)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1;
  sub_1004D9B6C();

  v8 = v17;
  if (v17)
  {
    type metadata accessor for SharePlayTogetherSession(0);
    v9 = sub_1004DE5FC();

    if (v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v10 = sub_1004DDA8C();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  sub_1004DDA4C();
  v11 = v7;

  v12 = sub_1004DDA3C();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v2;
  v13[5] = v11;
  sub_10011F560(0, 0, v6, &unk_1005215E8, v13);

LABEL_7:

LABEL_8:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  if (v17)
  {
    v14 = v17[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost];
  }

  else
  {
    v14 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v17) = v14;

  return sub_1004D9B7C();
}

uint64_t sub_1002200CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_1004DDA4C();
  v5[10] = sub_1004DDA3C();
  v7 = sub_1004DD9BC();

  return _swift_task_switch(sub_100220164, v7, v6);
}

uint64_t sub_100220164()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v1 = v0[2];
  if (v1)
  {
    if (SharePlayTogetherSession.isEquivalent(to:)(v0[2]))
    {
      v2 = v0[9];
      v3 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
      swift_beginAccess();
      *(v2 + v3) = _swiftEmptyArrayStorage;

      v4 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers;
      swift_beginAccess();
      *(v2 + v4) = _swiftEmptyArrayStorage;

      goto LABEL_6;
    }
  }

  SharePlayTogetherSession.cleanup(notifyObservers:)(1);
LABEL_6:
  v5 = v0[1];

  return v5();
}

uint64_t sub_1002202B4(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_10063ACB8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_100004CB8(&qword_10063A340);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_100220490(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100639A60);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_100004CB8(&qword_100638EF8);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_100220644@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  *a1 = v3;
  return result;
}

uint64_t sub_1002206D4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004D9B7C();
}

uint64_t sub_100220758()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return v1;
}

uint64_t sub_1002207C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_100004CB8(a5);
  sub_1004D9B3C();
  return swift_endAccess();
}

uint64_t sub_100220840(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100639A60);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_100004CB8(&qword_100638EF8);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

id Player.supportsDelegation.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v0 = [v8 route];

  if (!v0)
  {
    return 0;
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    goto LABEL_12;
  }

  result = [v1 endpointObject];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result externalDevice];

  if (!v4 || (v5 = [v4 deviceInfo], v4, !v5))
  {
LABEL_12:

    return 0;
  }

  v6 = [v5 deviceClass];

  return (v6 == 7 || v6 == 4);
}

uint64_t Player.isInAnySharePlaySession.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  if (!v2 || (v0 = [v2 isSharedListeningSession], v2, (v0 & 1) == 0))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    if (!v2)
    {
      return 0;
    }

    result = *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session];
    if (!result)
    {
      __break(1u);
      return result;
    }

    if ([result isPlaceholder])
    {

      return 0;
    }

    if (v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost] == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004D9B6C();

      return v2 > 0;
    }
  }

  return 1;
}

void Player.sharePlayTogether(with:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v4 + OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken);
  *(v4 + OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken) = a1;
  v8 = a1;

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v8;
  v10[4] = a2;
  v10[5] = a3;
  v13[4] = sub_100234F20;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100220EE8;
  v13[3] = &unk_1005E5CB8;
  v11 = _Block_copy(v13);
  v12 = v8;
  sub_10000DE64(a2);

  MRGroupSessionJoinSessionWithToken();
  _Block_release(v11);
}

uint64_t sub_100220DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken;
    v12 = *(result + OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken);
    if (v12)
    {
      sub_100006F10(0, &qword_10063AD38);
      v13 = a5;
      v14 = v12;
      v15 = sub_1004DE5FC();

      if (v15)
      {
        v16 = *(v10 + v11);
        *(v10 + v11) = 0;

        if (a6)
        {
          a6(a3);
        }
      }
    }
  }

  return result;
}

void sub_100220EE8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_1004DD43C();
  v7 = v6;

  v8 = a3;
  v4(v5, v7, a3);
}

void Player.requestSharePlayTogether(completion:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v4 = [v12[0] route];

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 endpointObject];
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = v6;
      sub_100006F10(0, &qword_1006372C0);
      v8 = sub_1004DE14C();
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = a1;
      v10[4] = a2;
      v12[4] = sub_100234F74;
      v12[5] = v10;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 1107296256;
      v12[2] = sub_100221440;
      v12[3] = &unk_1005E5D08;
      v11 = _Block_copy(v12);
      sub_10000DE64(a1);

      [v7 requestGroupSessionWithQueue:v8 completion:v11];
      _Block_release(v11);

      v4 = v8;
    }
  }
}

uint64_t sub_10022117C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_100004CB8(&qword_100635240);
  __chkstk_darwin(v11 - 8);
  v13 = &v19 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = sub_1004DDA8C();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    sub_1004DDA4C();

    sub_10000DE64(a5);

    swift_errorRetain();
    v17 = sub_1004DDA3C();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v15;
    v18[5] = a5;
    v18[6] = a6;
    v18[7] = a1;
    v18[8] = a2;
    v18[9] = a3;
    sub_10011F560(0, 0, v13, &unk_100521680, v18);
  }

  return result;
}

uint64_t sub_100221318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  sub_1004DDA4C();
  v8[8] = sub_1004DDA3C();
  v10 = sub_1004DD9BC();

  return _swift_task_switch(sub_1002213C0, v10, v9);
}

uint64_t sub_1002213C0()
{
  v1 = v0[3];

  sub_10022E060();
  if (v1)
  {
    (v0[3])(v0[5], v0[6], v0[7]);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_100221440(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1004DD43C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t Player.getNowPlaying()()
{
  v1[17] = v0;
  v1[18] = sub_1004DDA4C();
  v1[19] = sub_1004DDA3C();
  v3 = sub_1004DD9BC();
  v1[20] = v3;
  v1[21] = v2;

  return _swift_task_switch(sub_100221574, v3, v2);
}

uint64_t sub_100221574()
{
  v1 = sub_10022C8E4();
  v2 = *&v1[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request];
  *(v0 + 176) = v2;
  v3 = v2;

  v4 = sub_1004DDA3C();
  *(v0 + 184) = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = sub_1004DD9BC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return _swift_task_switch(sub_10022162C, v5, v7);
}

uint64_t sub_10022162C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[22];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_100221788;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_100234F80;
  v1[15] = v8;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100022450;
  v1[13] = &unk_1005E5D58;
  v9 = _Block_copy(v4);

  [v6 performWithCompletion:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();

  return _swift_continuation_await(v3);
}

uint64_t sub_100221788()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    swift_willThrow();

    v3 = v1[20];
    v4 = v1[21];
    v5 = sub_100221AE0;
  }

  else
  {

    v1[25] = v1[16];
    v3 = v1[20];
    v4 = v1[21];
    v5 = sub_1002218D8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1002218D8()
{
  v1 = *(v0 + 200);

  if (v1)
  {
    v2 = *(v0 + 200);
    v3 = [v2 playerPath];
    v4 = [v3 isSystemMusicPath];

    if (v4 || (v5 = [v2 playerPath], v6 = objc_msgSend(v5, "representedBundleID"), v5, !v6))
    {
      v7 = *(v0 + 200);
    }

    else
    {

      v7 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 80) = v7;

    sub_1004D9B7C();
    v8 = [v2 playerPath];
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 80) = 0;

    sub_1004D9B7C();
    v8 = 0;
  }

  v9 = *(v0 + 176);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = v8;
  v10 = v8;

  sub_1004D9B7C();

  v11 = *(v0 + 8);
  v12 = *(v0 + 200);

  return v11(v12);
}

uint64_t sub_100221AE0()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100221B4C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    sub_100004CB8(&qword_100638980);
    swift_allocError();
    *v4 = a2;
    swift_errorRetain();

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(a3 + 64) + 40) = a1;
    v6 = a1;

    return swift_continuation_throwingResume();
  }
}

void sub_100221C10()
{
  v1 = sub_10022C8E4();
  v2 = *&v1[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request];

  v3 = (v0 + OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v5 = *v3;
  v6 = v4;

  v8 = sub_100234F88(v7);
  v10 = v9;

  v11 = [v2 playingItemProperties];
  if (v11 && (v12 = v11, v13 = [v11 containsPropertySet:*v3], v12, v13) && (v14 = objc_msgSend(v2, "queueSectionProperties")) != 0)
  {
    v15 = v14;
    v16 = [v14 containsPropertySet:v3[1]];

    v17 = v16 ^ 1;
  }

  else
  {
    v17 = 1;
  }

  if ([v2 tracklistRange] != v8 || (v17 & 1) != 0 || v18 != v10)
  {
    [v2 setPlayingItemProperties:*v3];
    [v2 setQueueItemProperties:*v3];
    [v2 setQueueSectionProperties:v3[1]];
    [v2 setTracklistRange:{v8, v10}];
    v19 = sub_10022AD90();
    v20 = *&v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request];

    [v20 setPlayingItemProperties:*v3];
    v21 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
    swift_beginAccess();
    if (*(v0 + v21) == 2)
    {
      v22 = *(*(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource) + OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller);
      v23 = v22;
      v24 = &selRef_setNeedsReloadForSignificantRequestChange;
      if (!v17)
      {
        v24 = &selRef_setNeedsReload;
      }

      [v22 *v24];
    }
  }
}

id Player.nowPlayingConfiguration.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration;
  swift_beginAccess();
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *v1;
  v5 = v3;

  return v2;
}

void Player.nowPlayingConfiguration.setter(void *a1, void *a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration;
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  v10 = a1;
  v11 = a2;

  sub_100221C10();
}

void (*Player.nowPlayingConfiguration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100221FF4;
}

void sub_100221FF4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_100221C10();
  }
}

unint64_t sub_100222080(Swift::UInt a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = *v2;
  if (!*(v6 + 16) || (result = sub_100056DB0(a1, a2), (v8 & 1) == 0))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    v12 = 1;
    goto LABEL_6;
  }

  v9 = *(*(v6 + 56) + 8 * result);
  v10 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    v12 = v10;
LABEL_6:
    result = sub_10005AEA4(v12, a1, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t Player.NowPlayingConfiguration.BadCountedSet.insert(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DD27C();
  if (v11)
  {
    (*(v4 + 16))(v6, a1, v3);
    v7 = 1;
LABEL_4:
    v10 = v7;
    v11 = 0;
    sub_1004DD25C();
    return sub_1004DD28C();
  }

  v8 = v10;
  result = (*(v4 + 16))(v6, a1, v3);
  v7 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

Swift::UInt sub_1002222C4(Swift::UInt result, Swift::UInt a2)
{
  v3 = v2;
  v4 = *v2;
  if (*(v4 + 16))
  {
    v5 = a2;
    v6 = result;
    result = sub_100056DB0(result, a2);
    if (v7)
    {
      v8 = *(*(v4 + 56) + 8 * result);
      v9 = v8 - 1;
      if (__OFSUB__(v8, 1))
      {
        __break(1u);
        goto LABEL_11;
      }

      if (v9 > 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *v3;
        result = sub_10005AEA4(v9, v6, v5, isUniquelyReferenced_nonNull_native);
        *v3 = v15;
        return result;
      }

      result = sub_100056DB0(v6, v5);
      if (v11)
      {
        v5 = result;
        v12 = swift_isUniquelyReferenced_nonNull_native();
        v13 = *v3;
        v14 = *v3;
        if (v12)
        {
LABEL_8:
          result = sub_10023337C(v5, v13);
          *v3 = v13;
          return result;
        }

LABEL_11:
        sub_10005C770();
        v13 = v14;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t Player.NowPlayingConfiguration.BadCountedSet.remove(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1004DD27C();
  if (v10 != 1)
  {
    v8 = v9 - 1;
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
    }

    else
    {
      (*(v4 + 16))(v6, a1, v3);
      if (v8 < 1)
      {
        v9 = 0;
        v10 = 1;
      }

      else
      {
        v9 = v8;
        v10 = 0;
      }

      sub_1004DD25C();
      return sub_1004DD28C();
    }
  }

  return result;
}

double Player.NowPlayingConfiguration.BadCountedSet.makeIterator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100233B74(a1, &v7);
  v10[0] = v7;
  v10[1] = v8;
  v11 = v9;
  v3 = sub_1004DD24C();
  (*(*(v3 - 8) + 16))(&v6, v10, v3);
  result = *&v7;
  v5 = v8;
  *a2 = v7;
  *(a2 + 16) = v5;
  *(a2 + 32) = v9;
  return result;
}

double sub_1002225B8@<D0>(uint64_t a1@<X8>)
{
  sub_100233B74(*v1, &v7);
  v10[0] = v7;
  v10[1] = v8;
  v11 = v9;
  v3 = sub_1004DD24C();
  (*(*(v3 - 8) + 16))(&v6, v10, v3);

  result = *&v7;
  v5 = v8;
  *a1 = v7;
  *(a1 + 16) = v5;
  *(a1 + 32) = v9;
  return result;
}

uint64_t sub_100222680()
{
  v0 = sub_10023472C();

  return v0;
}

BOOL Player.canPerform(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = sub_100008C70(a1, v2);

  return sub_100233870(v4, v1, v2, v3);
}

uint64_t Player.canPerform(anyOf:)(uint64_t a1)
{
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  if (v5)
  {
    v2 = swift_conformsToProtocol2();
    v3 = 0;
    if (v2 && a1)
    {
      v3 = (*(v2 + 16))(v5, a1, v2);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t Player.performWhenAvailable(_:options:issuer:timeout:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v7 + 376) = v6;
  *(v7 + 368) = a6;
  *(v7 + 352) = a4;
  *(v7 + 360) = a5;
  *(v7 + 608) = a3;
  *(v7 + 336) = a1;
  *(v7 + 344) = a2;
  sub_100004CB8(&qword_100635240);
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = sub_100004CB8(&unk_10063CDA0);
  *(v7 + 400) = swift_task_alloc();
  v8 = sub_100004CB8(&qword_10063A460);
  *(v7 + 408) = v8;
  v9 = *(v8 - 8);
  *(v7 + 416) = v9;
  *(v7 + 424) = *(v9 + 64);
  *(v7 + 432) = swift_task_alloc();
  *(v7 + 440) = swift_task_alloc();
  *(v7 + 448) = type metadata accessor for Player.CommandIssuance();
  *(v7 + 456) = swift_task_alloc();
  *(v7 + 464) = swift_task_alloc();
  *(v7 + 472) = swift_task_alloc();
  *(v7 + 480) = swift_task_alloc();
  *(v7 + 488) = sub_1004DDA4C();
  *(v7 + 496) = sub_1004DDA3C();
  v11 = sub_1004DD9BC();
  *(v7 + 504) = v11;
  *(v7 + 512) = v10;

  return _swift_task_switch(sub_100222A38, v11, v10);
}

uint64_t sub_100222A38()
{
  v76 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 336);
  v3 = v2[3];
  v4 = v2[4];
  v5 = sub_100008C70(v2, v3);
  if (sub_100233870(v5, v1, v3, v4))
  {
    v6 = *(v0 + 336);
    sub_100004CB8(&unk_100639D70);
    v7 = swift_allocObject();
    *(v0 + 576) = v7;
    *(v7 + 16) = xmmword_100511DA0;
    sub_100035868(v6, v7 + 32);
    v8 = swift_task_alloc();
    *(v0 + 584) = v8;
    *v8 = v0;
    v8[1] = sub_100223870;
    v9 = *(v0 + 352);
    v10 = *(v0 + 360);
    v11 = *(v0 + 608);
    v12 = *(v0 + 344);

    return Player.perform(_:options:issuer:)(v7, v12, v11, v9, v10);
  }

  else
  {
    sub_1000108DC(*(v0 + 360), v0 + 80, &qword_100635998);
    v14 = *(v0 + 104);
    if (v14)
    {
      v15 = *(v0 + 112);
      sub_100008C70((v0 + 80), *(v0 + 104));
      v16 = (*(v15 + 8))(v14, v15);
      v14 = v17;
      sub_100008D24(v0 + 80);
    }

    else
    {
      sub_10001074C(v0 + 80, &qword_100635998);
      v16 = 0;
    }

    v18 = *(v0 + 480);
    v19 = *(v0 + 448);
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v20 = (v18 + *(v19 + 20));
    *v20 = v16;
    v20[1] = v14;
    if (qword_100633DC0 != -1)
    {
      swift_once();
    }

    v21 = sub_1004D966C();
    *(v0 + 520) = sub_100035430(v21, qword_100671E88);
    v22 = sub_1004D964C();
    v23 = sub_1004DDF9C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "╭ ⏱️ Await for command", v24, 2u);
    }

    v26 = *(v0 + 472);
    v25 = *(v0 + 480);

    sub_100235058(v25, v26);
    v27 = sub_1004D964C();
    v28 = sub_1004DDF9C();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 472);
    if (v29)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v75 = v32;
      *v31 = 136446210;
      v33 = Player.CommandIssuance.description.getter();
      v35 = v34;
      sub_1002350BC(v30);
      v36 = sub_1000343A8(v33, v35, &v75);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v27, v28, "| issuance=%{public}s", v31, 0xCu);
      sub_100008D24(v32);
    }

    else
    {

      sub_1002350BC(v30);
    }

    v37 = *(v0 + 352);
    v38 = sub_1004D964C();
    v39 = sub_1004DDF9C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = *(v0 + 608);
      v42 = *(v0 + 344);
      v41 = *(v0 + 352);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v75 = v44;
      *v43 = 136446210;
      v45 = Player.CommandOptions.description.getter(v42, v40, v41);
      v47 = sub_1000343A8(v45, v46, &v75);

      *(v43 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v38, v39, "╰ options=%{public}s", v43, 0xCu);
      sub_100008D24(v44);
    }

    sub_100035868(*(v0 + 336), v0 + 120);
    sub_100004CB8(&qword_100639DA0);
    sub_100004CB8(&qword_10063A468);
    if (swift_dynamicCast())
    {
      sub_100008D24(v0 + 160);
    }

    swift_beginAccess();
    sub_100004CB8(&qword_100639F90);
    sub_1004D9B3C();
    swift_endAccess();
    v48 = *(v0 + 432);
    v49 = *(v0 + 440);
    v50 = *(v0 + 416);
    v71 = *(v0 + 424);
    v51 = *(v0 + 408);
    v68 = v51;
    v69 = v48;
    v52 = *(v0 + 384);
    v53 = *(v0 + 376);
    v70 = *(v0 + 360);
    v74 = *(v0 + 352);
    v73 = *(v0 + 608);
    v54 = *(v0 + 336);
    v72 = *(v0 + 344);
    sub_100042B08(&qword_10063A470, &unk_10063CDA0);
    sub_1004D9ADC();
    v55 = sub_1004DDA8C();
    *(v0 + 528) = v55;
    v56 = *(v55 - 8);
    v57 = *(v56 + 56);
    *(v0 + 536) = v57;
    *(v0 + 544) = (v56 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v57(v52, 1, 1, v55);
    (*(v50 + 16))(v48, v49, v51);
    sub_100035868(v54, v0 + 200);
    sub_1000108DC(v70, v0 + 240, &qword_100635998);
    v58 = v37;

    v59 = sub_1004DDA3C();
    v60 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v61 = (v71 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = (v61 + 47) & 0xFFFFFFFFFFFFFFF8;
    v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
    v64 = swift_allocObject();
    *(v64 + 16) = v59;
    *(v64 + 24) = &protocol witness table for MainActor;
    (*(v50 + 32))(v64 + v60, v69, v68);
    sub_100035850((v0 + 200), v64 + v61);
    *(v64 + v62) = v53;
    v65 = v64 + v63;
    *v65 = v72;
    *(v65 + 8) = v73;
    *(v65 + 16) = v74;
    v66 = v64 + ((v63 + 31) & 0xFFFFFFFFFFFFFFF8);
    v67 = *(v0 + 256);
    *v66 = *(v0 + 240);
    *(v66 + 16) = v67;
    *(v66 + 32) = *(v0 + 272);
    *(v0 + 552) = sub_10021C920(0, 0, v52, &unk_1005210B8, v64);

    return _swift_task_switch(sub_1002231BC, 0, 0);
  }
}

uint64_t sub_1002231BC()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 41;
  v5 = v0[69];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[48];
  v9 = v1[46];
  v1[2] = v2;
  v1[7] = v4;
  v1[3] = sub_1002232F8;
  v10 = swift_continuation_init();
  v6(v8, 1, 1, v7);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  v11[5] = v9;
  v11[6] = v5;

  sub_10021C920(0, 0, v8, &unk_1005210C8, v11);

  return _swift_continuation_await(v3);
}

uint64_t sub_1002232F8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 560) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = v1[63];
    v4 = v1[64];
    v5 = sub_10022365C;
  }

  else
  {
    v1[71] = v1[41];
    v3 = v1[63];
    v4 = v1[64];
    v5 = sub_10022341C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10022341C()
{
  v25 = v0;
  v1 = v0[60];
  v2 = v0[58];

  sub_100235058(v1, v2);
  v3 = sub_1004D964C();
  v4 = sub_1004DDF9C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[60];
  v7 = v0[58];
  v8 = v0[55];
  v10 = v0[51];
  v9 = v0[52];
  if (v5)
  {
    v23 = v0[51];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136446210;
    v21 = v8;
    v22 = v6;
    v13 = Player.CommandIssuance.description.getter();
    v15 = v14;
    sub_1002350BC(v7);
    v16 = sub_1000343A8(v13, v15, &v24);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "⏱️✅ Command became available (%{public}s)", v11, 0xCu);
    sub_100008D24(v12);

    (*(v9 + 8))(v21, v23);
    v17 = v22;
  }

  else
  {

    sub_1002350BC(v7);
    (*(v9 + 8))(v8, v10);
    v17 = v6;
  }

  sub_1002350BC(v17);
  v18 = v0[71];

  v19 = v0[1];

  return v19(v18);
}

uint64_t sub_10022365C()
{
  v20 = v0;
  v1 = v0[60];
  v2 = v0[57];

  sub_100235058(v1, v2);
  v3 = sub_1004D964C();
  v4 = sub_1004DDF7C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[57];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    v9 = Player.CommandIssuance.description.getter();
    v11 = v10;
    sub_1002350BC(v6);
    v12 = sub_1000343A8(v9, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "⌛️❌ Timed out waiting for command (%{public}s)", v7, 0xCu);
    sub_100008D24(v8);
  }

  else
  {

    sub_1002350BC(v6);
  }

  v13 = v0[60];
  v14 = v0[55];
  v15 = v0[51];
  v16 = v0[52];
  swift_willThrow();
  (*(v16 + 8))(v14, v15);
  sub_1002350BC(v13);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100223870(uint64_t a1)
{
  v3 = *v2;
  v3[74] = a1;
  v3[75] = v1;

  if (v1)
  {
    v4 = v3[63];
    v5 = v3[64];
    v6 = sub_100223AE8;
  }

  else
  {

    v4 = v3[63];
    v5 = v3[64];
    v6 = sub_100223990;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100223990()
{
  v1 = *(v0 + 592);

  if (v1 >> 62)
  {
    result = sub_1004DED5C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1004DEB2C();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 592) + 32);
  }

LABEL_9:

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_100223AE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100223BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 192) = v14;
  *(v8 + 200) = v15;
  *(v8 + 328) = a8;
  *(v8 + 176) = a6;
  *(v8 + 184) = a7;
  *(v8 + 160) = a4;
  *(v8 + 168) = a5;
  *(v8 + 152) = a1;
  v9 = sub_100004CB8(&qword_10063ACE8);
  *(v8 + 208) = v9;
  *(v8 + 216) = *(v9 - 8);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = sub_1004DDA4C();
  *(v8 + 240) = sub_1004DDA3C();
  v11 = sub_1004DD9BC();
  *(v8 + 248) = v11;
  *(v8 + 256) = v10;

  return _swift_task_switch(sub_100223CDC, v11, v10);
}

uint64_t sub_100223CDC()
{
  sub_100004CB8(&qword_10063A460);
  sub_1004D9ACC();
  v0[33] = sub_1004DDA3C();
  v1 = sub_100042B08(&qword_10063ACF0, &qword_10063ACE8);
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_100223DE4;
  v3 = v0[26];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 17, v3, v1);
}

uint64_t sub_100223DE4()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 264);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1004DD9BC();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100224314;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1004DD9BC();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100223F7C;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100223F7C()
{

  v0[36] = v0[17];
  v1 = v0[31];
  v2 = v0[32];

  return _swift_task_switch(sub_100223FE8, v1, v2);
}

uint64_t sub_100223FE8()
{
  v1 = *(v0 + 288);
  if (v1)
  {
    if (v1 == 1)
    {
      (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

      **(v0 + 152) = 0;

      v2 = *(v0 + 8);

      return v2();
    }

    sub_100035868(*(v0 + 168), v0 + 56);
    v4 = v1;
    sub_100004CB8(&qword_100639DA0);
    sub_100004CB8(&qword_10063AD20);
    v5 = swift_dynamicCast();
    v6 = *(v0 + 288);
    if (v5)
    {
      sub_100035850((v0 + 96), v0 + 16);
      v7 = *(v0 + 40);
      v8 = *(v0 + 48);
      sub_100008C70((v0 + 16), v7);
      v9 = (*(v8 + 24))(v4, v7, v8);
      sub_100236700(v6);
      if (v9)
      {
        v10 = *(v0 + 168);

        sub_100008D24(v0 + 16);
        sub_100004CB8(&unk_100639D70);
        v11 = swift_allocObject();
        *(v0 + 296) = v11;
        *(v11 + 16) = xmmword_100511DA0;
        sub_100035868(v10, v11 + 32);
        v12 = swift_task_alloc();
        *(v0 + 304) = v12;
        *v12 = v0;
        v12[1] = sub_1002243A0;
        v13 = *(v0 + 192);
        v14 = *(v0 + 200);
        v15 = *(v0 + 328);
        v16 = *(v0 + 184);

        return Player.perform(_:options:issuer:)(v11, v16, v15, v13, v14);
      }

      sub_100236700(*(v0 + 288));
      sub_100008D24(v0 + 16);
    }

    else
    {
      sub_100236700(*(v0 + 288));
      sub_100236700(v6);
      *(v0 + 128) = 0;
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
      sub_10001074C(v0 + 96, &qword_10063AD28);
    }
  }

  *(v0 + 264) = sub_1004DDA3C();
  v17 = sub_100042B08(&qword_10063ACF0, &qword_10063ACE8);
  v18 = swift_task_alloc();
  *(v0 + 272) = v18;
  *v18 = v0;
  v18[1] = sub_100223DE4;
  v19 = *(v0 + 208);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 136, v19, v17);
}

uint64_t sub_100224314()
{
  *(v0 + 144) = *(v0 + 280);
  sub_100004CB8(&qword_100638980);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1002243A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 312) = a1;
  *(v4 + 320) = v1;

  v5 = *(v3 + 256);
  v6 = *(v3 + 248);
  if (v1)
  {
    v7 = sub_100224634;
  }

  else
  {
    v7 = sub_100224500;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100224500()
{
  v1 = *(v0 + 312);

  if (v1 >> 62)
  {
    result = sub_1004DED5C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = *(v0 + 288);

    sub_100236700(v5);
    v3 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1004DEB2C();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 312) + 32);
  }

  v4 = *(v0 + 288);

  sub_100236700(v4);
LABEL_9:
  (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
  **(v0 + 152) = v3;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100224634()
{
  v1 = v0[36];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];

  sub_100236700(v1);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t Player.perform(_:options:issuer:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 112) = a3;
  *(v6 + 16) = a1;
  sub_1004DDA4C();
  *(v6 + 56) = sub_1004DDA3C();
  v8 = sub_1004DD9BC();
  *(v6 + 64) = v8;
  *(v6 + 72) = v7;

  return _swift_task_switch(sub_100224778, v8, v7);
}

{
  *(v6 + 272) = a5;
  *(v6 + 280) = v5;
  *(v6 + 256) = a2;
  *(v6 + 264) = a4;
  *(v6 + 512) = a3;
  *(v6 + 248) = a1;
  v7 = type metadata accessor for Player.CommandIssuance();
  *(v6 + 288) = v7;
  v8 = *(v7 - 8);
  *(v6 + 296) = v8;
  *(v6 + 304) = *(v8 + 64);
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = sub_1004DDA4C();
  *(v6 + 400) = sub_1004DDA3C();
  v10 = sub_1004DD9BC();
  *(v6 + 408) = v10;
  *(v6 + 416) = v9;

  return _swift_task_switch(sub_100224C4C, v10, v9);
}

uint64_t sub_100224778()
{
  v1 = *(v0 + 16);
  sub_100004CB8(&unk_100639D70);
  v2 = swift_allocObject();
  *(v0 + 80) = v2;
  *(v2 + 16) = xmmword_100511DA0;
  sub_100035868(v1, v2 + 32);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_100224858;
  v4 = *(v0 + 40);
  v5 = *(v0 + 112);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);

  return Player.perform(_:options:issuer:)(v2, v6, v5, v7, v4);
}

uint64_t sub_100224858(uint64_t a1)
{
  v3 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v4 = v3[8];
    v5 = v3[9];
    v6 = sub_100224A64;
  }

  else
  {

    v4 = v3[8];
    v5 = v3[9];
    v6 = sub_100224974;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100224974()
{
  v1 = *(v0 + 96);

  if (v1 >> 62)
  {
    result = sub_1004DED5C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1004DEB2C();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 96) + 32);
  }

LABEL_9:
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_100224A64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100224C4C()
{
  v77 = v0;
  v1 = *(*(v0 + 248) + 16);
  *(v0 + 424) = v1;
  if (v1)
  {
    sub_1000108DC(*(v0 + 272), v0 + 128, &qword_100635998);
    v2 = *(v0 + 152);
    if (v2)
    {
      v3 = *(v0 + 160);
      sub_100008C70((v0 + 128), *(v0 + 152));
      v4 = (*(v3 + 8))(v2, v3);
      v2 = v5;
      sub_100008D24(v0 + 128);
    }

    else
    {
      sub_10001074C(v0 + 128, &qword_100635998);
      v4 = 0;
    }

    v8 = *(v0 + 384);
    v9 = *(v0 + 288);
    v10 = *(v0 + 248);
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v11 = (v8 + *(v9 + 20));
    *v11 = v4;
    v11[1] = v2;
    *(v0 + 513) = sub_100227924(v10) & 1;
    if (v1 == 1)
    {
      v12 = 0x646E616D6D6F63;
    }

    else
    {
      v12 = 0x73646E616D6D6F63;
    }

    if (v1 == 1)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = 0xE800000000000000;
    }

    if (qword_100633DC0 != -1)
    {
      swift_once();
    }

    v14 = sub_1004D966C();
    *(v0 + 432) = sub_100035430(v14, qword_100671E88);

    v15 = sub_1004D964C();
    v16 = sub_1004DDF9C();

    v75 = v12;
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v76 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1000343A8(v12, v13, &v76);
      _os_log_impl(&_mh_execute_header, v15, v16, "╭ Will perform %s…", v17, 0xCu);
      sub_100008D24(v18);
    }

    sub_100235058(*(v0 + 384), *(v0 + 376));
    v19 = sub_1004D964C();
    v20 = sub_1004DDF9C();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 376);
    if (v21)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v76 = v24;
      *v23 = 136446210;
      v25 = Player.CommandIssuance.description.getter();
      v27 = v26;
      sub_1002350BC(v22);
      v28 = sub_1000343A8(v25, v27, &v76);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v19, v20, "| issuance=%{public}s", v23, 0xCu);
      sub_100008D24(v24);
    }

    else
    {

      sub_1002350BC(v22);
    }

    v29 = sub_1004D964C();
    v30 = sub_1004DDF9C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v76 = v32;
      *v31 = 136446210;
      sub_100004CB8(&qword_100639DA0);
      v33 = sub_1004DD88C();
      v35 = sub_1000343A8(v33, v34, &v76);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "| %{public}s", v31, 0xCu);
      sub_100008D24(v32);
    }

    v36 = *(v0 + 264);
    v37 = sub_1004D964C();
    v38 = sub_1004DDF9C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = *(v0 + 512);
      v41 = *(v0 + 256);
      v40 = *(v0 + 264);
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v76 = v43;
      *v42 = 136446210;
      v44 = Player.CommandOptions.description.getter(v41, v39, v40);
      v46 = sub_1000343A8(v44, v45, &v76);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v37, v38, "╰ options=%{public}s", v42, 0xCu);
      sub_100008D24(v43);
    }

    v47 = *(v0 + 280);
    v48 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
    swift_beginAccess();
    if (*(v47 + v48) != 2)
    {

      v49 = sub_1004D964C();
      v50 = sub_1004DDF9C();

      v74 = v47;
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v76 = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_1000343A8(v75, v13, &v76);
        _os_log_impl(&_mh_execute_header, v49, v50, "╭ 🕛 Pausing execution for %s", v51, 0xCu);
        sub_100008D24(v52);
      }

      sub_100235058(*(v0 + 384), *(v0 + 368));
      v53 = sub_1004D964C();
      v54 = sub_1004DDF9C();
      v55 = os_log_type_enabled(v53, v54);
      v56 = *(v0 + 368);
      if (v55)
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v76 = v58;
        *v57 = 136446210;
        v59 = Player.CommandIssuance.description.getter();
        v61 = v60;
        sub_1002350BC(v56);
        v62 = sub_1000343A8(v59, v61, &v76);

        *(v57 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v53, v54, "| issuance=%{public}s", v57, 0xCu);
        sub_100008D24(v58);
      }

      else
      {

        sub_1002350BC(v56);
      }

      v63 = sub_1004D964C();
      v64 = sub_1004DDF9C();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v76 = v66;
        *v65 = 136446210;
        if (*(v74 + v48) > 1u)
        {
          if (*(v74 + v48) == 2)
          {
            v67 = 0xA900000000000079;
            v68 = 0x6461655220859CE2;
          }

          else
          {
            v67 = 0xAE0064656C6C6174;
            v68 = 0x53208FB8EFA09AE2;
          }
        }

        else if (*(v74 + v48))
        {
          v67 = 0xAD0000676E697472;
          v68 = 0x61745320809A9FF0;
        }

        else
        {
          v67 = 0xA700000000000000;
          v68 = 0x66664F208C9DE2;
        }

        v69 = sub_1000343A8(v68, v67, &v76);

        *(v65 + 4) = v69;
        _os_log_impl(&_mh_execute_header, v63, v64, "| engine state=%{public}s)", v65, 0xCu);
        sub_100008D24(v66);
      }

      v70 = sub_1004D964C();
      v71 = sub_1004DDF9C();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&_mh_execute_header, v70, v71, "╰ Awaiting on engine to be ready", v72, 2u);
      }
    }

    v73 = swift_task_alloc();
    *(v0 + 440) = v73;
    *v73 = v0;
    v73[1] = sub_100225658;

    return Player.startEngineIfNeeded()();
  }

  else
  {

    v6 = *(v0 + 8);

    return v6(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100225658()
{
  v1 = *v0;

  v2 = *(v1 + 416);
  v3 = *(v1 + 408);

  return _swift_task_switch(sub_100225778, v3, v2);
}

uint64_t sub_100225778()
{
  v112 = v0;
  v1 = *(v0 + 264);
  if (v1)
  {
    v2 = 0xE800000000000000;
    v3 = objc_allocWithZone(MPCPlayerRequest);
    v4 = v1;
    v5 = [v3 init];
    *(v0 + 448) = v5;

    v6 = sub_1004D964C();
    v7 = sub_1004DDF9C();

    if (os_log_type_enabled(v6, v7))
    {
      if (*(v0 + 424) == 1)
      {
        v8 = 0x646E616D6D6F63;
      }

      else
      {
        v8 = 0x73646E616D6D6F63;
      }

      if (*(v0 + 424) == 1)
      {
        v2 = 0xE700000000000000;
      }

      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v111[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1000343A8(v8, v2, v111);
      _os_log_impl(&_mh_execute_header, v6, v7, "╭ 🔊 Resolving specified route for %s", v9, 0xCu);
      sub_100008D24(v10);
    }

    sub_100235058(*(v0 + 384), *(v0 + 360));
    v11 = sub_1004D964C();
    v12 = sub_1004DDF9C();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 360);
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v111[0] = v16;
      *v15 = 136446210;
      v17 = Player.CommandIssuance.description.getter();
      v19 = v18;
      sub_1002350BC(v14);
      v20 = sub_1000343A8(v17, v19, v111);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "| issuance=%{public}s", v15, 0xCu);
      sub_100008D24(v16);
    }

    else
    {

      sub_1002350BC(v14);
    }

    v40 = *(v0 + 264);
    v41 = sub_1004D964C();
    v42 = sub_1004DDF9C();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = *(v0 + 264);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v111[0] = v45;
      *v44 = 136446210;
      v46 = v43;
      v47 = [v46 description];
      v48 = sub_1004DD43C();
      v50 = v49;

      v51 = sub_1000343A8(v48, v50, v111);

      *(v44 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v41, v42, "╰ 🔊 Route=%{public}s", v44, 0xCu);
      sub_100008D24(v45);
    }

    v52 = *(v0 + 264);
    v53 = objc_opt_self();
    v54 = qword_100633D90;
    v55 = v52;
    if (v54 != -1)
    {
      swift_once();
    }

    v56 = *(v0 + 280);
    v57 = *(v0 + 264);
    v58 = sub_1004DD3FC();
    v59 = [v53 systemMusicPathWithRoute:v57 playerID:v58];

    [v5 setPlayerPath:v59];
    v60 = OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration;
    swift_beginAccess();
    [v5 setPlayingItemProperties:*(v56 + v60)];
    v61 = sub_1004DDA3C();
    *(v0 + 456) = v61;
    if (v61)
    {
      swift_getObjectType();
      v62 = sub_1004DD9BC();
      v64 = v63;
    }

    else
    {
      v62 = 0;
      v64 = 0;
    }

    return _swift_task_switch(sub_100226430, v62, v64);
  }

  else
  {
    if (*(v0 + 513))
    {
      v21 = 232;
    }

    else
    {
      v21 = 216;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    v22 = *(v0 + v21);
    *(v0 + 480) = v22;
    if (v22)
    {
      v23 = 0xE800000000000000;

      v24 = v22;
      v25 = sub_1004D964C();
      v26 = sub_1004DDF9C();

      if (os_log_type_enabled(v25, v26))
      {
        if (*(v0 + 424) == 1)
        {
          v27 = 0x646E616D6D6F63;
        }

        else
        {
          v27 = 0x73646E616D6D6F63;
        }

        if (*(v0 + 424) == 1)
        {
          v23 = 0xE700000000000000;
        }

        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v111[0] = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_1000343A8(v27, v23, v111);
        _os_log_impl(&_mh_execute_header, v25, v26, "╭ Performing %s", v28, 0xCu);
        sub_100008D24(v29);
      }

      sub_100235058(*(v0 + 384), *(v0 + 344));
      v30 = sub_1004D964C();
      v31 = sub_1004DDF9C();
      v32 = os_log_type_enabled(v30, v31);
      v33 = *(v0 + 344);
      if (v32)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v111[0] = v35;
        *v34 = 136446210;
        v36 = Player.CommandIssuance.description.getter();
        v38 = v37;
        sub_1002350BC(v33);
        v39 = sub_1000343A8(v36, v38, v111);

        *(v34 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v30, v31, "| issuance=%{public}s", v34, 0xCu);
        sub_100008D24(v35);
      }

      else
      {

        sub_1002350BC(v33);
      }

      v79 = sub_1004D964C();
      v80 = sub_1004DDF9C();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = *(v0 + 513);
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v111[0] = v83;
        *v82 = 136446210;
        if (v81)
        {
          v84 = 0xD000000000000014;
        }

        else
        {
          v84 = 0x5220726579616C50;
        }

        if (v81)
        {
          v85 = 0x80000001004F1700;
        }

        else
        {
          v85 = 0xEF65736E6F707365;
        }

        v86 = sub_1000343A8(v84, v85, v111);

        *(v82 + 4) = v86;
        _os_log_impl(&_mh_execute_header, v79, v80, "| on=%{public}s", v82, 0xCu);
        sub_100008D24(v83);
      }

      v87 = v24;
      v88 = sub_1004D964C();
      v89 = sub_1004DDF9C();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v111[0] = v91;
        *v90 = 136446210;
        v92 = [v87 playerPath];
        v93 = [v92 description];
        v94 = sub_1004DD43C();
        v96 = v95;

        v97 = sub_1000343A8(v94, v96, v111);

        *(v90 + 4) = v97;
        _os_log_impl(&_mh_execute_header, v88, v89, "╰ playerPath=%{public}s", v90, 0xCu);
        sub_100008D24(v91);
      }

      v98 = *(v0 + 336);
      v99 = *(v0 + 288);
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v100 = (v98 + *(v99 + 20));
      *v100 = 0;
      v100[1] = 0;
      v101 = swift_task_alloc();
      *(v0 + 488) = v101;
      *v101 = v0;
      v101[1] = sub_100227088;
      v102 = *(v0 + 336);
      v103 = *(v0 + 512);
      v105 = *(v0 + 248);
      v104 = *(v0 + 256);

      return sub_10023B314(v105, v102, v104, v103);
    }

    else
    {
      v65 = *(v0 + 384);
      v66 = *(v0 + 312);

      v67 = 0xE700000000000000;
      sub_100235058(v65, v66);

      v68 = sub_1004D964C();
      v69 = sub_1004DDF7C();

      v70 = os_log_type_enabled(v68, v69);
      v71 = *(v0 + 312);
      if (v70)
      {
        if (*(v0 + 424) == 1)
        {
          v72 = 0x646E616D6D6F63;
        }

        else
        {
          v67 = 0xE800000000000000;
          v72 = 0x73646E616D6D6F63;
        }

        v73 = swift_slowAlloc();
        v111[0] = swift_slowAlloc();
        *v73 = 136315394;
        v74 = sub_1000343A8(v72, v67, v111);

        *(v73 + 4) = v74;
        *(v73 + 12) = 2082;
        v75 = Player.CommandIssuance.description.getter();
        v77 = v76;
        sub_1002350BC(v71);
        v78 = sub_1000343A8(v75, v77, v111);

        *(v73 + 14) = v78;
        _os_log_impl(&_mh_execute_header, v68, v69, "╭ ❌ Unavailable %s\n| issuance=%{public}s\n╰ error=nil MPCPlayerResponse", v73, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1002350BC(v71);
      }

      v106 = *(v0 + 248);
      sub_1002354A8();
      swift_allocError();
      *v107 = v106;
      *(v107 + 40) = 1;
      swift_willThrow();
      v108 = *(v0 + 384);

      sub_1002350BC(v108);

      v109 = *(v0 + 8);

      return v109();
    }
  }
}

uint64_t sub_100226430()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 30;
  v23 = v0[56];
  v6 = v0[53];
  v7 = v0[48];
  v8 = v0[44];
  v11 = v0 + 37;
  v9 = v0[37];
  v10 = v11[1];
  v21 = v1[33];
  v22 = v3;
  if (v6 == 1)
  {
    v12 = 0xE700000000000000;
  }

  else
  {
    v12 = 0xE800000000000000;
  }

  if (v6 == 1)
  {
    v13 = 0x646E616D6D6F63;
  }

  else
  {
    v13 = 0x73646E616D6D6F63;
  }

  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_10022665C;
  v14 = swift_continuation_init();
  sub_100235058(v7, v8);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v12;
  sub_100237554(v8, v17 + v15, type metadata accessor for Player.CommandIssuance);
  *(v17 + v16) = v21;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v14;
  v1[14] = sub_10023560C;
  v1[15] = v17;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100022450;
  v1[13] = &unk_1005E5DF8;
  v18 = _Block_copy(v4);

  v19 = v21;

  [v23 performWithCompletion:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();

  return _swift_continuation_await(v22);
}

uint64_t sub_10022665C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 464) = v2;
  if (v2)
  {

    swift_willThrow();

    v3 = v1[51];
    v4 = v1[52];
    v5 = sub_100226F7C;
  }

  else
  {

    v1[59] = v1[30];
    v3 = v1[51];
    v4 = v1[52];
    v5 = sub_1002267C4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1002267C4()
{
  v67 = v0;
  v1 = *(v0 + 264);

  v2 = *(v0 + 472);
  *(v0 + 480) = v2;
  if (v2)
  {
    v3 = 0xE800000000000000;

    v4 = v2;
    v5 = sub_1004D964C();
    v6 = sub_1004DDF9C();

    if (os_log_type_enabled(v5, v6))
    {
      if (*(v0 + 424) == 1)
      {
        v7 = 0x646E616D6D6F63;
      }

      else
      {
        v7 = 0x73646E616D6D6F63;
      }

      if (*(v0 + 424) == 1)
      {
        v3 = 0xE700000000000000;
      }

      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v66[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1000343A8(v7, v3, v66);
      _os_log_impl(&_mh_execute_header, v5, v6, "╭ Performing %s", v8, 0xCu);
      sub_100008D24(v9);
    }

    sub_100235058(*(v0 + 384), *(v0 + 344));
    v10 = sub_1004D964C();
    v11 = sub_1004DDF9C();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 344);
    if (v12)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v66[0] = v15;
      *v14 = 136446210;
      v16 = Player.CommandIssuance.description.getter();
      v18 = v17;
      sub_1002350BC(v13);
      v19 = sub_1000343A8(v16, v18, v66);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "| issuance=%{public}s", v14, 0xCu);
      sub_100008D24(v15);
    }

    else
    {

      sub_1002350BC(v13);
    }

    v34 = sub_1004D964C();
    v35 = sub_1004DDF9C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = *(v0 + 513);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v66[0] = v38;
      *v37 = 136446210;
      if (v36)
      {
        v39 = 0xD000000000000014;
      }

      else
      {
        v39 = 0x5220726579616C50;
      }

      if (v36)
      {
        v40 = 0x80000001004F1700;
      }

      else
      {
        v40 = 0xEF65736E6F707365;
      }

      v41 = sub_1000343A8(v39, v40, v66);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "| on=%{public}s", v37, 0xCu);
      sub_100008D24(v38);
    }

    v42 = v4;
    v43 = sub_1004D964C();
    v44 = sub_1004DDF9C();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v66[0] = v46;
      *v45 = 136446210;
      v47 = [v42 playerPath];
      v48 = [v47 description];
      v49 = sub_1004DD43C();
      v51 = v50;

      v52 = sub_1000343A8(v49, v51, v66);

      *(v45 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v43, v44, "╰ playerPath=%{public}s", v45, 0xCu);
      sub_100008D24(v46);
    }

    v53 = *(v0 + 336);
    v54 = *(v0 + 288);
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v55 = (v53 + *(v54 + 20));
    *v55 = 0;
    v55[1] = 0;
    v56 = swift_task_alloc();
    *(v0 + 488) = v56;
    *v56 = v0;
    v56[1] = sub_100227088;
    v57 = *(v0 + 336);
    v58 = *(v0 + 512);
    v60 = *(v0 + 248);
    v59 = *(v0 + 256);

    return sub_10023B314(v60, v57, v59, v58);
  }

  else
  {
    v20 = *(v0 + 384);
    v21 = *(v0 + 312);

    v22 = 0xE700000000000000;
    sub_100235058(v20, v21);

    v23 = sub_1004D964C();
    v24 = sub_1004DDF7C();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 312);
    if (v25)
    {
      if (*(v0 + 424) == 1)
      {
        v27 = 0x646E616D6D6F63;
      }

      else
      {
        v22 = 0xE800000000000000;
        v27 = 0x73646E616D6D6F63;
      }

      v28 = swift_slowAlloc();
      v66[0] = swift_slowAlloc();
      *v28 = 136315394;
      v29 = sub_1000343A8(v27, v22, v66);

      *(v28 + 4) = v29;
      *(v28 + 12) = 2082;
      v30 = Player.CommandIssuance.description.getter();
      v32 = v31;
      sub_1002350BC(v26);
      v33 = sub_1000343A8(v30, v32, v66);

      *(v28 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "╭ ❌ Unavailable %s\n| issuance=%{public}s\n╰ error=nil MPCPlayerResponse", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1002350BC(v26);
    }

    v62 = *(v0 + 248);
    sub_1002354A8();
    swift_allocError();
    *v63 = v62;
    *(v63 + 40) = 1;
    swift_willThrow();
    v64 = *(v0 + 384);

    sub_1002350BC(v64);

    v65 = *(v0 + 8);

    return v65();
  }
}

uint64_t sub_100226F7C()
{
  v1 = *(v0 + 264);

  sub_1002350BC(*(v0 + 384));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100227088(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[62] = a1;
  v4[63] = v1;

  sub_1002350BC(v3[42]);
  v5 = v3[52];
  v6 = v3[51];
  if (v1)
  {
    v7 = sub_100227614;
  }

  else
  {
    v7 = sub_1002271E4;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1002271E4()
{
  v34 = v0;

  v1 = sub_1004D964C();
  v2 = sub_1004DDF9C();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[53];
  if (v3)
  {
    v5 = v4 == 1;
    if (v4 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }

    if (v5)
    {
      v7 = 0x646E616D6D6F63;
    }

    else
    {
      v7 = 0x73646E616D6D6F63;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v8 = 136315138;
    v10 = sub_1000343A8(v7, v6, &v33);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "╭ ✅ Successfully performed %s", v8, 0xCu);
    sub_100008D24(v9);
  }

  else
  {
  }

  sub_100235058(v0[48], v0[40]);
  v11 = sub_1004D964C();
  v12 = sub_1004DDF9C();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[40];
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136446210;
    v17 = Player.CommandIssuance.description.getter();
    v19 = v18;
    sub_1002350BC(v14);
    v20 = sub_1000343A8(v17, v19, &v33);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "| issuance=%{public}s", v15, 0xCu);
    sub_100008D24(v16);
  }

  else
  {

    sub_1002350BC(v14);
  }

  v21 = sub_1004D964C();
  v22 = sub_1004DDF9C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = v0[60];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v33 = v25;
    *v24 = 136446210;
    sub_100006F10(0, &qword_10063A490);
    v26 = sub_1004DD88C();
    v28 = sub_1000343A8(v26, v27, &v33);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "╰ statuses=%{public}s", v24, 0xCu);
    sub_100008D24(v25);
  }

  else
  {
    v29 = v0[60];
  }

  sub_1002350BC(v0[48]);
  v32 = v0[62];

  v30 = v0[1];

  return v30(v32);
}

uint64_t sub_100227614()
{
  v23 = v0;
  v1 = v0[48];
  v2 = v0[41];

  v3 = 0xE800000000000000;
  sub_100235058(v1, v2);

  swift_errorRetain();
  v4 = sub_1004D964C();
  v5 = sub_1004DDF7C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[63];
    v7 = v0[41];
    if (v0[53] == 1)
    {
      v3 = 0xE700000000000000;
      v8 = 0x646E616D6D6F63;
    }

    else
    {
      v8 = 0x73646E616D6D6F63;
    }

    v9 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v9 = 136315650;
    v10 = sub_1000343A8(v8, v3, v22);

    *(v9 + 4) = v10;
    *(v9 + 12) = 2082;
    v11 = Player.CommandIssuance.description.getter();
    v13 = v12;
    sub_1002350BC(v7);
    v14 = sub_1000343A8(v11, v13, v22);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2082;
    v0[28] = v6;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v15 = sub_1004DD4DC();
    v17 = sub_1000343A8(v15, v16, v22);

    *(v9 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "╭ ❌ Failed to perform commands %s\n| issuance=%{public}s\n╰ error=%{public}s", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v18 = v0[41];

    sub_1002350BC(v18);
  }

  v19 = v0[60];
  swift_willThrow();

  sub_1002350BC(v0[48]);

  v20 = v0[1];

  return v20();
}

uint64_t sub_100227924(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
LABEL_8:
    v6 = 0;
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    goto LABEL_9;
  }

  v2 = a1 + 32;
  while (1)
  {
    sub_100035868(v2, v9);
    sub_100035868(v9, &v8);
    sub_100004CB8(&qword_100639DA0);
    sub_100004CB8(&qword_10063A468);
    if (swift_dynamicCast())
    {
      break;
    }

    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    sub_10001074C(&v10, &qword_10063ACF8);
LABEL_4:
    sub_100008D24(v9);
    v2 += 40;
    if (!--v1)
    {
      goto LABEL_8;
    }
  }

  v3 = *(&v11 + 1);
  v4 = v12;
  sub_100008C70(&v10, *(&v11 + 1));
  v5 = (*(v4 + 16))(v3, v4);
  sub_100008D24(&v10);
  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

  sub_100035850(v9, &v10);
  v6 = 1;
LABEL_9:
  sub_10001074C(&v10, &qword_10063AD00);
  return v6;
}

uint64_t sub_100227AA4(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v73 = a6;
  v74 = a7;
  v12 = type metadata accessor for Player.CommandIssuance();
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v72 - v16;
  if (a1)
  {
    v18 = qword_100633DC0;
    v19 = a1;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = sub_1004D966C();
    sub_100035430(v20, qword_100671E88);

    v21 = sub_1004D964C();
    v22 = sub_1004DDF9C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v75 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1000343A8(a3, a4, &v75);
      _os_log_impl(&_mh_execute_header, v21, v22, "╭ 🔊✅ Successfully resolved specified route for %s", v23, 0xCu);
      sub_100008D24(v24);
    }

    sub_100235058(a5, v17);
    v25 = sub_1004D964C();
    v26 = sub_1004DDF9C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v75 = v28;
      *v27 = 136446210;
      v29 = Player.CommandIssuance.description.getter();
      v31 = v30;
      sub_1002350BC(v17);
      v32 = sub_1000343A8(v29, v31, &v75);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "| issuance=%{public}s", v27, 0xCu);
      sub_100008D24(v28);
    }

    else
    {

      sub_1002350BC(v17);
    }

    v46 = v73;
    v47 = sub_1004D964C();
    v48 = sub_1004DDF9C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v75 = v50;
      *v49 = 136446210;
      v51 = v46;
      v52 = [v51 description];
      v53 = sub_1004DD43C();
      v55 = v54;

      v56 = sub_1000343A8(v53, v55, &v75);

      *(v49 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v47, v48, "╰ 🔊 Route=%{public}s", v49, 0xCu);
      sub_100008D24(v50);
    }

    **(*(v74 + 64) + 40) = a1;
    return swift_continuation_throwingResume();
  }

  else
  {
    if (qword_100633DC0 != -1)
    {
      swift_once();
    }

    v33 = sub_1004D966C();
    sub_100035430(v33, qword_100671E88);

    v34 = sub_1004D964C();
    v35 = sub_1004DDF7C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v75 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_1000343A8(a3, a4, &v75);
      _os_log_impl(&_mh_execute_header, v34, v35, "╭ 🔊❌ Failed to resolve specified route for %s", v36, 0xCu);
      sub_100008D24(v37);
    }

    sub_100235058(a5, v15);
    v38 = sub_1004D964C();
    v39 = sub_1004DDF7C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v75 = v41;
      *v40 = 136446210;
      v42 = Player.CommandIssuance.description.getter();
      v44 = v43;
      sub_1002350BC(v15);
      v45 = sub_1000343A8(v42, v44, &v75);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v38, v39, "| issuance=%{public}s", v40, 0xCu);
      sub_100008D24(v41);
    }

    else
    {

      sub_1002350BC(v15);
    }

    v58 = v73;
    v59 = sub_1004D964C();
    v60 = sub_1004DDF7C();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v75 = v62;
      *v61 = 136446210;
      v63 = v58;
      v64 = [v63 description];
      v65 = sub_1004DD43C();
      v67 = v66;

      v68 = sub_1000343A8(v65, v67, &v75);

      *(v61 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v59, v60, "╰ 🔊 Route=%{public}s", v61, 0xCu);
      sub_100008D24(v62);
    }

    if (a2)
    {
      v69 = a2;
    }

    else
    {
      sub_1002354A8();
      v69 = swift_allocError();
      *v70 = 0u;
      *(v70 + 16) = 0u;
      *(v70 + 32) = 0;
      *(v70 + 40) = 2;
    }

    sub_100004CB8(&qword_100638980);
    swift_allocError();
    *v71 = v69;
    swift_errorRetain();
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t Player.prepareForBufferedAirPlay()()
{
  v1[60] = v0;
  v1[61] = *v0;
  sub_100004CB8(&qword_100635240);
  v1[62] = swift_task_alloc();
  v1[63] = sub_1004DDA4C();
  v1[64] = sub_1004DDA3C();
  v3 = sub_1004DD9BC();
  v1[65] = v3;
  v1[66] = v2;

  return _swift_task_switch(sub_100228330, v3, v2);
}

uint64_t sub_100228330()
{
  v35 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v1 = v0[56];
  v2 = [v1 route];
  v0[67] = v2;

  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {

      goto LABEL_9;
    }

    v4 = v3;
    v5 = v2;
    if ([v4 isDeviceRoute])
    {

LABEL_9:

      v10 = v0[1];

      return v10(v2);
    }

    v11 = [objc_allocWithZone(MPAVEndpointRoutingDataSource) init];
    v12 = objc_allocWithZone(MPAVRoutingController);
    v13 = sub_1004DD3FC();
    v14 = [v12 initWithDataSource:v11 name:v13];
    v0[68] = v14;

    if (qword_100633DC0 != -1)
    {
      swift_once();
    }

    v15 = sub_1004D966C();
    v0[69] = sub_100035430(v15, qword_100671E88);
    v16 = v5;
    v17 = sub_1004D964C();
    v18 = sub_1004DDF9C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = v20;
      *v19 = 136446210;
      v21 = v16;
      v22 = [v21 description];
      v23 = sub_1004DD43C();
      v25 = v24;

      v26 = sub_1000343A8(v23, v25, &v34);

      *(v19 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "🚏 Switching to buffered AirPlay onto route=%{public}s", v19, 0xCu);
      sub_100008D24(v20);
    }

    v27 = v0[60];
    v28 = OBJC_IVAR____TtC9MusicCore6Player_routingController;
    v0[70] = OBJC_IVAR____TtC9MusicCore6Player_routingController;
    v29 = *(v27 + v28);
    *(v27 + v28) = v14;
    v30 = v14;

    v31 = objc_opt_self();
    v0[71] = v31;
    v0[2] = v0;
    v0[3] = sub_100228834;
    v32 = swift_continuation_init();
    v33 = sub_100004CB8(&unk_10063A4A0);
    v0[72] = v33;
    v0[41] = v33;
    v0[34] = _NSConcreteStackBlock;
    v0[35] = 1107296256;
    v0[36] = sub_1000FD4C4;
    v0[37] = &unk_1005E5E20;
    v0[38] = v32;
    [v31 setActiveRoute:0 completion:v0 + 34];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    v6 = v0[57];
    sub_1002356C8();
    swift_allocError();
    *v7 = v6;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100228834()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 584) = v2;
  v3 = *(v1 + 528);
  v4 = *(v1 + 520);
  if (v2)
  {
    v5 = sub_10022984C;
  }

  else
  {
    v5 = sub_100228964;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100228964()
{
  v1 = v0[72];
  v2 = v0[68];
  v3 = v0[67];
  v0[10] = v0;
  v0[11] = sub_100228A74;
  v4 = swift_continuation_init();
  v0[49] = v1;
  v0[42] = _NSConcreteStackBlock;
  v0[43] = 1107296256;
  v0[44] = sub_1000FD4C4;
  v0[45] = &unk_1005E5E48;
  v0[46] = v4;
  [v2 selectRoute:v3 operation:0 completion:v0 + 42];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_100228A74()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 592) = v2;
  v3 = *(v1 + 528);
  v4 = *(v1 + 520);
  if (v2)
  {
    v5 = sub_100229AAC;
  }

  else
  {
    v5 = sub_100228BA4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100228BA4()
{
  v1 = sub_1004DDA3C();
  *(v0 + 600) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = sub_1004DD9BC();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_100228C38, v2, v4);
}

uint64_t sub_100228C38()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 18;
  v4 = v0 + 50;
  v5 = v0 + 59;
  v6 = v0[71];
  v1[18] = v2;
  v1[23] = v5;
  v1[19] = sub_100228D84;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[54] = sub_100235758;
  v1[55] = v8;
  v1[50] = _NSConcreteStackBlock;
  v1[51] = 1107296256;
  v1[52] = sub_100014F1C;
  v1[53] = &unk_1005E5E98;
  v9 = _Block_copy(v4);

  [v6 getActiveRouteWithTimeout:v9 completion:2.0];
  _Block_release(v9);

  return _swift_continuation_await(v3);
}

uint64_t sub_100228D84()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 608) = v2;
  if (v2)
  {
    swift_willThrow();

    v3 = v1[66];
    v4 = v1[65];
    v5 = sub_100229158;
  }

  else
  {

    v1[77] = v1[59];
    v3 = v1[66];
    v4 = v1[65];
    v5 = sub_100228EDC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100228EDC()
{
  v23 = v0;
  v1 = *(v0 + 616);
  v2 = sub_1004D964C();
  v3 = sub_1004DDF9C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 616);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136446210;
    v7 = v4;
    v8 = [v7 description];
    v9 = sub_1004DD43C();
    v11 = v10;

    v12 = sub_1000343A8(v9, v11, &v22);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "🚏 Awaiting updated player response for route=%{public}s", v5, 0xCu);
    sub_100008D24(v6);
  }

  v13 = *(v0 + 496);
  v14 = *(v0 + 480);
  v15 = *(v0 + 616);

  sub_10022D950(v15);

  v16 = sub_1004DDA8C();
  *(v0 + 624) = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  *(v0 + 632) = v18;
  *(v0 + 640) = (v17 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v18(v13, 1, 1, v16);

  v19 = sub_1004DDA3C();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v14;
  *(v0 + 648) = sub_10011F560(0, 0, v13, &unk_100521108, v20);

  return _swift_task_switch(sub_100229208, 0, 0);
}

uint64_t sub_100229158()
{
  v1 = v0[70];
  v2 = v0[60];

  v3 = *(v2 + v1);
  v4 = v0[68];
  if (v3 && v4 == v3)
  {
    v5 = v0[67];
    *(v0[60] + v0[70]) = 0;
  }

  else
  {
    v5 = v0[67];
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_100229208()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 26;
  v4 = v0[81];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[62];
  v1[26] = v2;
  v1[27] = sub_10022933C;
  v8 = swift_continuation_init();
  v5(v7, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  v9[5] = 0x4014000000000000;
  v9[6] = v4;

  sub_10021C674(0, 0, v7, &unk_100521118, v9);

  return _swift_continuation_await(v3);
}

uint64_t sub_10022933C()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  *(*v0 + 656) = v2;
  if (v2)
  {

    swift_willThrow();
    v3 = *(v1 + 528);
    v4 = *(v1 + 520);
    v5 = sub_100229654;
  }

  else
  {
    v3 = *(v1 + 528);
    v4 = *(v1 + 520);
    v5 = sub_100229468;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100229468()
{
  v23 = v0;
  v1 = v0[77];

  v2 = v1;
  v3 = sub_1004D964C();
  v4 = sub_1004DDF9C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[77];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136446210;
    v6 = v6;
    v9 = [v6 description];
    v10 = sub_1004DD43C();
    v12 = v11;

    v13 = sub_1000343A8(v10, v12, &v22);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "🚏✅ Successfully switched to buffered AirPlay onto route=%{public}s", v7, 0xCu);
    sub_100008D24(v8);
  }

  v14 = v0[70];
  v15 = v0[60];
  v16 = *(v15 + v14);
  v17 = v0[68];
  if (v16)
  {
    v18 = v0[67];
    if (v17 == v16)
    {
      *(v15 + v14) = 0;
    }
  }

  else
  {
    v18 = v0[67];
  }

  v19 = v0[77];

  v20 = v0[1];

  return v20(v19);
}

uint64_t sub_100229654()
{
  v23 = v0;
  v1 = v0[77];

  v2 = v1;
  v3 = sub_1004D964C();
  v4 = sub_1004DDF7C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[77];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136446210;
    v8 = v5;
    v9 = [v8 description];
    v10 = sub_1004DD43C();
    v12 = v11;

    v13 = sub_1000343A8(v10, v12, &v22);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "🚏❌ Timed out waiting for a valid ReplaceCommand on route=%{public}s", v6, 0xCu);
    sub_100008D24(v7);
  }

  v14 = v0[77];
  v15 = v0[70];
  v16 = v0[60];
  swift_willThrow();

  v17 = *(v16 + v15);
  v18 = v0[68];
  if (v17 && v18 == v17)
  {
    v19 = v0[67];
    *(v0[60] + v0[70]) = 0;
  }

  else
  {
    v19 = v0[67];
  }

  v20 = v0[1];

  return v20();
}