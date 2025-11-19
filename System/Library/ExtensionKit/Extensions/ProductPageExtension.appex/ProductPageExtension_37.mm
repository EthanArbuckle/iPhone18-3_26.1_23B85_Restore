uint64_t sub_10043DC18()
{
  v0 = sub_10075E11C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  sub_10075E0AC();
  sub_10075E08C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v5 = Strong, type metadata accessor for InteractiveSectionBackgroundView(), sub_1007708EC(), v6 = sub_10076FF6C(), , isa = sub_10075E02C().super.isa, v8 = [v5 _visibleDecorationViewOfKind:v6 atIndexPath:isa], v5, v6, isa, !v8) || (*&v16[0] = v8, sub_100440FD8(), sub_10000A5D4(&unk_1009575E0), (swift_dynamicCast() & 1) == 0))
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
  }

  sub_10043DED8(v18);
  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9 || (v10 = v9, v11 = UICollectionElementKindSectionHeader, v12 = sub_10075E02C().super.isa, v13 = [v10 _visibleSupplementaryViewOfKind:v11 atIndexPath:v12], v10, v11, v12, !v13) || (v15[1] = v13, sub_100440FD8(), sub_10000A5D4(&unk_1009575E0), (swift_dynamicCast() & 1) == 0))
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
  }

  sub_10043DED8(v16);
  (*(v1 + 8))(v3, v0);
  sub_10000CFBC(v16, &unk_1009575D0);
  return sub_10000CFBC(v18, &unk_1009575D0);
}

uint64_t sub_10043DED8(uint64_t a1)
{
  v49 = sub_10000A5D4(&unk_1009575B8);
  __chkstk_darwin(v49);
  v50 = &v43 - v3;
  v4 = sub_10000A5D4(&unk_100957590);
  __chkstk_darwin(v4 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  __chkstk_darwin(v13);
  v15 = (&v43 - v14);
  v16 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  sub_100016E2C(a1, &v51, &unk_1009575D0);
  if (!v52)
  {
    return sub_10000CFBC(&v51, &unk_1009575D0);
  }

  v47 = v12;
  v48 = v22;
  sub_100012498(&v51, v54);
  v23 = OBJC_IVAR____TtC20ProductPageExtension42InteractiveSectionBackgroundScrollObserver_currentState;
  swift_beginAccess();
  sub_100016E2C(v1 + v23, v15, &unk_100957590);
  v24 = *(v17 + 48);
  if (v24(v15, 1, v16) == 1)
  {
    v25 = &unk_100957590;
    v26 = v15;
LABEL_21:
    sub_10000CFBC(v26, v25);
    return sub_10000CD74(v54);
  }

  v43 = v19;
  v44 = v6;
  v45 = a1;
  v46 = v1;
  v28 = v48;
  sub_100440F74(v15, v48);
  v29 = v55;
  v30 = v56;
  sub_10000CF78(v54, v55);
  v31 = v47;
  (*(v30 + 8))(v29, v30);
  sub_10021C620(v28, v9);
  (*(v17 + 56))(v9, 0, 1, v16);
  v32 = v50;
  v33 = *(v49 + 48);
  sub_100016E2C(v31, v50, &unk_100957590);
  sub_100016E2C(v9, v32 + v33, &unk_100957590);
  if (v24(v32, 1, v16) == 1)
  {
    sub_10000CFBC(v9, &unk_100957590);
    sub_10000CFBC(v31, &unk_100957590);
    if (v24((v32 + v33), 1, v16) == 1)
    {
      sub_10000CFBC(v32, &unk_100957590);
LABEL_8:
      sub_10021C73C(v48);
      return sub_10000CD74(v54);
    }

    goto LABEL_11;
  }

  v34 = v44;
  sub_100016E2C(v32, v44, &unk_100957590);
  if (v24((v32 + v33), 1, v16) == 1)
  {
    sub_10000CFBC(v9, &unk_100957590);
    sub_10000CFBC(v47, &unk_100957590);
    sub_10021C73C(v34);
LABEL_11:
    sub_10000CFBC(v32, &unk_1009575B8);
    v35 = v46;
    goto LABEL_18;
  }

  v36 = v43;
  sub_100440F74(v32 + v33, v43);
  v37 = sub_1007621DC();
  v35 = v46;
  if (v37 & 1) != 0 && *(v34 + *(v16 + 20)) == *(v36 + *(v16 + 20)) && (sub_10075E05C())
  {
    v38 = sub_1007621DC();
    sub_10021C73C(v36);
    sub_10000CFBC(v9, &unk_100957590);
    sub_10000CFBC(v47, &unk_100957590);
    sub_10021C73C(v34);
    sub_10000CFBC(v32, &unk_100957590);
    if (v38)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_10021C73C(v36);
    sub_10000CFBC(v9, &unk_100957590);
    sub_10000CFBC(v47, &unk_100957590);
    sub_10021C73C(v34);
    sub_10000CFBC(v32, &unk_100957590);
  }

LABEL_18:
  sub_100016E2C(v45, &v51, &unk_1009575D0);
  v39 = v52;
  if (!v52)
  {
    sub_10021C73C(v48);
    v25 = &unk_1009575D0;
    v26 = &v51;
    goto LABEL_21;
  }

  v40 = v53;
  sub_10000CF78(&v51, v52);
  v41 = *(v35 + OBJC_IVAR____TtC20ProductPageExtension42InteractiveSectionBackgroundScrollObserver_objectGraph);
  v42 = v48;
  (*(v40 + 16))(v48, v41, v39, v40);
  sub_10021C73C(v42);
  sub_10000CD74(&v51);
  return sub_10000CD74(v54);
}

uint64_t sub_10043E4F4()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension42InteractiveSectionBackgroundScrollObserver_shelfLayoutContext;
  v2 = sub_10076469C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectWeakDestroy();

  sub_10000CFBC(v0 + OBJC_IVAR____TtC20ProductPageExtension42InteractiveSectionBackgroundScrollObserver_currentState, &unk_100957590);

  return swift_deallocClassInstance();
}

void sub_10043E5F8()
{
  sub_10076469C();
  if (v0 <= 0x3F)
  {
    sub_10021B8CC();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10043E710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1007621EC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_10075E11C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10043E814(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1007621EC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_10075E11C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10043E910()
{
  result = sub_1007621EC();
  if (v1 <= 0x3F)
  {
    result = sub_10075E11C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10043E9AC()
{
  result = qword_100957588;
  if (!qword_100957588)
  {
    type metadata accessor for InteractiveSectionBackgroundScrollObserver(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957588);
  }

  return result;
}

uint64_t sub_10043EA04(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10043FD38(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10043EA80(v6);
  return sub_1007714DC();
}

void sub_10043EA80(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_10077162C(v2);
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
        sub_10000A5D4(&qword_100948BB0);
        v6 = sub_10077023C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_10043EDB8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_10043EB90(0, v2, 1, a1);
  }
}

void sub_10043EB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = sub_10075E11C();
  __chkstk_darwin(v33);
  v32 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v28 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v34 = *a4;
    v14 = v34 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v30 = v14;
    v31 = a3;
    v16 = *(v34 + 8 * a3);
    v29 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v19 = [v16 indexPath];
      sub_10075E06C();

      v20 = [v18 indexPath];
      v21 = v32;
      sub_10075E06C();

      LOBYTE(v20) = sub_10075E04C();
      v22 = *v13;
      v23 = v21;
      v24 = v33;
      (*v13)(v23, v33);
      v22(v12, v24);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if ((v20 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v14 = v30 + 8;
        v15 = v29 - 1;
        if (v31 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v25;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10043EDB8(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v111 = a1;
  v120 = sub_10075E11C();
  __chkstk_darwin(v120);
  v119 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v118 = &v105 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v111;
    if (!*v111)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v100 = a4;
    }

    else
    {
LABEL_121:
      v100 = sub_10043FB64(a4);
    }

    v121 = v100;
    v101 = *(v100 + 2);
    if (v101 >= 2)
    {
      while (*v16)
      {
        a4 = *&v100[16 * v101];
        v102 = v100;
        v103 = *&v100[16 * v101 + 24];
        sub_10043F640((*v16 + 8 * a4), (*v16 + 8 * *&v100[16 * v101 + 16]), (*v16 + 8 * v103), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v103 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_10043FB64(v102);
        }

        if (v101 - 2 >= *(v102 + 2))
        {
          goto LABEL_115;
        }

        v104 = &v102[16 * v101];
        *v104 = a4;
        v104[1] = v103;
        v121 = v102;
        sub_10043FAD8(v101 - 1);
        v100 = v121;
        v101 = *(v121 + 2);
        if (v101 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v117 = (v11 + 8);
  v15 = _swiftEmptyArrayStorage;
  v110 = a4;
  v106 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v115 = v13;
      v108 = v15;
      v109 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v114 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21 = [v18 indexPath];
      v22 = v118;
      sub_10075E06C();

      v23 = [v20 indexPath];
      v24 = v119;
      sub_10075E06C();

      LODWORD(v116) = sub_10075E04C();
      v25 = *v117;
      v26 = v120;
      (*v117)(v24, v120);
      v25(v22, v26);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v107 = v16;
      v27 = (v16 + 2);
      while (1)
      {
        v14 = v115;
        if (v115 == v27)
        {
          break;
        }

        v28 = *(v5 - 8);
        v29 = *v5;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v30 = [v29 indexPath];
        v31 = v118;
        sub_10075E06C();

        v32 = [v28 indexPath];
        v33 = v119;
        sub_10075E06C();

        LODWORD(v32) = sub_10075E04C() & 1;
        v34 = v33;
        v35 = v120;
        v25(v34, v120);
        v25(v31, v35);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        ++v27;
        v5 += 8;
        if ((v116 & 1) != v32)
        {
          v14 = (v27 - 1);
          break;
        }
      }

      v15 = v108;
      v6 = v109;
      a4 = v110;
      v16 = v107;
      v36 = v114;
      if (v116)
      {
        if (v14 < v107)
        {
          goto LABEL_118;
        }

        a3 = v106;
        if (v107 < v14)
        {
          v37 = 8 * v14 - 8;
          v38 = v14;
          v39 = v107;
          do
          {
            if (v39 != --v38)
            {
              v41 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v40 = *(v41 + v36);
              *(v41 + v36) = *(v41 + v37);
              *(v41 + v37) = v40;
            }

            v39 = (v39 + 1);
            v37 -= 8;
            v36 += 8;
          }

          while (v39 < v38);
        }
      }

      else
      {
        a3 = v106;
      }
    }

    v42 = a3[1];
    if (v14 < v42)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v43 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v43 >= v42)
        {
          v43 = a3[1];
        }

        if (v43 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v43)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v56 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v56;
    }

    else
    {
      v15 = sub_10049D820(0, *(v56 + 2) + 1, 1, v56);
    }

    a4 = *(v15 + 2);
    v57 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v57 >> 1)
    {
      v15 = sub_10049D820((v57 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v58 = &v15[16 * a4];
    *(v58 + 4) = v16;
    *(v58 + 5) = v14;
    v59 = *v111;
    if (!*v111)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v60 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v61 = *(v15 + 4);
          v62 = *(v15 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_56:
          if (v64)
          {
            goto LABEL_105;
          }

          v77 = &v15[16 * v5];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_108;
          }

          v83 = &v15[16 * v60 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_112;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v87 = &v15[16 * v5];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_70:
        if (v82)
        {
          goto LABEL_107;
        }

        v90 = &v15[16 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_110;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v60 - 1;
        if (v60 - 1 >= v5)
        {
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
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v98 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v60 + 40];
        sub_10043F640((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v60 + 32]), (*a3 + 8 * v16), v59);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_10043FB64(v98);
        }

        if (a4 >= *(v98 + 2))
        {
          goto LABEL_102;
        }

        v99 = &v98[16 * a4];
        *(v99 + 4) = v5;
        *(v99 + 5) = v16;
        v121 = v98;
        a4 = &v121;
        sub_10043FAD8(v60);
        v15 = v121;
        v5 = *(v121 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v15[16 * v5 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_103;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_104;
      }

      v72 = &v15[16 * v5];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_106;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_109;
      }

      if (v76 >= v68)
      {
        v94 = &v15[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_113;
        }

        if (v63 < v97)
        {
          v60 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v110;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v108 = v15;
  v109 = v6;
  v116 = *a3;
  v44 = v116 + 8 * v14 - 8;
  v107 = v16;
  a4 = v16 - v14;
  v112 = v43;
LABEL_29:
  v114 = v44;
  v115 = v14;
  v5 = *(v116 + 8 * v14);
  v113 = a4;
  v45 = v44;
  while (1)
  {
    v46 = *v45;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v47 = [v5 indexPath];
    v48 = v118;
    sub_10075E06C();

    v49 = [v46 indexPath];
    v50 = v119;
    sub_10075E06C();

    LOBYTE(v49) = sub_10075E04C();
    v51 = *v117;
    v52 = v50;
    v53 = v120;
    (*v117)(v52, v120);
    v51(v48, v53);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v49 & 1) == 0)
    {
LABEL_28:
      v14 = v115 + 1;
      v44 = v114 + 8;
      a4 = v113 - 1;
      if ((v115 + 1) != v112)
      {
        goto LABEL_29;
      }

      v14 = v112;
      v15 = v108;
      v6 = v109;
      a3 = v106;
      v16 = v107;
      goto LABEL_36;
    }

    if (!v116)
    {
      break;
    }

    v54 = *v45;
    v5 = *(v45 + 8);
    *v45 = v5;
    *(v45 + 8) = v54;
    v45 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_10043F640(void **a1, void **a2, void **a3, void **a4)
{
  v51 = sub_10075E11C();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v45 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v52 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v54 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v52)
    {
      v46 = a4;
      v47 = (v8 + 8);
LABEL_27:
      v45 = a1;
      v29 = a1 - 1;
      v30 = a3 - 1;
      v31 = v54;
      v48 = a1 - 1;
      do
      {
        v53 = v30;
        v32 = v30 + 1;
        v33 = *--v31;
        v34 = *v29;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v35 = [v33 indexPath];
        v36 = v49;
        sub_10075E06C();

        v37 = [v34 indexPath];
        v38 = v50;
        sub_10075E06C();

        LOBYTE(v37) = sub_10075E04C();
        v39 = *v47;
        v40 = v38;
        v41 = v51;
        (*v47)(v40, v51);
        v39(v36, v41);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v37)
        {
          a4 = v46;
          a3 = v53;
          v43 = v48;
          if (v32 != v45)
          {
            *v53 = *v48;
          }

          if (v54 <= a4 || (a1 = v43, v43 <= v52))
          {
            a1 = v43;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v46;
        v42 = v53;
        if (v32 != v54)
        {
          *v53 = *v31;
        }

        v30 = v42 - 1;
        v54 = v31;
        v29 = v48;
      }

      while (v31 > a4);
      v54 = v31;
      a1 = v45;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v54 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v52 = a1;
        v17 = *a2;
        v18 = *a4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v19 = [v17 indexPath];
        v20 = v49;
        sub_10075E06C();

        v21 = [v18 indexPath];
        v22 = v50;
        sub_10075E06C();

        LOBYTE(v21) = sub_10075E04C();
        v23 = *v16;
        v24 = v22;
        v25 = v51;
        (*v16)(v24, v51);
        v23(v20, v25);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if ((v21 & 1) == 0)
        {
          break;
        }

        v26 = a2;
        v27 = v52;
        v28 = v52 == a2++;
        if (!v28)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v27 + 1;
        if (a4 >= v54 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v26 = a4;
      v27 = v52;
      v28 = v52 == a4++;
      if (v28)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v27 = *v26;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v54 - a4 + (v54 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v54 - a4));
  }

  return 1;
}

uint64_t sub_10043FAD8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10043FB64(v3);
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

char *sub_10043FB78(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A5D4(&qword_1009575C8);
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

void *sub_10043FC7C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_10077158C();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_1004A01D4(v3, 0);
  sub_1000FB6F4(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10043FD4C(char **a1, double a2)
{
  v115 = a1;
  v4 = sub_10000A5D4(&unk_100957590);
  __chkstk_darwin(v4 - 8);
  v113 = v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v112 = v109 - v7;
  v128 = sub_10075E11C();
  v122 = *(v128 - 8);
  __chkstk_darwin(v128);
  v121 = v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v114 = v109 - v10;
  __chkstk_darwin(v11);
  v118 = v109 - v12;
  __chkstk_darwin(v13);
  v119 = v109 - v14;
  __chkstk_darwin(v15);
  v120 = v109 - v16;
  v130 = sub_1007621EC();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v111 = v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v117 = v109 - v19;
  __chkstk_darwin(v20);
  v116 = v109 - v21;
  __chkstk_darwin(v22);
  v127 = (v109 - v23);
  __chkstk_darwin(v24);
  v126 = v109 - v25;
  v125 = sub_10076C38C();
  v134 = *(v125 - 1);
  __chkstk_darwin(v125);
  v27 = v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10076469C();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_10000A5D4(&unk_100946720);
  v123 = *(v132 - 8);
  v32 = __chkstk_darwin(v132);
  v131 = v109 - v33;
  v34 = OBJC_IVAR____TtC20ProductPageExtension42InteractiveSectionBackgroundScrollObserver_shelfLayoutContext;
  v35 = *(v29 + 16);
  v133 = v2;
  v35(v31, v2 + OBJC_IVAR____TtC20ProductPageExtension42InteractiveSectionBackgroundScrollObserver_shelfLayoutContext, v28, v32);
  v124 = v35;
  sub_10076468C();
  v36 = *(v29 + 8);
  v36(v31, v28);
  (v35)(v31, v2 + v34, v28);
  sub_10076460C();
  v36(v31, v28);
  sub_10076C31C();
  v38 = v37;
  v39 = *(v134 + 8);
  v134 += 8;
  v40 = v125;
  v39(v27, v125);
  v124(v31, v133 + v34, v28);
  sub_10076460C();
  v36(v31, v28);
  sub_10076C2BC();
  v42 = v41;
  v39(v27, v40);
  v43 = v131;
  v44 = v132;
  swift_getKeyPath();
  sub_10076F49C();

  v134 = v140;
  swift_getKeyPath();
  v45 = v126;
  sub_10076F49C();

  v46 = v129;
  v47 = v129 + 104;
  v48 = *(v129 + 104);
  v49 = v127;
  v50 = v130;
  v48(v127, enum case for ShelfBackground.interactive(_:), v130);
  LOBYTE(v34) = sub_1007621DC();
  v53 = *(v46 + 8);
  v51 = v46 + 8;
  v52 = v53;
  (v53)(v49, v50);
  (v53)(v45, v50);
  if ((v34 & 1) == 0)
  {
    return (*(v123 + 8))(v43, v44);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v123 + 8))(v43, v44);
  }

  v55 = Strong;
  v109[2] = v47;

  v140 = sub_10043FC7C(v56);
  sub_10043EA04(&v140);
  v110 = v48;
  v57 = v140;
  v58 = v134;
  v125 = v55;
  if (v140 < 0 || (v140 & 0x4000000000000000) != 0)
  {
LABEL_58:
    v59 = sub_10077158C();
  }

  else
  {
    v59 = *(v140 + 16);
  }

  v124 = v51;
  v115 = v52;
  if (!v59)
  {
    v127 = _swiftEmptyArrayStorage;
LABEL_30:

    if (!v127[2])
    {

      return (*(v123 + 8))(v131, v132);
    }

    v72 = v122;
    v73 = v127 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    v74 = v114;
    v75 = v128;
    v126 = *(v122 + 16);
    (v126)(v114, v73, v128);

    v76 = v118;
    (*(v72 + 32))(v118, v74, v75);
    if (__OFADD__(sub_10075E09C(), v58))
    {
      goto LABEL_61;
    }

    sub_10075E0AC();
    sub_10075E08C();
    swift_getKeyPath();
    sub_10076F49C();

    v77 = *(v140 + 16);

    v78 = sub_10075E09C();
    v79 = v130;
    v80 = v117;
    if ((v78 & 0x8000000000000000) == 0 && v78 < v77)
    {
      swift_getKeyPath();
      sub_10076F49C();

      v81 = v139;
      v82 = sub_10075E09C();
      if ((v82 & 0x8000000000000000) != 0)
      {
        goto LABEL_62;
      }

      if (v82 >= *(v81 + 16))
      {
        goto LABEL_64;
      }

      sub_10000A570(v81 + 40 * v82 + 32, v138);

      sub_10000A5D4(&qword_1009575A0);
      sub_10000A5D4(&qword_1009575A8);
      if (swift_dynamicCast())
      {
        sub_100012498(&v135, &v140);
        sub_10000CF78(&v140, v141);
        sub_100767BDC();
        sub_10000CD74(&v140);
LABEL_41:
        swift_getKeyPath();
        sub_10076F49C();

        v83 = *(v140 + 16);

        v84 = sub_10075E09C();
        if ((v84 & 0x8000000000000000) == 0 && v84 < v83)
        {
          swift_getKeyPath();
          sub_10076F49C();

          v85 = v139;
          v86 = sub_10075E09C();
          if ((v86 & 0x8000000000000000) != 0)
          {
            goto LABEL_63;
          }

          if (v86 >= *(v85 + 16))
          {
            goto LABEL_65;
          }

          sub_10000A570(v85 + 40 * v86 + 32, v138);

          sub_10000A5D4(&qword_1009575A0);
          sub_10000A5D4(&qword_1009575A8);
          if (swift_dynamicCast())
          {
            sub_100012498(&v135, &v140);
            sub_10000CF78(&v140, v141);
            sub_100767BDC();
            sub_10000CD74(&v140);
            v87 = enum case for ShelfBackground.none(_:);
LABEL_49:
            v88 = v129;
            v89 = *(v129 + 16);
            v90 = v111;
            v89(v111, v80, v79);
            LODWORD(v88) = (*(v88 + 88))(v90, v79);
            (v115)(v90, v79);
            v91 = 1.0;
            if (v88 == v87)
            {
              v92 = v126;
            }

            else
            {
              v93 = [v125 collectionViewLayout];
              isa = sub_10075E02C().super.isa;
              v95 = [v93 layoutAttributesForItemAtIndexPath:isa];

              v92 = v126;
              if (v95)
              {
                [v95 frame];
                v96 = CGRectGetMinX(v144) - v38 - a2;
                [v95 frame];
                Width = CGRectGetWidth(v145);

                v91 = (v96 + v42 + Width) / (v42 + Width);
                if (v91 >= 1.0)
                {
                  v91 = 1.0;
                }
              }
            }

            v98 = v112;
            v99 = v116;
            v89(v112, v116, v79);
            v100 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
            v101 = v76;
            v102 = v128;
            v92(v98 + v100[6], v101, v128);
            v103 = v117;
            v89((v98 + v100[7]), v117, v79);
            *(v98 + v100[5]) = v91;
            (*(*(v100 - 1) + 56))(v98, 0, 1, v100);
            v104 = OBJC_IVAR____TtC20ProductPageExtension42InteractiveSectionBackgroundScrollObserver_currentState;
            v105 = v133;
            swift_beginAccess();
            v106 = v113;
            sub_100016E2C(v105 + v104, v113, &unk_100957590);
            swift_beginAccess();
            sub_100440F04(v98, v105 + v104);
            swift_endAccess();
            sub_10043D808(v106);

            sub_10000CFBC(v106, &unk_100957590);
            sub_10000CFBC(v98, &unk_100957590);
            v107 = v115;
            (v115)(v103, v79);
            (v107)(v99, v79);
            v108 = *(v122 + 8);
            v108(v121, v102);
            v108(v118, v102);
            return (*(v123 + 8))(v131, v132);
          }

          v137 = 0;
          v135 = 0u;
          v136 = 0u;
          sub_10000CFBC(&v135, &qword_1009575B0);
        }

        v87 = enum case for ShelfBackground.none(_:);
        v110(v80, enum case for ShelfBackground.none(_:), v79);
        goto LABEL_49;
      }

      v137 = 0;
      v135 = 0u;
      v136 = 0u;
      sub_10000CFBC(&v135, &qword_1009575B0);
    }

    v110(v116, enum case for ShelfBackground.none(_:), v79);
    goto LABEL_41;
  }

  if (v59 < 1)
  {
    goto LABEL_60;
  }

  v60 = 0;
  v51 = v57 & 0xC000000000000001;
  v126 = (v122 + 8);
  v109[1] = v122 + 32;
  v127 = _swiftEmptyArrayStorage;
  v52 = &selRef_initWithTabBarSystemItem_tag_;
  while (1)
  {
    if (v51)
    {
      v61 = sub_10077149C();
    }

    else
    {
      v61 = *(v57 + 8 * v60 + 32);
      swift_unknownObjectRetain();
    }

    if ([v61 representedElementCategory])
    {
      goto LABEL_20;
    }

    [v61 frame];
    v62 = CGRectGetMinX(v142) - v42 - a2;
    [v61 frame];
    v63 = CGRectGetMaxX(v143) - a2;
    if (v62 > v63)
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v62 > v38 || v38 >= v63)
    {
      goto LABEL_20;
    }

    v64 = [v61 indexPath];
    v65 = v120;
    sub_10075E06C();

    v66 = sub_10075E09C();
    (*v126)(v65, v128);
    if (!v58)
    {
      goto LABEL_57;
    }

    if (v66 == 0x8000000000000000 && v58 == -1)
    {
      break;
    }

    if (!(v66 % v58))
    {
      v67 = [v61 indexPath];
      sub_10075E06C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v127 = sub_10049DE8C(0, v127[2] + 1, 1, v127);
      }

      v69 = v127[2];
      v68 = v127[3];
      if (v69 >= v68 >> 1)
      {
        v127 = sub_10049DE8C(v68 > 1, v69 + 1, 1, v127);
      }

      swift_unknownObjectRelease();
      v70 = v127;
      v127[2] = v69 + 1;
      (*(v122 + 32))(v70 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v69, v119, v128);
      goto LABEL_21;
    }

LABEL_20:
    swift_unknownObjectRelease();
LABEL_21:
    if (v59 == ++v60)
    {
      goto LABEL_30;
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
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_100440ED0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B62C();
  *a1 = result;
  return result;
}

uint64_t sub_100440F04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100957590);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100440F74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100440FD8()
{
  result = qword_100950650;
  if (!qword_100950650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100950650);
  }

  return result;
}

void sub_100441024(void *a1)
{
  sub_100443D5C();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 contentView];
    [v4 addSubview:v3];

    [v1 setNeedsLayout];
  }
}

void sub_1004410D4()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "prepareForReuse");
  v2 = *(*&v0[OBJC_IVAR____TtC20ProductPageExtension29AppShowcaseCollectionViewCell_lockupView] + OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_iconView);
  v10.value.super.isa = 0;
  v10.is_nil = 0;
  sub_10075FCEC(v10, v3);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong setHidden:1];
  }

  [v1 setNeedsLayout];
  sub_100443D5C();
  swift_unknownObjectWeakAssign();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = [v1 contentView];
    [v8 addSubview:v7];

    [v1 setNeedsLayout];
  }
}

uint64_t sub_1004411F4()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009575F0);
  sub_10000A61C(v4, qword_1009575F0);
  if (qword_100940F80 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1C78);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1004413C8()
{
  v0 = sub_10076D39C();
  sub_10000DB18(v0, qword_100957608);
  sub_10000A61C(v0, qword_100957608);
  return sub_10076D3AC();
}

char *sub_10044141C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC20ProductPageExtension29AppShowcaseCollectionViewCell_itemLayoutContext;
  v11 = sub_10076341C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC20ProductPageExtension29AppShowcaseCollectionViewCell_lockupView;
  *&v4[v12] = [objc_allocWithZone(type metadata accessor for AppShowcaseLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC20ProductPageExtension29AppShowcaseCollectionViewCell_showcaseType;
  v14 = enum case for AppShowcaseType.large(_:);
  v15 = sub_10075ECCC();
  (*(*(v15 - 8) + 104))(&v4[v13], v14, v15);
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 contentView];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v18 = [v16 contentView];
  [v18 addSubview:*&v16[OBJC_IVAR____TtC20ProductPageExtension29AppShowcaseCollectionViewCell_lockupView]];

  return v16;
}

void (*sub_100441770(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension29AppShowcaseCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1004417C4;
}

void sub_1004417C4(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_100443D5C();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [v2 contentView];
      [v6 addSubview:v5];

      [v2 setNeedsLayout];
    }

    v9 = v3;
  }

  else
  {
    v9 = *a1;
    sub_100443D5C();
    swift_unknownObjectWeakAssign();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      goto LABEL_8;
    }

    v3 = v7;
    v8 = [v2 contentView];
    [v8 addSubview:v3];

    [v2 setNeedsLayout];
  }

LABEL_8:
}

uint64_t sub_1004418EC()
{
  v0 = sub_10076481C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_10076D39C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_5;
  }

  v12 = qword_1009A2558;
  v13 = Strong;
  swift_beginAccess();
  (*(v1 + 16))(v3, &v13[v12], v0);

  sub_10076476C();
  (*(v1 + 8))(v3, v0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_5:
    sub_10000CFBC(v6, &unk_1009467E0);
    v14 = 0;
    return v14 & 1;
  }

  (*(v8 + 32))(v10, v6, v7);
  v14 = sub_10076D2FC();
  (*(v8 + 8))(v10, v7);
  return v14 & 1;
}

void sub_100441BE4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v113 = sub_10077164C();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_10076481C();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v5 - 8);
  v126 = &v111 - v6;
  v128 = sub_10076D39C();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v117 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10075ECCC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v115 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v114 = &v111 - v12;
  __chkstk_darwin(v13);
  v125 = &v111 - v14;
  __chkstk_darwin(v15);
  v124 = &v111 - v16;
  __chkstk_darwin(v17);
  *&v133 = &v111 - v18;
  __chkstk_darwin(v19);
  v116 = &v111 - v20;
  __chkstk_darwin(v21);
  *&v121 = &v111 - v22;
  __chkstk_darwin(v23);
  v131 = &v111 - v24;
  __chkstk_darwin(v25);
  v27 = &v111 - v26;
  __chkstk_darwin(v28);
  v30 = &v111 - v29;
  *&v32 = __chkstk_darwin(v31).n128_u64[0];
  v34 = &v111 - v33;
  v142.receiver = v1;
  v142.super_class = ObjectType;
  objc_msgSendSuper2(&v142, "layoutSubviews", v32);
  v35 = [v1 contentView];
  sub_100016F40(0, &qword_1009441F0);
  sub_10076422C();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v44 = OBJC_IVAR____TtC20ProductPageExtension29AppShowcaseCollectionViewCell_showcaseType;
  swift_beginAccess();
  v45 = v9[2];
  v135 = v44;
  v132 = *&v1;
  v136 = v45;
  v137 = v9 + 2;
  v45(v34, &v1[v44], v8);
  v46 = v9;
  v47 = v9[13];
  v134 = enum case for AppShowcaseType.large(_:);
  v47(v30);
  sub_1004448A8(&qword_100957668, &type metadata accessor for AppShowcaseType);
  sub_10077018C();
  sub_10077018C();
  if (v138 == v140 && v139 == v141)
  {
    v48 = 1;
  }

  else
  {
    v48 = sub_10077167C();
  }

  v49 = v9[1];
  v49(v30, v8);
  v130 = v9 + 1;
  v129 = v49;
  v49(v34, v8);

  if (v48)
  {
    v50 = v132;
    v123 = sub_1004418EC();
  }

  else
  {
    v123 = 0;
    v50 = v132;
  }

  v51 = v131;
  v136(v27, *&v50 + v135, v8);
  sub_1004418EC();
  v52 = v46;
  v53 = v46[4];
  v53(v51, v27, v8);
  v54 = v52[11];
  v131 = (v52 + 11);
  v55 = v54(v51, v8);
  v122 = v53;
  if (v55 == v134 || v55 == enum case for AppShowcaseType.small(_:))
  {
    v56 = v132;
  }

  else
  {
    v56 = v132;
    if (v55 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      v129(v51, v8);
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  Width = 0.0;
  v59 = &off_100911000;
  if (!Strong)
  {
    goto LABEL_26;
  }

  v60 = Strong;
  v61 = [Strong isHidden];

  v62 = v135;
  if (v61)
  {
    goto LABEL_27;
  }

  v63 = v121;
  v64 = v136;
  v136(*&v121, *&v56 + v135, v8);
  v65 = sub_1004418EC();
  v143.origin.x = v37;
  v143.origin.y = v39;
  v143.size.width = v41;
  v143.size.height = v43;
  Width = CGRectGetWidth(v143);
  v66 = v116;
  v64(v116, *&v63, v8);
  v67 = v54(v66, v8);
  if (v67 != v134)
  {
    if (v67 != enum case for AppShowcaseType.small(_:) && v67 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      v129(*&v121, v8);
      Width = 0.0;
      v121 = *&v116;
      v59 = &off_100911000;
      goto LABEL_25;
    }

    v59 = &off_100911000;
    if (qword_100940518 == -1)
    {
LABEL_24:
      sub_10000A61C(v128, qword_100957608);
      sub_10076D35C();
      Width = v68;
      goto LABEL_25;
    }

LABEL_69:
    swift_once();
    goto LABEL_24;
  }

  if ((v65 & 1) == 0)
  {
    v59 = &off_100911000;
    if (qword_100940518 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_69;
  }

  v59 = &off_100911000;
LABEL_25:
  v129(*&v121, v8);
LABEL_26:
  v62 = v135;
LABEL_27:
  v136(*&v133, *&v56 + v62, v8);
  v69 = swift_unknownObjectWeakLoadStrong();
  v121 = Width;
  if (v69)
  {
    v70 = v69;
    v71 = [v69 v59[319]];
  }

  else
  {
    v71 = 1;
  }

  v72 = v122;
  v73 = sub_1004418EC();
  v144.origin.x = v37;
  v144.origin.y = v39;
  v144.size.width = v41;
  v144.size.height = v43;
  CGRectGetWidth(v144);
  v132 = v37;
  v74 = v134;
  if (v71 || (v73 & 1) != 0)
  {
    v129(*&v133, v8);
    v75 = v125;
    goto LABEL_46;
  }

  v76 = v114;
  v136(v114, *&v133, v8);
  v77 = v54(v76, v8);
  v75 = v125;
  if (v77 == v74)
  {
    if (qword_100940518 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_70;
  }

  if (v77 != enum case for AppShowcaseType.small(_:) && v77 != enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    v129(v76, v8);
    goto LABEL_41;
  }

  if (qword_100940518 != -1)
  {
LABEL_70:
    swift_once();
  }

LABEL_40:
  sub_10000A61C(v128, qword_100957608);
  sub_10076D35C();
LABEL_41:
  v78 = v115;
  v72(v115, *&v133, v8);
  v79 = v54(v78, v8);
  if (v79 != v74 && v79 != enum case for AppShowcaseType.small(_:) && v79 != enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    (v129)(v78, v8, 25.0, 25.0);
  }

  v37 = v132;
LABEL_46:
  v80 = *(*&v56 + OBJC_IVAR____TtC20ProductPageExtension29AppShowcaseCollectionViewCell_lockupView);
  v145.origin.x = v37;
  v145.origin.y = v39;
  v145.size.width = v41;
  v145.size.height = v43;
  CGRectGetHeight(v145);
  v81 = sub_100693A10();
  v83 = v82;
  v146.origin.x = v37;
  v146.origin.y = v39;
  v133 = v41;
  v146.size.width = v41;
  v146.size.height = v43;
  MinX = CGRectGetMinX(v146);
  v85 = v124;
  v136(v124, *&v56 + v135, v8);
  v72(v75, v85, v8);
  v86 = v54(v75, v8);
  v87 = 0.0;
  v88 = v43;
  v89 = v39;
  if (v86 == v74)
  {
    v90 = v128;
    v91 = v127;
    v92 = v123;
  }

  else
  {
    v87 = 30.0;
    v90 = v128;
    v91 = v127;
    v92 = v123;
    if (v86 != enum case for AppShowcaseType.small(_:))
    {
      v87 = 25.0;
      if (v86 != enum case for AppShowcaseType.smallAlignedLeft(_:))
      {
        (v129)(v75, v8, 25.0);
        v87 = 0.0;
      }
    }
  }

  v93 = MinX + v87;
  v94 = 20.0;
  if ((v92 & 1) == 0)
  {
    v147.origin.x = v132;
    v147.origin.y = v89;
    v147.size.width = v133;
    v147.size.height = v88;
    v94 = CGRectGetMidY(v147) + v83 * -0.5;
  }

  sub_100770A4C();
  [v80 setFrame:?];
  v95 = swift_unknownObjectWeakLoadStrong();
  if (!v95)
  {
    v102 = v126;
    (*(v91 + 56))(v126, 1, 1, v90);
    goto LABEL_59;
  }

  v96 = qword_1009A2558;
  v97 = v95;
  swift_beginAccess();
  v98 = v119;
  v99 = &v97[v96];
  v100 = v118;
  v101 = v120;
  (*(v119 + 16))(v118, v99, v120);

  v102 = v126;
  sub_10076476C();
  (*(v98 + 8))(v100, v101);
  if ((*(v91 + 48))(v102, 1, v90) == 1)
  {
LABEL_59:
    sub_10000CFBC(v102, &unk_1009467E0);
    goto LABEL_60;
  }

  v103 = v117;
  (*(v91 + 32))(v117, v102, v90);
  v104 = swift_unknownObjectWeakLoadStrong();
  if (v104 && (v105 = v104, v106 = [v104 isHidden], v105, v103 = v117, (v106 & 1) == 0))
  {
    sub_10076D36C();
    if (v92)
    {
      v148.origin.x = v132;
      v148.origin.y = v89;
      v148.size.width = v133;
      v148.size.height = v88;
      CGRectGetMinX(v148);
      v149.origin.x = v93;
      v149.origin.y = v94;
      v149.size.width = v81;
      v149.size.height = v83;
      CGRectGetMaxY(v149);
      if (qword_100940510 != -1)
      {
        swift_once();
      }

      v109 = sub_10076D9AC();
      sub_10000A61C(v109, qword_1009575F0);
      v110 = v111;
      sub_10076D17C();
      sub_10076D40C();
      (*(v112 + 8))(v110, v113);
      (*(v91 + 8))(v117, v90);
    }

    else
    {
      v150.origin.x = v93;
      v150.origin.y = v94;
      v150.size.width = v81;
      v150.size.height = v83;
      CGRectGetMaxX(v150);
      v151.origin.x = v132;
      v151.origin.y = v89;
      v151.size.width = v133;
      v151.size.height = v88;
      CGRectGetHeight(v151);
      (*(v91 + 8))(v103, v90);
    }
  }

  else
  {
    (*(v91 + 8))(v103, v90);
  }

LABEL_60:
  v107 = swift_unknownObjectWeakLoadStrong();
  if (v107)
  {
    v108 = v107;
    sub_100770A4C();
    [v108 setFrame:?];
  }
}

uint64_t type metadata accessor for AppShowcaseCollectionViewCell()
{
  result = qword_100957648;
  if (!qword_100957648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100442E84()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    sub_10075ECCC();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t (*sub_100442F88(uint64_t **a1))()
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
  v2[4] = sub_100441770(v2);
  return sub_100019A4C;
}

uint64_t sub_100442FF8()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1004448A8(&qword_100957670, type metadata accessor for AppShowcaseCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_10044306C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1004448A8(&qword_100957670, type metadata accessor for AppShowcaseCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1004430F8(uint64_t *a1))()
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
  sub_1004448A8(&qword_100957670, type metadata accessor for AppShowcaseCollectionViewCell);
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_10044328C(uint64_t a1, void *a2)
{
  v72 = a2;
  v63 = sub_10077164C();
  v67 = *(v63 - 8);
  __chkstk_darwin(v63);
  v65 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10075ECCC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v66 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v58 - v8;
  __chkstk_darwin(v9);
  v60 = &v58 - v10;
  __chkstk_darwin(v11);
  v62 = &v58 - v12;
  __chkstk_darwin(v13);
  v71 = &v58 - v14;
  __chkstk_darwin(v15);
  v61 = &v58 - v16;
  __chkstk_darwin(v17);
  v74 = &v58 - v18;
  __chkstk_darwin(v19);
  v73 = &v58 - v20;
  __chkstk_darwin(v21);
  v23 = &v58 - v22;
  v24 = sub_10076D39C();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v59 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v68 = &v58 - v28;
  __chkstk_darwin(v29);
  v31 = &v58 - v30;
  v32 = sub_10075F24C();
  v69 = v25;
  v70 = v24;
  if (v32)
  {
    sub_10076B84C();

    sub_10076BEFC();

    sub_10076D3AC();
    v33 = sub_10076D2FC();
    (*(v25 + 8))(v31, v24);
  }

  else
  {
    v33 = 0;
  }

  if (!sub_10075F24C())
  {
    v34 = v33;
    sub_10075F23C();
    goto LABEL_8;
  }

  sub_10075F23C();
  if (v33)
  {
    v34 = v33;
LABEL_8:
    v5[1](v23, v4);
    goto LABEL_23;
  }

  v35 = v61;
  (v5[2])(v61, v23, v4);
  v36 = v5;
  v37 = v5[11];
  v38 = (v37)(v35, v4);
  v39 = enum case for AppShowcaseType.large(_:);
  if (v38 == enum case for AppShowcaseType.large(_:))
  {
    if (qword_100940518 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

  if (v38 == enum case for AppShowcaseType.small(_:) || v38 == enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    if (qword_100940518 == -1)
    {
LABEL_16:
      sub_10000A61C(v70, qword_100957608);
      sub_10076D35C();
      goto LABEL_17;
    }

LABEL_43:
    swift_once();
    goto LABEL_16;
  }

  v36[1](v35, v4);
LABEL_17:
  v40 = v71;
  (v36[4])(v71, v23, v4);
  v41 = (v37)(v40, v4);
  if (v41 == v39)
  {
    v5 = v36;
  }

  else
  {
    v5 = v36;
    if (v41 != enum case for AppShowcaseType.small(_:) && v41 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      (v36[1])(v40, v4, 25.0, 25.0);
    }
  }

  v34 = v33;
LABEL_23:
  type metadata accessor for AppShowcaseLockupView();
  sub_100693E0C(a1, v72);
  v71 = a1;
  sub_10075F23C();
  v42 = enum case for AppShowcaseType.large(_:);
  v43 = v5[13];
  (v43)(v74, enum case for AppShowcaseType.large(_:), v4);
  sub_1004448A8(&qword_100957668, &type metadata accessor for AppShowcaseType);
  sub_10077018C();
  sub_10077018C();
  if (v77 != v75 || v78 != v76)
  {
    v34 &= sub_10077167C();
  }

  v61 = v5;
  v44 = v5[1];
  v44(v74, v4);
  v44(v73, v4);

  if (v34)
  {
    if (qword_100940510 != -1)
    {
      swift_once();
    }

    v45 = sub_10076D9AC();
    sub_10000A61C(v45, qword_1009575F0);
    v46 = v65;
    sub_10076D17C();
    sub_10076D40C();
    (*(v67 + 8))(v46, v63);
    result = sub_10075F24C();
    v49 = v69;
    v48 = v70;
    v50 = v68;
    if (result)
    {
      sub_10076B84C();

      sub_10076BEFC();

      v51 = v59;
      sub_10076D3AC();
      (*(v49 + 32))(v50, v51, v48);
      v52 = v62;
      sub_10075F23C();
      v53 = v61;
      v54 = v60;
      (*(v61 + 2))(v60, v52, v4);
      v55 = (*(v53 + 11))(v54, v4);
      if (v55 != v42)
      {
        if (v55 == enum case for AppShowcaseType.small(_:) || v55 == enum case for AppShowcaseType.smallAlignedLeft(_:))
        {
          if (qword_100940518 != -1)
          {
            swift_once();
          }

          sub_10000A61C(v48, qword_100957608);
          sub_10076D35C();
        }

        else
        {
          v44(v52, v4);
          v52 = v54;
        }
      }

      v44(v52, v4);
      sub_10076D36C();
      return (*(v49 + 8))(v50, v48);
    }
  }

  else
  {
    v56 = v64;
    sub_10075F23C();
    v57 = v66;
    (v43)(v66, v42, v4);
    sub_10077018C();
    sub_10077018C();
    if (v77 != v75 || v78 != v76)
    {
      sub_10077167C();
    }

    v44(v57, v4);
    v44(v56, v4);
  }

  return result;
}

void sub_100443D5C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_1004448A8(&qword_100942810, type metadata accessor for VideoView);
    Strong = v1;
  }

  v2 = sub_1000E7228(Strong);

  if (v2)
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];
    }
  }
}

uint64_t sub_100443E2C(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v4 = sub_10076D39C();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v52 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076BF6C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  v55 = sub_10075ECCC();
  v57 = *(v55 - 8);
  __chkstk_darwin(v55);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v50 = &v47 - v19;
  __chkstk_darwin(v20);
  v22 = &v47 - v21;
  __chkstk_darwin(v23);
  v25 = &v47 - v24;
  sub_10000A570(a1, v59);
  sub_10000A5D4(&unk_100942830);
  sub_10075F26C();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v48 = v17;
  v27 = v58;
  v28 = *(*&v2[OBJC_IVAR____TtC20ProductPageExtension29AppShowcaseCollectionViewCell_lockupView] + OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_iconView);
  Strong = swift_unknownObjectWeakLoadStrong();
  v51 = v28;
  v29 = [v2 contentView];
  sub_100016F40(0, &qword_1009441F0);
  sub_10076422C();

  sub_10075F25C();
  v30 = sub_10076BB5C();

  if (v30)
  {
    v47 = v27;
    sub_10075F23C();
    v31 = v57;
    v32 = v55;
    (*(v57 + 32))(v22, v25, v55);
    v33 = (*(v31 + 88))(v22, v32);
    if (v33 != enum case for AppShowcaseType.large(_:) && v33 != enum case for AppShowcaseType.small(_:) && v33 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      (*(v57 + 8))(v22, v32);
    }

    sub_10076BF7C();
    (*(v7 + 104))(v9, enum case for Artwork.Style.roundedRect(_:), v6);
    sub_10076BF2C();
    v34 = *(v7 + 8);
    v34(v9, v6);
    v34(v12, v6);
    sub_10076BF4C();
    sub_10076BFCC();
    v35 = v51;
    sub_10076BF7C();
    sub_10075FCCC();
    [v35 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10);
      sub_100770D5C();
    }

    sub_10075FB8C();
    sub_10075FD2C();
    sub_1004448A8(&qword_100941820, &type metadata accessor for ArtworkView);
    sub_100760B8C();

    v34(v15, v6);
  }

  if (!sub_10075F24C())
  {
  }

  sub_10076B84C();

  sub_10076BEFC();
  sub_10076BEFC();
  v36 = v52;
  sub_10076D3AC();
  v37 = v50;
  sub_10075F23C();
  v38 = sub_10076D2FC();
  v39 = v57;
  v40 = v48;
  v41 = v55;
  (*(v57 + 16))(v48, v37, v55);
  v42 = (*(v39 + 88))(v40, v41);
  v43 = Strong;
  if (v42 == enum case for AppShowcaseType.large(_:))
  {
    v44 = v54;
    if (v38)
    {
LABEL_21:
      (*(v57 + 8))(v37, v41);
      goto LABEL_22;
    }

    if (qword_100940518 == -1)
    {
LABEL_20:
      sub_10000A61C(v44, qword_100957608);
      sub_10076D35C();
      goto LABEL_21;
    }

LABEL_27:
    swift_once();
    goto LABEL_20;
  }

  v44 = v54;
  if (v42 == enum case for AppShowcaseType.small(_:) || v42 == enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    if (qword_100940518 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

  v45 = *(v57 + 8);
  v45(v37, v41);
  v45(v48, v41);
LABEL_22:
  sub_10076D36C();
  sub_10076BFCC();
  if (v43)
  {
    type metadata accessor for VideoView();
    sub_1004448A8(&unk_100942840, type metadata accessor for VideoView);
    v46 = v43;
    sub_100760B8C();
  }

  else
  {
    sub_100760B9C();
  }

  return (*(v53 + 8))(v36, v44);
}

void sub_1004446E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppShowcaseCollectionViewCell_lockupView);
  v2 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_iconView;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_iconView);
  v12.value.super.isa = 0;
  v12.is_nil = 0;
  sub_10075FCEC(v12, v4);

  v5 = *(v1 + v2);
  sub_10075FD2C();
  sub_1004448A8(&qword_100941820, &type metadata accessor for ArtworkView);
  v6 = v5;
  sub_100760BFC();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = qword_1009602D0;
    v10 = Strong;
    v9 = [*(Strong + qword_1009602D0) layer];
    [v9 removeAllAnimations];

    [*&v10[v8] setImage:0];
    type metadata accessor for VideoView();
    sub_1004448A8(&unk_100942840, type metadata accessor for VideoView);
    sub_100760BFC();
  }
}

uint64_t sub_1004448A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004448F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = xmmword_1007A3490;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;

  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
LABEL_2:
  if (v5 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7 + 1;
  v9 = 16 * v5 + 40;
  while (1)
  {
    if (v5 == 3)
    {
      sub_10000A5D4(&unk_100943470);
      swift_arrayDestroy();
      sub_10000A5D4(&unk_10094BB60);
      sub_10003BCA8();
      v16 = sub_10076FEFC();

      return v16;
    }

    if (v8 == ++v5)
    {
      break;
    }

    v10 = v9 + 16;
    v11 = *&v17[v9];
    v9 += 16;
    if (v11)
    {
      v12 = *&v17[v10 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10049D954(0, *(v6 + 2) + 1, 1, v6);
        v6 = result;
      }

      v14 = *(v6 + 2);
      v13 = *(v6 + 3);
      if (v14 >= v13 >> 1)
      {
        result = sub_10049D954((v13 > 1), v14 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 2) = v14 + 1;
      v15 = &v6[16 * v14];
      *(v15 + 4) = v12;
      *(v15 + 5) = v11;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for PrefetchMarkerCollectionViewCell()
{
  result = qword_1009576A0;
  if (!qword_1009576A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100444CB4()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100444D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100444F20(&qword_100950C98);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100444DFC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension32PrefetchMarkerCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_100444E54(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension32PrefetchMarkerCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100444F20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PrefetchMarkerCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100444F78()
{
  result = qword_1009576B0;
  if (!qword_1009576B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009576B0);
  }

  return result;
}

uint64_t sub_100444FCC(uint64_t a1, uint64_t a2)
{
  v2[26] = a1;
  v2[27] = a2;
  v3 = sub_10075DB7C();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_10044508C, 0, 0);
}

id sub_10044508C()
{
  if (sub_10076315C())
  {
    v1 = sub_10076FF9C();
    v3 = v2;
    *(v0 + 144) = 1;
    *(v0 + 168) = &type metadata for Bool;
    sub_10000CD64((v0 + 144), (v0 + 176));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10024AD30((v0 + 176), v1, v3, isUniquelyReferenced_nonNull_native);
  }

  if (sub_10076317C())
  {
    v5 = sub_10076FF9C();
    v7 = v6;
    *(v0 + 104) = &type metadata for Bool;
    *(v0 + 80) = 1;
    sub_10000CD64((v0 + 80), (v0 + 112));
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_10024AD30((v0 + 112), v5, v7, v8);
  }

  v9 = sub_10076316C();
  if ((v10 & 1) == 0)
  {
    v11 = v9;
    v12 = sub_10076FF9C();
    v14 = v13;
    *(v0 + 40) = &type metadata for Double;
    *(v0 + 16) = v11;
    sub_10000CD64((v0 + 16), (v0 + 48));
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_10024AD30((v0 + 48), v12, v14, v15);
  }

  if (_swiftEmptyDictionarySingleton[2])
  {
    v16 = [objc_allocWithZone(_LSOpenConfiguration) init];
    if (v16)
    {
      isa = sub_10076FE3C().super.isa;
      [v16 setFrontBoardOptions:isa];
    }
  }

  else
  {
    v16 = 0;
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v19 = result;
    v21 = *(v0 + 232);
    v20 = *(v0 + 240);
    v22 = *(v0 + 224);
    v23 = *(v0 + 208);

    sub_10076318C();
    sub_10075DB1C(v24);
    v26 = v25;
    (*(v21 + 8))(v20, v22);
    [v19 openURL:v26 configuration:v16 completionHandler:0];

    v27 = enum case for ActionOutcome.performed(_:);
    v28 = sub_10076F50C();
    (*(*(v28 - 8) + 104))(v23, v27, v28);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004453BC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000257CC;

  return sub_100444FCC(a1, v4);
}

unint64_t sub_100445460()
{
  result = qword_10094F048;
  if (!qword_10094F048)
  {
    sub_1007631AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F048);
  }

  return result;
}

uint64_t sub_1004454B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10044550C();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_10044550C()
{
  result = qword_1009576B8;
  if (!qword_1009576B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009576B8);
  }

  return result;
}

void *sub_100445560(uint64_t a1)
{
  v3 = sub_10075DDBC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v171 = Strong;
  v166[1] = sub_10000A5D4(&unk_100942870);
  v167 = swift_allocObject();
  *(v167 + 16) = xmmword_100784DC0;
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  type metadata accessor for ActionDebugSetting();
  v166[0] = a1;
  v9 = swift_allocObject();
  *(v9 + 56) = 0xD000000000000013;
  *(v9 + 64) = 0x80000001007E7FC0;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 104) = sub_100446A58;
  *(v9 + 112) = v8;
  v10 = v1;

  sub_10075DDAC();
  v11 = sub_10075DD8C();
  v13 = v12;
  v14 = *(v4 + 8);
  v174 = v3;
  v14(v6, v3);
  v189 = v11;
  v190 = v13;
  sub_10077140C();

  *(v167 + 32) = v9;
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  v16 = swift_allocObject();
  strcpy((v16 + 56), "Clear Caches");
  *(v16 + 69) = 0;
  *(v16 + 70) = -5120;
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0u;
  *(v16 + 104) = sub_100446A7C;
  *(v16 + 112) = v15;
  v17 = v10;

  sub_10075DDAC();
  v18 = sub_10075DD8C();
  v20 = v19;
  v14(v6, v3);
  v172 = v4 + 8;
  v189 = v18;
  v190 = v20;
  sub_10077140C();

  v21 = v167;
  *(v167 + 40) = v16;
  v22 = swift_allocObject();
  *(v22 + 16) = v17;
  v23 = swift_allocObject();
  *(v23 + 56) = 0xD000000000000015;
  *(v23 + 64) = 0x80000001007E7FE0;
  *(v23 + 72) = 0u;
  *(v23 + 88) = 0u;
  *(v23 + 104) = sub_100446A80;
  *(v23 + 112) = v22;
  v24 = v17;

  sub_10075DDAC();
  v25 = sub_10075DD8C();
  v27 = v26;
  v28 = v174;
  v14(v6, v174);
  v189 = v25;
  v190 = v27;
  sub_10077140C();

  *(v21 + 48) = v23;
  v170 = swift_allocObject();
  *(v170 + 16) = xmmword_1007A3670;
  v29 = objc_allocWithZone(type metadata accessor for DebugSettings());
  swift_unknownObjectWeakInit();
  v30 = v171;
  swift_unknownObjectWeakAssign();
  v173 = type metadata accessor for DebugSettingsProvider();
  v188.receiver = v29;
  v188.super_class = v173;
  v169 = v30;
  v31 = objc_msgSendSuper2(&v188, "init");
  v171 = type metadata accessor for NavigationActionDebugSetting();
  v32 = swift_allocObject();
  v32[7] = 0x73676E6974746553;
  v32[8] = 0xE800000000000000;
  v32[9] = 0;
  v32[10] = 0;
  v32[11] = v31;
  v32[12] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v168 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v32[13] = 0;
  v33 = v28;
  v34 = v31;
  sub_10075DDAC();
  v35 = sub_10075DD8C();
  v37 = v36;
  v175 = v14;
  v14(v6, v33);
  v189 = v35;
  v190 = v37;
  sub_10077140C();

  *(v170 + 32) = v32;
  v38 = objc_allocWithZone(type metadata accessor for StorefrontSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v187.receiver = v38;
  v187.super_class = v173;
  v39 = objc_msgSendSuper2(&v187, "init");
  v40 = swift_allocObject();
  v40[7] = 0x6F726665726F7453;
  v40[8] = 0xEA0000000000746ELL;
  v40[9] = 0;
  v40[10] = 0;
  v40[11] = v39;
  v40[12] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v40[13] = 0;
  v41 = v39;
  sub_10075DDAC();
  v42 = sub_10075DD8C();
  v44 = v43;
  v14(v6, v33);
  v189 = v42;
  v190 = v44;
  sub_10077140C();

  v45 = v170;
  *(v170 + 40) = v40;
  v46 = objc_allocWithZone(type metadata accessor for MetricsSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v47 = v173;
  v186.receiver = v46;
  v186.super_class = v173;
  v48 = objc_msgSendSuper2(&v186, "init");
  v49 = swift_allocObject();
  v49[7] = 0x7363697274654DLL;
  v49[8] = 0xE700000000000000;
  v49[9] = 0;
  v49[10] = 0;
  v50 = v168;
  v49[11] = v48;
  v49[12] = v50;
  v49[13] = 0;
  v51 = v48;
  sub_10075DDAC();
  v52 = sub_10075DD8C();
  v54 = v53;
  v175(v6, v174);
  v189 = v52;
  v190 = v54;
  sub_10077140C();

  *(v45 + 48) = v49;
  v55 = objc_allocWithZone(type metadata accessor for TodaySettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v185.receiver = v55;
  v185.super_class = v47;
  v56 = objc_msgSendSuper2(&v185, "init");
  v57 = swift_allocObject();
  v57[7] = 0x7961646F54;
  v57[8] = 0xE500000000000000;
  v57[9] = 0;
  v57[10] = 0;
  v57[11] = v56;
  v57[12] = v50;
  v57[13] = 0;
  v58 = v56;
  sub_10075DDAC();
  v59 = sub_10075DD8C();
  v61 = v60;
  v62 = v175;
  v175(v6, v174);
  v189 = v59;
  v190 = v61;
  sub_10077140C();

  v63 = v170;
  *(v170 + 56) = v57;
  v64 = objc_allocWithZone(type metadata accessor for ArcadeSettings());
  v65 = v169;
  v169 = v65;

  v66 = sub_10061F6F0();

  v67 = swift_allocObject();
  v67[7] = 0x656461637241;
  v67[8] = 0xE600000000000000;
  v67[9] = 0;
  v67[10] = 0;
  v68 = v168;
  v67[11] = v66;
  v67[12] = v68;
  v67[13] = 0;
  v69 = v66;
  sub_10075DDAC();
  v70 = sub_10075DD8C();
  v72 = v71;
  v73 = v174;
  v62(v6, v174);
  v189 = v70;
  v190 = v72;
  sub_10077140C();

  *(v63 + 64) = v67;
  v74 = objc_allocWithZone(type metadata accessor for SearchSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v75 = v173;
  v184.receiver = v74;
  v184.super_class = v173;
  v76 = objc_msgSendSuper2(&v184, "init");
  v77 = swift_allocObject();
  v77[7] = 0x686372616553;
  v77[8] = 0xE600000000000000;
  v77[9] = 0;
  v77[10] = 0;
  v77[11] = v76;
  v77[12] = v68;
  v77[13] = 0;
  v78 = v76;
  sub_10075DDAC();
  v79 = sub_10075DD8C();
  v81 = v80;
  v175(v6, v73);
  v189 = v79;
  v190 = v81;
  sub_10077140C();

  v82 = v170;
  *(v170 + 72) = v77;
  v83 = objc_allocWithZone(type metadata accessor for ProductPageSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v183.receiver = v83;
  v183.super_class = v75;
  v84 = objc_msgSendSuper2(&v183, "init");
  v85 = swift_allocObject();
  strcpy((v85 + 56), "Product Page");
  *(v85 + 69) = 0;
  *(v85 + 70) = -5120;
  *(v85 + 72) = 0;
  *(v85 + 80) = 0;
  *(v85 + 88) = v84;
  *(v85 + 96) = v68;
  *(v85 + 104) = 0;
  v86 = v84;
  sub_10075DDAC();
  v87 = sub_10075DD8C();
  v89 = v88;
  v175(v6, v174);
  v189 = v87;
  v190 = v89;
  sub_10077140C();

  v82[10] = v85;
  v90 = objc_allocWithZone(type metadata accessor for AdsSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v182.receiver = v90;
  v182.super_class = v75;
  v91 = objc_msgSendSuper2(&v182, "init");
  v92 = swift_allocObject();
  v92[7] = 7562305;
  v92[8] = 0xE300000000000000;
  v92[9] = 0;
  v92[10] = 0;
  v92[11] = v91;
  v92[12] = v68;
  v92[13] = 0;
  v93 = v91;
  sub_10075DDAC();
  v94 = sub_10075DD8C();
  v96 = v95;
  v97 = v174;
  v98 = v175;
  v175(v6, v174);
  v189 = v94;
  v190 = v96;
  sub_10077140C();

  v82[11] = v92;
  v99 = objc_allocWithZone(type metadata accessor for OnboardingSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v181.receiver = v99;
  v181.super_class = v173;
  v100 = objc_msgSendSuper2(&v181, "init");
  v101 = swift_allocObject();
  v101[7] = 0x696472616F626E4FLL;
  v101[8] = 0xEA0000000000676ELL;
  v101[9] = 0;
  v101[10] = 0;
  v101[11] = v100;
  v101[12] = v168;
  v101[13] = 0;
  v102 = v100;
  sub_10075DDAC();
  v103 = sub_10075DD8C();
  v105 = v104;
  v98(v6, v97);
  v189 = v103;
  v190 = v105;
  sub_10077140C();

  v82[12] = v101;
  v106 = objc_allocWithZone(type metadata accessor for ShelfPlaceholderSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v107 = v173;
  v180.receiver = v106;
  v180.super_class = v173;
  v108 = objc_msgSendSuper2(&v180, "init");
  v109 = swift_allocObject();
  v109[7] = 0xD000000000000012;
  v109[8] = 0x80000001007E8000;
  v109[9] = 0;
  v109[10] = 0;
  v110 = v168;
  v109[11] = v108;
  v109[12] = v110;
  v109[13] = 0;
  v111 = v108;
  sub_10075DDAC();
  v112 = sub_10075DD8C();
  v114 = v113;
  v115 = v174;
  v175(v6, v174);
  v189 = v112;
  v190 = v114;
  sub_10077140C();

  *(v170 + 104) = v109;
  v116 = objc_allocWithZone(type metadata accessor for DownloadProgressSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v179.receiver = v116;
  v179.super_class = v107;
  v117 = objc_msgSendSuper2(&v179, "init");
  v118 = swift_allocObject();
  v118[7] = 0xD000000000000011;
  v118[8] = 0x80000001007E8020;
  v118[9] = 0;
  v118[10] = 0;
  v118[11] = v117;
  v118[12] = v110;
  v119 = v110;
  v118[13] = 0;
  v120 = v117;
  sub_10075DDAC();
  v121 = sub_10075DD8C();
  v123 = v122;
  v124 = v175;
  v175(v6, v115);
  v189 = v121;
  v190 = v123;
  sub_10077140C();

  v125 = v170;
  *(v170 + 112) = v118;
  v126 = objc_allocWithZone(type metadata accessor for AppCapabilitiesSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v178.receiver = v126;
  v178.super_class = v173;
  v127 = objc_msgSendSuper2(&v178, "init");
  v128 = swift_allocObject();
  v128[7] = 0xD000000000000010;
  v128[8] = 0x80000001007CF840;
  v128[9] = 0;
  v128[10] = 0;
  v128[11] = v127;
  v128[12] = v119;
  v128[13] = 0;
  v129 = v127;
  sub_10075DDAC();
  v130 = sub_10075DD8C();
  v132 = v131;
  v133 = v174;
  v124(v6, v174);
  v189 = v130;
  v190 = v132;
  sub_10077140C();

  v134 = v125;
  *(v125 + 120) = v128;
  v135 = objc_allocWithZone(type metadata accessor for LocalizerSettings());
  swift_unknownObjectWeakInit();
  v136 = v169;
  swift_unknownObjectWeakAssign();
  v177.receiver = v135;
  v137 = v173;
  v177.super_class = v173;
  v138 = objc_msgSendSuper2(&v177, "init");
  v139 = swift_allocObject();
  v139[7] = 0x657A696C61636F4CLL;
  v139[8] = 0xE900000000000072;
  v139[9] = 0;
  v139[10] = 0;
  v140 = v168;
  v139[11] = v138;
  v139[12] = v140;
  v139[13] = 0;
  v141 = v138;
  sub_10075DDAC();
  v142 = sub_10075DD8C();
  v144 = v143;
  v175(v6, v133);
  v189 = v142;
  v190 = v144;
  sub_10077140C();

  v145 = v134;
  *(v134 + 128) = v139;
  v146 = objc_allocWithZone(type metadata accessor for NotificationSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v176.receiver = v146;
  v176.super_class = v137;
  v147 = objc_msgSendSuper2(&v176, "init");

  v148 = swift_allocObject();
  strcpy((v148 + 56), "Notifications");
  *(v148 + 70) = -4864;
  *(v148 + 72) = 0;
  *(v148 + 80) = 0;
  *(v148 + 88) = v147;
  *(v148 + 96) = v140;
  *(v148 + 104) = 0;
  v149 = v147;
  sub_10075DDAC();
  v150 = sub_10075DD8C();
  v152 = v151;
  v153 = v174;
  v154 = v175;
  v175(v6, v174);
  v189 = v150;
  v190 = v152;
  sub_10077140C();

  *(v145 + 136) = v148;
  v155 = v145;
  v156 = swift_allocObject();
  *(v156 + 16) = xmmword_100785D70;
  type metadata accessor for DebugSection();
  v157 = swift_allocObject();
  sub_10075DDAC();
  v158 = sub_10075DD8C();
  v160 = v159;
  v154(v6, v153);
  v157[2] = v158;
  v157[3] = v160;
  v157[4] = 0;
  v157[5] = 0xE000000000000000;
  v157[6] = v167;
  *(v156 + 32) = v157;
  v161 = swift_allocObject();
  sub_10075DDAC();
  v162 = sub_10075DD8C();
  v164 = v163;
  v154(v6, v153);
  v161[2] = v162;
  v161[3] = v164;
  v161[4] = 0;
  v161[5] = 0xE000000000000000;
  v161[6] = v155;
  *(v156 + 40) = v161;

  return v156;
}

void sub_100446918()
{
  sub_10000A5D4(&qword_1009576F0);
  sub_10076F64C();
  sub_10076FC1C();
  [v1 invalidateMediaToken];
  v0 = [objc_opt_self() sharedCoordinator];
  [v0 notify];
  swift_unknownObjectRelease();
}

id sub_1004469C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugMenuSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100446A20()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100446A88()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v1 = Strong;
  v2 = [Strong presentingViewController];

  if (!v2)
  {
    goto LABEL_8;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 selectedViewController];

    if (!v4)
    {
      goto LABEL_8;
    }

    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    v2 = v4;
    if (v5)
    {
      v6 = v5;
      goto LABEL_11;
    }
  }

LABEL_8:
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7 || (v8 = v7, v9 = [v7 presentingViewController], v8, !v9))
  {
    v6 = 0;
    goto LABEL_23;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

    goto LABEL_23;
  }

LABEL_11:
  v10 = [v6 viewControllers];
  sub_10003F040();
  v11 = sub_1007701BC();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_45:

    goto LABEL_23;
  }

  v12 = sub_10077158C();
  if (!v12)
  {
    goto LABEL_45;
  }

LABEL_13:
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
  }

  else if ((v11 & 0xC000000000000001) == 0)
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v15 = *(v11 + 8 * v14 + 32);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_50;
  }

  v15 = sub_10077149C();
LABEL_18:
  v16 = v15;

  if (!v16)
  {
LABEL_23:
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    sub_100446F74(&v30);
    v11 = 0;
LABEL_24:
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    goto LABEL_25;
  }

  v11 = v16;
  sub_10000A5D4(&qword_100957708);
  if (swift_dynamicCast())
  {
    if (*(&v31 + 1))
    {
LABEL_43:
      sub_100012498(&v30, v33);
      sub_100012498(v33, &aBlock);
      goto LABEL_26;
    }
  }

  else
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
  }

  sub_100446F74(&v30);
  v24 = [v11 childViewControllers];
  v10 = sub_1007701BC();

  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_38;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = sub_10077158C();
  if (!result)
  {
LABEL_51:

    goto LABEL_24;
  }

LABEL_38:
  if ((v10 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v25 = *(v10 + 32);
  }

  sub_10000A5D4(&qword_100957708);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (*(&v31 + 1))
  {
    goto LABEL_43;
  }

LABEL_25:
  sub_100446F74(&v30);
  aBlock = 0u;
  v27 = 0u;
  v28 = 0;
LABEL_26:
  v34[0] = aBlock;
  v34[1] = v27;
  v35 = v28;
  sub_100446FDC(v34, &aBlock);
  if (*(&v27 + 1))
  {
    sub_100012498(&aBlock, v33);
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17 && (v18 = v17, v19 = [v17 presentingViewController], v18, v19))
    {
      sub_10000A570(v33, &v30);
      v20 = swift_allocObject();
      sub_100012498(&v30, v20 + 16);
      v28 = sub_100447084;
      v29 = v20;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v27 = sub_10009AEDC;
      *(&v27 + 1) = &unk_100895748;
      v21 = _Block_copy(&aBlock);

      [v19 dismissViewControllerAnimated:1 completion:v21];
      _Block_release(v21);
    }

    else
    {
    }

    sub_10000CD74(v33);
    p_aBlock = v34;
  }

  else
  {
    sub_100446F74(v34);

    p_aBlock = &aBlock;
  }

  return sub_100446F74(p_aBlock);
}

uint64_t sub_100446F74(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_1009576F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100446FDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009576F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10044704C()
{
  sub_10000CD74(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100447084()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_10000CF78(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1004470D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1004470F8()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_artworkViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(v2 + 56) + ((v8 << 9) | (8 * v9)));
    sub_10075FD2C();
    sub_10000D7F8();
    v11 = v10;
    sub_100760BFC();
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

double sub_100447280(void *a1)
{
  v236 = a1;
  v1 = sub_100763BCC();
  v206 = *(v1 - 8);
  v207 = v1;
  __chkstk_darwin(v1);
  v205 = &v184 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100763BBC();
  v202 = *(v3 - 8);
  v203 = v3;
  __chkstk_darwin(v3);
  v204 = &v184 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100763BAC();
  v199 = *(v5 - 8);
  v200 = v5;
  __chkstk_darwin(v5);
  v201 = &v184 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_100763BFC();
  v208 = *(v194 - 8);
  __chkstk_darwin(v194);
  v193 = &v184 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076997C();
  v196 = *(v8 - 8);
  v197 = v8;
  __chkstk_darwin(v8);
  v195 = &v184 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100763BEC();
  v11 = *(v10 - 8);
  v234 = v10;
  v235 = v11;
  __chkstk_darwin(v10);
  v188 = &v184 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v233 = &v184 - v14;
  __chkstk_darwin(v15);
  v232 = &v184 - v16;
  __chkstk_darwin(v17);
  v222 = &v184 - v18;
  v19 = sub_10075D78C();
  v213 = *(v19 - 8);
  __chkstk_darwin(v19);
  v212 = (&v184 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v221 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v221);
  v22 = &v184 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_10000A5D4(&unk_10094BB20);
  v198 = *(v192 - 8);
  __chkstk_darwin(v192);
  v187 = &v184 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v231 = &v184 - v25;
  __chkstk_darwin(v26);
  v228 = &v184 - v27;
  __chkstk_darwin(v28);
  v191 = &v184 - v29;
  __chkstk_darwin(v30);
  v230 = &v184 - v31;
  __chkstk_darwin(v32);
  v229 = &v184 - v33;
  __chkstk_darwin(v34);
  v220 = &v184 - v35;
  __chkstk_darwin(v36);
  v223 = &v184 - v37;
  v38 = sub_10076C36C();
  v210 = *(v38 - 8);
  v211 = v38;
  __chkstk_darwin(v38);
  v209 = &v184 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v217 = &v184 - v41;
  v42 = sub_10076B21C();
  v215 = *(v42 - 8);
  v216 = v42;
  __chkstk_darwin(v42);
  v214 = &v184 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10000A5D4(&unk_1009520A0);
  __chkstk_darwin(v44 - 8);
  v219 = sub_10000A5D4(&qword_100957718);
  v45 = *(v219 - 8);
  __chkstk_darwin(v219);
  v227 = &v184 - v46;
  v226 = sub_10076C38C();
  v47 = *(v226 - 8);
  __chkstk_darwin(v226);
  v224 = &v184 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v51 = &v184 - v50;
  __chkstk_darwin(v52);
  v54 = &v184 - v53;
  sub_10076B29C();
  sub_100449310(&qword_100957720, &type metadata accessor for Uber);
  sub_10076332C();
  v55 = v266[0];
  if (!v266[0])
  {
    return 0.0;
  }

  v186 = v19;
  v189 = v45;
  v218 = v22;
  swift_getKeyPath();
  v225 = v55;
  sub_10076338C();

  sub_10076C26C();
  v57 = v56;
  v60 = *(v47 + 8);
  v58 = v47 + 8;
  v59 = v60;
  v61 = v226;
  v60(v54, v226);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C25C();
  v63 = v62;
  v60(v51, v61);
  *&v64 = v57 - v63;
  sub_1007633DC();
  sub_10076FDBC();
  swift_getKeyPath();
  sub_10076338C();

  v190 = v266[0];
  v65 = v214;
  sub_10076B23C();
  swift_getKeyPath();
  sub_1004492B8();
  v66 = v219;
  sub_10076FD9C();

  LOBYTE(v61) = v264[0];
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C24C();
  v68 = v67;
  v69 = v226;
  v60(v54, v226);
  v70 = v190;
  sub_10020B56C(v190, v65, (v61 & 1) == 0, v68, v64, 0);
  v72 = v71;

  (*(v215 + 8))(v65, v216);
  v74 = sub_10076B24C();
  if (v73)
  {
    v75 = v69;
    v215 = v73;
    v190 = v74;
    v77 = v210;
    v76 = v211;
    (*(v210 + 13))(v217, enum case for PageGrid.Direction.vertical(_:), v211);
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C2FC();
    v59(v54, v75);
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C25C();
    v59(v54, v75);
    v78 = v217;
    (*(v77 + 2))(v209, v217, v76);
    sub_1005AC334(0.0);
    sub_10076C33C();
    (*(v77 + 1))(v78, v76);
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C2FC();
    v210 = v59;
    v211 = v58;
    v59(v54, v75);
    if (qword_100940890 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for TitleHeaderView.Style(0);
    v80 = sub_10000A61C(v79, qword_1009A0830);
    sub_10076C2EC();
    swift_getKeyPath();
    sub_10076338C();

    v214 = v267;
    v81 = [v267 traitCollection];
    v82 = v234;
    v83 = (v235 + 56);
    v84 = *(v235 + 56);
    v84(v223, 1, 1, v234);
    v236 = v83;
    v185 = v84;
    v84(v220, 1, 1, v82);
    memset(v266, 0, sizeof(v266));
    v265 = 0;
    memset(v264, 0, sizeof(v264));
    v216 = v79;
    v217 = v80;
    v184 = *(v79 + 20);
    v85 = v218;
    sub_10011BA50(v80 + v184, v218);
    sub_10005312C();
    v86 = v221;
    v209 = v81;
    v87 = sub_100770B3C();
    *&v261 = v190;
    v88 = v215;
    *(&v261 + 1) = v215;

    v89 = v212;
    sub_10075D76C();
    sub_10002564C();
    sub_1007711EC();
    v91 = v90;
    v213[1](v89, v186);

    v92 = 0uLL;
    v93 = 0;
    if (v91)
    {
      goto LABEL_10;
    }

    [v87 lineHeight];
    v95 = ceil(v94 * 1.3);
    if ((*&v95 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v95 > -9.22337204e18)
    {
      if (v95 >= 9.22337204e18)
      {
        __break(1u);
        goto LABEL_69;
      }

      v85 = v218;
      v92 = 0uLL;
LABEL_10:
      v263 = 0;
      v261 = v92;
      v262 = v92;
      v96 = sub_10076C04C();
      v259 = v96;
      v260 = sub_100449310(&qword_100943230, &type metadata accessor for Feature);
      v97 = sub_10000DB7C(&v257);
      (*(*(v96 - 8) + 104))(v97, enum case for Feature.measurement_with_labelplaceholder(_:), v96);
      v98 = v87;
      sub_10076C90C();
      sub_10000CD74(&v257);
      v99 = v195;
      v213 = v98;
      sub_10076996C();
      sub_10076994C();
      (*(v196 + 8))(v99, v197);
      sub_100016E2C(&v261, v256, &unk_10094DA00);
      v100 = v259;
      v101 = v260;
      v102 = sub_10000CF78(&v257, v259);
      v255[3] = v100;
      v255[4] = *(v101 + 8);
      v103 = sub_10000DB7C(v255);
      (*(*(v100 - 8) + 16))(v103, v102, v100);
      v104 = *(v85 + *(v86 + 32));
      v253 = &type metadata for Float;
      v254 = &protocol witness table for Float;
      v252 = v104;
      v105 = *(v86 + 36);
      v106 = sub_10076D9AC();
      v251[3] = v106;
      v251[4] = &protocol witness table for StaticDimension;
      v107 = sub_10000DB7C(v251);
      v108 = v86;
      v109 = *(*(v106 - 8) + 16);
      v109(v107, v85 + v105, v106);
      v110 = *(v108 + 40);
      v250[3] = v106;
      v250[4] = &protocol witness table for StaticDimension;
      v111 = sub_10000DB7C(v250);
      v109(v111, v85 + v110, v106);
      sub_100016E2C(v266, &v244, &qword_10094BB30);
      v112 = *(&v245 + 1);
      if (*(&v245 + 1))
      {
        v113 = v246;
        v114 = sub_10000CF78(&v244, *(&v245 + 1));
        *(&v248 + 1) = v112;
        v249 = *(v113 + 8);
        v115 = sub_10000DB7C(&v247);
        (*(*(v112 - 8) + 16))(v115, v114, v112);
        sub_10000CD74(&v244);
      }

      else
      {
        sub_10000CFBC(&v244, &qword_10094BB30);
        v247 = 0u;
        v248 = 0u;
        v249 = 0;
      }

      sub_100016E2C(v264, v241, &qword_10094BB30);
      v116 = v242;
      v117 = v221;
      if (v242)
      {
        v118 = v243;
        v119 = sub_10000CF78(v241, v242);
        *(&v245 + 1) = v116;
        v246 = *(v118 + 8);
        v120 = sub_10000DB7C(&v244);
        (*(*(v116 - 8) + 16))(v120, v119, v116);
        sub_10000CD74(v241);
      }

      else
      {
        sub_10000CFBC(v241, &qword_10094BB30);
        v244 = 0u;
        v245 = 0u;
        v246 = 0;
      }

      v121 = v228;
      v122 = v218;
      sub_10000A570(&v218[*(v117 + 48)], v241);
      sub_10000A570(v122 + *(v117 + 52), &v240);
      v238 = &type metadata for Double;
      v239 = &protocol witness table for Double;
      v237 = 0x4020000000000000;
      sub_100763BDC();
      sub_10000CD74(&v257);
      sub_10000CFBC(&v261, &unk_10094DA00);
      v123 = v217[v216[9]];
      sub_10000A5D4(&qword_10094BB38);
      v124 = *(v198 + 72);
      v125 = (*(v198 + 80) + 32) & ~*(v198 + 80);
      if (v123)
      {
        if (v123 == 1)
        {
          v215 = swift_allocObject();
          v126 = v215 + v125;
          sub_100016E2C(v223, v215 + v125, &unk_10094BB20);
          v127 = v235 + 16;
          (*(v235 + 16))(v126 + v124, v222, v82);
          v128 = v82;
          v185(v126 + v124, 0, 1, v82);
          sub_100016E2C(v220, v126 + 2 * v124, &unk_10094BB20);
          v129 = (v127 + 32);
          v232 = (v127 + 16);
          v236 = _swiftEmptyArrayStorage;
          v130 = 3;
          v229 = v126;
          do
          {
            v131 = v124;
            v132 = v230;
            sub_100016E2C(v126, v230, &unk_10094BB20);
            v133 = v132;
            v134 = v231;
            sub_1001CA0C0(v133, v231);
            if ((*v129)(v134, 1, v128) == 1)
            {
              sub_10000CFBC(v134, &unk_10094BB20);
            }

            else
            {
              v135 = v134;
              v136 = *v232;
              (*v232)(v233, v135, v128);
              v137 = v236;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v137 = sub_10049E330(0, v137[2] + 1, 1, v137);
              }

              v139 = v137[2];
              v138 = v137[3];
              if (v139 >= v138 >> 1)
              {
                v137 = sub_10049E330(v138 > 1, v139 + 1, 1, v137);
              }

              v137[2] = v139 + 1;
              v140 = (*(v235 + 80) + 32) & ~*(v235 + 80);
              v236 = v137;
              v128 = v234;
              v136(v137 + v140 + *(v235 + 72) * v139, v233);
            }

            v124 = v131;
            v126 += v131;
            --v130;
          }

          while (v130);
          swift_setDeallocating();
          swift_arrayDestroy();
          v88 = v193;
          v87 = v194;
          v82 = v128;
        }

        else
        {
          v215 = swift_allocObject();
          v153 = v215 + v125;
          sub_100016E2C(v223, v153, &unk_10094BB20);
          v154 = v235;
          (*(v235 + 16))(v153 + v124, v222, v82);
          v185(v153 + v124, 0, 1, v82);
          v155 = v191;
          sub_100016E2C(v153, v191, &unk_10094BB20);
          v156 = v187;
          sub_1001CA0C0(v155, v187);
          v157 = *(v154 + 48);
          v158 = (v154 + 32);
          if (v157(v156, 1, v82) == 1)
          {
            sub_10000CFBC(v156, &unk_10094BB20);
            v159 = _swiftEmptyArrayStorage;
          }

          else
          {
            v160 = *v158;
            (*v158)(v188, v156, v82);
            v161 = _swiftEmptyArrayStorage;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v161 = sub_10049E330(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
            }

            v163 = v161[2];
            v162 = v161[3];
            v159 = v161;
            if (v163 >= v162 >> 1)
            {
              v159 = sub_10049E330(v162 > 1, v163 + 1, 1, v161);
            }

            v159[2] = v163 + 1;
            v164 = v159 + ((*(v235 + 80) + 32) & ~*(v235 + 80)) + *(v235 + 72) * v163;
            v82 = v234;
            v160(v164, v188, v234);
            v156 = v187;
          }

          v165 = v153 + v124;
          v166 = v191;
          sub_100016E2C(v165, v191, &unk_10094BB20);
          sub_1001CA0C0(v166, v156);
          if (v157(v156, 1, v82) == 1)
          {
            sub_10000CFBC(v156, &unk_10094BB20);
          }

          else
          {
            v167 = *v158;
            v168 = v188;
            (*v158)(v188, v156, v82);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v159 = sub_10049E330(0, v159[2] + 1, 1, v159);
            }

            v170 = v159[2];
            v169 = v159[3];
            v171 = v159;
            if (v170 >= v169 >> 1)
            {
              v171 = sub_10049E330(v169 > 1, v170 + 1, 1, v159);
            }

            *(v171 + 16) = v170 + 1;
            v167((v171 + ((*(v235 + 80) + 32) & ~*(v235 + 80)) + *(v235 + 72) * v170), v168, v82);
          }

          v88 = v193;
          v87 = v194;
          swift_setDeallocating();
          swift_arrayDestroy();
        }
      }

      else
      {
        v215 = swift_allocObject();
        v141 = v215 + v125;
        sub_100016E2C(v223, v215 + v125, &unk_10094BB20);
        sub_100016E2C(v220, v141 + v124, &unk_10094BB20);
        v142 = v235 + 16;
        (*(v235 + 16))(v141 + 2 * v124, v222, v82);
        v143 = v82;
        v185(v141 + 2 * v124, 0, 1, v82);
        v144 = (v142 + 32);
        v233 = (v142 + 16);
        v236 = _swiftEmptyArrayStorage;
        v145 = 3;
        v231 = v141;
        do
        {
          v146 = v229;
          sub_100016E2C(v141, v229, &unk_10094BB20);
          sub_1001CA0C0(v146, v121);
          if ((*v144)(v121, 1, v143) == 1)
          {
            sub_10000CFBC(v121, &unk_10094BB20);
          }

          else
          {
            v147 = *v233;
            (*v233)(v232, v121, v143);
            v148 = v236;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v148 = sub_10049E330(0, v148[2] + 1, 1, v148);
            }

            v150 = v148[2];
            v149 = v148[3];
            if (v150 >= v149 >> 1)
            {
              v148 = sub_10049E330(v149 > 1, v150 + 1, 1, v148);
            }

            v148[2] = v150 + 1;
            v151 = (*(v235 + 80) + 32) & ~*(v235 + 80);
            v236 = v148;
            v152 = v148 + v151 + *(v235 + 72) * v150;
            v143 = v234;
            v147(v152, v232);
            v121 = v228;
          }

          v141 += v124;
          --v145;
        }

        while (v145);
        swift_setDeallocating();
        swift_arrayDestroy();
        v88 = v193;
        v87 = v194;
        v82 = v143;
      }

      swift_deallocClassInstance();
      v263 = 0;
      v261 = 0u;
      v262 = 0u;
      sub_100016E2C(&v261, &v257, &unk_10094DA00);
      v173 = v216;
      v172 = v217;
      v174 = *&v217[v216[14]];
      v256[3] = &type metadata for CGFloat;
      v256[4] = &protocol witness table for CGFloat;
      v256[0] = v174;
      (*(v199 + 16))(v201, &v217[v216[10]], v200);
      (*(v202 + 16))(v204, &v172[v173[11]], v203);
      (*(v206 + 104))(v205, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v207);
      sub_100763B7C();
      sub_100770ACC();
      sub_100449310(&unk_10094BB40, &type metadata accessor for TitleHeaderLayout);
      sub_10076D2AC();
      v257 = v175;
      v258 = v176;
      sub_100770ADC();
      Main = JUScreenClassGetMain();
      v89 = v208;
      if (Main != 1)
      {

        swift_unknownObjectRelease();

        v89[1](v88, v87);
        (*(v235 + 8))(v222, v82);
        sub_10011BAB4(v218);
        sub_10000CFBC(v264, &qword_10094BB30);
        sub_10000CFBC(v266, &qword_10094BB30);
        sub_10000CFBC(v220, &unk_10094BB20);
        sub_10000CFBC(v223, &unk_10094BB20);
        v210(v224, v226);
        (*(v189 + 8))(v227, v219);
        v179 = 0.0;
        goto LABEL_63;
      }

      v91 = v218;
      v85 = v189;
      v86 = v226;
      if (qword_10093FC38 == -1)
      {
LABEL_57:
        v178 = sub_10000A61C(v221, qword_10099DF58);
        v93 = v184;
        if (sub_10019942C(&v217[v184], v178))
        {

          swift_unknownObjectRelease();

          v89[1](v88, v87);
          (*(v235 + 8))(v222, v82);
          sub_10011BAB4(v91);
          sub_10000CFBC(v264, &qword_10094BB30);
          sub_10000CFBC(v266, &qword_10094BB30);
          sub_10000CFBC(v220, &unk_10094BB20);
          sub_10000CFBC(v223, &unk_10094BB20);
          v210(v224, v86);
          (*(v85 + 8))(v227, v219);
          v179 = 5.0;
LABEL_63:
          v182 = v258 - v179;
          sub_10000CFBC(&v261, &unk_10094DA00);
          return v72 + v182;
        }

        if (qword_10093FC40 == -1)
        {
LABEL_61:
          v180 = sub_10000A61C(v221, qword_10099DF70);
          v181 = sub_10019942C(&v217[v93], v180);

          swift_unknownObjectRelease();

          v89[1](v88, v87);
          (*(v235 + 8))(v222, v82);
          sub_10011BAB4(v91);
          sub_10000CFBC(v264, &qword_10094BB30);
          sub_10000CFBC(v266, &qword_10094BB30);
          sub_10000CFBC(v220, &unk_10094BB20);
          sub_10000CFBC(v223, &unk_10094BB20);
          v210(v224, v86);
          (*(v85 + 8))(v227, v219);
          v179 = 0.0;
          if (v181)
          {
            v179 = 5.0;
          }

          goto LABEL_63;
        }

LABEL_69:
        swift_once();
        goto LABEL_61;
      }

LABEL_67:
      swift_once();
      goto LABEL_57;
    }

    __break(1u);
    goto LABEL_67;
  }

  (*(v189 + 8))(v227, v66);

  return v72;
}

unint64_t sub_1004492B8()
{
  result = qword_100957728;
  if (!qword_100957728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957728);
  }

  return result;
}

uint64_t sub_100449310(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_100449358(uint64_t a1, void *a2)
{
  v5 = sub_10075EA4C();
  v52 = *(v5 - 8);
  v53 = v5;
  __chkstk_darwin(v5);
  v51 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076997C();
  v8 = *(v7 - 8);
  v60 = v7;
  v61 = v8;
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10075EA2C();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a2 traitCollection];
  v59 = v2;
  sub_100449B38(v16, v15);

  sub_10075EA1C();
  v45 = *(v12 + 8);
  v46 = v12 + 8;
  v49 = v15;
  v47 = v11;
  v45(v15, v11);
  v48 = sub_10076DDDC();
  swift_allocObject();
  v50 = sub_10076DDBC();
  v58 = a1;
  sub_10075E69C();
  sub_10076BB6C();

  v17 = sub_100016F40(0, &qword_100942F00);
  if (qword_100940F78 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D3DC();
  sub_10000A61C(v18, qword_1009A1C60);
  v19 = [a2 traitCollection];
  sub_100770B3C();

  v20 = sub_10076C04C();
  v70[3] = v20;
  v57 = sub_10044B1E0(&qword_100943230, &type metadata accessor for Feature);
  v70[4] = v57;
  v21 = sub_10000DB7C(v70);
  v22 = *(v20 - 8);
  v23 = *(v22 + 104);
  v54 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v55 = v22 + 104;
  v56 = v23;
  v23(v21);
  sub_10076C90C();
  sub_10000CD74(v70);
  sub_10076996C();
  sub_10076994C();
  v24 = *(v61 + 8);
  v61 += 8;
  v25 = v24;
  v24(v10, v60);
  sub_10075E6AC();
  if (qword_100940F80 != -1)
  {
    swift_once();
  }

  v44 = sub_10000A61C(v18, qword_1009A1C78);
  v26 = a2;
  v27 = [a2 traitCollection];
  v43 = v17;
  sub_100770B3C();

  v69[3] = v20;
  v69[4] = v57;
  v28 = sub_10000DB7C(v69);
  v56(v28, v54, v20);
  sub_10076C90C();
  sub_10000CD74(v69);
  sub_10076996C();
  sub_10076994C();
  v42 = v25;
  v25(v10, v60);
  v29 = [v26 traitCollection];
  v30 = v49;
  sub_100449B38(v29, v49);

  sub_10075E9FC();
  v45(v30, v47);
  v31 = v48;
  swift_allocObject();
  v47 = sub_10076DDBC();
  sub_10075E68C();
  v32 = v26;
  v33 = [v26 traitCollection];
  sub_100770B3C();

  v68[3] = v20;
  v68[4] = v57;
  v34 = sub_10000DB7C(v68);
  v56(v34, v54, v20);
  sub_10076C90C();
  sub_10000CD74(v68);
  sub_10076996C();
  sub_10076994C();
  v42(v10, v60);
  v35 = [v32 traitCollection];
  sub_100449B38(v35, v30);

  v67[8] = v31;
  v67[9] = &protocol witness table for LayoutViewPlaceholder;
  v67[5] = v50;
  sub_10000A570(v70, v67);
  sub_10000A570(v69, &v66);
  sub_10000A570(v68, &v65);
  v63 = v31;
  v64 = &protocol witness table for LayoutViewPlaceholder;
  v62 = v47;

  v36 = v51;
  sub_10075EA3C();
  sub_10044B1E0(&qword_100957780, &type metadata accessor for InAppPurchaseShowcaseLockupViewLayout);
  v37 = v53;
  sub_10076D2AC();
  v39 = v38;

  (*(v52 + 8))(v36, v37);
  sub_10000CD74(v68);
  sub_10000CD74(v69);
  sub_10000CD74(v70);
  return v39;
}

uint64_t sub_100449B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v65 = a2;
  v72 = sub_10076443C();
  v76 = *(v72 - 8);
  __chkstk_darwin(v72);
  v61 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v63 = &v54 - v4;
  __chkstk_darwin(v5);
  v58 = &v54 - v6;
  __chkstk_darwin(v7);
  v59 = &v54 - v8;
  v9 = sub_10076D1AC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10076D9AC();
  __chkstk_darwin(v55);
  v62 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v71 = &v54 - v15;
  __chkstk_darwin(v16);
  v18 = &v54 - v17;
  v19 = sub_10075E77C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E6FC();
  sub_10075E73C();
  (*(v20 + 8))(v22, v19);
  if (qword_100940F78 != -1)
  {
    swift_once();
  }

  v23 = sub_10076D3DC();
  v24 = sub_10000A61C(v23, qword_1009A1C60);
  v25 = *(v23 - 8);
  v69 = *(v25 + 16);
  v68 = v25 + 16;
  v69(v12, v24, v23);
  v26 = enum case for FontSource.useCase(_:);
  v74 = v10[13];
  v75 = v10 + 13;
  v74(v12);
  v81 = v9;
  v82 = &protocol witness table for FontSource;
  v27 = sub_10000DB7C(v80);
  v67 = v10[2];
  v73 = v10 + 2;
  v67(v27, v12, v9);
  v60 = v18;
  sub_10076D9BC();
  v29 = v10[1];
  v28 = v10 + 1;
  v66 = v29;
  v29(v12, v9);
  if (qword_100940F80 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v23, qword_1009A1C78);
  v31 = v69;
  v69(v12, v30, v23);
  (v74)(v12, v26, v9);
  v81 = v9;
  v82 = &protocol witness table for FontSource;
  v32 = sub_10000DB7C(v80);
  v33 = v67;
  v67(v32, v12, v9);
  sub_10076D9BC();
  v34 = v66;
  v66(v12, v9);
  v54 = v30;
  v57 = v23;
  v31(v12, v30, v23);
  v56 = v26;
  (v74)(v12, v26, v9);
  v81 = v55;
  v82 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v80);
  v78 = v9;
  v79 = &protocol witness table for FontSource;
  v35 = sub_10000DB7C(v77);
  v33(v35, v12, v9);
  sub_10076D9BC();
  v55 = v9;
  v34(v12, v9);
  v36 = sub_10077071C();
  v64 = v28;
  if (v36)
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

  v38 = v72;
  v39 = sub_10000A61C(v72, v37);
  v40 = v76;
  v41 = *(v76 + 16);
  v42 = v58;
  v41(v58, v39, v38);
  v43 = *(v40 + 32);
  v44 = v59;
  v43(v59, v42, v38);
  sub_1007643EC();
  v45 = *(v40 + 8);
  v76 = v40 + 8;
  v45(v44, v38);
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v46 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v46 = qword_100944CA0;
  }

  v47 = v72;
  v48 = sub_10000A61C(v72, v46);
  v49 = v61;
  v41(v61, v48, v47);
  v50 = v63;
  v43(v63, v49, v47);
  sub_10076441C();
  v45(v50, v47);
  v69(v12, v54, v57);
  v51 = v55;
  (v74)(v12, v56, v55);
  v78 = v51;
  v79 = &protocol witness table for FontSource;
  v52 = sub_10000DB7C(v77);
  v67(v52, v12, v51);
  sub_10076D9BC();
  v66(v12, v51);
  return sub_10075EA0C();
}

char *sub_10044A43C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v66 = sub_10076771C();
  v10 = *(v66 - 8);
  __chkstk_darwin(v66);
  v12 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v13 - 8);
  v15 = v57 - v14;
  v16 = sub_10075E77C();
  __chkstk_darwin(v16 - 8);
  v18 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_iconView;
  sub_10075E6FC();
  v20 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  v21 = sub_1005B7DD4(v18, 1);
  v67 = v5;
  *&v5[v19] = v21;
  v22 = OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_titleLabel;
  if (qword_100940F78 != -1)
  {
    swift_once();
  }

  v23 = sub_10076D3DC();
  v24 = sub_10000A61C(v23, qword_1009A1C60);
  v25 = *(v23 - 8);
  v65 = *(v25 + 16);
  v65(v15, v24, v23);
  v26 = *(v25 + 56);
  v64 = v25 + 56;
  v26(v15, 0, 1, v23);
  v27 = *(v10 + 104);
  v62 = v10 + 104;
  v63 = v27;
  v28 = enum case for DirectionalTextAlignment.none(_:);
  (v27)(v12);
  v29 = sub_1007626BC();
  v30 = objc_allocWithZone(v29);
  *&v67[v22] = sub_1007626AC();
  v61 = OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_subtitleLabel;
  if (qword_100940F80 != -1)
  {
    swift_once();
  }

  v60 = sub_10000A61C(v23, qword_1009A1C78);
  v65(v15, v60, v23);
  v57[1] = v25 + 16;
  v59 = v26;
  v26(v15, 0, 1, v23);
  v31 = v66;
  v32 = v63;
  v63(v12, v28, v66);
  v58 = v29;
  v33 = objc_allocWithZone(v29);
  v34 = sub_1007626AC();
  v35 = v67;
  v36 = v60;
  *&v67[v61] = v34;
  v37 = v31;
  v38 = OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_descriptionLabel;
  v65(v15, v36, v23);
  v59(v15, 0, 1, v23);
  v32(v12, v28, v37);
  v39 = objc_allocWithZone(v58);
  *&v35[v38] = sub_1007626AC();
  v40 = OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_offerButton;
  v41 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v35[v40] = sub_1001E89B8(0);
  v42 = type metadata accessor for InAppPurchaseShowcaseLockupView();
  v68.receiver = v35;
  v68.super_class = v42;
  v43 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v47 = v43;
  [v47 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v48 = OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_subtitleLabel;
  v49 = *&v47[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_subtitleLabel];
  sub_100016F40(0, &qword_100942F10);
  v50 = v49;
  v51 = sub_100770D1C();
  [v50 setTextColor:v51];

  v52 = OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_descriptionLabel;
  v53 = *&v47[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_descriptionLabel];
  v54 = sub_100770D1C();
  [v53 setTextColor:v54];

  v55 = OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_titleLabel;
  [*&v47[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_titleLabel] setTextAlignment:1];
  [*&v47[v48] setTextAlignment:1];
  [*&v47[v52] setTextAlignment:1];
  [v47 addSubview:*&v47[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_iconView]];
  [v47 addSubview:*&v47[v55]];
  [v47 addSubview:*&v47[v48]];
  [v47 addSubview:*&v47[v52]];
  [v47 addSubview:*&v47[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_offerButton]];

  return v47;
}

uint64_t sub_10044AAB0()
{
  v1 = v0;
  swift_getObjectType();
  v28 = sub_10076D1FC();
  v27 = *(v28 - 8);
  __chkstk_darwin(v28);
  v26 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10075EA2C();
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10075EA4C();
  v6 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for InAppPurchaseShowcaseLockupView();
  v44.receiver = v0;
  v44.super_class = v24;
  objc_msgSendSuper2(&v44, "layoutSubviews");
  v9 = [v0 traitCollection];
  sub_100449B38(v9, v5);

  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_iconView];
  v42 = type metadata accessor for InAppPurchaseView();
  v43 = &protocol witness table for UIView;
  v41 = v10;
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_titleLabel];
  v39 = sub_1007626BC();
  v40 = &protocol witness table for UILabel;
  v37 = &protocol witness table for UILabel;
  v38 = v11;
  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_subtitleLabel];
  v36 = v39;
  v34 = &protocol witness table for UILabel;
  v35 = v12;
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_descriptionLabel];
  v33 = v39;
  v32 = v13;
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_offerButton];
  v15 = type metadata accessor for OfferButton();
  v31 = &protocol witness table for UIView;
  v30 = v15;
  v29 = v14;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  sub_10075EA3C();
  sub_10076422C();
  v21 = v26;
  sub_10075E9EC();
  (*(v27 + 8))(v21, v28);
  return (*(v6 + 8))(v8, v25);
}

double sub_10044AE18()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_10075EA2C();
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10075EA4C();
  v5 = *(v26 - 8);
  *&v6 = __chkstk_darwin(v26).n128_u64[0];
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v0 traitCollection];
  sub_100449B38(v9, v4);

  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_iconView];
  v40 = type metadata accessor for InAppPurchaseView();
  v41 = &protocol witness table for UIView;
  v39 = v10;
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_titleLabel];
  v37 = sub_1007626BC();
  v38 = &protocol witness table for UILabel;
  v35 = &protocol witness table for UILabel;
  v36 = v11;
  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_subtitleLabel];
  v34 = v37;
  v32 = &protocol witness table for UILabel;
  v33 = v12;
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_descriptionLabel];
  v31 = v37;
  v30 = v13;
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_offerButton];
  v15 = type metadata accessor for OfferButton();
  v29 = &protocol witness table for UIView;
  v28 = v15;
  v27 = v14;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  sub_10075EA3C();
  sub_10044B1E0(&qword_100957780, &type metadata accessor for InAppPurchaseShowcaseLockupViewLayout);
  v21 = v26;
  sub_10076D2AC();
  v23 = v22;
  (*(v5 + 8))(v8, v21);
  return v23;
}

id sub_10044B10C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseShowcaseLockupView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10044B1E0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10044B228()
{
  v1 = v0;
  v45 = sub_10076771C();
  v2 = *(v45 - 8);
  __chkstk_darwin(v45);
  v47 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - v5;
  v7 = sub_10075E77C();
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_iconView;
  sub_10075E6FC();
  v11 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  v12 = sub_1005B7DD4(v9, 1);
  v46 = v1;
  *(v1 + v10) = v12;
  v40 = OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_titleLabel;
  if (qword_100940F78 != -1)
  {
    swift_once();
  }

  v13 = sub_10076D3DC();
  v14 = sub_10000A61C(v13, qword_1009A1C60);
  v15 = *(v13 - 8);
  v16 = *(v15 + 16);
  v44 = v15 + 16;
  v16(v6, v14, v13);
  v43 = *(v15 + 56);
  v43(v6, 0, 1, v13);
  v17 = *(v2 + 104);
  v18 = enum case for DirectionalTextAlignment.none(_:);
  v41 = v2 + 104;
  v42 = v17;
  v17(v47);
  v19 = sub_1007626BC();
  v20 = objc_allocWithZone(v19);
  *(v46 + v40) = sub_1007626AC();
  v40 = OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_subtitleLabel;
  if (qword_100940F80 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A61C(v13, qword_1009A1C78);
  v38 = v16;
  v39 = v21;
  v16(v6, v21, v13);
  v22 = v43;
  v43(v6, 0, 1, v13);
  v23 = v47;
  v37 = v18;
  v24 = v18;
  v25 = v45;
  v26 = v42;
  v42(v47, v24, v45);
  v36 = v19;
  v27 = objc_allocWithZone(v19);
  v28 = sub_1007626AC();
  v29 = v46;
  v30 = v39;
  *(v46 + v40) = v28;
  v31 = v25;
  v32 = OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_descriptionLabel;
  v38(v6, v30, v13);
  v22(v6, 0, 1, v13);
  v26(v23, v37, v31);
  v33 = objc_allocWithZone(v36);
  *(v29 + v32) = sub_1007626AC();
  v34 = OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_offerButton;
  v35 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v29 + v34) = sub_1001E89B8(0);
  sub_10077156C();
  __break(1u);
}

void *sub_10044B6E4(uint64_t a1)
{
  v1 = sub_10044B9A0(a1);
  if (v1)
  {
    v2 = v1;
    sub_10077019C();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
  }

  return _swiftEmptyArrayStorage;
}

double sub_10044B788@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v19 = a2;
  v7 = sub_10076341C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  type metadata accessor for SeparatorSupplementaryView();
  if (sub_10077090C())
  {

    v10 = sub_1007708FC();
    v18[1] = v11;
    v18[2] = v10;
    v12 = swift_allocObject();
    v18[0] = a3;
    v13 = v12;
    swift_weakInit();
    (*(v8 + 16))(v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v7);
    v14 = *(v8 + 80);
    v19 = a1;
    v15 = (v14 + 24) & ~v14;
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    (*(v8 + 32))(v16 + v15, v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    *(v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18[0];
    *(a4 + 24) = sub_10000A5D4(&qword_100942C18);
    *(a4 + 32) = sub_100023880();
    sub_10000DB7C(a4);

    sub_10076A3BC();
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

id sub_10044B9A0(uint64_t a1)
{
  v3 = sub_10076C38C();
  v82 = *(v3 - 8);
  v83 = v3;
  __chkstk_darwin(v3);
  v5 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100763F9C();
  v7 = *(v6 - 8);
  v85 = v6;
  v86 = v7;
  __chkstk_darwin(v6);
  v84 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v76 - v10;
  __chkstk_darwin(v12);
  v14 = &v76 - v13;
  v15 = sub_10000A5D4(&qword_100942C08);
  __chkstk_darwin(v15 - 8);
  v17 = &v76 - v16;
  v18 = sub_100763FDC();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10044C394(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_10044C864(v17);
    return 0;
  }

  (*(v19 + 32))(v21, v17, v18);
  if (((*(*v1 + 128))(a1) & 1) == 0)
  {
    (*(v19 + 8))(v21, v18);
    return 0;
  }

  v81 = v21;
  sub_100763FBC();
  v79 = *(v86 + 88);
  v22 = v79(v14, v85);
  v77 = enum case for ComponentSeparator.Position.bottom(_:);
  v78 = enum case for ComponentSeparator.Position.top(_:);
  if (v22 == enum case for ComponentSeparator.Position.top(_:) || (v23 = v22, v22 == enum case for ComponentSeparator.Position.bottom(_:)))
  {
    v38 = objc_opt_self();
    v39 = [v38 fractionalWidthDimension:1.0];
    swift_getKeyPath();
    sub_10076338C();

    v40 = v87;
    sub_100763FCC();
    v42 = v41;

    v43 = [v38 absoluteDimension:v42];
    v44 = [objc_opt_self() sizeWithWidthDimension:v39 heightDimension:v43];

    v45 = v44;
  }

  else
  {
    v24 = enum case for ComponentSeparator.Position.leading(_:);
    v25 = objc_opt_self();
    v26 = v25;
    if (v23 != v24 && v23 != enum case for ComponentSeparator.Position.trailing(_:))
    {
      v80 = [v25 fractionalWidthDimension:1.0];
      swift_getKeyPath();
      sub_10076338C();

      v27 = v87;
      sub_100763FCC();
      v29 = v28;

      v30 = [v26 absoluteDimension:v29];
      v31 = objc_opt_self();
      v32 = v80;
      v33 = [v31 sizeWithWidthDimension:v80 heightDimension:v30];

      v34 = *(v86 + 8);
      v80 = v33;
      v35 = v14;
      v36 = v85;
      v34(v35, v85);
      goto LABEL_14;
    }

    swift_getKeyPath();
    sub_10076338C();

    v46 = v87;
    sub_100763FCC();
    v48 = v47;

    v49 = [v26 absoluteDimension:v48];
    v50 = [v26 fractionalHeightDimension:1.0];
    v51 = [objc_opt_self() sizeWithWidthDimension:v49 heightDimension:v50];

    v45 = v51;
  }

  v80 = v45;
  v36 = v85;
LABEL_14:
  v52 = v81;
  sub_100763FBC();
  v53 = v79(v11, v36);
  if (v53 == v78)
  {
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C23C();
    v55 = v54;
    (*(v82 + 8))(v5, v83);
    v56 = [objc_opt_self() layoutAnchorWithEdges:1 absoluteOffset:{0.0, v55 * -0.5}];
  }

  else if (v53 == v77)
  {
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C23C();
    v58 = v57;
    (*(v82 + 8))(v5, v83);
    v56 = [objc_opt_self() layoutAnchorWithEdges:4 absoluteOffset:{0.0, v58 * 0.5}];
  }

  else
  {
    if (v53 != enum case for ComponentSeparator.Position.leading(_:))
    {
      v67 = enum case for ComponentSeparator.Position.trailing(_:);
      v68 = v53;
      swift_getKeyPath();
      sub_10076338C();

      v69 = (v82 + 8);
      if (v68 == v67)
      {
        sub_10076C2BC();
        v71 = v70;
        (*v69)(v5, v83);
        v61 = [objc_opt_self() layoutAnchorWithEdges:8 absoluteOffset:{v71 * 0.5, 0.0}];
        v36 = v85;
      }

      else
      {
        sub_10076C23C();
        v73 = v72;
        (*v69)(v5, v83);
        v74 = [objc_opt_self() layoutAnchorWithEdges:1 absoluteOffset:{0.0, v73 * -0.5}];
        v75 = *(v86 + 8);
        v61 = v74;
        v36 = v85;
        v75(v11, v85);
      }

      v52 = v81;
      goto LABEL_21;
    }

    swift_getKeyPath();
    sub_10076338C();

    sub_10076C2BC();
    v60 = v59;
    (*(v82 + 8))(v5, v83);
    v56 = [objc_opt_self() layoutAnchorWithEdges:2 absoluteOffset:{v60 * -0.5, 0.0}];
  }

  v61 = v56;
LABEL_21:
  type metadata accessor for SeparatorSupplementaryView();
  v62 = v84;
  sub_100763FBC();
  v87 = 0;
  v88 = 0xE000000000000000;
  sub_10077151C();
  v89._countAndFlagsBits = 95;
  v89._object = 0xE100000000000000;
  sub_1007700CC(v89);
  v90._countAndFlagsBits = sub_10077091C();
  sub_1007700CC(v90);

  (*(v86 + 8))(v62, v36);
  v63 = sub_10076FF6C();

  v64 = objc_opt_self();
  v65 = v80;
  v66 = [v64 supplementaryItemWithLayoutSize:v80 elementKind:v63 containerAnchor:v61];

  (*(v19 + 8))(v52, v18);
  return v66;
}

uint64_t sub_10044C394@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000A5D4(&qword_100942C08);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  sub_10000CF78((v1 + 16), *(v1 + 40));
  if (sub_10076A3CC() && swift_conformsToProtocol2())
  {
    sub_10076A93C();
    v6 = sub_100763FDC();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(a1, v5, v6);
      return (*(v7 + 56))(a1, 0, 1, v6);
    }

    sub_10044C864(v5);
  }

  v8 = sub_100763FDC();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t sub_10044C56C(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100942C08);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_100763FDC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v16 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000A570(result + 16, v16);

    sub_10000CF78(v16, v16[3]);
    v13 = sub_10076A3CC();
    result = sub_10000CD74(v16);
    if (v13)
    {
      result = swift_conformsToProtocol2();
      if (result)
      {
        sub_10076A93C();
        if ((*(v6 + 48))(v4, 1, v5) == 1)
        {
          return sub_10044C864(v4);
        }

        else
        {
          (*(v6 + 32))(v11, v4, v5);
          (*(v6 + 16))(v8, v11, v5);
          v14 = OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_separator;
          swift_beginAccess();
          (*(v6 + 24))(a1 + v14, v8, v5);
          swift_endAccess();
          sub_1006359A8();
          v15 = *(v6 + 8);
          v15(v8, v5);
          return (v15)(v11, v5);
        }
      }
    }
  }

  return result;
}

uint64_t sub_10044C864(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100942C08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10044C8CC()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100946720);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  v10 = *(v5 + 8);
  v34 = v5 + 8;
  v35 = v10;
  v10(v9, v4);
  v11 = *(v36 + 16);

  v33 = sub_1007633CC();
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C21C();
  v13 = v12;
  v14 = v12;
  v15 = *(v1 + 8);
  v31 = v0;
  result = v15(v3, v0);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!v13)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v17 = v11 % v13;
  if (!v17)
  {
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C21C();
    v19 = v18;
    v20 = v18;
    result = v15(v3, v31);
    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v19 <= -9.22337204e18)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v19 >= 9.22337204e18)
    {
LABEL_34:
      __break(1u);
      return result;
    }

    v17 = v19;
  }

  v21 = __OFSUB__(v11, v17);
  v22 = v11 - v17;
  if (v21)
  {
    goto LABEL_29;
  }

  v23 = v22 - 1;
  if (__OFSUB__(v22, 1))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  v24 = v35;
  v35(v9, v4);
  v25 = v36;
  result = sub_1007633CC();
  if (v25 != 1)
  {
    v29 = v23 < result;
LABEL_19:
    v28 = v33;
    goto LABEL_20;
  }

  v26 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_31;
  }

  swift_getKeyPath();
  v27 = v32;
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  v24(v27, v4);
  if (v36 == -1)
  {
    v29 = 1;
    goto LABEL_19;
  }

  v28 = v33;
  if (v36)
  {
    v29 = v26 % v36 == 0;
  }

  else
  {
    v29 = v26 == 0;
  }

LABEL_20:
  if (v11 <= 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = v11;
  }

  return v28 != v30 - 1 && !v29;
}

uint64_t sub_10044CD68()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10044CDA0()
{
  v1 = sub_10076341C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

unint64_t sub_10044CE7C()
{
  result = qword_100957850;
  if (!qword_100957850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957850);
  }

  return result;
}

unint64_t sub_10044CED4()
{
  result = qword_100957858;
  if (!qword_100957858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957858);
  }

  return result;
}

unint64_t sub_10044CF28()
{
  result = qword_100957860;
  if (!qword_100957860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957860);
  }

  return result;
}

uint64_t sub_10044CFA0()
{
  v0 = sub_10000A5D4(&qword_10094D880);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10075DA7C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10075D72C();
  sub_10000DB18(v5, qword_10099FA40);
  sub_10000A61C(v5, qword_10099FA40);
  sub_10075DA5C();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10075D71C();
}

uint64_t sub_10044D104()
{
  v0 = sub_10000A5D4(&qword_1009578E0);
  sub_10000DB18(v0, qword_10099FA58);
  sub_10000A61C(v0, qword_10099FA58);
  sub_10000A5D4(&qword_100957900);
  return sub_10076D02C();
}

uint64_t sub_10044D194()
{
  v0 = sub_10000A5D4(&qword_10094D878);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_10000A5D4(&qword_10094D880);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_10075DA7C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = sub_10076FF5C();
  __chkstk_darwin(v8 - 8);
  sub_10076FF4C();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_10076FF3C(v12);
  sub_10075D5EC();
  sub_10076FF2C(v11);

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_10076FF3C(v13);
  sub_10075DA6C();
  (*(v7 + 56))(v5, 1, 1, v6);
  v9 = sub_10075D62C();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_10075D63C();
}

uint64_t sub_10044D404(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001FC3F4;

  return sub_10044E590(a1);
}

unint64_t sub_10044D4B0()
{
  result = qword_100957868;
  if (!qword_100957868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957868);
  }

  return result;
}

unint64_t sub_10044D504()
{
  result = qword_100957870;
  if (!qword_100957870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957870);
  }

  return result;
}

unint64_t sub_10044D55C()
{
  result = qword_100957878;
  if (!qword_100957878)
  {
    sub_10000CE78(&qword_100957880);
    sub_10044D504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957878);
  }

  return result;
}

uint64_t sub_10044D5E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10044D858();
  *v5 = v2;
  v5[1] = sub_100025A64;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10044D694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100025A64;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_10044D750()
{
  result = qword_100957888;
  if (!qword_100957888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957888);
  }

  return result;
}

unint64_t sub_10044D7A8()
{
  result = qword_100957890;
  if (!qword_100957890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957890);
  }

  return result;
}

unint64_t sub_10044D800()
{
  result = qword_100957898;
  if (!qword_100957898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957898);
  }

  return result;
}

unint64_t sub_10044D858()
{
  result = qword_1009578A0;
  if (!qword_1009578A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009578A0);
  }

  return result;
}

unint64_t sub_10044D8B4()
{
  result = qword_1009578A8;
  if (!qword_1009578A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009578A8);
  }

  return result;
}

uint64_t sub_10044D908()
{
  v0 = sub_10000A5D4(&qword_100957910);
  __chkstk_darwin(v0);
  sub_10044CF28();
  sub_10075D69C();
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  sub_10075D68C(v2);
  swift_getKeyPath();
  sub_10000A5D4(&qword_100957918);
  sub_10075D67C();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  sub_10075D68C(v3);
  return sub_10075D6AC();
}

unint64_t sub_10044DA28()
{
  result = qword_1009578B0;
  if (!qword_1009578B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009578B0);
  }

  return result;
}

unint64_t sub_10044DA80()
{
  result = qword_1009578B8;
  if (!qword_1009578B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009578B8);
  }

  return result;
}

unint64_t sub_10044DADC()
{
  result = qword_1009578C0;
  if (!qword_1009578C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009578C0);
  }

  return result;
}

uint64_t sub_10044DB30()
{
  sub_10044E510();
  v1 = sub_10075D66C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10044DBA0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100940520 != -1)
  {
    swift_once();
  }

  v2 = sub_10075D72C();
  v3 = sub_10000A61C(v2, qword_10099FA40);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10044DC8C(uint64_t a1)
{
  v2 = sub_10044CF28();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10044DCDC()
{
  result = qword_1009578D8;
  if (!qword_1009578D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009578D8);
  }

  return result;
}

uint64_t sub_10044DD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000257CC;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10044DDF8(uint64_t a1)
{
  v2 = sub_10044DADC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10044DE64(char a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    sub_10077145C(38);

    v6 = 0xD000000000000024;
  }

  else
  {
    sub_10077145C(31);

    v6 = 0xD00000000000001DLL;
  }

  v7._countAndFlagsBits = a2;
  v7._object = a3;
  sub_1007700CC(v7);
  return v6;
}

uint64_t sub_10044DF20@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v43 = a4;
  v44 = a5;
  v47 = a3;
  v9 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v41 - v10;
  v12 = sub_10000A5D4(&qword_1009578E0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41 - v14;
  v16 = sub_10000A5D4(&qword_1009578E8);
  __chkstk_darwin(v16 - 8);
  v18 = &v41 - v17;
  v19 = sub_10075DA7C();
  __chkstk_darwin(v19 - 8);
  sub_10000A5D4(&qword_10094D870);
  sub_10075DA5C();
  v46 = sub_10075D61C();

  sub_10075DA5C();
  v20 = sub_10075D61C();
  v21 = qword_100940528;
  v42 = v20;

  if (v21 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v12, qword_10099FA58);
  sub_100071820(&qword_1009578F0, &qword_1009578E0);
  sub_10076D01C();
  v45 = a1;
  sub_10077015C();
  sub_10076D03C();
  (*(v13 + 8))(v15, v12);

  v22 = sub_10000A5D4(&qword_1009578F8);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v18, 1, v22) == 1)
  {
    sub_10000CFBC(v18, &qword_1009578E8);

    v24 = 0;
    v25 = a2;
    v26 = v45;
    v27 = v45;
  }

  else
  {
    sub_10076D04C();

    (*(v23 + 8))(v18, v22);
    v27 = sub_10077006C();
    v25 = v40;

    v24 = 1;
    v26 = v45;
  }

  v28 = v43;
  if (!v44)
  {
    v28 = 0;
  }

  v29 = 0xE000000000000000;
  if (v44)
  {
    v29 = v44;
  }

  v48 = v28;
  v49 = v29;

  sub_10075D5FC();
  v30 = v11;
  sub_100050CC0(v47, v11);
  v31 = sub_10075DB7C();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v11, 1, v31) == 1)
  {
    sub_10000CFBC(v11, &unk_1009435D0);
    v33 = sub_10044DE64(v24, v27, v25);
    v35 = v34;
  }

  else
  {
    v33 = sub_10075DAFC();
    v35 = v36;
    (*(v32 + 8))(v30, v31);
  }

  v48 = v33;
  v49 = v35;
  v37 = v42;
  sub_10075D5FC();
  sub_10000CFBC(v47, &unk_1009435D0);

  v38 = v46;

  *a6 = v26;
  a6[1] = a2;
  a6[2] = v27;
  a6[3] = v25;
  a6[4] = v38;
  a6[5] = v37;
  return result;
}

unint64_t sub_10044E510()
{
  result = qword_100957908;
  if (!qword_100957908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957908);
  }

  return result;
}

uint64_t sub_10044E564@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10075D60C();
  *a1 = result;
  return result;
}

uint64_t sub_10044E590(uint64_t a1)
{
  *(v1 + 64) = a1;
  sub_10000A5D4(&unk_1009435D0);
  *(v1 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_10044E62C, 0, 0);
}

uint64_t sub_10044E62C()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_1004BBD2C(0, v2, 0);
    v3 = sub_10075DB7C();
    v4 = *(*(v3 - 8) + 56);
    v5 = (v1 + 40);
    do
    {
      v6 = *(v0 + 72);
      v7 = *(v5 - 1);
      v8 = *v5;
      v4(v6, 1, 1, v3);

      sub_10044DF20(v7, v8, v6, 0, 0, (v0 + 16));
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_1004BBD2C((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v11 = &_swiftEmptyArrayStorage[6 * v10];
      v12 = *(v0 + 16);
      v13 = *(v0 + 48);
      v11[3] = *(v0 + 32);
      v11[4] = v13;
      v11[2] = v12;
      v5 += 2;
      --v2;
    }

    while (v2);
  }

  v14 = *(v0 + 8);

  return v14(_swiftEmptyArrayStorage);
}

uint64_t type metadata accessor for SearchButton()
{
  result = qword_100957928;
  if (!qword_100957928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10044E864()
{
  sub_1000325F0();
  result = sub_100770DAC();
  qword_10099FA70 = result;
  return result;
}

uint64_t sub_10044E898()
{
  sub_1000325F0();
  result = sub_100770E1C();
  qword_10099FA78 = result;
  return result;
}

id sub_10044E8CC(uint64_t a1)
{
  v3 = sub_10076048C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[qword_100957920] = a1;
  v7 = type metadata accessor for SearchButton();
  v15.receiver = v1;
  v15.super_class = v7;

  v8 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1007641DC();
  v9 = qword_100940530;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  [v10 setBackgroundColor:qword_10099FA70];
  if (qword_100940538 != -1)
  {
    swift_once();
  }

  [v10 setTintColor:qword_10099FA78];

  v11 = [v10 layer];
  [v11 setCornerRadius:22.0];

  [v10 setClipsToBounds:1];
  (*(v4 + 104))(v6, enum case for SystemImage.magnifyingglass(_:), v3);
  v12 = sub_10076046C();
  (*(v4 + 8))(v6, v3);
  v13 = [v12 imageWithRenderingMode:2];

  [v10 setImage:v13 forState:0];
  [v10 addTarget:v10 action:"goToSearch" forControlEvents:64];

  return v10;
}

double sub_10044EB88(void *a1)
{
  v1 = a1;
  v2 = [v1 traitCollection];
  if (qword_100940998 != -1)
  {
    swift_once();
  }

  v3 = sub_10076D3DC();
  v4 = sub_10000A61C(v3, qword_1009A0AD8);
  sub_1001ACC0C(v4);
  v6 = v5;

  return v6;
}

uint64_t sub_10044EC70()
{
  v0 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v0 - 8);
  v33 = &v29 - v1;
  v32 = sub_10075F65C();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100765F6C();
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100766EDC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076F4FC();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v12 - 8);
  v14 = &v29 - v13;
  v15 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - v16;
  v18 = sub_10076C15C();
  __chkstk_darwin(v18);
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  (*(v20 + 104))(&v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.search(_:));
  v21 = sub_10075DB7C();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  v22 = sub_10076096C();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v35 = 0u;
  v36 = 0u;
  sub_10076F4DC();
  (*(v8 + 104))(v10, enum case for FlowPresentationContext.push(_:), v7);
  (*(v4 + 104))(v6, enum case for FlowAnimationBehavior.never(_:), v30);
  (*(v2 + 104))(v31, enum case for FlowOrigin.inapp(_:), v32);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v23 = v33;
  v24 = sub_10075F5EC();
  v25 = *(v34 + qword_100957920);
  v26 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v23, 1, v26) == 1)
  {

    return sub_1000527AC(v23);
  }

  else
  {
    sub_100263C24(v24, 1, v25, v23);

    return (*(v27 + 8))(v23, v26);
  }
}

void sub_10044F23C(void *a1)
{
  v1 = a1;
  sub_10044EC70();
}

void sub_10044F284(void *a1, uint64_t a2, void *a3)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for SearchButton();
  v4 = a3;
  v5 = v8.receiver;
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", v4);
  [v5 invalidateIntrinsicContentSize];
  v6 = [v5 layer];
  [v5 intrinsicContentSize];
  [v6 setCornerRadius:v7 * 0.5];
}

id sub_10044F38C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)()
{
  v0 = sub_10076469C();
  __chkstk_darwin(v0 - 8);
  sub_1007632FC();
  if (qword_100940540 != -1)
  {
    swift_once();
  }

  return sub_10076C32C();
}

uint64_t sub_10044F4C0()
{
  v0 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v0 - 8);
  v2 = &v42 - v1;
  v53 = sub_10076C2DC();
  v3 = *(v53 - 8);
  __chkstk_darwin(v53);
  v5 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10000A5D4(&qword_100942908);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v42 - v11;
  v13 = __chkstk_darwin(v10);
  v56 = &v42 - v14;
  __chkstk_darwin(v13);
  v16 = &v42 - v15;
  sub_10000A5D4(&qword_100942910);
  v17 = *(sub_10076C20C() - 8);
  v54 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v47 = v19;
  *(v19 + 16) = xmmword_1007844F0;
  v20 = v19 + v18;
  v58 = 0x3FF0000000000000;
  sub_10001E290();
  sub_10076C29C();
  v58 = 0;
  sub_10076C29C();
  v58 = 0x4048000000000000;
  v21 = v12;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #16.0 }

  *v5 = _Q0;
  v57 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v27 = *(v3 + 104);
  v48 = v3 + 104;
  v28 = v53;
  v27(v5);
  v51 = v27;
  left = UIEdgeInsetsZero.left;
  LOBYTE(v58) = 0;
  sub_10076C29C();
  v58 = 0;
  v50 = v9;
  sub_10076C29C();
  v52 = v20;
  v55 = v16;
  sub_10076C1CC();
  v58 = 0x3FF0000000000000;
  sub_10076C29C();
  v58 = 0;
  sub_10076C29C();
  v58 = 0x4048000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #20.0 }

  *v5 = _Q0;
  (v27)(v5, v57, v28);
  LOBYTE(v58) = 0;
  v49 = v2;
  sub_10076C29C();
  v58 = 0;
  sub_10076C29C();
  v31 = v54;
  top = UIEdgeInsetsZero.top;
  v46 = left;
  v42 = v21;
  sub_10076C1CC();
  v43 = 2 * v31;
  v58 = 0x3FF0000000000000;
  sub_10076C29C();
  v58 = 0;
  sub_10076C29C();
  v58 = 0x4048000000000000;
  sub_10076C29C();
  v44 = vdupq_n_s64(0x4041000000000000uLL);
  v32 = v5;
  *v5 = v44;
  v33 = v53;
  v34 = v51;
  (v51)(v5, v57, v53);
  LOBYTE(v58) = 0;
  sub_10076C29C();
  v58 = 0;
  sub_10076C29C();
  v35 = v43;
  v36 = v32;
  sub_10076C1CC();
  v37 = v54;
  v43 = v35 + v54;
  v58 = 0x4000000000000000;
  sub_10076C29C();
  v58 = 0x4044000000000000;
  sub_10076C29C();
  v58 = 0x4044000000000000;
  sub_10076C29C();
  *v36 = v44;
  v38 = v57;
  (v34)(v36, v57, v33);
  sub_1007704BC();
  LOBYTE(v58) = 0;
  sub_10076C29C();
  v58 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v43 = 4 * v37;
  v58 = 0x4000000000000000;
  sub_10076C29C();
  v58 = 0x4044000000000000;
  sub_10076C29C();
  v58 = 0x4044000000000000;
  sub_10076C29C();
  v44 = vdupq_n_s64(0x404A000000000000uLL);
  *v36 = v44;
  v39 = v53;
  (v51)(v36, v38, v53);
  LOBYTE(v58) = 0;
  sub_10076C29C();
  v58 = 0;
  sub_10076C29C();
  v40 = v43;
  sub_10076C1CC();
  v54 += v40;
  v58 = 0x4000000000000000;
  sub_10076C29C();
  v58 = 0x4044000000000000;
  sub_10076C29C();
  v58 = 0x4044000000000000;
  sub_10076C29C();
  *v36 = v44;
  (v51)(v36, v57, v39);
  LOBYTE(v58) = 0;
  sub_10076C29C();
  v58 = 0;
  sub_10076C29C();
  result = sub_10076C1CC();
  qword_10099FA90 = v47;
  return result;
}

uint64_t sub_10044FE7C()
{
  v0 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v0 - 8);
  v2 = v16 - v1;
  v3 = sub_10076C2DC();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10000A5D4(&qword_100942908);
  __chkstk_darwin(v4 - 8);
  v16[3] = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  v10 = v16 - v9;
  sub_10000A5D4(&qword_100942910);
  v11 = *(sub_10076C20C() - 8);
  v18 = *(v11 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  v17 = v13;
  *(v13 + 16) = xmmword_1007844F0;
  v19 = v13 + v12;
  v20 = 0x3FF0000000000000;
  sub_10001E290();
  sub_10076C29C();
  v20 = 0;
  sub_10076C29C();
  v20 = 0x4048000000000000;
  sub_10076C29C();
  sub_10076C2CC();
  left = UIEdgeInsetsZero.left;
  LOBYTE(v20) = 0;
  sub_10076C29C();
  v20 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v20 = 0x3FF0000000000000;
  sub_10076C29C();
  v20 = 0;
  sub_10076C29C();
  v20 = 0x4048000000000000;
  sub_10076C29C();
  sub_10076C2CC();
  LOBYTE(v20) = 0;
  sub_10076C29C();
  v20 = 0;
  sub_10076C29C();
  *&v16[4] = left;
  v16[5] = *&UIEdgeInsetsZero.top;
  sub_10076C1CC();
  v20 = 0x3FF0000000000000;
  sub_10076C29C();
  v20 = 0;
  sub_10076C29C();
  v20 = 0x4048000000000000;
  sub_10076C29C();
  sub_10076C2CC();
  LOBYTE(v20) = 0;
  v16[2] = v2;
  sub_10076C29C();
  v20 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v20 = 0x4000000000000000;
  sub_10076C29C();
  v20 = 0x4044000000000000;
  sub_10076C29C();
  v20 = 0x4044000000000000;
  sub_10076C29C();
  sub_10076C2CC();
  sub_1007704BC();
  LOBYTE(v20) = 0;
  sub_10076C29C();
  v20 = 0;
  sub_10076C29C();
  v16[1] = v10;
  sub_10076C1CC();
  v20 = 0x4000000000000000;
  sub_10076C29C();
  v20 = 0x4044000000000000;
  sub_10076C29C();
  v20 = 0x4044000000000000;
  sub_10076C29C();
  sub_10076C2CC();
  LOBYTE(v20) = 0;
  sub_10076C29C();
  v20 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v20 = 0x4000000000000000;
  sub_10076C29C();
  v20 = 0x4044000000000000;
  sub_10076C29C();
  v20 = 0x4044000000000000;
  sub_10076C29C();
  sub_10076C2CC();
  LOBYTE(v20) = 0;
  sub_10076C29C();
  v20 = 0;
  sub_10076C29C();
  result = sub_10076C1CC();
  qword_10099FA98 = v17;
  return result;
}

uint64_t sub_1004506B8@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_10076C38C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1007645FC();
  if (result)
  {
    if (a1())
    {
      if (qword_100941210 != -1)
      {
        swift_once();
      }

      v9 = sub_10076D9AC();
      v10 = sub_10000A61C(v9, qword_1009A23B0);
      a2[3] = v9;
      a2[4] = &protocol witness table for StaticDimension;
      v11 = sub_10000DB7C(a2);
      v12 = *(*(v9 - 8) + 16);

      return v12(v11, v10, v9);
    }

    else
    {
      sub_10076460C();
      sub_10076C23C();
      v14 = v13;
      result = (*(v5 + 8))(v7, v4);
      a2[3] = &type metadata for CGFloat;
      a2[4] = &protocol witness table for CGFloat;
      *a2 = v14;
    }
  }

  else
  {
    a2[3] = &type metadata for Double;
    a2[4] = &protocol witness table for Double;
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1004508C4@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100941200 != -1)
  {
    swift_once();
  }

  v2 = sub_10076D9AC();
  v3 = sub_10000A61C(v2, qword_1009A2380);
  a1[3] = v2;
  a1[4] = &protocol witness table for StaticDimension;
  v4 = sub_10000DB7C(a1);
  v5 = *(*(v2 - 8) + 16);

  return v5(v4, v3, v2);
}

uint64_t sub_100450988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v86 = a6;
  v72 = a4;
  v83 = a1;
  v84 = a3;
  v6 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v6 - 8);
  v82 = &v70 - v7;
  v8 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v8 - 8);
  v81 = &v70 - v9;
  v10 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v10 - 8);
  v80 = &v70 - v11;
  v12 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v12 - 8);
  v79 = &v70 - v13;
  v14 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v14 - 8);
  v78 = &v70 - v15;
  v16 = sub_10000A5D4(&unk_1009467C0);
  __chkstk_darwin(v16 - 8);
  v71 = &v70 - v17;
  v18 = sub_10076664C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10076D1AC();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = (&v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_10076E1EC();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_10076E21C();
  v73 = *(v75 - 8);
  *&v30 = __chkstk_darwin(v75).n128_u64[0];
  v32 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = [v86 traitCollection];
  (*(v27 + 104))(v29, enum case for Separator.Position.bottom(_:), v26);
  *v25 = UIFontTextStyleBody;
  (*(v23 + 104))(v25, enum case for FontSource.textStyle(_:), v22);
  v89 = sub_10076D9AC();
  v90 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v88);
  v87[3] = v22;
  v87[4] = &protocol witness table for FontSource;
  v33 = sub_10000DB7C(v87);
  (*(v23 + 16))(v33, v25, v22);
  v34 = UIFontTextStyleBody;
  sub_10076D9BC();
  (*(v23 + 8))(v25, v22);
  v86 = v32;
  sub_10076E1FC();
  sub_1007665FC();
  sub_100451600(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
  LOBYTE(v27) = sub_10077124C();
  v35 = *(v19 + 8);
  v74 = v18;
  v76 = v19 + 8;
  v35(v21, v18);
  if (v27)
  {
    v36 = v73;
    v37 = v71;
    v38 = v75;
    (*(v73 + 56))(v71, 1, 1, v75);
    v39 = OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_separator;
    v40 = v77;
    swift_beginAccess();
    sub_10007A910(v37, &v40[v39]);
    swift_endAccess();
    sub_1002A66D8();
    sub_10000CFBC(v37, &unk_1009467C0);
    sub_10076660C();
    v41 = v74;
    v42 = sub_10077124C();
    v35(v21, v41);
    v43 = [v40 contentView];
    v44 = v43;
    v45 = v40;
    v46 = v38;
    if (v42)
    {
      [v43 layoutMargins];
      [v44 setLayoutMargins:?];
    }

    else
    {
      sub_10076E1AC();
      sub_10000CF78(v88, v89);
      sub_10076D41C();
      [v44 layoutMargins];
      [v44 setLayoutMargins:?];

      sub_10000CD74(v88);
    }
  }

  else
  {
    v47 = v73;
    v48 = v71;
    v49 = v75;
    (*(v73 + 16))(v71, v86, v75);
    (*(v47 + 56))(v48, 0, 1, v49);
    v50 = OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_separator;
    v51 = v77;
    swift_beginAccess();
    sub_10007A910(v48, &v51[v50]);
    swift_endAccess();
    sub_1002A66D8();
    sub_10000CFBC(v48, &unk_1009467C0);
    v52 = [v51 contentView];
    [v52 layoutMargins];
    [v52 setLayoutMargins:?];

    sub_1007665DC();
    v53 = v74;
    v54 = sub_10077124C();
    v35(v21, v53);
    v55 = v51[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout];
    v51[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout] = v54 & 1;
    v45 = v51;
    v46 = v49;
    v36 = v47;
    if ((v54 & 1) != v55)
    {
      v56 = *&v45[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_separatorView];
      if (v56)
      {
        v57 = 1.0;
        if (v54)
        {
          v57 = 0.0;
        }

        [v56 setAlpha:v57];
      }
    }
  }

  v58 = *&v45[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_lockupView];
  v59 = sub_10000A5D4(&qword_100945590);
  v60 = v78;
  (*(*(v59 - 8) + 56))(v78, 1, 1, v59);
  v61 = sub_10075F78C();
  v62 = v79;
  (*(*(v61 - 8) + 56))(v79, 1, 1, v61);
  v63 = sub_1007628DC();
  v64 = v80;
  (*(*(v63 - 8) + 56))(v80, 1, 1, v63);
  v65 = sub_10000A5D4(&unk_100946750);
  v66 = v81;
  (*(*(v65 - 8) + 56))(v81, 1, 1, v65);
  v67 = sub_10076C54C();
  v68 = v82;
  (*(*(v67 - 8) + 56))(v82, 1, 1, v67);
  sub_1004D0A60(v83, v58, v60, v84, 0, 0, v62, v64, v68, v66);
  sub_10000CFBC(v68, &unk_100949290);
  v58[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_10026202C();
  [v58 setNeedsLayout];
  sub_10000CFBC(v66, &qword_10094F730);
  sub_10000CFBC(v64, &unk_1009492A0);
  sub_10000CFBC(v62, &unk_10094D210);
  sub_10000CFBC(v60, &unk_100946760);
  [v45 setNeedsLayout];

  return (*(v36 + 8))(v86, v46);
}

uint64_t sub_100451600(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_100451648(double a1, uint64_t a2, uint64_t a3, void *a4)
{
  v36 = a4;
  v5 = sub_10077164C();
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin(v5);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D1AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10076E1EC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076E21C();
  v34 = *(v15 - 8);
  v35 = v15;
  __chkstk_darwin(v15);
  v33 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076664C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007665FC();
  sub_100451600(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
  v21 = sub_10077124C();
  (*(v18 + 8))(v20, v17);
  (*(v12 + 104))(v14, enum case for Separator.Position.bottom(_:), v11);
  *v10 = UIFontTextStyleBody;
  (*(v8 + 104))(v10, enum case for FontSource.textStyle(_:), v7);
  v39 = sub_10076D9AC();
  v40 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v38);
  v37[3] = v7;
  v37[4] = &protocol witness table for FontSource;
  v22 = sub_10000DB7C(v37);
  (*(v8 + 16))(v22, v10, v7);
  v23 = UIFontTextStyleBody;
  sub_10076D9BC();
  (*(v8 + 8))(v10, v7);
  if (v21)
  {
    v24 = v33;
    sub_10076E1FC();
    sub_10076E1AC();
    (*(v34 + 8))(v24, v35);
    sub_10000CF78(v38, v39);
    v25 = v30;
    sub_1000FF02C();
    v26 = v36;
    sub_10076D40C();
    (*(v31 + 8))(v25, v32);
    sub_10000CD74(v38);
  }

  else
  {
    v27 = v33;
    sub_10076E1FC();
    v26 = v36;
    sub_10076E1DC();
    (*(v34 + 8))(v27, v35);
  }

  swift_getObjectType();
  sub_1002A7528(v26);
  return a1;
}

uint64_t sub_100451BF4(uint64_t a1, uint64_t a2, void *a3)
{
  v23[1] = a1;
  v4 = sub_10076D1AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10076E1EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076E21C();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, enum case for Separator.Position.bottom(_:), v8, v14);
  *v7 = UIFontTextStyleBody;
  (*(v5 + 104))(v7, enum case for FontSource.textStyle(_:), v4);
  v25[3] = sub_10076D9AC();
  v25[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v25);
  v24[3] = v4;
  v24[4] = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(v24);
  (*(v5 + 16))(v17, v7, v4);
  v18 = UIFontTextStyleBody;
  sub_10076D9BC();
  (*(v5 + 8))(v7, v4);
  sub_10076E1FC();
  swift_getObjectType();
  sub_10076E1DC();
  (*(v13 + 8))(v16, v12);
  sub_1002A7528(a3);
  v19 = objc_opt_self();
  PageTraitEnvironment.pageColumnWidth.getter();
  v20 = [v19 absoluteDimension:?];
  v21 = sub_1007665BC();

  return v21;
}

double sub_100451F40(void **a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = *a1;
  type metadata accessor for PrivacyCategoryView();
  swift_getObjectType();
  sub_1001052B0(v9, a7);
  sub_10076DDDC();
  sub_10076D2AC();

  return a2;
}

id sub_100451FF0(uint64_t *a1)
{
  v2 = *a1;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension33PrivacyCategoryCollectionViewCell_privacyCategory] = *a1;

  *(*&v1[OBJC_IVAR____TtC20ProductPageExtension33PrivacyCategoryCollectionViewCell_privacyCategoryView] + OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_category) = v2;

  sub_100103A50();

  return [v1 setNeedsLayout];
}

uint64_t sub_100452098()
{
  sub_10075FD2C();
  sub_10045248C(&qword_100941820, &type metadata accessor for ArtworkView);
  return sub_100760BFC();
}

uint64_t sub_100452138()
{
  v0 = sub_10077164C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009411F8 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D9AC();
  sub_10000A61C(v4, qword_1009A2368);
  sub_10076D17C();
  sub_10076D40C();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

void sub_100452310()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33PrivacyCategoryCollectionViewCell_privacyCategoryView);
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_category))
  {

    sub_10076217C();

    sub_10076BFBC();
    v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_iconView);
    sub_10075FD2C();
    sub_10045248C(&qword_100951F78, &type metadata accessor for ArtworkView);
    v3 = v2;
    sub_10077140C();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100760B7C();

    sub_10002CBB4(v4);
  }
}

uint64_t sub_10045248C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004524D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t DebugMenuPage.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DebugMenuPage.debugSettingsProviders.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1004525AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1004525F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100452644(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "setBackgroundColor:", a1);
  [*(*&v1[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) setBackgroundColor:a1];
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView];
  if (v3)
  {
    v4 = v3;
    [v4 setBackgroundColor:a1];
  }
}

void sub_1004526E4()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView];
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionAmount] > 0.0)
  {
    if (v2)
    {
      return;
    }

    v3 = *(*&v0[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    if (v3)
    {
      type metadata accessor for VideoView();
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = v4;
        v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionScale];
        v7 = v0;
        v8 = -*&v0[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionOffset];
        v9 = qword_10093F788;
        v10 = v3;
        if (v9 != -1)
        {
          swift_once();
        }

        v70 = *&byte_10099D030[64];
        v71 = *&byte_10099D030[80];
        v72 = *&byte_10099D030[96];
        v73 = *&byte_10099D030[112];
        v66 = *byte_10099D030;
        v67 = *&byte_10099D030[16];
        v68 = *&byte_10099D030[32];
        v69 = *&byte_10099D030[48];
        v11 = objc_allocWithZone(type metadata accessor for VideoMirrorView());
        v12 = sub_1002831F8(v5, &v66, v6, v8);
        v13 = *&v7[v1];
        if (v13)
        {
          type metadata accessor for MirrorView();
          v14 = v13;
          v15 = v12;
          v0 = v7;
          v16 = sub_100770EEC();

          v17 = *&v7[v1];
          if ((v16 & 1) == 0)
          {
            if (v17)
            {
              [*&v7[v1] removeFromSuperview];
              v17 = *&v7[v1];
            }
          }
        }

        else
        {
          v0 = v7;
          v17 = 0;
        }

        *&v0[v1] = v12;
        v53 = v12;

        v54 = *&v0[v1];
        if (v54)
        {
          if (!v13)
          {
            goto LABEL_42;
          }

          type metadata accessor for MirrorView();
          v55 = v13;
          v56 = v54;
          v57 = sub_100770EEC();

          if (v57)
          {

            v0 = v7;
LABEL_56:
            [v0 setNeedsLayout];
            return;
          }

          v0 = v7;
          v54 = *&v7[v1];
          if (v54)
          {
LABEL_42:
            [v0 addSubview:v54];

            goto LABEL_56;
          }
        }

        else
        {
          if (!v13)
          {

            goto LABEL_56;
          }

          v55 = v13;
        }

LABEL_44:
        goto LABEL_56;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v25 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionScale];
        v26 = -*&v0[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionOffset];
        v27 = qword_10093F788;
        v28 = v3;
        if (v27 != -1)
        {
          swift_once();
        }

        v29 = v0;
        v70 = *&byte_10099D030[64];
        v71 = *&byte_10099D030[80];
        v72 = *&byte_10099D030[96];
        v73 = *&byte_10099D030[112];
        v66 = *byte_10099D030;
        v67 = *&byte_10099D030[16];
        v68 = *&byte_10099D030[32];
        v69 = *&byte_10099D030[48];
        v30 = type metadata accessor for MirrorView();
        v31 = objc_allocWithZone(v30);
        swift_unknownObjectWeakInit();
        v32 = OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer;
        *&v31[v32] = [objc_allocWithZone(CALayer) init];
        *&v31[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_imageKVOContext] = 0;
        v31[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_imageObserversAdded] = 0;
        swift_unknownObjectWeakAssign();
        *&v31[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_contentsScaleFactor] = v25;
        *&v31[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_contentsVerticalOffset] = v26;
        v65.receiver = v31;
        v65.super_class = v30;
        v33 = objc_msgSendSuper2(&v65, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
        [v33 setClipsToBounds:1];
        [v33 setUserInteractionEnabled:0];
        v34 = OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer;
        [*&v33[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer] setContentsGravity:kCAGravityResizeAspectFill];
        LODWORD(v35) = 1.0;
        [*&v33[v34] setOpacity:v35];
        [*&v33[v34] setAnchorPoint:{0.5, 0.5}];
        v36 = qword_10093F780;
        v37 = *&v33[v34];
        if (v36 != -1)
        {
          swift_once();
        }

        sub_10000A5D4(&qword_100948AE0);
        isa = sub_10076FE3C().super.isa;
        [v37 setActions:isa];

        v39 = *&v33[v34];
        v40 = objc_opt_self();
        v41 = v39;
        v42 = [v40 mainScreen];
        [v42 scale];
        v44 = v43;

        [v41 setContentsScale:v44];
        [*&v33[v34] setMasksToBounds:1];
        v45 = *&v33[v34];
        v64[4] = v70;
        v64[5] = v71;
        v64[6] = v72;
        v64[7] = v73;
        v64[0] = v66;
        v64[1] = v67;
        v64[2] = v68;
        v64[3] = v69;
        [v45 setTransform:v64];
        sub_1000F8300();
        v46 = [v33 layer];

        [v46 addSublayer:*&v33[v34]];
        v47 = *&v29[v1];
        if (v47)
        {
          v48 = v47;
          v49 = v33;
          v50 = v48;
          v0 = v29;
          v51 = sub_100770EEC();

          v52 = *&v29[v1];
          if ((v51 & 1) == 0 && v52)
          {
            [*&v29[v1] removeFromSuperview];
            v52 = *&v29[v1];
          }
        }

        else
        {
          v0 = v29;
          v52 = 0;
        }

        *&v0[v1] = v33;
        v55 = v33;

        v58 = *&v0[v1];
        if (v58)
        {
          if (!v47)
          {
            goto LABEL_54;
          }

          v59 = v47;
          v60 = v58;
          v61 = sub_100770EEC();

          if (v61)
          {

            v0 = v29;
            goto LABEL_56;
          }

          v0 = v29;
          v58 = *&v29[v1];
          if (v58)
          {
LABEL_54:
            [v0 addSubview:v58];

            goto LABEL_56;
          }
        }

        else
        {
          if (!v47)
          {

            goto LABEL_44;
          }

          v59 = v47;
        }

        goto LABEL_56;
      }

      v24 = *&v0[v1];
    }

    else
    {
      v24 = 0;
    }

    *&v0[v1] = 0;

    if (*&v0[v1])
    {
      [v0 addSubview:?];
    }

    goto LABEL_56;
  }

  if (!v2)
  {
    return;
  }

  v62 = v2;
  [v62 removeFromSuperview];
  v18 = *&v0[v1];
  *&v0[v1] = 0;

  v19 = *&v0[v1];
  if (!v19)
  {
    goto LABEL_17;
  }

  v20 = v0;
  type metadata accessor for MirrorView();
  v63 = v62;
  v21 = v19;
  v22 = sub_100770EEC();

  if ((v22 & 1) == 0)
  {
    if (*&v20[v1])
    {
      [v20 addSubview:?];
      goto LABEL_16;
    }

LABEL_17:
    v23 = v62;
    goto LABEL_18;
  }

LABEL_16:
  v23 = v63;
LABEL_18:
}

uint64_t (*sub_100452ED8(uint64_t *a1))()
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
  v4 = OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(v3 + v4);
  if (v5)
  {
    type metadata accessor for VideoView();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_1004546A4;
}

id sub_100453098()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  [v0 bounds];
  v1 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionAmount;
  v6 = sub_100102A30(v2, v3, v4, v5, 0.0, 0.0);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] setFrame:?];
  [v0 bounds];
  MinX = CGRectGetMinX(v18);
  v19.origin.x = v6;
  v19.origin.y = v8;
  v19.size.width = v10;
  v19.size.height = v12;
  MaxY = CGRectGetMaxY(v19);
  v20.origin.x = v6;
  v20.origin.y = v8;
  v20.size.width = v10;
  v20.size.height = v12;
  Width = CGRectGetWidth(v20);
  result = *&v0[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView];
  if (result)
  {
    return [result setFrame:{MinX, MaxY, Width, *&v0[v1]}];
  }

  return result;
}

uint64_t sub_10045329C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

void sub_100453300(void *a1)
{
  sub_100454524(a1);
}

uint64_t (*sub_10045334C(uint64_t **a1))()
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
  v2[4] = sub_100452ED8(v2);
  return sub_10001D41C;
}

uint64_t sub_1004533BC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10045465C(&qword_100957AD0, v1, type metadata accessor for MediaView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v2);
}

uint64_t sub_100453430(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_10045465C(&qword_100957AD0, v5, type metadata accessor for MediaView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v6);
}

uint64_t (*sub_1004534BC(uint64_t *a1))()
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

  v4 = v2;
  *a1 = v2;
  sub_10045465C(&qword_100957AD0, v3, type metadata accessor for MediaView);
  *(v4 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_100453578(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 superview];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
  sub_1000ACA5C();
  v5 = v4;
  v6 = sub_100770EEC();

  return v6 & 1;
}

char *sub_100453600(uint64_t a1)
{
  v2 = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = 0;
  v3 = &v1[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride];
  v3[8] = 1;
  *v3 = 0;
  v4 = &v1[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_systemBackgroundExtensionOutsets];
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  v6 = *(a1 + 32);
  v4[32] = v6;
  if ((v6 & 1) == 0)
  {
    v2 = [objc_allocWithZone(UIBackgroundExtensionView) init];
    [v2 setAutomaticallyPlacesContentView:0];
  }

  *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView] = v2;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for UberContentContainer();
  result = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  if (*&result[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView])
  {
    v8 = result;
    [result addSubview:?];
    return v8;
  }

  return result;
}

uint64_t (*sub_100453790(uint64_t *a1))()
{
  v3 = OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    type metadata accessor for VideoView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_100453814;
}

void sub_100453818(uint64_t a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      sub_10045465C(&qword_100942810, 255, type metadata accessor for VideoView);
      v4 = v3;
      v5 = [v4 superview];
      if (v5)
      {
        v6 = v5;
        v7 = *(a1 + 8);
        sub_1000ACA5C();
        v8 = v7;
        v9 = sub_100770EEC();

        if (v9)
        {
          [v4 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v17 = *(a1 + 8);
    v16 = *(a1 + 16);
    v18 = *(v17 + v16);
    *(v17 + v16) = v3;
    v19 = v3;
    sub_100453A30(v18);

    v20 = *a1;
  }

  else
  {
    if (v3)
    {
      sub_10045465C(&qword_100942810, 255, type metadata accessor for VideoView);
      v10 = v3;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        v13 = *(a1 + 8);
        sub_1000ACA5C();
        v14 = v13;
        v15 = sub_100770EEC();

        if (v15)
        {
          [v10 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v22 = *(a1 + 8);
    v21 = *(a1 + 16);
    v24 = *(v22 + v21);
    *(v22 + v21) = v3;
    v23 = v3;
    sub_100453A30(v24);

    v20 = v24;
  }
}

void sub_100453A30(void *a1)
{
  v2 = v1;
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    type metadata accessor for VideoView();
    v7 = swift_dynamicCastClass();
    if (!v7)
    {
      return;
    }

    v8 = v7;
    sub_10045465C(&qword_100942810, 255, type metadata accessor for VideoView);
    v18 = a1;
    v9 = [v8 superview];
    if (v9)
    {
      v10 = v9;
      sub_1000ACA5C();
      v11 = v2;
      v12 = sub_100770EEC();

      if (v12)
      {
        [v8 removeFromSuperview];
      }
    }

    goto LABEL_10;
  }

  if (!a1)
  {
    v14 = v4;
    goto LABEL_12;
  }

  sub_1000ACA5C();
  v18 = v4;
  v5 = a1;
  v6 = sub_100770EEC();

  if ((v6 & 1) == 0)
  {
LABEL_12:
    sub_10075FD2C();
    if (swift_dynamicCastClass())
    {
      v15 = v4;
      sub_10075FBEC();
    }

    [v4 setContentMode:2];
    [v4 setAccessibilityIgnoresInvertColors:1];
    v16 = *&v2[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView];
    if (v16)
    {
      v17 = v16;
      [v17 setContentView:v4];
    }

    else
    {

      [v2 addSubview:v4];
    }

    v13 = v4;
    goto LABEL_19;
  }

LABEL_10:
  v13 = v18;
LABEL_19:
}

void sub_100453C74()
{
  v1 = v0;
  v38.receiver = v0;
  v38.super_class = type metadata accessor for UberContentContainer();
  objc_msgSendSuper2(&v38, "layoutSubviews");
  [v0 bounds];
  MinX = CGRectGetMinX(v39);
  [v0 bounds];
  MinY = CGRectGetMinY(v40);
  v4 = OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY;
  v5 = MinY + *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY];
  [v0 bounds];
  Width = CGRectGetWidth(v41);
  [v0 bounds];
  Height = CGRectGetHeight(v42);
  v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView];
  if (v8)
  {
    v9 = v8;
    [v9 setFrame:{MinX, v5, Width, Height}];
    v43.origin.x = MinX;
    v43.origin.y = v5;
    v43.size.width = Width;
    v43.size.height = Height;
    v10 = CGRectGetWidth(v43);
    v44.origin.x = MinX;
    v44.origin.y = v5;
    v44.size.width = Width;
    v44.size.height = Height;
    v11 = CGRectGetHeight(v44);
    v12 = 0.0;
    if (v1[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_systemBackgroundExtensionOutsets + 32])
    {
      v13 = 0.0;
    }

    else
    {
      v14 = [v1 traitCollection];
      [v14 layoutDirection];

      sub_1007708DC();
      v12 = sub_100102A30(0.0, 0.0, v10, v11, v15, v16);
      v13 = v17;
      v10 = v18;
      v11 = v19;
    }

    v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    [v20 setFrame:{v12, v13, v10, v11}];
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] setFrame:{MinX, v5, Width, Height}];
  }

  v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
  if (v21)
  {
    type metadata accessor for VideoView();
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v23 = v22;
      if (v1[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride + 8])
      {
        v24 = v21;
        [v1 bounds];
        MidY = CGRectGetMidY(v45);
      }

      else
      {
        MidY = *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride];
        v26 = v21;
      }

      [v1 bounds];
      MidX = CGRectGetMidX(v46);
      v28 = MidY - *&v1[v4];
      v29 = v23 + qword_1009A2510;
      v30 = *(v23 + qword_1009A2510);
      v31 = *(v23 + qword_1009A2510 + 8);
      v32 = *(v23 + qword_1009A2510 + 16);
      *v29 = MidX;
      *(v29 + 8) = v28;
      *(v29 + 16) = 0;
      if ((v32 & 1) != 0 || (MidX == v30 ? (v33 = v28 == v31) : (v33 = 0), !v33))
      {
        sub_1005ED780();
      }

      v34 = *&v1[v4];
      v35 = (v23 + qword_1009A2508);
      v36 = *(v23 + qword_1009A2508);
      v37 = *(v23 + qword_1009A2508 + 16);
      *v35 = 0;
      v35[1] = 0;
      v35[2] = v34;
      v35[3] = 0;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqzq_f64(v36), vceqq_f64(v37, v34)))) & 1) == 0)
      {
        sub_1005EEA78();
      }
    }
  }
}

id sub_100454028()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UberContentContainer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004540D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

void sub_100454128(void *a1)
{
  sub_100454524(a1);
}

uint64_t (*sub_100454160(uint64_t **a1))()
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
  v2[4] = sub_100453790(v2);
  return sub_100019A4C;
}

uint64_t sub_1004541D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100454224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_100454290(uint64_t *a1))()
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

uint64_t sub_10045432C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 superview];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_1000ACA5C();
  v4 = v1;
  v5 = sub_100770EEC();

  return v5 & 1;
}

void sub_100454524(void *a1)
{
  if (a1)
  {
    sub_10045465C(&qword_100942810, 255, type metadata accessor for VideoView);
    v3 = a1;
    v4 = [v3 superview];
    if (v4)
    {
      v5 = v4;
      sub_1000ACA5C();
      v6 = v1;
      v7 = sub_100770EEC();

      if (v7)
      {
        [v3 removeFromSuperview];
      }
    }

    else
    {
    }
  }

  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
  *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = a1;
  v8 = a1;
  sub_100453A30(v9);
}

uint64_t sub_10045465C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *sub_1004546B0(uint64_t a1)
{
  v2 = sub_10075DDBC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100767FCC();
  sub_10076F63C();
  if (!v36)
  {
    return _swiftEmptyArrayStorage;
  }

  v34 = 0;
  v35 = 0xE000000000000000;
  v6 = v36;

  sub_10076EF1C();
  v30 = v36;
  v7 = v37;
  v33 = sub_10000A5D4(&unk_100942870);
  v8 = swift_allocObject();
  v32 = xmmword_1007841E0;
  *(v8 + 16) = xmmword_1007841E0;
  sub_100016F40(0, &qword_100958FF0);
  sub_100016F40(0, &qword_1009641D0);
  swift_allocObject();
  v31 = v6;
  swift_weakInit();
  v41.value.super.super.isa = sub_100770F1C();
  v41.is_nil = 0;
  *(v8 + 32) = sub_10077054C(UIBarButtonSystemItemTrash, v41, v42);
  *&v36 = v6;
  *(&v36 + 1) = sub_10072C91C;
  v37 = 0;
  v38 = 0;
  v39 = v30;
  v40 = v7;
  v9 = objc_allocWithZone(sub_10000A5D4(&qword_100957B00));
  v10 = sub_10045522C(&v36, 0x7363697274654DLL, 0xE700000000000000);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  type metadata accessor for NavigationActionDebugSetting();
  v12 = swift_allocObject();
  v12[7] = 0xD000000000000013;
  v12[8] = 0x80000001007E8430;
  v12[10] = 0;
  v12[11] = 0;
  v12[9] = 0;
  v12[12] = sub_100455534;
  v12[13] = v11;

  *&v30 = v10;

  sub_10075DDAC();
  v13 = sub_10075DD8C();
  v15 = v14;
  v16 = *(v3 + 8);
  v29 = v2;
  v16(v5, v2);
  v34 = v13;
  v35 = v15;
  sub_10077140C();

  type metadata accessor for BoolUserDefaultsDebugSetting();
  v17 = swift_allocObject();
  *(v17 + 56) = 0xD00000000000001ALL;
  *(v17 + 64) = 0x80000001007E8450;
  *(v17 + 72) = 0;
  *(v17 + 80) = 0xD000000000000018;
  *(v17 + 88) = 0x80000001007E8470;
  *(v17 + 96) = 0;
  sub_10075DDAC();
  v18 = sub_10075DD8C();
  v20 = v19;
  v16(v5, v2);
  v34 = v18;
  v35 = v20;
  sub_10077140C();
  v21 = swift_allocObject();
  *(v21 + 16) = v32;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100785D70;
  *(v22 + 32) = v12;
  *(v22 + 40) = v17;
  type metadata accessor for DebugSection();
  v23 = swift_allocObject();
  sub_10075DDAC();
  v24 = sub_10075DD8C();
  v26 = v25;

  v16(v5, v29);
  v23[2] = v24;
  v23[3] = v26;
  v23[4] = 0;
  v23[5] = 0xE000000000000000;
  v23[6] = v22;
  *(v21 + 32) = v23;

  return v21;
}

uint64_t sub_100454B7C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100767FAC();
  }

  return result;
}

uint64_t sub_100454BD4(uint64_t a1, uint64_t a2, void *a3)
{
  v39 = a3;
  v4 = sub_10075F65C();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v42 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100765F6C();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v36 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100766EDC();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076F4FC();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v10 - 8);
  v12 = v32 - v11;
  v13 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v13 - 8);
  v15 = v32 - v14;
  v16 = sub_10076C15C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v20 - 8);
  v22 = v32 - v21;
  v23 = sub_10000A5D4(&unk_1009428E0);
  v43 = a2;
  sub_10076F5AC();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_1000527AC(v22);
  }

  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v26 = *(v17 + 104);
  v32[2] = v19;
  v26(v19, enum case for FlowPage.viewController(_:), v16);
  v27 = sub_10075DB7C();
  v28 = *(*(v27 - 8) + 56);
  v32[1] = v15;
  v28(v15, 1, 1, v27);
  v29 = sub_10076096C();
  (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
  v45 = sub_10000A5D4(&qword_100957B00);
  v44 = v39;
  v30 = v39;
  sub_10076F4DC();
  (*(v33 + 104))(v34, enum case for FlowPresentationContext.push(_:), v35);
  (*(v37 + 104))(v36, enum case for FlowAnimationBehavior.infer(_:), v38);
  (*(v40 + 104))(v42, enum case for FlowOrigin.inapp(_:), v41);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v31 = sub_10075F5EC();
  sub_100263C24(v31, 1, v43, v22);

  return (*(v24 + 8))(v22, v23);
}

id sub_1004551D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10045522C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + *((swift_isaMask & *v3) + 0x60);
  v25 = *(a1 + 8);
  v26 = *(a1 + 24);
  v7 = a1[1];
  v24 = a1[2];
  v6 = v24;
  v8 = *(a1 + 6);
  v9 = a1[1];
  *v5 = *a1;
  *(v5 + 1) = v7;
  *(v5 + 2) = v6;
  *(v5 + 6) = v8;
  v19 = *a1;
  v20 = v9;
  v21 = a1[2];
  v22 = *(a1 + 6);
  v23 = v8;
  objc_allocWithZone(sub_10000A5D4(&qword_100957B08));

  sub_1000B8A4C(&v24, v18);
  sub_100016E2C(&v25, v18, &qword_100957B10);
  sub_100016E2C(&v23, v18, &qword_100957B18);
  *(v3 + *((swift_isaMask & *v3) + 0x68)) = sub_10076EBFC();
  v17.receiver = v3;
  v17.super_class = sub_10000A5D4(&qword_100957B00);
  v10 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", 0, 0);
  v11 = [v10 navigationItem];
  if (a3)
  {
    v12 = sub_10076FF6C();
  }

  else
  {
    v12 = 0;
  }

  [v11 setTitle:v12];

  v13 = [v10 navigationItem];
  sub_100016F40(0, &qword_100958FF0);
  isa = sub_1007701AC().super.isa;

  [v13 setRightBarButtonItems:isa];

  v15 = [v10 navigationItem];
  [v15 setLargeTitleDisplayMode:2];

  return v10;
}

uint64_t sub_1004554B4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004554F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10045553C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&unk_1009520C0);
  __chkstk_darwin(v6 - 8);
  v46 = &v42 - v7;
  v8 = sub_10000A5D4(&qword_10094AA50);
  v47 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  v11 = sub_10000A5D4(&qword_100952650);
  __chkstk_darwin(v11 - 8);
  v48 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  v16 = sub_10000A5D4(&unk_100956700);
  __chkstk_darwin(v16 - 8);
  v18 = &v42 - v17;
  v19 = sub_10075F51C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100455D48(&unk_100957B20, &type metadata accessor for Annotation);
  sub_10076332C();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return sub_10000CFBC(v18, &unk_100956700);
  }

  v43 = v8;
  v44 = a1;
  v45 = a2;
  (*(v20 + 32))(v22, v18, v19);
  *&v3[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailItems] = sub_10075F4EC();

  v24 = sub_10075F4FC();
  v25 = &v3[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleText];
  *v25 = v24;
  v25[1] = v26;

  v27 = *&v3[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleLabel];

  v28 = sub_10076FF6C();

  [v27 setText:v28];

  [v3 setNeedsLayout];
  v29 = sub_10075F50C();
  v30 = &v3[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_explicitSummary];
  *v30 = v29;
  v30[1] = v31;

  sub_10031C0A4();
  v32 = sub_10075F4CC();
  if (v32)
  {
    v49 = v32;
    sub_10076B90C();
    sub_10076F64C();
    sub_100455D48(&qword_100956710, &type metadata accessor for Action);
    sub_10076F56C();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = sub_10000A5D4(&qword_100955BD0);
  v35 = 1;
  (*(*(v34 - 8) + 56))(v15, v33, 1, v34);
  v36 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkAction;
  swift_beginAccess();
  sub_10031DCE8(v15, &v3[v36]);
  swift_endAccess();
  sub_10031C22C();
  sub_10000CFBC(v15, &qword_100952650);
  sub_10076336C();
  sub_10076F87C();
  sub_100166C0C();
  v37 = v43;
  sub_10076F84C();
  (*(v47 + 8))(v10, v37);
  if ((v49 & 1) == 0)
  {
    v35 = sub_10075F4DC();
  }

  sub_10031DB84();
  v3[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_isExpanded] = v35 & 1;
  sub_10031BDF8();
  v38 = sub_10075F4CC();
  v39 = v48;
  if (v38)
  {
    v49 = v38;
    sub_10076B90C();
    sub_10076F64C();
    sub_100455D48(&qword_100956710, &type metadata accessor for Action);
    sub_10076F56C();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = sub_10000A5D4(&qword_100955BD0);
  (*(*(v41 - 8) + 56))(v39, v40, 1, v41);
  swift_beginAccess();
  sub_10031DCE8(v39, &v3[v36]);
  swift_endAccess();
  sub_10031C22C();
  sub_10000CFBC(v39, &qword_100952650);
  return (*(v20 + 8))(v22, v19);
}

uint64_t sub_100455C1C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_100455C78(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100455D48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100455D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v55 = a2;
  v51 = sub_10076D1AC();
  v48 = *(v51 - 8);
  __chkstk_darwin(v51);
  v54 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v56 = &v42 - v4;
  v5 = sub_10076C38C();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100957B30);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_10000A5D4(&unk_10094CD50);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  v65 = vdupq_n_s64(0x4040000000000000uLL);
  __asm { FMOV            V0.2D, #28.0 }

  v62 = _Q0;
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for CGSize(0);
  sub_10075FDFC();
  v65 = xmmword_100798B00;
  v62 = xmmword_100798B10;
  sub_10075FDFC();
  v26 = *(v12 + 16);
  v49 = v14;
  v46 = v20;
  v26(v14, v20, v11);
  v47 = v17;
  v26(v10, v17, v11);
  v50 = v12;
  v27 = *(v12 + 56);
  v52 = v10;
  v53 = v11;
  v27(v10, 0, 1, v11);
  sub_10076460C();
  sub_10076C2EC();
  v29 = v28;
  (*(v43 + 8))(v7, v44);
  v66 = &type metadata for CGFloat;
  v67 = &protocol witness table for CGFloat;
  v65.i64[0] = v29;
  v63 = &type metadata for Double;
  v64 = &protocol witness table for Double;
  v61[14] = &protocol witness table for Double;
  *&v62 = 0x4048000000000000;
  v61[13] = &type metadata for Double;
  v61[10] = 0x4028000000000000;
  if (qword_100940A08 != -1)
  {
    swift_once();
  }

  v30 = sub_10076D3DC();
  v45 = sub_10000A61C(v30, qword_1009A0C28);
  v31 = *(*(v30 - 8) + 16);
  v32 = v56;
  v31(v56, v45, v30);
  v33 = enum case for FontSource.useCase(_:);
  v34 = v48;
  v35 = *(v48 + 104);
  v36 = v51;
  v35(v32, enum case for FontSource.useCase(_:), v51);
  v61[9] = &protocol witness table for Double;
  v61[8] = &type metadata for Double;
  v61[5] = 0;
  v37 = v54;
  v31(v54, v45, v30);
  v35(v37, v33, v36);
  v61[3] = sub_10076D9AC();
  v61[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v61);
  v59 = v36;
  v60 = &protocol witness table for FontSource;
  v38 = sub_10000DB7C(v58);
  (*(v34 + 16))(v38, v37, v36);
  sub_10076D9BC();
  (*(v34 + 8))(v37, v36);
  v60 = &protocol witness table for Double;
  v59 = &type metadata for Double;
  v58[0] = 0x4020000000000000;
  v57[3] = sub_10076D67C();
  v57[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v57);
  sub_10076D66C();
  sub_1007605EC();
  v39 = *(v50 + 8);
  v40 = v53;
  v39(v47, v53);
  return (v39)(v46, v40);
}

uint64_t sub_1004563A4(uint64_t a1, uint64_t a2)
{
  v113 = a2;
  v127 = sub_10076D1AC();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&qword_100945AE8);
  __chkstk_darwin(v4 - 8);
  v132 = &v108 - v5;
  v137 = sub_10076E4AC();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v135 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_10076C38C();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v145 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&qword_10094BB50);
  __chkstk_darwin(v8 - 8);
  v112 = &v108 - v9;
  v115 = sub_10000A5D4(&unk_100946700);
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v138 = &v108 - v10;
  v128 = sub_10076B6EC();
  v130 = *(v128 - 8);
  __chkstk_darwin(v128);
  v142 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_10076664C();
  v146 = *(v143 - 8);
  __chkstk_darwin(v143);
  v111 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v144 = &v108 - v14;
  v141 = sub_10000A5D4(&unk_1009520C0);
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v131 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v139 = &v108 - v17;
  v18 = sub_10000A5D4(&unk_100946710);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v108 - v20;
  v22 = sub_10076469C();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10076063C();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007632FC();
  sub_100455D90(v25, v29);
  v30 = *(v23 + 8);
  v121 = v25;
  v31 = v25;
  v32 = v144;
  v124 = v22;
  v123 = v23 + 8;
  v118 = v30;
  v30(v31, v22);
  v33 = v26;
  v34 = a1;
  v35 = OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_layoutMetrics;
  v36 = v129;
  swift_beginAccess();
  v37 = *(v27 + 40);
  v120 = v35;
  v119 = v29;
  v116 = v33;
  v38 = v33;
  v39 = v142;
  v122 = v27 + 40;
  v117 = v37;
  v37(&v36[v35], v29, v38);
  swift_endAccess();
  sub_1007633BC();
  sub_10076F4AC();
  (*(v19 + 8))(v21, v18);
  v40 = v139;
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  v147 = v34;
  v41 = sub_100630CB4();
  sub_10000A570(v151, &v149);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076B90C();
  v42 = &selRef_initWithTabBarSystemItem_tag_;
  v43 = &selRef_initWithTabBarSystemItem_tag_;
  if (!swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    (*(v130 + 8))(v39, v128);
    (*(v146 + 8))(v32, v143);
    (*(v140 + 8))(v40, v141);
    sub_10000CD74(v151);
    v54 = v135;
    v45 = v36;
    v55 = &off_100911000;
    goto LABEL_24;
  }

  v44 = v148;
  (*(v140 + 16))(v131, v40, v141);
  sub_10076FCFC();
  sub_10076F87C();
  v45 = v36;
  v46 = *&v36[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_textLabel];
  sub_10076B8EC();
  sub_10076260C();

  v47 = *&v45[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_separatorView];
  v48 = v111;
  sub_1007665FC();
  sub_100457780(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
  v49 = v143;
  v50 = sub_10077124C();
  v51 = *(v146 + 8);
  v146 += 8;
  v110 = v51;
  v51(v48, v49);
  [v47 setHidden:v50 & 1];
  v131 = v44;
  v52 = sub_10076B8BC();
  v109 = v46;
  if ((v52 & 2) != 0)
  {
    [v46 _setTextColorFollowsTintColor:1];
  }

  else
  {
    [v46 _setTextColorFollowsTintColor:0];
    sub_1000325F0();
    v53 = sub_100770CFC();
    [v46 setTextColor:v53];
  }

  v56 = v130;
  v55 = &off_100911000;
  swift_getObjectType();
  v57 = sub_10045B094(v41);
  v58 = type metadata accessor for Accessory();
  if (v57)
  {
    v59 = v112;
    swift_storeEnumTagMultiPayload();
    v60 = 0;
  }

  else
  {
    v60 = 1;
    v59 = v112;
  }

  (*(*(v58 - 8) + 56))(v59, v60, 1, v58);
  sub_100292808(v59, v113);
  sub_10000CFBC(v59, &qword_10094BB50);
  v61 = [v41 traitCollection];
  v62 = [v61 horizontalSizeClass];

  if (v62 == 1 || (sub_10076660C(), v63 = v143, v64 = sub_10077124C(), v110(v48, v63), (v64 & 1) != 0))
  {
    v65 = [v45 contentView];
    [v41 pageMarginInsets];
  }

  else
  {
    v65 = [v45 contentView];
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v70 = v138;
  [v65 setLayoutMargins:{top, left, bottom, right}];

  v71 = sub_10076B8FC();
  if (v71)
  {

    v72 = *&v45[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (v72 && ([v72 isHidden] & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    v74 = v71 == 0;
    v75 = sub_1002907D4();
    v76 = v74;
    v70 = v138;
    [v75 setHidden:v76];

    goto LABEL_20;
  }

  v73 = *&v45[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
  if (v73 && ![v73 isHidden])
  {
    goto LABEL_19;
  }

LABEL_20:
  sub_10076660C();
  v77 = v143;
  v78 = v144;
  v79 = sub_10077124C();
  v80 = v48;
  v81 = v110;
  v110(v80, v77);
  v45[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_isVertical] = (v79 & 1) == 0;
  if (v79)
  {
    v82 = 1;
  }

  else
  {
    v82 = 3;
  }

  [v109 setNumberOfLines:v82];
  [v45 setNeedsLayout];
  [v45 setNeedsLayout];
  swift_unknownObjectRelease();

  (*(v114 + 8))(v70, v115);
  (*(v56 + 8))(v142, v128);
  v81(v78, v77);
  (*(v140 + 8))(v139, v141);
  sub_10000CD74(v151);
  v42 = &selRef_initWithTabBarSystemItem_tag_;
  v43 = &selRef_initWithTabBarSystemItem_tag_;
  v54 = v135;
LABEL_24:
  v83 = [v45 v43[115]];
  [v83 v55[207]];

  swift_getKeyPath();
  sub_10076338C();

  sub_10076E45C();
  sub_10076C21C();
  v85 = v84;
  sub_10076C23C();
  v86 = v137;
  v87 = v136;
  if (v85 == 1.0)
  {
    sub_10076C2EC();
    sub_10076C23C();
    sub_10076C2EC();
  }

  else
  {
    sub_10076C2BC();
    sub_10076C23C();
    sub_10076C2BC();
  }

  sub_10076E47C();
  v88 = v132;
  (*(v87 + 16))(v132, v54, v86);
  (*(v87 + 56))(v88, 0, 1, v86);
  sub_10077080C();
  v89 = ASKDeviceTypeGetCurrent();
  v90 = sub_10076FF9C();
  v92 = v91;
  if (v90 == sub_10076FF9C() && v92 == v93)
  {
  }

  else
  {
    v94 = sub_10077167C();

    if ((v94 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  sub_1007619CC();
  sub_100457780(&unk_10094CD60, &type metadata accessor for SearchAdAction);
  v45[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_isDisplayingSearchTrendingAction] = sub_10076334C() & 1;
  v95 = v121;
  sub_1007632FC();
  v96 = v45;
  v97 = v119;
  sub_100455D90(v95, v119);
  v118(v95, v124);
  v98 = v120;
  swift_beginAccess();
  v99 = v97;
  v45 = v96;
  v117(&v96[v98], v99, v116);
  swift_endAccess();
  sub_100291188();
  v100 = *&v96[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_textLabel];
  swift_beginAccess();
  v101 = v125;
  sub_10076062C();
  swift_endAccess();
  v102.super.isa = [v96 v42[274]];
  isa = v102.super.isa;
  v104 = sub_10076D19C(v102).super.isa;

  (*(v126 + 8))(v101, v127);
  [v100 setFont:v104];

  [v45 setNeedsLayout];
LABEL_32:
  sub_10000A5D4(&qword_100946730);
  sub_10076333C();
  if (v150)
  {
    sub_100012498(&v149, v151);
    sub_10000CF78(v151, v151[3]);
    v105 = sub_10076557C();
    if (v105)
    {
    }

    v45[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_hasArtworkToDisplay] = v105 != 0;
    sub_10000CD74(v151);
  }

  else
  {
    sub_10000CFBC(&v149, &qword_100957B40);
  }

  v106 = v145;
  [v45 setNeedsLayout];
  (*(v87 + 8))(v54, v86);
  return (*(v133 + 8))(v106, v134);
}

uint64_t sub_100457608@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_100457664(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

id sub_10045772C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v2, "prepareForReuse");
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_hasArtworkToDisplay) = 0;
  return result;
}

uint64_t sub_100457780(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1004577DC()
{
  result = qword_100957B48;
  if (!qword_100957B48)
  {
    sub_100762D9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957B48);
  }

  return result;
}

uint64_t sub_10045783C(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v28 = a1;
  v30 = sub_10075F65C();
  v2 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100765F6C();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100766EDC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076F4FC();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v26 - v16;
  v18 = sub_10076C15C();
  __chkstk_darwin(v18);
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  (*(v20 + 104))(&v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.shareSheet(_:));
  v21 = sub_10075DB7C();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  v22 = sub_10076096C();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v33 = sub_100762D9C();
  v32 = v28;

  sub_10076F4DC();
  (*(v8 + 104))(v10, enum case for FlowPresentationContext.infer(_:), v7);
  (*(v4 + 104))(v6, enum case for FlowAnimationBehavior.infer(_:), v27);
  (*(v2 + 104))(v29, enum case for FlowOrigin.inapp(_:), v30);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v23 = sub_10075F5EC();
  v24 = sub_100563FF8(v23, 1, v31);

  return v24;
}

uint64_t sub_100457D0C()
{
  sub_10000A5D4(&unk_100948AD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DE0;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNull) init];
  *(inited + 56) = 0x6E6564646968;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNull) init];
  *(inited + 80) = 0x49726564724F6E6FLL;
  *(inited + 88) = 0xE90000000000006ELL;
  *(inited + 96) = [objc_allocWithZone(NSNull) init];
  *(inited + 104) = 0x4F726564724F6E6FLL;
  *(inited + 112) = 0xEA00000000007475;
  *(inited + 120) = [objc_allocWithZone(NSNull) init];
  *(inited + 128) = 0x726579616C627573;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = [objc_allocWithZone(NSNull) init];
  *(inited + 152) = 0x73746E65746E6F63;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = [objc_allocWithZone(NSNull) init];
  *(inited + 176) = 0x73646E756F62;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = [objc_allocWithZone(NSNull) init];
  v1 = sub_1000FC71C(inited);
  swift_setDeallocating();
  sub_10000A5D4(&qword_100948AA0);
  result = swift_arrayDestroy();
  qword_100957B50 = v1;
  return result;
}

void sub_100457F20(double a1, double a2, uint64_t a3, uint64_t *a4)
{
  sub_10000A5D4(&unk_100942870);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100785D70;
  v8 = objc_opt_self();
  v9 = [v8 blackColor];
  v10 = [v9 colorWithAlphaComponent:a1];

  v11 = [v10 CGColor];
  *(v7 + 32) = v11;
  v12 = [v8 blackColor];
  v13 = [v12 colorWithAlphaComponent:a2];

  v14 = [v13 CGColor];
  *(v7 + 40) = v14;
  *a4 = v7;
}

char *sub_10045805C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_gradient;
  *&v4[v9] = [objc_allocWithZone(CAGradientLayer) init];
  v4[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsTopGradient] = 1;
  v4[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsBottomGradient] = 1;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for HeroGradientView();
  v10 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v14 = v10;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v14 setUserInteractionEnabled:0];
  v15 = OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_gradient;
  [*&v14[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_gradient] setAnchorPoint:{0.0, 0.0}];
  v16 = qword_100940550;
  v17 = *&v14[v15];
  if (v16 != -1)
  {
    swift_once();
  }

  sub_10000A5D4(&qword_100948AE0);
  isa = sub_10076FE3C().super.isa;
  [v17 setActions:isa];

  v19 = [v14 layer];
  [v19 addSublayer:*&v14[v15]];

  sub_1004583A0();
  return v14;
}

id sub_1004583A0()
{
  if ((v0[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsTopGradient] & 1) != 0 || v0[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsBottomGradient] == 1)
  {
    v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_gradient];
    [v1 setHidden:0];
    [v0 bounds];
    sub_100458510(v2, v3);
    v5 = v4;
    sub_1001E2870();

    isa = sub_1007701AC().super.isa;

    [v1 setLocations:isa];

    sub_10016D8F8(v5);

    v7 = sub_1007701AC().super.isa;

    [v1 setColors:v7];

    v8 = "setNeedsDisplay";
    v9 = v1;
  }

  else
  {
    v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_gradient];
    v8 = "setHidden:";
  }

  return [v9 v8];
}

uint64_t sub_100458510(double a1, double a2)
{
  v3 = v2;
  v4 = 174.0 / a2;
  v5 = [objc_allocWithZone(NSNumber) initWithDouble:174.0 / a2];
  v6 = [objc_allocWithZone(NSNumber) initWithDouble:1.0 - v4];
  sub_10000A5D4(&unk_100942870);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007841E0;
  sub_1001E2870();
  *(v7 + 32) = sub_100770EBC(0.0);
  v20 = v7;
  v8 = OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsTopGradient;
  if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsTopGradient) == 1)
  {
    v9 = v5;
    sub_10077019C();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
    if (qword_100940558 != -1)
    {
      swift_once();
    }

    sub_1000F9994(v10);
    if ((*(v2 + OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsBottomGradient) & 1) == 0)
    {
      v11 = [objc_opt_self() blackColor];
      v12 = [v11 colorWithAlphaComponent:0.0];

      v13 = [v12 CGColor];
      sub_10077019C();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
    }
  }

  if (*(v3 + OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsBottomGradient) == 1)
  {
    v14 = v6;
    sub_10077019C();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
    if ((*(v3 + v8) & 1) == 0)
    {
      v15 = [objc_opt_self() blackColor];
      v16 = [v15 colorWithAlphaComponent:0.0];

      v17 = [v16 CGColor];
      sub_10077019C();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
    }

    if (qword_100940560 != -1)
    {
      swift_once();
    }

    sub_1000F9994(v18);
  }

  sub_100770EBC(1.0);
  sub_10077019C();
  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();

  return v20;
}

id sub_100458954()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeroGradientView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1004589BC()
{
  v1 = v0;
  v2 = sub_10076D58C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10076D55C();
  sub_10076D56C();
  sub_10000A570(v1 + 88, v9);
  v10[3] = sub_10076E04C();
  v10[4] = &protocol witness table for Margins;
  sub_10000DB7C(v10);
  sub_10076E02C();
  sub_10076D56C();
  sub_10000CD74(v10);
  sub_10076E0FC();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_100458B98()
{
  v0 = sub_10076D54C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076D67C();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v3);
  sub_10076D66C();
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  v6(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  sub_10076D53C();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v3);
  sub_10076D66C();
  v6(v3, v5, v0);
  sub_10076D50C();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v3);
  sub_10076D66C();
  v6(v3, v5, v0);
  sub_10076D4FC();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v3);
  sub_10076D66C();
  v6(v3, v5, v0);
  return sub_10076D51C();
}

uint64_t sub_100458D40()
{
  v0 = sub_10076D54C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076D67C();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v3);
  sub_10076D66C();
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  v6(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  sub_10076D4FC();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v3);
  sub_10076D66C();
  v6(v3, v5, v0);
  sub_10076D50C();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v3);
  sub_10076D66C();
  v6(v3, v5, v0);
  return sub_10076D51C();
}

uint64_t sub_100458EB4()
{
  sub_10076D55C();
  sub_10076D56C();
  sub_10000A570(v0 + 88, &v2);
  v3[3] = sub_10076E04C();
  v3[4] = &protocol witness table for Margins;
  sub_10000DB7C(v3);
  sub_10076E02C();
  sub_10076D56C();
  return sub_10000CD74(v3);
}

__n128 sub_100458FA0(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_100458FC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10045900C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10045907C@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1004590A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004591C8();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_100459100()
{
  result = qword_100957BA8;
  if (!qword_100957BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957BA8);
  }

  return result;
}

unint64_t sub_100459158()
{
  result = qword_100957BB0;
  if (!qword_100957BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957BB0);
  }

  return result;
}

unint64_t sub_1004591C8()
{
  result = qword_100957BB8;
  if (!qword_100957BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957BB8);
  }

  return result;
}

uint64_t sub_10045921C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[48])
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

uint64_t sub_100459270(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

double sub_100459324(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10076C38C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1004593F8(a1, v4);
  v7 = v6;
  sub_10005AEAC(v4);
  return v7;
}

uint64_t sub_1004593F8(uint64_t a1, id a2)
{
  v124 = a2;
  v3 = sub_10000A5D4(&qword_100957BC0);
  v116 = *(v3 - 8);
  __chkstk_darwin(v3);
  v115 = &v88 - v4;
  v110 = sub_10076514C();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v111 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_10076516C();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v112 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_10076DD3C();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v102 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v103 = &v88 - v9;
  v101 = sub_100760FDC();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_10076D7FC();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v94 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v95 = &v88 - v13;
  __chkstk_darwin(v14);
  v96 = &v88 - v15;
  v108 = sub_10076DA7C();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v120 = &v88 - v18;
  v119 = sub_10075D99C();
  v118 = *(v119 - 1);
  __chkstk_darwin(v119);
  v117 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_10076664C();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v90 = &v88 - v22;
  v123 = sub_100760F8C();
  v23 = *(v123 - 8);
  __chkstk_darwin(v123);
  v25 = (&v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_10000A5D4(&unk_1009520A0);
  __chkstk_darwin(v26 - 8);
  v127 = sub_10000A5D4(&qword_100957BC8);
  v122 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v88 - v27;
  v28 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v28 - 8);
  v30 = &v88 - v29;
  v31 = sub_10076C38C();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v128 = &v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100760FAC();
  sub_10045A6B4(&qword_10094FAE8, &type metadata accessor for ProductReview);
  v34 = a1;
  result = sub_10076332C();
  v125 = aBlock[0];
  if (!aBlock[0])
  {
    return result;
  }

  v89 = v3;
  sub_10003BDD4(v124, v30);
  v36 = *(v32 + 48);
  v37 = v36(v30, 1, v31);
  v121 = v32;
  if (v37 == 1)
  {
    swift_getKeyPath();
    sub_10076338C();

    v38 = v31;
    if (v36(v30, 1, v31) != 1)
    {
      sub_10005AEAC(v30);
    }
  }

  else
  {
    (*(v32 + 32))(v128, v30, v31);
    v38 = v31;
  }

  v39 = v34;
  sub_1007633DC();
  v40 = v126;
  sub_10076FDBC();
  sub_100760F9C();
  v41 = v123;
  v42 = (*(v23 + 88))(v25, v123);
  if (v42 == enum case for ProductReview.ReviewSource.editorsChoice(_:))
  {
    goto LABEL_7;
  }

  if (v42 == enum case for ProductReview.ReviewSource.user(_:))
  {
    (*(v23 + 96))(v25, v41);
    v43 = *v25;
    sub_10013E624();
    v44 = v127;
    sub_10076FD8C();
    v45 = sub_1006CD6D4(v39, LOBYTE(aBlock[0]));
    type metadata accessor for ProductReviewView();
    v46 = v128;
    sub_10076C2FC();
    v47 = sub_100630CB4();
    swift_getObjectType();
    sub_100372F00(v43, v45 & 1, v45 & 1, v47);

    swift_unknownObjectRelease();

    (*(v122 + 8))(v40, v44);
    return (*(v121 + 8))(v46, v38);
  }

  if (v42 != enum case for ProductReview.ReviewSource.reviewSummary(_:))
  {
LABEL_7:

    (*(v122 + 8))(v40, v127);
    (*(v121 + 8))(v128, v38);
    return (*(v23 + 8))(v25, v41);
  }

  (*(v23 + 96))(v25, v41);
  v48 = *v25;
  sub_10013E624();
  sub_10076FD8C();
  v88 = v38;
  if (LOBYTE(aBlock[0]) == 2)
  {
    v49 = v90;
    sub_10076331C();
    v50 = v91;
    sub_1007665CC();
    sub_10045A6B4(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
    v51 = v93;
    sub_10077124C();
    v52 = *(v92 + 8);
    v52(v50, v51);
    v52(v49, v51);
  }

  sub_10076C2FC();
  swift_getKeyPath();
  sub_10076338C();

  v53 = v134;
  v54 = v117;
  sub_100760FCC();
  v55 = sub_1003D9E44(v54, 0, v53);
  v118[1](v54, v119);
  v56 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v55];
  v57 = [v55 length];
  v58 = swift_allocObject();
  *(v58 + 16) = 0;
  *(v58 + 24) = v53;
  *(v58 + 32) = v56;
  *(v58 + 40) = 1;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_1000275EC;
  *(v59 + 24) = v58;
  v132 = sub_1000ACB04;
  v133 = v59;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026610;
  v131 = &unk_100895C30;
  v60 = _Block_copy(aBlock);
  v124 = v53;
  v61 = v56;

  [v55 enumerateAttributesInRange:0 options:v57 usingBlock:{0x100000, v60}];

  _Block_release(v60);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_20;
  }

  v63 = v94;
  sub_10076D7EC();
  v64 = v95;
  sub_10076D79C();
  v65 = *(v97 + 8);
  v66 = v98;
  v65(v63, v98);
  sub_10076D7AC();
  v65(v64, v66);
  sub_10076DA5C();
  v119 = v61;
  sub_10076DAAC();
  v67 = sub_10076100C();
  v69 = v68;
  v70 = sub_100760FBC();
  v71 = v99;
  sub_100760FEC();
  v72 = sub_1003DAB0C(v67, v69, v70, v71);

  (*(v100 + 8))(v71, v101);
  v118 = v72;
  isEscapingClosureAtFileLocation = v102;
  sub_10076DD2C();
  v53 = v115;
  if (qword_100940D00 != -1)
  {
LABEL_20:
    swift_once();
  }

  v123 = v48;
  v73 = sub_10076D3DC();
  sub_10000A61C(v73, qword_1009A14F8);
  sub_10076DCFC();
  (*(v104 + 8))(isEscapingClosureAtFileLocation, v105);
  sub_10076DA5C();
  v74 = v106;
  sub_10076DABC();
  if (qword_100940390 != -1)
  {
    swift_once();
  }

  v75 = v110;
  v76 = sub_10000A61C(v110, qword_10099F7E0);
  (*(v109 + 16))(v111, v76, v75);
  v77 = v108;
  v131 = v108;
  v132 = &protocol witness table for LabelPlaceholder;
  v78 = sub_10000DB7C(aBlock);
  v79 = v107;
  v80 = *(v107 + 16);
  v81 = v120;
  v80(v78, v120, v77);
  v129[3] = v77;
  v129[4] = &protocol witness table for LabelPlaceholder;
  v82 = sub_10000DB7C(v129);
  v80(v82, v74, v77);
  v83 = v112;
  sub_10076515C();
  sub_10045A6B4(&qword_100957BD0, &type metadata accessor for ReviewSummaryLayout);
  v84 = v114;
  sub_10076D43C();
  swift_getOpaqueTypeConformance2();
  v85 = v124;
  v86 = v89;
  sub_10076E0FC();

  (*(v116 + 8))(v53, v86);
  (*(v113 + 8))(v83, v84);
  v87 = *(v79 + 8);
  v87(v74, v77);
  v87(v81, v77);
  (*(v122 + 8))(v126, v127);
  return (*(v121 + 8))(v128, v88);
}