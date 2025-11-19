uint64_t sub_199B5AD88@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v23 - v5;
  v7 = sub_199DF738C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v23 - v14;
  sub_199B5EAA0(v1 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_indexPathToMaintainForTransition, v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v21 = *(v8 + 32);
    v21(v15, v6, v7);
    v21(a1, v15, v7);
    goto LABEL_9;
  }

  sub_199A79A04(v6, &qword_1EAF75C30);
  v16 = *(v1 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemIndexPathsToDelete);
  if (!*(v16 + 16))
  {
    v22 = 1;
    return (*(v8 + 56))(a1, v22, 1, v7);
  }

  (*(v8 + 16))(v11, v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);
  sub_199B5C204();
  if ((v17 & 1) == 0)
  {
    (*(v8 + 32))(a1, v11, v7);
    goto LABEL_9;
  }

  v18 = sub_199DF736C();
  v19 = __OFSUB__(v18, 1);
  result = v18 - 1;
  if (!v19)
  {
    MEMORY[0x19A8F5110](result, 0);
    (*(v8 + 8))(v11, v7);
LABEL_9:
    v22 = 0;
    return (*(v8 + 56))(a1, v22, 1, v7);
  }

  __break(1u);
  return result;
}

void sub_199B5B0D0()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v109 - v5;
  v7 = sub_199DF738C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v118 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v109 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v109 - v17;
  v19 = type metadata accessor for CNAvatarPosterPairCollectionViewLayout();
  v140.receiver = v2;
  v140.super_class = v19;
  objc_msgSendSuper2(&v140, sel_prepareLayout);
  v20 = [v2 collectionView];
  if (!v20)
  {
    return;
  }

  v114 = v6;
  v115 = v14;
  v117 = v20;
  [v20 bounds];
  v22 = v21 * 0.7;
  *&v135 = v23;
  v24 = v23 * 0.7;
  v25 = &v2[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemSize];
  *v25 = v21 * 0.7;
  v25[1] = v23 * 0.7;
  v116 = v25;
  *&v136 = v21;
  v26 = v21 * 0.3;
  v27 = v21 * 0.3 / -3.8;
  if (*&v2[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_mode] != 1)
  {
    v27 = 0.0;
  }

  v110 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_minimumInterimSpacing;
  v128 = v27;
  *&v2[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_minimumInterimSpacing] = v27;
  v28 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedAttributes;
  swift_beginAccess();
  v29 = MEMORY[0x1E69E7CC0];
  *&v2[v28] = MEMORY[0x1E69E7CC0];

  v30 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedSupplementaryFooterAttributes;
  swift_beginAccess();
  *&v2[v30] = v29;

  v31 = *&v2[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemRevealProgressProvider];
  if (v31)
  {

    v33 = (v31)(v32);
    sub_199A9A5FC(v31);
  }

  else
  {
    v33 = sub_199B4B6FC(MEMORY[0x1E69E7CC0]);
  }

  *&v2[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemRevealProgresses] = v33;

  v34 = &v2[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_contentBounds];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = *&v135;
  *(v34 + 2) = v136;
  *(v34 + 3) = v35;
  v36 = v117;
  v37 = [v117 numberOfItemsInSection_];
  v149.size.height = v116[1];
  tx = (v35 - v149.size.height) * 0.5;
  v113 = v26 * 0.5;
  v39 = 0.0;
  v149.origin.x = 0.0;
  v149.origin.y = tx;
  x = v26 * 0.5 - v128;
  v149.size.width = x;
  height = v149.size.height;
  *v34 = CGRectUnion(*v34, v149);
  if (v37 < 0)
  {
    goto LABEL_87;
  }

  v130 = v7;
  v129 = v37;
  v134 = v28;
  if (v37)
  {
    v124 = *&v136 * 0.5;
    v123 = *&v135 * 0.5;
    v42 = (*&v135 - v24) / 2.8;
    v43 = objc_opt_self();
    v44 = v8;
    v45 = 0;
    v121 = *MEMORY[0x1E69DDC00];
    v112 = v44;
    v120 = (*&v44 + 8);
    v119 = 0.7;
    v111 = tx;
    v46 = tx;
    v47 = x;
    v48 = height;
    v127 = v22;
    v126 = v24;
    v125 = v42;
    v122 = v30;
    do
    {
      v49 = v39;
      v50 = v128 + CGRectGetMaxX(*(&v46 - 1));
      v142.origin.x = v50;
      v142.origin.y = v42;
      v142.size.width = v22;
      v142.size.height = v24;
      v51 = CGRectGetMidX(v142) - v124;
      v143.origin.x = v50;
      v143.origin.y = v42;
      v143.size.width = v22;
      v143.size.height = v24;
      v52 = CGRectGetMidY(v143) - v123;
      MEMORY[0x19A8F5130](v45, 0);
      v53 = sub_199DF730C();
      v54 = v43;
      v55 = [v43 layoutAttributesForCellWithIndexPath_];

      [v55 setFrame_];
      swift_beginAccess();
      v56 = v55;
      MEMORY[0x19A8F7E80]();
      if (*((*&v2[v28] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v28] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_199DFA0EC();
      }

      v133 = v50;
      sub_199DFA10C();
      swift_endAccess();
      v57 = sub_199DF736C();
      v58 = COERCE_DOUBLE(sub_199B5C420(v57));
      v60 = 0;
      if (v59)
      {
        v58 = 0.0;
      }

      v132 = v58;
      v61 = v121;
      v62 = sub_199DF730C();
      v63 = v54;
      v64 = [v54 layoutAttributesForSupplementaryViewOfKind:v61 withIndexPath:v62];

      v65 = [v2 collectionView];
      if (v65)
      {
        v66 = v65;
        v67 = [v65 traitCollection];

        [v67 displayScale];
        v60 = v68;
      }

      v131 = v60;
      CGAffineTransformMakeScale(&v141, v119, v119);
      v144.origin.x = v51;
      v144.origin.y = v52;
      v69 = *&v136;
      *&v144.size.width = v136;
      v70 = *&v135;
      *&v144.size.height = v135;
      CGRectApplyAffineTransform(v144, &v141);
      UIRectCenteredIntegralRectScale();
      v71 = v51;
      v73 = v72;
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v145.origin.x = v71;
      v145.origin.y = v52;
      v145.size.width = v69;
      v145.size.height = v70;
      CGRectGetHeight(v145);
      v146.origin.x = v73;
      v146.origin.y = v75;
      v146.size.width = v77;
      v146.size.height = v79;
      CGRectGetMaxY(v146);
      UIRectRoundToScale();
      [v64 setFrame_];
      v80 = v132;
      [v64 setAlpha_];
      if (v80 <= 0.75)
      {
        v81 = 0;
      }

      else
      {
        v81 = 250;
      }

      [v64 setZIndex_];
      v82 = v122;
      swift_beginAccess();
      v83 = v64;
      MEMORY[0x19A8F7E80]();
      if (*((*&v2[v82] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v82] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_199DFA0EC();
      }

      ++v45;
      sub_199DFA10C();
      swift_endAccess();
      v39 = v133;
      v150.origin.x = v133;
      v42 = v125;
      v150.origin.y = v125;
      v22 = v127;
      v150.size.width = v127;
      v24 = v126;
      v150.size.height = v126;
      v147 = CGRectUnion(*v34, v150);
      x = v147.origin.x;
      y = v147.origin.y;
      width = v147.size.width;
      ty = v147.size.height;

      v7 = v130;
      (*v120)(v18, v130);
      *v34 = x;
      *(v34 + 1) = y;
      v46 = v42;
      v47 = v22;
      v48 = v24;
      *(v34 + 2) = width;
      *(v34 + 3) = ty;
      v37 = v129;
      v43 = v63;
      v28 = v134;
    }

    while (v129 != v45);
    v86 = v22;
    v36 = v117;
    v8 = v112;
    tx = v111;
  }

  else
  {
    v42 = tx;
    v24 = height;
    v86 = x;
  }

  v87 = v39;
  v88 = v42;
  v89 = v24;
  v151.origin.x = CGRectGetMaxX(*(&v86 - 2));
  v151.size.height = v116[1];
  v151.origin.y = tx;
  v151.size.width = v113;
  *v34 = CGRectUnion(*v34, v151);
  [v36 contentOffset];
  height = v90;
  v31 = v114;
  sub_199B5AD88(v114);
  v91 = (*(*&v8 + 48))(v31, 1, v7);
  v36 = v115;
  if (v91 != 1)
  {
    (*(*&v8 + 32))(v115, v31, v7);
    v92 = sub_199DF737C();
    if (v92 + 0x4000000000000000 < 0)
    {
      goto LABEL_88;
    }

    v31 = v92;
    v93 = sub_199DF736C();
    v28 = v93 + 2 * v31;
    if (__OFADD__(v93, 2 * v31))
    {
LABEL_89:
      __break(1u);
    }

    else
    {
      v94 = *&v2[v134];
      if (!(v94 >> 62))
      {
        v95 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_30;
      }
    }

    v95 = sub_199DFA87C();
    if ((v95 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_92;
    }

LABEL_30:
    if (v28 >= v95)
    {
      (*(*&v8 + 8))(v36, v7);
      goto LABEL_37;
    }

    v31 = *&v2[v134];
    if ((v31 & 0xC000000000000001) == 0)
    {
      if (v28 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_94;
      }

      v28 = *(v31 + 8 * v28 + 32);
LABEL_34:
      [v28 frame];
      x = CGRectGetMinX(v148);
      if (x == 0.0)
      {
        (*(*&v8 + 8))(v36, v7);

        height = x;
LABEL_37:
        v28 = v134;
        goto LABEL_38;
      }

      tx = *v116;
      ty = *(v34 + 2);
      v104 = *&v2[v134];
      if (!(v104 >> 62))
      {
        v105 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v105)
        {
          goto LABEL_65;
        }

        goto LABEL_74;
      }

LABEL_94:
      v105 = sub_199DFA87C();
      if (v105 < 0)
      {
        __break(1u);
      }

      v7 = v130;
      v37 = v129;
      v36 = v115;
      if (v105)
      {
LABEL_65:
        height = 0.0;
        while (1)
        {
          v106 = v105 == 1 ? *&v2[v110] * 0.5 : *&v2[v110];
          v107 = height + tx + v106;
          if (x < v107 && v107 < ty)
          {
            break;
          }

          height = v107;
          if (!--v105)
          {
            goto LABEL_74;
          }
        }

        ty = v107;
        goto LABEL_76;
      }

LABEL_74:
      height = 0.0;
LABEL_76:

      (*(*&v8 + 8))(v36, v7);
      v28 = v134;
      if (vabdd_f64(height, x) >= vabdd_f64(ty, x))
      {
        if (*(v34 + 2) - tx >= ty)
        {
          height = ty;
        }

        else
        {
          height = *(v34 + 2) - tx;
        }
      }

      goto LABEL_38;
    }

LABEL_92:
    sub_199DF81AC();
    v28 = MEMORY[0x19A8F8520](v28, v31);

    goto LABEL_34;
  }

  sub_199A79A04(v31, &qword_1EAF75C30);
LABEL_38:
  if (v37)
  {
    v36 = 0;
    *&v96 = COERCE_DOUBLE(llround(height / v22));
    v97 = __OFSUB__(0, v96) && v96 < 0;
    v34 = (*&v8 + 8);
    if (v96 < 0)
    {
      v96 = -v96;
    }

    v133 = *&v96;
    v7 = 100;
    x = round(height / v22);
    v31 = &selRef_setTitleLabel_;
    do
    {
      if (v22 == 0.0)
      {
        v8 = 0.0;
      }

      else
      {
        if ((*&x & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_83;
        }

        if (x <= -9.22337204e18)
        {
          goto LABEL_84;
        }

        if (x >= 9.22337204e18)
        {
          goto LABEL_85;
        }

        v8 = v133;
        if (v97)
        {
          goto LABEL_86;
        }
      }

      v28 = *&v2[v28];
      if ((v28 & 0xC000000000000001) != 0)
      {
        sub_199DF81AC();
        v37 = MEMORY[0x19A8F8520](v36, v28);

        v98 = 100 - v36;
        if (__OFSUB__(100, v36))
        {
          goto LABEL_60;
        }
      }

      else
      {
        if ((v36 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        if (v36 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_81;
        }

        v37 = *(v28 + 8 * v36 + 32);
        v98 = 100 - v36;
        if (__OFSUB__(100, v36))
        {
LABEL_60:
          __break(1u);
          break;
        }
      }

      if (__OFSUB__(v98, *&v8))
      {
        goto LABEL_82;
      }

      [v37 setZIndex_];
      v8 = *&v118;
      MEMORY[0x19A8F5130](v36, 0);
      [v37 frame];
      sub_199B5BF3C(&v141, v99, v100, v101, v102, height);
      tx = v141.tx;
      ty = v141.ty;
      v103 = *v34;
      v136 = *&v141.a;
      v135 = *&v141.c;
      v103(*&v8, v130);
      v137[1] = v135;
      v137[0] = v136;
      v138 = tx;
      v139 = ty;
      [v37 setTransform_];

      ++v36;
      v28 = v134;
    }

    while (v129 != v36);
  }
}

void sub_199B5BF3C(__int128 *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, double a6@<D4>)
{
  v13 = [v6 collectionView];
  v14 = xmmword_199E416B0;
  v15 = xmmword_199E416C0;
  v16 = 0uLL;
  if (v13)
  {
    v17 = v13;
    v53.origin.x = a2;
    v53.origin.y = a3;
    v53.size.width = a4;
    v53.size.height = a5;
    if (CGRectIsEmpty(v53))
    {

      v15 = xmmword_199E416C0;
      v14 = xmmword_199E416B0;
      v16 = 0uLL;
    }

    else
    {
      v18 = v17;
      [v18 bounds];
      v20 = v19;
      v21 = [v18 traitCollection];

      [v21 displayScale];
      v54.origin.x = a2;
      v54.origin.y = a3;
      v54.size.width = a4;
      v54.size.height = a5;
      v22 = v20 * 0.5 + a6 - CGRectGetMidX(v54);
      v23 = v20 * -0.0365;
      v24 = fabs(v22 / (a4 * 0.33));
      if (v24 <= 1.0)
      {
        v23 = v23 * v24;
      }

      if (v22 <= 0.0)
      {
        v25 = -0.1085;
      }

      else
      {
        v25 = -0.009;
      }

      v47 = v23 + v22 * v25;
      v26 = 0.0;
      v27 = 0.7;
      if (a4 <= 0.0)
      {
        v28 = 0.0;
        v29 = 0.7;
      }

      else
      {
        v28 = 0.0;
        v29 = 0.7;
        if (a5 > 0.0)
        {
          CGAffineTransformMakeScale(&t1, 0.7, 0.7);
          v55.origin.x = a2;
          v55.origin.y = a3;
          v55.size.width = a4;
          v55.size.height = a5;
          CGRectApplyAffineTransform(v55, &t1);
          BSSizeRoundForScale();
          v29 = v30 / a4;
          v27 = v31 / a5;
          BSRectWithSize();
          UIRectCenteredRect();
          v33 = v32;
          v35 = v34;
          BSRectRoundForScale();
          v26 = v36 - v35;
          v28 = v37 - v33;
        }
      }

      CGAffineTransformMakeScale(&t1, v29, v27);
      tx = t1.tx;
      ty = t1.ty;
      v40 = v47 + v28;
      v45 = *&t1.c;
      v48 = *&t1.a;
      CGAffineTransformMakeTranslation(&t1, v40, v26);
      v41 = *&t1.a;
      v42 = *&t1.c;
      v43 = *&t1.tx;
      *&t1.a = v48;
      *&t1.c = v45;
      t1.tx = tx;
      t1.ty = ty;
      *&t2.a = v41;
      *&t2.c = v42;
      *&t2.tx = v43;
      CGAffineTransformConcat(&v50, &t1, &t2);
      v46 = *&v50.a;
      v49 = *&v50.c;
      v44 = *&v50.tx;

      v16 = v44;
      v15 = v46;
      v14 = v49;
    }
  }

  *a1 = v15;
  a1[1] = v14;
  a1[2] = v16;
}

void sub_199B5C204()
{
  v1 = v0;
  v2 = sub_199DF738C();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v2, v4).n128_u64[0];
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 collectionView];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 numberOfItemsInSection_];

    v11 = *&v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemIndexPathsToDelete];
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = __OFSUB__(v10, 1);
      v14 = v10 - 1;
      if (!v13)
      {
        v15 = v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
        v16 = v3 + 16;
        v26 = (v3 + 8);
        sub_199DF81AC();
        v17 = 0;
        while (v17 < *(v11 + 16))
        {
          (*(v3 + 16))(v7, v15 + *(v3 + 72) * v17, v2);
          if (sub_199DF736C() == v14)
          {
            v18 = v16;
            v19 = v15;
            v20 = v11;
            v21 = v12;
            v22 = v14;
            v23 = sub_199DF736C();
            (*v26)(v7, v2);
            v24 = v23 <= 0;
            v14 = v22;
            v12 = v21;
            v11 = v20;
            v15 = v19;
            v16 = v18;
            if (!v24)
            {
LABEL_12:

              return;
            }
          }

          else
          {
            (*v26)(v7, v2);
          }

          if (v12 == ++v17)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
      }

      __break(1u);
    }
  }
}

uint64_t sub_199B5C420(uint64_t a1)
{
  v3 = sub_199DF738C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v34 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  v26 = v1;
  v11 = *(v1 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemIndexPathsToDelete);
  v12 = *(v11 + 16);
  result = sub_199DF81AC();
  v33 = v12;
  if (v12)
  {
    v14 = 0;
    v31 = (v4 + 32);
    v32 = v4 + 16;
    v27 = (v4 + 8);
    v15 = MEMORY[0x1E69E7CC0];
    v29 = v3;
    v30 = a1;
    v28 = v11;
    while (v14 < *(v11 + 16))
    {
      v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v17 = *(v4 + 72);
      (*(v4 + 16))(v10, v11 + v16 + v17 * v14, v3);
      if (sub_199DF736C() > a1)
      {
        result = (*v27)(v10, v3);
      }

      else
      {
        v18 = *v31;
        (*v31)(v34, v10, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_199A9C70C(0, *(v15 + 16) + 1, 1);
          v15 = v35;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_199A9C70C(v20 > 1, v21 + 1, 1);
          v15 = v35;
        }

        *(v15 + 16) = v21 + 1;
        v3 = v29;
        result = (v18)(v15 + v16 + v21 * v17, v34, v29);
        a1 = v30;
        v11 = v28;
      }

      if (v33 == ++v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_13:

  v22 = *(v15 + 16);

  result = a1 + v22;
  if (__OFADD__(a1, v22))
  {
    goto LABEL_19;
  }

  v23 = *(v26 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemRevealProgresses);
  if (*(v23 + 16) && (v24 = sub_199B4AB20(result), (v25 & 1) != 0))
  {
    return *(*(v23 + 56) + 8 * v24);
  }

  else
  {
    return 0;
  }
}

char *sub_199B5C700(uint64_t a1)
{
  v3 = v1;
  v29 = sub_199DF738C();
  v5 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v25 - v11;
  v30 = a1;
  v13 = sub_199DF736C();
  v14 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedAttributes;
  swift_beginAccess();
  v15 = *&v14[v3];
  if (v15 >> 62)
  {
    goto LABEL_28;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v13 < v16)
  {
    v2 = *&v14[v3];
    if ((v2 & 0xC000000000000001) == 0)
    {
      if (v13 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v17 = *(v2 + 8 * v13 + 32);
        goto LABEL_7;
      }

      __break(1u);
LABEL_32:
      v19 = sub_199DFA87C();
      goto LABEL_11;
    }

    while (1)
    {
      sub_199DF81AC();
      v24 = MEMORY[0x19A8F8520](v13, v2);

      v17 = v24;
LABEL_7:
      v27 = v17;
      v13 = [v17 indexPath];
      sub_199DF732C();

      if (sub_199DF731C())
      {
        (*(v5 + 8))(v12, v29);
        return v27;
      }

      v3 = *&v14[v3];
      if (v3 >> 62)
      {
        goto LABEL_32;
      }

      v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:
      sub_199DF81AC();
      if (!v19)
      {
        break;
      }

      v26 = v12;
      v2 = 0;
      v28 = v3 & 0xC000000000000001;
      v12 = (v3 & 0xFFFFFFFFFFFFFF8);
      v20 = (v5 + 8);
      v25[1] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      while (1)
      {
        if (v28)
        {
          v21 = MEMORY[0x19A8F8520](v2, v3);
        }

        else
        {
          if (v2 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v21 = *(v3 + 8 * v2 + 32);
        }

        v14 = v21;
        v22 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        v23 = [v21 indexPath];
        sub_199DF732C();

        v5 = sub_199DF731C();
        v13 = *v20;
        (*v20)(v8, v29);
        if (v5)
        {
          (v13)(v26, v29);

          return v14;
        }

        ++v2;
        if (v22 == v19)
        {
          (v13)(v26, v29);
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      v16 = sub_199DFA87C();
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    (*(v5 + 8))(v12, v29);
LABEL_23:
  }

  return 0;
}

unint64_t sub_199B5CA68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_199DF736C();
  if (sub_199DF9F8C() == a1 && v7 == a2)
  {
  }

  else
  {
    v9 = sub_199DFA99C();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedSupplementaryFooterAttributes;
  swift_beginAccess();
  v11 = *(v3 + v10);
  if (v11 >> 62)
  {
    result = sub_199DFA87C();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_18;
    }
  }

  else
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 >= result)
  {
    return 0;
  }

  v10 = *(v3 + v10);
  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_18:
    sub_199DF81AC();
    v13 = MEMORY[0x19A8F8520](v6, v10);

    return v13;
  }

  if (v6 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v10 + 8 * v6 + 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_199B5CBCC(uint64_t a1)
{
  v2 = v1;
  v54 = sub_199DF738C();
  v4 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v5);
  v48[0] = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v48 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v48 - v13;
  v15 = *&v2[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemIndexPathsToDelete];
  v16 = *(v15 + 16);
  if (v16)
  {
    v49 = a1;
    v50 = v2;
    v51 = v10;
    v52 = v4;
    v18 = *(v4 + 16);
    v17 = v4 + 16;
    v53 = v18;
    v19 = v15 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v20 = *(v17 + 56);
    v48[1] = v15;
    sub_199DF81AC();
    v21 = MEMORY[0x1E69E7CC0];
    do
    {
      v22 = v54;
      v53(v14, v19, v54);
      v23 = sub_199DF736C();
      (*(v17 - 8))(v14, v22);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_199AB2840(0, *(v21 + 2) + 1, 1, v21);
      }

      v25 = *(v21 + 2);
      v24 = *(v21 + 3);
      if (v25 >= v24 >> 1)
      {
        v21 = sub_199AB2840((v24 > 1), v25 + 1, 1, v21);
      }

      *(v21 + 2) = v25 + 1;
      *&v21[8 * v25 + 32] = v23;
      v19 += v20;
      --v16;
    }

    while (v16);

    v10 = v51;
    v4 = v52;
    v2 = v50;
    a1 = v49;
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  v26 = sub_199DF736C();
  v27 = *(v21 + 2);
  v28 = 32;
  do
  {
    if (!v27)
    {

      v46 = sub_199DF730C();
      v47 = type metadata accessor for CNAvatarPosterPairCollectionViewLayout();
      v55.receiver = v2;
      v55.super_class = v47;
      a = COERCE_DOUBLE(objc_msgSendSuper2(&v55, sel_finalLayoutAttributesForDisappearingItemAtIndexPath_, v46));

      return *&a;
    }

    v29 = *&v21[v28];
    v28 += 8;
    --v27;
  }

  while (v29 != v26);

  (*(v4 + 16))(v10, a1, v54);
  sub_199B5C204();
  v31 = v30;
  if ((v30 & 1) == 0)
  {
    goto LABEL_16;
  }

  result = sub_199DF734C();
  v33 = result - 1;
  if (!__OFSUB__(result, 1))
  {
    v34 = sub_199DF737C();
    v35 = v48[0];
    MEMORY[0x19A8F5110](v33, v34);
    v36 = v54;
    (*(v4 + 8))(v10, v54);
    (*(v4 + 32))(v10, v35, v36);
LABEL_16:
    v37 = sub_199DF730C();
    v38 = [v2 layoutAttributesForItemAtIndexPath_];

    if (v38 && ([v38 copy], v38, sub_199DFA66C(), swift_unknownObjectRelease(), sub_199B5EB58(), (swift_dynamicCast() & 1) != 0))
    {
      a = v56.a;
      if (v31)
      {
        v40 = sub_199DF730C();
        v41 = [v2 layoutAttributesForItemAtIndexPath_];

        if (v41)
        {
          [v41 transform];
          [*&a setTransform_];
        }
      }

      v42 = [v2 collectionView];
      if (v42)
      {
        v43 = v42;
        [v42 bounds];
        v45 = v44;
      }

      else
      {
        v45 = 0.0;
      }

      [*&a transform];
      CGAffineTransformTranslate(&v56, &v57, 0.0, v45 / -0.7);
      v57 = v56;
      [*&a setTransform_];
      [*&a setZIndex_];
      (*(v4 + 8))(v10, v54);
    }

    else
    {
      (*(v4 + 8))(v10, v54);
      a = 0.0;
    }

    return *&a;
  }

  __break(1u);
  return result;
}

id sub_199B5D13C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = sub_199DF738C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF732C();
  v11 = a1;
  v12 = a4(v10);

  (*(v7 + 8))(v10, v6);

  return v12;
}

uint64_t sub_199B5D244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v56 = sub_199DF738C();
  v8 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v9);
  v47 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v46 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v46 - v17;
  v19 = *&v4[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemIndexPathsToDelete];
  v20 = *(v19 + 16);
  if (v20)
  {
    v49 = a3;
    v50 = a1;
    v51 = a2;
    v52 = v4;
    v53 = v14;
    v54 = v8;
    v55 = *(v8 + 16);
    v21 = v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v22 = *(v8 + 72);
    v23 = (v8 + 8);
    v48 = v19;
    sub_199DF81AC();
    v24 = MEMORY[0x1E69E7CC0];
    do
    {
      v25 = v56;
      v55(v18, v21, v56);
      v26 = sub_199DF736C();
      (*v23)(v18, v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_199AB2840(0, *(v24 + 2) + 1, 1, v24);
      }

      v28 = *(v24 + 2);
      v27 = *(v24 + 3);
      if (v28 >= v27 >> 1)
      {
        v24 = sub_199AB2840((v27 > 1), v28 + 1, 1, v24);
      }

      *(v24 + 2) = v28 + 1;
      *&v24[8 * v28 + 32] = v26;
      v21 += v22;
      --v20;
    }

    while (v20);

    v14 = v53;
    v8 = v54;
    v4 = v52;
    a3 = v49;
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  v29 = sub_199DF736C();
  v30 = *(v24 + 2);
  v31 = 32;
  do
  {
    if (!v30)
    {

      v43 = sub_199DF9F5C();
      v44 = sub_199DF730C();
      v45 = type metadata accessor for CNAvatarPosterPairCollectionViewLayout();
      v57.receiver = v4;
      v57.super_class = v45;
      v42 = objc_msgSendSuper2(&v57, sel_finalLayoutAttributesForDisappearingSupplementaryElementOfKind_atIndexPath_, v43, v44);

      return v42;
    }

    v32 = *&v24[v31];
    v31 += 8;
    --v30;
  }

  while (v32 != v29);

  (*(v8 + 16))(v14, a3, v56);
  sub_199B5C204();
  if ((v33 & 1) == 0)
  {
    goto LABEL_16;
  }

  result = sub_199DF734C();
  v35 = result - 1;
  if (!__OFSUB__(result, 1))
  {
    v36 = sub_199DF737C();
    v37 = v47;
    MEMORY[0x19A8F5110](v35, v36);
    v38 = v56;
    (*(v8 + 8))(v14, v56);
    (*(v8 + 32))(v14, v37, v38);
LABEL_16:
    v39 = sub_199DF9F5C();
    v40 = sub_199DF730C();
    v41 = [v4 layoutAttributesForSupplementaryViewOfKind:v39 atIndexPath:v40];

    if (v41 && ([v41 copy], v41, sub_199DFA66C(), swift_unknownObjectRelease(), sub_199B5EB58(), (swift_dynamicCast() & 1) != 0))
    {
      v42 = v58;
      [v58 setAlpha_];
      [v42 setZIndex_];
      (*(v8 + 8))(v14, v56);
    }

    else
    {
      (*(v8 + 8))(v14, v56);
      return 0;
    }

    return v42;
  }

  __break(1u);
  return result;
}

id sub_199B5D6C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, char *))
{
  v7 = sub_199DF738C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_199DF9F8C();
  v14 = v13;
  sub_199DF732C();
  v15 = a1;
  v16 = a5(v12, v14, v11);

  (*(v8 + 8))(v11, v7);

  return v16;
}

uint64_t sub_199B5D860(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v94 = sub_199DF738C();
  v11 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v12);
  v93 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v86 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v86 - v20;
  v96 = MEMORY[0x1E69E7CC0];
  v22 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedAttributes;
  swift_beginAccess();
  v95 = v5;
  v23 = *(v5 + v22);
  if (v23 >> 62)
  {
    v24 = sub_199DFA87C();
    if (v24 < 0)
    {
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v24)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = v95;
  v25 = sub_199B5E668(0, v24 - 1, a1, a2, a3, a4);
  if (v26)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = v25;
  if (v25 < 0)
  {
    goto LABEL_47;
  }

  v5 = *&v95[v22];
  v4 = v5 >> 62;
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v25)
    {
      goto LABEL_9;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    v52 = sub_199DFA87C();
    v6 = v89;
    if (v52 < v89)
    {
      goto LABEL_58;
    }

    v21 = v52;
    if (sub_199DFA87C() < v6)
    {
      goto LABEL_59;
    }

    if (sub_199DFA87C() >= v21)
    {
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_55;
  }

LABEL_48:
  if (sub_199DFA87C() < 0)
  {
    goto LABEL_57;
  }

  if (sub_199DFA87C() < v6)
  {
    goto LABEL_50;
  }

LABEL_9:
  v91 = v22;
  if ((v5 & 0xC000000000000001) == 0 || v6 == 0)
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    sub_199B5EB58();
    swift_bridgeObjectRetain_n();
    v29 = 0;
    do
    {
      v30 = v29 + 1;
      sub_199DFA73C();
      v29 = v30;
    }

    while (v6 != v30);
  }

  v87 = v17;
  v89 = v6;
  if (v4)
  {
    v88 = sub_199DFA88C();
    v32 = v34;
    v31 = v35;
    v37 = v36;

    v33 = v37 >> 1;
  }

  else
  {
    v31 = 0;
    v88 = v5 & 0xFFFFFFFFFFFFFF8;
    v32 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    v33 = v6;
  }

  v90 = v11;
  if (v33 != v31)
  {
    v38 = (v11 + 8);
    v92 = MEMORY[0x1E69E7CC0];
    v39 = v33;
    while (!__OFSUB__(v39--, 1))
    {
      if (v39 < v31 || v39 >= v33)
      {
        goto LABEL_43;
      }

      v41 = *(v32 + 8 * v39);
      [v41 frame];
      MaxX = CGRectGetMaxX(v97);
      v98.origin.x = a1;
      v98.origin.y = a2;
      v98.size.width = a3;
      v98.size.height = a4;
      if (CGRectGetMinX(v98) > MaxX)
      {

        goto LABEL_34;
      }

      v43 = [v41 indexPath];
      sub_199DF732C();

      v44 = [v95 collectionView];
      if (v44)
      {
        v45 = v44;
        v46 = sub_199DF736C();
        v47 = [v45 numberOfItemsInSection_];

        (*v38)(v21, v94);
        if (v46 < v47)
        {
          v48 = v41;
          MEMORY[0x19A8F7E80]();
          if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_199DFA0EC();
          }

          sub_199DFA10C();

          v92 = v96;
        }

        else
        {
        }
      }

      else
      {

        (*v38)(v21, v94);
      }

      if (v39 == v31)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
  }

  v92 = MEMORY[0x1E69E7CC0];
LABEL_34:
  swift_unknownObjectRelease();
  v5 = *&v95[v91];
  v4 = v5 >> 62;
  if (v5 >> 62)
  {
    goto LABEL_51;
  }

  v21 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = v89;
  v49 = v90;
  if (v21 < v89)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    while (v6 != v21)
    {
      if (v6 < v21)
      {
        sub_199B5EB58();
        swift_bridgeObjectRetain_n();
        v50 = v6;
        do
        {
          v51 = v50 + 1;
          sub_199DFA73C();
          v50 = v51;
        }

        while (v21 != v51);
        goto LABEL_62;
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v49 = v90;
      if ((v5 & 0xC000000000000001) == 0)
      {
        break;
      }
    }
  }

  swift_bridgeObjectRetain_n();
LABEL_62:

  if (v4)
  {
    v53 = sub_199DFA88C();
    v91 = v54;
    v6 = v55;
    v57 = v56;

    v21 = v57 >> 1;
  }

  else
  {
    v53 = v5 & 0xFFFFFFFFFFFFFF8;
    v91 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
  }

  v58 = v87;
  swift_unknownObjectRetain();
  if (v6 != v21)
  {
    v59 = (v49 + 8);
    v88 = v21 - 1;
    v89 = v53;
    v60 = v6;
    while (1)
    {
      v61 = v60;
      while (1)
      {
        if (v60 < v6 || v61 >= v21)
        {
          goto LABEL_105;
        }

        v62 = *(v91 + 8 * v61);
        [v62 frame];
        MinX = CGRectGetMinX(v99);
        v100.origin.x = a1;
        v100.origin.y = a2;
        v100.size.width = a3;
        v100.size.height = a4;
        if (MinX > CGRectGetMaxX(v100))
        {

          goto LABEL_81;
        }

        v64 = [v62 indexPath];
        sub_199DF732C();

        v65 = [v95 collectionView];
        v66 = v58;
        if (v65)
        {
          break;
        }

        (*v59)(v58, v94);
LABEL_69:
        if (v21 == ++v61)
        {
          goto LABEL_81;
        }
      }

      v67 = v65;
      v68 = sub_199DF736C();
      v69 = [v67 numberOfItemsInSection_];

      (*v59)(v66, v94);
      v58 = v66;
      if (v68 >= v69)
      {
        break;
      }

      v70 = v62;
      MEMORY[0x19A8F7E80]();
      if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_199DFA0EC();
      }

      v60 = v61 + 1;
      sub_199DFA10C();

      v92 = v96;
      if (v88 == v61)
      {
        goto LABEL_81;
      }
    }

    goto LABEL_69;
  }

LABEL_81:
  swift_unknownObjectRelease_n();
  v21 = v92;
  if (v92 >> 62)
  {
    goto LABEL_106;
  }

  for (i = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_199DFA87C())
  {
    v72 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedSupplementaryFooterAttributes;
    sub_199DF81AC();
    v91 = v72;
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v73 = 0;
    v74 = v21 & 0xC000000000000001;
    v75 = v21 & 0xFFFFFFFFFFFFFF8;
    v76 = (v90 + 8);
    while (1)
    {
      if (v74)
      {
        v77 = MEMORY[0x19A8F8520](v73, v21);
      }

      else
      {
        if (v73 >= *(v75 + 16))
        {
          goto LABEL_102;
        }

        v77 = *(v21 + 8 * v73 + 32);
      }

      v78 = v77;
      v79 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        break;
      }

      v80 = i;
      v81 = [v77 indexPath];
      v82 = v93;
      sub_199DF732C();

      v83 = sub_199DF736C();
      (*v76)(v82, v94);
      v21 = *&v95[v91];
      if ((v21 & 0xC000000000000001) != 0)
      {
        sub_199DF81AC();
        MEMORY[0x19A8F8520](v83, v21);
      }

      else
      {
        if ((v83 & 0x8000000000000000) != 0)
        {
          goto LABEL_103;
        }

        if (v83 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_104;
        }

        v84 = *(v21 + 8 * v83 + 32);
      }

      MEMORY[0x19A8F7E80](v84);
      v21 = v92;
      if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_199DFA0EC();
        v21 = v92;
      }

      sub_199DFA10C();

      ++v73;
      i = v80;
      if (v79 == v80)
      {
        v85 = v96;
        goto LABEL_100;
      }
    }

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
    ;
  }

  v85 = v21;
LABEL_100:

  return v85;
}

unint64_t sub_199B5E274(CGFloat MinX)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v28[-v8];
  v10 = sub_199DF738C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_199B5AD88(v9);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v14, v9, v10);
    v16 = v14;
    v17 = sub_199DF737C();
    if (v17 + 0x4000000000000000 < 0)
    {
      __break(1u);
    }

    else
    {
      v9 = v17;
      v18 = sub_199DF736C();
      v16 = v18 + 2 * v9;
      if (!__OFADD__(v18, 2 * v9))
      {
        v9 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedAttributes;
        swift_beginAccess();
        v19 = *(v4 + v9);
        if (!(v19 >> 62))
        {
          result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_8;
        }

LABEL_32:
        result = sub_199DFA87C();
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_34;
        }

LABEL_8:
        if (v16 >= result)
        {
          v22 = *(v11 + 8);
          v11 += 8;
          result = v22(v14, v10);
          if (MinX != 0.0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v9 = *(v4 + v9);
          if ((v9 & 0xC000000000000001) != 0)
          {
            goto LABEL_36;
          }

          if (v16 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v20 = *(v9 + 8 * v16 + 32);
            goto LABEL_12;
          }

          __break(1u);
        }

        return result;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  result = sub_199A79A04(v9, &qword_1EAF75C30);
  if (MinX != 0.0)
  {
LABEL_15:
    while (1)
    {
      v2 = *(v4 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemSize);
      v16 = v4 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_contentBounds;
      v3 = *(v4 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_contentBounds + 16);
      v10 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedAttributes;
      swift_beginAccess();
      v23 = *(v4 + v10);
      if (!(v23 >> 62))
      {
        break;
      }

LABEL_34:
      result = sub_199DFA87C();
      if ((result & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }

      __break(1u);
LABEL_36:
      sub_199DF81AC();
      v20 = MEMORY[0x19A8F8520](v16, v9);

LABEL_12:
      [v20 frame];
      MinX = CGRectGetMinX(v29);

      v21 = *(v11 + 8);
      v11 += 8;
      result = v21(v14, v10);
      if (MinX == 0.0)
      {
        return result;
      }
    }

    result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:
    if (result)
    {
      v24 = 0.0;
      do
      {
        if (result == 1)
        {
          v25 = *(v4 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_minimumInterimSpacing) * 0.5;
        }

        else
        {
          v25 = *(v4 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_minimumInterimSpacing);
        }

        v26 = v24 + v2 + v25;
        if (MinX < v26 && v26 < v3)
        {
          break;
        }

        v24 = v26;
        --result;
      }

      while (result);
    }
  }

  return result;
}

uint64_t sub_199B5E668(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (a2 < a1)
  {
    return 0;
  }

  v15 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_16;
  }

  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v9 = a1;
  v8 = a2;
  v6 = v15 / 2;
  v16 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedAttributes;
  result = swift_beginAccess();
  v10 = *(v7 + v16);
  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_16:
    sub_199DF81AC();
    v18 = MEMORY[0x19A8F8520](v6, v10);

LABEL_8:
    [v18 frame];
    v29.origin.x = v14;
    v29.origin.y = v13;
    v29.size.width = v12;
    v29.size.height = v11;
    if (CGRectIntersectsRect(v26, v29))
    {
    }

    else
    {
      [v18 frame];
      MaxX = CGRectGetMaxX(v27);
      v28.origin.x = v14;
      v28.origin.y = v13;
      v28.size.width = v12;
      v28.size.height = v11;
      if (MaxX <= CGRectGetMinX(v28))
      {
        v25 = v6 + 1;
        v20.n128_f64[0] = v14;
        v21.n128_f64[0] = v13;
        v22.n128_f64[0] = v12;
        v24 = v8;
        v23.n128_f64[0] = v11;
      }

      else
      {
        v24 = v6 - 1;
        v20.n128_f64[0] = v14;
        v21.n128_f64[0] = v13;
        v22.n128_f64[0] = v12;
        v23.n128_f64[0] = v11;
        v25 = v9;
      }

      v6 = sub_199B5E668(v25, v24, v20, v21, v22, v23);
    }

    return v6;
  }

  if (v15 < -1)
  {
    __break(1u);
  }

  else if (v6 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v10 + 8 * v6 + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id sub_199B5E850()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CNAvatarPosterPairCollectionViewLayout()
{
  result = qword_1EAF75B00;
  if (!qword_1EAF75B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_199B5E970()
{
  sub_199B5EA48();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_199B5EA48()
{
  if (!qword_1EAF75B10)
  {
    sub_199DF738C();
    v0 = sub_199DFA63C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF75B10);
    }
  }
}

uint64_t sub_199B5EAA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B5EB10(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_199B5EB58()
{
  result = qword_1EAF75B30;
  if (!qword_1EAF75B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF75B30);
  }

  return result;
}

void sub_199B5EBA4()
{
  v1 = (v0 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemRevealProgressProvider);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemSize);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_minimumInterimSpacing) = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_scrollDirection) = 1;
  *(v0 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cardSizeMultiplier) = 0x3FE6666666666666;
  *(v0 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_maximumVerticalRevealFraction) = 0x3FD0000000000000;
  v3 = (v0 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_contentBounds);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedAttributes) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedSupplementaryFooterAttributes) = v4;
  *(v0 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemRevealProgresses) = MEMORY[0x1E69E7CC8];
  *(v0 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemIndexPathsToDelete) = v4;
  v5 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_indexPathToMaintainForTransition;
  v6 = sub_199DF738C();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  sub_199DFA85C();
  __break(1u);
}

UIColor AvatarPosterConfiguration.backgroundColor.getter()
{
  sub_199A9E488();
  v0 = sub_199DF81AC();
  return UIColor.init(avatarColorDescription:)(v0);
}

ContactsUI::AvatarPosterConfiguration::UserInfoKey_optional __swiftcall AvatarPosterConfiguration.UserInfoKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_199DFA8DC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t AvatarPosterConfiguration.UserInfoKey.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_199B5EDD8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0xD00000000000001ALL;
  }

  if (v2)
  {
    v4 = "tactRelation";
  }

  else
  {
    v4 = "backgroundColorDescription";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0xD00000000000001ALL;
  }

  if (*a2)
  {
    v7 = "backgroundColorDescription";
  }

  else
  {
    v7 = "tactRelation";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_199DFA99C();
  }

  return v9 & 1;
}

uint64_t sub_199B5EE84()
{
  sub_199DFAA7C();
  sub_199DF9FEC();

  return sub_199DFAABC();
}

uint64_t sub_199B5EF04()
{
  sub_199DF9FEC();
}

uint64_t sub_199B5EF70()
{
  sub_199DFAA7C();
  sub_199DF9FEC();

  return sub_199DFAABC();
}

uint64_t sub_199B5EFEC@<X0>(char *a1@<X8>)
{
  v2 = sub_199DFA8DC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_199B5F04C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v1)
  {
    v3 = "backgroundColorDescription";
  }

  else
  {
    v3 = "tactRelation";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

ContactsUI::AvatarPosterConfiguration::ColorDescriptionKey_optional __swiftcall AvatarPosterConfiguration.ColorDescriptionKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_199DFA8DC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AvatarPosterConfiguration.ColorDescriptionKey.rawValue.getter()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x6168706C61;
  }

  if (*v0)
  {
    v1 = 0x6E65657267;
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

uint64_t sub_199B5F154()
{
  sub_199DFAA7C();
  sub_199DF9FEC();

  return sub_199DFAABC();
}

uint64_t sub_199B5F1FC()
{
  sub_199DF9FEC();
}

uint64_t sub_199B5F290()
{
  sub_199DFAA7C();
  sub_199DF9FEC();

  return sub_199DFAABC();
}

void sub_199B5F340(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 6579570;
  v4 = 0xE400000000000000;
  v5 = 1702194274;
  if (*v1 != 2)
  {
    v5 = 0x6168706C61;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E65657267;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

ContactsUI::AvatarPosterConfiguration::BoundingShape_optional __swiftcall AvatarPosterConfiguration.BoundingShape.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if ((rawValue + 1) < 4)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_199B5F3C8()
{
  v1 = *v0;
  sub_199DFAA7C();
  MEMORY[0x19A8F8860](v1 - 1);
  return sub_199DFAABC();
}

uint64_t sub_199B5F440()
{
  v1 = *v0;
  sub_199DFAA7C();
  MEMORY[0x19A8F8860](v1 - 1);
  return sub_199DFAABC();
}

uint64_t AvatarPosterConfiguration.backgroundColorDescription.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AvatarPosterConfiguration.avatarRecordData.getter()
{
  v1 = *(v0 + 8);
  sub_199AFF43C(v1, *(v0 + 16));
  return v1;
}

uint64_t AvatarPosterConfiguration.avatarRecordData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_199A9EF20(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t AvatarPosterConfiguration.avatarPoseData.getter()
{
  v1 = *(v0 + 24);
  sub_199AFF43C(v1, *(v0 + 32));
  return v1;
}

uint64_t AvatarPosterConfiguration.avatarPoseData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_199A9EF20(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t AvatarPosterConfiguration.avatarImageData.getter()
{
  v1 = *(v0 + 48);
  sub_199AFF43C(v1, *(v0 + 56));
  return v1;
}

uint64_t AvatarPosterConfiguration.avatarImageData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_199A9EF20(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

UIColor __swiftcall UIColor.init(avatarColorDescription:)(Swift::OpaquePointer avatarColorDescription)
{
  if (!*(avatarColorDescription._rawValue + 2))
  {
    v3 = 1.0;
    v4 = 1.0;
LABEL_14:
    v7 = 1.0;
LABEL_15:
    v10 = 1.0;
    goto LABEL_16;
  }

  v2 = sub_199AEF9E8(6579570, 0xE300000000000000);
  v3 = 1.0;
  v4 = 1.0;
  if (v5)
  {
    v4 = *(*(avatarColorDescription._rawValue + 7) + 8 * v2);
  }

  if (!*(avatarColorDescription._rawValue + 2))
  {
    goto LABEL_14;
  }

  v6 = sub_199AEF9E8(0x6E65657267, 0xE500000000000000);
  v7 = 1.0;
  if (v8)
  {
    v7 = *(*(avatarColorDescription._rawValue + 7) + 8 * v6);
  }

  if (!*(avatarColorDescription._rawValue + 2))
  {
    goto LABEL_15;
  }

  v9 = sub_199AEF9E8(1702194274, 0xE400000000000000);
  v10 = 1.0;
  if (v11)
  {
    v3 = *(*(avatarColorDescription._rawValue + 7) + 8 * v9);
  }

  if (*(avatarColorDescription._rawValue + 2))
  {
    v12 = sub_199AEF9E8(0x6168706C61, 0xE500000000000000);
    if (v13)
    {
      v10 = *(*(avatarColorDescription._rawValue + 7) + 8 * v12);
    }
  }

LABEL_16:

  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v14 initWithRed:v4 green:v7 blue:v3 alpha:v10];
}

uint64_t AvatarPosterConfiguration.init(backgroundColor:avatarRecordData:avatarPoseData:hasBody:avatarImageData:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *(a9 + 8) = xmmword_199E3FAE0;
  *(a9 + 24) = xmmword_199E3FAE0;
  *(a9 + 48) = xmmword_199E3FAE0;
  v18 = UIColor.avatarColorDescription.getter();

  *a9 = v18;
  sub_199A9EF20(0, 0xF000000000000000);
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  sub_199A9EF20(0, 0xF000000000000000);
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  result = sub_199A9EF20(0, 0xF000000000000000);
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

unint64_t UIColor.avatarColorDescription.getter()
{
  v9[17] = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9[0] = 0;
  v6 = 0;
  v7 = 0;
  [v0 getRed:v9 green:&v8 blue:&v7 alpha:&v6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75B38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E41750;
  *(inited + 32) = 6579570;
  *(inited + 40) = 0xE300000000000000;
  v2 = v8;
  *(inited + 48) = v9[0];
  *(inited + 56) = 0x6E65657267;
  *(inited + 64) = 0xE500000000000000;
  *(inited + 72) = v2;
  *(inited + 80) = 1702194274;
  *(inited + 88) = 0xE400000000000000;
  v3 = v6;
  *(inited + 96) = v7;
  *(inited + 104) = 0x6168706C61;
  *(inited + 112) = 0xE500000000000000;
  *(inited + 120) = v3;
  v4 = sub_199B4B26C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75B40);
  swift_arrayDestroy();
  return v4;
}

uint64_t AvatarPosterConfiguration.RenderingMode.hashValue.getter()
{
  v1 = *v0;
  sub_199DFAA7C();
  MEMORY[0x19A8F8860](v1);
  return sub_199DFAABC();
}

void AvatarPosterConfiguration.renderingMode.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + 16) >> 60 == 15)
  {
    *a1 = 2 * (*(v1 + 56) >> 60 == 15);
  }

  else
  {
    *a1 = 1;
  }
}

double static AvatarPosterConfiguration.stickerWaistLineHeightFraction(forBoundingShape:)(_BYTE *a1)
{
  result = 0.45;
  if (*a1 == 3)
  {
    return 0.7;
  }

  return result;
}

unint64_t sub_199B5FAD8()
{
  v1 = *v0;
  v2 = 0x6F50726174617661;
  v3 = 0x79646F42736168;
  if (v1 != 3)
  {
    v3 = 0x6D49726174617661;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD00000000000001ALL;
  if (*v0)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_199B5FB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_199B60CF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_199B5FBD4(uint64_t a1)
{
  v2 = sub_199B60700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_199B5FC10(uint64_t a1)
{
  v2 = sub_199B60700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AvatarPosterConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75B48);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v22 - v7;
  v10 = *v1;
  v9 = *(v1 + 8);
  v11 = *(v1 + 16);
  v26 = *(v1 + 24);
  v27 = v9;
  v12 = *(v1 + 32);
  v30 = *(v1 + 40);
  v13 = *(v1 + 56);
  v23 = *(v1 + 48);
  v24 = v13;
  v25 = v12;
  v14 = a1[3];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_0(v15, v14);
  sub_199B60700();
  sub_199DF81AC();
  sub_199DFAAEC();
  v28 = v10;
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75B50);
  sub_199B607FC(&qword_1EAF71128, sub_199B60754);
  sub_199DFA93C();
  if (v2)
  {

    return (*(v5 + 8))(v8, v17);
  }

  else
  {
    v19 = v25;
    v20 = v26;
    v22 = v5;

    v28 = v27;
    v29 = v11;
    v31 = 1;
    sub_199AFF43C(v27, v11);
    sub_199B607A8();
    sub_199DFA91C();
    sub_199A9EF20(v28, v29);
    v28 = v20;
    v29 = v19;
    v31 = 2;
    sub_199AFF43C(v20, v19);
    sub_199DFA91C();
    sub_199A9EF20(v28, v29);
    v21 = v22;
    LOBYTE(v28) = 3;
    sub_199DFA92C();
    v28 = v23;
    v29 = v24;
    v31 = 4;
    sub_199AFF43C(v23, v24);
    sub_199DFA91C();
    sub_199A9EF20(v28, v29);
    return (*(v21 + 8))(v8, v17);
  }
}

uint64_t AvatarPosterConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75B58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_199B60700();
  sub_199DFAADC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_199A9EF20(0, 0xF000000000000000);
    sub_199A9EF20(0, 0xF000000000000000);
    return sub_199A9EF20(0, 0xF000000000000000);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75B50);
    LOBYTE(v26) = 0;
    sub_199B607FC(&qword_1EAF71120, sub_199B60880);
    sub_199DFA90C();
    v25 = v30;
    LOBYTE(v26) = 1;
    sub_199B608D4();
    sub_199DFA8EC();
    v23 = v31;
    v24 = v30;
    sub_199A9EF20(0, 0xF000000000000000);
    LOBYTE(v26) = 2;
    sub_199DFA8EC();
    v22 = a2;
    v10 = v30;
    v11 = v31;
    sub_199A9EF20(0, 0xF000000000000000);
    LOBYTE(v30) = 3;
    v40 = sub_199DFA8FC();
    v41 = 4;
    sub_199DFA8EC();
    v40 &= 1u;
    (*(v6 + 8))(v9, v5);
    v13 = v38;
    v12 = v39;
    sub_199A9EF20(0, 0xF000000000000000);
    v14 = v24;
    *&v26 = v25;
    *(&v26 + 1) = v24;
    v15 = v23;
    *&v27 = v23;
    *(&v27 + 1) = v10;
    *&v28 = v11;
    v16 = v40;
    BYTE8(v28) = v40;
    *&v29 = v13;
    *(&v29 + 1) = v12;
    v17 = v27;
    v18 = v22;
    *v22 = v26;
    v18[1] = v17;
    v19 = v29;
    v18[2] = v28;
    v18[3] = v19;
    sub_199B60928(&v26, &v30);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v30 = v25;
    v31 = v14;
    v32 = v15;
    v33 = v10;
    v34 = v11;
    v35 = v16;
    v36 = v13;
    v37 = v12;
    return sub_199B60960(&v30);
  }
}

BOOL _s10ContactsUI25AvatarPosterConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v23 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v20 = *(a2 + 48);
  v21 = *(a2 + 56);
  v22 = *(a1 + 48);
  if ((sub_199B733D4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v4 >> 60 == 15)
  {
    if (v8 >> 60 == 15)
    {
      v19 = v6;
      sub_199AFF43C(v2, v4);
      sub_199AFF43C(v7, v8);
      sub_199A9EF20(v2, v4);
      goto LABEL_8;
    }

LABEL_6:
    sub_199AFF43C(v2, v4);
    sub_199AFF43C(v7, v8);
    sub_199A9EF20(v2, v4);
    v12 = v7;
    v13 = v8;
LABEL_14:
    sub_199A9EF20(v12, v13);
    return 0;
  }

  if (v8 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v19 = v6;
  sub_199AFF43C(v2, v4);
  sub_199AFF43C(v7, v8);
  v14 = sub_199B48F70(v2, v4, v7, v8);
  sub_199A9EF20(v7, v8);
  sub_199A9EF20(v2, v4);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  if (v5 >> 60 == 15)
  {
    if (v10 >> 60 == 15)
    {
      sub_199AFF43C(v3, v5);
      sub_199AFF43C(v9, v10);
      sub_199A9EF20(v3, v5);
      if (v23 == v11)
      {
LABEL_19:
        if (v19 >> 60 == 15)
        {
          v17 = v21;
          if (v21 >> 60 == 15)
          {
            sub_199AFF43C(v22, v19);
            sub_199AFF43C(v20, v21);
            sub_199A9EF20(v22, v19);
            return 1;
          }
        }

        else
        {
          v17 = v21;
          if (v21 >> 60 != 15)
          {
            sub_199AFF43C(v22, v19);
            sub_199AFF43C(v20, v21);
            v18 = sub_199B48F70(v22, v19, v20, v21);
            sub_199A9EF20(v20, v21);
            sub_199A9EF20(v22, v19);
            return (v18 & 1) != 0;
          }
        }

        sub_199AFF43C(v22, v19);
        sub_199AFF43C(v20, v17);
        sub_199A9EF20(v22, v19);
        v12 = v20;
        v13 = v17;
        goto LABEL_14;
      }

      return 0;
    }

    goto LABEL_13;
  }

  if (v10 >> 60 == 15)
  {
LABEL_13:
    sub_199AFF43C(v3, v5);
    sub_199AFF43C(v9, v10);
    sub_199A9EF20(v3, v5);
    v12 = v9;
    v13 = v10;
    goto LABEL_14;
  }

  sub_199AFF43C(v3, v5);
  sub_199AFF43C(v9, v10);
  v16 = sub_199B48F70(v3, v5, v9, v10);
  sub_199A9EF20(v9, v10);
  sub_199A9EF20(v3, v5);
  result = 0;
  if ((v16 & 1) != 0 && ((v23 ^ v11) & 1) == 0)
  {
    goto LABEL_19;
  }

  return result;
}

unint64_t sub_199B60700()
{
  result = qword_1EAF71BE8;
  if (!qword_1EAF71BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71BE8);
  }

  return result;
}

unint64_t sub_199B60754()
{
  result = qword_1EAF714D0;
  if (!qword_1EAF714D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF714D0);
  }

  return result;
}

unint64_t sub_199B607A8()
{
  result = qword_1EAF714E8;
  if (!qword_1EAF714E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF714E8);
  }

  return result;
}

uint64_t sub_199B607FC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75B50);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_199B60880()
{
  result = qword_1EAF714C0;
  if (!qword_1EAF714C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF714C0);
  }

  return result;
}

unint64_t sub_199B608D4()
{
  result = qword_1EAF714E0;
  if (!qword_1EAF714E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF714E0);
  }

  return result;
}

unint64_t sub_199B60994()
{
  result = qword_1EAF75B60;
  if (!qword_1EAF75B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75B60);
  }

  return result;
}

unint64_t sub_199B609EC()
{
  result = qword_1EAF75B68;
  if (!qword_1EAF75B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75B68);
  }

  return result;
}

unint64_t sub_199B60A44()
{
  result = qword_1EAF75B70;
  if (!qword_1EAF75B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75B70);
  }

  return result;
}

unint64_t sub_199B60A9C()
{
  result = qword_1EAF75B78;
  if (!qword_1EAF75B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75B78);
  }

  return result;
}

uint64_t sub_199B60AF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_199B60B38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_199B60BEC()
{
  result = qword_1EAF75B80;
  if (!qword_1EAF75B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75B80);
  }

  return result;
}

unint64_t sub_199B60C44()
{
  result = qword_1EAF71BD8;
  if (!qword_1EAF71BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71BD8);
  }

  return result;
}

unint64_t sub_199B60C9C()
{
  result = qword_1EAF71BE0;
  if (!qword_1EAF71BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71BE0);
  }

  return result;
}

uint64_t sub_199B60CF0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x8000000199E44010 == a2 || (sub_199DFA99C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000199E44AD0 == a2 || (sub_199DFA99C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F50726174617661 && a2 == 0xEE00617461446573 || (sub_199DFA99C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79646F42736168 && a2 == 0xE700000000000000 || (sub_199DFA99C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D49726174617661 && a2 == 0xEF61746144656761)
  {

    return 4;
  }

  else
  {
    v5 = sub_199DFA99C();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

id sub_199B60F1C()
{
  v1 = OBJC_IVAR____TtC10ContactsUI49CNAvatarPosterPairCollectionViewControllerWrapper_viewController;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_199B60FD0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ContactsUI49CNAvatarPosterPairCollectionViewControllerWrapper_viewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_199B61028(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10ContactsUI49CNAvatarPosterPairCollectionViewControllerWrapper_viewController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id CNAvatarPosterPairCollectionViewControllerWrapper.__allocating_init(with:contact:contactForSharedProfile:mode:delegate:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_199B6AA90(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v10;
}

id CNAvatarPosterPairCollectionViewControllerWrapper.init(with:contact:contactForSharedProfile:mode:delegate:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = sub_199B6AA90(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v7;
}

id CNAvatarPosterPairCollectionViewControllerWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CNAvatarPosterPairCollectionViewControllerWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewControllerWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_199B61334(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModelSubscriber] = 0;
  *&v5[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl] = 0;
  *&v5[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_centeredPosterButton] = 0;
  *&v5[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_addPosterButton] = 0;
  *&v5[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_lastPosterConfiguration] = 0;
  v10 = &v5[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_activePosterSnapshotKeepActiveAssertionReason];
  *v10 = 0;
  v10[1] = 0;
  v5[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_needsReload] = 0;
  *&v5[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController____lazy_storage___feedbackGenerator] = 0;
  *&v5[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControlPreferredNumberOfVisibleIndicators] = 5;
  v5[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_isScrollingOrSettling] = 0;
  *&v5[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_configuration] = a1;
  *&v5[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_contact] = a2;
  *&v5[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_contactForSharedProfile] = a3;
  v11 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_mode;
  *&v5[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_mode] = a4;
  swift_unknownObjectWeakAssign();
  v36 = a1;
  v12 = a2;
  v13 = a3;
  v14 = [MEMORY[0x1E69DC938] currentDevice];
  v15 = [v14 userInterfaceIdiom];

  v16 = (v15 & 0xFFFFFFFFFFFFFFFBLL) != 1;
  v17 = [objc_opt_self() mainThreadScheduler];
  v18 = type metadata accessor for CNAvatarPosterPairCollectionViewModel();
  v19 = objc_allocWithZone(v18);
  v20 = &v19[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_pendingDeletedIndex];
  *v20 = 0;
  v20[8] = 1;
  v19[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_deletingContactPair] = 0;
  *&v19[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel____lazy_storage___pairDeduper] = 0;
  *&v19[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_contact] = v12;
  *&v19[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_contactForSharedProfile] = v13;
  *&v19[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_displayMode] = v16;
  v19[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_loadingMode] = 1;
  *&v19[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_workQueue] = v17;
  swift_beginAccess();
  v40 = MEMORY[0x1E69E7CC0];
  v21 = v12;
  v22 = v13;
  v23 = v21;
  v24 = v22;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CA0);
  sub_199DF83FC();
  swift_endAccess();
  v39.receiver = v19;
  v39.super_class = v18;
  v25 = objc_msgSendSuper2(&v39, sel_init);
  v26 = *&v25[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_workQueue];
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  aBlock[4] = sub_199B6B6FC;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199AB45A0;
  aBlock[3] = &block_descriptor_132;
  v28 = _Block_copy(aBlock);
  v29 = v25;
  swift_unknownObjectRetain();

  [v26 performBlock_];
  _Block_release(v28);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *&v5[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel] = v29;
  v30 = *&v5[v11];
  v31 = objc_allocWithZone(type metadata accessor for CNAvatarPosterPairCollectionViewLayout());
  v32 = sub_199B5A864(v30);
  *&v5[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_layout] = v32;
  v37.receiver = v5;
  v37.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewController();
  v33 = v32;
  v34 = objc_msgSendSuper2(&v37, sel_initWithCollectionViewLayout_, v33);

  swift_unknownObjectRelease();
  return v34;
}

id sub_199B617FC()
{
  if (*&v0[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModelSubscriber])
  {

    sub_199DF83AC();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_199B619D0()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  sub_199B6488C();
  v1 = *&v0[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_layout];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemRevealProgressProvider];
  v4 = *&v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemRevealProgressProvider];
  *v3 = sub_199B6B65C;
  v3[1] = v2;
  v5 = v1;

  sub_199A9A5FC(v4);

  sub_199B64AF4();
}

char *sub_199B61AEC(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73C00);
  v38 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v5;
  *&v8 = MEMORY[0x1EEE9AC00](v6, v7).n128_u64[0];
  v39 = &v35 - v9;
  result = [a2 collectionView];
  if (result)
  {
    v11 = result;
    v12 = [result visibleCells];

    sub_199A7A02C(0, &unk_1EAF75C90);
    v13 = sub_199DFA0CC();

    if (v13 >> 62)
    {
LABEL_21:
      v41 = sub_199DFA87C();
      if (v41)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v41 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v41)
      {
LABEL_4:
        v14 = 0;
        v15 = v13 & 0xC000000000000001;
        v16 = v13 & 0xFFFFFFFFFFFFFF8;
        v35 = v13 & 0xC000000000000001;
        v40 = v13 & 0xFFFFFFFFFFFFFF8;
        do
        {
          if (v15)
          {
            v17 = MEMORY[0x19A8F8520](v14, v13);
          }

          else
          {
            if (v14 >= *(v16 + 16))
            {
              goto LABEL_20;
            }

            v17 = *(v13 + 8 * v14 + 32);
          }

          v18 = v17;
          v19 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

          type metadata accessor for CNAvatarPosterPairCollectionViewCell();
          result = swift_dynamicCastClass();
          if (!result)
          {
            goto LABEL_5;
          }

          v20 = *&result[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollableContentView];
          if (!v20)
          {
            __break(1u);
            goto LABEL_24;
          }

          v21 = *(*&v20[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_viewModel] + OBJC_IVAR____TtC10ContactsUI27CNAvatarPosterPairViewModel_avatarPosterPair);
          if (v21)
          {
            v22 = v20;
            v23 = v21;
            v24 = [v22 traitCollection];
            v25 = [v24 userInterfaceIdiom];

            if (v25)
            {
            }

            else
            {
              v26 = OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_displaySessionUUID;
              swift_beginAccess();
              v27 = v39;
              sub_199AAD408(&v22[v26], v39, &unk_1EAF73C00);
              v28 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v29 = v36;
              sub_199AAD408(v27, v36, &unk_1EAF73C00);
              v30 = v13;
              v31 = (*(v38 + 80) + 24) & ~*(v38 + 80);
              v32 = swift_allocObject();
              *(v32 + 16) = v28;
              v33 = v32 + v31;
              v13 = v30;
              v34 = v29;
              v15 = v35;
              sub_199AB7794(v34, v33, &unk_1EAF73C00);

              sub_199AD93F0(v23, sub_199ADA628, v32);

              sub_199A79A04(v39, &unk_1EAF73C00);
            }

            v16 = v40;
          }

          else
          {
LABEL_5:
          }

          ++v14;
        }

        while (v19 != v41);
      }
    }
  }

  else
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_199B61ED8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_199B620C8(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72678);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72680);
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v44 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72688);
  v12 = *(v11 - 8);
  v42 = v11;
  v43 = v12;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v40 - v14;
  v16 = sub_199DF729C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CNAvatarPosterPairCollectionViewController();
  v49.receiver = v2;
  v49.super_class = v21;
  objc_msgSendSuper2(&v49, sel_viewIsAppearing_, a1 & 1);
  sub_199DF728C();
  v22 = sub_199DF724C();
  v24 = v23;
  (*(v17 + 8))(v20, v16);
  v47 = 0xD00000000000002BLL;
  v48 = 0x8000000199E498C0;
  MEMORY[0x19A8F7E00](v22, v24);

  v25 = v48;
  v26 = &v2[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_activePosterSnapshotKeepActiveAssertionReason];
  *v26 = v47;
  v26[1] = v25;
  sub_199DF81AC();

  v27 = [objc_allocWithZone(CNPRUISPosterSnapshotController) init];
  v28 = sub_199DF9F5C();

  [v27 acquireKeepActiveAssertionForReason_];

  v29 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModelSubscriber;
  if (!*&v2[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModelSubscriber])
  {
    v30 = *&v2[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel];
    swift_beginAccess();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF726A0);
    v41 = v15;
    sub_199DF840C();
    swift_endAccess();

    v32 = [objc_opt_self() mainRunLoop];
    v47 = v32;
    v33 = sub_199DFA62C();
    (*(*(v33 - 8) + 56))(v7, 1, 1, v33);
    sub_199A7A02C(0, &qword_1EAF726A8);
    sub_199AA0B90(&qword_1EAF726B0, &qword_1EAF72688);
    sub_199B6B608(&qword_1EAF726B8, &qword_1EAF726A8);
    v34 = v44;
    v35 = v42;
    v36 = v41;
    sub_199DF846C();
    sub_199A79A04(v7, &qword_1EAF72678);

    sub_199AA0B90(&qword_1EAF726C0, &qword_1EAF72680);
    v37 = v46;
    v38 = sub_199DF844C();
    (*(v45 + 8))(v34, v37);
    (*(v43 + 8))(v36, v35);
    v47 = v38;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF726C8);
    sub_199AA0B90(&qword_1EAF726D0, &qword_1EAF726C8);
    v39 = sub_199DF848C();

    *&v2[v29] = v39;
  }

  if (v2[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_needsReload] == 1)
  {
    v2[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_needsReload] = 0;
    sub_199B6890C();
  }
}

void sub_199B626C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = *(Strong + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_199DF841C();

  if (v25 >> 62)
  {
    goto LABEL_16;
  }

  v4 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_17:

    swift_getKeyPath();
    swift_getKeyPath();
    sub_199DF841C();

    if (v25 >> 62)
    {
      goto LABEL_40;
    }

    v9 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
LABEL_41:

      goto LABEL_42;
    }

LABEL_19:
    v10 = 0;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x19A8F8520](v10);
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_28:
          __break(1u);
LABEL_29:
          v8 = v11;

          goto LABEL_30;
        }
      }

      else
      {
        if (v10 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_40:
          v9 = sub_199DFA87C();
          if (!v9)
          {
            goto LABEL_41;
          }

          goto LABEL_19;
        }

        v11 = *(v25 + 8 * v10 + 32);
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_28;
        }
      }

      if (!v11[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type])
      {
        goto LABEL_29;
      }

      ++v10;
      if (v12 == v9)
      {
        goto LABEL_41;
      }
    }
  }

LABEL_4:
  v5 = 0;
  while ((v25 & 0xC000000000000001) == 0)
  {
    if (v5 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_16:
      v4 = sub_199DFA87C();
      if (!v4)
      {
        goto LABEL_17;
      }

      goto LABEL_4;
    }

    v6 = *(v25 + 8 * v5 + 32);
    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_13;
    }

LABEL_8:
    if (v6[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_isRecentUsedAsContactPair] == 1)
    {
      goto LABEL_14;
    }

    ++v5;
    if (v7 == v4)
    {
      goto LABEL_17;
    }
  }

  v6 = MEMORY[0x19A8F8520](v5);
  v7 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  v8 = v6;

LABEL_30:
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    v15 = *&v8[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
    if (v15 == 1)
    {
      v16 = v8;
      v3 = 0;
    }

    else
    {
      v3 = v15;
      v16 = v8;
    }

    v17 = *&v16[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
    if (v17 == 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = *&v16[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
    }

    v19 = v16[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_isRecentUsedAsContactPair];
    v20 = v16;
    sub_199AA2284(*&v16[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster]);
    [v14 avatarPosterPairCollectionDidLoadCurrentPairWithAvatar:v3 poster:v18 backedByRecents:v19];

    swift_unknownObjectRelease();
    sub_199AA2294(v17);
  }

  else
  {
    v3 = v8;
  }

LABEL_42:

  v21 = [v1 view];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 window];

    v24 = [v23 windowScene];
    if (v24)
    {

      sub_199B6890C();
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_needsReload) = 1;
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_199B62AF0(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewController();
  result = objc_msgSendSuper2(&v8, sel_viewWillDisappear_, a1 & 1);
  v4 = &v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_activePosterSnapshotKeepActiveAssertionReason];
  if (*&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_activePosterSnapshotKeepActiveAssertionReason + 8])
  {
    v5 = objc_allocWithZone(CNPRUISPosterSnapshotController);
    sub_199DF81AC();
    v6 = [v5 init];
    v7 = sub_199DF9F5C();

    [v6 releaseKeepActiveAssertionForReason_];

    *v4 = 0;
    *(v4 + 1) = 0;
  }

  return result;
}

void sub_199B62CE8(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel];
  v5 = sub_199DF736C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  if ((v20[0] & 0xC000000000000001) == 0)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v5 < *((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(v20[0] + 8 * v5 + 32);
      goto LABEL_5;
    }

    __break(1u);
    return;
  }

  v6 = MEMORY[0x19A8F8520](v5, v20[0]);
LABEL_5:
  v7 = v6;

  v8 = sub_199DF9F5C();
  v9 = sub_199DF730C();
  v10 = [a1 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v9];

  type metadata accessor for CNAvatarPosterPairCollectionViewCell();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    *(v11 + OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_delegate + 8) = &off_1F0CE2800;
    swift_unknownObjectWeakAssign();
    v13 = objc_opt_self();
    v14 = swift_allocObject();
    v14[2] = v12;
    v14[3] = v7;
    v14[4] = v2;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_199B6B5FC;
    *(v15 + 24) = v14;
    v20[4] = sub_199B12B7C;
    v20[5] = v15;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 1107296256;
    v20[2] = sub_199B630A0;
    v20[3] = &block_descriptor_111;
    v16 = _Block_copy(v20);
    v17 = v10;
    v7 = v7;
    v18 = v2;

    [v13 performWithoutAnimation_];

    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  [objc_allocWithZone(MEMORY[0x1E69DC7F8]) init];
}

void sub_199B62FE8(char *a1, void *a2, uint64_t a3)
{
  sub_199AF112C(a2, *(a3 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_contact));
  v4 = OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_maximumVerticalRevealFraction;
  v5 = *&a1[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_maximumVerticalRevealFraction];
  *&a1[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_maximumVerticalRevealFraction] = 0x3FD0000000000000;
  if (v5 != 0.25)
  {
    [a1 bounds];
    v8 = *&a1[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollView];
    if (v8)
    {
      v9 = v7 * (*&a1[v4] + 1.0);

      [v8 setContentSize_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_199B631DC(void *a1)
{
  v3 = sub_199DF9F5C();
  v4 = sub_199DF9F5C();
  v5 = sub_199DF730C();
  v6 = [a1 dequeueReusableSupplementaryViewOfKind:v3 withReuseIdentifier:v4 forIndexPath:v5];

  type metadata accessor for CNAvatarPosterPairRemovalView();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    *(v7 + OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_delegate + 8) = &off_1F0CE27F0;
    swift_unknownObjectWeakAssign();
    v9 = sub_199DF736C();
    v10 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel;
    v11 = *(v1 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel);
    swift_getKeyPath();
    swift_getKeyPath();
    v12 = v11;
    sub_199DF841C();

    if (v22 >> 62)
    {
      v13 = sub_199DFA87C();
    }

    else
    {
      v13 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9 < v13)
    {
      v14 = *(v1 + v10);
      v15 = sub_199DF736C();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_199DF841C();

      if ((v22 & 0xC000000000000001) == 0)
      {
        if ((v15 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v15 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v16 = *(v22 + 8 * v15 + 32);
          goto LABEL_9;
        }

        __break(1u);
        goto LABEL_19;
      }

      v16 = MEMORY[0x19A8F8520](v15);
LABEL_9:
      v17 = v16;

      v18 = *(v8 + OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_avatarPosterPair);
      *(v8 + OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_avatarPosterPair) = v17;
      v19 = v17;

      v20 = *(v8 + OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_deleteButton);
      if (v20)
      {
        [v20 setHidden_];

        return;
      }

LABEL_19:
      __break(1u);
    }
  }

  else
  {

    v21 = objc_allocWithZone(MEMORY[0x1E69DC7E8]);

    [v21 init];
  }
}

void sub_199B63700(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v22 - v10;
  v12 = [v2 collectionView];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 indexPathForCell_];

    if (v14)
    {
      sub_199DF732C();

      v15 = sub_199DF738C();
      (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
    }

    else
    {
      v15 = sub_199DF738C();
      (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    }

    sub_199AB7794(v8, v11, &qword_1EAF75C30);
    sub_199DF738C();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v11, 1, v15) == 1)
    {
      sub_199A79A04(v11, &qword_1EAF75C30);
      return;
    }

    v17 = sub_199DF736C();
    (*(v16 + 8))(v11, v15);
    v18 = *&v2[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel];
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v18;
    sub_199DF841C();

    if ((v23 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x19A8F8520](v17, v23);
      goto LABEL_11;
    }

    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v17 < *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v20 = *(v23 + 8 * v17 + 32);
LABEL_11:
      v21 = v20;

      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_199B63A58(uint64_t a1, void *a2)
{
  v32 = a2;
  v30 = a1;
  v3 = sub_199DF9F4C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 traitCollection];
  [v8 userInterfaceIdiom];

  sub_199DF9EEC();
  v9 = MEMORY[0x1E69E7CC0];
  sub_199AA8A84(v7, MEMORY[0x1E69E7CC0]);
  v10 = *(v4 + 8);
  v31 = v3;
  v10(v7, v3);
  v11 = sub_199DF9F5C();

  v33 = [objc_opt_self() alertControllerWithTitle:v11 message:0 preferredStyle:0];

  sub_199DF9EEC();
  sub_199AA8A84(v7, v9);
  v10(v7, v3);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v14 = v32;
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;

  v15 = v14;
  v16 = sub_199DF9F5C();

  v38 = sub_199B6B070;
  v39 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_199B6406C;
  v37 = &block_descriptor_84;
  v17 = _Block_copy(&aBlock);

  v18 = objc_opt_self();
  v19 = [v18 actionWithTitle:v16 style:2 handler:v17];
  _Block_release(v17);

  sub_199DF9EEC();
  sub_199AA8A84(v7, MEMORY[0x1E69E7CC0]);
  v10(v7, v31);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v21 = sub_199DF9F5C();

  v38 = sub_199B6B078;
  v39 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v22 = v19;
  v23 = v33;
  v36 = sub_199B6406C;
  v37 = &block_descriptor_88;
  v24 = _Block_copy(&aBlock);

  v25 = [v18 actionWithTitle:v21 style:1 handler:v24];
  _Block_release(v24);

  [v23 addAction_];
  [v23 addAction_];
  [v23 setPreferredAction_];
  v26 = [v2 traitCollection];
  v27 = [v26 userInterfaceIdiom];

  if (v27 == 1)
  {
    v28 = [v23 popoverPresentationController];
    if (v28)
    {
      v29 = v28;
      [v28 setSourceView_];
    }
  }

  [v2 presentViewController:v23 animated:1 completion:{0, v30}];
}

void sub_199B63F78(uint64_t a1, uint64_t a2, char *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel;
    v7 = *(Strong + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel);
    sub_199B43A58(a3);

    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      [v8 avatarPosterPairCollectionDidDeletePosterPair];
      swift_unknownObjectRelease();
    }

    if (*(*&v5[v6] + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_deletingContactPair) == 1 && (v9 = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      [v9 avatarPosterPairCollectionDidDeleteCurrentPosterPair];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_199B6406C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_199B640D4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = result;
  result = [result collectionView];
  if (!result)
  {
    goto LABEL_24;
  }

  v2 = result;
  v3 = [result visibleCells];

  sub_199A7A02C(0, &unk_1EAF75C90);
  v4 = sub_199DFA0CC();

  v22 = v1;
  if (v4 >> 62)
  {
LABEL_20:
    v5 = sub_199DFA87C();
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_21:
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_21;
  }

LABEL_5:
  v6 = 0;
  v23 = v25;
  v7 = &qword_1EAF73000;
  v8 = &selRef_containers;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x19A8F8520](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v9 = *(v4 + 8 * v6 + 32);
    }

    v10 = v9;
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    type metadata accessor for CNAvatarPosterPairCollectionViewCell();
    v12 = swift_dynamicCastClass();
    if (!v12)
    {
      goto LABEL_6;
    }

    v13 = v12;
    result = *(v12 + v7[367]);
    if (!result)
    {
      break;
    }

    [result v8[29]];
    if (v15 != 0.0 || v14 != 0.0)
    {
      v16 = v7;
      v17 = objc_opt_self();
      v18 = swift_allocObject();
      *(v18 + 16) = v13;
      v25[2] = sub_199B6B080;
      v25[3] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v25[0] = sub_199AB45A0;
      v25[1] = &block_descriptor_94;
      v19 = _Block_copy(aBlock);
      v20 = v10;

      v21 = v17;
      v7 = v16;
      v8 = &selRef_containers;
      [v21 animateWithDuration:v19 animations:0.3];

      _Block_release(v19);
      goto LABEL_7;
    }

LABEL_6:

LABEL_7:
    ++v6;
    if (v11 == v5)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id sub_199B64398(void *a1, void *a2)
{
  if (!a2)
  {
LABEL_5:
    sub_199DFA2FC();
    v10 = CNUILogPosters();
    sub_199DF7FEC();

    return [a1 dismissViewControllerAnimated:1 completion:0];
  }

  v4 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_lastPosterConfiguration);
  if (v6)
  {
    sub_199A7A02C(0, &qword_1EAF71048);
    v7 = a2;
    v8 = v6;
    v9 = sub_199DFA4EC();

    if (v9)
    {

      goto LABEL_5;
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = *(v4 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel);
  v14 = *&v13[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_workQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v19[4] = sub_199AA22D4;
  v19[5] = v15;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_199AB45A0;
  v19[3] = &block_descriptor_77_0;
  v16 = _Block_copy(v19);
  v17 = v13;
  swift_unknownObjectRetain();

  [v14 performBlock_];
  _Block_release(v16);

  swift_unknownObjectRelease();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong avatarPosterPairCollectionDidEditPoster_];
    swift_unknownObjectRelease();
  }

  return [a1 dismissViewControllerAnimated:1 completion:0];
}

id sub_199B6467C()
{
  v1 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController____lazy_storage___feedbackGenerator;
  v2 = *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController____lazy_storage___feedbackGenerator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController____lazy_storage___feedbackGenerator);
  }

  else
  {
    v4 = sub_199B646DC();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_199B646DC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v1 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E3CC90;
  *(inited + 32) = v0;
  *(inited + 40) = v1;
  v4 = v0;
  v5 = v1;
  sub_199B6A530(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_199A7A02C(0, &qword_1EAF75C70);
  sub_199B6B608(&qword_1EAF75C78, &qword_1EAF75C70);
  v6 = sub_199DFA23C();

  v7 = [v2 privateConfigurationForTypes_];

  v8 = [objc_allocWithZone(MEMORY[0x1E69DCCF0]) initWithConfiguration_];
  return v8;
}

void sub_199B6488C()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for CNAvatarPosterPairRemovalView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = *MEMORY[0x1E69DDC00];
    v5 = sub_199DF9F5C();
    [v2 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v4 withReuseIdentifier:v5];

    type metadata accessor for CNAvatarPosterPairCollectionViewCell();
    v6 = swift_getObjCClassFromMetadata();
    v7 = sub_199DF9F5C();
    [v2 registerClass:v6 forCellWithReuseIdentifier:v7];

    v8 = objc_opt_self();
    v9 = v2;
    v10 = [v8 systemBackgroundColor];
    [v9 setBackgroundColor_];

    v11 = *MEMORY[0x1E69DE3A0];
    v12 = v9;
    [v12 setDecelerationRate_];
    [v12 setContentInsetAdjustmentBehavior_];
    [v12 setShowsHorizontalScrollIndicator_];
    [v12 setAlwaysBounceHorizontal_];
  }
}

unint64_t sub_199B64A88()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_199B4B6FC(MEMORY[0x1E69E7CC0]);
  }

  v1 = Strong;
  v2 = sub_199B69A04();

  return v2;
}

void sub_199B64AF4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF72BF0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v114 - v4;
  v129 = sub_199DF9F4C();
  v6 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129, v7);
  v9 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_199DF6FFC();
  v133 = *(v10 - 8);
  v134 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v127 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v132 = &v114 - v15;
  v139 = sub_199DFA5BC();
  v142 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139, v16);
  v138 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_199DFA55C();
  v141 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136, v18);
  v135 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_199DFA5EC();
  v131 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140, v20);
  v22 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v137 = &v114 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v114 - v28;
  v30 = [objc_allocWithZone(MEMORY[0x1E69DCD10]) initWithFrame_];
  v31 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl;
  v32 = *&v0[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl];
  *&v0[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl] = v30;
  v33 = v30;

  if (!v33)
  {
    __break(1u);
    goto LABEL_39;
  }

  v34 = objc_opt_self();
  v35 = [v34 tertiaryLabelColor];
  [v33 setPageIndicatorTintColor_];

  v36 = *&v1[v31];
  if (!v36)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v37 = v36;
  v130 = v34;
  v38 = [v34 labelColor];
  [v37 setCurrentPageIndicatorTintColor_];

  v39 = *&v1[v31];
  if (!v39)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [v39 setHidesForSinglePage_];
  v40 = *&v1[v31];
  if (!v40)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  [v40 setAllowsContinuousInteraction_];
  v41 = *&v1[v31];
  if (!v41)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  [v41 _setPreferredNumberOfVisibleIndicators_];
  v42 = *&v1[v31];
  if (!v42)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  [v42 _setCustomVerticalPadding_];
  v43 = *&v1[v31];
  if (!v43)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  [v43 addTarget:v1 action:sel_pageControlDidChangePage_ forControlEvents:4096];
  v44 = *&v1[v31];
  if (!v44)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  [v44 setMaximumContentSizeCategory_];
  v45 = *&v1[v31];
  if (!v45)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  [v45 setTintAdjustmentMode_];
  v46 = [v1 collectionView];
  if (!v46)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v47 = v46;
  v48 = [v46 numberOfItemsInSection_];

  v49 = *&v1[v31];
  if (!v49)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if ([v49 numberOfPages] == v48)
  {
    goto LABEL_15;
  }

  v50 = *&v1[v31];
  if (v50)
  {
    [v50 setNumberOfPages_];
    sub_199B683B0(0, 1);
LABEL_15:
    v51 = [v1 view];
    if (v51)
    {
      v125 = v5;
      v126 = v22;
      if (*&v1[v31])
      {
        v52 = v51;
        [v51 addSubview_];

        sub_199DFA5DC();
        v53 = *MEMORY[0x1E69DC4F0];
        v54 = *(v141 + 104);
        v141 += 104;
        v123 = v54;
        v54(v135, v53, v136);
        sub_199DFA56C();
        v55 = sub_199DFA53C();
        sub_199DF80DC();
        v55(v143, 0);
        v56 = v130;
        v57 = [v130 labelColor];
        sub_199DFA5AC();
        v58 = [v56 secondarySystemBackgroundColor];
        sub_199DFA59C();
        v59 = *(v142 + 104);
        v122 = *MEMORY[0x1E69DC558];
        v142 += 104;
        v121 = v59;
        v59(v138);
        sub_199DFA54C();
        sub_199DFA58C();
        v60 = v132;
        sub_199DF6FEC();
        v143[0] = [objc_opt_self() _preferredFontForTextStyle_weight_];
        sub_199B054CC();
        sub_199DF700C();
        sub_199DF9EEC();
        v61 = MEMORY[0x1E69E7CC0];
        sub_199AA8A84(v9, MEMORY[0x1E69E7CC0]);
        v63 = v62;
        v64 = *(v6 + 8);
        v65 = v6 + 8;
        v66 = v129;
        v128 = v64;
        v64(v9, v129);
        (*(v133 + 16))(v127, v60, v134);
        sub_199DF81AC();
        v67 = v125;
        v117 = v63;
        sub_199DF6FBC();
        v68 = sub_199DF6FAC();
        (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
        sub_199DFA57C();
        v69 = sub_199A7A02C(0, &qword_1EAF73590);
        v70 = *(v131 + 16);
        v125 = v29;
        v119 = v131 + 16;
        v118 = v70;
        v70(v137, v29, v140);
        v71 = sub_199A7A02C(0, &unk_1EAF75C50);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_199DFA51C();
        v120 = v69;
        v72 = sub_199DFA5FC();
        v73 = *&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_centeredPosterButton];
        v124 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_centeredPosterButton;
        *&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_centeredPosterButton] = v72;

        v143[0] = v61;
        v74 = [v1 traitCollection];
        v75 = [v74 userInterfaceIdiom];

        v127 = v71;
        if (!v75)
        {
          sub_199DF9EEC();
          sub_199AA8A84(v9, MEMORY[0x1E69E7CC0]);
          v115 = v9;
          v116 = v65;
          v128(v9, v66);
          v76 = sub_199DF9F5C();
          v77 = [objc_opt_self() systemImageNamed_];

          swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_199DFA51C();
          MEMORY[0x19A8F7E80]();
          if (*((v143[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_199DFA0EC();
          }

          sub_199DFA10C();
          v66 = v129;
          v9 = v115;
        }

        sub_199DF9EEC();
        sub_199AA8A84(v9, MEMORY[0x1E69E7CC0]);
        v128(v9, v66);
        v78 = sub_199DF9F5C();
        v79 = objc_opt_self();
        v80 = [v79 systemImageNamed_];

        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_199DFA51C();
        MEMORY[0x19A8F7E80]();
        if (*((v143[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_199DFA0EC();
        }

        sub_199DFA10C();
        v81 = v124;
        v82 = *&v1[v124];
        v83 = v126;
        v84 = v125;
        if (v82)
        {
          if (v143[0] >> 62)
          {
            sub_199A7A02C(0, &unk_1EAF755D8);
            v113 = v82;
            sub_199DF81AC();
            sub_199DFA86C();
          }

          else
          {
            v85 = v82;
            sub_199DF81AC();
            sub_199DFA9AC();
            sub_199A7A02C(0, &unk_1EAF755D8);
          }

          sub_199A7A02C(0, &unk_1EAF75C60);
          v86 = sub_199DFA46C();
          [v82 setMenu_];

          v87 = *&v1[v81];
          if (v87)
          {
            v88 = *MEMORY[0x1E69DDC40];
            [v87 setMaximumContentSizeCategory_];
            v89 = *&v1[v81];
            if (v89)
            {
              [v89 setTintAdjustmentMode_];
              v90 = [v1 view];
              if (v90)
              {
                if (*&v1[v81])
                {
                  v91 = v90;
                  [v90 addSubview_];

                  v92 = *&v1[v81];
                  if (v92)
                  {
                    v93 = [v92 currentPreferredSymbolConfiguration];
                    v94 = objc_opt_self();
                    if (v93)
                    {
                      v95 = [v94 configurationWithWeight_];
                      v96 = [v93 configurationByApplyingConfiguration_];
                    }

                    else
                    {
                      v96 = [v94 configurationWithPointSize:6 weight:2 scale:18.0];
                    }

                    sub_199DFA5DC();
                    v97 = sub_199DF9F5C();
                    v98 = [v79 systemImageNamed_];

                    sub_199DFA5CC();
                    v99 = v96;
                    sub_199DFA52C();
                    v123(v135, *MEMORY[0x1E69DC508], v136);
                    sub_199DFA56C();
                    v100 = v130;
                    v101 = [v130 whiteColor];
                    sub_199DFA5AC();
                    v102 = [v100 tintColor];
                    sub_199DFA59C();
                    v121(v138, v122, v139);
                    sub_199DFA54C();
                    v118(v137, v83, v140);
                    swift_allocObject();
                    swift_unknownObjectWeakInit();
                    sub_199DFA51C();
                    v103 = sub_199DFA5FC();
                    [v103 setMaximumContentSizeCategory_];
                    [v103 setTintAdjustmentMode_];
                    v104 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_addPosterButton;
                    v105 = *&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_addPosterButton];
                    *&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_addPosterButton] = v103;
                    v106 = v103;

                    v107 = [v1 view];
                    if (v107)
                    {
                      v108 = *&v1[v104];
                      if (v108)
                      {
                        v109 = v107;
                        v110 = v108;

                        [v109 addSubview_];

                        v111 = *(v131 + 8);
                        v112 = v140;
                        v111(v83, v140);
                        (*(v133 + 8))(v132, v134);
                        v111(v84, v112);
                        return;
                      }

                      goto LABEL_58;
                    }

LABEL_57:
                    __break(1u);
LABEL_58:
                    __break(1u);
                    goto LABEL_59;
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

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_59:
  __break(1u);
}

void sub_199B65C54()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_199B6740C();
    if (!v2)
    {

      return;
    }

    v3 = v2;
    if (*(v2 + OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type) != 3 && !*&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_mode])
    {
      sub_199B6740C();
      if (v5)
      {
        v7 = *&v5[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
        v6 = *&v5[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar + 8];
        v9 = *&v5[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar + 16];
        v8 = *&v5[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar + 24];
        v10 = v5;
        sub_199B492C4(v7, v6, v9, v8);

        if (v7 != 1)
        {
          if (v6)
          {
            v11 = swift_unknownObjectWeakLoadStrong();
            if (v11)
            {
              [v11 avatarPosterPairCollectionDidSelectEditAvatar_];

              swift_unknownObjectRelease();
              sub_199B49278(v7, v6, v9, v8);
              return;
            }

            sub_199B49278(v7, v6, v9, v8);
            goto LABEL_15;
          }

          sub_199B49278(v7, v6, v9, v8);
        }
      }
    }

    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      [v4 avatarPosterPairCollectionDidSelectCreateNew];

      swift_unknownObjectRelease();
      return;
    }

LABEL_15:
  }
}

void sub_199B65DF8()
{
  aBlock[10] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_199B6740C();
    if (v2)
    {
      v3 = *&v2[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
      v4 = *&v2[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster + 8];
      v5 = v2;
      sub_199AA2284(v3);

      if (v3 >= 2)
      {
        if ((v4 & 1) == 0)
        {
LABEL_10:
          sub_199AA2294(v3);
          goto LABEL_12;
        }

        v6 = objc_opt_self();
        v7 = v3;
        v8 = [v7 posterData];
        v9 = sub_199DF71FC();
        v11 = v10;

        v12 = sub_199DF71DC();
        sub_199A9EF34(v9, v11);
        aBlock[0] = 0;
        v13 = [v6 unarchiveCNConfigurationFromData:v12 error:aBlock];

        if (v13)
        {
          v14 = qword_1EAF718E0;
          v15 = aBlock[0];
          if (v14 != -1)
          {
            swift_once();
          }

          v16 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_contact;
          v17 = *&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_contact];
          v18 = [v7 &selRef_numberFromString_ + 1];
          v19 = sub_199DF71FC();
          v21 = v20;

          v22 = sub_199B73B70(v19, v21, v17);
          sub_199A9EF34(v19, v21);

          if ((v22 & 1) == 0)
          {
            v26 = *&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_lastPosterConfiguration];
            *&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_lastPosterConfiguration] = v13;
            v27 = v13;

            v28 = [objc_allocWithZone(CNPRUISIncomingCallPosterContext) initWithContact:*&v1[v16] showName:1];
            v29 = [objc_allocWithZone(CNPRUISPosterEditingViewController) initWithExistingConfiguration:v27 context:v28];
            [v29 setDelegate_];
            [v29 setModalPresentationStyle_];
            v30 = swift_allocObject();
            v30[2] = v29;
            aBlock[4] = sub_199B6B05C;
            aBlock[5] = v30;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_199AB45A0;
            aBlock[3] = &block_descriptor_71;
            v31 = _Block_copy(aBlock);
            v32 = v29;

            [v1 presentViewController:v32 animated:1 completion:v31];
            _Block_release(v31);

            sub_199AA2294(v3);
            sub_199AA2294(v3);
LABEL_15:

            return;
          }

          sub_199AA2294(v3);
          goto LABEL_10;
        }

        v23 = aBlock[0];
        sub_199AA2294(v3);
        v24 = sub_199DF717C();

        swift_willThrow();
        sub_199AA2294(v3);
      }
    }

LABEL_12:
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      [v25 avatarPosterPairCollectionDidEditPoster_];

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_15;
  }
}

void sub_199B66208()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_199B6740C();
    if (v2)
    {
      v4 = *&v2[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
      v3 = *&v2[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar + 8];
      v6 = *&v2[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar + 16];
      v5 = *&v2[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar + 24];
      v7 = v2;
      sub_199B492C4(v4, v3, v6, v5);

      if (v4 != 1)
      {
        if (v3)
        {
          v8 = swift_unknownObjectWeakLoadStrong();
          if (v8)
          {
            [v8 avatarPosterPairCollectionDidSelectEditAvatar_];

            swift_unknownObjectRelease();
            sub_199B49278(v4, v3, v6, v5);
            return;
          }
        }

        sub_199B49278(v4, v3, v6, v5);
      }
    }
  }
}

void sub_199B66310()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      [v2 avatarPosterPairCollectionDidSelectCreateNew];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_199B66394()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF72BF0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v69 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C38);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v81 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v74 = &v69 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v75 = &v69 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v69 - v17;
  v19 = sub_199DF9F4C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_199DF6FFC();
  v79 = *(v24 - 8);
  v80 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v72 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v69 - v29;
  sub_199B6740C();
  if (v31)
  {
    v32 = v31[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type];

    v33 = v32 == 3;
  }

  else
  {
    v33 = 0;
  }

  sub_199B6740C();
  if (!v34)
  {
    v37 = 1;
    goto LABEL_12;
  }

  v35 = (*&v34[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar] == 1) | *&v34[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar + 8];
  if (*&v34[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster] != 1)
  {
    v36 = *&v34[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster + 8];

    if (v35)
    {
      goto LABEL_11;
    }

LABEL_10:
    v36 = 0;
    goto LABEL_11;
  }

  if ((v35 & 1) == 0)
  {
    goto LABEL_10;
  }

  v36 = 1;
LABEL_11:
  v37 = v36 ^ 1;
LABEL_12:
  v38 = *&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl];
  if (!v38)
  {
    __break(1u);
    goto LABEL_37;
  }

  [v38 setHidden_];
  v39 = *&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_addPosterButton];
  if (!v39)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v71 = v5;
  v73 = v37;
  [v39 setHidden_];
  sub_199DF6FEC();
  v82 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  sub_199B054CC();
  v77 = v30;
  sub_199DF700C();
  v78 = v33;
  sub_199DF9EEC();
  sub_199AA8A84(v23, MEMORY[0x1E69E7CC0]);
  v76 = v40;
  (*(v20 + 8))(v23, v19);
  v41 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_centeredPosterButton;
  v42 = *&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_centeredPosterButton];
  if (!v42)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v43 = v42;
  sub_199DFA60C();
  v44 = sub_199DFA5EC();
  v45 = *(*(v44 - 8) + 48);
  if (v45(v18, 1, v44))
  {
    sub_199AAD408(v18, v81, &qword_1EAF75C38);
    sub_199DFA61C();

    sub_199A79A04(v18, &qword_1EAF75C38);
  }

  else
  {
    v46 = *(v79 + 16);
    v70 = v1;
    v46(v72, v77, v80);
    sub_199DF81AC();
    v47 = v71;
    sub_199DF6FBC();
    v48 = sub_199DF6FAC();
    (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
    sub_199DFA57C();
    v1 = v70;
    sub_199DFA61C();
  }

  v49 = *&v1[v41];
  v50 = v75;
  if (!v49)
  {
    goto LABEL_39;
  }

  v51 = v49;
  sub_199DFA60C();
  if (v45(v50, 1, v44))
  {
    sub_199AAD408(v50, v81, &qword_1EAF75C38);
    sub_199DFA61C();

    sub_199A79A04(v50, &qword_1EAF75C38);
  }

  else
  {
    v52 = objc_opt_self();
    v53 = &selRef_whiteColor;
    if (!v78)
    {
      v53 = &selRef_labelColor;
    }

    v54 = [v52 *v53];
    sub_199DFA5AC();
    sub_199DFA61C();
  }

  v55 = v74;
  v56 = *&v1[v41];
  if (!v56)
  {
    goto LABEL_40;
  }

  v57 = v56;
  sub_199DFA60C();
  if (v45(v55, 1, v44))
  {
    sub_199AAD408(v55, v81, &qword_1EAF75C38);
    sub_199DFA61C();

    sub_199A79A04(v55, &qword_1EAF75C38);
    v58 = v78;
  }

  else
  {
    v59 = objc_opt_self();
    v60 = &selRef_tintColor;
    v58 = v78;
    if (!v78)
    {
      v60 = &selRef_secondarySystemBackgroundColor;
    }

    v61 = [v59 *v60];
    sub_199DFA59C();
    sub_199DFA61C();
  }

  v62 = *&v1[v41];
  if (!v62)
  {
    goto LABEL_41;
  }

  [v62 setHidden_];
  v63 = *&v1[v41];
  if (!v63)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v64 = v63;

  v65 = v77;
  if (v58)
  {
    v66 = 0;
  }

  else
  {
    v67 = [v1 traitCollection];
    v68 = [v67 userInterfaceIdiom];

    v66 = v68 == 0;
  }

  [v64 setShowsMenuAsPrimaryAction_];

  (*(v79 + 8))(v65, v80);
}

id sub_199B66B8C@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v44 - v15;
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v44 - v18;
  result = [v4 collectionView];
  if (!result)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v21 = result;
  [result visibleSize];
  v23 = v22;
  v25 = v24;

  v47.origin.x = a2;
  v47.origin.y = a3;
  v47.size.width = v23;
  v47.size.height = v25;
  if (CGRectIsEmpty(v47))
  {
    result = [v4 collectionView];
    if (result)
    {
      v26 = result;
      v27 = [result indexPathsForVisibleItems];

      v28 = sub_199DF738C();
      v29 = sub_199DFA0CC();

      if (*(v29 + 16))
      {
        v45 = *(v28 - 8);
        (*(v45 + 16))(a1, v29 + ((*(v45 + 80) + 32) & ~*(v45 + 80)), v28);

        v30 = *(v45 + 56);
        v31 = a1;
        v32 = 0;
      }

      else
      {

        v30 = *(*(v28 - 8) + 56);
        v31 = a1;
        v32 = 1;
      }

      return v30(v31, v32, 1, v28);
    }

    goto LABEL_24;
  }

  v48.origin.x = a2;
  v48.origin.y = a3;
  v48.size.width = v23;
  v48.size.height = v25;
  MidX = CGRectGetMidX(v48);
  v49.origin.x = a2;
  v49.origin.y = a3;
  v49.size.width = v23;
  v49.size.height = v25;
  MidY = CGRectGetMidY(v49);
  result = [v4 collectionView];
  if (!result)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v35 = result;
  v36 = [result indexPathForItemAtPoint_];

  if (v36)
  {
    sub_199DF732C();

    v37 = sub_199DF738C();
    (*(*(v37 - 8) + 56))(v16, 0, 1, v37);
  }

  else
  {
    v37 = sub_199DF738C();
    (*(*(v37 - 8) + 56))(v16, 1, 1, v37);
  }

  sub_199AB7794(v16, v19, &qword_1EAF75C30);
  sub_199AAD408(v19, v12, &qword_1EAF75C30);
  sub_199DF738C();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  if (v39(v12, 1, v37) != 1)
  {
    sub_199A79A04(v19, &qword_1EAF75C30);
    (*(v38 + 32))(a1, v12, v37);
    return (*(v38 + 56))(a1, 0, 1, v37);
  }

  result = [v4 collectionView];
  if (!result)
  {
    goto LABEL_26;
  }

  v40 = result;
  v41 = [result indexPathsForVisibleItems];

  v42 = sub_199DFA0CC();
  if (*(v42 + 16))
  {
    (*(v38 + 16))(a1, v42 + ((*(v38 + 80) + 32) & ~*(v38 + 80)), v37);
    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  sub_199A79A04(v19, &qword_1EAF75C30);
  (*(v38 + 56))(a1, v43, 1, v37);
  result = (v39)(v12, 1, v37);
  if (result != 1)
  {
    return sub_199A79A04(v12, &qword_1EAF75C30);
  }

  return result;
}

id sub_199B6713C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v25 - v6;
  v8 = sub_199DF738C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 collectionView];
  if (result)
  {
    v14 = result;
    [result contentOffset];
    v16 = v15;
    v18 = v17;

    sub_199B66B8C(v7, v16, v18);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_199A79A04(v7, &qword_1EAF75C30);
    }

    else
    {
      v19 = *(v9 + 32);
      v19(v12, v7, v8);
      v20 = sub_199DF736C();
      v21 = *&v2[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel];
      swift_getKeyPath();
      swift_getKeyPath();
      v22 = v21;
      sub_199DF841C();

      if (v26 >> 62)
      {
        v23 = sub_199DFA87C();
      }

      else
      {
        v23 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v20 < v23)
      {
        v19(a1, v12, v8);
        v24 = 0;
        return (*(v9 + 56))(a1, v24, 1, v8);
      }

      (*(v9 + 8))(v12, v8);
    }

    v24 = 1;
    return (*(v9 + 56))(a1, v24, 1, v8);
  }

  __break(1u);
  return result;
}

void sub_199B6740C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v13 - v3;
  v5 = sub_199DF738C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199B6713C(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_199A79A04(v4, &qword_1EAF75C30);
    return;
  }

  (*(v6 + 32))(v9, v4, v5);
  v10 = *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel);
  v11 = sub_199DF736C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  if ((v14 & 0xC000000000000001) != 0)
  {
    MEMORY[0x19A8F8520](v11, v14);
    goto LABEL_7;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v11 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v12 = *(v14 + 8 * v11 + 32);
LABEL_7:

  (*(v6 + 8))(v9, v5);
}

void sub_199B67650()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v133 - v4;
  v6 = sub_199DF738C();
  v7 = *(v6 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v6, v8).n128_u64[0];
  v11 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v0 view];
  if (!v12)
  {
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v145.origin.x = v15;
  v145.origin.y = v17;
  v145.size.width = v19;
  v145.size.height = v21;
  Width = CGRectGetWidth(v145);
  v146.origin.x = v15;
  v146.origin.y = v17;
  v146.size.width = v19;
  v146.size.height = v21;
  if (CGRectGetHeight(v146) < Width)
  {
    v147.origin.x = v15;
    v147.origin.y = v17;
    v147.size.width = v19;
    v147.size.height = v21;
    Height = CGRectGetHeight(v147);
    v148.origin.x = v15;
    v148.origin.y = v17;
    v148.size.width = v19;
    v148.size.height = v21;
    v21 = CGRectGetWidth(v148);
    v19 = Height;
  }

  v24 = [v1 traitCollection];
  [v24 displayScale];
  v26 = v25;

  v27 = [v1 collectionViewLayout];
  v28 = [v1 collectionView];
  if (!v28)
  {
    goto LABEL_46;
  }

  v29 = v28;
  [v28 contentOffset];
  v31 = v30;
  v33 = v32;

  sub_199B66B8C(v5, v31, v33);
  v34 = *(v7 + 48);
  if (v34(v5, 1, v6) == 1)
  {
    MEMORY[0x19A8F5130](0, 0);
    if (v34(v5, 1, v6) != 1)
    {
      sub_199A79A04(v5, &qword_1EAF75C30);
    }
  }

  else
  {
    (*(v7 + 32))(v11, v5, v6);
  }

  v143 = v19;
  v144 = v21;
  v35 = sub_199DF730C();
  (*(v7 + 8))(v11, v6);
  v36 = [v27 layoutAttributesForItemAtIndexPath_];

  v142 = v17;
  if (v36)
  {
    [v36 frame];
    v38 = v37;
    v40 = v39;
    MaxX = v41;
    v43 = v42;
  }

  else
  {
    v38 = 0.0;
    v40 = 0.0;
    MaxX = 0.0;
    v43 = 0.0;
  }

  v44 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl;
  v45 = *&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl];
  if (!v45)
  {
    goto LABEL_47;
  }

  v46 = v15;
  v139 = v26;
  [v45 sizeForNumberOfPages_];
  v48 = v47;
  v50 = v49;
  v149.origin.x = v38;
  v149.origin.y = v40;
  v51 = MaxX;
  v149.size.width = MaxX;
  v149.size.height = v43;
  MinX = CGRectGetMinX(v149);
  v150.origin.x = v38;
  v150.origin.y = v40;
  v150.size.width = v51;
  v150.size.height = v43;
  MaxY = CGRectGetMaxY(v150);
  v151.origin.x = v38;
  v151.origin.y = v40;
  v151.size.width = v51;
  v151.size.height = v43;
  v52 = CGRectGetWidth(v151);
  v140 = v46;
  v152.origin.x = v46;
  v152.origin.y = v142;
  v152.size.width = v143;
  v152.size.height = v144;
  v53 = CGRectGetHeight(v152);
  v153.origin.x = v38;
  v153.origin.y = v40;
  v153.size.width = v51;
  MinY = v43;
  v153.size.height = v43;
  v54 = CGRectGetMaxY(v153);
  v55 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_centeredPosterButton;
  v56 = *&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_centeredPosterButton];
  if (!v56)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v136 = v40;
  v137 = v38;
  v57 = v53 - v54 - (v50 + v50) + -8.0;
  [v56 sizeThatFits_];
  v58 = [v1 traitCollection];
  v59 = [v58 userInterfaceIdiom];

  if (v59 == 1)
  {
    v60 = v142;
    v61 = v143;
    v62 = v140;
    v63 = v144;
  }

  else
  {
    v62 = v140;
    v154.origin.x = v140;
    v60 = v142;
    v61 = v143;
    v154.origin.y = v142;
    v154.size.width = v143;
    v63 = v144;
    v154.size.height = v144;
    CGRectGetWidth(v154);
    v155.origin.y = MaxY;
    v155.origin.x = MinX;
    v155.size.width = v52;
    v155.size.height = v57;
    CGRectGetHeight(v155);
  }

  BSSizeCeilForScale();
  MaxY = v64;
  v66 = v65;
  v156.origin.x = v62;
  v156.origin.y = v60;
  v156.size.width = v61;
  v156.size.height = v63;
  MinX = CGRectGetMidX(v156);
  v157.origin.x = v62;
  v157.origin.y = v60;
  v157.size.width = v61;
  v157.size.height = v63;
  CGRectGetMaxY(v157);
  v158.origin.x = v62;
  v158.origin.y = v60;
  v158.size.width = v61;
  v158.size.height = v63;
  CGRectGetMaxY(v158);
  v68 = v136;
  v67 = v137;
  v159.origin.x = v137;
  v159.origin.y = v136;
  v69 = MaxX;
  v159.size.width = MaxX;
  v70 = MinY;
  v159.size.height = MinY;
  CGRectGetMaxY(v159);
  v71 = *&v1[v55];
  if (!v71)
  {
    goto LABEL_49;
  }

  v72 = v71;
  MaxY = v66;
  BSRectWithSize();
  UIRectCenteredAboutPointScale();
  [v72 setFrame_];

  v160.origin.x = v67;
  v160.origin.y = v68;
  v160.size.width = v69;
  v160.size.height = v70;
  CGRectGetMaxY(v160);
  v73 = *&v1[v55];
  if (!v73)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  [v73 frame];
  CGRectGetMinY(v161);
  v74 = v140;
  v162.origin.x = v140;
  v75 = v142;
  v162.size.width = v143;
  v162.origin.y = v142;
  v162.size.height = v144;
  CGRectGetMidX(v162);
  v76 = *&v1[v44];
  if (!v76)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v77 = v76;
  BSRectWithSize();
  UIRectCenteredAboutPointScale();
  [v77 setFrame_];

  v78 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_addPosterButton;
  v79 = *&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_addPosterButton];
  if (!v79)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v80 = v79;
  BSSizeCeilForScale();
  BSRectWithSize();
  [v80 setBounds_];

  v81 = *&v1[v55];
  if (!v81)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  [v81 frame];
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v90 = [v1 view];
  if (!v90)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v91 = v90;
  v92 = [v90 effectiveUserInterfaceLayoutDirection];

  if (v92)
  {
    v163.origin.x = v74;
    v163.origin.y = v75;
    v94 = v143;
    v93 = v144;
    v163.size.width = v143;
    v163.size.height = v144;
    MaxX = CGRectGetMinX(v163);
    v164.origin.x = v83;
    v164.origin.y = v85;
    v164.size.width = v87;
    v164.size.height = v89;
    MinY = CGRectGetMinY(v164);
    v165.origin.x = v83;
    v165.origin.y = v85;
    v165.size.width = v87;
    v165.size.height = v89;
    v95 = CGRectGetMinX(v165);
    v166.origin.x = v74;
    v166.origin.y = v142;
    v166.size.width = v94;
    v166.size.height = v93;
    v96 = CGRectGetMinX(v166);
  }

  else
  {
    v167.origin.x = v83;
    v167.origin.y = v85;
    v167.size.width = v87;
    v167.size.height = v89;
    MaxX = CGRectGetMaxX(v167);
    v168.origin.x = v83;
    v168.origin.y = v85;
    v168.size.width = v87;
    v168.size.height = v89;
    MinY = CGRectGetMinY(v168);
    v169.origin.x = v74;
    v169.origin.y = v75;
    v169.size.width = v143;
    v169.size.height = v144;
    v95 = CGRectGetMaxX(v169);
    v170.origin.x = v83;
    v170.origin.y = v85;
    v170.size.width = v87;
    v170.size.height = v89;
    v96 = CGRectGetMaxX(v170);
  }

  v97 = v95 - v96;
  v171.origin.x = v83;
  v171.origin.y = v85;
  v171.size.width = v87;
  v171.size.height = v89;
  v98 = CGRectGetHeight(v171);
  v99 = [v1 view];
  if (!v99)
  {
    goto LABEL_55;
  }

  v100 = v99;
  v101 = [v99 effectiveUserInterfaceLayoutDirection];

  v102 = MaxX;
  v103 = MinY;
  v104 = v97;
  v105 = v98;
  if (v101)
  {
    v106 = CGRectGetMinX(*&v102);
    v107 = *&v1[v78];
    if (!v107)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v108 = v106;
    [v107 frame];
    v109 = CGRectGetWidth(v172);
    v110 = *&v1[v78];
    if (!v110)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    MidX = v108 + v109 * 1.5;
    [v110 frame];
    v112 = (MidX + CGRectGetWidth(v173)) * 0.5;
    v174.origin.x = v83;
    v174.origin.y = v85;
    v174.size.width = v87;
    v174.size.height = v89;
    v113 = v112 < CGRectGetMinX(v174);
    goto LABEL_34;
  }

  v114 = CGRectGetMaxX(*&v102);
  v115 = *&v1[v78];
  if (!v115)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v116 = v114;
  [v115 frame];
  v117 = CGRectGetWidth(v175);
  v118 = *&v1[v78];
  if (v118)
  {
    MidX = v116 + v117 * -1.5;
    [v118 frame];
    v119 = (MidX - CGRectGetWidth(v176)) * 0.5;
    v177.origin.x = v83;
    v177.origin.y = v85;
    v177.size.width = v87;
    v177.size.height = v89;
    v113 = CGRectGetMaxX(v177) < v119;
LABEL_34:
    v120 = v113;
    v121 = [v1 traitCollection];
    v122 = [v121 userInterfaceIdiom];

    v123 = *&v1[v78];
    v124 = MaxX;
    v125 = MinY;
    if (v122 == 1 && v120)
    {
      if (!v123)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v126 = v123;
    }

    else
    {
      if (!v123)
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v126 = v123;
      v178.origin.x = v124;
      v178.origin.y = v125;
      v178.size.width = v97;
      v178.size.height = v98;
      MidX = CGRectGetMidX(v178);
    }

    v179.origin.x = v124;
    v179.origin.y = v125;
    v179.size.width = v97;
    v179.size.height = v98;
    [v126 setCenter_];

    v127 = *&v1[v78];
    if (v127)
    {
      v128 = v127;
      [v128 frame];
      BSPointRoundForScale();
      v130 = v129;
      v132 = v131;
      [v128 frame];
      [v128 setFrame_];

      return;
    }

    goto LABEL_56;
  }

LABEL_62:
  __break(1u);
}

void sub_199B68098(void *a1)
{
  v2 = v1;
  v4 = sub_199DF738C();
  v5 = *(v4 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v4, v6).n128_u64[0];
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 currentPage];
  v11 = [v2 collectionView];
  if (!v11)
  {
    goto LABEL_27;
  }

  v12 = v11;
  MEMORY[0x19A8F5130](v10, 0);
  v13 = sub_199DF730C();
  (*(v5 + 8))(v9, v4);
  v14 = [v12 layoutAttributesForItemAtIndexPath_];

  if (!v14)
  {
    return;
  }

  [v14 frame];
  MinX = CGRectGetMinX(v32);
  v16 = MinX;
  if (MinX != 0.0)
  {
    v17 = MinX;
    v18 = *&v2[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_layout];
    v19 = *(v18 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemSize);
    v20 = v18 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_contentBounds;
    v21 = *(v18 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_contentBounds + 16);
    v22 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedAttributes;
    swift_beginAccess();
    v23 = *(v18 + v22);
    if (!(v23 >> 62))
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
      v25 = v17;
      if (v24)
      {
        v16 = 0.0;
        while (1)
        {
          v26 = v24 == 1 ? *(v18 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_minimumInterimSpacing) * 0.5 : *(v18 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_minimumInterimSpacing);
          v27 = v16 + v19 + v26;
          if (v25 < v27 && v27 < v21)
          {
            break;
          }

          v16 = v27;
          if (!--v24)
          {
            goto LABEL_16;
          }
        }

        v21 = v27;
      }

      else
      {
LABEL_16:
        v16 = 0.0;
      }

      if (vabdd_f64(v16, v25) >= vabdd_f64(v21, v25))
      {
        if (*(v20 + 16) - v19 >= v21)
        {
          v16 = v21;
        }

        else
        {
          v16 = *(v20 + 16) - v19;
        }
      }

      goto LABEL_22;
    }

    v24 = sub_199DFA87C();
    if ((v24 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_22:
  v29 = [v2 collectionView];
  if (!v29)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v30 = v29;
  [v29 setContentOffset:1 animated:{v16, 0.0}];
}

id sub_199B683B0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v14 - v8;
  if (a2)
  {
    sub_199B6713C(&v14 - v8);
    v10 = sub_199DF738C();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      return sub_199A79A04(v9, &qword_1EAF75C30);
    }

    a1 = sub_199DF736C();
    (*(v11 + 8))(v9, v10);
  }

  v13 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl;
  result = *(v3 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = [result currentPage];
  if (result == a1)
  {
    return result;
  }

  result = *(v3 + v13);
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return [result setCurrentPage_];
}

void sub_199B68528(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = sub_199DF738C();
  v9 = *(v8 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v8, v10).n128_u64[0];
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v4 collectionView];
  if (!v14)
  {
    goto LABEL_41;
  }

  v15 = v14;
  MEMORY[0x19A8F5130](a1, 0);
  v16 = sub_199DF730C();
  (*(v9 + 8))(v13, v8);
  v17 = [v15 layoutAttributesForItemAtIndexPath_];

  if (!v17)
  {
    return;
  }

  [v17 frame];
  MinX = CGRectGetMinX(v46);
  v19 = MinX;
  if (MinX != 0.0)
  {
    v20 = MinX;
    v21 = *&v4[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_layout];
    v22 = *(v21 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemSize);
    v23 = v21 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_contentBounds;
    v24 = *(v21 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_contentBounds + 16);
    v25 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedAttributes;
    swift_beginAccess();
    v26 = *(v21 + v25);
    if (!(v26 >> 62))
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
      v28 = v20;
      if (v27)
      {
        v19 = 0.0;
        while (1)
        {
          v29 = v27 == 1 ? *(v21 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_minimumInterimSpacing) * 0.5 : *(v21 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_minimumInterimSpacing);
          v30 = v19 + v22 + v29;
          if (v28 < v30 && v30 < v24)
          {
            break;
          }

          v19 = v30;
          if (!--v27)
          {
            goto LABEL_16;
          }
        }

        v24 = v30;
      }

      else
      {
LABEL_16:
        v19 = 0.0;
      }

      if (vabdd_f64(v19, v28) >= vabdd_f64(v24, v28))
      {
        if (*(v23 + 16) - v22 >= v24)
        {
          v19 = v24;
        }

        else
        {
          v19 = *(v23 + 16) - v22;
        }
      }

      goto LABEL_22;
    }

    v27 = sub_199DFA87C();
    if ((v27 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_22:
  v32 = [v4 collectionView];
  v33 = v32;
  if (a2 & 1) != 0 && (a3)
  {
    if (v32)
    {
      [v32 _setContentOffsetWithDecelerationAnimation_];

      return;
    }

    goto LABEL_43;
  }

  if (!v32)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return;
  }

  [v32 setContentOffset:a2 & 1 animated:{v19, 0.0}];

  if (a2)
  {
    goto LABEL_37;
  }

  sub_199B683B0(0, 1);
  sub_199B6740C();
  if (!v34)
  {
    goto LABEL_37;
  }

  v35 = v34;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

LABEL_37:
    return;
  }

  v37 = Strong;
  v38 = sub_199B691B8();
  sub_199B6740C();
  if (v39 && (v40 = v39[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type], v39, v40 == 3) || (sub_199B6740C(), !v41) || (v42 = *&v41[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster], v43 = v41, sub_199AA2284(v42), v43, v42 == 1))
  {
    v42 = 0;
  }

  sub_199B69270();
  [v37 avatarPosterPairCollectionDidSelectAvatar:v38 poster:v42 selectionDidChange:v44 & 1 isShared:v35[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type] == 1];

  swift_unknownObjectRelease();
}

void sub_199B6890C()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = v1;
  [v1 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = 0.0;
  v31.size.height = 0.0;
  v30.origin.x = v4;
  v30.origin.y = v6;
  v30.size.width = v8;
  v30.size.height = v10;
  if (!CGRectEqualToRect(v30, v31))
  {
    v11 = *&v0[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel] + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_pendingDeletedIndex;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = [v0 collectionView];
    v15 = v14;
    if (v13)
    {
      if (!v14)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      [v14 reloadData];

      sub_199B68528(0, 0, 0);
      v16 = 0;
    }

    else
    {
      if (!v14)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = v12;
      v19 = swift_allocObject();
      v16 = sub_199B6B02C;
      *(v19 + 16) = sub_199B6B02C;
      *(v19 + 24) = v18;
      aBlock[4] = sub_199B12788;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_199B630A0;
      aBlock[3] = &block_descriptor_16;
      v20 = _Block_copy(aBlock);

      [v15 performBatchUpdates:v20 completion:0];
      _Block_release(v20);
    }

    sub_199B683B0(0, 1);
    v21 = [v0 collectionView];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 numberOfItemsInSection_];

      v24 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl;
      v25 = *&v0[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl];
      if (v25)
      {
        if ([v25 numberOfPages] == v23)
        {
LABEL_16:
          sub_199B66394();
          sub_199A9A5FC(v16);
          return;
        }

        v26 = *&v0[v24];
        if (v26)
        {
          [v26 setNumberOfPages_];
          sub_199B683B0(0, 1);
          goto LABEL_16;
        }

LABEL_22:
        __break(1u);
        return;
      }

      goto LABEL_19;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_199DFA31C();
  v27 = CNUILogPosters();
  sub_199DF7FEC();
}

void sub_199B68C54(uint64_t a1, uint64_t a2)
{
  v3 = sub_199DF72FC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_layout);
    sub_199DF72EC();
    sub_199B5A9EC();

    (*(v4 + 8))(v7, v3);
    v11 = [v9 collectionView];
    if (v11)
    {
      v12 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF722D8);
      sub_199DF738C();
      *(swift_allocObject() + 16) = xmmword_199E37D40;
      MEMORY[0x19A8F5130](a2, 0);
      v13 = sub_199DFA0BC();

      [v12 deleteItemsAtIndexPaths_];

      v14 = *&v9[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel] + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_pendingDeletedIndex;
      *v14 = 0;
      *(v14 + 8) = 1;
      sub_199B68EA0();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_199B68EA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v23 - v3;
  v5 = sub_199DF738C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199B6713C(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_199A79A04(v4, &qword_1EAF75C30);
    return;
  }

  (*(v6 + 32))(v9, v4, v5);
  v10 = *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel);
  v11 = sub_199DF736C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  if ((v24 & 0xC000000000000001) == 0)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v24 + 8 * v11 + 32);
      goto LABEL_7;
    }

    __break(1u);
    return;
  }

  v12 = MEMORY[0x19A8F8520](v11, v24);
LABEL_7:
  v13 = v12;

  (*(v6 + 8))(v9, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = sub_199B691B8();
    sub_199B6740C();
    if (v17 && (v18 = v17[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type], v17, v18 == 3) || (sub_199B6740C(), !v19) || (v20 = *&v19[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster], v21 = v19, sub_199AA2284(v20), v21, v20 == 1))
    {
      v20 = 0;
    }

    sub_199B69270();
    [v15 avatarPosterPairCollectionDidSelectAvatar:v16 poster:v20 selectionDidChange:v22 & 1 isShared:v13[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type] == 1];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void *sub_199B691B8()
{
  sub_199B6740C();
  if (v0)
  {
    v1 = v0[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type];

    if (v1 == 3)
    {
      return 0;
    }
  }

  sub_199B6740C();
  if (!v2)
  {
    return 0;
  }

  v3 = *&v2[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
  v4 = *&v2[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar + 8];
  v5 = *&v2[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar + 16];
  v6 = *&v2[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar + 24];
  v7 = v2;
  sub_199B492C4(v3, v4, v5, v6);

  if (v3 == 1)
  {
    return 0;
  }

  v8 = v3;
  sub_199B49278(v3, v4, v5, v6);
  return v3;
}

void sub_199B69270()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - v4;
  v6 = sub_199DF738C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199B6713C(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_199A79A04(v5, &qword_1EAF75C30);
    return;
  }

  (*(v7 + 32))(v10, v5, v6);
  v11 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel;
  v12 = *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel);
  v13 = sub_199DF736C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  if ((v18 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x19A8F8520](v13, v18);
LABEL_7:
    v13 = v14;

    (*(v7 + 8))(v10, v6);
    v15 = *(v1 + v11);
    swift_getKeyPath();
    swift_getKeyPath();
    v16 = v15;
    sub_199DF841C();

    if (!(v18 >> 62))
    {
LABEL_8:

      return;
    }

LABEL_11:
    sub_199DFA87C();
    goto LABEL_8;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v13 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v18 + 8 * v13 + 32);
    goto LABEL_7;
  }

  __break(1u);
}

void sub_199B695AC(void *a1)
{
  v2 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_isScrollingOrSettling;
  if ((v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_isScrollingOrSettling] & 1) == 0)
  {
    v3 = [a1 _isAnimatingScroll];
    v4 = v1[v2];
    v1[v2] = v3;
    if ((v3 & 1) == 0)
    {
      if (v4)
      {
        sub_199B683B0(0, 1);
      }
    }
  }

  v5 = [v1 collectionView];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 visibleCells];

    sub_199A7A02C(0, &unk_1EAF75C90);
    v8 = sub_199DFA0CC();

    if (v8 >> 62)
    {
LABEL_24:
      v9 = sub_199DFA87C();
      if (v9)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_8:
        v10 = 0;
        v11 = &qword_1EAF73000;
        v12 = &selRef_containers;
        do
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x19A8F8520](v10, v8);
          }

          else
          {
            if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_23;
            }

            v13 = *(v8 + 8 * v10 + 32);
          }

          v14 = v13;
          v15 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

          type metadata accessor for CNAvatarPosterPairCollectionViewCell();
          v16 = swift_dynamicCastClass();
          if (!v16)
          {
            goto LABEL_9;
          }

          v17 = v16;
          v18 = *(v16 + v11[367]);
          if (!v18)
          {
            __break(1u);
            goto LABEL_27;
          }

          [v18 v12[29]];
          if (v20 == 0.0 && v19 == 0.0)
          {
LABEL_9:
          }

          else
          {
            v21 = v11;
            v22 = objc_opt_self();
            v23 = swift_allocObject();
            *(v23 + 16) = v17;
            aBlock[4] = sub_199B6B6EC;
            aBlock[5] = v23;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_199AB45A0;
            aBlock[3] = &block_descriptor_101;
            v24 = _Block_copy(aBlock);
            v25 = v14;

            v26 = v22;
            v11 = v21;
            v12 = &selRef_containers;
            [v26 animateWithDuration:v24 animations:0.3];

            _Block_release(v24);
          }

          ++v10;
        }

        while (v15 != v9);
      }
    }

    sub_199B66394();
    sub_199B68EA0();
  }

  else
  {
LABEL_27:
    __break(1u);
  }
}

uint64_t sub_199B69A04()
{
  v1 = v0;
  v2 = sub_199DF738C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_199B4B6FC(MEMORY[0x1E69E7CC0]);
  v7 = &selRef_cnui_footnoteFontDescriptor;
  v8 = [v0 collectionView];
  if (!v8)
  {
    goto LABEL_36;
  }

  v9 = v8;
  v10 = [v8 indexPathsForVisibleItems];

  v11 = sub_199DFA0CC();
  v52 = *(v11 + 16);
  if (!v52)
  {
LABEL_29:

    return v49;
  }

  v12 = 0;
  v50 = (v3 + 8);
  v51 = v3 + 16;
  v47 = v11;
  v48 = v6;
  while (v12 < *(v11 + 16))
  {
    (*(v3 + 16))(v6, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v2);
    v13 = [v1 v7[27]];
    if (!v13)
    {
      goto LABEL_33;
    }

    v14 = v13;
    v15 = sub_199DF730C();
    v16 = [v14 cellForItemAtIndexPath_];

    if (!v16)
    {
      goto LABEL_5;
    }

    type metadata accessor for CNAvatarPosterPairCollectionViewCell();
    v17 = swift_dynamicCastClass();
    if (!v17)
    {

LABEL_5:
      (*v50)(v6, v2);
      goto LABEL_6;
    }

    v18 = v17;
    v19 = sub_199DF736C();
    v20 = OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollView;
    v21 = *(v18 + OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollView);
    if (!v21)
    {
      goto LABEL_34;
    }

    [v21 bounds];
    v23 = v22 * *(v18 + OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_maximumVerticalRevealFraction);
    v24 = 0.0;
    if (v23 > 0.0)
    {
      v25 = *(v18 + v20);
      if (!v25)
      {
        goto LABEL_35;
      }

      [v25 contentOffset];
      v27 = v26 / v23;
      if (v26 / v23 <= 0.0)
      {
        v27 = 0.0;
      }

      v24 = 1.0;
      if (v27 <= 1.0)
      {
        v24 = v27;
      }
    }

    v28 = v3;
    v29 = v2;
    v30 = v1;
    v31 = v49;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v31;
    v34 = sub_199B4AB20(v19);
    v35 = *(v31 + 16);
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_31;
    }

    v38 = v33;
    if (*(v31 + 24) >= v37)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_199B75AF8();
      }
    }

    else
    {
      sub_199B74F8C(v37, isUniquelyReferenced_nonNull_native);
      v39 = sub_199B4AB20(v19);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_37;
      }

      v34 = v39;
    }

    v41 = v53;
    v49 = v53;
    if (v38)
    {
      *(v53[7] + 8 * v34) = v24;

      v6 = v48;
      v2 = v29;
      (*v50)(v48, v29);
    }

    else
    {
      v53[(v34 >> 6) + 8] |= 1 << v34;
      *(v41[6] + 8 * v34) = v19;
      *(v41[7] + 8 * v34) = v24;

      v6 = v48;
      v2 = v29;
      (*v50)(v48, v29);
      v42 = v41[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_32;
      }

      v41[2] = v44;
    }

    v1 = v30;
    v3 = v28;
    v7 = &selRef_cnui_footnoteFontDescriptor;
    v11 = v47;
LABEL_6:
    if (v52 == ++v12)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_199DFA9FC();
  __break(1u);
  return result;
}

void sub_199B69E34()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v21 - v4;
  v6 = sub_199DF738C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199B6713C(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_199A79A04(v5, &qword_1EAF75C30);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v11 = [v0 collectionView];
    if (!v11)
    {
LABEL_16:
      __break(1u);
      return;
    }

    v12 = v11;
    v13 = sub_199DF730C();
    v14 = [v12 cellForItemAtIndexPath_];

    if (v14)
    {
      type metadata accessor for CNAvatarPosterPairCollectionViewCell();
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        *(v15 + OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_showShadow) = 0;
        sub_199AF074C();
      }
    }

    (*(v7 + 8))(v10, v6);
  }

  v16 = [v1 collectionView];
  if (!v16)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v16;
  v18 = sub_199DF730C();
  v19 = [v17 cellForItemAtIndexPath_];

  if (v19)
  {
    type metadata accessor for CNAvatarPosterPairCollectionViewCell();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      *(v20 + OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_showShadow) = 1;
      sub_199AF074C();
    }
  }
}

uint64_t sub_199B6A140@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  *a1 = v3;
  return result;
}

uint64_t sub_199B6A1C0(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF81AC();
  v3 = v2;
  return sub_199DF842C();
}

uint64_t sub_199B6A238(uint64_t a1)
{
  v2 = sub_199DF77BC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CA8);
    v11 = sub_199DFA6FC();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_199B6B664(&unk_1EAF714A0);
      v18 = sub_199DF9EBC();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v7, *(v11 + 48) + v20 * v16, v2);
          sub_199B6B664(&qword_1EAF71498);
          v25 = sub_199DF9EDC();
          v26 = *v17;
          (*v17)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_199B6A530(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_199DFA87C())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75C80);
      v3 = sub_199DFA6FC();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_199DFA87C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x19A8F8520](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_199DFA4DC();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_199A7A02C(0, &qword_1EAF75C70);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_199DFA4EC();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_199DFA4DC();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_199A7A02C(0, &qword_1EAF75C70);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_199DFA4EC();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_199B6A820(void *a1)
{
  v2 = v1;
  v22 = a1;
  v3 = sub_199DF738C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v8 = [v2 collectionView];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 indexPathsForVisibleItems];

    v11 = sub_199DFA0CC();
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = 0;
      v23 = v4 + 16;
      while (1)
      {
        if (v13 >= *(v11 + 16))
        {
          __break(1u);
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

        (*(v4 + 16))(v7, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v3);
        v14 = [v24 collectionView];
        if (!v14)
        {
          goto LABEL_14;
        }

        v15 = v14;
        v16 = sub_199DF730C();
        v17 = [v15 cellForItemAtIndexPath_];

        (*(v4 + 8))(v7, v3);
        if (v17)
        {

          if (v17 == v22)
          {
            break;
          }
        }

        if (v12 == ++v13)
        {
          goto LABEL_11;
        }
      }

      v18 = *&v24[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_layout];
      v19 = [v18 _invalidationContextForRefreshingVisibleElementAttributes];
      if (!v19)
      {
        goto LABEL_16;
      }

      v20 = v19;
      [v18 invalidateLayoutWithContext_];
    }

    else
    {
LABEL_11:
    }
  }

  else
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }
}

id sub_199B6AA90(void *a1, void *a2, void *a3, uint64_t a4)
{
  v46 = &unk_1F0DF2790;
  swift_unknownObjectRetain();
  if (!swift_dynamicCastObjCProtocolConditional())
  {
    swift_unknownObjectRelease();
  }

  v39 = type metadata accessor for CNAvatarPosterPairCollectionViewController();
  v8 = objc_allocWithZone(v39);
  swift_unknownObjectWeakInit();
  *&v8[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModelSubscriber] = 0;
  *&v8[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl] = 0;
  *&v8[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_centeredPosterButton] = 0;
  *&v8[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_addPosterButton] = 0;
  *&v8[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_lastPosterConfiguration] = 0;
  v9 = &v8[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_activePosterSnapshotKeepActiveAssertionReason];
  *v9 = 0;
  v9[1] = 0;
  v8[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_needsReload] = 0;
  *&v8[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController____lazy_storage___feedbackGenerator] = 0;
  *&v8[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControlPreferredNumberOfVisibleIndicators] = 5;
  v8[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_isScrollingOrSettling] = 0;
  *&v8[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_configuration] = a1;
  *&v8[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_contact] = a2;
  *&v8[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_contactForSharedProfile] = a3;
  v10 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_mode;
  *&v8[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_mode] = a4;
  swift_unknownObjectWeakAssign();
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v38 = v11;
  v14 = v12;
  v15 = v13;
  v16 = [MEMORY[0x1E69DC938] currentDevice];
  v17 = [v16 userInterfaceIdiom];

  v18 = (v17 & 0xFFFFFFFFFFFFFFFBLL) != 1;
  v19 = [objc_opt_self() mainThreadScheduler];
  v20 = type metadata accessor for CNAvatarPosterPairCollectionViewModel();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_pendingDeletedIndex];
  *v22 = 0;
  v22[8] = 1;
  v21[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_deletingContactPair] = 0;
  *&v21[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel____lazy_storage___pairDeduper] = 0;
  *&v21[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_contact] = v14;
  *&v21[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_contactForSharedProfile] = v15;
  *&v21[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_displayMode] = v18;
  v21[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_loadingMode] = 1;
  *&v21[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_workQueue] = v19;
  swift_beginAccess();
  v45 = MEMORY[0x1E69E7CC0];
  v23 = v14;
  v24 = v15;
  v25 = v23;
  v26 = v24;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CA0);
  sub_199DF83FC();
  swift_endAccess();
  v44.receiver = v21;
  v44.super_class = v20;
  v27 = objc_msgSendSuper2(&v44, sel_init);
  v28 = *&v27[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_workQueue];
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  aBlock[4] = sub_199B6B6FC;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199AB45A0;
  aBlock[3] = &block_descriptor_139;
  v30 = _Block_copy(aBlock);
  v31 = v27;
  swift_unknownObjectRetain();

  [v28 performBlock_];
  _Block_release(v30);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *&v8[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel] = v31;
  v32 = *&v8[v10];
  v33 = objc_allocWithZone(type metadata accessor for CNAvatarPosterPairCollectionViewLayout());
  v34 = sub_199B5A864(v32);
  *&v8[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_layout] = v34;
  v42.receiver = v8;
  v42.super_class = v39;
  v35 = v34;
  v36 = objc_msgSendSuper2(&v42, sel_initWithCollectionViewLayout_, v35);

  swift_unknownObjectRelease();
  *&v40[OBJC_IVAR____TtC10ContactsUI49CNAvatarPosterPairCollectionViewControllerWrapper_viewController] = v36;
  v41.receiver = v40;
  v41.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewControllerWrapper();
  return objc_msgSendSuper2(&v41, sel_init);
}

void sub_199B6B088()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModelSubscriber) = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl) = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_centeredPosterButton) = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_addPosterButton) = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_lastPosterConfiguration) = 0;
  v1 = (v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_activePosterSnapshotKeepActiveAssertionReason);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_needsReload) = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController____lazy_storage___feedbackGenerator) = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControlPreferredNumberOfVisibleIndicators) = 5;
  *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_isScrollingOrSettling) = 0;
  sub_199DFA85C();
  __break(1u);
}

void sub_199B6B178()
{
  sub_199B6740C();
  if (!v1)
  {
    goto LABEL_9;
  }

  if (v1[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type] == 3)
  {
    goto LABEL_8;
  }

  v2 = *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_mode);
  if (v2 != 1)
  {
    if (!v2)
    {
      v3 = &OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar;
      goto LABEL_7;
    }

LABEL_8:

LABEL_9:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    [Strong avatarPosterPairCollectionDidSelectCreateNew];
    goto LABEL_11;
  }

  v3 = &OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster;
LABEL_7:
  if (*&v1[*v3] == 1)
  {
    goto LABEL_8;
  }

  v8 = v1;
  v5 = v1[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_isRecentUsedAsContactPair];
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v5 == 1)
  {
    if (v6)
    {
      v7 = sel_avatarPosterPairCollectionDidTapDismiss;
LABEL_20:
      [v6 v7];

LABEL_11:

      swift_unknownObjectRelease();
      return;
    }
  }

  else if (v6)
  {
    v7 = sel_avatarPosterPairCollectionDidConfirmSelection;
    goto LABEL_20;
  }
}

uint64_t sub_199B6B2C4(double *a1, double a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v31 - v8;
  v10 = sub_199DF738C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v15 = a1[1];
  if (*a1 == 0.0)
  {
    v17 = *a1;
    goto LABEL_23;
  }

  v18 = a1[1];
  v19 = *(v3 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_layout);
  v20 = *(v19 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemSize);
  v21 = v19 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_contentBounds;
  v22 = *(v19 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_contentBounds + 16);
  v23 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedAttributes;
  swift_beginAccess();
  v24 = *(v19 + v23);
  if (v24 >> 62)
  {
    result = sub_199DFA87C();
    if (result < 0)
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }
  }

  else
  {
    result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = v18;
  if (result)
  {
    v17 = 0.0;
    while (1)
    {
      v26 = result == 1 ? *(v19 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_minimumInterimSpacing) * 0.5 : *(v19 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_minimumInterimSpacing);
      v27 = v17 + v20 + v26;
      if (v16 < v27 && v27 < v22)
      {
        break;
      }

      v17 = v27;
      if (!--result)
      {
        goto LABEL_15;
      }
    }

    v22 = v27;
  }

  else
  {
LABEL_15:
    v17 = 0.0;
  }

  if (fabs(a2) >= 0.05)
  {
    if (a2 < 0.0)
    {
      goto LABEL_23;
    }
  }

  else if (vabdd_f64(v17, v16) < vabdd_f64(v22, v16))
  {
    goto LABEL_23;
  }

  v17 = *(v21 + 16) - v20;
  if (v17 >= v22)
  {
    v17 = v22;
  }

LABEL_23:
  *a1 = v17;
  a1[1] = v15;
  sub_199B66B8C(v9, v17, v15);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_199A79A04(v9, &qword_1EAF75C30);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_199B69E34();
  v29 = sub_199DF736C();
  v30 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl;
  result = *(v3 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl);
  if (!result)
  {
    goto LABEL_32;
  }

  if ([result currentPage] == v29)
  {
    return (*(v11 + 8))(v14, v10);
  }

  result = *(v3 + v30);
  if (result)
  {
    [result setCurrentPage_];
    return (*(v11 + 8))(v14, v10);
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_199B6B608(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_199A7A02C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_199B6B664(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_199DF77BC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_199B6B72C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_199B6B774(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_199B6B7F4@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_199DF9B5C();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CB0);
  sub_199B6B978(a1, a2 + *(v5 + 44));
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CB8) + 36);
  v7 = *(sub_199DF896C() + 20);
  v8 = *MEMORY[0x1E697F468];
  v9 = sub_199DF8D1C();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  __asm { FMOV            V0.2D, #10.0 }

  *v6 = _Q0;
  v15 = [objc_opt_self() systemGray6Color];
  v16 = sub_199DF969C();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CC0);
  *&v6[*(v17 + 52)] = v16;
  *&v6[*(v17 + 56)] = 256;
  v18 = sub_199DF9B5C();
  v20 = v19;
  v21 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CC8) + 36)];
  *v21 = v18;
  v21[1] = v20;
  v22 = sub_199DF96DC();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CD0);
  v25 = (a2 + *(result + 36));
  *v25 = KeyPath;
  v25[1] = v22;
  return result;
}

uint64_t sub_199B6B978@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CD8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v66 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CE0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v66 - v14;
  *v15 = sub_199DF8D4C();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CE8);
  sub_199B6BEFC(a1, &v15[*(v16 + 44)]);
  LOBYTE(a1) = sub_199DF917C();
  sub_199DF84FC();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CF0) + 36)];
  *v25 = a1;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  LOBYTE(a1) = sub_199DF918C();
  sub_199DF84FC();
  v26 = &v15[*(v12 + 44)];
  *v26 = a1;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E39320;
  v32 = sub_199DF919C();
  *(inited + 32) = v32;
  v33 = sub_199DF91BC();
  *(inited + 33) = v33;
  v34 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v32)
  {
    v34 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v33)
  {
    v34 = sub_199DF91AC();
  }

  sub_199DF84FC();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_199AB7794(v15, v10, &qword_1EAF75CE0);
  v43 = &v10[*(v3 + 36)];
  *v43 = v34;
  *(v43 + 1) = v36;
  *(v43 + 2) = v38;
  *(v43 + 3) = v40;
  *(v43 + 4) = v42;
  v43[40] = 0;
  sub_199AB7794(v10, v6, &qword_1EAF75CD8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CF8);
  v68 = &v66;
  v45 = *(v44 - 8);
  v46 = v45[8];
  MEMORY[0x1EEE9AC00](v44, v47);
  v48 = sub_199DF99DC();
  v67 = &v66;
  v49 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v50);
  v52 = &v66 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF99CC();
  sub_199DF919C();
  v66 = v6;
  sub_199B6DE48();
  sub_199DF94AC();
  v53 = (*(v49 + 8))(v52, v48);
  v67 = &v66;
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v66 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_199AAD408(v6, v56, &qword_1EAF75CD8);
  v69 = &v66;
  v59 = MEMORY[0x1EEE9AC00](v57, v58);
  v60 = &v66 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v45[2];
  v61(v60, v60, v44, v59);
  v62 = v70;
  sub_199AAD408(v56, v70, &qword_1EAF75CD8);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D00);
  (v61)(v62 + *(v63 + 48), v60, v44);
  v64 = v45[1];
  v64(v60, v44);
  sub_199A79A04(v66, &qword_1EAF75CD8);
  v64(v60, v44);
  return sub_199A79A04(v56, &qword_1EAF75CD8);
}

uint64_t sub_199B6BEFC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  if (*a1)
  {
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D10);
    v74 = *(v72 - 1);
    v2 = v74;
    v3 = *(v74 + 64);
    MEMORY[0x1EEE9AC00](v72, v4);
    v5 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v66 = v5;
    sub_199B6C790(v5);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D08);
    v71 = &v62;
    v6 = *(v73 - 8);
    v7 = v6[8];
    MEMORY[0x1EEE9AC00](v73, v8);
    v65 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_199B6CBC8();
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D30);
    v70 = &v62;
    MEMORY[0x1EEE9AC00](v68, v9);
    v11 = &v62 - v10;
    v69 = &v62;
    v14 = MEMORY[0x1EEE9AC00](v12, v13);
    v15 = v5;
    v16 = *(v2 + 16);
    v17 = v5;
    v18 = v72;
    v19 = v16(v15, v17, v72, v14);
    v67 = &v62;
    v21 = MEMORY[0x1EEE9AC00](v19, v20);
    v22 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = v6[2];
    v24 = v73;
    v23(v22, v22, v73, v21);
    (v16)(v11, v15, v18);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D38);
    (v23)(&v11[*(v25 + 48)], v22, v24);
    v26 = v6[1];
    v63 = (v6 + 1);
    v64 = v26;
    v26(v22, v24);
    v27 = *(v74 + 8);
    v74 += 8;
    v27(v15, v18);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D28);
    v62 = &v62;
    MEMORY[0x1EEE9AC00](v28, v29);
    sub_199AAD408(v11, &v62 - v30, &qword_1EAF75D30);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D18);
    sub_199AA0B90(&qword_1EAF71148, &qword_1EAF75D30);
    sub_199AA0B90(&qword_1EAF71150, &qword_1EAF75D18);
    sub_199DF8EDC();
    sub_199A79A04(v11, &qword_1EAF75D30);
    v64(v65, v73);
    return (v27)(v66, v72);
  }

  else
  {
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D08);
    v74 = *(v63 - 8);
    v32 = v74;
    v33 = *(v74 + 64);
    MEMORY[0x1EEE9AC00](v63, v34);
    v67 = &v62 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_199B6CBC8();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D10);
    v72 = &v62;
    v73 = v35;
    v36 = *(v35 - 8);
    v37 = v36[8];
    MEMORY[0x1EEE9AC00](v35, v38);
    v39 = &v62 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    v66 = v39;
    sub_199B6C790(v39);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D18);
    v71 = &v62;
    MEMORY[0x1EEE9AC00](v69, v40);
    v42 = &v62 - v41;
    v70 = &v62;
    v45 = MEMORY[0x1EEE9AC00](v43, v44);
    v46 = &v62 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = *(v32 + 16);
    v48 = v63;
    v49 = v47(v46, v46, v63, v45);
    v68 = &v62;
    v51 = MEMORY[0x1EEE9AC00](v49, v50);
    v52 = v39;
    v53 = v36[2];
    v54 = v39;
    v55 = v73;
    v53(v52, v54, v73, v51);
    (v47)(v42, v46, v48);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D20);
    (v53)(&v42[*(v56 + 48)], v52, v55);
    v57 = v36[1];
    v64 = (v36 + 1);
    v65 = v57;
    (v57)(v52, v55);
    v58 = *(v74 + 8);
    v74 += 8;
    v58(v46, v48);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D28);
    v62 = &v62;
    MEMORY[0x1EEE9AC00](v59, v60);
    sub_199AAD408(v42, &v62 - v61, &qword_1EAF75D18);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D30);
    sub_199AA0B90(&qword_1EAF71148, &qword_1EAF75D30);
    sub_199AA0B90(&qword_1EAF71150, &qword_1EAF75D18);
    sub_199DF8EDC();
    sub_199A79A04(v42, &qword_1EAF75D18);
    (v65)(v66, v73);
    return (v58)(v67, v48);
  }
}

uint64_t sub_199B6C790@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43[1] = a1;
  v3 = sub_199DF9F4C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D40);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v43 - v10;
  sub_199DF9EEC();
  v12 = sub_199AA8A84(v7, MEMORY[0x1E69E7CC0]);
  v14 = v13;
  (*(v4 + 8))(v7, v3);
  v15 = *(v2 + 24);
  v44[0] = *(v2 + 8);
  v44[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D48);
  sub_199DF999C();
  *&v44[0] = v12;
  *(&v44[0] + 1) = v14;
  sub_199A9C458();
  sub_199DF9BEC();
  v16 = [objc_opt_self() labelColor];
  v17 = sub_199DF969C();
  KeyPath = swift_getKeyPath();
  v19 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D50) + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  LOBYTE(v17) = sub_199DF917C();
  sub_199DF84FC();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D58) + 36)];
  *v28 = v17;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  LOBYTE(v17) = sub_199DF918C();
  sub_199DF84FC();
  v29 = &v11[*(v8 + 36)];
  *v29 = v17;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  v34 = swift_allocObject();
  v35 = *(v2 + 48);
  *(v34 + 48) = *(v2 + 32);
  *(v34 + 64) = v35;
  *(v34 + 80) = *(v2 + 64);
  *(v34 + 96) = *(v2 + 80);
  v36 = *(v2 + 16);
  *(v34 + 16) = *v2;
  *(v34 + 32) = v36;
  v37 = sub_199DF880C();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v39);
  v41 = v43 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199B6D280(v2, v44);
  sub_199DF87FC();
  sub_199B6DECC(&qword_1EAF71260, &qword_1EAF75D40, &unk_199E420B8, sub_199B6DE9C);
  sub_199DF963C();

  (*(v38 + 8))(v41, v37);
  return sub_199A79A04(v11, &qword_1EAF75D40);
}

uint64_t sub_199B6CBC8()
{
  v1 = v0;
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D58);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v33 - v9;
  sub_199DF9EEC();
  v11 = sub_199AA8A84(v6, MEMORY[0x1E69E7CC0]);
  v13 = v12;
  (*(v3 + 8))(v6, v2);
  v14 = *(v1 + 56);
  v33[0] = *(v1 + 40);
  v33[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D48);
  sub_199DF999C();
  *&v33[0] = v11;
  *(&v33[0] + 1) = v13;
  sub_199A9C458();
  sub_199DF9BEC();
  v15 = [objc_opt_self() labelColor];
  v16 = sub_199DF969C();
  KeyPath = swift_getKeyPath();
  v18 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D50) + 36)];
  *v18 = KeyPath;
  v18[1] = v16;
  LOBYTE(v16) = sub_199DF917C();
  sub_199DF84FC();
  v19 = &v10[*(v7 + 36)];
  *v19 = v16;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  v24 = swift_allocObject();
  v25 = *(v1 + 48);
  *(v24 + 48) = *(v1 + 32);
  *(v24 + 64) = v25;
  *(v24 + 80) = *(v1 + 64);
  *(v24 + 96) = *(v1 + 80);
  v26 = *(v1 + 16);
  *(v24 + 16) = *v1;
  *(v24 + 32) = v26;
  v27 = sub_199DF880C();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199B6D280(v1, v33);
  sub_199DF87FC();
  sub_199B6DE9C();
  sub_199DF963C();

  (*(v28 + 8))(v31, v27);
  return sub_199A79A04(v10, &qword_1EAF75D58);
}

void sub_199B6CF7C(uint64_t a1)
{
  v7 = *(a1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75870);
  sub_199DF984C();
  v2 = v6;
  v3 = *(a1 + 24);
  v7 = *(a1 + 8);
  v8 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D48);
  MEMORY[0x19A8F7740](&v6, v4);
  v5 = sub_199DF9F5C();

  [v2 setGivenName_];
}

void sub_199B6D038(uint64_t a1)
{
  v7 = *(a1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75870);
  sub_199DF984C();
  v2 = v6;
  v3 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D48);
  MEMORY[0x19A8F7740](&v6, v4);
  v5 = sub_199DF9F5C();

  [v2 setFamilyName_];
}

uint64_t sub_199B6D0F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_199DF9F4C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = v1[2];
  v9 = v1[4];
  v24 = v1[3];
  v25 = v9;
  v26 = *(v1 + 10);
  v10 = v1[1];
  v21 = *v1;
  v22 = v10;
  v23 = v8;
  sub_199DF9EEC();
  v11 = sub_199AA8A84(v7, MEMORY[0x1E69E7CC0]);
  v13 = v12;
  (*(v4 + 8))(v7, v3);
  v14 = swift_allocObject();
  v15 = v24;
  v16 = v25;
  *(v14 + 48) = v23;
  *(v14 + 64) = v15;
  *(v14 + 80) = v16;
  *(v14 + 96) = v26;
  v17 = v22;
  *(v14 + 16) = v21;
  *(v14 + 32) = v17;
  *a1 = v11;
  a1[1] = v13;
  a1[2] = sub_199B6D278;
  a1[3] = v14;
  return sub_199B6D280(&v21, v20);
}

uint64_t sub_199B6D2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF749C0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v29 - v7;
  v31 = a1;
  v32 = a2;
  sub_199A9C458();
  sub_199DF81AC();
  v9 = sub_199DF93CC();
  v11 = v10;
  v13 = v12;
  v29 = v14;
  v15 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF749D0) + 36)];
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF749D8) + 28);
  v17 = *MEMORY[0x1E6980FD8];
  v18 = sub_199DF937C();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v15 + v16, v17, v18);
  (*(v19 + 56))(v15 + v16, 0, 1, v18);
  *v15 = swift_getKeyPath();
  *v8 = v9;
  *(v8 + 1) = v11;
  v8[16] = v13 & 1;
  *(v8 + 3) = v29;
  v20 = sub_199DF92FC();
  KeyPath = swift_getKeyPath();
  v22 = &v8[*(v5 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  sub_199DF926C();
  sub_199B1B8A4();
  v23 = v30;
  sub_199DF942C();
  sub_199A79A04(v8, &qword_1EAF749C0);
  v24 = [objc_opt_self() secondaryLabelColor];
  v25 = sub_199DF969C();
  v26 = swift_getKeyPath();
  v27 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D68) + 36));
  *v27 = v26;
  v27[1] = v25;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D70);
  *(v23 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_199B6D558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a6;
  v30 = a3;
  v31 = a4;
  v28 = a1;
  v29 = a2;
  v33 = a7;
  type metadata accessor for CNWallpaperSuggestionsGallerySection.TitleView();
  v8 = sub_199DF889C();
  WitnessTable = swift_getWitnessTable();
  v45 = MEMORY[0x1E697E5D8];
  v32 = MEMORY[0x1E697E858];
  v42 = v8;
  v43 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_199DF9BFC();
  swift_getWitnessTable();
  v9 = sub_199DF994C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v26 - v12;
  v14 = sub_199DF889C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v26 - v21;
  sub_199DF8D5C();
  v34 = a5;
  v35 = v27;
  v36 = v28;
  v37 = v29;
  v38 = v30;
  v39 = v31;
  sub_199DF993C();
  sub_199DF9B5C();
  v25 = swift_getWitnessTable();
  sub_199DF95CC();
  (*(v10 + 8))(v13, v9);
  v40 = v25;
  v41 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  sub_199AC8AF0(v18);
  v23 = *(v15 + 8);
  v23(v18, v14);
  sub_199AC8AF0(v22);
  return (v23)(v22, v14);
}

uint64_t sub_199B6D908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v52 = a4;
  v53 = a3;
  v7 = a1;
  v55 = a6;
  v54 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v51 = &OpaqueTypeConformance2 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v57 = &OpaqueTypeConformance2 - v11;
  v48 = v12;
  v49 = v13;
  type metadata accessor for CNWallpaperSuggestionsGallerySection.TitleView();
  v14 = sub_199DF889C();
  WitnessTable = swift_getWitnessTable();
  v72 = MEMORY[0x1E697E5D8];
  v15 = swift_getWitnessTable();
  *&v68 = v14;
  *(&v68 + 1) = v15;
  v16 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = *(OpaqueTypeMetadata2 - 8);
  v47 = OpaqueTypeMetadata2;
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v18);
  v50 = &OpaqueTypeConformance2 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &OpaqueTypeConformance2 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &OpaqueTypeConformance2 - v26;
  *&v65 = v7;
  *(&v65 + 1) = a2;
  sub_199DF81AC();
  sub_199DF917C();
  swift_checkMetadataState();
  sub_199DF95FC();

  v65 = v68;
  v66 = v69;
  v67[0] = v70[0];
  *(v67 + 9) = *(v70 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E39320;
  LOBYTE(v7) = sub_199DF919C();
  *(inited + 32) = v7;
  v29 = sub_199DF91BC();
  *(inited + 33) = v29;
  sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v7)
  {
    sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v29)
  {
    sub_199DF91AC();
  }

  v30 = swift_checkMetadataState();
  sub_199DF94AC();
  v63[0] = v65;
  v63[1] = v66;
  v64[0] = v67[0];
  *(v64 + 9) = *(v67 + 9);
  (*(*(v30 - 8) + 8))(v63, v30);
  v61 = v30;
  v62 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = v27;
  v31 = v47;
  sub_199AC8AF0(v23);
  v32 = v46;
  v45 = *(v46 + 8);
  v33 = v45(v23, v31);
  v34 = v51;
  v53(v33);
  v36 = v48;
  v35 = v49;
  sub_199AC8AF0(v34);
  v37 = v54;
  v53 = *(v54 + 8);
  (v53)(v34, v36);
  v38 = v50;
  (*(v32 + 16))(v50, v56, v31);
  v61 = v38;
  v39 = v57;
  (*(v37 + 16))(v34, v57, v36);
  v62 = v34;
  v60[0] = v31;
  v60[1] = v36;
  v58 = OpaqueTypeConformance2;
  v59 = v35;
  sub_199AE0778(&v61, 2uLL, v60);
  v40 = v39;
  v41 = v53;
  (v53)(v40, v36);
  v42 = v45;
  v45(v56, v31);
  v41(v34, v36);
  return v42(v38, v31);
}

unint64_t sub_199B6DE48()
{
  result = qword_1EAF71168;
  if (!qword_1EAF71168)
  {
    sub_199DF99DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71168);
  }

  return result;
}

uint64_t sub_199B6DECC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_199B6DF50()
{
  result = qword_1EAF712C8;
  if (!qword_1EAF712C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75D50);
    sub_199B6E008();
    sub_199AA0B90(&qword_1EAF711F8, &qword_1EAF732B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF712C8);
  }

  return result;
}

unint64_t sub_199B6E008()
{
  result = qword_1EAF71160;
  if (!qword_1EAF71160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71160);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_199B6E0D8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_199B6E1A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_199B6E224()
{
  result = qword_1EAF71298;
  if (!qword_1EAF71298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75D70);
    sub_199B6E2B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71298);
  }

  return result;
}

unint64_t sub_199B6E2B0()
{
  result = qword_1EAF712F8;
  if (!qword_1EAF712F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75D68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF749C0);
    sub_199B1B8A4();
    swift_getOpaqueTypeConformance2();
    sub_199AA0B90(&qword_1EAF711F8, &qword_1EAF732B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF712F8);
  }

  return result;
}

id sub_199B6E430()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AvatarView.Listener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AvatarView.init(contact:listener:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_199E37DF0;
  *(v4 + 32) = a1;
  v5 = type metadata accessor for AvatarView.Listener();
  v6 = objc_allocWithZone(v5);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v14.receiver = v6;
  v14.super_class = v5;
  v7 = a1;
  objc_msgSendSuper2(&v14, sel_init);
  sub_199A7BB24(&qword_1ED615BF8, v8, type metadata accessor for AvatarView.Listener);
  sub_199DF781C();
  swift_allocObject();
  v9 = sub_199DF77FC();
  swift_unknownObjectRelease();

  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  v10 = type metadata accessor for AvatarView();
  v11 = *(v10 + 20);
  *(a2 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E90);
  result = swift_storeEnumTagMultiPayload();
  v13 = a2 + *(v10 + 24);
  *v13 = sub_199B6F868;
  *(v13 + 8) = v9;
  *(v13 + 16) = 0;
  return result;
}

uint64_t AvatarView.init(contacts:listener:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AvatarView.Listener();
  v3 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v10.receiver = v3;
  v10.super_class = v2;
  objc_msgSendSuper2(&v10, sel_init);
  sub_199A7BB24(&qword_1ED615BF8, v4, type metadata accessor for AvatarView.Listener);
  sub_199DF781C();
  swift_allocObject();
  v5 = sub_199DF77FC();
  swift_unknownObjectRelease();
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  v6 = type metadata accessor for AvatarView();
  v7 = *(v6 + 20);
  *(a1 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E90);
  result = swift_storeEnumTagMultiPayload();
  v9 = a1 + *(v6 + 24);
  *v9 = sub_199B700D4;
  *(v9 + 8) = v5;
  *(v9 + 16) = 0;
  return result;
}

uint64_t AvatarView.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AvatarView();
  sub_199DF781C();
  sub_199A7BB24(&qword_1EAF71DA8, 255, MEMORY[0x1E6996980]);
  sub_199DF85AC();
  sub_199DF782C();
  KeyPath = swift_getKeyPath();
  v4 = sub_199A7B8E8(*v1, *(v1 + 8));
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D80) + 36));
  *v5 = KeyPath;
  v5[1] = v4;
  v6 = swift_getKeyPath();
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D88) + 36));
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D90) + 28);
  sub_199AC3FC4(v7 + v8);
  v9 = sub_199DF774C();
  result = (*(*(v9 - 8) + 56))(v7 + v8, 0, 1, v9);
  *v7 = v6;
  return result;
}

uint64_t sub_199B6E92C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75DB0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_199B70064(a1, &v6 - v4);
  return sub_199DF8A6C();
}

uint64_t UITraitCollection.avatarBackgroundStyle.getter()
{
  sub_199A7C58C();
  sub_199DFA3DC();
  return v1;
}

uint64_t sub_199B6EA04(uint64_t a1)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));

  return UIMutableTraits.avatarBackgroundStyle.setter();
}

uint64_t sub_199B6EA78()
{
  v0 = sub_199DF774C();
  __swift_allocate_value_buffer(v0, qword_1EAF86F38);
  __swift_project_value_buffer(v0, qword_1EAF86F38);
  return sub_199DF771C();
}

uint64_t sub_199B6EAF0()
{
  v0 = sub_199DF774C();
  __swift_allocate_value_buffer(v0, qword_1EAF87100);
  v1 = __swift_project_value_buffer(v0, qword_1EAF87100);
  if (qword_1EAF71D60 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EAF86F38);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t UITraitCollection.avatarBorderStyle.getter()
{
  sub_199B6F870();

  return sub_199DFA3DC();
}

uint64_t UIMutableTraits.avatarBorderStyle.setter(uint64_t a1)
{
  v2 = sub_199DF774C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  (*(v3 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v5);
  sub_199B6F870();
  sub_199DF807C();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_199B6ED58(uint64_t a1, uint64_t a2)
{
  v4 = sub_199DF774C();
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a2, v6);
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  return UIMutableTraits.avatarBorderStyle.setter(v8);
}

uint64_t sub_199B6EE60@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_199DF774C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_199B6EEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_199A7BB24(&qword_1EAF75DA8, 255, MEMORY[0x1E6996910]);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t UIMutableTraits.avatarBackgroundStyle.getter()
{
  sub_199A7C58C();
  sub_199DF806C();
  return v1;
}

void (*UIMutableTraits.avatarBackgroundStyle.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  sub_199A7C58C();
  sub_199DF806C();
  return sub_199B6F098;
}

void sub_199B6F098(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  if (a2)
  {

    sub_199A7C58C();
    sub_199DF807C();
  }

  else
  {
    *v2 = v3;
    sub_199A7C58C();
    sub_199DF807C();
  }

  free(v2);
}

uint64_t UIMutableTraits.avatarBorderStyle.getter()
{
  sub_199B6F870();

  return sub_199DF806C();
}

uint64_t sub_199B6F1A8(uint64_t a1)
{
  v2 = sub_199DF774C();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1, v4);
  return UIMutableTraits.avatarBorderStyle.setter(v6);
}

void (*UIMutableTraits.avatarBorderStyle.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = sub_199DF774C();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  sub_199B6F870();
  sub_199DF806C();
  return sub_199B6F3C0;
}

void sub_199B6F3C0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  if (a2)
  {
    v5 = v2[3];
    v6 = v2[4];
    (*(v6 + 16))(*(*a1 + 40), v4, v5);
    UIMutableTraits.avatarBorderStyle.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    UIMutableTraits.avatarBorderStyle.setter(*(*a1 + 48));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t EnvironmentValues.avatarBackgroundStyle.getter()
{
  sub_199A7BAC4();
  sub_199DF8C7C();
  return v1;
}

uint64_t sub_199B6F4C8@<X0>(void *a1@<X8>)
{
  sub_199A7BAC4();
  result = sub_199DF8C7C();
  *a1 = v3;
  return result;
}

uint64_t sub_199B6F518()
{
  sub_199A7BAC4();

  return sub_199DF8C8C();
}

uint64_t (*EnvironmentValues.avatarBackgroundStyle.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_199A7BAC4();
  sub_199DF8C7C();
  return sub_199B6F614;
}

uint64_t sub_199B6F614(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_199DF8C8C();
  }

  sub_199DF8C8C();
}

uint64_t sub_199B6F724(uint64_t a1)
{
  v2 = sub_199DF774C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v14 - v10;
  v12 = *(v3 + 16);
  v12(&v14 - v10, a1, v2, v9);
  (v12)(v6, v11, v2);
  sub_199B6F8C4();
  sub_199DF8C8C();
  return (*(v3 + 8))(v11, v2);
}

unint64_t sub_199B6F870()
{
  result = qword_1EAF71D58;
  if (!qword_1EAF71D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71D58);
  }

  return result;
}

unint64_t sub_199B6F8C4()
{
  result = qword_1EAF71D68;
  if (!qword_1EAF71D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71D68);
  }

  return result;
}

uint64_t EnvironmentValues.avatarBorderStyle.setter(uint64_t a1)
{
  v2 = sub_199DF774C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  (*(v3 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v5);
  sub_199B6F8C4();
  sub_199DF8C8C();
  return (*(v3 + 8))(a1, v2);
}

void (*EnvironmentValues.avatarBorderStyle.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_199DF774C();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  v5[6] = sub_199B6F8C4();
  sub_199DF8C7C();
  return sub_199B6FB54;
}

void sub_199B6FB54(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 16);
  v4(*(*a1 + 32), v3[5], v3[1]);
  v5 = v3[5];
  v7 = v3[3];
  v6 = v3[4];
  v8 = v3[1];
  v9 = v3[2];
  if (a2)
  {
    v4(v3[3], v3[4], v3[1]);
    sub_199DF8C8C();
    v10 = *(v9 + 8);
    v10(v6, v8);
    v10(v5, v8);
  }

  else
  {
    sub_199DF8C8C();
    (*(v9 + 8))(v5, v8);
  }

  free(v5);
  free(v6);
  free(v7);

  free(v3);
}

void sub_199B6FCA8()
{
  sub_199B6FD44();
  if (v0 <= 0x3F)
  {
    sub_199B6FD94();
    if (v1 <= 0x3F)
    {
      sub_199B6FDEC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_199B6FD44()
{
  if (!qword_1EAF71D80)
  {
    v0 = sub_199DF859C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF71D80);
    }
  }
}

void sub_199B6FD94()
{
  if (!qword_1EAF71D88)
  {
    sub_199DF774C();
    v0 = sub_199DF859C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF71D88);
    }
  }
}

void sub_199B6FDEC()
{
  if (!qword_1EAF71D78)
  {
    sub_199DF781C();
    sub_199A7BB24(&qword_1EAF71DA8, 255, MEMORY[0x1E6996980]);
    v0 = sub_199DF85BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF71D78);
    }
  }
}

unint64_t sub_199B6FE84()
{
  result = qword_1EAF71D38;
  if (!qword_1EAF71D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75D88);
    sub_199A7DB98();
    sub_199B6FF28(&qword_1EAF71D30, &qword_1EAF75D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71D38);
  }

  return result;
}

uint64_t sub_199B6FF28(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_199B6FFC0()
{
  result = qword_1EAF71D70;
  if (!qword_1EAF71D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71D70);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_199B70064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B70158()
{
  sub_199A9E488();
  sub_199DF7E7C();
  return sub_199DFA4AC();
}

uint64_t sub_199B70204()
{
  sub_199DF7E8C();
  v0 = sub_199DF9F5C();

  return v0;
}

id CNMonogramPosterConfigurationReader.init(posterConfigurationUserInfo:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75DC0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v15 - v5;
  v7 = sub_199DF7E9C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199B7055C(a1, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_199B70830(v6);
    type metadata accessor for CNMonogramPosterConfigurationReader();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v13 = *(v8 + 32);
    v13(v11, v6, v7);
    v13(&v1[OBJC_IVAR____TtC10ContactsUI35CNMonogramPosterConfigurationReader_monogramPosterConfiguration], v11, v7);
    v14 = type metadata accessor for CNMonogramPosterConfigurationReader();
    v15.receiver = v1;
    v15.super_class = v14;
    return objc_msgSendSuper2(&v15, sel_init);
  }
}

uint64_t sub_199B7055C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_199DF9F8C();
  if (*(a1 + 16))
  {
    v6 = sub_199AEF9E8(v4, v5);
    v8 = v7;

    if (v8)
    {
      v14 = *(*(a1 + 56) + 8 * v6);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        sub_199DF703C();
        swift_allocObject();
        sub_199DF702C();
        v9 = sub_199DF7E9C();
        sub_199B70B5C();
        sub_199DF701C();
        (*(*(v9 - 8) + 56))(a2, 0, 1, v9);

        return sub_199A9EF34(v12, v13);
      }
    }
  }

  else
  {
  }

  v10 = sub_199DF7E9C();
  return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
}

uint64_t sub_199B70830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CNMonogramPosterConfigurationReader()
{
  result = qword_1EAF75DC8;
  if (!qword_1EAF75DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id CNMonogramPosterConfigurationReader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CNMonogramPosterConfigurationReader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNMonogramPosterConfigurationReader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_199B70A24()
{
  result = sub_199DF7E9C();
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

unint64_t sub_199B70B5C()
{
  result = qword_1EAF75DD8;
  if (!qword_1EAF75DD8)
  {
    sub_199DF7E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75DD8);
  }

  return result;
}

uint64_t static CNPosterOnboardingSettingsAnimationViewController.controller(for:isRTL:windowScene:shouldDefaultToCleanState:completion:)(void *a1, char a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v23 - v14;
  v16 = sub_199DFA1BC();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_199DFA17C();
  v17 = a1;
  v18 = a3;

  v19 = sub_199DFA16C();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  *(v20 + 32) = v17;
  *(v20 + 40) = a2;
  *(v20 + 48) = v18;
  *(v20 + 56) = a4;
  *(v20 + 64) = a5;
  *(v20 + 72) = a6;
  sub_199AE5E60(0, 0, v15, &unk_199E426D0, v20);
}

uint64_t sub_199B70D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  v8[17] = a8;
  v8[18] = v16;
  v8[19] = sub_199DFA17C();
  v8[20] = sub_199DFA16C();
  type metadata accessor for CNPosterOnboardingSettingsAnimationFactory();
  swift_initStaticObject();
  v13 = swift_task_alloc();
  v8[21] = v13;
  *v13 = v8;
  v13[1] = sub_199B70E74;

  return sub_199AA3D98((v8 + 2), a4, a5, a6, a7);
}

uint64_t sub_199B70E74()
{

  v1 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199B70FB0, v1, v0);
}

uint64_t sub_199B70FB0()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 16);
  *(v0 + 72) = *(v0 + 24);
  *(v0 + 88) = *(v0 + 40);
  v3 = type metadata accessor for CNPosterOnboardingSettingsAnimationViewController();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_animationLayer] = 0;
  v5 = OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_isAnimationPaused;
  v6 = v2;
  sub_199B72CC0(v0 + 72, v0 + 104);
  sub_199B72CC0(v0 + 80, v0 + 112);
  sub_199B72CC0(v0 + 88, v0 + 120);
  sub_199B72CC0(v0 + 96, v0 + 128);
  v4[v5] = !UIAccessibilityIsVideoAutoplayEnabled();
  v7 = &v4[OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_dataSource];
  v8 = *(v0 + 16);
  v9 = *(v0 + 32);
  *(v7 + 4) = *(v0 + 48);
  *v7 = v8;
  *(v7 + 1) = v9;
  *(v0 + 56) = v4;
  *(v0 + 64) = v3;
  v10 = objc_msgSendSuper2((v0 + 56), sel_initWithNibName_bundle_, 0, 0);
  v1();

  sub_199A79A04(v0 + 72, &qword_1EAF72750);
  sub_199A79A04(v0 + 80, &qword_1EAF72750);
  sub_199A79A04(v0 + 88, &qword_1EAF72750);
  sub_199A79A04(v0 + 96, &qword_1EAF72750);
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_199B71150(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_199AA7688;

  return sub_199B70D74(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_199B71488()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for CNPosterOnboardingSettingsAnimationViewController();
  objc_msgSendSuper2(&v16, sel_viewWillLayoutSubviews);
  v1 = sub_199B719E8();
  if (v1)
  {
    v2 = v1;
    v3 = sub_199B71E10(v1);
    if (v3)
    {
      v4 = v3;
      sub_199B72318(v2);
      v5 = OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_animationLayer;
      [*&v0[OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_animationLayer] removeFromSuperlayer];
      v6 = *&v0[v5];
      *&v0[v5] = v4;
      v7 = v4;

      v8 = OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_isAnimationPaused;
      swift_beginAccess();
      if (v0[v8] == 1)
      {
        v9 = *&v0[v5];
        if (v9)
        {
          v10 = v9;
          [v10 convertTime:0 fromLayer:CACurrentMediaTime()];
          v12 = v11;
          [v10 setSpeed_];
          [v10 setTimeOffset_];
        }
      }

      v13 = [v0 view];
      if (!v13)
      {
        __break(1u);
        return;
      }

      v14 = v13;
      v15 = [v13 layer];

      [v15 addSublayer_];
      v2 = v15;
    }
  }
}