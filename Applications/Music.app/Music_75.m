uint64_t sub_100867834()
{
  v1 = sub_10010FC20(&unk_1011841D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1008679B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_10010FC20(&unk_1011841D0) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for IndexPath() - 8);
  return sub_10084FC48(a1, *(v3 + 16), v3 + v8, v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), a2, a3);
}

uint64_t sub_100867AA0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10010FC20(&unk_1011841D0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for IndexPath() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_10084FF48(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_100867C0C()
{
  v1 = sub_10010FC20(&unk_1011841D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_100867D70(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10010FC20(&unk_1011841D0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for IndexPath() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_10084FA10(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_100867F6C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10010FC20(&qword_1011A4718) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100008F30;

  return sub_100806FD8(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_1008680AC(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100557FB0(v8, a1, v4, v5, v6, v7);
}

uint64_t sub_1008681AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, double))
{
  v26 = a3;
  v27 = a4;
  v25 = a1;
  v5 = type metadata accessor for IndexPath();
  v21 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Date();
  v9 = *(v23 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v23);
  v22 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  Date.init()();
  v24 = *(v4 + 88);
  v14 = swift_allocObject();
  swift_weakInit();
  (*(v6 + 16))(v8, v25, v5);
  v15 = v23;
  (*(v9 + 16))(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v23);
  v16 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v17 = (v7 + *(v9 + 80) + v16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  (*(v6 + 32))(v18 + v16, v8, v21);
  (*(v9 + 32))(v18 + v17, v22, v15);

  sub_100534EE4(v27, v18);

  (*(v9 + 8))(v13, v15);
}

uint64_t sub_10086843C(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v2 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  if (*(v2 + 16) <= a1)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v3 = *(v2 + a1 + 32);
  if (v3 <= 4)
  {
    if (v3 > 2)
    {
      if (v3 != 3)
      {
        return *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingNoContentSection);
      }

      v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_temporaryTracks;
      swift_beginAccess();
      return *(*(v1 + v5) + 16);
    }

    if (!v3)
    {
      return sub_100840F90() != 2;
    }

    if (v3 == 2)
    {

      return sub_100849C78();
    }

LABEL_40:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (v3 <= 6)
  {
    if (v3 == 5)
    {
      return *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingAddMusicSection);
    }

    else
    {
      return *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingDetailSection);
    }
  }

  if (v3 == 9)
  {
    return *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingSuggestedSongsSection);
  }

  if (v3 != 10)
  {
    goto LABEL_40;
  }

  v6 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v6, v11, &unk_1011926C0);
  if (v12)
  {
    sub_1000095E8(v11, &unk_1011926C0);
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v11, &unk_1011926C0);
  if (!Strong)
  {
    return 0;
  }

  v8 = Strong[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_isShowingRelatedContent];

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  sub_1000089F8(v1 + v6, v11, &unk_1011926C0);
  if (v12)
  {
    sub_1000095E8(v11, &unk_1011926C0);
  }

  else
  {
    v9 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v11, &unk_1011926C0);
    if (v9)
    {
      v10 = sub_1006A3A7C();

      if (v10)
      {
        if (v10 >> 62)
        {
          goto LABEL_39;
        }

        v10 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_32;
      }

      goto LABEL_34;
    }
  }

  v10 = 0;
LABEL_34:
  while (1)
  {
    result = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    v10 = _CocoaArrayWrapper.endIndex.getter();
LABEL_32:
  }

  return result;
}

BOOL sub_100868730()
{
  v1 = IndexPath.section.getter();
  v2 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  if (v3)
  {
    v5 = (v2 + 32);
    while (1)
    {
      v6 = *v5++;
      if (v6 == 2)
      {
        break;
      }

      --v1;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    if (!v1)
    {
      return 1;
    }
  }

LABEL_7:
  v7 = IndexPath.section.getter();
  v8 = *(v2 + 16);
  if (!v8)
  {
    return 0;
  }

  while (1)
  {
    v9 = *v4++;
    if (v9 == 5)
    {
      break;
    }

    --v7;
    if (!--v8)
    {
      return 0;
    }
  }

  return v7 == 0;
}

uint64_t sub_1008687D8(char *a1, char *a2)
{
  v108 = a2;
  v114 = a1;
  v2 = type metadata accessor for Playlist.Entry();
  v109 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v111 = &v102 - v6;
  __chkstk_darwin(v7);
  v9 = &v102 - v8;
  v110 = sub_10010FC20(&unk_1011A4720);
  __chkstk_darwin(v110);
  v11 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v112 = &v102 - v13;
  __chkstk_darwin(v14);
  v16 = &v102 - v15;
  v17 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v17 - 8);
  v19 = &v102 - v18;
  v20 = sub_10010FC20(&qword_10118C2B0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v102 - v25;
  sub_1000089F8(v114, v19, &qword_10119A808);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1000095E8(v19, &qword_10119A808);
    (*(v21 + 16))(v23, v108, v20);
    sub_100020674(&unk_10119F050, &qword_10118C2B0);
    dispatch thunk of Sequence.makeIterator()();
    v27 = *(v110 + 36);
    sub_100020674(&unk_101186ED0, &qword_10118C2B0);
    v28 = (v109 + 16);
    v29 = (v109 + 8);
    v114 = _swiftEmptyArrayStorage;
    while (1)
    {
      dispatch thunk of Collection.endIndex.getter();
      if (*&v11[v27] == v116)
      {
        break;
      }

      v30 = dispatch thunk of Collection.subscript.read();
      (*v28)(v4);
      v30(&v116, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v31 = Playlist.Entry.catalogID.getter();
      v33 = v32;
      (*v29)(v4, v2);
      if (v33)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v114 = sub_10049AFF8(0, *(v114 + 2) + 1, 1, v114);
        }

        v35 = *(v114 + 2);
        v34 = *(v114 + 3);
        v36 = v35 + 1;
        if (v35 >= v34 >> 1)
        {
          v112 = *(v114 + 2);
          v113 = v35 + 1;
          v39 = sub_10049AFF8((v34 > 1), v35 + 1, 1, v114);
          v35 = v112;
          v36 = v113;
          v114 = v39;
        }

        v37 = v114;
        *(v114 + 2) = v36;
        v38 = &v37[16 * v35];
        *(v38 + 4) = v31;
        *(v38 + 5) = v33;
      }
    }

    sub_1000095E8(v11, &unk_1011A4720);
    v71 = sub_100670388(v114);

    return v71;
  }

  (*(v21 + 32))(v26, v19, v20);
  v113 = sub_10010DE80(_swiftEmptyArrayStorage);
  v115 = &_swiftEmptySetSingleton;
  v104 = v21;
  v105 = *(v21 + 16);
  v106 = v21 + 16;
  v105(v16, v26, v20);
  v40 = *(v110 + 36);
  sub_100020674(&unk_101186ED0, &qword_10118C2B0);
  v107 = v26;
  dispatch thunk of Collection.startIndex.getter();
  v114 = (v109 + 16);
  v41 = (v109 + 8);
  while (1)
  {
    while (1)
    {
      do
      {
        dispatch thunk of Collection.endIndex.getter();
        if (*&v16[v40] == v116)
        {
          sub_1000095E8(v16, &unk_1011A4720);
          v73 = v112;
          v105(v112, v108, v20);
          v74 = *(v110 + 36);
          dispatch thunk of Collection.startIndex.getter();
          dispatch thunk of Collection.endIndex.getter();
          if (*(v73 + v74) == v116)
          {
LABEL_41:
            v75 = v107;
LABEL_42:
            sub_1000095E8(v73, &unk_1011A4720);
            (*(v104 + 8))(v75, v20);

            return v115;
          }

          v76 = v111;
          while (1)
          {
            while (1)
            {
              v77 = dispatch thunk of Collection.subscript.read();
              (*v114)(v76);
              v77(&v116, 0);
              dispatch thunk of Collection.formIndex(after:)();
              v78 = Playlist.Entry.catalogID.getter();
              v80 = v79;
              (*v41)(v76, v2);
              if (!v80)
              {
                goto LABEL_45;
              }

              if (!*(v113 + 16) || (v81 = sub_100019C10(v78, v80), v82 = v113, (v83 & 1) == 0))
              {
                sub_1003B3B90(&v116, v78, v80);

                goto LABEL_45;
              }

              v84 = *(*(v113 + 56) + 8 * v81);
              v85 = v84 - 1;
              if (v84 != 1)
              {
                break;
              }

              v86 = sub_100019C10(v78, v80);
              v88 = v87;

              v76 = v111;
              if (v88)
              {
                v89 = v113;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v116 = v89;
                if (!isUniquelyReferenced_nonNull_native)
                {
                  sub_1006CAB2C();
                  v89 = v116;
                }

                v113 = v89;
                sub_100409F88(v86, v89);
                goto LABEL_66;
              }

LABEL_45:
              v73 = v112;
              dispatch thunk of Collection.endIndex.getter();
              if (*(v73 + v74) == v116)
              {
                goto LABEL_41;
              }
            }

            if (__OFSUB__(v84, 1))
            {
              goto LABEL_73;
            }

            LODWORD(v110) = swift_isUniquelyReferenced_nonNull_native();
            v116 = v82;
            v91 = sub_100019C10(v78, v80);
            v93 = *(v113 + 16);
            v94 = (v92 & 1) == 0;
            v60 = __OFADD__(v93, v94);
            v95 = v93 + v94;
            if (v60)
            {
              goto LABEL_74;
            }

            if (*(v113 + 24) < v95)
            {
              break;
            }

            if (v110)
            {
              goto LABEL_60;
            }

            v110 = v91;
            LODWORD(v113) = v92;
            sub_1006CAB2C();
            v91 = v110;
            if ((v113 & 1) == 0)
            {
LABEL_63:
              v98 = v116;
              v116[(v91 >> 6) + 8] |= 1 << v91;
              v99 = (v98[6] + 16 * v91);
              *v99 = v78;
              v99[1] = v80;
              *(v98[7] + 8 * v91) = v85;
              v100 = v98[2];
              v60 = __OFADD__(v100, 1);
              v101 = v100 + 1;
              if (v60)
              {
                goto LABEL_75;
              }

              v113 = v98;
              v98[2] = v101;
              goto LABEL_65;
            }

LABEL_61:
            v97 = v91;

            v113 = v116;
            *(v116[7] + 8 * v97) = v85;
LABEL_65:
            v76 = v111;
LABEL_66:
            v73 = v112;
            v75 = v107;
            dispatch thunk of Collection.endIndex.getter();
            if (*(v73 + v74) == v116)
            {
              goto LABEL_42;
            }
          }

          LODWORD(v113) = v92;
          sub_1006C5104(v95, v110);
          v91 = sub_100019C10(v78, v80);
          v96 = v92 & 1;
          LOBYTE(v92) = v113;
          if ((v113 & 1) != v96)
          {
            goto LABEL_76;
          }

LABEL_60:
          if ((v92 & 1) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_61;
        }

        v42 = dispatch thunk of Collection.subscript.read();
        (*v114)(v9);
        v42(&v116, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v43 = Playlist.Entry.catalogID.getter();
        v45 = v44;
        (*v41)(v9, v2);
      }

      while (!v45);
      v46 = v113;
      if (!*(v113 + 16))
      {
        break;
      }

      v47 = sub_100019C10(v43, v45);
      v46 = v113;
      if ((v48 & 1) == 0)
      {
        break;
      }

      v49 = *(*(v113 + 56) + 8 * v47);
      v109 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        goto LABEL_70;
      }

      LODWORD(v103) = swift_isUniquelyReferenced_nonNull_native();
      v116 = v46;
      v51 = sub_100019C10(v43, v45);
      v52 = *(v113 + 16);
      v53 = (v50 & 1) == 0;
      v54 = v52 + v53;
      if (__OFADD__(v52, v53))
      {
        goto LABEL_71;
      }

      if (*(v113 + 24) >= v54)
      {
        if (v103)
        {
          if ((v50 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v103 = v51;
          LODWORD(v113) = v50;
          sub_1006CAB2C();
          v51 = v103;
          if ((v113 & 1) == 0)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        LODWORD(v113) = v50;
        sub_1006C5104(v54, v103);
        v55 = sub_100019C10(v43, v45);
        if ((v113 & 1) != (v56 & 1))
        {
          goto LABEL_76;
        }

        v51 = v55;
        if ((v113 & 1) == 0)
        {
LABEL_20:
          v57 = v116;
          v116[(v51 >> 6) + 8] |= 1 << v51;
          v58 = (v57[6] + 16 * v51);
          *v58 = v43;
          v58[1] = v45;
          *(v57[7] + 8 * v51) = v109;
          v59 = v57[2];
          v60 = __OFADD__(v59, 1);
          v61 = v59 + 1;
          if (v60)
          {
            goto LABEL_72;
          }

          goto LABEL_28;
        }
      }

      v113 = v116;
      *(v116[7] + 8 * v51) = v109;
    }

    LODWORD(v109) = swift_isUniquelyReferenced_nonNull_native();
    v116 = v46;
    v63 = sub_100019C10(v43, v45);
    v64 = *(v113 + 16);
    v65 = (v62 & 1) == 0;
    v66 = v64 + v65;
    if (__OFADD__(v64, v65))
    {
      break;
    }

    if (*(v113 + 24) >= v66)
    {
      if (v109)
      {
        if ((v62 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v109 = v63;
        LODWORD(v113) = v62;
        sub_1006CAB2C();
        v63 = v109;
        if ((v113 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

LABEL_31:

      v113 = v116;
      *(v116[7] + 8 * v63) = 1;
    }

    else
    {
      LODWORD(v113) = v62;
      sub_1006C5104(v66, v109);
      v67 = sub_100019C10(v43, v45);
      if ((v113 & 1) != (v68 & 1))
      {
        goto LABEL_76;
      }

      v63 = v67;
      if (v113)
      {
        goto LABEL_31;
      }

LABEL_27:
      v57 = v116;
      v116[(v63 >> 6) + 8] |= 1 << v63;
      v69 = (v57[6] + 16 * v63);
      *v69 = v43;
      v69[1] = v45;
      *(v57[7] + 8 * v63) = 1;
      v70 = v57[2];
      v60 = __OFADD__(v70, 1);
      v61 = v70 + 1;
      if (v60)
      {
        goto LABEL_69;
      }

LABEL_28:
      v113 = v57;
      v57[2] = v61;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100869470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1008694FC(uint64_t a1)
{
  v3 = *(sub_10010FC20(&qword_10119A808) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + v5);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v6);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_100008F30;

  return sub_10084371C(a1, v7, v8, v9, v1 + v4, v11, v12, v13);
}

uint64_t sub_100869670(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_100869688(uint64_t a1)
{
  v4 = *(sub_10010FC20(&unk_10118BCE0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1008442E0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10086978C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100008F30;

  return sub_10083F60C(a1, a2, v2);
}

uint64_t sub_100869838(uint64_t a1, char a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100008F30;

  return sub_10083EE34(a1, a2, v2);
}

uint64_t sub_10086991C(uint64_t a1)
{
  v4 = *(type metadata accessor for ContainerDetail.AttributionItem(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_10069C06C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100869A84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100839924(a1, v4, v5, v6);
}

uint64_t sub_100869B38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10083AA5C(a1, v4, v5, v6);
}

uint64_t sub_100869BF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100838068(a1, v4, v5, v6);
}

uint64_t sub_100869CAC(uint64_t a1)
{
  v4 = *(sub_10010FC20(&qword_10118C2B0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100838B68(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100869DB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100835AF0(a1, v4, v5, v6);
}

uint64_t sub_100869E6C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = *(v1 + v7);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100008F30;

  return sub_10083384C(a1, v8, v9, v10, v11, v1 + v6, v12, v13);
}

uint64_t sub_100869FBC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for URL() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100008F30;

  return sub_100831F14(a1, v10, v11, v12, v1 + v6, v1 + v9, v13);
}

uint64_t sub_10086A168(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10010FC20(&qword_10118C2B0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Playlist() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_100830C3C(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_10086A2D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100831028(a1, v4, v5, v6);
}

uint64_t sub_10086A398(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_10082A640(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10086A460()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10086A4B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10082B1E8(a1, v4, v5, v6);
}

uint64_t sub_10086A57C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_100829160();
}

uint64_t sub_10086A668@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_10086A6C8()
{
  v1 = *(type metadata accessor for Playlist() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100822850(v3, v4, v0 + v2, v5);
}

uint64_t sub_10086A758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10086A848(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1008037C0(a1, v4, v5, v7, v6);
}

uint64_t sub_10086A954()
{
  v1 = type metadata accessor for PlaybackIntentDescriptor(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64) + v2 + 7;
  v4 = (v0 + v2);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for MusicPlaybackIntentDescriptor();
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  else
  {
  }

  v6 = v3 & 0xFFFFFFFFFFFFFFF8;
  v7 = v4 + *(v1 + 28);
  if (*(v7 + 24))
  {
    sub_10000959C(v7);
  }

  v8 = v4 + *(v1 + 32);
  if (*(v8 + 24))
  {
    sub_10000959C(v8);
  }

  v9 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;

  v10 = *(v0 + v6 + 8);
  if (v10 >= 4)
  {
  }

  v11 = v0 + v9;
  swift_unknownObjectWeakDestroy();
  v12 = *(v0 + v9 + 48);
  if (v12 != 255)
  {
    sub_10012B804(*(v11 + 8), *(v11 + 16), *(v11 + 24), *(v11 + 32), *(v11 + 40), v12);
  }

  if (*(v11 + 64))
  {
  }

  if (*(v11 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10086AB2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10081B1BC(a1, v4, v5, v6);
}

uint64_t sub_10086ABF8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_10010FC20(&unk_1011842D0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_1008015B0(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_10086ADA0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10010FC20(&unk_1011841D0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100008F30;

  return sub_1006A7330(a1, v7, v8, v9, v1 + v6, v11, v12, v13);
}

uint64_t sub_10086AF08(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t sub_10086AF6C(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100816F10(a1, v1 + v5, v1 + v6);
}

uint64_t sub_10086B070(uint64_t a1)
{
  v4 = *(type metadata accessor for IndexPath() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100816908(a1, v1 + v5, v8, v1 + v7);
}

uint64_t sub_10086B18C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1008534B8(a1, v4, v5, v7, v6);
}

uint64_t sub_10086B24C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100008F30;

  return sub_100853850(a1, v1);
}

uint64_t sub_10086B2E4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100008F30;

  return sub_1008129AC(a1, v1);
}

unint64_t sub_10086B3F0(uint64_t a1)
{
  v3 = *(type metadata accessor for Playlist.Entry() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for IndexPath() - 8);
  return sub_1008480C8(a1, *(v1 + 16), (v1 + v4), v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));
}

uint64_t sub_10086B5C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10083F3AC();
  *a1 = result;
  return result;
}

unint64_t sub_10086B5F4()
{
  result = qword_1011A4B58;
  if (!qword_1011A4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A4B58);
  }

  return result;
}

id sub_10086B65C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Playlist.Entry.InternalItem();
  v66 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_101191570);
  __chkstk_darwin(v7 - 8);
  v9 = &v53 - v8;
  v10 = type metadata accessor for Playlist.Entry();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v67 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v68 = &v53 - v14;
  v15 = type metadata accessor for IndexPath();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v21 = __chkstk_darwin(v17);
  if (!*(a1 + 16))
  {
    return 0;
  }

  isa = v4;
  v63 = v20;
  v64 = v11;
  v65 = v10;
  v22 = *(v16 + 16);
  v23 = *(v16 + 80);
  v24 = a1 + ((v23 + 32) & ~v23);
  v25 = &v53 - v18;
  v69 = v19;
  v22(&v53 - v18, v24, v19, v21);
  v70 = v25;
  IndexPath.section.getter();
  Array.subscript.getter(&type metadata for ContainerDetail.Section, &aBlock);
  if (aBlock != 2)
  {
    (*(v16 + 8))(v70, v69);
    return 0;
  }

  v59 = v22;
  v60 = v23;
  v61 = v16;
  v27 = v70;
  sub_10085939C(v9);
  v28 = v64;
  v29 = v65;
  if ((*(v64 + 48))(v9, 1, v65) == 1)
  {
    (*(v61 + 8))(v27, v69);
    sub_1000095E8(v9, &qword_101191570);
    return 0;
  }

  else
  {
    v30 = v28 + 32;
    v31 = v68;
    v57 = *(v28 + 32);
    v57();
    v58 = v2;
    v32 = sub_100841824();
    if (v32)
    {
      v33 = v32;
      v54 = ~v60;
      Playlist.Entry.internalItem.getter();
      v34 = sub_10024B50C();
      v66[1](v6, isa);
      v66 = v33;
      v35 = Playlist.Entry.supportsContainerNavigation(itemState:)() & 1;
      v36 = v35 == *(v34 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron);
      v56 = v34;
      v55 = v30;
      if (v36)
      {
        *(v34 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = v35;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *(&v53 - 2) = v34;
        *(&v53 - 8) = v35;
        aBlock = v34;
        sub_100866F00(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        v31 = v68;
      }

      v38 = v70;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v53 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v40 = v64;
      v39 = v65;
      v41 = v67;
      (*(v64 + 16))(v67, v31, v65);
      v42 = v63;
      v43 = v69;
      v59(v63, v38, v69);
      v44 = (*(v40 + 80) + 24) & ~*(v40 + 80);
      v45 = (v12 + v60 + v44) & v54;
      v46 = swift_allocObject();
      *(v46 + 16) = v53;
      (v57)(v46 + v44, v41, v39);
      v47 = v61;
      (*(v61 + 32))(v46 + v45, v42, v43);
      v48 = objc_opt_self();
      v75 = sub_100218654;
      v76 = v56;
      aBlock = _NSConcreteStackBlock;
      v72 = 1107296256;
      v73 = sub_100747E6C;
      v74 = &unk_1010C2B80;
      v49 = _Block_copy(&aBlock);
      swift_retain_n();

      v75 = sub_10086E39C;
      v76 = v46;
      aBlock = _NSConcreteStackBlock;
      v72 = 1107296256;
      v73 = sub_100747EBC;
      v74 = &unk_1010C2BA8;
      v50 = _Block_copy(&aBlock);

      v51 = isa;
      v52 = [v48 configurationWithIdentifier:isa previewProvider:v49 actionProvider:v50];

      _Block_release(v50);
      _Block_release(v49);

      (*(v64 + 8))(v68, v65);
      (*(v47 + 8))(v70, v69);

      return v52;
    }

    else
    {
      (*(v28 + 8))(v31, v29);
      (*(v61 + 8))(v70, v69);
      return 0;
    }
  }
}

id sub_10086BE48(void *a1, void *a2)
{
  v3 = v2;
  v77 = a2;
  v5 = sub_10010FC20(&qword_1011819F8);
  __chkstk_darwin(v5 - 8);
  v71 = &v62 - v6;
  v7 = type metadata accessor for MusicPropertySource();
  v8 = *(v7 - 8);
  v73 = v7;
  v74 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v69 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v72 = &v62 - v11;
  v12 = sub_10010FC20(&qword_101191570);
  __chkstk_darwin(v12 - 8);
  v14 = &v62 - v13;
  v15 = type metadata accessor for Playlist.Entry();
  v16 = *(v15 - 8);
  v75 = v15;
  v76 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v70 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v62 - v19;
  v21 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v21 - 8);
  v23 = &v62 - v22;
  v24 = type metadata accessor for IndexPath();
  v25 = *(v24 - 8);
  *&v26 = __chkstk_darwin(v24).n128_u64[0];
  v28 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = [a1 identifier];
  sub_10010FC20(&unk_1011846A0);
  v29 = swift_dynamicCast();
  v30 = *(v25 + 56);
  if ((v29 & 1) == 0)
  {
    v30(v23, 1, 1, v24);
    sub_1000095E8(v23, &unk_10118BCE0);
    return [v77 setPreferredCommitStyle:0];
  }

  v30(v23, 0, 1, v24);
  (*(v25 + 32))(v28, v23, v24);
  IndexPath.section.getter();
  Array.subscript.getter(&type metadata for ContainerDetail.Section, &aBlock);
  if (aBlock != 2)
  {
LABEL_17:
    (*(v25 + 8))(v28, v24);
    return [v77 setPreferredCommitStyle:0];
  }

  sub_10085939C(v14);
  v31 = v75;
  v32 = v76;
  if ((*(v76 + 48))(v14, 1, v75) == 1)
  {
    (*(v25 + 8))(v28, v24);
    sub_1000095E8(v14, &qword_101191570);
    return [v77 setPreferredCommitStyle:0];
  }

  v67 = *(v32 + 32);
  v68 = v32 + 32;
  v67(v20, v14, v31);
  v33 = sub_100841824();
  if (!v33)
  {
    (*(v32 + 8))(v20, v31);
    goto LABEL_17;
  }

  v34 = v33;
  v35 = v20;
  if ((Playlist.Entry.supportsContainerNavigation(itemState:)() & 1) == 0)
  {
    goto LABEL_15;
  }

  v36 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v3 + v36, &aBlock, &unk_1011926C0);
  if (v79)
  {

    sub_1000095E8(&aBlock, &unk_1011926C0);
LABEL_16:
    (*(v76 + 8))(v35, v75);
    goto LABEL_17;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&aBlock, &unk_1011926C0);
  if (!Strong || (v38 = sub_10003169C(), Strong, (v66 = v38) == 0))
  {
LABEL_15:

    goto LABEL_16;
  }

  v40 = v71;
  v65 = v34;
  MusicLibrary.ItemState.containerLoadingSource.getter(v39, v71);
  v42 = v73;
  v41 = v74;
  if ((*(v74 + 48))(v40, 1, v73) != 1)
  {
    v63 = *(v41 + 32);
    v64 = v41 + 32;
    v44 = v42;
    v45 = v72;
    v46 = v44;
    v63();
    (*(v76 + 16))(v70, v35, v75);
    v47 = v41;
    v48 = *(v41 + 16);
    v49 = v69;
    v50 = v45;
    v51 = v46;
    v48(v69, v50, v46);
    v52 = *(v76 + 80);
    v71 = v35;
    v53 = (v52 + 16) & ~v52;
    v54 = (v17 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = *(v47 + 80);
    v56 = v66;
    v57 = (v55 + v54 + 8) & ~v55;
    v58 = swift_allocObject();
    v59 = v58 + v53;
    v60 = v75;
    v67(v59, v70, v75);
    *(v58 + v54) = v56;
    (v63)(v58 + v57, v49, v51);
    v82 = sub_10086C9B8;
    v83 = v58;
    aBlock = _NSConcreteStackBlock;
    v79 = 1107296256;
    v80 = sub_10002BC98;
    v81 = &unk_1010C2AE0;
    v61 = _Block_copy(&aBlock);

    [v77 addAnimations:v61];

    _Block_release(v61);

    (*(v74 + 8))(v72, v51);
    (*(v76 + 8))(v71, v60);
    return (*(v25 + 8))(v28, v24);
  }

  (*(v76 + 8))(v35, v75);
  (*(v25 + 8))(v28, v24);
  sub_1000095E8(v40, &qword_1011819F8);
  return [v77 setPreferredCommitStyle:0];
}

void sub_10086C6A8(void *a1, uint64_t a2)
{
  v3 = v2;
  IndexPath.section.getter();
  Array.subscript.getter(&type metadata for ContainerDetail.Section, v10);
  if (v10[0] > 5u)
  {
    if (v10[0] == 6)
    {
      if (*(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_needsDurationUpdate) == 1)
      {
        *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_needsDurationUpdate) = 0;
        sub_10084AC50();
      }
    }

    else if (v10[0] == 9)
    {
      v7 = *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsCell);
      *(v3 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsCell) = a1;
      v8 = a1;
    }
  }

  else if (v10[0])
  {
    if (v10[0] == 2)
    {
      sub_1008377B0(a2);
      v6 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v3 + v6, v11, &unk_1011926C0);
      if (v11[8])
      {
        sub_1000095E8(v11, &unk_1011926C0);
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v11, &unk_1011926C0);
        if (Strong)
        {
          sub_1006A44A0();

          sub_100804470(a1, a2);
        }
      }
    }
  }

  else
  {
    sub_1008412FC();
  }
}

unint64_t sub_10086C82C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *(v4 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (*(v4 + result + 32) == 2)
  {
    v6 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v2 + v6, v8, &unk_1011926C0);
    if (v8[8])
    {
      return sub_1000095E8(v8, &unk_1011926C0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      result = sub_1000095E8(v8, &unk_1011926C0);
      if (Strong)
      {
        sub_1006A44A0();

        sub_1008681AC(a1, &unk_1010C2A50, &unk_1010C2A78, sub_10086C964);
      }
    }
  }

  return result;
}

uint64_t sub_10086C9B8()
{
  v1 = *(type metadata accessor for Playlist.Entry() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for MusicPropertySource() - 8);
  v5 = *(v0 + v3);
  v6 = (v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80)));

  return sub_100812FE8(v0 + v2, v5, v6);
}

uint64_t sub_10086CA94(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MusicVideo() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for MusicPropertySource() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_100813A58(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_10086CBF4(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for MusicPropertySource();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_10086CD54(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Song() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for MusicPropertySource() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_1008136B0(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_10086CEB4()
{
  v1 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_10012B804(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10086CFCC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10010FC20(&unk_1011842D0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10002F3F4;

  return sub_100806BF0(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_10086D10C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10086D1F4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10086D23C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_100803108(a1, v4, v5, v7, v6);
}

uint64_t sub_10086D2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, void, unint64_t, void, void, unint64_t))
{
  v11 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v12 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a5(a1, a2, a3, a4, *(v5 + 16), v5 + v12, *(v5 + v13), *(v5 + v13 + 8), v5 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_10086D3E4(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_10010FC20(&unk_1011842D0) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);

  v8 = sub_10010FC20(&unk_1011841D0);
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v1 + v7, 1, v8))
  {
    (*(v9 + 8))(v1 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_10086D5B8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Album() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_10010FC20(&unk_1011842D0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_1008012A4(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_10086D760()
{
  v1 = sub_10010FC20(&unk_1011841D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4 + 16) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10086D858(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = a2(0);
  v9 = *(v8 - 8);
  v10 = (v6 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  (*(v5 + 8))(v2 + v6, v4);
  (*(v9 + 8))(v2 + v10, v8);

  return swift_deallocObject();
}

uint64_t sub_10086D9F0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, unint64_t, uint64_t))
{
  v7 = *(a2(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(a3(0) - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return a4(a1, v4 + v8, v11);
}

uint64_t sub_10086DAEC(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_10086DB98(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = a2(0);
  v9 = *(v8 - 8);
  v10 = (v6 + v7 + *(v9 + 80)) & ~*(v9 + 80);

  (*(v5 + 8))(v2 + v6, v4);
  (*(v9 + 8))(v2 + v10, v8);

  return swift_deallocObject();
}

uint64_t sub_10086DD10(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, __n128), double a2)
{
  v4 = *(type metadata accessor for IndexPath() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for Date() - 8);
  v8 = *(v2 + 16);
  v9 = v2 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));
  v10.n128_f64[0] = a2;

  return a1(v8, v2 + v5, v9, v10);
}

uint64_t sub_10086DE04()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_10086DFCC(void (*a1)(uint64_t, uint64_t, uint64_t, double), uint64_t *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), double a5)
{
  v11 = *(type metadata accessor for IndexPath() - 8);
  v12 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(type metadata accessor for Date() - 8);
  return sub_100804814(a5, *(v5 + 16), v5 + v12, *(v5 + v13), *(v5 + v14), *(v5 + v15), *(v5 + v15 + 8), *(v5 + v15 + 9), v5 + ((*(v16 + 80) + v15 + 10) & ~*(v16 + 80)), a1, a2, a3, a4);
}

void sub_10086E10C()
{
  type metadata accessor for IndexPath();
  if (v0 <= 0x3F)
  {
    sub_10086E194();
    if (v1 <= 0x3F)
    {
      sub_10086E210();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_10086E194()
{
  if (!qword_1011A4C60)
  {
    type metadata accessor for Playlist.Entry();
    sub_1001109D0(&unk_1011A46E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1011A4C60);
    }
  }
}

void sub_10086E210()
{
  if (!qword_1011A4C68)
  {
    type metadata accessor for Playlist();
    type metadata accessor for MusicPlayer.PlayabilityStatus();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1011A4C68);
    }
  }
}

uint64_t sub_10086E3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000089F8(a3, v22 - v9, &unk_101181520);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000095E8(v10, &unk_101181520);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

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

      sub_1000095E8(a3, &unk_101181520);

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

  sub_1000095E8(a3, &unk_101181520);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10086E680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v24[0] = a4;
  v10 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v10 - 8);
  v12 = v24 - v11;
  sub_1000089F8(a3, v24 - v11, &unk_101181520);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000095E8(v12, &unk_101181520);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      sub_10010FC20(a6);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1000095E8(a3, &unk_101181520);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000095E8(a3, &unk_101181520);
  sub_10010FC20(a6);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t PlaybackController.play<A>(_:shuffleMode:startingSing:playActivityFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_100008F30;

  return (sub_1008719EC)(a1, a2, a3, a4, a5, a6);
}

uint64_t PlaybackController.play<A, B>(_:from:playActivityFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100008F30;

  return sub_1008721A4(a1, a2, a3, a4, a5, a6, a7);
}

{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100008F30;

  return sub_1008727D0(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t PlaybackController.play(_:shuffleMode:startingSing:playActivityFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100008F30;

  return (sub_100872D48)(a1, a2, a3, a4);
}

uint64_t PlaybackController.play<A>(_:shuffleMode:from:playActivityFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_100008F30;

  return (sub_100873330)(a1, a2, a3, a4, a5, a6);
}

uint64_t PlaybackController.play<A>(_:shuffleMode:playActivityFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100008F30;

  return sub_1008739C8(a1, a2, a3, a4, a5);
}

uint64_t PlaybackController.play<A>(from:playActivityFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100008F30;

  return (sub_100874000)(a1, a2, a3, a4);
}

uint64_t PlaybackController.playLibraryTracks(by:playActivityFields:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return (sub_100874504)(a1, a2);
}

uint64_t sub_10086EFFC()
{
  v1[4] = v0;
  v2 = sub_10010FC20(&qword_1011815C0);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_10010FC20(&unk_1011929A0);
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v4 = sub_10010FC20(&qword_101181B20);
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_10086F198, 0, 0);
}

uint64_t sub_10086F198()
{
  type metadata accessor for Album();
  MusicLibraryRequest.init()();
  swift_getKeyPath();
  MusicLibraryRequest.filter<A>(matching:contains:)();

  MusicLibraryRequest.limit.setter();
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_10086F290;
  v2 = v0[10];
  v3 = v0[11];

  return MusicLibraryRequest.response()(v2, v3);
}

uint64_t sub_10086F290()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10086F524;
  }

  else
  {
    v2 = sub_10086F3A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10086F3A4()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v12 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
  MusicLibraryResponse.items.getter();
  (*(v4 + 8))(v3, v5);
  sub_100020674(&unk_10118C140, &qword_1011815C0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v9 = dispatch thunk of Collection.distance(from:to:)();
  (*(v7 + 8))(v6, v8);
  (*(v2 + 8))(v1, v12);

  v10 = v0[1];

  return v10(v9 > 0);
}

uint64_t sub_10086F524()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1(0);
}

uint64_t PlaybackController.queue<A, B>(_:at:playActivityFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[13] = a7;
  v8[14] = v7;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  v10 = type metadata accessor for QueueInsertionPosition();
  v8[15] = v10;
  v8[16] = *(v10 - 8);
  v8[17] = swift_task_alloc();
  type metadata accessor for Optional();
  v8[18] = swift_task_alloc();
  v8[19] = *(a4 - 8);
  v8[20] = swift_task_alloc();

  return _swift_task_switch(sub_10086F720, 0, 0);
}

uint64_t sub_10086F720()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[7];
  sub_100009F78(0, &qword_10118AB70);
  (*(v2 + 16))(v1, v6, v5);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v7 = MPCPlaybackIntent.init<A, B>(for:startingAt:)();
  v0[21] = v7;
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[15];
  v11 = v7;
  v12 = v0[8];
  sub_10086FBCC(v0[9]);
  (*(v9 + 16))(v8, v12, v10);
  v13 = sub_100875598(v8);
  v0[22] = v13;
  v0[2] = 0x4955636973754DLL;
  v0[5] = &type metadata for Player.CommandIssuerIdentity;
  v0[6] = &protocol witness table for Player.CommandIssuerIdentity;
  v0[3] = 0xE700000000000000;
  v14 = swift_task_alloc();
  v0[23] = v14;
  *v14 = v0;
  v14[1] = sub_10086F968;

  return PlaybackController.insert(_:location:issuer:)(v11, v13, (v0 + 2));
}

uint64_t sub_10086F968()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  sub_100309AD8(*(v2 + 176));
  if (v0)
  {
    v3 = sub_10086FB2C;
  }

  else
  {
    sub_1000095E8(v2 + 16, &unk_101183910);
    v3 = sub_10086FAA4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10086FAA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10086FB2C()
{
  sub_1000095E8(v0 + 16, &unk_101183910);

  v1 = *(v0 + 8);

  return v1();
}

void sub_10086FBCC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_1011A4CE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  sub_1000089F8(a1, &v20 - v8, &qword_1011A4CE0);
  v10 = type metadata accessor for MusicPlayActivityFields();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v9, 1, v10) == 1)
  {
    sub_1000095E8(v9, &qword_1011A4CE0);
  }

  else
  {
    MusicPlayActivityFields.featureName.getter();
    v14 = v13;
    (*(v11 + 8))(v9, v10);
    if (v14)
    {
      v15 = String._bridgeToObjectiveC()();

      goto LABEL_6;
    }
  }

  v15 = 0;
LABEL_6:
  [v2 setPlayActivityFeatureName:v15];

  sub_1000089F8(a1, v6, &qword_1011A4CE0);
  if (v12(v6, 1, v10) == 1)
  {
    sub_1000095E8(v6, &qword_1011A4CE0);
    isa = 0;
  }

  else
  {
    v17 = MusicPlayActivityFields.recommendationData.getter();
    v19 = v18;
    (*(v11 + 8))(v6, v10);
    if (v19 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100029CA4(v17, v19);
    }
  }

  [v2 setPlayActivityRecommendationData:isa];
}

uint64_t PlaybackController.queue<A>(_:at:playActivityFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v8 = type metadata accessor for QueueInsertionPosition();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  sub_10010FC20(&unk_101189DA0);
  v6[16] = swift_task_alloc();
  v6[17] = *(a4 - 8);
  v6[18] = swift_task_alloc();

  return _swift_task_switch(sub_10086FF9C, 0, 0);
}

uint64_t sub_10086FF9C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[10];
  v5 = v0[7];
  sub_100009F78(0, &qword_10118AB70);
  (*(v2 + 16))(v1, v5, v4);
  v6 = type metadata accessor for GenericMusicItem();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = MPCPlaybackIntent.init<A>(for:startingAt:)();
  v0[19] = v7;
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];
  v11 = v7;
  v12 = v0[8];
  sub_10086FBCC(v0[9]);
  (*(v9 + 16))(v8, v12, v10);
  v13 = sub_100875598(v8);
  v0[20] = v13;
  v0[2] = 0x4955636973754DLL;
  v0[5] = &type metadata for Player.CommandIssuerIdentity;
  v0[6] = &protocol witness table for Player.CommandIssuerIdentity;
  v0[3] = 0xE700000000000000;
  v14 = swift_task_alloc();
  v0[21] = v14;
  *v14 = v0;
  v14[1] = sub_1008701D4;

  return PlaybackController.insert(_:location:issuer:)(v11, v13, (v0 + 2));
}

uint64_t sub_1008701D4()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  sub_100309AD8(*(v2 + 160));
  if (v0)
  {
    v3 = sub_100870398;
  }

  else
  {
    sub_1000095E8(v2 + 16, &unk_101183910);
    v3 = sub_100870310;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100870310()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100870398()
{
  sub_1000095E8(v0 + 16, &unk_101183910);

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall PlaybackController.pause()()
{
  v1 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_10086E680(0, 0, v3, &unk_100EE5750, v5, &qword_101184438);
}

uint64_t sub_10087054C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 96) = a1;
  *(v4 + 104) = a4;
  return _swift_task_switch(sub_10087056C, 0, 0);
}

uint64_t sub_10087056C()
{
  *(v0 + 40) = &type metadata for Player.PlaybackCommand;
  *(v0 + 48) = &protocol witness table for Player.PlaybackCommand;
  *(v0 + 16) = 1;
  *(v0 + 56) = 0x4955636973754DLL;
  *(v0 + 80) = &type metadata for Player.CommandIssuerIdentity;
  *(v0 + 88) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v0 + 64) = 0xE700000000000000;
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_10087066C;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

uint64_t sub_10087066C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_1008707D4;
  }

  else
  {
    *(v4 + 128) = a1;
    sub_1000095E8(v4 + 56, &unk_101183910);
    sub_10000959C(v4 + 16);
    v5 = sub_1008707B0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1008707D4()
{
  sub_1000095E8(v0 + 56, &unk_101183910);
  sub_10000959C(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t PlaybackController.playabilityStatus<A>(for:)@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v2 + v9))
  {

    v10 = Player.state<A>(for:)(a1);

    (*(*v10 + 256))(v11);

    return (*(v6 + 32))(a2, v8, v5);
  }

  else
  {
    v13 = enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.contentUnavailable(_:);
    v14 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
    (*(*(v14 - 8) + 104))(a2, v13, v14);
    return (*(v6 + 104))(a2, enum case for MusicPlayer.PlayabilityStatus.unplayable(_:), v5);
  }
}

uint64_t (*PlaybackController.onMusicAppPlayerChanged.getter())(uint64_t a1)
{
  if (qword_10117FE38 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_1011A4C98))
  {
    _bridgeAnyObjectToAny(_:)();
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
    sub_10010FC20(&qword_1011A4CB0);
    if (swift_dynamicCast())
    {
      *(swift_allocObject() + 16) = v2;
      return sub_100031BE4;
    }
  }

  else
  {
    sub_1000095E8(v5, &unk_101183F30);
  }

  return 0;
}

uint64_t PlaybackController.onMusicAppPlayerChanged.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_10117FE38 != -1)
  {
    swift_once();
  }

  v6 = qword_1011A4C98;
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;

    sub_10010FC20(&qword_1011A4CB0);
    v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  }

  else
  {
    v8 = 0;
  }

  objc_setAssociatedObject(v3, v6, v8, 3);
  swift_unknownObjectRelease();
  return sub_100020438(a1);
}

void (*PlaybackController.onMusicAppPlayerChanged.modify(void *a1))(uint64_t **a1, char a2)
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
  *v3 = PlaybackController.onMusicAppPlayerChanged.getter();
  v4[1] = v5;
  return sub_100870CE8;
}

void sub_100870CE8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (a2)
  {
    sub_100030444(**a1);
    if (qword_10117FE38 != -1)
    {
      swift_once();
    }

    v5 = qword_1011A4C98;
    if (v4)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v4;
      *(v6 + 24) = v3;
      v2[2] = sub_100875A24;
      v2[3] = v6;

      sub_10010FC20(&qword_1011A4CB0);
      v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    else
    {
      v7 = 0;
    }

    objc_setAssociatedObject(v2[4], v5, v7, 3);
    swift_unknownObjectRelease();
    sub_100020438(v4);
    v11 = *v2;
  }

  else
  {
    if (qword_10117FE38 != -1)
    {
      swift_once();
    }

    v8 = qword_1011A4C98;
    if (v4)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = v4;
      *(v9 + 24) = v3;
      v2[2] = sub_100875A24;
      v2[3] = v9;

      sub_10010FC20(&qword_1011A4CB0);
      v10 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    else
    {
      v10 = 0;
    }

    objc_setAssociatedObject(v2[4], v8, v10, 3);
    swift_unknownObjectRelease();
    v11 = v4;
  }

  sub_100020438(v11);

  free(v2);
}

uint64_t PlaybackController.playerObjectWillChange.getter()
{
  if (qword_10117FE40 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_1011A4CA0))
  {
    _bridgeAnyObjectToAny(_:)();
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
    type metadata accessor for AnyCancellable();
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_1000095E8(v5, &unk_101183F30);
  }

  return 0;
}

uint64_t PlaybackController.playerObjectWillChange.setter(id value)
{
  if (qword_10117FE40 != -1)
  {
    swift_once();
  }

  objc_setAssociatedObject(v1, qword_1011A4CA0, value, 1);
}

uint64_t (*PlaybackController.playerObjectWillChange.modify(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = PlaybackController.playerObjectWillChange.getter();
  return sub_100871084;
}

uint64_t sub_100871084(void **a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    v4 = qword_10117FE40;

    if (v4 != -1)
    {
      swift_once();
    }

    objc_setAssociatedObject(a1[1], qword_1011A4CA0, v3, 1);
  }

  else
  {
    if (qword_10117FE40 != -1)
    {
      swift_once();
    }

    objc_setAssociatedObject(a1[1], qword_1011A4CA0, v3, 1);
  }
}

void sub_100871168()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = PlaybackController.onMusicAppPlayerChanged.getter();
    if (v2)
    {
      v3 = v2;
      PlaybackController.musicPlayer.getter();
      v3();
      sub_100020438(v3);
    }
  }
}

uint64_t sub_100871218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100008F30;

  return sub_1008721A4(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_10087130C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100008F30;

  return sub_1008727D0(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_100871400(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return (sub_100874504)(a1, a2);
}

uint64_t sub_1008714B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100008F30;

  return PlaybackController.queue<A, B>(_:at:playActivityFields:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_100871598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100008F30;

  return PlaybackController.queue<A>(_:at:playActivityFields:)(a1, a2, a3, a4, a5);
}

uint64_t sub_100871660()
{
  v1 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *v0;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  v7 = v4;
  sub_10086E680(0, 0, v3, &unk_100EE5880, v6, &qword_101184438);
}

void (*sub_10087179C(void *a1))(void *a1)
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
  v2[4] = PlaybackController.onMusicAppPlayerChanged.modify(v2);
  return sub_100260668;
}

uint64_t sub_100871834(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011A4CF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for ShuffleMode();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a1, 1, v5) != 1)
  {
    sub_1000089F8(a1, v4, &qword_1011A4CF0);
    v8 = (*(v6 + 88))(v4, v5);
    if (v8 == enum case for ShuffleMode.off(_:))
    {
      v7 = 0;
      goto LABEL_9;
    }

    if (v8 == enum case for ShuffleMode.items(_:))
    {
      v7 = 1;
      goto LABEL_9;
    }

    if (v8 == enum case for ShuffleMode.containers(_:))
    {
      v7 = 2;
      goto LABEL_9;
    }

    (*(v6 + 8))(v4, v5);
  }

  v7 = 0;
LABEL_9:
  sub_1000095E8(a1, &qword_1011A4CF0);
  return v7;
}

uint64_t sub_1008719EC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 200) = a5;
  *(v6 + 208) = a6;
  *(v6 + 184) = a2;
  *(v6 + 192) = a4;
  *(v6 + 352) = a3;
  *(v6 + 176) = a1;
  sub_10010FC20(&unk_101181520);
  *(v6 + 216) = swift_task_alloc();
  sub_10010FC20(&qword_1011A4CF0);
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  *(v6 + 240) = swift_task_alloc();
  v8 = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v6 + 248) = v8;
  v9 = *(v8 - 8);
  *(v6 + 256) = v9;
  *(v6 + 264) = *(v9 + 64);
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  sub_10010FC20(&unk_101188910);
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = *(a5 - 8);
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = swift_task_alloc();
  v10 = type metadata accessor for MusicPlaybackIntentDescriptor();
  *(v6 + 320) = v10;
  *(v6 + 328) = *(v10 - 8);
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();

  return _swift_task_switch(sub_100871C6C, 0, 0);
}

uint64_t sub_100871C6C()
{
  v38 = v0;
  v1 = *(*(v0 + 296) + 16);
  v1(*(v0 + 312), *(v0 + 176), *(v0 + 200));
  sub_10010FC20(&qword_101182C48);
  if (swift_dynamicCast())
  {
    v34 = v1;
    v2 = *(v0 + 288);
    sub_100188D80((v0 + 56), v0 + 16);
    sub_100008FE4(v0 + 16, v0 + 136);
    v3 = type metadata accessor for MusicPlaybackSource();
    v35 = 0u;
    v36 = 0u;
    v37 = 0;
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    MusicPlaybackIntentDescriptor.init(container:startingAt:playbackSource:)();
    sub_10000959C(v0 + 16);
  }

  else
  {
    v4 = *(v0 + 304);
    v5 = *(v0 + 200);
    v6 = *(v0 + 176);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    sub_1000095E8(v0 + 56, &qword_101182C40);
    v1(v4, v6, v5);
    MusicPlaybackIntentDescriptor.init<A>(item:)();
    v34 = v1;
    (*(*(v0 + 328) + 32))(*(v0 + 344), *(v0 + 336), *(v0 + 320));
  }

  v7 = *(v0 + 344);
  v8 = *(v0 + 320);
  v9 = *(v0 + 328);
  v33 = v8;
  v31 = *(v0 + 272);
  v32 = *(v0 + 256);
  v28 = *(v0 + 280);
  v29 = *(v0 + 248);
  v10 = *(v0 + 240);
  v30 = *(v0 + 216);
  v11 = *(v0 + 200);
  v27 = *(v0 + 352);
  v12 = *(v0 + 192);
  v25 = *(v0 + 184);
  v26 = *(v0 + 224);
  v23 = *(v0 + 208);
  v24 = *(v0 + 176);
  v13 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
  sub_10086FBCC(v12);

  (*(v9 + 16))(v10, v7, v8);
  swift_storeEnumTagMultiPayload();
  *(v0 + 120) = v11;
  *(v0 + 128) = *(v23 + 8);
  v14 = sub_10001C8B8((v0 + 96));
  v34(v14, v24, v11);
  sub_1000089F8(v25, v26, &qword_1011A4CF0);
  v15 = sub_100871834(v26);
  *(&v36 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v37 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v35 = 0x4955636973754DLL;
  *(&v35 + 1) = 0xE700000000000000;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v10, v0 + 96, 3, 0, v15, v16 & 1, 0, 1, v28, 0, &v35);
  *(v28 + *(v29 + 36)) = v27 & 1;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v30, 1, 1, v17);
  sub_1001DFCE4(v28, v31);
  type metadata accessor for MainActor();
  v18 = static MainActor.shared.getter();
  v19 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = &protocol witness table for MainActor;
  sub_1001DFD58(v31, v20 + v19);
  sub_1001F4F78(0, 0, v30, &unk_100EE5928, v20);

  sub_10087595C(v28, type metadata accessor for PlaybackIntentDescriptor);
  (*(v9 + 8))(v7, v33);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1008721A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a2;
  v7[9] = a3;
  v7[7] = a1;
  sub_10010FC20(&unk_101181520);
  v7[14] = swift_task_alloc();
  v7[15] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v7[16] = swift_task_alloc();
  v9 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v7[17] = v9;
  v7[18] = *(v9 + 64);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  type metadata accessor for Optional();
  v7[21] = swift_task_alloc();
  v7[22] = *(a5 - 8);
  v7[23] = swift_task_alloc();
  v10 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v7[24] = v10;
  v7[25] = *(v10 - 8);
  v7[26] = swift_task_alloc();

  return _swift_task_switch(sub_1008723D4, 0, 0);
}

uint64_t sub_1008723D4()
{
  v28 = v0;
  v1 = v0[21];
  v2 = v0[10];
  v3 = v0[7];
  (*(v0[22] + 16))(v0[23], v0[8], v0[11]);
  v4 = *(v2 - 8);
  v26 = *(v4 + 16);
  v26(v1, v3, v2);
  (*(v4 + 56))(v1, 0, 1, v2);
  MusicPlaybackIntentDescriptor.init<A, B>(items:startingAt:)();
  v5 = v0[25];
  v6 = v0[26];
  v7 = v0[24];
  v25 = v5;
  v8 = v0[16];
  v23 = v0[19];
  v24 = v0[17];
  v21 = v0[20];
  v22 = v0[14];
  v9 = v0[9];
  v10 = v0[10];
  v19 = v0[12];
  v20 = v0[7];
  v11 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
  sub_10086FBCC(v9);

  (*(v5 + 16))(v8, v6, v7);
  swift_storeEnumTagMultiPayload();
  v0[5] = v10;
  v0[6] = *(v19 + 8);
  v12 = sub_10001C8B8(v0 + 2);
  v26(v12, v20, v10);
  v27[3] = &type metadata for Player.CommandIssuerIdentity;
  v27[4] = &protocol witness table for Player.CommandIssuerIdentity;
  v27[0] = 0x4955636973754DLL;
  v27[1] = 0xE700000000000000;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v8, (v0 + 2), 3, 0, 0, 1, 0, 1, v21, 0, v27);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v22, 1, 1, v13);
  sub_1001DFCE4(v21, v23);
  type metadata accessor for MainActor();
  v14 = static MainActor.shared.getter();
  v15 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = &protocol witness table for MainActor;
  sub_1001DFD58(v23, v16 + v15);
  sub_1001F4F78(0, 0, v22, &unk_100EE5920, v16);

  sub_10087595C(v21, type metadata accessor for PlaybackIntentDescriptor);
  (*(v25 + 8))(v6, v7);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1008727D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  v7[18] = a2;
  v7[19] = a3;
  v7[17] = a1;
  sub_10010FC20(&unk_101181520);
  v7[24] = swift_task_alloc();
  v7[25] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v7[26] = swift_task_alloc();
  v8 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v7[27] = v8;
  v7[28] = *(v8 + 64);
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  sub_10010FC20(&unk_101188910);
  v7[31] = swift_task_alloc();
  v9 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v7[32] = v9;
  v7[33] = *(v9 - 8);
  v7[34] = swift_task_alloc();

  return _swift_task_switch(sub_1008729A8, 0, 0);
}

uint64_t sub_1008729A8()
{
  v31 = v0;
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  v24 = v1;
  v25 = v0[30];
  v29 = v0[31];
  v27 = v0[29];
  v28 = v0[27];
  v23 = v0[26];
  v4 = v0[23];
  v26 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v22 = v0[19];
  v9 = v0[17];
  v8 = v0[18];
  v0[5] = v6;
  v0[6] = v4;
  v10 = sub_10001C8B8(v0 + 2);
  (*(*(v6 - 8) + 16))(v10, v8, v6);
  v0[10] = v7;
  v0[11] = v5;
  v11 = sub_10001C8B8(v0 + 7);
  v12 = *(*(v7 - 8) + 16);
  v12(v11, v9, v7);
  v13 = type metadata accessor for MusicPlaybackSource();
  (*(*(v13 - 8) + 56))(v29, 1, 1, v13);
  MusicPlaybackIntentDescriptor.init(container:startingAt:playbackSource:)();
  v14 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
  sub_10086FBCC(v22);

  (*(v1 + 16))(v23, v2, v3);
  swift_storeEnumTagMultiPayload();
  v0[15] = v7;
  v0[16] = *(v5 + 8);
  v15 = sub_10001C8B8(v0 + 12);
  v12(v15, v9, v7);
  v30[3] = &type metadata for Player.CommandIssuerIdentity;
  v30[4] = &protocol witness table for Player.CommandIssuerIdentity;
  v30[0] = 0x4955636973754DLL;
  v30[1] = 0xE700000000000000;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v23, (v0 + 12), 3, 0, 0, 1, 0, 1, v25, 0, v30);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v26, 1, 1, v16);
  sub_1001DFCE4(v25, v27);
  type metadata accessor for MainActor();
  v17 = static MainActor.shared.getter();
  v18 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = &protocol witness table for MainActor;
  sub_1001DFD58(v27, v19 + v18);
  sub_1001F4F78(0, 0, v26, &unk_100EE5918, v19);

  sub_10087595C(v25, type metadata accessor for PlaybackIntentDescriptor);
  (*(v24 + 8))(v2, v3);

  v20 = v0[1];

  return v20();
}

uint64_t sub_100872D48(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = a4;
  *(v4 + 200) = a3;
  *(v4 + 56) = a1;
  sub_10010FC20(&unk_101181520);
  *(v4 + 80) = swift_task_alloc();
  sub_10010FC20(&qword_1011A4CF0);
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  *(v4 + 104) = swift_task_alloc();
  v5 = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v4 + 112) = v5;
  v6 = *(v5 - 8);
  *(v4 + 120) = v6;
  *(v4 + 128) = *(v6 + 64);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  v7 = type metadata accessor for GenericMusicItem();
  *(v4 + 152) = v7;
  *(v4 + 160) = *(v7 - 8);
  *(v4 + 168) = swift_task_alloc();
  v8 = type metadata accessor for MusicPlaybackIntentDescriptor();
  *(v4 + 176) = v8;
  *(v4 + 184) = *(v8 - 8);
  *(v4 + 192) = swift_task_alloc();

  return _swift_task_switch(sub_100872F7C, 0, 0);
}

uint64_t sub_100872F7C()
{
  v29 = v0;
  v1 = *(*(v0 + 160) + 16);
  v1(*(v0 + 168), *(v0 + 56), *(v0 + 152));
  MusicPlaybackIntentDescriptor.init(item:)();
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);
  v27 = v4;
  v5 = *(v0 + 152);
  v25 = *(v0 + 136);
  v26 = *(v0 + 120);
  v23 = *(v0 + 112);
  v6 = *(v0 + 104);
  v20 = *(v0 + 88);
  v21 = *(v0 + 144);
  v24 = *(v0 + 80);
  v22 = *(v0 + 200);
  v7 = *(v0 + 72);
  v19 = *(v0 + 64);
  v18 = *(v0 + 56);
  v8 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
  sub_10086FBCC(v7);

  (*(v2 + 16))(v6, v3, v4);
  swift_storeEnumTagMultiPayload();
  *(v0 + 40) = v5;
  *(v0 + 48) = sub_100568AEC();
  v9 = sub_10001C8B8((v0 + 16));
  v1(v9, v18, v5);
  sub_1000089F8(v19, v20, &qword_1011A4CF0);
  v10 = sub_100871834(v20);
  v28[3] = &type metadata for Player.CommandIssuerIdentity;
  v28[4] = &protocol witness table for Player.CommandIssuerIdentity;
  v28[0] = 0x4955636973754DLL;
  v28[1] = 0xE700000000000000;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v6, v0 + 16, 3, 0, v10, v11 & 1, 0, 1, v21, 0, v28);
  *(v21 + *(v23 + 36)) = v22 & 1;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v24, 1, 1, v12);
  sub_1001DFCE4(v21, v25);
  type metadata accessor for MainActor();
  v13 = static MainActor.shared.getter();
  v14 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = &protocol witness table for MainActor;
  sub_1001DFD58(v25, v15 + v14);
  sub_1001F4F78(0, 0, v24, &unk_100EE5908, v15);

  sub_10087595C(v21, type metadata accessor for PlaybackIntentDescriptor);
  (*(v2 + 8))(v3, v27);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100873330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  sub_10010FC20(&unk_101181520);
  v6[13] = swift_task_alloc();
  sub_10010FC20(&qword_1011A4CF0);
  v6[14] = swift_task_alloc();
  v6[15] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v6[16] = swift_task_alloc();
  v8 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v6[17] = v8;
  v6[18] = *(v8 + 64);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  sub_10010FC20(&unk_101189DA0);
  v6[21] = swift_task_alloc();
  v6[22] = *(a5 - 8);
  v6[23] = swift_task_alloc();
  v9 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v6[24] = v9;
  v6[25] = *(v9 - 8);
  v6[26] = swift_task_alloc();

  return _swift_task_switch(sub_100873590, 0, 0);
}

uint64_t sub_100873590()
{
  v30 = v0;
  v1 = v0[21];
  v2 = v0[7];
  (*(v0[22] + 16))(v0[23], v0[9], v0[11]);
  v3 = type metadata accessor for GenericMusicItem();
  v4 = *(v3 - 8);
  v28 = *(v4 + 16);
  v28(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  MusicPlaybackIntentDescriptor.init<A>(items:startingAt:)();
  v5 = v0[25];
  v6 = v0[26];
  v7 = v0[24];
  v27 = v5;
  v8 = v0[16];
  v25 = v0[19];
  v26 = v0[17];
  v22 = v0[14];
  v23 = v0[20];
  v24 = v0[13];
  v9 = v0[10];
  v20 = v0[7];
  v21 = v0[8];
  v10 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
  sub_10086FBCC(v9);

  (*(v5 + 16))(v8, v6, v7);
  swift_storeEnumTagMultiPayload();
  v0[5] = v3;
  v0[6] = sub_100568AEC();
  v11 = sub_10001C8B8(v0 + 2);
  v28(v11, v20, v3);
  sub_1000089F8(v21, v22, &qword_1011A4CF0);
  v12 = sub_100871834(v22);
  v29[3] = &type metadata for Player.CommandIssuerIdentity;
  v29[4] = &protocol witness table for Player.CommandIssuerIdentity;
  v29[0] = 0x4955636973754DLL;
  v29[1] = 0xE700000000000000;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v8, (v0 + 2), 3, 0, v12, v13 & 1, 0, 1, v23, 0, v29);
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v24, 1, 1, v14);
  sub_1001DFCE4(v23, v25);
  type metadata accessor for MainActor();
  v15 = static MainActor.shared.getter();
  v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = &protocol witness table for MainActor;
  sub_1001DFD58(v25, v17 + v16);
  sub_1001F4F78(0, 0, v24, &unk_100EE5900, v17);

  sub_10087595C(v23, type metadata accessor for PlaybackIntentDescriptor);
  (*(v27 + 8))(v6, v7);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1008739C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_10010FC20(&unk_101181520);
  v5[7] = swift_task_alloc();
  sub_10010FC20(&qword_1011A4CF0);
  v5[8] = swift_task_alloc();
  v5[9] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v5[10] = swift_task_alloc();
  v7 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v5[11] = v7;
  v5[12] = *(v7 + 64);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  sub_10010FC20(&unk_101189DA0);
  v5[15] = swift_task_alloc();
  v5[16] = *(a4 - 8);
  v5[17] = swift_task_alloc();
  v8 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();

  return _swift_task_switch(sub_100873C28, 0, 0);
}

uint64_t sub_100873C28()
{
  v26 = v0;
  v1 = v0[15];
  (*(v0[16] + 16))(v0[17], v0[2], v0[5]);
  v2 = type metadata accessor for GenericMusicItem();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  MusicPlaybackIntentDescriptor.init<A>(items:startingAt:)();
  v4 = v0[18];
  v3 = v0[19];
  v22 = v0[20];
  v5 = v0[10];
  v20 = v0[13];
  v21 = v0[11];
  v6 = v0[8];
  v18 = v0[14];
  v19 = v0[7];
  v7 = v0[3];
  v8 = v0[4];
  v9 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
  sub_10086FBCC(v8);

  (*(v3 + 16))(v5, v22, v4);
  swift_storeEnumTagMultiPayload();
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  sub_1000089F8(v7, v6, &qword_1011A4CF0);
  v10 = sub_100871834(v6);
  v25[3] = &type metadata for Player.CommandIssuerIdentity;
  v25[4] = &protocol witness table for Player.CommandIssuerIdentity;
  v25[0] = 0x4955636973754DLL;
  v25[1] = 0xE700000000000000;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v5, v23, 3, 0, v10, v11 & 1, 0, 1, v18, 0, v25);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v19, 1, 1, v12);
  sub_1001DFCE4(v18, v20);
  type metadata accessor for MainActor();
  v13 = static MainActor.shared.getter();
  v14 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = &protocol witness table for MainActor;
  sub_1001DFD58(v20, v15 + v14);
  sub_1001F4F78(0, 0, v19, &unk_100EE58F8, v15);

  sub_10087595C(v18, type metadata accessor for PlaybackIntentDescriptor);
  (*(v3 + 8))(v22, v4);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100874000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  sub_10010FC20(&unk_101181520);
  v4[16] = swift_task_alloc();
  v4[17] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v4[18] = swift_task_alloc();
  v5 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v4[19] = v5;
  v4[20] = *(v5 + 64);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v6 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_100874198, 0, 0);
}

uint64_t sub_100874198()
{
  v29 = v0;
  v1 = *(v0 + 96);
  v27 = *(v0 + 112);
  *(v0 + 40) = v27;
  v2 = sub_10001C8B8((v0 + 16));
  v3 = *(*(v27 - 8) + 16);
  v3(v2, v1);
  MusicPlaybackIntentDescriptor.init(stationSeed:)();
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  *&v27 = v4;
  v6 = *(v0 + 184);
  v26 = v5;
  v7 = *(v0 + 144);
  v24 = *(v0 + 168);
  v25 = *(v0 + 152);
  v22 = *(v0 + 176);
  v23 = *(v0 + 128);
  v8 = *(v0 + 112);
  v20 = *(v0 + 120);
  v9 = *(v0 + 104);
  v21 = *(v0 + 96);
  v10 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
  sub_10086FBCC(v9);

  v11 = v5;
  v12 = v6;
  (*(v4 + 16))(v7, v11, v6);
  swift_storeEnumTagMultiPayload();
  *(v0 + 80) = v8;
  *(v0 + 88) = *(v20 + 8);
  v13 = sub_10001C8B8((v0 + 56));
  (v3)(v13, v21, v8);
  v28[3] = &type metadata for Player.CommandIssuerIdentity;
  v28[4] = &protocol witness table for Player.CommandIssuerIdentity;
  v28[0] = 0x4955636973754DLL;
  v28[1] = 0xE700000000000000;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v7, v0 + 56, 3, 0, 0, 1, 0, 1, v22, 0, v28);
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v23, 1, 1, v14);
  sub_1001DFCE4(v22, v24);
  type metadata accessor for MainActor();
  v15 = static MainActor.shared.getter();
  v16 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = &protocol witness table for MainActor;
  sub_1001DFD58(v24, v17 + v16);
  sub_1001F4F78(0, 0, v23, &unk_100EE58E8, v17);

  sub_10087595C(v22, type metadata accessor for PlaybackIntentDescriptor);
  (*(v27 + 8))(v26, v12);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100874504(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_10010FC20(&unk_101181520);
  v2[4] = swift_task_alloc();
  v2[5] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v2[6] = swift_task_alloc();
  v3 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v2[7] = v3;
  v2[8] = *(v3 + 64);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  sub_10010FC20(&unk_1011846B0);
  v2[11] = swift_task_alloc();
  _s11MusicVideosV5ScopeOMa(0);
  v2[12] = swift_task_alloc();
  _s11MusicVideosVMa(0);
  v2[13] = swift_task_alloc();
  sub_10010FC20(&unk_101184730);
  v2[14] = swift_task_alloc();
  v2[15] = _s6AlbumsV5ScopeOMa(0);
  v2[16] = swift_task_alloc();
  _s6AlbumsVMa(0);
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  sub_10010FC20(&unk_10118CDB0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_100874830, 0, 0);
}

uint64_t sub_100874830()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[18];
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[14];
  v8 = v0[2];
  v9 = *(v4 + 56);
  v0[27] = v9;
  v0[28] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v1, 1, 1, v3);
  v10 = type metadata accessor for Artist();
  v0[29] = v10;
  v11 = *(v10 - 8);
  v0[30] = v11;
  v12 = *(v11 + 16);
  v0[31] = v12;
  v0[32] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v6, v8, v10);
  swift_storeEnumTagMultiPayload();
  sub_1002884E4(v6, 0, v5);
  v13 = type metadata accessor for Album();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  sub_100289108(v7, v2);
  sub_1000095E8(v7, &unk_101184730);
  sub_10087595C(v5, _s6AlbumsVMa);
  v14 = *(v4 + 48);
  v0[33] = v14;
  v0[34] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v15 = v14(v2, 1, v3);
  v16 = v0[25];
  if (v15 == 1)
  {
    sub_1000095E8(v0[25], &unk_10118CDB0);
    sub_100875908();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    sub_1000095E8(v0[26], &unk_10118CDB0);

    v18 = v0[1];

    return v18();
  }

  else
  {
    v20 = v0[22];
    v21 = v0[18];
    v22 = v0[19];
    v23 = *(v22 + 32);
    v0[35] = v23;
    v0[36] = (v22 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v23(v20, v16, v21);
    v24 = swift_task_alloc();
    v0[37] = v24;
    *v24 = v0;
    v24[1] = sub_100874BDC;

    return sub_10086EFFC();
  }
}

uint64_t sub_100874BDC(char a1)
{
  v4 = *v2;
  *(*v2 + 304) = v1;

  if (v1)
  {
    v5 = sub_100875424;
  }

  else
  {
    *(v4 + 312) = a1 & 1;
    v5 = sub_100874D08;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100874D08()
{
  v52 = v0;
  if (*(v0 + 312) == 1)
  {
    v1 = *(v0 + 216);
    v2 = *(v0 + 208);
    v3 = *(v0 + 176);
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    sub_1000095E8(v2, &unk_10118CDB0);
    (*(v5 + 16))(v2, v3, v4);
    v1(v2, 0, 1, v4);
  }

  else
  {
    v13 = *(v0 + 264);
    v14 = *(v0 + 232);
    v15 = *(v0 + 240);
    v16 = *(v0 + 192);
    v17 = *(v0 + 144);
    v19 = *(v0 + 96);
    v18 = *(v0 + 104);
    v20 = *(v0 + 88);
    (*(v0 + 248))(v19, *(v0 + 16), v14);
    (*(v15 + 56))(v19, 0, 1, v14);
    sub_1006FC4AC(v19, 0, v18);
    v21 = type metadata accessor for MusicVideo();
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
    sub_1006FD384(v20, v16);
    sub_1000095E8(v20, &unk_1011846B0);
    sub_10087595C(v18, _s11MusicVideosVMa);
    if (v13(v16, 1, v17) == 1)
    {
      v9 = *(v0 + 176);
      v11 = *(v0 + 144);
      v10 = *(v0 + 152);
      sub_1000095E8(*(v0 + 192), &unk_10118CDB0);
      sub_100875908();
      swift_allocError();
      *v22 = 0;
      goto LABEL_7;
    }

    (*(v0 + 280))(*(v0 + 168), *(v0 + 192), *(v0 + 144));
    v38 = Artist.trackCount.getter();
    if ((v39 & 1) != 0 || v38 < 1)
    {
      (*(*(v0 + 152) + 8))(*(v0 + 168), *(v0 + 144));
    }

    else
    {
      v40 = *(v0 + 280);
      v41 = *(v0 + 216);
      v42 = *(v0 + 208);
      v43 = *(v0 + 168);
      v44 = *(v0 + 144);
      sub_1000095E8(v42, &unk_10118CDB0);
      v40(v42, v43, v44);
      v41(v42, 0, 1, v44);
    }
  }

  v6 = *(v0 + 264);
  v7 = *(v0 + 184);
  v8 = *(v0 + 144);
  sub_1000089F8(*(v0 + 208), v7, &unk_10118CDB0);
  if (v6(v7, 1, v8) == 1)
  {
    v9 = *(v0 + 176);
    v11 = *(v0 + 144);
    v10 = *(v0 + 152);
    sub_1000095E8(*(v0 + 184), &unk_10118CDB0);
    sub_100875908();
    swift_allocError();
    *v12 = 1;
LABEL_7:
    swift_willThrow();
    (*(v10 + 8))(v9, v11);
    sub_1000095E8(*(v0 + 208), &unk_10118CDB0);

    v23 = *(v0 + 8);
    goto LABEL_9;
  }

  v47 = *(v0 + 208);
  v46 = *(v0 + 176);
  v24 = *(v0 + 160);
  v26 = *(v0 + 144);
  v25 = *(v0 + 152);
  v27 = *(v0 + 80);
  v48 = *(v0 + 72);
  v45 = *(v0 + 56);
  v28 = *(v0 + 48);
  v30 = *(v0 + 24);
  v29 = *(v0 + 32);
  (*(v0 + 280))(v24);
  v31 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
  sub_10086FBCC(v30);

  (*(v25 + 16))(v28, v24, v26);
  swift_storeEnumTagMultiPayload();
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  v51[3] = &type metadata for Player.CommandIssuerIdentity;
  v51[4] = &protocol witness table for Player.CommandIssuerIdentity;
  v51[0] = 0x4955636973754DLL;
  v51[1] = 0xE700000000000000;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v28, v49, 3, 0, 0, 1, 0, 1, v27, 0, v51);
  v32 = type metadata accessor for TaskPriority();
  (*(*(v32 - 8) + 56))(v29, 1, 1, v32);
  sub_1001DFCE4(v27, v48);
  type metadata accessor for MainActor();
  v33 = static MainActor.shared.getter();
  v34 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = &protocol witness table for MainActor;
  sub_1001DFD58(v48, v35 + v34);
  sub_1001F4F78(0, 0, v29, &unk_100ECA700, v35);

  sub_10087595C(v27, type metadata accessor for PlaybackIntentDescriptor);
  v36 = *(v25 + 8);
  v36(v24, v26);
  v36(v46, v26);
  sub_1000095E8(v47, &unk_10118CDB0);

  v23 = *(v0 + 8);
LABEL_9:

  return v23();
}

uint64_t sub_100875424()
{
  (*(v0[19] + 8))(v0[22], v0[18]);
  sub_1000095E8(v0[26], &unk_10118CDB0);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100875598(uint64_t a1)
{
  v2 = type metadata accessor for QueueInsertionPosition();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = 0;
  if (v7 == enum case for QueueInsertionPosition.afterCurrentEntry(_:))
  {
    goto LABEL_8;
  }

  if (v7 == enum case for QueueInsertionPosition.endOfQueue(_:))
  {
    v8 = 2;
LABEL_8:
    (*(v3 + 8))(a1, v2);
    return v8;
  }

  if (v7 == enum case for QueueInsertionPosition.afterLastContainer(_:))
  {
    v8 = 3;
    goto LABEL_8;
  }

  if (v7 == enum case for QueueInsertionPosition.endOfTracklist(_:))
  {
    v8 = 1;
    goto LABEL_8;
  }

  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v10._object = 0x8000000100E58CB0;
  v10._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v10);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100875798(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10087054C(a1, v4, v5, v6);
}

uint64_t sub_10087584C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_10087054C(a1, v4, v5, v6);
}

unint64_t sub_100875908()
{
  result = qword_1011A4CE8;
  if (!qword_1011A4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A4CE8);
  }

  return result;
}

uint64_t sub_10087595C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1008759D0()
{
  result = qword_1011A4CF8;
  if (!qword_1011A4CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A4CF8);
  }

  return result;
}

uint64_t sub_100875A4C()
{
  result = sub_100875A6C();
  qword_1012197E8 = result;
  return result;
}

uint64_t sub_100875A6C()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v57 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10010FC20(&qword_1011A4F88);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v58 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v53 - v7;
  __chkstk_darwin(v9);
  v11 = &v53 - v10;
  __chkstk_darwin(v12);
  v60 = &v53 - v13;
  __chkstk_darwin(v14);
  v16 = &v53 - v15;
  v59 = sub_10001E0D8(_swiftEmptyArrayStorage);
  sub_10010FC20(&unk_1011A4F90);
  v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v61 = *(v4 + 72);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100EBE260;
  v63 = v17;
  v56 = v18;
  v19 = v18 + v17;
  v20 = objc_opt_self();
  v21 = [v20 mainBundle];
  v22 = [v21 resourceURL];

  if (v22)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = *(v1 + 56);
    v24 = v16;
    v25 = 0;
  }

  else
  {
    v23 = *(v1 + 56);
    v24 = v16;
    v25 = 1;
  }

  v62 = v23;
  v23(v24, v25, 1, v0);
  sub_100027A08(v16, v19);
  type metadata accessor for BundleFinder();
  v26 = [v20 bundleForClass:swift_getObjCClassFromMetadata()];
  v27 = [v26 resourceURL];

  if (v27)
  {
    v28 = v60;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = 0;
  }

  else
  {
    v29 = 1;
    v28 = v60;
  }

  v30 = (v1 + 56);
  v31 = v62;
  v62(v28, v29, 1, v0);
  v54 = v1;
  v32 = v61;
  sub_100027A08(v28, v19 + v61);
  v33 = [v20 mainBundle];
  v34 = [v33 bundleURL];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v30;
  v31(v19 + 2 * v32, 0, 1, v0);
  v64 = v59;
  sub_10001EBDC(v56);
  v35 = v64;
  v36 = v64[2];
  v37 = v58;
  if (v36)
  {
    v38 = 0;
    v39 = v63 + v64;
    v63 = (v54 + 6);
    v59 = (v54 + 1);
    v54 += 4;
    v55 = "00292A8024B0AC2712BundleFinder";
    v56 = v36;
    while (v38 < v35[2])
    {
      sub_1008764AC(v39, v8);
      v40 = *v63;
      if ((*v63)(v8, 1, v0) == 1)
      {
        sub_100028AA0(v8);
        v41 = 1;
      }

      else
      {
        URL.appendingPathComponent(_:)();
        (*v59)(v8, v0);
        v41 = 0;
      }

      v62(v11, v41, 1, v0);
      sub_1008764AC(v11, v37);
      if (v40(v37, 1, v0) == 1)
      {
        sub_100028AA0(v11);
      }

      else
      {
        v42 = v35;
        v43 = v11;
        v44 = v8;
        v45 = v57;
        (*v54)(v57, v37, v0);
        v46 = objc_allocWithZone(NSBundle);
        URL._bridgeToObjectiveC()(v47);
        v49 = v48;
        v50 = [v46 initWithURL:v48];

        v37 = v58;
        v51 = v45;
        v8 = v44;
        v11 = v43;
        v35 = v42;
        v36 = v56;
        (*v59)(v51, v0);
        sub_100028AA0(v11);
        if (v50)
        {

          return v50;
        }
      }

      ++v38;
      v39 += v61;
      if (v36 == v38)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1008760B4()
{
  type metadata accessor for TimelinesDriver();
  swift_allocObject();
  return sub_10087DAC8();
}

void *variable initialization expression of TimelinesDriver.liveBlocking@<X0>(void *a1@<X8>)
{
  __asm { FMOV            V1.4S, #1.0 }

  v8[2] = 0u;
  v8[3] = _Q1;
  v8[4] = xmmword_100EE5A20;
  v8[5] = xmmword_100EE5A30;
  v8[6] = xmmword_100EE5A40;
  v8[7] = xmmword_100EE5A50;
  v8[8] = xmmword_100EE5A60;
  v8[9] = xmmword_100EE5A70;
  v8[10] = xmmword_100EE5A80;
  v8[11] = xmmword_100EE5A90;
  v8[12] = xmmword_100EE5AA0;
  v8[13] = xmmword_100EE5AB0;
  v8[14] = xmmword_100EE5AC0;
  v8[15] = xmmword_100EE5AD0;
  v8[16] = xmmword_100EE5AE0;
  v8[17] = xmmword_100EE5AF0;
  v8[18] = xmmword_100EE5B00;
  v8[19] = xmmword_100EE5B10;
  *&v8[20] = 0x3F0000003F000000;
  *(&v8[20] + 1) = 1067450368;
  v8[21] = xmmword_100EE5B20;
  v8[22] = xmmword_100EE5B30;
  v8[23] = xmmword_100EE5B40;
  v8[24] = xmmword_100EE5B50;
  v8[25] = xmmword_100EE5B60;
  v8[26] = 0x400000003EA66666uLL;
  v8[27] = _Q1;
  v8[28] = xmmword_100EE5B70;
  v8[29] = 0x400000003F000000uLL;
  v8[30] = xmmword_100EE5B80;
  v8[31] = xmmword_100EE5B90;
  v8[32] = xmmword_100EE5BA0;
  v8[33] = xmmword_100EE5BB0;
  v8[34] = xmmword_100EE5BC0;
  v8[35] = xmmword_100EE5BD0;
  v8[36] = xmmword_100EE5BE0;
  v8[37] = xmmword_100EE5BF0;
  v8[38] = xmmword_100EE5C00;
  v8[39] = xmmword_100EE5C10;
  v8[40] = xmmword_100EE5C20;
  memset(&v8[41], 0, 32);
  sub_1008762C8(v8);
  return memcpy(a1, v8, 0x2B1uLL);
}

double variable initialization expression of Layer.scale()
{
  __asm { FMOV            V0.2S, #1.0 }

  return result;
}

uint64_t getEnumTagSinglePayload for Lyrics.AudioAttribute(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Lyrics.AudioAttribute(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_100876398(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 688))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008763B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 680) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 688) = v3;
  return result;
}

uint64_t sub_1008764AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A4F88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_100876524@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  __asm { FMOV            V1.4S, #1.0 }

  *(a1 + 32) = 0u;
  *(a1 + 48) = _Q1;
  *(a1 + 64) = xmmword_100EE5A20;
  *(a1 + 80) = xmmword_100EE5A30;
  *(a1 + 96) = xmmword_100EE5A40;
  *(a1 + 112) = xmmword_100EE5A50;
  *(a1 + 128) = xmmword_100EE5A60;
  *(a1 + 144) = xmmword_100EE5A70;
  *(a1 + 160) = xmmword_100EE5A80;
  *(a1 + 176) = xmmword_100EE5A90;
  *(a1 + 192) = xmmword_100EE5AA0;
  *(a1 + 208) = xmmword_100EE5AB0;
  *(a1 + 224) = xmmword_100EE5AC0;
  *(a1 + 240) = xmmword_100EE5AD0;
  *(a1 + 256) = xmmword_100EE5AE0;
  *(a1 + 272) = xmmword_100EE5AF0;
  *(a1 + 288) = xmmword_100EE5B00;
  *(a1 + 304) = xmmword_100EE5B10;
  *(a1 + 320) = 0x3F0000003F000000;
  *(a1 + 328) = 1067450368;
  *(a1 + 336) = xmmword_100EE5B20;
  *(a1 + 352) = xmmword_100EE5B30;
  *(a1 + 368) = xmmword_100EE5B40;
  *(a1 + 384) = xmmword_100EE5B50;
  *(a1 + 400) = xmmword_100EE5B60;
  *(a1 + 416) = 0x400000003EA66666;
  *(a1 + 424) = 0;
  *(a1 + 432) = _Q1;
  *(a1 + 448) = xmmword_100EE5B70;
  *(a1 + 464) = 0x400000003F000000;
  *(a1 + 472) = 0;
  *(a1 + 480) = xmmword_100EE5B80;
  *(a1 + 496) = xmmword_100EE5B90;
  *(a1 + 512) = xmmword_100EE5BA0;
  *(a1 + 528) = xmmword_100EE5BB0;
  *(a1 + 544) = xmmword_100EE5BC0;
  *(a1 + 560) = xmmword_100EE5BD0;
  *(a1 + 576) = xmmword_100EE5BE0;
  *(a1 + 592) = xmmword_100EE5BF0;
  *(a1 + 608) = xmmword_100EE5C00;
  *(a1 + 624) = xmmword_100EE5C10;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 640) = xmmword_100EE5C20;
  return result;
}

BOOL sub_1008766C0(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return _sSo18FullSphereUniformsa7PanacheE2eeoiySbAB_ABtFZ_0(v4, __dst);
}

uint64_t sub_100876798(char a1)
{
  result = 0x756F72676B636162;
  switch(a1)
  {
    case 1:
      v3 = 0x756C6F736572;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
    case 2:
      return 0x726F6C6F63;
    case 3:
      return 0x30726F6C6F63;
    case 4:
      return 0x31726F6C6F63;
    case 5:
      return 0x32726F6C6F63;
    case 6:
      return 0x33726F6C6F63;
    case 7:
      return 0x34726F6C6F63;
    case 8:
      return 0x6E69617267;
    case 9:
      return 0x65646146706F74;
    case 10:
      return 0x4F65646146706F74;
    case 11:
      return 0x5065646146706F74;
    case 12:
      v3 = 0x617275746173;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
    case 13:
      return 0x74736172746E6F63;
    case 14:
      return 0x657265687073;
    case 15:
      return 0x656C616373;
    case 16:
      return 0x74657366666FLL;
    case 17:
      return 0x7373656E74666F73;
    case 18:
    case 19:
    case 20:
      return 0x746867694C6D6972;
    case 21:
      return 0xD000000000000012;
    case 22:
      return 0xD000000000000010;
    case 23:
      return 0xD000000000000013;
    case 24:
      return 0xD000000000000011;
    case 25:
      return 0x736944726F6C6F63;
    case 26:
    case 30:
    case 34:
    case 38:
    case 42:
    case 46:
      return 0x676953726F6C6F63;
    case 27:
    case 31:
    case 35:
    case 39:
    case 43:
    case 47:
      return 0x727053726F6C6F63;
    case 28:
    case 32:
    case 36:
    case 40:
    case 44:
    case 48:
      return 0x776F50726F6C6F63;
    case 29:
      return 0x736944726F6C6F63;
    case 33:
      return 0x736944726F6C6F63;
    case 37:
      return 0x736944726F6C6F63;
    case 41:
      return 0x736944726F6C6F63;
    case 45:
      return 0x736944726F6C6F63;
    case 49:
      return 0x647574696C706D61;
    case 50:
      return 0x636E657571657266;
    case 51:
      v4 = 1702257015;
      goto LABEL_78;
    case 52:
      return 0x6465657073;
    case 53:
      return 0x646165727073;
    case 54:
      return 0x7265776F70;
    case 55:
      return 0x30726F6C6F636762;
    case 56:
      return 0x31726F6C6F636762;
    case 57:
      return 0x32726F6C6F636762;
    case 58:
      return 0x33726F6C6F636762;
    case 59:
      return 0x74696C706D616762;
    case 60:
      return 0x6575716572666762;
    case 61:
      return 0x74657366666F6762;
    case 62:
      return 0x64656570736762;
    case 63:
      return 0x696C686769686762;
    case 64:
      return 0xD000000000000010;
    case 65:
      return 0x656D656E69666572;
    case 66:
      return 0x73736572676F7270;
    case 67:
      return 0x6769537472617473;
    case 68:
      return 0x776F507472617473;
    case 69:
      return 0x616D676953646E65;
    case 70:
      return 0x7265776F50646E65;
    case 71:
      v5 = 1701077350;
      goto LABEL_14;
    case 72:
      return 0x30657474656C6170;
    case 73:
      return 0x31657474656C6170;
    case 74:
      return 0x32657474656C6170;
    case 75:
      return 0x33657474656C6170;
    case 76:
      return 0x34657474656C6170;
    case 77:
      return 0x35657474656C6170;
    case 80:
      return 0xD000000000000010;
    case 81:
      return 0x656870536F726568;
    case 82:
      return 0x6C6163536F726568;
    case 83:
      v4 = 1869768040;
LABEL_78:
      result = v4 | 0x7366664F00000000;
      break;
    case 84:
      result = 0x4C6D69526F726568;
      break;
    case 85:
      result = 0x506D69526F726568;
      break;
    case 86:
      result = 0x6F6C61486F726568;
      break;
    case 87:
      result = 0x6D6769536F726568;
      break;
    case 88:
      v5 = 1869768040;
LABEL_14:
      result = v5 | 0x65776F5000000000;
      break;
    case 89:
      result = 0x766157646E656C62;
      break;
    case 90:
      result = 0x62724F646E656C62;
      break;
    case 91:
      result = 0x726548646E656C62;
      break;
    case 92:
      result = 0x636142646E656C62;
      break;
    case 93:
      result = 0xD000000000000014;
      break;
    case 94:
      result = 0x666552646E656C62;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100877084(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100876798(*a1);
  v5 = v4;
  if (v3 == sub_100876798(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10087710C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100876798(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100877170()
{
  sub_100876798(*v0);
  String.hash(into:)();
}

Swift::Int sub_1008771C4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100876798(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100877224@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100878FEC();
  *a1 = result;
  return result;
}

uint64_t sub_100877254@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100876798(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100877288@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100878FEC();
  *a1 = result;
  return result;
}

uint64_t sub_1008772BC(uint64_t a1)
{
  v2 = sub_100878F98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008772F8(uint64_t a1)
{
  v2 = sub_100878F98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FullSphereUniforms.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10010FC20(&qword_1011A50C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - v7;
  sub_10000954C(a1, a1[3]);
  sub_100878F98();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v3[1];
  v13 = 0;
  v9 = sub_10010FC20(&qword_1011A50D0);
  v10 = sub_10087C6A8(&qword_1011A50D8);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    v13 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[3];
    v13 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[4];
    v13 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[5];
    v13 = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[6];
    v13 = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[7];
    v13 = 6;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[8];
    v13 = 7;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[1] = v9;
    v12[2] = v10;
    LOBYTE(v14) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 15;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 16;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 17;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 18;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 19;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 20;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 21;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 22;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 23;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 24;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 25;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 26;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 27;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 28;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 29;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 30;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 31;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 32;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 33;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 34;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 35;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 36;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 37;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 38;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 39;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 40;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 41;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 42;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 43;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 44;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 45;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 46;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 47;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 48;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 49;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 50;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 51;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 52;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 53;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 54;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[21];
    v13 = 55;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[22];
    v13 = 56;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[23];
    v13 = 57;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[24];
    v13 = 58;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 59;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 60;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 61;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 62;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 63;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 64;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[27];
    v13 = 65;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 66;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 67;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 68;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 69;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 70;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 71;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[30];
    v13 = 72;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[31];
    v13 = 73;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[32];
    v13 = 74;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[33];
    v13 = 75;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[34];
    v13 = 76;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[35];
    v13 = 77;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[36];
    v13 = 78;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[37];
    v13 = 79;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[38];
    v13 = 80;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 81;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 82;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 83;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 84;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 85;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 86;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 87;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 88;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 89;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 90;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 91;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 92;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 93;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 94;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void *FullSphereUniforms.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100879040(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x2B0uLL);
  }

  return result;
}

BOOL _sSo18FullSphereUniformsa7PanacheE2eeoiySbAB_ABtFZ_0(float32x4_t *a1, float32x4_t *a2)
{
  v2 = vmovn_s32(vceqq_f32(a1[1], a2[1]));
  return (v2.i16[0] & v2.i16[1] & 1) != 0
      && (v2.i16[2] & v2.i16[3] & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[2], a2[2]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[3], a2[3]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[4], a2[4]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[5], a2[5]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[6], a2[6]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[7], a2[7]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[8], a2[8]))) & 1) != 0
      && a1[9].f32[0] == a2[9].f32[0]
      && a1[9].f32[1] == a2[9].f32[1]
      && a1[9].f32[2] == a2[9].f32[2]
      && a1[9].f32[3] == a2[9].f32[3]
      && a1[10].f32[0] == a2[10].f32[0]
      && a1[10].f32[1] == a2[10].f32[1]
      && a1[10].f32[2] == a2[10].f32[2]
      && a1[10].f32[3] == a2[10].f32[3]
      && a1[11].f32[0] == a2[11].f32[0]
      && a1[11].f32[1] == a2[11].f32[1]
      && a1[11].f32[2] == a2[11].f32[2]
      && a1[11].f32[3] == a2[11].f32[3]
      && a1[12].f32[0] == a2[12].f32[0]
      && a1[12].f32[1] == a2[12].f32[1]
      && a1[12].f32[2] == a2[12].f32[2]
      && a1[12].f32[3] == a2[12].f32[3]
      && a1[13].f32[0] == a2[13].f32[0]
      && a1[13].f32[1] == a2[13].f32[1]
      && a1[13].f32[2] == a2[13].f32[2]
      && a1[13].f32[3] == a2[13].f32[3]
      && a1[14].f32[0] == a2[14].f32[0]
      && a1[14].f32[1] == a2[14].f32[1]
      && a1[14].f32[2] == a2[14].f32[2]
      && a1[14].f32[3] == a2[14].f32[3]
      && a1[15].f32[0] == a2[15].f32[0]
      && a1[15].f32[1] == a2[15].f32[1]
      && a1[15].f32[2] == a2[15].f32[2]
      && a1[15].f32[3] == a2[15].f32[3]
      && a1[16].f32[0] == a2[16].f32[0]
      && a1[16].f32[1] == a2[16].f32[1]
      && a1[16].f32[2] == a2[16].f32[2]
      && a1[16].f32[3] == a2[16].f32[3]
      && a1[17].f32[0] == a2[17].f32[0]
      && a1[17].f32[1] == a2[17].f32[1]
      && a1[17].f32[2] == a2[17].f32[2]
      && a1[17].f32[3] == a2[17].f32[3]
      && a1[18].f32[0] == a2[18].f32[0]
      && a1[18].f32[1] == a2[18].f32[1]
      && a1[18].f32[2] == a2[18].f32[2]
      && a1[18].f32[3] == a2[18].f32[3]
      && a1[19].f32[0] == a2[19].f32[0]
      && a1[19].f32[1] == a2[19].f32[1]
      && a1[19].f32[2] == a2[19].f32[2]
      && a1[19].f32[3] == a2[19].f32[3]
      && a1[20].f32[0] == a2[20].f32[0]
      && a1[20].f32[1] == a2[20].f32[1]
      && a1[20].f32[2] == a2[20].f32[2]
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[21], a2[21]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[22], a2[22]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[23], a2[23]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[24], a2[24]))) & 1) != 0
      && a1[25].f32[0] == a2[25].f32[0]
      && a1[25].f32[1] == a2[25].f32[1]
      && a1[25].f32[2] == a2[25].f32[2]
      && a1[25].f32[3] == a2[25].f32[3]
      && a1[26].f32[0] == a2[26].f32[0]
      && a1[26].f32[1] == a2[26].f32[1]
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[27], a2[27]))) & 1) != 0
      && a1[28].f32[0] == a2[28].f32[0]
      && a1[28].f32[1] == a2[28].f32[1]
      && a1[28].f32[2] == a2[28].f32[2]
      && a1[28].f32[3] == a2[28].f32[3]
      && a1[29].f32[0] == a2[29].f32[0]
      && a1[29].f32[1] == a2[29].f32[1]
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[30], a2[30]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[31], a2[31]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[32], a2[32]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[33], a2[33]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[34], a2[34]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[35], a2[35]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[36], a2[36]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[37], a2[37]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[38], a2[38]))) & 1) != 0
      && a1[39].f32[0] == a2[39].f32[0]
      && a1[39].f32[1] == a2[39].f32[1]
      && a1[39].f32[2] == a2[39].f32[2]
      && a1[39].f32[3] == a2[39].f32[3]
      && a1[40].f32[0] == a2[40].f32[0]
      && a1[40].f32[1] == a2[40].f32[1]
      && a1[40].f32[2] == a2[40].f32[2]
      && a1[40].f32[3] == a2[40].f32[3]
      && a1[41].f32[0] == a2[41].f32[0]
      && a1[41].f32[1] == a2[41].f32[1]
      && a1[41].f32[2] == a2[41].f32[2]
      && a1[41].f32[3] == a2[41].f32[3]
      && a1[42].f32[0] == a2[42].f32[0]
      && a1[42].f32[1] == a2[42].f32[1];
}

float32x2_t sub_100878BD8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(a1 + 332);
  v4 = *(a1 + 424);
  v5 = *(a1 + 472);
  v6 = *(a1 + 680);
  v7 = vdupq_lane_s32(*&a3, 0).u64[0];
  v8 = vmulq_n_f32(*(a1 + 16), *&a3);
  v9 = vmulq_n_f32(*(a1 + 32), *&a3);
  v10 = vmulq_n_f32(*(a1 + 48), *&a3);
  v11 = vmulq_n_f32(*(a1 + 64), *&a3);
  v12 = vmulq_n_f32(*(a1 + 80), *&a3);
  v13 = vmulq_n_f32(*(a1 + 96), *&a3);
  v14 = vmulq_n_f32(*(a1 + 112), *&a3);
  v15 = *(a1 + 144);
  v16 = vmulq_n_f32(*(a1 + 128), *&a3);
  v17 = *(a1 + 328) * *&a3;
  v18 = vmulq_n_f32(*(a1 + 336), *&a3);
  v19 = vmulq_n_f32(*(a1 + 352), *&a3);
  v20 = vmulq_n_f32(*(a1 + 368), *&a3);
  v21 = vmulq_n_f32(*(a1 + 384), *&a3);
  v22 = *(a1 + 448);
  v23 = vmulq_n_f32(*(a1 + 432), *&a3);
  v24 = vmulq_n_f32(*(a1 + 480), *&a3);
  v25 = vmulq_n_f32(*(a1 + 496), *&a3);
  v26 = vmulq_n_f32(*(a1 + 512), *&a3);
  v27 = vmulq_n_f32(*(a1 + 528), *&a3);
  v28 = vmulq_n_f32(*(a1 + 544), *&a3);
  v29 = vmulq_n_f32(*(a1 + 560), *&a3);
  v30 = vmulq_n_f32(*(a1 + 576), *&a3);
  v31 = vmulq_n_f32(*(a1 + 592), *&a3);
  *a2 = *a1;
  *(a2 + 16) = v8;
  v32 = *(a1 + 624);
  v33 = vmulq_n_f32(*(a1 + 608), *&a3);
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  *(a2 + 64) = v11;
  *(a2 + 80) = v12;
  *(a2 + 96) = v13;
  *(a2 + 112) = v14;
  *(a2 + 128) = v16;
  *(a2 + 144) = vmulq_n_f32(v15, *&a3);
  v34 = vmulq_n_f32(*(a1 + 176), *&a3);
  *(a2 + 160) = vmulq_n_f32(*(a1 + 160), *&a3);
  *(a2 + 176) = v34;
  v35 = vmulq_n_f32(*(a1 + 208), *&a3);
  *(a2 + 192) = vmulq_n_f32(*(a1 + 192), *&a3);
  *(a2 + 208) = v35;
  v36 = vmulq_n_f32(*(a1 + 240), *&a3);
  *(a2 + 224) = vmulq_n_f32(*(a1 + 224), *&a3);
  *(a2 + 240) = v36;
  v37 = vmulq_n_f32(*(a1 + 272), *&a3);
  *(a2 + 256) = vmulq_n_f32(*(a1 + 256), *&a3);
  *(a2 + 272) = v37;
  v38 = vmulq_n_f32(*(a1 + 304), *&a3);
  *(a2 + 288) = vmulq_n_f32(*(a1 + 288), *&a3);
  *(a2 + 304) = v38;
  *(a2 + 320) = vmul_f32(*(a1 + 320), v7);
  *(a2 + 328) = v17;
  *(a2 + 332) = v3;
  *(a2 + 336) = v18;
  *(a2 + 352) = v19;
  *(a2 + 368) = v20;
  *(a2 + 384) = v21;
  *(a2 + 400) = vmulq_n_f32(*(a1 + 400), *&a3);
  *(a2 + 416) = vmul_f32(*(a1 + 416), v7);
  *(a2 + 424) = v4;
  *(a2 + 432) = v23;
  *(a2 + 448) = vmulq_n_f32(v22, *&a3);
  *(a2 + 464) = vmul_f32(*(a1 + 464), v7);
  *(a2 + 472) = v5;
  *(a2 + 480) = v24;
  *(a2 + 496) = v25;
  *(a2 + 512) = v26;
  *(a2 + 528) = v27;
  *(a2 + 544) = v28;
  *(a2 + 560) = v29;
  *(a2 + 576) = v30;
  *(a2 + 592) = v31;
  *(a2 + 608) = v33;
  *(a2 + 624) = vmulq_n_f32(v32, *&a3);
  v39 = vmulq_n_f32(*(a1 + 640), *&a3);
  v40 = vmulq_n_f32(*(a1 + 656), *&a3);
  *(a2 + 640) = v39;
  *(a2 + 656) = v40;
  result = vmul_f32(*(a1 + 672), v7);
  *(a2 + 672) = result;
  *(a2 + 680) = v6;
  return result;
}

float32x2_t sub_100878D84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = vaddq_f32(*(a1 + 16), *(a2 + 16));
  v4 = vaddq_f32(*(a1 + 32), *(a2 + 32));
  v5 = vaddq_f32(*(a1 + 48), *(a2 + 48));
  v6 = vaddq_f32(*(a1 + 64), *(a2 + 64));
  v7 = vaddq_f32(*(a1 + 80), *(a2 + 80));
  v8 = vaddq_f32(*(a1 + 96), *(a2 + 96));
  v9 = vaddq_f32(*(a1 + 112), *(a2 + 112));
  v10 = *(a1 + 144);
  v11 = vaddq_f32(*(a1 + 128), *(a2 + 128));
  v12 = *(a1 + 328) + *(a2 + 328);
  v13 = vaddq_f32(*(a1 + 336), *(a2 + 336));
  v14 = vaddq_f32(*(a1 + 352), *(a2 + 352));
  v15 = vaddq_f32(*(a1 + 368), *(a2 + 368));
  v16 = vaddq_f32(*(a1 + 384), *(a2 + 384));
  v17 = *(a1 + 448);
  v18 = *(a2 + 448);
  v19 = vaddq_f32(*(a1 + 432), *(a2 + 432));
  v20 = vaddq_f32(*(a1 + 480), *(a2 + 480));
  v21 = vaddq_f32(*(a1 + 496), *(a2 + 496));
  v22 = vaddq_f32(*(a1 + 512), *(a2 + 512));
  v23 = vaddq_f32(*(a1 + 528), *(a2 + 528));
  v24 = vaddq_f32(*(a1 + 544), *(a2 + 544));
  v25 = vaddq_f32(*(a1 + 560), *(a2 + 560));
  v26 = vaddq_f32(*(a1 + 576), *(a2 + 576));
  v27 = vaddq_f32(*(a1 + 592), *(a2 + 592));
  v28 = *(a1 + 624);
  v29 = *(a2 + 624);
  v30 = vaddq_f32(*(a1 + 608), *(a2 + 608));
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 32) = v4;
  *(a3 + 48) = v5;
  v31 = *(a1 + 332);
  v32 = *(a1 + 424);
  v33 = *(a1 + 472);
  v34 = *(a1 + 680);
  *(a3 + 64) = v6;
  *(a3 + 80) = v7;
  *(a3 + 96) = v8;
  *(a3 + 112) = v9;
  v35 = *(a2 + 160);
  v36 = vaddq_f32(v10, *(a2 + 144));
  *(a3 + 128) = v11;
  *(a3 + 144) = v36;
  v37 = vaddq_f32(*(a1 + 160), v35);
  v38 = *(a2 + 192);
  v39 = vaddq_f32(*(a1 + 176), *(a2 + 176));
  *(a3 + 160) = v37;
  *(a3 + 176) = v39;
  v40 = vaddq_f32(*(a1 + 192), v38);
  v41 = *(a2 + 224);
  v42 = vaddq_f32(*(a1 + 208), *(a2 + 208));
  *(a3 + 192) = v40;
  *(a3 + 208) = v42;
  v43 = vaddq_f32(*(a1 + 224), v41);
  v44 = *(a2 + 256);
  v45 = vaddq_f32(*(a1 + 240), *(a2 + 240));
  *(a3 + 224) = v43;
  *(a3 + 240) = v45;
  v46 = vaddq_f32(*(a1 + 256), v44);
  v47 = *(a2 + 288);
  v48 = vaddq_f32(*(a1 + 272), *(a2 + 272));
  *(a3 + 256) = v46;
  *(a3 + 272) = v48;
  v49 = vaddq_f32(*(a1 + 304), *(a2 + 304));
  *(a3 + 288) = vaddq_f32(*(a1 + 288), v47);
  *(a3 + 304) = v49;
  *(a3 + 320) = vadd_f32(*(a1 + 320), *(a2 + 320));
  *(a3 + 328) = v12;
  *(a3 + 332) = v31;
  *(a3 + 336) = v13;
  *(a3 + 352) = v14;
  *(a3 + 368) = v15;
  *(a3 + 384) = v16;
  *(a3 + 400) = vaddq_f32(*(a1 + 400), *(a2 + 400));
  *(a3 + 416) = vadd_f32(*(a1 + 416), *(a2 + 416));
  *(a3 + 424) = v32;
  *(a3 + 432) = v19;
  *(a3 + 448) = vaddq_f32(v17, v18);
  *(a3 + 464) = vadd_f32(*(a1 + 464), *(a2 + 464));
  *(a3 + 472) = v33;
  *(a3 + 480) = v20;
  *(a3 + 496) = v21;
  *(a3 + 512) = v22;
  *(a3 + 528) = v23;
  *(a3 + 544) = v24;
  *(a3 + 560) = v25;
  *(a3 + 576) = v26;
  *(a3 + 592) = v27;
  *(a3 + 608) = v30;
  *(a3 + 624) = vaddq_f32(v28, v29);
  v50 = vaddq_f32(*(a1 + 656), *(a2 + 656));
  *(a3 + 640) = vaddq_f32(*(a1 + 640), *(a2 + 640));
  *(a3 + 656) = v50;
  result = vadd_f32(*(a1 + 672), *(a2 + 672));
  *(a3 + 672) = result;
  *(a3 + 680) = v34;
  return result;
}

unint64_t sub_100878F98()
{
  result = qword_1011A50C8;
  if (!qword_1011A50C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A50C8);
  }

  return result;
}

uint64_t sub_100878FEC()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x5F)
  {
    return 95;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_100879040@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10010FC20(&qword_1011A5100);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v101 - v7;
  sub_10000954C(a1, a1[3]);
  sub_100878F98();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  v189 = 0uLL;
  sub_10010FC20(&qword_1011A50D0);
  v191 = 0;
  sub_10087C6A8(&qword_1011A5108);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v187 = v188;
  v191 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v186 = v188;
  v191 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v185 = v188;
  v191 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v184 = v188;
  v191 = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v183 = v188;
  v191 = 5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v182 = v188;
  v191 = 6;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v181 = v188;
  v191 = 7;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v180 = v188;
  LOBYTE(v188) = 8;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = v9;
  LOBYTE(v188) = 9;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  LOBYTE(v188) = 10;
  KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  LOBYTE(v188) = 11;
  KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  LOBYTE(v188) = 12;
  KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  LOBYTE(v188) = 13;
  KeyedDecodingContainer.decode(_:forKey:)();
  v20 = v19;
  LOBYTE(v188) = 14;
  KeyedDecodingContainer.decode(_:forKey:)();
  v22 = v21;
  LOBYTE(v188) = 15;
  KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v23;
  LOBYTE(v188) = 16;
  KeyedDecodingContainer.decode(_:forKey:)();
  v190 = v25;
  LOBYTE(v188) = 17;
  KeyedDecodingContainer.decode(_:forKey:)();
  v179 = v26;
  LOBYTE(v188) = 18;
  KeyedDecodingContainer.decode(_:forKey:)();
  v178 = v27;
  LOBYTE(v188) = 19;
  KeyedDecodingContainer.decode(_:forKey:)();
  v177 = v28;
  LOBYTE(v188) = 20;
  KeyedDecodingContainer.decode(_:forKey:)();
  v176 = v29;
  LOBYTE(v188) = 21;
  KeyedDecodingContainer.decode(_:forKey:)();
  v175 = v30;
  LOBYTE(v188) = 22;
  KeyedDecodingContainer.decode(_:forKey:)();
  v174 = v31;
  LOBYTE(v188) = 23;
  KeyedDecodingContainer.decode(_:forKey:)();
  v173 = v32;
  LOBYTE(v188) = 24;
  KeyedDecodingContainer.decode(_:forKey:)();
  v172 = v33;
  LOBYTE(v188) = 25;
  KeyedDecodingContainer.decode(_:forKey:)();
  v171 = v34;
  LOBYTE(v188) = 26;
  KeyedDecodingContainer.decode(_:forKey:)();
  v170 = v35;
  LOBYTE(v188) = 27;
  KeyedDecodingContainer.decode(_:forKey:)();
  v169 = v36;
  LOBYTE(v188) = 28;
  KeyedDecodingContainer.decode(_:forKey:)();
  v168 = v37;
  LOBYTE(v188) = 29;
  KeyedDecodingContainer.decode(_:forKey:)();
  v167 = v38;
  LOBYTE(v188) = 30;
  KeyedDecodingContainer.decode(_:forKey:)();
  v166 = v39;
  LOBYTE(v188) = 31;
  KeyedDecodingContainer.decode(_:forKey:)();
  v165 = v40;
  LOBYTE(v188) = 32;
  KeyedDecodingContainer.decode(_:forKey:)();
  v164 = v41;
  LOBYTE(v188) = 33;
  KeyedDecodingContainer.decode(_:forKey:)();
  v163 = v42;
  LOBYTE(v188) = 34;
  KeyedDecodingContainer.decode(_:forKey:)();
  v162 = v43;
  LOBYTE(v188) = 35;
  KeyedDecodingContainer.decode(_:forKey:)();
  v161 = v44;
  LOBYTE(v188) = 36;
  KeyedDecodingContainer.decode(_:forKey:)();
  v160 = v45;
  LOBYTE(v188) = 37;
  KeyedDecodingContainer.decode(_:forKey:)();
  v159 = v46;
  LOBYTE(v188) = 38;
  KeyedDecodingContainer.decode(_:forKey:)();
  v158 = v47;
  LOBYTE(v188) = 39;
  KeyedDecodingContainer.decode(_:forKey:)();
  v157 = v48;
  LOBYTE(v188) = 40;
  KeyedDecodingContainer.decode(_:forKey:)();
  v156 = v49;
  LOBYTE(v188) = 41;
  KeyedDecodingContainer.decode(_:forKey:)();
  v155 = v50;
  LOBYTE(v188) = 42;
  KeyedDecodingContainer.decode(_:forKey:)();
  v154 = v51;
  LOBYTE(v188) = 43;
  KeyedDecodingContainer.decode(_:forKey:)();
  v153 = v52;
  LOBYTE(v188) = 44;
  KeyedDecodingContainer.decode(_:forKey:)();
  v152 = v53;
  LOBYTE(v188) = 45;
  KeyedDecodingContainer.decode(_:forKey:)();
  v151 = v54;
  LOBYTE(v188) = 46;
  KeyedDecodingContainer.decode(_:forKey:)();
  v150 = v55;
  LOBYTE(v188) = 47;
  KeyedDecodingContainer.decode(_:forKey:)();
  v149 = v56;
  LOBYTE(v188) = 48;
  KeyedDecodingContainer.decode(_:forKey:)();
  v148 = v57;
  LOBYTE(v188) = 49;
  KeyedDecodingContainer.decode(_:forKey:)();
  v147 = v58;
  LOBYTE(v188) = 50;
  KeyedDecodingContainer.decode(_:forKey:)();
  v146 = v59;
  LOBYTE(v188) = 51;
  KeyedDecodingContainer.decode(_:forKey:)();
  v145 = v60;
  LOBYTE(v188) = 52;
  KeyedDecodingContainer.decode(_:forKey:)();
  v144 = v61;
  LOBYTE(v188) = 53;
  KeyedDecodingContainer.decode(_:forKey:)();
  v143 = v62;
  LOBYTE(v188) = 54;
  KeyedDecodingContainer.decode(_:forKey:)();
  v142 = v63;
  v191 = 55;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v141 = v188;
  v191 = 56;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v140 = v188;
  v191 = 57;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v139 = v188;
  v191 = 58;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v138 = v188;
  LOBYTE(v188) = 59;
  KeyedDecodingContainer.decode(_:forKey:)();
  v137 = v64;
  LOBYTE(v188) = 60;
  KeyedDecodingContainer.decode(_:forKey:)();
  v135 = v65;
  LOBYTE(v188) = 61;
  KeyedDecodingContainer.decode(_:forKey:)();
  v134 = v66;
  LOBYTE(v188) = 62;
  KeyedDecodingContainer.decode(_:forKey:)();
  v132 = v67;
  LOBYTE(v188) = 63;
  KeyedDecodingContainer.decode(_:forKey:)();
  v130 = v68;
  LOBYTE(v188) = 64;
  KeyedDecodingContainer.decode(_:forKey:)();
  v136 = v69;
  v191 = 65;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v133 = v188;
  LOBYTE(v188) = 66;
  KeyedDecodingContainer.decode(_:forKey:)();
  v131 = v70;
  LOBYTE(v188) = 67;
  KeyedDecodingContainer.decode(_:forKey:)();
  v129 = v71;
  LOBYTE(v188) = 68;
  KeyedDecodingContainer.decode(_:forKey:)();
  v128 = v72;
  LOBYTE(v188) = 69;
  KeyedDecodingContainer.decode(_:forKey:)();
  v127 = v73;
  LOBYTE(v188) = 70;
  KeyedDecodingContainer.decode(_:forKey:)();
  v126 = v74;
  LOBYTE(v188) = 71;
  KeyedDecodingContainer.decode(_:forKey:)();
  v125 = v75;
  v191 = 72;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v124 = v188;
  v191 = 73;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v123 = v188;
  v191 = 74;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v122 = v188;
  v191 = 75;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v121 = v188;
  v191 = 76;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v120 = v188;
  v191 = 77;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v119 = v188;
  v191 = 78;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v118 = v188;
  v191 = 79;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v117 = v188;
  v191 = 80;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v116 = v188;
  LOBYTE(v188) = 81;
  KeyedDecodingContainer.decode(_:forKey:)();
  v115 = v76;
  LOBYTE(v188) = 82;
  KeyedDecodingContainer.decode(_:forKey:)();
  v114 = v77;
  LOBYTE(v188) = 83;
  KeyedDecodingContainer.decode(_:forKey:)();
  v113 = v78;
  LOBYTE(v188) = 84;
  KeyedDecodingContainer.decode(_:forKey:)();
  v112 = v79;
  LOBYTE(v188) = 85;
  KeyedDecodingContainer.decode(_:forKey:)();
  v111 = v80;
  LOBYTE(v188) = 86;
  KeyedDecodingContainer.decode(_:forKey:)();
  v110 = v81;
  LOBYTE(v188) = 87;
  KeyedDecodingContainer.decode(_:forKey:)();
  v109 = v82;
  LOBYTE(v188) = 88;
  KeyedDecodingContainer.decode(_:forKey:)();
  v108 = v83;
  LOBYTE(v188) = 89;
  KeyedDecodingContainer.decode(_:forKey:)();
  v107 = v84;
  LOBYTE(v188) = 90;
  KeyedDecodingContainer.decode(_:forKey:)();
  v106 = v85;
  LOBYTE(v188) = 91;
  KeyedDecodingContainer.decode(_:forKey:)();
  v105 = v86;
  LOBYTE(v188) = 92;
  KeyedDecodingContainer.decode(_:forKey:)();
  v104 = v87;
  LOBYTE(v188) = 93;
  KeyedDecodingContainer.decode(_:forKey:)();
  v103 = v88;
  LOBYTE(v188) = 94;
  KeyedDecodingContainer.decode(_:forKey:)();
  v102 = v89;
  (*(v6 + 8))(v8, v5);
  result = sub_10000959C(a1);
  v91 = v185;
  *(a2 + 32) = v186;
  *(a2 + 48) = v91;
  v92 = v183;
  *(a2 + 64) = v184;
  *(a2 + 80) = v92;
  v93 = v181;
  *(a2 + 96) = v182;
  *(a2 + 112) = v93;
  *(a2 + 128) = v180;
  *(a2 + 144) = v10;
  *(a2 + 148) = v12;
  *(a2 + 152) = v14;
  *(a2 + 156) = v16;
  *(a2 + 160) = v18;
  *(a2 + 164) = v20;
  *(a2 + 168) = v22;
  *(a2 + 172) = v24;
  LODWORD(v93) = v179;
  *(a2 + 176) = v190;
  *(a2 + 180) = v93;
  LODWORD(v93) = v177;
  *(a2 + 184) = v178;
  *(a2 + 188) = v93;
  LODWORD(v93) = v175;
  *(a2 + 192) = v176;
  *(a2 + 196) = v93;
  LODWORD(v93) = v173;
  *(a2 + 200) = v174;
  *(a2 + 204) = v93;
  LODWORD(v93) = v171;
  *(a2 + 208) = v172;
  *(a2 + 212) = v93;
  LODWORD(v93) = v169;
  *(a2 + 216) = v170;
  *(a2 + 220) = v93;
  LODWORD(v93) = v167;
  *(a2 + 224) = v168;
  *(a2 + 228) = v93;
  LODWORD(v93) = v165;
  *(a2 + 232) = v166;
  *(a2 + 236) = v93;
  LODWORD(v93) = v163;
  *(a2 + 240) = v164;
  *(a2 + 244) = v93;
  LODWORD(v93) = v161;
  *(a2 + 248) = v162;
  *(a2 + 252) = v93;
  *(a2 + 256) = v160;
  *(a2 + 260) = v159;
  *(a2 + 264) = v158;
  *(a2 + 268) = v157;
  *(a2 + 272) = v156;
  *(a2 + 276) = v155;
  *(a2 + 280) = v154;
  *(a2 + 284) = v153;
  *(a2 + 288) = v152;
  *(a2 + 292) = v151;
  *(a2 + 296) = v150;
  *(a2 + 300) = v149;
  *(a2 + 304) = v148;
  *(a2 + 308) = v147;
  *(a2 + 312) = v146;
  *(a2 + 316) = v145;
  *(a2 + 320) = v144;
  *(a2 + 324) = v143;
  *(a2 + 328) = v142;
  v94 = v140;
  *(a2 + 336) = v141;
  *(a2 + 352) = v94;
  v95 = v138;
  *(a2 + 368) = v139;
  *(a2 + 384) = v95;
  *(a2 + 400) = v137;
  *(a2 + 404) = v135;
  *(a2 + 408) = v134;
  *(a2 + 412) = v132;
  *(a2 + 416) = v130;
  v96 = v187;
  *a2 = v189;
  *(a2 + 16) = v96;
  *(a2 + 332) = 0;
  *(a2 + 420) = v136;
  *(a2 + 424) = 0;
  *(a2 + 432) = v133;
  *(a2 + 448) = v131;
  *(a2 + 452) = v129;
  *(a2 + 456) = v128;
  *(a2 + 460) = v127;
  *(a2 + 464) = v126;
  *(a2 + 468) = v125;
  *(a2 + 472) = 0;
  v97 = v123;
  *(a2 + 480) = v124;
  *(a2 + 496) = v97;
  v98 = v121;
  *(a2 + 512) = v122;
  *(a2 + 528) = v98;
  v99 = v119;
  *(a2 + 544) = v120;
  *(a2 + 560) = v99;
  v100 = v117;
  *(a2 + 576) = v118;
  *(a2 + 592) = v100;
  *(a2 + 608) = v116;
  *(a2 + 624) = v115;
  *(a2 + 628) = v114;
  *(a2 + 632) = v113;
  *(a2 + 636) = v112;
  *(a2 + 640) = v111;
  *(a2 + 644) = v110;
  *(a2 + 648) = v109;
  *(a2 + 652) = v108;
  *(a2 + 656) = v107;
  *(a2 + 660) = v106;
  *(a2 + 664) = v105;
  *(a2 + 668) = v104;
  *(a2 + 672) = v103;
  *(a2 + 676) = v102;
  *(a2 + 680) = 0;
  return result;
}

uint64_t sub_10087A7A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x6974756C6F736572 && a2 == 0xEA00000000006E6FLL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x726F6C6F63 && a2 == 0xE500000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x30726F6C6F63 && a2 == 0xE600000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x31726F6C6F63 && a2 == 0xE600000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x32726F6C6F63 && a2 == 0xE600000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x33726F6C6F63 && a2 == 0xE600000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x34726F6C6F63 && a2 == 0xE600000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x6E69617267 && a2 == 0xE500000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x65646146706F74 && a2 == 0xE700000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x4F65646146706F74 && a2 == 0xED00007465736666
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x5065646146706F74 && a2 == 0xEC0000007265776FLL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x6974617275746173 && a2 == 0xEA00000000006E6FLL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x74736172746E6F63 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x657265687073 && a2 == 0xE600000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x656C616373 && a2 == 0xE500000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x74657366666FLL && a2 == 0xE600000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x7373656E74666F73 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x746867694C6D6972 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x746867694C6D6972 && a2 == 0xED0000616D676953
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x746867694C6D6972 && a2 == 0xED00007265776F50
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0xD000000000000012 && 0x8000000100E58DE0 == a2
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0xD000000000000010 && 0x8000000100E58E00 == a2
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0xD000000000000013 && 0x8000000100E58E20 == a2
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0xD000000000000011 && 0x8000000100E58E40 == a2
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x736944726F6C6F63 && a2 == 0xEA00000000003074
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x676953726F6C6F63 && a2 == 0xEB0000000030616DLL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x727053726F6C6F63 && a2 == 0xEC00000030646165
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x776F50726F6C6F63 && a2 == 0xEB00000000307265
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x736944726F6C6F63 && a2 == 0xEA00000000003174
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x676953726F6C6F63 && a2 == 0xEB0000000031616DLL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x727053726F6C6F63 && a2 == 0xEC00000031646165
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x776F50726F6C6F63 && a2 == 0xEB00000000317265
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x736944726F6C6F63 && a2 == 0xEA00000000003274
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x676953726F6C6F63 && a2 == 0xEB0000000032616DLL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x727053726F6C6F63 && a2 == 0xEC00000032646165
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x776F50726F6C6F63 && a2 == 0xEB00000000327265
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x736944726F6C6F63 && a2 == 0xEA00000000003374
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x676953726F6C6F63 && a2 == 0xEB0000000033616DLL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x727053726F6C6F63 && a2 == 0xEC00000033646165
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x776F50726F6C6F63 && a2 == 0xEB00000000337265
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x736944726F6C6F63 && a2 == 0xEA00000000003474
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x676953726F6C6F63 && a2 == 0xEB0000000034616DLL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x727053726F6C6F63 && a2 == 0xEC00000034646165
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x776F50726F6C6F63 && a2 == 0xEB00000000347265
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x736944726F6C6F63 && a2 == 0xEA00000000003574
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x676953726F6C6F63 && a2 == 0xEB0000000035616DLL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x727053726F6C6F63 && a2 == 0xEC00000035646165
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x776F50726F6C6F63 && a2 == 0xEB00000000357265
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x647574696C706D61 && a2 == 0xE900000000000065
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x636E657571657266 && a2 == 0xE900000000000079
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x7366664F65766177 && a2 == 0xEA00000000007465
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x6465657073 && a2 == 0xE500000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x646165727073 && a2 == 0xE600000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x7265776F70 && a2 == 0xE500000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x30726F6C6F636762 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x31726F6C6F636762 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x32726F6C6F636762 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x33726F6C6F636762 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x74696C706D616762 && a2 == 0xEB00000000656475
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x6575716572666762 && a2 == 0xEB0000000079636ELL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x74657366666F6762 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x64656570736762 && a2 == 0xE700000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x696C686769686762 && a2 == 0xEB00000000746867
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0xD000000000000010 && 0x8000000100E59000 == a2
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x656D656E69666572 && a2 == 0xEF726F6C6F43746ELL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x73736572676F7270 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x6769537472617473 && a2 == 0xEA0000000000616DLL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x776F507472617473 && a2 == 0xEA00000000007265
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x616D676953646E65 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x7265776F50646E65 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x65776F5065646166 && a2 == 0xE900000000000072
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x30657474656C6170 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x31657474656C6170 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x32657474656C6170 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x33657474656C6170 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x34657474656C6170 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x35657474656C6170 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x756F72676B636162 && a2 == 0xEF7472617453646ELL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x756F72676B636162 && a2 == 0xED0000646E45646ELL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0xD000000000000010 && 0x8000000100E590B0 == a2
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x656870536F726568 && a2 == 0xEA00000000006572
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x6C6163536F726568 && a2 == 0xE900000000000065
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x7366664F6F726568 && a2 == 0xEA00000000007465
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x4C6D69526F726568 && a2 == 0xEC00000074686769
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x506D69526F726568 && a2 == 0xEC0000007265776FLL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x6F6C61486F726568 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x6D6769536F726568 && a2 == 0xE900000000000061
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x65776F506F726568 && a2 == 0xE900000000000072
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x766157646E656C62 && a2 == 0xE900000000000065
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x62724F646E656C62 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x726548646E656C62 && a2 == 0xE90000000000006FLL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x636142646E656C62 && a2 == 0xEF646E756F72676BLL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0xD000000000000014 && 0x8000000100E59150 == a2
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x666552646E656C62 && a2 == 0xEF746E656D656E69
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  sub_10087C654();
  swift_allocError();
  *v5 = 1;
  return swift_willThrow();
}

uint64_t _s10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xA2)
  {
    goto LABEL_17;
  }

  if (a2 + 94 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 94) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 94;
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

      return (*a1 | (v4 << 8)) - 94;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 94;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x5F;
  v8 = v6 - 95;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 94 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 94) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xA2)
  {
    v4 = 0;
  }

  if (a2 > 0xA1)
  {
    v5 = ((a2 - 162) >> 8) + 1;
    *result = a2 + 94;
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
    *result = a2 + 94;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10087C550()
{
  result = qword_1011A50E0;
  if (!qword_1011A50E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A50E0);
  }

  return result;
}

unint64_t sub_10087C5A8()
{
  result = qword_1011A50E8;
  if (!qword_1011A50E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A50E8);
  }

  return result;
}

unint64_t sub_10087C600()
{
  result = qword_1011A50F0;
  if (!qword_1011A50F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A50F0);
  }

  return result;
}

unint64_t sub_10087C654()
{
  result = qword_1011A50F8;
  if (!qword_1011A50F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A50F8);
  }

  return result;
}

uint64_t sub_10087C6A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&qword_1011A50D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t BlendingTimelinesDriver.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for TimelinesDriver();
  v1 = swift_allocObject();
  sub_10087DAC8();
  *(v0 + 16) = v1;
  v2 = swift_allocObject();
  sub_10087DAC8();
  *(v0 + 24) = v2;
  *(v0 + 32) = 0x3FF0000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  return v0;
}

uint64_t BlendingTimelinesDriver.init()()
{
  v1 = v0;
  type metadata accessor for TimelinesDriver();
  v2 = swift_allocObject();
  sub_10087DAC8();
  *(v1 + 16) = v2;
  v3 = swift_allocObject();
  sub_10087DAC8();
  *(v1 + 24) = v3;
  *(v1 + 32) = 0x3FF0000000000000;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  return v1;
}

uint64_t BlendingTimelinesDriver.a.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t BlendingTimelinesDriver.b.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t BlendingTimelinesDriver.blendTime.setter(double a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t BlendingTimelinesDriver.blendStart.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2 & 1;
  return result;
}

void *BlendingTimelinesDriver.blocking(at:)(uint64_t a1)
{
  *&v2 = __chkstk_darwin(a1).n128_u64[0];
  v4 = v3;
  swift_beginAccess();

  TimelinesDriver.blocking(at:)(v13, v2);

  swift_beginAccess();

  TimelinesDriver.blocking(at:)(__src, v2);

  memcpy(v19, __src, 0x2B1uLL);
  if (sub_10087DCC8(v19) == 1 || (memcpy(v20, v19, sizeof(v20)), memcpy(__dst, v13, 0x2B1uLL), sub_10087DCC8(__dst) == 1))
  {
    v5 = v13;
  }

  else
  {
    memcpy(v18, __dst, sizeof(v18));
    swift_beginAccess();
    v6 = 1.0;
    if ((*(v1 + 48) & 1) == 0)
    {
      v7 = v2 - *(v1 + 40);
      swift_beginAccess();
      v8 = v7 / *(v1 + 32);
      v6 = 0.0;
      if (v8 >= 0.0)
      {
        v6 = fmin(v8, 1.0);
      }
    }

    v9 = 1.0 - v6;
    *&v9 = 1.0 - v6;
    *&v10 = sub_100878BD8(v18, v15, v9);
    *&v10 = v6;
    sub_100878BD8(v20, v16, v10);
    sub_100878D84(v15, v16, v12);
    sub_1008762C8(v12);
    v5 = v12;
  }

  memcpy(v21, v5, sizeof(v21));
  return memcpy(v4, v21, 0x2B1uLL);
}

uint64_t BlendingTimelinesDriver.deinit()
{

  return v0;
}

uint64_t BlendingTimelinesDriver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t TimelinesDriver.startTime.setter(double a1)
{
  result = swift_beginAccess();
  *(v1 + 712) = a1;
  return result;
}

uint64_t sub_10087CF38()
{
  result = swift_beginAccess();
  v2 = *(v0 + 720);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 32;
    v6 = 0.0;
    do
    {
      v7 = *(v5 + 48 * v4 + 40);
      v8 = *(v7 + 16);
      v9 = 0.0;
      if (v8)
      {
        v10 = (v7 + 32);
        do
        {
          v11 = *v10;
          v10 += 6;
          v9 = v9 + v11;
          --v8;
        }

        while (v8);
      }

      ++v4;
      if (v6 <= v9)
      {
        v6 = v9;
      }
    }

    while (v4 != v3);
  }

  else
  {
    v6 = 0.0;
  }

  *(v0 + 728) = v6;
  return result;
}

uint64_t TimelinesDriver.tracks.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 720) = a1;

  return sub_10087CF38();
}

uint64_t (*TimelinesDriver.tracks.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10087D0A8;
}

uint64_t sub_10087D0A8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_10087CF38();
  }

  return result;
}

uint64_t TimelinesDriver.update.setter(double a1)
{
  result = swift_beginAccess();
  *(v1 + 736) = a1;
  return result;
}

uint64_t TimelinesDriver.scrubTime.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 744) = a1;
  *(v2 + 752) = a2 & 1;
  return result;
}

uint64_t TimelinesDriver.loopAt.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 760) = a1;
  *(v2 + 768) = a2 & 1;
  return result;
}

void *TimelinesDriver.blocking(at:)@<X0>(void *a1@<X8>, double a2@<D0>)
{
  swift_beginAccess();
  memcpy(__dst, (v2 + 16), 0x2B1uLL);
  memcpy(__src, (v2 + 16), 0x2B1uLL);
  if (sub_10087DCC8(__src) == 1)
  {
    v5 = __dst;
LABEL_61:
    memcpy(v55, v5, 0x2B1uLL);
    return memcpy(a1, v55, 0x2B1uLL);
  }

  memcpy(v54, __src, sizeof(v54));
  swift_beginAccess();
  if (*(v2 + 752))
  {
    swift_beginAccess();
    if (a2 - *(v2 + 712) < 0.0)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = a2 - *(v2 + 712);
    }

    swift_beginAccess();
    if (*(v2 + 768))
    {
      if (*(v2 + 728) < v6)
      {
        v6 = *(v2 + 728);
      }
    }

    else
    {
      v7 = *(v2 + 760);
      v8 = *(v2 + 728);
      if (v6 >= v7 || v6 >= v8)
      {
        v6 = v7 + fmod(v6, v8 - v7);
      }
    }
  }

  else
  {
    v6 = *(v2 + 744);
  }

  swift_beginAccess();
  *(v2 + 736) = v6;
  swift_beginAccess();
  v10 = *(v2 + 720);
  v44 = *(v10 + 16);
  if (!v44)
  {
LABEL_60:
    memcpy(v53, v54, 0x2B0uLL);
    sub_1008762C8(v53);
    v5 = v53;
    goto LABEL_61;
  }

  v40 = a1;
  v43 = v10 + 32;

  v41 = (v2 + 736);
  result = swift_beginAccess();
  v12 = 0;
  v42 = v10;
  while (v12 < *(v10 + 16))
  {
    v48 = v12;
    v13 = v43 + 48 * v12;
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    LOBYTE(v16) = *(v13 + 32);
    v17 = *(v13 + 40);
    v18 = *(v17 + 16);
    v49 = *v13;
    v50 = v17;
    v51 = *(v13 + 8);
    v45 = v15;
    v46 = v14;
    v47 = v16;
    if (v18)
    {
      v19 = *v41;

      v20 = 0;
      v21 = 0;
      v22 = 0.0;
      v23 = v17;
      while (v21 < *(v23 + 16))
      {
        v26 = v16;
        v27 = v15;
        v28 = v14;
        v29 = v23 + v20;
        v30 = *(v23 + v20 + 32);
        v14 = *(v23 + v20 + 48);
        v15 = *(v23 + v20 + 56);
        v16 = *(v23 + v20 + 64);
        v31 = v22 + v30;
        if (v22 <= v19)
        {
          v32 = *(v29 + 40);
          v33 = *(v29 + 44);
          if ((v18 == 1 || v19 <= v31) && v26 != 0xFF)
          {
            if (v16 != 255)
            {
              LOBYTE(v55[0]) = v33;
              v28 = sub_100881B24(v28, v27, v26, v32 | (v33 << 32), v14, v15, v16, (v19 - v22) / v30);
              v27 = v34;
              v26 = v35;
            }

            sub_10087A7A4(v49, v51);
            if (v26 > 1u)
            {
              if (v26 == 2)
              {
                v36 = &unk_1011A5118;
              }

              else
              {
                v36 = &unk_1011A5110;
              }

              sub_10010FC20(v36);
              if (swift_dynamicCastClass())
              {
                v55[1] = v27;
LABEL_57:
                v55[0] = v28;
LABEL_58:
                swift_setAtWritableKeyPath();

                v10 = v42;
                v38 = v48;
                goto LABEL_20;
              }
            }

            else if (v26)
            {
              sub_10010FC20(&qword_1011A5120);
              if (swift_dynamicCastClass())
              {
                goto LABEL_57;
              }
            }

            else
            {
              sub_10010FC20(&qword_1011A5128);
              if (swift_dynamicCastClass())
              {
                LODWORD(v55[0]) = v28;
                goto LABEL_58;
              }
            }

            sub_10087C654();
            swift_allocError();
            *v37 = 0;
            swift_willThrow();
            sub_10010FC20(&qword_1011A5130);
            v24 = swift_allocObject();
            *(v24 + 16) = xmmword_100EBDC20;
            *(v24 + 56) = &type metadata for String;
            *(v24 + 32) = 0xD000000000000014;
            *(v24 + 40) = 0x8000000100E59260;
            swift_getErrorValue();
            *(v24 + 88) = v52;
            v25 = sub_10001C8B8((v24 + 64));
            (*(*(v52 - 8) + 16))(v25);
            print(_:separator:terminator:)();

            v23 = v50;
          }
        }

        v20 += 48;
        ++v21;
        v22 = v31;
        if (!--v18)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
      break;
    }

LABEL_44:
    if (v47 <= 1)
    {
      v10 = v42;
      v38 = v48;
      if (v47)
      {
        sub_10087A7A4(v49, v51);
        sub_10010FC20(&qword_1011A5120);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_55;
        }

        v55[0] = v46;
      }

      else
      {
        sub_10087A7A4(v49, v51);
        sub_10010FC20(&qword_1011A5128);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_55;
        }

        LODWORD(v55[0]) = v46;
      }

      goto LABEL_54;
    }

    v10 = v42;
    v38 = v48;
    sub_10087A7A4(v49, v51);
    if (v47 == 2)
    {
      v39 = &unk_1011A5118;
    }

    else
    {
      v39 = &unk_1011A5110;
    }

    sub_10010FC20(v39);
    if (swift_dynamicCastClass())
    {
      v55[0] = v46;
      v55[1] = v45;
LABEL_54:
      swift_setAtWritableKeyPath();
    }

LABEL_55:

LABEL_20:
    v12 = v38 + 1;
    if (v12 == v44)
    {

      a1 = v40;
      goto LABEL_60;
    }
  }

  __break(1u);
  return result;
}

uint64_t TimelinesDriver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10087DAC8()
{
  __asm { FMOV            V1.4S, #1.0 }

  v7[2] = 0u;
  v7[3] = _Q1;
  v7[4] = xmmword_100EE5A20;
  v7[5] = xmmword_100EE5A30;
  v7[6] = xmmword_100EE5A40;
  v7[7] = xmmword_100EE5A50;
  v7[8] = xmmword_100EE5A60;
  v7[9] = xmmword_100EE5A70;
  v7[10] = xmmword_100EE5A80;
  v7[11] = xmmword_100EE5A90;
  v7[12] = xmmword_100EE5AA0;
  v7[13] = xmmword_100EE5AB0;
  v7[14] = xmmword_100EE5AC0;
  v7[15] = xmmword_100EE5AD0;
  v7[16] = xmmword_100EE5AE0;
  v7[17] = xmmword_100EE5AF0;
  v7[18] = xmmword_100EE5B00;
  v7[19] = xmmword_100EE5B10;
  *&v7[20] = 0x3F0000003F000000;
  *(&v7[20] + 1) = 1067450368;
  v7[21] = xmmword_100EE5B20;
  v7[22] = xmmword_100EE5B30;
  v7[23] = xmmword_100EE5B40;
  v7[24] = xmmword_100EE5B50;
  v7[25] = xmmword_100EE5B60;
  v7[26] = 0x400000003EA66666uLL;
  v7[27] = _Q1;
  v7[28] = xmmword_100EE5B70;
  v7[29] = 0x400000003F000000uLL;
  v7[30] = xmmword_100EE5B80;
  v7[31] = xmmword_100EE5B90;
  v7[32] = xmmword_100EE5BA0;
  v7[33] = xmmword_100EE5BB0;
  v7[34] = xmmword_100EE5BC0;
  v7[35] = xmmword_100EE5BD0;
  v7[36] = xmmword_100EE5BE0;
  v7[37] = xmmword_100EE5BF0;
  v7[38] = xmmword_100EE5C00;
  v7[39] = xmmword_100EE5C10;
  v7[40] = xmmword_100EE5C20;
  memset(&v7[41], 0, 32);
  sub_1008762C8(v7);
  memcpy((v0 + 16), v7, 0x2B1uLL);
  *(v0 + 712) = CACurrentMediaTime();
  *(v0 + 720) = _swiftEmptyArrayStorage;
  *(v0 + 728) = 0;
  *(v0 + 744) = 0;
  *(v0 + 736) = 0;
  *(v0 + 752) = 1;
  *(v0 + 760) = 0;
  *(v0 + 768) = 1;
  return v0;
}

uint64_t sub_10087DCC8(uint64_t a1)
{
  if (*(a1 + 688))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

char *PanacheView.__allocating_init(center:library:delegate:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();

  return sub_10087F82C(a1, a2, a3, a4, a5);
}

char *PanacheView.init(center:library:delegate:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();

  return sub_10087F8A4(a1, a2, a3, a4, a5, v5);
}

id sub_10087DEF8()
{
  v1 = OBJC_IVAR____TtC7Panache11PanacheView____lazy_storage___metalView;
  v2 = *(v0 + OBJC_IVAR____TtC7Panache11PanacheView____lazy_storage___metalView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Panache11PanacheView____lazy_storage___metalView);
  }

  else
  {
    v4 = sub_10087DF58();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10087DF58()
{
  v1 = [objc_allocWithZone(MTKView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v1 setDelegate:*(v0 + OBJC_IVAR____TtC7Panache11PanacheView_metalViewDelegate)];
  [v1 setDevice:*(v0 + OBJC_IVAR____TtC7Panache11PanacheView_metalCenter)];
  [v1 setColorPixelFormat:80];
  [v1 setPreferredFramesPerSecond:120];
  [v1 setClearColor:{0.0, 0.0, 0.0, 0.0}];
  v2 = [v1 layer];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  GenericRGB = CGColorCreateGenericRGB(0.0, 1.0, 1.0, 1.0);
  [v3 setBackgroundColor:GenericRGB];

  return v1;
}

id PanacheView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PanacheView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *PanacheView.__allocating_init<A>(center:library:driver:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for PanacheMetalViewDelegate();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = sub_10087FEF8(a1, a2, v12, a4, a5);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v14 = objc_allocWithZone(type metadata accessor for PanacheView());
  v15 = sub_10087F8A4(a1, a2, v12, a4, v13, v14);
  (*(*(a6 - 8) + 8))(a5, a6);
  return v15;
}

uint64_t sub_10087E368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = type metadata accessor for MainActor();
  v8[4] = static MainActor.shared.getter();
  type metadata accessor for LitSphereRenderer();
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = a7;
  swift_unknownObjectRetain();
  v14 = swift_task_alloc();
  v8[5] = v14;
  *v14 = v8;
  v14[1] = sub_10087E47C;

  return sub_100889108(a5, a6, v13, a8);
}

uint64_t sub_10087E47C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_10087E694;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_10087E5FC;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_10087E5FC()
{
  v1 = v0[7];
  v2 = v0[2];

  *(v2 + *((swift_isaMask & *v2) + 0x78)) = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_10087E694()
{

  if (qword_1011A4DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1012197F0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "error creating renderer %@", v4, 0xCu);
    sub_1000095E8(v5, &qword_1011A54B0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10087E840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10010FC20(&qword_1011A54B8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000208DC(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000095E8(v11, &qword_1011A54B8);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
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

      sub_1000095E8(a3, &qword_1011A54B8);

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

  sub_1000095E8(a3, &qword_1011A54B8);
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

uint64_t sub_10087EB30()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

void sub_10087ED70(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = a1;
  sub_10087EBC0(v5);
}

void sub_10087EE48(void *a1)
{
  v3 = swift_isaMask & *v1;
  v4 = [a1 currentRenderPassDescriptor];
  if (!v4)
  {
    type metadata accessor for PanacheMetalViewDelegate.Error();
    swift_getWitnessTable();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    return;
  }

  v5 = v4;
  v6 = [v4 colorAttachments];
  v7 = [v6 objectAtIndexedSubscript:0];

  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = [v7 texture];
  if (!v8)
  {

    goto LABEL_19;
  }

  v9 = v8;
  if ([v8 width] <= 0 || objc_msgSend(v9, "height") < 1)
  {

    swift_unknownObjectRelease();
LABEL_19:
    type metadata accessor for PanacheMetalViewDelegate.Error();
    swift_getWitnessTable();
    swift_allocError();
    *v25 = 1;
    swift_willThrow();

    return;
  }

  v10 = [*(v1 + *((swift_isaMask & *v1) + 0x60) + 8) commandBuffer];
  if (!v10)
  {
    sub_10088002C();
    swift_allocError();
    *v26 = 4;
    swift_willThrow();

LABEL_22:
    swift_unknownObjectRelease();
    return;
  }

  v11 = v10;
  v12 = String._bridgeToObjectiveC()();
  [v11 setLabel:v12];

  v13 = [v11 renderCommandEncoderWithDescriptor:v5];
  if (!v13)
  {
    sub_10088002C();
    swift_allocError();
    *v27 = 5;
    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  v29 = v13;
  v14 = CACurrentMediaTime();
  v30 = v1;
  (*(*(v3 + 88) + 8))(__src);
  v15 = v1;
  v16 = sub_10087DCC8(__src);
  v17 = *v1;
  v18 = swift_isaMask;
  if (v16 != 1)
  {
    memcpy(__dst, __src, 0x2B0uLL);
    if (*(v15 + *((swift_isaMask & v17) + 0x78)))
    {
      swift_getObjectType();
      type metadata accessor for FullSphereUniforms(0);
      v15 = v30;
      v19 = sub_10088C0C4();

      v20 = [swift_unknownObjectRetain() contents];
      v21 = v19;
      sub_10087F420(v20, __dst, a1, v14);

      swift_unknownObjectRelease();
      v17 = *v30;
      v18 = swift_isaMask;
    }
  }

  v22 = *(v15 + *((v18 & v17) + 0x78));
  if (v22)
  {

    [a1 bounds];
    [v29 setRenderPipelineState:v22[2]];
    [v29 setVertexBuffer:v22[3] offset:0 atIndex:0];
    [v29 setFragmentBuffer:v22[4] offset:0 atIndex:0];
    [v29 drawPrimitives:4 vertexStart:0 vertexCount:4];
  }

  [v29 endEncoding];
  v23 = [a1 currentDrawable];
  if (v23)
  {
    [v11 presentDrawable:v23];
    [v11 commit];

    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for PanacheMetalViewDelegate.Error();
    swift_getWitnessTable();
    swift_allocError();
    *v28 = 2;
    swift_willThrow();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

float sub_10087F420(float *a1, const void *a2, void *a3, double a4)
{
  memcpy(a1, a2, 0x2B0uLL);
  v7 = a4;
  *a1 = v7;
  [a3 drawableSize];
  *&v8 = v8;
  v22 = LODWORD(v8);
  [a3 drawableSize];
  v10 = v9;
  v21 = v10;
  [a3 drawableSize];
  v12 = v11;
  [a3 drawableSize];
  v14 = v12 / v13;
  __asm { FMOV            V1.4S, #1.0 }

  *&_Q1 = __PAIR64__(LODWORD(v21), v22);
  result = v14;
  *(&_Q1 + 2) = result;
  *(a1 + 2) = _Q1;
  return result;
}

Swift::Int MPCPlaybackEngine.Option.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10087F584()
{
  Hasher.init(_seed:)();
  NSDirectionalEdgeInsets.Edge.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

void sub_10087F5CC()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100880080();
}

id sub_10087F698()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PanacheMetalViewDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10087F708(char *a1)
{
  v2 = *a1;
  v3 = swift_isaMask;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(*(*((v3 & v2) + 0x50) - 8) + 8))(&a1[*((swift_isaMask & *a1) + 0x70)]);
}

char *sub_10087F82C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(type metadata accessor for PanacheView());

  return sub_10087F8A4(a1, a2, a3, a4, a5, v10);
}

char *sub_10087F8A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char *a6)
{
  *&a6[OBJC_IVAR____TtC7Panache11PanacheView____lazy_storage___metalView] = 0;
  v7 = &a6[OBJC_IVAR____TtC7Panache11PanacheView_metalCenter];
  *v7 = a1;
  *(v7 + 1) = a2;
  *(v7 + 2) = a3;
  *&a6[OBJC_IVAR____TtC7Panache11PanacheView_library] = a4;
  *&a6[OBJC_IVAR____TtC7Panache11PanacheView_metalViewDelegate] = a5;
  v28.receiver = a6;
  v28.super_class = type metadata accessor for PanacheView();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v27 = a3;
  swift_unknownObjectRetain();
  v8 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9 = sub_10087DEF8();
  [v8 addSubview:v9];

  v10 = OBJC_IVAR____TtC7Panache11PanacheView____lazy_storage___metalView;
  [*&v8[OBJC_IVAR____TtC7Panache11PanacheView____lazy_storage___metalView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = objc_opt_self();
  sub_10010FC20(&qword_1011A54C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100EBDC10;
  v12 = [*&v8[v10] topAnchor];
  v13 = [v8 topAnchor];

  v14 = [v12 constraintEqualToAnchor:v13];
  *(v11 + 32) = v14;
  v15 = [*&v8[v10] bottomAnchor];
  v16 = [v8 bottomAnchor];

  v17 = [v15 constraintEqualToAnchor:v16];
  *(v11 + 40) = v17;
  v18 = [*&v8[v10] leftAnchor];
  v19 = [v8 leftAnchor];

  v20 = [v18 constraintEqualToAnchor:v19];
  *(v11 + 48) = v20;
  v21 = [*&v8[v10] rightAnchor];
  v22 = [v8 rightAnchor];

  v23 = [v21 constraintEqualToAnchor:v22];
  *(v11 + 56) = v23;
  sub_100880244();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v26 activateConstraints:isa];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v8;
}

id sub_10087FC34(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = swift_isaMask;
  v13 = sub_10010FC20(&qword_1011A54B8);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v28 - v15;
  *&v5[*((v12 & v11) + 0x78)] = 0;
  v17 = &v5[*((swift_isaMask & *v5) + 0x60)];
  *v17 = a1;
  *(v17 + 1) = a2;
  *(v17 + 2) = a3;
  *&v5[*((swift_isaMask & *v5) + 0x68)] = a4;
  (*(*(*((v12 & v11) + 0x50) - 8) + 16))(&v5[*((swift_isaMask & *v5) + 0x70)], a5, *((v12 & v11) + 0x50), v14);
  v18 = type metadata accessor for PanacheMetalViewDelegate();
  v28.receiver = v5;
  v28.super_class = v18;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v19 = a3;
  swift_unknownObjectRetain();
  v20 = objc_msgSendSuper2(&v28, "init");
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
  type metadata accessor for MainActor();
  v22 = v20;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v23 = v19;
  swift_unknownObjectRetain();
  v24 = v22;
  v25 = static MainActor.shared.getter();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = &protocol witness table for MainActor;
  v26[4] = v24;
  v26[5] = a1;
  v26[6] = a2;
  v26[7] = v23;
  v26[8] = a4;
  sub_10087E840(0, 0, v16, &unk_100EE6CB8, v26);

  return v24;
}

uint64_t sub_10087FF64()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_10088002C()
{
  result = qword_1011A6470;
  if (!qword_1011A6470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A6470);
  }

  return result;
}

uint64_t sub_1008800B0(uint64_t a1)
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
  v11[1] = sub_10002F3F4;

  return sub_10087E368(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10088018C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_100009648(a1, v4);
}

unint64_t sub_100880244()
{
  result = qword_1011A54C8[0];
  if (!qword_1011A54C8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1011A54C8);
  }

  return result;
}

uint64_t Track.apply(_:time:)(uint64_t a1, double a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  LOBYTE(v5) = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v6 + 16);
  if (!v7)
  {
    return sub_100882048(a1, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32));
  }

  v9 = (v6 + 64);
  v10 = 0.0;
  while (1)
  {
    v11 = v5;
    v12 = v4;
    v13 = v3;
    v14 = *(v9 - 4);
    v3 = *(v9 - 2);
    v4 = *(v9 - 1);
    v5 = *v9;
    if (v10 <= a2 && (v7 == 1 || v10 + v14 >= a2) && v11 != 0xFF)
    {
      break;
    }

    v9 += 6;
    v10 = v10 + v14;
    if (!--v7)
    {
      return sub_100882048(a1, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32));
    }
  }

  if (v5 != 255)
  {
    v13 = sub_100881B24(v13, v12, v11, *(v9 - 6) | (*(v9 - 20) << 32), v3, v4, v5, (a2 - v10) / v14);
    v12 = v15;
    v11 = v16;
  }

  return sub_100882048(a1, *v2, *(v2 + 8), v13, v12, v11);
}

uint64_t Library.Menu.Revision.Version.identifiers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_100880534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656E696C656D6974 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1008805C4(uint64_t a1)
{
  v2 = sub_1008821FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100880600(uint64_t a1)
{
  v2 = sub_1008821FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100880640(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v85 = result;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v86 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = (*(result + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(result + 56) + 24 * v12;
    v17 = *v16;
    v18 = *(v16 + 8);
    v87 = *(v16 + 16);

    v19 = sub_10000F8B8(v14, v15);
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      goto LABEL_105;
    }

    v22 = *(v2 + 56) + 24 * v19;
    v23 = *v22;
    v24 = *(*v22 + 16);
    if (v24 != *(v17 + 16))
    {
      goto LABEL_105;
    }

    v25 = *(v22 + 8);
    v26 = *(v22 + 16);
    if (v24 && v23 != v17)
    {
      v84 = *(*v22 + 16);
      v73 = *(v22 + 16);
      v74 = v2;
      v27 = *(v23 + 56);
      v80 = *(v23 + 48);
      v78 = *(v23 + 64);
      v28 = *(v23 + 72);
      v29 = *(v17 + 48);
      v76 = *(v17 + 56);
      v30 = *(v17 + 64);
      v31 = *(v17 + 72);
      v32 = *(v23 + 32) == *(v17 + 32) && *(v23 + 40) == *(v17 + 40);
      if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v82 = v17 + 32;
        v83 = v23 + 32;

        v33 = 1;
        v34 = v84;
        v35 = v80;
        v36 = v76;
        v37 = v78;
        while (1)
        {
          if (v37 > 1u)
          {
            if (v37 == 2)
            {
              if (v30 != 2)
              {
                goto LABEL_104;
              }

              if (*&v35 != *&v29)
              {
                goto LABEL_104;
              }

              v40.i64[0] = v35;
              v40.i64[1] = v27;
              v41.i64[0] = v29;
              v41.i64[1] = v36;
              v42 = vmovn_s32(vceqq_f32(v40, v41));
              if ((v42.i8[2] & 1) == 0 || (v42.i8[4] & 1) == 0)
              {
                goto LABEL_104;
              }
            }

            else
            {
              if (v30 != 3)
              {
                goto LABEL_104;
              }

              v43.i64[1] = v27;
              v44.i64[1] = v36;
              v43.i64[0] = v35;
              v44.i64[0] = v29;
              if ((vminv_u16(vmovn_s32(vceqq_f32(v43, v44))) & 1) == 0)
              {
                goto LABEL_104;
              }
            }
          }

          else
          {
            if (v37)
            {
              if (v30 != 1 || *&v35 != *&v29)
              {
                goto LABEL_104;
              }

              v38 = *(&v35 + 1);
              v39 = *(&v29 + 1);
            }

            else
            {
              if (v30)
              {
                goto LABEL_104;
              }

              v38 = *&v35;
              v39 = *&v29;
            }

            if (v38 != v39)
            {
              goto LABEL_104;
            }
          }

          v45 = *(v28 + 16);
          if (v45 != *(v31 + 16))
          {
            goto LABEL_104;
          }

          if (v45 && v28 != v31)
          {
            break;
          }

LABEL_85:
          if (v33 == v34)
          {

            v2 = v74;
            v7 = v86;
            v26 = v73;
            goto LABEL_95;
          }

          if (v33 >= *(v23 + 16))
          {
            goto LABEL_109;
          }

          if (v33 >= *(v17 + 16))
          {
            goto LABEL_110;
          }

          v59 = v33 + 1;
          v60 = v83 + 48 * v33;
          result = *v60;
          v35 = *(v60 + 16);
          v27 = *(v60 + 24);
          v37 = *(v60 + 32);
          v28 = *(v60 + 40);
          v61 = v82 + 48 * v33;
          v29 = *(v61 + 16);
          v36 = *(v61 + 24);
          v30 = *(v61 + 32);
          v31 = *(v61 + 40);
          v62 = *v60 == *v61 && *(v60 + 8) == *(v61 + 8);
          v33 = v59;
          if (!v62)
          {
            v79 = v4;
            v81 = v17;
            v75 = v59;
            v77 = v23;
            v63 = v31;
            v64 = v8;
            v65 = *(v60 + 40);
            v66 = *(v60 + 24);
            v67 = v29;
            v68 = *(v60 + 16);
            v69 = v36;
            v70 = *(v60 + 32);
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            v37 = v70;
            v36 = v69;
            v35 = v68;
            v29 = v67;
            v27 = v66;
            v28 = v65;
            v8 = v64;
            v31 = v63;
            v23 = v77;
            v4 = v79;
            v17 = v81;
            v34 = v84;
            v33 = v75;
            if ((result & 1) == 0)
            {
              goto LABEL_104;
            }
          }
        }

        if (*(v28 + 32) == *(v31 + 32))
        {
          v46 = 0;
          do
          {
            v47 = *(v28 + v46 + 64);
            v48 = *(v28 + v46 + 48);
            result = *(v28 + v46 + 40);
            v49 = *(v31 + v46 + 64);
            v50 = *(v31 + v46 + 48);
            v51 = *(v31 + v46 + 40);
            if (*(v28 + v46 + 44) == 1)
            {
              if (result)
              {
                if (v51 == 0.0)
                {
                  v52 = 0;
                }

                else
                {
                  v52 = *(v31 + v46 + 44);
                }

                if ((v52 & 1) == 0)
                {
                  break;
                }
              }

              else
              {
                if (v51 == 0.0)
                {
                  v53 = *(v31 + v46 + 44);
                }

                else
                {
                  LOBYTE(v53) = 0;
                }

                if ((v53 & 1) == 0)
                {
                  break;
                }
              }
            }

            else if ((*(v31 + v46 + 44) & 1) != 0 || *&result != v51)
            {
              break;
            }

            if (v47 == 255)
            {
              if (v49 != 255)
              {
                break;
              }
            }

            else
            {
              if (v49 == 255)
              {
                break;
              }

              if (*(v28 + v46 + 64) > 1u)
              {
                if (v47 == 2)
                {
                  if (v49 != 2)
                  {
                    break;
                  }

                  v55 = vceq_f32(*(v28 + v46 + 48), v50);
                  if ((v55.i32[0] & v55.i32[1] & 1) == 0 || (vmovn_s32(vceqq_f32(*(v28 + v46 + 48), *(v31 + v46 + 48))).i32[1] & 1) == 0)
                  {
                    break;
                  }
                }

                else
                {
                  if (v49 != 3)
                  {
                    break;
                  }

                  if (*&v48 != v50.f32[0])
                  {
                    break;
                  }

                  v56 = vmovn_s32(vceqq_f32(*(v28 + v46 + 48), *(v31 + v46 + 48)));
                  if ((v56.i8[2] & 1) == 0 || (v56.i8[4] & 1) == 0 || (v56.i8[6] & 1) == 0)
                  {
                    break;
                  }
                }
              }

              else
              {
                if (*(v28 + v46 + 64))
                {
                  if (v49 != 1 || *&v48 != v50.f32[0])
                  {
                    break;
                  }

                  LODWORD(v54) = HIDWORD(*(v28 + v46 + 48));
                  *&v50 >>= 32;
                }

                else
                {
                  if (*(v31 + v46 + 64))
                  {
                    break;
                  }

                  LODWORD(v54) = *(v28 + v46 + 48);
                }

                if (v54 != v50.f32[0])
                {
                  break;
                }
              }
            }

            if (!--v45)
            {
              goto LABEL_85;
            }

            v57 = v28 + v46;
            v58 = v31 + v46;
            v46 += 48;
          }

          while (*(v57 + 80) == *(v58 + 80));
        }

LABEL_104:
      }

LABEL_105:

      return 0;
    }

    v7 = v86;
LABEL_95:
    result = v85;
    v71 = 0;
    if (v26)
    {
      if ((v87 & 1) == 0)
      {
        return v71;
      }
    }

    else
    {
      v72 = v87;
      if (v25 != v18)
      {
        v72 = 1;
      }

      if (v72)
      {
        return v71;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v86 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
  return result;
}

uint64_t PanacheScene.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A5550);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_10000954C(a1, a1[3]);
  sub_1008821FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_10010FC20(&qword_1011A5560);
  sub_100888C7C(&qword_1011A5568, sub_100882250);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

Swift::Int PanacheScene.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  _s7Panache0A5SceneV4hash4intoys6HasherVz_tF_0(v3, a1);
  return Hasher._finalize()();
}

void *sub_100880E40@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10088542C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_100880E88()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  _s7Panache0A5SceneV4hash4intoys6HasherVz_tF_0(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_100880ED8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  _s7Panache0A5SceneV4hash4intoys6HasherVz_tF_0(v3, v1);
  return Hasher._finalize()();
}

uint64_t Timeline.loopAt.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t sub_100880F6C()
{
  if (*v0)
  {
    return 0x7441706F6F6CLL;
  }

  else
  {
    return 0x736B63617274;
  }
}

uint64_t sub_100880F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736B63617274 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7441706F6F6CLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10088106C(uint64_t a1)
{
  v2 = sub_1008855E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008810A8(uint64_t a1)
{
  v2 = sub_1008855E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL static Timeline.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((sub_100881150(a1, a4) & 1) == 0)
  {
    return 0;
  }

  if ((a3 & 1) == 0)
  {
    return (a6 & 1) == 0 && *&a2 == *&a5;
  }

  return (a6 & 1) != 0;
}

uint64_t sub_100881150(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2)
    {
      return 1;
    }

    v3 = a2;
    v4 = a1;
    if (a1 == a2)
    {
      return 1;
    }

    for (i = 0; ; i += 48)
    {
      v6 = *(v4 + i + 48);
      v7 = *(v4 + i + 56);
      v8 = *(v4 + i + 64);
      v9 = *(v4 + i + 72);
      v10 = *(v3 + i + 48);
      v11 = *(v3 + i + 56);
      v12 = *(v3 + i + 64);
      v13 = *(v3 + i + 72);
      if (*(v4 + i + 32) != *(v3 + i + 32) || *(v4 + i + 40) != *(v3 + i + 40))
      {
        v15 = *(v4 + i + 72);
        v16 = v12;
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v12 = v16;
        v9 = v15;
        v3 = a2;
        v4 = a1;
        if ((v17 & 1) == 0)
        {
          break;
        }
      }

      if (v8 > 1)
      {
        if (v8 == 2)
        {
          if (v12 != 2)
          {
            return 0;
          }

          result = 0;
          if (*&v6 != *&v10)
          {
            return result;
          }

          v19.i64[0] = v6;
          v19.i64[1] = v7;
          v20.i64[0] = v10;
          v20.i64[1] = v11;
          v21 = vmovn_s32(vceqq_f32(v19, v20));
          if ((v21.i8[2] & 1) == 0 || (v21.i8[4] & 1) == 0)
          {
            return result;
          }
        }

        else
        {
          if (v12 != 3)
          {
            return 0;
          }

          v22.i64[1] = v7;
          v23.i64[1] = v11;
          v22.i64[0] = v6;
          v23.i64[0] = v10;
          if ((vminv_u16(vmovn_s32(vceqq_f32(v22, v23))) & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v8)
      {
        if (v12 != 1 || *&v6 != *&v10 || *(&v6 + 1) != *(&v10 + 1))
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v12 || *&v6 != *&v10)
        {
          return result;
        }
      }

      if ((sub_10088132C(v9, v13) & 1) == 0)
      {
        return 0;
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10088132C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    if (*(a1 + 32) == *(a2 + 32))
    {
      for (i = 0; ; i += 48)
      {
        v4 = *(a1 + i + 64);
        v5 = *(a1 + i + 48);
        v6 = *(a1 + i + 40);
        v7 = *(a2 + i + 64);
        v8 = *(a2 + i + 48);
        v9 = *(a2 + i + 44);
        v10 = *(a2 + i + 40);
        if (*(a1 + i + 44) == 1)
        {
          if (v6 == 0.0)
          {
            if (v10 != 0.0)
            {
              LOBYTE(v9) = 0;
            }

            if ((v9 & 1) == 0)
            {
              return 0;
            }
          }

          else
          {
            if (v10 == 0.0)
            {
              v9 = 0;
            }

            if (v9 != 1)
            {
              return 0;
            }
          }
        }

        else
        {
          if (v6 != v10)
          {
            LOBYTE(v9) = 1;
          }

          if (v9)
          {
            return 0;
          }
        }

        if (v4 == 255)
        {
          if (v7 != 255)
          {
            return 0;
          }
        }

        else
        {
          if (v7 == 255)
          {
            return 0;
          }

          if (*(a1 + i + 64) > 1u)
          {
            if (v4 == 2)
            {
              if (v7 != 2)
              {
                return 0;
              }

              v4 = 0;
              if (*&v5 != *&v8)
              {
                return v4;
              }

              v13 = vmovn_s32(vceqq_f32(*(a1 + i + 48), *(a2 + i + 48)));
              if ((v13.i8[2] & 1) == 0 || (v13.i8[4] & 1) == 0)
              {
                return v4;
              }
            }

            else if (v7 != 3 || (vminv_u16(vmovn_s32(vceqq_f32(*(a1 + i + 48), *(a2 + i + 48)))) & 1) == 0)
            {
              return 0;
            }
          }

          else if (*(a1 + i + 64))
          {
            if (v7 != 1 || *&v5 != *&v8 || *(&v5 + 1) != *(&v8 + 1))
            {
              return 0;
            }
          }

          else if (*(a2 + i + 64) || *&v5 != *&v8)
          {
            return v4;
          }
        }

        if (!--v2)
        {
          return 1;
        }

        v4 = 0;
        v11 = a1 + i;
        v12 = a2 + i;
        if (*(v11 + 80) != *(v12 + 80))
        {
          return v4;
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t Timeline.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = a3;
  v6 = sub_10010FC20(&qword_1011A5578);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_10000954C(a1, a1[3]);
  sub_1008855E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = a2;
  v13 = 0;
  sub_10010FC20(&qword_1011A5588);
  sub_100888BB0(&qword_1011A5590, sub_10088563C);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

void Timeline.hash(into:)(uint64_t a1, uint64_t a2, Swift::UInt64 a3, char a4)
{
  sub_100884BBC(a1, a2);
  if (a4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = 0;
    }

    Hasher._combine(_:)(v6);
  }
}

Swift::Int Timeline.hashValue.getter(uint64_t a1, Swift::UInt64 a2, char a3)
{
  Hasher.init(_seed:)();
  sub_100884BBC(v8, a1);
  if (a3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = 0;
    }

    Hasher._combine(_:)(v6);
  }

  return Hasher._finalize()();
}

uint64_t Timeline.init(from:)(void *a1)
{
  result = sub_100885690(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1008817F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100885690(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

void sub_100881854(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_100884BBC(a1, v2);
  if (v4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    Hasher._combine(_:)(v5);
  }
}

Swift::Int sub_1008818B8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  sub_100884BBC(v6, v1);
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    Hasher._combine(_:)(v4);
  }

  return Hasher._finalize()();
}

uint64_t sub_10088193C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (sub_100881150(*a1, *a2))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v7 = v5;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t MPCPlaybackIntent.PlayActivityInformation.featureName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Keyframe.to.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return result;
}

uint64_t Track.keyframes.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Track.init(propertyName:defaultValue:keyframes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = &_swiftEmptyArrayStorage;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  if (a6)
  {
    v7 = a6;
  }

  *(a7 + 32) = a5;
  *(a7 + 40) = v7;
  return result;
}

Swift::Double __swiftcall Track.timeOffset(at:)(Swift::Int at)
{
  if (at < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = *(v1 + 40);
  if (*(v3 + 16) < at)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (!at)
  {
    return 0.0;
  }

  if (at == 1)
  {
    v4 = 0;
    result = 0.0;
LABEL_10:
    v9 = at - v4;
    v10 = (v3 + 48 * v4 + 32);
    do
    {
      v11 = *v10;
      v10 += 6;
      result = result + v11;
      --v9;
    }

    while (v9);
    return result;
  }

  v4 = at & 0x7FFFFFFFFFFFFFFELL;
  v5 = (v3 + 80);
  result = 0.0;
  v6 = at & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v7 = *(v5 - 6);
    v8 = *v5;
    v5 += 12;
    result = result + v7 + v8;
    v6 -= 2;
  }

  while (v6);
  if (v4 != at)
  {
    goto LABEL_10;
  }

  return result;
}

unint64_t sub_100881B24(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, double a8)
{
  v16 = type metadata accessor for Spring();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a7 == 2)
      {
        v41 = a1;
        v42 = a2;
        v39 = a5;
        v40 = a6;
        v37 = 0;
        v38 = 0;
        if ((a4 & 0x100000000) != 0)
        {
          if (!a4)
          {
            v33.i32[1] = HIDWORD(a5);
            v34 = 0.0;
            if (a8 >= 0.0)
            {
              v34 = a8;
            }

            v35 = fmin(v34, 1.0);
            v33.i32[0] = a5;
            return vadd_f32(vmul_n_f32(vsub_f32(v33, a1), v35), a1);
          }
        }

        else
        {
          v21 = v18;
          Spring.init(settlingDuration:dampingRatio:epsilon:)();
          sub_10010FC20(&qword_1011A5650);
          sub_100020674(&qword_1011A5918, &qword_1011A5650);
          Spring.value<A>(fromValue:toValue:initialVelocity:time:)();
          (*(v17 + 8))(v20, v21);
          return v36;
        }
      }
    }

    else if (a7 == 3)
    {
      v41 = a1;
      v42 = a2;
      v39 = a5;
      v40 = a6;
      v37 = 0;
      v38 = 0;
      if ((a4 & 0x100000000) != 0)
      {
        if (!a4)
        {
          v26.i32[1] = HIDWORD(a5);
          v26.i64[1] = a6;
          v27 = 0.0;
          if (a8 >= 0.0)
          {
            v27 = a8;
          }

          v28.i64[1] = a2;
          v29 = fmin(v27, 1.0);
          v26.i32[0] = a5;
          v28.i64[0] = a1;
          return vaddq_f32(vmulq_n_f32(vsubq_f32(v26, v28), v29), v28).u64[0];
        }
      }

      else
      {
        v23 = v18;
        Spring.init(settlingDuration:dampingRatio:epsilon:)();
        sub_10010FC20(&qword_1011A50D0);
        sub_100020674(&qword_1011A5910, &qword_1011A50D0);
        Spring.value<A>(fromValue:toValue:initialVelocity:time:)();
        (*(v17 + 8))(v20, v23);
        return v36;
      }
    }
  }

  else if (a3)
  {
    if (a7 == 1)
    {
      v41 = a1;
      v39 = a5;
      v37 = 0;
      if ((a4 & 0x100000000) != 0)
      {
        if (!a4)
        {
          v24 = 0.0;
          if (a8 >= 0.0)
          {
            v24 = a8;
          }

          v25 = fmin(v24, 1.0);
          return vadd_f32(vmul_n_f32(vsub_f32(a5, a1), v25), a1);
        }
      }

      else
      {
        v22 = v18;
        Spring.init(settlingDuration:dampingRatio:epsilon:)();
        sub_10010FC20(&qword_1011A5668);
        sub_100020674(&qword_1011A5920, &qword_1011A5668);
        Spring.value<A>(fromValue:toValue:initialVelocity:time:)();
        (*(v17 + 8))(v20, v22);
        return v36;
      }
    }
  }

  else if (!a7)
  {
    LODWORD(v41) = a1;
    LODWORD(v39) = a5;
    LODWORD(v37) = 0;
    if ((a4 & 0x100000000) != 0)
    {
      if (!a4)
      {
        v30 = fmin(a8, 1.0);
        if (a8 < 0.0)
        {
          v30 = 0.0;
        }

        v31 = v30;
        *&a5 = ((*&a5 - *&a1) * v31) + *&a1;
      }
    }

    else
    {
      a5 = v18;
      Spring.init(settlingDuration:dampingRatio:epsilon:)();
      sub_100888D54();
      Spring.value<A>(fromValue:toValue:initialVelocity:time:)();
      (*(v17 + 8))(v20, a5);
      LODWORD(a5) = v36;
    }

    return a5;
  }

  return a5;
}

uint64_t sub_100882048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 1u)
  {
    if (a6 == 2)
    {
      result = sub_10087A7A4(a2, a3);
      if (v6)
      {
        return result;
      }

      v8 = &unk_1011A5118;
    }

    else
    {
      result = sub_10087A7A4(a2, a3);
      if (v6)
      {
        return result;
      }

      v8 = &unk_1011A5110;
    }

    sub_10010FC20(v8);
    if (swift_dynamicCastClass())
    {
      goto LABEL_15;
    }
  }

  else if (a6)
  {
    result = sub_10087A7A4(a2, a3);
    if (v6)
    {
      return result;
    }

    sub_10010FC20(&qword_1011A5120);
    if (swift_dynamicCastClass())
    {
      goto LABEL_15;
    }
  }

  else
  {
    result = sub_10087A7A4(a2, a3);
    if (v6)
    {
      return result;
    }

    sub_10010FC20(&qword_1011A5128);
    if (swift_dynamicCastClass())
    {
LABEL_15:
      swift_setAtWritableKeyPath();
    }
  }

  sub_10087C654();
  swift_allocError();
  *v9 = 0;
  return swift_willThrow();
}

unint64_t sub_1008821FC()
{
  result = qword_1011A5558;
  if (!qword_1011A5558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5558);
  }

  return result;
}

unint64_t sub_100882250()
{
  result = qword_1011A5570;
  if (!qword_1011A5570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A5570);
  }

  return result;
}

uint64_t sub_1008822A4()
{
  v1 = 0x56746C7561666564;
  if (*v0 != 1)
  {
    v1 = 0x656D61726679656BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79747265706F7270;
  }
}

uint64_t sub_100882314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100885A38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10088233C(uint64_t a1)
{
  v2 = sub_1008858C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100882378(uint64_t a1)
{
  v2 = sub_1008858C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static Track.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || !_s7Panache8KeyframeV5ValueO21__derived_enum_equalsySbAE_AEtFZ_0(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a2 + 16), *(a2 + 24), *(a2 + 32)))
  {
    return 0;
  }

  v5 = *(a1 + 40);
  v6 = *(a2 + 40);

  return sub_10088132C(v5, v6);
}

uint64_t Track.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10010FC20(&qword_1011A55A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000954C(a1, a1[3]);
  sub_1008858C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 16);
    v13 = *(v3 + 32);
    v11 = 1;
    sub_100885918();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v12 = *(v3 + 40);
    v11 = 2;
    sub_10010FC20(&qword_1011A55B8);
    sub_10088596C(&qword_1011A55C0, sub_1008859E4);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void Track.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  Keyframe.Value.hash(into:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
  v3 = *(v1 + 40);

  sub_100884D9C(a1, v3);
}

Swift::Int Track.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Keyframe.Value.hash(into:)(v2, *(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_100884D9C(v2, *(v0 + 40));
  return Hasher._finalize()();
}

double Track.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100885B60(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

Swift::Int sub_100882750()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Keyframe.Value.hash(into:)(v6, v1, v2, v4);
  sub_100884D9C(v6, v3);
  return Hasher._finalize()();
}

void sub_1008827D8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);
  v6 = *(v1 + 32);
  String.hash(into:)();
  Keyframe.Value.hash(into:)(a1, v3, v4, v6);

  sub_100884D9C(a1, v5);
}

Swift::Int sub_100882848()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Keyframe.Value.hash(into:)(v6, v1, v2, v4);
  sub_100884D9C(v6, v3);
  return Hasher._finalize()();
}

uint64_t sub_1008828CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || !_s7Panache8KeyframeV5ValueO21__derived_enum_equalsySbAE_AEtFZ_0(v2, v3, v4, v6, v7, v8))
  {
    return 0;
  }

  return sub_10088132C(v5, v9);
}

uint64_t Keyframe.curve.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t Keyframe.init(duration:curve:to:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = a6;
  *(a5 + 8) = result;
  *(a5 + 12) = BYTE4(result) & 1;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return result;
}

uint64_t sub_1008829F4()
{
  v1 = 0x74616F6C66;
  v2 = 0x3374616F6C66;
  if (*v0 != 2)
  {
    v2 = 0x3474616F6C66;
  }

  if (*v0)
  {
    v1 = 0x3274616F6C66;
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

uint64_t sub_100882A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100885F48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100882A84(uint64_t a1)
{
  v2 = sub_100886874();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100882AC0(uint64_t a1)
{
  v2 = sub_100886874();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100882B08(uint64_t a1)
{
  v2 = sub_100886970();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100882B44(uint64_t a1)
{
  v2 = sub_100886970();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100882B80(uint64_t a1)
{
  v2 = sub_10088691C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100882BBC(uint64_t a1)
{
  v2 = sub_10088691C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100882BF8(uint64_t a1)
{
  v2 = sub_1008868C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100882C34(uint64_t a1)
{
  v2 = sub_1008868C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100882C70(uint64_t a1)
{
  v2 = sub_1008869C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100882CAC(uint64_t a1)
{
  v2 = sub_1008869C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void Keyframe.Value.hash(into:)(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    v7.n128_u64[0] = a2;
    v7.n128_u64[1] = a3;
    if (a4 == 2)
    {
      v10 = v7;
      Hasher._combine(_:)(2uLL);

      sub_100885038(v10);
    }

    else
    {
      v11 = v7;
      Hasher._combine(_:)(3uLL);

      sub_100884FA8(v11);
    }
  }

  else
  {
    if (a4)
    {
      Hasher._combine(_:)(1uLL);
      v8 = *&a2;
      if (*&a2 == 0.0)
      {
        v8 = 0.0;
      }

      Hasher._combine(_:)(LODWORD(v8));
      v9 = *(&a2 + 1);
      if (*(&a2 + 1) == 0.0)
      {
        v9 = 0.0;
      }

      v6 = LODWORD(v9);
    }

    else
    {
      Hasher._combine(_:)(0);
      if ((a2 & 0x7FFFFF) == 0 && (a2 & 0x7F800000) == 0)
      {
        v6 = 0;
      }

      else
      {
        v6 = a2;
      }
    }

    Hasher._combine(_:)(v6);
  }
}

Swift::Int Keyframe.Value.hashValue.getter(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  Hasher.init(_seed:)();
  Keyframe.Value.hash(into:)(v7, a1, a2, a3);
  return Hasher._finalize()();
}

Swift::Int sub_100882E64()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Keyframe.Value.hash(into:)(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int sub_100882ECC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Keyframe.Value.hash(into:)(v5, v1, v2, v3);
  return Hasher._finalize()();
}

uint64_t sub_100882F40()
{
  v1 = 0x676E69727073;
  if (*v0 != 1)
  {
    v1 = 1684828008;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7261656E696CLL;
  }
}

uint64_t sub_100882F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10088609C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100882FB4(uint64_t a1)
{
  v2 = sub_100885DF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100882FF0(uint64_t a1)
{
  v2 = sub_100885DF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100883038(uint64_t a1)
{
  v2 = sub_100885E4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100883074(uint64_t a1)
{
  v2 = sub_100885E4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008830B0(uint64_t a1)
{
  v2 = sub_100885EF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008830EC(uint64_t a1)
{
  v2 = sub_100885EF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100883128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1008831A8(uint64_t a1)
{
  v2 = sub_100885EA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008831E4(uint64_t a1)
{
  v2 = sub_100885EA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static Keyframe.Curve.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *&a1 == *&a2;
  if ((a2 & &_mh_execute_header) != 0)
  {
    v2 = 0;
  }

  v3 = BYTE4(a2) & (a2 != 0);
  if (!a1)
  {
    v3 = BYTE4(a2) & (a2 == 0);
  }

  if ((a1 & &_mh_execute_header) != 0)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

void Keyframe.Curve.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0x100000000) != 0)
  {
    if (a2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    Hasher._combine(_:)(v5);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    if ((v2 & 0x7FFFFF) == 0 && (v2 & 0x7F800000) == 0)
    {
      v4 = 0;
    }

    else
    {
      v4 = v2;
    }

    Hasher._combine(_:)(v4);
  }
}

Swift::Int Keyframe.Curve.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  if ((a1 & 0x100000000) != 0)
  {
    if (a1)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    Hasher._combine(_:)(v4);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    if ((a1 & 0x7FFFFF) == 0 && (a1 & 0x7F800000) == 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = a1;
    }

    Hasher._combine(_:)(v3);
  }

  return Hasher._finalize()();
}

Swift::Int sub_100883380()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  Hasher.init(_seed:)();
  Keyframe.Curve.hash(into:)(v4, v1 | (v2 << 32));
  return Hasher._finalize()();
}

uint64_t sub_1008833D0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = LODWORD(v3) == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 4);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100883424()
{
  v1 = 0x6576727563;
  if (*v0 != 1)
  {
    v1 = 28532;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697461727564;
  }
}

uint64_t sub_100883470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1008861AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100883498(uint64_t a1)
{
  v2 = sub_100887314();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008834D4(uint64_t a1)
{
  v2 = sub_100887314();

  return CodingKey.debugDescription.getter(a1, v2);
}

void Keyframe.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if (*v2 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  v5 = *(v2 + 8);
  if (*(v2 + 12))
  {
    if (v5)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    Hasher._combine(_:)(v6);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    if ((v5 & 0x7FFFFFFF) != 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    Hasher._combine(_:)(v7);
  }

  v8 = *(v2 + 32);
  if (v8 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v11 = v2 + 16;
    v9 = *(v2 + 16);
    v10 = *(v11 + 8);
    Hasher._combine(_:)(1u);

    Keyframe.Value.hash(into:)(a1, v9, v10, v8);
  }
}

Swift::Int Keyframe.hashValue.getter()
{
  Hasher.init(_seed:)();
  Keyframe.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100883624()
{
  Hasher.init(_seed:)();
  Keyframe.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100883660(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s7Panache8KeyframeV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t Keyframe.Curve.encode(to:)(void *a1, uint64_t a2)
{
  v25 = a2;
  v3 = sub_10010FC20(&qword_1011A55D0);
  v22 = *(v3 - 8);
  v23 = v3;
  __chkstk_darwin(v3);
  v21 = &v18 - v4;
  v5 = sub_10010FC20(&qword_1011A55D8);
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_10010FC20(&qword_1011A55E0);
  v19 = *(v8 - 8);
  v20 = v8;
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_10010FC20(&qword_1011A55E8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_10000954C(a1, a1[3]);
  sub_100885DF8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if ((v25 & 0x100000000) != 0)
  {
    if (v25)
    {
      v28 = 2;
      sub_100885E4C();
      v10 = v21;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v17 = v22;
      v16 = v23;
    }

    else
    {
      v26 = 0;
      sub_100885EF4();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v17 = v19;
      v16 = v20;
    }

    (*(v17 + 8))(v10, v16);
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v27 = 1;
    sub_100885EA0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v24 + 8))(v7, v5);
    return (*(v12 + 8))(v14, v11);
  }
}