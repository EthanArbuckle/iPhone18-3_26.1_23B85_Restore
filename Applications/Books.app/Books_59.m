uint64_t BookReaderAccessoryHighlightsController.adornmentState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_adornmentState;
  swift_beginAccess();
  v4 = sub_10079F594();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t BookReaderAccessoryHighlightsController.adornmentState.setter(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_10079F594();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_adornmentState;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v7, v2 + v11, v4);
  sub_10073876C(&qword_100AF71D0, &type metadata accessor for BookContentAdornmentState);
  LOBYTE(v11) = sub_1007A2124();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if ((v11 & 1) == 0)
  {
    sub_10072FDAC();
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

void (*BookReaderAccessoryHighlightsController.adornmentState.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = sub_10079F594();
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
  v11 = OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_adornmentState;
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_100732160;
}

void sub_100732160(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), v5);
    BookReaderAccessoryHighlightsController.adornmentState.setter(v4);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    BookReaderAccessoryHighlightsController.adornmentState.setter(*(v2 + 56));
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_10073220C(uint64_t a1)
{
  v3 = sub_10079FFD4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_selectionInfos;
  v8 = *(v1 + OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_selectionInfos);
  *(v1 + OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_selectionInfos) = a1;

  v9 = sub_1004A1354(v8, a1);

  if (v9)
  {
  }

  result = sub_10073315C(1);
  v21 = *(v8 + 16);
  if (!v21)
  {
  }

  v11 = 0;
  v22 = (v4 + 8);
  v23 = v1;
  v19 = v7;
  v20 = v4;
  v18 = v4 + 16;
  while (2)
  {
    if (v11 < *(v8 + 16))
    {
      v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v13 = *(v4 + 72);
      (*(v4 + 16))(v6, v8 + v12 + v13 * v11++, v3);
      v14 = *(v1 + v7);
      v15 = *(v14 + 16);
      v16 = v14 + v12;

      v17 = v15 + 1;
      do
      {
        if (!--v17)
        {

          (*v22)(v6, v3);

          return sub_10072FDAC();
        }

        sub_10073876C(&qword_100AE6060, &type metadata accessor for SelectionInfo);
        v16 += v13;
      }

      while ((sub_1007A2124() & 1) == 0);

      result = (*v22)(v6, v3);
      v4 = v20;
      v1 = v23;
      v7 = v19;
      if (v11 != v21)
      {
        continue;
      }
    }

    break;
  }

  __break(1u);
  return result;
}

void sub_100732498()
{
  sub_1007A3744(27);
  type metadata accessor for BookReaderAccessoryHighlightsController();
  sub_1001F1160(&qword_100AF4F00);
  v0 = sub_1007A22E4();
  v2 = v1;

  v3._object = 0x80000001008E9500;
  v3._countAndFlagsBits = 0xD000000000000019;
  sub_1007A23D4(v3);
  qword_100AF4DC8 = v0;
  unk_100AF4DD0 = v2;
}

void sub_10073254C(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v29 = a2;
  v24 = a3;
  v4 = sub_10079FFD4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v12 = *a1;
  v32 = *(*a1 + 16);
  if (v32)
  {
    v13 = 0;
    v30 = (v5 + 32);
    v31 = v5 + 16;
    v25 = (v5 + 8);
    v14 = _swiftEmptyArrayStorage;
    v27 = v7;
    v28 = v4;
    v26 = v12;
    while (v13 < *(v12 + 16))
    {
      v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v16 = *(v5 + 72);
      (*(v5 + 16))(v11, v12 + v15 + v16 * v13, v4, v9);
      v17 = sub_10079FF84();
      if ((v18 & 1) != 0 || v17 != v29)
      {
        (*v25)(v11, v4);
      }

      else
      {
        v19 = *v30;
        (*v30)(v7, v11, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1003BDA44(0, v14[2] + 1, 1);
          v14 = v33;
        }

        v22 = v14[2];
        v21 = v14[3];
        if (v22 >= v21 >> 1)
        {
          sub_1003BDA44(v21 > 1, v22 + 1, 1);
          v14 = v33;
        }

        v14[2] = v22 + 1;
        v23 = v14 + v15 + v22 * v16;
        v7 = v27;
        v4 = v28;
        v19(v23, v27, v28);
        v12 = v26;
      }

      if (v32 == ++v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
LABEL_14:
    *v24 = v14;
  }
}

void sub_1007327B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;

    sub_10073220C(v2);
  }
}

void sub_100732814(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD95B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-v3];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_10079EF54();
    v8 = *(v7 - 8);
    (*(v8 + 16))(v4, a1, v7);
    (*(v8 + 56))(v4, 0, 1, v7);
    v9 = OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_currentTheme;
    swift_beginAccess();
    sub_10069802C(v4, &v6[v9]);
    swift_endAccess();
    v10 = &v6[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_currentUnderlinePercent];
    *v10 = 0;
    v10[8] = 1;
    sub_100735918();
    sub_10072FDAC();
  }
}

void sub_1007329A0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10073315C(0);
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_10072FDAC();
  }
}

uint64_t sub_100732A24@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_10079F734();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for BookContentLayoutController.LayoutState.done(_:), v2, v4);
  v7 = sub_10079F724();
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7 & 1;
  return result;
}

void sub_100732B2C(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_layoutIsReady);
    *(Strong + OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_layoutIsReady) = v1;
    if (v1 != v4)
    {
      sub_10072FDAC();
    }
  }
}

id BookReaderAccessoryHighlightsController.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = *&v0[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_highlightRenderingController];
  v6 = sub_1007A2744();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_1007A26F4();
  v7 = v5;
  v8 = sub_1007A26E4();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  sub_1003457A0(0, 0, v4, &unk_100842630, v9);

  v10 = *&v1[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_documentOrdinal];
  if (qword_100AD1B88 != -1)
  {
    swift_once();
  }

  v11 = sub_10079ACE4();
  sub_100008B98(v11, qword_100AF4DB0);
  v12 = sub_10079ACC4();
  v13 = sub_1007A29A4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v12, v13, "Dealloc for ordinal:%ld", v14, 0xCu);
  }

  v15 = type metadata accessor for BookReaderAccessoryHighlightsController();
  v17.receiver = v1;
  v17.super_class = v15;
  return objc_msgSendSuper2(&v17, "dealloc");
}

uint64_t sub_100732DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1007A26F4();
  *(v4 + 24) = sub_1007A26E4();
  v6 = sub_1007A2694();

  return _swift_task_switch(sub_100732E68, v6, v5);
}

uint64_t sub_100732E68()
{
  v1 = *(v0 + 16);

  [v1 removeAll];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100732ED8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_100732DD0(a1, v4, v5, v6);
}

uint64_t type metadata accessor for BookReaderAccessoryHighlightsController()
{
  result = qword_100AF4E88;
  if (!qword_100AF4E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10073315C(char a1)
{
  v3 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v126 = &v114 - v7;
  v8 = sub_10079FFD4();
  v9 = *(v8 - 8);
  v122 = v8;
  v123 = v9;
  __chkstk_darwin(v8);
  v121 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_resolveStates;
    swift_beginAccess();
    v12 = *(v1 + v11);
  }

  else
  {
    v12 = sub_1001F01E8(_swiftEmptyArrayStorage);
  }

  v13 = sub_1001F01E8(_swiftEmptyArrayStorage);
  v14 = *(v1 + OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_selectionInfos);
  v15 = *(v14 + 16);
  v115 = v1;
  v124 = v12;
  v120 = v15;
  if (!v15)
  {
    goto LABEL_41;
  }

  v114 = v5;
  v119 = v14 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
  v117 = v123 + 8;
  v118 = v123 + 16;

  v17 = 0;
  v116 = v16;
  do
  {
    if (v17 >= *(v16 + 16))
    {
      goto LABEL_60;
    }

    v23 = v122;
    v24 = v123;
    v25 = v121;
    (*(v123 + 16))(v121, v119 + *(v123 + 72) * v17, v122);
    v26 = sub_10079FFC4();
    v28 = v27;
    (*(v24 + 8))(v25, v23);
    if (*(v12 + 16))
    {
      v29 = sub_10000E53C(v26, v28);
      if (v30)
      {
        v31 = *(v12 + 56) + 24 * v29;
        v32 = *v31;
        v33 = *(v31 + 8);
        v34 = *(v31 + 16);
        sub_1001F36B0(*v31, v33, *(v31 + 16));
        LODWORD(v125) = v34;
        sub_1001F36B0(v32, v33, v34);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v26;
        v37 = isUniquelyReferenced_nonNull_native;
        v127 = v13;
        v38 = v28;
        v39 = v36;
        v40 = v38;
        v42 = sub_10000E53C(v36, v38);
        v43 = v13[2];
        v44 = (v41 & 1) == 0;
        v45 = v43 + v44;
        if (__OFADD__(v43, v44))
        {
          goto LABEL_63;
        }

        v46 = v41;
        if (v13[3] >= v45)
        {
          if ((v37 & 1) == 0)
          {
            sub_1002F3514();
          }

          v47 = v39;
          if ((v46 & 1) == 0)
          {
LABEL_15:
            v13 = v127;
            v127[(v42 >> 6) + 8] |= 1 << v42;
            v50 = (v13[6] + 16 * v42);
            *v50 = v47;
            v50[1] = v40;
            v51 = v13[7] + 24 * v42;
            *v51 = v32;
            *(v51 + 8) = v33;
            v52 = v125;
            *(v51 + 16) = v125;
            sub_1002F9074(v32, v33, v52);
            v53 = v13[2];
            v54 = __OFADD__(v53, 1);
            v55 = v53 + 1;
            if (v54)
            {
              goto LABEL_64;
            }

            v13[2] = v55;
            goto LABEL_37;
          }
        }

        else
        {
          sub_1003D8524(v45, v37);
          v47 = v39;
          v48 = sub_10000E53C(v39, v40);
          if ((v46 & 1) != (v49 & 1))
          {
            goto LABEL_65;
          }

          v42 = v48;
          if ((v46 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v13 = v127;
        v84 = v127[7] + 24 * v42;
        v85 = *v84;
        v86 = *(v84 + 8);
        v87 = *(v84 + 16);
        *v84 = v32;
        *(v84 + 8) = v33;
        v88 = v125;
        *(v84 + 16) = v125;
        sub_1002F9074(v85, v86, v87);
        sub_1002F9074(v32, v33, v88);
LABEL_37:
        v12 = v124;
        goto LABEL_7;
      }
    }

    v56 = sub_1007A2744();
    v57 = *(v56 - 8);
    v58 = v28;
    v59 = v26;
    v60 = v126;
    (*(v57 + 56))(v126, 1, 1, v56);
    v61 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1007A26F4();

    v62 = sub_1007A26E4();
    v63 = swift_allocObject();
    v63[2] = v62;
    v63[3] = &protocol witness table for MainActor;
    v63[4] = v61;
    v125 = v59;
    v63[5] = v59;
    v63[6] = v58;
    v64 = v58;

    v65 = v114;
    sub_1000077D8(v60, v114, &qword_100AD67D0);
    LODWORD(v62) = (*(v57 + 48))(v65, 1, v56);

    if (v62 == 1)
    {
      sub_100007840(v65, &qword_100AD67D0);
    }

    else
    {
      sub_1007A2734();
      (*(v57 + 8))(v65, v56);
    }

    v66 = v63[2];
    swift_unknownObjectRetain();

    v12 = v124;
    if (v66)
    {
      swift_getObjectType();
      v67 = sub_1007A2694();
      v69 = v68;
      swift_unknownObjectRelease();
    }

    else
    {
      v67 = 0;
      v69 = 0;
    }

    sub_100007840(v126, &qword_100AD67D0);
    if (v69 | v67)
    {
      v128 = 0;
      v129 = 0;
      v130 = v67;
      v131 = v69;
    }

    v70 = v125;
    v71 = swift_task_create();
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v127 = v13;
    v73 = sub_10000E53C(v70, v64);
    v75 = v13[2];
    v76 = (v74 & 1) == 0;
    v54 = __OFADD__(v75, v76);
    v77 = v75 + v76;
    if (v54)
    {
      goto LABEL_61;
    }

    v78 = v74;
    if (v13[3] >= v77)
    {
      if ((v72 & 1) == 0)
      {
        v89 = v73;
        sub_1002F3514();
        v73 = v89;
        if (v78)
        {
LABEL_6:
          v18 = v73;

          v13 = v127;
          v19 = v127[7] + 24 * v18;
          v20 = *v19;
          v21 = *(v19 + 8);
          v22 = *(v19 + 16);
          *v19 = v71;
          *(v19 + 8) = 0;
          *(v19 + 16) = 0;
          sub_1002F9074(v20, v21, v22);
          goto LABEL_7;
        }

        goto LABEL_31;
      }
    }

    else
    {
      sub_1003D8524(v77, v72);
      v73 = sub_10000E53C(v70, v64);
      if ((v78 & 1) != (v79 & 1))
      {
        goto LABEL_65;
      }
    }

    if (v78)
    {
      goto LABEL_6;
    }

LABEL_31:
    v13 = v127;
    v127[(v73 >> 6) + 8] |= 1 << v73;
    v80 = (v13[6] + 16 * v73);
    *v80 = v70;
    v80[1] = v64;
    v81 = v13[7] + 24 * v73;
    *v81 = v71;
    *(v81 + 8) = 0;
    *(v81 + 16) = 0;
    v82 = v13[2];
    v54 = __OFADD__(v82, 1);
    v83 = v82 + 1;
    if (v54)
    {
      goto LABEL_62;
    }

    v13[2] = v83;
LABEL_7:
    v16 = v116;
    ++v17;
  }

  while (v120 != v17);

LABEL_41:
  v90 = 0;
  v91 = v12 + 64;
  v92 = 1 << *(v12 + 32);
  v93 = -1;
  if (v92 < 64)
  {
    v93 = ~(-1 << v92);
  }

  v94 = v93 & *(v12 + 64);
  v95 = (v92 + 63) >> 6;
  while (2)
  {
    if (v94)
    {
      v96 = v90;
LABEL_51:
      v97 = __clz(__rbit64(v94));
      v94 &= v94 - 1;
      v98 = v97 | (v96 << 6);
      v99 = *(v12 + 56) + 24 * v98;
      v101 = *v99;
      v100 = *(v99 + 8);
      v102 = v12;
      v103 = *(v99 + 16);
      if (v13[2])
      {
        v104 = (*(v102 + 48) + 16 * v98);
        v105 = *v104;
        v106 = v104[1];
        sub_1001F36B0(v101, v100, v103);

        sub_10000E53C(v105, v106);
        LOBYTE(v105) = v107;

        if (v105)
        {
          v108 = v101;
          v109 = v100;
          v110 = v103;
          goto LABEL_57;
        }
      }

      else
      {
        sub_1001F36B0(v101, v100, v103);
      }

      if (v103)
      {
      }

      else
      {
        sub_1001F1160(&unk_100AD67F0);
        sub_1007A2764();
        v108 = v101;
        v109 = v100;
        v110 = 0;
LABEL_57:
        sub_1002F9074(v108, v109, v110);
      }

      v90 = v96;
      v12 = v124;
      continue;
    }

    break;
  }

  while (1)
  {
    v96 = v90 + 1;
    if (__OFADD__(v90, 1))
    {
      break;
    }

    if (v96 >= v95)
    {

      v111 = OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_resolveStates;
      v112 = v115;
      swift_beginAccess();
      *(v112 + v111) = v13;
    }

    v94 = *(v91 + 8 * v96);
    ++v90;
    if (v94)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  result = sub_1007A3B24();
  __break(1u);
  return result;
}

uint64_t sub_100733A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v6[11] = sub_1007A26F4();
  v6[12] = sub_1007A26E4();
  v8 = sub_1007A2694();
  v6[13] = v8;
  v6[14] = v7;

  return _swift_task_switch(sub_100733B3C, v8, v7);
}

uint64_t sub_100733B3C()
{
  sub_1007A2774();
  v0[15] = 0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v0[17] = sub_1007A26E4();
    v5 = sub_1007A2694();
    v0[18] = v5;
    v0[19] = v4;

    return _swift_task_switch(sub_100733CB8, v5, v4);
  }

  else
  {

    v6 = v0[15];
    sub_1007A2774();
    if (!v6)
    {
      swift_beginAccess();
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        sub_10073416C(v0[9], v0[10], 0);
      }
    }

    v1 = v0[1];

    return v1();
  }
}

uint64_t sub_100733CB8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v0[21] = sub_1007A26E4();
    v2 = sub_1007A2694();
    v4 = v3;
    v0[22] = v2;
    v0[23] = v3;
    v5 = sub_100733D88;
    v6 = v2;
  }

  else
  {
    v7 = v0[16];

    v0[27] = 0;
    v6 = v0[13];
    v4 = v0[14];
    v5 = sub_100734028;
  }

  return _swift_task_switch(v5, v6, v4);
}

uint64_t sub_100733D88()
{
  v1 = sub_1006A2C38();
  v0[24] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[25] = v2;
    *v2 = v0;
    v2[1] = sub_100733E80;
    v4 = v0[9];
    v3 = v0[10];

    return BookContentModule.rects(forCFI:clippedToBounds:)(v4, v3, 1);
  }

  else
  {
    swift_unknownObjectRelease();

    v0[28] = 0;
    v5 = v0[18];
    v6 = v0[19];

    return _swift_task_switch(sub_1007340FC, v5, v6);
  }
}

uint64_t sub_100733E80(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 208) = a1;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);

  return _swift_task_switch(sub_100733FA8, v4, v3);
}

uint64_t sub_100733FA8()
{
  swift_unknownObjectRelease();

  v0[28] = v0[26];
  v1 = v0[18];
  v2 = v0[19];

  return _swift_task_switch(sub_1007340FC, v1, v2);
}

uint64_t sub_100734028()
{

  v1 = v0[27];
  v2 = v0[15];
  sub_1007A2774();
  if (!v2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_10073416C(v0[9], v0[10], v1);
    }
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1007340FC()
{
  v1 = v0[16];

  v0[27] = v0[28];
  v2 = v0[13];
  v3 = v0[14];

  return _swift_task_switch(sub_100734028, v2, v3);
}

uint64_t sub_10073416C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = sub_10079FD44();
  v39 = *(v44 - 8);
  __chkstk_darwin(v44);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v43 = &v33 - v10;
  v11 = sub_1001F1160(&qword_100AD6190);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33 - v13;
  if (!a3 || !swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_16;
  }

  swift_getObjectType();

  sub_10079F9D4();
  swift_unknownObjectRelease();
  v15 = sub_10079F434();

  v37 = v15;
  if (!v15)
  {

LABEL_16:
    swift_beginAccess();

    sub_1005EA878(0, 0, 255, a1, a2);
    return swift_endAccess();
  }

  v34 = a1;
  v35 = a2;
  v36 = v4;
  v16 = *(a3 + 16);
  v33 = a3;
  if (v16)
  {
    v18 = *(v12 + 16);
    v17 = v12 + 16;
    v19 = a3 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v40 = *(v17 + 56);
    v41 = v18;
    v42 = v17;
    v20 = (v17 - 8);
    v21 = (v39 + 32);
    v22 = _swiftEmptyArrayStorage;
    v18(v14, v19, v11);
    while (1)
    {
      if (sub_1007A12A4())
      {
        sub_1007A0C24();

        sub_1007A1304();
        v23 = v38;
        sub_10079FD04();
        (*v20)(v14, v11);
        v24 = *v21;
        (*v21)(v43, v23, v44);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_10066CA8C(0, *(v22 + 2) + 1, 1, v22);
        }

        v26 = *(v22 + 2);
        v25 = *(v22 + 3);
        if (v26 >= v25 >> 1)
        {
          v22 = sub_10066CA8C(v25 > 1, v26 + 1, 1, v22);
        }

        *(v22 + 2) = v26 + 1;
        v24(&v22[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v26], v43, v44);
      }

      else
      {
        (*v20)(v14, v11);
      }

      v19 += v40;
      if (!--v16)
      {
        break;
      }

      v41(v14, v19, v11);
    }
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  v28 = v35;

  v29 = sub_10040E7B8(v22);

  v30 = OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_resolveStates;
  v31 = v36;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v31 + v30);
  *(v31 + v30) = 0x8000000000000000;
  sub_1002F722C(v33, v29, 1, v34, v28, isUniquelyReferenced_nonNull_native);

  *(v31 + v30) = v45;
  swift_endAccess();
  sub_10072FDAC();
}

uint64_t sub_100734664(double a1, double a2)
{
  v3 = v2;
  v6 = sub_10079F594();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_adornmentState;
  swift_beginAccess();
  (*(v7 + 16))(v9, v3 + v10, v6);
  v11 = sub_10079F584();
  (*(v7 + 8))(v9, v6);
  if (!v11)
  {
    return 0;
  }

  v12 = *(v3 + OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_highlightRenderingController);
  v13 = [v12 highlightLayers];
  if (!v13)
  {

    return 0;
  }

  v14 = v13;
  sub_10000A7C4(0, &qword_100AF4F08);
  v15 = sub_1007A25E4();

  v30 = v15;
  sub_1001F1160(&qword_100AF4F10);
  sub_100005920(&qword_100AF4F18, &qword_100AF4F10);
  if ((sub_1007A28A4() & 1) == 0)
  {
    goto LABEL_22;
  }

  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_6;
    }

LABEL_22:

    return 0;
  }

LABEL_21:
  v16 = sub_1007A38D4();
  if (!v16)
  {
    goto LABEL_22;
  }

LABEL_6:
  v17 = 0;
  while (1)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = sub_1007A3784();
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v18 = *(v15 + 8 * v17 + 32);
    }

    v19 = v18;
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v21 = [v11 layer];
    [v19 convertPoint:v21 fromLayer:{a1, a2}];
    v23 = v22;
    v25 = v24;

    v26 = v19;
    if ([v12 layer:v26 containsHighlightAtPoint:{v23, v25}])
    {
      break;
    }

    ++v17;
    if (v20 == v16)
    {
      goto LABEL_22;
    }
  }

  v27 = [v12 annotationUuidForHighlightLayer:v26];

  if (v27)
  {
    v28 = sub_1007A2254();

    return v28;
  }

  return 0;
}

void sub_1007349D4(uint64_t a1, void *a2)
{
  v5 = sub_1001F1160(&qword_100AD95B0);
  __chkstk_darwin(v5 - 8);
  v7 = v46 - v6;
  v8 = sub_10079EF54();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  swift_getObjectType();
  sub_10079F9D4();
  swift_unknownObjectRelease();
  v12 = sub_10079F434();

  v49 = v12;
  if (!v12)
  {
    return;
  }

  v51 = _swiftEmptyArrayStorage;
  v13 = OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_currentTheme;
  swift_beginAccess();
  sub_1000077D8(v2 + v13, v7, &qword_100AD95B0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100007840(v7, &qword_100AD95B0);
    v48 = 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v48 = sub_10079EE44();
    (*(v9 + 8))(v11, v8);
  }

  if (qword_100AD1B88 != -1)
  {
    swift_once();
  }

  v14 = sub_10079ACE4();
  sub_100008B98(v14, qword_100AF4DB0);

  v15 = a2;
  v16 = sub_10079ACC4();
  v17 = sub_1007A29A4();

  if (!os_log_type_enabled(v16, v17))
  {

    v28 = *(a1 + 16);
    if (!v28)
    {
      goto LABEL_22;
    }

LABEL_14:
    v47 = v15;
    v29 = (a1 + 56);
    do
    {
      v31 = *(v29 - 3);
      v30 = *(v29 - 2);
      v33 = *(v29 - 1);
      v32 = *v29;
      v34 = [objc_allocWithZone(AEHighlightLine) init];
      [v34 setIncludesCapSpace:1];
      [v34 setLightenBlend:v48 & 1];
      [v34 setFullLineRect:{v31, v30, v33, v32}];
      [v34 setCurrentLineRect:{v31, v30, v33, v32}];
      if (sub_1007A1234())
      {
        v52.origin.x = v31;
        v52.origin.y = v30;
        v52.size.width = v33;
        v52.size.height = v32;
        MinY = CGRectGetMinY(v52);
        v53.origin.x = v31;
        v53.origin.y = v30;
        v53.size.width = v33;
        v53.size.height = v32;
        Height = CGRectGetHeight(v53);
        sub_10073653C();
        MaxY = MinY + Height * v37;
        v39 = 2;
      }

      else
      {
        v54.origin.x = v31;
        v54.origin.y = v30;
        v54.size.width = v33;
        v54.size.height = v32;
        MaxY = CGRectGetMaxY(v54);
        v39 = 0;
      }

      [v34 setUnderlineDirection:v39];
      [v34 setUnderlinePosition:MaxY];
      v40 = v34;
      sub_1007A25C4();
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v46[1] = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1007A2614();
      }

      sub_1007A2644();

      v29 += 4;
      --v28;
    }

    while (v28);
    v15 = v47;
    goto LABEL_22;
  }

  v18 = swift_slowAlloc();
  v50 = swift_slowAlloc();
  *v18 = 136315394;
  type metadata accessor for CGRect(0);
  v19 = sub_1007A25F4();
  v21 = sub_1000070F4(v19, v20, &v50);

  *(v18 + 4) = v21;
  *(v18 + 12) = 2080;
  v22 = [v15 annotation];
  if (!v22)
  {

    __break(1u);
    goto LABEL_28;
  }

  v23 = [v22 annotationUuid];
  swift_unknownObjectRelease();

  if (!v23)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v24 = sub_1007A2254();
  v26 = v25;

  v27 = sub_1000070F4(v24, v26, &v50);

  *(v18 + 14) = v27;
  _os_log_impl(&_mh_execute_header, v16, v17, "Adding highlight rects:%s for annotation:%s", v18, 0x16u);
  swift_arrayDestroy();

  v28 = *(a1 + 16);
  if (v28)
  {
    goto LABEL_14;
  }

LABEL_22:
  v41 = [v15 lines];
  if (v41)
  {
    v42 = v41;
    sub_10000A7C4(0, &unk_100AF4F20);
    v43 = sub_1007A25E4();
  }

  else
  {
    v43 = _swiftEmptyArrayStorage;
  }

  v50 = v43;

  sub_100484E3C(v44);
  sub_10000A7C4(0, &unk_100AF4F20);
  isa = sub_1007A25D4().super.isa;

  [v15 setLines:isa];
}

void sub_100735088(void *a1)
{
  v2 = v1;
  v3 = [*&v1[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_highlightRenderingController] highlightLayers];
  if (!v3)
  {
LABEL_10:
    if (qword_100AD1B88 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

  v4 = v3;
  sub_10000A7C4(0, &qword_100AF4F08);
  v5 = sub_1007A25E4();

  sub_1001F1160(&qword_100AF4F10);
  sub_100005920(&qword_100AF4F18, &qword_100AF4F10);
  if ((sub_1007A28A4() & 1) == 0)
  {

    goto LABEL_10;
  }

  if (qword_100AD1B88 != -1)
  {
    swift_once();
  }

  v6 = sub_10079ACE4();
  sub_100008B98(v6, qword_100AF4DB0);

  v7 = v2;
  v8 = sub_10079ACC4();
  v9 = sub_1007A2994();
  v10 = v5 >> 62;
  if (os_log_type_enabled(v8, v9))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    if (v10)
    {
      v12 = sub_1007A38D4();
    }

    else
    {
      v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 4) = v12;

    *(v11 + 12) = 2048;
    *(v11 + 14) = *&v7[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_documentOrdinal];

    _os_log_impl(&_mh_execute_header, v8, v9, "Adding %ld highlight layers in documentOrdinal:%ld", v11, 0x16u);
  }

  else
  {
  }

  if (!v10)
  {
    v18 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_17;
    }

LABEL_29:

    return;
  }

  v18 = sub_1007A38D4();
  if (!v18)
  {
    goto LABEL_29;
  }

LABEL_17:
  v2 = 0;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v19 = sub_1007A3784();
    }

    else
    {
      if (v2 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v19 = *(v5 + 8 * v2 + 32);
    }

    v20 = v19;
    v21 = (v2 + 1);
    if (__OFADD__(v2, 1))
    {
      break;
    }

    v22 = [a1 layer];
    [v22 addSublayer:v20];

    ++v2;
    if (v21 == v18)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  swift_once();
LABEL_11:
  v13 = sub_10079ACE4();
  sub_100008B98(v13, qword_100AF4DB0);
  v14 = v2;
  v15 = sub_10079ACC4();
  v16 = sub_1007A29A4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = *&v14[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_documentOrdinal];

    _os_log_impl(&_mh_execute_header, v15, v16, "No highlight layers in documentOrdinal:%ld", v17, 0xCu);
  }

  else
  {
  }
}

Swift::Void __swiftcall BookReaderAccessoryHighlightsController.removeInteractiveHighlight()()
{
  v1 = (v0 + OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_interactiveHighlight);
  if (*(v0 + OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_interactiveHighlight))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_highlightRenderingController);
    if (qword_100AD1B90 != -1)
    {
      swift_once();
    }

    v3 = sub_1007A2214();
    [v2 removeHighlightForData:v3];

    v1[1] = 0;
    v1[2] = 0;
    *v1 = 0;
  }
}

Swift::Void __swiftcall BookReaderAccessoryHighlightsController.convertInteractiveToStaticHighlight()()
{
  v1 = sub_1007A1D04();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = &v0[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = &v0[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_interactiveHighlight];
    v9 = *&v0[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_interactiveHighlight];
    if (v9)
    {
      v10 = *(v5 + 1);
      v12 = *(v8 + 1);
      v11 = *(v8 + 2);
      v13 = swift_allocObject();
      v13[2] = v7;
      v13[3] = v10;
      v13[4] = v0;
      v13[5] = v9;
      v13[6] = v12;
      v13[7] = v11;
      sub_10000A7C4(0, &qword_100AD1E10);
      swift_retain_n();
      swift_unknownObjectRetain();
      v14 = v0;
      *v4 = sub_1007A2D74();
      (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
      v15 = sub_1007A1D34();
      (*(v2 + 8))(v4, v1);
      if (v15)
      {

        sub_100735758(v13[2]);

        swift_unknownObjectRelease();

        *(v8 + 1) = 0;
        *(v8 + 2) = 0;
        *v8 = 0;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100735758(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1007A15E4();
  v6 = sub_1007A2744();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_1007A26F4();
  swift_unknownObjectRetain();
  v7 = sub_1007A26E4();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  *(v8 + 32) = a1;
  *(v8 + 40) = v5;
  sub_1003457A0(0, 0, v4, &unk_1008428B0, v8);
}

id sub_100735918()
{
  v1 = v0;
  v2 = sub_10079EF54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  v9 = sub_1001F1160(&qword_100AD95B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  v25 = *(v1 + OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_highlightRenderingController);
  v15 = OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_currentTheme;
  swift_beginAccess();
  sub_1000077D8(v1 + v15, v14, &qword_100AD95B0);
  v16 = *(v3 + 48);
  if (v16(v14, 1, v2))
  {
    sub_100007840(v14, &qword_100AD95B0);
    v17 = 0;
  }

  else
  {
    (*(v3 + 16))(v8, v14, v2);
    sub_100007840(v14, &qword_100AD95B0);
    v17 = sub_10071E6EC();
    (*(v3 + 8))(v8, v2);
  }

  v18 = v25;
  [v25 setPageTheme:v17];
  sub_1000077D8(v1 + v15, v11, &qword_100AD95B0);
  if (v16(v11, 1, v2))
  {
    sub_100007840(v11, &qword_100AD95B0);
    v19 = 0;
  }

  else
  {
    (*(v3 + 16))(v5, v11, v2);
    sub_100007840(v11, &qword_100AD95B0);
    v20 = sub_10079EF44();
    v21 = sub_10079EF04();
    (*(v3 + 8))(v5, v2);
    if (v20 == 1)
    {
      v22 = 9;
    }

    else
    {
      v22 = 1;
    }

    v23 = (v21 & 1) == 0;
    v18 = v25;
    if (v23)
    {
      v19 = v22;
    }

    else
    {
      v19 = 2;
    }
  }

  return [v18 setAnnotationBlendMode:v19];
}

void sub_100735C54(uint64_t a1, void *a2)
{
  sub_100796B34();
  v4 = v3;
  if (qword_100AD1B88 != -1)
  {
    swift_once();
  }

  v5 = sub_10079ACE4();
  sub_100008B98(v5, qword_100AF4DB0);
  v6 = a2;
  oslog = sub_10079ACC4();
  v7 = sub_1007A29A4();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = *(v6 + OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_documentOrdinal);

    *(v8 + 12) = 2048;
    *(v8 + 14) = round(v4 * -1000000.0) / 1000.0;
    _os_log_impl(&_mh_execute_header, oslog, v7, "#accessoryperf updateHighlights for ordinal %ld took %fms", v8, 0x16u);

    v9 = oslog;
  }

  else
  {

    v9 = v6;
  }
}

void (*sub_100735DC4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = sub_10079F594();
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
  v11 = OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_adornmentState;
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_100732160;
}

id sub_100735F1C()
{
  v1 = v0;
  sub_1007A1AD4();

  v2 = sub_1007A1054();
  v4 = v3;

  v5 = *(v0 + OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_highlightRenderingController);
  v6 = sub_1007A2214();
  v7 = [v5 highlightWithData:v6];

  if (v7)
  {

    return v7;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_12;
  }

  swift_getObjectType();
  sub_10079F9D4();
  swift_unknownObjectRelease();
  v8 = sub_10079F434();

  if (!v8)
  {
    goto LABEL_12;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {

LABEL_16:

    return 0;
  }

  swift_getObjectType();
  sub_1007A0894();
  swift_unknownObjectRelease();
  if (!sub_10079F264())
  {

    goto LABEL_16;
  }

  v9 = sub_1007A1564();
  if (!*(v9 + 16) || (v10 = sub_10000E53C(v2, v4), (v11 & 1) == 0))
  {

LABEL_12:

    return 0;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  v13 = objc_allocWithZone(AEHighlight);

  v7 = [v13 init];
  [v7 setAnnotation:v12];
  [v7 setIsVertical:sub_1007A1234() & 1];
  [v7 setCornerRadius:4.0];

  v14 = v7;
  v15 = sub_1007A2214();

  [v5 addHighlight:v14 forData:v15];

  v16 = OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_currentHighlights;
  swift_beginAccess();

  sub_1007A25C4();
  if (*((*(v1 + v16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1007A2614();
  }

  sub_1007A2644();
  swift_endAccess();

  return v7;
}

id sub_1007362BC()
{
  v1 = sub_100796BB4();
  __chkstk_darwin(v1 - 8);
  sub_10079FF74();
  v2 = *(v0 + OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_highlightRenderingController);
  v3 = sub_1007A2214();
  v4 = [v2 highlightWithData:v3];

  if (v4)
  {
  }

  else if (swift_unknownObjectWeakLoadStrong() && (swift_getObjectType(), sub_10079F9D4(), swift_unknownObjectRelease(), v5 = sub_10079F434(), , v5))
  {

    sub_10079FFC4();
    sub_100796BA4();
    sub_1007A1604();
    swift_allocObject();
    v6 = sub_1007A15F4();
    v7 = objc_allocWithZone(AEHighlight);

    v4 = [v7 init];
    [v4 setAnnotation:v6];
    [v4 setIsVertical:sub_1007A1234() & 1];
    [v4 setCornerRadius:4.0];

    v8 = v4;
    v9 = sub_1007A2214();

    [v2 addHighlight:v8 forData:v9];
  }

  else
  {

    return 0;
  }

  return v4;
}

void sub_10073653C()
{
  v1 = sub_10079EF54();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1001F1160(&qword_100AD95B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v23[-v6];
  v8 = v0 + OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_currentUnderlinePercent;
  if (*(v0 + OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_currentUnderlinePercent + 8))
  {
    v9 = OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_currentTheme;
    swift_beginAccess();
    sub_1000077D8(v0 + v9, v7, &qword_100AD95B0);
    if ((*(v2 + 48))(v7, 1, v1))
    {
      sub_100007840(v7, &qword_100AD95B0);
    }

    else
    {
      (*(v2 + 16))(v4, v7, v1);
      sub_100007840(v7, &qword_100AD95B0);
      v10 = sub_10079ED34();
      v12 = v11;
      (*(v2 + 8))(v4, v1);
      v24 = v10;
      v25 = v12;
      sub_1002060B4();
      if (sub_1007A28A4())
      {
        sub_1001F1160(&qword_100AF4F30);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10080B690;
        *(inited + 32) = kCTFontFamilyNameAttribute;
        *(inited + 40) = v10;
        *(inited + 48) = v12;
        v14 = kCTFontFamilyNameAttribute;
        sub_1001F0A9C(inited);
        swift_setDeallocating();
        sub_100007840(inited + 32, &unk_100AF4F38);
        type metadata accessor for CFString(0);
        sub_10073876C(&qword_100AD3F30, type metadata accessor for CFString);
        isa = sub_1007A2024().super.isa;

        v16 = CTFontDescriptorCreateWithAttributes(isa);

        v17 = CTFontCreateWithFontDescriptor(v16, 0.0, 0);
LABEL_9:
        v18 = v17;

        v19 = v18;
        Ascent = CTFontGetAscent(v19);
        v21 = Ascent + CTFontGetDescent(v19);
        v22 = CTFontGetAscent(v19);

        *v8 = v22 / v21;
        *(v8 + 8) = 0;
        return;
      }
    }

    v16 = sub_1007A2214();
    v17 = CTFontCreateWithName(v16, 0.0, 0);
    goto LABEL_9;
  }
}

uint64_t sub_1007368BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10079FD44();
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = __chkstk_darwin(v7);
  v11 = &v24 - v10;
  if (!*(a2 + 16))
  {
    return 1;
  }

  v24 = *(a1 + 16);
  if (!v24)
  {
    return 1;
  }

  v12 = a2;
  v13 = 0;
  v15 = *(v8 + 16);
  v14 = v8 + 16;
  v25 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v28 = *(v14 + 56);
  v29 = v15;
  v27 = v12 + 56;
  v16 = (v14 - 8);
  while (1)
  {
    v26 = v13;
    v29(v11, v25 + v28 * v13, v4, v9);
    if (*(v12 + 16))
    {
      sub_10073876C(&qword_100AE23B8, &type metadata accessor for PageLocation);
      v17 = sub_1007A2074();
      v18 = -1 << *(v12 + 32);
      v19 = v17 & ~v18;
      if ((*(v27 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        break;
      }
    }

LABEL_4:
    v13 = v26 + 1;
    (*v16)(v11, v4);
    if (v13 == v24)
    {
      return 1;
    }
  }

  v20 = ~v18;
  while (1)
  {
    (v29)(v6, *(v12 + 48) + v19 * v28, v4);
    sub_10073876C(&unk_100AEB800, &type metadata accessor for PageLocation);
    v21 = sub_1007A2124();
    v22 = *v16;
    (*v16)(v6, v4);
    if (v21)
    {
      break;
    }

    v19 = (v19 + 1) & v20;
    if (((*(v27 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v22(v11, v4);
  return 0;
}

char *sub_100736B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t, uint64_t, char *), unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  v103 = a8;
  v86 = a7;
  v87 = a6;
  v126 = a5;
  v120 = a4;
  v121 = a3;
  v122 = a2;
  v84 = a1;
  v90 = a15;
  v118 = a14;
  v125 = a13;
  ObjectType = a10;
  v123 = a9;
  v124 = a11;
  v102 = a12;
  v16 = sub_1001F1160(&qword_100AF4EA0);
  v115 = *(v16 - 8);
  v116 = v16;
  __chkstk_darwin(v16);
  v114 = &v83 - v17;
  v111 = sub_1007A2D54();
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1001F1160(&qword_100AF2568);
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v105 = &v83 - v19;
  v20 = sub_1001F1160(&qword_100AF2570);
  v112 = *(v20 - 8);
  v113 = v20;
  __chkstk_darwin(v20);
  v110 = &v83 - v21;
  v22 = sub_1001F1160(&qword_100AD95B0);
  __chkstk_darwin(v22 - 8);
  v100 = &v83 - v23;
  v24 = sub_10079EF54();
  v119 = *(v24 - 8);
  __chkstk_darwin(v24);
  v99 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1001F1160(&qword_100AD7EB0);
  __chkstk_darwin(v26 - 8);
  v104 = &v83 - v27;
  v95 = sub_1001F1160(&qword_100AF25B8);
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v83 - v28;
  v98 = sub_1001F1160(&unk_100AF25C0);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v83 - v29;
  v117 = sub_1001F1160(&qword_100AF4EA8);
  v89 = *(v117 - 8);
  __chkstk_darwin(v117);
  v88 = &v83 - v30;
  v31 = &v15[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_delegate];
  *&v15[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v15[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_selectionInfos] = _swiftEmptyArrayStorage;
  v32 = OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_resolveStates;
  *&v15[v32] = sub_1001F01E8(_swiftEmptyArrayStorage);
  v33 = OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_highlightRenderingController;
  v34 = [objc_allocWithZone(AEHighlightRenderingController) init];
  [v34 setCanUseFilters:1];
  *&v15[v33] = v34;
  swift_unknownObjectWeakInit();
  v35 = &v15[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_paginatingService];
  *&v15[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_paginatingService + 8] = 0;
  swift_unknownObjectWeakInit();
  v36 = &v15[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_readingSettingsProvider];
  *&v15[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_readingSettingsProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v37 = &v15[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_annotationProviderService];
  *&v15[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_annotationProviderService + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v38 = &v15[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_selectionHighlightController];
  *&v15[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_selectionHighlightController + 8] = 0;
  swift_unknownObjectWeakInit();
  v39 = *(v119 + 56);
  v101 = v24;
  v92 = v119 + 56;
  v91 = v39;
  v39(&v15[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_currentTheme], 1, 1, v24);
  v40 = &v15[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_currentUnderlinePercent];
  *v40 = 0;
  v40[8] = 1;
  *&v15[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_currentHighlights] = _swiftEmptyArrayStorage;
  v41 = &v15[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_interactiveHighlight];
  v41[1] = 0;
  v41[2] = 0;
  *v41 = 0;
  *&v15[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_cancellables] = &_swiftEmptySetSingleton;
  v15[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_layoutIsReady] = 0;
  v42 = v84;
  *&v15[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_documentOrdinal] = v84;
  *(v35 + 1) = v121;
  swift_unknownObjectWeakAssign();
  *(v36 + 1) = v126;
  swift_unknownObjectWeakAssign();
  *(v37 + 1) = v86;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v43 = v90;
  swift_weakAssign();
  *(v38 + 1) = v43;
  swift_unknownObjectWeakAssign();
  *(v31 + 1) = v102;
  swift_unknownObjectWeakAssign();
  v44 = OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_adornmentState;
  v45 = sub_10079F594();
  v102 = *(v45 - 8);
  v46 = *(v102 + 16);
  v103 = v45;
  v46(&v15[v44], v125);
  v47 = type metadata accessor for BookReaderAccessoryHighlightsController();
  v128.receiver = v15;
  v128.super_class = v47;
  v48 = objc_msgSendSuper2(&v128, "init");
  v49 = qword_100AD1B88;
  v50 = v48;
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = sub_10079ACE4();
  sub_100008B98(v51, qword_100AF4DB0);
  v52 = sub_10079ACC4();
  v53 = sub_1007A29A4();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 134217984;
    *(v54 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v52, v53, "Created for ordinal:%ld", v54, 0xCu);
  }

  v127 = sub_1007A0D24();
  *(swift_allocObject() + 16) = v42;
  sub_1001F1160(&qword_100AF4EB0);
  sub_1001F1160(&qword_100AF4EB8);
  v118 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_100005920(&qword_100AF4EC0, &qword_100AF4EB0);
  v55 = v88;
  sub_10079BA74();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v90 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_100005920(&qword_100AF4EC8, &qword_100AF4EA8);
  v56 = v50;
  v57 = v117;
  sub_10079BB04();

  (*(v89 + 8))(v55, v57);
  v117 = OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_cancellables;
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  ObjectType = swift_getObjectType();
  v127 = sub_1007A1394();
  sub_1001F1160(&unk_100AEB8B0);
  sub_100005920(&unk_100AF25D0, &unk_100AEB8B0);
  v58 = v93;
  sub_10079BAD4();

  sub_10000A7C4(0, &qword_100AD1E10);
  v59 = sub_1007A2D74();
  v127 = v59;
  v88 = sub_1007A2D24();
  v60 = *(v88 - 1);
  v87 = *(v60 + 56);
  v89 = v60 + 56;
  v61 = v104;
  v87(v104, 1, 1, v88);
  sub_100005920(&unk_100AF4ED0, &qword_100AF25B8);
  v86 = sub_100017E1C();
  v62 = v96;
  v63 = v95;
  sub_10079BAB4();
  sub_100007840(v61, &qword_100AD7EB0);

  (*(v94 + 8))(v58, v63);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&unk_100AF25E0, &unk_100AF25C0);
  v64 = v98;
  sub_10079BB04();

  (*(v97 + 8))(v62, v64);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v65 = v99;
  sub_1007A1344();
  v66 = v119;
  v67 = v100;
  v68 = v101;
  (*(v119 + 16))(v100, v65, v101);
  v91(v67, 0, 1, v68);
  v69 = OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_currentTheme;
  swift_beginAccess();
  sub_10069802C(v67, &v56[v69]);
  swift_endAccess();
  v70 = &v56[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_currentUnderlinePercent];
  *v70 = 0;
  v70[8] = 1;
  sub_100735918();
  sub_10072FDAC();
  (*(v66 + 8))(v65, v68);
  sub_1001F1160(&unk_100AF2580);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_100812CF0;
  swift_getObjectType();
  *(v71 + 32) = sub_10079FA84();
  *(v71 + 40) = sub_10079FA74();
  *(v71 + 48) = sub_10079F794();
  sub_1001F1160(&unk_100AEA1E0);
  sub_100005920(&qword_100AF2590, &unk_100AEA1E0);
  v72 = v105;
  sub_10079B814();
  v73 = v108;
  sub_1007A2D34();
  v74 = sub_1007A2D74();
  v127 = v74;
  v87(v61, 1, 1, v88);
  sub_100005920(&unk_100AF4EE0, &qword_100AF2568);
  v75 = v110;
  v76 = v107;
  sub_10079BAC4();
  sub_100007840(v61, &qword_100AD7EB0);

  (*(v109 + 8))(v73, v111);
  (*(v106 + 8))(v72, v76);
  v77 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v78 = swift_allocObject();
  *(v78 + 16) = sub_100738694;
  *(v78 + 24) = v77;
  sub_100005920(&qword_100AF2598, &qword_100AF2570);
  v79 = v113;
  sub_10079BB04();

  (*(v112 + 8))(v75, v79);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v127 = sub_10079F774();
  sub_1001F1160(&unk_100AEA190);
  sub_100005920(&unk_100AF25F0, &unk_100AEA190);
  v80 = v114;
  sub_10079BA74();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100005920(&unk_100AF4EF0, &qword_100AF4EA0);
  v81 = v116;
  sub_10079BB04();

  (*(v115 + 8))(v80, v81);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  sub_10073315C(0);
  sub_10072FDAC();

  swift_unknownObjectRelease();
  (*(v102 + 8))(v125, v103);
  return v56;
}

void sub_100737F98(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_100796BB4();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10079F594();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_adornmentState;
  swift_beginAccess();
  (*(v12 + 16))(v14, v6 + v15, v11);
  v16 = sub_10079F584();
  (*(v12 + 8))(v14, v11);
  if (!v16)
  {
    return;
  }

  v17 = v6 + OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_annotationProviderService;
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_11:

    return;
  }

  v37 = *(v17 + 8);
  if (!swift_unknownObjectWeakLoadStrong() || (v36 = a5, swift_getObjectType(), sub_10079F9D4(), swift_unknownObjectRelease(), v18 = sub_10079F434(), , !v18))
  {
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  if (!swift_unknownObjectWeakLoadStrong() || (swift_getObjectType(), sub_1007A0894(), swift_unknownObjectRelease(), v19 = sub_10079F264(), , !v19))
  {

    goto LABEL_10;
  }

  v35 = v19;
  if (!*(v6 + OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_interactiveHighlight))
  {
    v34 = (v6 + OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_interactiveHighlight);
    v21 = sub_100734664(a1, a2);
    if (v22)
    {
      v23 = v22;
      v33 = v21;
      if (*(sub_1007A1564() + 16))
      {
        v32[1] = sub_10000E53C(v33, v23);
        LODWORD(v33) = v24;

        if (v33)
        {

          LODWORD(v37) = sub_1007A15E4();

LABEL_20:
          if (qword_100AD1B90 != -1)
          {
            swift_once();
          }

          sub_100796BA4();
          sub_1007A1604();
          swift_allocObject();
          v20 = sub_1007A15F4();
          v25 = v34;
          *v34 = v20;
          *(v25 + 1) = a1;
          *(v25 + 2) = a2;
          swift_retain_n();

          goto LABEL_23;
        }
      }

      else
      {
      }
    }

    swift_getObjectType();
    LODWORD(v37) = sub_1007A08B4();
    goto LABEL_20;
  }

  v20 = *(v6 + OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_interactiveHighlight);
LABEL_23:
  v26 = objc_allocWithZone(AEHighlight);
  swift_retain_n();

  v27 = [v26 init];
  [v27 setAnnotation:v20];
  [v27 setIsVertical:sub_1007A1234() & 1];
  [v27 setCornerRadius:4.0];

  sub_1007349D4(v36, v27);
  v28 = *(v6 + OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_highlightRenderingController);
  if (qword_100AD1B90 != -1)
  {
    swift_once();
  }

  v29 = sub_1007A2214();
  [v28 removeHighlightForData:v29];

  v30 = v27;
  v31 = sub_1007A2214();
  [v28 addHighlight:v30 forData:v31];

  sub_100735088(v16);
  swift_unknownObjectRelease();
}

void sub_100738520()
{
  sub_10079F594();
  if (v0 <= 0x3F)
  {
    sub_1006973C4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1007386A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002812C;

  return sub_100733A9C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10073876C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007387B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002812C;

  return sub_1006B46C4(a1, v4, v5, v6, v7);
}

id sub_1007388CC()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_100B23B08);
  swift_endAccess();
  if (v1)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_1000230BC(v8);
    goto LABEL_8;
  }

  type metadata accessor for MachineAuthorizationService();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v3 = [objc_allocWithZone(type metadata accessor for MachineAuthorizationService()) init];
    swift_beginAccess();
    v2 = v3;
    objc_setAssociatedObject(v0, &unk_100B23B08, v2, 1);
    swift_endAccess();

    return v2;
  }

  return v5;
}

uint64_t BKSceneController.rootBarCoordinator.setter(void *a1)
{
  sub_100022E50(a1);

  return swift_unknownObjectRelease();
}

uint64_t sub_100738A40()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AF4F70);
  sub_100008B98(v0, qword_100AF4F70);
  sub_10001389C();
  return sub_1007A33F4();
}

uint64_t sub_100738AB4()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_1007A2744();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = *(v0 + 32);
  sub_1007A26F4();

  v8 = sub_1007A26E4();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v6;
  v9[5] = v7;

  sub_100345AA0(0, 0, v4, &unk_100842A68, v9);

  swift_unknownObjectWeakDestroy();

  sub_10073A1B8(*(v1 + 40), *(v1 + 48));
  return v1;
}

uint64_t sub_100738C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_1007A26F4();
  v5[8] = sub_1007A26E4();
  v7 = sub_1007A2694();

  return _swift_task_switch(sub_100738D00, v7, v6);
}

uint64_t sub_100738D00()
{

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = result;
  if (result)
  {
    v3 = *(v0 + 56);
    if (v3 >> 62)
    {
      result = sub_1007A38D4();
      v4 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_4:
        if (v4 < 1)
        {
          __break(1u);
          return result;
        }

        v5 = 0;
        v6 = v3 & 0xC000000000000001;
        v7 = *(v0 + 56) + 32;
        do
        {
          if (v6)
          {
            v8 = sub_1007A3784();
          }

          else
          {
            v8 = *(v7 + 8 * v5);
            swift_unknownObjectRetain();
          }

          ++v5;
          [v2 removeInteraction:v8];
          swift_unknownObjectRelease();
        }

        while (v4 != v5);
      }
    }
  }

  **(v0 + 40) = v2 == 0;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100738E50()
{
  sub_100738AB4();

  return swift_deallocClassInstance();
}

__n128 sub_100738E84(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100738EB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 97))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100738F0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100738F8C(void *Strong, uint64_t a2, uint64_t a3)
{
  v17[4] = a2;
  v17[5] = a3;
  if (qword_100AD1B98 != -1)
  {
    swift_once();
  }

  v6 = sub_10079ACE4();
  sub_100008B98(v6, qword_100AF4F70);
  swift_retain_n();
  swift_retain_n();
  v7 = sub_10079ACC4();
  v8 = sub_1007A29D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    v17[0] = a2;
    *v9 = 136315138;
    v17[1] = a3;
    v11 = sub_1007A22E4();
    v13 = sub_1000070F4(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Performing %s", v9, 0xCu);
    sub_1000074E0(v10);

    if (!Strong)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (Strong)
  {
LABEL_7:
    Strong = swift_unknownObjectWeakLoadStrong();
  }

LABEL_8:
  v14 = sub_1002203A4();
  sub_100220620(v17);
  sub_1007394B8(Strong, v14, v17);

  sub_100007840(v17, &unk_100AD5B40);
  return sub_100795D24();
}

uint64_t sub_1007391C0(void *Strong, uint64_t a2)
{
  v4 = sub_100796384();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD1B98 != -1)
  {
    swift_once();
  }

  v8 = sub_10079ACE4();
  sub_100008B98(v8, qword_100AF4F70);

  v9 = sub_10079ACC4();
  v10 = sub_1007A29D4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = v5;
    v12 = v11;
    v20 = swift_slowAlloc();
    v22 = a2;
    v23[0] = v20;
    *v12 = 136315138;

    v13 = sub_1007A22E4();
    v15 = sub_1000070F4(v13, v14, v23);

    *(v12 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Performing %s", v12, 0xCu);
    sub_1000074E0(v20);

    v5 = v21;
  }

  if (Strong)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  sub_100795DF4();
  v16 = (*(v5 + 88))(v7, v4);
  if (v16 == enum case for NavigateSequentiallyDirection.next(_:))
  {
    v17 = "books_pageForward:";
  }

  else if (v16 == enum case for NavigateSequentiallyDirection.previous(_:))
  {
    v17 = "books_pageBackward:";
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    v17 = 0;
  }

  v23[3] = &type metadata for BookReaderNavigatePagesIntent;
  v23[0] = a2;

  sub_1007394B8(Strong, v17, v23);

  sub_100007840(v23, &unk_100AD5B40);
  return sub_100795D24();
}

uint64_t sub_1007394B8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a1)
  {
    v5 = a1;
    if (sub_100699F0C(a2, a3))
    {

      return 1;
    }

    if (qword_100AD1B98 != -1)
    {
      swift_once();
    }

    v10 = sub_10079ACE4();
    sub_100008B98(v10, qword_100AF4F70);
    sub_10000AE20(a3, v23);
    v11 = sub_10079ACC4();
    v12 = sub_1007A29B4();
    if (!os_log_type_enabled(v11, v12))
    {

      sub_100007840(v23, &unk_100AD5B40);
      return 0;
    }

    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = sub_100796E84();
    v16 = sub_1000070F4(v14, v15, &v22);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    sub_10000AE20(v23, v21);
    sub_1001F1160(&unk_100AD5B40);
    v17 = sub_1007A22E4();
    v19 = v18;
    sub_100007840(v23, &unk_100AD5B40);
    v20 = sub_1000070F4(v17, v19, &v22);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Unable to perform action: %s with sender: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    if (qword_100AD1B98 != -1)
    {
      swift_once();
    }

    v7 = sub_10079ACE4();
    sub_100008B98(v7, qword_100AF4F70);
    v5 = sub_10079ACC4();
    v8 = sub_1007A29B4();
    if (os_log_type_enabled(v5, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, v8, "Missing responder and/or action", v9, 2u);
    }
  }

  return 0;
}

void sub_1007397B0()
{
  if (!*(v0 + 8))
  {
    goto LABEL_7;
  }

  sub_1007A3C24(1u);
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  sub_100795D54();
  if (v1)
  {
    sub_1007A3C24(1u);
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1007A3C24(0);
  }

  sub_100795D54();
  if (v1)
  {
    sub_1007A3C24(1u);
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
LABEL_7:
    sub_1007A3C24(0);
  }

  sub_1007A3C24(*(v0 + 96) & 1);
}

Swift::Int sub_1007398CC()
{
  sub_1007A3C04();
  sub_1007397B0();
  return sub_1007A3C44();
}

Swift::Int sub_100739910()
{
  sub_1007A3C04();
  sub_1007397B0();
  return sub_1007A3C44();
}

uint64_t sub_10073994C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_10001D7AC(v11, v13) & 1;
}

unint64_t sub_1007399BC()
{
  result = qword_100AF5040;
  if (!qword_100AF5040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5040);
  }

  return result;
}

uint64_t sub_100739A10(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = a3;
  *(v3 + 56) = *a2;
  sub_1007A26F4();
  *(v3 + 72) = sub_1007A26E4();
  v5 = sub_1007A2694();

  return _swift_task_switch(sub_100739AB0, v5, v4);
}

uint64_t sub_100739AB0()
{
  v1 = v0[8];
  v2 = v0[7];
  v3 = v0[5];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v3[3] = sub_1001F1160(&qword_100ADE090);
  v3[4] = sub_100722B34();
  sub_1002256EC(v3);
  sub_100738F8C(Strong, v2, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100739B84(uint64_t a1, _OWORD *a2, int *a3)
{
  *(v3 + 16) = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  *v5 = v3;
  v5[1] = sub_100739C90;

  return v7(a1, v3 + 16);
}

uint64_t sub_100739C90()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100739D88(uint64_t a1, void *a2, uint64_t a3)
{
  v3[5] = a1;
  v3[6] = a3;
  v3[7] = *a2;
  sub_1007A26F4();
  v3[8] = sub_1007A26E4();
  v5 = sub_1007A2694();

  return _swift_task_switch(sub_100739E28, v5, v4);
}

uint64_t sub_100739E28()
{
  v1 = v0[7];
  v2 = v0[5];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v2[3] = sub_1001F1160(&qword_100ADE090);
  v2[4] = sub_100722B34();
  sub_1002256EC(v2);
  sub_1007391C0(Strong, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100739EF4(uint64_t a1, void *a2, int *a3)
{
  *(v3 + 16) = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_10073A000;

  return v7(a1, v3 + 16);
}

uint64_t sub_10073A000()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10073A0F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100009A34;

  return sub_100738C64(a1, v4, v5, v7, v6);
}

uint64_t sub_10073A1B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10073A264(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100009A34;

  return sub_100739D88(a1, a2, v2);
}

uint64_t sub_10073A31C(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100009A34;

  return sub_100739EF4(a1, a2, v6);
}

uint64_t sub_10073A3E4(uint64_t a1, _OWORD *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10002812C;

  return sub_100739A10(a1, a2, v2);
}

uint64_t sub_10073A49C(uint64_t a1, _OWORD *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002812C;

  return sub_100739B84(a1, a2, v6);
}

id sub_10073A6A4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = &v12[OBJC_IVAR___BKDebugBoolDefaultSwitch_type];
  *v13 = a2;
  *(v13 + 1) = a3;
  *(v13 + 2) = 0;
  v13[24] = 0;
  v14 = &v12[OBJC_IVAR___BKDebugBoolDefaultSwitch_action];
  *v14 = a4;
  v14[1] = a5;
  sub_1000260E8(a2);
  sub_1000260E8(a4);
  v17.receiver = v12;
  v17.super_class = v6;
  v15 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v15 setOn:a1 & 1];
  [v15 addTarget:v15 action:"didTapWithSender:" forControlEvents:4096];
  sub_100007020(a4);
  sub_100007020(a2);

  return v15;
}

id sub_10073A7C4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = &v5[OBJC_IVAR___BKDebugBoolDefaultSwitch_type];
  *v9 = a2;
  *(v9 + 1) = a3;
  *(v9 + 2) = 0;
  v9[24] = 0;
  v10 = &v5[OBJC_IVAR___BKDebugBoolDefaultSwitch_action];
  *v10 = a4;
  v10[1] = a5;
  sub_1000260E8(a2);
  sub_1000260E8(a4);
  v13.receiver = v5;
  v13.super_class = type metadata accessor for DebugBoolDefaultSwitch();
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v11 setOn:a1 & 1];
  [v11 addTarget:v11 action:"didTapWithSender:" forControlEvents:4096];
  sub_100007020(a4);
  sub_100007020(a2);

  return v11;
}

id sub_10073AA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = [objc_opt_self() standardUserDefaults];
  v9 = sub_1007A2214();

  if (a3)
  {
    v13[4] = a3;
    v13[5] = a4;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_10021B6B0;
    v13[3] = &unk_100A2ECD8;
    v10 = _Block_copy(v13);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v5 initWithDefaults:v8 key:v9 action:v10];
  sub_100007020(a3);
  _Block_release(v10);

  return v11;
}

id sub_10073AC84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = &v5[OBJC_IVAR___BKDebugBoolDefaultSwitch_type];
  *v7 = a1;
  *(v7 + 1) = a2;
  *(v7 + 2) = a3;
  v7[24] = 1;
  v8 = &v5[OBJC_IVAR___BKDebugBoolDefaultSwitch_action];
  *v8 = a4;
  v8[1] = a5;
  v9 = a1;

  sub_1000260E8(a4);
  v14.receiver = v5;
  v14.super_class = type metadata accessor for DebugBoolDefaultSwitch();
  v10 = objc_msgSendSuper2(&v14, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = sub_1007A2214();

  v12 = [v9 BOOLForKey:v11];

  [v10 setOn:v12];
  [v10 addTarget:v10 action:"didTapWithSender:" forControlEvents:4096];

  sub_100007020(a4);
  return v10;
}

void sub_10073AEE0(void *a1)
{
  v2 = [a1 isOn];
  v4 = *(v1 + OBJC_IVAR___BKDebugBoolDefaultSwitch_type);
  v3 = *(v1 + OBJC_IVAR___BKDebugBoolDefaultSwitch_type + 8);
  v5 = *(v1 + OBJC_IVAR___BKDebugBoolDefaultSwitch_type + 16);
  if (*(v1 + OBJC_IVAR___BKDebugBoolDefaultSwitch_type + 24) == 1)
  {
    v6 = v4;

    v7 = sub_1007A2214();

    [v6 setBool:v2 forKey:v7];
  }

  else if (v4)
  {
    sub_1000260E8(*(v1 + OBJC_IVAR___BKDebugBoolDefaultSwitch_type));
    (v4)(v2);
    sub_10073B1EC(v4, v3, v5, 0);
  }

  v8 = *(v1 + OBJC_IVAR___BKDebugBoolDefaultSwitch_action);
  if (v8)
  {
    v8(v2);
  }
}

id sub_10073B080()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugBoolDefaultSwitch();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10073B140(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10073B188(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_10073B1EC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {

    return sub_100007020(a1);
  }
}

uint64_t sub_10073B24C@<X0>(uint64_t a1@<X8>)
{
  v54[1] = a1;
  v2 = sub_1001F1160(&qword_100AEEBF8);
  __chkstk_darwin(v2 - 8);
  v81 = v54 - v3;
  v4 = sub_10079A6D4();
  __chkstk_darwin(v4 - 8);
  v80 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10079A984();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v79 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v60 = v54 - v10;
  v11 = sub_100799B44();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v63 = v54 - v16;
  v54[0] = v1;
  v17 = sub_10079A744();
  sub_1001F1160(&qword_100AD3628);
  v18 = sub_1007A3904();
  v19 = 0;
  v20 = *(v17 + 64);
  v56 = v17 + 64;
  v68 = v17;
  v21 = 1 << *(v17 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v55 = (v21 + 63) >> 6;
  v62 = v12 + 16;
  v64 = v12;
  v75 = v12 + 32;
  v24 = 0;
  v77 = (v7 + 8);
  v78 = v7 + 16;
  v59 = v7;
  v76 = (v7 + 32);
  v61 = v18 + 64;
  v58 = v11;
  v57 = v14;
  v69 = v18;
  if ((v22 & v20) != 0)
  {
    while (1)
    {
      v25 = v14;
      v26 = __clz(__rbit64(v23));
      v27 = (v23 - 1) & v23;
LABEL_10:
      v30 = v26 | (v24 << 6);
      v31 = v68;
      v32 = *(v68 + 48);
      v33 = v64;
      v34 = *(v64 + 16);
      v73 = *(v64 + 72) * v30;
      v35 = v63;
      v34(v63, v32 + v73, v11);
      v36 = *(v31 + 56);
      v74 = v30;
      v37 = *(v36 + 8 * v30);
      v14 = v25;
      v72 = *(v33 + 32);
      v72(v25, v35, v11);
      v84 = v37;
      v71 = v37;
      swift_bridgeObjectRetain_n();
      sub_10073C4A8(&v84);
      if (v19)
      {
        break;
      }

      v70 = v27;
      v38 = v84;
      v39 = v84[2];
      v40 = v69;
      if (v39)
      {
        v66 = v24;
        v67 = 0;
        v84 = _swiftEmptyArrayStorage;
        sub_1003BD8D8(0, v39, 0);
        v41 = v84;
        v42 = *(v59 + 80);
        v65 = v38;
        v83 = (v42 + 32) & ~v42;
        v43 = v38 + v83;
        v44 = *(v59 + 72);
        v82 = *(v59 + 16);
        v45 = v60;
        do
        {
          v46 = v79;
          v82(v79, v43, v6);
          sub_10079A964();
          sub_10079A974();
          sub_10079A944();
          sub_10079A954();
          (*v77)(v46, v6);
          v84 = v41;
          v48 = v41[2];
          v47 = v41[3];
          if (v48 >= v47 >> 1)
          {
            sub_1003BD8D8(v47 > 1, v48 + 1, 1);
            v45 = v60;
            v41 = v84;
          }

          v41[2] = v48 + 1;
          (*v76)(v41 + v83 + v48 * v44, v45, v6);
          v43 += v44;
          --v39;
        }

        while (v39);

        v11 = v58;
        v14 = v57;
        v40 = v69;
        v24 = v66;
        v19 = v67;
      }

      else
      {

        v41 = _swiftEmptyArrayStorage;
      }

      v49 = v74;
      *(v61 + ((v74 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v74;
      v72((v40[6] + v73), v14, v11);
      *(v40[7] + 8 * v49) = v41;
      v50 = v40[2];
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_23;
      }

      v40[2] = v52;
      v23 = v70;
      if (!v70)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v28 = v24;
    while (1)
    {
      v24 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v24 >= v55)
      {

        sub_10079A764();
        return sub_10079A754();
      }

      v29 = *(v56 + 8 * v24);
      ++v28;
      if (v29)
      {
        v25 = v14;
        v26 = __clz(__rbit64(v29));
        v27 = (v29 - 1) & v29;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10073B8A4@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = sub_1001F1160(&qword_100AEEBF8);
  __chkstk_darwin(v2 - 8);
  v91 = v57 - v3;
  v4 = sub_10079A6D4();
  __chkstk_darwin(v4 - 8);
  v90 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10079A984();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v89 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v75 = v57 - v10;
  v11 = sub_100799B44();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v78 = v57 - v16;
  v64 = sub_10079A7A4();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v60 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v62 = v57 - v19;
  v61 = sub_100799B14();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v57[1] = v57 - v22;
  v65 = v1;
  v23 = sub_10079A8C4();
  sub_1001F1160(&qword_100AD3628);
  result = sub_1007A3904();
  v25 = result;
  v26 = 0;
  v27 = *(v23 + 64);
  v68 = v23 + 64;
  v28 = 1 << *(v23 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v27;
  v67 = (v28 + 63) >> 6;
  v79 = v12;
  v87 = (v7 + 8);
  v88 = v7 + 16;
  v74 = v7;
  v86 = (v7 + 32);
  v76 = result + 64;
  v77 = v12 + 16;
  v73 = v11;
  v72 = v14;
  v71 = result;
  v70 = v23;
  v69 = v12 + 32;
  if (v30)
  {
    while (1)
    {
      v31 = __clz(__rbit64(v30));
      v82 = (v30 - 1) & v30;
LABEL_10:
      v34 = v31 | (v26 << 6);
      v35 = *(v23 + 48);
      v37 = v78;
      v36 = v79;
      v38 = *(v79 + 16);
      v84 = *(v79 + 72) * v34;
      v38(v78, v35 + v84, v11);
      v39 = *(v23 + 56);
      v85 = v34;
      v40 = *(v39 + 8 * v34);
      v83 = *(v36 + 32);
      v83(v14, v37, v11);
      v41 = *(v40 + 16);
      if (v41)
      {
        v81 = v26;
        v94 = _swiftEmptyArrayStorage;

        sub_1003BD8D8(0, v41, 0);
        v42 = v40;
        v43 = v94;
        v44 = v75;
        v45 = *(v74 + 80);
        v80 = v42;
        v93 = (v45 + 32) & ~v45;
        v46 = v42 + v93;
        v47 = *(v74 + 72);
        v92 = *(v74 + 16);
        do
        {
          v48 = v89;
          v92(v89, v46, v6);
          sub_10079A964();
          sub_10079A974();
          sub_10079A944();
          sub_10079A954();
          (*v87)(v48, v6);
          v94 = v43;
          v50 = v43[2];
          v49 = v43[3];
          if (v50 >= v49 >> 1)
          {
            sub_1003BD8D8(v49 > 1, v50 + 1, 1);
            v44 = v75;
            v43 = v94;
          }

          v43[2] = v50 + 1;
          (*v86)(v43 + v93 + v50 * v47, v44, v6);
          v46 += v47;
          --v41;
        }

        while (v41);

        v11 = v73;
        v14 = v72;
        v25 = v71;
        v23 = v70;
        v26 = v81;
      }

      else
      {
        v43 = _swiftEmptyArrayStorage;
      }

      v51 = v85;
      *(v76 + ((v85 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v85;
      result = (v83)(v25[6] + v84, v14, v11);
      *(v25[7] + 8 * v51) = v43;
      v52 = v25[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        break;
      }

      v25[2] = v54;
      v30 = v82;
      if (!v82)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v32 = v26;
    while (1)
    {
      v26 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v26 >= v67)
      {

        v55 = v58;
        sub_10079A8E4();
        v56 = v60;
        sub_100799AE4();
        sub_10073C250(v62);
        (*(v63 + 8))(v56, v64);
        sub_100799AF4();
        sub_100799AD4();
        (*(v59 + 8))(v55, v61);
        return sub_10079A8D4();
      }

      v33 = *(v68 + 8 * v26);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v82 = (v33 - 1) & v33;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_10073C078()
{
  v1 = sub_1001F1160(&qword_100AF50A0);
  __chkstk_darwin(v1 - 8);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v16 - v5;
  sub_10079A934();
  v7 = sub_10079A204();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v6, 1, v7) == 1)
  {
    goto LABEL_4;
  }

  v16[3] = v0;
  sub_10079A1F4();
  v11 = v10;
  v12 = *(v8 + 8);
  v12(v6, v7);
  sub_10079A934();
  if (v9(v3, 1, v7) == 1)
  {
    v6 = v3;
LABEL_4:
    sub_100007840(v6, &qword_100AF50A0);
    return 0;
  }

  sub_10079A1F4();
  v15 = v14;
  v12(v3, v7);
  return v15 < v11;
}

uint64_t sub_10073C250@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = sub_1001F1160(&qword_100AD6730);
  __chkstk_darwin(v1 - 8);
  v2 = sub_1001F1160(&qword_100AD6738);
  __chkstk_darwin(v2 - 8);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v13 - v6;
  v8 = sub_10079A734();
  __chkstk_darwin(v8 - 8);
  sub_10079A5F4();
  sub_10079A784();
  sub_10079A5D4();
  sub_10079A794();
  v9 = sub_10079A774();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_100007840(v4, &qword_100AD6738);
    v11 = 1;
  }

  else
  {
    sub_10073B24C(v7);
    (*(v10 + 8))(v4, v9);
    v11 = 0;
  }

  (*(v10 + 56))(v7, v11, 1, v9);
  sub_10079A5C4();
  return sub_10079A5E4();
}

void sub_10073C4A8(void **a1)
{
  v2 = *(sub_10079A984() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1007859B4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10073C550(v5);
  *a1 = v3;
}

void sub_10073C550(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1007A3A64(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10079A984();
        v6 = sub_1007A2634();
        v6[2] = v5;
      }

      v7 = *(sub_10079A984() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10073CB04(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10073C67C(0, v2, 1, a1);
  }
}

void sub_10073C67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1001F1160(&qword_100AF50A0);
  __chkstk_darwin(v8 - 8);
  v63 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v68 = &v51 - v11;
  v72 = sub_10079A984();
  __chkstk_darwin(v72);
  v62 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v51 - v14;
  v18.n128_f64[0] = __chkstk_darwin(v16);
  v20 = &v51 - v19;
  v54 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v23 = *(v17 + 16);
    v22 = v17 + 16;
    v24 = *(v22 + 56);
    v64 = (v22 - 8);
    v65 = v23;
    v67 = v22;
    v60 = (v22 + 16);
    v61 = v21;
    v25 = (v21 + v24 * (a3 - 1));
    v59 = -v24;
    v26 = a1 - a3;
    v53 = v24;
    v27 = v21 + v24 * a3;
    v52 = v15;
    v66 = v20;
LABEL_6:
    v57 = v25;
    v58 = a3;
    v55 = v27;
    v56 = v26;
    v30 = v26;
    v71 = v25;
    v31 = v68;
    while (1)
    {
      v70 = v27;
      v32 = v72;
      v33 = v65;
      v65(v20, v27, v72, v18);
      v33(v15, v71, v32);
      sub_10079A934();
      v34 = sub_10079A204();
      v35 = v15;
      v36 = *(v34 - 8);
      v37 = *(v36 + 48);
      if (v37(v31, 1, v34) == 1 || (v69 = v30, v38 = v72, sub_10079A1F4(), v40 = v39, v41 = *(v36 + 8), v41(v31, v34), v31 = v63, sub_10079A934(), v37(v31, 1, v34) == 1))
      {
        v20 = v66;
        sub_100007840(v31, &qword_100AF50A0);
        v28 = *v64;
        v15 = v52;
        v29 = v72;
        (*v64)(v52, v72);
        v28(v20, v29);
LABEL_5:
        a3 = v58 + 1;
        v25 = &v57[v53];
        v26 = v56 - 1;
        v27 = v55 + v53;
        if (v58 + 1 == v54)
        {
          return;
        }

        goto LABEL_6;
      }

      sub_10079A1F4();
      v43 = v42;
      v41(v31, v34);
      v44 = *v64;
      (*v64)(v35, v38);
      v20 = v66;
      v44(v66, v38);
      v15 = v35;
      v46 = v69;
      v45 = v70;
      if (v43 >= v40)
      {
        goto LABEL_5;
      }

      if (!v61)
      {
        break;
      }

      v47 = *v60;
      v48 = v62;
      v49 = v72;
      (*v60)(v62, v70, v72);
      v50 = v71;
      swift_arrayInitWithTakeFrontToBack();
      v47(v50, v48, v49);
      v71 = &v50[v59];
      v27 = v45 + v59;
      v30 = v46 + 1;
      v15 = v35;
      v31 = v68;
      if (v46 == -1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_10073CB04(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v152 = a1;
  v8 = sub_1001F1160(&qword_100AF50A0);
  __chkstk_darwin(v8 - 8);
  v172 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v173 = &v147 - v11;
  __chkstk_darwin(v12);
  v155 = &v147 - v13;
  __chkstk_darwin(v14);
  v162 = &v147 - v15;
  v16 = sub_10079A984();
  __chkstk_darwin(v16);
  v156 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v171 = &v147 - v19;
  __chkstk_darwin(v20);
  v22 = &v147 - v21;
  __chkstk_darwin(v23);
  v181 = &v147 - v24;
  __chkstk_darwin(v25);
  __chkstk_darwin(v26);
  v166 = &v147 - v27;
  __chkstk_darwin(v28);
  v149 = &v147 - v29;
  v33.n128_f64[0] = __chkstk_darwin(v30);
  v148 = &v147 - v34;
  v164 = v31;
  v165 = a3;
  v35 = *(a3 + 8);
  if (v35 < 1)
  {
    v37 = _swiftEmptyArrayStorage;
LABEL_110:
    a3 = *v152;
    if (!*v152)
    {
      goto LABEL_152;
    }

    a4 = v37;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_146;
    }

    v141 = a4;
LABEL_113:
    v182 = v141;
    a4 = *(v141 + 2);
    if (a4 >= 2)
    {
      while (*v165)
      {
        v142 = *&v141[16 * a4];
        v143 = v141;
        v144 = *&v141[16 * a4 + 24];
        sub_10073D98C(&(*v165)[v164[9] * v142], &(*v165)[v164[9] * *&v141[16 * a4 + 16]], &(*v165)[v164[9] * v144], a3);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v144 < v142)
        {
          goto LABEL_139;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v143 = sub_100784A7C(v143);
        }

        if (a4 - 2 >= *(v143 + 2))
        {
          goto LABEL_140;
        }

        v145 = &v143[16 * a4];
        *v145 = v142;
        *(v145 + 1) = v144;
        v182 = v143;
        sub_1007849F0(a4 - 1);
        v141 = v182;
        a4 = *(v182 + 2);
        if (a4 <= 1)
        {
          goto LABEL_124;
        }
      }

      goto LABEL_150;
    }

LABEL_124:

    return;
  }

  v168 = v32;
  v36 = 0;
  v176 = v31 + 2;
  v177 = v31 + 1;
  v175 = v31 + 4;
  v37 = _swiftEmptyArrayStorage;
  v151 = a4;
  v178 = v16;
  v158 = v22;
  while (1)
  {
    v38 = v36;
    v157 = v37;
    if (v36 + 1 >= v35)
    {
      v50 = v36 + 1;
      goto LABEL_31;
    }

    v167 = v35;
    v39 = *v165;
    v40 = v31[9];
    a3 = &(*v165)[v40 * (v36 + 1)];
    v41 = v31[2];
    v42 = v148;
    v41(v148, a3, v16, v33);
    v180 = v39;
    v43 = v149;
    v174 = v41;
    (v41)(v149, &v39[v40 * v36], v16);
    LODWORD(v179) = sub_10073C078();
    if (v5)
    {
      v146 = *v177;
      (*v177)(v43, v16);
      v146(v42, v16);
      goto LABEL_124;
    }

    v44 = *v177;
    (*v177)(v43, v16);
    v170 = v44;
    v44(v42, v16);
    v150 = v36;
    v45 = v36 + 2;
    v46 = v180 + v40 * (v36 + 2);
    v163 = 0;
    v47 = v40;
    v180 = v40;
    while (1)
    {
      v50 = v167;
      if (v167 == v45)
      {
        break;
      }

      v51 = v174;
      v174(v166, v46, v16);
      v51(v168, a3, v16);
      v52 = v162;
      sub_10079A934();
      v53 = v52;
      v54 = sub_10079A204();
      v55 = *(v54 - 8);
      v56 = *(v55 + 48);
      if (v56(v53, 1, v54) == 1)
      {
        sub_100007840(v53, &qword_100AF50A0);
        v48 = 0;
        v5 = v163;
      }

      else
      {
        sub_10079A1F4();
        v58 = v57;
        v169 = *(v55 + 8);
        (v169)(v53, v54);
        v59 = v155;
        sub_10079A934();
        if (v56(v59, 1, v54) == 1)
        {
          sub_100007840(v59, &qword_100AF50A0);
          v48 = 0;
        }

        else
        {
          sub_10079A1F4();
          v61 = v60;
          (v169)(v59, v54);
          v48 = v61 < v58;
        }

        v5 = v163;
        v16 = v178;
      }

      v49 = v170;
      v170(v168, v16);
      v49(v166, v16);
      ++v45;
      v47 = v180;
      v46 += v180;
      a3 += v180;
      if ((v179 & 1) != v48)
      {
        v50 = v45 - 1;
        break;
      }
    }

    v31 = v164;
    a4 = v151;
    v62 = v157;
    v22 = v158;
    v38 = v150;
    if (v179)
    {
      if (v50 < v150)
      {
        goto LABEL_145;
      }

      if (v150 < v50)
      {
        v63 = v47 * (v50 - 1);
        v64 = v50 * v47;
        v65 = v50;
        v66 = v150;
        v67 = v150 * v47;
        do
        {
          if (v66 != --v65)
          {
            v68 = *v165;
            if (!*v165)
            {
              goto LABEL_149;
            }

            v69 = v50;
            a3 = &v68[v67];
            v179 = *v175;
            v179(v156, &v68[v67], v16, v62);
            if (v67 < v63 || a3 >= &v68[v64])
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v67 != v63)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v179)(&v68[v63], v156, v16);
            v62 = v157;
            v22 = v158;
            v50 = v69;
            v5 = v163;
            v47 = v180;
          }

          ++v66;
          v63 -= v47;
          v64 -= v47;
          v67 += v47;
        }

        while (v66 < v65);
        v31 = v164;
        a4 = v151;
        v38 = v150;
      }
    }

LABEL_31:
    v70 = v165[1];
    if (v50 >= v70)
    {
      goto LABEL_40;
    }

    if (__OFSUB__(v50, v38))
    {
      goto LABEL_142;
    }

    if (v50 - v38 >= a4)
    {
      goto LABEL_40;
    }

    if (__OFADD__(v38, a4))
    {
      goto LABEL_143;
    }

    if ((v38 + a4) >= v70)
    {
      v71 = v165[1];
    }

    else
    {
      v71 = v38 + a4;
    }

    if (v71 < v38)
    {
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      v141 = sub_100784A7C(a4);
      goto LABEL_113;
    }

    if (v50 == v71)
    {
LABEL_40:
      v36 = v50;
      if (v50 < v38)
      {
        goto LABEL_141;
      }

      goto LABEL_41;
    }

    v163 = v5;
    v117 = *v165;
    v118 = v31[9];
    v174 = v31[2];
    v119 = &v117[v118 * (v50 - 1)];
    v169 = -v118;
    v150 = v38;
    v120 = v38 - v50;
    v170 = v117;
    v153 = v118;
    v121 = &v117[v50 * v118];
    v122 = v173;
    v154 = v71;
LABEL_95:
    v167 = v50;
    v159 = v121;
    v124 = v121;
    v160 = v120;
    v125 = v120;
    v161 = v119;
    v126 = v119;
LABEL_96:
    v179 = v124;
    v180 = v125;
    v127 = v174;
    (v174)(v181, v124, v16, v33);
    v127(v22, v126, v16);
    sub_10079A934();
    v128 = sub_10079A204();
    v129 = *(v128 - 8);
    a3 = v22;
    v130 = *(v129 + 48);
    if (v130(v122, 1, v128) == 1)
    {
      v123 = v122;
LABEL_93:
      sub_100007840(v123, &qword_100AF50A0);
      a4 = v177;
      v16 = v178;
      a3 = *v177;
      v22 = v158;
      (*v177)(v158, v178);
      (a3)(v181, v16);
      goto LABEL_94;
    }

    sub_10079A1F4();
    v132 = v131;
    v133 = *(v129 + 8);
    v133(v122, v128);
    v134 = v172;
    sub_10079A934();
    if (v130(v134, 1, v128) == 1)
    {
      v123 = v134;
      v122 = v173;
      goto LABEL_93;
    }

    sub_10079A1F4();
    v136 = v135;
    v133(v134, v128);
    v16 = v178;
    a4 = *v177;
    (*v177)(a3, v178);
    (a4)(v181, v16);
    v22 = a3;
    if (v136 < v132)
    {
      break;
    }

    v122 = v173;
LABEL_94:
    v50 = v167 + 1;
    v119 = &v161[v153];
    v120 = v160 - 1;
    v121 = &v159[v153];
    v36 = v154;
    if (v167 + 1 != v154)
    {
      goto LABEL_95;
    }

    v5 = v163;
    v38 = v150;
    if (v154 < v150)
    {
      goto LABEL_141;
    }

LABEL_41:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v37 = v157;
    }

    else
    {
      v37 = sub_10066B274(0, *(v157 + 2) + 1, 1, v157);
    }

    a3 = *(v37 + 2);
    v72 = *(v37 + 3);
    a4 = a3 + 1;
    if (a3 >= v72 >> 1)
    {
      v37 = sub_10066B274((v72 > 1), a3 + 1, 1, v37);
    }

    *(v37 + 2) = a4;
    v73 = &v37[16 * a3];
    *(v73 + 4) = v38;
    *(v73 + 5) = v36;
    v74 = *v152;
    if (!*v152)
    {
      goto LABEL_151;
    }

    if (a3)
    {
      while (1)
      {
        a3 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v75 = *(v37 + 4);
          v76 = *(v37 + 5);
          v85 = __OFSUB__(v76, v75);
          v77 = v76 - v75;
          v78 = v85;
LABEL_60:
          if (v78)
          {
            goto LABEL_130;
          }

          v91 = &v37[16 * a4];
          v93 = *v91;
          v92 = *(v91 + 1);
          v94 = __OFSUB__(v92, v93);
          v95 = v92 - v93;
          v96 = v94;
          if (v94)
          {
            goto LABEL_133;
          }

          v97 = &v37[16 * a3 + 32];
          v99 = *v97;
          v98 = *(v97 + 1);
          v85 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v85)
          {
            goto LABEL_136;
          }

          if (__OFADD__(v95, v100))
          {
            goto LABEL_137;
          }

          if (v95 + v100 >= v77)
          {
            if (v77 < v100)
            {
              a3 = a4 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        v101 = &v37[16 * a4];
        v103 = *v101;
        v102 = *(v101 + 1);
        v85 = __OFSUB__(v102, v103);
        v95 = v102 - v103;
        v96 = v85;
LABEL_74:
        if (v96)
        {
          goto LABEL_132;
        }

        v104 = &v37[16 * a3];
        v106 = *(v104 + 4);
        v105 = *(v104 + 5);
        v85 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v85)
        {
          goto LABEL_135;
        }

        if (v107 < v95)
        {
          goto LABEL_3;
        }

LABEL_81:
        v112 = a3 - 1;
        if (a3 - 1 >= a4)
        {
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (!*v165)
        {
          goto LABEL_148;
        }

        v113 = v37;
        a4 = *&v37[16 * v112 + 32];
        v114 = *&v37[16 * a3 + 40];
        sub_10073D98C(&(*v165)[v164[9] * a4], &(*v165)[v164[9] * *&v37[16 * a3 + 32]], &(*v165)[v164[9] * v114], v74);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v114 < a4)
        {
          goto LABEL_126;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v115 = v113;
        }

        else
        {
          v115 = sub_100784A7C(v113);
        }

        v16 = v178;
        if (v112 >= *(v115 + 2))
        {
          goto LABEL_127;
        }

        v116 = &v115[16 * v112];
        *(v116 + 4) = a4;
        *(v116 + 5) = v114;
        v182 = v115;
        sub_1007849F0(a3);
        v37 = v182;
        a4 = *(v182 + 2);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v79 = &v37[16 * a4 + 32];
      v80 = *(v79 - 64);
      v81 = *(v79 - 56);
      v85 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      if (v85)
      {
        goto LABEL_128;
      }

      v84 = *(v79 - 48);
      v83 = *(v79 - 40);
      v85 = __OFSUB__(v83, v84);
      v77 = v83 - v84;
      v78 = v85;
      if (v85)
      {
        goto LABEL_129;
      }

      v86 = &v37[16 * a4];
      v88 = *v86;
      v87 = *(v86 + 1);
      v85 = __OFSUB__(v87, v88);
      v89 = v87 - v88;
      if (v85)
      {
        goto LABEL_131;
      }

      v85 = __OFADD__(v77, v89);
      v90 = v77 + v89;
      if (v85)
      {
        goto LABEL_134;
      }

      if (v90 >= v82)
      {
        v108 = &v37[16 * a3 + 32];
        v110 = *v108;
        v109 = *(v108 + 1);
        v85 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v85)
        {
          goto LABEL_138;
        }

        if (v77 < v111)
        {
          a3 = a4 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_60;
    }

LABEL_3:
    v31 = v164;
    v35 = v165[1];
    a4 = v151;
    if (v36 >= v35)
    {
      goto LABEL_110;
    }
  }

  v122 = v173;
  v137 = v180;
  if (v170)
  {
    a3 = v175;
    a4 = *v175;
    v138 = v171;
    v139 = v179;
    (*v175)(v171, v179, v16);
    swift_arrayInitWithTakeFrontToBack();
    (a4)(v126, v138, v16);
    v126 += v169;
    v124 = v139 + v169;
    v140 = __CFADD__(v137, 1);
    v125 = v137 + 1;
    if (v140)
    {
      goto LABEL_94;
    }

    goto LABEL_96;
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
}

void sub_10073D98C(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v8 = sub_1001F1160(&qword_100AF50A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v85 = &v79 - v12;
  __chkstk_darwin(v13);
  v83 = &v79 - v14;
  __chkstk_darwin(v15);
  v17 = &v79 - v16;
  v18 = sub_10079A984();
  v87 = *(v18 - 8);
  __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  v89 = &v79 - v20;
  __chkstk_darwin(v21);
  v23 = &v79 - v22;
  __chkstk_darwin(v24);
  v91 = &v79 - v26;
  v84 = *(v27 + 72);
  if (!v84)
  {
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    return;
  }

  v94 = a1;
  if (a2 - a1 == 0x8000000000000000 && v84 == -1)
  {
    goto LABEL_68;
  }

  v28 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v84 == -1)
  {
    goto LABEL_69;
  }

  v29 = (a2 - a1) / v84;
  v97 = v94;
  v96 = a4;
  v90 = v18;
  if (v29 >= v28 / v84)
  {
    v32 = v28 / v84 * v84;
    v91 = v25;
    if (a4 < a2 || a2 + v32 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v33 = v94;
    }

    else
    {
      v33 = v94;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    if (v32 < 1)
    {
      v60 = a4 + v32;
    }

    else
    {
      v80 = v10;
      v58 = -v84;
      v83 = (v87 + 8);
      v84 = v87 + 16;
      v59 = a4 + v32;
      v60 = a4 + v32;
      v92 = a4;
      v88 = v58;
      do
      {
        v79 = v60;
        v61 = a2;
        v62 = a2 + v58;
        v93 = v62;
        v86 = v61;
        while (1)
        {
          if (v61 <= v33)
          {
            v97 = v61;
            v95 = v79;
            goto LABEL_66;
          }

          v63 = a3;
          v82 = v60;
          v64 = *v84;
          v87 = v59 + v58;
          v64(v89);
          (v64)(v91, v62, v18);
          v65 = v85;
          sub_10079A934();
          v66 = sub_10079A204();
          v67 = *(v66 - 8);
          v68 = *(v67 + 48);
          if (v68(v65, 1, v66) == 1 || (sub_10079A1F4(), v70 = v69, v81 = *(v67 + 8), v81(v65, v66), v65 = v80, sub_10079A934(), v68(v65, 1, v66) == 1))
          {
            sub_100007840(v65, &qword_100AF50A0);
            v71 = 0;
          }

          else
          {
            sub_10079A1F4();
            v73 = v72;
            v81(v65, v66);
            v71 = v73 < v70;
          }

          v74 = v92;
          v75 = v94;
          a3 = v88 + v63;
          v76 = *v83;
          v18 = v90;
          (*v83)(v91, v90);
          v76(v89, v18);
          if (v71)
          {
            break;
          }

          v77 = v87;
          v60 = v87;
          if (v63 < v59 || a3 >= v59)
          {
            swift_arrayInitWithTakeFrontToBack();
            v33 = v75;
          }

          else
          {
            v33 = v75;
            if (v63 != v59)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = v60;
          v58 = v88;
          v61 = v86;
          v62 = v93;
          if (v77 <= v74)
          {
            a2 = v86;
            goto LABEL_65;
          }
        }

        if (v63 < v86 || a3 >= v86)
        {
          v78 = v93;
          swift_arrayInitWithTakeFrontToBack();
          v60 = v82;
          v33 = v75;
          a2 = v78;
        }

        else
        {
          v60 = v82;
          v33 = v75;
          a2 = v93;
          if (v63 != v86)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v58 = v88;
      }

      while (v59 > v74);
    }

LABEL_65:
    v97 = a2;
    v95 = v60;
  }

  else
  {
    v30 = v29 * v84;
    if (a4 < v94 || v94 + v30 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v31 = v23;
    }

    else
    {
      v31 = v23;
      if (a4 != v94)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v89 = (a4 + v30);
    v95 = a4 + v30;
    v34 = v30 < 1 || a2 >= a3;
    v35 = v84;
    if (!v34)
    {
      v36 = *(v87 + 16);
      v87 += 16;
      v88 = v36;
      v85 = (v87 - 8);
      v86 = a3;
      do
      {
        v93 = a2;
        v37 = a2;
        v38 = v88;
        v88(v91, v37, v18);
        v92 = a4;
        v38(v31, a4, v18);
        sub_10079A934();
        v39 = sub_10079A204();
        v40 = v31;
        v41 = *(v39 - 8);
        v42 = *(v41 + 48);
        v43 = v42(v17, 1, v39);
        v44 = v17;
        if (v43 == 1 || (sub_10079A1F4(), v46 = v45, v47 = *(v41 + 8), v47(v17, v39), v48 = v17, v49 = v83, sub_10079A934(), v50 = v42(v49, 1, v39), v44 = v49, v17 = v48, v35 = v84, v50 == 1))
        {
          sub_100007840(v44, &qword_100AF50A0);
          v51 = *v85;
          v18 = v90;
          (*v85)(v40, v90);
          v51(v91, v18);
          v31 = v40;
        }

        else
        {
          v54 = v83;
          sub_10079A1F4();
          v56 = v55;
          v47(v54, v39);
          v57 = *v85;
          v18 = v90;
          (*v85)(v40, v90);
          v57(v91, v18);
          v31 = v40;
          if (v56 < v46)
          {
            v52 = v94;
            a2 = v93 + v35;
            a4 = v92;
            v53 = v86;
            if (v94 < v93 || v94 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v94 != v93)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            goto LABEL_30;
          }
        }

        a2 = v93;
        a4 = v92 + v35;
        v52 = v94;
        v53 = v86;
        if (v94 < v92 || v94 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v94 != v92)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v96 = a4;
LABEL_30:
        v94 = v52 + v35;
        v97 = v52 + v35;
      }

      while (a4 < v89 && a2 < v53);
    }
  }

LABEL_66:
  sub_1006D5EFC(&v97, &v96, &v95);
}

uint64_t sub_10073E27C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10073E2C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10073E318()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AF50A8);
  sub_100008B98(v0, qword_100AF50A8);
  return sub_10079ACD4();
}

void sub_10073E39C()
{
  qword_100B23B18 = 0;
  qword_100B23B20 = 0;
  qword_100B23B10 = &_swiftEmptyArrayStorage;
  byte_100B23B28 = 0;
}

uint64_t sub_10073E3BC()
{
  v1[4] = v0;
  sub_1001F1160(&qword_100AD7EB0);
  v1[5] = swift_task_alloc();
  v2 = sub_1007A1C64();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_1001F1160(&qword_100AF51C0);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_10073E51C, v0, 0);
}

uint64_t sub_10073E51C()
{
  v1 = v0[11];
  v2 = v0[8];
  v12 = v0[9];
  v13 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v11 = v0[4];
  v0[2] = *(v11 + 120);
  sub_100017E74();
  (*(v3 + 104))(v2, enum case for DispatchQoS.QoSClass.default(_:), v4);

  v6 = sub_1007A2DB4();
  (*(v3 + 8))(v2, v4);
  v0[3] = v6;
  v7 = sub_1007A2D24();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_1001F1160(&qword_100ADB0A8);
  sub_100005920(&qword_100AECF88, &qword_100ADB0A8);
  sub_10073F90C(&qword_100AE8CA0, 255, sub_100017E74);
  sub_10079BAB4();
  sub_100201E64(v5);

  swift_allocObject();
  swift_weakInit();
  sub_100005920(&qword_100AF51C8, &qword_100AF51C0);
  v8 = sub_10079BB04();

  (*(v13 + 8))(v1, v12);
  *(v11 + 128) = v8;

  v9 = v0[1];

  return v9();
}

uint64_t sub_10073E7F8(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_1007A2744();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = v5;
    *(v11 + 40) = v6;
    *(v11 + 48) = v7;
    *(v11 + 56) = v9;
    sub_1002FB084(v5, v6, v7);
    sub_1003457A0(0, 0, v4, &unk_100842DC0, v11);
  }

  return result;
}

uint64_t sub_10073E950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v7[11] = a5;
  v7[12] = a7;
  v7[10] = a4;
  if (a6)
  {
    if (a6 == 1)
    {
      v10 = swift_task_alloc();
      v7[14] = v10;
      *v10 = v7;
      v10[1] = sub_10073ECA0;

      return sub_10073F214(a4, a5);
    }

    else
    {
      v12 = swift_task_alloc();
      v7[13] = v12;
      *v12 = v7;
      v12[1] = sub_10073EBAC;

      return sub_10073ED94();
    }
  }

  else
  {

    return _swift_task_switch(sub_10073EAB4, a7, 0);
  }
}

uint64_t sub_10073EAB4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  sub_10079B904();
  sub_1002FB084(v2, v1, 0);

  v3 = *(v0 + 40);
  *(v0 + 48) = *(v0 + 16);
  *(v0 + 56) = v2;
  *(v0 + 64) = v1;
  *(v0 + 72) = v3;

  sub_10079B8F4();

  sub_1002FB09C(v2, v1, 0);

  sub_1002FB09C(v2, v1, 0);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10073EBAC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10073ECA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10073EDB4()
{
  *(v0 + 120) = *(*(v0 + 112) + 112);
  sub_10079B904();

  *(v0 + 128) = *(v0 + 24);
  *(v0 + 41) = *(v0 + 40);
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_10073EE80;

  return sub_1007671C0();
}

uint64_t sub_10073EE80(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = *(v4 + 112);

    v6 = sub_10073F054;
    v7 = v5;
  }

  else
  {
    v7 = *(v4 + 112);
    *(v4 + 160) = a1;
    v6 = sub_10073EFC0;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10073EFC0()
{
  v1 = *(v0 + 41);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 72) = v1;
  sub_10079B8F4();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10073F054()
{
  v12 = v0;
  if (qword_100AD1BA0 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AF50A8);
  swift_errorRetain();
  v2 = sub_10079ACC4();
  v3 = sub_1007A29B4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = sub_1007A3B84();
    v8 = sub_1000070F4(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch report concerns with error: %s", v4, 0xCu);
    sub_1000074E0(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10073F214(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  sub_1001F1160(&qword_100AD67D0);
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_10073F2B4, v2, 0);
}

uint64_t sub_10073F2B4()
{
  sub_10079B904();
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v2)
  {
    v3 = *(v0 + 24);
    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    v8 = sub_1007A2744();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    v10 = sub_10073F90C(&qword_100AECFB0, v9, type metadata accessor for ReportIssueInteractor);
    v11 = swift_allocObject();
    v11[2] = v5;
    v11[3] = v10;
    v29 = v3;
    v11[4] = v3;
    v11[5] = v2;
    v11[6] = v6;
    v11[7] = v7;
    v11[8] = v5;

    swift_retain_n();
    swift_bridgeObjectRetain_n();
    sub_1003457A0(0, 0, v4, &unk_100842DE0, v11);

    sub_100798004();
    v28 = sub_100797FF4();
    v12 = *(v5 + 192);
    if (v12)
    {
      [v12 intValue];
    }

    v30 = v2;
    v17 = *(v1 + 16);
    if (!v17)
    {
LABEL_16:
      sub_100797F24();

      *(v0 + 48) = v1;
      *(v0 + 56) = v29;
      *(v0 + 64) = v30;
      *(v0 + 72) = 1;
      sub_10079B8F4();

      goto LABEL_17;
    }

    v18 = 0;
    v19 = (v1 + 40);
    v20 = _swiftEmptyArrayStorage;
    while (v18 < *(v1 + 16))
    {
      v21 = *(v19 - 1);
      v22 = *v19;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_10000B3D8(0, *(v20 + 2) + 1, 1, v20);
      }

      v24 = *(v20 + 2);
      v23 = *(v20 + 3);
      if (v24 >= v23 >> 1)
      {
        v20 = sub_10000B3D8((v23 > 1), v24 + 1, 1, v20);
      }

      ++v18;
      *(v20 + 2) = v24 + 1;
      v25 = &v20[16 * v24];
      *(v25 + 4) = v21;
      *(v25 + 5) = v22;
      v19 += 9;
      if (v17 == v18)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  if (qword_100AD1BA0 != -1)
  {
LABEL_21:
    swift_once();
  }

  v13 = sub_10079ACE4();
  sub_100008B98(v13, qword_100AF50A8);
  v14 = sub_10079ACC4();
  v15 = sub_1007A29B4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Selected report issue's ID is nil", v16, 2u);
  }

LABEL_17:

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10073F66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_10073F694, a8, 0);
}

uint64_t sub_10073F694()
{
  sub_10000E3E8((v0[6] + 136), *(v0[6] + 160));
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1002CAA50;
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  return sub_10076616C(v5, v4, v2, v3);
}

uint64_t sub_10073F740()
{

  sub_1000074E0(v0 + 136);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10073F798()
{
  sub_10073F740();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10073F7E8(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_10073F834(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002812C;

  return sub_10073E950(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10073F90C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10073F954(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100009A34;

  return sub_10073F66C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t type metadata accessor for RERootContainerView()
{
  result = qword_100AF5230;
  if (!qword_100AF5230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10073FAA4()
{
  sub_100247C8C();
  if (v0 <= 0x3F)
  {
    sub_10073FD08(319, &qword_100ADB690, &type metadata accessor for ColorScheme);
    if (v1 <= 0x3F)
    {
      sub_10028B510();
      if (v2 <= 0x3F)
      {
        sub_1006C633C(319, &qword_100AD8BE0, &type metadata for Bool, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_10073FD08(319, &qword_100AF5240, &type metadata accessor for ColorSchemeContrast);
          if (v4 <= 0x3F)
          {
            sub_10073FD08(319, &qword_100AF35B0, &type metadata accessor for LayoutDirection);
            if (v5 <= 0x3F)
            {
              type metadata accessor for REActionMenuState(319);
              if (v6 <= 0x3F)
              {
                type metadata accessor for PageTurnViewModel(319);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for BookReaderViewModel();
                  if (v8 <= 0x3F)
                  {
                    sub_10073FD5C();
                    if (v9 <= 0x3F)
                    {
                      sub_10024BBD0();
                      if (v10 <= 0x3F)
                      {
                        sub_1006C633C(319, &qword_100AEECE8, &type metadata for String, &type metadata accessor for Optional);
                        if (v11 <= 0x3F)
                        {
                          sub_10079ACE4();
                          if (v12 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10073FD08(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10079BCD4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10073FD5C()
{
  if (!qword_100AF5248)
  {
    type metadata accessor for HistoryViewModel();
    sub_10074AFD4(&qword_100AD9FA8, type metadata accessor for HistoryViewModel);
    v0 = sub_10079C054();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF5248);
    }
  }
}

uint64_t sub_10073FE0C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&unk_100ADB4C0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for RERootContainerView();
  sub_1000077D8(v1 + *(v10 + 24), v9, &unk_100ADB4C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10020B3C8(v9, a1, &unk_100ADB6B0);
  }

  sub_1007A29C4();
  v12 = sub_10079D244();
  sub_10079AB44();

  sub_10079C814();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10073FFF4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&unk_100ADB4C0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for RERootContainerView();
  sub_1000077D8(v1 + *(v10 + 28), v9, &unk_100ADB4C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10020B3C8(v9, a1, &unk_100ADB6B0);
  }

  sub_1007A29C4();
  v12 = sub_10079D244();
  sub_10079AB44();

  sub_10079C814();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1007401DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&unk_100ADB740);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for RERootContainerView();
  sub_1000077D8(v1 + *(v10 + 44), v9, &unk_100ADB740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079C104();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1007A29C4();
    v13 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1007403E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001F1160(&qword_100AF52C0);
  __chkstk_darwin(v3);
  v5 = (&v20 - v4);
  v6 = sub_1001F1160(&qword_100AF52C8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  *v5 = sub_10079E444();
  v5[1] = v10;
  v11 = sub_1001F1160(&qword_100AF52D0);
  sub_10074066C(v1, v5 + *(v11 + 44));
  KeyPath = swift_getKeyPath();
  type metadata accessor for RERootContainerView();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_10079F4F4();
  swift_unknownObjectRelease();
  v14 = (v5 + *(v3 + 36));
  *v14 = KeyPath;
  v14[1] = v13;
  v20 = 0;
  v21 = 0xE000000000000000;
  v15 = sub_100749340();
  v16 = sub_100206ECC();
  sub_10079D904();
  sub_100007840(v5, &qword_100AF52C0);
  v20 = v3;
  v21 = &type metadata for String;
  v22 = v15;
  v23 = v16;
  swift_getOpaqueTypeConformance2();
  sub_10079D974();
  (*(v7 + 8))(v9, v6);
  v17 = sub_10079DDC4();
  LOBYTE(v6) = sub_10079D294();
  result = sub_1001F1160(&qword_100AF5300);
  v19 = a1 + *(result + 36);
  *v19 = v17;
  *(v19 + 8) = v6;
  return result;
}

uint64_t sub_10074066C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = sub_1001F1160(&qword_100AF5308);
  v4 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v41 - v5;
  v45 = sub_1001F1160(&qword_100AF5310);
  __chkstk_darwin(v45);
  v7 = (&v41 - v6);
  v8 = type metadata accessor for RERootContainerView();
  v9 = v8 - 8;
  v51 = *(v8 - 8);
  v10 = *(v51 + 64);
  __chkstk_darwin(v8);
  v52 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&qword_100AF5318);
  __chkstk_darwin(v11 - 8);
  v47 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  v16 = sub_1001F1160(&qword_100AF5320);
  __chkstk_darwin(v16 - 8);
  v46 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v41 - v19;
  v21 = sub_1001F1160(&qword_100AF5328);
  __chkstk_darwin(v21 - 8);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v27 = &v41 - v25;
  if ((*(a1 + *(v9 + 84)) & 0x10) != 0)
  {
    sub_100740CF0(v20);
    v49 = v10;
    v28 = v52;
    sub_10074A490(a1, v52, type metadata accessor for RERootContainerView);
    v29 = *(v51 + 80);
    v44 = a2;
    v30 = (v29 + 16) & ~v29;
    v31 = swift_allocObject();
    sub_10074A428(v28, v31 + v30, type metadata accessor for RERootContainerView);
    *v7 = sub_10074943C;
    v7[1] = v31;
    swift_storeEnumTagMultiPayload();
    sub_1001F1160(&qword_100AF5338);
    v45 = a1;
    v43 = v4;
    sub_1001F1160(&qword_100AF5340);
    sub_1007494E8();
    sub_100005920(&qword_100AF5370, &qword_100AF5340);
    sub_10079CCA4();
    v32 = v46;
    v41 = v20;
    v42 = v23;
    sub_1000077D8(v20, v46, &qword_100AF5320);
    v33 = v47;
    sub_1000077D8(v15, v47, &qword_100AF5318);
    v34 = v48;
    sub_1000077D8(v32, v48, &qword_100AF5320);
    v35 = sub_1001F1160(&qword_100AF5378);
    sub_1000077D8(v33, v34 + *(v35 + 48), &qword_100AF5318);
    sub_100007840(v15, &qword_100AF5318);
    sub_100007840(v41, &qword_100AF5320);
    a2 = v44;
    a1 = v45;
    sub_100007840(v33, &qword_100AF5318);
    v23 = v42;
    sub_100007840(v32, &qword_100AF5320);
    sub_10020B3C8(v34, v27, &qword_100AF5308);
    (*(v43 + 56))(v27, 0, 1, v50);
  }

  else
  {
    (*(v4 + 56))(&v41 - v25, 1, 1, v50, v26);
  }

  v36 = v52;
  sub_10074A490(a1, v52, type metadata accessor for RERootContainerView);
  v37 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v38 = swift_allocObject();
  sub_10074A428(v36, v38 + v37, type metadata accessor for RERootContainerView);
  sub_1000077D8(v27, v23, &qword_100AF5328);
  sub_1000077D8(v23, a2, &qword_100AF5328);
  v39 = (a2 + *(sub_1001F1160(&qword_100AF5330) + 48));
  *v39 = sub_100749424;
  v39[1] = v38;

  sub_100007840(v27, &qword_100AF5328);

  return sub_100007840(v23, &qword_100AF5328);
}

uint64_t sub_100740CF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = type metadata accessor for RERootContainerView();
  __chkstk_darwin(v3);
  v57 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v56 = &v50 - v6;
  __chkstk_darwin(v7);
  v9 = &v50 - v8;
  v60 = 0;
  v61 = 0;
  v11 = (*(v1 + *(v10 + 56)))[7];
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 96);
  swift_unknownObjectRetain();
  v14 = v13(ObjectType, v11);
  swift_unknownObjectRelease();
  v15 = [objc_opt_self() standardUserDefaults];
  v16 = sub_1007A2214();
  v17 = [v15 BOOLForKey:v16];

  v18 = *(v2 + *(v3 + 48));
  swift_getKeyPath();
  v59 = v18;
  sub_10074AFD4(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  v19 = *(v18 + 328);
  if (v19 >> 62 && (v19 & 0xC000000000000000) != 0x4000000000000000)
  {
    swift_getKeyPath();
    v59 = v18;
    sub_100797A14();

    if (*(v18 + 328) == 0x8000000000000018)
    {
      swift_getKeyPath();
      v59 = v18;
      sub_100797A14();

      v17 = (*(v18 + 280) == 1) & v17;
    }

    else
    {
      v17 = 0;
    }
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v20 = sub_10079F4F4();
  swift_unknownObjectRelease();
  v21 = 0;
  v22 = 0;
  if (v20 == 1)
  {
    v23 = v56;
    if (v17)
    {
      v24 = REActionMenuState.chapterScrubbingState.getter();
      if (v24)
      {
        v22 = v24;
        v61 = v24;
        v60 = *(v24 + OBJC_IVAR____TtC5Books21ChapterScrubbingState_currentContentSnapshotView);
        v21 = v60;
      }

      else
      {
        v25 = sub_10079ACC4();
        v26 = sub_1007A29B4();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v25, v26, "Somehow we are not scrubbing and not animating but we ARE chapter scrubbing", v27, 2u);
        }

        v21 = 0;
        v22 = 0;
      }
    }
  }

  else
  {
    v23 = v56;
  }

  v54 = v21;
  sub_10074A490(v2, v9, type metadata accessor for RERootContainerView);
  sub_10074A490(v2, v23, type metadata accessor for RERootContainerView);
  v28 = v57;
  sub_10074A490(v2, v57, type metadata accessor for RERootContainerView);
  v29 = sub_10079ACC4();
  v30 = sub_1007A29A4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v59 = v52;
    *v31 = 67109890;
    *(v31 + 4) = v22 != 0;
    *(v31 + 8) = 2080;
    v32 = v9;
    v33 = *&v9[*(v3 + 48)];
    swift_getKeyPath();
    v53 = v22;
    v58 = v33;
    v51 = v30;
    sub_100797A14();

    v34 = *(v33 + 328);
    sub_1002B6C38(v34);
    v35 = ActionMenuState.description.getter(v34);
    v37 = v36;
    sub_1002B6C54(v34);
    sub_10074A504(v32, type metadata accessor for RERootContainerView);
    v38 = sub_1000070F4(v35, v37, &v59);

    *(v31 + 10) = v38;
    *(v31 + 18) = 2080;
    v39 = *(v3 + 48);
    v50 = v3;
    v40 = v56;
    v41 = *&v56[v39];
    swift_getKeyPath();
    v58 = v41;
    sub_100797A14();

    v42 = *(v41 + 272);
    LOBYTE(v37) = *(v41 + 280);
    sub_100337314(v42, v37);
    v43 = ScrubberState.description.getter(v42, v37);
    v45 = v44;
    sub_100342F4C(v42, v37);
    sub_10074A504(v40, type metadata accessor for RERootContainerView);
    v46 = sub_1000070F4(v43, v45, &v59);

    *(v31 + 20) = v46;
    *(v31 + 28) = 1024;
    v47 = v57;
    v48 = *(v57 + *(v50 + 48));
    swift_getKeyPath();
    v58 = v48;
    sub_100797A14();

    LODWORD(v46) = *(v48 + 280) == 1;
    sub_10074A504(v47, type metadata accessor for RERootContainerView);
    *(v31 + 30) = v46;
    _os_log_impl(&_mh_execute_header, v29, v51, "have chapter state? %{BOOL}d actionMenuState %s and scrubberState %s isChapter? %{BOOL}d", v31, 0x22u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10074A504(v28, type metadata accessor for RERootContainerView);

    sub_10074A504(v9, type metadata accessor for RERootContainerView);
    sub_10074A504(v23, type metadata accessor for RERootContainerView);
  }

  sub_100741F18(v2, &v61, &v60, v55, v14);
}

uint64_t sub_100741404(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RERootContainerView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_1001F1160(&qword_100AF5380);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - v8;
  sub_10079BEB4();
  sub_1007416B8(v9, v10, v11);
  sub_10074A490(a2, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RERootContainerView);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_10074A428(&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for RERootContainerView);
  v14 = sub_1001F1234(&qword_100AF5388);
  v15 = type metadata accessor for REMenuButtonView();
  v16 = sub_10074AFD4(&qword_100AF5390, type metadata accessor for REMenuButtonView);
  v19 = v15;
  v20 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = v14;
  v20 = &type metadata for Bool;
  v21 = OpaqueTypeConformance2;
  v22 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  sub_10079DA54();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1007416B8@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v45 = a1;
  v6 = type metadata accessor for RERootContainerView();
  v7 = v6 - 8;
  v42 = *(v6 - 8);
  v41 = *(v42 + 64);
  __chkstk_darwin(v6);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for REMenuButtonView();
  __chkstk_darwin(v9);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1001F1160(&qword_100AF5388);
  v13 = *(v12 - 8);
  v43 = v12;
  v44 = v13;
  __chkstk_darwin(v12);
  v15 = &v38 - v14;
  v16 = *(v3 + *(v7 + 64));

  sub_100742900(a3 < a2);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = v3 + *(v7 + 80);
  swift_unknownObjectWeakLoadStrong();
  v39 = *(v25 + 8);
  *v11 = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB4C0);
  swift_storeEnumTagMultiPayload();
  *(v11 + v9[5]) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v11 + v9[6]) = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB740);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *(v11 + v9[8]) = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB4E0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ChromeStyle();
  sub_10074AFD4(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
  v27 = sub_10079C484();
  v28 = v11 + v9[7];
  *v28 = KeyPath;
  v28[8] = 0;
  v29 = (v11 + v9[9]);
  *v29 = v27;
  v29[1] = v30;
  type metadata accessor for BookReaderViewModel();
  sub_10074AFD4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_10079E324();
  v31 = (v11 + v9[11]);
  *v31 = v18;
  v31[1] = v20;
  v31[2] = v22;
  v31[3] = v24;
  *(v11 + v9[12] + 8) = v39;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(v11 + v9[13]) = a2;
  sub_1001F1160(&qword_100AE3E70);
  sub_10079CF44();
  v32 = sub_10074AFD4(&qword_100AF5390, type metadata accessor for REMenuButtonView);
  sub_10079D9B4();

  sub_10074A504(v11, type metadata accessor for REMenuButtonView);
  swift_getKeyPath();
  v47 = v16;
  sub_100797A14();

  v46 = *(v16 + OBJC_IVAR____TtC5Books19BookReaderViewModel__closedAndNoOverlayVisible);
  v33 = v40;
  sub_10074A490(v3, v40, type metadata accessor for RERootContainerView);
  v34 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v35 = swift_allocObject();
  sub_10074A428(v33, v35 + v34, type metadata accessor for RERootContainerView);
  v47 = v9;
  v48 = v32;
  swift_getOpaqueTypeConformance2();
  v36 = v43;
  sub_10079DC24();

  return (*(v44 + 8))(v15, v36);
}

uint64_t sub_100741C88()
{
  v0 = sub_10079D304();
  v1 = sub_10079D304();
  type metadata accessor for RERootContainerView();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1006ACC70(v0 == v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_100741D18@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1001F1160(&qword_100AF53C0);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  *v8 = sub_10079CB24();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = sub_1001F1160(&qword_100AF53C8);
  sub_100748994(a2, a1, &v8[*(v9 + 44)]);
  sub_10079E474();
  sub_10079C414();
  sub_10020B3C8(v8, a3, &qword_100AF53C0);
  v10 = a3 + *(sub_1001F1160(&qword_100AF53D0) + 36);
  v11 = v14[5];
  *(v10 + 64) = v14[4];
  *(v10 + 80) = v11;
  *(v10 + 96) = v14[6];
  v12 = v14[1];
  *v10 = v14[0];
  *(v10 + 16) = v12;
  result = v14[3];
  *(v10 + 32) = v14[2];
  *(v10 + 48) = result;
  return result;
}

uint64_t sub_100741E7C@<X0>(void *a1@<X8>)
{
  sub_10032AB6C();
  result = sub_10079C834();
  *a1 = v3;
  return result;
}

uint64_t sub_100741F18@<X0>(void **a1@<X0>, void *a2@<X1>, void **a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v62 = sub_1001F1160(&qword_100AF5398);
  __chkstk_darwin(v62);
  v64 = &v58 - v10;
  v63 = type metadata accessor for ChapterScrubbingView();
  __chkstk_darwin(v63);
  v60 = (&v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v61 = &v58 - v13;
  v14 = sub_1001F1160(&qword_100AF53A0);
  v67 = *(v14 - 8);
  __chkstk_darwin(v14);
  v66 = &v58 - v15;
  v16 = sub_10079C824();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for RERootContainerView();
  v21 = *(v20 + 32);
  v65 = a1;
  v22 = a1 + v21;
  v23 = *v22;
  if (*(v22 + 8) == 1)
  {
    if (v23)
    {
LABEL_3:
      v24 = 1;
      return (*(v67 + 56))(a4, v24, 1, v14);
    }
  }

  else
  {

    sub_1007A29C4();
    v59 = v16;
    v25 = v14;
    v26 = a4;
    v27 = sub_10079D244();
    sub_10079AB44();

    a4 = v26;
    v14 = v25;
    sub_10079C814();
    swift_getAtKeyPath();
    sub_10020B534(v23, 0);
    (*(v17 + 8))(v19, v59);
    if (v72)
    {
      goto LABEL_3;
    }
  }

  swift_beginAccess();
  if (!*a2)
  {
    v32 = v65;
    v33 = *(v65 + *(v20 + 48));
    swift_getKeyPath();
    *&v72 = v33;
    sub_10074AFD4(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A14();

    if (*(v33 + 328) == 0x8000000000000010)
    {
      sub_100009864(v33 + 80, &v72);
      v34 = *v32;
      if (!*v32)
      {
        goto LABEL_21;
      }

      v68 = 0;

      v35 = v34;
      sub_10079DFE4();
      BYTE8(v70) = v69[0];
      v71 = *(&v69[0] + 1);
      *&v69[0] = v33;
      sub_1000077C0(&v72, v69 + 8);
      *&v70 = v35;
      v76 = v71;
      v72 = v69[0];
      v73 = v69[1];
      v74 = v69[2];
      v75 = v70;
      sub_1003CCD88(&v72, v64);
      swift_storeEnumTagMultiPayload();
      sub_10074AFD4(&qword_100AF53B0, type metadata accessor for ChapterScrubbingView);
      sub_100749C58();
      v36 = v66;
      sub_10079CCA4();
      sub_100749CAC(&v72);
      v37 = sub_1001F1160(&qword_100AF53A8);
      (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
    }

    else
    {
      v55 = sub_1001F1160(&qword_100AF53A8);
      v36 = v66;
      (*(*(v55 - 8) + 56))(v66, 1, 1, v55);
    }

LABEL_18:
    sub_10020B3C8(v36, a4, &qword_100AF53A0);
    v24 = 0;
    return (*(v67 + 56))(a4, v24, 1, v14);
  }

  v28 = v65;
  v29 = *(v65 + *(v20 + 48));
  sub_100009864(v29 + 80, &v72);
  v30 = *a3;
  if (*a3)
  {

    v31 = v30;
  }

  else
  {
    v38 = objc_allocWithZone(UIView);

    v31 = [v38 init];
  }

  v59 = v14;
  v39 = *v28;
  if (*v28)
  {
    KeyPath = swift_getKeyPath();
    v41 = v60;
    *v60 = KeyPath;
    sub_1001F1160(&unk_100ADB730);
    swift_storeEnumTagMultiPayload();
    sub_10000E3E8(&v72, *(&v73 + 1));
    Strong = swift_weakLoadStrong();
    v43 = v30;
    v44 = v39;

    if (Strong)
    {
      sub_10079F714();
      swift_getObjectType();
      sub_10079F694();
      v46 = v45;
      v48 = v47;

      swift_unknownObjectRelease();
    }

    else
    {
      v46 = 0;
      v48 = 0;
    }

    v49 = v63;
    *(v41 + *(v63 + 20)) = v29;
    v50 = (v41 + v49[6]);
    type metadata accessor for ChapterScrubbingState();
    sub_10074AFD4(&unk_100AE5498, type metadata accessor for ChapterScrubbingState);
    *v50 = sub_10079C024();
    v50[1] = v51;
    *(v41 + v49[8]) = v31;
    sub_100009864(&v72, v41 + v49[7]);
    v52 = v41 + v49[9];
    *v52 = 0;
    *(v52 + 8) = a5;
    *(v52 + 16) = v46;
    *(v52 + 24) = v48;
    *(v41 + v49[10]) = v44;
    sub_1000074E0(&v72);
    v53 = v61;
    sub_10074A428(v41, v61, type metadata accessor for ChapterScrubbingView);
    sub_10074A490(v53, v64, type metadata accessor for ChapterScrubbingView);
    swift_storeEnumTagMultiPayload();
    sub_10074AFD4(&qword_100AF53B0, type metadata accessor for ChapterScrubbingView);
    sub_100749C58();
    v36 = v66;
    sub_10079CCA4();

    sub_10074A504(v53, type metadata accessor for ChapterScrubbingView);
    v54 = sub_1001F1160(&qword_100AF53A8);
    (*(*(v54 - 8) + 56))(v36, 0, 1, v54);
    v14 = v59;
    goto LABEL_18;
  }

  type metadata accessor for ChromeStyle();
  sub_10074AFD4(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
  v57 = v30;
  sub_10079C474();
  __break(1u);
LABEL_21:
  type metadata accessor for ChromeStyle();
  sub_10074AFD4(&qword_100ADB6A0, type metadata accessor for ChromeStyle);

  result = sub_10079C474();
  __break(1u);
  return result;
}

uint64_t sub_100742900(int a1)
{
  v46 = a1;
  v2 = sub_10079C824();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&unk_100ADB4C0);
  __chkstk_darwin(v5);
  v7 = &v44 - v6;
  v8 = sub_1001F1160(&unk_100ADB6B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = sub_10079CEE4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v45 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v44 - v18;
  __chkstk_darwin(v20);
  v50 = &v44 - v21;
  v44 = type metadata accessor for RERootContainerView();
  v22 = *(v44 + 24);
  v49 = v1;
  sub_1000077D8(v1 + v22, v7, &unk_100ADB4C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10020B3C8(v7, v13, &unk_100ADB6B0);
  }

  else
  {
    sub_1007A29C4();
    v23 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();

    (*(v47 + 8))(v4, v48);
  }

  v24 = *(v15 + 48);
  if (v24(v13, 1, v14) == 1)
  {
    v25 = v13;
    return sub_100007840(v25, &unk_100ADB6B0);
  }

  v48 = v19;
  v26 = *(v15 + 32);
  v27 = v50;
  v26(v50, v13, v14);
  v28 = v49;
  sub_10073FFF4(v10);
  if (v24(v10, 1, v14) == 1)
  {
    (*(v15 + 8))(v27, v14);
    v25 = v10;
    return sub_100007840(v25, &unk_100ADB6B0);
  }

  v26(v48, v10, v14);
  v30 = *(v28 + *(v44 + 56));
  swift_getKeyPath();
  v51 = v30;
  sub_10074AFD4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  if (*v28)
  {
    v31 = qword_100AD17D0;
    v32 = *v28;
    v33 = v50;
    v34 = v45;
    if (v31 != -1)
    {
      v43 = v32;
      swift_once();
      v32 = v43;
    }

    v35 = *(v30 + 56);
    ObjectType = swift_getObjectType();
    v37 = *(v35 + 88);
    swift_unknownObjectRetain();
    v37(ObjectType, v35);
    swift_unknownObjectRelease();
    v38 = enum case for UserInterfaceSizeClass.compact(_:);
    v39 = *(v15 + 104);
    v39(v34, enum case for UserInterfaceSizeClass.compact(_:), v14);
    v40 = sub_10079CED4();
    v41 = *(v15 + 8);
    v41(v34, v14);
    if (v40)
    {
      v41(v48, v14);
    }

    else
    {
      v39(v34, v38, v14);
      v42 = v48;
      sub_10079CED4();
      v41(v34, v14);
      v41(v42, v14);
    }

    return (v41)(v33, v14);
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_10074AFD4(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_100743130()
{
  v1 = sub_1007A1C54();
  v33 = *(v1 - 8);
  v34 = v1;
  __chkstk_darwin(v1);
  v31 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1007A1CA4();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v29 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RERootContainerView();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  __chkstk_darwin(v4);
  v35 = sub_1007A1CC4();
  v28 = *(v35 - 8);
  __chkstk_darwin(v35);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v26 = &v24 - v9;
  v10 = sub_1001F1160(&qword_100ADB1C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v27 = v0;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10079B9A4();

  v13 = type metadata accessor for OverlayViewModel.Overlay(0);
  v14 = (*(*(v13 - 8) + 48))(v12, 1, v13);
  result = sub_100007840(v12, &qword_100ADB1C0);
  if (v14 == 1)
  {
    sub_100017E74();
    v24 = sub_1007A2D74();
    sub_1007A1CB4();
    v16 = v26;
    sub_1007A1D24();
    v28 = *(v28 + 8);
    (v28)(v7, v35);
    sub_10074A490(v27, &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RERootContainerView);
    v17 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v18 = swift_allocObject();
    sub_10074A428(&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for RERootContainerView);
    aBlock[4] = sub_100749BF0;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A2F048;
    v19 = _Block_copy(aBlock);

    v20 = v29;
    sub_1007A1C74();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10074AFD4(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0);
    sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
    v21 = v31;
    v22 = v34;
    sub_1007A3594();
    v23 = v24;
    sub_1007A2D04();
    _Block_release(v19);

    (*(v33 + 8))(v21, v22);
    (*(v30 + 8))(v20, v32);
    return (v28)(v16, v35);
  }

  return result;
}

uint64_t sub_1007436E8(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v281 = v5;
  v342 = v6;
  v7 = sub_1001F1160(&qword_100AF5488);
  __chkstk_darwin(v7 - 8);
  v9 = &v258 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v258 - v11;
  v330 = sub_1001F1160(&qword_100AF5490);
  v331 = *(v330 - 8);
  __chkstk_darwin(v330);
  v282 = &v258 - v13;
  v14 = sub_1001F1160(&qword_100AF5498);
  __chkstk_darwin(v14 - 8);
  v283 = &v258 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v308 = &v258 - v17;
  v315 = sub_1001F1160(&qword_100AF54A0);
  __chkstk_darwin(v315);
  v303 = (&v258 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v320 = &v258 - v20;
  __chkstk_darwin(v21);
  v325 = (&v258 - v22);
  v23 = sub_1001F1160(&qword_100AF54A8);
  __chkstk_darwin(v23 - 8);
  v25 = &v258 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v327 = &v258 - v27;
  v314 = sub_1001F1160(&qword_100AF54B0);
  __chkstk_darwin(v314);
  v321 = &v258 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v335 = &v258 - v30;
  v313 = type metadata accessor for CenteringHStackLayout();
  __chkstk_darwin(v313);
  v304 = &v258 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v276 = &v258 - v33;
  __chkstk_darwin(v34);
  v326 = &v258 - v35;
  __chkstk_darwin(v36);
  v291 = &v258 - v37;
  v312 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v312);
  v275 = &v258 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v274 = &v258 - v40;
  __chkstk_darwin(v41);
  v43 = &v258 - v42;
  __chkstk_darwin(v44);
  v333 = &v258 - v45;
  v340 = type metadata accessor for BookReaderChromeState();
  __chkstk_darwin(v340);
  v285 = &v258 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = type metadata accessor for HistoryModel(0);
  __chkstk_darwin(v258);
  v284 = &v258 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1001F1160(&qword_100ADFEE0);
  __chkstk_darwin(v48 - 8);
  v328 = &v258 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v318 = &v258 - v51;
  __chkstk_darwin(v52);
  v343 = &v258 - v53;
  __chkstk_darwin(v54);
  v334 = &v258 - v55;
  v316 = sub_1001F1160(&qword_100AF54B8);
  __chkstk_darwin(v316);
  v277 = &v258 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v295 = &v258 - v58;
  v317 = sub_1001F1160(&qword_100AF54C0);
  __chkstk_darwin(v317);
  v280 = &v258 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v62 = &v258 - v61;
  v319 = sub_1001F1160(&qword_100AF54C8);
  v301 = *(v319 - 8);
  __chkstk_darwin(v319);
  v279 = &v258 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v278 = &v258 - v65;
  __chkstk_darwin(v66);
  v299 = &v258 - v67;
  v297 = sub_1001F1160(&qword_100AF54D0);
  __chkstk_darwin(v297);
  v298 = &v258 - v68;
  v296 = sub_1001F1160(&qword_100AF54D8);
  __chkstk_darwin(v296);
  v302 = &v258 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v294 = &v258 - v71;
  __chkstk_darwin(v72);
  v329 = &v258 - v73;
  v345 = sub_10079C104();
  v337 = *(v345 - 8);
  __chkstk_darwin(v345);
  v75 = &v258 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v76);
  v78 = &v258 - v77;
  __chkstk_darwin(v79);
  v341 = &v258 - v80;
  v322 = v4;
  sub_10079BEB4();
  sub_100742900(v82 < v81);
  v344 = v2;
  v83 = *v2;
  if (!*v2)
  {
    type metadata accessor for ChromeStyle();
    sub_10074AFD4(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
    return result;
  }

  v306 = v12;
  v84 = qword_100AD17D0;
  v85 = v83;
  if (v84 != -1)
  {
    v257 = v85;
    swift_once();
    v85 = v257;
  }

  v86 = v344;
  v87 = sub_1007461BC();
  v305 = v25;
  v307 = v9;
  v273 = v75;
  v300 = v62;
  if ((v87 & 1) == 0)
  {
    v88 = *(v86 + *(type metadata accessor for RERootContainerView() + 56));
    swift_getKeyPath();
    *&v396 = v88;
    sub_10074AFD4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A14();
  }

  v89 = type metadata accessor for RERootContainerView();
  v90 = *(v86 + *(v89 + 76));
  v323 = v89;
  v91 = *(v86 + *(v89 + 56));
  v309 = v91[OBJC_IVAR____TtC5Books19BookReaderViewModel_characterFlowIsRTL];
  swift_getKeyPath();
  v92 = OBJC_IVAR____TtC5Books19BookReaderViewModel___observationRegistrar;
  *&v396 = v91;
  v93 = sub_10074AFD4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  v336 = v91[OBJC_IVAR____TtC5Books19BookReaderViewModel__fadeLeadingTitleEdge];
  swift_getKeyPath();
  *&v396 = v91;
  v339 = v92;
  v338 = v93;
  sub_100797A14();

  v94 = OBJC_IVAR____TtC5Books19BookReaderViewModel__layoutDirection;
  swift_beginAccess();
  v310 = *(v337 + 16);
  v311 = v337 + 16;
  v310(v341, &v91[v94], v345);
  v289 = (~v90 & 0xC) != 0;
  v95 = sub_10079E474();
  v96 = v342;
  *v342 = v95;
  v96[1] = v97;
  v332 = v90;
  if ((v90 & 4) != 0 && (swift_getKeyPath(), *&v396 = v91, sub_100797A14(), , v98 = &v91[OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState], swift_beginAccess(), v98[*(v340 + 36)] == 1))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v99 = v284;
    sub_10079B9A4();

    sub_1000077D8(v99, v334, &qword_100ADFEE0);
    sub_10074A504(v99, type metadata accessor for HistoryModel);
  }

  else
  {
    v100 = type metadata accessor for HistoryModel.Entry(0);
    (*(*(v100 - 8) + 56))(v334, 1, 1, v100);
    if ((v332 & 4) == 0)
    {
LABEL_12:
      v104 = type metadata accessor for HistoryModel.Entry(0);
      (*(*(v104 - 8) + 56))(v343, 1, 1, v104);
      goto LABEL_13;
    }
  }

  swift_getKeyPath();
  *&v396 = v91;
  sub_100797A14();

  v101 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
  swift_beginAccess();
  v102 = v285;
  sub_10074A490(&v91[v101], v285, type metadata accessor for BookReaderChromeState);
  LODWORD(v101) = *(v102 + *(v340 + 36));
  sub_10074A504(v102, type metadata accessor for BookReaderChromeState);
  if (v101 != 1)
  {
    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v103 = v284;
  sub_10079B9A4();

  sub_1000077D8(v103 + *(v258 + 20), v343, &qword_100ADFEE0);
  sub_10074A504(v103, type metadata accessor for HistoryModel);
LABEL_13:
  v105 = v78;
  v106 = *(v344 + *(v323 + 52));
  swift_getKeyPath();
  v107 = OBJC_IVAR____TtC5Books17PageTurnViewModel___observationRegistrar;
  *&v396 = v106;
  v270 = sub_10074AFD4(&qword_100AD9690, type metadata accessor for PageTurnViewModel);
  v271 = v107;
  sub_100797A14();

  v272 = v106;
  v108 = v333;
  sub_10079B904();
  sub_10074A428(v108, v43, type metadata accessor for PageTurnViewModel.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_10074A504(v43, type metadata accessor for PageTurnViewModel.State);
  }

  swift_getKeyPath();
  *&v396 = v91;
  sub_100797A14();

  v333 = v91;
  v110 = &v91[OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState];
  swift_beginAccess();
  v290 = EnumCaseMultiPayload;
  v111 = *(v340 + 40);
  v293 = v110;
  LODWORD(v111) = *(v110 + v111);
  v112 = v332;
  v269 = (v332 >> 3) & 1;
  v113 = v111 & v269;
  if (EnumCaseMultiPayload != 2)
  {
    v113 = 0;
  }

  v324 = v113;
  v114 = type metadata accessor for HistoryModel.Entry(0);
  v259 = *(v114 - 8);
  v115 = v259 + 48;
  v116 = *(v259 + 48);
  v117 = 1;
  v118 = v334;
  v288 = v116(v334, 1, v114);
  v292 = v114;
  v267 = v116;
  v268 = v115;
  v287 = v116(v343, 1, v114);
  v119 = v337;
  v120 = *(v337 + 104);
  if (v309)
  {
    v121 = &enum case for LayoutDirection.rightToLeft(_:);
  }

  else
  {
    v121 = &enum case for LayoutDirection.leftToRight(_:);
  }

  v122 = *v121;
  v123 = v345;
  v265 = *(v337 + 104);
  v266 = v337 + 104;
  v120(v105, v122, v345);
  v124 = v291;
  v125 = v344;
  sub_1007401DC(&v291[*(v313 + 20)]);
  v263 = *(v119 + 32);
  v264 = v119 + 32;
  v263(v124, v105, v123);
  v126 = v125;
  v127 = v326;
  sub_10074A428(v124, v326, type metadata accessor for CenteringHStackLayout);
  v128 = v127;
  v129 = v327;
  sub_10074A490(v128, v327, type metadata accessor for CenteringHStackLayout);
  sub_1000077D8(v129, v335, &qword_100AF54A8);
  v291 = sub_10079C8F4();
  LOBYTE(v347) = 0;
  sub_100746AA0(v118, v126, v336, &v396);
  v439 = v406;
  v440 = v407;
  v435 = v402;
  v436 = v403;
  v438 = v405;
  v437 = v404;
  v431 = v398;
  v432 = v399;
  v434 = v401;
  v433 = v400;
  v430 = v397;
  v429 = v396;
  v442[10] = v406;
  v442[11] = v407;
  v442[6] = v402;
  v442[7] = v403;
  v442[9] = v405;
  v442[8] = v404;
  v442[2] = v398;
  v442[3] = v399;
  v442[5] = v401;
  v442[4] = v400;
  v441 = v408;
  v443 = v408;
  v442[1] = v397;
  v442[0] = v396;
  sub_1000077D8(&v429, v395, &qword_100AF54E0);
  sub_100007840(v442, &qword_100AF54E0);
  *(&v428[9] + 7) = v438;
  *(&v428[10] + 7) = v439;
  *(&v428[11] + 7) = v440;
  *(&v428[5] + 7) = v434;
  *(&v428[6] + 7) = v435;
  *(&v428[7] + 7) = v436;
  *(&v428[8] + 7) = v437;
  *(&v428[1] + 7) = v430;
  *(&v428[2] + 7) = v431;
  *(&v428[3] + 7) = v432;
  *(&v428[4] + 7) = v433;
  *(&v428[12] + 7) = v441;
  *(v428 + 7) = v429;
  v286 = v347;
  v130 = sub_10079C8F4();
  v131 = v325;
  *v325 = v130;
  v131[1] = 0;
  *(v131 + 16) = 0;
  if (v112)
  {

    sub_1002ADA60((v112 & 0x20) != 0, &v396);

    *&v405 = swift_getKeyPath();
    BYTE8(v405) = v281 & 1;
    if (qword_100AD17C8 != -1)
    {
      swift_once();
    }

    v132 = sub_1001F1160(&qword_100AD53B0);
    sub_100008B98(v132, qword_100B23478);
    sub_1001F1160(&qword_100AF5518);
    sub_10074A094();
    sub_100005920(&qword_100AE40D0, &qword_100AD53B0);
    v133 = v282;
    sub_10079D7E4();
    sub_100007840(&v396, &qword_100AF5518);
    sub_10079DDC4();

    *(v133 + *(v330 + 36)) = 0x3FF0000000000000;
    sub_10020B3C8(v133, v308, &qword_100AF5490);
    v117 = 0;
    v126 = v344;
    v112 = v332;
  }

  v289 &= v112;
  v134 = *(v331 + 56);
  v135 = v308;
  v331 += 56;
  v262 = v134;
  v134(v308, v117, 1, v330);
  v136 = v335 + *(v314 + 44);
  v261 = sub_1001F1160(&qword_100AF54E8);
  v137 = v325;
  sub_10020B3C8(v135, v325 + *(v261 + 44), &qword_100AF5498);
  KeyPath = swift_getKeyPath();
  v139 = (v137 + *(v315 + 36));
  v260 = sub_1001F1160(&qword_100ADBCE0);
  v310(v139 + *(v260 + 28), v341, v345);
  *v139 = KeyPath;
  *&v396 = sub_10079C8F4();
  *(&v396 + 1) = 0x4030000000000000;
  LOBYTE(v397) = 0;
  sub_100747378(v336, v343, v126, v324, &v397 + 8);
  v409 = 0;
  v140 = v320;
  sub_1000077D8(v137, v320, &qword_100AF54A0);
  sub_1000077D8(&v396, v395, &qword_100AF54F0);
  *(&v411[9] + 1) = v428[9];
  *(&v411[10] + 1) = v428[10];
  *(&v411[11] + 1) = v428[11];
  v411[12] = *(&v428[11] + 15);
  *(&v411[5] + 1) = v428[5];
  *(&v411[6] + 1) = v428[6];
  *(&v411[7] + 1) = v428[7];
  *(&v411[8] + 1) = v428[8];
  *(&v411[1] + 1) = v428[1];
  *(&v411[2] + 1) = v428[2];
  *(&v411[3] + 1) = v428[3];
  v141 = v291;
  v410 = v291;
  LOBYTE(KeyPath) = v286;
  LOBYTE(v411[0]) = v286;
  *(&v411[4] + 1) = v428[4];
  *(v411 + 1) = v428[0];
  v412 = 0;
  *(v136 + 224) = 0;
  v142 = v411[12];
  *(v136 + 192) = v411[11];
  *(v136 + 208) = v142;
  v143 = v411[8];
  *(v136 + 128) = v411[7];
  *(v136 + 144) = v143;
  v144 = v411[10];
  *(v136 + 160) = v411[9];
  *(v136 + 176) = v144;
  v145 = v411[4];
  *(v136 + 64) = v411[3];
  *(v136 + 80) = v145;
  v146 = v411[6];
  *(v136 + 96) = v411[5];
  *(v136 + 112) = v146;
  v147 = v411[0];
  *v136 = v410;
  *(v136 + 16) = v147;
  v148 = v411[2];
  *(v136 + 32) = v411[1];
  *(v136 + 48) = v148;
  v149 = sub_1001F1160(&qword_100AF54F8);
  sub_1000077D8(v140, v136 + *(v149 + 48), &qword_100AF54A0);
  v308 = v149;
  sub_1000077D8(v395, v136 + *(v149 + 64), &qword_100AF54F0);
  sub_1000077D8(&v410, &v347, &qword_100AF5500);
  sub_100007840(&v396, &qword_100AF54F0);
  sub_100007840(v137, &qword_100AF54A0);
  sub_100007840(v395, &qword_100AF54F0);
  sub_100007840(v140, &qword_100AF54A0);
  v424 = v428[9];
  v425 = v428[10];
  *v426 = v428[11];
  *&v426[15] = *(&v428[11] + 15);
  v420 = v428[5];
  v421 = v428[6];
  v422 = v428[7];
  v423 = v428[8];
  v416 = v428[1];
  v417 = v428[2];
  v418 = v428[3];
  v419 = v428[4];
  v413[0] = v141;
  v413[1] = 0;
  v414 = KeyPath;
  v415 = v428[0];
  v427 = 0;
  sub_100007840(v413, &qword_100AF5500);
  sub_100007840(v327, &qword_100AF54A8);
  sub_10074A504(v326, type metadata accessor for CenteringHStackLayout);
  v150 = 0;
  v151 = v342;
  v152 = v300;
  v153 = v292;
  if (v290 == 2)
  {
    if (qword_100AD13F8 != -1)
    {
      swift_once();
    }

    v150 = qword_100B22FF8;
  }

  v154 = v287 != 1;
  v155 = v288 != 1;
  v156 = v295;
  sub_10020B3C8(v335, v295, &qword_100AF54B0);
  v157 = v156 + *(v316 + 36);
  *v157 = v150;
  *(v157 + 8) = v155;
  *(v157 + 9) = v154;
  *(v157 + 10) = v324;
  sub_100007840(v343, &qword_100ADFEE0);
  sub_100007840(v334, &qword_100ADFEE0);
  v158 = sub_10079D284();
  sub_10079BBA4();
  v160 = v159;
  v162 = v161;
  v164 = v163;
  v166 = v165;
  sub_10020B3C8(v156, v152, &qword_100AF54B8);
  v167 = v152 + *(v317 + 36);
  *v167 = v158;
  *(v167 + 8) = v160;
  *(v167 + 16) = v162;
  *(v167 + 24) = v164;
  *(v167 + 32) = v166;
  *(v167 + 40) = 0;
  sub_10079BEB4();
  v168 = *(v333 + 7);
  ObjectType = swift_getObjectType();
  v170 = *(v168 + 16);
  swift_unknownObjectRetain();
  v170(ObjectType, v168);
  swift_unknownObjectRelease();
  sub_10079E474();
  sub_10079BE54();
  v171 = v299;
  sub_10020B3C8(v152, v299, &qword_100AF54C0);
  v172 = v319;
  v173 = (v171 + *(v319 + 36));
  v174 = v445;
  *v173 = v444;
  v173[1] = v174;
  v173[2] = v446;
  v175 = v298;
  sub_10020B3C8(v171, v298, &qword_100AF54C8);
  *(v175 + *(v297 + 36)) = 257;
  v176 = swift_getKeyPath();
  v177 = v175;
  v178 = v294;
  sub_10020B3C8(v177, v294, &qword_100AF54D0);
  v179 = v178 + *(v296 + 36);
  *v179 = v176;
  *(v179 + 8) = 1;
  sub_10020B3C8(v178, v329, &qword_100AF54D8);
  if (v289)
  {
    v180 = v306;
    (*(v301 + 56))(v306, 1, 1, v172);
  }

  else
  {
    v181 = v332;
    if ((v332 & 4) != 0)
    {
      swift_getKeyPath();
      v184 = v333;
      *&v347 = v333;
      sub_100797A14();

      v183 = v344;
      if (*(v293 + *(v340 + 36)) == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v185 = v284;
        sub_10079B9A4();

        sub_1000077D8(v185, v318, &qword_100ADFEE0);
        sub_10074A504(v185, type metadata accessor for HistoryModel);
        v186 = v259;
      }

      else
      {
        v186 = v259;
        (*(v259 + 56))(v318, 1, 1, v153);
      }

      swift_getKeyPath();
      *&v347 = v184;
      sub_100797A14();

      v187 = v285;
      sub_10074A490(v293, v285, type metadata accessor for BookReaderChromeState);
      v188 = *(v187 + *(v340 + 36));
      sub_10074A504(v187, type metadata accessor for BookReaderChromeState);
      if (v188)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v189 = v284;
        sub_10079B9A4();

        sub_1000077D8(v189 + *(v258 + 20), v328, &qword_100ADFEE0);
        sub_10074A504(v189, type metadata accessor for HistoryModel);
      }

      else
      {
        (*(v186 + 56))(v328, 1, 1, v153);
      }
    }

    else
    {
      v182 = *(v259 + 56);
      v182(v318, 1, 1, v153);
      v183 = v344;
      v184 = v333;
      v182(v328, 1, 1, v153);
    }

    swift_getKeyPath();
    *&v347 = v272;
    sub_100797A14();

    v190 = v274;
    sub_10079B904();
    v191 = v275;
    sub_10074A428(v190, v275, type metadata accessor for PageTurnViewModel.State);
    v192 = swift_getEnumCaseMultiPayload();
    if (v192 != 2)
    {
      sub_10074A504(v191, type metadata accessor for PageTurnViewModel.State);
    }

    swift_getKeyPath();
    *&v347 = v184;
    sub_100797A14();

    LODWORD(v339) = v192;
    v193 = (*(v293 + *(v340 + 40)) & v269);
    if (v192 != 2)
    {
      v193 = 0;
    }

    LODWORD(v343) = v193;
    v194 = 1;
    v195 = v318;
    v196 = v267;
    LODWORD(v340) = v267(v318, 1, v153);
    LODWORD(v338) = v196(v328, 1, v153);
    v197 = &enum case for LayoutDirection.rightToLeft(_:);
    if (!v309)
    {
      v197 = &enum case for LayoutDirection.leftToRight(_:);
    }

    v198 = v273;
    v199 = v345;
    v265(v273, *v197, v345);
    v200 = v276;
    sub_1007401DC(&v276[*(v313 + 20)]);
    v263(v200, v198, v199);
    v201 = v304;
    sub_10074A428(v200, v304, type metadata accessor for CenteringHStackLayout);
    v202 = v305;
    sub_10074A490(v201, v305, type metadata accessor for CenteringHStackLayout);
    sub_1000077D8(v202, v321, &qword_100AF54A8);
    v335 = sub_10079C8F4();
    LOBYTE(v364[0]) = 0;
    sub_100746AA0(v195, v183, v336, &v347);
    v390 = v357;
    v391 = v358;
    v386 = v353;
    v387 = v354;
    v389 = v356;
    v388 = v355;
    v382 = v349;
    v383 = v350;
    v385 = v352;
    v384 = v351;
    v381 = v348;
    v380 = v347;
    v393[10] = v357;
    v393[11] = v358;
    v393[6] = v353;
    v393[7] = v354;
    v393[9] = v356;
    v393[8] = v355;
    v393[2] = v349;
    v393[3] = v350;
    v393[5] = v352;
    v393[4] = v351;
    v392 = v359;
    v394 = v359;
    v393[1] = v348;
    v393[0] = v347;
    sub_1000077D8(&v380, v346, &qword_100AF54E0);
    sub_100007840(v393, &qword_100AF54E0);
    *(&v379[9] + 7) = v389;
    *(&v379[10] + 7) = v390;
    *(&v379[11] + 7) = v391;
    *(&v379[5] + 7) = v385;
    *(&v379[6] + 7) = v386;
    *(&v379[7] + 7) = v387;
    *(&v379[8] + 7) = v388;
    *(&v379[1] + 7) = v381;
    *(&v379[2] + 7) = v382;
    *(&v379[3] + 7) = v383;
    *(&v379[4] + 7) = v384;
    *(&v379[12] + 7) = v392;
    *(v379 + 7) = v380;
    LODWORD(v334) = LOBYTE(v364[0]);
    v203 = sub_10079C8F4();
    v204 = v303;
    *v303 = v203;
    v204[1] = 0;
    *(v204 + 16) = 0;
    if (v181)
    {

      sub_1002ADA60((v181 & 0x20) != 0, &v347);

      *&v356 = swift_getKeyPath();
      BYTE8(v356) = v281 & 1;
      if (qword_100AD17C8 != -1)
      {
        swift_once();
      }

      v205 = sub_1001F1160(&qword_100AD53B0);
      sub_100008B98(v205, qword_100B23478);
      sub_1001F1160(&qword_100AF5518);
      sub_10074A094();
      sub_100005920(&qword_100AE40D0, &qword_100AD53B0);
      v206 = v282;
      sub_10079D7E4();
      sub_100007840(&v347, &qword_100AF5518);
      sub_10079DDC4();

      *(v206 + *(v330 + 36)) = 0;
      sub_10020B3C8(v206, v283, &qword_100AF5490);
      v194 = 0;
      v183 = v344;
    }

    v207 = v283;
    v262(v283, v194, 1, v330);
    v208 = v321 + *(v314 + 44);
    v209 = v303;
    sub_10020B3C8(v207, v303 + *(v261 + 44), &qword_100AF5498);
    v210 = swift_getKeyPath();
    v211 = (v209 + *(v315 + 36));
    v310(v211 + *(v260 + 28), v341, v345);
    *v211 = v210;
    *&v347 = sub_10079C8F4();
    *(&v347 + 1) = 0x4030000000000000;
    LOBYTE(v348) = 0;
    sub_100747378(v336, v328, v183, v343, &v348 + 8);
    v360 = 0x3FF0000000000000;
    v212 = v320;
    sub_1000077D8(v209, v320, &qword_100AF54A0);
    sub_1000077D8(&v347, v346, &qword_100AF54F0);
    *(&v362[9] + 1) = v379[9];
    *(&v362[10] + 1) = v379[10];
    *(&v362[11] + 1) = v379[11];
    v362[12] = *(&v379[11] + 15);
    *(&v362[5] + 1) = v379[5];
    *(&v362[6] + 1) = v379[6];
    *(&v362[7] + 1) = v379[7];
    *(&v362[8] + 1) = v379[8];
    *(&v362[1] + 1) = v379[1];
    *(&v362[2] + 1) = v379[2];
    *(&v362[3] + 1) = v379[3];
    v213 = v335;
    v361 = v335;
    LOBYTE(v210) = v334;
    LOBYTE(v362[0]) = v334;
    *(&v362[4] + 1) = v379[4];
    *(v362 + 1) = v379[0];
    v363 = 0x3FF0000000000000;
    *(v208 + 224) = 0x3FF0000000000000;
    v214 = v362[12];
    *(v208 + 192) = v362[11];
    *(v208 + 208) = v214;
    v215 = v362[8];
    *(v208 + 128) = v362[7];
    *(v208 + 144) = v215;
    v216 = v362[10];
    *(v208 + 160) = v362[9];
    *(v208 + 176) = v216;
    v217 = v362[4];
    *(v208 + 64) = v362[3];
    *(v208 + 80) = v217;
    v218 = v362[6];
    *(v208 + 96) = v362[5];
    *(v208 + 112) = v218;
    v219 = v362[0];
    *v208 = v361;
    *(v208 + 16) = v219;
    v220 = v362[2];
    *(v208 + 32) = v362[1];
    *(v208 + 48) = v220;
    v221 = v308;
    sub_1000077D8(v212, v208 + *(v308 + 48), &qword_100AF54A0);
    sub_1000077D8(v346, v208 + *(v221 + 64), &qword_100AF54F0);
    sub_1000077D8(&v361, v364, &qword_100AF5500);
    sub_100007840(&v347, &qword_100AF54F0);
    sub_100007840(v209, &qword_100AF54A0);
    sub_100007840(v346, &qword_100AF54F0);
    sub_100007840(v212, &qword_100AF54A0);
    v375 = v379[9];
    v376 = v379[10];
    *v377 = v379[11];
    *&v377[15] = *(&v379[11] + 15);
    v371 = v379[5];
    v372 = v379[6];
    v373 = v379[7];
    v374 = v379[8];
    v367 = v379[1];
    v368 = v379[2];
    v369 = v379[3];
    v370 = v379[4];
    v364[0] = v213;
    v364[1] = 0;
    v365 = v210;
    v366 = v379[0];
    v378 = 0x3FF0000000000000;
    sub_100007840(v364, &qword_100AF5500);
    sub_100007840(v305, &qword_100AF54A8);
    sub_10074A504(v304, type metadata accessor for CenteringHStackLayout);
    v222 = 0;
    v151 = v342;
    v180 = v306;
    v223 = v333;
    if (v339 == 2)
    {
      if (qword_100AD13F8 != -1)
      {
        swift_once();
      }

      v222 = qword_100B22FF8;
    }

    v224 = v338 != 1;
    v225 = v340 != 1;
    v226 = v277;
    sub_10020B3C8(v321, v277, &qword_100AF54B0);
    v227 = v226 + *(v316 + 36);
    *v227 = v222;
    *(v227 + 8) = v225;
    *(v227 + 9) = v224;
    *(v227 + 10) = v343;
    sub_100007840(v328, &qword_100ADFEE0);
    sub_100007840(v318, &qword_100ADFEE0);
    v228 = sub_10079D284();
    sub_10079BBA4();
    v230 = v229;
    v232 = v231;
    v234 = v233;
    v236 = v235;
    v237 = v280;
    sub_10020B3C8(v226, v280, &qword_100AF54B8);
    v238 = v237 + *(v317 + 36);
    *v238 = v228;
    *(v238 + 8) = v230;
    *(v238 + 16) = v232;
    *(v238 + 24) = v234;
    *(v238 + 32) = v236;
    *(v238 + 40) = 0;
    sub_10079BEB4();
    v239 = *(v223 + 7);
    v240 = swift_getObjectType();
    v241 = *(v239 + 16);
    swift_unknownObjectRetain();
    v241(v240, v239);
    swift_unknownObjectRelease();
    sub_10079E474();
    sub_10079BE54();
    v242 = v279;
    sub_10020B3C8(v237, v279, &qword_100AF54C0);
    v243 = v319;
    v244 = (v242 + *(v319 + 36));
    v245 = v448;
    *v244 = v447;
    v244[1] = v245;
    v244[2] = v449;
    v246 = v242;
    v247 = v278;
    sub_10020B3C8(v246, v278, &qword_100AF54C8);
    sub_10020B3C8(v247, v180, &qword_100AF54C8);
    (*(v301 + 56))(v180, 0, 1, v243);
  }

  v248 = v151 + *(sub_1001F1160(&qword_100AF5508) + 44);
  v249 = v329;
  v250 = v302;
  sub_1000077D8(v329, v302, &qword_100AF54D8);
  v251 = v307;
  sub_1000077D8(v180, v307, &qword_100AF5488);
  sub_1000077D8(v250, v248, &qword_100AF54D8);
  v252 = sub_1001F1160(&qword_100AF5510);
  sub_1000077D8(v251, v248 + *(v252 + 48), &qword_100AF5488);
  sub_100007840(v180, &qword_100AF5488);
  sub_100007840(v249, &qword_100AF54D8);
  sub_100007840(v251, &qword_100AF5488);
  sub_100007840(v250, &qword_100AF54D8);
  v253 = swift_getKeyPath();
  v254 = sub_1001F1160(&qword_100AF5430);
  v255 = v342 + *(v254 + 36);
  *v255 = v253;
  *(v255 + 1) = 0;
  v255[16] = 1;
  return (*(v337 + 8))(v341, v345);
}

uint64_t sub_1007461BC()
{
  v1 = sub_10079CEE4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v46 = &v43[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1001F1160(&unk_100ADBB30);
  __chkstk_darwin(v4);
  v54 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v43[-v7];
  v9 = sub_1001F1160(&unk_100ADB6B0);
  __chkstk_darwin(v9 - 8);
  v45 = &v43[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v52 = &v43[-v12];
  __chkstk_darwin(v13);
  v53 = &v43[-v14];
  __chkstk_darwin(v15);
  v56 = &v43[-v16];
  __chkstk_darwin(v17);
  v19 = &v43[-v18];
  __chkstk_darwin(v20);
  v22 = &v43[-v21];
  v51 = v0;
  sub_10073FFF4(&v43[-v21]);
  v23 = v2[13];
  v49 = enum case for UserInterfaceSizeClass.regular(_:);
  v48 = v23;
  v23(v19);
  v47 = v2[7];
  v47(v19, 0, 1, v1);
  v50 = v4;
  v24 = *(v4 + 48);
  sub_1000077D8(v22, v8, &unk_100ADB6B0);
  sub_1000077D8(v19, &v8[v24], &unk_100ADB6B0);
  v57 = v2;
  v25 = v2[6];
  if (v25(v8, 1, v1) == 1)
  {
    v55 = v25;
    sub_100007840(v19, &unk_100ADB6B0);
    sub_100007840(v22, &unk_100ADB6B0);
    if (v55(&v8[v24], 1, v1) == 1)
    {
      sub_100007840(v8, &unk_100ADB6B0);
      goto LABEL_8;
    }

LABEL_6:
    v27 = v8;
LABEL_14:
    sub_100007840(v27, &unk_100ADBB30);
    goto LABEL_15;
  }

  v26 = v56;
  sub_1000077D8(v8, v56, &unk_100ADB6B0);
  if (v25(&v8[v24], 1, v1) == 1)
  {
    sub_100007840(v19, &unk_100ADB6B0);
    sub_100007840(v22, &unk_100ADB6B0);
    (v57[1])(v26, v1);
    goto LABEL_6;
  }

  v55 = v25;
  v28 = &v8[v24];
  v29 = v46;
  (v57[4])(v46, v28, v1);
  sub_10074AFD4(&qword_100AE41D0, &type metadata accessor for UserInterfaceSizeClass);
  v44 = sub_1007A2124();
  v30 = v57[1];
  v30(v29, v1);
  sub_100007840(v19, &unk_100ADB6B0);
  sub_100007840(v22, &unk_100ADB6B0);
  v30(v56, v1);
  sub_100007840(v8, &unk_100ADB6B0);
  if ((v44 & 1) == 0)
  {
LABEL_15:
    v36 = 0;
    return v36 & 1;
  }

LABEL_8:
  v31 = v53;
  sub_10073FE0C(v53);
  v32 = v52;
  v48(v52, v49, v1);
  v47(v32, 0, 1, v1);
  v33 = *(v50 + 48);
  v34 = v54;
  sub_1000077D8(v31, v54, &unk_100ADB6B0);
  sub_1000077D8(v32, &v34[v33], &unk_100ADB6B0);
  v35 = v55;
  if (v55(v34, 1, v1) != 1)
  {
    v37 = v45;
    sub_1000077D8(v34, v45, &unk_100ADB6B0);
    if (v35(&v34[v33], 1, v1) != 1)
    {
      v39 = v32;
      v40 = v57;
      v41 = v46;
      (v57[4])(v46, &v34[v33], v1);
      sub_10074AFD4(&qword_100AE41D0, &type metadata accessor for UserInterfaceSizeClass);
      v36 = sub_1007A2124();
      v42 = v40[1];
      v42(v41, v1);
      sub_100007840(v39, &unk_100ADB6B0);
      sub_100007840(v31, &unk_100ADB6B0);
      v42(v37, v1);
      sub_100007840(v34, &unk_100ADB6B0);
      return v36 & 1;
    }

    sub_100007840(v32, &unk_100ADB6B0);
    sub_100007840(v31, &unk_100ADB6B0);
    (v57[1])(v37, v1);
    goto LABEL_13;
  }

  sub_100007840(v32, &unk_100ADB6B0);
  sub_100007840(v31, &unk_100ADB6B0);
  if (v35(&v34[v33], 1, v1) != 1)
  {
LABEL_13:
    v27 = v34;
    goto LABEL_14;
  }

  sub_100007840(v34, &unk_100ADB6B0);
  v36 = 1;
  return v36 & 1;
}

uint64_t sub_1007469BC@<X0>(uint64_t a1@<X8>)
{
  sub_1004C7CB8();
  result = sub_10079C834();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

__n128 sub_100746AA0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v60) = a3;
  v57 = a2;
  v54 = type metadata accessor for RERootContainerView();
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v58 = v6;
  v59 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&qword_100ADFEE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v45 - v8;
  v10 = type metadata accessor for HistoryModel.Entry(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v55 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v45 - v14);
  sub_1000077D8(a1, v9, &qword_100ADFEE0);
  v16 = v11;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100007840(v9, &qword_100ADFEE0);
    sub_10074A5A4(&v122);
  }

  else
  {
    v48 = type metadata accessor for HistoryModel.Entry;
    sub_10074A428(v9, v15, type metadata accessor for HistoryModel.Entry);
    v17 = v57;
    v18 = *(v57 + *(v54 + 56));
    swift_getKeyPath();
    v51 = OBJC_IVAR____TtC5Books19BookReaderViewModel___observationRegistrar;
    *&v122 = v18;
    v50 = sub_10074AFD4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A14();

    v19 = v18 + OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
    swift_beginAccess();
    v49 = *(v19 + *(type metadata accessor for BookReaderChromeState() + 36));
    v20 = v15[1];
    v52 = *v15;
    v53 = v15;
    v54 = v20;
    v21 = v17;
    v22 = v59;
    sub_10074A490(v21, v59, type metadata accessor for RERootContainerView);
    v23 = v55;
    sub_10074A490(v15, v55, type metadata accessor for HistoryModel.Entry);
    v24 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v25 = (v58 + *(v16 + 80) + v24) & ~*(v16 + 80);
    v26 = swift_allocObject();
    v58 = v26;
    sub_10074A428(v22, v26 + v24, type metadata accessor for RERootContainerView);
    sub_10074A428(v23, v26 + v25, v48);
    type metadata accessor for ChromeStyle();
    sub_10074AFD4(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    v27 = v54;

    v28 = sub_10079C484();
    v45 = v29;
    v46 = v28;
    v30 = v29;
    KeyPath = swift_getKeyPath();
    v47 = swift_getKeyPath();
    type metadata accessor for CGSize(0);
    v98 = 0uLL;
    sub_10079DFE4();
    v32 = v122;
    v48 = v123.n128_u64[0];
    v33 = 0.0;
    if (v49)
    {
      v34 = 1.0;
    }

    else
    {
      v34 = 0.0;
    }

    v112 = 0;
    v111 = 0;
    v49 = 0;
    swift_getKeyPath();
    *&v122 = v18;
    sub_100797A14();

    v35 = *(v18 + OBJC_IVAR____TtC5Books19BookReaderViewModel__horizontalFadeColor);
    if (v60)
    {
      v33 = 20.0;
    }

    sub_10079E474();
    sub_10079BE54();
    LODWORD(v51) = v117;
    v59 = v118;
    v60 = v116;
    LODWORD(v55) = v119;
    v56 = v121;
    v57 = v120;
    v63 = 1;
    v62 = v117;
    v61 = v119;
    *&v64 = v28;
    *(&v64 + 1) = v30;
    v65.n128_u64[0] = KeyPath;
    v65.n128_u8[8] = 0;
    *(&v65.n128_u32[2] + 1) = *v115;
    v65.n128_u32[3] = *&v115[3];
    v36 = v47;
    *&v66 = v47;
    BYTE8(v66) = 0;
    HIDWORD(v66) = *&v114[3];
    *(&v66 + 9) = *v114;
    v37 = v52;
    *&v67 = v52;
    *(&v67 + 1) = v27;
    LOBYTE(v68) = 1;
    DWORD1(v68) = *&v113[3];
    *(&v68 + 1) = *v113;
    *(&v68 + 1) = sub_10074B144;
    *v69 = v58;
    *&v69[8] = v32;
    v38 = v48;
    *&v69[24] = v48;
    *&v70 = v34;
    *(&v70 + 1) = v35;
    v71 = v33;
    v74 = v66;
    v75 = v67;
    v72 = v64;
    v73 = v65;
    v80 = v33;
    v78 = *&v69[16];
    v79 = v70;
    v76 = v68;
    v77 = *v69;
    sub_1000077D8(&v64, &v122, &qword_100AF5540);
    sub_10074A504(v53, type metadata accessor for HistoryModel.Entry);
    v81[0] = v46;
    v81[1] = v45;
    v81[2] = KeyPath;
    v82 = 0;
    *v83 = *v115;
    *&v83[3] = *&v115[3];
    v84 = v36;
    v85 = v49;
    *v86 = *v114;
    *&v86[3] = *&v114[3];
    v87 = v37;
    v88 = v54;
    v89 = 1;
    *&v90[3] = *&v113[3];
    *v90 = *v113;
    v91 = sub_10074B144;
    v92 = v58;
    v93 = v32;
    v94 = v38;
    v95 = v34;
    v96 = v35;
    v97 = v33;
    sub_100007840(v81, &qword_100AF5540);
    v104 = v78;
    v105 = v79;
    v100 = v74;
    v101 = v75;
    v102 = v76;
    v103 = v77;
    v98 = v72;
    v99 = v73;
    v106 = *&v80;
    LOBYTE(v107) = 1;
    *(&v107 + 1) = v60;
    LOBYTE(v108) = v51;
    *(&v108 + 1) = v59;
    LOBYTE(v109) = v55;
    *(&v109 + 1) = v57;
    v110 = v56;
    BKAppDelegate.enableMetricsInspectorOnDebugMode()();
    v132 = v108;
    v133 = v109;
    v134 = v110;
    v128 = v104;
    v129 = v105;
    v130 = v106;
    v131 = v107;
    v124 = v100;
    v125 = v101;
    v126 = v102;
    v127 = v103;
    v122 = v98;
    v123 = v99;
  }

  v39 = v133;
  *(a4 + 160) = v132;
  *(a4 + 176) = v39;
  *(a4 + 192) = v134;
  v40 = v129;
  *(a4 + 96) = v128;
  *(a4 + 112) = v40;
  v41 = v131;
  *(a4 + 128) = v130;
  *(a4 + 144) = v41;
  v42 = v125;
  *(a4 + 32) = v124;
  *(a4 + 48) = v42;
  v43 = v127;
  *(a4 + 64) = v126;
  *(a4 + 80) = v43;
  result = v123;
  *a4 = v122;
  *(a4 + 16) = result;
  return result;
}

uint64_t sub_1007472AC@<X0>(void (*a1)(void)@<X3>, _BYTE *a2@<X8>)
{
  a1();
  result = sub_10079C834();
  *a2 = v4;
  return result;
}

uint64_t sub_100747378@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v73 = a4;
  v81 = a3;
  v74 = type metadata accessor for RERootContainerView();
  v71 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = v8;
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for BookReaderChromeState();
  __chkstk_darwin(v69);
  v68 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&qword_100ADFEE0);
  __chkstk_darwin(v11 - 8);
  v13 = &v62 - v12;
  v14 = type metadata accessor for HistoryModel.Entry(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  KeyPath = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = (&v62 - v18);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v82 = a1;
  if (a1)
  {
    sub_10079E474();
    sub_10079BE54();
    v20 = v116;
    v21 = v117;
    v22 = v118;
    v23 = v119;
    v24 = v120;
    v25 = v121;
  }

  v75 = v25;
  v76 = v24;
  v77 = v23;
  v78 = v22;
  v79 = v21;
  v80 = v20;
  sub_1000077D8(a2, v13, &qword_100ADFEE0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100007840(v13, &qword_100ADFEE0);
    v26 = sub_10079DDC4();
    sub_10079E474();
    sub_10079BE54();
    *&v102 = v26;
    *(&v102 + 1) = v122;
    LOBYTE(v103) = v123;
    *(&v103 + 1) = v124;
    LOBYTE(v104[0]) = v125;
    *(v104 + 8) = v126;
    sub_10074A1A0(&v102);
    v99 = *v106;
    v100 = *&v106[16];
    v101[0] = *v107;
    *(v101 + 9) = *(&v107[1] + 1);
    v96 = v104[0];
    v97 = v104[1];
    v98 = v105;
    v94 = v102;
    v95 = v103;
    sub_1001F1160(&qword_100AF5540);
    sub_1001F1160(&qword_100AF5548);
    sub_10074A1AC();
    sub_10074A36C();
    sub_10079CCA4();
  }

  else
  {
    v63 = type metadata accessor for HistoryModel.Entry;
    sub_10074A428(v13, v19, type metadata accessor for HistoryModel.Entry);
    v27 = *(v74 + 56);
    v62 = v9;
    v28 = *(v81 + v27);
    swift_getKeyPath();
    v66 = OBJC_IVAR____TtC5Books19BookReaderViewModel___observationRegistrar;
    *&v108 = v28;
    v65 = sub_10074AFD4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A14();

    v29 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
    swift_beginAccess();
    v30 = v28 + v29;
    v31 = v68;
    sub_10074A490(v30, v68, type metadata accessor for BookReaderChromeState);
    v64 = *(v31 + *(v69 + 36));
    sub_10074A504(v31, type metadata accessor for BookReaderChromeState);
    v32 = *v19;
    v68 = v19[1];
    v69 = v32;
    v67 = v19;
    sub_10074A490(v81, v9, type metadata accessor for RERootContainerView);
    v33 = KeyPath;
    sub_10074A490(v19, KeyPath, type metadata accessor for HistoryModel.Entry);
    v34 = (*(v71 + 80) + 16) & ~*(v71 + 80);
    v35 = (v72 + *(v15 + 80) + v34) & ~*(v15 + 80);
    v36 = swift_allocObject();
    sub_10074A428(v62, v36 + v34, type metadata accessor for RERootContainerView);
    sub_10074A428(v33, v36 + v35, v63);
    type metadata accessor for ChromeStyle();
    sub_10074AFD4(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    v37 = v68;

    v38 = sub_10079C484();
    v71 = v39;
    v72 = v38;
    KeyPath = swift_getKeyPath();
    v63 = swift_getKeyPath();
    type metadata accessor for CGSize(0);
    v102 = 0uLL;
    sub_10079DFE4();
    v40 = v108;
    v41 = v109;
    if (v64)
    {
      v42 = 1.0;
    }

    else
    {
      v42 = 0.0;
    }

    LOBYTE(v84) = 0;
    v92[0] = 0;
    swift_getKeyPath();
    *&v108 = v28;
    sub_100797A14();

    v43 = *(v28 + OBJC_IVAR____TtC5Books19BookReaderViewModel__horizontalFadeColor);
    v44 = 20.0;
    if (v82)
    {
      v44 = 0.0;
    }

    *&v102 = v72;
    *(&v102 + 1) = v71;
    *&v103 = KeyPath;
    BYTE8(v103) = 0;
    *&v104[0] = v63;
    BYTE8(v104[0]) = 0;
    *&v104[1] = v69;
    *(&v104[1] + 1) = v37;
    LOBYTE(v105) = 0;
    *(&v105 + 1) = sub_10074A4F8;
    *v106 = v36;
    *&v106[8] = v40;
    *&v106[24] = v41;
    v107[0] = v42;
    v107[1] = v43;
    v107[2] = v44;
    sub_10074A4FC(&v102);
    v113 = *v106;
    v114 = *&v106[16];
    v115[0] = *v107;
    *(v115 + 9) = *(&v107[1] + 1);
    v110 = v104[0];
    v111 = v104[1];
    v112 = v105;
    v108 = v102;
    v109 = v103;

    sub_1001F1160(&qword_100AF5540);
    sub_1001F1160(&qword_100AF5548);
    sub_10074A1AC();
    sub_10074A36C();
    sub_10079CCA4();
    sub_10074A504(v67, type metadata accessor for HistoryModel.Entry);
    v114 = v100;
    v115[0] = v101[0];
    *(v115 + 9) = *(v101 + 9);
    v110 = v96;
    v111 = v97;
    v112 = v98;
    v113 = v99;
    v108 = v94;
    v109 = v95;
  }

  if (v73)
  {
    v45 = v74;
    v46 = v81;
    v47 = *(v81 + *(v74 + 56));
    swift_getKeyPath();
    *&v102 = v47;
    sub_10074AFD4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);

    sub_100797A14();

    swift_unknownObjectWeakLoadStrong();
    v48 = *(v47 + 152);
    v49 = *(*(v46 + *(v45 + 48)) + 24);
    v50 = v46 + *(v45 + 72);
    swift_unknownObjectWeakLoadStrong();
    v51 = *(v50 + 8);
    *&v102 = swift_getKeyPath();
    BYTE8(v102) = 0;
    *&v103 = v47;
    *&v104[0] = v48;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *&v104[1] = v49;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    *&v105 = v51;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    sub_10074A3F0(&v102, v92);
  }

  else
  {
    v93 = 0;
    memset(v92, 0, sizeof(v92));
  }

  v90 = v114;
  v91[0] = v115[0];
  *(v91 + 9) = *(v115 + 9);
  v86 = v110;
  v87 = v111;
  v88 = v112;
  v89 = v113;
  v84 = v108;
  v85 = v109;
  sub_1000077D8(v92, v83, &qword_100AF5580);
  v52 = v90;
  v100 = v90;
  v101[0] = v91[0];
  *(v101 + 9) = *(v91 + 9);
  v53 = v86;
  v54 = v87;
  v96 = v86;
  v97 = v87;
  v55 = v88;
  v98 = v88;
  v99 = v89;
  v57 = v84;
  v56 = v85;
  v94 = v84;
  v95 = v85;
  *(a5 + 136) = v89;
  *(a5 + 152) = v52;
  *(a5 + 168) = v91[0];
  *(a5 + 177) = *(v91 + 9);
  *(a5 + 72) = v56;
  *(a5 + 88) = v53;
  *(a5 + 104) = v54;
  *(a5 + 120) = v55;
  v58 = v79;
  *a5 = v80;
  *(a5 + 8) = v58;
  v59 = v77;
  *(a5 + 16) = v78;
  *(a5 + 24) = v59;
  v60 = v75;
  *(a5 + 32) = v76;
  *(a5 + 40) = v60;
  *(a5 + 48) = (v82 & 1) == 0;
  *(a5 + 56) = v57;
  sub_1000077D8(v83, a5 + 200, &qword_100AF5580);
  sub_1000077D8(&v94, &v102, &qword_100AF5588);
  sub_100007840(v92, &qword_100AF5580);
  sub_100007840(v83, &qword_100AF5580);
  *&v106[16] = v90;
  *v107 = v91[0];
  *(&v107[1] + 1) = *(v91 + 9);
  v104[0] = v86;
  v104[1] = v87;
  v105 = v88;
  *v106 = v89;
  v102 = v84;
  v103 = v85;
  return sub_100007840(&v102, &qword_100AF5588);
}

uint64_t sub_100747E64()
{
  v1 = sub_10079C824();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_1007A29C4();
    v6 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();
    sub_10020B534(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_100747FAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v26 = sub_1001F1160(&qword_100AF55B0);
  __chkstk_darwin(v26);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = sub_1001F1160(&qword_100AF55B8);
  v30 = *(v8 - 8);
  v31 = v8;
  __chkstk_darwin(v8);
  v29 = &v26 - v9;
  v28 = sub_1001F1160(&qword_100AF55C0);
  __chkstk_darwin(v28);
  v27 = &v26 - v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  v12 = *(v1 + 32);
  sub_10074AED8(v1, v34);
  v13 = swift_allocObject();
  sub_10074A3F0(v34, v13 + 16);
  type metadata accessor for ChromeStyle();
  sub_10074AFD4(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
  v14 = sub_10079C484();
  v16 = v15;
  KeyPath = swift_getKeyPath();
  v44 = 0;
  v34[0] = v14;
  v34[1] = v16;
  v34[2] = KeyPath;
  v35 = 0;
  v36 = v42;
  v37 = v43;
  v38 = Strong;
  v39 = v12;
  v40 = sub_10074AF10;
  v41 = v13;
  if ((sub_100747E64() & 1) == 0)
  {
    v18 = *(v2 + 16);
    swift_getKeyPath();
    v33 = v18;
    sub_10074AFD4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A14();
  }

  sub_10050C5A4();
  sub_10079DA04();

  swift_unknownObjectRelease();

  sub_100747E64();
  sub_10079C224();
  sub_100007840(v4, &qword_100AF55B0);
  if (qword_100AD17C8 != -1)
  {
    swift_once();
  }

  v19 = sub_1001F1160(&qword_100AD53B0);
  sub_100008B98(v19, qword_100B23478);
  sub_10074AF18();
  sub_100005920(&qword_100AE40D0, &qword_100AD53B0);
  v20 = v29;
  sub_10079D7E4();
  sub_100007840(v7, &qword_100AF55B0);
  v21 = *(v2 + 16);
  swift_getKeyPath();
  v34[0] = v21;
  sub_10074AFD4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  v22 = *(v21 + OBJC_IVAR____TtC5Books19BookReaderViewModel__horizontalFadeColor);
  v23 = v27;
  (*(v30 + 32))(v27, v20, v31);
  v24 = (v23 + *(v28 + 36));
  *v24 = v22;
  v24[1] = 0x4034000000000000;
  sub_10020B3C8(v23, v32, &qword_100AF55C0);
}

uint64_t sub_100748510(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 48);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100748584(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + *(type metadata accessor for RERootContainerView() + 48));
  swift_getKeyPath();
  sub_10074AFD4(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  if ((*(v3 + 281) & 1) == 0)
  {
    __chkstk_darwin(v4);
    sub_10079E514();
    if (UIAccessibilityIsReduceMotionEnabled())
    {
      REActionMenuState.transition(to:)(0x8000000000000000);
    }

    else
    {
      sub_10079BF94();
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = type metadata accessor for HistoryModel.Entry(0);
    sub_10070CF38(a2 + *(v6 + 20));
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10074873C@<X0>(uint64_t a1@<X8>)
{
  sub_1007436E8(0);
  sub_10079BEB4();
  if (qword_100AD14A8 != -1)
  {
    swift_once();
  }

  sub_10079E474();
  sub_10079BE54();
  v2 = (a1 + *(sub_1001F1160(&qword_100AF5590) + 36));
  *v2 = v24;
  v2[1] = v25;
  v2[2] = v26;
  v3 = sub_10079D2A4();
  type metadata accessor for RERootContainerView();
  swift_getKeyPath();
  sub_10074AFD4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  sub_10079BBA4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = a1 + *(sub_1001F1160(&qword_100AF5598) + 36);
  *v12 = v3;
  *(v12 + 8) = v5;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  v13 = sub_10079D2B4();
  swift_getKeyPath();
  sub_100797A14();

  sub_10079BBA4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = sub_1001F1160(&qword_100AF55A0);
  v23 = a1 + *(result + 36);
  *v23 = v13;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

uint64_t sub_100748994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71[1] = a2;
  v73 = a3;
  v4 = sub_1001F1160(&qword_100AF53D8);
  __chkstk_darwin(v4);
  v6 = v71 - v5;
  v7 = sub_1001F1160(&qword_100AF53E0);
  __chkstk_darwin(v7);
  v9 = v71 - v8;
  v76 = sub_1001F1160(&qword_100AF53E8);
  __chkstk_darwin(v76);
  v11 = v71 - v10;
  v12 = sub_1001F1160(&qword_100AF53F0);
  __chkstk_darwin(v12 - 8);
  v81 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v84 = v71 - v15;
  v71[0] = type metadata accessor for RERootContainerView();
  v16 = *(v71[0] + 56);
  v72 = a1;
  v17 = *(a1 + v16);
  v18 = *(v17 + 56);
  ObjectType = swift_getObjectType();
  if ((*(v18 + 8))(ObjectType, v18) <= 0.0)
  {
    v79 = 0;
    v80 = 0;
    v77 = 0;
    v78 = 0;
    v82 = 0;
    v83 = 0;
    v74 = 0;
    v75 = 0;
    v24 = 0;
    v26 = 0;
    v28 = 0;
    v30 = 0;
  }

  else
  {
    v80 = sub_10079DDC4();
    sub_10079E474();
    sub_10079BE54();
    LODWORD(v75) = v95;
    v78 = v96;
    v79 = v94;
    v20 = v9;
    v21 = v4;
    v22 = v97;
    v77 = v98;
    v83 = v99;
    v82 = sub_10079D2B4();
    swift_getKeyPath();
    v92[0] = v17;
    sub_10074AFD4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A14();

    sub_10079BBA4();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    LOBYTE(v92[0]) = v75;
    LOBYTE(v85) = v22;
    v4 = v21;
    v9 = v20;
    LOBYTE(v100) = 0;
    v74 = v75;
    v75 = v85;
    sub_10079DE04();

    v82 = v82;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v31 = sub_10079F4F4();
  swift_unknownObjectRelease();
  if (v31 == 2)
  {
    sub_1007436E8(1);
    v32 = sub_10079D2A4();
    swift_getKeyPath();
    v92[0] = v17;
    sub_10074AFD4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A14();

    sub_10079BBA4();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v41 = &v11[*(sub_1001F1160(&qword_100AF5420) + 36)];
    *v41 = v32;
    *(v41 + 1) = v34;
    *(v41 + 2) = v36;
    *(v41 + 3) = v38;
    *(v41 + 4) = v40;
    v41[40] = 0;
    if (qword_100AD14D8 != -1)
    {
      swift_once();
    }

    v42 = qword_100B23270;
    v43 = &v11[*(sub_1001F1160(&qword_100AF5410) + 36)];
    *v43 = v42;
    v43[1] = sub_100748714;
    v43[2] = 0;
    v44 = v84;
    if (qword_100AD14A8 != -1)
    {
      swift_once();
    }

    sub_10079E474();
    sub_10079BE54();
    v45 = &v11[*(v76 + 36)];
    v46 = v101;
    *v45 = v100;
    *(v45 + 1) = v46;
    *(v45 + 2) = v102;
    sub_1000077D8(v11, v9, &qword_100AF53E8);
    swift_storeEnumTagMultiPayload();
    sub_100749D00();
    sub_100749F88();
    sub_10079CCA4();
    v47 = v11;
    v48 = &qword_100AF53E8;
  }

  else
  {
    *v6 = sub_10079CB24();
    *(v6 + 1) = 0;
    v6[16] = 0;
    v49 = sub_1001F1160(&qword_100AF53F8);
    v50 = v72;
    sub_10074873C(&v6[*(v49 + 44)]);
    v51 = (v50 + *(v71[0] + 84));
    v52 = *(v50 + *(v71[0] + 76));
    v53 = *v51;
    v54 = v51[1];
    v55 = &v6[*(v4 + 36)];
    *v55 = v53;
    *(v55 + 1) = v54;
    *(v55 + 2) = v52;
    sub_1000077D8(v6, v9, &qword_100AF53D8);
    swift_storeEnumTagMultiPayload();
    sub_100749D00();
    sub_100749F88();

    v56 = v84;
    sub_10079CCA4();
    v47 = v6;
    v44 = v56;
    v48 = &qword_100AF53D8;
  }

  sub_100007840(v47, v48);
  v57 = v81;
  sub_1000077D8(v44, v81, &qword_100AF53F0);
  v59 = v79;
  v58 = v80;
  *&v85 = v80;
  *(&v85 + 1) = v79;
  v60 = v74;
  v61 = v75;
  v62 = v77;
  v63 = v78;
  *&v86 = v74;
  *(&v86 + 1) = v78;
  *&v87 = v75;
  *(&v87 + 1) = v77;
  *&v88 = v83;
  *(&v88 + 1) = v82;
  *&v89 = v24;
  *(&v89 + 1) = v26;
  *&v90 = v28;
  *(&v90 + 1) = v30;
  v91 = 0;
  v64 = v73;
  *(v73 + 96) = 0;
  v65 = v90;
  v64[4] = v89;
  v64[5] = v65;
  v66 = v86;
  *v64 = v85;
  v64[1] = v66;
  v67 = v88;
  v64[2] = v87;
  v64[3] = v67;
  v68 = sub_1001F1160(&qword_100AF5478);
  sub_1000077D8(v57, v64 + *(v68 + 48), &qword_100AF53F0);
  v69 = v64 + *(v68 + 64);
  *v69 = 0;
  v69[8] = 1;
  sub_1000077D8(&v85, v92, &qword_100AF5480);
  sub_100007840(v84, &qword_100AF53F0);
  sub_100007840(v57, &qword_100AF53F0);
  v92[0] = v58;
  v92[1] = v59;
  v92[2] = v60;
  v92[3] = v63;
  v92[4] = v61;
  v92[5] = v62;
  v92[6] = v83;
  v92[7] = v82;
  v92[8] = v24;
  v92[9] = v26;
  v92[10] = v28;
  v92[11] = v30;
  v93 = 0;
  return sub_100007840(v92, &qword_100AF5480);
}

uint64_t sub_1007491AC()
{
  v0 = sub_1001F1160(&qword_100ADB1C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6[-v1];
  type metadata accessor for RERootContainerView();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10079B9A4();

  v3 = type metadata accessor for OverlayViewModel.Overlay(0);
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  result = sub_100007840(v2, &qword_100ADB1C0);
  if (v4 == 1)
  {
    v6[15] = 1;
    sub_1001F1160(&qword_100AE3E70);
    return sub_10079CF34();
  }

  return result;
}

unint64_t sub_100749340()
{
  result = qword_100AF52D8;
  if (!qword_100AF52D8)
  {
    sub_1001F1234(&qword_100AF52C0);
    sub_100005920(&qword_100AF52E0, &qword_100AF52E8);
    sub_100005920(&qword_100AF52F0, &qword_100AF52F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF52D8);
  }

  return result;
}

uint64_t sub_100749454(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for RERootContainerView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1007494E8()
{
  result = qword_100AF5348;
  if (!qword_100AF5348)
  {
    sub_1001F1234(&qword_100AF5338);
    sub_100749574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5348);
  }

  return result;
}

unint64_t sub_100749574()
{
  result = qword_100AF5350;
  if (!qword_100AF5350)
  {
    sub_1001F1234(&qword_100AF5358);
    sub_100005920(&qword_100AF5360, &qword_100AF5368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5350);
  }

  return result;
}

uint64_t sub_10074962C()
{
  type metadata accessor for RERootContainerView();

  return sub_100741C88();
}

uint64_t sub_10074969C(_BYTE *a1, _BYTE *a2)
{
  result = type metadata accessor for RERootContainerView() - 8;
  if ((*a1 & 1) == 0)
  {
    if (*a2)
    {
      return sub_100743130();
    }
  }

  return result;
}

uint64_t sub_100749718()
{
  v1 = type metadata accessor for RERootContainerView();
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  v3 = v1[5];
  sub_1001F1160(&unk_100ADB730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10079BC44();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[6];
  sub_1001F1160(&unk_100ADB4C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10079CEE4();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v1[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10079CEE4();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v2 + v8, 1, v9))
    {
      (*(v10 + 8))(v2 + v8, v9);
    }
  }

  else
  {
  }

  sub_10020B534(*(v2 + v1[8]), *(v2 + v1[8] + 8));
  sub_10020B534(*(v2 + v1[9]), *(v2 + v1[9] + 8));
  v11 = v1[10];
  sub_1001F1160(&qword_100AD9FA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_10079CAA4();
    (*(*(v12 - 8) + 8))(v2 + v11, v12);
  }

  else
  {
  }

  v13 = v1[11];
  sub_1001F1160(&unk_100ADB740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_10079C104();
    (*(*(v14 - 8) + 8))(v2 + v13, v14);
  }

  else
  {
  }

  v15 = v2 + v1[16];
  v16 = sub_10079D024();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v15, 1, v16))
  {
    (*(v17 + 8))(v15, v16);
  }

  sub_1001F1160(&qword_100AE3E70);

  swift_weakDestroy();
  swift_unknownObjectWeakDestroy();

  v18 = v1[22];
  v19 = sub_10079ACE4();
  (*(*(v19 - 8) + 8))(v2 + v18, v19);

  return swift_deallocObject();
}

uint64_t sub_100749BF0()
{
  type metadata accessor for RERootContainerView();

  return sub_1007491AC();
}

unint64_t sub_100749C58()
{
  result = qword_100AF53B8;
  if (!qword_100AF53B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF53B8);
  }

  return result;
}

unint64_t sub_100749D00()
{
  result = qword_100AF5400;
  if (!qword_100AF5400)
  {
    sub_1001F1234(&qword_100AF53E8);
    sub_100749D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5400);
  }

  return result;
}

unint64_t sub_100749D8C()
{
  result = qword_100AF5408;
  if (!qword_100AF5408)
  {
    sub_1001F1234(&qword_100AF5410);
    sub_100749E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5408);
  }

  return result;
}

unint64_t sub_100749E18()
{
  result = qword_100AF5418;
  if (!qword_100AF5418)
  {
    sub_1001F1234(&qword_100AF5420);
    sub_100749EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5418);
  }

  return result;
}

unint64_t sub_100749EA4()
{
  result = qword_100AF5428;
  if (!qword_100AF5428)
  {
    sub_1001F1234(&qword_100AF5430);
    sub_100005920(&qword_100AF5438, &qword_100AF5440);
    sub_100005920(&qword_100AF5448, &qword_100AF5450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5428);
  }

  return result;
}

unint64_t sub_100749F88()
{
  result = qword_100AF5458;
  if (!qword_100AF5458)
  {
    sub_1001F1234(&qword_100AF53D8);
    sub_100005920(&qword_100AF5460, &qword_100AF5468);
    sub_10074A040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5458);
  }

  return result;
}

unint64_t sub_10074A040()
{
  result = qword_100AF5470;
  if (!qword_100AF5470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5470);
  }

  return result;
}

unint64_t sub_10074A094()
{
  result = qword_100AF5520;
  if (!qword_100AF5520)
  {
    sub_1001F1234(&qword_100AF5518);
    sub_10074A14C();
    sub_100005920(&qword_100AF5530, &qword_100AF5538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5520);
  }

  return result;
}

unint64_t sub_10074A14C()
{
  result = qword_100AF5528;
  if (!qword_100AF5528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5528);
  }

  return result;
}

unint64_t sub_10074A1AC()
{
  result = qword_100AF5550;
  if (!qword_100AF5550)
  {
    sub_1001F1234(&qword_100AF5540);
    sub_10074A238();
    sub_10074A318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5550);
  }

  return result;
}

unint64_t sub_10074A238()
{
  result = qword_100AF5558;
  if (!qword_100AF5558)
  {
    sub_1001F1234(&qword_100AF5560);
    sub_10074A2C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5558);
  }

  return result;
}

unint64_t sub_10074A2C4()
{
  result = qword_100AF5568;
  if (!qword_100AF5568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5568);
  }

  return result;
}

unint64_t sub_10074A318()
{
  result = qword_100AF5570;
  if (!qword_100AF5570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5570);
  }

  return result;
}

unint64_t sub_10074A36C()
{
  result = qword_100AF5578;
  if (!qword_100AF5578)
  {
    sub_1001F1234(&qword_100AF5548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5578);
  }

  return result;
}

uint64_t sub_10074A428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10074A490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10074A504(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_10074A5A4(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10074A5C8()
{
  v1 = type metadata accessor for RERootContainerView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v26 = *(*(v1 - 1) + 64);
  v27 = type metadata accessor for HistoryModel.Entry(0);
  v4 = *(*(v27 - 8) + 80);
  v5 = v0 + v3;

  v6 = v1[5];
  sub_1001F1160(&unk_100ADB730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10079BC44();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[6];
  sub_1001F1160(&unk_100ADB4C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10079CEE4();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_10079CEE4();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v5 + v11, 1, v12))
    {
      (*(v13 + 8))(v5 + v11, v12);
    }
  }

  else
  {
  }

  sub_10020B534(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  sub_10020B534(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v14 = v1[10];
  sub_1001F1160(&qword_100AD9FA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_10079CAA4();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  v16 = v1[11];
  sub_1001F1160(&unk_100ADB740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_10079C104();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
  }

  v18 = v5 + v1[16];
  v19 = sub_10079D024();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v18, 1, v19))
  {
    (*(v20 + 8))(v18, v19);
  }

  sub_1001F1160(&qword_100AE3E70);

  swift_weakDestroy();
  swift_unknownObjectWeakDestroy();

  v21 = v1[22];
  v22 = sub_10079ACE4();
  (*(*(v22 - 8) + 8))(v5 + v21, v22);

  v23 = *(v27 + 20);
  v24 = sub_100796C04();
  (*(*(v24 - 8) + 8))(v0 + ((v3 + v26 + v4) & ~v4) + v23, v24);

  return swift_deallocObject();
}

uint64_t sub_10074AB64()
{
  v1 = *(type metadata accessor for RERootContainerView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for HistoryModel.Entry(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100748584(v0 + v2, v5);
}

uint64_t initializeBufferWithCopyOfBuffer for RERootContainerView.InfoBarContentAnimationState(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RERootContainerView.InfoBarContentAnimationState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for RERootContainerView.InfoBarContentAnimationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_10074AD70()
{
  result = qword_100AF55A8;
  if (!qword_100AF55A8)
  {
    sub_1001F1234(&qword_100AF5300);
    sub_1001F1234(&qword_100AF52C8);
    sub_1001F1234(&qword_100AF52C0);
    sub_100749340();
    sub_100206ECC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF55A8);
  }

  return result;
}

unint64_t sub_10074AF18()
{
  result = qword_100AF55C8;
  if (!qword_100AF55C8)
  {
    sub_1001F1234(&qword_100AF55B0);
    sub_10050C5A4();
    sub_10074AFD4(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF55C8);
  }

  return result;
}

uint64_t sub_10074AFD4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10074B01C()
{
  result = qword_100AF55D0;
  if (!qword_100AF55D0)
  {
    sub_1001F1234(&qword_100AF55C0);
    sub_1001F1234(&qword_100AF55B0);
    sub_1001F1234(&qword_100AD53B0);
    sub_10074AF18();
    sub_100005920(&qword_100AE40D0, &qword_100AD53B0);
    swift_getOpaqueTypeConformance2();
    sub_10074A318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF55D0);
  }

  return result;
}

uint64_t UICommand.books_themeID.getter()
{
  if ([v0 propertyList])
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000230BC(v5);
    return 0;
  }
}

uint64_t UICommand.books_annotationStyle.getter()
{
  v1 = v0;

  return sub_100400064(v1);
}

uint64_t sub_10074B2A0()
{
  v1 = *v0;

  return sub_100400064(v1);
}

uint64_t UICommand.books_themeAppearance.getter()
{
  if ([v0 propertyList])
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0u;
    v3 = 0u;
  }

  v4[0] = v2;
  v4[1] = v3;
  if (*(&v3 + 1))
  {
    if (swift_dynamicCast())
    {
      return sub_1007A02A4();
    }
  }

  else
  {
    sub_1000230BC(v4);
  }

  return 4;
}

uint64_t type metadata accessor for ReadThisActionItem()
{
  result = qword_100AF5630;
  if (!qword_100AF5630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10074B414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_100009864(a1, v28);
  sub_100009864(a2, v27);
  sub_100009864(a4, v26);
  v10 = objc_opt_self();
  v11 = [v10 delegate];
  v12 = [v11 serviceCenter];

  v13 = [objc_opt_self() defaultManager];
  v14 = [v10 delegate];
  v15 = [v14 engagementManager];

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v17 = result;
    v18 = [objc_opt_self() defaultHelper];
    v24 = &type metadata for MenuLibraryOperationProvider;
    v25 = &off_100A266E8;
    v19 = swift_allocObject();
    *&v23 = v19;
    v19[2] = v12;
    v19[3] = v13;
    v19[4] = v15;
    v19[5] = v17;
    v19[6] = v18;
    sub_1000074E0(a4);
    sub_1000074E0(a2);
    sub_1000074E0(a1);
    v20 = *(type metadata accessor for ReadThisActionItem() + 36);
    v21 = enum case for ContextActionType.readThis(_:);
    v22 = sub_100797144();
    (*(*(v22 - 8) + 104))(a5 + v20, v21, v22);
    sub_1000077C0(v28, a5);
    sub_1000077C0(v27, a5 + 40);
    *(a5 + 80) = a3;
    sub_1000077C0(v26, a5 + 88);
    return sub_1000077C0(&v23, a5 + 128);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10074B650()
{
  v1 = v0;
  sub_10000E3E8(v0, v0[3]);
  if ((sub_1007976D4() & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_10025FCD8(&v9);
  if (!v10)
  {
    sub_100007840(&v9, &qword_100AD4B40);
    goto LABEL_13;
  }

  sub_1001FF7C8(&v9, &v11);
  sub_10000E3E8(&v11, v12);
  sub_1007976B4();
  if (sub_1007972D4())
  {
    goto LABEL_11;
  }

  sub_10000E3E8(&v11, v12);
  sub_1007976B4();
  if (sub_1007972D4())
  {
    goto LABEL_11;
  }

  sub_10000E3E8(&v11, v12);
  v2 = sub_1007976A4();
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v2;
  v5 = v3;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (sub_10000E3E8(v1, v1[3]), (sub_100797794() & 1) == 0))
  {
LABEL_11:
    sub_1000074E0(&v11);
LABEL_13:
    v7 = 0;
    return v7 & 1;
  }

  sub_10000E3E8(&v11, v12);
  v7 = sub_1007975D4() ^ 1;
  sub_1000074E0(&v11);
  return v7 & 1;
}

uint64_t sub_10074B7E4()
{
  v1[40] = v0;
  v2 = sub_10079ACE4();
  v1[41] = v2;
  v1[42] = *(v2 - 8);
  v1[43] = swift_task_alloc();
  v3 = *(type metadata accessor for ReadThisActionItem() - 8);
  v1[44] = v3;
  v1[45] = *(v3 + 64);
  v1[46] = swift_task_alloc();
  sub_1001F1160(&qword_100AD67D0);
  v1[47] = swift_task_alloc();
  v1[48] = sub_1007A26F4();
  v1[49] = sub_1007A26E4();
  v5 = sub_1007A2694();
  v1[50] = v5;
  v1[51] = v4;

  return _swift_task_switch(sub_10074B974, v5, v4);
}

uint64_t sub_10074B974()
{
  sub_10025FCD8((v0 + 64));
  if (*(v0 + 88))
  {
    sub_1001FF7C8((v0 + 64), (v0 + 16));
    sub_10000E3E8((v0 + 16), *(v0 + 40));
    sub_100797554();
    if (*(v0 + 264))
    {
      v1 = *(v0 + 320);
      sub_1000077C0((v0 + 240), v0 + 200);
      sub_10074C0DC();
      v2 = sub_10000E3E8(v1 + 16, v1[19]);
      *(v0 + 416) = v1[10];
      v4 = *v2;
      v3 = *(v2 + 1);
      *(v0 + 192) = v2[4];
      *(v0 + 160) = v4;
      *(v0 + 176) = v3;
      *(v0 + 424) = sub_1007A26E4();
      v6 = sub_1007A2694();
      *(v0 + 432) = v6;
      *(v0 + 440) = v5;

      return _swift_task_switch(sub_10074BBCC, v6, v5);
    }

    sub_100007840(v0 + 240, &qword_100AEF240);
    sub_1000074E0(v0 + 16);
  }

  else
  {

    sub_100007840(v0 + 64, &qword_100AD4B40);
  }

  sub_10079AC44();
  v7 = sub_10079ACC4();
  v8 = sub_1007A29B4();
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 336);
  v10 = *(v0 + 344);
  v12 = *(v0 + 328);
  if (v9)
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Action doesn't have sufficient context or assetInfo to handle action.", v13, 2u);
  }

  (*(v11 + 8))(v10, v12);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10074BBCC()
{
  v1 = v0[52];
  v2 = v0[40] + 40;
  sub_10000E3E8(v0 + 2, v0[5]);
  v3 = sub_100797674();
  v5 = v4;
  v0[56] = v4;
  v6 = sub_1007A26E4();
  v0[57] = v6;
  v7 = swift_task_alloc();
  v0[58] = v7;
  *(v7 + 16) = v0 + 20;
  *(v7 + 24) = v3;
  *(v7 + 32) = v5;
  *(v7 + 40) = 1;
  *(v7 + 48) = v0 + 2;
  *(v7 + 56) = v1;
  *(v7 + 64) = 0;
  *(v7 + 72) = v2;
  v8 = swift_task_alloc();
  v0[59] = v8;
  *v8 = v0;
  v8[1] = sub_10074BD44;

  return withCheckedContinuation<A>(isolation:function:_:)(v8, v6, &protocol witness table for MainActor, 0xD000000000000050, 0x80000001008DCA30, sub_10055DC58, v7, &type metadata for () + 8);
}

uint64_t sub_10074BD44()
{
  v1 = *v0;

  v2 = *(v1 + 440);
  v3 = *(v1 + 432);

  return _swift_task_switch(sub_10074BEC8, v3, v2);
}

uint64_t sub_10074BEC8()
{

  v1 = *(v0 + 400);
  v2 = *(v0 + 408);

  return _swift_task_switch(sub_10074BF2C, v1, v2);
}

uint64_t sub_10074BF2C()
{
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v4 = *(v0 + 352);
  v3 = *(v0 + 360);
  v5 = *(v0 + 320);

  v6 = sub_1007A2744();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  sub_10074D798(v5, v2);
  sub_1002B0670(v0 + 16, v0 + 112);
  sub_100009864(v0 + 200, v0 + 280);
  v7 = sub_1007A26E4();
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = &protocol witness table for MainActor;
  sub_10074D7FC(v2, v10 + v8);
  sub_1001FF7C8((v0 + 112), (v10 + v9));
  sub_1000077C0((v0 + 280), v10 + ((v9 + 55) & 0xFFFFFFFFFFFFFFF8));
  sub_10050CBCC(0, 0, v1, &unk_100843820, v10);

  sub_1000074E0(v0 + 200);
  sub_1000074E0(v0 + 16);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10074C0DC()
{
  v1 = sub_10079AD54();
  v34 = *(v1 - 8);
  v35 = v1;
  __chkstk_darwin(v1);
  v33 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10079AD84();
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v28 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10079AD44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10079AD64();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10079ADB4();
  v31 = *(v13 - 8);
  v32 = v13;
  __chkstk_darwin(v13);
  v27 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E3E8(v0, v0[3]);
  result = sub_1007976D4();
  if (result)
  {
    sub_10000E3E8(v0, v0[3]);
    sub_1007977A4();
    if (v39 == 1)
    {
      return sub_1001FF70C(&v36);
    }

    else
    {
      sub_1000077C0(&v36, v40);
      (*(v10 + 104))(v12, enum case for FigaroClickEvent.ActionContext.actionSheet(_:), v9);
      ThisActionItem = type metadata accessor for ReadThisActionItem();
      *v8 = sub_100797134();
      v8[1] = v17;
      (*(v6 + 104))(v8, enum case for FigaroActionType.custom(_:), v5);
      sub_1001F1160(&qword_100ADAF48);
      sub_10079ADA4();
      *(swift_allocObject() + 16) = xmmword_10080B690;
      sub_10000E3E8(v40, v41);
      v26[4] = sub_100797674();
      v26[3] = v18;
      v19 = sub_10074D9FC(&qword_100AD1E68, type metadata accessor for ReadThisActionItem);
      v26[2] = sub_100797094();
      v26[1] = v20;
      sub_10000E3E8(v0 + 11, v0[14]);
      v37 = ThisActionItem;
      v38 = v19;
      v21 = sub_1002256EC(&v36);
      sub_10074D798(v0, v21);
      sub_100796F64();
      sub_1000074E0(&v36);
      (*(v29 + 104))(v28, enum case for FigaroClickEvent.Location.Type.button(_:), v30);
      sub_10079AD94();
      sub_10000E3E8(v40, v41);
      sub_100797674();
      (*(v34 + 104))(v33, enum case for FigaroClickEvent.TargetType.readThis(_:), v35);
      sub_100019158(_swiftEmptyArrayStorage);
      v22 = v27;
      sub_10079AD74();
      sub_10074D9FC(&qword_100ADAF50, &type metadata accessor for FigaroClickEvent);
      v23 = v32;
      sub_10079AE74();
      (*(v31 + 8))(v22, v23);
      v24 = objc_opt_self();
      type metadata accessor for FigaroKey(0);
      sub_10074D9FC(&qword_100AD36A0, type metadata accessor for FigaroKey);
      isa = sub_1007A2024().super.isa;

      [v24 recordNativeEvent:isa];

      return sub_1000074E0(v40);
    }
  }

  return result;
}

uint64_t sub_10074C78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  sub_1001F1160(&qword_100ADA978);
  v6[12] = swift_task_alloc();
  sub_100798374();
  v6[13] = swift_task_alloc();
  v7 = sub_10079B634();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  v8 = sub_10079B654();
  v6[17] = v8;
  v6[18] = *(v8 - 8);
  v6[19] = swift_task_alloc();
  sub_1007A26F4();
  v6[20] = sub_1007A26E4();
  v10 = sub_1007A2694();
  v6[21] = v10;
  v6[22] = v9;

  return _swift_task_switch(sub_10074C944, v10, v9);
}

uint64_t sub_10074C944()
{
  v1 = *(*(v0 + 72) + 80);
  *(v0 + 184) = v1;
  if (v1)
  {
    v2 = *(v0 + 80);
    (*(*(v0 + 120) + 104))(*(v0 + 128), enum case for ActionOrigin.Kind.lockup(_:), *(v0 + 112));
    v3 = v1;
    sub_10079B644();
    v10 = *(v2 + 3);
    v4 = v2[3];
    v5 = sub_10000E3E8(v2, v4);
    *(v0 + 40) = v10;
    v6 = sub_1002256EC((v0 + 16));
    (*(*(v4 - 8) + 16))(v6, v5, v4);
    v7 = swift_task_alloc();
    *(v0 + 192) = v7;
    *v7 = v0;
    v7[1] = sub_10074CB48;

    return sub_10074CFF8(v0 + 16);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_10074CB48(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = v4[21];
    v6 = v4[22];
    v7 = sub_10074CF28;
  }

  else
  {
    v4[26] = a1;
    sub_1000074E0((v4 + 2));
    v5 = v4[21];
    v6 = v4[22];
    v7 = sub_10074CC74;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10074CC74()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[12];
  v6 = v0[11];
  v14 = v0[9];

  v13 = v1;

  sub_100798364();
  (*(v4 + 16))(v5, v2, v3);
  (*(v4 + 56))(v5, 0, 1, v3);
  *(swift_task_alloc() + 16) = v6;
  v7 = objc_allocWithZone(sub_100797934());
  sub_1001F1160(&qword_100AF5678);
  v8 = sub_1007971C4();
  v9 = sub_10074D9FC(&qword_100AF5680, &type metadata accessor for IveReadThisRootView);
  v0[7] = v8;
  v0[8] = v9;
  swift_getOpaqueTypeConformance2();
  v10 = sub_100797924();

  sub_10000E3E8((v14 + 40), *(v14 + 64));
  sub_100796EC4();

  (*(v4 + 8))(v2, v3);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10074CF28()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[18];

  (*(v4 + 8))(v2, v3);
  sub_1000074E0((v0 + 2));

  v5 = v0[1];

  return v5();
}

uint64_t sub_10074CFF8(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_10074D018, 0, 0);
}

uint64_t sub_10074D018()
{
  sub_10000E3E8((v0[19] + 40), *(v0[19] + 64));
  v0[20] = sub_100796EA4();
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_10074D0DC;

  return BaseObjectGraph.withSyncDependenciesForSwiftUI.getter();
}

uint64_t sub_10074D0DC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = sub_10074D414;
  }

  else
  {
    *(v4 + 184) = a1;
    v5 = sub_10074D204;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10074D204()
{
  v1 = v0[19];
  v2 = v0[18];

  sub_1001F1160(&qword_100AF5688);
  sub_1007A1DA4();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100812CF0;
  sub_1001F1160(&qword_100AD5ED0);
  sub_100009864(v1 + 40, (v0 + 2));
  sub_1007A1D94();
  sub_1001F1160(&qword_100AF5690);
  sub_100009864(v1, (v0 + 7));
  sub_1007A1D94();
  sub_1001F1160(&qword_100AD4B48);
  sub_100009864(v2, (v0 + 12));
  sub_1007A1D94();
  v0[17] = v3;
  sub_1001F1160(&qword_100AF5698);
  sub_10074D998();
  v4 = sub_1007A1EB4();

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_10074D414()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10074D478(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001F1160(&qword_100AE6FE8);
  __chkstk_darwin(v3 - 8);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v6);
  v8 = &v18[-v7 - 8];
  v9 = sub_1007971C4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100009864(a2, v18);

  sub_1007971B4();
  v13 = sub_10079C0E4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v8, 1, 1, v13);
  (*(v14 + 104))(v5, enum case for DynamicTypeSize.accessibility3(_:), v13);
  v15(v5, 0, 1, v13);
  sub_10074D9FC(&qword_100AF5680, &type metadata accessor for IveReadThisRootView);
  sub_10079D604();
  sub_100007840(v5, &qword_100AE6FE8);
  sub_100007840(v8, &qword_100AE6FE8);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10074D708()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_10074B7E4();
}

uint64_t sub_10074D798(uint64_t a1, uint64_t a2)
{
  ThisActionItem = type metadata accessor for ReadThisActionItem();
  (*(*(ThisActionItem - 8) + 16))(a2, a1, ThisActionItem);
  return a2;
}

uint64_t sub_10074D7FC(uint64_t a1, uint64_t a2)
{
  ThisActionItem = type metadata accessor for ReadThisActionItem();
  (*(*(ThisActionItem - 8) + 32))(a2, a1, ThisActionItem);
  return a2;
}

uint64_t sub_10074D860(uint64_t a1)
{
  v4 = *(type metadata accessor for ReadThisActionItem() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002812C;

  return sub_10074C78C(a1, v7, v8, v1 + v5, v1 + v6, v1 + ((v6 + 55) & 0xFFFFFFFFFFFFFFF8));
}

unint64_t sub_10074D998()
{
  result = qword_100AF56A0;
  if (!qword_100AF56A0)
  {
    sub_1001F1234(&qword_100AF5698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF56A0);
  }

  return result;
}

uint64_t sub_10074D9FC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_10074DA44(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10074DA70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_10074DAB8(uint64_t result, int a2, int a3)
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
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_10074DB28()
{
  v1 = _UISolariumEnabled();
  v2 = 7;
  if ((*(v0 + 56) & 1) == 0)
  {
    v2 = 8;
  }

  v3 = UIFontTextStyleBody;
  v4 = UIFontTextStyleTitle2;
  if (*(v0 + 56))
  {
    v4 = UIFontTextStyleBody;
  }

  else
  {
    v3 = UIFontTextStyleTitle1;
  }

  if (v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 6;
  }

  if (v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
  v8 = [objc_opt_self() preferredFontForTextStyle:v6 compatibleWithTraitCollection:v7];
  v9 = objc_opt_self();
  [v8 pointSize];
  v10 = [v9 configurationWithPointSize:v5 weight:3 scale:?];

  return v10;
}

id sub_10074DC54()
{
  if (_UISolariumEnabled())
  {
    v1 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
    v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v1];
    v3 = objc_opt_self();
    [v2 pointSize];
    v4 = [v3 configurationWithPointSize:7 weight:-1 scale:?];
  }

  else
  {
    if (*(v0 + 56))
    {
      v1 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
      v5 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v1];
    }

    else
    {
      v1 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
      v5 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle3 compatibleWithTraitCollection:v1];
    }

    v2 = v5;
    v6 = objc_opt_self();
    [v2 pointSize];
    v4 = [v6 configurationWithPointSize:6 weight:3 scale:?];
  }

  v7 = v4;

  return v7;
}

void sub_10074DE38()
{
  v1 = v0;
  v2 = *v0;
  if (*v0)
  {
    sub_1007A3C24(1u);
    v3 = v2;
    sub_1007A3194();
  }

  else
  {
    sub_1007A3C24(0);
  }

  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  sub_1007A3C24(v1[7] & 1);
  sub_1007A3C24(*(v1 + 57) & 1);
  v4 = *(v1 + 72);
  v5 = *(v1 + 73);
  v6 = v1[10];
  sub_1007A3C24(v1[8] & 1);
  sub_1007A3C14(v4 & 1);
  sub_1007A3C14(v5 & 1);
  sub_1007A3C14(v6);
  v7 = *(v1 + 96);
  v8 = *(v1 + 97);
  v9 = v1[13];
  sub_1007A3C24(v1[11] & 1);
  sub_1007A3C14(v7 & 1);
  sub_1007A3C14(v8 & 1);
  sub_1007A3C14(v9);
  sub_1007A3C24(v1[14] & 1);
}

Swift::Int sub_10074DF50()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 16);
  sub_1007A3C04();
  sub_1007A3C24(v1);
  sub_1007A3C14(v2);
  sub_1007A3C14(v3);
  sub_1007A3C14(v4);
  return sub_1007A3C44();
}

void sub_10074DFD8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v3 = *(v0 + 16);
  sub_1007A3C24(*v0);
  sub_1007A3C14(v1);
  sub_1007A3C14(v2);
  sub_1007A3C14(v3);
}

Swift::Int sub_10074E038()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 16);
  sub_1007A3C04();
  sub_1007A3C24(v1);
  sub_1007A3C14(v2);
  sub_1007A3C14(v3);
  sub_1007A3C14(v4);
  return sub_1007A3C44();
}

uint64_t sub_10074E0BC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return (*(a1 + 2) == *(a2 + 2)) & ~(a2[8] ^ a1[8] | a2[9] ^ a1[9]);
  }

  else
  {
    return 0;
  }
}

Swift::Int sub_10074E108()
{
  sub_1007A3C04();
  sub_10074DE38();
  return sub_1007A3C44();
}

Swift::Int sub_10074E14C()
{
  sub_1007A3C04();
  sub_10074DE38();
  return sub_1007A3C44();
}

uint64_t sub_10074E188(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 112);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return sub_10074E264(v12, v14) & 1;
}

unint64_t sub_10074E210()
{
  result = qword_100AF56A8;
  if (!qword_100AF56A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF56A8);
  }

  return result;
}

uint64_t sub_10074E264(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      goto LABEL_23;
    }

    sub_10074E40C();
    v6 = v5;
    v7 = v4;
    v8 = sub_1007A3184();

    if ((v8 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (v5)
  {
    goto LABEL_23;
  }

  v9 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v9 && (sub_1007A3AB4() & 1) == 0)
  {
    goto LABEL_23;
  }

  v10 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v10 && (sub_1007A3AB4() & 1) == 0 || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_1007A3AB4() & 1) == 0)
  {
    goto LABEL_23;
  }

  if ((*(a1 + 56) ^ *(a2 + 56)) & 1) != 0 || ((*(a1 + 57) ^ *(a2 + 57)) & 1) != 0 || ((*(a1 + 64) ^ *(a2 + 64)) & 1) != 0 || ((*(a1 + 72) ^ *(a2 + 72)))
  {
    goto LABEL_23;
  }

  v11 = 0;
  if (((*(a1 + 73) ^ *(a2 + 73)) & 1) == 0 && *(a1 + 80) == *(a2 + 80))
  {
    if (((*(a1 + 88) ^ *(a2 + 88)) & 1) == 0 && ((*(a1 + 96) ^ *(a2 + 96)) & 1) == 0)
    {
      v11 = 0;
      if (((*(a1 + 97) ^ *(a2 + 97)) & 1) == 0 && *(a1 + 104) == *(a2 + 104))
      {
        v11 = *(a1 + 112) ^ *(a2 + 112) ^ 1;
      }

      return v11 & 1;
    }

LABEL_23:
    v11 = 0;
  }

  return v11 & 1;
}

unint64_t sub_10074E40C()
{
  result = qword_100ADDB48;
  if (!qword_100ADDB48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100ADDB48);
  }

  return result;
}

uint64_t _s14descr100A007F9C5StateV9SkipStateVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s14descr100A007F9C5StateV9SkipStateVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_10074E504()
{
  result = qword_100AF56B0;
  if (!qword_100AF56B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF56B0);
  }

  return result;
}

void sub_10074E6C8()
{
  sub_10074E784();
  if (v0 <= 0x3F)
  {
    sub_1002E4FFC();
    if (v1 <= 0x3F)
    {
      sub_100247D20();
      if (v2 <= 0x3F)
      {
        sub_10074E7D4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10074E784()
{
  if (!qword_100AF5778)
  {
    v0 = sub_10079E024();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF5778);
    }
  }
}

void sub_10074E7D4()
{
  if (!qword_100AF5780)
  {
    sub_10079BEA4();
    v0 = sub_10079BCD4();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF5780);
    }
  }
}

uint64_t sub_10074E848@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1001F1160(&qword_100AF57C0);
  __chkstk_darwin(v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v19 - v8;
  v10 = v1[5];
  if (v10)
  {
    v11 = v1[2];
    v20 = *v1;
    v21 = v11;
    sub_1001F1160(&qword_100AF57D8);
    sub_10079DFF4();
    v12 = v10(v19[1], v19[2]);

    v13 = v12 & 1;
  }

  else
  {
    v13 = 2;
  }

  *v9 = sub_10079CB34();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v14 = sub_1001F1160(&qword_100AF57C8);
  sub_10074EA18(v13, v2, &v9[*(v14 + 44)]);
  v15 = sub_10079D294();
  v16 = &v9[*(v4 + 36)];
  *v16 = v15;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  v16[40] = 1;
  sub_10004C040(v9, v6);
  sub_10004C040(v6, a1);
  v17 = a1 + *(sub_1001F1160(&qword_100AF57D0) + 48);
  *v17 = 0;
  *(v17 + 8) = 1;
  sub_10004C0B0(v9);
  return sub_10004C0B0(v6);
}

uint64_t sub_10074EA18@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a3;
  v5 = _s23MultilineTextEditorViewVMa(0);
  v69 = *(v5 - 8);
  v68 = *(v69 + 64);
  __chkstk_darwin(v5 - 8);
  v67 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10079D104();
  v62 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&qword_100AF57E0);
  v54 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v50 - v9;
  v56 = sub_1001F1160(&qword_100AF57E8);
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v53 = &v50 - v11;
  v64 = sub_1001F1160(&qword_100AF57F0);
  v66 = *(v64 - 8);
  __chkstk_darwin(v64);
  v50 = &v50 - v12;
  v65 = sub_1001F1160(&qword_100AF57F8);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v61 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v59 = &v50 - v15;
  v16 = sub_1001F1160(&qword_100AF5800);
  __chkstk_darwin(v16 - 8);
  v71 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v50 - v19;
  *v20 = sub_10079C8F4();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v55 = v20;
  v21 = sub_1001F1160(&qword_100AF5808);
  sub_10074F244(a1, a2, &v20[*(v21 + 44)]);
  v23 = *a2;
  v22 = a2[1];
  v52 = a2[2];
  v51 = a2;
  v77 = v23;
  v78 = v22;
  v79 = v52;
  sub_1001F1160(&qword_100AF57D8);
  sub_10079E014();
  v72 = a2;
  sub_10079E5A4();
  v24 = sub_100005920(&qword_100AF5810, &qword_100AF57E0);
  v25 = v53;
  sub_10079D9C4();
  (*(v54 + 8))(v10, v8);
  v26 = v58;
  sub_10079D0F4();
  v73 = v8;
  v74 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_100750138();
  v29 = v56;
  v30 = v60;
  sub_10079D7C4();
  v31 = v26;
  v32 = v30;
  (*(v62 + 8))(v31, v30);
  (*(v57 + 8))(v25, v29);
  v73 = v23;
  v74 = v22;
  v75 = v52;
  sub_10079DFF4();
  v33 = v67;
  sub_100750190(v51, v67);
  v34 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v35 = swift_allocObject();
  sub_1007501F4(v33, v35 + v34);
  v73 = v29;
  v74 = v32;
  v75 = OpaqueTypeConformance2;
  v76 = v28;
  swift_getOpaqueTypeConformance2();
  v36 = v59;
  v37 = v64;
  v38 = v50;
  sub_10079DC24();

  (*(v66 + 8))(v38, v37);
  v39 = v55;
  v40 = v71;
  sub_1000077D8(v55, v71, &qword_100AF5800);
  v41 = v63;
  v42 = *(v63 + 16);
  v43 = v61;
  v44 = v65;
  v42(v61, v36, v65);
  v45 = v40;
  v46 = v70;
  sub_1000077D8(v45, v70, &qword_100AF5800);
  v47 = sub_1001F1160(&qword_100AF5820);
  v42((v46 + *(v47 + 48)), v43, v44);
  v48 = *(v41 + 8);
  v48(v36, v44);
  sub_100007840(v39, &qword_100AF5800);
  v48(v43, v44);
  return sub_100007840(v71, &qword_100AF5800);
}

uint64_t sub_10074F244@<X0>(unsigned __int8 a1@<W0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v136 = a3;
  v5 = a1;
  v6 = _s23MultilineTextEditorViewVMa(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_1001F1160(&qword_100AF5828);
  __chkstk_darwin(v9);
  v124 = &v105[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v105[-v12];
  v126 = sub_1001F1160(&qword_100AF5830);
  __chkstk_darwin(v126);
  v128 = &v105[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v123 = &v105[-v16];
  v127 = sub_1001F1160(&qword_100AF5838);
  __chkstk_darwin(v127);
  v135 = &v105[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v134 = &v105[-v19];
  __chkstk_darwin(v20);
  v125 = &v105[-v21];
  __chkstk_darwin(v22);
  v133 = &v105[-v23];
  __chkstk_darwin(v24);
  v122 = &v105[-v25];
  __chkstk_darwin(v26);
  v137 = &v105[-v27];
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v129 = v5;
  v106 = v5 != 2;
  if (v5 != 2)
  {
    if (a1)
    {
      v28 = 0x756C615620859CE2;
    }

    else
    {
      v28 = 0x1000000000000014;
    }

    v30 = _swiftEmptyArrayStorage;
  }

  v130 = v30;
  v131 = v29;
  v132 = v28;
  sub_100750190(a2, &v105[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v121 = *(v7 + 80);
  v31 = (v121 + 16) & ~v121;
  v120 = v31;
  v32 = swift_allocObject();
  sub_1007501F4(&v105[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v32 + v31);
  sub_10079E054();
  v33 = sub_10079D284();
  v119 = sub_1001F1160(&qword_100AF5840);
  v34 = &v13[*(v119 + 36)];
  *v34 = v33;
  *(v34 + 8) = 0u;
  *(v34 + 24) = 0u;
  v34[40] = 1;
  v35 = sub_10079D2F4();
  sub_10079BBA4();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v118 = sub_1001F1160(&qword_100AF5848);
  v44 = &v13[*(v118 + 36)];
  *v44 = v35;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  v45 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v117 = sub_1001F1160(&qword_100AF5850);
  *&v13[*(v117 + 36)] = v45;
  v46 = sub_10079DD64();
  LOBYTE(v31) = sub_10079D294();
  v116 = sub_1001F1160(&qword_100AF5858);
  v47 = &v13[*(v116 + 36)];
  *v47 = v46;
  v47[8] = v31;
  v48 = &v13[*(v9 + 36)];
  v49 = enum case for RoundedCornerStyle.continuous(_:);
  v114 = enum case for RoundedCornerStyle.continuous(_:);
  v113 = sub_10079C9E4();
  v50 = *(v113 - 8);
  v112 = *(v50 + 104);
  v115 = v50 + 104;
  v112(v48, v49, v113);
  v111 = sub_1001F1160(&unk_100AE42C0);
  *&v48[*(v111 + 36)] = 256;
  v108 = v9;
  v51 = a1;
  v53 = *a2;
  v52 = a2[1];
  v54 = a2[2];
  v142 = *a2;
  v143 = v52;
  v144 = v54;
  sub_1001F1160(&qword_100AF57D8);
  v107 = v8;
  v55 = &v105[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10079DFF4();
  v57 = v140;
  v56 = v141;

  v58 = HIBYTE(v56) & 0xF;
  if ((v56 & 0x2000000000000000) == 0)
  {
    v58 = v57 & 0xFFFFFFFFFFFFLL;
  }

  v59 = 1.0;
  if (v58)
  {
    v60 = 1.0;
  }

  else
  {
    v60 = 0.5;
  }

  v61 = v123;
  sub_10020B3C8(v13, v123, &qword_100AF5828);
  v62 = v126;
  *&v61[*(v126 + 36)] = v60;
  v142 = v53;
  v143 = v52;
  v144 = v54;
  sub_10079DFF4();
  v63 = v140;
  v64 = v141;

  v65 = HIBYTE(v64) & 0xF;
  if ((v64 & 0x2000000000000000) == 0)
  {
    v65 = v63 & 0xFFFFFFFFFFFFLL;
  }

  v66 = v65 == 0;
  KeyPath = swift_getKeyPath();
  v68 = swift_allocObject();
  *(v68 + 16) = v66;
  v69 = v51;
  v70 = v122;
  sub_10020B3C8(v61, v122, &qword_100AF5830);
  v71 = v127;
  v72 = &v70[*(v127 + 36)];
  *v72 = KeyPath;
  v72[1] = sub_1007504C0;
  v72[2] = v68;
  sub_10020B3C8(v70, v137, &qword_100AF5838);
  sub_10079E474();
  sub_10079BE54();
  v123 = v142;
  v122 = v144;
  v110 = v146;
  v109 = v147;
  LOBYTE(v140) = 1;
  v139 = v143;
  v138 = v145;
  sub_100750190(a2, v55);
  v73 = v120;
  v74 = swift_allocObject();
  sub_1007501F4(v55, v74 + v73);
  v75 = v124;
  sub_10079E054();
  v76 = sub_10079D284();
  v77 = v75 + *(v119 + 36);
  *v77 = v76;
  *(v77 + 8) = 0u;
  *(v77 + 24) = 0u;
  *(v77 + 40) = 1;
  LOBYTE(KeyPath) = sub_10079D2F4();
  sub_10079BBA4();
  v78 = v75 + *(v118 + 36);
  *v78 = KeyPath;
  *(v78 + 8) = v79;
  *(v78 + 16) = v80;
  *(v78 + 24) = v81;
  *(v78 + 32) = v82;
  *(v78 + 40) = 0;
  *(v75 + *(v117 + 36)) = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v83 = sub_10079DD74();
  v84 = sub_10079D294();
  v85 = v75 + *(v116 + 36);
  *v85 = v83;
  *(v85 + 8) = v84;
  v86 = v75 + *(v108 + 36);
  v112(v86, v114, v113);
  *(v86 + *(v111 + 36)) = 256;
  if (v129 == 2 || (v69 & 1) != 0)
  {
    v87 = v106;
  }

  else
  {
    v87 = 0;
    v59 = 0.5;
  }

  v88 = v128;
  sub_10020B3C8(v75, v128, &qword_100AF5828);
  *&v88[*(v62 + 36)] = v59;
  v89 = (v69 != 2) ^ v87;
  v90 = swift_getKeyPath();
  v91 = swift_allocObject();
  *(v91 + 16) = v89;
  v92 = v125;
  sub_10020B3C8(v88, v125, &qword_100AF5830);
  v93 = &v92[*(v71 + 36)];
  *v93 = v90;
  v93[1] = sub_1007505EC;
  v93[2] = v91;
  v94 = v133;
  sub_10020B3C8(v92, v133, &qword_100AF5838);
  v95 = v134;
  sub_1000077D8(v137, v134, &qword_100AF5838);
  LODWORD(v127) = v140;
  LODWORD(v128) = v139;
  v129 = v138;
  v96 = v135;
  sub_1000077D8(v94, v135, &qword_100AF5838);
  v97 = v136;
  v98 = v131;
  v99 = v132;
  *v136 = v132;
  v97[1] = v98;
  v100 = v130;
  v97[2] = 0;
  v97[3] = v100;
  v97[4] = 0;
  *(v97 + 40) = 1;
  v101 = sub_1001F1160(&qword_100AF5860);
  sub_1000077D8(v95, v97 + v101[16], &qword_100AF5838);
  v102 = v97 + v101[20];
  *v102 = 0;
  v102[8] = v127;
  *(v102 + 2) = v123;
  v102[24] = v128;
  *(v102 + 4) = v122;
  v102[40] = v129;
  v103 = v109;
  *(v102 + 6) = v110;
  *(v102 + 7) = v103;
  sub_1000077D8(v96, v97 + v101[24], &qword_100AF5838);
  sub_100750564(v99, v98, 0, v100);
  sub_1007505A8(v99, v98, 0, v100);
  sub_100007840(v94, &qword_100AF5838);
  sub_100007840(v137, &qword_100AF5838);
  sub_100007840(v96, &qword_100AF5838);
  sub_100007840(v95, &qword_100AF5838);
  return sub_1007505A8(v99, v98, 0, v100);
}

double sub_10074FE4C@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x7261656C43;
  *a1 = xmmword_1008439B0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_10074FE6C(uint64_t a1)
{
  v16 = sub_10079C824();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100AD8B60);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = sub_10079BEA4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s23MultilineTextEditorViewVMa(0);
  sub_1000077D8(a1 + *(v12 + 32), v7, &qword_100AD8B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_1007A29C4();
    v13 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_10079BE94();
  return (*(v9 + 8))(v11, v8);
}

double sub_1007500F4@<D0>(uint64_t a1@<X8>)
{
  *&result = 1701736260;
  *a1 = xmmword_1008439C0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_100750118@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 32);
  *a1 = *(v2 + 24);
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

unint64_t sub_100750138()
{
  result = qword_100AF5818;
  if (!qword_100AF5818)
  {
    sub_10079D104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5818);
  }

  return result;
}

uint64_t sub_100750190(uint64_t a1, uint64_t a2)
{
  v4 = _s23MultilineTextEditorViewVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007501F4(uint64_t a1, uint64_t a2)
{
  v4 = _s23MultilineTextEditorViewVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100750258(uint64_t a1, uint64_t *a2)
{
  v4 = *(_s23MultilineTextEditorViewVMa(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  v6 = *a2;
  v7 = a2[1];
  v8 = *(v5 + 40);
  if (!v8)
  {
    return (*(v5 + 56))(v6, v7);
  }

  result = v8(v6, v7);
  if (result)
  {
    return (*(v5 + 56))(v6, v7);
  }

  return result;
}

uint64_t sub_1007502F4()
{
  v1 = _s23MultilineTextEditorViewVMa(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 40))
  {
  }

  v3 = *(v1 + 32);
  sub_1001F1160(&qword_100AD8B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10079BEA4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100750454@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10079C794();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1007504F0(uint64_t (*a1)(uint64_t))
{
  v2 = *(_s23MultilineTextEditorViewVMa(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100750564(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1001F1894(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1007505A8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10020B430(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10075061C(uint64_t a1, uint64_t (*a2)(id))
{
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 orientation];

  return a2(v4);
}

uint64_t sub_10075068C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = sub_1001F1160(&qword_100AF5878);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  v8 = (a2 + *(sub_1001F1160(&qword_100AF5880) + 36));
  *v8 = 0u;
  v8[1] = 0u;
  v9 = [objc_opt_self() defaultCenter];
  v10 = sub_1001F1160(&qword_100AF5888);
  sub_1007A2E84();

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v5;
  v12 = (a2 + *(v10 + 56));
  *v12 = sub_1007507D8;
  v12[1] = v11;
}

unint64_t sub_1007507E0()
{
  result = qword_100AF5890;
  if (!qword_100AF5890)
  {
    sub_1001F1234(&qword_100AF5888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5890);
  }

  return result;
}

uint64_t sub_100750898()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t ChapterScrubbingState.pageImageLoaders.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Books21ChapterScrubbingState_pageImageLoaders;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100750A1C()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AF5898);
  sub_100008B98(v0, qword_100AF5898);
  sub_10000A7C4(0, &qword_100AD20A0);
  return sub_1007A33F4();
}

unint64_t ChapterScrubbingState.description.getter()
{
  sub_1007A3744(38);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v0 = sub_1007A25F4();
  v2 = v1;

  v4._countAndFlagsBits = v0;
  v4._object = v2;
  sub_1007A23D4(v4);

  v5._countAndFlagsBits = 15965;
  v5._object = 0xE200000000000000;
  sub_1007A23D4(v5);
  return 0xD000000000000022;
}

void sub_100750B9C(uint64_t a1, uint64_t a2)
{
  v54 = sub_100796C04();
  v50 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v49 = v44 - v6;
  v7 = sub_1001F1160(&qword_100AF59D0);
  __chkstk_darwin(v7 - 8);
  v11.n128_f64[0] = __chkstk_darwin(v8);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v47 = v44 - v9;
    v48 = v10;
    v12 = 0;
    v45 = a1;
    v15 = *(a1 + 64);
    v14 = a1 + 64;
    v13 = v15;
    v16 = 1 << *(v14 - 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v13;
    v19 = (v16 + 63) >> 6;
    v44[0] = a2;
    v44[1] = v50 + 16;
    v52 = (v50 + 32);
    v46 = (v50 + 8);
    while (v18)
    {
      v53 = (v18 - 1) & v18;
      v20 = __clz(__rbit64(v18)) | (v12 << 6);
LABEL_16:
      v25 = v45;
      v27 = v49;
      v26 = v50;
      v28 = v54;
      (*(v50 + 16))(v49, *(v45 + 48) + *(v50 + 72) * v20, v54, v11);
      v29 = *(*(v25 + 56) + 8 * v20);
      v30 = sub_1001F1160(&qword_100AF59D8);
      v31 = *(v30 + 48);
      v32 = *(v26 + 32);
      v33 = v48;
      v32(v48, v27, v28);
      *(v33 + v31) = v29;
      (*(*(v30 - 8) + 56))(v33, 0, 1, v30);
      a2 = v44[0];
LABEL_17:
      v34 = v47;
      sub_1007522E0(v33, v47);
      v35 = sub_1001F1160(&qword_100AF59D8);
      if ((*(*(v35 - 8) + 48))(v34, 1, v35) != 1)
      {
        v36 = *(v35 + 48);
        v37 = v51;
        v38 = v54;
        (*v52)(v51, v34, v54);
        v39 = *(v34 + v36);
        v40 = sub_1002EC564(v37);
        v42 = v41;
        (*v46)(v37, v38);
        if (v42)
        {
          v11.n128_u64[0] = *(*(a2 + 56) + 8 * v40);
          v18 = v53;
          if (v11.n128_f64[0] == v39)
          {
            continue;
          }
        }
      }

      return;
    }

    if (v19 <= v12 + 1)
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = v19;
    }

    v22 = v21 - 1;
    while (1)
    {
      v23 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v23 >= v19)
      {
        v43 = sub_1001F1160(&qword_100AF59D8);
        v33 = v48;
        (*(*(v43 - 8) + 56))(v48, 1, 1, v43);
        v53 = 0;
        v12 = v22;
        goto LABEL_17;
      }

      v24 = *(v14 + 8 * v23);
      ++v12;
      if (v24)
      {
        v53 = (v24 - 1) & v24;
        v20 = __clz(__rbit64(v24)) | (v23 << 6);
        v12 = v23;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100750FE8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_1002F9CDC(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(*(a2 + 56) + 8 * result) + 72) != *(v13 + 72))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1007510F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  if (*(*a2 + 16) && (sub_1002F9CDC(*a1), (v7 & 1) != 0))
  {
    if (qword_100AD1BB0 != -1)
    {
      swift_once();
    }

    v8 = sub_10079ACE4();
    sub_100008B98(v8, qword_100AF5898);
    v9 = sub_10079ACC4();
    v10 = sub_1007A2994();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v6;
      _os_log_impl(&_mh_execute_header, v9, v10, "reusing loader for index %ld", v11, 0xCu);
    }

    return sub_1006249D4(v6);
  }

  else
  {
    if (qword_100AD1BB0 != -1)
    {
      swift_once();
    }

    v13 = sub_10079ACE4();
    sub_100008B98(v13, qword_100AF5898);
    v14 = sub_10079ACC4();
    v15 = sub_1007A2994();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = v6;
      _os_log_impl(&_mh_execute_header, v14, v15, "creating loader for index %ld", v16, 0xCu);
    }

    sub_100009864(a4, v31);
    v17 = sub_10022569C(v31, v31[3]);
    __chkstk_darwin(v17);
    v19 = (v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v19;
    v22 = type metadata accessor for BookActionMenuDataSource();
    v30[3] = v22;
    v30[4] = &off_100A19810;
    v30[0] = v21;
    type metadata accessor for PageSnapshotLoader();
    v23 = swift_allocObject();
    v24 = sub_10022569C(v30, v22);
    __chkstk_darwin(v24);
    v26 = (v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26);
    v28 = sub_100751964(*v26, v6, 1, v23);
    sub_1000074E0(v30);
    sub_1000074E0(v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31[0] = *a2;
    *a2 = 0x8000000000000000;
    result = sub_1002F7D4C(v28, v6, isUniquelyReferenced_nonNull_native);
    *a2 = v31[0];
  }

  return result;
}

void sub_1007514D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1002EF740(*a1);
  if (v2)
  {
    v3 = v2;
    v4 = *(v2 + 64);
    if (v4)
    {
      v5 = v4;
      v6 = sub_10079ACC4();
      v7 = sub_1007A29A4();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 134217984;
        *(v8 + 4) = *(v3 + 72);
        _os_log_impl(&_mh_execute_header, v6, v7, "Cancelling operation for index %ld", v8, 0xCu);
      }

      [v5 cancel];
    }

    else
    {
    }
  }

  if (qword_100AD1BB0 != -1)
  {
    swift_once();
  }

  v9 = sub_10079ACE4();
  sub_100008B98(v9, qword_100AF5898);
  v10 = sub_10079ACC4();
  v11 = sub_1007A2994();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v10, v11, "trashing loader for index %ld", v12, 0xCu);
  }
}

uint64_t ChapterScrubbingState.deinit()
{
  v1 = OBJC_IVAR____TtC5Books21ChapterScrubbingState__pageIndeces;
  v2 = sub_1001F1160(&qword_100ADD148);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ChapterScrubbingState.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC5Books21ChapterScrubbingState__pageIndeces;
  v2 = sub_1001F1160(&qword_100ADD148);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1007517F8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ChapterScrubbingState();
  result = sub_10079B8B4();
  *a1 = result;
  return result;
}

uint64_t sub_100751868@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_1007518E8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

char *sub_100751964(uint64_t a1, uint64_t a2, char a3, char *a4)
{
  v8 = sub_10079ACE4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F1160(&unk_100AD8260);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23[-1] - v14;
  v23[3] = type metadata accessor for BookActionMenuDataSource();
  v23[4] = &off_100A19810;
  v23[0] = a1;
  sub_1001F1160(&qword_100AD2140);
  swift_allocObject();
  *(a4 + 7) = sub_10079B8D4();
  *(a4 + 8) = 0;
  v16 = OBJC_IVAR____TtC5Books18PageSnapshotLoader__image;
  v22 = 0;
  sub_1001F1160(&qword_100AD4F20);
  sub_10079B964();
  (*(v13 + 32))(&a4[v16], v15, v12);
  *&a4[OBJC_IVAR____TtC5Books18PageSnapshotLoader_cancellables] = &_swiftEmptySetSingleton;
  v17 = OBJC_IVAR____TtC5Books18PageSnapshotLoader_logger;
  sub_10000A7C4(0, &qword_100AD20A0);
  sub_1007A33F4();
  (*(v9 + 16))(v11, &a4[v17], v8);
  v18 = sub_10079ACC4();
  v19 = sub_1007A29A4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v18, v19, "Preparing snapshot loader for page %ld", v20, 0xCu);
  }

  (*(v9 + 8))(v11, v8);
  sub_100009864(v23, (a4 + 16));
  *(a4 + 9) = a2;
  if ((a3 & 1) != 0 && _s5Books17REActionMenuStateC9pageCountSivpfi_0() != a2)
  {
    sub_100699174(a2);
  }

  sub_1000074E0(v23);
  return a4;
}

uint64_t _s5Books21ChapterScrubbingStateC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v4 = sub_1004A0FCC(v11, v11);

  if (v4 & 1) != 0 && (sub_10000A7C4(0, &qword_100ADAF70), (sub_1007A3184()))
  {
    v5 = OBJC_IVAR____TtC5Books21ChapterScrubbingState_pageImageLoaders;
    swift_beginAccess();
    v6 = *(a1 + v5);
    v7 = OBJC_IVAR____TtC5Books21ChapterScrubbingState_pageImageLoaders;
    swift_beginAccess();
    v8 = *(a2 + v7);

    v9 = sub_100750FE8(v6, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t type metadata accessor for ChapterScrubbingState()
{
  result = qword_100AF58E0;
  if (!qword_100AF58E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100751E74()
{
  sub_100751F20();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100751F20()
{
  if (!qword_100AF58F0)
  {
    sub_1001F1234(&unk_100AF23A0);
    v0 = sub_10079B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF58F0);
    }
  }
}

uint64_t sub_100751F84(uint64_t a1, uint64_t a2, int64_t a3, char a4, char a5)
{
  if (a3 < 0)
  {
    goto LABEL_56;
  }

  v5 = a5;
  LOBYTE(v8) = a4;
  v7 = a2;
  v6 = _swiftEmptyArrayStorage;
  if (a3)
  {
    v29 = _swiftEmptyArrayStorage;
    v6 = &v29;
    sub_1003BD1D0(0, a3, 0);
    v11 = v7 - a1;
    if (__OFSUB__(v7, a1))
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v28 = v8;
    v8 = 0;
    v6 = v29;
    while ((v8 * v11) >> 64 == (v8 * v11) >> 63)
    {
      v12 = (v8 * v11) / a3;
      v13 = a1 + v12;
      if (__OFADD__(a1, v12))
      {
        goto LABEL_54;
      }

      v29 = v6;
      v15 = *(v6 + 2);
      v14 = *(v6 + 3);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        sub_1003BD1D0((v14 > 1), v15 + 1, 1);
        v6 = v29;
      }

      ++v8;
      *(v6 + 2) = v16;
      *&v6[8 * v15 + 32] = v13;
      if (a3 == v8)
      {
        LOBYTE(v8) = v28;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v16 = _swiftEmptyArrayStorage[2];
  if (!v16)
  {
LABEL_17:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_18:
      v20 = *(v6 + 2);
      v19 = *(v6 + 3);
      v16 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v6 = sub_10066A750((v19 > 1), v20 + 1, 1, v6);
      }

      *(v6 + 2) = v16;
      *&v6[8 * v20 + 32] = v7;
      goto LABEL_21;
    }

LABEL_58:
    v6 = sub_10066A750(0, *(v6 + 2) + 1, 1, v6);
    goto LABEL_18;
  }

LABEL_12:
  if (*&v6[8 * v16 + 24] != v7)
  {
    if (v16 == 1)
    {
      goto LABEL_17;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v18 = *(v6 + 2);
      if (v18)
      {
LABEL_16:
        *(v6 + 2) = v18 - 1;
        goto LABEL_17;
      }
    }

    else
    {
      result = sub_1002F4974(v6);
      v6 = result;
      v18 = *(result + 16);
      if (v18)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    return result;
  }

LABEL_21:
  if ((v8 & 1) == 0)
  {
    return v6;
  }

  v21 = _swiftEmptyArrayStorage;
  v22 = 32;
  do
  {
    v7 = *&v6[v22];
    if (v7 == _s5Books17REActionMenuStateC9pageCountSivpfi_0())
    {
      v23 = _s5Books17REActionMenuStateC9pageCountSivpfi_0();
      v7 = _s5Books17REActionMenuStateC9pageCountSivpfi_0();
    }

    else
    {
      if ((v7 & 0x8000000000000001) == 1)
      {
        if (v7 == 1)
        {
          v7 = _s5Books17REActionMenuStateC9pageCountSivpfi_0();
          v24 = 1;
        }

        else
        {
          v24 = v7--;
        }
      }

      else
      {
        v24 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_55;
        }
      }

      if (v5)
      {
        v23 = v24;
      }

      else
      {
        v23 = v7;
      }

      if ((v5 & 1) == 0)
      {
        v7 = v24;
      }
    }

    if (v23 != _s5Books17REActionMenuStateC9pageCountSivpfi_0())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_10066A750(0, *(v21 + 2) + 1, 1, v21);
      }

      v8 = *(v21 + 2);
      v25 = *(v21 + 3);
      if (v8 >= v25 >> 1)
      {
        v21 = sub_10066A750((v25 > 1), v8 + 1, 1, v21);
      }

      *(v21 + 2) = v8 + 1;
      *&v21[8 * v8 + 32] = v23;
    }

    if (v7 != _s5Books17REActionMenuStateC9pageCountSivpfi_0())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_10066A750(0, *(v21 + 2) + 1, 1, v21);
      }

      v27 = *(v21 + 2);
      v26 = *(v21 + 3);
      if (v27 >= v26 >> 1)
      {
        v21 = sub_10066A750((v26 > 1), v27 + 1, 1, v21);
      }

      *(v21 + 2) = v27 + 1;
      *&v21[8 * v27 + 32] = v7;
    }

    v22 += 8;
    --v16;
  }

  while (v16);

  return v21;
}

uint64_t sub_1007522E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AF59D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100752350()
{
  sub_10000A7C4(0, &qword_100AD20A0);
  result = sub_1007A33B4();
  qword_100B23B50 = result;
  return result;
}

uint64_t sub_1007523C8()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100B23B58);
  sub_100008B98(v0, qword_100B23B58);
  if (qword_100AD1BB8 != -1)
  {
    swift_once();
  }

  v1 = qword_100B23B50;
  return sub_10079ACF4();
}

uint64_t sub_100752454(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  sub_1001F1160(&unk_100ADB5C0);
  v2[40] = swift_task_alloc();
  sub_1001F1160(&qword_100AED4A8);
  v2[41] = swift_task_alloc();

  return _swift_task_switch(sub_100752528, 0, 0);
}

uint64_t sub_100752528()
{
  v1 = [objc_opt_self() sharedProvider];
  v2 = [v1 activeStoreAccount];

  if (v2 && (v3 = [v2 ams_DSID], v2, v3))
  {
    v4 = [v3 stringValue];

    v5 = v4;
    if (!v4)
    {
      sub_1007A2254();
      v5 = sub_1007A2214();
    }

    v0[42] = v5;
    v6 = v0[38];
    sub_1007A2254();
    v7 = v0[39];
    if (v6)
    {
      v8 = v0 + 10;
      sub_100753A3C(v0[38]);

      v9 = *(v7 + 16);
      isa = sub_1007A25D4().super.isa;
      v0[43] = isa;

      v0[10] = v0;
      v0[15] = v0 + 36;
      v0[11] = sub_1007528AC;
      v11 = swift_continuation_init();
      v0[33] = sub_1001F1160(&unk_100AF5A80);
      v0[26] = _NSConcreteStackBlock;
      v0[27] = 1107296256;
      v0[28] = sub_100753898;
      v0[29] = &unk_100A2F528;
      v0[30] = v11;
      [v9 assetReviewsForAssetReviewIDs:isa completion:v0 + 26];
    }

    else
    {
      v8 = v0 + 2;

      v15 = *(v7 + 16);
      v0[2] = v0;
      v0[7] = v0 + 34;
      v0[3] = sub_100753020;
      v16 = swift_continuation_init();
      v0[25] = sub_1001F1160(&unk_100AF5A80);
      v0[18] = _NSConcreteStackBlock;
      v0[19] = 1107296256;
      v0[20] = sub_100753898;
      v0[21] = &unk_100A2F500;
      v0[22] = v16;
      [v15 fetchAssetReviewsForUserID:v5 includingDeleted:0 completion:v0 + 18];
    }

    return _swift_continuation_await(v8);
  }

  else
  {
    v12 = sub_1001F0B9C(_swiftEmptyArrayStorage);

    v13 = v0[1];

    return v13(v12);
  }
}

uint64_t sub_1007528AC()
{
  v1 = *(*v0 + 112);
  *(*v0 + 352) = v1;
  if (v1)
  {
    v2 = sub_100753794;
  }

  else
  {
    v2 = sub_1007529BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1007529BC()
{
  v52 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  if (v1)
  {
    v3 = sub_1001F0B9C(_swiftEmptyArrayStorage);
    v49 = v3;
    v4 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 >> 62)
    {
LABEL_101:
      v5 = sub_1007A38D4();
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_4:
        v6 = 0;
        v7 = v1 & 0xC000000000000001;
        v1 += 32;
        v48 = v7;
        while (1)
        {
          if (v7)
          {
            v14 = sub_1007A3784();
          }

          else
          {
            if (v6 >= *(v4 + 16))
            {
              goto LABEL_96;
            }

            v14 = *(v1 + 8 * v6);
          }

          v15 = v14;
          if (__OFADD__(v6++, 1))
          {
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
            goto LABEL_101;
          }

          if ([v14 starRating])
          {
            v17 = objc_opt_self();
            v18 = [v15 assetReviewID];
            v19 = [v17 assetIDFromAssetReviewID:v18];

            if (!v19)
            {
              __break(1u);
              return;
            }

            v20 = sub_1007A2254();
            v3 = v21;

            v22 = HIBYTE(v3) & 0xF;
            v23 = v20 & 0xFFFFFFFFFFFFLL;
            if ((v3 & 0x2000000000000000) != 0)
            {
              v24 = HIBYTE(v3) & 0xF;
            }

            else
            {
              v24 = v20 & 0xFFFFFFFFFFFFLL;
            }

            if (v24)
            {
              if ((v3 & 0x1000000000000000) == 0)
              {
                if ((v3 & 0x2000000000000000) != 0)
                {
                  v51[0] = v20;
                  v51[1] = v3 & 0xFFFFFFFFFFFFFFLL;
                  if (v20 == 43)
                  {
                    if (!v22)
                    {
                      goto LABEL_99;
                    }

                    if (--v22)
                    {
                      v27 = 0;
                      v35 = v51 + 1;
                      while (1)
                      {
                        v36 = *v35 - 48;
                        if (v36 > 9)
                        {
                          break;
                        }

                        if (!is_mul_ok(v27, 0xAuLL))
                        {
                          break;
                        }

                        v30 = __CFADD__(10 * v27, v36);
                        v27 = 10 * v27 + v36;
                        if (v30)
                        {
                          break;
                        }

                        ++v35;
                        if (!--v22)
                        {
                          goto LABEL_77;
                        }
                      }
                    }
                  }

                  else if (v20 == 45)
                  {
                    if (!v22)
                    {
                      goto LABEL_98;
                    }

                    if (--v22)
                    {
                      v27 = 0;
                      v31 = v51 + 1;
                      while (1)
                      {
                        v32 = *v31 - 48;
                        if (v32 > 9)
                        {
                          break;
                        }

                        if (!is_mul_ok(v27, 0xAuLL))
                        {
                          break;
                        }

                        v30 = 10 * v27 >= v32;
                        v27 = 10 * v27 - v32;
                        if (!v30)
                        {
                          break;
                        }

                        ++v31;
                        if (!--v22)
                        {
                          goto LABEL_77;
                        }
                      }
                    }
                  }

                  else if (v22)
                  {
                    v27 = 0;
                    v38 = v51;
                    while (1)
                    {
                      v39 = *v38 - 48;
                      if (v39 > 9)
                      {
                        break;
                      }

                      if (!is_mul_ok(v27, 0xAuLL))
                      {
                        break;
                      }

                      v30 = __CFADD__(10 * v27, v39);
                      v27 = 10 * v27 + v39;
                      if (v30)
                      {
                        break;
                      }

                      ++v38;
                      if (!--v22)
                      {
                        goto LABEL_77;
                      }
                    }
                  }
                }

                else
                {
                  if ((v20 & 0x1000000000000000) != 0)
                  {
                    v25 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  }

                  else
                  {
                    v25 = sub_1007A37B4();
                  }

                  v26 = *v25;
                  if (v26 == 43)
                  {
                    if (v23 < 1)
                    {
                      goto LABEL_100;
                    }

                    v22 = v23 - 1;
                    if (v23 != 1)
                    {
                      v27 = 0;
                      if (!v25)
                      {
                        goto LABEL_68;
                      }

                      v33 = v25 + 1;
                      while (1)
                      {
                        v34 = *v33 - 48;
                        if (v34 > 9)
                        {
                          break;
                        }

                        if (!is_mul_ok(v27, 0xAuLL))
                        {
                          break;
                        }

                        v30 = __CFADD__(10 * v27, v34);
                        v27 = 10 * v27 + v34;
                        if (v30)
                        {
                          break;
                        }

                        ++v33;
                        if (!--v22)
                        {
                          goto LABEL_77;
                        }
                      }
                    }
                  }

                  else if (v26 == 45)
                  {
                    if (v23 < 1)
                    {
                      goto LABEL_97;
                    }

                    v22 = v23 - 1;
                    if (v23 != 1)
                    {
                      v27 = 0;
                      if (v25)
                      {
                        v28 = v25 + 1;
                        while (1)
                        {
                          v29 = *v28 - 48;
                          if (v29 > 9)
                          {
                            goto LABEL_76;
                          }

                          if (!is_mul_ok(v27, 0xAuLL))
                          {
                            goto LABEL_76;
                          }

                          v30 = 10 * v27 >= v29;
                          v27 = 10 * v27 - v29;
                          if (!v30)
                          {
                            goto LABEL_76;
                          }

                          ++v28;
                          if (!--v22)
                          {
                            goto LABEL_77;
                          }
                        }
                      }

LABEL_68:
                      LOBYTE(v22) = 0;
LABEL_77:
                      v50 = v22;
                      v40 = v22;
LABEL_78:

                      if ((v40 & 1) == 0)
                      {
                        [v15 normalizedStarRating];
                        v41 = [v15 modificationDate];
                        if (v41)
                        {
                          v8 = v41;
                          sub_100796B64();

                          v9 = 0;
                        }

                        else
                        {
                          v9 = 1;
                        }

                        v11 = *(v0 + 320);
                        v10 = *(v0 + 328);
                        v12 = sub_100796BB4();
                        (*(*(v12 - 8) + 56))(v11, v9, 1, v12);
                        sub_10079A0C4();
                        v13 = sub_10079A0D4();
                        (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
                        v3 = &v49;
                        sub_1005EB2B4(v10, v27);
                        v7 = v48;
                      }

                      goto LABEL_7;
                    }
                  }

                  else
                  {
                    if (!v23)
                    {
                      goto LABEL_76;
                    }

                    v27 = 0;
                    if (!v25)
                    {
                      goto LABEL_68;
                    }

                    while (1)
                    {
                      v37 = *v25 - 48;
                      if (v37 > 9)
                      {
                        break;
                      }

                      if (!is_mul_ok(v27, 0xAuLL))
                      {
                        break;
                      }

                      v30 = __CFADD__(10 * v27, v37);
                      v27 = 10 * v27 + v37;
                      if (v30)
                      {
                        break;
                      }

                      ++v25;
                      if (!--v23)
                      {
                        goto LABEL_68;
                      }
                    }
                  }
                }

LABEL_76:
                v27 = 0;
                LOBYTE(v22) = 1;
                goto LABEL_77;
              }

              v50 = 0;
              v27 = sub_10063E4AC(v20, v3, 10);
              v40 = v42;
              goto LABEL_78;
            }
          }

LABEL_7:

          if (v6 == v5)
          {
            v3 = v49;
            break;
          }
        }
      }
    }
  }

  else
  {
    if (qword_100AD1BC0 != -1)
    {
      swift_once();
    }

    v43 = sub_10079ACE4();
    sub_100008B98(v43, qword_100B23B58);
    v44 = sub_10079ACC4();
    v45 = sub_1007A29B4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Error retrieving reviews from manager", v46, 2u);
    }

    v3 = sub_1001F0B9C(_swiftEmptyArrayStorage);
  }

  v47 = *(v0 + 8);

  v47(v3);
}

uint64_t sub_100753020()
{
  v1 = *(*v0 + 48);
  *(*v0 + 360) = v1;
  if (v1)
  {
    v2 = sub_100753814;
  }

  else
  {
    v2 = sub_100753130;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100753130()
{
  v52 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  if (v1)
  {
    v3 = sub_1001F0B9C(_swiftEmptyArrayStorage);
    v49 = v3;
    v4 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 >> 62)
    {
LABEL_101:
      v5 = sub_1007A38D4();
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_4:
        v6 = 0;
        v7 = v1 & 0xC000000000000001;
        v1 += 32;
        v48 = v7;
        while (1)
        {
          if (v7)
          {
            v14 = sub_1007A3784();
          }

          else
          {
            if (v6 >= *(v4 + 16))
            {
              goto LABEL_96;
            }

            v14 = *(v1 + 8 * v6);
          }

          v15 = v14;
          if (__OFADD__(v6++, 1))
          {
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
            goto LABEL_101;
          }

          if ([v14 starRating])
          {
            v17 = objc_opt_self();
            v18 = [v15 assetReviewID];
            v19 = [v17 assetIDFromAssetReviewID:v18];

            if (!v19)
            {
              __break(1u);
              return;
            }

            v20 = sub_1007A2254();
            v3 = v21;

            v22 = HIBYTE(v3) & 0xF;
            v23 = v20 & 0xFFFFFFFFFFFFLL;
            if ((v3 & 0x2000000000000000) != 0)
            {
              v24 = HIBYTE(v3) & 0xF;
            }

            else
            {
              v24 = v20 & 0xFFFFFFFFFFFFLL;
            }

            if (v24)
            {
              if ((v3 & 0x1000000000000000) == 0)
              {
                if ((v3 & 0x2000000000000000) != 0)
                {
                  v51[0] = v20;
                  v51[1] = v3 & 0xFFFFFFFFFFFFFFLL;
                  if (v20 == 43)
                  {
                    if (!v22)
                    {
                      goto LABEL_99;
                    }

                    if (--v22)
                    {
                      v27 = 0;
                      v35 = v51 + 1;
                      while (1)
                      {
                        v36 = *v35 - 48;
                        if (v36 > 9)
                        {
                          break;
                        }

                        if (!is_mul_ok(v27, 0xAuLL))
                        {
                          break;
                        }

                        v30 = __CFADD__(10 * v27, v36);
                        v27 = 10 * v27 + v36;
                        if (v30)
                        {
                          break;
                        }

                        ++v35;
                        if (!--v22)
                        {
                          goto LABEL_77;
                        }
                      }
                    }
                  }

                  else if (v20 == 45)
                  {
                    if (!v22)
                    {
                      goto LABEL_98;
                    }

                    if (--v22)
                    {
                      v27 = 0;
                      v31 = v51 + 1;
                      while (1)
                      {
                        v32 = *v31 - 48;
                        if (v32 > 9)
                        {
                          break;
                        }

                        if (!is_mul_ok(v27, 0xAuLL))
                        {
                          break;
                        }

                        v30 = 10 * v27 >= v32;
                        v27 = 10 * v27 - v32;
                        if (!v30)
                        {
                          break;
                        }

                        ++v31;
                        if (!--v22)
                        {
                          goto LABEL_77;
                        }
                      }
                    }
                  }

                  else if (v22)
                  {
                    v27 = 0;
                    v38 = v51;
                    while (1)
                    {
                      v39 = *v38 - 48;
                      if (v39 > 9)
                      {
                        break;
                      }

                      if (!is_mul_ok(v27, 0xAuLL))
                      {
                        break;
                      }

                      v30 = __CFADD__(10 * v27, v39);
                      v27 = 10 * v27 + v39;
                      if (v30)
                      {
                        break;
                      }

                      ++v38;
                      if (!--v22)
                      {
                        goto LABEL_77;
                      }
                    }
                  }
                }

                else
                {
                  if ((v20 & 0x1000000000000000) != 0)
                  {
                    v25 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  }

                  else
                  {
                    v25 = sub_1007A37B4();
                  }

                  v26 = *v25;
                  if (v26 == 43)
                  {
                    if (v23 < 1)
                    {
                      goto LABEL_100;
                    }

                    v22 = v23 - 1;
                    if (v23 != 1)
                    {
                      v27 = 0;
                      if (!v25)
                      {
                        goto LABEL_68;
                      }

                      v33 = v25 + 1;
                      while (1)
                      {
                        v34 = *v33 - 48;
                        if (v34 > 9)
                        {
                          break;
                        }

                        if (!is_mul_ok(v27, 0xAuLL))
                        {
                          break;
                        }

                        v30 = __CFADD__(10 * v27, v34);
                        v27 = 10 * v27 + v34;
                        if (v30)
                        {
                          break;
                        }

                        ++v33;
                        if (!--v22)
                        {
                          goto LABEL_77;
                        }
                      }
                    }
                  }

                  else if (v26 == 45)
                  {
                    if (v23 < 1)
                    {
                      goto LABEL_97;
                    }

                    v22 = v23 - 1;
                    if (v23 != 1)
                    {
                      v27 = 0;
                      if (v25)
                      {
                        v28 = v25 + 1;
                        while (1)
                        {
                          v29 = *v28 - 48;
                          if (v29 > 9)
                          {
                            goto LABEL_76;
                          }

                          if (!is_mul_ok(v27, 0xAuLL))
                          {
                            goto LABEL_76;
                          }

                          v30 = 10 * v27 >= v29;
                          v27 = 10 * v27 - v29;
                          if (!v30)
                          {
                            goto LABEL_76;
                          }

                          ++v28;
                          if (!--v22)
                          {
                            goto LABEL_77;
                          }
                        }
                      }

LABEL_68:
                      LOBYTE(v22) = 0;
LABEL_77:
                      v50 = v22;
                      v40 = v22;
LABEL_78:

                      if ((v40 & 1) == 0)
                      {
                        [v15 normalizedStarRating];
                        v41 = [v15 modificationDate];
                        if (v41)
                        {
                          v8 = v41;
                          sub_100796B64();

                          v9 = 0;
                        }

                        else
                        {
                          v9 = 1;
                        }

                        v11 = *(v0 + 320);
                        v10 = *(v0 + 328);
                        v12 = sub_100796BB4();
                        (*(*(v12 - 8) + 56))(v11, v9, 1, v12);
                        sub_10079A0C4();
                        v13 = sub_10079A0D4();
                        (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
                        v3 = &v49;
                        sub_1005EB2B4(v10, v27);
                        v7 = v48;
                      }

                      goto LABEL_7;
                    }
                  }

                  else
                  {
                    if (!v23)
                    {
                      goto LABEL_76;
                    }

                    v27 = 0;
                    if (!v25)
                    {
                      goto LABEL_68;
                    }

                    while (1)
                    {
                      v37 = *v25 - 48;
                      if (v37 > 9)
                      {
                        break;
                      }

                      if (!is_mul_ok(v27, 0xAuLL))
                      {
                        break;
                      }

                      v30 = __CFADD__(10 * v27, v37);
                      v27 = 10 * v27 + v37;
                      if (v30)
                      {
                        break;
                      }

                      ++v25;
                      if (!--v23)
                      {
                        goto LABEL_68;
                      }
                    }
                  }
                }

LABEL_76:
                v27 = 0;
                LOBYTE(v22) = 1;
                goto LABEL_77;
              }

              v50 = 0;
              v27 = sub_10063E4AC(v20, v3, 10);
              v40 = v42;
              goto LABEL_78;
            }
          }

LABEL_7:

          if (v6 == v5)
          {
            v3 = v49;
            break;
          }
        }
      }
    }
  }

  else
  {
    if (qword_100AD1BC0 != -1)
    {
      swift_once();
    }

    v43 = sub_10079ACE4();
    sub_100008B98(v43, qword_100B23B58);
    v44 = sub_10079ACC4();
    v45 = sub_1007A29B4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Error retrieving reviews from manager", v46, 2u);
    }

    v3 = sub_1001F0B9C(_swiftEmptyArrayStorage);
  }

  v47 = *(v0 + 8);

  v47(v3);
}

uint64_t sub_100753794()
{
  v1 = *(v0 + 344);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100753814()
{
  v1 = *(v0 + 336);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100753898(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *sub_10000E3E8((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_1001F1160(&unk_100AD67F0);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    if (a2)
    {
      sub_10000A7C4(0, &qword_100AF5A90);
      v11 = sub_1007A25E4();
    }

    else
    {
      v11 = 0;
    }

    v12 = *(*(v7 + 64) + 40);
    *v12 = v11;
    v12[1] = a3;
    v13 = a3;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10075399C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1002104D8;

  return sub_100752454(a1);
}

void sub_100753A3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    sub_1003BD0CC(0, v1, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = v2 + 56;
    v5 = sub_1007A35A4();
    v6 = *(v2 + 36);
    v32 = objc_opt_self();
    if (v5 < 0 || v5 >= 1 << *(v2 + 32))
    {
LABEL_24:
      __break(1u);
    }

    else
    {
      v7 = v6;
      v29 = v2 + 64;
      v30 = v1;
      v8 = 1;
      v31 = v2 + 56;
      while (1)
      {
        v9 = v5 >> 6;
        if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          break;
        }

        v33 = v8;
        v34 = v7;
        v10 = v2;
        v11 = sub_1007A2214();
        sub_1007A3A74();
        v12 = sub_1007A2214();

        v13 = [v32 assetReviewIDWithUserID:v11 assetID:v12];

        if (!v13)
        {
          goto LABEL_29;
        }

        v14 = sub_1007A2254();
        v16 = v15;

        v18 = v3[2];
        v17 = v3[3];
        v19 = v3;
        if (v18 >= v17 >> 1)
        {
          sub_1003BD0CC((v17 > 1), v18 + 1, 1);
          v19 = v3;
        }

        v19[2] = v18 + 1;
        v20 = &v19[2 * v18];
        v20[4] = v14;
        v20[5] = v16;
        v2 = v10;
        v21 = 1 << *(v10 + 32);
        if (v5 >= v21)
        {
          goto LABEL_26;
        }

        v4 = v31;
        v22 = *(v31 + 8 * v9);
        if ((v22 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        v3 = v19;
        if (v34 != *(v10 + 36))
        {
          goto LABEL_28;
        }

        v23 = v22 & (-2 << (v5 & 0x3F));
        if (v23)
        {
          v5 = __clz(__rbit64(v23)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v24 = v9 << 6;
          v25 = v9 + 1;
          v26 = (v29 + 8 * v9);
          while (v25 < (v21 + 63) >> 6)
          {
            v28 = *v26++;
            v27 = v28;
            v24 += 64;
            ++v25;
            if (v28)
            {
              sub_100343CEC(v5, v34, 0);
              v5 = __clz(__rbit64(v27)) + v24;
              goto LABEL_19;
            }
          }

          sub_100343CEC(v5, v34, 0);
          v5 = v21;
        }

LABEL_19:
        if (v33 == v30)
        {
          return;
        }

        if ((v5 & 0x8000000000000000) == 0)
        {
          v7 = *(v10 + 36);
          v8 = v33 + 1;
          if (v5 < 1 << *(v10 + 32))
          {
            continue;
          }
        }

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_100753D38()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100753DB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFFE && *(a1 + 18))
  {
    return (*a1 + 4094);
  }

  v3 = ((*(a1 + 16) >> 14) | (4 * ((*(a1 + 16) >> 4) & 0x3E0 | (*(a1 + 16) >> 3)))) ^ 0xFFF;
  if (v3 >= 0xFFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100753E0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFFD)
  {
    *(result + 16) = 0;
    *result = a2 - 4094;
    *(result + 8) = 0;
    if (a3 >= 0xFFE)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFFE)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0x3FF) - (a2 << 10);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (16 * v3) & 0xFE00 | (8 * (v3 & 0x1F));
    }
  }

  return result;
}

uint64_t sub_100753EA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (!(a3 >> 14))
  {
    if (a6 < 0x4000u)
    {
      if (a1 == a4 && a2 == a5)
      {
        if ((a3 ^ a6))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v7 = a3;
        v8 = a6;
        v9 = sub_1007A3AB4();
        LOBYTE(v6) = 0;
        if ((v9 & 1) == 0)
        {
          return v6 & 1;
        }

        LOWORD(a6) = v8;
        LOWORD(a3) = v7;
        if ((v7 ^ v8))
        {
          return v6 & 1;
        }
      }

      v6 = ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
      return v6 & 1;
    }

LABEL_26:
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  if (a3 >> 14 != 1)
  {
    if ((a6 & 0xC000) == 0x8000)
    {
      if (a2)
      {
        if (a5)
        {
          if (a1 == a4 && a2 == a5)
          {
            if (a6 == a3)
            {
LABEL_25:
              LOBYTE(v6) = 1;
              return v6 & 1;
            }
          }

          else
          {
            v10 = a3;
            v11 = a6;
            if ((sub_1007A3AB4() & 1) != 0 && v11 == v10)
            {
              goto LABEL_25;
            }
          }
        }
      }

      else if (!a5 && a6 == a3)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_26;
  }

  LOBYTE(v6) = a4 ^ a1 ^ 1;
  if ((a6 & 0xC000) != 0x4000)
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

uint64_t sub_100754198(const void *a1, uint64_t *a2)
{
  swift_beginAccess();
  v5 = objc_getAssociatedObject(v2, a1);
  swift_endAccess();
  if (v5)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    sub_1001F1160(a2);
    if (swift_dynamicCast())
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000230BC(v10);
    return 0;
  }
}

void sub_100754288(void *a1, uint64_t a2, void *a3, const void *a4)
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  v7 = a1;
  objc_setAssociatedObject(v7, a4, a3, 0);
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t sub_100754314(void *a1, const void *a2)
{
  swift_beginAccess();
  objc_setAssociatedObject(v2, a2, a1, 0);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for AdjustGoalModalView()
{
  result = qword_100AF5BE0;
  if (!qword_100AF5BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1007543F4()
{
  sub_1002B3658();
  if (v0 <= 0x3F)
  {
    sub_1003B66FC();
    if (v1 <= 0x3F)
    {
      sub_1007544C0();
      if (v2 <= 0x3F)
      {
        sub_10074E784();
        if (v3 <= 0x3F)
        {
          sub_100754554();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1007544C0()
{
  if (!qword_100AF5BF0)
  {
    type metadata accessor for AdjustGoalModalViewModel(255);
    sub_10075829C(&qword_100AF5BF8, type metadata accessor for AdjustGoalModalViewModel);
    v0 = sub_10079C054();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF5BF0);
    }
  }
}

unint64_t sub_100754554()
{
  result = qword_100AF5C00;
  if (!qword_100AF5C00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100AF5C00);
  }

  return result;
}

uint64_t sub_1007545D4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v24 = a1;
  v3 = sub_100796CF4();
  v22 = *(v3 - 8);
  v23 = v3;
  __chkstk_darwin(v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F1160(&qword_100AD7350);
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  *a2 = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB730);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for AdjustGoalModalView();
  v13 = v12[5];
  *(a2 + v13) = swift_getKeyPath();
  sub_1001F1160(&qword_100AD61C8);
  swift_storeEnumTagMultiPayload();
  v14 = (a2 + v12[6]);
  type metadata accessor for AdjustGoalModalViewModel(0);
  sub_10075829C(&qword_100AF5BF8, type metadata accessor for AdjustGoalModalViewModel);

  *v14 = sub_10079C024();
  v14[1] = v15;
  *(a2 + v12[8]) = v24;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();
  sub_10079B9A4();

  v25 = v26;
  sub_100796C74();
  sub_100258D7C();
  sub_100796714();
  sub_100796C94();
  sub_100796724();
  (*(v22 + 8))(v5, v23);
  v16 = *(v21 + 8);
  v16(v8, v6);
  sub_100005920(&qword_100AD7368, &qword_100AD7350);
  sub_1007A34E4();

  swift_unknownObjectRelease();
  result = (v16)(v11, v6);
  v18 = v27;
  v19 = (a2 + v12[7]);
  *v19 = v26;
  v19[1] = v18;
  v19[2] = 0;
  return result;
}

uint64_t sub_100754978@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10079C824();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&unk_100ADB730);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000077D8(v2, &v14 - v9, &unk_100ADB730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079BC44();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1007A29C4();
    v13 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100754B78@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&qword_100AD61C8);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for AdjustGoalModalView();
  sub_1000077D8(v1 + *(v10 + 20), v9, &qword_100AD61C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10020B3C8(v9, a1, qword_100AF6430);
  }

  sub_1007A29C4();
  v12 = sub_10079D244();
  sub_10079AB44();

  sub_10079C814();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100754D60()
{
  result = sub_10079DE34();
  qword_100AF5B78 = result;
  return result;
}

uint64_t sub_100754D80()
{
  v0 = [objc_opt_self() secondarySystemBackgroundColor];
  result = sub_10079DEA4();
  qword_100AF5B80 = result;
  return result;
}

uint64_t sub_100754DC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AdjustGoalModalView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  *a1 = sub_10079CB24();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v7 = sub_1001F1160(&qword_100AF5C40);
  sub_10075517C(v1, (a1 + *(v7 + 44)));
  v8 = sub_10079D294();
  v9 = a1 + *(sub_1001F1160(&qword_100AF5C48) + 36);
  *v9 = v8;
  *(v9 + 8) = xmmword_100843EE0;
  __asm { FMOV            V0.2D, #16.0 }

  *(v9 + 24) = _Q0;
  *(v9 + 40) = 0;
  sub_10079E474();
  sub_10079BE54();
  v15 = (a1 + *(sub_1001F1160(&qword_100AF5C50) + 36));
  v16 = v38;
  *v15 = v37;
  v15[1] = v16;
  v15[2] = v39;
  if (qword_100AD1BD0 != -1)
  {
    swift_once();
  }

  v17 = qword_100AF5B80;
  v18 = sub_10079D294();
  v19 = a1 + *(sub_1001F1160(&qword_100AF5C58) + 36);
  *v19 = v17;
  *(v19 + 8) = v18;
  v20 = v2 + *(v4 + 28);
  v21 = *v20;
  v22 = *(v20 + 16);
  v35 = v21;
  v36 = v22;

  sub_1001F1160(&qword_100AF57D8);
  sub_10079DFF4();
  v24 = v34[1];
  v23 = v34[2];
  sub_100757FF4(v2, v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v26 = swift_allocObject();
  sub_100758058(v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  v27 = (a1 + *(sub_1001F1160(&qword_100AF5C60) + 36));
  *v27 = v24;
  v27[1] = v23;
  v27[2] = sub_1007580BC;
  v27[3] = v26;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v28 = v35;
  sub_100757FF4(v2, v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = swift_allocObject();
  sub_100758058(v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v25);
  v30 = (a1 + *(sub_1001F1160(&qword_100AF5C68) + 36));
  *v30 = v28;
  v30[1] = sub_100758214;
  v30[2] = v29;
  sub_100757FF4(v2, v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = swift_allocObject();
  sub_100758058(v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v25);
  result = sub_1001F1160(&qword_100AF5C70);
  v33 = (a1 + *(result + 36));
  *v33 = sub_100758284;
  v33[1] = v31;
  v33[2] = 0;
  v33[3] = 0;
  return result;
}

uint64_t sub_10075517C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v65 = a2;
  v3 = sub_1001F1160(&qword_100AF5C78);
  __chkstk_darwin(v3 - 8);
  v66 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v63 = (&v52 - v6);
  v7 = sub_1001F1160(&qword_100AF5C80);
  __chkstk_darwin(v7 - 8);
  v64 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v62 = (&v52 - v10);
  v57 = sub_1001F1160(&qword_100AE1810);
  __chkstk_darwin(v57);
  v12 = &v52 - v11;
  v61 = sub_1001F1160(&qword_100AF5C88);
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v67 = &v52 - v15;
  v16 = *(type metadata accessor for AdjustGoalModalView() + 24);
  v58 = a1;
  v17 = (*(a1 + v16 + 8) + OBJC_IVAR____TtC5Books24AdjustGoalModalViewModel_title);
  v18 = v17[1];
  *&v73[0] = *v17;
  *(&v73[0] + 1) = v18;
  sub_100206ECC();

  v19 = sub_10079D5D4();
  v21 = v20;
  v23 = v22;
  sub_10079D454();
  sub_10079D3F4();
  sub_10079D464();

  v24 = sub_10079D5A4();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_10020B430(v19, v21, v23 & 1);

  sub_10079E474();
  sub_10079BE54();
  v76 = v28 & 1;
  *&v68 = v24;
  *(&v68 + 1) = v26;
  LOBYTE(v69) = v28 & 1;
  *(&v69 + 1) = v30;
  v31 = enum case for DynamicTypeSize.accessibility3(_:);
  v32 = sub_10079C0E4();
  (*(*(v32 - 8) + 104))(v12, v31, v32);
  sub_10075829C(&qword_100AE1830, &type metadata accessor for DynamicTypeSize);
  result = sub_1007A2124();
  if (result)
  {
    sub_1001F1160(&qword_100AF5C90);
    sub_1007582E4();
    sub_100005920(&qword_100ADBBF8, &qword_100AE1810);
    sub_10079D7E4();
    sub_100007840(v12, &qword_100AE1810);
    v73[3] = v71;
    v73[4] = v72;
    v73[1] = v69;
    v73[2] = v70;
    v73[0] = v68;
    sub_100007840(v73, &qword_100AF5C90);
    v34 = sub_10079C8F4();
    v35 = v62;
    *v62 = v34;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0;
    v36 = sub_1001F1160(&qword_100AF5CA0);
    v37 = v58;
    sub_100756E44(v58, (v35 + *(v36 + 44)));
    sub_10079E474();
    sub_10079BE54();
    v57 = v68;
    v56 = v69;
    v54 = *(&v70 + 1);
    v55 = v70;
    v76 = 1;
    v75 = BYTE8(v68);
    v74 = BYTE8(v69);
    v38 = sub_10079C8F4();
    v39 = v63;
    *v63 = v38;
    *(v39 + 8) = 0x4020000000000000;
    *(v39 + 16) = 0;
    v40 = sub_1001F1160(&qword_100AF5CA8);
    sub_10075597C(v37, (v39 + *(v40 + 44)));
    v41 = v60;
    v42 = *(v60 + 16);
    v43 = v59;
    v44 = v61;
    v42(v59, v67, v61);
    v45 = v64;
    sub_1000077D8(v35, v64, &qword_100AF5C80);
    v52 = v76;
    v53 = v75;
    LODWORD(v58) = v74;
    v46 = v66;
    sub_1000077D8(v39, v66, &qword_100AF5C78);
    v47 = v65;
    v42(v65, v43, v44);
    v48 = sub_1001F1160(&qword_100AF5CB0);
    sub_1000077D8(v45, &v47[v48[12]], &qword_100AF5C80);
    v49 = &v47[v48[16]];
    *v49 = 0;
    v49[8] = v52;
    *(v49 + 2) = v57;
    v49[24] = v53;
    *(v49 + 4) = v56;
    v49[40] = v58;
    v50 = v54;
    *(v49 + 6) = v55;
    *(v49 + 7) = v50;
    sub_1000077D8(v46, &v47[v48[20]], &qword_100AF5C78);
    sub_100007840(v39, &qword_100AF5C78);
    sub_100007840(v35, &qword_100AF5C80);
    v51 = *(v41 + 8);
    v51(v67, v44);
    sub_100007840(v46, &qword_100AF5C78);
    sub_100007840(v45, &qword_100AF5C80);
    return (v51)(v43, v44);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10075597C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = a1;
  v48 = a2;
  v3 = sub_10079C314();
  v38 = v3;
  v50 = *(v3 - 8);
  __chkstk_darwin(v3);
  v49 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AdjustGoalModalView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_1001F1160(&qword_100ADB860);
  v44 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = sub_1001F1160(&qword_100AF5CB8);
  v47 = *(v11 - 8);
  __chkstk_darwin(v11);
  v46 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v45 = &v37 - v14;
  __chkstk_darwin(v15);
  v43 = &v37 - v16;
  __chkstk_darwin(v17);
  v42 = &v37 - v18;
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100757FF4(a1, v39);
  v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v20 = swift_allocObject();
  sub_100758058(&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_10079E054();
  v21 = v49;
  sub_10079C2F4();
  v40 = sub_100005920(&qword_100AEE360, &qword_100ADB860);
  sub_10079D844();
  v22 = *(v50 + 8);
  v50 += 8;
  v22(v21, v3);
  v23 = *(v44 + 8);
  v23(v10, v8);
  v24 = v39;
  sub_100757FF4(v41, v39);
  v25 = swift_allocObject();
  sub_100758058(v24, v25 + v19);
  sub_10079E054();
  v26 = v49;
  sub_10079C304();
  v27 = v43;
  sub_10079D844();
  v22(v26, v38);
  v23(v10, v8);
  v28 = v47;
  v29 = *(v47 + 16);
  v30 = v45;
  v31 = v42;
  v29(v45, v42, v11);
  v32 = v46;
  v29(v46, v27, v11);
  v33 = v48;
  v29(v48, v30, v11);
  v34 = sub_1001F1160(&qword_100AF5CC0);
  v29(&v33[*(v34 + 48)], v32, v11);
  v35 = *(v28 + 8);
  v35(v27, v11);
  v35(v31, v11);
  v35(v32, v11);
  return (v35)(v30, v11);
}

int *sub_100755F00()
{
  v1 = sub_10079C3B4();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1001F1160(qword_100AF6430);
  __chkstk_darwin(v2);
  v4 = &v9 - v3;
  result = type metadata accessor for AdjustGoalModalView();
  v6 = *(v0 + result[6] + 8);
  v7 = *(v6 + OBJC_IVAR____TtC5Books24AdjustGoalModalViewModel_initialGoal);
  if ((*(v6 + OBJC_IVAR____TtC5Books24AdjustGoalModalViewModel_goalType) & 1) == 0)
  {
    v8 = *(v0 + result[8]);
    [v8 changeBooksPerYearGoal:v7 :1];
    goto LABEL_5;
  }

  if ((v7 * 60) >> 64 == (60 * v7) >> 63)
  {
    v8 = *(v0 + result[8]);
    [v8 changeDailyGoal:1 :(60 * v7)];
LABEL_5:
    sub_100754B78(v4);
    sub_10079E1C4();
    sub_10079C3A4();
    sub_10079E1D4();
    sub_100007840(v4, qword_100AF6430);
    return [v8 setCurrentActiveAchievementSheetWithKind:sub_10079E674()];
  }

  __break(1u);
  return result;
}

id sub_1007560DC()
{
  v1 = sub_10079C3B4();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1001F1160(qword_100AF6430);
  __chkstk_darwin(v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for AdjustGoalModalView();
  v6 = *(v0 + *(v5 + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if ((*(v6 + OBJC_IVAR____TtC5Books24AdjustGoalModalViewModel_goalType) & 1) == 0)
  {
    v8 = *(v0 + *(v5 + 32));
    [v8 changeBooksPerYearGoal:v10 :0];
    goto LABEL_5;
  }

  if ((v10 * 60) >> 64 == (60 * v10) >> 63)
  {
    v8 = *(v0 + *(v5 + 32));
    [v8 changeDailyGoal:0 :(60 * v10)];
LABEL_5:
    sub_100754B78(v4);
    sub_10079E1C4();
    sub_10079C3A4();
    sub_10079E1D4();
    sub_100007840(v4, qword_100AF6430);
    return [v8 setCurrentActiveAchievementSheetWithKind:sub_10079E674()];
  }

  __break(1u);
  return result;
}

uint64_t sub_1007562F8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v28 = a3;
  v29 = a2;
  v27 = a1;
  v3 = sub_100796CF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = sub_1007A21D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v27 - v15;
  sub_1007A2154();
  sub_100796C94();
  (*(v11 + 16))(v13, v16, v10);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass:{ObjCClassFromMetadata, v27}];
  (*(v4 + 16))(v6, v9, v3);
  v19 = sub_1007A22D4();
  v21 = v20;
  (*(v4 + 8))(v9, v3);
  (*(v11 + 8))(v16, v10);
  v30 = v19;
  v31 = v21;
  sub_100206ECC();
  result = sub_10079D5D4();
  v23 = v28;
  *v28 = result;
  v23[1] = v24;
  *(v23 + 16) = v25 & 1;
  v23[3] = v26;
  return result;
}

unsigned __int8 *sub_100756598(uint64_t a1, unint64_t a2)
{
  v4 = sub_100796CF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&qword_100AD7350);
  v62 = *(v8 - 8);
  __chkstk_darwin(v8);
  v60 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v61 = &v57 - v11;
  v12 = sub_1001F1160(&qword_100AE2138);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v57 - v14;
  v64 = a1;
  v65 = a2;
  v67 = 0x242B645C5ELL;
  v68 = 0xE500000000000000;
  (*(v5 + 56))(&v57 - v14, 1, 1, v4, v13);
  sub_100206ECC();
  sub_1007A34C4();
  v17 = v16;
  result = sub_100007840(v15, &qword_100AE2138);
  if (v17)
  {
    goto LABEL_69;
  }

  v19 = HIBYTE(a2) & 0xF;
  v20 = a1 & 0xFFFFFFFFFFFFLL;
  if (!((a2 & 0x2000000000000000) != 0 ? HIBYTE(a2) & 0xF : a1 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_69;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v64 = a1;
      v65 = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 == 43)
      {
        if (v19)
        {
          if (--v19)
          {
            v23 = 0;
            v33 = &v64 + 1;
            while (1)
            {
              v34 = *v33 - 48;
              if (v34 > 9)
              {
                break;
              }

              v35 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                break;
              }

              v23 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                break;
              }

              ++v33;
              if (!--v19)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_78:
        __break(1u);
        return result;
      }

      if (a1 != 45)
      {
        if (v19)
        {
          v23 = 0;
          v38 = &v64;
          while (1)
          {
            v39 = *v38 - 48;
            if (v39 > 9)
            {
              break;
            }

            v40 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              break;
            }

            v23 = v40 + v39;
            if (__OFADD__(v40, v39))
            {
              break;
            }

            v38 = (v38 + 1);
            if (!--v19)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

      if (v19)
      {
        if (--v19)
        {
          v23 = 0;
          v27 = &v64 + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            v29 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              break;
            }

            v23 = v29 - v28;
            if (__OFSUB__(v29, v28))
            {
              break;
            }

            ++v27;
            if (!--v19)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_1007A37B4();
      }

      v22 = *result;
      if (v22 == 43)
      {
        if (v20 >= 1)
        {
          v19 = v20 - 1;
          if (v20 != 1)
          {
            v23 = 0;
            if (result)
            {
              v30 = result + 1;
              while (1)
              {
                v31 = *v30 - 48;
                if (v31 > 9)
                {
                  goto LABEL_62;
                }

                v32 = 10 * v23;
                if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                {
                  goto LABEL_62;
                }

                v23 = v32 + v31;
                if (__OFADD__(v32, v31))
                {
                  goto LABEL_62;
                }

                ++v30;
                if (!--v19)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_54;
          }

          goto LABEL_62;
        }

        goto LABEL_77;
      }

      if (v22 != 45)
      {
        if (v20)
        {
          v23 = 0;
          if (result)
          {
            while (1)
            {
              v36 = *result - 48;
              if (v36 > 9)
              {
                goto LABEL_62;
              }

              v37 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                goto LABEL_62;
              }

              v23 = v37 + v36;
              if (__OFADD__(v37, v36))
              {
                goto LABEL_62;
              }

              ++result;
              if (!--v20)
              {
                goto LABEL_54;
              }
            }
          }

          goto LABEL_54;
        }

LABEL_62:
        v23 = 0;
        LOBYTE(v19) = 1;
LABEL_63:
        LOBYTE(v67) = v19;
        if ((v19 & 1) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_69;
      }

      if (v20 >= 1)
      {
        v19 = v20 - 1;
        if (v20 != 1)
        {
          v23 = 0;
          if (result)
          {
            v24 = result + 1;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                goto LABEL_62;
              }

              v26 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                goto LABEL_62;
              }

              v23 = v26 - v25;
              if (__OFSUB__(v26, v25))
              {
                goto LABEL_62;
              }

              ++v24;
              if (!--v19)
              {
                goto LABEL_63;
              }
            }
          }

LABEL_54:
          LOBYTE(v19) = 0;
          goto LABEL_63;
        }

        goto LABEL_62;
      }

      __break(1u);
    }

    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v23 = sub_10063DF1C(a1, a2, 10);
  v56 = v55;

  if ((v56 & 1) == 0)
  {
LABEL_64:
    v41 = *(v63 + *(type metadata accessor for AdjustGoalModalView() + 24) + 8);
    if (v23 >= *(v41 + OBJC_IVAR____TtC5Books24AdjustGoalModalViewModel_valueRange) && *(v41 + OBJC_IVAR____TtC5Books24AdjustGoalModalViewModel_valueRange + 8) >= v23)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v64 = v23;

      return sub_10079B9B4();
    }
  }

LABEL_69:
  v58 = v5;
  v59 = v4;
  v43 = v8;
  v44 = (v63 + *(type metadata accessor for AdjustGoalModalView() + 28));
  v45 = *v44;
  v46 = v44[1];
  v47 = v44[2];
  v64 = *v44;
  v65 = v46;
  v66 = v47;
  sub_1001F1160(&qword_100AF57D8);
  sub_10079DFF4();
  v64 = v67;
  v65 = v68;
  sub_1002060B4();
  v48 = sub_1007A28A4();

  if (v48)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v67 = v64;
    sub_100796C74();
    sub_100258D7C();
    v49 = v60;
    sub_100796714();
    sub_100796C94();
    v50 = v61;
    v51 = v43;
    sub_100796724();
    (*(v58 + 8))(v7, v59);
    v52 = *(v62 + 8);
    v52(v49, v51);
    sub_100005920(&qword_100AD7368, &qword_100AD7350);
    sub_1007A34E4();
    v52(v50, v51);
    v53 = v64;
    v54 = v65;
    v64 = v45;
    v65 = v46;
    v66 = v47;
    v67 = v53;
    v68 = v54;
    return sub_10079E004();
  }

  return result;
}

int *sub_100756D08(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for AdjustGoalModalView();
  if ((*(*(a2 + result[6] + 8) + OBJC_IVAR____TtC5Books24AdjustGoalModalViewModel_goalType) & 1) == 0)
  {
    v6 = *(a2 + result[8]);
    v7 = "changeBooksPerYearGoal::";
    v8 = v3;

    return [v6 v7];
  }

  if ((v3 * 60) >> 64 == (60 * v3) >> 63)
  {
    v5 = (60 * v3);
    v6 = *(a2 + result[8]);
    v7 = "changeDailyGoal::";
    v8 = 1;

    return [v6 v7];
  }

  __break(1u);
  return result;
}

id sub_100756DCC(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for AdjustGoalModalView() + 32));
  v2 = sub_10079E694();

  return [v1 setCurrentActiveAchievementSheetWithKind:v2];
}

uint64_t sub_100756E44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v76 = a2;
  v3 = sub_1001F1160(&qword_100AE4440);
  __chkstk_darwin(v3 - 8);
  v75 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v74 = &v65 - v6;
  v70 = sub_10079D074();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AdjustGoalModalView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v68 = sub_1001F1160(&qword_100AF5CC8);
  __chkstk_darwin(v68);
  v13 = &v65 - v12;
  v71 = sub_1001F1160(&qword_100AF5CD0);
  v72 = *(v71 - 8);
  __chkstk_darwin(v71);
  v66 = &v65 - v14;
  v15 = sub_1001F1160(&qword_100AF5CD8);
  __chkstk_darwin(v15 - 8);
  v73 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v77 = &v65 - v18;
  sub_100757FF4(a1, &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = swift_allocObject();
  sub_100758058(&v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_100757FF4(a1, &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = swift_allocObject();
  sub_100758058(&v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v19);
  v78 = a1;
  sub_1001F1160(&qword_100AF5CE0);
  sub_10075868C();
  sub_10079E2D4();
  sub_10079E474();
  sub_10079BE54();
  v22 = v68;
  v23 = &v13[*(v68 + 36)];
  v24 = v84;
  *v23 = v83;
  *(v23 + 1) = v24;
  *(v23 + 2) = v85;
  sub_10079D054();
  v25 = sub_1007587FC();
  sub_10079D9A4();
  (*(v69 + 8))(v8, v70);
  sub_100007840(v13, &qword_100AF5CC8);
  sub_1001F1160(&unk_100AD5090);
  v26 = swift_allocObject();
  v67 = xmmword_10080B690;
  *(v26 + 16) = xmmword_10080B690;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v27 = v86;
  *(v26 + 56) = &type metadata for Int;
  *(v26 + 64) = &protocol witness table for Int;
  *(v26 + 32) = v27;
  v28 = sub_1007A2224();
  v30 = v29;

  v86 = v28;
  v87 = v30;
  v79 = v22;
  v80 = v25;
  v31 = v77;
  swift_getOpaqueTypeConformance2();
  sub_100206ECC();
  v32 = v71;
  v33 = v66;
  sub_10079D8F4();

  (*(v72 + 8))(v33, v32);
  sub_10079E474();
  sub_10079BE54();
  v72 = v86;
  v71 = v88;
  v70 = v90;
  v69 = v91;
  v94 = 1;
  v93 = v87;
  v92 = v89;
  v34 = swift_allocObject();
  *(v34 + 16) = v67;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v35 = v79;
  *(v34 + 56) = &type metadata for Int;
  *(v34 + 64) = &protocol witness table for Int;
  *(v34 + 32) = v35;
  v36 = sub_1007A2224();
  v38 = v37;

  v79 = v36;
  v80 = v38;
  v39 = sub_10079D5D4();
  v41 = v40;
  LOBYTE(v30) = v42;
  sub_10079D354();
  v43 = sub_10079D5A4();
  v45 = v44;
  v47 = v46;

  sub_10020B430(v39, v41, v30 & 1);

  if (qword_100AD1BC8 != -1)
  {
    swift_once();
  }

  v48 = sub_10079D564();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  sub_10020B430(v43, v45, v47 & 1);

  v79 = v48;
  v80 = v50;
  v81 = v52 & 1;
  v82 = v54;
  v55 = v74;
  sub_10079D944();
  sub_10020B430(v48, v50, v52 & 1);

  v56 = v73;
  sub_1000077D8(v31, v73, &qword_100AF5CD8);
  LOBYTE(v50) = v94;
  v57 = v93;
  LOBYTE(v54) = v92;
  v58 = v75;
  sub_1000077D8(v55, v75, &qword_100AE4440);
  v59 = v76;
  *v76 = 0;
  *(v59 + 8) = 1;
  v60 = sub_1001F1160(&qword_100AF5D18);
  sub_1000077D8(v56, v59 + v60[12], &qword_100AF5CD8);
  v61 = v59 + v60[16];
  *v61 = 0;
  v61[8] = v50;
  *(v61 + 2) = v72;
  v61[24] = v57;
  *(v61 + 4) = v71;
  v61[40] = v54;
  v62 = v69;
  *(v61 + 6) = v70;
  *(v61 + 7) = v62;
  sub_1000077D8(v58, v59 + v60[20], &qword_100AE4440);
  v63 = v59 + v60[24];
  *v63 = 0;
  v63[8] = 1;
  sub_100007840(v55, &qword_100AE4440);
  sub_100007840(v77, &qword_100AF5CD8);
  sub_100007840(v58, &qword_100AE4440);
  return sub_100007840(v56, &qword_100AF5CD8);
}

void sub_100757850()
{
  type metadata accessor for AdjustGoalModalView();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    sub_100757CD8(v2 + 1);
    v0 = UIAccessibilityAnnouncementNotification;
    sub_100664F94();
    v1 = sub_1007A2214();

    UIAccessibilityPostNotification(v0, v1);
  }
}

void sub_100757924()
{
  type metadata accessor for AdjustGoalModalView();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (__OFSUB__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    sub_100757CD8(v2 - 1);
    v0 = UIAccessibilityAnnouncementNotification;
    sub_100664F94();
    v1 = sub_1007A2214();

    UIAccessibilityPostNotification(v0, v1);
  }
}

uint64_t sub_1007579F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v29[1] = a1;
  v30 = a2;
  v3 = sub_10079BC44();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v29 - v8;
  v10 = sub_1001F1160(&qword_100AF5CF8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v29 - v12;
  v14 = (v2 + *(type metadata accessor for AdjustGoalModalView() + 28));
  v15 = *v14;
  v16 = *(v14 + 2);
  v33 = v15;
  v34 = v16;
  sub_1001F1160(&qword_100AF57D8);
  sub_10079E014();
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_100206ECC();
  sub_10079E5B4();
  LOBYTE(v2) = sub_10079D284();
  sub_10079BBA4();
  v17 = &v13[*(v11 + 44)];
  *v17 = v2;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  sub_100754978(v9);
  (*(v4 + 104))(v6, enum case for ColorScheme.dark(_:), v3);
  LOBYTE(v2) = sub_10079BC34();
  v22 = *(v4 + 8);
  v22(v6, v3);
  v22(v9, v3);
  if (v2)
  {
    v23 = _s5Books11ChromeStyleC20_themeSecondaryLabel33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI5ColorVGvpfi_0();
  }

  else
  {
    v23 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  v24 = v23;
  v25 = sub_10079D294();
  v26 = v30;
  sub_10020B3C8(v13, v30, &qword_100AF5CF8);
  result = sub_1001F1160(&qword_100AF5CE0);
  v28 = v26 + *(result + 36);
  *v28 = v24;
  *(v28 + 8) = v25;
  return result;
}

uint64_t sub_100757CD8(uint64_t a1)
{
  v3 = sub_100796CF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&qword_100AD7350);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  result = type metadata accessor for AdjustGoalModalView();
  v15 = *(v1 + *(result + 24) + 8);
  if (*(v15 + OBJC_IVAR____TtC5Books24AdjustGoalModalViewModel_valueRange) <= a1 && *(v15 + OBJC_IVAR____TtC5Books24AdjustGoalModalViewModel_valueRange + 8) >= a1)
  {
    v26 = result;
    swift_getKeyPath();
    v24 = v8;
    swift_getKeyPath();
    v25 = v1;
    v23 = v3;
    *&v28 = a1;

    sub_10079B9B4();
    *&v27 = a1;
    sub_100796C74();
    sub_100258D7C();
    sub_100796714();
    sub_100796C94();
    sub_100796724();
    (*(v4 + 8))(v6, v23);
    v17 = *(v24 + 8);
    v17(v10, v7);
    sub_100005920(&qword_100AD7368, &qword_100AD7350);
    sub_1007A34E4();
    v17(v13, v7);
    v18 = v28;
    v19 = (v25 + *(v26 + 28));
    v20 = *v19;
    v21 = *(v19 + 2);
    v28 = v20;
    v29 = v21;
    v27 = v18;
    sub_1001F1160(&qword_100AF57D8);
    return sub_10079E004();
  }

  return result;
}

uint64_t sub_100757FF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdjustGoalModalView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100758058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdjustGoalModalView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100758120@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_1007581A0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

int *sub_100758214(uint64_t *a1)
{
  v3 = *(type metadata accessor for AdjustGoalModalView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100756D08(a1, v4);
}

uint64_t sub_10075829C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1007582E4()
{
  result = qword_100AF5C98;
  if (!qword_100AF5C98)
  {
    sub_1001F1234(&qword_100AF5C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5C98);
  }

  return result;
}

uint64_t sub_100758414()
{
  v1 = type metadata accessor for AdjustGoalModalView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1001F1160(&unk_100ADB730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_10079BC44();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = v0 + v2 + *(v1 + 20);
  sub_1001F1160(&qword_100AD61C8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(sub_1001F1160(qword_100AF6430) + 32);
    v7 = sub_10079C3B4();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100758610(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AdjustGoalModalView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_10075868C()
{
  result = qword_100AF5CE8;
  if (!qword_100AF5CE8)
  {
    sub_1001F1234(&qword_100AF5CE0);
    sub_100758744();
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5CE8);
  }

  return result;
}

unint64_t sub_100758744()
{
  result = qword_100AF5CF0;
  if (!qword_100AF5CF0)
  {
    sub_1001F1234(&qword_100AF5CF8);
    sub_100005920(&qword_100AF5810, &qword_100AF57E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5CF0);
  }

  return result;
}

unint64_t sub_1007587FC()
{
  result = qword_100AF5D00;
  if (!qword_100AF5D00)
  {
    sub_1001F1234(&qword_100AF5CC8);
    sub_100005920(&qword_100AF5D08, &qword_100AF5D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5D00);
  }

  return result;
}

unint64_t sub_1007588B4()
{
  result = qword_100AF5D20;
  if (!qword_100AF5D20)
  {
    sub_1001F1234(&qword_100AF5C70);
    sub_100758940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5D20);
  }

  return result;
}

unint64_t sub_100758940()
{
  result = qword_100AF5D28;
  if (!qword_100AF5D28)
  {
    sub_1001F1234(&qword_100AF5C68);
    sub_1007589F8();
    sub_100005920(&qword_100AF5D70, &qword_100AF5D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5D28);
  }

  return result;
}

unint64_t sub_1007589F8()
{
  result = qword_100AF5D30;
  if (!qword_100AF5D30)
  {
    sub_1001F1234(&qword_100AF5C60);
    sub_100758AB0();
    sub_100005920(&qword_100AF5D60, &qword_100AF5D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5D30);
  }

  return result;
}

unint64_t sub_100758AB0()
{
  result = qword_100AF5D38;
  if (!qword_100AF5D38)
  {
    sub_1001F1234(&qword_100AF5C58);
    sub_100758B68();
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5D38);
  }

  return result;
}

unint64_t sub_100758B68()
{
  result = qword_100AF5D40;
  if (!qword_100AF5D40)
  {
    sub_1001F1234(&qword_100AF5C50);
    sub_100758BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5D40);
  }

  return result;
}

unint64_t sub_100758BF4()
{
  result = qword_100AF5D48;
  if (!qword_100AF5D48)
  {
    sub_1001F1234(&qword_100AF5C48);
    sub_100005920(&qword_100AF5D50, &qword_100AF5D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5D48);
  }

  return result;
}

id sub_100758CAC()
{
  v1 = OBJC_IVAR____TtC5Books31EngagementPopoverViewController____lazy_storage___amsEngagement;
  v2 = *(v0 + OBJC_IVAR____TtC5Books31EngagementPopoverViewController____lazy_storage___amsEngagement);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Books31EngagementPopoverViewController____lazy_storage___amsEngagement);
  }

  else
  {
    v4 = [objc_opt_self() defaultBag];
    v5 = [objc_allocWithZone(AMSEngagement) initWithBag:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_100758D9C(double a1, double a2)
{
  v5 = OBJC_IVAR____TtC5Books31EngagementPopoverViewController_popoverVC;
  v6 = *&v2[OBJC_IVAR____TtC5Books31EngagementPopoverViewController_popoverVC];
  if (v6)
  {
    v7 = [v6 popoverPresentationController];
    if (v7)
    {
      v8 = *&v2[OBJC_IVAR____TtC5Books31EngagementPopoverViewController_currentRequestDisplayed];
      if (v8 && (v2[OBJC_IVAR____TtC5Books31EngagementPopoverViewController_currentRequestDisplayed + 8] & 1) != 0)
      {
        v30 = v7;
        v29 = v8;
        v9 = [v2 view];
        if (!v9)
        {
          __break(1u);
          return;
        }

        v10 = v9;
        v11 = a1 * -0.5;
        [v9 frame];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;

        v32.origin.x = v13;
        v32.origin.y = v15;
        v32.size.width = v17;
        v32.size.height = v19;
        [v30 setSourceRect:{CGRectGetWidth(v32) + v11 + a2, 0.0, 0.0, 0.0}];

        v7 = v29;
      }
    }
  }

  else
  {
    v20 = *&v2[OBJC_IVAR____TtC5Books31EngagementPopoverViewController_currentRequestDisplayed];
    if (v20)
    {
      v21 = v2[OBJC_IVAR____TtC5Books31EngagementPopoverViewController_currentRequestDisplayed + 8];
      v22 = v20;
      v23 = sub_1007591E8(v22);
      [v23 setModalPresentationStyle:7];
      v24 = [v23 popoverPresentationController];
      if (v24)
      {
        v25 = v24;
        [v24 setPermittedArrowDirections:3];
        v26 = [v2 view];
        [v25 setSourceView:v26];

        [v25 setDelegate:v2];
        [v25 setPopoverLayoutMargins:{0.0, 0.0, 0.0, 5.0}];
        if (v21)
        {
          [v25 setPermittedArrowDirections:0];
          [v25 setPopoverLayoutMargins:{0.0, 0.0, 30.0, 0.0}];
        }
      }

      v27 = *&v2[v5];
      *&v2[v5] = v23;
      v28 = v23;

      [v2 presentViewController:v28 animated:1 completion:0];

      sub_100759094(v2, a1, a2);
    }
  }
}

void sub_100759094(char *a1, double a2, double a3)
{
  v4 = *&a1[OBJC_IVAR____TtC5Books31EngagementPopoverViewController_popoverVC];
  if (v4)
  {
    v7 = [v4 popoverPresentationController];
    if (v7)
    {
      v8 = *&a1[OBJC_IVAR____TtC5Books31EngagementPopoverViewController_currentRequestDisplayed];
      if (v8 && (a1[OBJC_IVAR____TtC5Books31EngagementPopoverViewController_currentRequestDisplayed + 8] & 1) != 0)
      {
        v21 = v7;
        v9 = v8;
        v10 = [a1 view];
        if (!v10)
        {
          __break(1u);
          return;
        }

        v11 = v10;
        v12 = a2 * -0.5;
        [v10 frame];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;

        v23.origin.x = v14;
        v23.origin.y = v16;
        v23.size.width = v18;
        v23.size.height = v20;
        [v21 setSourceRect:{CGRectGetWidth(v23) + v12 + a3, 0.0, 0.0, 0.0}];

        v7 = v9;
      }
    }
  }
}

id sub_1007591E8(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_userInterfaceStyle);
  v4 = objc_allocWithZone(BCMessageViewControllerProvider);
  v5 = sub_1007A2214();

  v6 = [v4 initWithRequest:a1 placement:v5 style:v3 messageType:5];

  v7 = *(v1 + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_messageViewControllerProvider);
  *(v1 + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_messageViewControllerProvider) = v6;
  v8 = v6;

  [v8 setDelegate:v1];
  v9 = [v8 viewController];

  return v9;
}

void sub_1007592E8()
{
  v1 = OBJC_IVAR____TtC5Books31EngagementPopoverViewController_popoverVC;
  v2 = *(v0 + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_popoverVC);
  if (v2)
  {
    v8 = v2;
    if ([v8 isBeingDismissed])
    {
      v3 = v8;
    }

    else
    {
      [v8 dismissViewControllerAnimated:1 completion:0];

      v4 = *(v0 + v1);
      *(v0 + v1) = 0;

      v5 = v0 + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_currentRequestDisplayed;
      v6 = *(v0 + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_currentRequestDisplayed);
      *v5 = 0;
      *(v5 + 8) = 0;

      v7 = *(v0 + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_messageViewControllerProvider);
      *(v0 + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_messageViewControllerProvider) = 0;

      v3 = *v5;
      *v5 = 0;
      *(v5 + 8) = 0;
    }
  }
}

id sub_1007594A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EngagementPopoverViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100759588(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "BMBookmarShortcutMessage";
  }

  else
  {
    v2 = "BMReaderThemeMessage";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "BMBookmarShortcutMessage";
  }

  else
  {
    v4 = "BMReaderThemeMessage";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1007A3AB4();
  }

  return v5 & 1;
}

Swift::Int sub_10075962C()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

uint64_t sub_1007596A4()
{
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_100759708()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

uint64_t sub_10075977C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100A0D890;
  v8._object = v3;
  v5 = sub_1007A3964(v4, v8);

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

void sub_1007597DC(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "BMBookmarShortcutMessage";
  }

  else
  {
    v2 = "BMReaderThemeMessage";
  }

  *a1 = 0xD000000000000013;
  a1[1] = v2 | 0x8000000000000000;
}

void sub_100759824()
{
  v1 = v0;
  (*(v0 + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_showPopover))(0);
  v2 = OBJC_IVAR____TtC5Books31EngagementPopoverViewController_messageViewControllerProvider;
  v3 = *(v0 + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_messageViewControllerProvider);
  if (v3)
  {
    v4 = [v3 viewController];
    [v4 dismissViewControllerAnimated:1 completion:0];

    v3 = *(v1 + v2);
  }

  *(v1 + v2) = 0;
}

void sub_1007598C0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ([a2 style] != 4 || *&v8[OBJC_IVAR____TtC5Books31EngagementPopoverViewController_messageViewControllerProvider])
    {
      goto LABEL_9;
    }

    v9._rawValue = &off_100A0D890;
    v15._countAndFlagsBits = a3;
    v15._object = a4;
    v10 = sub_1007A3964(v9, v15);

    if (v10)
    {
      if (v10 != 1)
      {
LABEL_9:

        return;
      }

      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    v12 = &v8[OBJC_IVAR____TtC5Books31EngagementPopoverViewController_currentRequestDisplayed];
    v13 = *&v8[OBJC_IVAR____TtC5Books31EngagementPopoverViewController_currentRequestDisplayed];
    *v12 = a2;
    v12[8] = v11;
    v14 = a2;

    (*&v8[OBJC_IVAR____TtC5Books31EngagementPopoverViewController_showPopover])(1);
    goto LABEL_9;
  }
}

void sub_100759A60(void *a1)
{
  v2 = v1;
  v4 = sub_1007A1C54();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007A1CA4();
  v9 = *(v8 - 1);
  v10 = __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [v2 presentedViewController];
  v13 = [a1 viewController];
  if (v19)
  {
    if (v13)
    {
      v18 = v13;
      sub_10000A7C4(0, &qword_100AD7CB0);
      v14 = sub_1007A3184();

      if ((v14 & 1) == 0)
      {
        return;
      }

      goto LABEL_6;
    }

    v13 = v19;
  }

  else if (!v13)
  {
LABEL_6:
    sub_10000A7C4(0, &qword_100AD1E10);
    v19 = sub_1007A2D74();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10075A024;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A2F7B0;
    v16 = _Block_copy(aBlock);

    sub_1007A1C74();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100265BDC();
    v18 = v8;
    sub_1001F1160(&unk_100AD7CA0);
    sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
    sub_1007A3594();
    v17 = v19;
    sub_1007A2D94();
    _Block_release(v16);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v12, v18);
    return;
  }
}

void sub_100759DE8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100759824();
  }
}

unint64_t sub_100759FD0()
{
  result = qword_100AF5DF8;
  if (!qword_100AF5DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5DF8);
  }

  return result;
}

void sub_10075A048()
{
  *(v0 + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_eventHandler + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_popoverVC) = 0;
  *(v0 + OBJC_IVAR____TtC5Books31EngagementPopoverViewController____lazy_storage___amsEngagement) = 0;
  *(v0 + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_alreadySetup) = 0;
  *(v0 + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_messageViewControllerProvider) = 0;
  v1 = v0 + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_currentRequestDisplayed;
  *v1 = 0;
  *(v1 + 8) = 0;
  sub_1007A38A4();
  __break(1u);
}

uint64_t sub_10075A100(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1007A1C54();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007A1CA4();
  v25 = *(v10 - 8);
  v26 = v10;
  __chkstk_darwin(v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A7C4(0, &qword_100AD1E10);
  if (a1)
  {
    v13 = a1;
    v24 = v7;
    v14 = v13;
    v15 = sub_1007A2D74();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = v14;
    v17[4] = a2;
    v17[5] = a3;
    v31 = sub_10075A560;
    v32 = v17;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_1003323D0;
    v30 = &unk_100A2F828;
    v18 = _Block_copy(&aBlock);
    v19 = v14;

    sub_1007A1C74();
    aBlock = _swiftEmptyArrayStorage;
    sub_100265BDC();
    sub_1001F1160(&unk_100AD7CA0);
    v7 = v24;
    sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
    sub_1007A3594();
    sub_1007A2D94();
    _Block_release(v18);
  }

  else
  {
    v15 = sub_1007A2D74();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = sub_10075A574;
    v32 = v20;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_1003323D0;
    v30 = &unk_100A2F7D8;
    v21 = _Block_copy(&aBlock);

    sub_1007A1C74();
    aBlock = _swiftEmptyArrayStorage;
    sub_100265BDC();
    sub_1001F1160(&unk_100AD7CA0);
    sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
    sub_1007A3594();
    sub_1007A2D94();
    _Block_release(v21);
  }

  (*(v7 + 8))(v9, v6);
  return (*(v25 + 8))(v12, v26);
}

unint64_t sub_10075A584()
{
  result = qword_100AF5E00;
  if (!qword_100AF5E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5E00);
  }

  return result;
}

unint64_t sub_10075A5DC()
{
  result = qword_100AF5E08;
  if (!qword_100AF5E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5E08);
  }

  return result;
}

uint64_t sub_10075A6A4()
{
  v0 = sub_1007967F4();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v2 = (&v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_100796814();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100796CF4();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  v22 = v3;
  sub_100009A38(v3, qword_100B23B78);
  v21 = sub_100008B98(v3, qword_100B23B78);
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  v18 = v23;
  (*(v5 + 16))(v7, v10, v23);
  *v2 = type metadata accessor for BundleFinder();
  (*(v25 + 104))(v2, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v26);
  v19 = v24;
  sub_100796834();
  (*(v5 + 8))(v10, v18);
  (*(v12 + 8))(v17, v11);
  return (*(v27 + 32))(v21, v19, v22);
}

uint64_t sub_10075AA48@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_1001F1160(&qword_100AF5E60);
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  __chkstk_darwin(v1);
  v24 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v25 = &v19 - v5;
  v6 = sub_1001F1160(&qword_100AF5E68);
  v29 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v23 = &v19 - v10;
  v30 = 2;
  v11 = sub_1001F1160(&qword_100AF5E70);
  v21 = sub_1006F6D7C();
  sub_1003CAC28();
  sub_100005920(&qword_100AF5E78, &qword_100AF5E70);
  v22 = v11;
  sub_100796394();
  sub_100005920(&qword_100AF5E80, &qword_100AF5E68);
  v12 = v6;
  sub_100796354();
  v20 = *(v29 + 8);
  v29 += 8;
  v20(v8, v6);
  v13 = v24;
  sub_1007963D4();
  sub_100005920(&qword_100AF5E88, &qword_100AF5E60);
  v14 = v25;
  v15 = v26;
  sub_100796354();
  v16 = *(v27 + 8);
  v16(v13, v15);
  v17 = v23;
  sub_100796334();
  v16(v14, v15);
  return (v20)(v17, v12);
}

uint64_t sub_10075AE2C@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = sub_1001F1160(&qword_100AF5E90);
  __chkstk_darwin(v1 - 8);
  v2 = sub_1001F1160(&qword_100AF5E98);
  __chkstk_darwin(v2);
  v3 = sub_1001F1160(&qword_100AF5E70);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v12 - v8;
  sub_1006F6D7C();
  sub_1007961D4();
  v13._object = 0x80000001008E9F60;
  v13._countAndFlagsBits = 0xD00000000000001DLL;
  sub_1007961C4(v13);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AF5EA0);
  sub_1007961B4();

  v14._countAndFlagsBits = 32;
  v14._object = 0xE100000000000000;
  sub_1007961C4(v14);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AF5EA8);
  sub_1007961B4();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_1007961C4(v15);
  sub_1007961F4();
  sub_1007961A4();
  sub_100005920(&qword_100AF5E78, &qword_100AF5E70);
  sub_100796294();
  v10 = *(v4 + 8);
  v10(v6, v3);
  sub_100796284();
  return (v10)(v9, v3);
}

uint64_t sub_10075B168@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = sub_1001F1160(&qword_100AF5E90);
  __chkstk_darwin(v1 - 8);
  v2 = sub_1001F1160(&qword_100AF5E98);
  __chkstk_darwin(v2);
  v3 = sub_1001F1160(&qword_100AF5E70);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v12 - v8;
  sub_1006F6D7C();
  sub_1007961D4();
  v13._object = 0x80000001008E9F60;
  v13._countAndFlagsBits = 0xD00000000000001DLL;
  sub_1007961C4(v13);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AF5EA0);
  sub_1007961B4();

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  sub_1007961C4(v14);
  sub_1007961F4();
  sub_1007961A4();
  sub_100005920(&qword_100AF5E78, &qword_100AF5E70);
  sub_100796294();
  v10 = *(v4 + 8);
  v10(v6, v3);
  sub_100796284();
  return (v10)(v9, v3);
}

uint64_t sub_10075B458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_100795CE4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_1001F1160(&qword_100AF3AA8);
  v3[8] = swift_task_alloc();
  v5 = sub_1001F1160(&qword_100AF3AB8);
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v6 = sub_100796814();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_1007A26F4();
  v3[17] = sub_1007A26E4();
  v8 = sub_1007A2694();

  return _swift_task_switch(sub_10075B664, v8, v7);
}

uint64_t sub_10075B664()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);

  sub_100795DF4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1006F6F28(*(v0 + 64));
    v4 = [objc_opt_self() defaultTimer];
    sub_100795DF4();
    v5 = *(v0 + 128);
    [v4 setSleepTimerOption:qword_100844460[*(v0 + 144)]];

    sub_100795DF4();
    sub_10075B93C(v5);
  }

  else
  {
    v6 = *(v0 + 128);
    v8 = *(v0 + 88);
    v7 = *(v0 + 96);
    v9 = *(v0 + 72);
    v10 = *(v0 + 80);
    (*(v10 + 32))(v7, *(v0 + 64), v9);
    v11 = [objc_opt_self() seconds];
    sub_1007964B4();

    sub_1007964A4();
    v13 = v12;
    v14 = *(v10 + 8);
    v14(v8, v9);
    v15 = [objc_opt_self() defaultTimer];
    [v15 setFixedTimerWithDuration:v13];

    sub_10075B93C(v6);
    v14(v7, v9);
  }

  v16 = *(v0 + 128);
  v17 = *(v0 + 104);
  v18 = *(v0 + 112);
  v19 = *(v0 + 56);
  v21 = *(v0 + 40);
  v20 = *(v0 + 48);
  (*(v18 + 16))(*(v0 + 120), v16, v17);
  sub_100795CF4();
  sub_100795D14();
  (*(v20 + 8))(v19, v21);
  (*(v18 + 8))(v16, v17);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10075B93C@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v22 = sub_1007967F4();
  v1 = *(v22 - 8);
  __chkstk_darwin(v22);
  v3 = (&v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_100796CF4();
  v4 = *(v24 - 8);
  __chkstk_darwin(v24);
  v21 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = sub_1007A21D4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v20 - v14;
  v20 = v16;
  v17 = v16;
  sub_1007A2154();
  sub_100796C94();
  (*(v10 + 16))(v12, v15, v17);
  v18 = v24;
  (*(v4 + 16))(v21, v8, v24);
  *v3 = type metadata accessor for BundleFinder();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v22);
  sub_100796834();
  (*(v4 + 8))(v8, v18);
  return (*(v10 + 8))(v15, v20);
}

uint64_t sub_10075BDD4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD1BD8 != -1)
  {
    swift_once();
  }

  v2 = sub_100796814();
  v3 = sub_100008B98(v2, qword_100B23B78);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10075BE7C(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = sub_1001F1160(&qword_100AF5E50);
  v5 = sub_100005920(&qword_100AF5E58, &qword_100AF5E50);

  return ParameterSummarySwitchCondition.init(_:_:)(KeyPath, sub_10075AA48, 0, v4, a2, v5);
}

uint64_t sub_10075BF44(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002812C;

  return sub_10075B458(a1, v5, v4);
}

char *sub_10075BFF0@<X0>(char **a1@<X8>)
{
  result = sub_10075C064();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10075C018(uint64_t a1)
{
  v2 = sub_1006F6D7C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

char *sub_10075C064()
{
  v0 = sub_1001F1160(&qword_100AF5E30);
  __chkstk_darwin(v0 - 8);
  v73 = &v61 - v1;
  v82 = sub_100796274();
  v96 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1001F1160(&qword_100AD5CB0);
  __chkstk_darwin(v3 - 8);
  v71 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v80 = &v61 - v6;
  v7 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v7 - 8);
  v78 = &v61 - v8;
  v95 = sub_1007967F4();
  v98 = *(v95 - 8);
  __chkstk_darwin(v95);
  v10 = (&v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = sub_100796CF4();
  v11 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v61 - v14;
  v16 = sub_1007A21D4();
  v74 = v16;
  v97 = *(v16 - 8);
  v17 = v97;
  __chkstk_darwin(v16);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v61 - v21;
  v79 = sub_100796814();
  v87 = *(v79 - 8);
  __chkstk_darwin(v79);
  v72 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v76 = &v61 - v25;
  v65 = sub_1001F1160(&qword_100AF5E38);
  sub_1007A2154();
  sub_100796C94();
  v26 = *(v17 + 16);
  v85 = v17 + 16;
  v94 = v26;
  v26(v19, v22, v16);
  v93 = *(v11 + 16);
  v88 = v11 + 16;
  v27 = v15;
  v28 = v15;
  v29 = v84;
  v93(v83, v27, v84);
  v92 = type metadata accessor for BundleFinder();
  *v10 = v92;
  v91 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v30 = *(v98 + 104);
  v98 += 104;
  v90 = v30;
  v31 = v95;
  v30(v10);
  v32 = v19;
  sub_100796834();
  v33 = *(v11 + 8);
  v89 = v11 + 8;
  v86 = v33;
  v33(v28, v29);
  v35 = v97 + 8;
  v34 = *(v97 + 8);
  v36 = v74;
  v34(v22, v74);
  v77 = v34;
  v97 = v35;
  v62 = v22;
  sub_1007A2154();
  sub_100796C94();
  v64 = v32;
  v94(v32, v22, v36);
  v37 = v28;
  v63 = v28;
  v38 = v84;
  v93(v83, v28, v84);
  *v10 = v92;
  v75 = v10;
  v90(v10, v91, v31);
  v39 = v78;
  sub_100796834();
  v86(v37, v38);
  v40 = v62;
  v34(v62, v36);
  v41 = *(v87 + 56);
  v87 += 56;
  v42 = v39;
  v41(v39, 0, 1, v79);
  v99 = 3;
  v43 = sub_100795CE4();
  v69 = v43;
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v68 = v45;
  v70 = v44 + 56;
  v45(v80, 1, 1, v43);
  v45(v71, 1, 1, v43);
  v66 = enum case for InputConnectionBehavior.default(_:);
  v46 = *(v96 + 104);
  v96 += 104;
  v67 = v46;
  v46(v81);
  sub_1003CC0D4();
  v71 = sub_100795E54();
  v65 = sub_1001F1160(&qword_100AF5E40);
  v47 = v40;
  sub_1007A2154();
  v48 = v63;
  sub_100796C94();
  v49 = v64;
  v50 = v74;
  v94(v64, v47, v74);
  v52 = v83;
  v51 = v84;
  v93(v83, v48, v84);
  v53 = v75;
  *v75 = v92;
  v90(v53, v91, v95);
  sub_100796834();
  v86(v48, v51);
  v77(v47, v50);
  v41(v42, 1, 1, v79);
  v54 = enum case for IntentParameter<>.Duration.minutes<A>(_:);
  v55 = sub_1001F1160(&qword_100AF5E48);
  v56 = *(v55 - 8);
  v57 = v73;
  (*(v56 + 104))(v73, v54, v55);
  (*(v56 + 56))(v57, 0, 1, v55);
  sub_1007A2154();
  sub_100796C94();
  v94(v49, v47, v50);
  v93(v52, v48, v51);
  v58 = v75;
  *v75 = v92;
  v90(v58, v91, v95);
  sub_100796834();
  v86(v48, v51);
  v77(v47, v50);
  v59 = v80;
  sub_100795CF4();
  v68(v59, 0, 1, v69);
  v67(v81, v66, v82);
  sub_100795E94();
  return v71;
}

uint64_t sub_10075CC3C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_10079DDC4();
  type metadata accessor for ChromeStyle();
  sub_10075CE28(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
  v5 = sub_10079C484();
  v7 = v6;
  KeyPath = swift_getKeyPath();
  v9 = (a1 + *(sub_1001F1160(&qword_100AF5EB0) + 36));
  v10 = type metadata accessor for MenuMaterial();
  *(v9 + v10[5]) = KeyPath;
  sub_1001F1160(&unk_100ADB730);
  swift_storeEnumTagMultiPayload();
  result = swift_getKeyPath();
  *v9 = v5;
  v9[1] = v7;
  v12 = v9 + v10[6];
  *v12 = result;
  v12[8] = 0;
  *(v9 + v10[7]) = v3;
  *a1 = v4;
  return result;
}

unint64_t sub_10075CD6C()
{
  result = qword_100AF5EB8;
  if (!qword_100AF5EB8)
  {
    sub_1001F1234(&qword_100AF5EB0);
    sub_10075CE28(&qword_100AF5EC0, type metadata accessor for MenuMaterial);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5EB8);
  }

  return result;
}

uint64_t sub_10075CE28(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10075CF70(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for AssetSheetPresentationController();
  objc_msgSendSuper2(&v9, "presentationTransitionDidEnd:", a1 & 1);
  v3 = UIApp;
  if (UIApp)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v8[4] = sub_10075D458;
    v8[5] = v4;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_1003323D0;
    v8[3] = &unk_100A2F9C8;
    v5 = _Block_copy(v8);
    v6 = v3;
    v7 = v1;

    [v6 _performBlockAfterCATransactionCommits:v5];
    _Block_release(v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_10075D084(void *a1)
{
  v1 = [a1 presentedViewController];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStateShouldOpen:0];
}

void sub_10075D1F4(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for AssetSheetPresentationController();
  v3 = a1 & 1;
  objc_msgSendSuper2(&v10, "dismissalTransitionDidEnd:", v3);
  v4 = UIApp;
  if (UIApp)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = v3;
    v9[4] = sub_10075D444;
    v9[5] = v5;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_1003323D0;
    v9[3] = &unk_100A2F978;
    v6 = _Block_copy(v9);
    v7 = v4;
    v8 = v1;

    [v7 _performBlockAfterCATransactionCommits:v6];
    _Block_release(v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_10075D310(void *a1, char a2)
{
  v3 = [a1 presentedViewController];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() assetPresenterDismissalDidEnd:a2 & 1];
}

id sub_10075D3EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetSheetPresentationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10075D468(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v15.receiver = v4;
  v15.super_class = type metadata accessor for PassthroughView();
  v9 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 whiteColor];
  v13 = [v12 colorWithAlphaComponent:0.01];

  [v11 setBackgroundColor:v13];
  return v11;
}

id sub_10075D6B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PassthroughView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id ObjectGraphHost.__allocating_init(appDelegate:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = OBJC_IVAR___BKObjectGraphHost_dependenciesPromise;
  sub_1001F1160(&qword_100AD2148);
  *&v4[v5] = sub_1007A1FB4();
  v6 = [a1 sceneManager];

  v7 = sub_10075E9DC(v6);

  *&v4[OBJC_IVAR___BKObjectGraphHost_objectGraph] = v7;
  v10.receiver = v4;
  v10.super_class = v2;
  v8 = objc_msgSendSuper2(&v10, "init");

  return v8;
}

id ObjectGraphHost.init(appDelegate:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___BKObjectGraphHost_dependenciesPromise;
  sub_1001F1160(&qword_100AD2148);
  *&v1[v4] = sub_1007A1FB4();
  v5 = [a1 sceneManager];

  v6 = sub_10075E9DC(v5);

  *&v2[OBJC_IVAR___BKObjectGraphHost_objectGraph] = v6;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for ObjectGraphHost();
  v7 = objc_msgSendSuper2(&v9, "init");

  return v7;
}

uint64_t ObjectGraphHost.resolveAsyncDependencies(libraryItemStateProvider:downloadProgressCenter:assetActionHandler:serviceCenter:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  result = sub_1007A1F94();
  if ((result & 1) == 0)
  {
    swift_unknownObjectRetain();
    v7 = a2;
    swift_unknownObjectRetain();
    v8 = a4;
    sub_1007A1FA4();

    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10075DAE4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 48) = a1;
  v4 = sub_10075F5B4();
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_10075DBC4;

  return dispatch thunk of Future.then()(v2 + 16, v3, v4);
}

uint64_t sub_10075DBC4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 1);

    return v4();
  }

  else
  {
    v6 = v2[2];
    v2[4] = v2[1];
    v2[5] = v6;

    return _swift_task_switch(sub_10075DD10, 0, 0);
  }
}

uint64_t sub_10075DD10()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[6];
  swift_unknownObjectRelease();

  *v4 = v1;
  v5 = v0[1];

  return v5();
}

uint64_t sub_10075DD90(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 48) = a1;
  v4 = sub_10075F5B4();
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_10075DE70;

  return dispatch thunk of Future.then()(v2 + 16, v3, v4);
}

uint64_t sub_10075DE70()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 1);

    return v4();
  }

  else
  {
    v6 = v2[2];
    v2[4] = v2[1];
    v2[5] = v6;

    return _swift_task_switch(sub_10075DFBC, 0, 0);
  }
}

uint64_t sub_10075DFBC()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[6];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  *v3 = v2;
  v4 = v0[1];

  return v4();
}

uint64_t sub_10075E040(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 48) = a1;
  v4 = sub_10075F5B4();
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_10075E120;

  return dispatch thunk of Future.then()(v2 + 16, v3, v4);
}

uint64_t sub_10075E120()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 1);

    return v4();
  }

  else
  {
    v6 = v2[2];
    v2[4] = v2[1];
    v2[5] = v6;

    return _swift_task_switch(sub_10075E26C, 0, 0);
  }
}

uint64_t sub_10075E26C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);

  swift_unknownObjectRelease();
  *v3 = v2;
  v4 = *(v0 + 8);

  return v4();
}

id sub_10075E2F0@<X0>(void *a1@<X8>)
{
  if (qword_100AD1528 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = static ContextMenuProvider.shared;
  *a1 = static ContextMenuProvider.shared;

  return v2;
}

uint64_t sub_10075E364@<X0>(void *a1@<X8>)
{
  sub_1007A1EE4();
  sub_1007A1ED4();
  type metadata accessor for ContextMenuProvider();
  sub_1007A1E74();

  *a1 = v3;
  return result;
}

id sub_10075E3C4@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for DownloadPurchaseMonitor()) init];
  *a1 = result;
  return result;
}

uint64_t sub_10075E400@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for LibraryDataProvider();
  v3 = swift_allocObject();
  a1[3] = v2;
  result = sub_10075F618(&qword_100AF5FF8, type metadata accessor for LibraryDataProvider);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_10075E484@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for SeriesListModeManager();
  v3 = [objc_allocWithZone(v2) init];
  a1[3] = v2;
  result = sub_10075F618(&qword_100AF5FF0, type metadata accessor for SeriesListModeManager);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_10075E50C@<X0>(uint64_t a1@<X8>)
{
  sub_1007A1EE4();
  sub_1007A1ED4();
  *(a1 + 24) = type metadata accessor for ContextMenuProvider();
  *(a1 + 32) = sub_10075F618(&qword_100AF5FE8, type metadata accessor for ContextMenuProvider);
  sub_1007A1E74();
}

uint64_t sub_10075E5B4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 56) = a1;
  v4 = sub_10075F5B4();
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_10075E694;

  return dispatch thunk of Future.then()(v2 + 16, v3, v4);
}

uint64_t sub_10075E694()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 1);

    return v4();
  }

  else
  {
    v6 = v2[2];
    *(v2 + 72) = v2[1];
    *(v2 + 88) = v6;

    return _swift_task_switch(sub_10075E7E4, 0, 0);
  }
}

uint64_t sub_10075E7E4()
{
  v1 = *(v0 + 80);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v2 = type metadata accessor for ReadingActivityService();
  *(v0 + 48) = v2;
  sub_1001F1160(&qword_100AF2EC0);
  v3 = sub_1007A22E4();
  v5 = sub_10057FAF8(v3, v4);

  if (v5)
  {
    v7 = *(v0 + 56);

    v7[3] = v2;
    v7[4] = sub_10075F618(&qword_100AF5FE0, type metadata accessor for ReadingActivityService);
    *v7 = v5;
    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ObjectGraphHost.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ObjectGraphHost();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10075E9DC(void *a1)
{
  v38 = a1;
  v1 = sub_1007A1DA4();
  v39 = *(v1 - 8);
  v40 = v1;
  __chkstk_darwin(v1);
  v44 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v51 = v35 - v4;
  __chkstk_darwin(v5);
  v43 = v35 - v6;
  __chkstk_darwin(v7);
  v50 = v35 - v8;
  __chkstk_darwin(v9);
  v52 = v35 - v10;
  __chkstk_darwin(v11);
  v13 = v35 - v12;
  __chkstk_darwin(v14);
  v46 = v35 - v15;
  __chkstk_darwin(v16);
  v47 = v35 - v17;
  __chkstk_darwin(v18);
  v20 = v35 - v19;
  __chkstk_darwin(v21);
  v45 = v35 - v22;
  __chkstk_darwin(v23);
  v48 = v35 - v24;
  __chkstk_darwin(v25);
  v49 = v35 - v26;
  sub_1007A1EE4();
  v42 = sub_1007A1E94();

  v41 = sub_100797814();
  sub_1001F1160(&qword_100AF5F70);

  sub_1007A1D74();
  sub_10000A7C4(0, &qword_100AF5F78);

  sub_1007A1D74();
  sub_1001F1160(&qword_100AF5F80);

  sub_1007A1D74();
  type metadata accessor for ContextMenuProvider();
  v37 = v20;
  sub_1007A1D84();
  sub_1001F1160(&qword_100AF5F88);
  sub_1007A1D84();
  type metadata accessor for DownloadPurchaseMonitor();
  sub_1007A1D84();
  sub_1001F1160(&qword_100AF5F90);
  v54 = sub_10000A7C4(0, &qword_100AF5F98);
  v55 = sub_10075F4B0();
  v53 = v38;
  v27 = v38;
  v36 = v13;
  sub_1007A1D94();
  sub_1001F1160(&qword_100AF5FA8);
  v53 = v27;
  v28 = v27;
  sub_1007A1D94();
  sub_1001F1160(&qword_100AF5FB0);
  sub_1007A1D84();
  sub_1001F1160(&qword_100AF5FB8);
  sub_1007A1D84();
  sub_1001F1160(&qword_100AF5FC0);
  sub_1007A1D84();
  sub_1001F1160(&qword_100AF5FC8);

  sub_1007A1D74();

  v29 = sub_1007A1EC4();

  v38 = v29;

  v35[2] = sub_1007A1EA4();

  v30 = sub_1007A1EA4();

  v35[1] = v30;

  sub_1007A1EA4();

  sub_1007A1EA4();

  sub_1007A1EA4();

  sub_1007A1EA4();

  sub_1007A1EA4();

  sub_1007A1EA4();

  sub_1007A1EA4();

  sub_1007A1EA4();

  sub_1007A1EA4();

  v31 = v44;
  v35[0] = sub_1007A1EA4();

  v32 = v40;
  v33 = *(v39 + 8);
  v33(v31, v40);
  v33(v51, v32);
  v33(v43, v32);
  v33(v50, v32);
  v33(v52, v32);
  v33(v36, v32);
  v33(v46, v32);
  v33(v47, v32);
  v33(v37, v32);
  v33(v45, v32);
  v33(v48, v32);
  v33(v49, v32);
  return v35[0];
}

uint64_t sub_10075F2DC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10002812C;

  return sub_10075DAE4(a1, v1);
}

uint64_t sub_10075F378(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100009A34;

  return sub_10075DD90(a1, v1);
}

uint64_t sub_10075F414(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100009A34;

  return sub_10075E040(a1, v1);
}

unint64_t sub_10075F4B0()
{
  result = qword_100AF5FA0;
  if (!qword_100AF5FA0)
  {
    sub_10000A7C4(255, &qword_100AF5F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5FA0);
  }

  return result;
}

uint64_t sub_10075F518(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100009A34;

  return sub_10075E5B4(a1, v1);
}

unint64_t sub_10075F5B4()
{
  result = qword_100AF5FD0;
  if (!qword_100AF5FD0)
  {
    sub_1001F1234(&qword_100AD2148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5FD0);
  }

  return result;
}

uint64_t sub_10075F618(unint64_t *a1, void (*a2)(uint64_t))
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

id SceneProviderBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneProviderBridge();
  return objc_msgSendSuper2(&v2, "init");
}

id SceneProviderBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneProviderBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10075F8E0()
{
  sub_100009864(v0 + OBJC_IVAR____TtC5Books20ReadingActivityDonor_goalsStateProvider, v3);
  sub_10000E3E8(v3, v4);
  sub_100798B34();
  sub_10000E3E8(v2, v2[3]);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100798BF4();

  sub_1000074E0(v2);
  sub_1000074E0(v3);
  sub_100009864(v0 + OBJC_IVAR____TtC5Books20ReadingActivityDonor_historyStateProvider, v3);
  sub_10000E3E8(v3, v4);
  sub_10079EA54();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100798934();

  sub_1000074E0(v3);
  sub_100009864(v0 + OBJC_IVAR____TtC5Books20ReadingActivityDonor_booksFinishedStateProvider, v3);
  sub_10000E3E8(v3, v4);
  sub_10079E9D4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100798934();

  return sub_1000074E0(v3);
}

void sub_10075FAF8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong propertyDidChange:Strong propertyConfiguration:*&Strong[OBJC_IVAR____TtC5Books20ReadingActivityDonor_readingGoalsConfiguration]];
  }
}

id sub_10075FC50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReadingActivityDonor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_10075FD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100009864(a1, v22);
  sub_100009864(a2, v21);
  sub_100009864(a3, v20);
  v6 = type metadata accessor for ReadingActivityDonor();
  v7 = objc_allocWithZone(v6);
  v7[OBJC_IVAR____TtC5Books20ReadingActivityDonor_coachingPermissionApproved] = 0;
  v8 = OBJC_IVAR____TtC5Books20ReadingActivityDonor_coachingPermissionApprovedConfig;
  v9 = objc_allocWithZone(sub_100799884());
  *&v7[v8] = sub_100799874();
  v10 = objc_allocWithZone(sub_100799844());
  *&v7[OBJC_IVAR____TtC5Books20ReadingActivityDonor_readingGoalsConfiguration] = sub_100799834();
  sub_100009864(v22, &v7[OBJC_IVAR____TtC5Books20ReadingActivityDonor_goalsStateProvider]);
  sub_100009864(v21, &v7[OBJC_IVAR____TtC5Books20ReadingActivityDonor_historyStateProvider]);
  sub_100009864(v20, &v7[OBJC_IVAR____TtC5Books20ReadingActivityDonor_booksFinishedStateProvider]);
  v11 = sub_1007A2214();
  v19.receiver = v7;
  v19.super_class = v6;
  v12 = objc_msgSendSuper2(&v19, "initWithType:", v11);

  sub_1001F1160(&unk_100AD8160);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100811390;
  v14 = *&v12[OBJC_IVAR____TtC5Books20ReadingActivityDonor_readingGoalsConfiguration];
  *(v13 + 32) = v14;
  sub_100799824();
  v15 = v12;
  v16 = v14;
  isa = sub_1007A25D4().super.isa;

  [v15 setEventConfigurations:isa];

  sub_10075F8E0();
  sub_1000074E0(a3);
  sub_1000074E0(a2);
  sub_1000074E0(a1);
  sub_1000074E0(v20);
  sub_1000074E0(v21);
  sub_1000074E0(v22);
  return v15;
}

void sub_10075FFA0(int64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v205 = a1;
  v207 = sub_1007987D4();
  v203 = *(v207 - 1);
  __chkstk_darwin(v207);
  v206 = &v165 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100796AD4();
  v190 = *(v10 - 8);
  v191 = v10;
  __chkstk_darwin(v10);
  v188 = &v165 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_100796BB4();
  v187 = *(v189 - 8);
  __chkstk_darwin(v189);
  v186 = &v165 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_100798724();
  v192 = *(v204 - 8);
  __chkstk_darwin(v204);
  v202 = &v165 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v201 = &v165 - v15;
  __chkstk_darwin(v16);
  v200 = &v165 - v17;
  v18 = sub_1001F1160(&qword_100AEF228);
  __chkstk_darwin(v18 - 8);
  v181 = &v165 - v19;
  v20 = sub_10079E734();
  v174 = *(v20 - 8);
  v175 = v20;
  __chkstk_darwin(v20);
  v173 = &v165 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1001F1160(&qword_100AEF348);
  __chkstk_darwin(v22 - 8);
  v179 = &v165 - v23;
  v24 = sub_10079E704();
  v180 = *(v24 - 8);
  __chkstk_darwin(v24);
  v172 = &v165 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100798694();
  v184 = *(v26 - 8);
  v185 = v26;
  __chkstk_darwin(v26);
  v193 = &v165 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_100798774();
  v28 = *(v194 - 8);
  __chkstk_darwin(v194);
  v183 = &v165 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v182 = &v165 - v31;
  __chkstk_darwin(v32);
  v34 = &v165 - v33;
  __chkstk_darwin(v35);
  v178 = &v165 - v36;
  __chkstk_darwin(v37);
  v39 = &v165 - v38;
  v225 = 0;
  v223 = 0u;
  v224 = 0u;
  v226 = -1;
  v40 = sub_1007998D4();
  if (!a3)
  {

    goto LABEL_10;
  }

  if (v40 != a2 || v41 != a3)
  {
    v42 = sub_1007A3AB4();

    if (v42)
    {
      goto LABEL_7;
    }

LABEL_10:
    v48 = objc_allocWithZone(sub_1007997D4());
    v207 = sub_1007997C4();
    (*(a5 + 16))(a5, v207);
    v49 = v207;

    return;
  }

LABEL_7:
  v171 = a5;
  v43 = sub_100799814();
  v45 = v44;
  v46 = a4;
  if (v43 == sub_100799814() && v45 == v47)
  {

    goto LABEL_14;
  }

  v50 = sub_1007A3AB4();

  if ((v50 & 1) == 0)
  {
    v111 = sub_100799814();
    v113 = v112;
    v114 = sub_100799814();
    v116 = v171;
    if (v111 == v114 && v113 == v115)
    {
    }

    else
    {
      v162 = sub_1007A3AB4();

      if ((v162 & 1) == 0)
      {
        v160 = 0;
        v159 = 0;
        v161 = -1;
        goto LABEL_48;
      }
    }

    v159 = 0;
    v161 = 0;
    v160 = *(a4 + OBJC_IVAR____TtC5Books20ReadingActivityDonor_coachingPermissionApproved);
LABEL_48:
    v212 = v160;
    v213 = 0;
    v215 = 0;
    v214 = v159;
    v216 = v161;
    v163 = objc_allocWithZone(sub_1007997D4());
    sub_100761500(v160, 0, v159, 0, 0, v161);
    v164 = sub_1007997C4();
    (*(v116 + 16))(v116, v164);
    sub_100761514(v160, 0, v159, 0, 0, v161);

    return;
  }

LABEL_14:
  v166 = v24;
  v177 = OBJC_IVAR____TtC5Books20ReadingActivityDonor_historyStateProvider;
  sub_100009864(a4 + OBJC_IVAR____TtC5Books20ReadingActivityDonor_historyStateProvider, &v212);
  sub_10000E3E8(&v212, *(&v214 + 1));
  sub_10079EA54();
  sub_100798954();

  v51 = sub_100798734();
  v53 = *(v28 + 8);
  v52 = v28 + 8;
  v176 = v53;
  v53(v39, v194);
  sub_1000074E0(&v212);
  v54 = *(v51 + 16);
  if (v54 >= 0x64)
  {
    v55 = 100;
  }

  else
  {
    v55 = *(v51 + 16);
  }

  v169 = v52;
  v170 = v46;
  v167 = v34;
  v168 = v39;
  if (!v54)
  {

    v207 = _swiftEmptyArrayStorage;
LABEL_33:
    sub_100009864(v46 + OBJC_IVAR____TtC5Books20ReadingActivityDonor_goalsStateProvider, &v212);
    sub_10000E3E8(&v212, *(&v214 + 1));
    sub_100798B44();
    sub_1000074E0(&v212);
    sub_100009864(v46 + OBJC_IVAR____TtC5Books20ReadingActivityDonor_booksFinishedStateProvider, &v212);
    sub_10000E3E8(&v212, *(&v214 + 1));
    sub_10079E9D4();
    v104 = v179;
    sub_100798954();

    v105 = v180;
    v106 = v166;
    if ((*(v180 + 48))(v104, 1, v166) == 1)
    {
      sub_100007840(v104, &qword_100AEF348);
      sub_1000074E0(&v212);
      v205 = 0;
      v107 = v178;
    }

    else
    {
      v108 = v172;
      (*(v105 + 32))(v172, v104, v106);
      sub_1000074E0(&v212);
      v109 = v173;
      sub_10079E6D4();
      v110 = sub_10079E724();
      (*(v174 + 8))(v109, v175);
      (*(v105 + 8))(v108, v106);
      v107 = v178;
      if (v110)
      {
        v205 = *(v110 + 16);
      }

      else
      {
        v205 = 0;
      }
    }

    sub_1001F1160(&unk_100ADE550);
    v117 = swift_allocObject();
    *(v117 + 32) = 0xD000000000000013;
    v206 = (v117 + 32);
    *(v117 + 16) = xmmword_10083C7A0;
    *(v117 + 40) = 0x80000001008EA270;
    v118 = v177;
    sub_100009864(v46 + v177, &v212);
    sub_10000E3E8(&v212, *(&v214 + 1));
    sub_10079EA54();
    sub_100798954();

    v119 = sub_100798744();
    v120 = v107;
    v121 = v194;
    v122 = v176;
    v176(v120, v194);
    *(v117 + 48) = v119;
    *(v117 + 72) = &type metadata for Int;
    *(v117 + 80) = 0xD000000000000013;
    *(v117 + 88) = 0x80000001008E3150;
    sub_100009864(v46 + v118, v210);
    sub_10000E3E8(v210, v211);
    sub_10079EA54();
    v123 = v167;
    sub_100798954();

    v124 = v181;
    sub_100798754();
    v125 = v121;
    v126 = v124;
    v122(v123, v125);
    v127 = sub_1007987A4();
    v128 = *(v127 - 8);
    if ((*(v128 + 48))(v126, 1, v127) == 1)
    {
      sub_1000074E0(v210);
      sub_100007840(v126, &qword_100AEF228);
      v129 = 0;
    }

    else
    {
      v129 = sub_100798784();
      (*(v128 + 8))(v126, v127);
      sub_1000074E0(v210);
    }

    v130 = v168;
    *(v117 + 96) = v129;
    *(v117 + 120) = &type metadata for Int;
    *(v117 + 128) = 0xD000000000000010;
    *(v117 + 136) = 0x80000001008E3180;
    v131 = v46 + v177;
    v132 = v46;
    v133 = v177;
    sub_100009864(v131, v210);
    sub_10000E3E8(v210, v211);
    sub_10079EA54();
    sub_100798954();

    v134 = v200;
    sub_100798764();
    v135 = v194;
    v176(v130, v194);
    v136 = sub_1007986F4();
    v203 = *(v192 + 8);
    v137 = v134;
    v138 = v132;
    v139 = v204;
    (v203)(v137, v204);
    *(v117 + 144) = v136 & 1;
    *(v117 + 168) = &type metadata for Bool;
    strcpy((v117 + 176), "readingHistory");
    *(v117 + 191) = -18;
    v140 = sub_1001F1160(&qword_100ADE598);
    *(v117 + 192) = v207;
    *(v117 + 216) = v140;
    strcpy((v117 + 224), "timeReadToday");
    *(v117 + 238) = -4864;
    sub_100009864(v138 + v133, v209);
    sub_10000E3E8(v209, v209[3]);
    sub_10079EA54();
    v141 = v182;
    sub_100798954();

    v142 = v201;
    sub_100798764();
    v143 = v135;
    v144 = v176;
    v176(v141, v143);
    v145 = sub_100798704();
    v146 = v203;
    (v203)(v142, v139);
    *(v117 + 240) = v145;
    *(v117 + 264) = &type metadata for Int;
    *(v117 + 272) = 0x47676E6964616572;
    *(v117 + 280) = 0xEB000000006C616FLL;
    v147 = v193;
    sub_100798664();
    *(v117 + 288) = v148;
    *(v117 + 312) = &type metadata for Double;
    *(v117 + 320) = 0xD000000000000017;
    *(v117 + 328) = 0x80000001008EA290;
    *(v117 + 336) = sub_100798674();
    *(v117 + 360) = &type metadata for Int;
    *(v117 + 368) = 0xD000000000000018;
    v149 = v205;
    *(v117 + 376) = 0x80000001008EA2B0;
    *(v117 + 384) = v149;
    *(v117 + 408) = &type metadata for Int;
    *(v117 + 416) = 0xD000000000000013;
    *(v117 + 424) = 0x80000001008EA2D0;
    sub_100798664();
    v151 = v150;
    sub_100009864(v170 + v177, v208);
    sub_10000E3E8(v208, v208[3]);
    sub_10079EA54();
    v152 = v183;
    sub_100798954();

    v153 = v202;
    sub_100798764();
    v144(v152, v194);
    v154 = sub_100798704();
    v146(v153, v204);
    sub_1000074E0(v208);
    *(v117 + 432) = v151 - v154;
    *(v117 + 456) = &type metadata for Double;
    *(v117 + 464) = 1702125924;
    *(v117 + 472) = 0xE400000000000000;
    v155 = v186;
    sub_100796BA4();
    v156 = v188;
    sub_1007963F4();
    *(v117 + 504) = &type metadata for String;
    sub_100761598();
    v157 = v191;
    sub_100796B94();
    (*(v190 + 8))(v156, v157);
    (*(v187 + 8))(v155, v189);
    sub_1000074E0(v209);
    sub_1000074E0(v210);
    sub_1000074E0(&v212);
    v158 = sub_100019158(v117);
    swift_setDeallocating();
    sub_1001F1160(&unk_100ADD560);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v159 = sub_100581680(v158);

    (*(v184 + 8))(v147, v185);
    v160 = 0;
    v161 = 1;
    v116 = v171;
    goto LABEL_48;
  }

  v210[0] = _swiftEmptyArrayStorage;
  v56 = v203;
  v57 = (*(v203 + 80) + 32) & ~*(v203 + 80);
  v165 = v51;
  v58 = v51 + v57;
  sub_1003BD7D8(0, v55, 0);
  v59 = v210[0];
  v60 = sub_1001F1160(&unk_100AD3C10);
  v61 = *(v56 + 16);
  v56 += 16;
  v198 = v61;
  v199 = v60;
  v196 = (v56 - 8);
  v197 = (v192 + 8);
  v203 = v56;
  v195 = *(v56 + 56);
  while (v55)
  {
    v205 = v55;
    v198(v206, v58, v207);
    v217[0] = 0x64616552656D6974;
    v217[1] = 0xE800000000000000;
    v62 = v200;
    sub_1007987B4();
    v63 = sub_100798704();
    v64 = *v197;
    v65 = v62;
    v66 = v204;
    (*v197)(v65, v204);
    v217[5] = &type metadata for Int;
    v217[2] = v63;
    v218[0] = 1702125924;
    v218[1] = 0xE400000000000000;
    v218[2] = sub_1007987C4();
    v218[3] = v67;
    v218[5] = &type metadata for String;
    v219[0] = 0x47676E6964616572;
    v219[1] = 0xEB000000006C616FLL;
    v68 = v201;
    sub_1007987B4();
    v69 = sub_100798714();
    v64(v68, v66);
    v219[5] = &type metadata for Int;
    v219[2] = v69;
    v220[0] = 0x6B61657274537369;
    v220[1] = 0xEB00000000796144;
    v70 = v202;
    sub_1007987B4();
    LOBYTE(v69) = sub_1007986F4();
    v64(v70, v66);
    v222 = &type metadata for Bool;
    v221 = v69 & 1;
    v71 = sub_1007A3924();

    sub_100761528(v217, &v212);
    v72 = v212;
    v73 = v213;
    v74 = sub_10000E53C(v212, v213);
    if (v75)
    {
      goto LABEL_49;
    }

    v76 = v71 + 8;
    *(v71 + ((v74 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v74;
    v77 = (v71[6] + 16 * v74);
    *v77 = v72;
    v77[1] = v73;
    sub_1000076D4(&v214, (v71[7] + 32 * v74));
    v78 = v71[2];
    v79 = __OFADD__(v78, 1);
    v80 = v78 + 1;
    if (v79)
    {
      goto LABEL_50;
    }

    v71[2] = v80;
    sub_100761528(v218, &v212);
    v81 = v212;
    v82 = v213;
    v83 = sub_10000E53C(v212, v213);
    if (v84)
    {
      goto LABEL_49;
    }

    *(v76 + ((v83 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v83;
    v85 = (v71[6] + 16 * v83);
    *v85 = v81;
    v85[1] = v82;
    sub_1000076D4(&v214, (v71[7] + 32 * v83));
    v86 = v71[2];
    v79 = __OFADD__(v86, 1);
    v87 = v86 + 1;
    if (v79)
    {
      goto LABEL_50;
    }

    v71[2] = v87;
    sub_100761528(v219, &v212);
    v88 = v212;
    v89 = v213;
    v90 = sub_10000E53C(v212, v213);
    if (v91)
    {
      goto LABEL_49;
    }

    *(v76 + ((v90 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v90;
    v92 = (v71[6] + 16 * v90);
    *v92 = v88;
    v92[1] = v89;
    sub_1000076D4(&v214, (v71[7] + 32 * v90));
    v93 = v71[2];
    v79 = __OFADD__(v93, 1);
    v94 = v93 + 1;
    if (v79)
    {
      goto LABEL_50;
    }

    v71[2] = v94;
    sub_100761528(v220, &v212);
    v95 = v212;
    v96 = v213;
    v97 = sub_10000E53C(v212, v213);
    if (v98)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      break;
    }

    *(v76 + ((v97 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v97;
    v99 = (v71[6] + 16 * v97);
    *v99 = v95;
    v99[1] = v96;
    sub_1000076D4(&v214, (v71[7] + 32 * v97));
    v100 = v71[2];
    v79 = __OFADD__(v100, 1);
    v101 = v100 + 1;
    if (v79)
    {
      goto LABEL_50;
    }

    v71[2] = v101;

    sub_1001F1160(&unk_100ADD560);
    swift_arrayDestroy();
    (*v196)(v206, v207);
    v210[0] = v59;
    v103 = v59[2];
    v102 = v59[3];
    if (v103 >= v102 >> 1)
    {
      sub_1003BD7D8((v102 > 1), v103 + 1, 1);
      v59 = v210[0];
    }

    v59[2] = v103 + 1;
    v59[v103 + 4] = v71;
    v58 += v195;
    v55 = v205 - 1;
    if (v205 == 1)
    {
      v207 = v59;

      v46 = v170;
      goto LABEL_33;
    }
  }

  __break(1u);
}

uint64_t sub_100761500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_10035A334(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

uint64_t sub_100761514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_10035A3A8(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

uint64_t sub_100761528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100ADD560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100761598()
{
  result = qword_100ADD570;
  if (!qword_100ADD570)
  {
    sub_100796AD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD570);
  }

  return result;
}

uint64_t sub_100761614()
{
  v1 = [*(*(v0 + 48) + 16) activeStoreAccount];
  if (!v1)
  {
    v3 = 0;
    goto LABEL_11;
  }

  v2 = v1;
  if ([v1 ams_accountFlagValueForAccountFlag:AMSAccountFlagUnderThirteen])
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
  }

  *(v0 + 16) = v6;
  *(v0 + 32) = v7;
  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 56) ^ 1;
      goto LABEL_11;
    }
  }

  else
  {
    sub_1000230BC(v0 + 16);
  }

  v3 = 1;
LABEL_11:
  v4 = *(v0 + 8);

  return v4(v3 & 1);
}

uint64_t sub_100761744()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1002BB768;

  return sub_1007615F4();
}

uint64_t sub_100761820(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1001F1160(&qword_100AF6130);

  return sub_100008B98(v3, a2);
}

uint64_t sub_1007618A0@<X0>(uint64_t a1@<X8>)
{
  v369 = a1;
  v1 = sub_1001F1160(&qword_100AF6130);
  v372 = *(v1 - 8);
  v373 = v1;
  __chkstk_darwin(v1);
  v370 = &v365 - v2;
  v3 = sub_1001F1160(&qword_100AF61E0);
  __chkstk_darwin(v3 - 8);
  v371 = &v365 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v366 = &v365 - v6;
  __chkstk_darwin(v7);
  v374 = &v365 - v8;
  v9 = sub_100796504();
  v367 = *(v9 - 8);
  v368 = v9;
  __chkstk_darwin(v9);
  v389 = &v365 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100796CF4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v365 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v365 - v16;
  v18 = sub_1007A21D4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v365 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v365 - v23;
  sub_1007A2154();
  sub_100796C94();
  v25 = *(v19 + 16);
  v386 = v19 + 16;
  countAndFlagsBits = v25;
  v25(v21, v24, v18);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v383 = objc_opt_self();
  v384 = ObjCClassFromMetadata;
  v27 = [v383 bundleForClass:ObjCClassFromMetadata];
  v28 = *(v12 + 16);
  v390._object = (v12 + 16);
  v382 = v28;
  v28(v14, v17, v11);
  v377 = v21;
  v379 = v14;
  v29 = sub_1007A22D4();
  v31 = v30;
  v32 = *(v12 + 8);
  v376 = v17;
  v378 = v11;
  v390._countAndFlagsBits = v12 + 8;
  v381 = v32;
  v32(v17, v11);
  v33 = *(v19 + 8);
  v375 = v24;
  v380 = v18;
  v388 = v19 + 8;
  v385 = v33;
  v33(v24, v18);
  v34 = sub_100765260(v29, v31);
  if ((v34 & 0x100000000) != 0)
  {

    goto LABEL_5;
  }

  v35 = v34;
  v36 = sub_1007653B0(v29, v31);

  if (v36 != 1)
  {
LABEL_5:
    v35 = 58;
  }

  v38 = v378;
  v37 = v379;
  v39 = v377;
  v397 = v35;
  v398 = 36;
  v40 = v375;
  sub_1007A2154();
  v41 = v376;
  sub_100796C94();
  v42 = v380;
  countAndFlagsBits(v39, v40, v380);
  v43 = [v383 bundleForClass:v384];
  v382(v37, v41, v38);
  v44 = sub_1007A22D4();
  v46 = v45;
  v381(v41, v38);
  v385(v40, v42);
  v47 = sub_100765260(v44, v46);
  if ((v47 & 0x100000000) != 0)
  {

    goto LABEL_10;
  }

  v48 = v47;
  v49 = sub_1007653B0(v44, v46);

  if (v49 != 1)
  {
LABEL_10:
    v48 = 91;
  }

  v399 = v48;
  v50 = v375;
  sub_1007A2154();
  v51 = v376;
  sub_100796C94();
  v52 = v380;
  countAndFlagsBits(v39, v50, v380);
  v53 = [v383 bundleForClass:v384];
  v382(v37, v51, v38);
  v54 = sub_1007A22D4();
  v56 = v55;
  v381(v51, v38);
  v385(v50, v52);
  v57 = sub_100765260(v54, v56);
  if ((v57 & 0x100000000) != 0)
  {

    goto LABEL_15;
  }

  v58 = v57;
  v59 = sub_1007653B0(v54, v56);

  if (v59 != 1)
  {
LABEL_15:
    v58 = 93;
  }

  v400 = v58;
  v60 = v375;
  sub_1007A2154();
  v61 = v376;
  sub_100796C94();
  v62 = v380;
  countAndFlagsBits(v39, v60, v380);
  v63 = [v383 bundleForClass:v384];
  v382(v37, v61, v38);
  v64 = sub_1007A22D4();
  v66 = v65;
  v381(v61, v38);
  v385(v60, v62);
  v67 = sub_100765260(v64, v66);
  if ((v67 & 0x100000000) != 0)
  {

    goto LABEL_20;
  }

  v68 = v67;
  v69 = sub_1007653B0(v64, v66);

  if (v69 != 1)
  {
LABEL_20:
    v68 = 40;
  }

  v401 = v68;
  v70 = v375;
  sub_1007A2154();
  v71 = v376;
  sub_100796C94();
  v72 = v380;
  countAndFlagsBits(v39, v70, v380);
  v73 = [v383 bundleForClass:v384];
  v382(v37, v71, v38);
  v74 = sub_1007A22D4();
  v76 = v75;
  v381(v71, v38);
  v385(v70, v72);
  v77 = sub_100765260(v74, v76);
  if ((v77 & 0x100000000) != 0)
  {
  }

  else
  {
    v78 = v77;
    v79 = sub_1007653B0(v74, v76);

    if (v79 == 1)
    {
      goto LABEL_26;
    }
  }

  v78 = 41;
LABEL_26:
  v402 = v78;
  v395 = xmmword_1008447A0;
  v387 = v396;
  v80 = v375;
  sub_1007A2154();
  v81 = v376;
  sub_100796C94();
  v82 = v380;
  countAndFlagsBits(v39, v80, v380);
  v83 = [v383 bundleForClass:v384];
  v382(v37, v81, v38);
  v84 = sub_1007A22D4();
  v86 = v85;
  v381(v81, v38);
  v385(v80, v82);
  v396[0] = v84;
  v396[1] = v86;
  sub_1007A2154();
  sub_100796C94();
  v87 = countAndFlagsBits;
  countAndFlagsBits(v39, v80, v82);
  v88 = [v383 bundleForClass:v384];
  v89 = v37;
  v90 = v378;
  v382(v89, v81, v378);
  v91 = sub_1007A22D4();
  v93 = v92;
  v381(v81, v90);
  v385(v80, v82);
  v396[2] = v91;
  v396[3] = v93;
  sub_1007A2154();
  sub_100796C94();
  v87(v39, v80, v82);
  v94 = [v383 bundleForClass:v384];
  v95 = v382;
  v382(v379, v81, v90);
  v96 = sub_1007A22D4();
  v98 = v97;
  v99 = v381;
  v381(v81, v90);
  v100 = v380;
  v385(v80, v380);
  v396[4] = v96;
  v396[5] = v98;
  sub_1007A2154();
  sub_100796C94();
  v101 = v377;
  countAndFlagsBits(v377, v80, v100);
  v102 = v383;
  v103 = [v383 bundleForClass:v384];
  v104 = v378;
  v95(v379, v81, v378);
  v105 = sub_1007A22D4();
  v107 = v106;
  v99(v81, v104);
  v108 = v380;
  v109 = v385;
  v385(v80, v380);
  v396[6] = v105;
  v396[7] = v107;
  sub_1007A2154();
  sub_100796C94();
  countAndFlagsBits(v101, v80, v108);
  v110 = [v102 bundleForClass:v384];
  v382(v379, v81, v104);
  v111 = sub_1007A22D4();
  v113 = v112;
  v381(v81, v104);
  v114 = v380;
  v109(v80, v380);
  v396[8] = v111;
  v396[9] = v113;
  sub_1007A2154();
  sub_100796C94();
  countAndFlagsBits(v377, v80, v114);
  v115 = v384;
  v116 = [v383 bundleForClass:v384];
  v382(v379, v81, v104);
  v117 = sub_1007A22D4();
  v119 = v118;
  v381(v81, v104);
  v120 = v380;
  v385(v80, v380);
  v396[10] = v117;
  v396[11] = v119;
  sub_1007A2154();
  sub_100796C94();
  v121 = v377;
  countAndFlagsBits(v377, v80, v120);
  v122 = [v383 bundleForClass:v115];
  v124 = v378;
  v123 = v379;
  v382(v379, v81, v378);
  v125 = v123;
  v126 = sub_1007A22D4();
  v128 = v127;
  v381(v81, v124);
  v129 = v380;
  v385(v80, v380);
  v396[12] = v126;
  v396[13] = v128;
  sub_1007A2154();
  sub_100796C94();
  v130 = v129;
  countAndFlagsBits(v121, v80, v129);
  v131 = v383;
  v132 = [v383 bundleForClass:v384];
  v133 = v378;
  v134 = v382;
  v382(v125, v81, v378);
  v135 = sub_1007A22D4();
  v137 = v136;
  v138 = v133;
  v139 = v381;
  v381(v81, v138);
  v385(v80, v130);
  v396[14] = v135;
  v396[15] = v137;
  sub_1007A2154();
  sub_100796C94();
  v140 = v377;
  countAndFlagsBits(v377, v80, v130);
  v141 = [v131 bundleForClass:v384];
  v142 = v378;
  v143 = v379;
  v134(v379, v81, v378);
  v144 = v143;
  v145 = sub_1007A22D4();
  v147 = v146;
  v139(v81, v142);
  v148 = v380;
  v385(v80, v380);
  v396[16] = v145;
  v396[17] = v147;
  sub_1007A2154();
  sub_100796C94();
  countAndFlagsBits(v140, v80, v148);
  v149 = [v383 bundleForClass:v384];
  v150 = v378;
  v134(v144, v81, v378);
  v151 = sub_1007A22D4();
  v153 = v152;
  v154 = v150;
  v155 = v381;
  v381(v81, v154);
  v156 = v380;
  v385(v80, v380);
  v396[18] = v151;
  v396[19] = v153;
  sub_1007A2154();
  sub_100796C94();
  countAndFlagsBits(v140, v80, v156);
  v157 = [v383 bundleForClass:v384];
  v158 = v378;
  v382(v379, v81, v378);
  v159 = sub_1007A22D4();
  v161 = v160;
  v155(v81, v158);
  v162 = v380;
  v385(v80, v380);
  v396[20] = v159;
  v396[21] = v161;
  sub_1007A2154();
  sub_100796C94();
  countAndFlagsBits(v377, v80, v162);
  v163 = v384;
  v164 = [v383 bundleForClass:v384];
  v165 = v378;
  v382(v379, v81, v378);
  v166 = sub_1007A22D4();
  v168 = v167;
  v169 = v381;
  v381(v81, v165);
  v170 = v162;
  v385(v80, v162);
  v396[22] = v166;
  v396[23] = v168;
  sub_1007A2154();
  sub_100796C94();
  v171 = v377;
  countAndFlagsBits(v377, v80, v170);
  v172 = [v383 bundleForClass:v163];
  v382(v379, v81, v165);
  v173 = v171;
  v174 = sub_1007A22D4();
  v176 = v175;
  v169(v81, v165);
  v385(v80, v170);
  v396[24] = v174;
  v396[25] = v176;
  sub_1007A2154();
  sub_100796C94();
  countAndFlagsBits(v171, v80, v170);
  v177 = v383;
  v178 = [v383 bundleForClass:v384];
  v179 = v378;
  v382(v379, v81, v378);
  v180 = sub_1007A22D4();
  v182 = v181;
  v381(v81, v179);
  v183 = v380;
  v385(v80, v380);
  v396[26] = v180;
  v396[27] = v182;
  sub_1007A2154();
  sub_100796C94();
  v184 = v173;
  countAndFlagsBits(v173, v80, v183);
  v185 = v177;
  v186 = v384;
  v187 = [v185 bundleForClass:v384];
  v188 = v378;
  v189 = v382;
  v382(v379, v81, v378);
  v190 = sub_1007A22D4();
  v192 = v191;
  v381(v81, v188);
  v193 = v380;
  v194 = v385;
  v385(v80, v380);
  v396[28] = v190;
  v396[29] = v192;
  sub_1007A2154();
  sub_100796C94();
  countAndFlagsBits(v184, v80, v193);
  v195 = [v383 bundleForClass:v186];
  v196 = v378;
  v189(v379, v81, v378);
  v197 = sub_1007A22D4();
  v199 = v198;
  v381(v81, v196);
  v200 = v380;
  v194(v80, v380);
  v396[30] = v197;
  v396[31] = v199;
  sub_1007A2154();
  sub_100796C94();
  countAndFlagsBits(v184, v80, v200);
  v201 = v383;
  v202 = [v383 bundleForClass:v186];
  v203 = v382;
  v382(v379, v81, v196);
  v204 = sub_1007A22D4();
  v206 = v205;
  v381(v81, v196);
  v207 = v380;
  v385(v80, v380);
  v396[32] = v204;
  v396[33] = v206;
  sub_1007A2154();
  sub_100796C94();
  v208 = v377;
  countAndFlagsBits(v377, v80, v207);
  v209 = v384;
  v210 = [v201 bundleForClass:v384];
  v211 = v378;
  v203(v379, v81, v378);
  v212 = sub_1007A22D4();
  v214 = v213;
  v215 = v381;
  v381(v81, v211);
  v216 = v380;
  v385(v80, v380);
  v396[34] = v212;
  v396[35] = v214;
  sub_1007A2154();
  sub_100796C94();
  v217 = v208;
  v218 = v216;
  countAndFlagsBits(v217, v80, v216);
  v219 = [v383 bundleForClass:v209];
  v220 = v379;
  v382(v379, v81, v211);
  v221 = sub_1007A22D4();
  v223 = v222;
  v215(v81, v211);
  v224 = v385;
  v385(v80, v218);
  v396[36] = v221;
  v396[37] = v223;
  sub_1007A2154();
  sub_100796C94();
  v225 = v377;
  countAndFlagsBits(v377, v80, v218);
  v226 = v384;
  v227 = [v383 bundleForClass:v384];
  v228 = v220;
  v229 = v378;
  v382(v228, v81, v378);
  v230 = v225;
  v231 = sub_1007A22D4();
  v233 = v232;
  v381(v81, v229);
  v234 = v380;
  v224(v80, v380);
  v396[38] = v231;
  v396[39] = v233;
  sub_1007A2154();
  sub_100796C94();
  v235 = countAndFlagsBits;
  countAndFlagsBits(v230, v80, v234);
  v236 = [v383 bundleForClass:v226];
  v237 = v378;
  v238 = v382;
  v382(v379, v81, v378);
  v239 = sub_1007A22D4();
  v241 = v240;
  v381(v81, v237);
  v242 = v380;
  v385(v80, v380);
  v396[40] = v239;
  v396[41] = v241;
  sub_1007A2154();
  sub_100796C94();
  v243 = v377;
  v235(v377, v80, v242);
  v244 = v383;
  v245 = [v383 bundleForClass:v384];
  v238(v379, v81, v237);
  v246 = v243;
  v247 = sub_1007A22D4();
  v249 = v248;
  v250 = v237;
  v251 = v381;
  v381(v81, v250);
  v385(v80, v242);
  v396[42] = v247;
  v396[43] = v249;
  sub_1007A2154();
  sub_100796C94();
  countAndFlagsBits(v246, v80, v242);
  v252 = [v244 bundleForClass:v384];
  v253 = v378;
  v254 = v379;
  v382(v379, v81, v378);
  v255 = sub_1007A22D4();
  v257 = v256;
  v251(v81, v253);
  v258 = v380;
  v385(v80, v380);
  v396[44] = v255;
  v396[45] = v257;
  sub_1007A2154();
  sub_100796C94();
  v259 = v377;
  countAndFlagsBits(v377, v80, v258);
  v260 = [v383 bundleForClass:v384];
  v261 = v254;
  v262 = v254;
  v263 = v378;
  v264 = v382;
  v382(v262, v81, v378);
  v265 = v261;
  v266 = sub_1007A22D4();
  v268 = v267;
  v381(v81, v263);
  v269 = v380;
  v385(v80, v380);
  v396[46] = v266;
  v396[47] = v268;
  sub_1007A2154();
  sub_100796C94();
  countAndFlagsBits(v259, v80, v269);
  v270 = [v383 bundleForClass:v384];
  v271 = v378;
  v264(v265, v81, v378);
  v272 = v259;
  v273 = sub_1007A22D4();
  v275 = v274;
  v381(v81, v271);
  v276 = v380;
  v277 = v385;
  v385(v80, v380);
  v396[48] = v273;
  v396[49] = v275;
  sub_1007A2154();
  sub_100796C94();
  countAndFlagsBits(v272, v80, v276);
  v278 = v383;
  v279 = [v383 bundleForClass:v384];
  v280 = v378;
  v382(v379, v81, v378);
  v281 = sub_1007A22D4();
  v283 = v282;
  v284 = v381;
  v381(v81, v280);
  v285 = v380;
  v277(v80, v380);
  v396[50] = v281;
  v396[51] = v283;
  sub_1007A2154();
  sub_100796C94();
  v286 = v377;
  v287 = countAndFlagsBits;
  countAndFlagsBits(v377, v80, v285);
  v288 = v278;
  v289 = v384;
  v290 = [v288 bundleForClass:v384];
  v291 = v378;
  v382(v379, v81, v378);
  v292 = sub_1007A22D4();
  v294 = v293;
  v284(v81, v291);
  v295 = v380;
  v385(v80, v380);
  v396[52] = v292;
  v396[53] = v294;
  sub_1007A2154();
  sub_100796C94();
  v296 = v286;
  v287(v286, v80, v295);
  v297 = [v383 bundleForClass:v289];
  v298 = v378;
  v299 = v379;
  v300 = v382;
  v382(v379, v81, v378);
  v301 = v296;
  v302 = sub_1007A22D4();
  v304 = v303;
  v381(v81, v298);
  v305 = v380;
  v385(v80, v380);
  v396[54] = v302;
  v396[55] = v304;
  sub_1007A2154();
  sub_100796C94();
  countAndFlagsBits(v301, v80, v305);
  v306 = v383;
  v307 = [v383 bundleForClass:v384];
  v308 = v299;
  v309 = v299;
  v310 = v378;
  v300(v309, v81, v378);
  v311 = v308;
  v312 = sub_1007A22D4();
  v314 = v313;
  v315 = v310;
  v316 = v381;
  v381(v81, v315);
  v317 = v316;
  v318 = v380;
  v385(v80, v380);
  v396[56] = v312;
  v396[57] = v314;
  sub_1007A2154();
  sub_100796C94();
  countAndFlagsBits(v301, v80, v318);
  v319 = [v306 bundleForClass:v384];
  v320 = v378;
  v382(v311, v81, v378);
  v321 = sub_1007A22D4();
  v323 = v322;
  v317(v81, v320);
  v324 = v385;
  v385(v80, v318);
  v396[58] = v321;
  v396[59] = v323;
  sub_1007A2154();
  sub_100796C94();
  countAndFlagsBits(v377, v80, v318);
  v325 = [v383 bundleForClass:v384];
  v382(v379, v81, v320);
  v326 = sub_1007A22D4();
  v328 = v327;
  v381(v81, v320);
  v329 = v380;
  v324(v80, v380);
  v396[60] = v326;
  v396[61] = v328;
  sub_1007A2154();
  sub_100796C94();
  countAndFlagsBits(v377, v80, v329);
  v330 = [v383 bundleForClass:v384];
  v331 = v320;
  v382(v379, v81, v320);
  v332 = sub_1007A22D4();
  v334 = v333;
  v381(v81, v331);
  v324(v80, v329);
  v396[62] = v332;
  v396[63] = v334;
  v393 = 0;
  v394 = 0xE000000000000000;
  sub_1007964D4();
  v335 = 0;
  do
  {
    v388 = v335;
    v336 = &v387[2 * v335];
    v337 = v336[1];
    v390._countAndFlagsBits = *v336;
    v390._object = v337;

    for (i = 0; i != 24; i += 8)
    {
      v392._countAndFlagsBits = 0;
      v392._object = 0xE000000000000000;
      v339 = sub_1007964F4();
      v340 = (v339 & 1) == 0;
      if (v339)
      {
        v341._countAndFlagsBits = 92;
      }

      else
      {
        v341._countAndFlagsBits = 0;
      }

      v342 = 0xE000000000000000;
      if (v340)
      {
        v343 = 0xE000000000000000;
      }

      else
      {
        v343 = 0xE100000000000000;
      }

      v341._object = v343;
      sub_1007A23D4(v341);

      sub_1007A3CD4();
      object = v392._object;
      countAndFlagsBits = v392._countAndFlagsBits;
      v392._countAndFlagsBits = 0;
      v392._object = 0xE000000000000000;
      v345 = sub_1007964F4();
      v346 = (v345 & 1) == 0;
      if (v345)
      {
        v347._countAndFlagsBits = 92;
      }

      else
      {
        v347._countAndFlagsBits = 0;
      }

      if (v346)
      {
        v348 = 0xE000000000000000;
      }

      else
      {
        v348 = 0xE100000000000000;
      }

      v347._object = v348;
      sub_1007A23D4(v347);

      sub_1007A3CD4();
      v350 = v392._countAndFlagsBits;
      v349 = v392._object;
      v351 = v393 & 0xFFFFFFFFFFFFLL;
      if ((v394 & 0x2000000000000000) != 0)
      {
        v351 = HIBYTE(v394) & 0xF;
      }

      if (v351)
      {
        v352 = 124;
      }

      else
      {
        v352 = 0;
      }

      if (v351)
      {
        v342 = 0xE100000000000000;
      }

      v392._countAndFlagsBits = 0;
      v392._object = 0xE000000000000000;
      sub_1007A3744(18);

      v392._countAndFlagsBits = v352;
      v392._object = v342;
      v403._countAndFlagsBits = 40;
      v403._object = 0xE100000000000000;
      sub_1007A23D4(v403);
      v404._countAndFlagsBits = countAndFlagsBits;
      v404._object = object;
      sub_1007A23D4(v404);

      v405._countAndFlagsBits = 1063067739;
      v405._object = 0xE400000000000000;
      sub_1007A23D4(v405);
      sub_1007A23D4(v390);
      v406._countAndFlagsBits = 1063067739;
      v406._object = 0xE400000000000000;
      sub_1007A23D4(v406);
      v407._countAndFlagsBits = v350;
      v407._object = v349;
      sub_1007A23D4(v407);

      v408._countAndFlagsBits = 41;
      v408._object = 0xE100000000000000;
      sub_1007A23D4(v408);
      sub_1007A23D4(v392);
    }

    v335 = v388 + 1;
    v353 = v393 & 0xFFFFFFFFFFFFLL;
    if ((v394 & 0x2000000000000000) != 0)
    {
      v353 = HIBYTE(v394) & 0xF;
    }

    v354 = v353 == 0;
    v355 = 124;
    if (v354)
    {
      v355 = 0;
    }

    v356 = 0xE100000000000000;
    if (v354)
    {
      v356 = 0xE000000000000000;
    }

    v392._countAndFlagsBits = v355;
    v392._object = v356;
    v409._countAndFlagsBits = 40;
    v409._object = 0xE100000000000000;
    sub_1007A23D4(v409);
    sub_1007A23D4(v390);

    v410._countAndFlagsBits = 41;
    v410._object = 0xE100000000000000;
    sub_1007A23D4(v410);
    sub_1007A23D4(v392);
  }

  while (v335 != 32);
  v358 = v372;
  v357 = v373;
  v359 = *(v372 + 56);
  v360 = v374;
  v359(v374, 1, 1, v373);

  v361 = v370;
  sub_100799714();
  v362 = v366;
  sub_1007996F4();
  (*(v358 + 8))(v361, v357);
  sub_100007840(v360, &qword_100AF61E0);
  v359(v362, 0, 1, v357);
  sub_10076607C(v362, v360);
  v363 = v371;
  sub_10076600C(v360, v371);
  result = (*(v358 + 48))(v363, 1, v357);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    swift_arrayDestroy();
    sub_100007840(v360, &qword_100AF61E0);
    (*(v367 + 8))(v389, v368);

    return (*(v358 + 32))(v369, v363, v357);
  }

  return result;
}

uint64_t (*static EditionStringFlatteningService.unwantedTokenRegularExpression.modify())()
{
  if (qword_100AD1BE0 != -1)
  {
    swift_once();
  }

  v0 = sub_1001F1160(&qword_100AF6130);
  sub_100008B98(v0, static EditionStringFlatteningService.unwantedTokenRegularExpression);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_100764840(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_1001F1160(&qword_100AF6130);
  sub_100009A38(v5, a2);
  sub_100008B98(v5, a2);
  return a3();
}

uint64_t sub_1007648A4@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v64 = sub_1001F1160(&qword_100AF6130);
  v59 = *(v64 - 8);
  __chkstk_darwin(v64);
  v60 = &v47 - v1;
  v2 = sub_1001F1160(&qword_100AF61E0);
  __chkstk_darwin(v2 - 8);
  v61 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v47 = &v47 - v5;
  __chkstk_darwin(v6);
  v58 = &v47 - v7;
  v8 = sub_100796CF4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  v15 = sub_1007A21D4();
  v54 = v15;
  v63 = *(v15 - 8);
  v16 = v63;
  __chkstk_darwin(v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v47 - v20;
  sub_1001F1160(&unk_100AE0B30);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_10080EFF0;
  sub_1007A2154();
  sub_100796C94();
  v57 = *(v16 + 16);
  v57(v18, v21, v15);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v56 = ObjCClassFromMetadata;
  v55 = objc_opt_self();
  v23 = [v55 bundleForClass:ObjCClassFromMetadata];
  v53 = *(v9 + 16);
  v49 = v8;
  v50 = v11;
  v53(v11, v14, v8);
  v24 = v18;
  v25 = sub_1007A22D4();
  v27 = v26;
  v28 = *(v9 + 8);
  v51 = v9 + 8;
  v52 = v28;
  v28(v14, v8);
  v29 = *(v63 + 8);
  v63 += 8;
  v30 = v54;
  v29(v21, v54);
  v31 = v62;
  *(v62 + 32) = v25;
  *(v31 + 40) = v27;
  v32 = v31;
  sub_1007A2154();
  sub_100796C94();
  v57(v24, v21, v30);
  v33 = [v55 bundleForClass:v56];
  v34 = v49;
  v53(v50, v14, v49);
  v35 = sub_1007A22D4();
  v37 = v36;
  v52(v14, v34);
  v38 = v21;
  v39 = v58;
  v29(v38, v30);
  v40 = v59;
  *(v32 + 48) = v35;
  *(v32 + 56) = v37;
  v65 = v32;
  sub_1001F1160(&unk_100AD61F0);
  sub_10000B4E4();
  sub_1007A20B4();
  v41 = *(v40 + 56);
  v41(v39, 1, 1, v64);

  v42 = v60;
  sub_100799714();
  v43 = v47;
  v44 = v64;
  sub_1007996F4();
  (*(v40 + 8))(v42, v44);
  sub_100007840(v39, &qword_100AF61E0);
  v41(v43, 0, 1, v44);
  sub_10076607C(v43, v39);
  v45 = v61;
  sub_10076600C(v39, v61);
  result = (*(v40 + 48))(v45, 1, v64);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100007840(v39, &qword_100AF61E0);

    return (*(v40 + 32))(v48, v45, v64);
  }

  return result;
}

uint64_t sub_100764FFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1001F1160(&qword_100AF6130);
  v6 = sub_100008B98(v5, a2);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a3, v6, v5);
}

uint64_t sub_1007650D4(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = sub_1001F1160(&qword_100AF6130);
  v6 = sub_100008B98(v5, a3);
  swift_beginAccess();
  v7 = *(v5 - 8);
  (*(v7 + 24))(v6, a1, v5);
  swift_endAccess();
  return (*(v7 + 8))(a1, v5);
}

uint64_t (*static EditionStringFlatteningService.eligibleForFlatteningExpression.modify())()
{
  if (qword_100AD1BE8 != -1)
  {
    swift_once();
  }

  v0 = sub_1001F1160(&qword_100AF6130);
  sub_100008B98(v0, static EditionStringFlatteningService.eligibleForFlatteningExpression);
  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_100765260(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_100765600(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1007A3734();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1007A37B4() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1007653B0(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = sub_100765698(0xFuLL, a1, a2);
  v8 = sub_100765698(v6, a1, a2);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 >= v8 >> 14)
  {
    if (v11 >= v10)
    {
      return 0;
    }

    v13 = 0;
    while (1)
    {
      while (1)
      {
        if (__OFSUB__(v13--, 1))
        {
          goto LABEL_41;
        }

        if ((a2 & 0x1000000000000000) == 0)
        {
          break;
        }

        result = sub_1007A2364();
        if (v11 >= result >> 14)
        {
          return v13;
        }
      }

      v20 = result >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v29 = a1;
        v30 = a2 & 0xFFFFFFFFFFFFFFLL;
        if ((*(&v28 + v20 + 7) & 0xC0) == 0x80)
        {
          v26 = -2;
          do
          {
            v27 = *(&v29 + v20 + v26--) & 0xC0;
          }

          while (v27 == 128);
          v25 = v26 + 1;
          goto LABEL_36;
        }
      }

      else
      {
        v21 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v28 = result;
          v21 = sub_1007A37B4();
          result = v28;
        }

        v22 = v21 + v20;
        if ((*(v22 - 1) & 0xC0) == 0x80)
        {
          v23 = -2;
          do
          {
            v24 = *(v22 + v23--) & 0xC0;
          }

          while (v24 == 128);
          v25 = v23 + 1;
          goto LABEL_36;
        }
      }

      v25 = -1;
LABEL_36:
      result = (result + (v25 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      if (v11 >= result >> 14)
      {
        return v13;
      }
    }
  }

  for (i = 0; ; ++i)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1007A2354();
    }

    else
    {
      v14 = result >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v29 = a1;
        v30 = a2 & 0xFFFFFFFFFFFFFFLL;
        v16 = *(&v29 + v14);
      }

      else
      {
        v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v15 = sub_1007A37B4();
        }

        v16 = *(v15 + v14);
      }

      v17 = v16;
      v18 = __clz(v16 ^ 0xFF) - 24;
      if (v17 >= 0)
      {
        LOBYTE(v18) = 1;
      }

      result = ((v14 + v18) << 16) | 5;
    }

    if (v11 <= result >> 14)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

unint64_t sub_100765600(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1007658C8(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1007657A4(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_100765698(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_100765730(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1007657A4(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_100765730(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_10063EE28(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1007657A4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1007A37B4();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

unint64_t sub_1007658C8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_10063EE28(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t _s5Books30EditionStringFlatteningServiceC7flatten6stringS2S_tF_0(uint64_t a1, uint64_t a2)
{
  v42 = sub_100796504();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100AF61E8);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5);
  v51 = &v38 - v6;
  v7 = sub_1001F1160(&qword_100AF6130);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  v14 = sub_1001F1160(&qword_100AF61F0);
  __chkstk_darwin(v14 - 8);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v43 = &v38 - v18;
  v44 = a1;
  v54 = a1;
  v55 = a2;
  v19 = qword_100AD1BE8;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_100008B98(v7, static EditionStringFlatteningService.eligibleForFlatteningExpression);
  swift_beginAccess();
  v21 = *(v8 + 16);
  v21(v13, v20, v7);
  sub_1007996D4();
  v48 = v21;
  v49 = v8 + 16;
  v22 = *(v8 + 8);
  v50 = v8 + 8;
  v47 = v22;
  v22(v13, v7);
  v23 = v39;
  v24 = v43;
  v45 = *(v39 + 48);
  v46 = v39 + 48;
  v25 = v45(v43, 1, v5);
  sub_100007840(v24, &qword_100AF61F0);
  if (v25 == 1)
  {

    return v44;
  }

  else
  {
    v27 = v23;
    v28 = (v23 + 32);
    for (i = (v27 + 8); ; (*i)(v34, v5))
    {
      v30 = v48;
      if (qword_100AD1BE0 != -1)
      {
        swift_once();
      }

      v31 = sub_100008B98(v7, static EditionStringFlatteningService.unwantedTokenRegularExpression);
      swift_beginAccess();
      v30(v10, v31, v7);
      v33 = v54;
      v32 = v55;
      sub_1007996D4();
      v47(v10, v7);
      if (v45(v16, 1, v5) == 1)
      {
        break;
      }

      v34 = v51;
      (*v28)(v51, v16, v5);
      sub_100799704();
      sub_1007A2344();
    }

    sub_100007840(v16, &qword_100AF61F0);
    v35 = v42;
    v36 = v40;
    v52 = v33;
    v53 = v32;
    sub_1007964E4();
    sub_100206ECC();
    v26 = sub_1007A3494();
    (*(v41 + 8))(v36, v35);
  }

  return v26;
}

unint64_t sub_100765FB8()
{
  result = qword_100AF6138;
  if (!qword_100AF6138)
  {
    type metadata accessor for EditionStringFlatteningService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6138);
  }

  return result;
}

uint64_t sub_10076600C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AF61E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10076607C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AF61E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007660EC()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AF61F8);
  sub_100008B98(v0, qword_100AF61F8);
  return sub_10079ACD4();
}

uint64_t sub_10076616C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[19] = a4;
  v5[20] = v4;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  return _swift_task_switch(sub_100766194, 0, 0);
}

uint64_t sub_100766194()
{
  sub_1007A26F4();
  *(v0 + 168) = sub_1007A26E4();
  v2 = sub_1007A2694();

  return _swift_task_switch(sub_100766228, v2, v1);
}

uint64_t sub_100766228()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];

  sub_100766574(v4, v3, v1, v2, (v0 + 10));
  v0[22] = v0[10];

  return _swift_task_switch(sub_1007662FC, 0, 0);
}

uint64_t sub_1007662FC()
{
  v1 = v0[22];
  v2 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_10076649C;
  v3 = swift_continuation_init();
  v4 = *(v2 + 16);
  sub_1005829F8(v1);

  isa = sub_1007A2024().super.isa;

  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v0[14] = sub_1007678A0;
  v0[15] = v6;
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100766AF4;
  v0[13] = &unk_100A2FB98;
  v7 = _Block_copy(v0 + 10);

  [v4 reportConcern:isa completion:v7];
  _Block_release(v7);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10076649C()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 8);

  return v2(v1);
}

void sub_100766574(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = [objc_opt_self() sharedInstance];
  sub_1001F1160(&unk_100ADE588);
  inited = swift_initStackObject();
  v11 = inited;
  *(inited + 16) = xmmword_100817C70;
  *(inited + 32) = 1684957547;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x746E656D6D6F63;
  if (a4)
  {
    v12 = a3;
  }

  else
  {
    v12 = 0;
  }

  v13 = 0xE000000000000000;
  if (a4)
  {
    v13 = a4;
  }

  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = v12;
  *(inited + 104) = v13;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x80000001008EA720;

  *(v11 + 144) = [v9 currentChapterIndex];
  *(v11 + 168) = &type metadata for UInt;
  *(v11 + 176) = 0xD000000000000011;
  *(v11 + 184) = 0x80000001008EA740;
  *(v11 + 192) = [v9 currentTrackIndex];
  *(v11 + 216) = &type metadata for UInt;
  *(v11 + 224) = 0xD00000000000001ALL;
  *(v11 + 232) = 0x80000001008EA760;
  [v9 positionInCurrentAudiobook];
  *(v11 + 240) = v14;
  *(v11 + 264) = &type metadata for Double;
  *(v11 + 272) = 0xD000000000000016;
  *(v11 + 280) = 0x80000001008EA780;
  [v9 positionInCurrentTrack];
  *(v11 + 288) = v15;
  *(v11 + 312) = &type metadata for Double;
  *(v11 + 320) = 0xD000000000000018;
  *(v11 + 328) = 0x80000001008EA7A0;
  [v9 positionInCurrentChapter];
  *(v11 + 336) = v16;
  *(v11 + 360) = &type metadata for Double;
  *(v11 + 368) = 1702125938;
  *(v11 + 376) = 0xE400000000000000;
  [v9 playbackRate];
  *(v11 + 384) = v17;
  *(v11 + 408) = &type metadata for Float;
  *(v11 + 416) = 0x656D756C6F76;
  *(v11 + 424) = 0xE600000000000000;
  [v9 volume];
  *(v11 + 432) = v18;
  *(v11 + 456) = &type metadata for Float;
  *(v11 + 464) = 0x49746E65746E6F63;
  *(v11 + 472) = 0xE900000000000064;
  v19 = [v9 currentAudiobook];
  if (v19)
  {
    v20 = [v19 assetID];
    swift_unknownObjectRelease();
    v21 = sub_1007A2254();
    v23 = v22;

    v24 = (v11 + 480);
    *(v11 + 504) = &type metadata for String;
    if (v23)
    {
      *v24 = v21;
      goto LABEL_11;
    }
  }

  else
  {
    v24 = (v11 + 480);
    *(v11 + 504) = &type metadata for String;
  }

  *v24 = 0;
  v23 = 0xE000000000000000;
LABEL_11:
  *(v11 + 488) = v23;
  *(v11 + 512) = 1684632935;
  *(v11 + 520) = 0xE400000000000000;
  v25 = [v9 currentAudiobook];
  if (!v25)
  {
    v30 = (v11 + 528);
    *(v11 + 552) = &type metadata for String;
    goto LABEL_15;
  }

  v26 = [v25 guid];
  swift_unknownObjectRelease();
  v27 = sub_1007A2254();
  v29 = v28;

  v30 = (v11 + 528);
  *(v11 + 552) = &type metadata for String;
  if (!v29)
  {
LABEL_15:
    *v30 = 0;
    v29 = 0xE000000000000000;
    goto LABEL_16;
  }

  *v30 = v27;
LABEL_16:
  *(v11 + 536) = v29;
  v31 = sub_1001EDD94(v11);
  swift_setDeallocating();
  sub_1001F1160(&qword_100AD35D0);
  swift_arrayDestroy();

  *v33 = v31;
}

uint64_t sub_100766950(char a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    if (qword_100AD1BF0 != -1)
    {
      swift_once();
    }

    v5 = sub_10079ACE4();
    sub_100008B98(v5, qword_100AF61F8);
    swift_errorRetain();
    v6 = sub_10079ACC4();
    v7 = sub_1007A29B4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_1007A3B84();
      v12 = sub_1000070F4(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error submitting response with error : %s", v8, 0xCu);
      sub_1000074E0(v9);
    }
  }

  **(*(a3 + 64) + 40) = a1 & 1;
  return swift_continuation_resume();
}

void sub_100766AF4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, v6);
}

uint64_t sub_100766B90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_100766BD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100766C3C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_24;
  }

  v4 = sub_10000E53C(25705, 0xE200000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_100007484(*(a1 + 56) + 32 * v4, v39);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v6 = v31;
  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  v7 = v30;
  v8 = sub_10000E53C(0x6C6562616CLL, 0xE500000000000000);
  if ((v9 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_100007484(*(a1 + 56) + 32 * v8, v39);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v10 = v31;
  if (!*(a1 + 16) || (v11 = v30, v12 = sub_10000E53C(0x6C6562616C627573, 0xE800000000000000), (v13 & 1) == 0) || (sub_100007484(*(a1 + 56) + 32 * v12, v39), (swift_dynamicCast() & 1) == 0))
  {

LABEL_23:

    goto LABEL_24;
  }

  v14 = v31;
  if (!*(a1 + 16) || (v15 = v30, v16 = sub_10000E53C(0x6C6F626D7973, 0xE600000000000000), (v17 & 1) == 0) || (sub_100007484(*(a1 + 56) + 32 * v16, v39), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_23;
  }

  v18 = v31;
  if (!*(a1 + 16) || (v19 = v30, v20 = sub_10000E53C(0x6D6F43776F6C6C61, 0xED000073746E656DLL), (v21 & 1) == 0) || (sub_100007484(*(a1 + 56) + 32 * v20, v39), (swift_dynamicCast() & 1) == 0) || !*(a1 + 16) || (v22 = sub_10000E53C(0x4365726975716572, 0xEF73746E656D6D6FLL), (v23 & 1) == 0))
  {

    goto LABEL_23;
  }

  sub_100007484(*(a1 + 56) + 32 * v22, v39);

  if (swift_dynamicCast())
  {
    if (v30)
    {
      v24 = 2;
    }

    else
    {
      v24 = 0;
    }

    v32 = v30;
    v33 = v31;
    v34 = v30;
    v35 = v31;
    v36 = v30;
    v37 = v31;
    v38 = v24;
    v39[0] = v30;
    v39[1] = v31;
    v39[2] = v30;
    v39[3] = v31;
    v39[4] = v30;
    v39[5] = v31;
    v39[6] = v30;
    v39[7] = v31;
    v40 = v24;
    sub_100767838(&v30, v29);
    sub_100767870(v39);
    goto LABEL_29;
  }

LABEL_24:

  if (qword_100AD1BF0 != -1)
  {
    swift_once();
  }

  v25 = sub_10079ACE4();
  sub_100008B98(v25, qword_100AF61F8);
  v26 = sub_10079ACC4();
  v27 = sub_1007A29B4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Malformed response for reported Concern object", v28, 2u);
  }

  v7 = 0;
  v6 = 0;
  v11 = 0;
  v10 = 0;
  v15 = 0;
  v14 = 0;
  v19 = 0;
  v18 = 0;
  v24 = 0;
LABEL_29:
  *a2 = v7;
  *(a2 + 8) = v6;
  *(a2 + 16) = v11;
  *(a2 + 24) = v10;
  *(a2 + 32) = v15;
  *(a2 + 40) = v14;
  *(a2 + 48) = v19;
  *(a2 + 56) = v18;
  *(a2 + 64) = v24;
}

uint64_t sub_1007671DC()
{
  v1 = [objc_opt_self() defaultBag];
  v2 = [v1 reportConcerns];
  v0[29] = v2;

  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_100767340;
  v3 = swift_continuation_init();
  v0[26] = sub_1001F1160(&qword_100AF62B0);
  v0[19] = _NSConcreteStackBlock;
  v0[20] = 1107296256;
  v0[21] = sub_1004B73D8;
  v0[22] = &unk_100A2FB48;
  v0[23] = v3;
  [v2 valueWithCompletion:v0 + 19];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100767340()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_1007677C0;
  }

  else
  {
    v2 = sub_100767450;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100767450()
{
  v2 = (v0 + 216);
  v1 = *(v0 + 216);

  *(v0 + 216) = 0x736E7265636E6F63;
  *(v0 + 224) = 0xE800000000000000;
  v3 = v1;
  v4 = [v3 __swift_objectForKeyedSubscript:sub_1007A3B04()];

  swift_unknownObjectRelease();
  if (v4)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  *(v0 + 152) = v30;
  *(v0 + 168) = v31;
  if (*(v0 + 176))
  {
    sub_1001F1160(&qword_100ADE598);
    if (swift_dynamicCast())
    {
      v5 = *v2;
      v6 = *(*v2 + 16);
      if (v6)
      {
        v7 = 0;
        v8 = (v0 + 80);
        v9 = v6 - 1;
        v10 = _swiftEmptyArrayStorage;
        do
        {
          v11 = v7;
          while (1)
          {
            if (v11 >= *(v5 + 16))
            {
              __break(1u);
              goto LABEL_30;
            }

            v7 = v11 + 1;

            sub_100766C3C(v12, v8);
            v27 = *(v0 + 112);
            v28 = *(v0 + 128);
            v29 = *(v0 + 144);
            v25 = *v8;
            v26 = *(v0 + 96);
            if (*(v0 + 88))
            {
              break;
            }

            ++v11;
            if (v6 == v7)
            {
              goto LABEL_25;
            }
          }

          v24 = v9;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_10066CC90(0, *(v10 + 2) + 1, 1, v10);
          }

          v14 = *(v10 + 2);
          v13 = *(v10 + 3);
          v15 = v14 + 1;
          if (v14 >= v13 >> 1)
          {
            v17 = sub_10066CC90((v13 > 1), v14 + 1, 1, v10);
            v15 = v14 + 1;
            v10 = v17;
          }

          *(v10 + 2) = v15;
          v16 = &v10[72 * v14];
          *(v16 + 2) = v25;
          v16[96] = v29;
          *(v16 + 4) = v27;
          *(v16 + 5) = v28;
          *(v16 + 3) = v26;
          v9 = v24;
        }

        while (v24 != v11);
      }

      else
      {
        v10 = _swiftEmptyArrayStorage;
      }

LABEL_25:

      goto LABEL_26;
    }
  }

  else
  {
    sub_1000230BC(v0 + 152);
  }

  if (qword_100AD1BF0 != -1)
  {
LABEL_30:
    swift_once();
  }

  v18 = sub_10079ACE4();
  sub_100008B98(v18, qword_100AF61F8);
  v19 = sub_10079ACC4();
  v20 = sub_1007A29B4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Malformed response for reported Concern", v21, 2u);
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_26:

  v22 = *(v0 + 8);

  return v22(v10);
}

uint64_t sub_1007677C0()
{
  v1 = *(v0 + 232);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1007678A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1007678D4()
{
  result = qword_100AF62B8;
  if (!qword_100AF62B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF62B8);
  }

  return result;
}

uint64_t static ReportIssueTypingEvent.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1007A3AB4();
  }
}

Swift::Int sub_100767950()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  return sub_1007A3C44();
}

unint64_t sub_1007679A4()
{
  result = qword_100AF62C0;
  if (!qword_100AF62C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF62C0);
  }

  return result;
}

unint64_t sub_1007679FC()
{
  result = qword_100AF62C8[0];
  if (!qword_100AF62C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100AF62C8);
  }

  return result;
}

uint64_t sub_100767A50()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100767A8C(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_100767AE0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&qword_100AD61C8);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ReportIssueView();
  sub_1000077D8(v1 + *(v10 + 28), v9, &qword_100AD61C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10020B3C8(v9, a1, qword_100AF6430);
  }

  sub_1007A29C4();
  v12 = sub_10079D244();
  sub_10079AB44();

  sub_10079C814();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100767CC8()
{
  v25 = sub_100796CF4();
  v0 = *(v25 - 8);
  __chkstk_darwin(v25);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v23 - v4;
  v24 = sub_1007A21D4();
  v6 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  v12 = sub_1007992C4();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, enum case for BooksAppleAccountFeatureFlag.branding(_:), v12, v14);
  sub_100799144();
  (*(v13 + 8))(v16, v12);
  sub_1007A2154();
  sub_100796C94();
  v17 = v24;
  (*(v6 + 16))(v8, v11, v24);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v20 = v25;
  (*(v0 + 16))(v2, v5, v25);
  v21 = sub_1007A22D4();
  (*(v0 + 8))(v5, v20);
  (*(v6 + 8))(v11, v17);
  return v21;
}

uint64_t sub_100768094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_10079CB24();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_1001F1160(&qword_100AF64E0);
  sub_100768148(a1, a2 + *(v4 + 44));
  v5 = [objc_opt_self() systemGroupedBackgroundColor];
  v6 = sub_10079DEA4();
  v7 = sub_10079D294();
  result = sub_1001F1160(&qword_100AF64A0);
  v9 = a2 + *(result + 36);
  *v9 = v6;
  *(v9 + 8) = v7;
  return result;
}

uint64_t sub_100768148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = sub_10079C874();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F1160(&qword_100AF64E8);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = sub_1001F1160(&qword_100AF64F0);
  v10 = *(v9 - 8);
  v21 = v9;
  v22 = v10;
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v26 = a1;
  sub_10079D274();
  sub_1001F1160(&qword_100AF64F8);
  sub_100005920(&qword_100AF6500, &qword_100AF64F8);
  sub_10079BBD4();
  v13 = sub_10079D294();
  v14 = &v8[*(v6 + 36)];
  *v14 = v13;
  *(v14 + 8) = xmmword_100843EE0;
  *(v14 + 24) = xmmword_100843EE0;
  v14[40] = 0;
  v25 = a1;
  v15 = sub_1001F1160(&qword_100AF6508);
  v16 = sub_10076EE24();
  v17 = sub_100005920(&qword_100AF6528, &qword_100AF6508);
  sub_10079DBF4();
  sub_100007840(v8, &qword_100AF64E8);
  v18 = v23;
  (*(v3 + 104))(v5, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v23);
  v27 = v6;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  swift_getOpaqueTypeConformance2();
  v19 = v21;
  sub_10079DA94();
  (*(v3 + 8))(v5, v18);
  return (*(v22 + 8))(v12, v19);
}

uint64_t sub_1007684CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v49 = a1;
  v65 = a2;
  v2 = sub_1001F1160(&qword_100AF6578);
  __chkstk_darwin(v2 - 8);
  v64 = &v46[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v69 = &v46[-v5];
  v6 = sub_1001F1160(&qword_100AF6580);
  __chkstk_darwin(v6 - 8);
  v68 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v67 = &v46[-v9];
  v66 = sub_10079B704();
  v10 = *(v66 - 8);
  __chkstk_darwin(v66);
  v12 = &v46[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10079B724();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v46[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = *(type metadata accessor for ReportIssueView() + 24);
  sub_1005A2A20(v16);
  sub_10079B714();
  v48 = *(v14 + 8);
  v51 = v13;
  v48(v16, v13);
  v52 = v14 + 8;
  sub_10079B6E4();
  v17 = *(v10 + 8);
  v17(v12, v66);
  v54 = v10 + 8;
  sub_10079E474();
  sub_10079BE54();
  v62 = v73;
  v63 = v71;
  v60 = v76;
  v61 = v75;
  v91 = 1;
  v90 = v72;
  v89 = v74;
  v18 = v49;
  sub_1005A2A20(v16);
  sub_10079B714();
  v19 = v48;
  v48(v16, v13);
  sub_10079B6E4();
  v21 = v20;
  v22 = v66;
  v17(v12, v66);
  v23 = sub_10079CB24();
  v24 = v67;
  *v67 = v23;
  v24[1] = v21;
  *(v24 + 16) = 0;
  v25 = sub_1001F1160(&qword_100AF6588);
  v26 = v18;
  sub_100768C58(v18, v24 + *(v25 + 44));
  sub_10079E474();
  sub_10079BE54();
  v58 = v79;
  v59 = v77;
  v56 = v82;
  v57 = v81;
  v94 = 1;
  v93 = v78;
  v92 = v80;
  v27 = sub_10079CB24();
  v28 = v69;
  *v69 = v27;
  v28[1] = 0;
  *(v28 + 16) = 1;
  sub_1001F1160(&qword_100AF6590);
  sub_10076B644(v26);
  v55 = sub_10079CB24();
  LOBYTE(v83) = 1;
  sub_100769D60(v101);
  memcpy(v95, v101, sizeof(v95));
  memcpy(v96, v101, sizeof(v96));
  sub_1000077D8(v95, v100, &qword_100AF6598);
  sub_100007840(v96, &qword_100AF6598);
  memcpy(&v70[7], v95, 0x148uLL);
  v50 = v83;
  sub_1005A2A20(v16);
  sub_10079B714();
  v19(v16, v51);
  sub_10079B6F4();
  v17(v12, v22);
  sub_10079E474();
  sub_10079BE54();
  v66 = v83;
  v53 = v87;
  v54 = v85;
  v52 = v88;
  v99 = 1;
  v98 = v84;
  v97 = v86;
  LOBYTE(v26) = v91;
  LOBYTE(v19) = v90;
  LOBYTE(v10) = v89;
  v29 = v24;
  v30 = v68;
  sub_1000077D8(v29, v68, &qword_100AF6580);
  LOBYTE(v22) = v94;
  v31 = v93;
  v47 = v92;
  v32 = v64;
  sub_10004C994(v69, v64);
  LODWORD(v48) = v99;
  LODWORD(v49) = v98;
  LODWORD(v51) = v97;
  v33 = v65;
  *v65 = 0;
  *(v33 + 8) = v26;
  v34 = v62;
  v33[2] = v63;
  *(v33 + 24) = v19;
  v33[4] = v34;
  *(v33 + 40) = v10;
  v35 = v60;
  v33[6] = v61;
  v33[7] = v35;
  v36 = v33;
  v37 = sub_1001F1160(&qword_100AF65A0);
  sub_1000077D8(v30, v36 + v37[12], &qword_100AF6580);
  v38 = v36 + v37[16];
  *v38 = 0;
  *(v38 + 8) = v22;
  v39 = v58;
  *(v38 + 16) = v59;
  *(v38 + 24) = v31;
  *(v38 + 32) = v39;
  *(v38 + 40) = v47;
  v40 = v56;
  *(v38 + 48) = v57;
  *(v38 + 56) = v40;
  sub_10004C994(v32, v36 + v37[20]);
  v41 = v37[24];
  v42 = v55;
  v100[0] = v55;
  v100[1] = 0;
  LOBYTE(v30) = v50;
  LOBYTE(v100[2]) = v50;
  memcpy(&v100[2] + 1, v70, 0x14FuLL);
  memcpy(v36 + v41, v100, 0x160uLL);
  v43 = v36 + v37[28];
  *v43 = 0;
  *(v43 + 8) = v48;
  *(v43 + 16) = v66;
  *(v43 + 24) = v49;
  *(v43 + 32) = v54;
  *(v43 + 40) = v51;
  v44 = v52;
  *(v43 + 48) = v53;
  *(v43 + 56) = v44;
  sub_1000077D8(v100, v101, &qword_100AF65A8);
  sub_100007840(v69, &qword_100AF6578);
  sub_100007840(v67, &qword_100AF6580);
  v101[0] = v42;
  v101[1] = 0;
  LOBYTE(v101[2]) = v30;
  memcpy(&v101[2] + 1, v70, 0x14FuLL);
  sub_100007840(v101, &qword_100AF65A8);
  sub_100007840(v32, &qword_100AF6578);
  return sub_100007840(v68, &qword_100AF6580);
}

uint64_t sub_100768C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v74 = a2;
  v2 = sub_100796CF4();
  v70 = *(v2 - 8);
  v71 = v2;
  __chkstk_darwin(v2);
  v69 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v67 = &v64 - v5;
  v68 = sub_1007A21D4();
  v65 = *(v68 - 8);
  v6 = v65;
  __chkstk_darwin(v68);
  v66 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v64 - v9;
  v11 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v64 - v12;
  v14 = sub_1001F1160(&qword_100AF6728);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v75 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v64 - v18;
  v20 = sub_10079DF24();
  v21 = (v19 + *(sub_1001F1160(&qword_100ADBD70) + 36));
  v22 = *(sub_1001F1160(&qword_100AEE3C0) + 28);
  v23 = enum case for Image.Scale.large(_:);
  v24 = sub_10079DF84();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = swift_getKeyPath();
  v72 = v19;
  *v19 = v20;
  v25 = sub_10079D3A4();
  (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
  v26 = sub_10079D424();
  sub_100007840(v13, &unk_100AD1FC0);
  KeyPath = swift_getKeyPath();
  v28 = (v19 + *(sub_1001F1160(&qword_100AF6730) + 36));
  *v28 = KeyPath;
  v28[1] = v26;
  v29 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  v30 = swift_getKeyPath();
  v31 = (v19 + *(v15 + 44));
  *v31 = v30;
  v31[1] = v29;
  sub_1007A2154();
  v32 = v67;
  sub_100796C94();
  v33 = v68;
  (*(v6 + 16))(v66, v10, v68);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v35 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v36 = v70;
  v37 = v71;
  (*(v70 + 16))(v69, v32, v71);
  v38 = sub_1007A22D4();
  v40 = v39;
  (*(v36 + 8))(v32, v37);
  (*(v65 + 8))(v10, v33);
  *&v95 = v38;
  *(&v95 + 1) = v40;
  sub_100206ECC();
  v41 = sub_10079D5D4();
  v43 = v42;
  LOBYTE(v40) = v44;
  sub_10079D444();
  sub_10079D3F4();
  sub_10079D464();

  v45 = sub_10079D5A4();
  v47 = v46;
  LOBYTE(v19) = v48;

  sub_10020B430(v41, v43, v40 & 1);

  sub_10079DE34();
  v49 = sub_10079D564();
  v51 = v50;
  LODWORD(v70) = v52;
  v71 = v53;

  sub_10020B430(v45, v47, v19 & 1);

  v54 = sub_10079C8F4();
  v77 = 1;
  sub_100769578(&v95);
  v90 = *&v96[176];
  v91 = *&v96[192];
  v92 = *&v96[208];
  v86 = *&v96[112];
  v87 = *&v96[128];
  v88 = *&v96[144];
  v89 = *&v96[160];
  v82 = *&v96[48];
  v83 = *&v96[64];
  v84 = *&v96[80];
  v85 = *&v96[96];
  v78 = v95;
  v79 = *v96;
  v80 = *&v96[16];
  v81 = *&v96[32];
  v93[12] = *&v96[176];
  v93[13] = *&v96[192];
  v93[14] = *&v96[208];
  v93[8] = *&v96[112];
  v93[9] = *&v96[128];
  v93[10] = *&v96[144];
  v93[11] = *&v96[160];
  v93[4] = *&v96[48];
  v93[5] = *&v96[64];
  v93[6] = *&v96[80];
  v93[7] = *&v96[96];
  v93[0] = v95;
  v93[1] = *v96;
  v93[2] = *&v96[16];
  v93[3] = *&v96[32];
  sub_1000077D8(&v78, v94, &qword_100AF65B0);
  sub_100007840(v93, &qword_100AF65B0);
  *&v76[183] = v89;
  *&v76[199] = v90;
  *&v76[215] = v91;
  *&v76[231] = v92;
  *&v76[119] = v85;
  *&v76[135] = v86;
  *&v76[151] = v87;
  *&v76[167] = v88;
  *&v76[55] = v81;
  *&v76[71] = v82;
  *&v76[87] = v83;
  *&v76[103] = v84;
  *&v76[7] = v78;
  *&v76[23] = v79;
  *&v76[39] = v80;
  LODWORD(v73) = v77;
  v55 = v72;
  v56 = v75;
  sub_1000077D8(v72, v75, &qword_100AF6728);
  v57 = v56;
  v58 = v74;
  sub_1000077D8(v57, v74, &qword_100AF6728);
  v59 = sub_1001F1160(&unk_100AF6738);
  v60 = v58 + *(v59 + 48);
  *v60 = v49;
  *(v60 + 8) = v51;
  v61 = v51;
  LOBYTE(v51) = v70 & 1;
  *(v60 + 16) = v70 & 1;
  *(v60 + 24) = v71;
  v62 = *(v59 + 64);
  *(&v94[4] + 1) = *&v76[16];
  *(&v94[2] + 1) = *v76;
  *(&v94[26] + 1) = *&v76[192];
  *(&v94[28] + 1) = *&v76[208];
  *(&v94[30] + 1) = *&v76[224];
  *(&v94[18] + 1) = *&v76[128];
  *(&v94[20] + 1) = *&v76[144];
  *(&v94[22] + 1) = *&v76[160];
  *(&v94[24] + 1) = *&v76[176];
  *(&v94[10] + 1) = *&v76[64];
  *(&v94[12] + 1) = *&v76[80];
  *(&v94[14] + 1) = *&v76[96];
  *(&v94[16] + 1) = *&v76[112];
  *(&v94[6] + 1) = *&v76[32];
  v94[0] = v54;
  v94[1] = 0;
  LOBYTE(v40) = v73;
  LOBYTE(v94[2]) = v73;
  v94[32] = *&v76[239];
  *(&v94[8] + 1) = *&v76[48];
  memcpy((v58 + v62), v94, 0x108uLL);
  sub_1001F1894(v49, v61, v51);

  sub_1000077D8(v94, &v95, &unk_100AF65B8);
  sub_100007840(v55, &qword_100AF6728);
  *&v96[193] = *&v76[192];
  *&v96[209] = *&v76[208];
  v97[0] = *&v76[224];
  *&v96[129] = *&v76[128];
  *&v96[145] = *&v76[144];
  *&v96[161] = *&v76[160];
  *&v96[177] = *&v76[176];
  *&v96[65] = *&v76[64];
  *&v96[81] = *&v76[80];
  *&v96[97] = *&v76[96];
  *&v96[113] = *&v76[112];
  *&v96[1] = *v76;
  *&v96[17] = *&v76[16];
  *&v96[33] = *&v76[32];
  v95 = v54;
  v96[0] = v40;
  *(v97 + 15) = *&v76[239];
  *&v96[49] = *&v76[48];
  sub_100007840(&v95, &unk_100AF65B8);
  sub_10020B430(v49, v61, v51);

  return sub_100007840(v75, &qword_100AF6728);
}

uint64_t sub_100769578@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v2 - 8);
  v80 = &v65 - v3;
  v4 = sub_10079D4D4();
  v74 = *(v4 - 8);
  v75 = v4;
  __chkstk_darwin(v4);
  v73 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100796CF4();
  v71 = *(v6 - 8);
  v72 = v6;
  __chkstk_darwin(v6);
  v70 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v68 = &v65 - v9;
  v69 = sub_1007A21D4();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v65 - v12;
  v14 = sub_10079B704();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10079B724();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ReportIssueView();
  sub_1005A2A20(v21);
  sub_10079B714();
  (*(v19 + 8))(v21, v18);
  sub_10079B6B4();
  (*(v15 + 8))(v17, v14);
  sub_10079E474();
  sub_10079BE54();
  v78 = v120;
  v79 = v118;
  v76 = v123;
  v77 = v122;
  v126 = 1;
  v125 = v119;
  v124 = v121;
  v65 = v13;
  sub_1007A2154();
  v22 = v68;
  sub_100796C94();
  v23 = v67;
  v24 = v69;
  (*(v67 + 16))(v66, v13, v69);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v27 = v71;
  v28 = v72;
  (*(v71 + 16))(v70, v22, v72);
  v29 = sub_1007A22D4();
  v31 = v30;
  (*(v27 + 8))(v22, v28);
  (*(v23 + 8))(v65, v24);
  v100 = v29;
  v101 = v31;
  sub_100206ECC();
  v32 = sub_10079D5D4();
  v34 = v33;
  LOBYTE(v28) = v35;
  v72 = v36;
  sub_10079E484();
  sub_10079C414();
  LOBYTE(v27) = v28 & 1;
  v117 = v28 & 1;
  v37 = v73;
  v38 = v74;
  v39 = v75;
  (*(v74 + 104))(v73, enum case for Font.TextStyle.footnote(_:), v75);
  v40 = sub_10079D3A4();
  v41 = v80;
  (*(*(v40 - 8) + 56))(v80, 1, 1, v40);
  sub_10079D434();
  sub_100007840(v41, &unk_100AD1FC0);
  (*(v38 + 8))(v37, v39);
  v42 = sub_10079D4E4();

  KeyPath = swift_getKeyPath();
  v44 = _s5Books11ChromeStyleC20_themeSecondaryLabel33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI5ColorVGvpfi_0();
  v45 = swift_getKeyPath();
  *&v89 = v32;
  *(&v89 + 1) = v34;
  v46 = v34;
  LOBYTE(v90) = v27;
  *(&v90 + 1) = *v116;
  DWORD1(v90) = *&v116[3];
  v47 = v72;
  *(&v90 + 1) = v72;
  v48 = v86;
  v49 = v87;
  v95 = v86;
  v96 = v87;
  v50 = v88;
  v97 = v88;
  v51 = v82;
  v52 = v83;
  v91 = v82;
  v92 = v83;
  v54 = v84;
  v53 = v85;
  v93 = v84;
  v94 = v85;
  *&v98 = KeyPath;
  *(&v98 + 1) = v42;
  *&v99 = v45;
  *(&v99 + 1) = v44;
  v55 = v87;
  *(a1 + 160) = v86;
  *(a1 + 176) = v55;
  v56 = v94;
  *(a1 + 128) = v93;
  *(a1 + 144) = v56;
  v57 = v90;
  *(a1 + 64) = v89;
  *(a1 + 80) = v57;
  v58 = v92;
  *(a1 + 96) = v91;
  *(a1 + 112) = v58;
  v59 = v99;
  *(a1 + 208) = v98;
  *(a1 + 224) = v59;
  *(a1 + 192) = v97;
  v109 = v48;
  v110 = v49;
  v111 = v50;
  v105 = v51;
  v106 = v52;
  v60 = v126;
  v61 = v125;
  v62 = v124;
  *a1 = 0;
  *(a1 + 8) = v60;
  *(a1 + 16) = v79;
  *(a1 + 24) = v61;
  v63 = v77;
  *(a1 + 32) = v78;
  *(a1 + 40) = v62;
  *(a1 + 48) = v63;
  *(a1 + 56) = v76;
  v100 = v32;
  v101 = v46;
  v102 = v27;
  *v103 = *v116;
  *&v103[3] = *&v116[3];
  v104 = v47;
  v107 = v54;
  v108 = v53;
  v112 = KeyPath;
  v113 = v42;
  v114 = v45;
  v115 = v44;
  sub_1000077D8(&v89, &v81, &qword_100AF65C8);
  return sub_100007840(&v100, &qword_100AF65C8);
}

uint64_t sub_100769D60@<X0>(void *a1@<X8>)
{
  v19 = a1;
  v1 = sub_10079B704();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = sub_10079B724();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for ReportIssueView();
  sub_1005A2A20(v8);
  sub_10079B714();
  (*(v6 + 8))(v8, v5);
  sub_10079B6C4();
  (*(v2 + 8))(v4, v1);
  sub_10079E474();
  sub_10079BE54();
  v9 = v22;
  v10 = v24;
  v11 = v26;
  v12 = v27;
  v30 = 1;
  v29 = v23;
  v28 = v25;
  v13 = sub_10079C8F4();
  v20[0] = 1;
  sub_10076A294(&v48);
  v43 = *&v49[176];
  v44 = *&v49[192];
  v39 = *&v49[112];
  v40 = *&v49[128];
  v41 = *&v49[144];
  v42 = *&v49[160];
  v35 = *&v49[48];
  v36 = *&v49[64];
  v37 = *&v49[80];
  v38 = *&v49[96];
  v31 = v48;
  v32 = *v49;
  v33 = *&v49[16];
  v34 = *&v49[32];
  v46[11] = *&v49[160];
  v46[12] = *&v49[176];
  v46[13] = *&v49[192];
  v46[14] = *&v49[208];
  v46[7] = *&v49[96];
  v46[8] = *&v49[112];
  v46[9] = *&v49[128];
  v46[10] = *&v49[144];
  v46[3] = *&v49[32];
  v46[4] = *&v49[48];
  v46[5] = *&v49[64];
  v46[6] = *&v49[80];
  v45 = *&v49[208];
  v46[0] = v48;
  v46[1] = *v49;
  v46[2] = *&v49[16];
  sub_1000077D8(&v31, v47, &qword_100AF65B0);
  sub_100007840(v46, &qword_100AF65B0);
  *&v21[183] = v42;
  *&v21[199] = v43;
  *&v21[215] = v44;
  *&v21[231] = v45;
  *&v21[119] = v38;
  *&v21[135] = v39;
  *&v21[151] = v40;
  *&v21[167] = v41;
  *&v21[55] = v34;
  *&v21[71] = v35;
  *&v21[87] = v36;
  *&v21[103] = v37;
  *&v21[7] = v31;
  *&v21[23] = v32;
  *&v21[39] = v33;
  *(&v47[26] + 1) = *&v21[192];
  *(&v47[28] + 1) = *&v21[208];
  *(&v47[30] + 1) = *&v21[224];
  *(&v47[18] + 1) = *&v21[128];
  *(&v47[20] + 1) = *&v21[144];
  *(&v47[22] + 1) = *&v21[160];
  *(&v47[24] + 1) = *&v21[176];
  *(&v47[10] + 1) = *&v21[64];
  *(&v47[12] + 1) = *&v21[80];
  *(&v47[14] + 1) = *&v21[96];
  *(&v47[16] + 1) = *&v21[112];
  *(&v47[2] + 1) = *v21;
  *(&v47[4] + 1) = *&v21[16];
  *(&v47[6] + 1) = *&v21[32];
  LOBYTE(v2) = v20[0];
  v14 = v30;
  v15 = v29;
  v16 = v28;
  v47[0] = v13;
  v47[1] = 0;
  LOBYTE(v47[2]) = v20[0];
  v47[32] = *(&v45 + 1);
  *(&v47[8] + 1) = *&v21[48];
  v17 = v19;
  *v19 = 0;
  *(v17 + 8) = v14;
  v17[2] = v9;
  *(v17 + 24) = v15;
  v17[4] = v10;
  *(v17 + 40) = v16;
  v17[6] = v11;
  v17[7] = v12;
  memcpy(v17 + 8, v47, 0x108uLL);
  *&v49[193] = *&v21[192];
  *&v49[209] = *&v21[208];
  v50[0] = *&v21[224];
  *&v49[129] = *&v21[128];
  *&v49[145] = *&v21[144];
  *&v49[161] = *&v21[160];
  *&v49[177] = *&v21[176];
  *&v49[65] = *&v21[64];
  *&v49[81] = *&v21[80];
  *&v49[97] = *&v21[96];
  *&v49[113] = *&v21[112];
  *&v49[1] = *v21;
  *&v49[17] = *&v21[16];
  *&v49[33] = *&v21[32];
  v48 = v13;
  v49[0] = v2;
  *(v50 + 15) = *&v21[239];
  *&v49[49] = *&v21[48];
  sub_1000077D8(v47, v20, &unk_100AF65B8);
  return sub_100007840(&v48, &unk_100AF65B8);
}

uint64_t sub_10076A294@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v2 - 8);
  v55 = &v50 - v3;
  v54 = sub_10079D4D4();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10079B704();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10079B724();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ReportIssueView();
  sub_1005A2A20(v12);
  sub_10079B714();
  (*(v10 + 8))(v12, v9);
  sub_10079B6B4();
  (*(v6 + 8))(v8, v5);
  sub_10079E474();
  sub_10079BE54();
  v59 = v99;
  v58 = v101;
  v56 = v97;
  v57 = v102;
  v105 = 1;
  v104 = v98;
  v103 = v100;
  v80 = sub_100767CC8();
  v81 = v13;
  sub_100206ECC();
  v14 = sub_10079D5D4();
  v50 = v15;
  LOBYTE(v5) = v16;
  v53 = v17;
  sub_10079E484();
  sub_10079C414();
  v18 = v5 & 1;
  v96 = v5 & 1;
  v19 = v51;
  v20 = v52;
  v21 = v54;
  (*(v52 + 104))(v51, enum case for Font.TextStyle.footnote(_:), v54);
  v22 = sub_10079D3A4();
  v23 = v55;
  (*(*(v22 - 8) + 56))(v55, 1, 1, v22);
  v24 = v23;
  v25 = sub_10079D434();
  sub_100007840(v24, &unk_100AD1FC0);
  (*(v20 + 8))(v19, v21);
  KeyPath = swift_getKeyPath();
  v27 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  v28 = swift_getKeyPath();
  v29 = v50;
  *&v69 = v14;
  *(&v69 + 1) = v50;
  LOBYTE(v70) = v18;
  *(&v70 + 1) = *v68;
  DWORD1(v70) = *&v68[3];
  v74 = v64;
  v30 = v64;
  v31 = v65;
  v75 = v65;
  v76 = v66;
  v32 = v66;
  v33 = v67;
  v77 = v67;
  v71 = v61;
  v34 = v61;
  v35 = v62;
  v72 = v62;
  v36 = v63;
  v73 = v63;
  v37 = v53;
  *(&v70 + 1) = v53;
  *&v78 = KeyPath;
  *(&v78 + 1) = v25;
  *&v79 = v28;
  *(&v79 + 1) = v27;
  v38 = v67;
  v39 = v66;
  *(a1 + 160) = v65;
  *(a1 + 176) = v39;
  v40 = v74;
  *(a1 + 128) = v73;
  *(a1 + 144) = v40;
  v41 = v72;
  v42 = v70;
  *(a1 + 64) = v69;
  *(a1 + 80) = v42;
  *(a1 + 96) = v71;
  *(a1 + 112) = v41;
  v43 = v79;
  v44 = v78;
  *(a1 + 192) = v38;
  *(a1 + 208) = v44;
  *(a1 + 224) = v43;
  v89 = v31;
  v90 = v32;
  v91 = v33;
  v85 = v34;
  v86 = v35;
  v45 = v105;
  v46 = v104;
  v47 = v103;
  *a1 = 0;
  *(a1 + 8) = v45;
  *(a1 + 16) = v56;
  *(a1 + 24) = v46;
  v48 = v58;
  *(a1 + 32) = v59;
  *(a1 + 40) = v47;
  *(a1 + 48) = v48;
  *(a1 + 56) = v57;
  v80 = v14;
  v81 = v29;
  v82 = v18;
  *v83 = *v68;
  *&v83[3] = *&v68[3];
  v87 = v36;
  v88 = v30;
  v84 = v37;
  v92 = KeyPath;
  v93 = v25;
  v94 = v28;
  v95 = v27;
  sub_1000077D8(&v69, &v60, &qword_100AF65C8);
  return sub_100007840(&v80, &qword_100AF65C8);
}

uint64_t sub_10076A838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v37 = a2;
  v36 = sub_1001F1160(&qword_100AF6530);
  __chkstk_darwin(v36);
  v34 = &v28 - v3;
  v35 = sub_1001F1160(&qword_100AF6538);
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v28 - v4;
  v5 = sub_10079CDD4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = sub_1001F1160(&qword_100AF6540);
  v30 = *(v12 - 8);
  v31 = v12;
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  sub_10079CDA4();
  v39 = a1;
  v15 = *(v6 + 16);
  v15(v8, v11, v5);
  v28 = sub_1001F1160(&qword_100AF6548);
  v16 = sub_1001F1234(&unk_100ADB8A0);
  v17 = sub_100005920(&unk_100AF45E0, &unk_100ADB8A0);
  v40 = v16;
  v41 = v17;
  swift_getOpaqueTypeConformance2();
  sub_10079BD04();
  v18 = *(v6 + 8);
  v18(v11, v5);
  sub_10079CDB4();
  v38 = v29;
  v15(v8, v11, v5);
  sub_1001F1160(&qword_100AF6550);
  sub_10076EEEC();
  v19 = v32;
  sub_10079BD04();
  v18(v11, v5);
  v20 = *(v36 + 48);
  v22 = v30;
  v21 = v31;
  v23 = v34;
  (*(v30 + 16))(v34, v14, v31);
  v24 = v33;
  v25 = &v23[v20];
  v26 = v35;
  (*(v33 + 16))(v25, v19, v35);
  sub_10079CB84();
  (*(v24 + 8))(v19, v26);
  return (*(v22 + 8))(v14, v21);
}

uint64_t sub_10076ACAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v18 = sub_10079C314();
  v3 = *(v18 - 8);
  __chkstk_darwin(v18);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ReportIssueView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_10079BB84();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1001F1160(&unk_100ADB8A0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - v12;
  sub_10079BB64();
  sub_1005DF65C(a1, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_1005DF5F8(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_10079E064();
  sub_10079C2F4();
  sub_100005920(&unk_100AF45E0, &unk_100ADB8A0);
  sub_10079D844();
  (*(v3 + 8))(v5, v18);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_10076AF8C()
{
  v0 = sub_10079C3B4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1001F1160(qword_100AF6430);
  __chkstk_darwin(v1);
  v3 = &v5 - v2;
  sub_100767AE0(&v5 - v2);
  sub_10079E1C4();
  sub_10079C3A4();
  sub_10079E1D4();
  return sub_100007840(v3, qword_100AF6430);
}

uint64_t sub_10076B0A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v47 = a2;
  v48 = sub_10079C314();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ReportIssueView();
  v43 = *(v3 - 8);
  v42 = *(v43 + 64);
  __chkstk_darwin(v3 - 8);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100796CF4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  v12 = sub_1007A21D4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  v19 = sub_1001F1160(&qword_100ADB860);
  v20 = *(v19 - 8);
  v39 = v19;
  v40 = v20;
  __chkstk_darwin(v19);
  v22 = &v38 - v21;
  sub_1007A2154();
  sub_100796C94();
  (*(v13 + 16))(v15, v18, v12);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v6 + 16))(v8, v11, v5);
  v25 = sub_1007A22D4();
  v27 = v26;
  (*(v6 + 8))(v11, v5);
  (*(v13 + 8))(v18, v12);
  v49 = v25;
  v50 = v27;
  v28 = v41;
  sub_1005DF65C(v44, v41);
  v29 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v30 = swift_allocObject();
  sub_1005DF5F8(v28, v30 + v29);
  sub_100206ECC();
  sub_10079E084();
  v31 = v45;
  sub_10079C304();
  sub_100005920(&qword_100AEE360, &qword_100ADB860);
  v32 = v47;
  v33 = v39;
  sub_10079D844();
  (*(v46 + 8))(v31, v48);
  (*(v40 + 8))(v22, v33);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  LOBYTE(v11) = v49;
  KeyPath = swift_getKeyPath();
  v35 = swift_allocObject();
  *(v35 + 16) = v11;
  result = sub_1001F1160(&qword_100AF6550);
  v37 = (v32 + *(result + 36));
  *v37 = KeyPath;
  v37[1] = sub_100258B0C;
  v37[2] = v35;
  return result;
}

uint64_t sub_10076B644(uint64_t a1)
{
  v2 = sub_10079CE14();
  __chkstk_darwin(v2);
  v3 = sub_10079E374();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1001F1160(&unk_100AF65D0);
  sub_10079E384();
  *(swift_allocObject() + 16) = xmmword_10080B690;
  *v6 = xmmword_100826830;
  (*(v4 + 104))(v6, enum case for GridItem.Size.flexible(_:), v3);
  sub_10079E394();
  v9 = a1;
  sub_10079CB24();
  v10 = 0;
  sub_10076F8C8(&unk_100AE4780, &type metadata accessor for PinnedScrollableViews);
  sub_1007A3D24();
  sub_1001F1160(&qword_100AF65E0);
  sub_10076F480();
  return sub_10079E554();
}

uint64_t sub_10076B8E4(uint64_t a1)
{
  v2 = type metadata accessor for ReportIssueView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  swift_getKeyPath();
  sub_1005DF65C(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1005DF5F8(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_1001F1160(&qword_100AF6600);
  sub_1001F1160(&qword_100AF65F8);
  sub_100005920(&qword_100AF6608, &qword_100AF6600);
  sub_100005920(&qword_100AF65F0, &qword_100AF65F8);
  return sub_10079E264();
}

uint64_t sub_10076BB14@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v52 = a3;
  v51 = sub_10079B704();
  v47 = *(v51 - 8);
  __chkstk_darwin(v51);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10079B724();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10079C394();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ReportIssueView();
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  __chkstk_darwin(v9);
  v11 = sub_1001F1160(&qword_100AF6610);
  v40 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  v46 = sub_1001F1160(&qword_100AF6618);
  v43 = *(v46 - 8);
  __chkstk_darwin(v46);
  v42 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v18 = a1[3];
  v63 = a1[2];
  v64 = v18;
  v65 = a1[4];
  v66 = *(a1 + 10);
  v19 = a1[1];
  v61 = *a1;
  v62 = v19;
  sub_1005DF65C(a2, &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v21 = swift_allocObject();
  sub_1005DF5F8(&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v22 = v21 + ((v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = v64;
  *(v22 + 32) = v63;
  *(v22 + 48) = v23;
  *(v22 + 64) = v65;
  *(v22 + 80) = v66;
  v24 = v62;
  *v22 = v61;
  *(v22 + 16) = v24;
  v53 = a2;
  v54 = &v61;
  sub_10076F644(&v61, &v55);
  sub_1001F1160(&qword_100AF6620);
  sub_10076F6A0();
  sub_10079E054();
  sub_10079C384();
  sub_100005920(&unk_100AF6670, &qword_100AF6610);
  sub_10076F8C8(&qword_100AD6CF0, &type metadata accessor for PlainButtonStyle);
  v38 = v17;
  v25 = v44;
  sub_10079D6A4();
  (*(v45 + 8))(v8, v25);
  (*(v40 + 8))(v13, v11);
  v26 = v48;
  sub_1005A2A20(v48);
  v27 = v41;
  sub_10079B714();
  (*(v49 + 8))(v26, v50);
  sub_10079B6D4();
  (*(v47 + 8))(v27, v51);
  sub_10079E474();
  sub_10079BE54();
  v51 = v55;
  v50 = v57;
  v49 = v59;
  v48 = v60;
  v69 = 1;
  v68 = v56;
  v67 = v58;
  v28 = v43;
  v29 = *(v43 + 16);
  v30 = v42;
  v31 = v46;
  v29(v42, v17, v46);
  LOBYTE(v10) = v69;
  LOBYTE(v17) = v68;
  LOBYTE(v11) = v67;
  v32 = v52;
  v29(v52, v30, v31);
  v33 = &v32[*(sub_1001F1160(&qword_100AF6680) + 48)];
  *v33 = 0;
  v33[8] = v10;
  *(v33 + 2) = v51;
  v33[24] = v17;
  *(v33 + 4) = v50;
  v33[40] = v11;
  v34 = v48;
  *(v33 + 6) = v49;
  *(v33 + 7) = v34;
  v35 = *(v28 + 8);
  v35(v38, v31);
  return (v35)(v30, v31);
}

uint64_t sub_10076C294()
{

  sub_10079B8C4();
}

uint64_t sub_10076C2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10079B694();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v51 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10079B704();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v49 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v47 - v12;
  v14 = sub_10079B724();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v47 - v19;
  *a3 = sub_10079CB24();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v48 = a3;
  v21 = sub_1001F1160(&qword_100AF6688);
  sub_10076C76C(a1, a2, (a3 + *(v21 + 44)));
  type metadata accessor for ReportIssueView();
  v50 = v20;
  sub_1005A2A20(v20);
  sub_10079B714();
  v22 = *(v15 + 8);
  v22(v20, v14);
  sub_10079B6B4();
  v24 = v23;
  v25 = v9 + 8;
  v26 = *(v9 + 8);
  v47[1] = v25;
  v27 = v13;
  v28 = v8;
  v26(v27, v8);
  sub_1005A2A20(v17);
  v29 = v49;
  sub_10079B714();
  v22(v17, v14);
  sub_10079B6B4();
  v31 = v30;
  v26(v29, v28);
  LOBYTE(a2) = sub_10079D294();
  v32 = sub_1001F1160(&qword_100AF6648);
  v33 = v48;
  v34 = v48 + *(v32 + 36);
  *v34 = a2;
  *(v34 + 8) = v24;
  *(v34 + 16) = 0;
  *(v34 + 24) = v31;
  *(v34 + 32) = 0x4030000000000000;
  *(v34 + 40) = 0;
  v35 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v36 = sub_10079DEA4();
  LOBYTE(v17) = sub_10079D294();
  v37 = v33 + *(sub_1001F1160(&qword_100AF6638) + 36);
  *v37 = v36;
  *(v37 + 8) = v17;
  v38 = v50;
  sub_1005A2A20(v50);
  v39 = v51;
  sub_10079B6A4();
  v22(v38, v14);
  sub_10079B684();
  v41 = v40;
  (*(v52 + 8))(v39, v53);
  v42 = (v33 + *(sub_1001F1160(&qword_100AF6620) + 36));
  v43 = *(sub_10079C3D4() + 20);
  v44 = enum case for RoundedCornerStyle.continuous(_:);
  v45 = sub_10079C9E4();
  (*(*(v45 - 8) + 104))(&v42[v43], v44, v45);
  *v42 = v41;
  *(v42 + 1) = v41;
  result = sub_1001F1160(&qword_100AD97F8);
  *&v42[*(result + 36)] = 256;
  return result;
}

uint64_t sub_10076C76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v48 = a3;
  v5 = sub_10079B704();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10079B724();
  v41 = *(v7 - 8);
  v42 = v7;
  __chkstk_darwin(v7);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F1160(&qword_100AF6690);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - v11;
  v13 = sub_1001F1160(&qword_100AF6698);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  v47 = sub_10079CB24();
  v52 = 0;
  sub_10076CD04(a2, v50);
  memcpy(v53, v50, 0x1B1uLL);
  memcpy(v54, v50, 0x1B1uLL);
  sub_1000077D8(v53, v49, &qword_100AF66A0);
  sub_100007840(v54, &qword_100AF66A0);
  memcpy(&v51[7], v53, 0x1B1uLL);
  v46 = v52;
  if (*(a2 + 64))
  {
    v38 = a1;
    v39 = v9;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    if (v50[1])
    {
      if (*a2 == v50[0] && v50[1] == *(a2 + 8))
      {

        v19 = v38;
LABEL_8:
        v22 = *(a2 + 72);
        v23 = *(a2 + 80);
        *v12 = sub_10079CB24();
        *(v12 + 1) = 0;
        v12[16] = 1;
        v24 = sub_1001F1160(&qword_100AF66B8);
        sub_10076DB64(v22, v23, v19, &v12[*(v24 + 44)]);
        LOBYTE(v23) = sub_10079D2C4();
        type metadata accessor for ReportIssueView();
        v25 = v40;
        sub_1005A2A20(v40);
        v26 = v43;
        sub_10079B714();
        (*(v41 + 8))(v25, v42);
        sub_10079B6B4();
        (*(v44 + 8))(v26, v45);
        sub_10079BBA4();
        v9 = v39;
        v27 = &v12[*(v39 + 36)];
        *v27 = v23;
        *(v27 + 1) = v28;
        *(v27 + 2) = v29;
        *(v27 + 3) = v30;
        *(v27 + 4) = v31;
        v27[40] = 0;
        sub_10020B3C8(v12, v18, &qword_100AF6690);
        v20 = 0;
        goto LABEL_10;
      }

      v21 = sub_1007A3AB4();

      v19 = v38;
      if (v21)
      {
        goto LABEL_8;
      }
    }

    v20 = 1;
    v9 = v39;
    goto LABEL_10;
  }

  v20 = 1;
LABEL_10:
  (*(v10 + 56))(v18, v20, 1, v9);
  sub_1000077D8(v18, v15, &qword_100AF6698);
  v32 = v47;
  v49[0] = v47;
  v49[1] = 0x4010000000000000;
  v33 = v18;
  v34 = v46;
  LOBYTE(v49[2]) = v46;
  memcpy(&v49[2] + 1, v51, 0x1B8uLL);
  v35 = v48;
  memcpy(v48, v49, 0x1C9uLL);
  v36 = sub_1001F1160(&qword_100AF66A8);
  sub_1000077D8(v15, v35 + *(v36 + 48), &qword_100AF6698);
  sub_1000077D8(v49, v50, &qword_100AF66B0);
  sub_100007840(v33, &qword_100AF6698);
  sub_100007840(v15, &qword_100AF6698);
  v50[0] = v32;
  v50[1] = 0x4010000000000000;
  LOBYTE(v50[2]) = v34;
  memcpy(&v50[2] + 1, v51, 0x1B8uLL);
  return sub_100007840(v50, &qword_100AF66B0);
}

uint64_t sub_10076CD04@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_10079C8F4();
  LOBYTE(v23) = 1;
  sub_10076D0A8(a1, __src);
  memcpy(__dst, __src, 0x111uLL);
  memcpy(v34, __src, 0x111uLL);
  sub_1000077D8(__dst, v11, &unk_100AF66E0);
  sub_100007840(v34, &unk_100AF66E0);
  memcpy(&v32[7], __dst, 0x111uLL);
  v5 = a1[5];
  if ((v5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v6 = a1[4] & 0xFFFFFFFFFFFFLL;
  }

  v7 = v23;
  if (v6)
  {
    v8 = sub_10079C8F4();
    LOBYTE(v12[0]) = 1;
    sub_10076D954(a1, __src);
    v17 = __src[3];
    v18 = __src[4];
    v19[0] = __src[5];
    *(v19 + 9) = *(&__src[5] + 9);
    v14 = __src[0];
    v15 = __src[1];
    v16 = __src[2];
    v11[0] = __src[0];
    v11[1] = __src[1];
    v11[2] = __src[2];
    v11[3] = __src[3];
    v11[4] = __src[4];
    v11[5] = __src[5];
    *(&v11[5] + 9) = *(&__src[5] + 9);
    sub_1000077D8(&v14, &v23, &qword_100AD98A8);
    sub_100007840(v11, &qword_100AD98A8);
    *(&v22[3] + 7) = v17;
    *(&v22[4] + 7) = v18;
    *(&v22[5] + 7) = v19[0];
    v22[6] = *(v19 + 9);
    *(v22 + 7) = v14;
    *(&v22[1] + 7) = v15;
    *(&v22[2] + 7) = v16;
    __src[0] = v8;
    LOBYTE(__src[1]) = v12[0];
    *(&__src[3] + 1) = v22[2];
    *(&__src[2] + 1) = v22[1];
    *(&__src[1] + 1) = v22[0];
    *(&__src[7] + 1) = *(v19 + 9);
    *(&__src[6] + 1) = v22[5];
    *(&__src[5] + 1) = v22[4];
    *(&__src[4] + 1) = v22[3];
    BKAppDelegate.enableMetricsInspectorOnDebugMode()();
    v29 = __src[6];
    v30 = __src[7];
    v31 = __src[8];
    v25 = __src[2];
    v26 = __src[3];
    v27 = __src[4];
    v28 = __src[5];
    v23 = __src[0];
    v24 = __src[1];
  }

  else
  {
    sub_10076FB74(&v23);
  }

  v19[1] = v29;
  v19[2] = v30;
  v20 = v31;
  v16 = v25;
  v17 = v26;
  v18 = v27;
  v19[0] = v28;
  v14 = v23;
  v15 = v24;
  v11[0] = v4;
  LOBYTE(v11[1]) = v7;
  memcpy(&v11[1] + 1, v32, 0x118uLL);
  memcpy(v10, v11, 0x129uLL);
  v12[6] = v29;
  v12[7] = v30;
  v12[2] = v25;
  v12[3] = v26;
  v12[4] = v27;
  v12[5] = v28;
  v12[0] = v23;
  v12[1] = v24;
  *&v10[400] = v29;
  *&v10[416] = v30;
  *&v10[336] = v25;
  *&v10[352] = v26;
  *&v10[384] = v28;
  *&v10[368] = v27;
  v13 = v31;
  v10[432] = v31;
  *&v10[320] = v24;
  *&v10[304] = v23;
  memcpy(a2, v10, 0x1B1uLL);
  sub_1000077D8(v11, __src, &qword_100AF66F0);
  sub_1000077D8(v12, __src, &qword_100AF66F8);
  sub_100007840(&v14, &qword_100AF66F8);
  __src[0] = v4;
  LOBYTE(__src[1]) = v7;
  memcpy(&__src[1] + 1, v32, 0x118uLL);
  return sub_100007840(__src, &qword_100AF66F0);
}

uint64_t sub_10076D0A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  v47 = sub_10079DF24();
  sub_10079D374();
  sub_10079D3D4();
  *&v46 = sub_10079D464();

  KeyPath = swift_getKeyPath();
  v44 = sub_10076D7F4(a1, 2);
  *(&v46 + 1) = swift_getKeyPath();
  LOBYTE(v63) = 1;
  sub_10079E474();
  sub_10079BE54();
  sub_10079E474();
  sub_10079BE54();
  v41 = v70;
  v42 = v68;
  v39 = v73;
  v40 = v72;
  v85 = 1;
  v84 = v69;
  v83 = v71;
  v3 = a1[3];
  *&v63 = a1[2];
  *(&v63 + 1) = v3;
  sub_100206ECC();

  v4 = sub_10079D5D4();
  v6 = v5;
  v8 = v7;
  sub_10079D374();
  sub_10079D3D4();
  sub_10079D464();

  v9 = sub_10079D5A4();
  v11 = v10;
  v13 = v12;

  sub_10020B430(v4, v6, v8 & 1);

  sub_10076D7F4(a1, 0);
  v14 = sub_10079D564();
  v36 = v15;
  v37 = v14;
  v17 = v16;
  v38 = v18;

  sub_10020B430(v9, v11, v13 & 1);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (!*(&v63 + 1))
  {
    goto LABEL_6;
  }

  if (v63 != *a1)
  {
    v19 = sub_1007A3AB4();

    if (v19)
    {
      goto LABEL_5;
    }

LABEL_6:
    LOBYTE(v53) = 1;
    LOBYTE(v59) = 1;
    *&v63 = 0;
    BYTE8(v63) = 1;
    v66[24] = 1;
    sub_1001F1160(&qword_100AF6700);
    sub_100005920(&qword_100AF6708, &qword_100AF6700);
    sub_10079CCA4();
    goto LABEL_7;
  }

LABEL_5:
  v20 = sub_10079DF24();
  sub_10079D374();
  sub_10079D3D4();
  v21 = sub_10079D464();

  v22 = swift_getKeyPath();
  v23 = sub_10079DE34();
  *&v49[0] = v20;
  *(&v49[0] + 1) = v22;
  v49[1] = v21;
  LOWORD(v50) = 1;
  *(&v50 + 1) = swift_getKeyPath();
  v51 = v23;
  v61 = v50;
  v59 = v49[0];
  v60 = v21;
  v56 = v21;
  v57 = v50;
  v55 = v49[0];
  LOBYTE(v63) = 1;
  *&v62[0] = v23;
  *&v58[0] = v23;
  *&v48[55] = v23;
  *&v48[39] = v50;
  *&v48[23] = v21;
  *&v48[7] = v49[0];
  sub_1000077D8(v49, &v63, &qword_100AF6720);
  sub_1000077D8(&v55, &v63, &qword_100AF6720);
  sub_100007840(&v59, &qword_100AF6720);
  v52 = 0;
  v53 = 0x4014000000000000;
  v54[0] = 0;
  *&v54[1] = *v48;
  *&v54[17] = *&v48[16];
  *&v54[33] = *&v48[32];
  *&v54[48] = *&v48[47];
  v54[64] = 0;
  sub_1001F1160(&qword_100AF6700);
  sub_100005920(&qword_100AF6708, &qword_100AF6700);
  sub_10079CCA4();
  sub_100007840(v49, &qword_100AF6720);
  v76 = v65;
  v77[0] = *v66;
  *(v77 + 9) = *&v66[9];
  v74 = v63;
  v75 = v64;
LABEL_7:
  v61 = v76;
  v24 = v76;
  v62[0] = v77[0];
  *(v62 + 9) = *(v77 + 9);
  v59 = v74;
  v25 = v74;
  v60 = v75;
  v53 = v47;
  *v54 = 0;
  v54[8] = 1;
  v54[9] = 0;
  *&v54[14] = v82;
  *&v54[10] = v81;
  *&v54[16] = KeyPath;
  *&v54[24] = v46;
  *&v54[40] = v44;
  *&v54[80] = v80;
  *&v54[64] = v79;
  *&v54[48] = v78;
  *(v58 + 9) = *(v77 + 9);
  v26 = v77[0];
  v57 = v76;
  v58[0] = v77[0];
  v27 = v75;
  v55 = v74;
  v56 = v75;
  v28 = *&v54[8];
  *a2 = v47;
  *(a2 + 16) = v28;
  v29 = *&v54[72];
  *(a2 + 64) = *&v54[56];
  *(a2 + 80) = v29;
  v30 = *&v54[40];
  *(a2 + 32) = *&v54[24];
  *(a2 + 48) = v30;
  v31 = v85;
  v32 = v84;
  v33 = v83;
  v34 = v17 & 1;
  LOBYTE(v49[0]) = v34;
  *(a2 + 96) = *&v54[88];
  *(a2 + 104) = 0;
  *(a2 + 112) = v31;
  *(a2 + 120) = v42;
  *(a2 + 128) = v32;
  *(a2 + 136) = v41;
  *(a2 + 144) = v33;
  *(a2 + 152) = v40;
  *(a2 + 160) = v39;
  *(a2 + 168) = v37;
  *(a2 + 176) = v36;
  *(a2 + 184) = v34;
  *(a2 + 192) = v38;
  *(a2 + 200) = v25;
  *(a2 + 257) = *(v77 + 9);
  *(a2 + 248) = v26;
  *(a2 + 232) = v24;
  *(a2 + 216) = v27;
  sub_1000077D8(&v53, &v63, &qword_100AF6710);
  sub_1001F1894(v37, v36, v34);

  sub_1000077D8(&v55, &v63, &qword_100AF6718);
  sub_100007840(&v59, &qword_100AF6718);
  sub_10020B430(v37, v36, v34);

  *&v66[8] = v78;
  v63 = v47;
  LOWORD(v64) = 1;
  *(&v64 + 2) = v81;
  WORD3(v64) = v82;
  *(&v64 + 1) = KeyPath;
  v65 = v46;
  *v66 = v44;
  *&v66[24] = v79;
  v67 = v80;
  return sub_100007840(&v63, &qword_100AF6710);
}

uint64_t sub_10076D7F4(void *a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (!v8)
  {
    goto LABEL_6;
  }

  if (*a1 == v7 && v8 == a1[1])
  {

    goto LABEL_8;
  }

  v4 = sub_1007A3AB4();

  if ((v4 & 1) == 0)
  {
LABEL_6:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    if (v8)
    {

      v5 = [objc_opt_self() tertiaryLabelColor];
      return sub_10079DEA4();
    }
  }

LABEL_8:
  if (a2 == 1)
  {
    return _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  }

  else
  {
    return sub_10079DE34();
  }
}

uint64_t sub_10076D954@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10079E474();
  sub_10079BE54();
  sub_100206ECC();

  v4 = sub_10079D5D4();
  v6 = v5;
  v8 = v7;
  sub_10079D4B4();
  v9 = sub_10079D5A4();
  v11 = v10;
  v13 = v12;

  sub_10020B430(v4, v6, v8 & 1);

  sub_10076D7F4(a1, 1);
  v14 = sub_10079D564();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_10020B430(v9, v11, v13 & 1);

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v22;
  *(a2 + 24) = v23;
  *(a2 + 32) = v24;
  *(a2 + 40) = v25;
  *(a2 + 48) = v26;
  *(a2 + 56) = v27;
  *(a2 + 64) = v14;
  *(a2 + 72) = v16;
  *(a2 + 80) = v18 & 1;
  *(a2 + 88) = v20;
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  sub_1001F1894(v14, v16, v18 & 1);

  sub_10020B430(v14, v16, v18 & 1);
}

uint64_t sub_10076DB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a3;
  v56 = a4;
  v57 = a1;
  v6 = type metadata accessor for ReportIssueView();
  v7 = v6 - 8;
  v55 = *(v6 - 8);
  v8 = *(v55 + 64);
  __chkstk_darwin(v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&unk_100AF66C0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v59 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  v58 = &v47 - v14;
  sub_10079E244();
  v16 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  KeyPath = swift_getKeyPath();
  v18 = &v15[*(v11 + 44)];
  *v18 = KeyPath;
  v18[1] = v16;
  v19 = (a3 + *(v7 + 40));
  v21 = v19[1];
  v22 = v19[2];
  *&v63 = *v19;
  v20 = v63;
  *(&v63 + 1) = v21;
  *&v64 = v22;
  sub_1001F1160(&qword_100AF57D8);
  sub_10079E014();
  v23 = v69;
  v53 = v71;
  v54 = v70;
  v52 = v72;
  v51 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v69 = v20;
  v70 = v21;
  v71 = v22;
  v48 = a2;

  sub_10079DFF4();
  v25 = v63;
  v50 = v25 >> 64;
  v24 = v25;
  v47 = v63;
  sub_1005DF65C(v49, v9);
  v26 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v27 = swift_allocObject();
  v55 = v27;
  sub_1005DF5F8(v9, v27 + v26);
  sub_10079E474();
  sub_10079BE54();
  v28 = v59;
  sub_1000077D8(v58, v59, &unk_100AF66C0);
  v29 = v28;
  v30 = v56;
  sub_1000077D8(v29, v56, &unk_100AF66C0);
  v31 = v30 + *(sub_1001F1160(&qword_100AF66D0) + 48);
  v32 = v57;
  *&v63 = v57;
  *(&v63 + 1) = a2;
  v33 = v23;
  v34 = v54;
  *&v64 = v23;
  *(&v64 + 1) = v54;
  v35 = v52;
  v36 = v53;
  *&v65 = v53;
  *(&v65 + 1) = v52;
  v37 = v51;
  *&v66 = v51;
  *(&v66 + 1) = v24;
  v38 = v50;
  *&v67 = v50;
  *(&v67 + 1) = sub_10076FB04;
  *v68 = v27;
  *&v68[24] = v61;
  *&v68[8] = v60;
  *&v68[40] = v62;
  v39 = v63;
  v40 = v64;
  v41 = v66;
  *(v31 + 32) = v65;
  *(v31 + 48) = v41;
  *v31 = v39;
  *(v31 + 16) = v40;
  v42 = v67;
  v43 = *v68;
  v44 = *&v68[16];
  v45 = *&v68[32];
  *(v31 + 128) = *&v68[48];
  *(v31 + 96) = v44;
  *(v31 + 112) = v45;
  *(v31 + 64) = v42;
  *(v31 + 80) = v43;
  sub_1000077D8(&v63, &v69, &qword_100AF66D8);
  sub_100007840(v58, &unk_100AF66C0);
  v69 = v32;
  v70 = v48;
  v71 = v33;
  v72 = v34;
  v73 = v36;
  v74 = v35;
  v75 = v37;
  v76 = v47;
  v77 = v38;
  v78 = sub_10076FB04;
  v79 = v55;
  v80 = v60;
  v81 = v61;
  v82 = v62;
  sub_100007840(&v69, &qword_100AF66D8);
  return sub_100007840(v59, &unk_100AF66C0);
}

uint64_t sub_10076DF78()
{

  sub_10079B8C4();
}

uint64_t sub_10076DFC8()
{
  v1 = sub_10079D004();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1001F1160(&qword_100AF6498);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  v11 = v0;
  sub_1001F1160(&qword_100AF64A0);
  sub_10076ED30();
  sub_10079C014();
  sub_10079CFF4();
  sub_100005920(&qword_100AF64D0, &qword_100AF6498);
  sub_10076F8C8(&qword_100AF64D8, &type metadata accessor for StackNavigationViewStyle);
  sub_10079D614();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

id sub_10076E210()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UITextView) init];
  sub_1001F1160(&qword_100AF6750);
  sub_10079D0C4();
  [v2 setDelegate:v15];

  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 secondarySystemGroupedBackgroundColor];
  [v4 setBackgroundColor:v5];

  LODWORD(v6) = 1132068864;
  [v4 setContentCompressionResistancePriority:0 forAxis:v6];
  [v4 setScrollEnabled:0];
  [v4 setEditable:1];
  [v4 setUserInteractionEnabled:1];

  [v4 setFont:*(v1 + 48)];
  sub_1001F1160(&qword_100AEE3F0);
  sub_10079E1C4();

  v7 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v7 = *v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    sub_10079E1C4();
  }

  else
  {
  }

  v8 = sub_1007A2214();

  [v4 setText:v8];

  sub_10079E1C4();

  v9 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v9 = *v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = &selRef_labelColor;
  }

  else
  {
    v10 = &selRef_tertiaryLabelColor;
  }

  v11 = [v3 *v10];
  [v4 setTextColor:v11];

  return v4;
}

void sub_10076E484(void *a1)
{
  v3 = [a1 text];
  if (!v3)
  {
LABEL_7:
    sub_1001F1160(&qword_100AEE3F0);
    sub_10079E1C4();
    v10 = sub_1007A2214();

    [a1 setText:v10];

    return;
  }

  v4 = v3;
  v5 = sub_1007A2254();
  v7 = v6;

  if (v5 != *v1 || v7 != v1[1])
  {
    v9 = sub_1007A3AB4();

    if (v9)
    {
      return;
    }

    goto LABEL_7;
  }
}

void sub_10076E59C(void *a1)
{
  sub_1001F1160(&qword_100AEE3F0);
  sub_10079E1C4();

  v2 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v2 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    [a1 setText:0];
    v3 = [objc_opt_self() labelColor];
    [a1 setTextColor:v3];
  }
}

void sub_10076E6E0(void *a1)
{
  v2 = [a1 text];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1007A2254();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (!v7)
    {
      v8 = sub_1007A2214();
      [a1 setText:v8];

      v9 = [objc_opt_self() tertiaryLabelColor];
      [a1 setTextColor:v9];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10076E860(void *a1)
{
  v1 = [a1 text];
  if (v1)
  {
    v2 = v1;
    sub_1007A2254();
  }

  sub_1001F1160(&qword_100AEE3F0);
  return sub_10079E1D4();
}

id sub_10076E9A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextView.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ReportIssueView()
{
  result = qword_100AF63F0;
  if (!qword_100AF63F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10076EAE0()
{
  sub_10076EBAC();
  if (v0 <= 0x3F)
  {
    sub_10076EC20();
    if (v1 <= 0x3F)
    {
      sub_10076ECB4();
      if (v2 <= 0x3F)
      {
        sub_1003B66FC();
        if (v3 <= 0x3F)
        {
          sub_10074E784();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10076EBAC()
{
  if (!qword_100AF6400)
  {
    sub_1001F1234(&qword_100AF6408);
    v0 = sub_10079B8E4();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF6400);
    }
  }
}

void sub_10076EC20()
{
  if (!qword_100AF6410)
  {
    type metadata accessor for ReportIssueViewModel();
    sub_10076F8C8(&qword_100AECF70, type metadata accessor for ReportIssueViewModel);
    v0 = sub_10079C054();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF6410);
    }
  }
}

void sub_10076ECB4()
{
  if (!qword_100AF6420)
  {
    sub_10079B724();
    v0 = sub_10079BCD4();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF6420);
    }
  }
}

unint64_t sub_10076ED30()
{
  result = qword_100AF64A8;
  if (!qword_100AF64A8)
  {
    sub_1001F1234(&qword_100AF64A0);
    sub_100005920(&qword_100AF64B0, &qword_100AF64B8);
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF64A8);
  }

  return result;
}

unint64_t sub_10076EE24()
{
  result = qword_100AF6510;
  if (!qword_100AF6510)
  {
    sub_1001F1234(&qword_100AF64E8);
    sub_100005920(&qword_100AF6518, &qword_100AF6520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6510);
  }

  return result;
}

unint64_t sub_10076EEEC()
{
  result = qword_100AF6558;
  if (!qword_100AF6558)
  {
    sub_1001F1234(&qword_100AF6550);
    sub_1001F1234(&qword_100ADB860);
    sub_100005920(&qword_100AEE360, &qword_100ADB860);
    swift_getOpaqueTypeConformance2();
    sub_100005920(&unk_100AF6560, &qword_100ADB8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6558);
  }

  return result;
}

id sub_10076F110@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[4];
  v6 = v1[5];
  v18 = *(v1 + 1);
  v19 = v5;
  v20 = v6;
  sub_1001F1160(&qword_100AEE3F0);
  sub_10079E1F4();
  v7 = v16;
  v8 = v17;
  v9 = type metadata accessor for TextView.Coordinator();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtCV5BooksP33_B79FF19A106F9D407BB73D2F778CFAEA8TextView11Coordinator__text];
  *v11 = v15;
  *(v11 + 2) = v7;
  *(v11 + 3) = v8;
  v12 = &v10[OBJC_IVAR____TtCV5BooksP33_B79FF19A106F9D407BB73D2F778CFAEA8TextView11Coordinator_placeholder];
  *v12 = v4;
  *(v12 + 1) = v3;
  v14.receiver = v10;
  v14.super_class = v9;

  result = objc_msgSendSuper2(&v14, "init");
  *a1 = result;
  return result;
}

uint64_t sub_10076F1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10076FBF8();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10076F248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10076FBF8();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10076F2AC()
{
  sub_10076FBF8();
  sub_10079CC64();
  __break(1u);
}

uint64_t sub_10076F2D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10079C744();
  *a1 = result;
  return result;
}

uint64_t sub_10076F350(uint64_t a1)
{
  v2 = sub_10079DF84();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_10079C4F4();
}

uint64_t sub_10076F418()
{
  type metadata accessor for ReportIssueView();

  return sub_10076AF8C();
}

unint64_t sub_10076F480()
{
  result = qword_100AF65E8;
  if (!qword_100AF65E8)
  {
    sub_1001F1234(&qword_100AF65E0);
    sub_100005920(&qword_100AF65F0, &qword_100AF65F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF65E8);
  }

  return result;
}

uint64_t sub_10076F530@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v5 = *(type metadata accessor for ReportIssueView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10076BB14(a1, v6, a2);
}

uint64_t sub_10076F5B0()
{
  type metadata accessor for ReportIssueView();

  return sub_10076C294();
}

unint64_t sub_10076F6A0()
{
  result = qword_100AF6628;
  if (!qword_100AF6628)
  {
    sub_1001F1234(&qword_100AF6620);
    sub_10076F758();
    sub_100005920(&unk_100AF6660, &qword_100AD97F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6628);
  }

  return result;
}

unint64_t sub_10076F758()
{
  result = qword_100AF6630;
  if (!qword_100AF6630)
  {
    sub_1001F1234(&qword_100AF6638);
    sub_10076F810();
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6630);
  }

  return result;
}

unint64_t sub_10076F810()
{
  result = qword_100AF6640;
  if (!qword_100AF6640)
  {
    sub_1001F1234(&qword_100AF6648);
    sub_100005920(&qword_100AF6650, &qword_100AF6658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6640);
  }

  return result;
}

uint64_t sub_10076F8C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10076F910()
{
  v1 = type metadata accessor for ReportIssueView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  sub_1001F1160(&qword_100AF6570);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10079B724();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + *(v1 + 28);
  sub_1001F1160(&qword_100AD61C8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(sub_1001F1160(qword_100AF6430) + 32);
    v8 = sub_10079C3B4();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_10076FB04()
{
  type metadata accessor for ReportIssueView();

  return sub_10076DF78();
}

double sub_10076FB74(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_10076FBA4()
{
  result = qword_100AF6748;
  if (!qword_100AF6748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6748);
  }

  return result;
}

unint64_t sub_10076FBF8()
{
  result = qword_100AF6758;
  if (!qword_100AF6758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6758);
  }

  return result;
}

UIMenu sub_10076FC70()
{
  v56 = sub_100796CF4();
  v0 = *(v56 - 8);
  __chkstk_darwin(v56);
  v2 = v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v43 - v4;
  v6 = sub_1007A21D4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v43 - v11;
  v13 = [objc_msgSend(objc_opt_self() "sharedInstance")];
  swift_unknownObjectRelease();
  v55 = sub_10000A7C4(0, &qword_100AD8170);
  sub_1001F1160(&unk_100AD8160);
  if (v13)
  {
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_100811360;
    v52 = sub_10000A7C4(0, &qword_100AECAB0);
    sub_1007A2154();
    sub_100796C94();
    v53 = *(v7 + 16);
    v46 = v7;
    v44 = v9;
    v53(v9, v12, v6);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v51 = ObjCClassFromMetadata;
    v50 = objc_opt_self();
    v15 = [v50 bundleForClass:ObjCClassFromMetadata];
    v16 = v5;
    v17 = *(v0 + 16);
    v48 = v0 + 16;
    v49 = v17;
    v18 = v2;
    v19 = v2;
    v20 = v56;
    v17(v19, v16, v56);
    sub_1007A22D4();
    v43[1] = v7 + 16;
    v21 = *(v0 + 8);
    v45 = v0 + 8;
    v47 = v21;
    v21(v16, v20);
    v46 = *(v46 + 8);
    (v46)(v12, v6);
    v22 = sub_1007A2214();
    v23 = [objc_opt_self() systemImageNamed:v22];

    v57 = 0u;
    v58 = 0u;
    v24 = sub_1007A3414();
    v25 = v54;
    *(v54 + 32) = v24;
    sub_1007A2154();
    sub_100796C94();
    v53(v44, v12, v6);
    v26 = [v50 bundleForClass:v51];
    v27 = v12;
    v28 = v56;
    v49(v18, v16, v56);
    sub_1007A22D4();
    v47(v16, v28);
    (v46)(v27, v6);
    v57 = 0u;
    v58 = 0u;
    v29 = sub_1007A3414();
    v30 = v25;
    *(v25 + 40) = v29;
  }

  else
  {
    v31 = v6;
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100811390;
    v54 = sub_10000A7C4(0, &qword_100AECAB0);
    sub_1007A2154();
    sub_100796C94();
    (*(v7 + 16))(v9, v12, v31);
    type metadata accessor for BundleFinder();
    v33 = swift_getObjCClassFromMetadata();
    v34 = [objc_opt_self() bundleForClass:v33];
    v35 = v2;
    v36 = v56;
    (*(v0 + 16))(v35, v5, v56);
    sub_1007A22D4();
    (*(v0 + 8))(v5, v36);
    (*(v7 + 8))(v12, v31);
    v37 = sub_1007A2214();
    v38 = [objc_opt_self() systemImageNamed:v37];

    v57 = 0u;
    v58 = 0u;
    v39 = sub_1007A3414();
    v30 = v32;
    *(v32 + 32) = v39;
  }

  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  v61.value._countAndFlagsBits = 0;
  v61.value._object = 0;
  v59.value.super.isa = 0;
  v59.is_nil = 0;
  v40.value = 1;
  return sub_1007A30C4(v60, v61, v59, v40, 0xFFFFFFFFFFFFFFFFLL, v30, v42);
}

uint64_t sub_1007703D8()
{
  sub_1006C111C(v0 + 16);
  swift_unknownObjectWeakDestroy();
  swift_unownedRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100770444(char a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = OBJC_IVAR____TtC5Books19BookReaderViewModel__bookmarkNotesContentType;
      v6 = a1 & 1;
      if (*(Strong + OBJC_IVAR____TtC5Books19BookReaderViewModel__bookmarkNotesContentType) == v6)
      {
        swift_unknownObjectRelease();
        *(v4 + v5) = v6;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_10044DB90();
        sub_100797A04();

        return swift_unknownObjectRelease();
      }
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1007705C8()
{
  swift_unknownObjectUnownedDestroy();
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

unint64_t sub_100770650()
{
  result = qword_100AF68D0;
  if (!qword_100AF68D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF68D0);
  }

  return result;
}

id sub_1007706FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BookReaderConfigurationHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100770764(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1007A2214();
    v5 = [v3 libraryAssetWithPermanentOrTemporaryAssetID:v4 inManagedObjectContext:a1];

    if (v5)
    {
      [v5 isStore];
    }
  }

  else
  {
    v5 = 0;
  }

  sub_1001F1160(&qword_100AD60E0);
  sub_1007A26B4();
}

void sub_100770860(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a6;
  v20 = a7;
  v11 = sub_1001F1160(&qword_100AD60E0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v12 + 16))(v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v15;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v14, v11);
  aBlock[4] = v19;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100201C54;
  aBlock[3] = v20;
  v18 = _Block_copy(aBlock);

  [a2 performBackgroundReadOnlyBlock:v18];
  _Block_release(v18);
}

void sub_100770A4C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1007A2214();
    v5 = [v3 libraryAssetWithPermanentOrTemporaryAssetID:v4 inManagedObjectContext:a1];

    if (v5)
    {
      [v5 isStore];
    }
  }

  else
  {
    v5 = 0;
  }

  sub_1001F1160(&qword_100AD60E0);
  sub_1007A26B4();
}

uint64_t sub_100770B68(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return _swift_task_switch(sub_100770B90, 0, 0);
}

uint64_t sub_100770B90()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_100770C98;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 7, 0, 0, 0xD000000000000015, 0x80000001008EAAB0, sub_1007711C4, v4, &type metadata for Bool);
}

uint64_t sub_100770C98()
{

  return _swift_task_switch(sub_100770DB0, 0, 0);
}

uint64_t sub_100770DC8(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return _swift_task_switch(sub_100770DF0, 0, 0);
}

uint64_t sub_100770DF0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_100770EF8;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 7, 0, 0, 0xD000000000000010, 0x80000001008EAA90, sub_100771160, v4, &type metadata for Bool);
}

uint64_t sub_100770EF8()
{

  return _swift_task_switch(sub_100771398, 0, 0);
}

id sub_100771010()
{
  v1 = *v0;
  v2 = sub_1007A2214();
  v3 = [v1 libraryAssetOnMainQueueWithAssetID:v2];

  return v3;
}

uint64_t sub_100771060()
{
  v1 = *v0;
  v2 = sub_1007A2214();
  v3 = [v1 seriesTitleForAssetID:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1007A2254();

  return v4;
}

void sub_1007710E0()
{
  v1 = *v0;
  v2 = sub_1007A2214();
  v3 = sub_1007A2214();
  [v1 updateLibraryAssetWithID:v2 withTitle:v3];
}

uint64_t sub_100771208()
{
  v1 = sub_1001F1160(&qword_100AD60E0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1007712F8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v4 = *(sub_1001F1160(&qword_100AD60E0) - 8);
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7, v8);
}

uint64_t sub_10077139C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for ChromeStyle();
  sub_10077157C(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
  *(a4 + 64) = sub_10079C484();
  *(a4 + 72) = v8;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v9 = sub_1002256EC(a4);
  v15 = *(a2 - 8);
  (*(v15 + 16))(v9, a1, a2);
  sub_1007A0284();
  sub_10077157C(&qword_100AEE0F0, &type metadata accessor for SearchViewModel);

  *(a4 + 40) = sub_10079C024();
  *(a4 + 48) = v10;
  *(a4 + 56) = (sub_10079E404() & 1) == 0;
  sub_1007715C4();
  v11 = [swift_getObjCClassFromMetadata() appearance];
  v12 = [objc_allocWithZone(UIView) init];
  [v11 setBackgroundView:v12];

  v13 = *(v15 + 8);

  return v13(a1, a2);
}

uint64_t sub_10077157C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1007715C4()
{
  result = qword_100AF6928;
  if (!qword_100AF6928)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AF6928);
  }

  return result;
}

void sub_10077163C()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleSubheadline;
  v2 = [v0 preferredFontForTextStyle:v1];

  qword_100AF6908 = v2;
}

void sub_1007716A8()
{
  if (qword_100AD1BF8 != -1)
  {
    swift_once();
  }

  v0 = [qword_100AF6908 fontDescriptor];
  v1 = [v0 fontDescriptorWithSymbolicTraits:2];

  if (v1)
  {
    v2 = [objc_opt_self() fontWithDescriptor:v1 size:0.0];

    qword_100AF6910 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100771774@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a2;
  *a2 = sub_10079CB24();
  v3[1] = 0;
  *(v3 + 16) = 0;
  v4 = sub_1001F1160(&qword_100AF6A08);
  sub_100771810(a1, v3 + *(v4 + 44));
  v5 = v3 + *(sub_1001F1160(&qword_100AF6938) + 36);
  sub_10079E3E4();
  LOBYTE(v3) = sub_10079D294();
  result = sub_1001F1160(&qword_100ADC450);
  v5[*(result + 36)] = v3;
  return result;
}

uint64_t sub_100771810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_1001F1160(&qword_100AF6A10);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_1001F1160(&qword_100AF6A18);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v26 - v14;
  *v15 = sub_10079CB24();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v16 = sub_1001F1160(&qword_100AF6A20);
  sub_100771AD8(a1, &v15[*(v16 + 44)]);
  v17 = sub_10079DDC4();
  v18 = sub_10079D294();
  v19 = &v15[*(v10 + 44)];
  *v19 = v17;
  v19[8] = v18;
  *v8 = sub_10079C8D4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v20 = &v8[*(sub_1001F1160(&qword_100AF6A28) + 44)];
  sub_100772D6C(a1);
  v21 = sub_10079DDC4();
  LOBYTE(a1) = sub_10079D294();
  v22 = &v20[*(sub_1001F1160(&qword_100AF6A30) + 36)];
  *v22 = v21;
  v22[8] = a1;
  v20[*(sub_1001F1160(&qword_100AF6A38) + 36)] = 1;
  sub_1000077D8(v15, v12, &qword_100AF6A18);
  sub_1000077D8(v8, v5, &qword_100AF6A10);
  v23 = v27;
  sub_1000077D8(v12, v27, &qword_100AF6A18);
  v24 = sub_1001F1160(&qword_100AF6A40);
  sub_1000077D8(v5, v23 + *(v24 + 48), &qword_100AF6A10);
  sub_100007840(v8, &qword_100AF6A10);
  sub_100007840(v15, &qword_100AF6A18);
  sub_100007840(v5, &qword_100AF6A10);
  return sub_100007840(v12, &qword_100AF6A18);
}

uint64_t sub_100771AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1001F1160(&qword_100AF6BF8);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v36 - v5;
  v7 = sub_1001F1160(&qword_100AF6C00);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  v11 = sub_1001F1160(&qword_100AF6C08);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  __chkstk_darwin(v18);
  v20 = &v36 - v19;
  *v6 = sub_10079C8F4();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v21 = sub_1001F1160(&qword_100AF6C10);
  sub_100771E1C(a1, &v6[*(v21 + 44)]);
  LOBYTE(a1) = sub_10079D2C4();
  sub_10079BBA4();
  v22 = &v6[*(v4 + 44)];
  *v22 = a1;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  sub_10079E474();
  sub_10079C414();
  sub_10020B3C8(v6, v10, &qword_100AF6BF8);
  v27 = &v10[*(v8 + 44)];
  v28 = v43;
  *(v27 + 4) = v42;
  *(v27 + 5) = v28;
  *(v27 + 6) = v44;
  v29 = v39;
  *v27 = v38;
  *(v27 + 1) = v29;
  v30 = v41;
  *(v27 + 2) = v40;
  *(v27 + 3) = v30;
  v31 = sub_10079DDC4();
  LOBYTE(a1) = sub_10079D294();
  sub_10020B3C8(v10, v17, &qword_100AF6C00);
  v32 = &v17[*(v12 + 44)];
  *v32 = v31;
  v32[8] = a1;
  sub_10020B3C8(v17, v20, &qword_100AF6C08);
  v33 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  sub_1000077D8(v20, v14, &qword_100AF6C08);
  v34 = v37;
  sub_1000077D8(v14, v37, &qword_100AF6C08);
  *(v34 + *(sub_1001F1160(&qword_100AF6C18) + 48)) = v33;

  sub_100007840(v20, &qword_100AF6C08);

  return sub_100007840(v14, &qword_100AF6C08);
}

uint64_t sub_100771E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v3 = sub_100796CF4();
  v111 = *(v3 - 8);
  v112 = v3;
  __chkstk_darwin(v3);
  v108 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v109 = &v95 - v6;
  v110 = sub_1007A21D4();
  v107 = *(v110 - 8);
  __chkstk_darwin(v110);
  v105 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v106 = &v95 - v9;
  v10 = sub_1001F1160(&qword_100ADB860);
  v122 = *(v10 - 8);
  v123 = v10;
  __chkstk_darwin(v10);
  v115 = &v95 - v11;
  v117 = sub_1001F1160(&qword_100AF6AC8);
  __chkstk_darwin(v117);
  v121 = &v95 - v12;
  v119 = sub_1001F1160(&qword_100AF6C20);
  __chkstk_darwin(v119);
  v120 = &v95 - v13;
  v118 = sub_1001F1160(&qword_100AF6C28);
  __chkstk_darwin(v118);
  v125 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v116 = &v95 - v16;
  __chkstk_darwin(v17);
  v124 = &v95 - v18;
  v19 = sub_10079BC44();
  v20 = *(v19 - 8);
  v129 = v19;
  v130 = v20;
  __chkstk_darwin(v19);
  v128 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v95 - v23;
  v98 = sub_10079E534();
  v25 = *(v98 - 8);
  __chkstk_darwin(v98);
  v27 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1001F1160(&qword_100AF6C30);
  __chkstk_darwin(v96);
  v29 = &v95 - v28;
  v97 = sub_1001F1160(&qword_100AF6C38);
  __chkstk_darwin(v97);
  v113 = &v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v95 - v32;
  __chkstk_darwin(v34);
  v127 = &v95 - v35;
  sub_100772A40(&v133);
  v149 = v139;
  v150 = v140;
  v151 = v141;
  v152 = v142;
  v145 = v135;
  v146 = v136;
  v147 = v137;
  v148 = v138;
  v143 = v133;
  v144 = v134;
  v114 = a1;
  v36 = *(a1 + 64);
  if (v36)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v37 = v36;
    v101 = v37;
    v38 = v24;
    sub_10079B9A4();

    v104 = enum case for ColorScheme.light(_:);
    v40 = v129;
    v39 = v130;
    v41 = *(v130 + 104);
    v102 = v130 + 104;
    v103 = v41;
    v42 = v128;
    v41(v128);
    v99 = v38;
    v43 = sub_10079BC34();
    v44 = *(v39 + 8);
    v130 = v39 + 8;
    v100 = v44;
    v44(v42, v40);
    v44(v38, v40);
    v45 = &enum case for BlendMode.plusDarker(_:);
    if ((v43 & 1) == 0)
    {
      v45 = &enum case for BlendMode.plusLighter(_:);
    }

    v46 = v98;
    (*(v25 + 104))(v27, *v45, v98);
    (*(v25 + 32))(&v29[*(v96 + 36)], v27, v46);
    v47 = v150;
    *(v29 + 6) = v149;
    *(v29 + 7) = v47;
    *(v29 + 8) = v151;
    *(v29 + 18) = v152;
    v48 = v146;
    *(v29 + 2) = v145;
    *(v29 + 3) = v48;
    v49 = v148;
    *(v29 + 4) = v147;
    *(v29 + 5) = v49;
    v50 = v144;
    *v29 = v143;
    *(v29 + 1) = v50;
    sub_10020B3C8(v29, v33, &qword_100AF6C30);
    v33[*(v97 + 36)] = 1;
    sub_10020B3C8(v33, v127, &qword_100AF6C38);
    v51 = v106;
    sub_1007A2154();
    v52 = v109;
    sub_100796C94();
    v53 = v107;
    v54 = v110;
    (*(v107 + 16))(v105, v51, v110);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v56 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v58 = v111;
    v57 = v112;
    (*(v111 + 16))(v108, v52, v112);
    v59 = sub_1007A22D4();
    v61 = v60;
    (*(v58 + 8))(v52, v57);
    (*(v53 + 8))(v51, v54);
    v131 = v59;
    v132 = v61;
    sub_100777F0C(v114, &v133);
    v62 = swift_allocObject();
    v63 = v136;
    v62[3] = v135;
    v62[4] = v63;
    v62[5] = v137;
    v64 = v134;
    v62[1] = v133;
    v62[2] = v64;
    sub_100206ECC();
    v65 = v115;
    sub_10079E084();
    swift_getKeyPath();
    swift_getKeyPath();
    v66 = v101;
    v67 = v99;
    sub_10079B9A4();

    v69 = v128;
    v68 = v129;
    v103(v128, v104, v129);
    LOBYTE(v61) = sub_10079BC34();
    v70 = v69;
    v71 = v100;
    v100(v70, v68);
    v71(v67, v68);
    v72 = v127;
    if (v61)
    {
      v73 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    else
    {
      v73 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    v74 = v73;

    KeyPath = swift_getKeyPath();
    v76 = v121;
    (*(v122 + 32))(v121, v65, v123);
    v77 = (v76 + *(v117 + 36));
    *v77 = KeyPath;
    v77[1] = v74;
    LOBYTE(KeyPath) = sub_10079D2E4();
    sub_10079BBA4();
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v86 = v120;
    sub_10020B3C8(v76, v120, &qword_100AF6AC8);
    v87 = v86 + *(v119 + 36);
    *v87 = KeyPath;
    *(v87 + 8) = v79;
    *(v87 + 16) = v81;
    *(v87 + 24) = v83;
    *(v87 + 32) = v85;
    *(v87 + 40) = 0;
    v88 = v116;
    sub_10020B3C8(v86, v116, &qword_100AF6C20);
    *(v88 + *(v118 + 36)) = 1;
    v89 = v124;
    sub_10020B3C8(v88, v124, &qword_100AF6C28);
    v90 = v113;
    sub_1000077D8(v72, v113, &qword_100AF6C38);
    v91 = v125;
    sub_1000077D8(v89, v125, &qword_100AF6C28);
    v92 = v126;
    sub_1000077D8(v90, v126, &qword_100AF6C38);
    v93 = sub_1001F1160(&qword_100AF6C40);
    sub_1000077D8(v91, v92 + *(v93 + 48), &qword_100AF6C28);
    sub_100007840(v89, &qword_100AF6C28);
    sub_100007840(v72, &qword_100AF6C38);
    sub_100007840(v91, &qword_100AF6C28);
    return sub_100007840(v90, &qword_100AF6C38);
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_10077157C(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

_OWORD *sub_100772A40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1007A0284();
  sub_10077157C(&qword_100AEE0F0, &type metadata accessor for SearchViewModel);
  sub_10079C034();
  swift_getKeyPath();
  sub_10079C044();

  v4 = v30;
  v22 = v31;
  v23 = v29;
  v21 = v32;
  sub_1007A0254();
  if (qword_100AD18B0 != -1)
  {
    swift_once();
  }

  v5 = qword_100B23630;
  v6 = *(v2 + 64);
  if (v6)
  {
    v7 = qword_100B23628;
    sub_100777F0C(v2, &v24);
    v8 = swift_allocObject();
    v9 = v27;
    v8[3] = v26;
    v8[4] = v9;
    v8[5] = v28;
    v10 = v25;
    v8[1] = v24;
    v8[2] = v10;
    sub_1007A1214();
    sub_10077157C(&qword_100AEFCF0, &type metadata accessor for SearchBarResponderState);

    v11 = v6;
    v12 = sub_10079C024();
    v14 = v13;
    sub_100777F0C(v2, &v24);
    v15 = swift_allocObject();
    v16 = v27;
    v15[3] = v26;
    v15[4] = v16;
    v15[5] = v28;
    v17 = v25;
    v15[1] = v24;
    v15[2] = v17;
    sub_100777F0C(v2, &v24);
    result = swift_allocObject();
    v19 = v27;
    result[3] = v26;
    result[4] = v19;
    result[5] = v28;
    v20 = v25;
    result[1] = v24;
    result[2] = v20;
    *a1 = v23;
    *(a1 + 8) = v4;
    *(a1 + 16) = v22;
    *(a1 + 24) = v21;
    *(a1 + 32) = v12;
    *(a1 + 40) = v14;
    *(a1 + 48) = v7;
    *(a1 + 56) = v5;
    *(a1 + 64) = v11;
    *(a1 + 72) = sub_10061BEB4;
    *(a1 + 80) = v8;
    *(a1 + 88) = sub_10061BEDC;
    *(a1 + 96) = v15;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 136) = sub_10061BF34;
    *(a1 + 144) = result;
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_10077157C(&qword_100ADB6A0, type metadata accessor for ChromeStyle);

    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_100772D6C(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AF69B0);
  __chkstk_darwin(v2);
  v4 = v28 - v3;
  v5 = sub_1001F1160(&qword_100AF6A48);
  __chkstk_darwin(v5);
  v7 = v28 - v6;
  v8 = sub_1001F1160(&qword_100AF6970);
  __chkstk_darwin(v8);
  v10 = v28 - v9;
  v11 = sub_1007A01C4();
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    *v4 = sub_10079CB24();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v15 = sub_1001F1160(&qword_100AF6A50);
    sub_100773148(a1, &v4[*(v15 + 44)]);
    v16 = sub_10079DDC4();
    v17 = sub_10079D294();
    v18 = &v4[*(sub_1001F1160(&qword_100AF69D0) + 36)];
    *v18 = v16;
    v18[8] = v17;
    sub_100777F0C(a1, v28);
    v19 = swift_allocObject();
    v20 = v28[3];
    v19[3] = v28[2];
    v19[4] = v20;
    v19[5] = v28[4];
    v21 = v28[1];
    v19[1] = v28[0];
    v19[2] = v21;
    v22 = &v4[*(sub_1001F1160(&qword_100AF69C0) + 36)];
    *v22 = sub_100616B38;
    *(v22 + 1) = 0;
    *(v22 + 2) = sub_100777F44;
    *(v22 + 3) = v19;
    sub_100009864(a1, v28);
    v23 = swift_allocObject();
    sub_1000077C0(v28, v23 + 16);
    v24 = &v4[*(v2 + 36)];
    *v24 = sub_100777F4C;
    v24[1] = v23;
    v24[2] = 0;
    v24[3] = 0;
    sub_1000077D8(v4, v7, &qword_100AF69B0);
    swift_storeEnumTagMultiPayload();
    sub_100777A14(&qword_100AF6968, &qword_100AF6970, &unk_100845510, sub_100777A90);
    sub_100777C00();
    sub_10079CCA4();
    v25 = v4;
    v26 = &qword_100AF69B0;
  }

  else
  {
    sub_100775C30(v10);
    sub_1000077D8(v10, v7, &qword_100AF6970);
    swift_storeEnumTagMultiPayload();
    sub_100777A14(&qword_100AF6968, &qword_100AF6970, &unk_100845510, sub_100777A90);
    sub_100777C00();
    sub_10079CCA4();
    v25 = v10;
    v26 = &qword_100AF6970;
  }

  return sub_100007840(v25, v26);
}

uint64_t sub_100773148@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v68 = a1;
  v91 = a2;
  v3 = sub_1001F1160(&qword_100AF6AD8);
  __chkstk_darwin(v3 - 8);
  v67 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v89 = &v64 - v6;
  v7 = type metadata accessor for FooterView(0);
  v87 = *(v7 - 8);
  v88 = v7;
  __chkstk_darwin(v7);
  v66 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v65 = &v64 - v10;
  v11 = sub_1001F1160(&qword_100AF6AE0);
  __chkstk_darwin(v11 - 8);
  v90 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v83 = &v64 - v14;
  v77 = sub_10079CD04();
  __chkstk_darwin(v77);
  v76 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_10079BCC4();
  v80 = *(v79 - 8);
  __chkstk_darwin(v79);
  v75 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1001F1160(&qword_100AD7B78);
  v82 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v64 - v17;
  v72 = sub_10079C074();
  v73 = *(v72 - 8);
  __chkstk_darwin(v72);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1001F1160(&qword_100AF6AE8);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v64 - v22;
  v70 = sub_1001F1160(&qword_100AF6AF0);
  v24 = *(v70 - 8);
  __chkstk_darwin(v70);
  v26 = &v64 - v25;
  v71 = sub_1001F1160(&qword_100AF6AF8);
  __chkstk_darwin(v71);
  v69 = &v64 - v27;
  v28 = sub_1001F1160(&qword_100AF6B00);
  v85 = *(v28 - 8);
  v86 = v28;
  __chkstk_darwin(v28);
  v84 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v74 = &v64 - v31;
  v92 = a1;
  sub_1001F1160(&qword_100AF6B08);
  sub_100005920(&qword_100AF6B10, &qword_100AF6B08);
  sub_10079D524();
  *&v93 = sub_10079DDC4();
  v32 = sub_100005920(&qword_100AF6B18, &qword_100AF6AE8);
  sub_10079DA14();

  (*(v21 + 8))(v23, v20);
  sub_10079C064();
  *&v93 = v20;
  *(&v93 + 1) = &type metadata for Color;
  *&v94 = v32;
  *(&v94 + 1) = &protocol witness table for Color;
  v33 = v68;
  swift_getOpaqueTypeConformance2();
  v34 = v69;
  v35 = v70;
  v36 = v72;
  sub_10079DCA4();
  (*(v73 + 8))(v19, v36);
  (*(v24 + 8))(v26, v35);
  *&v93 = sub_10079DDC4();
  *&v34[*(v71 + 36)] = sub_10079E1B4();
  v37 = v34;
  sub_10079CF74();
  v38 = v75;
  sub_10079BC64();
  sub_100777F0C(v33, &v93);
  v39 = swift_allocObject();
  v40 = v96;
  v39[3] = v95;
  v39[4] = v40;
  v39[5] = v97;
  v41 = v94;
  v39[1] = v93;
  v39[2] = v41;
  sub_10077157C(&qword_100AD7BB0, &type metadata accessor for DragGesture);
  sub_10077157C(&qword_100AD7BB8, &type metadata accessor for DragGesture.Value);
  v42 = v78;
  v43 = v79;
  sub_10079E2A4();

  (*(v80 + 8))(v38, v43);
  sub_10079BCE4();
  sub_10077CF34();
  sub_100005920(&qword_100AD7BC0, &qword_100AD7B78);
  v44 = v74;
  v45 = v81;
  sub_10079D994();
  (*(v82 + 8))(v42, v45);
  sub_100007840(v37, &qword_100AF6AF8);
  if (*(v33 + 56) != 1)
  {
    v47 = v83;
    (*(v87 + 56))(v83, 1, 1, v88);
    goto LABEL_5;
  }

  v46 = v88;
  v47 = v83;
  sub_1007A0284();
  sub_10077157C(&qword_100AEE0F0, &type metadata accessor for SearchViewModel);
  sub_10079C034();
  swift_getKeyPath();
  sub_10079C044();

  sub_10079C034();
  swift_getKeyPath();
  v48 = v67;
  sub_10079C044();

  v49 = *(v33 + 64);
  if (v49)
  {
    v50 = v66;
    sub_10020B3C8(v89, v66, &qword_100AF6AD8);
    sub_10020B3C8(v48, v50 + *(v46 + 20), &qword_100AF6AD8);
    *(v50 + *(v46 + 24)) = v49;
    v51 = v65;
    sub_10077DC6C(v50, v65, type metadata accessor for FooterView);
    sub_10077DC6C(v51, v47, type metadata accessor for FooterView);
    (*(v87 + 56))(v47, 0, 1, v46);
    v52 = v49;
LABEL_5:
    v54 = v84;
    v53 = v85;
    v55 = *(v85 + 16);
    v56 = v44;
    v57 = v44;
    v58 = v86;
    v55(v84, v57, v86);
    v59 = v90;
    sub_1000077D8(v47, v90, &qword_100AF6AE0);
    v60 = v91;
    v55(v91, v54, v58);
    v61 = sub_1001F1160(&qword_100AF6B28);
    sub_1000077D8(v59, &v60[*(v61 + 48)], &qword_100AF6AE0);
    sub_100007840(v47, &qword_100AF6AE0);
    v62 = *(v53 + 8);
    v62(v56, v58);
    sub_100007840(v59, &qword_100AF6AE0);
    return (v62)(v54, v58);
  }

  type metadata accessor for ChromeStyle();
  sub_10077157C(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
  result = sub_10079C474();
  __break(1u);
  return result;
}

uint64_t sub_100773E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_1001F1160(&qword_100AF6B30);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = sub_1001F1160(&qword_100AF6B38);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  sub_100774138(a1, &v22 - v15);
  v25 = sub_10079DDC4();
  *&v16[*(v11 + 44)] = sub_10079E1B4();
  v24 = a1;
  sub_1001F1160(&qword_100AF6B40);
  sub_100005920(&qword_100AF6B48, &qword_100AF6B40);
  sub_10079E2C4();
  v25 = sub_10079DDC4();
  v17 = sub_10079E1B4();
  *&v9[*(sub_1001F1160(&qword_100AF6B50) + 36)] = v17;
  v18 = &v9[*(v4 + 44)];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  sub_1000077D8(v16, v13, &qword_100AF6B38);
  sub_1000077D8(v9, v6, &qword_100AF6B30);
  v19 = v23;
  sub_1000077D8(v13, v23, &qword_100AF6B38);
  v20 = sub_1001F1160(&qword_100AF6B58);
  sub_1000077D8(v6, v19 + *(v20 + 48), &qword_100AF6B30);
  sub_100007840(v9, &qword_100AF6B30);
  sub_100007840(v16, &qword_100AF6B38);
  sub_100007840(v6, &qword_100AF6B30);
  return sub_100007840(v13, &qword_100AF6B38);
}

uint64_t sub_100774138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10079BBC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&qword_100AF6BD8);
  v33 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v30 - v9;
  v11 = sub_1001F1160(&qword_100AF6BE0);
  v34 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v30 - v12;
  v14 = sub_1007A01B4();
  if (v15 == -1)
  {
    v29 = *(v34 + 56);

    return v29(a2, 1, 1, v11);
  }

  else
  {
    v30[1] = v30;
    __chkstk_darwin(v14);
    v30[-6] = v16;
    v30[-5] = v17;
    v30[-4] = v18;
    LOBYTE(v30[-3]) = v19 & 1;
    v30[-2] = a1;
    v20 = v16;
    v31 = a2;
    v32 = v11;
    v21 = v17;
    v22 = v18;
    v30[0] = v8;
    v23 = v4;
    v24 = v19;
    sub_10077D358();
    sub_10079E2C4();
    sub_10061B72C(v20, v21, v22, v24);
    (*(v5 + 104))(v7, enum case for Prominence.increased(_:), v23);
    sub_10077D3AC();
    v25 = v30[0];
    sub_10079D834();
    (*(v5 + 8))(v7, v23);
    (*(v33 + 8))(v10, v25);
    v27 = v31;
    v26 = v32;
    (*(v34 + 32))(v31, v13, v32);
    return (*(v34 + 56))(v27, 0, 1, v26);
  }
}

id sub_1007744C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v15 = *(a5 + 64);
  if (v15)
  {
    sub_100777F0C(a5, v16);
    v11 = swift_allocObject();
    v12 = v16[3];
    *(v11 + 48) = v16[2];
    *(v11 + 64) = v12;
    *(v11 + 80) = v16[4];
    v13 = v16[1];
    *(v11 + 16) = v16[0];
    *(v11 + 32) = v13;
    *(v11 + 96) = a1;
    *(v11 + 104) = a2;
    *(v11 + 112) = a3;
    a4 &= 1u;
    *(v11 + 120) = a4;
    *a6 = a1;
    *(a6 + 8) = a2;
    *(a6 + 16) = a3;
    *(a6 + 24) = a4;
    *(a6 + 32) = v15;
    *(a6 + 40) = sub_10077D43C;
    *(a6 + 48) = v11;
    sub_10061BBBC();
    sub_10061BBBC();

    return v15;
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_10077157C(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_100774620@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v42 = sub_1001F1160(&qword_100AF6B60);
  __chkstk_darwin(v42);
  v4 = &v41 - v3;
  v45 = sub_1001F1160(&qword_100AF6B68);
  __chkstk_darwin(v45);
  v6 = &v41 - v5;
  v7 = sub_1001F1160(&qword_100AF6B70);
  v47 = *(v7 - 8);
  v48 = v7;
  __chkstk_darwin(v7);
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v51 = &v41 - v10;
  v44 = sub_1001F1160(&qword_100AF6B78);
  v52 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v50 = &v41 - v13;
  v58 = sub_1007A0224();
  sub_100777F0C(a1, &v53);
  v14 = swift_allocObject();
  v15 = v56;
  v14[3] = v55;
  v14[4] = v15;
  v14[5] = v57;
  v16 = v54;
  v14[1] = v53;
  v14[2] = v16;
  sub_1001F1160(&qword_100AEE030);
  sub_100796C04();
  type metadata accessor for SearchRow(0);
  sub_100005920(&qword_100AEE040, &qword_100AEE030);
  sub_10077157C(&qword_100AF6B80, type metadata accessor for SearchRow);
  sub_10077157C(&qword_100AEE078, &type metadata accessor for SearchResultEntity);
  sub_10079E274();
  *v4 = sub_10079C8F4();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v17 = sub_1001F1160(&qword_100AF6B88);
  sub_1007751F4(a1, &v4[*(v17 + 44)]);
  v18 = sub_10079D294();
  sub_10079BBA4();
  v19 = &v4[*(v42 + 36)];
  *v19 = v18;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  sub_100777F0C(a1, &v53);
  v24 = swift_allocObject();
  v25 = v56;
  v24[3] = v55;
  v24[4] = v25;
  v24[5] = v57;
  v26 = v54;
  v24[1] = v53;
  v24[2] = v26;
  sub_10077D114();
  sub_10079D764();

  sub_100007840(v4, &qword_100AF6B60);
  *&v53 = sub_10079DDC4();
  *&v6[*(v45 + 36)] = sub_10079E1B4();
  sub_10079BE14();
  sub_10077D1CC();
  v27 = v51;
  sub_10079D864();
  sub_100007840(v6, &qword_100AF6B68);
  v28 = *(v52 + 16);
  v29 = v43;
  v30 = v44;
  v28(v43, v50, v44);
  v31 = v46;
  v32 = v47;
  v33 = *(v47 + 16);
  v34 = v27;
  v35 = v48;
  v33(v46, v34, v48);
  v36 = v49;
  v28(v49, v29, v30);
  v37 = sub_1001F1160(&qword_100AF6BB0);
  v33(&v36[*(v37 + 48)], v31, v35);
  v38 = *(v32 + 8);
  v38(v51, v35);
  v39 = *(v52 + 8);
  v39(v50, v30);
  v38(v31, v35);
  return (v39)(v29, v30);
}

uint64_t sub_100774C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = a3;
  v5 = sub_1007A0774();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = sub_1001F1160(&qword_100AEE0B8);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  sub_1007A0244();
  v17 = *(v6 + 16);
  v37 = v10;
  v34 = a1;
  v18 = a1;
  v19 = v5;
  v17(v10, v18, v5);
  v36 = v13;
  sub_1000077D8(v16, v13, &qword_100AEE0B8);
  v20 = *(a2 + 64);
  if (v20)
  {
    v32 = v20;
    sub_100007840(v16, &qword_100AEE0B8);
    sub_100777F0C(a2, v38);
    v21 = v35;
    v17(v35, v34, v5);
    v22 = (*(v6 + 80) + 96) & ~*(v6 + 80);
    v23 = swift_allocObject();
    v24 = v38[3];
    *(v23 + 3) = v38[2];
    *(v23 + 4) = v24;
    *(v23 + 5) = v38[4];
    v25 = v38[1];
    *(v23 + 1) = v38[0];
    *(v23 + 2) = v25;
    v26 = *(v6 + 32);
    v26(v23 + v22, v21, v5);
    KeyPath = swift_getKeyPath();
    v28 = v33;
    *v33 = KeyPath;
    sub_1001F1160(&qword_100AD9FA0);
    swift_storeEnumTagMultiPayload();
    v29 = type metadata accessor for SearchRow(0);
    v26(v28 + v29[5], v37, v19);
    result = sub_10020B3C8(v36, v28 + v29[6], &qword_100AEE0B8);
    *(v28 + v29[7]) = v32;
    v31 = (v28 + v29[8]);
    *v31 = sub_10077D2C0;
    v31[1] = v23;
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_10077157C(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_100774F84()
{
  sub_1007A0254();
  sub_1007A11E4();
}

uint64_t sub_100774FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_1001F1160(&unk_100AD5AC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_1000077D8(a1, &v11 - v8, &unk_100AD5AC0);
  return a5(v9);
}

void sub_10077507C(double *a1)
{
  v2 = sub_1001F1160(&unk_100AEE000);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  if (*a1 >= 100.0)
  {
    if (qword_100AD1BF8 != -1)
    {
      swift_once();
    }

    v5 = qword_100AD1C00;
    v6 = qword_100AF6908;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = qword_100AF6910;
    sub_1007A1624();
    v8 = sub_1007A1634();
    (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
    sub_1007A0274();
  }
}

uint64_t sub_1007751F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v52 = a2;
  v50 = sub_10079BC44();
  v3 = *(v50 - 8);
  __chkstk_darwin(v50);
  v5 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v47[-v7];
  v9 = sub_1001F1160(&qword_100AF6BB8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v47[-v11];
  v13 = sub_1001F1160(&qword_100AF6BC0);
  __chkstk_darwin(v13 - 8);
  v51 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v47[-v16];
  sub_1007A01F4();
  if (sub_1007A01E4())
  {
    sub_10079BDC4();
    v18 = sub_10079D2E4();
    sub_10079BBA4();
    v19 = &v12[*(v9 + 36)];
    *v19 = v18;
    *(v19 + 1) = v20;
    *(v19 + 2) = v21;
    *(v19 + 3) = v22;
    *(v19 + 4) = v23;
    v19[40] = 0;
    sub_10020B3C8(v12, v17, &qword_100AF6BB8);
    (*(v10 + 56))(v17, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v17, 1, 1, v9);
  }

  v24 = v17;
  v49 = sub_10079CB24();
  v65 = 1;
  sub_10077576C(v66);
  *&v64[7] = v66[0];
  *&v64[23] = v66[1];
  *&v64[39] = v66[2];
  *&v64[55] = v66[3];
  v25 = *(a1 + 64);
  if (v25)
  {
    v48 = v65;
    swift_getKeyPath();
    swift_getKeyPath();
    v26 = v25;
    sub_10079B9A4();

    v27 = v50;
    (*(v3 + 104))(v5, enum case for ColorScheme.light(_:), v50);
    v28 = sub_10079BC34();
    v29 = *(v3 + 8);
    v29(v5, v27);
    v29(v8, v27);
    if (v28)
    {
      v30 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    else
    {
      v30 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    v31 = v30;

    KeyPath = swift_getKeyPath();
    v33 = v24;
    v50 = v24;
    v34 = v51;
    sub_1000077D8(v33, v51, &qword_100AF6BC0);
    v35 = v52;
    *v52 = 0;
    *(v35 + 8) = 1;
    v36 = sub_1001F1160(&qword_100AF6BC8);
    sub_1000077D8(v34, v35 + v36[12], &qword_100AF6BC0);
    v37 = v35 + v36[16];
    v38 = v49;
    v53[0] = v49;
    v53[1] = 0;
    v39 = v48;
    LOBYTE(v54[0]) = v48;
    *(v54 + 1) = *v64;
    *(&v54[1] + 1) = *&v64[16];
    *(&v54[3] + 1) = *&v64[48];
    *(&v54[2] + 1) = *&v64[32];
    *&v54[4] = *&v64[63];
    *(&v54[4] + 1) = KeyPath;
    v55 = v31;
    v40 = v54[0];
    *v37 = v49;
    *(v37 + 1) = v40;
    v41 = v54[1];
    v42 = v54[2];
    v43 = v54[3];
    v44 = v54[4];
    *(v37 + 12) = v31;
    *(v37 + 4) = v43;
    *(v37 + 5) = v44;
    *(v37 + 2) = v41;
    *(v37 + 3) = v42;
    v45 = v35 + v36[20];
    *v45 = 0;
    v45[8] = 1;
    sub_1000077D8(v53, v56, &qword_100AF6BD0);
    sub_100007840(v50, &qword_100AF6BC0);
    v59 = *&v64[16];
    v60 = *&v64[32];
    *v61 = *&v64[48];
    v56[0] = v38;
    v56[1] = 0;
    v57 = v39;
    v58 = *v64;
    *&v61[15] = *&v64[63];
    v62 = KeyPath;
    v63 = v31;
    sub_100007840(v56, &qword_100AF6BD0);
    return sub_100007840(v34, &qword_100AF6BC0);
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_10077157C(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_10077576C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v2 - 8);
  v4 = v50 - v3;
  v5 = sub_10079D4D4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005A24D0();
  v57 = v5;
  v58 = v4;
  v55 = v8;
  v56 = v6;
  if (v10)
  {
    v59 = v9;
    v60 = v10;
    sub_100206ECC();
    v11 = sub_10079D5D4();
    v13 = v12;
    v15 = v14;
    v53 = v16;
    (*(v6 + 104))(v8, enum case for Font.TextStyle.headline(_:), v5);
    v17 = sub_10079D3A4();
    (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
    sub_10079D434();
    sub_100007840(v4, &unk_100AD1FC0);
    (*(v6 + 8))(v8, v5);
    v18 = sub_10079D5A4();
    v54 = a1;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    sub_10020B430(v11, v13, v15 & 1);
    v26 = v19;
    a1 = v54;

    v27 = v23 & 1;
    sub_1001F1894(v26, v21, v27);
  }

  else
  {
    v26 = 0;
    v21 = 0;
    v27 = 0;
    v25 = 0;
  }

  sub_1007A01F4();
  if (sub_1007A01E4() & 1) != 0 || (sub_1007A0214(), (sub_1007A0204()))
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v32 = sub_1007A0214();
    if (v33)
    {
      v32 = v32 > 1;
    }

    v59 = sub_1005A32AC(v32);
    v60 = v34;
    sub_100206ECC();
    v35 = sub_10079D5D4();
    v51 = v36;
    v52 = v35;
    LODWORD(v53) = v37;
    v54 = v38;
    v40 = v55;
    v39 = v56;
    v41 = v57;
    (*(v56 + 104))(v55, enum case for Font.TextStyle.subheadline(_:), v57);
    v42 = sub_10079D3A4();
    v43 = v58;
    (*(*(v42 - 8) + 56))(v58, 1, 1, v42);
    v50[1] = sub_10079D434();
    sub_100007840(v43, &unk_100AD1FC0);
    (*(v39 + 8))(v40, v41);
    v45 = v51;
    v44 = v52;
    v28 = sub_10079D5A4();
    v29 = v46;
    LODWORD(v58) = v47;
    v31 = v48;

    sub_10020B430(v44, v45, v53 & 1);

    v30 = v58 & 1;
    sub_1001F1894(v28, v29, v58 & 1);
  }

  sub_100750564(v26, v21, v27, v25);
  sub_100750564(v28, v29, v30, v31);
  sub_1007505A8(v26, v21, v27, v25);
  sub_1007505A8(v28, v29, v30, v31);
  *a1 = v26;
  a1[1] = v21;
  a1[2] = v27;
  a1[3] = v25;
  a1[4] = v28;
  a1[5] = v29;
  a1[6] = v30;
  a1[7] = v31;
  sub_1007505A8(v28, v29, v30, v31);
  return sub_1007505A8(v26, v21, v27, v25);
}

uint64_t sub_100775C30@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1001F1160(&qword_100AF6990);
  __chkstk_darwin(v2);
  v4 = &v18[-v3 - 8];
  v5 = sub_1001F1160(&qword_100AF6A58);
  __chkstk_darwin(v5);
  v7 = &v18[-v6 - 8];
  v8 = *(sub_1007A0194() + 16);

  if (v8)
  {
    v17 = a1;
    __chkstk_darwin(v9);
    sub_10079D274();
    sub_1001F1160(&qword_100AF6A60);
    sub_100005920(&qword_100AF6A68, &qword_100AF6A60);
    sub_10079BBD4();
    v10 = sub_10079DDC4();
    v11 = sub_10079D294();
    v12 = &v4[*(v2 + 36)];
    *v12 = v10;
    v12[8] = v11;
    sub_1000077D8(v4, v7, &qword_100AF6990);
    swift_storeEnumTagMultiPayload();
    sub_1001F1160(&qword_100AF29B0);
    sub_1006C5D78();
    sub_100777B1C();
    sub_10079CCA4();
    return sub_100007840(v4, &qword_100AF6990);
  }

  else
  {
    sub_10079E474();
    sub_10079C414();
    *&v18[71] = v24;
    *&v18[55] = v23;
    *&v18[103] = v26;
    *&v18[87] = v25;
    *&v18[23] = v21;
    *&v18[7] = v20;
    *&v18[39] = v22;
    v14 = *&v18[80];
    *(v7 + 73) = *&v18[64];
    *(v7 + 89) = v14;
    *(v7 + 105) = *&v18[96];
    v15 = *&v18[16];
    *(v7 + 9) = *v18;
    *(v7 + 25) = v15;
    v16 = *&v18[48];
    *(v7 + 41) = *&v18[32];
    v19 = 1;
    *v7 = 0;
    v7[8] = 1;
    *(v7 + 15) = *&v18[111];
    *(v7 + 57) = v16;
    swift_storeEnumTagMultiPayload();
    sub_1001F1160(&qword_100AF29B0);
    sub_1006C5D78();
    sub_100777B1C();
    return sub_10079CCA4();
  }
}

uint64_t sub_100775FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_10079CB24();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_1001F1160(&qword_100AF6A70);
  return sub_100776038(a1, a2 + *(v4 + 44));
}

uint64_t sub_100776038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v80 = sub_1001F1160(&qword_100AF6A78);
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v86 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v85 = &v72 - v5;
  v74 = sub_10079E254();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1001F1160(&qword_100AF6A80);
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v84 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v83 = &v72 - v10;
  v11 = sub_1001F1160(&qword_100AF6A88);
  __chkstk_darwin(v11 - 8);
  v13 = &v72 - v12;
  v14 = sub_1001F1160(&qword_100AF6A90);
  __chkstk_darwin(v14);
  v16 = &v72 - v15;
  v17 = sub_1001F1160(&qword_100AF6A98);
  __chkstk_darwin(v17);
  v82 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v72 - v20;
  __chkstk_darwin(v22);
  v81 = &v72 - v23;
  *v13 = sub_10079C8F4();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v24 = &v13[*(sub_1001F1160(&qword_100AF6AA0) + 44)];
  v75 = a1;
  sub_100776924(a1, v24);
  sub_1001F1160(&qword_100AE17F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080EFF0;
  v26 = sub_10079D2C4();
  *(inited + 32) = v26;
  v27 = sub_10079D2E4();
  *(inited + 33) = v27;
  v28 = sub_10079D2D4();
  sub_10079D2D4();
  if (sub_10079D2D4() != v26)
  {
    v28 = sub_10079D2D4();
  }

  sub_10079D2D4();
  if (sub_10079D2D4() != v27)
  {
    v28 = sub_10079D2D4();
  }

  sub_10079BBA4();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_10020B3C8(v13, v16, &qword_100AF6A88);
  v37 = &v16[*(v14 + 36)];
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = sub_10079D2B4();
  sub_10079BBA4();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  sub_10020B3C8(v16, v21, &qword_100AF6A90);
  v47 = &v21[*(v17 + 36)];
  *v47 = v38;
  *(v47 + 1) = v40;
  *(v47 + 2) = v42;
  *(v47 + 3) = v44;
  *(v47 + 4) = v46;
  v47[40] = 0;
  v48 = v81;
  sub_10020B3C8(v21, v81, &qword_100AF6A98);
  sub_10079E244();
  sub_10079E414();
  sub_1001F1160(&qword_100AE4138);
  sub_10077157C(&qword_100AF6AA8, &type metadata accessor for Divider);
  sub_100777F6C();
  v49 = v83;
  v50 = v74;
  sub_10079DC54();
  (*(v73 + 8))(v7, v50);
  v51 = v75;
  v88 = sub_1007A0194();
  swift_getKeyPath();
  sub_100777F0C(v51, v87);
  v52 = swift_allocObject();
  v53 = v87[3];
  v52[3] = v87[2];
  v52[4] = v53;
  v52[5] = v87[4];
  v54 = v87[1];
  v52[1] = v87[0];
  v52[2] = v54;
  sub_1001F1160(&unk_100AD61F0);
  sub_100005920(&qword_100AEE0D8, &unk_100AD61F0);
  sub_100778030();
  v55 = v85;
  sub_10079E264();
  v56 = v48;
  v57 = v82;
  sub_1000077D8(v56, v82, &qword_100AF6A98);
  v58 = v76;
  v75 = *(v76 + 16);
  v59 = v84;
  v60 = v77;
  v75(v84, v49, v77);
  v61 = v79;
  v62 = *(v79 + 16);
  v63 = v55;
  v64 = v80;
  v62(v86, v63, v80);
  v65 = v57;
  v66 = v78;
  sub_1000077D8(v65, v78, &qword_100AF6A98);
  v67 = sub_1001F1160(&qword_100AF6AC0);
  v75((v66 + *(v67 + 48)), v59, v60);
  v68 = v86;
  v62((v66 + *(v67 + 64)), v86, v64);
  v69 = *(v61 + 8);
  v69(v85, v64);
  v70 = *(v58 + 8);
  v70(v83, v60);
  sub_100007840(v81, &qword_100AF6A98);
  v69(v68, v64);
  v70(v84, v60);
  return sub_100007840(v82, &qword_100AF6A98);
}

uint64_t sub_100776924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a1;
  v104 = a2;
  v101 = sub_1001F1160(&qword_100ADB860);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v83 - v2;
  v98 = sub_1001F1160(&qword_100AF6AC8);
  __chkstk_darwin(v98);
  v103 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v97 = &v83 - v5;
  __chkstk_darwin(v6);
  v102 = &v83 - v7;
  v94 = sub_10079CA64();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10079BC44();
  v10 = *(v9 - 8);
  v108 = v9;
  v109 = v10;
  __chkstk_darwin(v9);
  v106 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v105 = &v83 - v13;
  v14 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v14 - 8);
  v16 = &v83 - v15;
  v17 = sub_10079D4D4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1001F1160(&qword_100AE4440);
  __chkstk_darwin(v21 - 8);
  v96 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v95 = &v83 - v24;
  if (qword_100AD1890 != -1)
  {
    swift_once();
  }

  v110 = xmmword_100B235E8;
  v25 = sub_100206ECC();

  v91 = v25;
  v26 = sub_10079D5D4();
  v28 = v27;
  v30 = v29;
  v90 = v31;
  (*(v18 + 104))(v20, enum case for Font.TextStyle.title2(_:), v17);
  v32 = enum case for Font.Design.serif (_:);
  v33 = sub_10079D3A4();
  v34 = *(v33 - 8);
  (*(v34 + 104))(v16, v32, v33);
  (*(v34 + 56))(v16, 0, 1, v33);
  sub_10079D434();
  sub_100007840(v16, &unk_100AD1FC0);
  (*(v18 + 8))(v20, v17);
  sub_10079D3F4();
  sub_10079D464();

  v86 = sub_10079D5A4();
  v36 = v35;
  v38 = v37;
  v87 = v39;

  sub_10020B430(v26, v28, v30 & 1);

  v40 = *(v107 + 64);
  if (v40)
  {
    v85 = v38;
    swift_getKeyPath();
    swift_getKeyPath();
    v41 = v40;
    v42 = v105;
    sub_10079B9A4();

    v43 = v109;
    v44 = *(v109 + 104);
    v45 = v106;
    LODWORD(v90) = enum case for ColorScheme.light(_:);
    v46 = v108;
    v89 = v44;
    v44(v106);
    v47 = sub_10079BC34();
    v48 = *(v43 + 8);
    v48(v45, v46);
    v109 = v43 + 8;
    v84 = v48;
    v48(v42, v46);
    if (v47)
    {
      _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    else
    {
      _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    v49 = v85;
    v50 = v86;
    v51 = sub_10079D564();
    v88 = v41;
    v53 = v52;
    v55 = v54;
    v57 = v56;

    sub_10020B430(v50, v36, v49 & 1);

    *&v110 = v51;
    *(&v110 + 1) = v53;
    v58 = v55 & 1;
    LOBYTE(v111) = v55 & 1;
    *(&v111 + 1) = v57;
    v59 = v92;
    sub_10079CA54();
    v60 = v95;
    sub_10079D9D4();
    (*(v93 + 8))(v59, v94);
    sub_10020B430(v51, v53, v58);

    if (qword_100AD1898 != -1)
    {
      swift_once();
    }

    v115 = qword_100B235F8;
    v116 = unk_100B23600;
    sub_100777F0C(v107, &v110);
    v61 = swift_allocObject();
    v62 = v113;
    v61[3] = v112;
    v61[4] = v62;
    v61[5] = v114;
    v63 = v111;
    v61[1] = v110;
    v61[2] = v63;

    v64 = v99;
    sub_10079E084();
    swift_getKeyPath();
    swift_getKeyPath();
    v65 = v88;
    v66 = v105;
    sub_10079B9A4();

    v67 = v106;
    v68 = v108;
    v89(v106, v90, v108);
    v69 = sub_10079BC34();
    v70 = v84;
    v84(v67, v68);
    v70(v66, v68);
    if (v69)
    {
      v71 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    else
    {
      v71 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    v72 = v71;

    KeyPath = swift_getKeyPath();
    v74 = v97;
    (*(v100 + 32))(v97, v64, v101);
    v75 = (v74 + *(v98 + 36));
    *v75 = KeyPath;
    v75[1] = v72;
    v76 = v102;
    sub_10020B3C8(v74, v102, &qword_100AF6AC8);
    v77 = v96;
    sub_1000077D8(v60, v96, &qword_100AE4440);
    v78 = v103;
    sub_1000077D8(v76, v103, &qword_100AF6AC8);
    v79 = v104;
    sub_1000077D8(v77, v104, &qword_100AE4440);
    v80 = sub_1001F1160(&qword_100AF6AD0);
    v81 = v79 + *(v80 + 48);
    *v81 = 0;
    *(v81 + 8) = 1;
    sub_1000077D8(v78, v79 + *(v80 + 64), &qword_100AF6AC8);
    sub_100007840(v76, &qword_100AF6AC8);
    sub_100007840(v60, &qword_100AE4440);
    sub_100007840(v78, &qword_100AF6AC8);
    return sub_100007840(v77, &qword_100AE4440);
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_10077157C(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

id sub_100777460@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  v10 = *(a2 + 64);
  if (v10)
  {
    v5 = *a1;
    sub_100777F0C(a2, v11);
    v6 = swift_allocObject();
    v7 = v11[3];
    v6[3] = v11[2];
    v6[4] = v7;
    v6[5] = v11[4];
    v8 = v11[1];
    v6[1] = v11[0];
    v6[2] = v8;
    *a3 = v5;
    a3[1] = v3;
    a3[2] = v10;
    a3[3] = sub_100778084;
    a3[4] = v6;

    return v10;
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_10077157C(&qword_100ADB6A0, type metadata accessor for ChromeStyle);

    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_100777584@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10079C824();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&qword_100AD9FA0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000077D8(v2, &v14 - v9, &qword_100AD9FA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079CAA4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1007A29C4();
    v13 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100777784()
{
  sub_10079E414();
  sub_1001F1160(&qword_100AF6930);
  sub_1001F1160(&qword_100AF6938);
  sub_1007778A4();
  sub_100777E28();
  return sub_10079E424();
}

uint64_t sub_100777854@<X0>(uint64_t a1@<X8>)
{
  sub_100772D6C(*(v1 + 16));
  result = sub_1001F1160(&qword_100AF6930);
  *(a1 + *(result + 36)) = 1;
  return result;
}

unint64_t sub_1007778A4()
{
  result = qword_100AF6940;
  if (!qword_100AF6940)
  {
    sub_1001F1234(&qword_100AF6930);
    sub_100777A14(&qword_100AF6948, &qword_100AF6950, &unk_100845500, sub_10077795C);
    sub_100303C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6940);
  }

  return result;
}

unint64_t sub_10077795C()
{
  result = qword_100AF6958;
  if (!qword_100AF6958)
  {
    sub_1001F1234(&qword_100AF6960);
    sub_100777A14(&qword_100AF6968, &qword_100AF6970, &unk_100845510, sub_100777A90);
    sub_100777C00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6958);
  }

  return result;
}

uint64_t sub_100777A14(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100777A90()
{
  result = qword_100AF6978;
  if (!qword_100AF6978)
  {
    sub_1001F1234(&qword_100AF6980);
    sub_1006C5D78();
    sub_100777B1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6978);
  }

  return result;
}

unint64_t sub_100777B1C()
{
  result = qword_100AF6988;
  if (!qword_100AF6988)
  {
    sub_1001F1234(&qword_100AF6990);
    sub_100005920(&qword_100AF6998, &qword_100AF69A0);
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6988);
  }

  return result;
}

unint64_t sub_100777C00()
{
  result = qword_100AF69A8;
  if (!qword_100AF69A8)
  {
    sub_1001F1234(&qword_100AF69B0);
    sub_100777C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF69A8);
  }

  return result;
}

unint64_t sub_100777C8C()
{
  result = qword_100AF69B8;
  if (!qword_100AF69B8)
  {
    sub_1001F1234(&qword_100AF69C0);
    sub_100777D44();
    sub_100005920(&qword_100AEDF80, &qword_100AEDF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF69B8);
  }

  return result;
}

unint64_t sub_100777D44()
{
  result = qword_100AF69C8;
  if (!qword_100AF69C8)
  {
    sub_1001F1234(&qword_100AF69D0);
    sub_100005920(&qword_100AF69D8, &qword_100AF69E0);
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF69C8);
  }

  return result;
}

unint64_t sub_100777E28()
{
  result = qword_100AF69E8;
  if (!qword_100AF69E8)
  {
    sub_1001F1234(&qword_100AF6938);
    sub_100005920(&qword_100AF69F0, &qword_100AF69F8);
    sub_100005920(&qword_100AF6A00, &qword_100ADC450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF69E8);
  }

  return result;
}

unint64_t sub_100777F6C()
{
  result = qword_100AF6AB0;
  if (!qword_100AF6AB0)
  {
    sub_1001F1234(&qword_100AE4138);
    sub_10077157C(&qword_100AF6AA8, &type metadata accessor for Divider);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6AB0);
  }

  return result;
}

unint64_t sub_100778030()
{
  result = qword_100AF6AB8;
  if (!qword_100AF6AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6AB8);
  }

  return result;
}

uint64_t sub_1007780E0()
{
  v0 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_10079D4D4();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for Font.TextStyle.subheadline(_:), v3, v5);
  v8 = sub_10079D3A4();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  sub_10079D434();
  sub_100007840(v2, &unk_100AD1FC0);
  (*(v4 + 8))(v7, v3);
  sub_10079D3F4();
  v9 = sub_10079D464();

  qword_100AF6918 = v9;
  return result;
}

uint64_t sub_1007782AC()
{
  v0 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_10079D4D4();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for Font.TextStyle.subheadline(_:), v3, v5);
  v8 = enum case for Font.Design.serif (_:);
  v9 = sub_10079D3A4();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v2, v8, v9);
  (*(v10 + 56))(v2, 0, 1, v9);
  v11 = sub_10079D434();
  sub_100007840(v2, &unk_100AD1FC0);
  result = (*(v4 + 8))(v7, v3);
  qword_100AF6920 = v11;
  return result;
}

uint64_t sub_1007784A8@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v108 = sub_100796CF4();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v104 = &v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v106 = &v88 - v4;
  v105 = sub_1007A21D4();
  v103 = *(v105 - 8);
  __chkstk_darwin(v105);
  v101 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v102 = &v88 - v7;
  v8 = sub_1001F1160(&qword_100AEE0B8);
  __chkstk_darwin(v8 - 8);
  v100 = &v88 - v9;
  v99 = sub_10079D074();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchRow(0);
  v12 = v11 - 8;
  v95 = *(v11 - 8);
  v13 = *(v95 + 8);
  __chkstk_darwin(v11);
  v14 = sub_1001F1160(&qword_100AF6E08);
  __chkstk_darwin(v14);
  v16 = &v88 - v15;
  v109 = sub_1001F1160(&qword_100AF6E10);
  v96 = *(v109 - 8);
  __chkstk_darwin(v109);
  v18 = &v88 - v17;
  v93 = sub_1001F1160(&qword_100AF6E18);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v20 = &v88 - v19;
  v91 = sub_1001F1160(&qword_100AF6E20);
  __chkstk_darwin(v91);
  v90 = &v88 - v21;
  *v16 = sub_10079CB34();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v22 = sub_1001F1160(&qword_100AF6E28);
  sub_100779070(v1, &v16[*(v22 + 44)]);
  v16[*(sub_1001F1160(&qword_100AF6E30) + 36)] = 0;
  v23 = sub_10079D2F4();
  sub_10079BBA4();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = &v16[*(sub_1001F1160(&qword_100AF6E38) + 36)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = sub_10079D284();
  sub_10079BBA4();
  v34 = &v16[*(v14 + 36)];
  *v34 = v33;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  sub_10077DC08(v1, &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = (v95[80] + 16) & ~v95[80];
  v40 = swift_allocObject() + v39;
  v41 = v109;
  sub_10077DC6C(&v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v40, type metadata accessor for SearchRow);
  v42 = sub_10077DD40();
  sub_10079D764();

  sub_100007840(v16, &qword_100AF6E08);
  v43 = v97;
  sub_10079D054();
  v111 = v14;
  v112 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v95 = v20;
  v89 = OpaqueTypeConformance2;
  sub_10079D9A4();
  (*(v98 + 8))(v43, v99);
  v45 = v41;
  v46 = v100;
  (*(v96 + 8))(v18, v45);
  v47 = *(v12 + 28);
  v110[7] = sub_1007A0754();
  v110[8] = v48;
  sub_1000077D8(v1 + *(v12 + 32), v46, &qword_100AEE0B8);
  v49 = sub_10079FF64();
  v50 = *(v49 - 8);
  v51 = (*(v50 + 48))(v46, 1, v49);
  v99 = v47;
  if (v51 == 1)
  {
    sub_100007840(v46, &qword_100AEE0B8);
    v52 = 0;
    v53 = 0;
  }

  else
  {
    v52 = sub_10079FF44();
    v53 = v54;
    (*(v50 + 8))(v46, v49);
  }

  v110[9] = v52;
  v110[10] = v53;
  v55 = v102;
  sub_1007A2154();
  v56 = v106;
  sub_100796C94();
  v57 = v103;
  v58 = v105;
  (*(v103 + 16))(v101, v55, v105);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v60 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v61 = v107;
  v62 = v108;
  (*(v107 + 16))(v104, v56, v108);
  sub_1007A22D4();
  (*(v61 + 8))(v56, v62);
  (*(v57 + 8))(v55, v58);
  sub_1001F1160(&unk_100AD5090);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_10080B690;
  v64 = sub_1007A0764();
  v66 = v65;
  *(v63 + 56) = &type metadata for String;
  *(v63 + 64) = sub_10000E4C4();
  *(v63 + 32) = v64;
  *(v63 + 40) = v66;
  v67 = sub_1007A2284();
  v69 = v68;

  v71 = 0;
  v110[11] = v67;
  v110[12] = v69;
  v72 = _swiftEmptyArrayStorage;
LABEL_5:
  if (v71 <= 3)
  {
    v73 = 3;
  }

  else
  {
    v73 = v71;
  }

  v74 = v73 + 1;
  v75 = 16 * v71 + 40;
  while (1)
  {
    if (v71 == 3)
    {
      sub_1001F1160(&qword_100AD4F30);
      swift_arrayDestroy();
      v111 = v72;
      sub_1001F1160(&unk_100AD61F0);
      sub_100005920(&qword_100AEB190, &unk_100AD61F0);
      v82 = sub_1007A20B4();
      v84 = v83;

      v111 = v82;
      v112 = v84;
      v110[0] = v109;
      v110[1] = v89;
      swift_getOpaqueTypeConformance2();
      sub_100206ECC();
      v85 = v90;
      v86 = v93;
      v87 = v95;
      sub_10079D8E4();

      (*(v92 + 8))(v87, v86);
      sub_10079C294();
      return sub_100007840(v85, &qword_100AF6E20);
    }

    if (v74 == ++v71)
    {
      break;
    }

    v76 = v75 + 16;
    v77 = *(&v110[3] + v75);
    v75 += 16;
    if (v77)
    {
      v78 = *(v110 + v76);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10000B3D8(0, *(v72 + 2) + 1, 1, v72);
        v72 = result;
      }

      v80 = *(v72 + 2);
      v79 = *(v72 + 3);
      if (v80 >= v79 >> 1)
      {
        result = sub_10000B3D8((v79 > 1), v80 + 1, 1, v72);
        v72 = result;
      }

      *(v72 + 2) = v80 + 1;
      v81 = &v72[16 * v80];
      *(v81 + 4) = v78;
      *(v81 + 5) = v77;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100779070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AF6E68);
  __chkstk_darwin(v4 - 8);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v30[-v8];
  v32 = sub_10079C8F4();
  v34 = 1;
  sub_1007794C8(a1, &v51);
  v41 = *&v52[80];
  v42 = *&v52[96];
  v43 = *&v52[112];
  v44 = *&v52[128];
  v37 = *&v52[16];
  v38 = *&v52[32];
  v39 = *&v52[48];
  v40 = *&v52[64];
  v35 = v51;
  v36 = *v52;
  v45[6] = *&v52[80];
  v45[7] = *&v52[96];
  v45[8] = *&v52[112];
  v45[9] = *&v52[128];
  v45[2] = *&v52[16];
  v45[3] = *&v52[32];
  v45[4] = *&v52[48];
  v45[5] = *&v52[64];
  v45[0] = v51;
  v45[1] = *v52;
  sub_1000077D8(&v35, &v46, &qword_100AF6E70);
  sub_100007840(v45, &qword_100AF6E70);
  *&v33[103] = v41;
  *&v33[119] = v42;
  *&v33[135] = v43;
  *&v33[151] = v44;
  *&v33[39] = v37;
  *&v33[55] = v38;
  *&v33[71] = v39;
  *&v33[87] = v40;
  *&v33[7] = v35;
  *&v33[23] = v36;
  v10 = v34;
  v31 = v34;
  v11 = sub_10079D2B4();
  sub_10079BBA4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100779CDC(a1, v9);
  sub_1000077D8(v9, v6, &qword_100AF6E68);
  *(&v47[7] + 1) = *&v33[112];
  *(&v47[8] + 1) = *&v33[128];
  *(&v47[9] + 1) = *&v33[144];
  *(&v47[3] + 1) = *&v33[48];
  *(&v47[4] + 1) = *&v33[64];
  *(&v47[5] + 1) = *&v33[80];
  *(&v47[6] + 1) = *&v33[96];
  *(v47 + 1) = *v33;
  v20 = v32;
  v46 = v32;
  LOBYTE(v47[0]) = v10;
  *&v47[10] = *&v33[159];
  *(&v47[1] + 1) = *&v33[16];
  *(&v47[2] + 1) = *&v33[32];
  BYTE8(v47[10]) = v11;
  *&v48 = v13;
  *(&v48 + 1) = v15;
  *&v49 = v17;
  *(&v49 + 1) = v19;
  v50 = 0;
  *(a2 + 224) = 0;
  v21 = v47[8];
  *(a2 + 128) = v47[7];
  *(a2 + 144) = v21;
  v22 = v47[4];
  *(a2 + 64) = v47[3];
  *(a2 + 80) = v22;
  v23 = v47[6];
  *(a2 + 96) = v47[5];
  *(a2 + 112) = v23;
  v24 = v47[0];
  *a2 = v46;
  *(a2 + 16) = v24;
  v25 = v47[2];
  *(a2 + 32) = v47[1];
  *(a2 + 48) = v25;
  v26 = v47[10];
  *(a2 + 160) = v47[9];
  *(a2 + 176) = v26;
  v27 = v49;
  *(a2 + 192) = v48;
  *(a2 + 208) = v27;
  v28 = sub_1001F1160(&qword_100AF6E78);
  sub_1000077D8(v6, a2 + *(v28 + 48), &qword_100AF6E68);
  sub_1000077D8(&v46, &v51, &qword_100AF6E80);
  sub_100007840(v9, &qword_100AF6E68);
  sub_100007840(v6, &qword_100AF6E68);
  *&v52[113] = *&v33[112];
  *&v52[129] = *&v33[128];
  *v53 = *&v33[144];
  *&v52[49] = *&v33[48];
  *&v52[65] = *&v33[64];
  *&v52[81] = *&v33[80];
  *&v52[97] = *&v33[96];
  *&v52[1] = *v33;
  *&v52[17] = *&v33[16];
  v51 = v20;
  v52[0] = v31;
  *&v53[15] = *&v33[159];
  *&v52[33] = *&v33[32];
  v54 = v11;
  v55 = v13;
  v56 = v15;
  v57 = v17;
  v58 = v19;
  v59 = 0;
  return sub_100007840(&v51, &qword_100AF6E80);
}

uint64_t sub_1007794C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v94 = sub_10079CAA4();
  v91 = *(v94 - 8);
  __chkstk_darwin(v94);
  v88 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v87 = &v76 - v5;
  v6 = sub_10079BC44();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v76 - v11;
  v13 = type metadata accessor for SearchRow(0);
  v84 = *(v13 + 20);
  v76 = a1;
  v127 = sub_1007A0754();
  v128 = v14;
  v80 = sub_100206ECC();
  v15 = sub_10079D5D4();
  v17 = v16;
  v19 = v18;
  if (qword_100AD1C08 != -1)
  {
    swift_once();
  }

  v98 = sub_10079D5A4();
  KeyPath = v20;
  v89 = v21;
  LODWORD(v79) = v22;
  sub_10020B430(v15, v17, v19 & 1);

  v23 = *(v76 + *(v13 + 28));
  swift_getKeyPath();
  swift_getKeyPath();
  v86 = v23;
  sub_10079B9A4();

  v24 = *(v7 + 104);
  v82 = enum case for ColorScheme.light(_:);
  v83 = v7 + 104;
  v81 = v24;
  v24(v9);
  v25 = sub_10079BC34();
  v26 = *(v7 + 8);
  v26(v9, v6);
  v85 = v26;
  v26(v12, v6);
  v27 = v9;
  v96 = v7 + 8;
  v97 = v6;
  if (v25)
  {
    _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  else
  {
    _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  v28 = v79;
  v29 = v98;
  v30 = v89;
  v31 = sub_10079D564();
  v92 = v32;
  v93 = v31;
  v34 = v33;
  v95 = v35;

  sub_10020B430(v29, v30, v28 & 1);

  KeyPath = swift_getKeyPath();
  v89 = swift_getKeyPath();
  LODWORD(v98) = v34 & 1;
  v145 = v34 & 1;
  v143 = 0;
  v127 = sub_1007A0764();
  v128 = v36;
  v37 = sub_10079D5D4();
  v39 = v38;
  v41 = v40;
  if (qword_100AD1C10 != -1)
  {
    swift_once();
  }

  v42 = sub_10079D5A4();
  v79 = v43;
  v80 = v42;
  v77 = v44;
  v84 = v45;
  sub_10020B430(v37, v39, v41 & 1);

  v78 = swift_getKeyPath();
  v46 = v87;
  sub_100777584(v87);
  v47 = v91;
  v48 = v88;
  v49 = v94;
  (*(v91 + 104))(v88, enum case for ColorSchemeContrast.standard(_:), v94);
  v50 = sub_10079CA94();
  v51 = *(v47 + 8);
  v51(v48, v49);
  v51(v46, v49);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v52 = v97;
  v81(v27, v82, v97);
  v53 = sub_10079BC34();
  v54 = v85;
  v85(v27, v52);
  v54(v12, v52);
  if (v50)
  {
    v55 = sub_10079DE54();
  }

  else if (v53)
  {
    v55 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  else
  {
    v55 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  v56 = v55;
  v57 = swift_getKeyPath();
  v58 = v77 & 1;
  v141 = v77 & 1;
  v139 = 0;
  v60 = v92;
  v59 = v93;
  *&v112 = v93;
  *(&v112 + 1) = v92;
  LOBYTE(v113) = v98;
  *(&v113 + 1) = *v144;
  DWORD1(v113) = *&v144[3];
  v61 = v95;
  *(&v113 + 1) = v95;
  *&v114 = KeyPath;
  *(&v114 + 1) = 1;
  LOBYTE(v115) = 0;
  DWORD1(v115) = *&v142[3];
  *(&v115 + 1) = *v142;
  v62 = v89;
  *(&v115 + 1) = v89;
  v116 = 0;
  LOBYTE(v126) = 0;
  v124 = v114;
  v125 = v115;
  v122 = v112;
  v123 = v113;
  v111 = 1;
  v64 = v79;
  v63 = v80;
  *&v117 = v80;
  *(&v117 + 1) = v79;
  LOBYTE(v118) = v77 & 1;
  DWORD1(v118) = *&v140[3];
  *(&v118 + 1) = *v140;
  v65 = v84;
  v66 = v78;
  *(&v118 + 1) = v84;
  *&v119 = v78;
  *(&v119 + 1) = 1;
  LOBYTE(v120) = 0;
  DWORD1(v120) = *&v138[3];
  *(&v120 + 1) = *v138;
  *(&v120 + 1) = v57;
  v121 = v56;
  *(v110 + 7) = v117;
  *(&v110[4] + 7) = v56;
  *(&v110[3] + 7) = v120;
  *(&v110[2] + 7) = v119;
  *(&v110[1] + 7) = v118;
  v67 = v112;
  v68 = v113;
  v69 = v115;
  v70 = v126;
  v71 = v90;
  *(v90 + 32) = v114;
  *(v71 + 48) = v69;
  *v71 = v67;
  *(v71 + 16) = v68;
  *(v71 + 64) = v70;
  *(v71 + 72) = 0;
  *(v71 + 80) = 1;
  v72 = v110[1];
  *(v71 + 81) = v110[0];
  v73 = v110[2];
  v74 = v110[3];
  *(v71 + 144) = *(&v110[3] + 15);
  *(v71 + 129) = v74;
  *(v71 + 113) = v73;
  *(v71 + 97) = v72;
  v127 = v63;
  v128 = v64;
  v129 = v58;
  *&v130[3] = *&v140[3];
  *v130 = *v140;
  v131 = v65;
  v132 = v66;
  v133 = 1;
  v134 = 0;
  *&v135[3] = *&v138[3];
  *v135 = *v138;
  v136 = v57;
  v137 = v56;
  sub_1000077D8(&v112, v100, &qword_100ADC190);
  sub_1000077D8(&v117, v100, &qword_100AF6E88);
  sub_100007840(&v127, &qword_100AF6E88);
  v100[0] = v59;
  v100[1] = v60;
  v101 = v98;
  *v102 = *v144;
  *&v102[3] = *&v144[3];
  v103 = v61;
  v104 = KeyPath;
  v105 = 1;
  v106 = 0;
  *v107 = *v142;
  *&v107[3] = *&v142[3];
  v108 = v62;
  v109 = 0;
  return sub_100007840(v100, &qword_100ADC190);
}

uint64_t sub_100779CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = sub_10079BC44();
  v48 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = &v40 - v6;
  v7 = type metadata accessor for SearchResultText();
  v8 = *(v7 - 8);
  v52 = v7;
  v53 = v8;
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v50 = &v40 - v12;
  v13 = sub_1001F1160(&qword_100AEE0B8);
  __chkstk_darwin(v13 - 8);
  v15 = &v40 - v14;
  v16 = sub_10079FF64();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v40 - v21;
  v23 = *(type metadata accessor for SearchRow(0) + 24);
  v46 = a1;
  sub_1000077D8(a1 + v23, v15, &qword_100AEE0B8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100007840(v15, &qword_100AEE0B8);
    v24 = 1;
    v25 = v52;
  }

  else
  {
    v45 = a2;
    v42 = *(v17 + 32);
    v43 = v17 + 32;
    v42(v22, v15, v16);
    v26 = *(v17 + 16);
    v44 = v19;
    v26(v19, v22, v16);
    if (qword_100AD1C10 != -1)
    {
      swift_once();
    }

    v40 = sub_10079D384();
    swift_getKeyPath();
    swift_getKeyPath();
    v27 = v47;
    sub_10079B9A4();

    v28 = v48;
    v29 = v49;
    v30 = v51;
    (*(v48 + 104))(v49, enum case for ColorScheme.light(_:), v51);
    v31 = sub_10079BC34();
    v32 = *(v28 + 8);
    v32(v29, v30);
    v32(v27, v30);
    if (v31)
    {
      v33 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    else
    {
      v33 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    v34 = v33;
    v25 = v52;
    v35 = v44;
    (*(v17 + 8))(v22, v16);
    v42(v10, v35, v16);
    v36 = v40;
    *&v10[v25[5]] = v41;
    *&v10[v25[6]] = v36;
    *&v10[v25[7]] = v34;
    *&v10[v25[8]] = 3;
    v37 = v10;
    v38 = v50;
    sub_10077DC6C(v37, v50, type metadata accessor for SearchResultText);
    a2 = v45;
    sub_10077DC6C(v38, v45, type metadata accessor for SearchResultText);
    v24 = 0;
  }

  return (*(v53 + 56))(a2, v24, 1, v25);
}

uint64_t sub_10077A1F0()
{
  v1 = sub_10079C8F4();
  LOBYTE(v20[0]) = 1;
  sub_10077A3C0(v0, v18);
  *&v16[23] = v18[1];
  *&v16[39] = v18[2];
  *&v16[55] = v18[3];
  v16[71] = v19;
  *&v16[7] = v18[0];
  v2 = v20[0];
  v3 = sub_10079D294();
  sub_10079BBA4();
  *&v13[17] = *&v16[16];
  *&v13[33] = *&v16[32];
  *&v13[49] = *&v16[48];
  v13[0] = v2;
  *&v13[65] = *&v16[64];
  *&v13[1] = *v16;
  v13[73] = 0;
  LOBYTE(v14) = v3;
  *(&v14 + 1) = v4;
  *v15 = v5;
  *&v15[8] = v6;
  *&v15[16] = v7;
  v15[24] = 0;
  v17[0] = *v0;
  *(v17 + 9) = *(v0 + 9);
  v8 = *(v0 + 32);
  v9 = swift_allocObject();
  v10 = *(v0 + 16);
  *(v9 + 16) = *v0;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v0 + 32);
  *(v9 + 64) = *(v0 + 48);
  sub_10077DF64(v17, v20);
  v11 = v8;

  sub_1001F1160(&qword_100AF6E90);
  sub_10077DFC0();
  sub_10079D764();

  v20[6] = v14;
  v21[0] = *v15;
  *(v21 + 9) = *&v15[9];
  v20[2] = *&v13[16];
  v20[3] = *&v13[32];
  v20[4] = *&v13[48];
  v20[5] = *&v13[64];
  v20[0] = v1;
  v20[1] = *v13;
  return sub_100007840(v20, &qword_100AF6E90);
}

uint64_t sub_10077A3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10079BC44();
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin(v4);
  v45 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v44 = v42 - v7;
  v8 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v8 - 8);
  v10 = v42 - v9;
  v11 = sub_10079D4D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10077E130(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  v17 = v16;
  v19 = v18;
  v42[1] = v20;
  (*(v12 + 104))(v14, enum case for Font.TextStyle.headline(_:), v11);
  v21 = sub_10079D3A4();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  sub_10079D434();
  sub_100007840(v10, &unk_100AD1FC0);
  (*(v12 + 8))(v14, v11);
  v43 = sub_10079D5A4();
  v23 = v22;
  v25 = v24;

  sub_10020B430(v15, v17, v19 & 1);

  swift_getKeyPath();
  swift_getKeyPath();
  v26 = v44;
  sub_10079B9A4();

  v27 = v45;
  v28 = v46;
  v29 = v47;
  (*(v46 + 104))(v45, enum case for ColorScheme.light(_:), v47);
  v30 = v27;
  LOBYTE(v27) = sub_10079BC34();
  v31 = *(v28 + 8);
  v31(v30, v29);
  v31(v26, v29);
  if (v27)
  {
    _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  else
  {
    _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  v32 = v43;
  v33 = sub_10079D564();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  sub_10020B430(v32, v23, v25 & 1);

  KeyPath = swift_getKeyPath();
  v37 &= 1u;
  v50 = v37;
  v49 = 0;
  v48 = 1;
  *a2 = v33;
  *(a2 + 8) = v35;
  *(a2 + 16) = v37;
  *(a2 + 24) = v39;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  sub_1001F1894(v33, v35, v37);

  sub_10020B430(v33, v35, v37);
}

uint64_t sub_10077A864@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AF6ED0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  v11 = _s5Books11ChromeStyleC20_themeSecondaryLabel33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI5ColorVGvpfi_0();
  *v10 = sub_10079C8F4();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v12 = sub_1001F1160(&qword_100AF6ED8);
  sub_10077A9F8(a1, &v10[*(v12 + 44)]);
  LOBYTE(a1) = sub_10079D294();
  sub_10079BBA4();
  v13 = &v10[*(v5 + 44)];
  *v13 = a1;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  sub_1000077D8(v10, v7, &qword_100AF6ED0);
  *a2 = v11;
  v18 = sub_1001F1160(&qword_100AF6EE0);
  sub_1000077D8(v7, a2 + *(v18 + 48), &qword_100AF6ED0);

  sub_100007840(v10, &qword_100AF6ED0);
  sub_100007840(v7, &qword_100AF6ED0);
}

uint64_t sub_10077A9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AF6EE8);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  sub_10077ABC4(a1, &v19 - v14);
  sub_10077B2D0(a1, v12);
  sub_1000077D8(v15, v9, &qword_100AF6EE8);
  sub_1000077D8(v12, v6, &qword_100AF6EE8);
  sub_1000077D8(v9, a2, &qword_100AF6EE8);
  v16 = sub_1001F1160(&qword_100AF6EF0);
  v17 = a2 + *(v16 + 48);
  *v17 = 0;
  *(v17 + 8) = 1;
  sub_1000077D8(v6, a2 + *(v16 + 64), &qword_100AF6EE8);
  sub_100007840(v12, &qword_100AF6EE8);
  sub_100007840(v15, &qword_100AF6EE8);
  sub_100007840(v6, &qword_100AF6EE8);
  return sub_100007840(v9, &qword_100AF6EE8);
}

uint64_t sub_10077ABC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AF6EF8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  v8 = sub_1001F1160(&unk_100AD5AC0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_1007969B4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  sub_1001F1160(&qword_100AF6AD8);
  sub_10079E1C4();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100007840(v10, &unk_100AD5AC0);
    v18 = 1;
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    v19 = (*(v12 + 16))(v14, v17, v11);
    v22 = v4;
    __chkstk_darwin(v19);
    *(&v21 - 2) = a1;
    sub_1001F1160(&qword_100ADC1A0);
    sub_100324064();
    sub_10079D514();
    v4 = v22;
    (*(v12 + 8))(v17, v11);
    (*(v5 + 32))(a2, v7, v4);
    v18 = 0;
  }

  return (*(v5 + 56))(a2, v18, 1, v4);
}

uint64_t sub_10077AEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v42 = sub_10079BC44();
  v3 = *(v42 - 8);
  __chkstk_darwin(v42);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  v9 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - v10;
  sub_10079C984();
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v14 = sub_10079D5B4();
  v16 = v15;
  v18 = v17;
  v19 = sub_10079D3A4();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  sub_10079D424();
  sub_100007840(v11, &unk_100AD1FC0);
  v20 = sub_10079D5A4();
  v38 = v21;
  v39 = v20;
  v23 = v22;
  v40 = v24;

  sub_10020B430(v14, v16, v18 & 1);

  type metadata accessor for FooterView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v25 = v42;
  (*(v3 + 104))(v5, enum case for ColorScheme.light(_:), v42);
  LOBYTE(v16) = sub_10079BC34();
  v26 = *(v3 + 8);
  v26(v5, v25);
  v26(v8, v25);
  if (v16)
  {
    _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  else
  {
    _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  v28 = v38;
  v27 = v39;
  v29 = sub_10079D564();
  v31 = v30;
  v33 = v32;
  v35 = v34;

  sub_10020B430(v27, v28, v23 & 1);

  result = swift_getKeyPath();
  *a2 = v29;
  *(a2 + 8) = v31;
  *(a2 + 16) = v33 & 1;
  *(a2 + 24) = v35;
  *(a2 + 32) = result;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_10077B2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_1001F1160(&qword_100AF6EF8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_1001F1160(&unk_100AD5AC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_1007969B4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  type metadata accessor for FooterView(0);
  sub_1001F1160(&qword_100AF6AD8);
  sub_10079E1C4();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100007840(v9, &unk_100AD5AC0);
    v17 = 1;
    v18 = v23;
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    v19 = (*(v11 + 16))(v13, v16, v10);
    __chkstk_darwin(v19);
    *(&v22 - 2) = a1;
    sub_1001F1160(&qword_100ADC1A0);
    sub_100324064();
    sub_10079D514();
    (*(v11 + 8))(v16, v10);
    v20 = v23;
    (*(v4 + 32))(v23, v6, v3);
    v17 = 0;
    v18 = v20;
  }

  return (*(v4 + 56))(v18, v17, 1, v3);
}

uint64_t sub_10077B608@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v54 = a1;
  v58 = a2;
  v2 = sub_10079BC44();
  v56 = *(v2 - 8);
  v57 = v2;
  __chkstk_darwin(v2);
  v55 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v53 = &v52 - v5;
  v6 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v52 - v7;
  v9 = sub_100796CF4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v52 - v14;
  v16 = sub_1007A21D4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v52 - v21;
  sub_1007A2154();
  sub_100796C94();
  (*(v17 + 16))(v19, v22, v16);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v10 + 16))(v12, v15, v9);
  v25 = sub_1007A22D4();
  v27 = v26;
  (*(v10 + 8))(v15, v9);
  (*(v17 + 8))(v22, v16);
  v59 = v25;
  v60 = v27;
  sub_100206ECC();
  v28 = sub_10079D5D4();
  v30 = v29;
  LOBYTE(v27) = v31;
  v32 = sub_10079D3A4();
  (*(*(v32 - 8) + 56))(v8, 1, 1, v32);
  sub_10079D424();
  sub_100007840(v8, &unk_100AD1FC0);
  v33 = sub_10079D5A4();
  v35 = v34;
  v37 = v36;

  sub_10020B430(v28, v30, v27 & 1);

  type metadata accessor for FooterView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  v38 = v53;
  sub_10079B9A4();

  v39 = v55;
  v40 = v56;
  v41 = v57;
  (*(v56 + 104))(v55, enum case for ColorScheme.light(_:), v57);
  LOBYTE(v25) = sub_10079BC34();
  v42 = *(v40 + 8);
  v42(v39, v41);
  v42(v38, v41);
  if (v25)
  {
    _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  else
  {
    _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  v43 = sub_10079D564();
  v45 = v44;
  v47 = v46;
  v49 = v48;

  sub_10020B430(v33, v35, v37 & 1);

  result = swift_getKeyPath();
  v51 = v58;
  *v58 = v43;
  v51[1] = v45;
  *(v51 + 16) = v47 & 1;
  v51[3] = v49;
  v51[4] = result;
  v51[5] = 1;
  *(v51 + 48) = 0;
  return result;
}

uint64_t sub_10077BBA8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_10079CB24();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_1001F1160(&qword_100AF6EC0);
  sub_10077A864(v1, (a1 + *(v3 + 44)));
  v4 = sub_10079DDC4();
  v5 = sub_10079D294();
  result = sub_1001F1160(&qword_100AF6EC8);
  v7 = a1 + *(result + 36);
  *v7 = v4;
  *(v7 + 8) = v5;
  return result;
}

uint64_t sub_10077BC34@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v82 = a2;
  v3 = sub_10079E254();
  v78 = *(v3 - 8);
  v79 = v3;
  __chkstk_darwin(v3);
  v77 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100AF6A80);
  v80 = *(v5 - 8);
  v81 = v5;
  __chkstk_darwin(v5);
  v84 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v83 = &v64 - v8;
  v9 = sub_10079D074();
  v72 = *(v9 - 8);
  v73 = v9;
  __chkstk_darwin(v9);
  v69 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&qword_100AF6DA0);
  v70 = *(v11 - 8);
  v71 = v11;
  __chkstk_darwin(v11);
  v13 = &v64 - v12;
  v14 = sub_1001F1160(&qword_100AF6DA8);
  v75 = *(v14 - 8);
  v76 = v14;
  __chkstk_darwin(v14);
  v74 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v64 - v17;
  v68 = sub_10079C8F4();
  LOBYTE(v90) = 1;
  sub_10077C64C(a1, v86);
  v99 = v86[8];
  v100 = v86[9];
  v95 = v86[4];
  v96 = v86[5];
  v97 = v86[6];
  v98 = v86[7];
  v91 = v86[0];
  v92 = v86[1];
  v93 = v86[2];
  v94 = v86[3];
  v102[8] = v86[8];
  v102[9] = v86[9];
  v102[4] = v86[4];
  v102[5] = v86[5];
  v102[6] = v86[6];
  v102[7] = v86[7];
  v102[0] = v86[0];
  v102[1] = v86[1];
  v101 = v86[10];
  v103 = v86[10];
  v102[2] = v86[2];
  v102[3] = v86[3];
  sub_1000077D8(&v91, v85, &qword_100AF6DB0);
  sub_100007840(v102, &qword_100AF6DB0);
  *&v87[119] = v98;
  *&v87[135] = v99;
  *&v87[151] = v100;
  *&v87[55] = v94;
  *&v87[71] = v95;
  *&v87[87] = v96;
  *&v87[103] = v97;
  *&v87[7] = v91;
  *&v87[23] = v92;
  v87[167] = v101;
  *&v87[39] = v93;
  v67 = v90;
  sub_1001F1160(&qword_100AE17F0);
  v19 = swift_allocObject();
  v66 = xmmword_10080EFF0;
  *(v19 + 16) = xmmword_10080EFF0;
  v20 = sub_10079D2A4();
  *(v19 + 32) = v20;
  v21 = sub_10079D2B4();
  *(v19 + 33) = v21;
  v22 = sub_10079D2D4();
  sub_10079D2D4();
  if (sub_10079D2D4() != v20)
  {
    v22 = sub_10079D2D4();
  }

  sub_10079D2D4();
  if (sub_10079D2D4() != v21)
  {
    v22 = sub_10079D2D4();
  }

  sub_10079BBA4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v88 = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = v66;
  v32 = sub_10079D2C4();
  *(v31 + 32) = v32;
  v33 = sub_10079D2E4();
  *(v31 + 33) = v33;
  v34 = sub_10079D2D4();
  sub_10079D2D4();
  if (sub_10079D2D4() != v32)
  {
    v34 = sub_10079D2D4();
  }

  sub_10079D2D4();
  if (sub_10079D2D4() != v33)
  {
    v34 = sub_10079D2D4();
  }

  sub_10079BBA4();
  *(&v85[16] + 1) = *&v87[112];
  *(&v85[18] + 1) = *&v87[128];
  *(&v85[20] + 1) = *&v87[144];
  *(&v85[8] + 1) = *&v87[48];
  *(&v85[10] + 1) = *&v87[64];
  *(&v85[12] + 1) = *&v87[80];
  *(&v85[14] + 1) = *&v87[96];
  *(&v85[2] + 1) = *v87;
  *(&v85[4] + 1) = *&v87[16];
  v89 = 0;
  v85[0] = v68;
  v85[1] = 0;
  LOBYTE(v85[2]) = v67;
  *(&v85[22] + 1) = *&v87[160];
  *(&v85[6] + 1) = *&v87[32];
  BYTE1(v85[23]) = 0;
  LOBYTE(v85[24]) = v22;
  v85[25] = v24;
  v85[26] = v26;
  v85[27] = v28;
  v85[28] = v30;
  LOBYTE(v85[29]) = 0;
  LOBYTE(v85[30]) = v34;
  v85[31] = v35;
  v85[32] = v36;
  v85[33] = v37;
  v85[34] = v38;
  LOBYTE(v85[35]) = 0;
  v90 = *a1;
  v39 = a1[2];
  v40 = swift_allocObject();
  v41 = *(a1 + 1);
  *(v40 + 16) = *a1;
  *(v40 + 32) = v41;
  *(v40 + 48) = a1[4];
  sub_1002BB1A4(&v90, v86);
  v42 = v39;

  v43 = sub_1001F1160(&qword_100AF6DB8);
  v44 = sub_10077DA0C();
  sub_10079D764();

  memcpy(v86, v85, 0x119uLL);
  sub_100007840(v86, &qword_100AF6DB8);
  v45 = v69;
  sub_10079D054();
  v85[0] = v43;
  v85[1] = v44;
  swift_getOpaqueTypeConformance2();
  v46 = v18;
  v65 = v18;
  v47 = v71;
  sub_10079D9A4();
  (*(v72 + 8))(v45, v73);
  (*(v70 + 8))(v13, v47);
  v48 = v77;
  sub_10079E244();
  sub_10079E414();
  sub_1001F1160(&qword_100AE4138);
  sub_10077157C(&qword_100AF6AA8, &type metadata accessor for Divider);
  sub_100777F6C();
  v49 = v83;
  v50 = v79;
  sub_10079DC54();
  (*(v78 + 8))(v48, v50);
  v52 = v74;
  v51 = v75;
  v53 = *(v75 + 16);
  v54 = v76;
  v53(v74, v46, v76);
  v55 = v80;
  v79 = *(v80 + 16);
  v56 = v49;
  v57 = v81;
  v79(v84, v56, v81);
  v58 = v82;
  v53(v82, v52, v54);
  v59 = &v58[*(sub_1001F1160(&qword_100AF6DF8) + 48)];
  v60 = v84;
  v79(v59, v84, v57);
  v61 = *(v55 + 8);
  v61(v83, v57);
  v62 = *(v51 + 8);
  v62(v65, v54);
  v61(v60, v57);
  return (v62)(v52, v54);
}

uint64_t sub_10077C64C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v63 = a1;
  v59 = a2;
  v2 = sub_10079BC44();
  v66 = *(v2 - 8);
  v67 = v2;
  __chkstk_darwin(v2);
  v65 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v64 = &v58 - v5;
  v6 = sub_10079DF34();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&qword_100AD8DD8);
  __chkstk_darwin(v10 - 8);
  v12 = &v58 - v11;
  sub_10079DFA4();
  v13 = enum case for Image.TemplateRenderingMode.template(_:);
  v14 = sub_10079DF74();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v12, v13, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  sub_10079DF44();

  sub_100007840(v12, &qword_100AD8DD8);
  (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
  v76 = sub_10079DF94();

  (*(v7 + 8))(v9, v6);
  sub_10079E474();
  sub_10079BE54();
  v72 = v120;
  LODWORD(v6) = v121;
  v74 = v122;
  LODWORD(v12) = v123;
  v69 = v125;
  v70 = v124;
  v68 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  KeyPath = swift_getKeyPath();
  v73 = v6;
  LOBYTE(v102) = v6;
  v75 = v12;
  LOBYTE(v98) = v12;
  v16 = v63[1];
  v102 = *v63;
  v103 = v16;
  sub_100206ECC();

  v17 = sub_10079D5D4();
  v60 = v18;
  v61 = v17;
  v20 = v19;
  v62 = v21;
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v64;
  sub_10079B9A4();

  v23 = v65;
  v24 = v66;
  v25 = v67;
  (*(v66 + 104))(v65, enum case for ColorScheme.light(_:), v67);
  v26 = v23;
  LOBYTE(v23) = sub_10079BC34();
  v27 = *(v24 + 8);
  v27(v26, v25);
  v27(v22, v25);
  if (v23)
  {
    _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  else
  {
    _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  v28 = v60;
  v29 = v61;
  v30 = sub_10079D564();
  v32 = v31;
  v34 = v33;

  sub_10020B430(v29, v28, v20 & 1);

  sub_10079D354();
  v35 = sub_10079D5A4();
  v37 = v36;
  v39 = v38;
  v41 = v40;

  sub_10020B430(v30, v32, v34 & 1);

  LOBYTE(v30) = sub_10079D2C4();
  sub_10079BBA4();
  v117 = v39 & 1;
  v114 = 0;
  *&v93 = v76;
  *(&v93 + 1) = v72;
  LOBYTE(v94) = v73;
  *(&v94 + 1) = *v119;
  DWORD1(v94) = *&v119[3];
  *(&v94 + 1) = v74;
  LOBYTE(v95) = v75;
  DWORD1(v95) = *&v118[3];
  *(&v95 + 1) = *v118;
  v43 = v69;
  v42 = v70;
  *(&v95 + 1) = v70;
  *&v96 = v69;
  v44 = v68;
  *(&v96 + 1) = KeyPath;
  v97 = v68;
  *&v92[0] = v68;
  v91 = v96;
  v89 = v94;
  v90 = v95;
  v88 = v93;
  *&v98 = v35;
  *(&v98 + 1) = v37;
  LOBYTE(v99) = v39 & 1;
  DWORD1(v99) = *&v116[3];
  *(&v99 + 1) = *v116;
  *(&v99 + 1) = v41;
  LOBYTE(v100) = v30;
  DWORD1(v100) = *&v115[3];
  *(&v100 + 1) = *v115;
  *(&v100 + 1) = v45;
  *&v101[0] = v46;
  *(&v101[0] + 1) = v47;
  *&v101[1] = v48;
  BYTE8(v101[1]) = 0;
  *(v92 + 8) = v98;
  *(&v92[4] + 1) = *(v101 + 9);
  *(&v92[3] + 8) = v101[0];
  *(&v92[2] + 8) = v100;
  *(&v92[1] + 8) = v99;
  v87 = 1;
  v49 = v94;
  v50 = v59;
  *v59 = v93;
  v50[1] = v49;
  v51 = v90;
  v52 = v91;
  v53 = v92[1];
  v54 = v92[2];
  v50[4] = v92[0];
  v50[5] = v53;
  v50[2] = v51;
  v50[3] = v52;
  v55 = v92[4];
  v56 = *&v92[5];
  v50[7] = v92[3];
  v50[8] = v55;
  v50[6] = v54;
  *(v50 + 18) = v56;
  *(v50 + 19) = 0;
  *(v50 + 160) = 1;
  v102 = v35;
  v103 = v37;
  v104 = v39 & 1;
  *v105 = *v116;
  *&v105[3] = *&v116[3];
  v106 = v41;
  v107 = v30;
  *v108 = *v115;
  *&v108[3] = *&v115[3];
  v109 = v45;
  v110 = v46;
  v111 = v47;
  v112 = v48;
  v113 = 0;
  sub_1000077D8(&v93, v77, &qword_100AF6E00);
  sub_1000077D8(&v98, v77, &qword_100ADAB00);
  sub_100007840(&v102, &qword_100ADAB00);
  v77[0] = v76;
  v77[1] = v72;
  v78 = v73;
  *v79 = *v119;
  *&v79[3] = *&v119[3];
  v80 = v74;
  v81 = v75;
  *v82 = *v118;
  *&v82[3] = *&v118[3];
  v83 = v42;
  v84 = v43;
  v85 = KeyPath;
  v86 = v44;
  return sub_100007840(v77, &qword_100AF6E00);
}

uint64_t sub_10077CDB4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a2();
  sub_10079BBA4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_10079E254();
  (*(*(v14 - 8) + 16))(a3, a1, v14);
  result = sub_1001F1160(&qword_100AE4138);
  v16 = a3 + *(result + 36);
  *v16 = v5;
  *(v16 + 8) = v7;
  *(v16 + 16) = v9;
  *(v16 + 24) = v11;
  *(v16 + 32) = v13;
  *(v16 + 40) = 0;
  return result;
}

uint64_t sub_10077CE80@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v7 = *(v1 + 32);
  *a1 = sub_10079CB24();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = sub_1001F1160(&qword_100AF6D98);
  return sub_10077BC34(v6, (a1 + *(v4 + 44)));
}

unint64_t sub_10077CF34()
{
  result = qword_100AF6B20;
  if (!qword_100AF6B20)
  {
    sub_1001F1234(&qword_100AF6AF8);
    sub_1001F1234(&qword_100AF6AF0);
    sub_10079C074();
    sub_1001F1234(&qword_100AF6AE8);
    sub_100005920(&qword_100AF6B18, &qword_100AF6AE8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100ADAAE8, &qword_100AEE070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6B20);
  }

  return result;
}

unint64_t sub_10077D114()
{
  result = qword_100AF6B90;
  if (!qword_100AF6B90)
  {
    sub_1001F1234(&qword_100AF6B60);
    sub_100005920(&qword_100AF6B98, &qword_100AF6BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6B90);
  }

  return result;
}

unint64_t sub_10077D1CC()
{
  result = qword_100AF6BA8;
  if (!qword_100AF6BA8)
  {
    sub_1001F1234(&qword_100AF6B68);
    sub_1001F1234(&qword_100AF6B60);
    sub_10077D114();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100ADAAE8, &qword_100AEE070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6BA8);
  }

  return result;
}

uint64_t sub_10077D2C0()
{
  sub_1007A0774();
  sub_10000E3E8((v0 + 16), *(v0 + 40));
  return sub_1007A0B14();
}

unint64_t sub_10077D358()
{
  result = qword_100AF6BE8;
  if (!qword_100AF6BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6BE8);
  }

  return result;
}

unint64_t sub_10077D3AC()
{
  result = qword_100AF6BF0;
  if (!qword_100AF6BF0)
  {
    sub_1001F1234(&qword_100AF6BD8);
    sub_10077D358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6BF0);
  }

  return result;
}

uint64_t sub_10077D4C4(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = v1[5];
  v4 = v1[6];
  sub_10000E3E8(v1 + 2, v3);
  return a1(v3, v4);
}

uint64_t sub_10077D510()
{
  sub_1000074E0(v0 + 16);

  return swift_deallocObject();
}

void sub_10077D580()
{
  sub_10077D604();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ChromeStyle();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10077D604()
{
  if (!qword_100AF6CB0)
  {
    sub_1001F1234(&unk_100AD5AC0);
    v0 = sub_10079E224();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF6CB0);
    }
  }
}

void sub_10077D690()
{
  sub_10077D7BC(319, &qword_100AF5240, &type metadata accessor for ColorSchemeContrast, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1007A0774();
    if (v1 <= 0x3F)
    {
      sub_10077D7BC(319, qword_100AEE170, &type metadata accessor for SearchPassage, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ChromeStyle();
        if (v3 <= 0x3F)
        {
          sub_100247D20();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10077D7BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10077D820(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10077D868(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10077D8D4()
{
  result = qword_100AF6D88;
  if (!qword_100AF6D88)
  {
    sub_1001F1234(&qword_100AF6D90);
    sub_1007778A4();
    sub_100777E28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6D88);
  }

  return result;
}

unint64_t sub_10077DA0C()
{
  result = qword_100AF6DC0;
  if (!qword_100AF6DC0)
  {
    sub_1001F1234(&qword_100AF6DB8);
    sub_10077DA98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6DC0);
  }

  return result;
}

unint64_t sub_10077DA98()
{
  result = qword_100AF6DC8;
  if (!qword_100AF6DC8)
  {
    sub_1001F1234(&qword_100AF6DD0);
    sub_10077DB24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6DC8);
  }

  return result;
}

unint64_t sub_10077DB24()
{
  result = qword_100AF6DD8;
  if (!qword_100AF6DD8)
  {
    sub_1001F1234(&qword_100AF6DE0);
    sub_100005920(&qword_100AF6DE8, &qword_100AF6DF0);
    sub_100005920(&qword_100AD5558, &qword_100AD5560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6DD8);
  }

  return result;
}

uint64_t sub_10077DC08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchRow(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10077DC6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10077DD40()
{
  result = qword_100AF6E40;
  if (!qword_100AF6E40)
  {
    sub_1001F1234(&qword_100AF6E08);
    sub_10077DDCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6E40);
  }

  return result;
}

unint64_t sub_10077DDCC()
{
  result = qword_100AF6E48;
  if (!qword_100AF6E48)
  {
    sub_1001F1234(&qword_100AF6E38);
    sub_10077DE58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6E48);
  }

  return result;
}

unint64_t sub_10077DE58()
{
  result = qword_100AF6E50;
  if (!qword_100AF6E50)
  {
    sub_1001F1234(&qword_100AF6E30);
    sub_100005920(&qword_100AF6E58, &qword_100AF6E60);
    sub_100005920(&qword_100AD5558, &qword_100AD5560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6E50);
  }

  return result;
}

unint64_t sub_10077DFC0()
{
  result = qword_100AF6E98;
  if (!qword_100AF6E98)
  {
    sub_1001F1234(&qword_100AF6E90);
    sub_10077E04C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6E98);
  }

  return result;
}

unint64_t sub_10077E04C()
{
  result = qword_100AF6EA0;
  if (!qword_100AF6EA0)
  {
    sub_1001F1234(&qword_100AF6EA8);
    sub_100005920(&qword_100AF6EB0, &qword_100AF6EB8);
    sub_100005920(&qword_100AD5558, &qword_100AD5560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6EA0);
  }

  return result;
}

uint64_t sub_10077E130(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_100796CF4();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1007A21D4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  if ((a4 & 1) == 0)
  {
    v40 = a2;
    v17 = objc_allocWithZone(NSNumberFormatter);

    v18 = [v17 init];
    isa = sub_1007A2884().super.super.isa;
    v20 = [v18 stringFromNumber:isa];

    if (v20)
    {
      v21 = sub_1007A2254();
      v23 = v22;

      if (!a3)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v41 = a1;
      v21 = sub_1007A3A74();
      v23 = v24;
      if (!a3)
      {
        goto LABEL_11;
      }
    }

    v39 = v23;
    v25 = v21;
    v26 = v40;
    v41 = v40;
    v42 = a3;
    sub_1002060B4();
    if (sub_1007A28A4())
    {
      sub_1007A2154();
      (*(v10 + 16))(v12, v15, v9);
      sub_100796C94();
      sub_1007A22B4();
      (*(v10 + 8))(v15, v9);
      sub_1001F1160(&unk_100AD5090);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_10080EFF0;
      *(v27 + 56) = &type metadata for String;
      v28 = sub_10000E4C4();
      v29 = v39;
      *(v27 + 32) = v25;
      *(v27 + 40) = v29;
      *(v27 + 96) = &type metadata for String;
      *(v27 + 104) = v28;
      *(v27 + 64) = v28;
      *(v27 + 72) = v26;
      *(v27 + 80) = a3;
      goto LABEL_9;
    }

    sub_10061B744();
    v21 = v25;
    v23 = v39;
LABEL_11:
    sub_1007A2154();
    (*(v10 + 16))(v12, v15, v9);
    sub_100796C94();
    sub_1007A22B4();
    (*(v10 + 8))(v15, v9);
    sub_1001F1160(&unk_100AD5090);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_10080B690;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_10000E4C4();
    *(v33 + 32) = v21;
    *(v33 + 40) = v23;
    v34 = sub_1007A2284();
    v36 = v35;

    v41 = v34;
    v42 = v36;
    sub_100206ECC();
    return sub_10079D5D4();
  }

  sub_1007A2154();
  (*(v10 + 16))(v12, v15, v9);
  sub_100796C94();
  sub_1007A22B4();
  (*(v10 + 8))(v15, v9);
  sub_1001F1160(&unk_100AD5090);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10080B690;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_10000E4C4();
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
LABEL_9:
  v30 = sub_1007A2284();
  v32 = v31;

  v41 = v30;
  v42 = v32;
  sub_100206ECC();
  return sub_10079D5D4();
}

unint64_t sub_10077E6D8()
{
  result = qword_100AF6F10;
  if (!qword_100AF6F10)
  {
    sub_1001F1234(&qword_100AF6E20);
    sub_1001F1234(&qword_100AF6E10);
    sub_1001F1234(&qword_100AF6E08);
    sub_10077DD40();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10077157C(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6F10);
  }

  return result;
}

unint64_t sub_10077E814()
{
  result = qword_100AF6F18;
  if (!qword_100AF6F18)
  {
    sub_1001F1234(&qword_100AF6EC8);
    sub_100005920(&qword_100AF6F20, &qword_100AF6F28);
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6F18);
  }

  return result;
}

id StandardItemsCacheManager.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StandardItemsCacheManager();
  return objc_msgSendSuper2(&v2, "init");
}

id StandardItemsCacheManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StandardItemsCacheManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s5Books25StandardItemsCacheManagerC12dataFromDiskSayAA11RootBarItemCGSgvg_0()
{
  if (qword_100AD1688 != -1)
  {
    swift_once();
  }

  v0 = sub_10079ACE4();
  sub_100008B98(v0, qword_100AE4D38);
  v1 = sub_10079ACC4();
  v2 = sub_1007A2994();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v3 = 136315394;
    *(v3 + 4) = sub_1000070F4(0x6D6F724661746164, 0xEC0000006B736944, &v9);
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_1000070F4(0xD000000000000019, 0x8000000100845C60, &v9);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s %s dataFromDisk start", v3, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_100AD1C18 != -1)
  {
    swift_once();
  }

  v4 = qword_100B23BC0;

  v5 = sub_10079ACC4();
  v6 = sub_1007A2994();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_1000070F4(0x6D6F724661746164, 0xEC0000006B736944, &v9);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1000070F4(0xD000000000000019, 0x8000000100845C60, &v9);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s %s dataFromDisk end", v7, 0x16u);
    swift_arrayDestroy();
  }

  return v4;
}

uint64_t sub_10077EC28(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = sub_1007A3784();
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = [v5 description];
      v9 = sub_1007A2254();
      v11 = v10;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_10000B3D8(0, *(v4 + 2) + 1, 1, v4);
      }

      v13 = *(v4 + 2);
      v12 = *(v4 + 3);
      if (v13 >= v12 >> 1)
      {
        v4 = sub_10000B3D8((v12 > 1), v13 + 1, 1, v4);
      }

      *(v4 + 2) = v13 + 1;
      v14 = &v4[16 * v13];
      *(v14 + 4) = v9;
      *(v14 + 5) = v11;
      ++v3;
      if (v7 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
  sub_1001F1160(&unk_100AD61F0);
  sub_10000B4E4();
  v15 = sub_1007A20B4();

  return v15;
}

void _s5Books25StandardItemsCacheManagerC10saveToDiskyySayAA11RootBarItemCGF_0(unint64_t a1)
{
  v3 = sub_1007A1D04();
  v4 = *(v3 - 1);
  __chkstk_darwin(v3);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A7C4(0, &qword_100AD1E10);
  *v6 = sub_1007A2D74();
  (*(v4 + 104))(v6, enum case for DispatchPredicate.notOnQueue(_:), v3);
  v7 = sub_1007A1D34();
  v9 = *(v4 + 8);
  v8 = (v4 + 8);
  v9(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = sub_10000968C(1);
  v6 = v11;
  v12 = (v11 >> 56) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
LABEL_10:

    return;
  }

  v1 = v10;
  v3 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  type metadata accessor for RootBarItem();
  isa = sub_1007A25D4().super.isa;
  [v3 encodeObject:isa forKey:NSKeyedArchiveRootObjectKey];

  [v3 finishEncoding];
  v14 = [v3 encodedData];
  if (v14)
  {
    v8 = v14;
    v15 = sub_1007A2214();
    [v8 writeToFile:v15 atomically:1];

    if (qword_100AD1688 == -1)
    {
LABEL_7:
      v16 = sub_10079ACE4();
      sub_100008B98(v16, qword_100AE4D38);

      v17 = sub_10079ACC4();
      v18 = sub_1007A2994();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v19 = 136315906;
        *(v19 + 4) = sub_1000070F4(0x69446F5465766173, 0xEE00293A5F286B73, &v25);
        *(v19 + 12) = 2080;
        *(v19 + 14) = sub_1000070F4(0xD000000000000019, 0x8000000100845C60, &v25);
        *(v19 + 22) = 2082;
        v20 = sub_1000070F4(v1, v6, &v25);

        *(v19 + 24) = v20;
        *(v19 + 32) = 2082;
        v21 = sub_10077EC28(a1);
        v23 = sub_1000070F4(v21, v22, &v25);

        *(v19 + 34) = v23;
        _os_log_impl(&_mh_execute_header, v17, v18, "%s %s Saved RootBarStandardItems to cache at %{public}s: %{public}s", v19, 0x2Au);
        swift_arrayDestroy();

        return;
      }

      goto LABEL_10;
    }

LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_10077F1F0()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AF6F70);
  sub_100008B98(v0, qword_100AF6F70);
  type metadata accessor for BookReaderAccessoryNotesController(0);
  sub_1001F1160(&qword_100AF71B8);
  sub_1007A22E4();
  return sub_10079ACD4();
}

void sub_10077F294()
{
  v1 = v0;
  v2 = sub_1001F1160(&unk_100AD6170);
  __chkstk_darwin(v2 - 8);
  v135 = &v108 - v3;
  v134 = sub_1001F1160(&unk_100AE6A30);
  v131 = *(v134 - 8);
  __chkstk_darwin(v134);
  v138 = &v108 - v4;
  v5 = sub_1001F1160(&unk_100AF1140);
  __chkstk_darwin(v5 - 8);
  v133 = &v108 - v6;
  v137 = sub_1001F1160(&qword_100AD6190);
  *&v130 = *(v137 - 8);
  __chkstk_darwin(v137);
  v136 = (&v108 - v7);
  v132 = type metadata accessor for NoteHighlight(0);
  v140 = *(v132 - 8);
  __chkstk_darwin(v132);
  *&v139 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10079F594();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100796BB4();
  v142 = *(v13 - 8);
  __chkstk_darwin(v13);
  v141 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796BA4();
  v15 = OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_adornmentState;
  swift_beginAccess();
  v16 = *(v10 + 16);
  (v16)(v12, &v15[v0], v9);
  v17 = sub_10079F564();
  v18 = *(v10 + 8);
  (v18)(v12, v9);
  if (!v17)
  {
    goto LABEL_19;
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

LABEL_19:
    if (qword_100AD1C20 != -1)
    {
      swift_once();
    }

    v34 = sub_10079ACE4();
    sub_100008B98(v34, qword_100AF6F70);
    v35 = v1;
    v36 = sub_10079ACC4();
    v37 = sub_1007A29B4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 134217984;
      *(v38 + 4) = *(v35 + OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_documentOrdinal);

      _os_log_impl(&_mh_execute_header, v36, v37, "Missing dependencies to draw notes in %ld", v38, 0xCu);
    }

    else
    {

      v36 = v35;
    }

    v39 = v141;
    v40 = v141;
    v41 = v35;
    goto LABEL_25;
  }

  v128 = Strong;
  v127 = v17;
  v129 = v13;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_17;
  }

  swift_getObjectType();
  v20 = sub_1007A0894();
  swift_unknownObjectRelease();
  v125 = *(&v1->isa + OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_documentOrdinal);
  if (!sub_10079F264())
  {

LABEL_18:
    v13 = v129;
    goto LABEL_19;
  }

  v124 = v20;
  v21 = v1 + OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_paginatingService;
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_16:

LABEL_17:

    goto LABEL_18;
  }

  v123 = *(v21 + 1);
  swift_getObjectType();
  v123 = sub_10079F9D4();
  swift_unknownObjectRelease();
  if (!swift_unknownObjectWeakLoadStrong() || (swift_getObjectType(), sub_10079F9D4(), swift_unknownObjectRelease(), v22 = sub_10079F434(), , !v22))
  {

    goto LABEL_16;
  }

  v119 = v22;
  sub_100780E7C();
  if ((*(&v1->isa + OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_layoutIsReady) & 1) == 0)
  {

LABEL_33:
    v39 = v141;
    sub_100781388(v141, v1);
    v13 = v129;
    goto LABEL_26;
  }

  (v16)(v12, &v15[v1], v9);
  sub_10079F544();
  (v18)(v12, v9);
  v118 = sub_100785A04();

  if (qword_100AD1C20 != -1)
  {
LABEL_75:
    swift_once();
  }

  v23 = sub_10079ACE4();
  v24 = sub_100008B98(v23, qword_100AF6F70);
  isa = v1;
  v120 = v24;
  v25 = sub_10079ACC4();
  LODWORD(v121) = sub_1007A29A4();
  if (os_log_type_enabled(v25, v121))
  {
    v26 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v143[0] = v117;
    *v26 = 134218498;
    (v16)(v12, &v15[v1], v9);
    v116 = v25;
    v27 = sub_10079F554();
    (v18)(v12, v9);
    v114 = *(v27 + 16);

    v115 = v26;
    *(v26 + 4) = v114;

    *(v26 + 12) = 2080;
    (v16)(v12, &v15[v1], v9);
    sub_10079F554();
    (v18)(v12, v9);
    sub_10079FD44();
    v28 = sub_1007A25F4();
    v30 = v29;

    v31 = sub_1000070F4(v28, v30, v143);

    v32 = v115;
    *(v115 + 14) = v31;
    *(v32 + 22) = 2048;
    v1 = isa;

    *(v32 + 24) = v125;
    v33 = v116;
    _os_log_impl(&_mh_execute_header, v116, v121, "Processing %ld page(s) (%s) in ordinal: %ld", v32, 0x20u);
    sub_1000074E0(v117);
  }

  else
  {

    v1 = isa;
  }

  v9 = v138;
  v18 = v139;
  v16 = v118;
  v143[0] = v118;
  sub_1001F1160(&qword_100AF7160);
  sub_1002CD1B4(&qword_100AF7168, &qword_100AF7160);
  v42 = sub_1007A28A4();
  v43 = v120;
  if ((v42 & 1) == 0)
  {

    goto LABEL_33;
  }

  v1 = v1;

  v44 = sub_10079ACC4();
  v45 = sub_1007A2994();
  v46 = os_log_type_enabled(v44, v45);
  v113 = v1;
  if (v46)
  {
    v47 = swift_slowAlloc();
    *v47 = 134218240;
    *(v47 + 4) = v16[2];

    *(v47 + 12) = 2048;
    *(v47 + 14) = v125;

    _os_log_impl(&_mh_execute_header, v44, v45, "Adding %ld note glyphs in documentOrdinal:%ld", v47, 0x16u);
  }

  else
  {

    v44 = v1;
  }

  v12 = v16;

  v13 = v129;
  isa = v16[2].isa;
  if (!isa)
  {
LABEL_59:

    v79 = v113;
    v80 = sub_10079ACC4();
    v81 = sub_1007A29A4();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 134217984;
      *(v82 + 4) = v125;

      _os_log_impl(&_mh_execute_header, v80, v81, "Updated notes for ordinal: %ld", v82, 0xCu);
    }

    else
    {

      v80 = v79;
    }

    v83 = OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_noteOrder;
    swift_beginAccess();
    v84 = *(&v79->isa + v83);
    v85 = *(v84 + 2);
    v138 = v84;
    if (v85)
    {
      v86 = OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_notes;

      swift_beginAccess();
      v87 = (v84 + 40);
      *&v88 = 136315394;
      v139 = v88;
      v140 = v79;
      do
      {
        v89 = *(&v79->isa + v86);
        if (*(v89 + 16))
        {
          v91 = *(v87 - 1);
          v90 = *v87;

          v92 = sub_10000E53C(v91, v90);
          if (v93)
          {
            v94 = *(*(v89 + 56) + 8 * v92);

            v95 = *(v94 + 16);

            v96 = v95;
            v97 = sub_10079ACC4();
            v98 = sub_1007A29A4();

            if (os_log_type_enabled(v97, v98))
            {
              v99 = swift_slowAlloc();
              v144 = swift_slowAlloc();
              *v99 = v139;
              v100 = sub_1000070F4(v91, v90, &v144);

              *(v99 + 4) = v100;
              *(v99 + 12) = 2080;
              [v96 frame];
              v143[0] = v101;
              v143[1] = v102;
              v143[2] = v103;
              v143[3] = v104;
              type metadata accessor for CGRect(0);
              v105 = sub_1007A22E4();
              v107 = sub_1000070F4(v105, v106, &v144);

              *(v99 + 14) = v107;
              _os_log_impl(&_mh_execute_header, v97, v98, "\t%s: %s", v99, 0x16u);
              swift_arrayDestroy();
              v13 = v129;
            }

            else
            {
            }

            v79 = v140;
          }

          else
          {
          }
        }

        v87 += 2;
        --v85;
      }

      while (v85);
    }

    else
    {
    }

    v39 = v141;
    v40 = v141;
    v41 = v79;
LABEL_25:
    sub_100781388(v40, v41);
LABEL_26:
    (*(v142 + 8))(v39, v13);
    return;
  }

  v49 = 0;
  v121 = v16 + ((LOBYTE(v140[10].isa) + 32) & ~LOBYTE(v140[10].isa));
  v15 = (v130 + 48);
  v112 = (v130 + 32);
  v111 = (v130 + 16);
  v115 = (v131 + 48);
  v110 = (v131 + 32);
  v109 = (v131 + 8);
  v114 = (v130 + 8);
  *&v48 = 136315138;
  v130 = v48;
  v131 = v15;
  while (1)
  {
    if (v49 >= *(v12 + 2))
    {
      __break(1u);
      goto LABEL_75;
    }

    sub_1005D8080(&v121[v140[9].isa * v49], v18);
    v1 = *v18;
    v16 = *(v18 + 8);
    v50 = sub_1007A1564();
    if (!*(v50 + 16) || (v51 = sub_10000E53C(v1, v16), (v52 & 1) == 0))
    {
      v59 = v12;

      v60 = sub_10079ACC4();
      v61 = sub_1007A29B4();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v143[0] = v63;
        *v62 = v130;
        v1 = sub_1000070F4(v1, v16, v143);

        *(v62 + 4) = v1;
        _os_log_impl(&_mh_execute_header, v60, v61, "Missing annotation entity for paginated highlight: %s, to draw note glyph", v62, 0xCu);
        sub_1000074E0(v63);
        v9 = v138;
        v18 = v139;

        v13 = v129;
      }

      else
      {
      }

      v12 = v59;
      goto LABEL_50;
    }

    v117 = v1;
    v1 = v12;
    v53 = v43;
    v54 = *(*(v50 + 56) + 8 * v51);

    if (sub_1007A15D4())
    {
      break;
    }

    v43 = v53;
    v12 = v1;
LABEL_38:
    ++v49;
    sub_100786ABC(v18);
    if (isa == v49)
    {
      goto LABEL_59;
    }
  }

  v116 = v54;
  v55 = v132;
  v56 = v133;
  sub_1000077D8(v18 + *(v132 + 24), v133, &unk_100AF1140);
  v57 = *v15;
  v58 = v137;
  if (v57(v56, 1, v137) == 1)
  {
    v1 = v136;
    (*v111)(v136, v18 + *(v55 + 20), v58);
    if (v57(v56, 1, v58) != 1)
    {
      sub_100007840(v56, &unk_100AF1140);
    }
  }

  else
  {
    v1 = v136;
    (*v112)(v136, v56, v58);
  }

  v64 = v135;
  sub_10079F744();
  v65 = v134;
  v66 = (*v115)(v64, 1, v134);
  v12 = v118;
  if (v66 == 1)
  {
    sub_100007840(v64, &unk_100AD6170);

    v43 = v120;
    v67 = sub_10079ACC4();
    v68 = sub_1007A29B4();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v143[0] = v70;
      *v69 = v130;
      *(v69 + 4) = sub_1000070F4(v117, v16, v143);
      _os_log_impl(&_mh_execute_header, v67, v68, "Unable to convert boundingRect to content for paginated highlight: %s, to draw note glyph", v69, 0xCu);
      sub_1000074E0(v70);
      v9 = v138;

      v13 = v129;
    }

    else
    {
    }

    (*v114)(v1, v137);
    v18 = v139;
    goto LABEL_50;
  }

  (*v110)(v9, v64, v65);
  v16 = v116;

  v71 = _s8BookEPUB25HighlightAnnotationEntityC5BooksE14annotationUuidSSvg_0();
  v73 = v72;

  v74 = sub_100781784(v71, v73);

  v75 = [objc_opt_self() annotatedAttributedStringForAnnotation:v74];

  v18 = v139;
  if (v75)
  {
    v76 = [v75 string];

    v77 = sub_1007A2254();
    v1 = v78;

    sub_100781FD0(v127, v16, v119, v9, v77, v1);

    (*v109)(v9, v65);
    (*v114)(v136, v137);
    v13 = v129;
    v43 = v120;
LABEL_50:
    v15 = v131;
    goto LABEL_38;
  }

  __break(1u);
}

uint64_t sub_1007807BC(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_10079F594();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_adornmentState;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v7, v2 + v11, v4);
  sub_100786C50(&qword_100AF71D0, &type metadata accessor for BookContentAdornmentState);
  LOBYTE(v11) = sub_1007A2124();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if ((v11 & 1) == 0)
  {
    sub_10077F294();
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

uint64_t sub_1007809CC()
{

  return swift_deallocClassInstance();
}

void sub_100780A04(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD95B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10[-v3];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_10079EF54();
    v8 = *(v7 - 8);
    (*(v8 + 16))(v4, a1, v7);
    (*(v8 + 56))(v4, 0, 1, v7);
    v9 = OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_currentTheme;
    swift_beginAccess();
    sub_10069802C(v4, v6 + v9);
    swift_endAccess();
    sub_10077F294();
  }
}

void sub_100780B74()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10077F294();
  }
}

uint64_t sub_100780BC8@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_10079F734();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for BookContentLayoutController.LayoutState.done(_:), v2, v4);
  v7 = sub_10079F724();
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7 & 1;
  return result;
}

void sub_100780CD0(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_layoutIsReady);
    *(Strong + OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_layoutIsReady) = v1;
    if (v1 != v4)
    {
      sub_10077F294();
    }
  }
}

id sub_100780D48()
{
  sub_100780E7C();
  if (qword_100AD1C20 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AF6F70);
  v2 = v0;
  v3 = sub_10079ACC4();
  v4 = sub_1007A29A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v2 + OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_documentOrdinal);

    _os_log_impl(&_mh_execute_header, v3, v4, "Dealloc for ordinal: %ld", v5, 0xCu);
  }

  else
  {

    v3 = v2;
  }

  v7.receiver = v2;
  v7.super_class = type metadata accessor for BookReaderAccessoryNotesController(0);
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_100780E7C()
{
  if (qword_100AD1C20 != -1)
  {
LABEL_17:
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AF6F70);
  v2 = v0;
  v3 = sub_10079ACC4();
  v4 = sub_1007A29A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v2 + OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_documentOrdinal);

    _os_log_impl(&_mh_execute_header, v3, v4, "Clear all adornments for %ld", v5, 0xCu);
  }

  else
  {

    v3 = v2;
  }

  v6 = OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_notes;
  swift_beginAccess();
  v0 = *(&v2->isa + v6);
  v7 = 1 << *(v0 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v0 + 64);
  v10 = (v7 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_13:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      [*(*(*(v0 + 56) + ((v12 << 9) | (8 * v13))) + 16) removeFromSuperview];
      if (!v9)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v0 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_13;
    }
  }

  v14 = OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_noteOrder;
  swift_beginAccess();
  *(&v2->isa + v14) = _swiftEmptyArrayStorage;

  *(&v2->isa + v6) = _swiftEmptyDictionarySingleton;
}

void sub_100781258()
{
  sub_10079F594();
  if (v0 <= 0x3F)
  {
    sub_1006973C4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100781388(uint64_t a1, void *a2)
{
  sub_100796B34();
  v4 = v3;
  if (qword_100AD1C20 != -1)
  {
    swift_once();
  }

  v5 = sub_10079ACE4();
  sub_100008B98(v5, qword_100AF6F70);
  v6 = a2;
  oslog = sub_10079ACC4();
  v7 = sub_1007A29A4();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = *(v6 + OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_documentOrdinal);

    *(v8 + 12) = 2048;
    *(v8 + 14) = round(v4 * -1000000.0) / 1000.0;
    _os_log_impl(&_mh_execute_header, oslog, v7, "#accessoryperf updateNotes for ordinal %ld took %fms", v8, 0x16u);

    v9 = oslog;
  }

  else
  {

    v9 = v6;
  }
}

uint64_t sub_1007814F4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_adornmentState;
  swift_beginAccess();
  v4 = sub_10079F594();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

void (*sub_100781580(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = sub_10079F594();
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
  v11 = OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_adornmentState;
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_1007816D8;
}

void sub_1007816D8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), v5);
    sub_1007807BC(v4);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    sub_1007807BC(*(v2 + 56));
  }

  free(v3);
  free(v4);

  free(v2);
}

id sub_100781784(uint64_t a1, unint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_100AD1C20 != -1)
    {
      swift_once();
    }

    v19 = sub_10079ACE4();
    sub_100008B98(v19, qword_100AF6F70);
    v20 = sub_10079ACC4();
    v21 = sub_1007A29B4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing annotation provider to fetch existing annotation", v22, 2u);
    }

    return 0;
  }

  v5 = Strong;
  v6 = objc_allocWithZone(NSFetchRequest);
  v7 = sub_1007A2214();
  v8 = [v6 initWithEntityName:v7];

  v9 = objc_opt_self();
  v10 = sub_1007A2214();
  v11 = [v9 predicateForAnnotationWithUUID:v10];

  [v8 setPredicate:v11];
  sub_1001F1160(&unk_100AD8160);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100811390;
  v13 = objc_allocWithZone(NSSortDescriptor);
  v14 = sub_1007A2214();
  v15 = [v13 initWithKey:v14 ascending:1];

  *(v12 + 32) = v15;
  sub_10000A7C4(0, &unk_100AE9A50);
  isa = sub_1007A25D4().super.isa;

  [v8 setSortDescriptors:isa];

  result = [v5 uiManagedObjectContext];
  if (!result)
  {
    goto LABEL_47;
  }

  v18 = result;
  sub_10000A7C4(0, &qword_100AECB40);
  v23 = sub_1007A2F34();

  v24 = v23 >> 62;
  if (!(v23 >> 62))
  {
    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25 != 1)
    {
      goto LABEL_11;
    }

LABEL_34:
    if (v24)
    {
      result = sub_1007A38D4();
      if (result)
      {
        goto LABEL_36;
      }
    }

    else
    {
      result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_36:
        if ((v23 & 0xC000000000000001) != 0)
        {
          v38 = sub_1007A3784();
        }

        else
        {
          if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            return result;
          }

          v38 = *(v23 + 32);
        }

        v39 = v38;

LABEL_42:

        return v39;
      }
    }

    v39 = 0;
    goto LABEL_42;
  }

  v25 = sub_1007A38D4();
  if (v25 == 1)
  {
    goto LABEL_34;
  }

LABEL_11:
  if (!v25)
  {

    if (qword_100AD1C20 != -1)
    {
      swift_once();
    }

    v26 = sub_10079ACE4();
    sub_100008B98(v26, qword_100AF6F70);

    v27 = sub_10079ACC4();
    v28 = sub_1007A29B4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v41[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1000070F4(a1, a2, v41);
      _os_log_impl(&_mh_execute_header, v27, v28, "Did not find matching annotation for uuid: %s", v29, 0xCu);
      sub_1000074E0(v30);
    }

    return 0;
  }

  if (!v24)
  {
    result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_25;
    }

LABEL_22:
    if ((v23 & 0xC000000000000001) != 0)
    {
      result = sub_1007A3784();
      goto LABEL_25;
    }

    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      result = *(v23 + 32);
      goto LABEL_25;
    }

    goto LABEL_46;
  }

  result = sub_1007A38D4();
  if (result)
  {
    goto LABEL_22;
  }

LABEL_25:
  v40 = result;
  if (qword_100AD1C20 != -1)
  {
    swift_once();
  }

  v31 = sub_10079ACE4();
  sub_100008B98(v31, qword_100AF6F70);

  v32 = sub_10079ACC4();
  v33 = sub_1007A29B4();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = a1;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v41[0] = v36;
    *v35 = 134218242;
    if (v24)
    {
      v37 = sub_1007A38D4();
    }

    else
    {
      v37 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v35 + 4) = v37;

    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_1000070F4(v34, a2, v41);
    _os_log_impl(&_mh_execute_header, v32, v33, "Fetched multiple (%ld) annotations for uuid: %s", v35, 0x16u);
    sub_1000074E0(v36);

    return v40;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    return v40;
  }
}

void sub_100781FD0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v89 = a6;
  v91 = a5;
  v88[1] = a3;
  v93 = a1;
  v10 = sub_1001F1160(&unk_100AE6A30);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v88 - v12;
  v14 = sub_1001F1160(&qword_100AD95B0);
  v15 = __chkstk_darwin(v14 - 8);
  v90 = v88 - v16;
  v17 = [a2 annotationUuid];
  v94 = sub_1007A2254();
  v19 = v18;

  v20 = OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_notes;
  swift_beginAccess();
  v21 = *(v7 + v20);
  if (*(v21 + 16))
  {

    v22 = sub_10000E53C(v94, v19);
    if (v23)
    {
      v92 = v11;
      v24 = a4;
      v25 = *(*(v21 + 56) + 8 * v22);

      v26 = *(v25 + 16);

      type metadata accessor for NoteButton();
      v27 = swift_dynamicCastClass();
      if (v27)
      {
        v28 = v27;
        if (qword_100AD1C20 != -1)
        {
          swift_once();
        }

        v29 = sub_10079ACE4();
        sub_100008B98(v29, qword_100AF6F70);

        v30 = sub_10079ACC4();
        v31 = sub_1007A29A4();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v96[0] = v33;
          *v32 = 136315138;
          v34 = sub_1000070F4(v94, v19, v96);

          *(v32 + 4) = v34;
          _os_log_impl(&_mh_execute_header, v30, v31, "Adding existing note button for uuid: %s", v32, 0xCu);
          sub_1000074E0(v33);
        }

        else
        {
        }

        v83 = OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_currentTheme;
        swift_beginAccess();
        v84 = v7 + v83;
        v85 = v90;
        sub_1000077D8(v84, v90, &qword_100AD95B0);
        sub_100783590(v85);
        sub_100007840(v85, &qword_100AD95B0);
        [v93 addSubview:v28];
        v86 = (v28 + OBJC_IVAR____TtC5BooksP33_2999BCB781BB4046BF6F224C010EC6FE10NoteButton_associatedHighlightText);
        v87 = v89;
        *v86 = v91;
        v86[1] = v87;

        goto LABEL_22;
      }

      a4 = v24;
      v11 = v92;
    }

    else
    {
    }
  }

  if (qword_100AD1C20 != -1)
  {
    swift_once();
  }

  v35 = sub_10079ACE4();
  sub_100008B98(v35, qword_100AF6F70);

  v36 = sub_10079ACC4();
  v37 = sub_1007A29A4();

  v38 = os_log_type_enabled(v36, v37);
  v92 = v19;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v88[0] = a4;
    v40 = v39;
    v41 = swift_slowAlloc();
    v42 = v19;
    v43 = v11;
    v44 = v41;
    v96[0] = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_1000070F4(v94, v42, v96);
    _os_log_impl(&_mh_execute_header, v36, v37, "Creating note button for uuid: %s", v40, 0xCu);
    sub_1000074E0(v44);
    v11 = v43;
  }

  sub_10079FEE4();
  sub_10079FEB4();
  (*(v11 + 8))(v13, v10);
  v45 = *v96;
  v46 = *&v96[1];
  v47 = *&v96[2];
  v48 = *&v96[3];
  v49 = _s8BookEPUB25HighlightAnnotationEntityC5BooksE14annotationUuidSSvg_0();
  v51 = v50;
  sub_10000A7C4(0, &qword_100AD8390);
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  v53[2] = v52;
  v53[3] = v49;
  v53[4] = v51;
  v54 = sub_1007A31D4();
  type metadata accessor for NoteButton();
  v55 = v54;
  v97.value.super.super.isa = v54;
  isa = sub_1007A32D4(UIButtonTypeCustom, v97).super.super.super.super.isa;

  sub_100786B24(v57);

  v58 = OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_currentTheme;
  swift_beginAccess();
  v59 = v7 + v58;
  v60 = v90;
  sub_1000077D8(v59, v90, &qword_100AD95B0);
  sub_100783590(v60);
  sub_100007840(v60, &qword_100AD95B0);

  v61 = isa;
  v62 = sub_1003BB5B4();
  v63 = v45;
  v64 = v46;
  v65 = v47;
  v66 = v48;
  if (v62)
  {
    MaxX = CGRectGetMaxX(*&v63);
  }

  else
  {
    MaxX = CGRectGetMinX(*&v63);
  }

  v68 = MaxX;
  v69 = v92;
  v98.origin.x = 0.0;
  v98.origin.y = 0.0;
  v98.size.width = 32.0;
  v98.size.height = 32.0;
  v70 = v68 - CGRectGetWidth(v98) * 0.5;
  v99.origin.x = v45;
  v99.origin.y = v46;
  v99.size.width = v47;
  v99.size.height = v48;
  MinY = CGRectGetMinY(v99);
  v100.origin.y = 0.0;
  v100.origin.x = v70;
  v100.size.width = 32.0;
  v100.size.height = 32.0;
  [(objc_class *)v61 setFrame:v70, MinY - CGRectGetHeight(v100) * 0.5, 32.0, 32.0];

  [v93 addSubview:v61];
  type metadata accessor for BookReaderAccessoryNotesController.Note();
  v72 = swift_allocObject();
  *(v72 + 2) = v61;
  v72[3] = v45;
  v72[4] = v46;
  v72[5] = v47;
  v72[6] = v48;
  swift_beginAccess();

  v26 = v61;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v95 = *(v7 + v20);
  *(v7 + v20) = 0x8000000000000000;
  sub_1002F73A0(v72, v94, v69, isUniquelyReferenced_nonNull_native);

  *(v7 + v20) = v95;
  swift_endAccess();
  v74 = OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_noteOrder;
  swift_beginAccess();
  v75 = *(v7 + v74);
  v76 = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + v74) = v75;
  if ((v76 & 1) == 0)
  {
    v75 = sub_10000B3D8(0, *(v75 + 2) + 1, 1, v75);
    *(v7 + v74) = v75;
  }

  v78 = *(v75 + 2);
  v77 = *(v75 + 3);
  if (v78 >= v77 >> 1)
  {
    v75 = sub_10000B3D8((v77 > 1), v78 + 1, 1, v75);
  }

  *(v75 + 2) = v78 + 1;
  v79 = &v75[16 * v78];
  v80 = v92;
  *(v79 + 4) = v94;
  *(v79 + 5) = v80;
  *(v7 + v74) = v75;
  swift_endAccess();
  v81 = v26 + OBJC_IVAR____TtC5BooksP33_2999BCB781BB4046BF6F224C010EC6FE10NoteButton_associatedHighlightText;
  v82 = v89;
  *v81 = v91;
  *(v81 + 1) = v82;

LABEL_22:
  sub_100782C78();
}

void sub_100782900(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100782970(a3, a4);
  }
}

uint64_t sub_100782970(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1007A1D04();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100AD1C20 != -1)
  {
    swift_once();
  }

  v10 = sub_10079ACE4();
  sub_100008B98(v10, qword_100AF6F70);

  v11 = sub_10079ACC4();
  v12 = sub_1007A2994();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1000070F4(a1, a2, &v19);
    _os_log_impl(&_mh_execute_header, v11, v12, "Presenting note (%{public}s) from accessory", v13, 0xCu);
    sub_1000074E0(v14);
  }

  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  sub_10000A7C4(0, &qword_100AD1E10);

  v16 = v3;
  *v9 = sub_1007A2D74();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v17 = sub_1007A1D34();
  result = (*(v7 + 8))(v9, v6);
  if (v17)
  {

    sub_100782C0C(v15[3], v15[4], &v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100782C0C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, BOOL *a3@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  v7 = result;
  if (result)
  {
    sub_1006C5AD8(a1, a2);
    result = swift_unknownObjectRelease();
  }

  *a3 = v7 == 0;
  return result;
}

void sub_100782C78()
{
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v31 - v6;
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v31 - v14;
  v34 = v0;
  if (*&v0[OBJC_IVAR____TtC5BooksP33_2999BCB781BB4046BF6F224C010EC6FE10NoteButton_associatedHighlightText + 8])
  {
    v32 = v2;
    v33 = v1;
    v16 = v13;
    v31[1] = *&v0[OBJC_IVAR____TtC5BooksP33_2999BCB781BB4046BF6F224C010EC6FE10NoteButton_associatedHighlightText];
    if (*&v34[OBJC_IVAR____TtC5BooksP33_2999BCB781BB4046BF6F224C010EC6FE10NoteButton_annotation])
    {

      sub_1007A15E4();

      v17 = sub_1007A00E4();
      v19 = v18;
      if (v17 != sub_1007A00E4() || v19 != v20)
      {
        sub_1007A3AB4();
      }
    }

    else
    {
    }

    sub_1007A2154();
    sub_100796C94();
    (*(v9 + 16))(v11, v15, v16);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v25 = v32;
    v24 = v33;
    (*(v32 + 16))(v4, v7, v33);
    sub_1007A22D4();
    (*(v25 + 8))(v7, v24);
    (*(v9 + 8))(v15, v16);
    sub_1001F1160(&unk_100AD8160);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100811390;
    v27 = sub_1007A2214();

    v28 = sub_1007A2214();

    v29 = [objc_opt_self() customContentWithLabel:v27 value:v28];

    *(v26 + 32) = v29;
    sub_10000A7C4(0, &unk_100AF7170);
    isa = sub_1007A25D4().super.isa;

    [v34 setAccessibilityCustomContent:isa];
  }

  else
  {
    sub_10000A7C4(0, &unk_100AF7170);
    v33 = sub_1007A25D4().super.isa;
    [v34 setAccessibilityCustomContent:v33];
    v22 = v33;
  }
}

id sub_1007831D8(double a1, double a2, double a3, double a4)
{
  v9 = sub_100796CF4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v30[-v14];
  v16 = sub_1007A21D4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v30[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v22 = &v30[-v21];
  *&v4[OBJC_IVAR____TtC5BooksP33_2999BCB781BB4046BF6F224C010EC6FE10NoteButton_annotation] = 0;
  v23 = &v4[OBJC_IVAR____TtC5BooksP33_2999BCB781BB4046BF6F224C010EC6FE10NoteButton_associatedHighlightText];
  v24 = type metadata accessor for NoteButton();
  *v23 = 0;
  *(v23 + 1) = 0;
  v31.receiver = v4;
  v31.super_class = v24;
  v25 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  sub_1007A2154();
  sub_100796C94();
  (*(v17 + 16))(v19, v22, v16);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v10 + 16))(v12, v15, v9);
  sub_1007A22D4();
  (*(v10 + 8))(v15, v9);
  (*(v17 + 8))(v22, v16);
  v28 = sub_1007A2214();

  [v25 setAccessibilityLabel:v28];

  return v25;
}

uint64_t sub_100783590(uint64_t a1)
{
  v3 = sub_1001F1160(&qword_100AD95B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v28 - v4;
  v6 = sub_10079EF54();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() mainScreen];
  [v10 scale];
  v12 = v11;

  sub_1000077D8(a1, v5, &qword_100AD95B0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_100007840(v5, &qword_100AD95B0);
  }

  (*(v7 + 32))(v9, v5, v6);
  if (!*&v1[OBJC_IVAR____TtC5BooksP33_2999BCB781BB4046BF6F224C010EC6FE10NoteButton_annotation])
  {
    return (*(v7 + 8))(v9, v6);
  }

  v29 = v1;
  v14 = [ annotationStyle];
  v15 = [objc_allocWithZone(AEInlineAnnotationMarker) initWithAnnotationStyle:v14 pageTheme:sub_10071E6EC() contentScale:v12];
  [v15 markerSize];
  v17 = v16;
  v19 = v18;
  sub_10000A7C4(0, &qword_100AF71C0);
  v20 = [swift_getObjCClassFromMetadata() preferredFormat];
  v21 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v20 format:{v17, v19}];

  v22 = swift_allocObject();
  *(v22 + 16) = v15;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_100786C40;
  *(v23 + 24) = v22;
  aBlock[4] = sub_10040EEA8;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004091A8;
  aBlock[3] = &unk_100A306C0;
  v24 = _Block_copy(aBlock);
  v25 = v15;

  v26 = [v21 imageWithActions:v24];
  _Block_release(v24);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
    __break(1u);
  }

  else
  {
    v27 = v29;
    [v29 setImage:v26 forState:0];
    [v27 sizeToFit];

    (*(v7 + 8))(v9, v6);
  }

  return result;
}

void sub_1007839D0(void *a1, void *a2)
{
  v3 = [a1 CGContext];
  [a2 renderIn:v3];
}

uint64_t sub_100783AA4()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v22 - v5;
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v22 - v12;
  sub_1001F1160(&unk_100AE0B30);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10080B690;
  sub_1007A2154();
  sub_100796C94();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v17 = sub_1007A22D4();
  v19 = v18;
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  *(v14 + 32) = v17;
  *(v14 + 40) = v19;
  v23 = v14;
  if (*(v22[1] + OBJC_IVAR____TtC5BooksP33_2999BCB781BB4046BF6F224C010EC6FE10NoteButton_annotation))
  {

    sub_1007A15E4();
    v20 = sub_1007A00A4();
    sub_100484B94(v20);

    return v23;
  }

  return v14;
}

id sub_100783D8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoteButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100783E58(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10004D810(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100783ED4(v6);
  return sub_1007A37E4();
}

Swift::Int sub_100783ED4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1007A3A64(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1007A0C34();
        v6 = sub_1007A2634();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1007840CC(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100783FD8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100783FD8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_5:
    v8 = v7;
    v14 = v6;
    while (1)
    {

      v9 = sub_1007A0C24();
      v10 = sub_1007A0C24();

      if (v9 >= v10)
      {
LABEL_4:
        ++v4;
        v6 = v14 + 1;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v11 = *v6;
      *v6 = v6[1];
      v6[1] = v11;
      --v6;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1007840CC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v90 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_86:
    v8 = *v90;
    if (!*v90)
    {
      goto LABEL_124;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_118:
      result = sub_100784A7C(v9);
      v9 = result;
    }

    v80 = *(v9 + 2);
    if (v80 >= 2)
    {
      while (*v6)
      {
        v81 = v9;
        v9 = (v80 - 1);
        v82 = *&v81[16 * v80];
        v83 = *&v81[16 * v80 + 24];
        sub_10078470C((*v6 + 8 * v82), (*v6 + 8 * *&v81[16 * v80 + 16]), (*v6 + 8 * v83), v8);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_100784A7C(v81);
        }

        if (v80 - 2 >= *(v81 + 2))
        {
          goto LABEL_112;
        }

        v84 = &v81[16 * v80];
        *v84 = v82;
        *(v84 + 1) = v83;
        result = sub_1007849F0(v80 - 1);
        v9 = v81;
        v80 = *(v81 + 2);
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_122;
    }
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v91 = v7;
      v11 = 8 * v10;
      v12 = *v6 + 8 * v10 + 16;

      v93 = sub_1007A0C24();
      v13 = sub_1007A0C24();

      v87 = v10;
      v14 = (v10 + 2);
      while (1)
      {
        v8 = v91;
        if (v91 == v14)
        {
          break;
        }

        v15 = sub_1007A0C24();
        v16 = sub_1007A0C24();

        ++v14;
        v12 += 8;
        if (v93 < v13 == v15 >= v16)
        {
          v8 = (v14 - 1);
          break;
        }
      }

      v6 = a3;
      v10 = v87;
      if (v93 < v13)
      {
        if (v8 < v87)
        {
          goto LABEL_115;
        }

        if (v87 < v8)
        {
          v17 = 8 * v8 - 8;
          v18 = v8;
          v19 = v87;
          do
          {
            if (v19 != --v18)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_121;
              }

              v20 = *(v21 + v11);
              *(v21 + v11) = *(v21 + v17);
              *(v21 + v17) = v20;
            }

            ++v19;
            v17 -= 8;
            v11 += 8;
          }

          while (v19 < v18);
        }
      }
    }

    v22 = v6[1];
    if (v8 < v22)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_114;
      }

      if (v8 - v10 < a4)
      {
        v23 = (v10 + a4);
        if (__OFADD__(v10, a4))
        {
          goto LABEL_116;
        }

        if (v23 >= v22)
        {
          v23 = v6[1];
        }

        if (v23 < v10)
        {
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        if (v8 != v23)
        {
          break;
        }
      }
    }

LABEL_35:
    if (v8 < v10)
    {
      goto LABEL_113;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10066B274(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v34 = *(v9 + 2);
    v33 = *(v9 + 3);
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      result = sub_10066B274((v33 > 1), v34 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v35;
    v36 = &v9[16 * v34];
    *(v36 + 4) = v10;
    *(v36 + 5) = v8;
    v37 = *v90;
    if (!*v90)
    {
      goto LABEL_123;
    }

    if (v34)
    {
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = *(v9 + 4);
          v40 = *(v9 + 5);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_55:
          if (v42)
          {
            goto LABEL_102;
          }

          v55 = &v9[16 * v35];
          v57 = *v55;
          v56 = *(v55 + 1);
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_105;
          }

          v61 = &v9[16 * v38 + 32];
          v63 = *v61;
          v62 = *(v61 + 1);
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_108;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_109;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v65 = &v9[16 * v35];
        v67 = *v65;
        v66 = *(v65 + 1);
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_69:
        if (v60)
        {
          goto LABEL_104;
        }

        v68 = &v9[16 * v38];
        v70 = *(v68 + 4);
        v69 = *(v68 + 5);
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_107;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_76:
        v76 = v38 - 1;
        if (v38 - 1 >= v35)
        {
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

        if (!*v6)
        {
          goto LABEL_120;
        }

        v77 = *&v9[16 * v76 + 32];
        v78 = *&v9[16 * v38 + 40];
        sub_10078470C((*v6 + 8 * v77), (*v6 + 8 * *&v9[16 * v38 + 32]), (*v6 + 8 * v78), v37);
        if (v5)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_98;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100784A7C(v9);
        }

        if (v76 >= *(v9 + 2))
        {
          goto LABEL_99;
        }

        v79 = &v9[16 * v76];
        *(v79 + 4) = v77;
        *(v79 + 5) = v78;
        result = sub_1007849F0(v38);
        v35 = *(v9 + 2);
        if (v35 <= 1)
        {
          goto LABEL_3;
        }
      }

      v43 = &v9[16 * v35 + 32];
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_100;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_101;
      }

      v50 = &v9[16 * v35];
      v52 = *v50;
      v51 = *(v50 + 1);
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_103;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_106;
      }

      if (v54 >= v46)
      {
        v72 = &v9[16 * v38 + 32];
        v74 = *v72;
        v73 = *(v72 + 1);
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_86;
    }
  }

  v88 = v9;
  v89 = v5;
  v24 = *v6;
  v25 = *v6 + 8 * v8 - 8;
  v26 = v10 - v8;
  v92 = v23;
LABEL_28:
  v94 = v8;
  v27 = v26;
  v28 = v25;
  while (1)
  {

    v29 = sub_1007A0C24();
    v30 = sub_1007A0C24();

    if (v29 >= v30)
    {
LABEL_27:
      ++v8;
      v25 += 8;
      --v26;
      if (v94 + 1 != v92)
      {
        goto LABEL_28;
      }

      v8 = v92;
      v9 = v88;
      v5 = v89;
      v6 = a3;
      goto LABEL_35;
    }

    if (!v24)
    {
      break;
    }

    v31 = *v28;
    *v28 = v28[1];
    v28[1] = v31;
    --v28;
    if (__CFADD__(v27++, 1))
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
  return result;
}

uint64_t sub_10078470C(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 < v10 >> 3)
  {
    if (__dst != __src || &__src[8 * v8] <= __dst)
    {
      v13 = __dst;
      memmove(__dst, __src, 8 * v8);
      __dst = v13;
    }

    v14 = &__dst[8 * v8];
    v15 = __dst;
    if (v6 < 8 || a2 >= v4)
    {
      v22 = v5;
      v17 = v14;
      goto LABEL_39;
    }

    v16 = a2;
    v17 = v14;
    while (1)
    {

      v18 = sub_1007A0C24();
      v19 = sub_1007A0C24();

      if (v18 >= v19)
      {
        break;
      }

      v20 = v16;
      v21 = v5 == v16;
      v16 += 8;
      if (!v21)
      {
        goto LABEL_17;
      }

LABEL_18:
      v5 += 8;
      if (v15 >= v17 || v16 >= v4)
      {
        v22 = v5;
        goto LABEL_39;
      }
    }

    v20 = v15;
    v21 = v5 == v15;
    v15 += 8;
    if (v21)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v5 = *v20;
    goto LABEL_18;
  }

  v15 = __dst;
  v22 = a2;
  if (__dst != a2 || &a2[8 * v11] <= __dst)
  {
    memmove(__dst, a2, 8 * v11);
  }

  v17 = &v15[8 * v11];
  if (v9 >= 8 && v22 > v5)
  {
    v31 = v5;
    v33 = v15;
    do
    {
      v32 = v22;
      v23 = v22 - 8;
      v4 -= 8;
      v24 = v17;
      v25 = v17;
      while (1)
      {
        v26 = v4 + 8;
        v25 -= 8;
        v27 = v23;

        v28 = sub_1007A0C24();
        v29 = sub_1007A0C24();

        if (v28 < v29)
        {
          break;
        }

        if (v26 != v24)
        {
          *v4 = *v25;
        }

        v4 -= 8;
        v24 = v25;
        v15 = v33;
        v23 = v27;
        if (v25 <= v33)
        {
          v17 = v25;
          v22 = v32;
          goto LABEL_39;
        }
      }

      if (v26 != v32)
      {
        *v4 = *v27;
      }

      v15 = v33;
      v17 = v24;
      if (v24 <= v33)
      {
        break;
      }

      v22 = v27;
    }

    while (v27 > v31);
    v22 = v27;
  }

LABEL_39:
  if (v22 != v15 || v22 >= &v15[(v17 - v15 + (v17 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v22, v15, 8 * ((v17 - v15) / 8));
  }

  return 1;
}

uint64_t sub_1007849F0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100784A7C(v3);
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

void *sub_100784A90(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1007A38D4();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_1005D889C(v3, 0);
  sub_1007857FC(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100784B24(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1007A38D4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1007A38D4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1002CD1B4(&qword_100AE12E8, &unk_100AF2640);
          for (i = 0; i != v6; ++i)
          {
            sub_1001F1160(&unk_100AF2640);
            v9 = sub_1002B6B60(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000A7C4(0, &qword_100AE8DB0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100784CC4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1007A38D4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1007A38D4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1002CD1B4(&unk_100AEB7F0, &unk_100AF71F0);
          for (i = 0; i != v6; ++i)
          {
            sub_1001F1160(&unk_100AF71F0);
            v9 = sub_1002B6B60(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000A7C4(0, &qword_100AD7620);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100784E64(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1007A38D4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1007A38D4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1002CD1B4(&qword_100AF7250, &qword_100AF7248);
          for (i = 0; i != v6; ++i)
          {
            sub_1001F1160(&qword_100AF7248);
            v9 = sub_1002B6B60(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1001F1160(&qword_100AF7240);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100785000(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1007A38D4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1007A38D4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1002CD1B4(&unk_100AF7220, &qword_100AF7218);
          for (i = 0; i != v6; ++i)
          {
            sub_1001F1160(&qword_100AF7218);
            v9 = sub_1002B6C70(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1001F1160(&qword_100ADDB80);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10078519C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1007A38D4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1007A38D4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1002CD1B4(&unk_100AF7208, &qword_100AF7200);
          for (i = 0; i != v6; ++i)
          {
            sub_1001F1160(&qword_100AF7200);
            v9 = sub_1002B6CF8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100796744();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10078532C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1007A38D4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1007A38D4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1002CD1B4(&unk_100AF71E0, &qword_100AF71D8);
          for (i = 0; i != v6; ++i)
          {
            sub_1001F1160(&qword_100AF71D8);
            v9 = sub_1002B6B60(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000A7C4(0, &qword_100ADA970);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007854CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1007A38D4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1007A38D4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1002CD1B4(&qword_100AEB7B8, &qword_100AEB7B0);
          for (i = 0; i != v6; ++i)
          {
            sub_1001F1160(&qword_100AEB7B0);
            v9 = sub_1002B6B60(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SinglePageViewController();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10078565C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1007A38D4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1007A38D4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1002CD1B4(&qword_100AF7238, &qword_100AF7230);
          for (i = 0; i != v6; ++i)
          {
            sub_1001F1160(&qword_100AF7230);
            v9 = sub_1002B6B60(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000A7C4(0, &unk_100AF4F20);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007857FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1007A38D4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1007A38D4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1002CD1B4(&qword_100AF71A8, &qword_100AF71A0);
          for (i = 0; i != v6; ++i)
          {
            sub_1001F1160(&qword_100AF71A0);
            v9 = sub_1002B6E00(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1007A0C34();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100785A04()
{
  v114 = type metadata accessor for NoteHighlight(0);
  v115 = *(v114 - 8);
  __chkstk_darwin(v114);
  v120 = &v100 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v110 = &v100 - v2;
  v150 = sub_1007A17D4();
  v3 = *(v150 - 8);
  __chkstk_darwin(v150);
  v128 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1001F1160(&qword_100AF7180);
  __chkstk_darwin(v142);
  v152 = &v100 - v5;
  v6 = sub_1001F1160(&qword_100AF7188);
  __chkstk_darwin(v6 - 8);
  v140 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v149 = &v100 - v9;
  __chkstk_darwin(v10);
  v12 = &v100 - v11;
  v13 = sub_1001F1160(&qword_100AF7190);
  __chkstk_darwin(v13 - 8);
  v113 = &v100 - v14;
  v15 = sub_1001F1160(&qword_100AD6190);
  v109 = *(v15 - 1);
  __chkstk_darwin(v15);
  v141 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v151 = &v100 - v18;
  __chkstk_darwin(v19);
  v148 = &v100 - v20;
  v21 = sub_1001F1160(&unk_100AF1140);
  __chkstk_darwin(v21 - 8);
  v123 = &v100 - v22;
  v23 = COERCE_DOUBLE(sub_1001F030C(_swiftEmptyArrayStorage));

  *&v153.origin.x = sub_100784A90(v24);
  sub_100783E58(&v153);
  x = v153.origin.x;
  v104 = v153.origin.x;
  if ((*&v153.origin.x & 0x8000000000000000) != 0 || (*&v153.origin.x & 0x4000000000000000) != 0)
  {
    goto LABEL_65;
  }

  v26 = *(*&v153.origin.x + 16);
  while (v26)
  {
    v27 = 0.0;
    v131 = OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_documentOrdinal;
    v103 = *&x & 0xC000000000000001;
    v101 = *&x + 32;
    v146 = v109 + 16;
    v137 = (*&v3 + 56);
    v136 = enum case for DocumentPaginationDirection.rightToLeft(_:);
    v135 = (*&v3 + 104);
    v134 = (*&v3 + 48);
    v127 = (*&v3 + 32);
    v130 = (*&v3 + 8);
    v133 = (v109 + 8);
    v145 = (v109 + 32);
    v112 = (v109 + 56);
    v111 = (v115 + 56);
    v139 = v12;
    v147 = v15;
    v102 = v26;
    v138 = v132 + OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_paginatingService;
    while (1)
    {
      if (v103)
      {
        v28 = v27;
        v106 = sub_1007A3784();
        v29 = __OFADD__(*&v28, 1);
        *&v3 = *&v28 + 1;
        if (v29)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (*&v27 >= *(*&x + 16))
        {
          goto LABEL_64;
        }

        v106 = *(v101 + 8 * *&v27);
        v30 = v27;

        v29 = __OFADD__(*&v30, 1);
        *&v3 = *&v30 + 1;
        if (v29)
        {
          goto LABEL_63;
        }
      }

      v105 = v3;
      v31 = sub_1007A0C14();
      v32 = v31;
      if (v31 >> 62)
      {
        break;
      }

      v3 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3 != 0.0)
      {
        goto LABEL_14;
      }

LABEL_5:

      v27 = v105;
      x = v104;
      if (*&v105 == v102)
      {
        goto LABEL_66;
      }
    }

    v3 = COERCE_DOUBLE(sub_1007A38D4());
    if (v3 == 0.0)
    {
      goto LABEL_5;
    }

LABEL_14:
    v33 = 0;
    v118 = v32 & 0xC000000000000001;
    v108 = v32 & 0xFFFFFFFFFFFFFF8;
    v107 = v32 + 32;
    v117 = v32;
    v116 = v3;
    while (2)
    {
      if (v118)
      {
        v126 = sub_1007A3784();
        v29 = __OFADD__(v33, 1);
        v37 = v33 + 1;
        if (v29)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v33 >= *(v108 + 16))
        {
          goto LABEL_61;
        }

        v126 = *(v107 + 8 * v33);

        v29 = __OFADD__(v33, 1);
        v37 = v33 + 1;
        if (v29)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }
      }

      v121 = v37;
      v122 = v23;
      sub_1007A1AD4();
      v124 = sub_1007A1054();
      v125 = v38;

      v39 = sub_1007A1AB4();
      v40 = *(v39 + 16);
      if (!v40)
      {

        v71 = 1;
        v70 = v123;
        goto LABEL_45;
      }

      v41 = v109;
      v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v119 = v39;
      v43 = v39 + v42;
      v144 = *(v109 + 16);
      v144(v148, v39 + v42, v15);
      v143 = *(v41 + 72);
      while (2)
      {
        v144(v151, v43, v15);
        if (swift_unknownObjectWeakLoadStrong() && (swift_getObjectType(), sub_10079F9D4(), swift_unknownObjectRelease(), v47 = sub_10079F434(), , v47))
        {
          sub_1007A1274();

          v48 = 0;
        }

        else
        {
          v48 = 1;
        }

        v49 = *v137;
        v50 = v150;
        (*v137)(v12, v48, 1, v150);
        v51 = v149;
        (*v135)(v149, v136, v50);
        v49(v51, 0, 1, v50);
        v52 = *(v142 + 48);
        v53 = v152;
        sub_1000077D8(v12, v152, &qword_100AF7188);
        sub_1000077D8(v51, v53 + v52, &qword_100AF7188);
        v54 = *v134;
        if ((*v134)(v53, 1, v50) == 1)
        {
          sub_100007840(v149, &qword_100AF7188);
          sub_100007840(v12, &qword_100AF7188);
          v55 = v54(v152 + v52, 1, v150);
          v56 = v133;
          if (v55 == 1)
          {
            sub_100007840(v152, &qword_100AF7188);
            v15 = v147;
            v57 = v148;
            goto LABEL_41;
          }

LABEL_37:
          sub_100007840(v152, &qword_100AF7180);
          v15 = v147;
          v57 = v148;
          goto LABEL_38;
        }

        v58 = v152;
        sub_1000077D8(v152, v140, &qword_100AF7188);
        if (v54(v58 + v52, 1, v150) == 1)
        {
          sub_100007840(v149, &qword_100AF7188);
          sub_100007840(v12, &qword_100AF7188);
          (*v130)(v140, v150);
          v56 = v133;
          goto LABEL_37;
        }

        v61 = v152 + v52;
        v62 = v140;
        v63 = v150;
        v64 = v128;
        (*v127)(v128, v61, v150);
        sub_100786C50(&qword_100AF7198, &type metadata accessor for DocumentPaginationDirection);
        v65 = v12;
        v129 = sub_1007A2124();
        v66 = *v130;
        v67 = v149;
        (*v130)(v64, v63);
        sub_100007840(v67, &qword_100AF7188);
        sub_100007840(v65, &qword_100AF7188);
        v66(v62, v63);
        sub_100007840(v152, &qword_100AF7188);
        v15 = v147;
        v57 = v148;
        v56 = v133;
        if (v129)
        {
LABEL_41:
          sub_10079FEB4();
          MaxX = CGRectGetMaxX(v153);
          sub_10079FEB4();
          v69 = CGRectGetMaxX(v154);
          v60 = *v56;
          if (v69 < MaxX)
          {
            goto LABEL_42;
          }

LABEL_26:
          v60(v57, v15);
          v44 = v151;
        }

        else
        {
LABEL_38:
          sub_10079FEB4();
          y = v153.origin.y;
          sub_10079FEB4();
          v60 = *v56;
          if (y >= v154.origin.y)
          {
            goto LABEL_26;
          }

LABEL_42:
          v60(v151, v15);
          v44 = v57;
        }

        v12 = v139;
        v45 = *v145;
        v46 = v141;
        (*v145)(v141, v44, v15);
        v45(v57, v46, v15);
        v43 += v143;
        if (--v40)
        {
          continue;
        }

        break;
      }

      v70 = v123;
      v45(v123, v148, v15);
      v71 = 0;
LABEL_45:
      (*v112)(v70, v71, 1, v15);
      v23 = v122;
      v72 = v125;
      if (*(*&v122 + 16))
      {
        v73 = sub_10000E53C(v124, v125);
        if (v74)
        {
          v75 = v115;
          v76 = v113;
          sub_1005D8080(*(*&v23 + 56) + *(v115 + 72) * v73, v113);
          (*(v75 + 56))(v76, 0, 1, v114);

          sub_100007840(v123, &unk_100AF1140);
          v35 = v76;
          v36 = &qword_100AF7190;
LABEL_16:
          sub_100007840(v35, v36);
LABEL_17:
          v3 = v116;
          v33 = v121;
          if (v121 == *&v116)
          {
            goto LABEL_5;
          }

          continue;
        }
      }

      break;
    }

    v77 = v113;
    v78 = v114;
    (*v111)(v113, 1, 1, v114);
    sub_100007840(v77, &qword_100AF7190);

    v15 = v110;
    sub_1007A1AA4();

    sub_1000077D8(v123, v15 + *(v78 + 24), &unk_100AF1140);
    v79 = v124;
    *v15 = v124;
    v15[1] = v72;
    sub_1001F22D4(v15, v120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v153.origin.x = v23;
    v81 = v79;
    v3 = v23;
    v82 = sub_10000E53C(v81, v72);
    v84 = *(*&v23 + 16);
    v85 = (v83 & 1) == 0;
    v29 = __OFADD__(v84, v85);
    v86 = v84 + v85;
    if (v29)
    {
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v87 = v83;
    if (*(*&v23 + 24) >= v86)
    {
      v15 = v147;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v3 = COERCE_DOUBLE(&v153);
        v94 = v82;
        sub_1002F36AC();
        v82 = v94;
      }
    }

    else
    {
      sub_1003D8804(v86, isUniquelyReferenced_nonNull_native);
      v3 = v153.origin.x;
      v82 = sub_10000E53C(v124, v125);
      v15 = v147;
      if ((v87 & 1) != (v88 & 1))
      {
        goto LABEL_72;
      }
    }

    v89 = v123;
    v90 = v125;
    if (v87)
    {
      v34 = v82;

      v23 = v153.origin.x;
      sub_100786BDC(v120, *(*&v153.origin.x + 56) + *(v115 + 72) * v34);

      v35 = v89;
      v36 = &unk_100AF1140;
      goto LABEL_16;
    }

    v23 = v153.origin.x;
    *(*&v153.origin.x + 8 * (v82 >> 6) + 64) |= 1 << v82;
    v91 = (*(*&v23 + 48) + 16 * v82);
    *v91 = v124;
    v91[1] = v90;
    sub_1001F22D4(v120, *(*&v23 + 56) + *(v115 + 72) * v82);

    sub_100007840(v89, &unk_100AF1140);
    v92 = *(*&v23 + 16);
    v29 = __OFADD__(v92, 1);
    v93 = v92 + 1;
    if (!v29)
    {
      *(*&v23 + 16) = v93;
      goto LABEL_17;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    v26 = sub_1007A38D4();
    x = v104;
  }

LABEL_66:

  v95 = *(*&v23 + 16);
  if (!v95)
  {

    return _swiftEmptyArrayStorage;
  }

  v96 = sub_1005D67CC(*(*&v23 + 16), 0);
  sub_1005D7604(&v153, v96 + ((*(v115 + 80) + 32) & ~*(v115 + 80)), v95, *&v23);
  v98 = v97;

  sub_10004DC54();
  if (v98 == v95)
  {

    return v96;
  }

  __break(1u);
LABEL_72:
  sub_1007A3B24();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_100786ABC(uint64_t a1)
{
  v2 = type metadata accessor for NoteHighlight(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100786B24(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5BooksP33_2999BCB781BB4046BF6F224C010EC6FE10NoteButton_annotation;
  *&v1[OBJC_IVAR____TtC5BooksP33_2999BCB781BB4046BF6F224C010EC6FE10NoteButton_annotation] = a1;

  if (*&v1[v2])
  {

    sub_1007A15E4();

    sub_1007A0094();
    v3 = sub_1007A2214();
  }

  else
  {
    v3 = 0;
  }

  [v1 setAccessibilityValue:v3];
}

uint64_t sub_100786BDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoteHighlight(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100786C50(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100786CC0()
{
  sub_100786D54();
  if (v0 <= 0x3F)
  {
    sub_100716E1C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100786D54()
{
  if (!qword_100AF72C0[0])
  {
    sub_1007A0334();
    type metadata accessor for CGRect(255);
    v0 = sub_10079FF04();
    if (!v1)
    {
      atomic_store(v0, qword_100AF72C0);
    }
  }
}

uint64_t sub_100786DC0()
{
  v0 = sub_100796CF4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1007A21D4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v10[-v6];
  sub_1007A2154();
  (*(v2 + 16))(v4, v7, v1);
  sub_100796C94();
  v8 = sub_1007A22B4();
  (*(v2 + 8))(v7, v1);
  return v8;
}

uint64_t sub_1007871BC()
{
  v0 = sub_100796CF4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1007A21D4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v10[-v6];
  sub_1007A2154();
  (*(v2 + 16))(v4, v7, v1);
  sub_100796C94();
  v8 = sub_1007A22B4();
  (*(v2 + 8))(v7, v1);
  return v8;
}

uint64_t sub_100787414()
{
  v0 = sub_100796CF4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1007A21D4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v10[-v6];
  sub_1007A2154();
  (*(v2 + 16))(v4, v7, v1);
  sub_100796C94();
  v8 = sub_1007A22B4();
  (*(v2 + 8))(v7, v1);
  return v8;
}

uint64_t sub_100787658()
{
  v0 = sub_100796CF4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1007A21D4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v10[-v6];
  sub_1007A2154();
  (*(v2 + 16))(v4, v7, v1);
  sub_100796C94();
  v8 = sub_1007A22B4();
  (*(v2 + 8))(v7, v1);
  return v8;
}

uint64_t sub_100787894()
{
  v0 = sub_100796CF4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1007A21D4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v10[-v6];
  sub_1007A2154();
  (*(v2 + 16))(v4, v7, v1);
  sub_100796C94();
  v8 = sub_1007A22B4();
  (*(v2 + 8))(v7, v1);
  return v8;
}

id sub_100787AAC()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100AF7300 = result;
  return result;
}

uint64_t sub_100787B24()
{
  v0 = sub_10079AA44();
  sub_100009A38(v0, qword_100B23BF0);
  sub_100008B98(v0, qword_100B23BF0);
  if (qword_100AD1C28 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7300;
  return sub_10079AA34();
}

uint64_t sub_100787C18(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10079AA44();
  sub_100009A38(v3, a2);
  sub_100008B98(v3, a2);
  if (qword_100AD1C28 != -1)
  {
    swift_once();
  }

  v4 = qword_100AF7300;
  return sub_10079AA34();
}

uint64_t sub_100787CBC()
{
  v0 = sub_10079AA44();
  sub_100009A38(v0, qword_100B23C38);
  sub_100008B98(v0, qword_100B23C38);
  if (qword_100AD1C28 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7300;
  return sub_10079AA34();
}

uint64_t sub_100787D6C(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_100B22DB8 == -1)
  {
    if (qword_100B22DC0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_100795A54();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100B22DC0)
    {
      return _availability_version_check();
    }
  }

  if (qword_100B22DB0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_100795A6C();
    a3 = v10;
    a4 = v9;
    v8 = dword_100B22DA0 < v11;
    if (dword_100B22DA0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100B22DA4 > a3)
      {
        return 1;
      }

      if (dword_100B22DA4 >= a3)
      {
        return dword_100B22DA8 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100B22DA0 < a2;
  if (dword_100B22DA0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100787F00(uint64_t result)
{
  v1 = qword_100B22DC0;
  if (qword_100B22DC0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100B22DC0 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100B22DA0, &dword_100B22DA4, &dword_100B22DA8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_10078823C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) storeID];
  v5 = *(a1 + 40);
  v6 = 138412802;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "BKRootViewController: Failed to add store book %@ to collection %@, error: %@", &v6, 0x20u);
}

void sub_100788300(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = 138412546;
  v4 = v2;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "BKRootViewController: Failed to add books to collection %@, error: %@", &v3, 0x16u);
}

void sub_1007883A4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "BKCacheManager+TUI: Waiting for async loading of image from TUI: %@", &v2, 0xCu);
}

void sub_10078841C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "BKCacheManager+TUI: Added image from TUI to cover cache: %@", &v2, 0xCu);
}

void sub_100788494(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "refreshUpdateCountAsync - availableBookUpdatesURL is missing, error: %{public}@", &v2, 0xCu);
}

void sub_100788550(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error fetching owned store IDs: %@", &v2, 0xCu);
}

id sub_1007885C8(id result)
{
  if (result)
  {
    v2 = result;
    [objc_opt_class() _uploadErrorType];
    v3 = [sub_100057458() errorHeaderView];

    if (v3)
    {
      v4 = [v2 tableView];
      [v4 contentInset];
      sub_10002423C();

      v5 = [v2 errorHeaderView];
      [v5 bounds];

      v6 = [v2 tableView];
      sub_100028C04(v6, v7);

      v8 = [v2 errorHeaderView];
      [v8 removeFromSuperview];

      [v2 setErrorHeaderView:0];
    }

    if (v1)
    {
      v86 = v1;
      if (v1 == 2)
      {
        v9 = @"Apple Books couldn’t connect to iCloud. Check your Internet connection, then try again.";
      }

      else
      {
        v9 = @"New items won’t be added to iCloud until you upgrade your storage. The items below are stored on this device only.";
      }

      if (v1 == 2)
      {
        v10 = @"BKUploadErrorHeaderViewNetworkUnreachable";
      }

      else
      {
        v10 = @"BKUploadErrorHeaderView";
      }

      v11 = +[NSBundle mainBundle];
      v12 = [v11 localizedStringForKey:v9 value:&stru_100A30A68 table:0];

      v13 = [UINib nibWithNibName:v10 bundle:0];
      v14 = [v13 instantiateWithOwner:0 options:0];
      v15 = [v14 objectAtIndexedSubscript:0];
      [v2 setErrorHeaderView:v15];

      v16 = [v2 errorHeaderView];
      [v16 setDelegate:v2];

      v17 = [v2 errorHeaderView];
      v18 = [v17 upgradeButton];

      if (v18)
      {
        v19 = [v2 errorHeaderView];
        v20 = [v19 upgradeButton];
        v21 = +[NSBundle mainBundle];
        v22 = [v21 localizedStringForKey:@"UPGRADE STORAGE" value:&stru_100A30A68 table:0];
        [v20 setTitle:v22 forState:0];
      }

      v23 = [v2 mainHeaderMetrics];

      v85 = v12;
      if (v23)
      {
        v24 = [v2 mainHeaderMetrics];
        v25 = [v24 iCloudDescriptionFontAttributes];
        v26 = [TUIFontSpec attributedStringWith:v12 attributes:v25];
        v27 = [v2 errorHeaderView];
        v28 = [v27 errorLabel];
        [v28 setAttributedText:v26];

        v29 = +[NSBundle mainBundle];
        v30 = [v29 localizedStringForKey:@"UPGRADE STORAGE" value:&stru_100A30A68 table:0];

        v31 = [v2 mainHeaderMetrics];
        v32 = [v31 iCloudButtonColor];
        v33 = [v2 errorHeaderView];
        v34 = [v33 upgradeButton];
        [v34 setBackgroundColor:v32];

        v35 = [v2 errorHeaderView];
        v36 = [v35 upgradeButton];
        v37 = [v2 mainHeaderMetrics];
        v38 = [v37 iCloudButtonFontAttributes];
        v39 = [TUIFontSpec attributedStringWith:v30 attributes:v38];
        [v36 setAttributedTitle:v39 forState:0];

        v40 = [v2 mainHeaderMetrics];
        [v40 iCloudButtonInset];
        v41 = [v2 mainHeaderMetrics];
        [v41 iCloudButtonInset];
        v42 = [v2 errorHeaderView];
        [v42 upgradeButton];
        objc_claimAutoreleasedReturnValue();
        v43 = sub_100028A18();
        [v44 setTitleEdgeInsets:v43];

        v45 = [v2 mainHeaderMetrics];
        [v45 iCloudButtonInset];
        v46 = [v2 mainHeaderMetrics];
        [v46 iCloudButtonInset];
        v47 = [v2 errorHeaderView];
        [v47 upgradeButton];
        objc_claimAutoreleasedReturnValue();
        v48 = sub_100028A18();
        [v49 setContentEdgeInsets:v48];
      }

      else
      {
        v30 = [v2 errorHeaderView];
        v45 = [v30 errorLabel];
        [v45 setText:v12];
      }

      v50 = [v2 view];
      v51 = [v2 errorHeaderView];
      [v50 addSubview:v51];

      v52 = [v2 view];
      v53 = [v52 safeAreaLayoutGuide];

      v54 = [v2 errorHeaderView];
      v55 = [NSLayoutConstraint constraintWithItem:v54 attribute:3 relatedBy:0 toItem:v53 attribute:3 multiplier:1.0 constant:0.0];

      v56 = [v2 errorHeaderView];
      v57 = [v2 view];
      v58 = [NSLayoutConstraint constraintWithItem:v56 attribute:5 relatedBy:0 toItem:v57 attribute:5 multiplier:1.0 constant:0.0];

      v59 = [v2 errorHeaderView];
      v60 = [v2 view];
      v61 = [NSLayoutConstraint constraintWithItem:v59 attribute:6 relatedBy:0 toItem:v60 attribute:6 multiplier:1.0 constant:0.0];

      v62 = [v2 view];
      v87[0] = v55;
      v87[1] = v58;
      v87[2] = v61;
      v63 = [NSArray arrayWithObjects:v87 count:3];
      [v62 addConstraints:v63];

      v64 = [v2 errorHeaderView];
      v65 = [v64 errorLabel];
      [v65 sizeToFit];

      v66 = [v2 mainHeaderMetrics];

      if (v66)
      {
        v67 = [v2 errorHeaderView];
        v68 = [v67 upgradeButton];
        [v68 bounds];
        v69 = CGRectGetHeight(v88) * 0.5;
        [v2 errorHeaderView];
        v84 = v58;
        v71 = v70 = v53;
        [v71 upgradeButton];
        v72 = v55;
        v74 = v73 = v13;
        v75 = [v74 layer];
        [v75 setCornerRadius:v69];

        v76 = [v2 errorHeaderView];
        v77 = [v76 upgradeButton];
        v78 = [v77 layer];
        [v78 setBorderWidth:0.0];

        v13 = v73;
        v55 = v72;

        v53 = v70;
        v58 = v84;
      }

      v79 = [v2 errorHeaderView];
      [v79 layoutIfNeeded];

      v80 = [v2 tableView];
      [v80 contentInset];
      sub_10002423C();

      v81 = [v2 errorHeaderView];
      [v81 bounds];

      v82 = [v2 tableView];
      sub_100028C04(v82, v83);

      v1 = v86;
    }

    [v2 _updateTitle:v1];
    [v2 _adjustPreferredContentSize];
    return [v2 _configureThemeForErrorHeaderView];
  }

  return result;
}

void sub_1007891E8(uint64_t a1, NSObject *a2)
{
  v3 = *(a1 + 40);
  v4 = sub_100024BF8(7);
  v5 = 134218242;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "BKSceneController: UIKit didn't attempt rotation to supported interface orientation quickly enough (%f sec), signaling %@ since allowing user to use the app without privacy consent on Apple policies has legal implications.", &v5, 0x16u);
}

void sub_1007892FC()
{
  sub_10002426C();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1007893BC(uint64_t a1)
{
  sub_10006D3D4();
  v5 = [v1 numberWithBool:{objc_msgSend(*(v4 + 32), "enteringFullScreen")}];
  v6 = [*(v2 + 2408) numberWithBool:{objc_msgSend(*(a1 + 32), "exitingFullScreen")}];
  v7 = [*(v2 + 2408) numberWithBool:{objc_msgSend(*(a1 + 32), "inFullScreen")}];
  sub_100028A30();
  sub_100028C24(&_mh_execute_header, v8, v9, "viewWillTransitionToSize animation block enteringFullScreen:%@ exitingFullScreen:%@ inFullScreen:%@", v10, v11, v12, v13, v14);
}

void sub_1007894AC(uint64_t a1)
{
  sub_10006D3D4();
  v5 = [v1 numberWithBool:{objc_msgSend(*(v4 + 32), "enteringFullScreen")}];
  v6 = [*(v2 + 2408) numberWithBool:{objc_msgSend(*(a1 + 32), "exitingFullScreen")}];
  v7 = [*(v2 + 2408) numberWithBool:{objc_msgSend(*(a1 + 32), "inFullScreen")}];
  sub_100028A30();
  sub_100028C24(&_mh_execute_header, v8, v9, "viewWillTransitionToSize completion enteringFullScreen:%@ exitingFullScreen:%@ inFullScreen:%@", v10, v11, v12, v13, v14);
}

void sub_1007897D8(void *a1, NSObject *a2)
{
  v3 = [a1 assetIdentifier];
  v4 = [v3 permanentOrTemporaryAssetID];
  v5 = 141558274;
  v6 = 1752392040;
  sub_10006D3F4();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Attempted to start session while in the background for assetID: [%{mask.hash}@]", &v5, 0x16u);
}

void sub_100789894(void *a1)
{
  sub_10006D3D4();
  v5 = [v1 numberWithBool:{objc_msgSend(v4, "enteringFullScreen")}];
  v6 = [*(v2 + 2408) numberWithBool:{objc_msgSend(a1, "exitingFullScreen")}];
  v7 = [*(v2 + 2408) numberWithBool:{objc_msgSend(a1, "inFullScreen")}];
  sub_100028A30();
  sub_100028C24(&_mh_execute_header, v8, v9, "didFinishUpdateForAssetViewController enteringFullScreen:%@ exitingFullScreen:%@ inFullScreen:%@", v10, v11, v12, v13, v14);
}

void sub_1007899F4()
{
  sub_10002426C();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100789AE0()
{
  sub_10006D3F4();
  sub_10006D3E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100789C28(void *a1, NSObject *a2)
{
  v4 = [a1 title];
  v5 = [a1 sortTitle];
  v6 = 138412546;
  v7 = v4;
  sub_10006D3F4();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "_trackProgressForLibraryAsset: libraryAsset title: %@, sort title: %@", &v6, 0x16u);
}

void sub_100789D1C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to find presenter for assetID (%@).", &v2, 0xCu);
}

void sub_100789D94(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No parent asset found for %@", &v2, 0xCu);
}

void sub_100789E80()
{
  sub_100028A50();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100789EF4(id *a1, NSObject *a2)
{
  v3 = [*a1 url];
  v4 = 141558274;
  v5 = 1752392040;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "importBookFromURL: importCompletion: setUbiquityMetadataForURL failed. url: %{mask.hash}@", &v4, 0x16u);
}

void sub_10078A058()
{
  sub_100028A50();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "importBookFromURL: examineURL failed. url: %{mask.hash}@ error: %@", v3, 0x20u);
}

void sub_10078A0DC()
{
  sub_100028A50();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10078A150()
{
  sub_100024294();
  sub_10007E918();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10078A1E8()
{
  sub_10002426C();
  sub_10007E918();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10078A224()
{
  sub_100024294();
  sub_10007E918();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10078A294()
{
  sub_100028A88();
  sub_10007E908();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10078A434(void *a1, void *a2)
{
  v3 = [a1 allObjects];
  v4 = [v3 bu_prettyDescription];
  v5 = [a2 allObjects];
  v6 = [v5 bu_prettyDescription];
  sub_100028A9C();
  sub_10007E930(&_mh_execute_header, v7, v8, "addedRetryAssetIDs: %@, new retryAssetIDs: %@", v9, v10, v11, v12, v13);
}

void sub_10078A500(void *a1, void *a2)
{
  v3 = [a1 allObjects];
  v4 = [v3 bu_prettyDescription];
  v5 = [a2 allObjects];
  v6 = [v5 bu_prettyDescription];
  sub_100028A9C();
  sub_10007E930(&_mh_execute_header, v7, v8, "removedRetryAssetIDs: %@, new retryAssetIDs: %@", v9, v10, v11, v12, v13);
}

void sub_10078A64C()
{
  sub_10007E924();
  sub_10007E918();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10078A6C4()
{
  sub_10007E924();
  sub_10007E918();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10078A738(uint64_t a1, void *a2)
{
  v2 = [a2 allObjects];
  v8 = [v2 bu_prettyDescription];
  sub_100024284();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_10078A7F4()
{
  sub_100024294();
  sub_10007E918();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10078A864(void *a1)
{
  v1 = [a1 bu_prettyDescription];
  sub_100024294();
  sub_100024284();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10078A8F0(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 title];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Skip indexing book without assetID: %@", a1, 0xCu);
}

void sub_10078A968(void *a1)
{
  v1 = [a1 bu_prettyDescription];
  sub_100024294();
  sub_100024284();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10078A9F4()
{
  sub_100028A88();
  sub_10007E908();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10078AA6C()
{
  sub_10007E924();
  sub_10007E918();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10078AAE0()
{
  sub_10002426C();
  sub_10007E918();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10078AB1C()
{
  sub_100028A88();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Error when creating attribute set for %@: %@", v2, 0x16u);
}

void sub_10078AB9C()
{
  sub_10002426C();
  sub_10007E918();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10078ABD8(id *a1)
{
  v1 = [*a1 allObjects];
  v2 = [v1 bu_prettyDescription];
  sub_100024294();
  sub_100024284();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10078AC80()
{
  sub_100028A70();
  sub_10007E908();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10078ACF0()
{
  sub_100028A70();
  sub_10007E908();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10078AD60()
{
  sub_100028A70();
  sub_10007E908();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10078ADD0()
{
  sub_100028A70();
  sub_10007E908();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10078AE40(uint64_t a1)
{
  v1 = [*(a1 + 32) addedObjects];
  v2 = [v1 bu_prettyDescription];
  sub_100024294();
  sub_100024284();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10078AEE8(uint64_t a1)
{
  v1 = [*(a1 + 32) updatedObjects];
  v2 = [v1 bu_prettyDescription];
  sub_100024294();
  sub_100024284();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10078AF90(uint64_t a1)
{
  v1 = [*(a1 + 32) deletedObjects];
  v2 = [v1 bu_prettyDescription];
  sub_100024294();
  sub_100024284();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10078B038()
{
  sub_10002426C();
  sub_10007E918();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10078B074()
{
  sub_10002426C();
  sub_10007E918();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10078B0B0(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = [a1 addedObjects];
  v7 = [a1 deletedObjects];
  v8 = [a1 updatedObjects];
  v9 = 138413058;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  v13 = 2112;
  v14 = v8;
  v15 = 2112;
  v16 = a2;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "managedObjectBackgroundMonitor didSaveNotify with changes.added: %@, changes.deleted %@, changes.updated: %@, updatedAssetdIDs: %@", &v9, 0x2Au);
}

void sub_10078B1A4(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "_updateItemStatesForAssetIDs: %@", &v3, 0xCu);
}

void sub_10078B298(double a1, double a2, double a3, double a4)
{
  v4 = NSStringFromCGRect(*&a1);
  BCReportAssertionFailureWithMessage();
}

void sub_10078B2F8(void *a1, void *a2)
{
  BCReportAssertionFailureWithMessage();
  v4 = sub_1001E65B0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Open book test could not find the book in the bookshelf", v5, 2u);
  }
}

void sub_10078B6E0()
{
  sub_100028AB4();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10078B758()
{
  sub_100028AB4();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10078B814(uint64_t a1, void *a2)
{
  v7 = [a2 objectForKeyedSubscript:AEAssetLogID];
  sub_1000242A0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10078B8E0(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:AEAssetLogID];
  sub_100024294();
  sub_1000242A0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10078B9F0(void *a1)
{
  v1 = [a1 assetID];
  sub_100028AB4();
  sub_1000242A0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10078BA98()
{
  sub_100024294();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10078BD20()
{
  sub_10002426C();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10078BDD0()
{
  sub_10002426C();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10078BE0C()
{
  sub_10002426C();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10078BEC8()
{
  sub_10002426C();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10078BF3C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error checking for zip archive. exception: %@", &v2, 0xCu);
}

void sub_10078BFB4(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[BKLibraryDataSourcePlistImporting] coordinateAccessWithIntents with URL [%@]", &v3, 0xCu);
}

void sub_10078C030(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2114;
  *&v3[14] = a2;
  sub_1000242D0(&_mh_execute_header, a2, a3, "[BKLibraryDataSourcePlistImporting] coordinateReadingItemAtURL Error taking coordinate read for %@;  Error: %{public}@", *v3, *&v3[8], *&v3[16]);
}

void sub_10078C0AC(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 destinationFilePath];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "[BKLibraryDataSourcePlistImporting] extractOperationDidFail with assetID/path [%@ | %@]", &v6, 0x16u);
}

void sub_10078C300(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "unable to set protection on %@ (maybe device was locked).", &v2, 0xCu);
}

void sub_10078C48C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 141558530;
  *&v3[4] = 1752392040;
  *&v3[12] = 2112;
  *&v3[14] = *(a1 + 32);
  *&v3[22] = 2112;
  sub_1000242B0(&_mh_execute_header, a2, a3, "Unable to get cover image from ImageIO for url %{mask.hash}@ (error: %@), giving up", *v3, *&v3[8], *&v3[16], a2);
}

void sub_10078C518(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 141558530;
  *&v3[4] = 1752392040;
  *&v3[12] = 2112;
  *&v3[14] = a1;
  *&v3[22] = 2048;
  sub_1000242B0(&_mh_execute_header, a2, a3, "Skipping attempt to load cover image from url %{mask.hash}@ (size: %lu)", *v3, *&v3[8], *&v3[16], a2);
}

void sub_10078C7E4(void *a1)
{
  v1 = [a1 description];
  BCReportAssertionFailureWithMessage();
}

void sub_10078C898()
{
  sub_100024294();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10078C980(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "No assetID:'%@' or assetURL:'%@' to donate shortcut", &v4, 0x16u);
}

void sub_10078CA0C()
{
  sub_100024294();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10078CA7C()
{
  sub_100024294();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10078CBAC()
{
  sub_100024294();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10078CD14()
{
  sub_100024294();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10078CD84()
{
  sub_100024294();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10078CDF4()
{
  sub_100024294();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10078CE64()
{
  sub_100024294();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10078CED4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [*(a1 + 32) assetPresenterAssetID];
  v6 = 141558530;
  v7 = 1752392040;
  v8 = 2112;
  v9 = v5;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Unable to fetch product profile for assetID %{mask.hash}@ error=%@", &v6, 0x20u);
}

void sub_10078CFAC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error: Failed to create scene with error: %{public}@", &v2, 0xCu);
}

void sub_10078D024(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Scene destruction request fail with error: %{public}@", &v2, 0xCu);
}

void sub_10078D0E8(void *a1)
{
  if (a1)
  {
    v2 = [a1 collectionView];
    [v2 contentInset];

    if ([a1 isEditing])
    {
      v3 = [a1 actionBarViewController];
      v4 = [v3 view];
      [v4 frame];
      CGRectGetHeight(v11);
    }

    v9 = [a1 collectionView];
    v5 = sub_1000BBD10();
    [v6 setContentInset:v5];
    v7 = sub_1000BBD10();
    [v8 setScrollIndicatorInsets:v7];
  }
}

id sub_10078D1C8(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (a1)
  {
    v43 = v13;
    v16 = a1;
    if ([v11 count] == 1)
    {
      v17 = [a1 dataSourceAdaptor];
      v18 = [v17 booksDataSource];
      v19 = [v11 objectAtIndexedSubscript:0];
      v20 = [v19 assetID];
      v21 = [v18 productInfoForAssetID:v20];

      a1 = v16;
      v22 = [BSUIContextActionDataAssetModel alloc];
      v23 = [v11 objectAtIndexedSubscript:0];
      v24 = [v22 initWithLibraryAsset:v23 productProfile:v21];

      v13 = v43;
      v25 = [[BSUIContextActionDataModel alloc] initWithAssetModel:v24 sourceView:v43];
      [v25 setSourcePoint:v14];
    }

    else
    {
      v39 = v15;
      v40 = v14;
      v41 = v12;
      v26 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v11 count]);
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v42 = v11;
      obj = v11;
      v27 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v46;
        do
        {
          for (i = 0; i != v28; i = i + 1)
          {
            if (*v46 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v45 + 1) + 8 * i);
            v32 = [a1 dataSourceAdaptor];
            v33 = [v32 booksDataSource];
            v34 = [v31 assetID];
            v35 = [v33 productInfoForAssetID:v34];

            a1 = v16;
            v36 = [[BSUIContextActionDataAssetModel alloc] initWithLibraryAsset:v31 productProfile:v35];
            [v26 addObject:v36];
          }

          v28 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
        }

        while (v28);
      }

      v25 = [[BSUIContextActionDataModel alloc] initWithAssetModels:v26];
      v12 = v41;
      v11 = v42;
      v13 = v43;
      v15 = v39;
      v14 = v40;
    }

    [v25 setOriginatingLocation:v12];
    [v25 setSourceBarButtonItem:v15];
    v37 = [a1 im_ancestorConformingToProtocol:&OBJC_PROTOCOL___BCTransactionProviding];
    [v25 setTransactionProvider:v37];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

void sub_10078D534(uint64_t a1)
{
  [*(a1 + 32) collection];
  objc_claimAutoreleasedReturnValue();
  v3 = sub_100028C44();
  v10 = sub_10078D1C8(v3, v4, v5, v6, v7, v8);

  v9 = +[BKContextMenuProvider sharedProvider];
  [v9 showShareSheetWithDataModel:v10 forViewController:*(a1 + 32) completion:&stru_100A064B0];
}

void sub_10078D5C8(uint64_t a1)
{
  v10 = +[BKContextMenuProvider sharedProvider];
  [*(a1 + 32) collection];
  objc_claimAutoreleasedReturnValue();
  v3 = sub_100028C44();
  v9 = sub_10078D1C8(v3, v4, v5, v6, v7, v8);
  [v10 performRemoveWithDataModel:v9 forViewController:*(a1 + 32) completion:*(a1 + 56)];
}

void sub_10078D770(void *a1)
{
  v1 = [a1 description];
  sub_100024294();
  sub_1000BBD24();
  sub_1000BBD30(v2, v3, v4, v5, v6);
}

void sub_10078D934(int a1, char a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a1;
  v5 = 1024;
  v6 = a2 & 1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Error with AMS status code=%ld result in user cancel:%{BOOL}d", &v3, 0x12u);
}

void sub_10078DA2C(void *a1)
{
  v1 = [a1 storeID];
  sub_100024294();
  sub_1000BBD24();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

void sub_10078DBC0(void *a1)
{
  v6 = [a1 assetID];
  [a1 isCloud];
  sub_1000BBD24();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x12u);
}

void sub_10078DC74(void *a1)
{
  v1 = [a1 assetID];
  sub_100024294();
  sub_1000BBD24();
  sub_1000BBD30(v2, v3, v4, v5, v6);
}

id sub_10078DCFC(void *a1, char a2)
{
  sub_10078D0E8(a1);
  [a1 updateBarButtonsAnimated:a2 & 1];
  v4 = [a1 view];
  [v4 endEditing:1];

  v5 = [a1 collectionView];
  [v5 layoutIfNeeded];

  return [a1 deselectAll];
}

id sub_10078DD6C(void *a1, char a2)
{
  [a1 updateActionBarFromMetrics];
  if (_os_feature_enabled_impl())
  {
    v4 = 1;
  }

  else
  {
    v4 = _os_feature_enabled_impl();
  }

  v5 = [a1 viewIfLoaded];
  v6 = [v5 traitCollection];
  v7 = [v6 horizontalSizeClass];

  v8 = [a1 viewIfLoaded];
  v9 = [v8 traitCollection];
  v10 = [v9 userInterfaceIdiom];

  v11 = objc_alloc_init(UITabBar);
  [v11 sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
  v13 = v12;

  v14 = [a1 wrapperView];
  [v14 safeAreaInsets];
  v16 = v15;

  v17 = [a1 bk_rootBarCoordinator];
  v18 = [v17 miniPlayerViewController];
  v19 = [v18 view];
  [v19 bounds];
  v21 = v20;

  v22 = v13 + v21;
  if (!v4 || v7 == 1)
  {
    if (v16 >= v22)
    {
      v16 = v16 - v22;
      v24 = v21 > 0.0 ? v4 : 0;
      if (v24)
      {
        v25 = 15.0;
        if (!v10)
        {
          v25 = 25.0;
        }

        v16 = v16 - v25;
      }
    }
  }

  else
  {
    v23 = vabdd_f64(v16, v22);
    if (v21 > 0.0)
    {
      v16 = v23;
    }
  }

  v26 = [a1 wrapperView];
  [v26 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v39.origin.x = v28;
  v39.origin.y = v30;
  v39.size.width = v32;
  v39.size.height = v34;
  v35 = CGRectGetMaxY(v39) - v13 - v16;
  v36 = [a1 actionBarViewController];
  v37 = [v36 view];
  [v37 setFrame:{v28, v35, v32, v13}];

  sub_10078D0E8(a1);
  [a1 updateBarButtonsAnimated:a2 & 1];
  return [a1 updateActionBarForSelection];
}

void sub_10078DFB8(void **a1, void *a2, uint64_t a3)
{
  v6 = +[BKContextMenuProvider sharedProvider];
  v7 = sub_10078D1C8(a2, a1[4], a1[5], a1[6], a1[7], a1[8]);
  v8 = [v6 menuElementsForViewController:a2 dataModel:v7];

  (*(a3 + 16))(a3, v8);
}

void sub_10078E1D8(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100028AEC(&_mh_execute_header, v2, v3, "AMSUserNotificationAuthorizationResult returned an error: %{public}@.", v4, v5, v6, v7, 2u);
}

void sub_10078E260(os_log_t log)
{
  v1 = 138543362;
  v2 = &off_100A43E88;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Likely timed out while waiting for authorization status from AMS. Will not retry for %{public}@s", &v1, 0xCu);
}

void sub_10078E2E4(id *a1)
{
  v1 = [*a1 localizedDescription];
  sub_100028AEC(&_mh_execute_header, v2, v3, "engagement promise returned an error: %{public}@.", v4, v5, v6, v7, 2u);
}

void sub_10078E4C8()
{
  sub_10002426C();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10078E504()
{
  sub_1000E4E2C(__stack_chk_guard);
  sub_10002430C();
  sub_10006D3E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void sub_10078E5EC()
{
  sub_10002430C();
  sub_10006D3E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void sub_10078E664()
{
  sub_10002430C();
  sub_10006D3E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void sub_10078E6DC()
{
  sub_10002426C();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10078E718()
{
  sub_1000E4E2C(__stack_chk_guard);
  sub_100028A50();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10078E788()
{
  sub_10002426C();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10078E7C4()
{
  sub_1000E4E2C(__stack_chk_guard);
  sub_100028A50();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10078E834(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "mq_batchOfItemsDidBecomeAvailable: iq_createUbiquityAssetFromMetadataDict failed.", buf, 2u);
}

void sub_10078E874()
{
  sub_1000E4E2C(__stack_chk_guard);
  sub_100028A50();
  sub_10006D3E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10078E8F0()
{
  sub_1000E4E2C(__stack_chk_guard);
  sub_100028A50();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10078E964(uint64_t a1, NSObject *a2)
{
  v4 = [*(*a1 + 96) count];
  v5 = *(*a1 + 96);
  v6 = 134218242;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "remaining _iq_uploadingAssetIDs: count:%lu IDs:(%@)", &v6, 0x16u);
}

void sub_10078EA10()
{
  sub_100028B0C();
  sub_10006D3E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10078EA88()
{
  sub_100028B0C();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10078EAF8()
{
  sub_10002426C();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10078EB34()
{
  sub_100028A50();
  sub_10006D3E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10078EBB0(id *a1)
{
  v1 = [*a1 _persistedInfoURL];
  sub_100028B0C();
  sub_1000E4DF4(&_mh_execute_header, v2, v3, "_readPersistedInfoFromDisk: Corrupt ubiquity cache or older or unrecongnized version at %{mask.hash}@", v4, v5, v6, v7, v8);
}

void sub_10078EC38(id *a1)
{
  v1 = [*a1 _persistedInfoURL];
  sub_1000E4E14();
  sub_1000E4DF4(&_mh_execute_header, v2, v3, "_readPersistedInfoFromDisk: Failed to read: %{public}@ -- %{public}@", v4, v5, v6, v7, v8);
}

void sub_10078ED10(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error downloading cover image data: %@", &v2, 0xCu);
}

void sub_10078ED88(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error making image with cover image data from URL response %@", &v3, 0xCu);
}

void sub_10078EF28(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error occurred while performing flow action: %@", &v2, 0xCu);
}

void sub_10078EFC8(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 8);
  v3 = 138412546;
  v4 = v2;
  v5 = 2048;
  v6 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@[%p] - configureFetchedResultsController", &v3, 0x16u);
}

void sub_10078F050()
{
  sub_100024340();
  sub_1000F588C();
  sub_1000242B0(&_mh_execute_header, v0, v1, "%@[%p] - error when performing fetch: %@");
}

void sub_10078F0C4()
{
  sub_1000F587C();
  [v0 count];
  sub_100028B2C();
  sub_100024284();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_10078F1D8()
{
  sub_100024340();
  sub_1000F588C();
  sub_1000242B0(&_mh_execute_header, v0, v1, "%@[%p] - duplicate items found and filtered out, unexpected behavior might occur: %@");
}

void sub_10078F24C(void *a1, void *a2)
{
  v3 = [a2 fetchedObjects];
  [v3 count];
  v4 = [a1 pendingUpdates];
  sub_100028B2C();
  sub_100024284();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void sub_10078F328(void *a1)
{
  v6 = [a1 pendingUpdates];
  sub_100024284();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_10078F3E0(uint64_t a1)
{
  v1 = [*(a1 + 40) fetchedObjects];
  [v1 count];
  sub_100024284();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);
}

void sub_10078F4B4()
{
  sub_1000F587C();
  [*v0 count];
  sub_100028B2C();
  sub_100024284();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_10078F54C()
{
  sub_1000F587C();
  [v0 count];
  sub_100028B2C();
  sub_100024284();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_10078F5E4(id *a1)
{
  v1 = [*a1 fetchedResultsController];
  v2 = [v1 fetchedObjects];
  [v2 count];
  sub_100028B2C();
  sub_100024284();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_10078F71C(uint64_t a1, NSObject *a2)
{
  v4 = [*(a1 + 32) assetID];
  v5 = [*(a1 + 32) state];
  v6 = [*(a1 + 32) dataSourceIdentifier];
  v7 = *(a1 + 40);
  v8 = 138413058;
  v9 = v4;
  v10 = 1024;
  v11 = v5;
  v12 = 2112;
  v13 = v6;
  v14 = 2112;
  v15 = v7;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "We should always have a cacheUrl at this point. If we don't we need to figure out why! assetID: %@, state: %hd, dataSource: %@, error: %@", &v8, 0x26u);
}

void sub_10078F810(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "BKAssetLookup validateAssetAuthorization Error taking coordinate read for %@;  Error: %@", &v4, 0x16u);
}

void sub_10078F89C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error loading tabs from bag: %@", &v2, 0xCu);
}

void sub_10078F914(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 valueForKey:@"id"];
  v6 = [v5 componentsJoinedByString:{@", "}];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "countryCode: %@, tabList: %@", &v7, 0x16u);
}

void sub_10078FB30(uint64_t a1, id *a2, NSObject *a3)
{
  v5 = [*a2 coverImage];
  [v5 size];
  v6 = NSStringFromCGSize(v11);
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "image for series '%@' has incorrect size %@, pruning cache images now.", &v7, 0x16u);
}

void sub_10078FC0C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "enqueueDownloads: Error fetching existing items for %@, error: %@", &v4, 0x16u);
}

void sub_10078FC98(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [NSNumber numberWithInteger:*(a1 + 40)];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "reloadFromStore: Error fetching items with state %@, error: %@", &v6, 0x16u);
}

void sub_10078FD58(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = [a1 count];
  v7 = [NSNumber numberWithInteger:*(a2 + 40)];
  v8 = 134218498;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  v12 = 2112;
  v13 = a1;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "reloadFromStore: Got %lu items with state %@, items: %@", &v8, 0x20u);
}

void sub_10078FE80(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 141558274;
  v4 = 1752392040;
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "handleImportURLs: importBookFromURL failed. url: %{mask.hash}@", &v3, 0x16u);
}

void sub_10078FFC0()
{
  sub_100028B0C();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "_findImportEligibleURLsAtURL: Directory enumeration failed. url: %{mask.hash}@ error: %@", v3, 0x20u);
}

void sub_100790100(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 48);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No media item available from setplaybackqueue command. %@", &v3, 0xCu);
}

void sub_10079017C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 48);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No queue available from setplaybackqueue command. %@", &v3, 0xCu);
}

void sub_1007901F8(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 registeredTypeIdentifiers];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "BKDropSessionImportFiles: Failed to find representation for drag item. registeredTypeIdentifiers: %{public}@", a1, 0xCu);
}

void sub_100790270(uint64_t a1, NSObject *a2)
{
  v2 = 141558530;
  v3 = 1752392040;
  v4 = 2112;
  v5 = 0;
  v6 = 2112;
  v7 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BKDropSessionImportFiles: importItem: loadInPlaceFileRepresentationForTypeIdentifier failed. url: %{mask.hash}@ error: %@", &v2, 0x20u);
}

void sub_100790580(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "initWithIdentifier:%@", &v2, 0xCu);
}

void sub_10079063C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Cannot handle book url %@ because the book is not local", &v3, 0xCu);
}

void sub_1007906E0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@: failed to preload - missing storeID", &v2, 0xCu);
}

void sub_100790758(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_1000242D0(&_mh_execute_header, a2, a3, "%@: preloadPresentation failed getting resource dictionary from compact feed (dict: %@)", *v3, *&v3[8], *&v3[16]);
}

void sub_1007907D0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_1000242D0(&_mh_execute_header, a2, a3, "%@: failed to load additional seeds (error: %@)", *v3, *&v3[8], *&v3[16]);
}

void sub_1007908CC(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#storeItemsUpdatedWithCurrentCloudSyncVersions got a store item with no store id", buf, 2u);
}

void sub_100790948(char a1, NSObject *a2)
{
  v3 = [NSNumber numberWithBool:a1 & 1];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "_updateStatusMonitorsWithOptedIn: %@", &v4, 0xCu);
}

void sub_100790A34(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v14 = v4;
    v5 = [a1 dataSource];
    v6 = [v5 collection];

    v7 = [a1 libraryAsset];
    v8 = [a1 delegate];
    v9 = [v8 trackerForLibraryBookshelfInfoCell:a1];

    [a1 delegate];
    objc_claimAutoreleasedReturnValue();
    sub_100028B5C();
    v11 = [v10 libraryBookshelfInfoCell:? analyticsAssetPropertyProviderForLibraryAsset:? fromSourceView:? inCollection:?];

    [a1 delegate];
    objc_claimAutoreleasedReturnValue();
    sub_100028B5C();
    v13 = [v12 libraryBookshelfInfoCell:? menuWithLibraryAsset:? sourceView:? collection:?];

    if (v7 && v9 && v11 && v13)
    {
      [v14 setupAppAnalyticsReportingUsingTracker:v9 withPropertyProvider:v11];
      [v14 setShowsMenuAsPrimaryAction:1];
      [v14 setMenu:v13];
    }

    v4 = v14;
  }
}

id sub_100790B70(id *a1, void *a2)
{
  v4 = [[IMRadialProgressButton alloc] initWithFrame:{0.0, 0.0, 17.0, 17.0}];
  v5 = *a1;
  *a1 = v4;

  [*a1 setCenterImageNormal:0];
  [*a1 setCenterImageSelected:0];
  [*a1 setInscribeProgress:0];
  v6 = +[UIColor bc_booksKeyColor];
  [*a1 setProgressColor:v6];

  [*a1 setProgressLineCap:1];
  [*a1 setProgressThickness:2.0];
  v7 = +[UIColor bc_booksTableSelectionColor];
  [*a1 setTrackColor:v7];

  [*a1 setTrackDiameter:17.0];
  [*a1 setTrackThickness:2.0];
  [*a1 setTouchInsets:{-13.5, -13.5, -13.5, -13.5}];
  sub_100790A34(a2, *a1);
  v8 = *a1;

  return [a2 addSubview:v8];
}

void sub_100790D6C(void *a1, NSObject *a2)
{
  v3 = [a1 originalURL];
  v4 = 141558274;
  v5 = 1752392040;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BKResolveAssetForImportOperation: Unable to access url: %{mask.hash}@", &v4, 0x16u);
}

void sub_100790FB8(uint8_t *a1, void *a2, double *a3, NSObject *a4)
{
  [a2 readingProgress];
  *a1 = 134217984;
  *a3 = v7;
  _os_log_fault_impl(&_mh_execute_header, a4, OS_LOG_TYPE_FAULT, "Expecting readingProgress to be in the range [0, 1], got %lf", a1, 0xCu);
}

void sub_100791028(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error saving MOC: %@", &v2, 0xCu);
}

void sub_1007910B4(void *a1, NSObject *a2)
{
  v3 = [a1 assetID];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Missing audiobook duration for asset %@, will end up with NEW tag in Library", &v4, 0xCu);
}

void sub_10079119C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 72);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BKCoverCacheURLSchemeHandler: Expected an asset from BKLibraryManager with datasource URL: %@ ", &v3, 0xCu);
}

void sub_100791218()
{
  sub_100028A88();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "BKCoverCacheURLSchemeHandler: Time out fetching cover from datasource: %@ properties: %@", v2, 0x16u);
}

void sub_100791294()
{
  sub_100028A88();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "BKCoverCacheURLSchemeHandler: Error fetching a cover from datasource URL: %@ error: %@", v2, 0x16u);
}

void sub_100791358()
{
  sub_100028B0C();
  sub_100024278();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1007914EC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543874;
  *&v3[4] = a1;
  *&v3[12] = 2160;
  *&v3[14] = 1752392040;
  *&v3[22] = 2112;
  sub_1000242B0(&_mh_execute_header, a2, a3, "Failed to remove %{public}@ extended attribute for %{mask.hash}@", *v3, *&v3[8], *&v3[16], a2);
}

void sub_1007915BC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Encountered BKLibraryManager error while fetching asset %@: %@", &v4, 0x16u);
}

void sub_10079168C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [*(a1 + 32) assetID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "[BKJSALibraryManager] Failed to fetch update parameters for %@, error: %{public}@", &v6, 0x16u);
}

void sub_100791740(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Encountered BKLibraryManager error while processing assets %@", &v2, 0xCu);
}

void sub_1007917B8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Trying to filter out purchased books but instead received error: %@", &v2, 0xCu);
}

void sub_100791830(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100168110;
    v8[3] = &unk_100A03A58;
    v8[4] = a1;
    v9 = v3;
    v5 = objc_retainBlock(v8);
    if (v5)
    {
      if (+[NSThread isMainThread])
      {
        (v5[2])(v5);
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100168230;
        block[3] = &unk_100A03920;
        v7 = v5;
        dispatch_async(&_dispatch_main_q, block);
      }
    }
  }
}

void sub_100791958(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed getting user notification authorization. error: %@", &v1, 0xCu);
}

void sub_1007919D8(void *a1)
{
  v1 = [a1 actionIdentifier];
  v2 = 138412290;
  v3 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[PriceTracking] [handle notification] Unrecognized action identifier: %@", &v2, 0xCu);
}

void sub_100791AB8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@: _forceOrientationBackToPortraitOrientation: %{public}@", &v4, 0x16u);
}

void sub_100791B44(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error purchasing book with store ID: %@", &v2, 0xCu);
}

void sub_100791BBC(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Item in shelf with store ID %@ isn't in purchasable.", &v3, 0xCu);
}

void sub_100791C38(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_1000242D0(&_mh_execute_header, a2, a3, "Error fetching book with store ID: %@ -- %@", *v3, *&v3[8], *&v3[16]);
}

void sub_100791CB4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2114;
  *&v3[14] = a2;
  sub_1000242D0(&_mh_execute_header, a2, a3, "[BKBookPurchaseAction] Failed to fetch update parameters for %@, error: %{public}@", *v3, *&v3[8], *&v3[16]);
}

void sub_100791D30(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Purchase done! %@ %@", &v3, 0x16u);
}

void sub_100791F08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = 138412802;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "BKLibraryDataSourceAdaptor: Failed to add store book %@ to newly created collection %@, error: %@", &v4, 0x20u);
}

void sub_100791FA0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "didPickDocumentsAtURLs: Failed to create UIImage. url: %@", &v2, 0xCu);
}

void sub_100792018(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "performDrop: loadDataRepresentationForTypeIdentifier failed. error: %@", &v2, 0xCu);
}

uint64_t sub_100792090(void *a1, NSObject **a2)
{
  BCReportAssertionFailureWithMessage();
  if (*a1)
  {
    return 1;
  }

  v5 = sub_1001E65B0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Invalid book title when creating test", v6, 2u);
  }

  result = 0;
  *a2 = v5;
  return result;
}

void sub_100792174()
{
  BCReportAssertionFailureWithMessage();
  v0 = sub_1001E65B0();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    sub_100028B74(&_mh_execute_header, v1, v2, "Failed to find primarySceneController", v3, v4, v5, v6, 0);
  }
}

void sub_1007921F0()
{
  BCReportAssertionFailureWithMessage();
  v0 = sub_1001E65B0();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    sub_100028B74(&_mh_execute_header, v1, v2, "Failed to find bookshelf", v3, v4, v5, v6, 0);
  }
}

void sub_100792394()
{
  sub_10018777C();
  v2 = [v1 assetID];
  v3 = [v0 title];
  sub_100028B94();
  sub_100028C24(&_mh_execute_header, v4, v5, "Item removed (marked as updated) (cacheID: %@, assetID: %@, title: %@)", v6, v7, v8, v9, v10);
}

void sub_100792508()
{
  sub_10018777C();
  v2 = [v1 assetID];
  v3 = [v0 title];
  sub_100028B94();
  sub_100028C24(&_mh_execute_header, v4, v5, "Item updated (cacheID: %@, assetID: %@, title: %@)", v6, v7, v8, v9, v10);
}

void sub_1007925AC()
{
  sub_10018777C();
  v2 = [v1 assetID];
  v3 = [v0 title];
  sub_100028B94();
  sub_100028C24(&_mh_execute_header, v4, v5, "Item added (cacheID: %@, assetID: %@, title: %@)", v6, v7, v8, v9, v10);
}

void sub_1007927D8()
{
  sub_100024294();
  v3 = 2112;
  v4 = v0;
  v5 = 2112;
  v6 = @"0";
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "synchValidity changed. Last: %@, Lib: %@. Setting anchor to: %@. Recording new syncValidity and anchor", v2, 0x20u);
}

void sub_10079286C()
{
  sub_100024294();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "synchValidity is the same. Last: %@, Lib: %@", v2, 0x16u);
}

void sub_100792934(uint64_t a1, NSObject *a2)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "_fetchAllLocalBooksEligibleToBeMadeUbiquitous - expiration handler called, task: %lu", &v3, 0xCu);
}

void sub_100792A70(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not resolve supplemental library asset %@. No parent asset found. Error: %@", &v4, 0x16u);
}

void sub_100792C24(uint64_t *a1, id *a2, NSObject *a3)
{
  v4 = *a1;
  v5 = [*a2 URL];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "BKAssetPresentingFilePresenter Change of URL when coordinating access! From %@ to %@", &v6, 0x16u);
}

void sub_100792CD8(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "BKAssetPresentingFilePresenter Error taking coordinate read for %@;  Error: %@", &v4, 0x16u);
}

void sub_100792DA8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "minifiedFlowControllerHandleAssetPresentationError: Error refetching keybag: %@", &v2, 0xCu);
}

void sub_100792F20(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 identifier];
  v6 = [a2 identifier];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "cannot report on asset asset=%{public}@ reportingAsset=%{public}@", &v7, 0x16u);
}

void sub_1007931E4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[BKLibraryDataSourceBLDownload] got a nil assetIdentifier.", buf, 2u);
}

void sub_100793224(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[BKLibraryDataSourceBLDownload] got a nil assetIdentifier while trying to create a BKLibraryDownloadStatus", buf, 2u);
}

void sub_100793264(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[BKLibraryDataSourceBLDownload] Error when removing %lu finished assets with plist cleaner. %@", &v3, 0x16u);
}

void sub_100793300(void *a1, NSObject *a2)
{
  v3 = [a1 assetLogID];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to find #openanimation sourceCoverView for assetLogID:%{public}@", &v4, 0xCu);
}

void sub_1007933DC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "_forceOrientationToPortrait: attemptRotateToPortraitWithCompletion failed. error: %{public}@", &v2, 0xCu);
}

void sub_100793454(double a1, double a2)
{
  v2 = NSStringFromCGSize(*&a1);
  BCReportAssertionFailureWithMessage();
}

void sub_1007934BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = 138412802;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "BKLibraryDataSourceAdaptor: Failed to add store book %@ to collection %@, error: %@", &v4, 0x20u);
}

void sub_1007935DC(double a1, double a2)
{
  v2 = NSStringFromCGSize(*&a1);
  BCReportAssertionFailureWithMessage();
}

void sub_100793750(void *a1, char a2, NSObject *a3)
{
  v6 = [a1 objectForKeyedSubscript:@"Enabled"];
  v7 = [a1 objectForKeyedSubscript:@"SyncStage"];
  v8 = [NSNumber numberWithBool:a2 & 1];
  v9 = [a1 objectForKeyedSubscript:@"OverallProgress"];
  v10 = 138413058;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  v14 = 2112;
  v15 = v8;
  v16 = 2112;
  v17 = v9;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Progress {enabled: %@} -- {stage: %@} -- {supported: %@} -- %@", &v10, 0x2Au);
}

void sub_100793878(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "connection: updatedAssets: %@", &v2, 0xCu);
}

void sub_1007938F0(void *a1, NSObject *a2)
{
  [a1 downloadProgress];
  v5 = 138412546;
  v6 = a1;
  v7 = 2048;
  v8 = v4;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Updated asset: %@ downloadProgress: %f", &v5, 0x16u);
}

void sub_1007939D4(uint64_t a1, NSObject *a2)
{
  v3 = [*(a1 + 32) atAssetIDs];
  v4 = 134217984;
  v5 = [v3 count];
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "*SYNC END {%ld}*", &v4, 0xCu);
}

void sub_100793B40(char a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Trying to update BDSJaliscoDAAPClient on app launch but auth required. success is %{BOOL}d", v2, 8u);
}

void sub_100793BBC(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Jalisco requested auth but user declined %{BOOL}d", v1, 8u);
}

void sub_100793D64(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to show asset with error:%{public}@", &v2, 0xCu);
}

void sub_100793DDC(id *a1, NSObject *a2)
{
  v3 = [*a1 type];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unknown action type '%@'.", &v4, 0xCu);
}

void sub_100793EAC(uint64_t a1, NSObject *a2)
{
  v4 = [*(a1 + 32) sceneManager];
  v5 = [v4 rootBarCoordinator];
  v6 = [v5 selectedItem];
  v7 = [*(a1 + 32) sceneManager];
  v8 = [v7 rootBarCoordinator];
  v9 = [v8 selectedNavigationController];
  v10 = [v9 presentedViewController];
  v11 = [*(a1 + 32) appLaunchCoordinator];
  v12 = 134218754;
  v13 = 5;
  v14 = 2112;
  v15 = v6;
  v16 = 2112;
  v17 = v10;
  v18 = 2112;
  v19 = v11;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Library Reload: Extended launch isn't complete after %lds. Starting library reload anyways. selectedItem: %@, presentedVC: %@, launchCoordinator: %@", &v12, 0x2Au);
}

void sub_100794080(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error %{public}@: %{public}@", &v3, 0x16u);
}

void sub_100794108(void *a1)
{
  v2 = [a1 removed];
  [v2 count];
  v3 = [a1 assetCache];
  v4 = [v3 dataSourceIdentifier];
  sub_100028A9C();
  sub_100024358(&_mh_execute_header, v5, v6, "Telling library to remove %ld assets for dataSource %@", v7, v8, v9, v10, v11);
}

void sub_1007941CC(void *a1)
{
  v2 = [a1 added];
  [v2 count];
  v3 = [a1 assetCache];
  v4 = [v3 dataSourceIdentifier];
  sub_100028A9C();
  sub_100024358(&_mh_execute_header, v5, v6, "Telling library to add %ld assets for dataSource %@", v7, v8, v9, v10, v11);
}

void sub_100794290(void *a1)
{
  v2 = [a1 updated];
  [v2 count];
  v3 = [a1 assetCache];
  v4 = [v3 dataSourceIdentifier];
  sub_100028A9C();
  sub_100024358(&_mh_execute_header, v5, v6, "Telling library to update %ld assets for dataSource %@", v7, v8, v9, v10, v11);
}

void sub_100794354(uint64_t a1, void *a2)
{
  v8 = [a2 title];
  sub_100024358(&_mh_execute_header, v2, v3, "remove detected for (cacheID: %@, title: %@)", v4, v5, v6, v7, 2u);
}

void sub_1007943F8(uint64_t a1)
{
  v1 = [sub_1001DECD4(a1) identifier];
  sub_100024294();
  sub_100024284();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100794484()
{
  sub_100028C78();
  v2 = [sub_1001DECD4(v1) identifier];
  v3 = [v0 componentsJoinedByString:{@", "}];
  sub_100028BB4();
  sub_100024284();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100794534(uint64_t a1)
{
  v1 = [sub_1001DECD4(a1) identifier];
  sub_100024294();
  sub_100024284();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1007945C0()
{
  sub_100028C78();
  v2 = [sub_1001DECD4(v1) identifier];
  v3 = [v0 valueForKey:@"assetID"];
  sub_100028BB4();
  sub_100024284();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100794670()
{
  sub_100028C78();
  v2 = [*(v1 + 40) identifier];
  v3 = [v0 valueForKey:@"assetID"];
  v4 = [v3 componentsJoinedByString:{@", "}];
  sub_100028BB4();
  sub_100024284();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10079473C()
{
  sub_100028C78();
  v1 = [*(v0 + 56) identifier];
  sub_100028C64();
  sub_100024284();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1007947D8()
{
  sub_100028C78();
  v2 = [v1 identifier];
  v3 = [v0 valueForKey:@"assetID"];
  sub_100028BB4();
  sub_100024284();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100794888(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = [*(a1 + 40) assetID];
  sub_100028BB4();
  sub_1000242A0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100794938()
{
  sub_100028C78();
  v2 = [v1 identifier];
  v3 = [v0 assetID];
  sub_100028BB4();
  sub_100024284();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1007949E0()
{
  sub_100028C78();
  v1 = [v0 identifier];
  sub_100028C64();
  sub_1000242A0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100794A78()
{
  sub_100028C78();
  v2 = [v1 identifier];
  v3 = [v0 valueForKey:@"assetID"];
  sub_100028BB4();
  sub_100024284();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100794B28()
{
  sub_100028C78();
  v2 = [v1 identifier];
  v3 = [v0 valueForKey:@"assetID"];
  sub_100028BB4();
  sub_100024284();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100794BD8()
{
  sub_100028C78();
  v1 = [sub_1001DECD4(v0) identifier];
  sub_100028C64();
  sub_1000242A0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100794C70(id *a1, uint64_t *a2, NSObject *a3)
{
  v6 = [*a1 identifier];
  v7 = *a2;
  v8 = [*a1 plist];
  v9 = [v8 path];
  v10 = [v9 lastPathComponent];
  v11 = 138544130;
  v12 = v6;
  v13 = 2160;
  v14 = 1752392040;
  v15 = 2112;
  v16 = v7;
  v17 = 2114;
  v18 = v10;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%{public}@: coverWritingModeLanguageAndPageProgressionDirectionFromAssetID: Failed to find plist entry. assetID: %{mask.hash}@ plist: %{public}@", &v11, 0x2Au);
}

void sub_100794D88(void *a1)
{
  v1 = [a1 identifier];
  sub_100024294();
  sub_100024284();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100795270()
{
  sub_100028C78();
  v1 = [v0 identifier];
  sub_100024294();
  sub_1000242A0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100795310()
{
  sub_100028C78();
  v1 = [v0 identifier];
  sub_100024294();
  sub_1000242A0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1007953B0(uint64_t a1)
{
  v1 = [sub_1001DECD4(a1) identifier];
  sub_100024294();
  sub_1000242A0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10079543C()
{
  sub_100028C78();
  v2 = [v1 identifier];
  v3 = [v0 assetID];
  sub_100028BB4();
  sub_1000242A0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10079551C(id *a1, NSObject *a2)
{
  v3 = [*a1 identifier];
  sub_100024294();
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "%@ [JaliscoDS] fetch collision! (previous completion will return nil).", v4, 0xCu);
}

void sub_1007955B4()
{
  sub_100028C78();
  [*v1 identifier];
  objc_claimAutoreleasedReturnValue();
  sub_1001E61FC();
  sub_100024294();
  sub_1000242A0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100795658()
{
  sub_100028C78();
  [sub_1001E61F0(v1) identifier];
  objc_claimAutoreleasedReturnValue();
  sub_1001E61FC();
  sub_100028BCC();
  sub_1000242A0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1007956EC()
{
  sub_100028C78();
  [sub_1001E61F0(v1) identifier];
  objc_claimAutoreleasedReturnValue();
  sub_1001E61FC();
  sub_100028BCC();
  sub_1000242A0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_100795780()
{
  sub_100028C78();
  v1 = [*(v0 + 40) identifier];
  sub_100024294();
  sub_1000242A0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);
}

void sub_10079584C()
{
  sub_100028C78();
  v1 = [v0 identifier];
  sub_100024294();
  sub_1000242A0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1007958EC()
{
  sub_100028C78();
  v1 = [sub_1001E61F0(v0) identifier];
  sub_100024294();
  sub_1000242A0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}