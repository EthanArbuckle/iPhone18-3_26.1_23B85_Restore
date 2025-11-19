void **sub_100039C90(unint64_t a1)
{
  v2 = type metadata accessor for Note();
  v3 = *(v2 - 8);
  name = v3[4].name;
  __chkstk_darwin(v2 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000968F0 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v7 = sub_100007DF0(&qword_100097FE0, &qword_1000755A8);
    sub_10000CEB8(v7, qword_100098380);
    swift_beginAccess();
    sub_10006A620();
    v8 = v40;
    swift_endAccess();
    if (!v8)
    {
      return v8;
    }

    v38 = v6;
    v39 = v3;
    v9 = [v8 allVisibleNotesInCollection:a1 sorted:1];

    if (!v9)
    {
      goto LABEL_67;
    }

    v6 = sub_10006B320();

    v43 = &_swiftEmptyArrayStorage;
    v10 = *(v6 + 2);
    if (v10)
    {
      v11 = (v6 + 32);
      a1 = &_swiftEmptyArrayStorage;
      do
      {
        sub_100037E6C(v11, v42);
        sub_10003AD74(v42, &v40);
        sub_10000D894(0, &qword_100098008, NoteObject_ptr);
        if ((swift_dynamicCast() & 1) != 0 && v41)
        {
          v8 = &v43;
          sub_10006B300();
          if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v12 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_10006B330();
          }

          sub_10006B340();
          a1 = v43;
        }

        v11 += 32;
        --v10;
      }

      while (v10);
    }

    else
    {

      a1 = &_swiftEmptyArrayStorage;
    }

    *&v42[0] = &_swiftEmptyArrayStorage;
    if (a1 >> 62)
    {
      v13 = sub_10006B4F0();
      if (!v13)
      {
LABEL_30:

        v9 = *&v42[0];
        LODWORD(v3) = *&v42[0] < 0 || (*&v42[0] & 0x4000000000000000) != 0;
        if (v3 == 1)
        {
          goto LABEL_62;
        }

        v19 = *(*&v42[0] + 16);
        if (v19 >= 0x10)
        {
          v20 = 16;
        }

        else
        {
          v20 = *(*&v42[0] + 16);
        }

        while (2)
        {
          v22 = v38;
          v21 = v39;
          if (v19 < v20)
          {
LABEL_64:
            __break(1u);
          }

          else
          {
            if ((v9 & 0xC000000000000001) != 0 && v20)
            {
              v8 = sub_10000D894(0, &qword_100098008, NoteObject_ptr);

              v23 = 0;
              do
              {
                v24 = v23 + 1;
                sub_10006B470(v23);
                v23 = v24;
              }

              while (v20 != v24);
            }

            else
            {
            }

            if (v3)
            {
              v8 = sub_10006B500();
              v26 = v25;
              v28 = v27;
              v30 = v29;

              v20 = v30 >> 1;
              v9 = v8;
            }

            else
            {
              v28 = 0;
              v26 = v9 + 32;
            }

            v31 = v20 - v28;
            if (!__OFSUB__(v20, v28))
            {
              if (!v31)
              {
                swift_unknownObjectRelease();
                return &_swiftEmptyArrayStorage;
              }

              *&v42[0] = &_swiftEmptyArrayStorage;
              v8 = v42;
              sub_100037FD8(0, v31 & ~(v31 >> 63), 0);
              if ((v31 & 0x8000000000000000) == 0)
              {
                v8 = *&v42[0];
                if (v20 <= v28)
                {
                  v32 = v28;
                }

                else
                {
                  v32 = v20;
                }

                v3 = (v32 - v28);
                v33 = &v26[8 * v28];
                while (v3)
                {
                  sub_10002E110(*v33, v22);
                  *&v42[0] = v8;
                  v35 = v8[2];
                  v34 = v8[3];
                  if (v35 >= v34 >> 1)
                  {
                    sub_100037FD8(v34 > 1, v35 + 1, 1);
                    v8 = *&v42[0];
                  }

                  v8[2] = (v35 + 1);
                  sub_10003AF30(v22, v8 + ((LOBYTE(v21[5].name) + 32) & ~LOBYTE(v21[5].name)) + v21[4].attr * v35, type metadata accessor for Note);
                  v3 = (v3 - 1);
                  ++v33;
                  if (!--v31)
                  {
                    swift_unknownObjectRelease();
                    return v8;
                  }
                }

                __break(1u);
LABEL_62:
                v8 = sub_10006B4F0();
                if (sub_10006B4F0() < 0)
                {
                  __break(1u);
                  goto LABEL_64;
                }

LABEL_68:
                if (v8 >= 0x10)
                {
                  v37 = 16;
                }

                else
                {
                  v37 = v8;
                }

                if (v8 >= 0)
                {
                  v20 = v37;
                }

                else
                {
                  v20 = 16;
                }

                v19 = sub_10006B4F0();
                continue;
              }

LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
              goto LABEL_68;
            }
          }

          break;
        }

        __break(1u);
        goto LABEL_66;
      }
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_30;
      }
    }

    v14 = 0;
    v3 = &stru_100095000;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = sub_10006B480();
      }

      else
      {
        if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v16 = *(a1 + 8 * v14 + 32);
      }

      v17 = v16;
      v6 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v8 = [objc_opt_self() sharedWidget];
      v18 = [v8 hidesObject:v17];

      if (v18)
      {
      }

      else
      {
        v8 = v42;
        sub_10006B4A0();
        v15 = *(*&v42[0] + 16);
        sub_10006B4D0();
        sub_10006B4E0();
        sub_10006B4B0();
      }

      ++v14;
      if (v6 == v13)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }
}

size_t sub_10003A23C(void *a1)
{
  v2 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v109 = &v99 - v7;
  v8 = sub_100007DF0(&qword_100097C70, &qword_100076A60);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v126 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v99 - v13;
  __chkstk_darwin(v12);
  v108 = &v99 - v15;
  v107 = type metadata accessor for Note();
  v106 = *(v107 - 8);
  v16 = *(v106 + 64);
  __chkstk_darwin(v107);
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = [a1 managedObjectContext];
  if (!v99)
  {
    return 0;
  }

  v104 = v14;
  v19 = [a1 predicateForVisibleNotes];
  v125 = objc_opt_self();
  isa = [v125 sortDescriptorsForCurrentTypeIncludingPinnedNotes:0];
  if (!isa)
  {
    sub_10000D894(0, &qword_100097FF8, NSSortDescriptor_ptr);
    sub_10006B320();
    isa = sub_10006B310().super.isa;
  }

  v105 = v6;
  sub_10000D894(0, &qword_100097C80, ICNote_ptr);
  v21 = [swift_getObjCClassFromMetadata() ic_objectsMatchingPredicate:v19 sortDescriptors:isa relationshipKeyPathsForPrefetching:0 fetchLimit:16 context:v99];

  sub_10000D894(0, &qword_100097C88, NSManagedObject_ptr);
  v22 = sub_10006B320();

  v127 = &_swiftEmptyArrayStorage;
  v23 = v22 & 0xFFFFFFFFFFFFFF8;
  if (v22 >> 62)
  {
    goto LABEL_76;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10006B4F0())
  {
    v25 = &_swiftEmptyArrayStorage;
    if (i)
    {
      v26 = 0;
      do
      {
        v27 = v26;
        while (1)
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v28 = sub_10006B480();
          }

          else
          {
            if (v27 >= *(v23 + 16))
            {
              goto LABEL_73;
            }

            v28 = *(v22 + 8 * v27 + 32);
          }

          v29 = v28;
          v26 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            __break(1u);
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v27;
          if (v26 == i)
          {
            goto LABEL_20;
          }
        }

        sub_10006B300();
        if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v30 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_10006B330();
        }

        sub_10006B340();
        v25 = v127;
      }

      while (v26 != i);
    }

LABEL_20:

    v127 = &_swiftEmptyArrayStorage;
    v22 = v25 >> 62 ? sub_10006B4F0() : *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = &_swiftEmptyArrayStorage;
    if (!v22)
    {
      break;
    }

    v32 = 0;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v33 = sub_10006B480();
      }

      else
      {
        if (v32 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_75;
        }

        v33 = *(v25 + 8 * v32 + 32);
      }

      v34 = v33;
      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      v36 = [objc_opt_self() sharedWidget];
      v23 = [v36 hidesObject:v34];

      if (v23)
      {
      }

      else
      {
        sub_10006B4A0();
        v23 = *(v127 + 16);
        sub_10006B4D0();
        sub_10006B4E0();
        sub_10006B4B0();
      }

      ++v32;
      if (v35 == v22)
      {
        v37 = v127;
        v31 = &_swiftEmptyArrayStorage;
        goto LABEL_36;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    ;
  }

  v37 = &_swiftEmptyArrayStorage;
LABEL_36:

  if ((v37 & 0x8000000000000000) == 0 && (v37 & 0x4000000000000000) == 0)
  {
    v38 = *(v37 + 16);
    if (v38)
    {
      goto LABEL_39;
    }

    goto LABEL_79;
  }

  v38 = sub_10006B4F0();
  if (!v38)
  {
LABEL_79:

    return v31;
  }

LABEL_39:
  v127 = &_swiftEmptyArrayStorage;
  result = sub_100037FD8(0, v38 & ~(v38 >> 63), 0);
  if ((v38 & 0x8000000000000000) == 0)
  {
    v31 = v127;
    v101 = v37 & 0xC000000000000001;
    v40 = objc_opt_self();
    v41 = v37;
    v100 = v40;
    v42 = 0;
    v103 = v41;
    v102 = v38;
    do
    {
      v124 = v31;
      if (v101)
      {
        v43 = sub_10006B480();
      }

      else
      {
        v43 = *(v41 + 8 * v42 + 32);
      }

      v44 = v43;
      v45 = v104;
      v46 = [v43 identifier];
      if (v46)
      {
        v47 = v46;
        v48 = sub_10006B290();
        v121 = v49;
        v122 = v48;
      }

      else
      {
        v121 = 0xE000000000000000;
        v122 = 0;
      }

      v50 = [v44 title];
      if (v50)
      {
        v51 = v50;
        v52 = sub_10006B290();
        v119 = v53;
        v120 = v52;
      }

      else
      {
        v119 = 0xE000000000000000;
        v120 = 0;
      }

      v54 = [v44 widgetInfoText];
      v55 = sub_10006B290();
      v117 = v56;
      v118 = v55;

      v57 = [v125 dateForCurrentSortTypeForNote:v44 folderNoteSortType:0];
      if (v57)
      {
        v58 = v57;
        sub_10006A540();

        v59 = 0;
      }

      else
      {
        v59 = 1;
      }

      v60 = sub_10006A560();
      v61 = *(v60 - 8);
      v62 = *(v61 + 56);
      v62(v45, v59, 1, v60);
      v63 = v45;
      v64 = v108;
      sub_1000096C0(v63, v108, &qword_100097C70, &qword_100076A60);
      if ((*(v61 + 48))(v64, 1, v60) == 1)
      {
        sub_100009790(v64, &qword_100097C70, &qword_100076A60);
        v115 = 0xE000000000000000;
        v116 = 0;
      }

      else
      {
        v65 = sub_10006A530();
        v115 = v66;
        v116 = v65;
        (*(v61 + 8))(v64, v60);
      }

      v67 = v126;
      v68 = [v125 dateForCurrentSortTypeAccessibilityStringForNote:v44 folderNoteSortType:0];
      if (v68)
      {
        v69 = v68;
        v70 = sub_10006B290();
        v113 = v71;
        v114 = v70;
      }

      else
      {
        v113 = 0xE000000000000000;
        v114 = 0;
      }

      v112 = [v44 isSharedViaICloud];
      v72 = [v44 modificationDate];
      if (v72)
      {
        v73 = v72;
        sub_10006A540();

        v74 = 0;
      }

      else
      {
        v74 = 1;
      }

      v62(v67, v74, 1, v60);
      v75 = [v44 shareDescription];
      if (v75)
      {
        v76 = v75;
        v77 = sub_10006B290();
        v110 = v78;
        v111 = v77;
      }

      else
      {
        v110 = 0;
        v111 = 0;
      }

      v79 = v105;
      v80 = [v100 appURLForNote:v44];
      v123 = v42;
      if (v80)
      {
        v81 = v80;
        sub_10006A4F0();

        v82 = 0;
      }

      else
      {
        v82 = 1;
      }

      v83 = sub_10006A520();
      (*(*(v83 - 8) + 56))(v79, v82, 1, v83);
      v84 = v109;
      sub_1000096C0(v79, v109, &qword_100096B30, &qword_10006F548);
      v85 = sub_1000301BC(v44);
      v86 = sub_1000306D4(v44);
      v87 = sub_1000306D4(v44);
      v88 = [v44 ic_hasLightBackground];
      v89 = v121;
      *v18 = v122;
      *(v18 + 1) = v89;
      v90 = v119;
      *(v18 + 2) = v120;
      *(v18 + 3) = v90;
      v91 = v117;
      *(v18 + 4) = v118;
      *(v18 + 5) = v91;
      v92 = v115;
      *(v18 + 6) = v116;
      *(v18 + 7) = v92;
      v93 = v113;
      *(v18 + 8) = v114;
      *(v18 + 9) = v93;
      v18[80] = v112;
      v94 = v107;
      sub_1000096C0(v126, &v18[*(v107 + 40)], &qword_100097C70, &qword_100076A60);
      v95 = &v18[v94[11]];
      v96 = v110;
      *v95 = v111;
      *(v95 + 1) = v96;
      sub_1000096C0(v84, &v18[v94[12]], &qword_100096B30, &qword_10006F548);
      *&v18[v94[13]] = v85;
      *&v18[v94[14]] = &_swiftEmptyArrayStorage;
      *&v18[v94[15]] = v86;
      *&v18[v94[16]] = v87;
      v18[v94[17]] = v88;
      [v44 turnAttachmentsIntoFaults];

      v31 = v124;
      v127 = v124;
      v98 = v124[2];
      v97 = v124[3];
      if (v98 >= v97 >> 1)
      {
        sub_100037FD8(v97 > 1, v98 + 1, 1);
        v31 = v127;
      }

      v42 = v123 + 1;
      v31[2] = v98 + 1;
      sub_10003AF30(v18, v31 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v98, type metadata accessor for Note);
      v41 = v103;
    }

    while (v102 != v42);

    return v31;
  }

  __break(1u);
  return result;
}

_OWORD *sub_10003AD74(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10003AD84()
{
  v1 = sub_10006B200();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003AE50(uint64_t a1)
{
  v3 = *(*(sub_10006B200() - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];

  return sub_1000354C0(a1, v4);
}

uint64_t sub_10003AEC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003AF30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003AF98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003B00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_100007DF0(&qword_100096A58, &unk_100075C30);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_10003B144(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100007DF0(&qword_100096A58, &unk_100075C30);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for NoteWidgetView()
{
  result = qword_100098070;
  if (!qword_100098070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003B2B4()
{
  sub_10003B3B8(319, &qword_1000969B8, type metadata accessor for Note, type metadata accessor for ObjectStates);
  if (v0 <= 0x3F)
  {
    sub_10003B3B8(319, &unk_100096AE0, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10003B41C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003B3B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10003B41C()
{
  if (!qword_100096AD0)
  {
    v0 = sub_10006A750();
    if (!v1)
    {
      atomic_store(v0, &qword_100096AD0);
    }
  }
}

uint64_t sub_10003B488()
{
  v1 = sub_10006A950();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for NoteWidgetView() + 24);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_10006B3B0();
    v8 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();
    sub_1000096B4(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_10003B5E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v123 = a1;
  v3 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v121 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v122 = &v94 - v7;
  v8 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v120 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v117 = &v94 - v13;
  __chkstk_darwin(v12);
  v116 = &v94 - v14;
  v106 = type metadata accessor for Note();
  v115 = *(v106 - 8);
  v15 = *(v115 + 64);
  v16 = __chkstk_darwin(v106);
  v97 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v96 = &v94 - v19;
  __chkstk_darwin(v18);
  v95 = &v94 - v20;
  v124 = sub_10006AAB0();
  v114 = *(v124 - 8);
  v21 = *(v114 + 64);
  __chkstk_darwin(v124);
  v111 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_10006AB00();
  v107 = *(v109 - 8);
  v23 = *(v107 + 64);
  __chkstk_darwin(v109);
  v105 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_10006A9D0();
  v99 = *(v102 - 8);
  v25 = *(v99 + 64);
  __chkstk_darwin(v102);
  v27 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10006ABF0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100007DF0(&qword_1000980B0, &qword_100075660);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v36 = &v94 - v35;
  v101 = sub_100007DF0(&qword_1000980B8, &qword_100075668);
  v103 = *(v101 - 8);
  v37 = *(v103 + 64);
  __chkstk_darwin(v101);
  v39 = &v94 - v38;
  v100 = sub_100007DF0(&qword_1000980C0, &qword_100075670);
  v104 = *(v100 - 8);
  v40 = *(v104 + 64);
  __chkstk_darwin(v100);
  v42 = &v94 - v41;
  v110 = sub_100007DF0(&qword_1000980C8, &qword_100075678);
  v108 = *(v110 - 8);
  v43 = *(v108 + 64);
  __chkstk_darwin(v110);
  v98 = &v94 - v44;
  v126 = sub_100007DF0(&qword_1000980D0, &qword_100075680);
  v45 = *(*(v126 - 8) + 64);
  v46 = __chkstk_darwin(v126);
  v112 = &v94 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v113 = &v94 - v48;
  v49 = sub_100007DF0(&qword_1000980D8, &qword_100075688);
  v118 = *(v49 - 8);
  v119 = v49;
  v50 = *(v118 + 64);
  __chkstk_darwin(v49);
  v125 = &v94 - v51;
  *v36 = sub_10006A9F0();
  *(v36 + 1) = 0;
  v36[16] = 0;
  v52 = sub_100007DF0(&qword_1000980E0, &qword_100075690);
  sub_10003C46C(v2, &v36[*(v52 + 44)]);
  (*(v29 + 104))(v32, enum case for Font.TextStyle.footnote(_:), v28);
  v53 = sub_10006AB90();
  (*(v29 + 8))(v32, v28);
  KeyPath = swift_getKeyPath();
  v55 = &v36[*(v33 + 36)];
  *v55 = KeyPath;
  v55[1] = v53;
  v56 = v99;
  v57 = v102;
  (*(v99 + 104))(v27, enum case for ContentSizeCategory.extraExtraExtraLarge(_:), v102);
  v58 = sub_10003EEFC();
  sub_10006ACD0();
  (*(v56 + 8))(v27, v57);
  sub_100009790(v36, &qword_1000980B0, &qword_100075660);
  v59 = v105;
  sub_10006AAF0();
  sub_10006AFB0();
  v127 = v33;
  v128 = v58;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = v100;
  v62 = v101;
  sub_10006AD80();
  (*(v107 + 8))(v59, v109);
  (*(v103 + 8))(v39, v62);
  v63 = v111;
  sub_10006AA90();
  v127 = v62;
  v128 = &type metadata for Color;
  v129 = OpaqueTypeConformance2;
  v130 = &protocol witness table for Color;
  v64 = v98;
  v65 = swift_getOpaqueTypeConformance2();
  sub_10006AD90();
  v66 = v116;
  (*(v114 + 8))(v63, v124);
  v67 = v42;
  v68 = v115;
  (*(v104 + 8))(v67, v61);
  v124 = v2;
  sub_100009728(v2, v66, &qword_100096948, &qword_1000751E0);
  v69 = *(v68 + 48);
  v70 = v106;
  if (!v69(v66, 2))
  {
    v71 = v64;
    v72 = v95;
    sub_10003F5BC(v66, v95, type metadata accessor for Note);
    sub_100065AC4();
    v73 = v72;
    v64 = v71;
    sub_100030A4C(v73);
  }

  v127 = v61;
  v128 = v65;
  swift_getOpaqueTypeConformance2();
  v74 = v112;
  v75 = v110;
  sub_10006AD30();

  (*(v108 + 8))(v64, v75);
  v76 = v117;
  sub_100009728(v124, v117, &qword_100096948, &qword_1000751E0);
  if (!(v69)(v76, 2, v70))
  {
    v77 = v96;
    sub_10003F5BC(v76, v96, type metadata accessor for Note);
    v79 = *(v77 + 32);
    v78 = *(v77 + 40);

    sub_100030A4C(v77);
  }

  v80 = v113;
  sub_10006A7D0();

  sub_100009790(v74, &qword_1000980D0, &qword_100075680);
  v81 = sub_10003EFE0();
  sub_10006AD60();
  sub_100009790(v80, &qword_1000980D0, &qword_100075680);
  v82 = v120;
  sub_100009728(v124, v120, &qword_100096948, &qword_1000751E0);
  if ((v69)(v82, 2, v70))
  {
    v83 = sub_10006A520();
    v84 = v121;
    (*(*(v83 - 8) + 56))(v121, 1, 1, v83);
    v85 = v122;
  }

  else
  {
    v86 = v82;
    v87 = v97;
    sub_10003F5BC(v86, v97, type metadata accessor for Note);
    v84 = v121;
    sub_100009728(v87 + *(v70 + 48), v121, &qword_100096B30, &qword_10006F548);
    sub_100030A4C(v87);
    v83 = sub_10006A520();
    v88 = *(v83 - 8);
    v89 = (*(v88 + 48))(v84, 1, v83);
    v85 = v122;
    if (v89 != 1)
    {
      (*(v88 + 32))(v122, v84, v83);
      goto LABEL_11;
    }
  }

  v90 = [objc_opt_self() appURLForFolderList];
  sub_10006A4F0();

  sub_10006A520();
  if ((*(*(v83 - 8) + 48))(v84, 1, v83) != 1)
  {
    sub_100009790(v84, &qword_100096B30, &qword_10006F548);
  }

LABEL_11:
  sub_10006A520();
  (*(*(v83 - 8) + 56))(v85, 0, 1, v83);
  v127 = v126;
  v128 = v81;
  swift_getOpaqueTypeConformance2();
  v91 = v119;
  v92 = v125;
  sub_10006ACF0();
  sub_100009790(v85, &qword_100096B30, &qword_10006F548);
  return (*(v118 + 8))(v92, v91);
}

uint64_t sub_10003C46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = sub_100007DF0(&qword_100096A58, &unk_100075C30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&KeyPath - v5);
  v7 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &KeyPath - v9;
  v11 = type metadata accessor for WidgetHeader();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = (&KeyPath - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v65 = &KeyPath - v17;
  v18 = sub_100007DF0(&qword_100098108, &qword_1000756D8);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v67 = &KeyPath - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &KeyPath - v22;
  v66 = a1;
  if (sub_10003B488())
  {
    v24 = sub_10006A520();
    (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
    KeyPath = swift_getKeyPath();
    *v6 = swift_getKeyPath();
    sub_100007DF0(&qword_100096A40, &unk_10006F460);
    swift_storeEnumTagMultiPayload();
    v25 = objc_opt_self();
    v26 = -17.0;
    if ([v25 ic_isiPad])
    {
      v27 = -19.0;
    }

    else
    {
      v27 = -17.0;
    }

    if ([v25 ic_isiPad])
    {
      v26 = -18.0;
    }

    *v16 = swift_getKeyPath();
    sub_100007DF0(&qword_100098128, &qword_100075CE0);
    swift_storeEnumTagMultiPayload();
    v28 = v11[5];
    *(v16 + v28) = swift_getKeyPath();
    sub_100007DF0(&qword_100096A38, &qword_1000757C0);
    swift_storeEnumTagMultiPayload();
    v29 = v16 + v11[6];
    *v29 = KeyPath;
    v29[8] = 0;
    sub_1000096C0(v6, v16 + v11[7], &qword_100096A58, &unk_100075C30);
    sub_1000096C0(v10, v16 + v11[8], &qword_100096B30, &qword_10006F548);
    *(v16 + v11[9]) = 0;
    *(v16 + v11[10]) = xmmword_1000755D0;
    *(v16 + v11[11]) = 0;
    v30 = _UISolariumEnabled();
    v31 = 2.0;
    if (!v30)
    {
      v31 = 0.0;
    }

    *(v16 + v11[12]) = v31;
    v32 = _UISolariumEnabled();
    v33 = 4.0;
    if (v32)
    {
      v33 = 5.0;
    }

    *(v16 + v11[13]) = v33;
    v34 = _UISolariumEnabled();
    v35 = 0.125;
    if (!v34)
    {
      v35 = 0.0;
    }

    *(v16 + v11[14]) = v35;
    v36 = _UISolariumEnabled();
    v37 = 0.31;
    if (v36)
    {
      v37 = 0.25;
    }

    *(v16 + v11[15]) = v37;
    v38 = _UISolariumEnabled();
    v39 = -1.5;
    if (!v38)
    {
      v39 = 0.0;
    }

    *(v16 + v11[16]) = v39;
    *(v16 + v11[17]) = v27;
    *(v16 + v11[18]) = v26;
    v40 = v65;
    sub_10003F5BC(v16, v65, type metadata accessor for WidgetHeader);
    sub_10003F5BC(v40, v23, type metadata accessor for WidgetHeader);
    v41 = v23;
    (*(v12 + 56))(v23, 0, 1, v11);
  }

  else
  {
    v41 = v23;
    (*(v12 + 56))(v23, 1, 1, v11);
  }

  v65 = sub_10006A9F0();
  v83 = 0;
  sub_10003CC74(v66, &v73);
  v89 = *&v74[48];
  v90 = *&v74[64];
  v91 = *&v74[80];
  v92 = v74[96];
  v85 = v73;
  v86 = *v74;
  v87 = *&v74[16];
  v88 = *&v74[32];
  v93[0] = v73;
  v93[1] = *v74;
  v93[2] = *&v74[16];
  v93[3] = *&v74[32];
  v93[4] = *&v74[48];
  v93[5] = *&v74[64];
  v93[6] = *&v74[80];
  v94 = v74[96];
  sub_100009728(&v85, v69, &qword_100098110, &qword_1000756E0);
  sub_100009790(v93, &qword_100098110, &qword_1000756E0);
  *&v82[71] = v89;
  *&v82[87] = v90;
  *&v82[103] = v91;
  v82[119] = v92;
  *&v82[7] = v85;
  *&v82[23] = v86;
  *&v82[39] = v87;
  *&v82[55] = v88;
  v42 = v83;
  v43 = sub_10006AB40();
  if (sub_10003B488())
  {
    _UISolariumEnabled();
  }

  sub_10006A720();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v84 = 0;
  v52 = v67;
  sub_100009728(v41, v67, &qword_100098108, &qword_1000756D8);
  v53 = v68;
  sub_100009728(v52, v68, &qword_100098108, &qword_1000756D8);
  v54 = *(sub_100007DF0(&qword_100098118, &qword_1000756E8) + 48);
  *(&v70[4] + 1) = *&v82[64];
  *(&v70[5] + 1) = *&v82[80];
  *(&v70[6] + 1) = *&v82[96];
  *(&v70[1] + 1) = *&v82[16];
  *(&v70[2] + 1) = *&v82[32];
  v55 = (v53 + v54);
  v56 = v65;
  v69[0] = v65;
  v69[1] = 0;
  LOBYTE(v70[0]) = v42;
  *(&v70[7] + 1) = *&v82[112];
  *(&v70[3] + 1) = *&v82[48];
  *(v70 + 1) = *v82;
  LOBYTE(v71) = v43;
  *(&v71 + 1) = v45;
  *&v72[0] = v47;
  *(&v72[0] + 1) = v49;
  *&v72[1] = v51;
  BYTE8(v72[1]) = 0;
  v57 = v70[0];
  *v55 = v65;
  v55[1] = v57;
  v58 = v70[6];
  v55[6] = v70[5];
  v55[7] = v58;
  v59 = v70[4];
  v55[4] = v70[3];
  v55[5] = v59;
  v60 = v70[2];
  v55[2] = v70[1];
  v55[3] = v60;
  *(v55 + 169) = *(v72 + 9);
  v61 = v72[0];
  v62 = v71;
  v55[8] = v70[7];
  v55[9] = v62;
  v55[10] = v61;
  sub_100009728(v69, &v73, &qword_100098120, &qword_1000756F0);
  sub_100009790(v41, &qword_100098108, &qword_1000756D8);
  *&v74[65] = *&v82[64];
  *&v74[81] = *&v82[80];
  *&v74[97] = *&v82[96];
  *&v74[1] = *v82;
  *&v74[17] = *&v82[16];
  *&v74[33] = *&v82[32];
  v73 = v56;
  v74[0] = v42;
  v75 = *&v82[112];
  *&v74[49] = *&v82[48];
  v76 = v43;
  v77 = v45;
  v78 = v47;
  v79 = v49;
  v80 = v51;
  v81 = 0;
  sub_100009790(&v73, &qword_100098120, &qword_1000756F0);
  return sub_100009790(v52, &qword_100098108, &qword_1000756D8);
}

double sub_10003CC74@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NoteWidgetView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23[-v10];
  sub_100009728(a1, &v23[-v10], &qword_100096948, &qword_1000751E0);
  v12 = type metadata accessor for Note();
  v13 = (*(*(v12 - 8) + 48))(v11, 2, v12);
  if (!v13)
  {
    sub_100009790(v11, &qword_100096948, &qword_1000751E0);
    goto LABEL_6;
  }

  if (v13 != 1)
  {
LABEL_6:
    sub_10003FA70(a1, &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for NoteWidgetView);
    v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v15 = swift_allocObject();
    sub_10003F5BC(v7, v15 + v14, type metadata accessor for NoteWidgetView);
    v16 = sub_10006A970();
    LOBYTE(v30) = 0;
    sub_10003EA7C(a1, v25);
    *&v50[7] = v25[0];
    *&v50[23] = v25[1];
    *&v50[39] = v25[2];
    *&v50[55] = v26;
    v27[0] = v16;
    v27[1] = 0;
    LOBYTE(v28[0]) = v30;
    *(v28 + 1) = *v50;
    *(&v28[1] + 1) = *&v50[16];
    *(&v28[2] + 1) = *&v50[32];
    v28[3] = *&v50[47];
    v47 = v28[2];
    v48 = *&v50[47];
    v44 = v16;
    v45 = v28[0];
    v46 = v28[1];
    v41 = v28[2];
    v42 = *&v50[47];
    v40 = v28[1];
    v38 = v16;
    v39 = v28[0];
    v24 = 0;
    *&v23[7] = v16;
    *&v23[71] = *&v50[47];
    *&v23[55] = v28[2];
    *&v23[39] = v28[1];
    *&v23[23] = v28[0];

    sub_100009728(v27, v50, &qword_100098188, &qword_1000757F8);

    sub_100009728(&v38, v50, &qword_100098188, &qword_1000757F8);
    sub_100009790(&v44, &qword_100098188, &qword_1000757F8);

    v29 = 0;
    *&v50[57] = *&v23[32];
    *&v50[73] = *&v23[48];
    *&v50[89] = *&v23[64];
    *&v50[25] = *v23;
    *v50 = sub_10003F624;
    *&v50[8] = v15;
    *&v50[16] = 0x4000000000000000;
    v50[24] = 0;
    *&v50[104] = *&v23[79];
    *&v50[41] = *&v23[16];
    v51 = 0;
    sub_100007DF0(&qword_100098168, &qword_1000757E8);
    sub_100007DF0(&qword_100098170, &qword_1000757F0);
    sub_1000095F4(&qword_100098178, &qword_100098168, &qword_1000757E8);
    sub_10003F234();
    sub_10006AA50();
    sub_100009790(v27, &qword_100098188, &qword_1000757F8);

    *&v50[64] = v34;
    *&v50[80] = v35[0];
    *&v50[96] = v35[1];
    v51 = v36;
    *v50 = v30;
    *&v50[16] = v31;
    *&v50[32] = v32;
    *&v50[48] = v33;
    goto LABEL_9;
  }

  if (sub_10003B488())
  {
    sub_10003D350(v50);
    LOBYTE(v30) = v50[16];
    LOBYTE(v38) = v50[40];
    LOBYTE(v27[0]) = 0;
    v50[105] = 0;
  }

  else
  {
    v17 = sub_10006A9F0();
    LOBYTE(v27[0]) = 1;
    sub_10003D490(v50);
    v40 = *&v50[32];
    v41 = *&v50[48];
    v42 = *&v50[64];
    v43 = v50[80];
    v38 = *v50;
    v39 = *&v50[16];
    LOBYTE(v35[0]) = v50[80];
    v32 = *&v50[32];
    v33 = *&v50[48];
    v34 = *&v50[64];
    v30 = *v50;
    v31 = *&v50[16];
    sub_100009728(&v38, &v44, &qword_100098130, &qword_1000757C8);
    sub_100009790(&v30, &qword_100098130, &qword_1000757C8);
    *&v37[39] = v40;
    *&v37[55] = v41;
    *&v37[71] = v42;
    v37[87] = v43;
    *&v37[7] = v38;
    *&v37[23] = v39;
    *&v50[49] = *&v37[32];
    *&v50[65] = *&v37[48];
    *&v50[81] = *&v37[64];
    *&v50[17] = *v37;
    v18 = v27[0];
    LOBYTE(v27[0]) = 1;
    *v50 = v17;
    v50[16] = v18;
    *&v50[97] = *&v37[80];
    *&v50[33] = *&v37[16];
    v50[105] = 1;
  }

  sub_100007DF0(&qword_100098138, &qword_1000757D0);
  sub_100007DF0(&qword_100098140, &qword_1000757D8);
  sub_10003F184();
  sub_1000095F4(&qword_100098160, &qword_100098140, &qword_1000757D8);
  sub_10006AA50();
  v34 = v48;
  v35[0] = v49[0];
  *(v35 + 10) = *(v49 + 10);
  v30 = v44;
  v31 = v45;
  v32 = v46;
  v33 = v47;
  LOBYTE(v38) = 1;
  v36 = 1;
  sub_100007DF0(&qword_100098168, &qword_1000757E8);
  sub_100007DF0(&qword_100098170, &qword_1000757F0);
  sub_1000095F4(&qword_100098178, &qword_100098168, &qword_1000757E8);
  sub_10003F234();
  sub_10006AA50();
LABEL_9:
  v19 = *&v50[80];
  *(a2 + 64) = *&v50[64];
  *(a2 + 80) = v19;
  *(a2 + 96) = *&v50[96];
  *(a2 + 112) = v51;
  v20 = *&v50[16];
  *a2 = *v50;
  *(a2 + 16) = v20;
  result = *&v50[32];
  v22 = *&v50[48];
  *(a2 + 32) = *&v50[32];
  *(a2 + 48) = v22;
  return result;
}

uint64_t sub_10003D328@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006ADA0();
  *a1 = result;
  return result;
}

uint64_t sub_10003D350@<X0>(uint64_t a1@<X8>)
{
  sub_10006A980();
  v2 = sub_10006AC90();
  v4 = v3;
  v6 = v5;
  sub_10006AA80();
  v7 = sub_10006AC70();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_10000832C(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_10000833C(v7, v9, v11 & 1);

  sub_10000832C(v7, v9, v11 & 1);
}

uint64_t sub_10003D490@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10006A970();
  sub_10003D560(v10);
  v3 = v10[0];
  v4 = v10[1];
  v5 = v11;
  v7 = v12;
  v6 = v13;
  v8 = v14;
  LOBYTE(v10[0]) = 1;
  v16 = v11;
  v15 = v14;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v7;
  *(a1 + 56) = v6;
  *(a1 + 64) = v8;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  sub_10000833C(v3, v4, v5);

  sub_10000832C(v3, v4, v5);
}

uint64_t sub_10003D560@<X0>(uint64_t a1@<X8>)
{
  sub_10006A980();
  v2 = sub_10006AC90();
  v4 = v3;
  v6 = v5;
  if (sub_10003B488())
  {
    sub_10006AE50();
  }

  else
  {
    sub_10006AE20();
  }

  v7 = sub_10006AC70();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_10000832C(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_10000833C(v7, v9, v11 & 1);

  sub_10000832C(v7, v9, v11 & 1);
}

uint64_t sub_10003D6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_10006A9F0();
  *(a3 + 8) = 0x4000000000000000;
  *(a3 + 16) = 0;
  v6 = sub_100007DF0(&qword_100098190, &qword_100075830);
  return sub_10003D728(a2, a1, a3 + *(v6 + 44));
}

uint64_t sub_10003D728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v114 = a2;
  v148 = a3;
  v136 = type metadata accessor for NoteWidgetView();
  v116 = *(v136 - 8);
  v4 = *(v116 + 64);
  __chkstk_darwin(v136);
  v118 = v5;
  v120 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_10006A7B0();
  v117 = *(v119 - 8);
  v6 = *(v117 + 64);
  __chkstk_darwin(v119);
  v113 = v7;
  v115 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_100007DF0(&qword_100098198, &qword_100075838);
  v8 = *(*(v143 - 8) + 64);
  __chkstk_darwin(v143);
  v146 = (&v109 - v9);
  v124 = sub_10006A700();
  v123 = *(v124 - 8);
  v10 = *(v123 + 64);
  __chkstk_darwin(v124);
  v122 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_100007DF0(&qword_1000981A0, &qword_100075840);
  v12 = *(*(v144 - 8) + 64);
  v13 = __chkstk_darwin(v144);
  v121 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v125 = &v109 - v15;
  v16 = sub_100007DF0(&qword_1000981A8, &qword_100075848);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v147 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v145 = &v109 - v20;
  v21 = sub_10006ABF0();
  v139 = *(v21 - 8);
  v140 = v21;
  v22 = *(v139 + 64);
  __chkstk_darwin(v21);
  v138 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v141 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v30 = &v109 - v29;
  __chkstk_darwin(v28);
  v32 = &v109 - v31;
  v33 = type metadata accessor for Note();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v33);
  v112 = &v109 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v126 = &v109 - v39;
  v111 = v40;
  __chkstk_darwin(v38);
  v42 = &v109 - v41;
  v130 = sub_100007DF0(&qword_1000981B0, &unk_100075850);
  v129 = *(v130 - 8);
  v43 = *(v129 + 64);
  __chkstk_darwin(v130);
  v128 = &v109 - v44;
  v127 = sub_100007DF0(&qword_1000981B8, &unk_1000767A0);
  v45 = *(*(v127 - 8) + 64);
  __chkstk_darwin(v127);
  v47 = &v109 - v46;
  v131 = sub_100007DF0(&qword_1000981C0, &unk_100075860);
  v48 = *(*(v131 - 8) + 64);
  __chkstk_darwin(v131);
  v50 = &v109 - v49;
  v135 = sub_100007DF0(&qword_1000981C8, &qword_1000767B0);
  v134 = *(v135 - 8);
  v51 = *(v134 + 64);
  __chkstk_darwin(v135);
  v133 = &v109 - v52;
  v132 = sub_100007DF0(&qword_1000981D0, &qword_100075870);
  v53 = *(*(v132 - 8) + 64);
  v54 = __chkstk_darwin(v132);
  v142 = &v109 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __chkstk_darwin(v54);
  v58 = &v109 - v57;
  __chkstk_darwin(v56);
  v149 = &v109 - v59;
  sub_100009728(a1, v32, &qword_100096948, &qword_1000751E0);
  v110 = v34;
  v150 = *(v34 + 48);
  if (v150(v32, 2, v33))
  {
    v60 = sub_10006B2D0();
    v62 = v61;
  }

  else
  {
    sub_10003F5BC(v32, v42, type metadata accessor for Note);
    v60 = *(v42 + 2);
    v62 = *(v42 + 3);

    sub_100030A4C(v42);
  }

  sub_100009728(a1, v30, &qword_100096948, &qword_1000751E0);
  v63 = v150(v30, 2, v33);
  v137 = v33;
  if (v63)
  {
    v151 = sub_10006AC30();
    v64 = sub_10006AF20();
  }

  else
  {
    v151 = v60;
    v152 = v62;
    LOBYTE(v153) = 0;
    v154 = &_swiftEmptyArrayStorage;
    v64 = sub_10006AF20();
    sub_100009790(v30, &qword_100096948, &qword_1000751E0);
  }

  v65 = *(a1 + *(v136 + 28));
  KeyPath = swift_getKeyPath();
  v151 = v64;
  v152 = KeyPath;
  v153 = v65;
  LOBYTE(v154) = 0;
  sub_100007DF0(&qword_1000981D8, &qword_100075878);
  sub_100040118(&qword_1000981E0, &qword_1000981D8, &qword_100075878);
  v67 = v128;
  sub_10006AD70();

  if (sub_10003B488())
  {
    v68 = sub_10006AE50();
  }

  else
  {
    v69 = [objc_opt_self() ICTintColor];
    v68 = sub_10006ADD0();
  }

  v70 = v68;
  v71 = v131;
  (*(v129 + 32))(v47, v67, v130);
  *&v47[*(v127 + 36)] = v70;
  sub_1000096C0(v47, v50, &qword_1000981B8, &unk_1000767A0);
  *&v50[*(v71 + 36)] = 0x3FF0000000000000;
  if (sub_10003B488())
  {
    sub_10006ABD0();
  }

  else
  {
    sub_10006ABE0();
  }

  sub_10003F76C();
  v72 = v133;
  sub_10006AD20();
  sub_100009790(v50, &qword_1000981C0, &unk_100075860);
  v73 = sub_10003B488();
  v75 = v138;
  v74 = v139;
  v76 = &enum case for Font.TextStyle.caption(_:);
  if ((v73 & 1) == 0)
  {
    v76 = &enum case for Font.TextStyle.body(_:);
  }

  v77 = v140;
  (*(v139 + 104))(v138, *v76, v140);
  v78 = sub_10006AB90();
  (*(v74 + 8))(v75, v77);
  v79 = swift_getKeyPath();
  (*(v134 + 32))(v58, v72, v135);
  v80 = &v58[*(v132 + 36)];
  *v80 = v79;
  v80[1] = v78;
  v81 = v58;
  v82 = v149;
  sub_1000096C0(v81, v149, &qword_1000981D0, &qword_100075870);
  v83 = v141;
  sub_100009728(a1, v141, &qword_100096948, &qword_1000751E0);
  if (v150(v83, 2, v137))
  {
    sub_100009790(v83, &qword_100096948, &qword_1000751E0);
    v84 = v122;
    sub_10006A6F0();
    v85 = sub_10003B488();
    v86 = v145;
    if (v85)
    {
      v87 = sub_10006AE50();
    }

    else
    {
      v87 = sub_10006AE20();
    }

    v101 = v87;
    v102 = v121;
    (*(v123 + 32))(v121, v84, v124);
    *(v102 + *(v144 + 36)) = v101;
    v103 = v125;
    sub_1000096C0(v102, v125, &qword_1000981A0, &qword_100075840);
    sub_100009728(v103, v146, &qword_1000981A0, &qword_100075840);
    swift_storeEnumTagMultiPayload();
    sub_100007DF0(&qword_100098218, &qword_100075898);
    sub_1000095F4(&qword_100098220, &qword_100098218, &qword_100075898);
    sub_10003F940();
    sub_10006AA50();
    sub_100009790(v103, &qword_1000981A0, &qword_100075840);
  }

  else
  {
    v88 = v83;
    v89 = v126;
    sub_10003F5BC(v88, v126, type metadata accessor for Note);
    v90 = v117;
    v91 = v115;
    v92 = v119;
    (*(v117 + 16))(v115, v114, v119);
    v93 = v120;
    sub_10003FA70(a1, v120, type metadata accessor for NoteWidgetView);
    v94 = v112;
    sub_10003FA70(v89, v112, type metadata accessor for Note);
    v95 = (*(v90 + 80) + 16) & ~*(v90 + 80);
    v96 = (v113 + *(v116 + 80) + v95) & ~*(v116 + 80);
    v97 = (v118 + *(v110 + 80) + v96) & ~*(v110 + 80);
    v98 = swift_allocObject();
    v99 = v91;
    v82 = v149;
    (*(v90 + 32))(v98 + v95, v99, v92);
    sub_10003F5BC(v93, v98 + v96, type metadata accessor for NoteWidgetView);
    sub_10003F5BC(v94, v98 + v97, type metadata accessor for Note);
    v100 = v146;
    *v146 = sub_10003FFD8;
    v100[1] = v98;
    swift_storeEnumTagMultiPayload();
    sub_100007DF0(&qword_100098218, &qword_100075898);
    sub_1000095F4(&qword_100098220, &qword_100098218, &qword_100075898);
    sub_10003F940();
    v86 = v145;
    sub_10006AA50();
    sub_100030A4C(v126);
  }

  v104 = v142;
  sub_100009728(v82, v142, &qword_1000981D0, &qword_100075870);
  v105 = v147;
  sub_100009728(v86, v147, &qword_1000981A8, &qword_100075848);
  v106 = v148;
  sub_100009728(v104, v148, &qword_1000981D0, &qword_100075870);
  v107 = sub_100007DF0(&qword_100098238, &qword_1000758A0);
  sub_100009728(v105, v106 + *(v107 + 48), &qword_1000981A8, &qword_100075848);
  sub_100009790(v86, &qword_1000981A8, &qword_100075848);
  sub_100009790(v82, &qword_1000981D0, &qword_100075870);
  sub_100009790(v105, &qword_1000981A8, &qword_100075848);
  return sub_100009790(v104, &qword_1000981D0, &qword_100075870);
}

uint64_t sub_10003E71C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v32 = sub_100007DF0(&qword_100098240, &qword_1000758A8);
  v6 = *(v32 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v32);
  v9 = &v31 - v8;
  v10 = sub_100007DF0(&qword_100098248, &unk_1000758B0);
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  sub_10006A7A0();
  v18 = v17;
  sub_10006A7A0();
  v20 = v19;
  result = type metadata accessor for NoteWidgetView();
  v22 = *(a1 + *(result + 28));
  if (v20 / v22 <= v18)
  {
    v31 = a3;
    v24 = v22 - 1;
    if (__OFSUB__(v22, 1))
    {
      __break(1u);
    }

    else
    {
      v26 = *(a2 + 32);
      v25 = *(a2 + 40);
      KeyPath = swift_getKeyPath();
      v34 = v26;
      v35 = v25;
      v36 = 0;
      v37 = &_swiftEmptyArrayStorage;
      v38 = KeyPath;
      v39 = v24;
      v40 = 0;
      sub_100007DF0(&qword_100098250, &qword_1000767D0);
      sub_100040118(&qword_100098258, &qword_100098250, &qword_1000767D0);
      sub_10006AD70();

      if (sub_10003B488())
      {
        v28 = sub_10006AE60();
      }

      else if (sub_10003B488())
      {
        v28 = sub_10006AE50();
      }

      else
      {
        v28 = sub_10006AE20();
      }

      v29 = v28;
      (*(v6 + 32))(v14, v9, v32);
      *&v14[*(v10 + 36)] = v29;
      sub_1000096C0(v14, v16, &qword_100098248, &unk_1000758B0);
      v30 = v31;
      sub_1000096C0(v16, v31, &qword_100098248, &unk_1000758B0);
      return (*(v33 + 56))(v30, 0, 1, v10);
    }
  }

  else
  {
    v23 = *(v33 + 56);

    return v23(a3, 1, 1, v10);
  }

  return result;
}

uint64_t sub_10003EA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v34 - v9;
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for Note();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v35 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v34 - v18;
  v20 = a1;
  sub_100009728(a1, v12, &qword_100096948, &qword_1000751E0);
  v21 = *(v14 + 48);
  if (v21(v12, 2, v13))
  {
    v22 = sub_10006B2D0();
    v24 = v23;
  }

  else
  {
    sub_10003F5BC(v12, v19, type metadata accessor for Note);
    v22 = *(v19 + 6);
    v24 = *(v19 + 7);

    sub_100030A4C(v19);
  }

  v25 = v20;
  sub_100009728(v20, v10, &qword_100096948, &qword_1000751E0);
  if (v21(v10, 2, v13))
  {
    v37 = sub_10006AC30();
    v26 = sub_10006AF20();
  }

  else
  {
    v37 = v22;
    v38 = v24;
    v39 = 0;
    v40 = &_swiftEmptyArrayStorage;
    v26 = sub_10006AF20();
    sub_100009790(v10, &qword_100096948, &qword_1000751E0);
  }

  v27 = v36;
  KeyPath = swift_getKeyPath();
  v29 = sub_10006AA80();
  sub_100009728(v25, v27, &qword_100096948, &qword_1000751E0);
  if (v21(v27, 2, v13))
  {
    result = sub_100009790(v27, &qword_100096948, &qword_1000751E0);
LABEL_12:
    v33 = 0;
    v32 = 0;
    goto LABEL_13;
  }

  v31 = v35;
  sub_10003F5BC(v27, v35, type metadata accessor for Note);
  if (*(v31 + 80) != 1)
  {
    result = sub_100030A4C(v31);
    goto LABEL_12;
  }

  v32 = *(v31 + *(v13 + 56));
  swift_bridgeObjectRetain_n();
  sub_100030A4C(v31);

  v33 = 0x4020000000000000;
LABEL_13:
  *a2 = v26;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 28) = v29;
  *(a2 + 32) = v33;
  *(a2 + 40) = 0;
  *(a2 + 48) = v32;
  return result;
}

uint64_t sub_10003EE4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006A8C0();
  *a1 = result;
  return result;
}

uint64_t sub_10003EE78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006A8C0();
  *a1 = result;
  return result;
}

uint64_t sub_10003EEA4(uint64_t *a1)
{
  v1 = *a1;

  return sub_10006A8D0();
}

uint64_t sub_10003EED0(uint64_t *a1)
{
  v1 = *a1;

  return sub_10006A8D0();
}

unint64_t sub_10003EEFC()
{
  result = qword_1000980E8;
  if (!qword_1000980E8)
  {
    sub_100008154(&qword_1000980B0, &qword_100075660);
    sub_1000095F4(&qword_1000980F0, &qword_1000980F8, &unk_1000756C8);
    sub_1000095F4(&qword_100096BD8, &qword_100096BE0, &qword_10006F610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000980E8);
  }

  return result;
}

unint64_t sub_10003EFE0()
{
  result = qword_100098100;
  if (!qword_100098100)
  {
    sub_100008154(&qword_1000980D0, &qword_100075680);
    sub_100008154(&qword_1000980C0, &qword_100075670);
    sub_100008154(&qword_1000980B8, &qword_100075668);
    sub_100008154(&qword_1000980B0, &qword_100075660);
    sub_10003EEFC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10003FA28(&qword_100096B98, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098100);
  }

  return result;
}

unint64_t sub_10003F184()
{
  result = qword_100098148;
  if (!qword_100098148)
  {
    sub_100008154(&qword_100098138, &qword_1000757D0);
    sub_1000095F4(&qword_100098150, &qword_100098158, &qword_1000757E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098148);
  }

  return result;
}

unint64_t sub_10003F234()
{
  result = qword_100098180;
  if (!qword_100098180)
  {
    sub_100008154(&qword_100098170, &qword_1000757F0);
    sub_10003F184();
    sub_1000095F4(&qword_100098160, &qword_100098140, &qword_1000757D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098180);
  }

  return result;
}

uint64_t sub_10003F2EC()
{
  v1 = type metadata accessor for NoteWidgetView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  v6 = type metadata accessor for Note();
  if (!(*(*(v6 - 1) + 48))(v0 + v3, 2, v6))
  {
    v7 = *(v5 + 1);

    v8 = *(v5 + 3);

    v9 = *(v5 + 5);

    v10 = *(v5 + 7);

    v11 = *(v5 + 9);

    v12 = v6[10];
    v13 = sub_10006A560();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(&v5[v12], 1, v13))
    {
      (*(v14 + 8))(&v5[v12], v13);
    }

    v15 = *&v5[v6[11] + 8];

    v16 = v6[12];
    v17 = sub_10006A520();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(&v5[v16], 1, v17))
    {
      (*(v18 + 8))(&v5[v16], v17);
    }

    v19 = *&v5[v6[13]];

    v20 = *&v5[v6[14]];

    v21 = *&v5[v6[15]];

    v22 = *&v5[v6[16]];
  }

  v23 = *(v1 + 20);
  sub_100007DF0(&qword_100096A40, &unk_10006F460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_10006B0C0();
    (*(*(v24 - 8) + 8))(&v5[v23], v24);
  }

  else
  {
    v25 = *&v5[v23];
  }

  sub_1000096B4(*&v5[*(v1 + 24)], v5[*(v1 + 24) + 8]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003F5BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003F624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NoteWidgetView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10003D6C0(a1, v6, a2);
}

uint64_t sub_10003F6A4@<X0>(uint64_t a1@<X8>)
{
  result = sub_10006A920();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10003F6D8@<X0>(uint64_t a1@<X8>)
{
  result = sub_10006A920();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10003F70C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_10006A930();
}

uint64_t sub_10003F73C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_10006A930();
}

unint64_t sub_10003F76C()
{
  result = qword_1000981F8;
  if (!qword_1000981F8)
  {
    sub_100008154(&qword_1000981C0, &unk_100075860);
    sub_10003F824();
    sub_1000095F4(&qword_100098208, &qword_100098210, &qword_100075890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000981F8);
  }

  return result;
}

unint64_t sub_10003F824()
{
  result = qword_100098200;
  if (!qword_100098200)
  {
    sub_100008154(&qword_1000981B8, &unk_1000767A0);
    sub_100008154(&qword_1000981D8, &qword_100075878);
    sub_100040118(&qword_1000981E0, &qword_1000981D8, &qword_100075878);
    swift_getOpaqueTypeConformance2();
    sub_1000095F4(&qword_100097E28, &qword_100097E30, &qword_100075480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098200);
  }

  return result;
}

unint64_t sub_10003F940()
{
  result = qword_100098228;
  if (!qword_100098228)
  {
    sub_100008154(&qword_1000981A0, &qword_100075840);
    sub_10003FA28(&qword_100098230, &type metadata accessor for PlaceholderText);
    sub_1000095F4(&qword_100097E28, &qword_100097E30, &qword_100075480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098228);
  }

  return result;
}

uint64_t sub_10003FA28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003FA70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003FAD8()
{
  v1 = sub_10006A7B0();
  v2 = *(v1 - 8);
  v53 = *(v2 + 80);
  v3 = (v53 + 16) & ~v53;
  v4 = *(v2 + 64);
  v5 = type metadata accessor for NoteWidgetView();
  v51 = *(*(v5 - 8) + 80);
  v6 = (v3 + v4 + v51) & ~v51;
  v7 = *(*(v5 - 8) + 64);
  v8 = type metadata accessor for Note();
  v9 = *(v8 - 1);
  v10 = *(v9 + 80);
  v11 = v6 + v7 + v10;
  v52 = *(v9 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v12 = (v0 + v6);
  if (!(*(v9 + 48))(v0 + v6, 2, v8))
  {
    v13 = *(v12 + 1);

    v14 = *(v12 + 3);

    v15 = *(v12 + 5);

    v16 = *(v12 + 7);

    v17 = *(v12 + 9);

    v18 = v8[10];
    v19 = sub_10006A560();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(&v12[v18], 1, v19))
    {
      (*(v20 + 8))(&v12[v18], v19);
    }

    v21 = *&v12[v8[11] + 8];

    v22 = v8[12];
    v23 = sub_10006A520();
    v24 = *(v23 - 8);
    if (!(*(v24 + 48))(&v12[v22], 1, v23))
    {
      (*(v24 + 8))(&v12[v22], v23);
    }

    v25 = *&v12[v8[13]];

    v26 = *&v12[v8[14]];

    v27 = *&v12[v8[15]];

    v28 = *&v12[v8[16]];
  }

  v29 = v11 & ~v10;
  v30 = *(v5 + 20);
  sub_100007DF0(&qword_100096A40, &unk_10006F460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = sub_10006B0C0();
    (*(*(v31 - 8) + 8))(&v12[v30], v31);
  }

  else
  {
    v32 = *&v12[v30];
  }

  sub_1000096B4(*&v12[*(v5 + 24)], v12[*(v5 + 24) + 8]);
  v33 = v0 + v29;
  v34 = *(v0 + v29 + 8);

  v35 = *(v0 + v29 + 24);

  v36 = *(v0 + v29 + 40);

  v37 = *(v0 + v29 + 56);

  v38 = *(v0 + v29 + 72);

  v39 = v8[10];
  v40 = sub_10006A560();
  v41 = *(v40 - 8);
  if (!(*(v41 + 48))(v0 + v29 + v39, 1, v40))
  {
    (*(v41 + 8))(v33 + v39, v40);
  }

  v42 = *(v33 + v8[11] + 8);

  v43 = v8[12];
  v44 = sub_10006A520();
  v45 = *(v44 - 8);
  if (!(*(v45 + 48))(v33 + v43, 1, v44))
  {
    (*(v45 + 8))(v33 + v43, v44);
  }

  v46 = *(v33 + v8[13]);

  v47 = *(v33 + v8[14]);

  v48 = *(v33 + v8[15]);

  v49 = *(v33 + v8[16]);

  return _swift_deallocObject(v0, v29 + v52, v53 | v51 | v10 | 7);
}

uint64_t sub_10003FFD8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_10006A7B0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for NoteWidgetView() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for Note() - 8);
  v10 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_10003E71C(v1 + v7, v10, a1);
}

uint64_t sub_100040118(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008154(a2, a3);
    sub_1000095F4(&qword_1000981E8, &qword_1000981F0, &unk_100075880);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000401BC()
{
  sub_100008154(&qword_1000980D8, &qword_100075688);
  sub_100008154(&qword_1000980D0, &qword_100075680);
  sub_10003EFE0();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10004025C()
{
  v0 = sub_100007DF0(&qword_100098338, &qword_100075A18);
  v25 = *(v0 - 8);
  v1 = *(v25 + 64);
  __chkstk_darwin(v0);
  v3 = &v23 - v2;
  v4 = sub_10006A1A0();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007DF0(&qword_100098340, &qword_100075A20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  sub_100017C78();
  sub_10006A230();
  v33._countAndFlagsBits = 0xD000000000000031;
  v33._object = 0x8000000100078C30;
  sub_10006A220(v33);
  v30 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v11 = v5[13];
  v28 = v4;
  v29 = v11;
  v11(v8);
  sub_10006A210();
  v12 = v5[1];
  v31 = v5 + 1;
  v32 = v12;
  v12(v8, v4);
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_10006A220(v34);
  sub_10006A240();
  v26 = sub_10006A1C0();
  v27 = v0;
  v13 = *(v25 + 8);
  v13(v3, v0);
  sub_10006A200();
  v25 = sub_10006A1C0();
  v13(v3, v0);
  sub_10006A230();
  v35._countAndFlagsBits = 0xD000000000000026;
  v35._object = 0x8000000100078CA0;
  sub_10006A220(v35);
  v14 = v28;
  v29(v8, v30, v28);
  sub_10006A210();
  v32(v8, v14);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_10006A220(v36);
  sub_10006A240();
  v24 = sub_10006A1C0();
  v15 = v27;
  v13(v3, v27);
  sub_10006A200();
  v23 = sub_10006A1C0();
  v13(v3, v15);
  sub_10006A230();
  v37._countAndFlagsBits = 0xD00000000000002DLL;
  v37._object = 0x8000000100078D00;
  sub_10006A220(v37);
  v16 = v28;
  v29(v8, v30, v28);
  sub_10006A210();
  v32(v8, v16);
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_10006A220(v38);
  sub_10006A240();
  v17 = sub_10006A1C0();
  v13(v3, v27);
  sub_100007DF0(&qword_100098348, &qword_100075A28);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000758C0;
  v19 = v25;
  *(v18 + 32) = v26;
  *(v18 + 40) = v19;
  v20 = v23;
  *(v18 + 48) = v24;
  *(v18 + 56) = v20;
  *(v18 + 64) = v17;
  v21 = sub_10006A1B0();

  return v21;
}

uint64_t sub_100040780()
{
  v0 = sub_100007DF0(&qword_100098320, &qword_100075A00);
  v25 = *(v0 - 8);
  v1 = *(v25 + 64);
  __chkstk_darwin(v0);
  v3 = &v23 - v2;
  v4 = sub_10006A1A0();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007DF0(&qword_100098328, &qword_100075A08);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  sub_1000152E8();
  sub_10006A230();
  v33._countAndFlagsBits = 0xD000000000000034;
  v33._object = 0x8000000100078B20;
  sub_10006A220(v33);
  v30 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v11 = v5[13];
  v28 = v4;
  v29 = v11;
  v11(v8);
  sub_10006A210();
  v12 = v5[1];
  v31 = v5 + 1;
  v32 = v12;
  v12(v8, v4);
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_10006A220(v34);
  sub_10006A240();
  v26 = sub_10006A1C0();
  v27 = v0;
  v13 = *(v25 + 8);
  v13(v3, v0);
  sub_10006A200();
  v25 = sub_10006A1C0();
  v13(v3, v0);
  sub_10006A230();
  v35._countAndFlagsBits = 0xD000000000000029;
  v35._object = 0x8000000100078B90;
  sub_10006A220(v35);
  v14 = v28;
  v29(v8, v30, v28);
  sub_10006A210();
  v32(v8, v14);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_10006A220(v36);
  sub_10006A240();
  v24 = sub_10006A1C0();
  v15 = v27;
  v13(v3, v27);
  sub_10006A200();
  v23 = sub_10006A1C0();
  v13(v3, v15);
  sub_10006A230();
  v37._countAndFlagsBits = 0xD000000000000030;
  v37._object = 0x8000000100078BF0;
  sub_10006A220(v37);
  v16 = v28;
  v29(v8, v30, v28);
  sub_10006A210();
  v32(v8, v16);
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_10006A220(v38);
  sub_10006A240();
  v17 = sub_10006A1C0();
  v13(v3, v27);
  sub_100007DF0(&qword_100098330, &qword_100075A10);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000758C0;
  v19 = v25;
  *(v18 + 32) = v26;
  *(v18 + 40) = v19;
  v20 = v23;
  *(v18 + 48) = v24;
  *(v18 + 56) = v20;
  *(v18 + 64) = v17;
  v21 = sub_10006A1B0();

  return v21;
}

uint64_t sub_100040CA8()
{
  v0 = sub_100007DF0(&qword_100098308, &qword_1000759E8);
  v25 = *(v0 - 8);
  v1 = *(v25 + 64);
  __chkstk_darwin(v0);
  v3 = &v23 - v2;
  v4 = sub_10006A1A0();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007DF0(&qword_100098310, &qword_1000759F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  sub_100021F28();
  sub_10006A230();
  v33._countAndFlagsBits = 0xD000000000000033;
  v33._object = 0x8000000100078A20;
  sub_10006A220(v33);
  v30 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v11 = v5[13];
  v28 = v4;
  v29 = v11;
  v11(v8);
  sub_10006A210();
  v12 = v5[1];
  v31 = v5 + 1;
  v32 = v12;
  v12(v8, v4);
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_10006A220(v34);
  sub_10006A240();
  v26 = sub_10006A1C0();
  v27 = v0;
  v13 = *(v25 + 8);
  v13(v3, v0);
  sub_10006A200();
  v25 = sub_10006A1C0();
  v13(v3, v0);
  sub_10006A230();
  v35._countAndFlagsBits = 0xD000000000000028;
  v35._object = 0x8000000100078A90;
  sub_10006A220(v35);
  v14 = v28;
  v29(v8, v30, v28);
  sub_10006A210();
  v32(v8, v14);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_10006A220(v36);
  sub_10006A240();
  v24 = sub_10006A1C0();
  v15 = v27;
  v13(v3, v27);
  sub_10006A200();
  v23 = sub_10006A1C0();
  v13(v3, v15);
  sub_10006A230();
  v37._countAndFlagsBits = 0xD00000000000002FLL;
  v37._object = 0x8000000100078AF0;
  sub_10006A220(v37);
  v16 = v28;
  v29(v8, v30, v28);
  sub_10006A210();
  v32(v8, v16);
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_10006A220(v38);
  sub_10006A240();
  v17 = sub_10006A1C0();
  v13(v3, v27);
  sub_100007DF0(&qword_100098318, &qword_1000759F8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000758C0;
  v19 = v25;
  *(v18 + 32) = v26;
  *(v18 + 40) = v19;
  v20 = v23;
  *(v18 + 48) = v24;
  *(v18 + 56) = v20;
  *(v18 + 64) = v17;
  v21 = sub_10006A1B0();

  return v21;
}

uint64_t sub_1000411D0()
{
  v0 = sub_100007DF0(&qword_1000982F0, &qword_1000759D0);
  v25 = *(v0 - 8);
  v1 = *(v25 + 64);
  __chkstk_darwin(v0);
  v3 = &v23 - v2;
  v4 = sub_10006A1A0();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007DF0(&qword_1000982F8, &qword_1000759D8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  sub_10001AA38();
  sub_10006A230();
  v33._countAndFlagsBits = 0xD000000000000034;
  v33._object = 0x8000000100078910;
  sub_10006A220(v33);
  v30 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v11 = v5[13];
  v28 = v4;
  v29 = v11;
  v11(v8);
  sub_10006A210();
  v12 = v5[1];
  v31 = v5 + 1;
  v32 = v12;
  v12(v8, v4);
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_10006A220(v34);
  sub_10006A240();
  v26 = sub_10006A1C0();
  v27 = v0;
  v13 = *(v25 + 8);
  v13(v3, v0);
  sub_10006A200();
  v25 = sub_10006A1C0();
  v13(v3, v0);
  sub_10006A230();
  v35._countAndFlagsBits = 0xD000000000000029;
  v35._object = 0x8000000100078980;
  sub_10006A220(v35);
  v14 = v28;
  v29(v8, v30, v28);
  sub_10006A210();
  v32(v8, v14);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_10006A220(v36);
  sub_10006A240();
  v24 = sub_10006A1C0();
  v15 = v27;
  v13(v3, v27);
  sub_10006A200();
  v23 = sub_10006A1C0();
  v13(v3, v15);
  sub_10006A230();
  v37._countAndFlagsBits = 0xD000000000000030;
  v37._object = 0x80000001000789E0;
  sub_10006A220(v37);
  v16 = v28;
  v29(v8, v30, v28);
  sub_10006A210();
  v32(v8, v16);
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_10006A220(v38);
  sub_10006A240();
  v17 = sub_10006A1C0();
  v13(v3, v27);
  sub_100007DF0(&qword_100098300, &qword_1000759E0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000758C0;
  v19 = v25;
  *(v18 + 32) = v26;
  *(v18 + 40) = v19;
  v20 = v23;
  *(v18 + 48) = v24;
  *(v18 + 56) = v20;
  *(v18 + 64) = v17;
  v21 = sub_10006A1B0();

  return v21;
}

uint64_t sub_1000416F4()
{
  v0 = sub_100007DF0(&qword_1000982D8, &qword_1000759B8);
  v25 = *(v0 - 8);
  v1 = *(v25 + 64);
  __chkstk_darwin(v0);
  v3 = &v23 - v2;
  v4 = sub_10006A1A0();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007DF0(&qword_1000982E0, &qword_1000759C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  sub_10001F61C();
  sub_10006A230();
  v33._countAndFlagsBits = 0xD000000000000035;
  v33._object = 0x8000000100078800;
  sub_10006A220(v33);
  v30 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v11 = v5[13];
  v28 = v4;
  v29 = v11;
  v11(v8);
  sub_10006A210();
  v12 = v5[1];
  v31 = v5 + 1;
  v32 = v12;
  v12(v8, v4);
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_10006A220(v34);
  sub_10006A240();
  v26 = sub_10006A1C0();
  v27 = v0;
  v13 = *(v25 + 8);
  v13(v3, v0);
  sub_10006A200();
  v25 = sub_10006A1C0();
  v13(v3, v0);
  sub_10006A230();
  v35._countAndFlagsBits = 0xD00000000000002ALL;
  v35._object = 0x8000000100078870;
  sub_10006A220(v35);
  v14 = v28;
  v29(v8, v30, v28);
  sub_10006A210();
  v32(v8, v14);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_10006A220(v36);
  sub_10006A240();
  v24 = sub_10006A1C0();
  v15 = v27;
  v13(v3, v27);
  sub_10006A200();
  v23 = sub_10006A1C0();
  v13(v3, v15);
  sub_10006A230();
  v37._countAndFlagsBits = 0xD000000000000031;
  v37._object = 0x80000001000788D0;
  sub_10006A220(v37);
  v16 = v28;
  v29(v8, v30, v28);
  sub_10006A210();
  v32(v8, v16);
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_10006A220(v38);
  sub_10006A240();
  v17 = sub_10006A1C0();
  v13(v3, v27);
  sub_100007DF0(&qword_1000982E8, &qword_1000759C8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000758C0;
  v19 = v25;
  *(v18 + 32) = v26;
  *(v18 + 40) = v19;
  v20 = v23;
  *(v18 + 48) = v24;
  *(v18 + 56) = v20;
  *(v18 + 64) = v17;
  v21 = sub_10006A1B0();

  return v21;
}

uint64_t sub_100041C18()
{
  v0 = sub_100007DF0(&qword_1000982C0, &qword_1000759A0);
  v25 = *(v0 - 8);
  v1 = *(v25 + 64);
  __chkstk_darwin(v0);
  v3 = &v23 - v2;
  v4 = sub_10006A1A0();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007DF0(&qword_1000982C8, &qword_1000759A8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  sub_100012934();
  sub_10006A230();
  v33._countAndFlagsBits = 0xD00000000000002ELL;
  v33._object = 0x8000000100078720;
  sub_10006A220(v33);
  v30 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v11 = v5[13];
  v28 = v4;
  v29 = v11;
  v11(v8);
  sub_10006A210();
  v12 = v5[1];
  v31 = v5 + 1;
  v32 = v12;
  v12(v8, v4);
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_10006A220(v34);
  sub_10006A240();
  v26 = sub_10006A1C0();
  v27 = v0;
  v13 = *(v25 + 8);
  v13(v3, v0);
  sub_10006A200();
  v25 = sub_10006A1C0();
  v13(v3, v0);
  sub_10006A230();
  v35._countAndFlagsBits = 0xD000000000000023;
  v35._object = 0x8000000100078770;
  sub_10006A220(v35);
  v14 = v28;
  v29(v8, v30, v28);
  sub_10006A210();
  v32(v8, v14);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_10006A220(v36);
  sub_10006A240();
  v24 = sub_10006A1C0();
  v15 = v27;
  v13(v3, v27);
  sub_10006A200();
  v23 = sub_10006A1C0();
  v13(v3, v15);
  sub_10006A230();
  v37._countAndFlagsBits = 0xD00000000000002ALL;
  v37._object = 0x80000001000787D0;
  sub_10006A220(v37);
  v16 = v28;
  v29(v8, v30, v28);
  sub_10006A210();
  v32(v8, v16);
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_10006A220(v38);
  sub_10006A240();
  v17 = sub_10006A1C0();
  v13(v3, v27);
  sub_100007DF0(&qword_1000982D0, &qword_1000759B0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000758C0;
  v19 = v25;
  *(v18 + 32) = v26;
  *(v18 + 40) = v19;
  v20 = v23;
  *(v18 + 48) = v24;
  *(v18 + 56) = v20;
  *(v18 + 64) = v17;
  v21 = sub_10006A1B0();

  return v21;
}

uint64_t sub_10004213C()
{
  v0 = sub_100007DF0(&qword_1000982A8, &qword_100075988);
  v25 = *(v0 - 8);
  v1 = *(v25 + 64);
  __chkstk_darwin(v0);
  v3 = &v23 - v2;
  v4 = sub_10006A1A0();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007DF0(&qword_1000982B0, &qword_100075990);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  sub_10002C1A8();
  sub_10006A230();
  v33._countAndFlagsBits = 0xD000000000000036;
  v33._object = 0x8000000100078610;
  sub_10006A220(v33);
  v30 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v11 = v5[13];
  v28 = v4;
  v29 = v11;
  v11(v8);
  sub_10006A210();
  v12 = v5[1];
  v31 = v5 + 1;
  v32 = v12;
  v12(v8, v4);
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_10006A220(v34);
  sub_10006A240();
  v26 = sub_10006A1C0();
  v27 = v0;
  v13 = *(v25 + 8);
  v13(v3, v0);
  sub_10006A200();
  v25 = sub_10006A1C0();
  v13(v3, v0);
  sub_10006A230();
  v35._countAndFlagsBits = 0xD00000000000002BLL;
  v35._object = 0x8000000100078680;
  sub_10006A220(v35);
  v14 = v28;
  v29(v8, v30, v28);
  sub_10006A210();
  v32(v8, v14);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_10006A220(v36);
  sub_10006A240();
  v24 = sub_10006A1C0();
  v15 = v27;
  v13(v3, v27);
  sub_10006A200();
  v23 = sub_10006A1C0();
  v13(v3, v15);
  sub_10006A230();
  v37._countAndFlagsBits = 0xD000000000000032;
  v37._object = 0x80000001000786E0;
  sub_10006A220(v37);
  v16 = v28;
  v29(v8, v30, v28);
  sub_10006A210();
  v32(v8, v16);
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_10006A220(v38);
  sub_10006A240();
  v17 = sub_10006A1C0();
  v13(v3, v27);
  sub_100007DF0(&qword_1000982B8, &qword_100075998);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000758C0;
  v19 = v25;
  *(v18 + 32) = v26;
  *(v18 + 40) = v19;
  v20 = v23;
  *(v18 + 48) = v24;
  *(v18 + 56) = v20;
  *(v18 + 64) = v17;
  v21 = sub_10006A1B0();

  return v21;
}

uint64_t sub_100042660()
{
  v0 = sub_100007DF0(&qword_100098290, &qword_100075970);
  v25 = *(v0 - 8);
  v1 = *(v25 + 64);
  __chkstk_darwin(v0);
  v3 = &v23 - v2;
  v4 = sub_10006A1A0();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007DF0(&qword_100098298, &qword_100075978);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  sub_100026F00();
  sub_10006A230();
  v33._countAndFlagsBits = 0xD00000000000002ELL;
  v33._object = 0x8000000100078530;
  sub_10006A220(v33);
  v30 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v11 = v5[13];
  v28 = v4;
  v29 = v11;
  v11(v8);
  sub_10006A210();
  v12 = v5[1];
  v31 = v5 + 1;
  v32 = v12;
  v12(v8, v4);
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_10006A220(v34);
  sub_10006A240();
  v26 = sub_10006A1C0();
  v27 = v0;
  v13 = *(v25 + 8);
  v13(v3, v0);
  sub_10006A200();
  v25 = sub_10006A1C0();
  v13(v3, v0);
  sub_10006A230();
  v35._countAndFlagsBits = 0xD000000000000023;
  v35._object = 0x8000000100078580;
  sub_10006A220(v35);
  v14 = v28;
  v29(v8, v30, v28);
  sub_10006A210();
  v32(v8, v14);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_10006A220(v36);
  sub_10006A240();
  v24 = sub_10006A1C0();
  v15 = v27;
  v13(v3, v27);
  sub_10006A200();
  v23 = sub_10006A1C0();
  v13(v3, v15);
  sub_10006A230();
  v37._countAndFlagsBits = 0xD00000000000002ALL;
  v37._object = 0x80000001000785E0;
  sub_10006A220(v37);
  v16 = v28;
  v29(v8, v30, v28);
  sub_10006A210();
  v32(v8, v16);
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_10006A220(v38);
  sub_10006A240();
  v17 = sub_10006A1C0();
  v13(v3, v27);
  sub_100007DF0(&qword_1000982A0, &qword_100075980);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000758C0;
  v19 = v25;
  *(v18 + 32) = v26;
  *(v18 + 40) = v19;
  v20 = v23;
  *(v18 + 48) = v24;
  *(v18 + 56) = v20;
  *(v18 + 64) = v17;
  v21 = sub_10006A1B0();

  return v21;
}

uint64_t sub_100042B84()
{
  v0 = sub_100007DF0(&qword_100098278, &qword_100075958);
  v25 = *(v0 - 8);
  v1 = *(v25 + 64);
  __chkstk_darwin(v0);
  v3 = &v23 - v2;
  v4 = sub_10006A1A0();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007DF0(&qword_100098280, &qword_100075960);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  sub_100029748();
  sub_10006A230();
  v33._countAndFlagsBits = 0xD00000000000002FLL;
  v33._object = 0x8000000100078440;
  sub_10006A220(v33);
  v30 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v11 = v5[13];
  v28 = v4;
  v29 = v11;
  v11(v8);
  sub_10006A210();
  v12 = v5[1];
  v31 = v5 + 1;
  v32 = v12;
  v12(v8, v4);
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_10006A220(v34);
  sub_10006A240();
  v26 = sub_10006A1C0();
  v27 = v0;
  v13 = *(v25 + 8);
  v13(v3, v0);
  sub_10006A200();
  v25 = sub_10006A1C0();
  v13(v3, v0);
  sub_10006A230();
  v35._countAndFlagsBits = 0xD000000000000024;
  v35._object = 0x80000001000784A0;
  sub_10006A220(v35);
  v14 = v28;
  v29(v8, v30, v28);
  sub_10006A210();
  v32(v8, v14);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_10006A220(v36);
  sub_10006A240();
  v24 = sub_10006A1C0();
  v15 = v27;
  v13(v3, v27);
  sub_10006A200();
  v23 = sub_10006A1C0();
  v13(v3, v15);
  sub_10006A230();
  v37._countAndFlagsBits = 0xD00000000000002BLL;
  v37._object = 0x8000000100078500;
  sub_10006A220(v37);
  v16 = v28;
  v29(v8, v30, v28);
  sub_10006A210();
  v32(v8, v16);
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_10006A220(v38);
  sub_10006A240();
  v17 = sub_10006A1C0();
  v13(v3, v27);
  sub_100007DF0(&qword_100098288, &qword_100075968);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000758C0;
  v19 = v25;
  *(v18 + 32) = v26;
  *(v18 + 40) = v19;
  v20 = v23;
  *(v18 + 48) = v24;
  *(v18 + 56) = v20;
  *(v18 + 64) = v17;
  v21 = sub_10006A1B0();

  return v21;
}

uint64_t sub_1000430AC()
{
  v0 = sub_10006A1E0();
  v1 = sub_10006A1E0();
  v2 = sub_10006A1E0();
  sub_100007DF0(&qword_100098268, &qword_100075948);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10006F2A0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_10006A1D0();

  return v4;
}

uint64_t sub_100043184()
{
  v0 = sub_10006A190();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100017C78();
  sub_10006A180();
  v5 = sub_10006A170();
  (*(v1 + 8))(v4, v0);
  sub_100007DF0(&qword_100098260, &qword_100075940);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10006F820;
  *(v6 + 32) = v5;
  v7 = sub_10006A160();

  return v7;
}

uint64_t sub_1000432D4()
{
  v0 = sub_10006A270();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100018524();
  sub_100017C78();
  sub_10006A280();
  v18 = sub_10006A260();
  v5 = *(v1 + 8);
  v5(v4, v0);
  v19 = sub_100015874();
  sub_1000152E8();
  sub_10006A280();
  v17 = sub_10006A260();
  v5(v4, v0);
  v19 = sub_100022480();
  sub_100021F28();
  sub_10006A280();
  v16 = sub_10006A260();
  v5(v4, v0);
  v19 = sub_10001AF2C();
  sub_10001AA38();
  sub_10006A280();
  v6 = sub_10006A260();
  v5(v4, v0);
  v19 = sub_10001F928();
  sub_10001F61C();
  sub_10006A280();
  v7 = sub_10006A260();
  v5(v4, v0);
  v19 = sub_100012CB8();
  sub_100012934();
  sub_10006A280();
  v8 = sub_10006A260();
  v5(v4, v0);
  v19 = sub_10002CC28();
  sub_10002C1A8();
  sub_10006A280();
  v9 = sub_10006A260();
  v5(v4, v0);
  v19 = sub_10002720C();
  sub_100026F00();
  sub_10006A280();
  v10 = sub_10006A260();
  v5(v4, v0);
  v19 = sub_100029CA0();
  sub_100029748();
  sub_10006A280();
  v11 = sub_10006A260();
  v5(v4, v0);
  sub_100007DF0(&qword_100098270, &qword_100075950);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000758D0;
  v13 = v17;
  *(v12 + 32) = v18;
  *(v12 + 40) = v13;
  *(v12 + 48) = v16;
  *(v12 + 56) = v6;
  *(v12 + 64) = v7;
  *(v12 + 72) = v8;
  *(v12 + 80) = v9;
  *(v12 + 88) = v10;
  *(v12 + 96) = v11;
  v14 = sub_10006A250();

  return v14;
}

uint64_t sub_10004380C()
{
  v0 = sub_10006A6C0();
  sub_10000D8DC(v0, qword_100098350);
  sub_10000CEB8(v0, qword_100098350);
  return sub_10006A6A0();
}

uint64_t sub_100043858()
{
  v0 = sub_100007DF0(&qword_100097B78, &qword_100074C70);
  sub_10000D8DC(v0, qword_100098368);
  sub_10000CEB8(v0, qword_100098368);
  sub_10000D894(0, &qword_1000983B8, ICNoteContext_ptr);
  return sub_10006A610();
}

void *sub_1000438E8@<X0>(void *a1@<X8>)
{
  result = sub_100043910();
  *a1 = result;
  return result;
}

void *sub_100043910()
{
  v0 = sub_10006B010();
  v41 = *(v0 - 8);
  v1 = *(v41 + 64);
  __chkstk_darwin(v0);
  v39 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10006B030();
  v38 = *(v40 - 8);
  v3 = *(v38 + 64);
  __chkstk_darwin(v40);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10006B000();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10006B050();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  v18 = objc_opt_self();
  [v18 startSharedContextWithOptions:8389186];
  v19 = [v18 sharedContext];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 databaseOpenError];
    if (!v21)
    {
      return v20;
    }

    v22 = v21;
  }

  if (qword_1000968E0 != -1)
  {
    swift_once();
  }

  v36 = v0;
  v23 = sub_10006A6C0();
  sub_10000CEB8(v23, qword_100098350);
  v24 = sub_10006A6B0();
  v25 = sub_10006B3A0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Cannot create modern note context for Widget Extension — returning nil and exiting shortly", v26, 2u);
  }

  sub_10000D894(0, &qword_100098398, OS_dispatch_queue_ptr);
  v35 = sub_10006B3E0();
  sub_10006B040();
  *v9 = 1;
  (*(v6 + 104))(v9, enum case for DispatchTimeInterval.seconds(_:), v5);
  sub_10006B060();
  (*(v6 + 8))(v9, v5);
  v27 = *(v11 + 8);
  v27(v15, v10);
  aBlock[4] = sub_100043E64;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002CBE4;
  aBlock[3] = &unk_1000934B8;
  v28 = _Block_copy(aBlock);
  v29 = v37;
  sub_10006B020();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10004452C();
  sub_100007DF0(&qword_1000983A8, &unk_100075A30);
  sub_100044584();
  v30 = v39;
  v31 = v36;
  sub_10006B440();
  v32 = v35;
  sub_10006B3D0();
  _Block_release(v28);

  (*(v41 + 8))(v30, v31);
  (*(v38 + 8))(v29, v40);
  v27(v17, v10);
  return 0;
}

uint64_t sub_100043E70()
{
  v0 = sub_100007DF0(&qword_100097FE0, &qword_1000755A8);
  sub_10000D8DC(v0, qword_100098380);
  sub_10000CEB8(v0, qword_100098380);
  sub_10000D894(0, &qword_100096D48, NoteContext_ptr);
  return sub_10006A610();
}

id sub_100043F00@<X0>(void *a1@<X8>)
{
  result = sub_100043F28();
  *a1 = result;
  return result;
}

id sub_100043F28()
{
  v0 = sub_10006B010();
  v47 = *(v0 - 8);
  v1 = *(v47 + 64);
  __chkstk_darwin(v0);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10006B030();
  v46 = *(v4 - 8);
  v5 = *(v46 + 64);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10006B000();
  v45 = *(v8 - 8);
  v9 = *(v45 + 64);
  __chkstk_darwin(v8);
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_10006B050();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v36 - v18;
  result = [objc_allocWithZone(NoteContext) initWithPrivateQueue:1];
  if (!result)
  {
    v39 = v19;
    v40 = v12;
    v41 = v13;
    v42 = v7;
    v43 = v4;
    v44 = v0;
    if (qword_1000968E0 != -1)
    {
      swift_once();
    }

    v21 = sub_10006A6C0();
    sub_10000CEB8(v21, qword_100098350);
    v22 = sub_10006A6B0();
    v23 = sub_10006B3A0();
    v24 = os_log_type_enabled(v22, v23);
    v38 = v3;
    v25 = v39;
    v26 = v45;
    if (v24)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Cannot create HTML note context for Widget Extension — returning nil and exiting shortly", v27, 2u);
    }

    sub_10000D894(0, &qword_100098398, OS_dispatch_queue_ptr);
    v37 = sub_10006B3E0();
    sub_10006B040();
    *v11 = 1;
    (*(v26 + 104))(v11, enum case for DispatchTimeInterval.seconds(_:), v8);
    sub_10006B060();
    (*(v26 + 8))(v11, v8);
    v28 = *(v41 + 8);
    v29 = v17;
    v30 = v40;
    v28(v29, v40);
    aBlock[4] = sub_100044438;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002CBE4;
    aBlock[3] = &unk_100093490;
    v31 = _Block_copy(aBlock);
    v32 = v42;
    sub_10006B020();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10004452C();
    sub_100007DF0(&qword_1000983A8, &unk_100075A30);
    sub_100044584();
    v33 = v38;
    v34 = v44;
    sub_10006B440();
    v35 = v37;
    sub_10006B3D0();
    _Block_release(v31);

    (*(v47 + 8))(v33, v34);
    (*(v46 + 8))(v32, v43);
    v28(v25, v30);
    return 0;
  }

  return result;
}

void sub_100044444(const char *a1)
{
  if (qword_1000968E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10006A6C0();
  sub_10000CEB8(v2, qword_100098350);
  v3 = sub_10006A6B0();
  v4 = sub_10006B390();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, a1, v5, 2u);
  }

  exit(1);
}

uint64_t sub_100044514(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10004452C()
{
  result = qword_1000983A0;
  if (!qword_1000983A0)
  {
    sub_10006B010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000983A0);
  }

  return result;
}

unint64_t sub_100044584()
{
  result = qword_1000983B0;
  if (!qword_1000983B0)
  {
    sub_100008154(&qword_1000983A8, &unk_100075A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000983B0);
  }

  return result;
}

uint64_t sub_1000445F0()
{
  v0 = sub_10006A6C0();
  sub_10000D8DC(v0, qword_1000983C0);
  sub_10000CEB8(v0, qword_1000983C0);
  return sub_10006A6A0();
}

void sub_10004463C()
{
  v0 = sub_10006B280();
  v1 = sub_10006B280();
  v2 = [objc_opt_self() attributeWithDomain:v0 name:v1];

  qword_1000983D8 = v2;
}

uint64_t sub_1000446E0()
{
  v0 = sub_100007DF0(&qword_100098400, &qword_100075BA8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v15 - v2;
  v4 = sub_100007DF0(&qword_100098408, &qword_100075BB0);
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  sub_10004587C();
  sub_10006AA70();
  v12 = v5[2];
  v12(v9, v11, v4);
  v12(v3, v9, v4);
  sub_10006A770();
  v13 = v5[1];
  v13(v11, v4);
  return (v13)(v9, v4);
}

uint64_t sub_1000448A8@<X0>(_OWORD *a1@<X8>)
{
  v2 = sub_10006B3F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[5] = 0u;
  v25 = a1 + 5;
  *a1 = 0u;
  a1[10] = 0u;
  v24 = a1 + 10;
  v7 = objc_opt_self();
  v8 = [v7 defaultCenter];
  sub_10006B400();

  sub_1000458D0();
  v9 = sub_10006A6E0();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v11 = sub_10006A6D0();
  v27 = v11;
  v28 = &protocol witness table for AnyCancellable;
  v26[0] = v9;
  sub_100045928(v26, a1);
  v12 = [v7 defaultCenter];
  sub_10006B400();

  v13 = sub_10006A6E0();
  v10(v6, v2);
  v27 = v11;
  v28 = &protocol witness table for AnyCancellable;
  v26[0] = v13;
  sub_100045928(v26, a1 + 40);
  v14 = [v7 defaultCenter];
  sub_10006B400();

  v15 = sub_10006A6E0();
  v10(v6, v2);
  v27 = v11;
  v28 = &protocol witness table for AnyCancellable;
  v26[0] = v15;
  sub_100045928(v26, v24);
  v16 = [v7 defaultCenter];
  sub_10006B400();

  v17 = sub_10006A6E0();
  v10(v6, v2);
  v27 = v11;
  v28 = &protocol witness table for AnyCancellable;
  v26[0] = v17;
  sub_100045928(v26, a1 + 200);
  v18 = [v7 defaultCenter];
  sub_10006B400();

  v19 = sub_10006A6E0();
  v10(v6, v2);
  v27 = v11;
  v28 = &protocol witness table for AnyCancellable;
  v26[0] = v19;
  sub_100045928(v26, v25);
  v20 = [v7 defaultCenter];
  sub_10006B400();

  v21 = sub_10006A6E0();
  v10(v6, v2);
  v27 = v11;
  v28 = &protocol witness table for AnyCancellable;
  v26[0] = v21;
  return sub_100045928(v26, a1 + 120);
}

void sub_100044D20()
{
  v0 = [objc_opt_self() currentProcess];
  sub_100007DF0(&qword_100096D58, &unk_100075BC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10006F750;
  if (qword_100096900 != -1)
  {
    swift_once();
  }

  v2 = qword_1000983D8;
  *(v1 + 32) = qword_1000983D8;
  v3 = objc_allocWithZone(RBSAssertion);
  v4 = v2;
  v5 = sub_10006B280();
  sub_100045998();
  isa = sub_10006B310().super.isa;

  v7 = [v3 initWithExplanation:v5 target:v0 attributes:isa];

  v8 = qword_1000983E0;
  qword_1000983E0 = v7;

  v9 = qword_1000983E0;
  if (qword_1000983E0)
  {
    v12[4] = sub_100044F04;
    v12[5] = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100044F18;
    v12[3] = &unk_1000935C0;
    v10 = _Block_copy(v12);
    v11 = v9;
    [v11 acquireWithInvalidationHandler:v10];
    _Block_release(v10);
  }
}

void sub_100044F18(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

void sub_100044FB8()
{
  v0 = [objc_opt_self() currentProcess];
  sub_100007DF0(&qword_100096D58, &unk_100075BC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10006F750;
  if (qword_100096900 != -1)
  {
    swift_once();
  }

  v2 = qword_1000983D8;
  *(v1 + 32) = qword_1000983D8;
  v3 = objc_allocWithZone(RBSAssertion);
  v4 = v2;
  v5 = sub_10006B280();
  sub_100045998();
  isa = sub_10006B310().super.isa;

  v7 = [v3 initWithExplanation:v5 target:v0 attributes:isa];

  v8 = qword_1000983F0;
  qword_1000983F0 = v7;

  v9 = qword_1000983F0;
  if (qword_1000983F0)
  {
    v12[4] = sub_10004519C;
    v12[5] = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100044F18;
    v12[3] = &unk_100093598;
    v10 = _Block_copy(v12);
    v11 = v9;
    [v11 acquireWithInvalidationHandler:v10];
    _Block_release(v10);
  }
}

void sub_1000451C4()
{
  v0 = [objc_opt_self() currentProcess];
  sub_100007DF0(&qword_100096D58, &unk_100075BC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10006F750;
  if (qword_100096900 != -1)
  {
    swift_once();
  }

  v2 = qword_1000983D8;
  *(v1 + 32) = qword_1000983D8;
  v3 = objc_allocWithZone(RBSAssertion);
  v4 = v2;
  v5 = sub_10006B280();
  sub_100045998();
  isa = sub_10006B310().super.isa;

  v7 = [v3 initWithExplanation:v5 target:v0 attributes:isa];

  v8 = qword_1000983E8;
  qword_1000983E8 = v7;

  v9 = qword_1000983E8;
  if (qword_1000983E8)
  {
    v12[4] = sub_1000453A8;
    v12[5] = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100044F18;
    v12[3] = &unk_100093570;
    v10 = _Block_copy(v12);
    v11 = v9;
    [v11 acquireWithInvalidationHandler:v10];
    _Block_release(v10);
  }
}

void sub_1000453BC(uint64_t a1, uint64_t a2, const char *a3, void **a4)
{
  if (qword_1000968F8 != -1)
  {
    swift_once();
  }

  v7 = sub_10006A6C0();
  sub_10000CEB8(v7, qword_1000983C0);
  swift_errorRetain();
  v8 = sub_10006A6B0();
  v9 = sub_10006B380();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    if (a2)
    {
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      v13 = v12;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(v10 + 4) = v12;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, a3, v10, 0xCu);
    sub_1000459FC(v11);
  }

  v14 = *a4;
  *a4 = 0;
}

void sub_100045544(uint64_t a1, void **a2, const char *a3)
{
  if (*a2)
  {
    if (qword_1000968F8 != -1)
    {
      swift_once();
    }

    v5 = sub_10006A6C0();
    sub_10000CEB8(v5, qword_1000983C0);
    v6 = sub_10006A6B0();
    v7 = sub_10006B390();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, a3, v8, 2u);
    }

    v9 = *a2;
    if (*a2)
    {
      [v9 invalidate];
      v9 = *a2;
    }

    *a2 = 0;
  }
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000456B4();
  sub_10006A780();
  return 0;
}

unint64_t sub_1000456B4()
{
  result = qword_1000983F8;
  if (!qword_1000983F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000983F8);
  }

  return result;
}

uint64_t sub_100045708(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100045720(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_100045764(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 240))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1000457C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_10004587C()
{
  result = qword_100098410;
  if (!qword_100098410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098410);
  }

  return result;
}

unint64_t sub_1000458D0()
{
  result = qword_100098418;
  if (!qword_100098418)
  {
    sub_10006B3F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098418);
  }

  return result;
}

uint64_t sub_100045928(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007DF0(&qword_100098420, &qword_100075BB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100045998()
{
  result = qword_100098428;
  if (!qword_100098428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100098428);
  }

  return result;
}

uint64_t sub_1000459E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000459FC(uint64_t a1)
{
  v2 = sub_100007DF0(&qword_100096D40, &unk_10006F770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100045A68()
{
  result = qword_100098430;
  if (!qword_100098430)
  {
    sub_100008154(&qword_100098438, &unk_100075BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098430);
  }

  return result;
}

uint64_t sub_100045ADC()
{
  result = sub_10006AE80();
  qword_1000A5758 = result;
  return result;
}

uint64_t sub_100045B18()
{
  result = sub_10006AE80();
  qword_1000A5760 = result;
  return result;
}

uint64_t sub_100045B80(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100007DF0(&qword_100098440, &unk_100075C20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_100007DF0(&qword_100096A50, &unk_10006F470);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_100007DF0(&qword_100096A58, &unk_100075C30);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v15 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[9]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

uint64_t sub_100045D6C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100007DF0(&qword_100098440, &unk_100075C20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100007DF0(&qword_100096A50, &unk_10006F470);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_100007DF0(&qword_100096A58, &unk_100075C30);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[7];
      }

      else
      {
        result = sub_100007DF0(&qword_100096B30, &qword_10006F548);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[9]) = a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[8];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for WidgetHeader()
{
  result = qword_1000984A0;
  if (!qword_1000984A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100045F80()
{
  sub_100046204(319, &qword_1000984B0, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100046204(319, &qword_100096AD8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100046268(319, &qword_100096AD0, &type metadata for Bool, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_100046204(319, &unk_100096AE0, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_100046204(319, &qword_100096DD0, &type metadata accessor for URL, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_100046268(319, &qword_1000984B8, &type metadata for Image, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_100046268(319, &qword_100096DC8, &type metadata for String, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_100046268(319, &unk_1000984C0, &type metadata for AnyView, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
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

void sub_100046204(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100046268(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000462D4()
{
  v1 = sub_10006A950();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for WidgetHeader() + 24);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_10006B3B0();
    v8 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();
    sub_1000096B4(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_10004642C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10006A950();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007DF0(&qword_100096A40, &unk_10006F460);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for WidgetHeader();
  sub_100009728(v1 + *(v12 + 28), v11, &qword_100096A40, &unk_10006F460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10006B0C0();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10006B3B0();
    v16 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100046634@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v50 = sub_10006A9C0();
  v2 = *(v50 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v50);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007DF0(&qword_100098528, &qword_100075CA8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v48 - v8;
  v10 = sub_100007DF0(&qword_100098530, &qword_100075CB0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v48 - v12;
  v14 = sub_100007DF0(&qword_100098538, &qword_100075CB8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v48 - v16;
  v49 = sub_100007DF0(&qword_100098540, &qword_100075CC0);
  v18 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v20 = &v48 - v19;
  *v9 = sub_10006A9E0();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v21 = sub_100007DF0(&qword_100098548, &qword_100075CC8);
  sub_100046A74(v1, &v9[*(v21 + 44)]);
  _UISolariumEnabled();
  sub_1000462D4();
  sub_10006AFB0();
  sub_10006A790();
  sub_1000096C0(v9, v13, &qword_100098528, &qword_100075CA8);
  v22 = &v13[*(v10 + 36)];
  v23 = v53;
  *v22 = v52;
  *(v22 + 1) = v23;
  *(v22 + 2) = v54;
  sub_10006A9B0();
  sub_10004A2B4();
  sub_10006AD40();
  (*(v2 + 8))(v5, v50);
  sub_100009790(v13, &qword_100098530, &qword_100075CB0);
  v24 = sub_10006AB20();
  if (sub_1000462D4())
  {
    v25 = *(v1 + *(type metadata accessor for WidgetHeader() + 72));
  }

  sub_10006A720();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_1000096C0(v17, v20, &qword_100098538, &qword_100075CB8);
  v34 = &v20[*(v49 + 36)];
  *v34 = v24;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = sub_10006AB40();
  if (sub_1000462D4())
  {
    v36 = *(v1 + *(type metadata accessor for WidgetHeader() + 68));
  }

  sub_10006A720();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v51;
  sub_1000096C0(v20, v51, &qword_100098540, &qword_100075CC0);
  result = sub_100007DF0(&qword_100098560, &qword_100075CD0);
  v47 = v45 + *(result + 36);
  *v47 = v35;
  *(v47 + 8) = v38;
  *(v47 + 16) = v40;
  *(v47 + 24) = v42;
  *(v47 + 32) = v44;
  *(v47 + 40) = 0;
  return result;
}

uint64_t sub_100046A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = type metadata accessor for WidgetHeader();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v56 - v9;
  v11 = sub_100007DF0(&qword_100098568, &qword_100075CD8);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11);
  v63 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v56 - v16;
  v56 = v3;
  sub_100009728(a1 + *(v3 + 32), v10, &qword_100096B30, &qword_10006F548);
  sub_10004A36C(a1, v6);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v61 = v5;
  v19 = swift_allocObject();
  sub_10004A3D4(v6, v19 + v18);
  sub_100007DF0(&qword_100098570, &qword_100075CE8);
  sub_10004A4A8();
  sub_10006A710();
  v20 = sub_10006AFB0();
  v22 = v21;
  v23 = *(v12 + 44);
  v24 = v17;
  v25 = &v17[v23];
  sub_1000473E4(v25);
  v26 = (v25 + *(sub_100007DF0(&qword_1000985D0, &qword_100075D20) + 36));
  *v26 = v20;
  v26[1] = v22;
  if (sub_1000462D4())
  {
    sub_10004A36C(a1, v6);
    v58 = swift_allocObject();
    sub_10004A3D4(v6, v58 + v18);
    sub_10006AFB0();
    sub_10006A790();
    v27 = v75;
    v61 = v77;
    v59 = v73;
    v60 = v78;
    LOBYTE(v71[0]) = v74;
    LOBYTE(v65) = v76;
    v28 = sub_10006AB40();
    v29 = *(a1 + *(v56 + 48));
    sub_10006A720();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = LOBYTE(v71[0]);
    v39 = v65;
    v64 = 0;
    v40 = v28;
    v41 = sub_10004AAB4;
  }

  else
  {
    v41 = 0;
    v58 = 0;
    v59 = 0;
    v27 = 0;
    v60 = 0;
    v61 = 0;
    v40 = 0;
    v39 = 0;
    v38 = 0;
    v31 = 0;
    v33 = 0;
    v35 = 0;
    v37 = 0;
  }

  v56 = v38;
  v57 = v24;
  v42 = v63;
  sub_100009728(v24, v63, &qword_100098568, &qword_100075CD8);
  v43 = v62;
  sub_100009728(v42, v62, &qword_100098568, &qword_100075CD8);
  v44 = (v43 + *(sub_100007DF0(&qword_1000985D8, &qword_100075D28) + 48));
  v45 = v41;
  v46 = v58;
  v47 = v59;
  *&v65 = v41;
  *(&v65 + 1) = v58;
  *&v66 = v59;
  *(&v66 + 1) = v38;
  *&v67 = v27;
  *(&v67 + 1) = v39;
  v49 = v60;
  v48 = v61;
  *&v68 = v61;
  *(&v68 + 1) = v60;
  v50 = v40;
  *&v69 = v40;
  *(&v69 + 1) = v31;
  *&v70[0] = v33;
  *(&v70[0] + 1) = v35;
  *&v70[1] = v37;
  BYTE8(v70[1]) = 0;
  v51 = v66;
  *v44 = v65;
  v44[1] = v51;
  v52 = v68;
  v44[2] = v67;
  v44[3] = v52;
  v53 = v70[0];
  v44[4] = v69;
  v44[5] = v53;
  *(v44 + 89) = *(v70 + 9);
  v54 = v46;
  sub_100009728(&v65, v71, &qword_1000985E0, &qword_100075D30);
  sub_100009790(v57, &qword_100098568, &qword_100075CD8);
  v71[0] = v45;
  v71[1] = v54;
  v71[2] = v47;
  v71[3] = v56;
  v71[4] = v27;
  v71[5] = v39;
  v71[6] = v48;
  v71[7] = v49;
  v71[8] = v50;
  v71[9] = v31;
  v71[10] = v33;
  v71[11] = v35;
  v71[12] = v37;
  v72 = 0;
  sub_100009790(v71, &qword_1000985E0, &qword_100075D30);
  return sub_100009790(v42, &qword_100098568, &qword_100075CD8);
}

uint64_t sub_100046F4C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10006B0C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = sub_100007DF0(&qword_100098588, &qword_100075CF0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  sub_10004712C(&v19 - v13);
  *&v14[*(v11 + 44)] = sub_10006AE20();
  sub_10004642C(v9);
  sub_10006B0A0();
  v15 = sub_10006B080();
  v16 = *(v3 + 8);
  v16(v7, v2);
  v16(v9, v2);
  if (v15)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 1.0;
  }

  sub_1000096C0(v14, a1, &qword_100098588, &qword_100075CF0);
  result = sub_100007DF0(&qword_100098570, &qword_100075CE8);
  *(a1 + *(result + 36)) = v17;
  return result;
}

double sub_10004712C@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_100007DF0(&qword_1000985C8, &unk_100075D10);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v32 - v5;
  v7 = sub_100007DF0(&qword_1000985B8, &qword_100075D08);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v32 - v9;
  v11 = sub_100007DF0(&qword_1000985A8, &qword_100075D00);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = v32 - v13;
  *v6 = sub_10006A970();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v15 = sub_100007DF0(&qword_100098730, &qword_100075E40);
  sub_100047E10(v1, &v6[*(v15 + 44)]);
  if (sub_1000462D4())
  {
    v16 = sub_10006AE20();
  }

  else
  {
    v17 = [objc_opt_self() ICTintColor];
    v16 = sub_10006ADD0();
  }

  v18 = v16;
  sub_1000096C0(v6, v10, &qword_1000985C8, &unk_100075D10);
  *&v10[*(v7 + 36)] = v18;
  v19 = sub_10006AB20();
  sub_1000462D4();
  sub_10006A720();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_1000096C0(v10, v14, &qword_1000985B8, &qword_100075D08);
  v28 = &v14[*(v11 + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  sub_1000462D4();
  sub_10006AFB0();
  sub_10006A790();
  sub_1000096C0(v14, a1, &qword_1000985A8, &qword_100075D00);
  v29 = (a1 + *(sub_100007DF0(&qword_100098598, &qword_100075CF8) + 36));
  v30 = v32[1];
  *v29 = v32[0];
  v29[1] = v30;
  result = *&v33;
  v29[2] = v33;
  return result;
}

uint64_t sub_1000473E4@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v41 = sub_100007DF0(&qword_1000985F0, &qword_100075D40);
  v1 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v36 = v35 - v2;
  v39 = sub_100007DF0(&qword_1000985F8, &qword_100075D48);
  v3 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v37 = (v35 - v4);
  v38 = sub_10006B0C0();
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v38);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v35 - v10;
  v12 = sub_100007DF0(&qword_100098600, &qword_100075D50);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v35 - v14;
  v16 = sub_100007DF0(&qword_100098608, &qword_100075D58);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (v35 - v18);
  v20 = sub_100007DF0(&qword_100098610, &unk_100075D60);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = v35 - v22;
  if (sub_1000462D4())
  {
    v35[1] = v16;
    v35[2] = v20;
    v35[3] = v12;
    sub_10004642C(v11);
    sub_10006B090();
    v24 = sub_10006B080();
    v25 = *(v5 + 8);
    v26 = v38;
    v25(v9, v38);
    v25(v11, v26);
    if (v24)
    {
      v27 = sub_10006ADC0();
      v28 = v37;
      v29 = (v37 + *(v39 + 36));
      v30 = *(sub_100007DF0(&qword_100096C98, &qword_10006F6B0) + 28);
      v31 = enum case for ColorScheme.dark(_:);
      v32 = sub_10006A740();
      (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
      *v29 = swift_getKeyPath();
      *v28 = v27;
      sub_100009728(v28, v19, &qword_1000985F8, &qword_100075D48);
      swift_storeEnumTagMultiPayload();
      sub_10004AB3C();
      sub_10006AA50();
      sub_100009728(v23, v15, &qword_100098610, &unk_100075D60);
      swift_storeEnumTagMultiPayload();
      sub_10004ABF4();
      sub_10004AC80();
      sub_10006AA50();
      sub_100009790(v23, &qword_100098610, &unk_100075D60);
      return sub_100009790(v28, &qword_1000985F8, &qword_100075D48);
    }

    else
    {
      v34 = v36;
      sub_100047974(v36);
      sub_100009728(v34, v15, &qword_1000985F0, &qword_100075D40);
      swift_storeEnumTagMultiPayload();
      sub_10004ABF4();
      sub_10004AC80();
      sub_10006AA50();
      return sub_100009790(v34, &qword_1000985F0, &qword_100075D40);
    }
  }

  else
  {
    *v19 = sub_10006AE10();
    swift_storeEnumTagMultiPayload();
    sub_10004AB3C();

    sub_10006AA50();
    sub_100009728(v23, v15, &qword_100098610, &unk_100075D60);
    swift_storeEnumTagMultiPayload();
    sub_10004ABF4();
    sub_10004AC80();
    sub_10006AA50();

    return sub_100009790(v23, &qword_100098610, &unk_100075D60);
  }
}

uint64_t sub_100047974@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v3 = sub_100007DF0(&qword_1000986B8, &qword_100075DE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v53 - v5;
  v7 = sub_100007DF0(&qword_100098668, &qword_100075D88);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v53 - v9;
  v11 = sub_100007DF0(&qword_100098658, &qword_100075D80);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v53 - v13;
  v54 = sub_100007DF0(&qword_100098648, &qword_100075D78);
  v15 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v56 = &v53 - v16;
  v55 = sub_100007DF0(&qword_100098638, &qword_100075D70);
  v17 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v57 = &v53 - v18;
  sub_100049464(v2, v10);
  if (_UISolariumEnabled())
  {
    v19 = sub_10006AE10();
  }

  else
  {
    v19 = sub_10006AE80();
  }

  v20 = v19;
  sub_1000096C0(v10, v14, &qword_100098668, &qword_100075D88);
  v21 = *(v11 + 36);
  v58 = v14;
  v22 = &v14[v21];
  *v22 = v20;
  *(v22 + 8) = xmmword_100075BE0;
  *(v22 + 3) = 0x3FF0000000000000;
  sub_10006AFB0();
  sub_10006A790();
  v23 = v64;
  v24 = v65;
  v25 = v66;
  v26 = v67;
  v27 = v68;
  v28 = v69;
  v63 = v65;
  v62 = v67;
  if (_UISolariumEnabled())
  {
    v29 = sub_10006AE10();
  }

  else
  {
    v29 = sub_10006AE80();
  }

  v30 = v29;
  v31 = *(v3 + 36);
  v32 = enum case for BlendMode.plusDarker(_:);
  v33 = sub_10006AFD0();
  (*(*(v33 - 8) + 104))(&v6[v31], v32, v33);
  *v6 = v23;
  v6[8] = v24;
  *(v6 + 9) = *v61;
  *(v6 + 3) = *&v61[3];
  *(v6 + 2) = v25;
  v6[24] = v26;
  *(v6 + 25) = *v60;
  *(v6 + 7) = *&v60[3];
  *(v6 + 4) = v27;
  *(v6 + 5) = v28;
  *(v6 + 3) = xmmword_100075BF0;
  *(v6 + 8) = v30;
  *(v6 + 9) = 0;
  *(v6 + 10) = 0;
  *(v6 + 11) = 0xBFF0000000000000;
  v34 = sub_10006AFA0();
  v36 = v35;
  v37 = v56;
  v38 = &v56[*(v54 + 36)];
  sub_1000096C0(v6, v38, &qword_1000986B8, &qword_100075DE0);
  v39 = (v38 + *(sub_100007DF0(&qword_1000986A0, &qword_100075DA0) + 36));
  *v39 = v34;
  v39[1] = v36;
  sub_1000096C0(v58, v37, &qword_100098658, &qword_100075D80);
  v40 = v57;
  sub_1000096C0(v37, v57, &qword_100098648, &qword_100075D78);
  *(v40 + *(v55 + 36)) = 0;
  LOBYTE(v34) = sub_10006AB20();
  sub_10006A720();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v40;
  v50 = v59;
  sub_1000096C0(v49, v59, &qword_100098638, &qword_100075D70);
  result = sub_100007DF0(&qword_1000985F0, &qword_100075D40);
  v52 = v50 + *(result + 36);
  *v52 = v34;
  *(v52 + 8) = v42;
  *(v52 + 16) = v44;
  *(v52 + 24) = v46;
  *(v52 + 32) = v48;
  *(v52 + 40) = 0;
  return result;
}

uint64_t sub_100047E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v144 = a2;
  v3 = sub_100007DF0(&qword_100098738, &qword_100075E48);
  v142 = *(v3 - 8);
  v143 = v3;
  v4 = *(v142 + 64);
  __chkstk_darwin(v3);
  v126 = (&v112 - v5);
  v122 = sub_10006A9D0();
  v120 = *(v122 - 8);
  v6 = *(v120 + 64);
  __chkstk_darwin(v122);
  v119 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_100007DF0(&qword_100098740, &qword_100075E50);
  v124 = *(v125 - 8);
  v8 = *(v124 + 64);
  v9 = __chkstk_darwin(v125);
  v123 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v121 = &v112 - v11;
  v12 = sub_100007DF0(&qword_100098748, &qword_100075E58);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v141 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v140 = &v112 - v16;
  v137 = sub_100007DF0(&qword_100098750, &qword_100075E60);
  v128 = *(v137 - 8);
  v17 = *(v128 + 64);
  __chkstk_darwin(v137);
  v127 = &v112 - v18;
  v133 = sub_100007DF0(&qword_100098758, &qword_100075E68);
  v19 = *(*(v133 - 8) + 64);
  __chkstk_darwin(v133);
  v129 = &v112 - v20;
  v136 = sub_100007DF0(&qword_100098760, &qword_100075E70);
  v21 = *(*(v136 - 8) + 64);
  __chkstk_darwin(v136);
  v112 = &v112 - v22;
  v117 = sub_10006B0C0();
  v116 = *(v117 - 8);
  v23 = *(v116 + 64);
  v24 = __chkstk_darwin(v117);
  v115 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v114 = &v112 - v26;
  v27 = sub_100007DF0(&qword_100098768, &qword_100075E78);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v139 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v147 = &v112 - v31;
  v32 = sub_100007DF0(&qword_100098770, &qword_100075E80);
  v130 = *(v32 - 8);
  v131 = v32;
  v33 = *(v130 + 64);
  __chkstk_darwin(v32);
  v118 = &v112 - v34;
  v35 = sub_10006ABF0();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v39 = &v112 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_100007DF0(&qword_100098778, &qword_100075E88);
  v41 = *(*(v40 - 8) + 64);
  v42 = __chkstk_darwin(v40);
  v44 = &v112 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v46 = (&v112 - v45);
  v47 = sub_100007DF0(&qword_100098780, &qword_100075E90);
  v48 = *(*(v47 - 8) + 64);
  v49 = __chkstk_darwin(v47 - 8);
  v138 = &v112 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v52 = &v112 - v51;
  v145 = type metadata accessor for WidgetHeader();
  v53 = *(a1 + *(v145 + 36));
  v134 = v36;
  v135 = v35;
  v132 = v39;
  if (v53)
  {
    (*(v36 + 104))(v39, enum case for Font.TextStyle.body(_:), v35);

    v113 = sub_10006AB90();
    (*(v36 + 8))(v39, v35);
    KeyPath = swift_getKeyPath();
    v55 = (v46 + *(v40 + 36));
    v56 = *(sub_100007DF0(&qword_100097D88, &qword_1000753D0) + 28);
    v57 = enum case for Image.Scale.medium(_:);
    v58 = sub_10006AEE0();
    (*(*(v58 - 8) + 104))(v55 + v56, v57, v58);
    *v55 = swift_getKeyPath();
    *v46 = v53;
    v46[1] = KeyPath;
    v46[2] = v113;

    if (sub_1000462D4())
    {
      v59 = 0x4024000000000000;
    }

    else
    {
      v59 = 0x4010000000000000;
    }

    sub_100009728(v46, v44, &qword_100098778, &qword_100075E88);
    v60 = v118;
    sub_100009728(v44, v118, &qword_100098778, &qword_100075E88);
    v61 = *(sub_100007DF0(&qword_1000987E0, &qword_100075F38) + 48);

    v62 = v60 + v61;
    *v62 = v59;
    *(v62 + 8) = 0;
    sub_100009790(v46, &qword_100098778, &qword_100075E88);
    sub_100009790(v44, &qword_100098778, &qword_100075E88);
    sub_1000096C0(v60, v52, &qword_100098770, &qword_100075E80);
    (*(v130 + 56))(v52, 0, 1, v131);
  }

  else
  {
    (*(v130 + 56))(v52, 1, 1, v131);
  }

  v63 = v52;
  v64 = v145;
  v65 = v140;
  if (*(a1 + *(v145 + 40) + 8))
  {
    goto LABEL_10;
  }

  v66 = v114;
  sub_10004642C(v114);
  v67 = v115;
  sub_10006B0B0();
  v68 = sub_10006B080();
  v69 = *(v116 + 8);
  v70 = v67;
  v71 = v117;
  v69(v70, v117);
  v69(v66, v71);
  if ((v68 & 1) == 0)
  {
LABEL_10:
    v79 = v127;
    sub_100048D00(v127);
    v80 = v128;
    v81 = v137;
    (*(v128 + 16))(v129, v79, v137);
    swift_storeEnumTagMultiPayload();
    sub_10004B0A0();
    v82 = sub_100008154(&qword_100098790, &qword_100075E98);
    v83 = sub_10004B168();
    v148 = v82;
    v149 = v83;
    swift_getOpaqueTypeConformance2();
    sub_10006AA50();
    (*(v80 + 8))(v79, v81);
  }

  else
  {
    v72 = v112;
    sub_100048D00(v112);
    v73 = *(v136 + 36);
    v74 = enum case for BlendMode.plusLighter(_:);
    v75 = sub_10006AFD0();
    (*(*(v75 - 8) + 104))(v72 + v73, v74, v75);
    sub_100009728(v72, v129, &qword_100098760, &qword_100075E70);
    swift_storeEnumTagMultiPayload();
    sub_10004B0A0();
    v76 = sub_100008154(&qword_100098790, &qword_100075E98);
    v77 = sub_10004B168();
    v148 = v76;
    v149 = v77;
    swift_getOpaqueTypeConformance2();
    sub_10006AA50();
    v78 = v72;
    v64 = v145;
    sub_100009790(v78, &qword_100098760, &qword_100075E70);
  }

  v84 = *(a1 + *(v64 + 44));
  v86 = v134;
  v85 = v135;
  v87 = v132;
  v146 = v63;
  if (v84)
  {
    (*(v134 + 104))(v132, enum case for Font.TextStyle.body(_:), v135);

    v88 = sub_10006AB90();
    (*(v86 + 8))(v87, v85);
    v89 = swift_getKeyPath();
    v148 = v84;
    v149 = v89;
    v150 = v88;
    v90 = v120;
    v91 = v119;
    v92 = v122;
    (*(v120 + 104))(v119, enum case for ContentSizeCategory.large(_:), v122);

    sub_100007DF0(&qword_1000987C8, &unk_100075EE8);
    sub_10004B3A8();
    v93 = v65;
    v94 = v121;
    sub_10006ACD0();
    (*(v90 + 8))(v91, v92);

    v95 = v124;
    v96 = *(v124 + 16);
    v97 = v123;
    v98 = v125;
    v96(v123, v94, v125);
    v99 = v126;
    *v126 = 0x4024000000000000;
    *(v99 + 8) = 0;
    v100 = sub_100007DF0(&qword_1000987D8, &unk_100075EF8);
    v96((v99 + *(v100 + 48)), v97, v98);

    v101 = *(v95 + 8);
    v102 = v94;
    v65 = v93;
    v63 = v146;
    v101(v102, v98);
    v101(v97, v98);
    sub_1000096C0(v99, v65, &qword_100098738, &qword_100075E48);
    v103 = 0;
  }

  else
  {
    v103 = 1;
  }

  (*(v142 + 56))(v65, v103, 1, v143);
  v104 = v138;
  sub_100009728(v63, v138, &qword_100098780, &qword_100075E90);
  v105 = v147;
  v106 = v139;
  sub_100009728(v147, v139, &qword_100098768, &qword_100075E78);
  v107 = v141;
  sub_100009728(v65, v141, &qword_100098748, &qword_100075E58);
  v108 = v65;
  v109 = v144;
  sub_100009728(v104, v144, &qword_100098780, &qword_100075E90);
  v110 = sub_100007DF0(&qword_1000987C0, &qword_100075EB0);
  sub_100009728(v106, v109 + *(v110 + 48), &qword_100098768, &qword_100075E78);
  sub_100009728(v107, v109 + *(v110 + 64), &qword_100098748, &qword_100075E58);
  sub_100009790(v108, &qword_100098748, &qword_100075E58);
  sub_100009790(v105, &qword_100098768, &qword_100075E78);
  sub_100009790(v146, &qword_100098780, &qword_100075E90);
  sub_100009790(v107, &qword_100098748, &qword_100075E58);
  sub_100009790(v106, &qword_100098768, &qword_100075E78);
  return sub_100009790(v104, &qword_100098780, &qword_100075E90);
}

uint64_t sub_100048D00@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v74 = sub_10006A9D0();
  v72 = *(v74 - 8);
  v2 = *(v72 + 64);
  __chkstk_darwin(v74);
  v71 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_10006B100();
  v64 = *(v65 - 8);
  v4 = *(v64 + 64);
  v5 = __chkstk_darwin(v65);
  v62 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v61 = &v59 - v7;
  v8 = sub_10006ABF0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_100007DF0(&qword_1000987E8, &qword_100075F40);
  v67 = *(v68 - 8);
  v13 = *(v67 + 64);
  __chkstk_darwin(v68);
  v66 = &v59 - v14;
  v69 = sub_100007DF0(&qword_100098790, &qword_100075E98);
  v15 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v70 = &v59 - v16;
  v59 = type metadata accessor for WidgetHeader();
  v17 = *(v59 + 40);
  v63 = v1;
  v18 = (v1 + v17);
  v19 = v18[1];
  if (v19)
  {
    v20 = *v18;
    v21 = v18[1];
  }

  else
  {
    sub_10006B2D0();
  }

  v60 = v19 == 0;
  (*(v9 + 104))(v12, enum case for Font.TextStyle.subheadline(_:), v8);

  sub_10006AB90();
  (*(v9 + 8))(v12, v8);
  v22 = sub_10006AC80();
  v24 = v23;
  v26 = v25;

  sub_10006ABE0();
  v27 = sub_10006AC40();
  v29 = v28;
  v31 = v30;
  sub_10000832C(v22, v24, v26 & 1);

  v32 = v59;
  v33 = v63;
  v34 = *(v63 + *(v59 + 64));
  v35 = sub_10006AC50();
  v37 = v36;
  v39 = v38;
  sub_10000832C(v27, v29, v31 & 1);

  v40 = v33 + *(v32 + 20);
  v41 = v61;
  sub_10005CB68(v61);
  v42 = v64;
  v43 = v62;
  v44 = v65;
  (*(v64 + 104))(v62, enum case for WidgetFamily.systemSmall(_:), v65);
  sub_10004B7A8(&qword_1000987F0, &type metadata accessor for WidgetFamily);
  sub_10006B2F0();
  sub_10006B2F0();
  v45 = *(v42 + 8);
  v45(v43, v44);
  v45(v41, v44);
  v46 = sub_10006AC30();
  sub_10000832C(v35, v37, v39 & 1);

  KeyPath = swift_getKeyPath();
  v48 = swift_getKeyPath();
  *&v75 = v46;
  *(&v75 + 1) = KeyPath;
  *&v76 = 1;
  BYTE8(v76) = 0;
  *&v77 = v48;
  *(&v77 + 1) = 0xC020000000000000;
  sub_100007DF0(&qword_1000987A0, &qword_100075EA0);
  sub_10004B230();
  v49 = v66;
  sub_10006AD70();

  sub_10006AFC0();
  sub_10006A7F0();
  v50 = v70;
  (*(v67 + 32))(v70, v49, v68);
  v51 = (v50 + *(v69 + 36));
  v52 = v80;
  v51[4] = v79;
  v51[5] = v52;
  v51[6] = v81;
  v53 = v76;
  *v51 = v75;
  v51[1] = v53;
  v54 = v78;
  v51[2] = v77;
  v51[3] = v54;
  v55 = v72;
  v56 = v71;
  v57 = v74;
  (*(v72 + 104))(v71, enum case for ContentSizeCategory.accessibilityMedium(_:), v74);
  sub_10004B168();
  sub_10006ACD0();
  (*(v55 + 8))(v56, v57);
  return sub_100009790(v50, &qword_100098790, &qword_100075E98);
}

uint64_t sub_100049464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_100007DF0(&qword_1000986C0, &qword_100075DE8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v25 - v5;
  v26 = sub_100007DF0(&qword_100098688, &qword_100075D98);
  v7 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v9 = (&v25 - v8);
  v10 = sub_10006B0C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  sub_10004642C(&v25 - v16);
  sub_10006B0A0();
  sub_10004B7A8(&qword_1000986C8, &type metadata accessor for WidgetRenderingMode);
  v18 = sub_10006B250();
  v19 = *(v11 + 8);
  v19(v15, v10);
  v19(v17, v10);
  if (v18)
  {
    *v9 = sub_10006AFB0();
    v9[1] = v20;
    v21 = sub_100007DF0(&qword_1000986D8, &qword_100075DF8);
    sub_100049878(a1, v9 + *(v21 + 44));
    sub_100009728(v9, v6, &qword_100098688, &qword_100075D98);
    swift_storeEnumTagMultiPayload();
    sub_1000095F4(&qword_100098680, &qword_100098688, &qword_100075D98);
    sub_10004B044();
    sub_10006AA50();
    return sub_100009790(v9, &qword_100098688, &qword_100075D98);
  }

  else
  {
    sub_100007DF0(&qword_1000986D0, &qword_100075DF0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100075C00;
    *(v23 + 32) = sub_10006AE80();
    *(v23 + 40) = sub_10006AE80();
    sub_10006AF90();
    sub_10006AFE0();
    sub_10006AFF0();
    sub_10006A7C0();
    v24 = v29;
    *v6 = v28;
    *(v6 + 1) = v24;
    *(v6 + 4) = v30;
    swift_storeEnumTagMultiPayload();
    sub_1000095F4(&qword_100098680, &qword_100098688, &qword_100075D98);
    sub_10004B044();
    return sub_10006AA50();
  }
}

uint64_t sub_100049878@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v36 = sub_10006ADE0();
  v34 = *(v36 - 8);
  v3 = *(v34 + 64);
  __chkstk_darwin(v36);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007DF0(&qword_1000986E0, &qword_100075E00);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v34 - v8);
  v10 = sub_100007DF0(&qword_1000986E8, &qword_100075E08);
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v37 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v35 = &v34 - v15;
  *v9 = sub_10006AFB0();
  v9[1] = v16;
  v17 = sub_100007DF0(&qword_1000986F0, &qword_100075E10);
  sub_100049C78(v9 + *(v17 + 44));
  _UISolariumEnabled();
  sub_1000095F4(&qword_1000986F8, &qword_1000986E0, &qword_100075E00);
  sub_10006ACE0();
  sub_100009790(v9, &qword_1000986E0, &qword_100075E00);
  sub_100007DF0(&qword_1000986D0, &qword_100075DF0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100075C00;
  v19 = type metadata accessor for WidgetHeader();
  v20 = *(a1 + *(v19 + 56));
  v21 = enum case for Color.RGBColorSpace.sRGB(_:);
  v22 = *(v34 + 104);
  v23 = v36;
  v22(v5, enum case for Color.RGBColorSpace.sRGB(_:), v36);
  *(v18 + 32) = sub_10006AE70();
  v24 = *(a1 + *(v19 + 60));
  v22(v5, v21, v23);
  *(v18 + 40) = sub_10006AE70();
  sub_10006AFE0();
  sub_10006AFF0();
  sub_10006AF90();
  sub_10006A7C0();
  v25 = v11[2];
  v26 = v37;
  v27 = v35;
  v25(v37, v35, v10);
  v29 = v38;
  v28 = v39;
  v25(v38, v26, v10);
  v30 = &v29[*(sub_100007DF0(&qword_100098700, &qword_100075E18) + 48)];
  *v30 = v28;
  v31 = v40;
  *(v30 + 24) = v41;
  *(v30 + 8) = v31;
  v32 = v11[1];

  v32(v27, v10);

  return (v32)(v26, v10);
}

uint64_t sub_100049C78@<X0>(uint64_t a1@<X8>)
{
  v29[1] = a1;
  v1 = sub_100007DF0(&qword_100098708, &qword_100075E20);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = (v29 - v3);
  v5 = sub_100007DF0(&qword_100098710, &qword_100075E28);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v29 - v10;
  v12 = sub_100007DF0(&qword_100098718, &qword_100075E30);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v29 - v14;
  v16 = sub_100007DF0(&qword_100098598, &qword_100075CF8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = v29 - v18;
  if (_UISolariumEnabled())
  {
    sub_10004712C(v19);
    sub_100009728(v19, v15, &qword_100098598, &qword_100075CF8);
    swift_storeEnumTagMultiPayload();
    sub_10004A5EC();
    sub_1000095F4(&qword_100098728, &qword_100098708, &qword_100075E20);
    sub_10006AA50();
    v20 = v19;
    v21 = &qword_100098598;
    v22 = &qword_100075CF8;
  }

  else
  {
    v29[0] = v1;
    if (qword_100096908 != -1)
    {
      swift_once();
    }

    v23 = qword_1000A5758;
    sub_10004712C(v11);
    v24 = *(v5 + 36);
    v25 = enum case for BlendMode.destinationOut(_:);
    v26 = sub_10006AFD0();
    (*(*(v26 - 8) + 104))(&v11[v24], v25, v26);
    sub_100009728(v11, v9, &qword_100098710, &qword_100075E28);
    *v4 = v23;
    v27 = sub_100007DF0(&qword_100098720, &qword_100075E38);
    sub_100009728(v9, v4 + *(v27 + 48), &qword_100098710, &qword_100075E28);
    swift_retain_n();
    sub_100009790(v9, &qword_100098710, &qword_100075E28);

    sub_100009728(v4, v15, &qword_100098708, &qword_100075E20);
    swift_storeEnumTagMultiPayload();
    sub_10004A5EC();
    sub_1000095F4(&qword_100098728, &qword_100098708, &qword_100075E20);
    sub_10006AA50();
    sub_100009790(v4, &qword_100098708, &qword_100075E20);
    v20 = v11;
    v21 = &qword_100098710;
    v22 = &qword_100075E28;
  }

  return sub_100009790(v20, v21, v22);
}

__n128 sub_10004A08C@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_10006AC20();
  v4 = sub_10006ADB0();
  sub_100007DF0(&qword_1000985E8, &qword_100075D38);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100075C00;
  *(v5 + 32) = 0x3F50624DD2F1A9FCLL;
  *(v5 + 40) = *(a1 + *(type metadata accessor for WidgetHeader() + 52));
  sub_10006A760();
  v6 = sub_10006AFB0();
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  *(a2 + 64) = v13;
  result = v10;
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 80) = v4;
  *(a2 + 88) = 256;
  *(a2 + 96) = v6;
  *(a2 + 104) = v8;
  return result;
}

void sub_10004A1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10006A7A0();
  v5 = v4;
  v6 = type metadata accessor for WidgetHeader();
  v11.x = remainder(v5, *(a3 + *(v6 + 52))) * 0.5;
  v11.y = 4.0;
  sub_10006AC00(v11);
  sub_10006A7A0();
  v8 = v7 * 0.25;
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v8 - 0x2000000000000000) >> 62 == 3)
  {
    v9 = (4 * v8);
    sub_10006A7A0();
    v12.x = v9 + remainder(v10, 4.0) * -0.5;
    v12.y = 4.0;
    sub_10006AC10(v12);
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_10004A2B4()
{
  result = qword_100098550;
  if (!qword_100098550)
  {
    sub_100008154(&qword_100098530, &qword_100075CB0);
    sub_1000095F4(&qword_100098558, &qword_100098528, &qword_100075CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098550);
  }

  return result;
}

uint64_t sub_10004A36C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetHeader();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004A3D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetHeader();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004A438@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(type metadata accessor for WidgetHeader() - 8) + 80);

  return sub_100046F4C(a1);
}

unint64_t sub_10004A4A8()
{
  result = qword_100098578;
  if (!qword_100098578)
  {
    sub_100008154(&qword_100098570, &qword_100075CE8);
    sub_10004A534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098578);
  }

  return result;
}

unint64_t sub_10004A534()
{
  result = qword_100098580;
  if (!qword_100098580)
  {
    sub_100008154(&qword_100098588, &qword_100075CF0);
    sub_10004A5EC();
    sub_1000095F4(&qword_100097E28, &qword_100097E30, &qword_100075480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098580);
  }

  return result;
}

unint64_t sub_10004A5EC()
{
  result = qword_100098590;
  if (!qword_100098590)
  {
    sub_100008154(&qword_100098598, &qword_100075CF8);
    sub_10004A678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098590);
  }

  return result;
}

unint64_t sub_10004A678()
{
  result = qword_1000985A0;
  if (!qword_1000985A0)
  {
    sub_100008154(&qword_1000985A8, &qword_100075D00);
    sub_10004A704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000985A0);
  }

  return result;
}

unint64_t sub_10004A704()
{
  result = qword_1000985B0;
  if (!qword_1000985B0)
  {
    sub_100008154(&qword_1000985B8, &qword_100075D08);
    sub_1000095F4(&qword_1000985C0, &qword_1000985C8, &unk_100075D10);
    sub_1000095F4(&qword_100097E28, &qword_100097E30, &qword_100075480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000985B0);
  }

  return result;
}

uint64_t sub_10004A7E8()
{
  v1 = type metadata accessor for WidgetHeader();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_100007DF0(&qword_100098128, &qword_100075CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10006A9D0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  sub_100007DF0(&qword_100096A38, &qword_1000757C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10006B100();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  sub_1000096B4(*&v5[v1[6]], v5[v1[6] + 8]);
  v11 = v1[7];
  sub_100007DF0(&qword_100096A40, &unk_10006F460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_10006B0C0();
    (*(*(v12 - 8) + 8))(&v5[v11], v12);
  }

  else
  {
    v13 = *&v5[v11];
  }

  v14 = v1[8];
  v15 = sub_10006A520();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(&v5[v14], 1, v15))
  {
    (*(v16 + 8))(&v5[v14], v15);
  }

  v17 = *&v5[v1[9]];

  v18 = *&v5[v1[10] + 8];

  v19 = *&v5[v1[11]];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_10004AAB4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetHeader() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  *&result = sub_10004A08C(v4, a1).n128_u64[0];
  return result;
}

unint64_t sub_10004AB3C()
{
  result = qword_100098618;
  if (!qword_100098618)
  {
    sub_100008154(&qword_1000985F8, &qword_100075D48);
    sub_1000095F4(&qword_100096C90, &qword_100096C98, &qword_10006F6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098618);
  }

  return result;
}

unint64_t sub_10004ABF4()
{
  result = qword_100098620;
  if (!qword_100098620)
  {
    sub_100008154(&qword_100098610, &unk_100075D60);
    sub_10004AB3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098620);
  }

  return result;
}

unint64_t sub_10004AC80()
{
  result = qword_100098628;
  if (!qword_100098628)
  {
    sub_100008154(&qword_1000985F0, &qword_100075D40);
    sub_10004AD0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098628);
  }

  return result;
}

unint64_t sub_10004AD0C()
{
  result = qword_100098630;
  if (!qword_100098630)
  {
    sub_100008154(&qword_100098638, &qword_100075D70);
    sub_10004ADC4();
    sub_1000095F4(&qword_1000986A8, &qword_1000986B0, &qword_100075DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098630);
  }

  return result;
}

unint64_t sub_10004ADC4()
{
  result = qword_100098640;
  if (!qword_100098640)
  {
    sub_100008154(&qword_100098648, &qword_100075D78);
    sub_10004AE7C();
    sub_1000095F4(&qword_100098698, &qword_1000986A0, &qword_100075DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098640);
  }

  return result;
}

unint64_t sub_10004AE7C()
{
  result = qword_100098650;
  if (!qword_100098650)
  {
    sub_100008154(&qword_100098658, &qword_100075D80);
    sub_10004AF08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098650);
  }

  return result;
}

unint64_t sub_10004AF08()
{
  result = qword_100098660;
  if (!qword_100098660)
  {
    sub_100008154(&qword_100098668, &qword_100075D88);
    sub_10004AF8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098660);
  }

  return result;
}

unint64_t sub_10004AF8C()
{
  result = qword_100098670;
  if (!qword_100098670)
  {
    sub_100008154(&qword_100098678, &qword_100075D90);
    sub_1000095F4(&qword_100098680, &qword_100098688, &qword_100075D98);
    sub_10004B044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098670);
  }

  return result;
}

unint64_t sub_10004B044()
{
  result = qword_100098690;
  if (!qword_100098690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098690);
  }

  return result;
}

unint64_t sub_10004B0A0()
{
  result = qword_100098788;
  if (!qword_100098788)
  {
    sub_100008154(&qword_100098760, &qword_100075E70);
    sub_100008154(&qword_100098790, &qword_100075E98);
    sub_10004B168();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098788);
  }

  return result;
}

unint64_t sub_10004B168()
{
  result = qword_100098798;
  if (!qword_100098798)
  {
    sub_100008154(&qword_100098790, &qword_100075E98);
    sub_100008154(&qword_1000987A0, &qword_100075EA0);
    sub_10004B230();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098798);
  }

  return result;
}

unint64_t sub_10004B230()
{
  result = qword_1000987A8;
  if (!qword_1000987A8)
  {
    sub_100008154(&qword_1000987A0, &qword_100075EA0);
    sub_10004B2E8();
    sub_1000095F4(&qword_1000987B0, &qword_1000987B8, &qword_100075EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000987A8);
  }

  return result;
}

unint64_t sub_10004B2E8()
{
  result = qword_1000981E0;
  if (!qword_1000981E0)
  {
    sub_100008154(&qword_1000981D8, &qword_100075878);
    sub_1000095F4(&qword_1000981E8, &qword_1000981F0, &unk_100075880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000981E0);
  }

  return result;
}

unint64_t sub_10004B3A8()
{
  result = qword_1000987D0;
  if (!qword_1000987D0)
  {
    sub_100008154(&qword_1000987C8, &unk_100075EE8);
    sub_1000095F4(&qword_100096BD8, &qword_100096BE0, &qword_10006F610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000987D0);
  }

  return result;
}

uint64_t sub_10004B4A8(uint64_t a1)
{
  v2 = sub_10006AEE0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10006A810();
}

uint64_t sub_10004B57C@<X0>(void *a1@<X8>)
{
  result = sub_10006A840();
  *a1 = v3;
  return result;
}

unint64_t sub_10004B5D4()
{
  result = qword_1000987F8;
  if (!qword_1000987F8)
  {
    sub_100008154(&qword_100098560, &qword_100075CD0);
    sub_10004B660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000987F8);
  }

  return result;
}

unint64_t sub_10004B660()
{
  result = qword_100098800;
  if (!qword_100098800)
  {
    sub_100008154(&qword_100098540, &qword_100075CC0);
    sub_10004B6EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098800);
  }

  return result;
}

unint64_t sub_10004B6EC()
{
  result = qword_100098808;
  if (!qword_100098808)
  {
    sub_100008154(&qword_100098538, &qword_100075CB8);
    sub_10004A2B4();
    sub_10004B7A8(&qword_100096B98, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098808);
  }

  return result;
}

uint64_t sub_10004B7A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004B7F4()
{
  v0 = sub_10006A6C0();
  sub_10000D8DC(v0, qword_100098810);
  sub_10000CEB8(v0, qword_100098810);
  return sub_10006A6A0();
}

uint64_t sub_10004B840()
{
  if (qword_1000968E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100007DF0(&qword_100097B78, &qword_100074C70);
  sub_10000CEB8(v0, qword_100098368);
  swift_beginAccess();
  sub_10006A620();
  v1 = v22;
  swift_endAccess();
  if (!v22)
  {
    if (qword_100096918 != -1)
    {
      swift_once();
    }

    v8 = sub_10006A6C0();
    sub_10000CEB8(v8, qword_100098810);
    v1 = sub_10006A6B0();
    v9 = sub_10006B3A0();
    if (os_log_type_enabled(v1, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v1, v9, "No modern or HTML note context — returning nil default intent note", v10, 2u);
    }

    goto LABEL_28;
  }

  if (qword_1000968F0 != -1)
  {
    swift_once();
  }

  v2 = sub_100007DF0(&qword_100097FE0, &qword_1000755A8);
  sub_10000CEB8(v2, qword_100098380);
  swift_beginAccess();
  sub_10006A620();
  swift_endAccess();
  v3 = [objc_opt_self() defaultAccountWithHTMLNoteContext:v22];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v5 = v4;
      v6 = [v22 managedObjectContext];
      __chkstk_darwin(v6);
      sub_100007DF0(&qword_1000988D8, &qword_100076068);
LABEL_9:
      sub_10006B410();

      return v23;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v5 = v4;
      v15 = [v22 managedObjectContext];
      if (v15)
      {
        v6 = v15;
        __chkstk_darwin(v15);
        sub_100007DF0(&qword_1000988D8, &qword_100076068);
        goto LABEL_9;
      }

      goto LABEL_27;
    }

    if (qword_100096918 != -1)
    {
      swift_once();
    }

    v16 = sub_10006A6C0();
    sub_10000CEB8(v16, qword_100098810);
    v17 = v4;
    v12 = sub_10006A6B0();
    v18 = sub_10006B3A0();

    if (os_log_type_enabled(v12, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = [v17 objectID];
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v12, v18, "Unknown default account type — returning nil default intent note {objectID: %@}", v19, 0xCu);
      sub_100009790(v20, &qword_100096D40, &unk_10006F770);
    }
  }

  else
  {
    if (qword_100096918 != -1)
    {
      swift_once();
    }

    v11 = sub_10006A6C0();
    sub_10000CEB8(v11, qword_100098810);
    v12 = sub_10006A6B0();
    v13 = sub_10006B3A0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Cannot get default account — returning nil default intent note", v14, 2u);
    }
  }

LABEL_27:
LABEL_28:

  return 0;
}

void sub_10004BDC8(id a1@<X1>, void *a2@<X8>)
{
  v3 = [a1 defaultFolder];
  v4 = sub_10004DB6C(v3);

  *a2 = v4;
}

void sub_10004BE24(id a1@<X1>, void *a2@<X8>)
{
  v3 = [a1 defaultStore];
  if (v3)
  {
    v4 = v3;
    v5 = sub_10004E040(v3);

    *a2 = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10004BE88(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_100007DF0(&qword_1000988E0, &unk_100076070);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v16 - v5;
  v7 = _s5EntryVMa_0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007DF0(&qword_1000988C8, &qword_100076048);
  v12 = sub_10006B230();
  if (*(v12 + 16))
  {
    sub_10004E5A8(v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, _s5EntryVMa_0);

    (*(v8 + 56))(v6, 0, 1, v7);
    sub_10004E610(v6, v11, _s5EntryVMa_0);
  }

  else
  {

    (*(v8 + 56))(v6, 1, 1, v7);
    v13 = *(v7 + 20);
    v14 = type metadata accessor for Note();
    (*(*(v14 - 8) + 56))(&v11[v13], 2, 2, v14);
    sub_10006A550();
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_100009790(v6, &qword_1000988E0, &unk_100076070);
    }
  }

  a2(v11);
  return sub_10004E678(v11, _s5EntryVMa_0);
}

uint64_t sub_10004C0FC(void *a1, uint64_t *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v114 = a2;
  v122 = a4;
  v125 = a3;
  v5 = sub_10006B1A0();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v120 = (&v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10006A560();
  v118 = *(v8 - 8);
  v119 = v8;
  v9 = *(v118 + 64);
  __chkstk_darwin(v8);
  v116 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v117 = &v114 - v13;
  v14 = sub_100007DF0(&qword_1000988C8, &qword_100076048);
  v123 = *(v14 - 8);
  v124 = v14;
  v15 = *(v123 + 64);
  __chkstk_darwin(v14);
  v121 = &v114 - v16;
  v17 = sub_100007DF0(&qword_100097C78, &unk_100076050);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v114 - v22;
  v24 = type metadata accessor for Note();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v114 - v30;
  if (qword_1000968E8 != -1)
  {
    swift_once();
  }

  v32 = sub_100007DF0(&qword_100097B78, &qword_100074C70);
  sub_10000CEB8(v32, qword_100098368);
  swift_beginAccess();
  sub_10006A620();
  v33 = v126;
  swift_endAccess();
  if (!v33)
  {
    goto LABEL_15;
  }

  if (qword_1000968F0 != -1)
  {
    swift_once();
  }

  v34 = sub_100007DF0(&qword_100097FE0, &qword_1000755A8);
  sub_10000CEB8(v34, qword_100098380);
  swift_beginAccess();
  sub_10006A620();
  v35 = v126;
  swift_endAccess();
  if (!v35)
  {

LABEL_15:
    if (qword_100096918 != -1)
    {
      swift_once();
    }

    v51 = sub_10006A6C0();
    sub_10000CEB8(v51, qword_100098810);
    v52 = sub_10006A6B0();
    v53 = sub_10006B3A0();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "No modern or HTML note context — returning placeholder timeline", v54, 2u);
    }

    sub_100007DF0(&qword_1000988D0, &qword_100076060);
    v55 = _s5EntryVMa_0();
    v56 = *(*(v55 - 8) + 72);
    v57 = (*(*(v55 - 8) + 80) + 32) & ~*(*(v55 - 8) + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_10006F820;
    v59 = v58 + v57;
    v60 = v117;
    (*(v25 + 56))(v117, 2, 2, v24);
    v61 = v116;
    sub_10006A550();
    (*(v118 + 32))(v59, v61, v119);
    sub_10004DAC4(v60, v59 + *(v55 + 20));
    sub_10006B190();
    sub_10004D858();
    v62 = v121;
    sub_10006B220();
    v125(v62);
    return (*(v123 + 8))(v62, v124);
  }

  v36 = [a1 note];
  if (!v36)
  {
    v64 = sub_10004B840();
    if (v64)
    {
      v65 = v64;
      v66 = v33;
      v67 = v35;
      v68 = v65;
      sub_10002E5E4(v68, v66, v67, v21);
      if ((*(v25 + 48))(v21, 1, v24) != 1)
      {
        sub_10004E610(v21, v29, type metadata accessor for Note);
        if (qword_100096918 != -1)
        {
          swift_once();
        }

        v92 = sub_10006A6C0();
        sub_10000CEB8(v92, qword_100098810);
        v93 = v68;
        v94 = sub_10006A6B0();
        v95 = sub_10006B390();

        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          v127[0] = v120;
          *v96 = 136315138;
          v97 = [v93 identifier];
          if (v97)
          {
            v98 = v97;
            v99 = sub_10006B290();
            v101 = v100;
          }

          else
          {
            v99 = 9732322;
            v101 = 0xA300000000000000;
          }

          v112 = sub_1000378C4(v99, v101, v127);

          *(v96 + 4) = v112;
          _os_log_impl(&_mh_execute_header, v94, v95, "Returning timeline for default note {identifier: %s}", v96, 0xCu);
          sub_10000804C(v120);
        }

        v113 = v121;
        sub_10004D084(v29, v121);
        v125(v113);

        (*(v123 + 8))(v113, v124);
        return sub_10004E678(v29, type metadata accessor for Note);
      }

      sub_100009790(v21, &qword_100097C78, &unk_100076050);
    }

    if (qword_100096918 != -1)
    {
      swift_once();
    }

    v69 = sub_10006A6C0();
    sub_10000CEB8(v69, qword_100098810);
    v70 = sub_10006A6B0();
    v71 = sub_10006B3A0();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "There is no intent note and cannot get default note — returning placeholder timeline", v72, 2u);
    }

    sub_100007DF0(&qword_1000988D0, &qword_100076060);
    v73 = _s5EntryVMa_0();
    v74 = *(*(v73 - 8) + 72);
    v75 = (*(*(v73 - 8) + 80) + 32) & ~*(*(v73 - 8) + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_10006F820;
    v77 = v76 + v75;
    v78 = v117;
    (*(v25 + 56))(v117, 2, 2, v24);
    v79 = v116;
    sub_10006A550();
    (*(v118 + 32))(v77, v79, v119);
    sub_10004DAC4(v78, v77 + *(v73 + 20));
    sub_10006B190();
    sub_10004D858();
    v62 = v121;
    sub_10006B220();
    v125(v62);

    return (*(v123 + 8))(v62, v124);
  }

  v37 = v36;
  v38 = v33;
  v39 = v35;
  sub_10002E5E4(v37, v38, v39, v23);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_100009790(v23, &qword_100097C78, &unk_100076050);
    if (qword_100096918 != -1)
    {
      swift_once();
    }

    v40 = sub_10006A6C0();
    sub_10000CEB8(v40, qword_100098810);
    v41 = v37;
    v42 = sub_10006A6B0();
    v43 = sub_10006B3A0();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = v38;
      v45 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v127[0] = v114;
      *v45 = 136315138;
      v115 = v41;
      v46 = [v41 identifier];
      if (v46)
      {
        v47 = v46;
        v48 = sub_10006B290();
        v50 = v49;
      }

      else
      {
        v48 = 9732322;
        v50 = 0xA300000000000000;
      }

      v38 = v44;
      v102 = sub_1000378C4(v48, v50, v127);

      *(v45 + 4) = v102;
      _os_log_impl(&_mh_execute_header, v42, v43, "Cannot fetch note — returning deleted timeline {identifier: %s}", v45, 0xCu);
      sub_10000804C(v114);

      v41 = v115;
    }

    else
    {
    }

    sub_100007DF0(&qword_1000988D0, &qword_100076060);
    v103 = _s5EntryVMa_0();
    v104 = *(*(v103 - 8) + 72);
    v105 = (*(*(v103 - 8) + 80) + 32) & ~*(*(v103 - 8) + 80);
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_10006F820;
    v107 = v106 + v105;
    v108 = v117;
    (*(v25 + 56))(v117, 1, 2, v24);
    v109 = v116;
    sub_10006A550();
    (*(v118 + 32))(v107, v109, v119);
    sub_10004DAC4(v108, v107 + *(v103 + 20));
    sub_10006B190();
    sub_10004D858();
    v62 = v121;
    sub_10006B220();
    v125(v62);

    return (*(v123 + 8))(v62, v124);
  }

  sub_10004E610(v23, v31, type metadata accessor for Note);
  if (qword_100096918 != -1)
  {
    swift_once();
  }

  v80 = sub_10006A6C0();
  sub_10000CEB8(v80, qword_100098810);
  v81 = v37;
  v82 = sub_10006A6B0();
  v83 = sub_10006B390();

  if (os_log_type_enabled(v82, v83))
  {
    v120 = v38;
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v127[0] = v85;
    *v84 = 136315138;
    v86 = [v81 identifier];
    if (v86)
    {
      v87 = v39;
      v88 = v86;
      v89 = sub_10006B290();
      v91 = v90;

      v39 = v87;
    }

    else
    {
      v89 = 9732322;
      v91 = 0xA300000000000000;
    }

    v110 = sub_1000378C4(v89, v91, v127);

    *(v84 + 4) = v110;
    _os_log_impl(&_mh_execute_header, v82, v83, "Returning timeline for note {identifier: %s}", v84, 0xCu);
    sub_10000804C(v85);

    v38 = v120;
  }

  else
  {
  }

  v111 = v121;
  sub_10004D084(v31, v121);
  v125(v111);

  (*(v123 + 8))(v111, v124);
  return sub_10004E678(v31, type metadata accessor for Note);
}

uint64_t sub_10004D084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a1;
  v79 = a2;
  v2 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v78 = &v66 - v4;
  v5 = sub_100007DF0(&qword_100097FC8, &unk_100075580);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v71 = &v66 - v7;
  v8 = sub_10006B1A0();
  v76 = *(v8 - 8);
  v77 = v8;
  v9 = *(v76 + 64);
  v10 = __chkstk_darwin(v8);
  v73 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v74 = &v66 - v12;
  v70 = sub_10006A560();
  v81 = *(v70 - 8);
  v13 = *(v81 + 64);
  v14 = __chkstk_darwin(v70);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v66 - v17;
  v19 = sub_10006A5F0();
  v68 = v19;
  v72 = *(v19 - 8);
  v20 = v72;
  v21 = *(v72 + 64);
  __chkstk_darwin(v19);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10006A600();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v29 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v67 = &v66 - v30;
  v31 = sub_100007DF0(&qword_100097C70, &qword_100076A60);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v69 = &v66 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = &v66 - v35;
  sub_10006A5E0();
  v37 = v23;
  (*(v20 + 104))(v23, enum case for Calendar.Component.day(_:), v19);
  sub_10006A5E0();
  sub_10006A550();
  sub_10006A5C0();
  v38 = *(v81 + 8);
  v39 = v16;
  v40 = v70;
  v38(v39, v70);
  v41 = *(v25 + 8);
  v66 = v25 + 8;
  v41(v29, v24);
  v42 = v36;
  v43 = v67;
  sub_10006A5D0();
  v80 = v18;
  v44 = v40;
  v45 = v38;
  v38(v18, v44);
  v46 = v71;
  (*(v72 + 8))(v37, v68);
  v47 = v81;
  v41(v43, v24);
  v48 = v44;
  v49 = v69;
  v72 = v42;
  sub_100037854(v42, v69);
  v50 = (*(v47 + 48))(v49, 1, v48);
  v51 = 1;
  if (v50 != 1)
  {
    v52 = v80;
    (*(v47 + 32))(v80, v49, v48);
    sub_10006B180();
    v45(v52, v48);
    v51 = 0;
  }

  v54 = v76;
  v53 = v77;
  (*(v76 + 56))(v46, v51, 1, v77);
  v55 = *(v54 + 48);
  if (v55(v46, 1, v53) == 1)
  {
    v56 = v74;
    sub_10006B190();
    if (v55(v46, 1, v53) != 1)
    {
      sub_100009790(v46, &qword_100097FC8, &unk_100075580);
    }
  }

  else
  {
    v56 = v74;
    (*(v54 + 32))(v74, v46, v53);
  }

  sub_100007DF0(&qword_1000988D0, &qword_100076060);
  v57 = _s5EntryVMa_0();
  v58 = *(*(v57 - 8) + 72);
  v59 = (*(*(v57 - 8) + 80) + 32) & ~*(*(v57 - 8) + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_10006F820;
  v61 = v60 + v59;
  v62 = v78;
  sub_10004E5A8(v75, v78, type metadata accessor for Note);
  v63 = type metadata accessor for Note();
  (*(*(v63 - 8) + 56))(v62, 0, 2, v63);
  v64 = v80;
  sub_10006A550();
  (*(v47 + 32))(v61, v64, v48);
  sub_10004DAC4(v62, v61 + *(v57 + 20));
  (*(v54 + 16))(v73, v56, v53);
  sub_10004D858();
  sub_10006B220();
  (*(v54 + 8))(v56, v53);
  return sub_100009790(v72, &qword_100097C70, &qword_100076A60);
}

unint64_t sub_10004D858()
{
  result = qword_1000988C0;
  if (!qword_1000988C0)
  {
    _s5EntryVMa_0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000988C0);
  }

  return result;
}

uint64_t sub_10004D8B0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(_s5EntryVMa_0() + 20);
  v3 = type metadata accessor for Note();
  (*(*(v3 - 8) + 56))(a1 + v2, 2, 2, v3);

  return sub_10006A550();
}

uint64_t sub_10004D930(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_10006B200();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  (*(v10 + 16))(v12, a2, v9);
  v14 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a3;
  *(v15 + 3) = a4;
  *(v15 + 4) = v13;
  (*(v10 + 32))(&v15[v14], v12, v9);

  sub_10004C0FC(a1, a2, sub_10004E530, v15);
}

uint64_t sub_10004DAC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10004DB6C(void *a1)
{
  v2 = sub_10006A520();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 managedObjectContext];
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = objc_opt_self();
  v10 = [a1 customNoteSortType];
  isa = [v9 sortDescriptorsForCurrentTypeIncludingPinnedNotes:0 folderNoteSortType:v10];

  if (!isa)
  {
    sub_10000D894(0, &qword_100097FF8, NSSortDescriptor_ptr);
    sub_10006B320();
    isa = sub_10006B310().super.isa;
  }

  sub_10000D894(0, &qword_100097C80, ICNote_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [a1 predicateForVisibleNotes];
  v14 = [ObjCClassFromMetadata ic_objectsMatchingPredicate:v13 sortDescriptors:isa context:v8];

  sub_10000D894(0, &qword_100097C88, NSManagedObject_ptr);
  v15 = sub_10006B320();

  if (v15 >> 62)
  {
    result = sub_10006B4F0();
    if (result)
    {
      goto LABEL_6;
    }

LABEL_16:

    goto LABEL_17;
  }

  result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_6:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = sub_10006B480();
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v16 = *(v15 + 32);
  }

  v17 = v16;

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    v20 = [objc_opt_self() appURLForNote:v18];
    if (v20)
    {
      v21 = v20;
      sub_10006A4F0();

      sub_10006A4D0();
      v22 = [v19 title];
      if (v22)
      {
        v23 = v22;
        sub_10006B290();
      }

      v24 = objc_allocWithZone(ICIntentNote);
      v25 = sub_10006B280();

      v26 = sub_10006B280();

      v27 = [v24 initWithIdentifier:v25 displayString:v26];

      (*(v3 + 8))(v6, v2);
      return v27;
    }
  }

LABEL_17:
  if (qword_100096918 != -1)
  {
    swift_once();
  }

  v28 = sub_10006A6C0();
  sub_10000CEB8(v28, qword_100098810);
  v29 = a1;
  v30 = sub_10006A6B0();
  v31 = sub_10006B390();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    v34 = [v29 objectID];
    *(v32 + 4) = v34;
    *v33 = v34;
    _os_log_impl(&_mh_execute_header, v30, v31, "No note in folder — returning nil intent note {objectID: %@}", v32, 0xCu);
    sub_100009790(v33, &qword_100096D40, &unk_10006F770);
  }

  return 0;
}

id sub_10004E040(void *a1)
{
  v2 = sub_10006A520();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (qword_1000968F0 != -1)
  {
    swift_once();
  }

  v7 = sub_100007DF0(&qword_100097FE0, &qword_1000755A8);
  sub_10000CEB8(v7, qword_100098380);
  swift_beginAccess();
  sub_10006A620();
  v8 = v30;
  swift_endAccess();
  if (v8)
  {
    v9 = [v8 allVisibleNotesInCollection:a1 sorted:1];

    if (v9)
    {
      v10 = sub_10006B320();

      if (*(v10 + 16))
      {
        sub_100037E6C(v10 + 32, v29);

        sub_10000D894(0, &qword_100098008, NoteObject_ptr);
        if (swift_dynamicCast())
        {
          v11 = v30;
          v12 = [objc_opt_self() appURLForHTMLNote:v30];
          if (v12)
          {
            v13 = v12;
            sub_10006A4F0();

            sub_10006A4D0();
            v14 = [v11 title];
            if (v14)
            {
              v15 = v14;
              sub_10006B290();
            }

            v24 = objc_allocWithZone(ICIntentNote);
            v25 = sub_10006B280();

            v26 = sub_10006B280();

            v27 = [v24 initWithIdentifier:v25 displayString:v26];

            (*(v3 + 8))(v6, v2);
            return v27;
          }
        }
      }

      else
      {
      }
    }
  }

  if (qword_100096918 != -1)
  {
    swift_once();
  }

  v16 = sub_10006A6C0();
  sub_10000CEB8(v16, qword_100098810);
  v17 = a1;
  v18 = sub_10006A6B0();
  v19 = sub_10006B390();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    v22 = [v17 objectID];
    *(v20 + 4) = v22;
    *v21 = v22;
    _os_log_impl(&_mh_execute_header, v18, v19, "No note in HTML folder — returning nil intent note {objectID: %@}", v20, 0xCu);
    sub_100009790(v21, &qword_100096D40, &unk_10006F770);
  }

  return 0;
}

uint64_t sub_10004E464()
{
  v1 = sub_10006B200();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004E530(uint64_t a1)
{
  v3 = *(*(sub_10006B200() - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];

  return sub_10004BE88(a1, v4);
}

uint64_t sub_10004E5A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004E610(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004E678(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004E6FC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(type metadata accessor for Note() - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_10004E7B4(uint64_t a1)
{
  v2 = sub_10006A9D0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10006A870();
}

uint64_t sub_10004E87C()
{
  v1 = sub_10006A950();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for NotesFolderWidgetView(0) + 24);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_10006B3B0();
    v8 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();
    sub_1000096B4(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_10004E9D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v3 = sub_10006AB00();
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10006ABF0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007DF0(&qword_100098988, &qword_100076190);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v27 - v14;
  v27 = sub_100007DF0(&qword_100098990, &qword_100076198);
  v16 = *(v27 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v27);
  v19 = &v27 - v18;
  *v15 = sub_10006A9F0();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v20 = sub_100007DF0(&qword_100098998, &qword_1000761A0);
  sub_10004ED6C(v2, &v15[*(v20 + 44)]);
  (*(v8 + 104))(v11, enum case for Font.TextStyle.footnote(_:), v7);
  v21 = sub_10006AB90();
  (*(v8 + 8))(v11, v7);
  KeyPath = swift_getKeyPath();
  v23 = &v15[*(v12 + 36)];
  *v23 = KeyPath;
  v23[1] = v21;
  sub_10006AAF0();
  sub_10006AFB0();
  v24 = sub_10005CD98();
  sub_10006AD80();
  (*(v28 + 8))(v6, v29);
  sub_100009790(v15, &qword_100098988, &qword_100076190);
  v31 = v12;
  v32 = &type metadata for Color;
  v33 = v24;
  v34 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  v25 = v27;
  sub_10006AD60();
  return (*(v16 + 8))(v19, v25);
}

uint64_t sub_10004ED6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_10006AAB0();
  v60 = *(v3 - 8);
  v4 = *(v60 + 64);
  __chkstk_darwin(v3);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_100007DF0(&qword_1000989B8, &qword_1000761E8);
  v61 = *(v62 - 8);
  v7 = *(v61 + 64);
  __chkstk_darwin(v62);
  v9 = &v58 - v8;
  v10 = sub_100007DF0(&qword_1000989C0, &qword_1000761F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v58 - v12);
  v65 = sub_100007DF0(&qword_1000989C8, &qword_1000761F8);
  v14 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v16 = &v58 - v15;
  v63 = sub_100007DF0(&qword_1000989D0, &qword_100076200);
  v17 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v64 = (&v58 - v18);
  v19 = sub_100007DF0(&qword_100097E60, &qword_100076080);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v58 - v21;
  v23 = type metadata accessor for NotesFolderWidgetView(0);
  sub_100009728(a1 + *(v23 + 28), v22, &qword_100097E60, &qword_100076080);
  v24 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  v25 = (*(*(v24 - 8) + 48))(v22, 2, v24);
  if (v25)
  {
    if (v25 == 1)
    {
      sub_10004F80C(&v72);
      v26 = v72;
      sub_10006A980();
      v27 = sub_10006AC90();
      v29 = v28;
      v31 = v30;
      sub_100050AA0(v27, v28, v30 & 1, v32, &v72);
      sub_10000832C(v27, v29, v31 & 1);

      v33 = v72;

      *v13 = v26;
      v13[1] = v33;

      swift_storeEnumTagMultiPayload();

      sub_100007DF0(&qword_1000989F8, &qword_100076218);
      sub_1000095F4(&qword_100098A00, &qword_1000989F8, &qword_100076218);
      v34 = sub_100008154(&qword_1000989D8, &qword_100076208);
      v35 = sub_10005CE7C();
      *&v72 = v34;
      *(&v72 + 1) = v35;
      swift_getOpaqueTypeConformance2();
      sub_10006AA50();
      sub_100009728(v16, v64, &qword_1000989C8, &qword_1000761F8);
      swift_storeEnumTagMultiPayload();
      sub_100007DF0(&qword_100098A08, &qword_100076220);
      sub_10005CF2C();
      sub_10005CFDC();
      sub_10006AA50();

      return sub_100009790(v16, &qword_1000989C8, &qword_1000761F8);
    }

    else
    {
      sub_100051700(a1, &v67);
      sub_10006AA90();
      v42 = sub_100007DF0(&qword_1000989D8, &qword_100076208);
      v43 = sub_10005CE7C();
      v59 = v9;
      sub_10006AD90();
      (*(v60 + 8))(v6, v3);
      v74 = v69;
      v75 = v70;
      v76 = v71;
      v72 = v67;
      v73 = v68;
      sub_100009790(&v72, &qword_1000989D8, &qword_100076208);
      v44 = v61;
      v45 = v9;
      v46 = v62;
      (*(v61 + 16))(v13, v45, v62);
      swift_storeEnumTagMultiPayload();
      sub_100007DF0(&qword_1000989F8, &qword_100076218);
      sub_1000095F4(&qword_100098A00, &qword_1000989F8, &qword_100076218);
      *&v67 = v42;
      *(&v67 + 1) = v43;
      swift_getOpaqueTypeConformance2();
      sub_10006AA50();
      sub_100009728(v16, v64, &qword_1000989C8, &qword_1000761F8);
      swift_storeEnumTagMultiPayload();
      sub_100007DF0(&qword_100098A08, &qword_100076220);
      sub_10005CF2C();
      sub_10005CFDC();
      sub_10006AA50();
      sub_100009790(v16, &qword_1000989C8, &qword_1000761F8);
      return (*(v44 + 8))(v59, v46);
    }
  }

  else
  {
    v37 = *(v24 + 48);
    if (*(*&v22[v37] + 16))
    {
      sub_10004F80C(&v72);
      v38 = v72;
      sub_1000512D8(&v72);
      v39 = v72;

      *&v67 = v38;
      *(&v67 + 1) = v39;
      LOBYTE(v68) = 1;

      sub_100007DF0(&qword_1000989F8, &qword_100076218);
      sub_1000095F4(&qword_100098A00, &qword_1000989F8, &qword_100076218);
      sub_10006AA50();
      v40 = v73;
      v41 = v64;
      *v64 = v72;
      *(v41 + 16) = v40;
      swift_storeEnumTagMultiPayload();
      sub_100007DF0(&qword_100098A08, &qword_100076220);
      sub_10005CF2C();
      sub_10005CFDC();
      sub_10006AA50();

      return sub_100009790(v22, &qword_100097E68, &qword_1000755A0);
    }

    else
    {
      sub_10004F80C(&v72);
      v47 = v72;
      sub_10006A980();
      v48 = sub_10006AC90();
      v50 = v49;
      v52 = v51;
      sub_100050AA0(v48, v49, v51 & 1, v53, &v72);
      sub_10000832C(v48, v50, v52 & 1);

      v54 = v72;

      *&v67 = v47;
      *(&v67 + 1) = v54;
      LOBYTE(v68) = 0;

      sub_100007DF0(&qword_1000989F8, &qword_100076218);
      sub_1000095F4(&qword_100098A00, &qword_1000989F8, &qword_100076218);
      sub_10006AA50();
      v55 = v73;
      v56 = v64;
      *v64 = v72;
      *(v56 + 16) = v55;
      swift_storeEnumTagMultiPayload();
      sub_100007DF0(&qword_100098A08, &qword_100076220);
      sub_10005CF2C();
      sub_10005CFDC();
      sub_10006AA50();

      v57 = *&v22[v37];

      return sub_10005D0D8(v22, type metadata accessor for NotesFolder);
    }
  }
}

uint64_t sub_10004F80C@<X0>(uint64_t *a1@<X8>)
{
  v181 = a1;
  v2 = sub_10006A590();
  v174 = *(v2 - 8);
  v175 = v2;
  v3 = *(v174 + 8);
  __chkstk_darwin(v2);
  v173 = &v154 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10006AAB0();
  v179 = *(v5 - 8);
  v180 = v5;
  v6 = *(v179 + 64);
  __chkstk_darwin(v5);
  v178 = &v154 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007DF0(&qword_100096A58, &unk_100075C30);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v169 = (&v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v10);
  v167 = (&v154 - v13);
  __chkstk_darwin(v12);
  v163 = (&v154 - v14);
  v158 = sub_10006B100();
  v156 = *(v158 - 8);
  v15 = *(v156 + 64);
  v16 = __chkstk_darwin(v158);
  v157 = &v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v159 = &v154 - v18;
  v19 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v165 = &v154 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v164 = &v154 - v24;
  __chkstk_darwin(v23);
  v172 = &v154 - v25;
  v176 = type metadata accessor for WidgetHeader();
  v26 = *(*(v176 - 8) + 64);
  v27 = __chkstk_darwin(v176);
  v161 = (&v154 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __chkstk_darwin(v27);
  v160 = (&v154 - v30);
  __chkstk_darwin(v29);
  v170 = (&v154 - v31);
  v177 = sub_100007DF0(&qword_100098C78, &qword_100076450);
  v162 = *(v177 - 8);
  v32 = *(v162 + 64);
  v33 = __chkstk_darwin(v177);
  v168 = &v154 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v166 = &v154 - v36;
  __chkstk_darwin(v35);
  v171 = &v154 - v37;
  v38 = sub_100007DF0(&qword_100098C80, &qword_100076458);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v41 = &v154 - v40;
  v42 = type metadata accessor for NotesFolder();
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v45 = &v154 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100007DF0(&qword_100097E60, &qword_100076080);
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46 - 8);
  v49 = &v154 - v48;
  v50 = type metadata accessor for NotesFolderWidgetView(0);
  sub_100009728(v1 + *(v50 + 28), v49, &qword_100097E60, &qword_100076080);
  v51 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  v52 = (*(*(v51 - 8) + 48))(v49, 2, v51);
  if (v52)
  {
    if (v52 == 1)
    {
      v53 = sub_10006A520();
      v54 = v164;
      (*(*(v53 - 8) + 56))(v164, 1, 1, v53);
      v55 = v173;
      sub_10006A580();
      sub_10006A570();

      (*(v174 + 1))(v55, v175);
      v56 = [objc_opt_self() defaultSystemImageName];
      sub_10006B290();

      v57 = sub_10006AEA0();
      KeyPath = swift_getKeyPath();
      v59 = swift_getKeyPath();
      v60 = v167;
      *v167 = v59;
      sub_100007DF0(&qword_100096A40, &unk_10006F460);
      swift_storeEnumTagMultiPayload();
      v61 = objc_opt_self();
      v62 = -17.0;
      if ([v61 ic_isiPad])
      {
        v63 = -19.0;
      }

      else
      {
        v63 = -17.0;
      }

      if ([v61 ic_isiPad])
      {
        v62 = -18.0;
      }

      v64 = swift_getKeyPath();
      v65 = v160;
      *v160 = v64;
      sub_100007DF0(&qword_100098128, &qword_100075CE0);
      swift_storeEnumTagMultiPayload();
      v66 = v176;
      v67 = *(v176 + 20);
      *(v65 + v67) = swift_getKeyPath();
      sub_100007DF0(&qword_100096A38, &qword_1000757C0);
      swift_storeEnumTagMultiPayload();
      v68 = v65 + v66[6];
      *v68 = KeyPath;
      *(v68 + 8) = 0;
      sub_1000096C0(v60, v65 + v66[7], &qword_100096A58, &unk_100075C30);
      sub_1000096C0(v54, v65 + v66[8], &qword_100096B30, &qword_10006F548);
      *(v65 + v66[9]) = v57;
      *(v65 + v66[10]) = xmmword_1000755D0;
      *(v65 + v66[11]) = 0;
      v69 = _UISolariumEnabled();
      v70 = 2.0;
      if (!v69)
      {
        v70 = 0.0;
      }

      *(v65 + v66[12]) = v70;
      v71 = _UISolariumEnabled();
      v72 = 4.0;
      if (v71)
      {
        v72 = 5.0;
      }

      *(v65 + v66[13]) = v72;
      v73 = _UISolariumEnabled();
      v74 = 0.125;
      if (!v73)
      {
        v74 = 0.0;
      }

      *(v65 + v66[14]) = v74;
      v75 = _UISolariumEnabled();
      v76 = 0.31;
      if (v75)
      {
        v76 = 0.25;
      }

      *(v65 + v66[15]) = v76;
      v77 = _UISolariumEnabled();
      v78 = -1.5;
      if (!v77)
      {
        v78 = 0.0;
      }

      *(v65 + v66[16]) = v78;
      *(v65 + v66[17]) = v63;
      *(v65 + v66[18]) = v62;
      v79 = v178;
      sub_10006AA90();
      v80 = sub_10005DE74(&qword_100098C88, type metadata accessor for WidgetHeader);
      sub_10006AD90();
      (*(v179 + 8))(v79, v180);
      sub_10005D0D8(v65, type metadata accessor for WidgetHeader);
      v182 = v66;
    }

    else
    {
      v95 = sub_10006A520();
      v96 = v165;
      (*(*(v95 - 8) + 56))(v165, 1, 1, v95);
      v97 = v173;
      sub_10006A580();
      sub_10006A570();

      (*(v174 + 1))(v97, v175);
      v98 = [objc_opt_self() defaultSystemImageName];
      sub_10006B290();

      v99 = sub_10006AEA0();
      v100 = swift_getKeyPath();
      v101 = swift_getKeyPath();
      v102 = v169;
      *v169 = v101;
      sub_100007DF0(&qword_100096A40, &unk_10006F460);
      swift_storeEnumTagMultiPayload();
      v103 = objc_opt_self();
      v104 = -17.0;
      if ([v103 ic_isiPad])
      {
        v105 = -19.0;
      }

      else
      {
        v105 = -17.0;
      }

      if ([v103 ic_isiPad])
      {
        v104 = -18.0;
      }

      v106 = swift_getKeyPath();
      v107 = v161;
      *v161 = v106;
      sub_100007DF0(&qword_100098128, &qword_100075CE0);
      swift_storeEnumTagMultiPayload();
      v108 = v176;
      v109 = *(v176 + 20);
      *(v107 + v109) = swift_getKeyPath();
      sub_100007DF0(&qword_100096A38, &qword_1000757C0);
      swift_storeEnumTagMultiPayload();
      v110 = v107 + v108[6];
      *v110 = v100;
      *(v110 + 8) = 0;
      sub_1000096C0(v102, v107 + v108[7], &qword_100096A58, &unk_100075C30);
      sub_1000096C0(v96, v107 + v108[8], &qword_100096B30, &qword_10006F548);
      *(v107 + v108[9]) = v99;
      v111 = (v107 + v108[10]);
      *v111 = 0;
      v111[1] = 0;
      *(v107 + v108[11]) = 0;
      v112 = _UISolariumEnabled();
      v113 = 2.0;
      if (!v112)
      {
        v113 = 0.0;
      }

      *(v107 + v108[12]) = v113;
      v114 = _UISolariumEnabled();
      v115 = 4.0;
      if (v114)
      {
        v115 = 5.0;
      }

      *(v107 + v108[13]) = v115;
      v116 = _UISolariumEnabled();
      v117 = 0.125;
      if (!v116)
      {
        v117 = 0.0;
      }

      *(v107 + v108[14]) = v117;
      v118 = _UISolariumEnabled();
      v119 = 0.31;
      if (v118)
      {
        v119 = 0.25;
      }

      *(v107 + v108[15]) = v119;
      v120 = _UISolariumEnabled();
      v121 = -1.5;
      if (!v120)
      {
        v121 = 0.0;
      }

      *(v107 + v108[16]) = v121;
      *(v107 + v108[17]) = v105;
      *(v107 + v108[18]) = v104;
      v122 = v178;
      sub_10006AA90();
      v80 = sub_10005DE74(&qword_100098C88, type metadata accessor for WidgetHeader);
      sub_10006AD90();
      (*(v179 + 8))(v122, v180);
      sub_10005D0D8(v107, type metadata accessor for WidgetHeader);
      v182 = v108;
    }

    v183 = v80;
    swift_getOpaqueTypeConformance2();
    result = sub_10006AF20();
  }

  else
  {
    v81 = v159;
    v174 = v41;
    v175 = v38;
    v82 = *&v49[*(v51 + 48)];

    sub_10005E174(v49, v45, type metadata accessor for NotesFolder);
    sub_100009728(&v45[*(v42 + 32)], v172, &qword_100096B30, &qword_10006F548);
    v83 = *&v45[*(v42 + 36)];
    v85 = *(v45 + 2);
    v84 = *(v45 + 3);
    v86 = v45[32] == 1;
    v155 = v45;
    if (v86)
    {
      v87 = v45;
      v88 = v42;
      v173 = v85;
      v89 = *(v50 + 20);
      v169 = v83;

      v127 = v84;

      v90 = v81;
      sub_10005CB90(&qword_100096A38, &qword_1000757C0, &type metadata accessor for WidgetFamily, v81);
      v91 = v156;
      v92 = v157;
      v93 = v158;
      (*(v156 + 104))(v157, enum case for WidgetFamily.systemSmall(_:), v158);
      sub_10005DE74(&qword_100098A20, &type metadata accessor for WidgetFamily);
      LOBYTE(v89) = sub_10006B250();
      v94 = *(v91 + 8);
      v94(v92, v93);
      v94(v90, v93);
      if (v89)
      {
        v125 = 0;
      }

      else
      {
        v182 = *&v87[*(v88 + 40)];
        sub_10005EDF4();

        v125 = sub_10006AF20();
      }

      v126 = v163;
      v85 = v173;
      v124 = v169;
    }

    else
    {
      v124 = v83;

      v125 = 0;
      v126 = v163;
      v127 = v84;
    }

    v128 = swift_getKeyPath();
    *v126 = swift_getKeyPath();
    sub_100007DF0(&qword_100096A40, &unk_10006F460);
    swift_storeEnumTagMultiPayload();
    v129 = objc_opt_self();
    v130 = -17.0;
    if ([v129 ic_isiPad])
    {
      v131 = -19.0;
    }

    else
    {
      v131 = -17.0;
    }

    if ([v129 ic_isiPad])
    {
      v130 = -18.0;
    }

    v132 = swift_getKeyPath();
    v133 = v170;
    *v170 = v132;
    sub_100007DF0(&qword_100098128, &qword_100075CE0);
    swift_storeEnumTagMultiPayload();
    v134 = v176;
    v135 = *(v176 + 20);
    *(v133 + v135) = swift_getKeyPath();
    sub_100007DF0(&qword_100096A38, &qword_1000757C0);
    swift_storeEnumTagMultiPayload();
    v136 = v133 + v134[6];
    *v136 = v128;
    *(v136 + 8) = 0;
    sub_1000096C0(v126, v133 + v134[7], &qword_100096A58, &unk_100075C30);
    sub_1000096C0(v172, v133 + v134[8], &qword_100096B30, &qword_10006F548);
    *(v133 + v134[9]) = v124;
    v137 = (v133 + v134[10]);
    *v137 = v85;
    v137[1] = v127;
    *(v133 + v134[11]) = v125;
    v138 = _UISolariumEnabled();
    v139 = 2.0;
    if (!v138)
    {
      v139 = 0.0;
    }

    *(v133 + v134[12]) = v139;
    v140 = _UISolariumEnabled();
    v141 = 4.0;
    if (v140)
    {
      v141 = 5.0;
    }

    *(v133 + v134[13]) = v141;
    v142 = _UISolariumEnabled();
    v143 = 0.125;
    if (!v142)
    {
      v143 = 0.0;
    }

    *(v133 + v134[14]) = v143;
    v144 = _UISolariumEnabled();
    v145 = 0.31;
    if (v144)
    {
      v145 = 0.25;
    }

    *(v133 + v134[15]) = v145;
    v146 = _UISolariumEnabled();
    v147 = -1.5;
    if (!v146)
    {
      v147 = 0.0;
    }

    *(v133 + v134[16]) = v147;
    *(v133 + v134[17]) = v131;
    *(v133 + v134[18]) = v130;
    v148 = v178;
    sub_10006AA90();
    v149 = sub_10005DE74(&qword_100098C88, type metadata accessor for WidgetHeader);
    v150 = v171;
    sub_10006AD90();
    (*(v179 + 8))(v148, v180);
    sub_10005D0D8(v133, type metadata accessor for WidgetHeader);
    v151 = v155;
    sub_100009994();
    v182 = v134;
    v183 = v149;
    swift_getOpaqueTypeConformance2();
    v152 = v177;
    sub_10006AD30();

    (*(v162 + 8))(v150, v152);
    sub_10005ECD8();
    v153 = sub_10006AF20();
    sub_10005D0D8(v151, type metadata accessor for NotesFolder);
    result = v153;
  }

  *v181 = result;
  return result;
}

uint64_t sub_100050AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v72 = a4;
  v70 = a3;
  v71 = a2;
  v69 = a1;
  v73 = a5;
  v60[0] = sub_100007DF0(&qword_100098B80, &qword_100076328);
  v6 = *(*(v60[0] - 8) + 64);
  __chkstk_darwin(v60[0]);
  v8 = v60 - v7;
  v63 = sub_100007DF0(&qword_100098B88, &qword_100076330);
  v9 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v61 = v60 - v10;
  v62 = sub_100007DF0(&qword_100098B90, &qword_100076338);
  v11 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v60[1] = v60 - v12;
  v68 = sub_10006AAB0();
  v67 = *(v68 - 8);
  v13 = *(v67 + 64);
  __chkstk_darwin(v68);
  v15 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100007DF0(&qword_100098B98, &qword_100076340);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = v60 - v18;
  v66 = sub_100007DF0(&qword_100098BA0, &qword_100076348);
  v20 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v22 = v60 - v21;
  v65 = sub_100007DF0(&qword_100098BA8, &qword_100076350);
  v23 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v64 = v60 - v24;
  v25 = sub_10006B100();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v5;
  v31 = v5 + *(type metadata accessor for NotesFolderWidgetView(0) + 20);
  sub_10005CB90(&qword_100096A38, &qword_1000757C0, &type metadata accessor for WidgetFamily, v29);
  v32 = (*(v26 + 88))(v29, v25);
  if (v32 == enum case for WidgetFamily.systemSmall(_:))
  {
    *v19 = sub_10006A9E0();
    *(v19 + 1) = 0;
    v19[16] = 0;
    v33 = sub_100007DF0(&qword_100098BD8, &qword_100076368);
    sub_100053E60(v69, v71, v70 & 1, v72, v30, &v19[*(v33 + 44)]);
    v34 = sub_10006AB40();
    v35 = &v19[*(v16 + 36)];
    *v35 = v34;
    *(v35 + 8) = 0u;
    *(v35 + 24) = 0u;
    v35[40] = 1;
    sub_10006AFB0();
    sub_10006A7F0();
    sub_1000096C0(v19, v22, &qword_100098B98, &qword_100076340);
    v36 = v66;
    v37 = &v22[*(v66 + 36)];
    v38 = v81;
    *(v37 + 4) = v80;
    *(v37 + 5) = v38;
    *(v37 + 6) = v82;
    v39 = v77;
    *v37 = v76;
    *(v37 + 1) = v39;
    v40 = v79;
    *(v37 + 2) = v78;
    *(v37 + 3) = v40;
    sub_10006AAA0();
    v41 = sub_10005EA80(&qword_100098BE0, &qword_100098BA0, &qword_100076348, sub_10005EBBC);
    sub_10006AD90();
    (*(v67 + 8))(v15, v68);
    sub_100009790(v22, &qword_100098BA0, &qword_100076348);
    v74 = v36;
    v75 = v41;
    swift_getOpaqueTypeConformance2();
    v42 = &v84;
  }

  else
  {
    v43 = v70;
    v44 = v69;
    v46 = v71;
    v45 = v72;
    if (v32 != enum case for WidgetFamily.systemMedium(_:) && v32 != enum case for WidgetFamily.systemLarge(_:) && v32 != enum case for WidgetFamily.systemExtraLarge(_:))
    {
      *v73 = sub_10006AF20();
      return (*(v26 + 8))(v29, v25);
    }

    *v8 = sub_10006A9E0();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v48 = sub_100007DF0(&qword_100098BB0, &qword_100076358);
    sub_1000545F4(v44, v46, v43 & 1, v45, v30, &v8[*(v48 + 44)]);
    v49 = sub_10006AB30();
    v50 = &v8[*(v60[0] + 36)];
    *v50 = v49;
    *(v50 + 8) = 0u;
    *(v50 + 24) = 0u;
    v50[40] = 1;
    sub_10006AFB0();
    sub_10006A7F0();
    v51 = v61;
    sub_1000096C0(v8, v61, &qword_100098B80, &qword_100076328);
    v52 = v63;
    v53 = (v51 + *(v63 + 36));
    v54 = v81;
    v53[4] = v80;
    v53[5] = v54;
    v53[6] = v82;
    v55 = v77;
    *v53 = v76;
    v53[1] = v55;
    v56 = v79;
    v53[2] = v78;
    v53[3] = v56;
    v57 = v15;
    sub_10006AAA0();
    v58 = sub_10005EA80(&qword_100098BB8, &qword_100098B88, &qword_100076330, sub_10005EB04);
    sub_10006AD90();
    (*(v67 + 8))(v57, v68);
    sub_100009790(v51, &qword_100098B88, &qword_100076330);
    v74 = v52;
    v75 = v58;
    swift_getOpaqueTypeConformance2();
    v42 = &v83;
  }

  v59 = *(v42 - 32);
  result = sub_10006AF20();
  *v73 = result;
  return result;
}

uint64_t sub_1000512D8@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v2 = sub_10006B100();
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v9 = type metadata accessor for NotesFolderWidgetView(0);
  v30 = *(v9 - 1);
  v10 = *(v30 + 64);
  __chkstk_darwin(v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007DF0(&qword_100097E60, &qword_100076080);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v30 - v14;
  sub_100009728(v1 + v9[7], &v30 - v14, &qword_100097E60, &qword_100076080);
  v16 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  if ((*(*(v16 - 8) + 48))(v15, 2, v16))
  {
    result = sub_10006AF20();
    *v32 = result;
  }

  else
  {
    v18 = *&v15[*(v16 + 48)];
    sub_10005E108(v1, &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NotesFolderWidgetView);
    v19 = (*(v30 + 80) + 24) & ~*(v30 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    sub_10005E174(v11, v20 + v19, type metadata accessor for NotesFolderWidgetView);
    v21 = sub_10006AB50();
    v22 = v9[5];
    v30 = v1;
    sub_10005CB90(&qword_100096A38, &qword_1000757C0, &type metadata accessor for WidgetFamily, v8);
    v23 = v31;
    (*(v31 + 104))(v6, enum case for WidgetFamily.systemSmall(_:), v2);
    sub_10005DE74(&qword_100098A20, &type metadata accessor for WidgetFamily);
    LOBYTE(v18) = sub_10006B250();
    v24 = *(v23 + 8);
    v24(v6, v2);
    v24(v8, v2);
    if ((v18 & 1) == 0)
    {
      v25 = *(v30 + v9[8]) + 4.0;
    }

    sub_10006A720();
    v41 = 0;
    v33 = sub_10005D3FC;
    v34 = v20;
    v35 = v21;
    v36 = v26;
    v37 = v27;
    v38 = v28;
    v39 = v29;
    v40 = 0;
    sub_100007DF0(&qword_100098A28, &qword_100076228);
    sub_10005D480();
    *v32 = sub_10006AF20();
    return sub_10005D0D8(v15, type metadata accessor for NotesFolder);
  }

  return result;
}

uint64_t sub_100051700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10006B100();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v7);
  v11 = &v30[-v10 - 8];
  v12 = type metadata accessor for NotesFolderWidgetView(0);
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  v16 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10004F80C(&v31);
  v29 = v31;
  sub_10005E108(a1, v16, type metadata accessor for NotesFolderWidgetView);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = swift_allocObject();
  sub_10005E174(v16, v18 + v17, type metadata accessor for NotesFolderWidgetView);
  LOBYTE(v17) = sub_10006AB50();
  v19 = a1 + *(v13 + 28);
  sub_10005CB90(&qword_100096A38, &qword_1000757C0, &type metadata accessor for WidgetFamily, v11);
  (*(v5 + 104))(v9, enum case for WidgetFamily.systemSmall(_:), v4);
  sub_10005DE74(&qword_100098A20, &type metadata accessor for WidgetFamily);
  sub_10006B250();
  v20 = *(v5 + 8);
  v20(v9, v4);
  v20(v11, v4);
  sub_10006A720();
  v30[64] = 0;
  *&v31 = sub_10005F104;
  *(&v31 + 1) = v18;
  LOBYTE(v32) = v17;
  *(&v32 + 1) = v21;
  *v33 = v22;
  *&v33[8] = v23;
  *&v33[16] = v24;
  v33[24] = 0;
  *a2 = v29;
  v25 = v31;
  v26 = v32;
  v27 = *v33;
  *(a2 + 49) = *&v33[9];
  *(a2 + 40) = v27;
  *(a2 + 24) = v26;
  *(a2 + 8) = v25;

  sub_100009728(&v31, v30, &qword_100098CA0, &qword_100076498);
}

uint64_t sub_100051A40(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006A9D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007DF0(&qword_100098CA8, &qword_1000764A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  *v12 = sub_10006A9E0();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v13 = sub_100007DF0(&qword_100098CB0, &qword_1000764A8);
  sub_100051C24(a2, a1, &v12[*(v13 + 44)]);
  (*(v5 + 104))(v8, enum case for ContentSizeCategory.accessibilityMedium(_:), v4);
  sub_1000095F4(&qword_100098CB8, &qword_100098CA8, &qword_1000764A0);
  sub_10006ACD0();
  (*(v5 + 8))(v8, v4);
  return sub_100009790(v12, &qword_100098CA8, &qword_1000764A0);
}

uint64_t sub_100051C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v48 = a2;
  v54 = a3;
  v4 = sub_10006B100();
  v49 = *(v4 - 8);
  v5 = *(v49 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v44 - v9;
  v11 = sub_10006A7B0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v47 = v14;
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for NotesFolderWidgetView(0);
  v46 = *(v50 - 8);
  v16 = *(v46 + 64);
  __chkstk_darwin(v50);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_100007DF0(&qword_100098CC0, &qword_1000764B0);
  v53 = *(v55 - 8);
  v18 = *(v53 + 64);
  v19 = __chkstk_darwin(v55);
  v52 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v51 = &v44 - v21;
  result = sub_100052168();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v44 = result;
    v45 = a1;
    sub_10005E108(a1, &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NotesFolderWidgetView);
    v23 = v11;
    (*(v12 + 16))(v15, v48, v11);
    v24 = *(v46 + 80);
    v25 = v49;
    v48 = v10;
    v26 = v4;
    v27 = (v24 + 16) & ~v24;
    v28 = (v16 + *(v12 + 80) + v27) & ~*(v12 + 80);
    v29 = swift_allocObject();
    sub_10005E174(v17, v29 + v27, type metadata accessor for NotesFolderWidgetView);
    (*(v12 + 32))(v29 + v28, v15, v23);
    sub_100007DF0(&qword_100098CC8, &qword_1000764B8);
    sub_10005F56C();
    v30 = v51;
    sub_10006AF60();
    v31 = v45 + *(v50 + 20);
    v32 = v48;
    sub_10005CB90(&qword_100096A38, &qword_1000757C0, &type metadata accessor for WidgetFamily, v48);
    (*(v25 + 104))(v8, enum case for WidgetFamily.systemSmall(_:), v26);
    sub_10005DE74(&qword_100098A20, &type metadata accessor for WidgetFamily);
    v33 = sub_10006B250();
    v34 = *(v25 + 8);
    v34(v8, v26);
    v34(v32, v26);
    v35 = v33 & 1;
    if (v35)
    {
      v36 = 0;
    }

    else
    {
      v36 = 0x4010000000000000;
    }

    v38 = v52;
    v37 = v53;
    v39 = *(v53 + 16);
    v40 = v55;
    v39(v52, v30, v55);
    v41 = v54;
    v39(v54, v38, v40);
    v42 = &v41[*(sub_100007DF0(&qword_100098CE8, &qword_1000764C8) + 48)];
    *v42 = v36;
    v42[8] = 0;
    v42[9] = v35;
    v43 = *(v37 + 8);
    v43(v30, v40);
    return (v43)(v38, v40);
  }

  return result;
}

uint64_t sub_100052168()
{
  v1 = sub_10006A950();
  v48 = *(v1 - 8);
  v49 = v1;
  v2 = *(v48 + 64);
  __chkstk_darwin(v1);
  v47 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100007DF0(&qword_100096A38, &qword_1000757C0);
  v4 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v52 = (&v47 - v5);
  v6 = sub_10006B100();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  v8 = __chkstk_darwin(v6);
  v50 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v47 - v10;
  v12 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v47 - v18;
  v20 = sub_100007DF0(&qword_100097E60, &qword_100076080);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v47 - v22;
  v24 = type metadata accessor for NotesFolderWidgetView(0);
  sub_100009728(v0 + *(v24 + 28), v23, &qword_100097E60, &qword_100076080);
  v25 = (*(v13 + 48))(v23, 2, v12);
  if (v25)
  {
    v26 = v25;
    result = 0;
    if (v26 != 1)
    {
      v28 = v0 + *(v24 + 20);
      v29 = v52;
      sub_100009728(v28, v52, &qword_100096A38, &qword_1000757C0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v30 = v53;
        v31 = v50;
        v32 = v29;
        v33 = v54;
        (*(v53 + 32))(v50, v32, v54);
      }

      else
      {
        v40 = *v29;
        sub_10006B3B0();
        v41 = sub_10006AB10();
        sub_10006A690();

        v42 = v47;
        sub_10006A940();
        v31 = v50;
        swift_getAtKeyPath();

        (*(v48 + 8))(v42, v49);
        v30 = v53;
        v33 = v54;
      }

      v43 = (*(v30 + 88))(v31, v33);
      if (v43 == enum case for WidgetFamily.systemSmall(_:))
      {
        return 1;
      }

      else if (v43 == enum case for WidgetFamily.systemMedium(_:))
      {
        return 3;
      }

      else if (v43 == enum case for WidgetFamily.systemLarge(_:))
      {
        return 6;
      }

      else if (v43 == enum case for WidgetFamily.systemExtraLarge(_:))
      {
        return 8;
      }

      else
      {
        (*(v30 + 8))(v31, v33);
        return 0;
      }
    }
  }

  else
  {
    sub_1000096C0(v23, v19, &qword_100097E68, &qword_1000755A0);
    v34 = v0 + *(v24 + 20);
    sub_10005CB90(&qword_100096A38, &qword_1000757C0, &type metadata accessor for WidgetFamily, v11);
    v36 = v53;
    v35 = v54;
    v37 = (*(v53 + 88))(v11, v54);
    if (v37 == enum case for WidgetFamily.systemSmall(_:))
    {
      v38 = sub_100054AF8();
      sub_100009790(v19, &qword_100097E68, &qword_1000755A0);
      return v38;
    }

    else if (v37 == enum case for WidgetFamily.systemMedium(_:) || v37 == enum case for WidgetFamily.systemLarge(_:) || v37 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      sub_100009728(v19, v17, &qword_100097E68, &qword_1000755A0);
      v44 = *(*&v17[*(v12 + 48)] + 16);

      v45 = sub_100054AF8();
      sub_100009790(v19, &qword_100097E68, &qword_1000755A0);
      if (v45 >= v44)
      {
        v46 = v44;
      }

      else
      {
        v46 = v45;
      }

      sub_10005D0D8(v17, type metadata accessor for NotesFolder);
      return v46;
    }

    else
    {
      v39 = sub_100054AF8();
      sub_100009790(v19, &qword_100097E68, &qword_1000755A0);
      (*(v36 + 8))(v11, v35);
      return v39;
    }
  }

  return result;
}

double sub_1000527A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_10006A9E0();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = sub_100007DF0(&qword_100098CF0, &qword_1000764D0);
  sub_100052874(a2, a1, a3 + *(v6 + 44));
  sub_100053CC4();
  sub_10006AFB0();
  sub_10006A790();
  v7 = (a3 + *(sub_100007DF0(&qword_100098CC8, &qword_1000764B8) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

uint64_t sub_100052874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v106 = a2;
  v112 = a3;
  v4 = sub_100007DF0(&qword_100098CF8, &qword_1000764D8);
  v108 = *(v4 - 8);
  v109 = v4;
  v5 = *(v108 + 64);
  __chkstk_darwin(v4);
  v97 = &v90 - v6;
  v7 = sub_100007DF0(&qword_100098D00, &qword_1000764E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v111 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v110 = &v90 - v11;
  v91 = sub_100007DF0(&qword_100098D08, &qword_1000764E8);
  v12 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v93 = &v90 - v13;
  v101 = sub_100007DF0(&qword_100098D10, &qword_1000764F0);
  v14 = *(*(v101 - 8) + 64);
  __chkstk_darwin(v101);
  v94 = &v90 - v15;
  v92 = type metadata accessor for NotesFolderWidgetView.LargeNoteRow(0);
  v16 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92);
  v95 = (&v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = type metadata accessor for NotesFolderWidgetView.MediumNoteRow(0);
  v18 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v96 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_100007DF0(&qword_100098D18, &qword_1000764F8);
  v20 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v104 = &v90 - v21;
  v98 = sub_100007DF0(&qword_100098D20, &qword_100076500);
  v22 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v100 = &v90 - v23;
  v102 = sub_100007DF0(&qword_100098D28, &qword_100076508);
  v24 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v26 = &v90 - v25;
  v99 = sub_100007DF0(&qword_100098D30, &qword_100076510);
  v27 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v29 = &v90 - v28;
  v114 = sub_100007DF0(&qword_100098D38, &qword_100076518);
  v30 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v32 = &v90 - v31;
  v33 = type metadata accessor for NotesFolderWidgetView.SmallNoteRow(0);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v36 = &v90 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10006B100();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  v41 = &v90 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100007DF0(&qword_100098D40, &qword_100076520);
  v43 = *(*(v42 - 8) + 64);
  v44 = __chkstk_darwin(v42 - 8);
  v105 = &v90 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v47 = &v90 - v46;
  v48 = *(type metadata accessor for NotesFolderWidgetView(0) + 20);
  v107 = a1;
  sub_10005CB90(&qword_100096A38, &qword_1000757C0, &type metadata accessor for WidgetFamily, v41);
  v49 = (*(v38 + 88))(v41, v37);
  if (v49 == enum case for WidgetFamily.systemSmall(_:))
  {
    *v36 = swift_getKeyPath();
    v36[8] = 0;
    v50 = *(v33 + 20);
    v51 = type metadata accessor for NotesFolder();
    (*(*(v51 - 8) + 56))(&v36[v50], 1, 1, v51);
    v52 = *(v33 + 24);
    v53 = type metadata accessor for Note();
    (*(*(v53 - 8) + 56))(&v36[v52], 1, 1, v53);
    sub_10005E108(v36, v26, type metadata accessor for NotesFolderWidgetView.SmallNoteRow);
    swift_storeEnumTagMultiPayload();
    sub_10005DE74(&qword_100098B70, type metadata accessor for NotesFolderWidgetView.SmallNoteRow);
    sub_10005DE74(&qword_100098B68, type metadata accessor for NotesFolderWidgetView.MediumNoteRow);
    sub_10006AA50();
    sub_100009728(v29, v100, &qword_100098D30, &qword_100076510);
    swift_storeEnumTagMultiPayload();
    sub_10005F6B0();
    sub_10005F79C();
    sub_10006AA50();
    sub_100009790(v29, &qword_100098D30, &qword_100076510);
    sub_100009728(v32, v104, &qword_100098D38, &qword_100076518);
    swift_storeEnumTagMultiPayload();
    sub_10005F624();
    sub_10006AA50();
    sub_100009790(v32, &qword_100098D38, &qword_100076518);
    v54 = type metadata accessor for NotesFolderWidgetView.SmallNoteRow;
    v55 = v36;
LABEL_7:
    sub_10005D0D8(v55, v54);
    v70 = v110;
    goto LABEL_8;
  }

  v56 = v103;
  v90 = v32;
  if (v49 == enum case for WidgetFamily.systemMedium(_:))
  {
    v57 = type metadata accessor for Note();
    v58 = v96;
    (*(*(v57 - 8) + 56))(v96, 1, 1, v57);
    v59 = v58 + *(v56 + 20);
    *v59 = swift_getKeyPath();
    *(v59 + 8) = 0;
    sub_10005E108(v58, v26, type metadata accessor for NotesFolderWidgetView.MediumNoteRow);
    swift_storeEnumTagMultiPayload();
    sub_10005DE74(&qword_100098B70, type metadata accessor for NotesFolderWidgetView.SmallNoteRow);
    sub_10005DE74(&qword_100098B68, type metadata accessor for NotesFolderWidgetView.MediumNoteRow);
    sub_10006AA50();
    sub_100009728(v29, v100, &qword_100098D30, &qword_100076510);
    swift_storeEnumTagMultiPayload();
    sub_10005F6B0();
    sub_10005F79C();
    v60 = v90;
    sub_10006AA50();
    sub_100009790(v29, &qword_100098D30, &qword_100076510);
    sub_100009728(v60, v104, &qword_100098D38, &qword_100076518);
    swift_storeEnumTagMultiPayload();
    sub_10005F624();
    sub_10006AA50();
    sub_100009790(v60, &qword_100098D38, &qword_100076518);
    v54 = type metadata accessor for NotesFolderWidgetView.MediumNoteRow;
    v55 = v96;
    goto LABEL_7;
  }

  v61 = v104;
  if (v49 == enum case for WidgetFamily.systemLarge(_:))
  {
    KeyPath = swift_getKeyPath();
    v63 = v95;
    *v95 = KeyPath;
    sub_100007DF0(&qword_100098128, &qword_100075CE0);
    swift_storeEnumTagMultiPayload();
    v64 = v92;
    v65 = *(v92 + 20);
    v66 = type metadata accessor for Note();
    (*(*(v66 - 8) + 56))(v63 + v65, 1, 1, v66);
    v67 = v63 + *(v64 + 24);
    *v67 = swift_getKeyPath();
    *(v67 + 8) = 0;
    sub_10005E108(v63, v93, type metadata accessor for NotesFolderWidgetView.LargeNoteRow);
    swift_storeEnumTagMultiPayload();
    sub_10005DE74(&qword_100098B60, type metadata accessor for NotesFolderWidgetView.LargeNoteRow);
    v68 = v94;
    sub_10006AA50();
    sub_100009728(v68, v100, &qword_100098D10, &qword_1000764F0);
    swift_storeEnumTagMultiPayload();
    sub_10005F6B0();
    sub_10005F79C();
    v69 = v90;
    sub_10006AA50();
    sub_100009790(v68, &qword_100098D10, &qword_1000764F0);
    sub_100009728(v69, v61, &qword_100098D38, &qword_100076518);
    swift_storeEnumTagMultiPayload();
    sub_10005F624();
    sub_10006AA50();
    sub_100009790(v69, &qword_100098D38, &qword_100076518);
    v54 = type metadata accessor for NotesFolderWidgetView.LargeNoteRow;
    v55 = v63;
    goto LABEL_7;
  }

  v70 = v110;
  if (v49 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v82 = swift_getKeyPath();
    v83 = v95;
    *v95 = v82;
    sub_100007DF0(&qword_100098128, &qword_100075CE0);
    swift_storeEnumTagMultiPayload();
    v84 = v92;
    v85 = *(v92 + 20);
    v86 = type metadata accessor for Note();
    (*(*(v86 - 8) + 56))(v83 + v85, 1, 1, v86);
    v87 = v83 + *(v84 + 24);
    *v87 = swift_getKeyPath();
    *(v87 + 8) = 0;
    sub_10005E108(v83, v93, type metadata accessor for NotesFolderWidgetView.LargeNoteRow);
    swift_storeEnumTagMultiPayload();
    sub_10005DE74(&qword_100098B60, type metadata accessor for NotesFolderWidgetView.LargeNoteRow);
    v88 = v94;
    sub_10006AA50();
    sub_100009728(v88, v100, &qword_100098D10, &qword_1000764F0);
    swift_storeEnumTagMultiPayload();
    sub_10005F6B0();
    sub_10005F79C();
    v89 = v90;
    sub_10006AA50();
    sub_100009790(v88, &qword_100098D10, &qword_1000764F0);
    sub_100009728(v89, v61, &qword_100098D38, &qword_100076518);
    swift_storeEnumTagMultiPayload();
    sub_10005F624();
    sub_10006AA50();
    sub_100009790(v89, &qword_100098D38, &qword_100076518);
    sub_10005D0D8(v83, type metadata accessor for NotesFolderWidgetView.LargeNoteRow);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_10005F624();
    sub_10006AA50();
    (*(v38 + 8))(v41, v37);
  }

LABEL_8:
  v71 = sub_100053940(v106);
  v72 = 1;
  v73 = v109;
  if ((v71 & 1) == 0)
  {
    v74 = v97;
    sub_10006AF30();
    v75 = sub_10006AB60();
    v76 = v74 + *(v73 + 36);
    *v76 = v75;
    *(v76 + 8) = 0u;
    *(v76 + 24) = 0u;
    *(v76 + 40) = 1;
    sub_1000096C0(v74, v70, &qword_100098CF8, &qword_1000764D8);
    v72 = 0;
  }

  (*(v108 + 56))(v70, v72, 1, v73);
  v77 = v105;
  sub_100009728(v47, v105, &qword_100098D40, &qword_100076520);
  v78 = v111;
  sub_100009728(v70, v111, &qword_100098D00, &qword_1000764E0);
  v79 = v112;
  sub_100009728(v77, v112, &qword_100098D40, &qword_100076520);
  v80 = sub_100007DF0(&qword_100098D60, &unk_100076528);
  sub_100009728(v78, v79 + *(v80 + 48), &qword_100098D00, &qword_1000764E0);
  sub_100009790(v70, &qword_100098D00, &qword_1000764E0);
  sub_100009790(v47, &qword_100098D40, &qword_100076520);
  sub_100009790(v78, &qword_100098D00, &qword_1000764E0);
  return sub_100009790(v77, &qword_100098D40, &qword_100076520);
}

uint64_t sub_100053940(uint64_t a1)
{
  v24 = a1;
  v26 = sub_10006A950();
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v26);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007DF0(&qword_100096A38, &qword_1000757C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v23 - v8);
  v10 = sub_10006B100();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for NotesFolderWidgetView(0) + 20);
  v25 = v1;
  sub_100009728(v1 + v15, v9, &qword_100096A38, &qword_1000757C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v16 = *v9;
    sub_10006B3B0();
    v17 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v26);
  }

  LODWORD(v18) = (*(v11 + 88))(v14, v10);
  if (v18 == enum case for WidgetFamily.systemSmall(_:))
  {
    return 1;
  }

  if (v18 != enum case for WidgetFamily.systemMedium(_:))
  {
    if (v18 == enum case for WidgetFamily.systemLarge(_:))
    {
      v18 = sub_100054AF8();
      v22 = v18 - 1;
      if (!__OFSUB__(v18, 1))
      {
        return v22 <= v24;
      }

      __break(1u);
    }

    if (v18 != enum case for WidgetFamily.systemExtraLarge(_:))
    {
      (*(v11 + 8))(v14, v10);
      return 1;
    }

    result = sub_100054AF8();
    v22 = result - 1;
    if (__OFSUB__(result, 1))
    {
      goto LABEL_24;
    }

    return v22 <= v24;
  }

  result = sub_100054AF8();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v20 = v24;
  if (result - 1 <= v24)
  {
    return 1;
  }

  v21 = sub_100052168();
  if (v21 >= sub_100054AF8())
  {
    return 0;
  }

  result = sub_100054AF8();
  if (__OFSUB__(result, 2))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  return result - 2 <= v20;
}

double sub_100053CC4()
{
  v1 = sub_10006B100();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for NotesFolderWidgetView(0) + 20);
  sub_10005CB90(&qword_100096A38, &qword_1000757C0, &type metadata accessor for WidgetFamily, v5);
  if ((*(v2 + 88))(v5, v1) == enum case for WidgetFamily.systemMedium(_:))
  {
    v7 = sub_100052168();
    if (v7 < sub_100054AF8())
    {
      sub_10006A7A0();
      v9 = v8;
      v10 = sub_100054AF8();
      v11 = __OFSUB__(v10, 1);
      v12 = v10 - 1;
      if (!v11)
      {
        goto LABEL_7;
      }

      __break(1u);
    }
  }

  sub_10006A7A0();
  v9 = v13;
  v12 = sub_100054AF8();
LABEL_7:
  v14 = v9 / v12;
  (*(v2 + 8))(v5, v1);
  return v14;
}

uint64_t sub_100053E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a6;
  v11 = sub_100007DF0(&qword_100097E60, &qword_100076080);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for NotesFolder();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100007DF0(&qword_100098C00, &qword_100076378);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v40 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v40 - v23;
  *v24 = sub_10006A970();
  *(v24 + 1) = 0;
  v24[16] = 0;
  v25 = sub_100007DF0(&qword_100098C08, &qword_100076380);
  sub_100054378(a1, a2, a3 & 1, a4, &v24[*(v25 + 44)]);
  v26 = type metadata accessor for NotesFolderWidgetView(0);
  sub_100009728(a5 + *(v26 + 28), v14, &qword_100097E60, &qword_100076080);
  v27 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  if ((*(*(v27 - 8) + 48))(v14, 2, v27))
  {
    sub_100009790(v14, &qword_100097E60, &qword_100076080);
LABEL_6:
    LOBYTE(v49[0]) = 0;
    LOBYTE(v44) = 1;
    *&v51 = 0x4030000000000000;
    BYTE8(v51) = 0;
    v55 = 1;
    sub_100007DF0(&qword_100098C10, &qword_100076388);
    sub_1000095F4(&qword_100098C18, &qword_100098C10, &qword_100076388);
    sub_10006AA50();
    goto LABEL_7;
  }

  v28 = *&v14[*(v27 + 48)];

  sub_10005E174(v14, v18, type metadata accessor for NotesFolder);
  if (v18[32] != 1)
  {
    sub_10005D0D8(v18, type metadata accessor for NotesFolder);
    goto LABEL_6;
  }

  v29 = sub_10006A970();
  v30 = *&v18[*(v15 + 40)];
  LOBYTE(v44) = 1;
  v43 = 0;
  v42 = 1;

  LOBYTE(v49[0]) = 0;
  *&v56 = 0;
  BYTE8(v56) = v44;
  v57 = v29;
  LOBYTE(v58) = v43;
  *(&v58 + 1) = 0;
  LOBYTE(v59) = v42;
  *(&v59 + 1) = v31;
  v60 = 0;
  sub_100007DF0(&qword_100098C10, &qword_100076388);
  sub_1000095F4(&qword_100098C18, &qword_100098C10, &qword_100076388);
  sub_10006AA50();
  sub_10005D0D8(v18, type metadata accessor for NotesFolder);
  v58 = v53;
  v59 = v54;
  v60 = v55;
  v56 = v51;
  v57 = v52;
LABEL_7:
  v32 = v40;
  sub_100009728(v24, v40, &qword_100098C00, &qword_100076378);
  v46 = v58;
  v47 = v59;
  v48 = v60;
  v44 = v56;
  v45 = v57;
  v33 = v41;
  sub_100009728(v32, v41, &qword_100098C00, &qword_100076378);
  v34 = v33 + *(sub_100007DF0(&qword_100098C20, &qword_100076390) + 48);
  v35 = v48;
  v50 = v48;
  v36 = v47;
  v49[2] = v46;
  v49[3] = v47;
  v38 = v44;
  v37 = v45;
  v49[0] = v44;
  v49[1] = v45;
  *(v34 + 32) = v46;
  *(v34 + 48) = v36;
  *(v34 + 64) = v35;
  *v34 = v38;
  *(v34 + 16) = v37;
  sub_100009728(v49, &v51, &qword_100098C28, &qword_100076398);
  sub_100009790(v24, &qword_100098C00, &qword_100076378);
  v53 = v46;
  v54 = v47;
  v55 = v48;
  v51 = v44;
  v52 = v45;
  sub_100009790(&v51, &qword_100098C28, &qword_100076398);
  return sub_100009790(v32, &qword_100098C00, &qword_100076378);
}

uint64_t sub_100054378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25[0] = a1;
  v25[1] = a2;
  v26 = a3;
  v27 = a4;
  v6 = sub_100007DF0(&qword_100098C30, &qword_1000763A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v25 - v9;
  v11 = sub_100007DF0(&qword_100098C38, &qword_1000763A8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = v25 - v17;
  __chkstk_darwin(v16);
  v20 = v25 - v19;
  sub_10006AD70();
  if (sub_10004E87C())
  {
    v21 = sub_10006AE60();
  }

  else if (sub_10004E87C())
  {
    v21 = sub_10006AE50();
  }

  else
  {
    v21 = sub_10006AE20();
  }

  v22 = v21;
  (*(v7 + 32))(v18, v10, v6);
  *&v18[*(v11 + 36)] = v22;
  sub_1000096C0(v18, v20, &qword_100098C38, &qword_1000763A8);
  sub_100009728(v20, v15, &qword_100098C38, &qword_1000763A8);
  sub_100009728(v15, a5, &qword_100098C38, &qword_1000763A8);
  v23 = a5 + *(sub_100007DF0(&qword_100098C40, &qword_1000763B0) + 48);
  *v23 = 0;
  *(v23 + 8) = 1;
  sub_100009790(v20, &qword_100098C38, &qword_1000763A8);
  return sub_100009790(v15, &qword_100098C38, &qword_1000763A8);
}

uint64_t sub_1000545F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a5;
  v53 = a6;
  *&v54 = a1;
  *(&v54 + 1) = a2;
  LOBYTE(v55) = a3;
  *(&v55 + 1) = a4;
  v6 = sub_10006ABF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007DF0(&qword_100098C48, &qword_1000763B8);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v47 - v14;
  v49 = sub_100007DF0(&qword_100098C50, &qword_1000763C0);
  v16 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v18 = &v47 - v17;
  v48 = sub_100007DF0(&qword_100098C58, &qword_1000763C8);
  v19 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v21 = &v47 - v20;
  v50 = sub_100007DF0(&qword_100098C60, &qword_1000763D0);
  v22 = *(*(v50 - 8) + 64);
  v23 = __chkstk_darwin(v50);
  v52 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v47 - v26;
  __chkstk_darwin(v25);
  v51 = &v47 - v28;
  sub_10006AD70();
  (*(v7 + 104))(v10, enum case for Font.TextStyle.body(_:), v6);
  v29 = sub_10006AB90();
  (*(v7 + 8))(v10, v6);
  KeyPath = swift_getKeyPath();
  v31 = &v15[*(sub_100007DF0(&qword_100098C68, &qword_1000763D8) + 36)];
  *v31 = KeyPath;
  v31[1] = v29;
  v32 = swift_getKeyPath();
  v33 = &v15[*(v12 + 44)];
  *v33 = v32;
  v33[8] = 1;
  if (sub_10004E87C())
  {
    v34 = sub_10006AE60();
  }

  else if (sub_10004E87C())
  {
    v34 = sub_10006AE50();
  }

  else
  {
    v34 = sub_10006AE20();
  }

  v35 = v34;
  sub_1000096C0(v15, v18, &qword_100098C48, &qword_1000763B8);
  *&v18[*(v49 + 36)] = v35;
  v36 = swift_getKeyPath();
  sub_1000096C0(v18, v21, &qword_100098C50, &qword_1000763C0);
  v37 = &v21[*(v48 + 36)];
  *v37 = v36;
  *(v37 + 1) = 2;
  v37[16] = 0;
  sub_10006AFB0();
  sub_10006A7F0();
  sub_1000096C0(v21, v27, &qword_100098C58, &qword_1000763C8);
  v38 = &v27[*(v50 + 36)];
  v39 = v59;
  *(v38 + 4) = v58;
  *(v38 + 5) = v39;
  *(v38 + 6) = v60;
  v40 = v55;
  *v38 = v54;
  *(v38 + 1) = v40;
  v41 = v57;
  *(v38 + 2) = v56;
  *(v38 + 3) = v41;
  v42 = v51;
  sub_1000096C0(v27, v51, &qword_100098C60, &qword_1000763D0);
  v43 = v52;
  sub_100009728(v42, v52, &qword_100098C60, &qword_1000763D0);
  v44 = v53;
  sub_100009728(v43, v53, &qword_100098C60, &qword_1000763D0);
  v45 = v44 + *(sub_100007DF0(&qword_100098C70, &unk_100076440) + 48);
  *v45 = 0x4030000000000000;
  *(v45 + 8) = 0;
  sub_100009790(v42, &qword_100098C60, &qword_1000763D0);
  return sub_100009790(v43, &qword_100098C60, &qword_1000763D0);
}

uint64_t sub_100054AF8()
{
  v20 = sub_10006A950();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007DF0(&qword_100096A38, &qword_1000757C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v19 - v7);
  v9 = sub_10006B100();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NotesFolderWidgetView(0);
  sub_100009728(v0 + *(v14 + 20), v8, &qword_100096A38, &qword_1000757C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  else
  {
    v15 = *v8;
    sub_10006B3B0();
    v16 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();

    (*(v1 + 8))(v4, v20);
  }

  v17 = (*(v10 + 88))(v13, v9);
  if (v17 == enum case for WidgetFamily.systemSmall(_:))
  {
    return 1;
  }

  if (v17 == enum case for WidgetFamily.systemMedium(_:))
  {
    return 3;
  }

  if (v17 == enum case for WidgetFamily.systemLarge(_:))
  {
    return 6;
  }

  if (v17 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    return 8;
  }

  (*(v10 + 8))(v13, v9);
  return 0;
}

uint64_t sub_100054E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a1;
  v39 = a4;
  v6 = sub_10006A9D0();
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = *(v37 + 64);
  __chkstk_darwin(v6);
  v36 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10006A7B0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = type metadata accessor for NotesFolderWidgetView(0);
  v32 = *(v12 - 8);
  v13 = *(v32 + 64);
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100007DF0(&qword_100098A48, &qword_100076238);
  v15 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v17 = &v31 - v16;
  *v17 = sub_10006A9E0();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v33 = *(sub_100007DF0(&qword_100098A50, &qword_100076240) + 44);

  v18 = sub_100052168();
  sub_10004E6FC(v18, a2);
  v22 = sub_10005D73C(v19, v20, v21);
  swift_unknownObjectRelease();
  v40 = v22;
  swift_getKeyPath();
  sub_10005E108(a3, v14, type metadata accessor for NotesFolderWidgetView);
  (*(v10 + 16))(&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v9);
  v23 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v24 = (v13 + *(v10 + 80) + v23) & ~*(v10 + 80);
  v25 = swift_allocObject();
  sub_10005E174(v14, v25 + v23, type metadata accessor for NotesFolderWidgetView);
  (*(v10 + 32))(v25 + v24, &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_10005DA7C;
  *(v26 + 24) = v25;
  sub_100007DF0(&qword_100098A58, &qword_100076268);
  sub_100007DF0(&qword_100098A60, &qword_100076270);
  sub_1000095F4(&qword_100098A68, &qword_100098A58, &qword_100076268);
  sub_10005DC08();
  sub_10006AF50();
  v28 = v36;
  v27 = v37;
  v29 = v38;
  (*(v37 + 104))(v36, enum case for ContentSizeCategory.accessibilityMedium(_:), v38);
  sub_1000095F4(&qword_100098AA8, &qword_100098A48, &qword_100076238);
  sub_10006ACD0();
  (*(v27 + 8))(v28, v29);
  return sub_100009790(v17, &qword_100098A48, &qword_100076238);
}

uint64_t sub_1000552BC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v54 = a4;
  v64 = a2;
  v53 = a1;
  v63 = a5;
  v6 = sub_100007DF0(&qword_100097E60, &qword_100076080);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v61 = &v50 - v8;
  v60 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  v62 = *(v60 - 8);
  v9 = *(v62 + 64);
  __chkstk_darwin(v60);
  v50 = &v50 - v10;
  v11 = sub_10006AAB0();
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = *(v55 + 64);
  __chkstk_darwin(v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10006A9C0();
  v15 = *(v52 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v52);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100007DF0(&qword_100098A90, &qword_100076280);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v50 - v21;
  v23 = sub_100007DF0(&qword_100098A78, &qword_100076278);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v50 - v25;
  v27 = sub_100007DF0(&qword_100098AB8, &qword_100076298);
  v58 = *(v27 - 8);
  v59 = v27;
  v28 = *(v58 + 64);
  __chkstk_darwin(v27);
  v30 = &v50 - v29;
  v57 = sub_100007DF0(&qword_100098A60, &qword_100076270);
  v31 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v33 = &v50 - v32;
  *v22 = sub_10006A9E0();
  *(v22 + 1) = 0;
  v22[16] = 0;
  v34 = &v22[*(sub_100007DF0(&qword_100098AC0, &qword_1000762A0) + 44)];
  v51 = a3;
  sub_100055930(a3, v64, v53, v34);
  sub_100053CC4();
  sub_10006AFB0();
  sub_10006A790();
  v35 = &v22[*(v19 + 36)];
  v36 = v68;
  *v35 = v67;
  *(v35 + 1) = v36;
  *(v35 + 2) = v69;
  sub_10006A9A0();
  sub_10005DDBC();
  sub_10006AD40();
  (*(v15 + 8))(v18, v52);
  v37 = v23;
  sub_100009790(v22, &qword_100098A90, &qword_100076280);
  sub_10006AA90();
  v38 = sub_10005DD00();
  sub_10006AD90();
  v39 = v61;
  (*(v55 + 8))(v14, v56);
  v40 = v26;
  v41 = v60;
  sub_100009790(v40, &qword_100098A78, &qword_100076278);
  v42 = type metadata accessor for NotesFolderWidgetView(0);
  sub_100009728(v51 + *(v42 + 28), v39, &qword_100097E60, &qword_100076080);
  if ((*(v62 + 48))(v39, 2, v41))
  {
    v43 = v64;
  }

  else
  {
    v44 = v50;
    sub_1000096C0(v39, v50, &qword_100097E68, &qword_1000755A0);
    v45 = *(v44 + *(v41 + 48));

    v43 = v64;
    sub_100009BBC(v64);
    sub_10005D0D8(v44, type metadata accessor for NotesFolder);
  }

  v65 = v37;
  v66 = v38;
  swift_getOpaqueTypeConformance2();
  v46 = v59;
  sub_10006AD30();

  (*(v58 + 8))(v30, v46);
  v47 = v43[4];
  v48 = v43[5];

  sub_10006A7D0();

  return sub_100009790(v33, &qword_100098A60, &qword_100076270);
}

uint64_t sub_100055930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v148 = a3;
  v142 = a2;
  v153 = a4;
  v5 = sub_10006AF40();
  v149 = *(v5 - 8);
  v150 = v5;
  v6 = *(v149 + 64);
  __chkstk_darwin(v5);
  v130 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007DF0(&qword_100098AC8, &qword_1000762A8);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v152 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v151 = &v114 - v12;
  v120 = sub_100007DF0(&qword_100098AD0, &qword_1000762B0);
  v13 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120);
  v121 = &v114 - v14;
  v139 = sub_100007DF0(&qword_100098AD8, &qword_1000762B8);
  v15 = *(*(v139 - 8) + 64);
  __chkstk_darwin(v139);
  v122 = &v114 - v16;
  v124 = sub_100007DF0(&qword_100098AE0, &qword_1000762C0);
  v116 = *(v124 - 8);
  v17 = *(v116 + 64);
  __chkstk_darwin(v124);
  v115 = &v114 - v18;
  v135 = sub_100007DF0(&qword_100098AE8, &qword_1000762C8);
  v123 = *(v135 - 8);
  v19 = *(v123 + 64);
  __chkstk_darwin(v135);
  v125 = &v114 - v20;
  v21 = sub_100007DF0(&qword_100097E60, &qword_100076080);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v119 = &v114 - v23;
  v118 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  v117 = *(v118 - 8);
  v24 = *(v117 + 64);
  __chkstk_darwin(v118);
  v114 = &v114 - v25;
  v146 = sub_100007DF0(&qword_100098AF0, &qword_1000762D0);
  v26 = *(*(v146 - 8) + 64);
  __chkstk_darwin(v146);
  v154 = &v114 - v27;
  v136 = sub_100007DF0(&qword_100098AF8, &qword_1000762D8);
  v28 = *(*(v136 - 8) + 64);
  __chkstk_darwin(v136);
  v144 = &v114 - v29;
  v132 = sub_100007DF0(&qword_100098B00, &qword_1000762E0);
  v30 = *(*(v132 - 8) + 64);
  __chkstk_darwin(v132);
  v133 = &v114 - v31;
  v137 = sub_100007DF0(&qword_100098B08, &qword_1000762E8);
  v32 = *(*(v137 - 8) + 64);
  __chkstk_darwin(v137);
  v141 = &v114 - v33;
  v145 = sub_100007DF0(&qword_100098B10, &unk_1000762F0);
  v34 = *(*(v145 - 8) + 64);
  __chkstk_darwin(v145);
  v138 = &v114 - v35;
  v36 = type metadata accessor for Note();
  v134 = *(v36 - 8);
  v37 = *(v134 + 64);
  __chkstk_darwin(v36);
  v140 = &v114 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for NotesFolderWidgetView(0);
  v126 = *(v38 - 8);
  v39 = *(v126 + 64);
  __chkstk_darwin(v38);
  v127 = &v114 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v43 = &v114 - v42;
  v131 = sub_100007DF0(&qword_100098B18, &qword_100076300);
  v129 = *(v131 - 8);
  v44 = *(v129 + 64);
  __chkstk_darwin(v131);
  v128 = &v114 - v45;
  v46 = sub_10006B100();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  __chkstk_darwin(v46);
  v50 = &v114 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100007DF0(&qword_100098B20, &qword_100076308);
  v52 = *(*(v51 - 8) + 64);
  v53 = __chkstk_darwin(v51 - 8);
  v147 = &v114 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v143 = &v114 - v55;
  v56 = a1;
  v57 = a1 + *(v38 + 20);
  sub_10005CB90(&qword_100096A38, &qword_1000757C0, &type metadata accessor for WidgetFamily, v50);
  v58 = (*(v47 + 88))(v50, v46);
  if (v58 == enum case for WidgetFamily.systemSmall(_:))
  {
    v59 = v142;
    sub_100009728(v142 + *(v36 + 48), v43, &qword_100096B30, &qword_10006F548);
    v60 = v127;
    sub_10005E108(v56, v127, type metadata accessor for NotesFolderWidgetView);
    v61 = v140;
    sub_10005E108(v59, v140, type metadata accessor for Note);
    v62 = (*(v126 + 80) + 16) & ~*(v126 + 80);
    v63 = (v39 + *(v134 + 80) + v62) & ~*(v134 + 80);
    v64 = swift_allocObject();
    sub_10005E174(v60, v64 + v62, type metadata accessor for NotesFolderWidgetView);
    sub_10005E174(v61, v64 + v63, type metadata accessor for Note);
    type metadata accessor for NotesFolderWidgetView.SmallNoteRow(0);
    sub_10005DE74(&qword_100098B70, type metadata accessor for NotesFolderWidgetView.SmallNoteRow);
    v65 = v128;
    sub_10006A710();
    v66 = v129;
    v67 = v131;
    (*(v129 + 16))(v133, v65, v131);
    swift_storeEnumTagMultiPayload();
    sub_1000095F4(&qword_100098B38, &qword_100098B18, &qword_100076300);
    sub_1000095F4(&qword_100098B40, &qword_100098AE8, &qword_1000762C8);
    v68 = v141;
    sub_10006AA50();
    sub_100009728(v68, v144, &qword_100098B08, &qword_1000762E8);
    swift_storeEnumTagMultiPayload();
    sub_10005DF48();
    sub_10005E028();
    v69 = v138;
    sub_10006AA50();
    sub_100009790(v68, &qword_100098B08, &qword_1000762E8);
    sub_100009728(v69, v154, &qword_100098B10, &unk_1000762F0);
    swift_storeEnumTagMultiPayload();
    sub_10005DEBC();
    v70 = v143;
    sub_10006AA50();
    sub_100009790(v69, &qword_100098B10, &unk_1000762F0);
    (*(v66 + 8))(v65, v67);
    v71 = v150;
    v72 = v151;
    v73 = v70;
  }

  else
  {
    v128 = v37;
    v75 = v140;
    v74 = v141;
    v76 = v142;
    v129 = v56;
    if (v58 == enum case for WidgetFamily.systemMedium(_:))
    {
      v77 = v129 + *(v38 + 28);
      v78 = v119;
      sub_100009728(v77, v119, &qword_100097E60, &qword_100076080);
      v79 = v118;
      if ((*(v117 + 48))(v78, 2, v118))
      {
        v80 = 0;
      }

      else
      {
        v90 = v78;
        v91 = v114;
        sub_1000096C0(v90, v114, &qword_100097E68, &qword_1000755A0);
        v80 = *(*(v91 + *(v79 + 48)) + 16);

        sub_10005D0D8(v91, type metadata accessor for NotesFolder);
      }

      v72 = v151;
      v92 = v74;
      v93 = sub_100054AF8();
      sub_100009728(v76 + *(v36 + 48), v43, &qword_100096B30, &qword_10006F548);
      v94 = v75;
      sub_10005E108(v76, v75, type metadata accessor for Note);
      v95 = (*(v134 + 80) + 16) & ~*(v134 + 80);
      v73 = v143;
      v96 = v133;
      v97 = swift_allocObject();
      sub_10005E174(v94, v97 + v95, type metadata accessor for Note);
      if (v80 >= v93)
      {
        type metadata accessor for NotesFolderWidgetView.MediumNoteRow(0);
        sub_10005DE74(&qword_100098B68, type metadata accessor for NotesFolderWidgetView.MediumNoteRow);
        v102 = v115;
        sub_10006A710();
        v103 = v116;
        (*(v116 + 16))(v121, v102, v124);
        swift_storeEnumTagMultiPayload();
        sub_1000095F4(&qword_100098B50, &qword_100098AE0, &qword_1000762C0);
        sub_1000095F4(&qword_100098B40, &qword_100098AE8, &qword_1000762C8);
        v104 = v122;
        sub_10006AA50();
        sub_100009728(v104, v144, &qword_100098AD8, &qword_1000762B8);
        swift_storeEnumTagMultiPayload();
        sub_10005DF48();
        sub_10005E028();
        v105 = v138;
        sub_10006AA50();
        sub_100009790(v104, &qword_100098AD8, &qword_1000762B8);
        sub_100009728(v105, v154, &qword_100098B10, &unk_1000762F0);
        swift_storeEnumTagMultiPayload();
        sub_10005DEBC();
        sub_10006AA50();
        sub_100009790(v105, &qword_100098B10, &unk_1000762F0);
        (*(v103 + 8))(v102, v124);
      }

      else
      {
        type metadata accessor for NotesFolderWidgetView.LargeNoteRow(0);
        sub_10005DE74(&qword_100098B60, type metadata accessor for NotesFolderWidgetView.LargeNoteRow);
        v98 = v125;
        sub_10006A710();
        v99 = v123;
        v100 = v135;
        (*(v123 + 16))(v96, v98, v135);
        swift_storeEnumTagMultiPayload();
        sub_1000095F4(&qword_100098B38, &qword_100098B18, &qword_100076300);
        sub_1000095F4(&qword_100098B40, &qword_100098AE8, &qword_1000762C8);
        sub_10006AA50();
        sub_100009728(v92, v144, &qword_100098B08, &qword_1000762E8);
        swift_storeEnumTagMultiPayload();
        sub_10005DF48();
        sub_10005E028();
        v101 = v138;
        sub_10006AA50();
        sub_100009790(v92, &qword_100098B08, &qword_1000762E8);
        sub_100009728(v101, v154, &qword_100098B10, &unk_1000762F0);
        swift_storeEnumTagMultiPayload();
        sub_10005DEBC();
        sub_10006AA50();
        sub_100009790(v101, &qword_100098B10, &unk_1000762F0);
        (*(v99 + 8))(v125, v100);
      }
    }

    else
    {
      if (v58 == enum case for WidgetFamily.systemLarge(_:) || v58 == enum case for WidgetFamily.systemExtraLarge(_:))
      {
        v81 = v142 + *(v36 + 48);
        v82 = v144;
        sub_100009728(v81, v43, &qword_100096B30, &qword_10006F548);
        sub_10005E108(v76, v75, type metadata accessor for Note);
        v83 = (*(v134 + 80) + 16) & ~*(v134 + 80);
        v84 = swift_allocObject();
        sub_10005E174(v75, v84 + v83, type metadata accessor for Note);
        type metadata accessor for NotesFolderWidgetView.LargeNoteRow(0);
        sub_10005DE74(&qword_100098B60, type metadata accessor for NotesFolderWidgetView.LargeNoteRow);
        v85 = v125;
        sub_10006A710();
        v86 = v123;
        v87 = v135;
        (*(v123 + 16))(v121, v85, v135);
        swift_storeEnumTagMultiPayload();
        sub_1000095F4(&qword_100098B50, &qword_100098AE0, &qword_1000762C0);
        sub_1000095F4(&qword_100098B40, &qword_100098AE8, &qword_1000762C8);
        v88 = v122;
        sub_10006AA50();
        sub_100009728(v88, v82, &qword_100098AD8, &qword_1000762B8);
        swift_storeEnumTagMultiPayload();
        sub_10005DF48();
        sub_10005E028();
        v89 = v138;
        sub_10006AA50();
        sub_100009790(v88, &qword_100098AD8, &qword_1000762B8);
        sub_100009728(v89, v154, &qword_100098B10, &unk_1000762F0);
        swift_storeEnumTagMultiPayload();
        sub_10005DEBC();
        v73 = v143;
        sub_10006AA50();
        sub_100009790(v89, &qword_100098B10, &unk_1000762F0);
        (*(v86 + 8))(v85, v87);
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        sub_10005DEBC();
        v73 = v143;
        sub_10006AA50();
        (*(v47 + 8))(v50, v46);
      }

      v72 = v151;
    }

    v71 = v150;
  }

  if (sub_100053940(v148))
  {
    v106 = 1;
    v107 = v149;
  }

  else
  {
    v108 = v130;
    sub_10006AF30();
    v107 = v149;
    (*(v149 + 32))(v72, v108, v71);
    v106 = 0;
  }

  (*(v107 + 56))(v72, v106, 1, v71);
  v109 = v147;
  sub_100009728(v73, v147, &qword_100098B20, &qword_100076308);
  v110 = v152;
  sub_100009728(v72, v152, &qword_100098AC8, &qword_1000762A8);
  v111 = v153;
  sub_100009728(v109, v153, &qword_100098B20, &qword_100076308);
  v112 = sub_100007DF0(&qword_100098B58, &unk_100076310);
  sub_100009728(v110, v111 + *(v112 + 48), &qword_100098AC8, &qword_1000762A8);
  sub_100009790(v72, &qword_100098AC8, &qword_1000762A8);
  sub_100009790(v73, &qword_100098B20, &qword_100076308);
  sub_100009790(v110, &qword_100098AC8, &qword_1000762A8);
  return sub_100009790(v109, &qword_100098B20, &qword_100076308);
}

uint64_t sub_100057054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100007DF0(&qword_100097E60, &qword_100076080);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v27 - v8;
  v10 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = sub_100007DF0(&qword_100096D30, &unk_10006F760);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v27 - v17;
  v19 = type metadata accessor for NotesFolderWidgetView(0);
  sub_100009728(a1 + *(v19 + 28), v9, &qword_100097E60, &qword_100076080);
  if ((*(v11 + 48))(v9, 2, v10))
  {
    v20 = 1;
  }

  else
  {
    sub_1000096C0(v9, v14, &qword_100097E68, &qword_1000755A0);
    v21 = *&v14[*(v10 + 48)];

    sub_10005E174(v14, v18, type metadata accessor for NotesFolder);
    v20 = 0;
  }

  v22 = type metadata accessor for NotesFolder();
  (*(*(v22 - 8) + 56))(v18, v20, 1, v22);
  v23 = type metadata accessor for NotesFolderWidgetView.SmallNoteRow(0);
  v24 = *(v23 + 24);
  sub_10005E108(a2, a3 + v24, type metadata accessor for Note);
  v25 = type metadata accessor for Note();
  (*(*(v25 - 8) + 56))(a3 + v24, 0, 1, v25);
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  return sub_1000096C0(v18, a3 + *(v23 + 20), &qword_100096D30, &unk_10006F760);
}

uint64_t sub_100057338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10005E108(a1, a2, type metadata accessor for Note);
  v3 = type metadata accessor for Note();
  (*(*(v3 - 8) + 56))(a2, 0, 1, v3);
  KeyPath = swift_getKeyPath();
  result = type metadata accessor for NotesFolderWidgetView.MediumNoteRow(0);
  v6 = a2 + *(result + 20);
  *v6 = KeyPath;
  *(v6 + 8) = 0;
  return result;
}

uint64_t sub_1000573DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for NotesFolderWidgetView.LargeNoteRow(0);
  v5 = *(v4 + 20);
  sub_10005E108(a1, a2 + v5, type metadata accessor for Note);
  v6 = type metadata accessor for Note();
  (*(*(v6 - 8) + 56))(a2 + v5, 0, 1, v6);
  KeyPath = swift_getKeyPath();
  *a2 = swift_getKeyPath();
  sub_100007DF0(&qword_100098128, &qword_100075CE0);
  result = swift_storeEnumTagMultiPayload();
  v9 = a2 + *(v4 + 24);
  *v9 = KeyPath;
  v9[8] = 0;
  return result;
}

uint64_t sub_1000574D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100007DF0(&qword_100097E60, &qword_100076080);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  v8 = _s5EntryVMa();
  sub_100009728(a1 + *(v8 + 20), v7, &qword_100097E60, &qword_100076080);
  KeyPath = swift_getKeyPath();
  v10 = objc_opt_self();
  v11 = -17.0;
  if ([v10 ic_isiPad])
  {
    v12 = -19.0;
  }

  else
  {
    v12 = -17.0;
  }

  v13 = [v10 ic_isiPad];
  sub_10005D0D8(a1, _s5EntryVMa);
  if (v13)
  {
    v11 = -18.0;
  }

  *a2 = swift_getKeyPath();
  sub_100007DF0(&qword_100098128, &qword_100075CE0);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for NotesFolderWidgetView(0);
  v15 = v14[5];
  *(a2 + v15) = swift_getKeyPath();
  sub_100007DF0(&qword_100096A38, &qword_1000757C0);
  swift_storeEnumTagMultiPayload();
  v16 = a2 + v14[6];
  *v16 = KeyPath;
  v16[8] = 0;
  result = sub_1000096C0(v7, a2 + v14[7], &qword_100097E60, &qword_100076080);
  *(a2 + v14[8]) = v12;
  *(a2 + v14[9]) = v11;
  return result;
}

uint64_t sub_100057734(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100007DF0(&qword_100098440, &unk_100075C20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100007DF0(&qword_100096A50, &unk_10006F470);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 > 1)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = sub_100007DF0(&qword_100097E60, &qword_100076080);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1000578DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100007DF0(&qword_100098440, &unk_100075C20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100007DF0(&qword_100096A50, &unk_10006F470);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
  }

  else
  {
    v15 = sub_100007DF0(&qword_100097E60, &qword_100076080);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_100057A74()
{
  sub_100061668(319, &qword_1000984B0, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100061668(319, &qword_100096AD8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10003B41C();
      if (v2 <= 0x3F)
      {
        sub_1000336F0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100057BB4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10006A950();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007DF0(&qword_100096A40, &unk_10006F460);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for NotesFolderWidgetView.Thumbnail(0);
  sub_100009728(v1 + *(v12 + 20), v11, &qword_100096A40, &unk_10006F460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10006B0C0();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10006B3B0();
    v16 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100057DBC@<X0>(uint64_t a1@<X8>)
{
  v116 = a1;
  v115 = sub_10006A740();
  v114 = *(v115 - 8);
  v2 = *(v114 + 64);
  v3 = __chkstk_darwin(v115);
  v111 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v110 = &v93 - v5;
  v113 = sub_10006AFD0();
  v112 = *(v113 - 8);
  v6 = *(v112 + 64);
  __chkstk_darwin(v113);
  v109 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_10006A7E0();
  v8 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v105 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007DF0(&qword_100099128, &qword_100076848);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v107 = &v93 - v12;
  v106 = sub_100007DF0(&qword_100099130, &qword_100076850);
  v13 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v108 = &v93 - v14;
  v96 = sub_10006B0C0();
  v15 = *(v96 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v96);
  v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v93 - v20;
  v22 = sub_100007DF0(&qword_100096CE0, &unk_1000753B0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v93 - v24;
  v26 = sub_10006AEB0();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_100007DF0(&qword_100096CE8, &qword_10006F720);
  v98 = *(v99 - 8);
  v31 = *(v98 + 64);
  __chkstk_darwin(v99);
  v33 = &v93 - v32;
  *&v101 = sub_100007DF0(&qword_100099138, &qword_100076858);
  v100 = *(v101 - 8);
  v34 = *(v100 + 64);
  __chkstk_darwin(v101);
  v97 = &v93 - v35;
  v95 = sub_100007DF0(&qword_100099140, &qword_100076860);
  v36 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v102 = &v93 - v37;
  v94 = sub_100007DF0(&qword_100099148, &qword_100076868);
  v38 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v103 = &v93 - v39;
  v40 = *(v1 + *(type metadata accessor for NotesFolderWidgetView.Thumbnail(0) + 24));
  (*(v27 + 104))(v30, enum case for Image.ResizingMode.stretch(_:), v26);
  sub_10006AF00();
  (*(v27 + 8))(v30, v26);
  sub_100057BB4(v21);
  sub_10006B0B0();
  v41 = sub_10006B080();
  v42 = *(v15 + 8);
  v43 = v19;
  v44 = v96;
  v42(v43, v96);
  v42(v21, v44);
  if ((v41 & 1) != 0 && _UISolariumEnabled())
  {
    sub_10006B0E0();
  }

  else
  {
    sub_10006B0D0();
  }

  v45 = sub_10006B0F0();
  (*(*(v45 - 8) + 56))(v25, 0, 1, v45);
  sub_10006AEF0();

  sub_100009790(v25, &qword_100096CE0, &unk_1000753B0);
  swift_getOpaqueTypeConformance2();
  v46 = v97;
  v47 = v99;
  sub_10006ACC0();
  (*(v98 + 8))(v33, v47);
  sub_10006AFB0();
  sub_10006A7F0();
  v48 = v102;
  (*(v100 + 32))(v102, v46, v101);
  v49 = (v48 + *(v95 + 36));
  v50 = v122;
  v49[4] = v121;
  v49[5] = v50;
  v49[6] = v123;
  v51 = v118;
  *v49 = v117;
  v49[1] = v51;
  v52 = v120;
  v49[2] = v119;
  v49[3] = v52;
  v53 = v103;
  v54 = &v103[*(v94 + 36)];
  v55 = v104;
  v56 = *(v104 + 20);
  v57 = enum case for RoundedCornerStyle.continuous(_:);
  v58 = sub_10006A990();
  v59 = *(*(v58 - 8) + 104);
  v59(&v54[v56], v57, v58);
  __asm { FMOV            V0.2D, #5.0 }

  v101 = _Q0;
  *v54 = _Q0;
  *&v54[*(sub_100007DF0(&qword_100099150, &qword_100076870) + 36)] = 256;
  sub_1000096C0(v48, v53, &qword_100099140, &qword_100076860);
  v65 = v105;
  v59(&v105[*(v55 + 20)], v57, v58);
  *v65 = v101;
  v66 = sub_10006ADB0();
  sub_10006A760();
  v67 = v107;
  sub_10005E108(v65, v107, &type metadata accessor for RoundedRectangle);
  v68 = v67 + *(sub_100007DF0(&qword_100099158, &qword_100076878) + 36);
  v69 = v125;
  *v68 = v124;
  *(v68 + 16) = v69;
  *(v68 + 32) = v126;
  v70 = sub_100007DF0(&qword_100099160, &qword_100076880);
  *(v67 + *(v70 + 52)) = v66;
  *(v67 + *(v70 + 56)) = 256;
  v71 = sub_10006AFB0();
  v73 = v72;
  sub_10005D0D8(v65, &type metadata accessor for RoundedRectangle);
  v74 = (v67 + *(sub_100007DF0(&qword_100099168, &qword_100076888) + 36));
  *v74 = v71;
  v74[1] = v73;
  v75 = v110;
  sub_10005CB90(&qword_100096A30, &qword_100076650, &type metadata accessor for ColorScheme, v110);
  v76 = v114;
  v77 = v111;
  v78 = v115;
  (*(v114 + 104))(v111, enum case for ColorScheme.light(_:), v115);
  LOBYTE(v71) = sub_10006A730();
  v79 = *(v76 + 8);
  v79(v77, v78);
  v79(v75, v78);
  v80 = v112;
  v81 = &enum case for BlendMode.plusDarker(_:);
  if ((v71 & 1) == 0)
  {
    v81 = &enum case for BlendMode.plusLighter(_:);
  }

  v82 = v109;
  v83 = v113;
  (*(v112 + 104))(v109, *v81, v113);
  v84 = v108;
  (*(v80 + 32))(&v108[*(v106 + 36)], v82, v83);
  sub_1000096C0(v67, v84, &qword_100099128, &qword_100076848);
  v85 = sub_10006AFB0();
  v87 = v86;
  v88 = sub_100007DF0(&qword_100099170, &qword_100076890);
  v89 = v116;
  v90 = v116 + *(v88 + 36);
  sub_1000096C0(v84, v90, &qword_100099130, &qword_100076850);
  v91 = (v90 + *(sub_100007DF0(&qword_100099178, &qword_100076898) + 36));
  *v91 = v85;
  v91[1] = v87;
  return sub_1000096C0(v53, v89, &qword_100099148, &qword_100076868);
}